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
	jp   z, Jump_0a4_642b                            ; $5b61: $ca $2b $64

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
	nop                                              ; $62d5: $00
	nop                                              ; $62d6: $00
	nop                                              ; $62d7: $00
	nop                                              ; $62d8: $00
	nop                                              ; $62d9: $00
	nop                                              ; $62da: $00
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	nop                                              ; $62de: $00
	nop                                              ; $62df: $00
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	nop                                              ; $62e2: $00
	nop                                              ; $62e3: $00
	nop                                              ; $62e4: $00
	nop                                              ; $62e5: $00
	nop                                              ; $62e6: $00
	nop                                              ; $62e7: $00
	nop                                              ; $62e8: $00
	nop                                              ; $62e9: $00
	nop                                              ; $62ea: $00
	nop                                              ; $62eb: $00
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	nop                                              ; $62ee: $00
	nop                                              ; $62ef: $00
	nop                                              ; $62f0: $00
	nop                                              ; $62f1: $00
	nop                                              ; $62f2: $00
	nop                                              ; $62f3: $00
	nop                                              ; $62f4: $00
	nop                                              ; $62f5: $00
	nop                                              ; $62f6: $00
	nop                                              ; $62f7: $00
	nop                                              ; $62f8: $00
	nop                                              ; $62f9: $00
	nop                                              ; $62fa: $00
	nop                                              ; $62fb: $00
	nop                                              ; $62fc: $00
	nop                                              ; $62fd: $00
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	nop                                              ; $6303: $00
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00
	nop                                              ; $6307: $00
	nop                                              ; $6308: $00
	nop                                              ; $6309: $00
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	nop                                              ; $630e: $00
	nop                                              ; $630f: $00
	nop                                              ; $6310: $00
	nop                                              ; $6311: $00
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	nop                                              ; $631a: $00
	nop                                              ; $631b: $00
	nop                                              ; $631c: $00
	nop                                              ; $631d: $00
	nop                                              ; $631e: $00
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00
	nop                                              ; $6322: $00
	nop                                              ; $6323: $00
	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	nop                                              ; $6327: $00
	nop                                              ; $6328: $00
	nop                                              ; $6329: $00
	nop                                              ; $632a: $00
	nop                                              ; $632b: $00
	nop                                              ; $632c: $00
	nop                                              ; $632d: $00
	nop                                              ; $632e: $00
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00
	nop                                              ; $6331: $00
	nop                                              ; $6332: $00
	nop                                              ; $6333: $00
	nop                                              ; $6334: $00
	nop                                              ; $6335: $00
	nop                                              ; $6336: $00
	nop                                              ; $6337: $00
	nop                                              ; $6338: $00
	nop                                              ; $6339: $00
	nop                                              ; $633a: $00
	nop                                              ; $633b: $00
	nop                                              ; $633c: $00
	nop                                              ; $633d: $00
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	nop                                              ; $6341: $00
	nop                                              ; $6342: $00
	nop                                              ; $6343: $00
	nop                                              ; $6344: $00
	nop                                              ; $6345: $00
	nop                                              ; $6346: $00
	nop                                              ; $6347: $00
	nop                                              ; $6348: $00
	nop                                              ; $6349: $00
	nop                                              ; $634a: $00
	nop                                              ; $634b: $00
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	nop                                              ; $634f: $00
	nop                                              ; $6350: $00
	nop                                              ; $6351: $00
	nop                                              ; $6352: $00
	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	nop                                              ; $6355: $00
	nop                                              ; $6356: $00
	nop                                              ; $6357: $00
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	nop                                              ; $635a: $00
	nop                                              ; $635b: $00
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	nop                                              ; $6362: $00
	nop                                              ; $6363: $00
	nop                                              ; $6364: $00
	nop                                              ; $6365: $00
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	nop                                              ; $636a: $00
	nop                                              ; $636b: $00
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	nop                                              ; $6370: $00
	nop                                              ; $6371: $00
	nop                                              ; $6372: $00
	nop                                              ; $6373: $00
	nop                                              ; $6374: $00
	nop                                              ; $6375: $00
	nop                                              ; $6376: $00
	nop                                              ; $6377: $00
	nop                                              ; $6378: $00
	nop                                              ; $6379: $00
	nop                                              ; $637a: $00
	nop                                              ; $637b: $00
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	nop                                              ; $6380: $00
	nop                                              ; $6381: $00
	nop                                              ; $6382: $00
	nop                                              ; $6383: $00
	nop                                              ; $6384: $00
	nop                                              ; $6385: $00
	nop                                              ; $6386: $00
	nop                                              ; $6387: $00
	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	nop                                              ; $638a: $00
	nop                                              ; $638b: $00
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	nop                                              ; $638e: $00
	nop                                              ; $638f: $00
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	nop                                              ; $6392: $00
	nop                                              ; $6393: $00
	nop                                              ; $6394: $00
	nop                                              ; $6395: $00
	nop                                              ; $6396: $00
	nop                                              ; $6397: $00
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	nop                                              ; $63a2: $00
	nop                                              ; $63a3: $00
	nop                                              ; $63a4: $00
	nop                                              ; $63a5: $00
	nop                                              ; $63a6: $00
	nop                                              ; $63a7: $00
	nop                                              ; $63a8: $00
	nop                                              ; $63a9: $00
	nop                                              ; $63aa: $00
	nop                                              ; $63ab: $00
	nop                                              ; $63ac: $00
	nop                                              ; $63ad: $00
	nop                                              ; $63ae: $00
	nop                                              ; $63af: $00
	nop                                              ; $63b0: $00
	nop                                              ; $63b1: $00
	nop                                              ; $63b2: $00
	nop                                              ; $63b3: $00
	nop                                              ; $63b4: $00
	nop                                              ; $63b5: $00
	nop                                              ; $63b6: $00
	nop                                              ; $63b7: $00
	nop                                              ; $63b8: $00
	nop                                              ; $63b9: $00
	nop                                              ; $63ba: $00
	nop                                              ; $63bb: $00
	nop                                              ; $63bc: $00
	nop                                              ; $63bd: $00
	nop                                              ; $63be: $00
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	nop                                              ; $63c1: $00
	nop                                              ; $63c2: $00
	nop                                              ; $63c3: $00
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00
	nop                                              ; $63c6: $00
	nop                                              ; $63c7: $00
	nop                                              ; $63c8: $00
	nop                                              ; $63c9: $00
	nop                                              ; $63ca: $00
	nop                                              ; $63cb: $00
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	nop                                              ; $63ce: $00
	nop                                              ; $63cf: $00
	nop                                              ; $63d0: $00
	nop                                              ; $63d1: $00
	nop                                              ; $63d2: $00
	nop                                              ; $63d3: $00
	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	nop                                              ; $63d6: $00
	nop                                              ; $63d7: $00
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	nop                                              ; $63dc: $00
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
	nop                                              ; $63df: $00
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	nop                                              ; $63e2: $00
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	nop                                              ; $63e6: $00
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	nop                                              ; $63ed: $00
	nop                                              ; $63ee: $00
	nop                                              ; $63ef: $00
	nop                                              ; $63f0: $00
	nop                                              ; $63f1: $00
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	nop                                              ; $63f6: $00
	nop                                              ; $63f7: $00
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	nop                                              ; $63fa: $00
	nop                                              ; $63fb: $00
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	nop                                              ; $63fe: $00
	nop                                              ; $63ff: $00
	nop                                              ; $6400: $00
	nop                                              ; $6401: $00
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	nop                                              ; $6404: $00
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	nop                                              ; $6407: $00
	nop                                              ; $6408: $00
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	nop                                              ; $640b: $00
	nop                                              ; $640c: $00
	nop                                              ; $640d: $00
	nop                                              ; $640e: $00
	nop                                              ; $640f: $00
	nop                                              ; $6410: $00
	nop                                              ; $6411: $00
	nop                                              ; $6412: $00
	nop                                              ; $6413: $00
	nop                                              ; $6414: $00
	nop                                              ; $6415: $00
	nop                                              ; $6416: $00
	nop                                              ; $6417: $00
	nop                                              ; $6418: $00
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	nop                                              ; $641b: $00
	nop                                              ; $641c: $00
	nop                                              ; $641d: $00
	nop                                              ; $641e: $00
	nop                                              ; $641f: $00
	nop                                              ; $6420: $00
	nop                                              ; $6421: $00
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	nop                                              ; $6426: $00
	nop                                              ; $6427: $00
	nop                                              ; $6428: $00
	nop                                              ; $6429: $00
	nop                                              ; $642a: $00

Jump_0a4_642b:
	nop                                              ; $642b: $00
	nop                                              ; $642c: $00
	nop                                              ; $642d: $00
	nop                                              ; $642e: $00
	nop                                              ; $642f: $00
	nop                                              ; $6430: $00
	nop                                              ; $6431: $00
	nop                                              ; $6432: $00
	nop                                              ; $6433: $00
	nop                                              ; $6434: $00
	nop                                              ; $6435: $00
	nop                                              ; $6436: $00
	nop                                              ; $6437: $00
	nop                                              ; $6438: $00
	nop                                              ; $6439: $00
	nop                                              ; $643a: $00
	nop                                              ; $643b: $00
	nop                                              ; $643c: $00
	nop                                              ; $643d: $00
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	nop                                              ; $6440: $00
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	nop                                              ; $6444: $00
	nop                                              ; $6445: $00
	nop                                              ; $6446: $00
	nop                                              ; $6447: $00
	nop                                              ; $6448: $00
	nop                                              ; $6449: $00
	nop                                              ; $644a: $00
	nop                                              ; $644b: $00
	nop                                              ; $644c: $00
	nop                                              ; $644d: $00
	nop                                              ; $644e: $00
	nop                                              ; $644f: $00
	nop                                              ; $6450: $00
	nop                                              ; $6451: $00
	nop                                              ; $6452: $00
	nop                                              ; $6453: $00
	nop                                              ; $6454: $00
	nop                                              ; $6455: $00
	nop                                              ; $6456: $00
	nop                                              ; $6457: $00
	nop                                              ; $6458: $00
	nop                                              ; $6459: $00
	nop                                              ; $645a: $00
	nop                                              ; $645b: $00
	nop                                              ; $645c: $00
	nop                                              ; $645d: $00
	nop                                              ; $645e: $00
	nop                                              ; $645f: $00
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	nop                                              ; $6466: $00
	nop                                              ; $6467: $00
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	nop                                              ; $646a: $00
	nop                                              ; $646b: $00
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	nop                                              ; $6476: $00
	nop                                              ; $6477: $00
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	nop                                              ; $647d: $00
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	nop                                              ; $6482: $00
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	nop                                              ; $6489: $00
	nop                                              ; $648a: $00
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	nop                                              ; $648d: $00
	nop                                              ; $648e: $00
	nop                                              ; $648f: $00
	nop                                              ; $6490: $00
	nop                                              ; $6491: $00
	nop                                              ; $6492: $00
	nop                                              ; $6493: $00
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	nop                                              ; $6496: $00
	nop                                              ; $6497: $00
	nop                                              ; $6498: $00
	nop                                              ; $6499: $00
	nop                                              ; $649a: $00
	nop                                              ; $649b: $00
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	nop                                              ; $649e: $00
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	nop                                              ; $64a3: $00
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	nop                                              ; $64a6: $00
	nop                                              ; $64a7: $00
	nop                                              ; $64a8: $00
	nop                                              ; $64a9: $00
	nop                                              ; $64aa: $00
	nop                                              ; $64ab: $00
	nop                                              ; $64ac: $00
	nop                                              ; $64ad: $00
	nop                                              ; $64ae: $00
	nop                                              ; $64af: $00
	nop                                              ; $64b0: $00
	nop                                              ; $64b1: $00
	nop                                              ; $64b2: $00
	nop                                              ; $64b3: $00
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	nop                                              ; $64b6: $00
	nop                                              ; $64b7: $00
	nop                                              ; $64b8: $00
	nop                                              ; $64b9: $00
	nop                                              ; $64ba: $00
	nop                                              ; $64bb: $00
	nop                                              ; $64bc: $00
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	nop                                              ; $64c2: $00
	nop                                              ; $64c3: $00
	nop                                              ; $64c4: $00
	nop                                              ; $64c5: $00
	nop                                              ; $64c6: $00
	nop                                              ; $64c7: $00
	nop                                              ; $64c8: $00
	nop                                              ; $64c9: $00
	nop                                              ; $64ca: $00
	nop                                              ; $64cb: $00
	nop                                              ; $64cc: $00
	nop                                              ; $64cd: $00
	nop                                              ; $64ce: $00
	nop                                              ; $64cf: $00
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	nop                                              ; $64d7: $00
	nop                                              ; $64d8: $00
	nop                                              ; $64d9: $00
	nop                                              ; $64da: $00
	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	nop                                              ; $64dd: $00
	nop                                              ; $64de: $00
	nop                                              ; $64df: $00
	nop                                              ; $64e0: $00
	nop                                              ; $64e1: $00
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	nop                                              ; $64e9: $00
	nop                                              ; $64ea: $00
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	nop                                              ; $64f2: $00
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	nop                                              ; $64f6: $00
	nop                                              ; $64f7: $00
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	nop                                              ; $64fa: $00
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	nop                                              ; $6500: $00
	nop                                              ; $6501: $00
	nop                                              ; $6502: $00
	nop                                              ; $6503: $00
	nop                                              ; $6504: $00
	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	nop                                              ; $6507: $00
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	nop                                              ; $650a: $00
	nop                                              ; $650b: $00
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	nop                                              ; $6510: $00
	nop                                              ; $6511: $00
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	nop                                              ; $6514: $00
	nop                                              ; $6515: $00
	nop                                              ; $6516: $00
	nop                                              ; $6517: $00
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	nop                                              ; $651a: $00
	nop                                              ; $651b: $00
	nop                                              ; $651c: $00
	nop                                              ; $651d: $00
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	nop                                              ; $6521: $00
	nop                                              ; $6522: $00
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	nop                                              ; $6525: $00
	nop                                              ; $6526: $00
	nop                                              ; $6527: $00
	nop                                              ; $6528: $00
	nop                                              ; $6529: $00
	nop                                              ; $652a: $00
	nop                                              ; $652b: $00
	nop                                              ; $652c: $00
	nop                                              ; $652d: $00
	nop                                              ; $652e: $00
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	nop                                              ; $6531: $00
	nop                                              ; $6532: $00
	nop                                              ; $6533: $00
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	nop                                              ; $6539: $00
	nop                                              ; $653a: $00
	nop                                              ; $653b: $00
	nop                                              ; $653c: $00
	nop                                              ; $653d: $00
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	nop                                              ; $654c: $00
	nop                                              ; $654d: $00
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
	nop                                              ; $6550: $00
	nop                                              ; $6551: $00
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	nop                                              ; $6554: $00
	nop                                              ; $6555: $00
	nop                                              ; $6556: $00
	nop                                              ; $6557: $00
	nop                                              ; $6558: $00
	nop                                              ; $6559: $00
	nop                                              ; $655a: $00
	nop                                              ; $655b: $00
	nop                                              ; $655c: $00
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	nop                                              ; $6571: $00
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	nop                                              ; $6575: $00
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	nop                                              ; $657c: $00
	nop                                              ; $657d: $00
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	nop                                              ; $6583: $00
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	nop                                              ; $6588: $00
	nop                                              ; $6589: $00
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	nop                                              ; $658c: $00
	nop                                              ; $658d: $00
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	nop                                              ; $6590: $00
	nop                                              ; $6591: $00
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	nop                                              ; $6596: $00
	nop                                              ; $6597: $00
	nop                                              ; $6598: $00
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	nop                                              ; $659c: $00
	nop                                              ; $659d: $00
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	nop                                              ; $65a6: $00
	nop                                              ; $65a7: $00
	nop                                              ; $65a8: $00
	nop                                              ; $65a9: $00
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	nop                                              ; $65ac: $00
	nop                                              ; $65ad: $00
	nop                                              ; $65ae: $00
	nop                                              ; $65af: $00
	nop                                              ; $65b0: $00
	nop                                              ; $65b1: $00
	nop                                              ; $65b2: $00
	nop                                              ; $65b3: $00
	nop                                              ; $65b4: $00
	nop                                              ; $65b5: $00
	nop                                              ; $65b6: $00
	nop                                              ; $65b7: $00
	nop                                              ; $65b8: $00
	nop                                              ; $65b9: $00
	nop                                              ; $65ba: $00
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	nop                                              ; $65c0: $00
	nop                                              ; $65c1: $00
	nop                                              ; $65c2: $00
	nop                                              ; $65c3: $00
	nop                                              ; $65c4: $00
	nop                                              ; $65c5: $00
	nop                                              ; $65c6: $00
	nop                                              ; $65c7: $00
	nop                                              ; $65c8: $00
	nop                                              ; $65c9: $00
	nop                                              ; $65ca: $00
	nop                                              ; $65cb: $00
	nop                                              ; $65cc: $00
	nop                                              ; $65cd: $00
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	nop                                              ; $65d0: $00
	nop                                              ; $65d1: $00
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	nop                                              ; $65d4: $00
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	nop                                              ; $65d8: $00
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	nop                                              ; $65dd: $00
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	nop                                              ; $65e5: $00
	nop                                              ; $65e6: $00
	nop                                              ; $65e7: $00
	nop                                              ; $65e8: $00
	nop                                              ; $65e9: $00
	nop                                              ; $65ea: $00
	nop                                              ; $65eb: $00
	nop                                              ; $65ec: $00
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	nop                                              ; $65f1: $00
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	nop                                              ; $65f9: $00
	nop                                              ; $65fa: $00
	nop                                              ; $65fb: $00
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	nop                                              ; $6604: $00
	nop                                              ; $6605: $00
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00
	nop                                              ; $6608: $00
	nop                                              ; $6609: $00
	nop                                              ; $660a: $00
	nop                                              ; $660b: $00
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	nop                                              ; $6610: $00
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	nop                                              ; $6613: $00
	nop                                              ; $6614: $00
	nop                                              ; $6615: $00
	nop                                              ; $6616: $00
	nop                                              ; $6617: $00
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	nop                                              ; $661a: $00
	nop                                              ; $661b: $00
	nop                                              ; $661c: $00
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	nop                                              ; $6628: $00
	nop                                              ; $6629: $00
	nop                                              ; $662a: $00
	nop                                              ; $662b: $00
	nop                                              ; $662c: $00
	nop                                              ; $662d: $00
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00
	nop                                              ; $6631: $00
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	nop                                              ; $663a: $00
	nop                                              ; $663b: $00
	nop                                              ; $663c: $00
	nop                                              ; $663d: $00
	nop                                              ; $663e: $00
	nop                                              ; $663f: $00
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00
	nop                                              ; $6650: $00
	nop                                              ; $6651: $00
	nop                                              ; $6652: $00
	nop                                              ; $6653: $00
	nop                                              ; $6654: $00
	nop                                              ; $6655: $00
	nop                                              ; $6656: $00
	nop                                              ; $6657: $00
	nop                                              ; $6658: $00
	nop                                              ; $6659: $00
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	nop                                              ; $665c: $00
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	nop                                              ; $666c: $00
	nop                                              ; $666d: $00
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	nop                                              ; $6671: $00
	nop                                              ; $6672: $00
	nop                                              ; $6673: $00
	nop                                              ; $6674: $00
	nop                                              ; $6675: $00
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	nop                                              ; $6679: $00
	nop                                              ; $667a: $00
	nop                                              ; $667b: $00
	nop                                              ; $667c: $00
	nop                                              ; $667d: $00
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	nop                                              ; $6684: $00
	nop                                              ; $6685: $00
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	nop                                              ; $6688: $00
	nop                                              ; $6689: $00
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	nop                                              ; $668c: $00
	nop                                              ; $668d: $00
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	nop                                              ; $66a4: $00
	nop                                              ; $66a5: $00
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	nop                                              ; $66a8: $00
	nop                                              ; $66a9: $00
	nop                                              ; $66aa: $00
	nop                                              ; $66ab: $00
	nop                                              ; $66ac: $00
	nop                                              ; $66ad: $00
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	nop                                              ; $66b0: $00
	nop                                              ; $66b1: $00
	nop                                              ; $66b2: $00
	nop                                              ; $66b3: $00
	nop                                              ; $66b4: $00
	nop                                              ; $66b5: $00
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	nop                                              ; $66ba: $00
	nop                                              ; $66bb: $00
	nop                                              ; $66bc: $00
	nop                                              ; $66bd: $00
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	nop                                              ; $66c1: $00
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	nop                                              ; $66c4: $00
	nop                                              ; $66c5: $00
	nop                                              ; $66c6: $00
	nop                                              ; $66c7: $00
	nop                                              ; $66c8: $00
	nop                                              ; $66c9: $00
	nop                                              ; $66ca: $00
	nop                                              ; $66cb: $00
	nop                                              ; $66cc: $00
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	nop                                              ; $66d0: $00
	nop                                              ; $66d1: $00
	nop                                              ; $66d2: $00
	nop                                              ; $66d3: $00
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	nop                                              ; $66d6: $00
	nop                                              ; $66d7: $00
	nop                                              ; $66d8: $00
	nop                                              ; $66d9: $00
	nop                                              ; $66da: $00
	nop                                              ; $66db: $00
	nop                                              ; $66dc: $00
	nop                                              ; $66dd: $00
	nop                                              ; $66de: $00
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	nop                                              ; $66f2: $00
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	nop                                              ; $6705: $00
	nop                                              ; $6706: $00
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	nop                                              ; $6709: $00
	nop                                              ; $670a: $00
	nop                                              ; $670b: $00
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	nop                                              ; $670e: $00
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	nop                                              ; $6716: $00
	nop                                              ; $6717: $00
	nop                                              ; $6718: $00
	nop                                              ; $6719: $00
	nop                                              ; $671a: $00
	nop                                              ; $671b: $00
	nop                                              ; $671c: $00
	nop                                              ; $671d: $00
	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	nop                                              ; $6728: $00
	nop                                              ; $6729: $00
	nop                                              ; $672a: $00
	nop                                              ; $672b: $00
	nop                                              ; $672c: $00
	nop                                              ; $672d: $00
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	nop                                              ; $6730: $00
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	nop                                              ; $6736: $00
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	nop                                              ; $6745: $00
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	nop                                              ; $6748: $00
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	nop                                              ; $674d: $00
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	nop                                              ; $6751: $00
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	nop                                              ; $6755: $00
	nop                                              ; $6756: $00
	nop                                              ; $6757: $00
	nop                                              ; $6758: $00
	nop                                              ; $6759: $00
	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	nop                                              ; $675c: $00
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	nop                                              ; $677a: $00
	nop                                              ; $677b: $00
	nop                                              ; $677c: $00
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	nop                                              ; $6780: $00
	nop                                              ; $6781: $00
	nop                                              ; $6782: $00
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00
	nop                                              ; $6786: $00
	nop                                              ; $6787: $00
	nop                                              ; $6788: $00
	nop                                              ; $6789: $00
	nop                                              ; $678a: $00
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	nop                                              ; $678d: $00
	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	nop                                              ; $6790: $00
	nop                                              ; $6791: $00
	nop                                              ; $6792: $00
	nop                                              ; $6793: $00
	nop                                              ; $6794: $00
	nop                                              ; $6795: $00
	nop                                              ; $6796: $00
	nop                                              ; $6797: $00
	nop                                              ; $6798: $00
	nop                                              ; $6799: $00
	nop                                              ; $679a: $00
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	nop                                              ; $67a2: $00
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	nop                                              ; $67a5: $00
	nop                                              ; $67a6: $00
	nop                                              ; $67a7: $00
	nop                                              ; $67a8: $00
	nop                                              ; $67a9: $00
	nop                                              ; $67aa: $00
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	nop                                              ; $67ae: $00
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	nop                                              ; $67b1: $00
	nop                                              ; $67b2: $00
	nop                                              ; $67b3: $00
	nop                                              ; $67b4: $00
	nop                                              ; $67b5: $00
	nop                                              ; $67b6: $00
	nop                                              ; $67b7: $00
	nop                                              ; $67b8: $00
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	nop                                              ; $67c1: $00
	nop                                              ; $67c2: $00
	nop                                              ; $67c3: $00
	nop                                              ; $67c4: $00
	nop                                              ; $67c5: $00
	nop                                              ; $67c6: $00
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00
	nop                                              ; $67cf: $00
	nop                                              ; $67d0: $00
	nop                                              ; $67d1: $00
	nop                                              ; $67d2: $00
	nop                                              ; $67d3: $00
	nop                                              ; $67d4: $00
	nop                                              ; $67d5: $00
	nop                                              ; $67d6: $00
	nop                                              ; $67d7: $00
	nop                                              ; $67d8: $00
	nop                                              ; $67d9: $00
	nop                                              ; $67da: $00
	nop                                              ; $67db: $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	nop                                              ; $67e4: $00
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	nop                                              ; $67e7: $00
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	nop                                              ; $67eb: $00
	nop                                              ; $67ec: $00
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	nop                                              ; $67f1: $00
	nop                                              ; $67f2: $00
	nop                                              ; $67f3: $00
	nop                                              ; $67f4: $00
	nop                                              ; $67f5: $00
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	nop                                              ; $67f8: $00
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	nop                                              ; $6801: $00
	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	nop                                              ; $680c: $00
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	nop                                              ; $6815: $00
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	nop                                              ; $6818: $00
	nop                                              ; $6819: $00
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	nop                                              ; $681c: $00
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	nop                                              ; $6829: $00
	nop                                              ; $682a: $00
	nop                                              ; $682b: $00
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	nop                                              ; $6834: $00
	nop                                              ; $6835: $00
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00
	nop                                              ; $683c: $00
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	nop                                              ; $6841: $00
	nop                                              ; $6842: $00
	nop                                              ; $6843: $00
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00
	nop                                              ; $6849: $00
	nop                                              ; $684a: $00
	nop                                              ; $684b: $00
	nop                                              ; $684c: $00
	nop                                              ; $684d: $00
	nop                                              ; $684e: $00
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	nop                                              ; $6851: $00
	nop                                              ; $6852: $00
	nop                                              ; $6853: $00
	nop                                              ; $6854: $00
	nop                                              ; $6855: $00
	nop                                              ; $6856: $00
	nop                                              ; $6857: $00
	nop                                              ; $6858: $00
	nop                                              ; $6859: $00
	nop                                              ; $685a: $00
	nop                                              ; $685b: $00
	nop                                              ; $685c: $00
	nop                                              ; $685d: $00
	nop                                              ; $685e: $00
	nop                                              ; $685f: $00
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	nop                                              ; $686b: $00
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	nop                                              ; $6871: $00
	nop                                              ; $6872: $00
	nop                                              ; $6873: $00
	nop                                              ; $6874: $00
	nop                                              ; $6875: $00
	nop                                              ; $6876: $00
	nop                                              ; $6877: $00
	nop                                              ; $6878: $00
	nop                                              ; $6879: $00
	nop                                              ; $687a: $00
	nop                                              ; $687b: $00
	nop                                              ; $687c: $00
	nop                                              ; $687d: $00
	nop                                              ; $687e: $00
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	nop                                              ; $6881: $00
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	nop                                              ; $6886: $00
	nop                                              ; $6887: $00
	nop                                              ; $6888: $00
	nop                                              ; $6889: $00
	nop                                              ; $688a: $00
	nop                                              ; $688b: $00
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	nop                                              ; $688f: $00
	nop                                              ; $6890: $00
	nop                                              ; $6891: $00
	nop                                              ; $6892: $00
	nop                                              ; $6893: $00
	nop                                              ; $6894: $00
	nop                                              ; $6895: $00
	nop                                              ; $6896: $00
	nop                                              ; $6897: $00
	nop                                              ; $6898: $00
	nop                                              ; $6899: $00
	nop                                              ; $689a: $00
	nop                                              ; $689b: $00
	nop                                              ; $689c: $00
	nop                                              ; $689d: $00
	nop                                              ; $689e: $00
	nop                                              ; $689f: $00
	nop                                              ; $68a0: $00
	nop                                              ; $68a1: $00
	nop                                              ; $68a2: $00
	nop                                              ; $68a3: $00
	nop                                              ; $68a4: $00
	nop                                              ; $68a5: $00
	nop                                              ; $68a6: $00
	nop                                              ; $68a7: $00
	nop                                              ; $68a8: $00
	nop                                              ; $68a9: $00
	nop                                              ; $68aa: $00
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	nop                                              ; $68ad: $00
	nop                                              ; $68ae: $00
	nop                                              ; $68af: $00
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	nop                                              ; $68b2: $00
	nop                                              ; $68b3: $00
	nop                                              ; $68b4: $00
	nop                                              ; $68b5: $00
	nop                                              ; $68b6: $00
	nop                                              ; $68b7: $00
	nop                                              ; $68b8: $00
	nop                                              ; $68b9: $00
	nop                                              ; $68ba: $00
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	nop                                              ; $68bd: $00
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	nop                                              ; $68c1: $00
	nop                                              ; $68c2: $00
	nop                                              ; $68c3: $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	nop                                              ; $68d6: $00
	nop                                              ; $68d7: $00
	nop                                              ; $68d8: $00
	nop                                              ; $68d9: $00
	nop                                              ; $68da: $00
	nop                                              ; $68db: $00
	nop                                              ; $68dc: $00
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	nop                                              ; $68f2: $00
	nop                                              ; $68f3: $00
	nop                                              ; $68f4: $00
	nop                                              ; $68f5: $00
	nop                                              ; $68f6: $00
	nop                                              ; $68f7: $00
	nop                                              ; $68f8: $00
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	nop                                              ; $68fd: $00
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	nop                                              ; $6901: $00
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	nop                                              ; $6907: $00
	nop                                              ; $6908: $00
	nop                                              ; $6909: $00
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	nop                                              ; $691c: $00
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	nop                                              ; $6920: $00
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	nop                                              ; $6928: $00
	nop                                              ; $6929: $00
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	nop                                              ; $692c: $00
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	nop                                              ; $6935: $00
	nop                                              ; $6936: $00
	nop                                              ; $6937: $00
	nop                                              ; $6938: $00
	nop                                              ; $6939: $00
	nop                                              ; $693a: $00
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00
	nop                                              ; $693d: $00
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	nop                                              ; $6941: $00
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	nop                                              ; $6948: $00
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	nop                                              ; $694c: $00
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	nop                                              ; $6950: $00
	nop                                              ; $6951: $00
	nop                                              ; $6952: $00
	nop                                              ; $6953: $00
	nop                                              ; $6954: $00
	nop                                              ; $6955: $00
	nop                                              ; $6956: $00
	nop                                              ; $6957: $00
	nop                                              ; $6958: $00
	nop                                              ; $6959: $00
	nop                                              ; $695a: $00
	nop                                              ; $695b: $00
	nop                                              ; $695c: $00
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	nop                                              ; $6965: $00
	nop                                              ; $6966: $00
	nop                                              ; $6967: $00
	nop                                              ; $6968: $00
	nop                                              ; $6969: $00
	nop                                              ; $696a: $00
	nop                                              ; $696b: $00
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	nop                                              ; $6970: $00
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	nop                                              ; $6975: $00
	nop                                              ; $6976: $00
	nop                                              ; $6977: $00
	nop                                              ; $6978: $00
	nop                                              ; $6979: $00
	nop                                              ; $697a: $00
	nop                                              ; $697b: $00
	nop                                              ; $697c: $00
	nop                                              ; $697d: $00
	nop                                              ; $697e: $00
	nop                                              ; $697f: $00
	nop                                              ; $6980: $00
	nop                                              ; $6981: $00
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	nop                                              ; $6984: $00
	nop                                              ; $6985: $00
	nop                                              ; $6986: $00
	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	nop                                              ; $6989: $00
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	nop                                              ; $698c: $00
	nop                                              ; $698d: $00
	nop                                              ; $698e: $00
	nop                                              ; $698f: $00
	nop                                              ; $6990: $00
	nop                                              ; $6991: $00
	nop                                              ; $6992: $00
	nop                                              ; $6993: $00
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	nop                                              ; $6996: $00
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	nop                                              ; $6999: $00
	nop                                              ; $699a: $00
	nop                                              ; $699b: $00
	nop                                              ; $699c: $00
	nop                                              ; $699d: $00
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	nop                                              ; $69a0: $00
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	nop                                              ; $69a5: $00
	nop                                              ; $69a6: $00
	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	nop                                              ; $69a9: $00
	nop                                              ; $69aa: $00
	nop                                              ; $69ab: $00
	nop                                              ; $69ac: $00
	nop                                              ; $69ad: $00
	nop                                              ; $69ae: $00
	nop                                              ; $69af: $00
	nop                                              ; $69b0: $00
	nop                                              ; $69b1: $00
	nop                                              ; $69b2: $00
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	nop                                              ; $69b5: $00
	nop                                              ; $69b6: $00
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	nop                                              ; $69b9: $00
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	nop                                              ; $69c6: $00
	nop                                              ; $69c7: $00
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	nop                                              ; $69ce: $00
	nop                                              ; $69cf: $00
	nop                                              ; $69d0: $00
	nop                                              ; $69d1: $00
	nop                                              ; $69d2: $00
	nop                                              ; $69d3: $00
	nop                                              ; $69d4: $00
	nop                                              ; $69d5: $00
	nop                                              ; $69d6: $00
	nop                                              ; $69d7: $00
	nop                                              ; $69d8: $00
	nop                                              ; $69d9: $00
	nop                                              ; $69da: $00
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	nop                                              ; $69e2: $00
	nop                                              ; $69e3: $00
	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	nop                                              ; $69e6: $00
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	nop                                              ; $69e9: $00
	nop                                              ; $69ea: $00
	nop                                              ; $69eb: $00
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	nop                                              ; $69ef: $00
	nop                                              ; $69f0: $00
	nop                                              ; $69f1: $00
	nop                                              ; $69f2: $00
	nop                                              ; $69f3: $00
	nop                                              ; $69f4: $00
	nop                                              ; $69f5: $00
	nop                                              ; $69f6: $00
	nop                                              ; $69f7: $00
	nop                                              ; $69f8: $00
	nop                                              ; $69f9: $00
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	nop                                              ; $69ff: $00
	nop                                              ; $6a00: $00
	nop                                              ; $6a01: $00
	nop                                              ; $6a02: $00
	nop                                              ; $6a03: $00
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	nop                                              ; $6a0c: $00
	nop                                              ; $6a0d: $00
	nop                                              ; $6a0e: $00
	nop                                              ; $6a0f: $00
	nop                                              ; $6a10: $00
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	nop                                              ; $6a15: $00
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	nop                                              ; $6a1b: $00
	nop                                              ; $6a1c: $00
	nop                                              ; $6a1d: $00
	nop                                              ; $6a1e: $00
	nop                                              ; $6a1f: $00
	nop                                              ; $6a20: $00
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	nop                                              ; $6a25: $00
	nop                                              ; $6a26: $00
	nop                                              ; $6a27: $00
	nop                                              ; $6a28: $00
	nop                                              ; $6a29: $00
	nop                                              ; $6a2a: $00
	nop                                              ; $6a2b: $00
	nop                                              ; $6a2c: $00
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	nop                                              ; $6a2f: $00
	nop                                              ; $6a30: $00
	nop                                              ; $6a31: $00
	nop                                              ; $6a32: $00
	nop                                              ; $6a33: $00
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	nop                                              ; $6a36: $00
	nop                                              ; $6a37: $00
	nop                                              ; $6a38: $00
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	nop                                              ; $6a3c: $00
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	nop                                              ; $6a41: $00
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	nop                                              ; $6a46: $00
	nop                                              ; $6a47: $00
	nop                                              ; $6a48: $00
	nop                                              ; $6a49: $00
	nop                                              ; $6a4a: $00
	nop                                              ; $6a4b: $00
	nop                                              ; $6a4c: $00
	nop                                              ; $6a4d: $00
	nop                                              ; $6a4e: $00
	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	nop                                              ; $6a51: $00
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	nop                                              ; $6a54: $00
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	nop                                              ; $6a5a: $00
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	nop                                              ; $6a5d: $00
	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00
	nop                                              ; $6a60: $00
	nop                                              ; $6a61: $00
	nop                                              ; $6a62: $00
	nop                                              ; $6a63: $00
	nop                                              ; $6a64: $00
	nop                                              ; $6a65: $00
	nop                                              ; $6a66: $00
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	nop                                              ; $6a6d: $00
	nop                                              ; $6a6e: $00
	nop                                              ; $6a6f: $00
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	nop                                              ; $6a72: $00
	nop                                              ; $6a73: $00
	nop                                              ; $6a74: $00
	nop                                              ; $6a75: $00
	nop                                              ; $6a76: $00
	nop                                              ; $6a77: $00
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	nop                                              ; $6a7a: $00
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	nop                                              ; $6a7d: $00
	nop                                              ; $6a7e: $00
	nop                                              ; $6a7f: $00
	nop                                              ; $6a80: $00
	nop                                              ; $6a81: $00
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	nop                                              ; $6a85: $00
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	nop                                              ; $6a92: $00
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	nop                                              ; $6a95: $00
	nop                                              ; $6a96: $00
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	nop                                              ; $6aa2: $00
	nop                                              ; $6aa3: $00
	nop                                              ; $6aa4: $00
	nop                                              ; $6aa5: $00
	nop                                              ; $6aa6: $00
	nop                                              ; $6aa7: $00
	nop                                              ; $6aa8: $00
	nop                                              ; $6aa9: $00
	nop                                              ; $6aaa: $00
	nop                                              ; $6aab: $00
	nop                                              ; $6aac: $00
	nop                                              ; $6aad: $00
	nop                                              ; $6aae: $00
	nop                                              ; $6aaf: $00
	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	nop                                              ; $6ab2: $00
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	nop                                              ; $6ab7: $00
	nop                                              ; $6ab8: $00
	nop                                              ; $6ab9: $00
	nop                                              ; $6aba: $00
	nop                                              ; $6abb: $00
	nop                                              ; $6abc: $00
	nop                                              ; $6abd: $00
	nop                                              ; $6abe: $00
	nop                                              ; $6abf: $00
	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	nop                                              ; $6ac3: $00
	nop                                              ; $6ac4: $00
	nop                                              ; $6ac5: $00
	nop                                              ; $6ac6: $00
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	nop                                              ; $6ac9: $00
	nop                                              ; $6aca: $00
	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	nop                                              ; $6acd: $00
	nop                                              ; $6ace: $00
	nop                                              ; $6acf: $00
	nop                                              ; $6ad0: $00
	nop                                              ; $6ad1: $00
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	nop                                              ; $6ad5: $00
	nop                                              ; $6ad6: $00
	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	nop                                              ; $6ae9: $00
	nop                                              ; $6aea: $00
	nop                                              ; $6aeb: $00
	nop                                              ; $6aec: $00
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	nop                                              ; $6af2: $00
	nop                                              ; $6af3: $00
	nop                                              ; $6af4: $00
	nop                                              ; $6af5: $00
	nop                                              ; $6af6: $00
	nop                                              ; $6af7: $00
	nop                                              ; $6af8: $00
	nop                                              ; $6af9: $00
	nop                                              ; $6afa: $00
	nop                                              ; $6afb: $00
	nop                                              ; $6afc: $00
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	nop                                              ; $6b05: $00
	nop                                              ; $6b06: $00
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	nop                                              ; $6b09: $00
	nop                                              ; $6b0a: $00
	nop                                              ; $6b0b: $00
	nop                                              ; $6b0c: $00
	nop                                              ; $6b0d: $00
	nop                                              ; $6b0e: $00
	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	nop                                              ; $6b12: $00
	nop                                              ; $6b13: $00
	nop                                              ; $6b14: $00
	nop                                              ; $6b15: $00
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	nop                                              ; $6b21: $00
	nop                                              ; $6b22: $00
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	nop                                              ; $6b27: $00
	nop                                              ; $6b28: $00
	nop                                              ; $6b29: $00
	nop                                              ; $6b2a: $00
	nop                                              ; $6b2b: $00
	nop                                              ; $6b2c: $00
	nop                                              ; $6b2d: $00
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	nop                                              ; $6b35: $00
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	nop                                              ; $6b39: $00
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	nop                                              ; $6b40: $00
	nop                                              ; $6b41: $00
	nop                                              ; $6b42: $00
	nop                                              ; $6b43: $00
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	nop                                              ; $6b46: $00
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	nop                                              ; $6b4a: $00
	nop                                              ; $6b4b: $00
	nop                                              ; $6b4c: $00
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	nop                                              ; $6b4f: $00
	nop                                              ; $6b50: $00
	nop                                              ; $6b51: $00
	nop                                              ; $6b52: $00
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00
	nop                                              ; $6b58: $00
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	nop                                              ; $6b5b: $00
	nop                                              ; $6b5c: $00
	nop                                              ; $6b5d: $00
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	nop                                              ; $6b62: $00
	nop                                              ; $6b63: $00
	nop                                              ; $6b64: $00
	nop                                              ; $6b65: $00
	nop                                              ; $6b66: $00
	nop                                              ; $6b67: $00
	nop                                              ; $6b68: $00
	nop                                              ; $6b69: $00
	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	nop                                              ; $6b6e: $00
	nop                                              ; $6b6f: $00
	nop                                              ; $6b70: $00
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	nop                                              ; $6b77: $00
	nop                                              ; $6b78: $00
	nop                                              ; $6b79: $00
	nop                                              ; $6b7a: $00
	nop                                              ; $6b7b: $00
	nop                                              ; $6b7c: $00
	nop                                              ; $6b7d: $00
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	nop                                              ; $6b84: $00
	nop                                              ; $6b85: $00
	nop                                              ; $6b86: $00
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	nop                                              ; $6b89: $00
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	nop                                              ; $6b8c: $00
	nop                                              ; $6b8d: $00
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	nop                                              ; $6b90: $00
	nop                                              ; $6b91: $00
	nop                                              ; $6b92: $00
	nop                                              ; $6b93: $00
	nop                                              ; $6b94: $00
	nop                                              ; $6b95: $00
	nop                                              ; $6b96: $00
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	nop                                              ; $6b99: $00
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	nop                                              ; $6b9c: $00
	nop                                              ; $6b9d: $00
	nop                                              ; $6b9e: $00
	nop                                              ; $6b9f: $00
	nop                                              ; $6ba0: $00
	nop                                              ; $6ba1: $00
	nop                                              ; $6ba2: $00
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	nop                                              ; $6ba5: $00
	nop                                              ; $6ba6: $00
	nop                                              ; $6ba7: $00
	nop                                              ; $6ba8: $00
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	nop                                              ; $6bb2: $00
	nop                                              ; $6bb3: $00
	nop                                              ; $6bb4: $00
	nop                                              ; $6bb5: $00
	nop                                              ; $6bb6: $00
	nop                                              ; $6bb7: $00
	nop                                              ; $6bb8: $00
	nop                                              ; $6bb9: $00
	nop                                              ; $6bba: $00
	nop                                              ; $6bbb: $00
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	nop                                              ; $6bc0: $00
	nop                                              ; $6bc1: $00
	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	nop                                              ; $6bc5: $00
	nop                                              ; $6bc6: $00
	nop                                              ; $6bc7: $00
	nop                                              ; $6bc8: $00
	nop                                              ; $6bc9: $00
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	nop                                              ; $6bce: $00
	nop                                              ; $6bcf: $00
	nop                                              ; $6bd0: $00
	nop                                              ; $6bd1: $00
	nop                                              ; $6bd2: $00
	nop                                              ; $6bd3: $00
	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00
	nop                                              ; $6bd6: $00
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	nop                                              ; $6bd9: $00
	nop                                              ; $6bda: $00
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	nop                                              ; $6bdd: $00
	nop                                              ; $6bde: $00
	nop                                              ; $6bdf: $00
	nop                                              ; $6be0: $00
	nop                                              ; $6be1: $00
	nop                                              ; $6be2: $00
	nop                                              ; $6be3: $00
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	nop                                              ; $6be9: $00
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	nop                                              ; $6bec: $00
	nop                                              ; $6bed: $00
	nop                                              ; $6bee: $00
	nop                                              ; $6bef: $00
	nop                                              ; $6bf0: $00
	nop                                              ; $6bf1: $00
	nop                                              ; $6bf2: $00
	nop                                              ; $6bf3: $00
	nop                                              ; $6bf4: $00
	nop                                              ; $6bf5: $00
	nop                                              ; $6bf6: $00
	nop                                              ; $6bf7: $00
	nop                                              ; $6bf8: $00
	nop                                              ; $6bf9: $00
	nop                                              ; $6bfa: $00
	nop                                              ; $6bfb: $00
	nop                                              ; $6bfc: $00
	nop                                              ; $6bfd: $00
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	nop                                              ; $6c00: $00
	nop                                              ; $6c01: $00
	nop                                              ; $6c02: $00
	nop                                              ; $6c03: $00
	nop                                              ; $6c04: $00
	nop                                              ; $6c05: $00
	nop                                              ; $6c06: $00
	nop                                              ; $6c07: $00
	nop                                              ; $6c08: $00
	nop                                              ; $6c09: $00
	nop                                              ; $6c0a: $00
	nop                                              ; $6c0b: $00
	nop                                              ; $6c0c: $00
	nop                                              ; $6c0d: $00
	nop                                              ; $6c0e: $00
	nop                                              ; $6c0f: $00
	nop                                              ; $6c10: $00
	nop                                              ; $6c11: $00
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	nop                                              ; $6c14: $00
	nop                                              ; $6c15: $00
	nop                                              ; $6c16: $00
	nop                                              ; $6c17: $00
	nop                                              ; $6c18: $00
	nop                                              ; $6c19: $00
	nop                                              ; $6c1a: $00
	nop                                              ; $6c1b: $00
	nop                                              ; $6c1c: $00
	nop                                              ; $6c1d: $00
	nop                                              ; $6c1e: $00
	nop                                              ; $6c1f: $00
	nop                                              ; $6c20: $00
	nop                                              ; $6c21: $00
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	nop                                              ; $6c24: $00
	nop                                              ; $6c25: $00
	nop                                              ; $6c26: $00
	nop                                              ; $6c27: $00
	nop                                              ; $6c28: $00
	nop                                              ; $6c29: $00
	nop                                              ; $6c2a: $00
	nop                                              ; $6c2b: $00
	nop                                              ; $6c2c: $00
	nop                                              ; $6c2d: $00
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	nop                                              ; $6c35: $00
	nop                                              ; $6c36: $00
	nop                                              ; $6c37: $00
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	nop                                              ; $6c3a: $00
	nop                                              ; $6c3b: $00
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	nop                                              ; $6c3e: $00
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	nop                                              ; $6c42: $00
	nop                                              ; $6c43: $00
	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	nop                                              ; $6c46: $00
	nop                                              ; $6c47: $00
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	nop                                              ; $6c56: $00
	nop                                              ; $6c57: $00
	nop                                              ; $6c58: $00
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	nop                                              ; $6c5b: $00
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	nop                                              ; $6c65: $00
	nop                                              ; $6c66: $00
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00
	nop                                              ; $6c69: $00
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	nop                                              ; $6c70: $00
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	nop                                              ; $6c8a: $00
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	nop                                              ; $6c93: $00
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	nop                                              ; $6c96: $00
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	nop                                              ; $6c9a: $00
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	nop                                              ; $6ca3: $00
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	nop                                              ; $6ca7: $00
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	nop                                              ; $6cab: $00
	nop                                              ; $6cac: $00
	nop                                              ; $6cad: $00
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	nop                                              ; $6cb6: $00
	nop                                              ; $6cb7: $00
	nop                                              ; $6cb8: $00
	nop                                              ; $6cb9: $00
	nop                                              ; $6cba: $00
	nop                                              ; $6cbb: $00
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	nop                                              ; $6ccf: $00
	nop                                              ; $6cd0: $00
	nop                                              ; $6cd1: $00
	nop                                              ; $6cd2: $00
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	nop                                              ; $6cd6: $00
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	nop                                              ; $6cd9: $00
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	nop                                              ; $6cdd: $00
	nop                                              ; $6cde: $00
	nop                                              ; $6cdf: $00
	nop                                              ; $6ce0: $00
	nop                                              ; $6ce1: $00
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	nop                                              ; $6ce6: $00
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00
	nop                                              ; $6ce9: $00
	nop                                              ; $6cea: $00
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	nop                                              ; $6cf0: $00
	nop                                              ; $6cf1: $00
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	nop                                              ; $6cf4: $00
	nop                                              ; $6cf5: $00
	nop                                              ; $6cf6: $00
	nop                                              ; $6cf7: $00
	nop                                              ; $6cf8: $00
	nop                                              ; $6cf9: $00
	nop                                              ; $6cfa: $00
	nop                                              ; $6cfb: $00
	nop                                              ; $6cfc: $00
	nop                                              ; $6cfd: $00
	nop                                              ; $6cfe: $00
	nop                                              ; $6cff: $00
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	nop                                              ; $6d04: $00
	nop                                              ; $6d05: $00
	nop                                              ; $6d06: $00
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	nop                                              ; $6d09: $00
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	nop                                              ; $6d0c: $00
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	nop                                              ; $6d10: $00
	nop                                              ; $6d11: $00
	nop                                              ; $6d12: $00
	nop                                              ; $6d13: $00
	nop                                              ; $6d14: $00
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	nop                                              ; $6d18: $00
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	nop                                              ; $6d1d: $00
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	nop                                              ; $6d28: $00
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	nop                                              ; $6d2b: $00
	nop                                              ; $6d2c: $00
	nop                                              ; $6d2d: $00
	nop                                              ; $6d2e: $00
	nop                                              ; $6d2f: $00
	nop                                              ; $6d30: $00
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	nop                                              ; $6d35: $00
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	nop                                              ; $6d38: $00
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	nop                                              ; $6d3d: $00
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	nop                                              ; $6d45: $00
	nop                                              ; $6d46: $00
	nop                                              ; $6d47: $00
	nop                                              ; $6d48: $00
	nop                                              ; $6d49: $00
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	nop                                              ; $6d51: $00
	nop                                              ; $6d52: $00
	nop                                              ; $6d53: $00
	nop                                              ; $6d54: $00
	nop                                              ; $6d55: $00
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	nop                                              ; $6d5a: $00
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	nop                                              ; $6d5d: $00
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	nop                                              ; $6d65: $00
	nop                                              ; $6d66: $00
	nop                                              ; $6d67: $00
	nop                                              ; $6d68: $00
	nop                                              ; $6d69: $00
	nop                                              ; $6d6a: $00
	nop                                              ; $6d6b: $00
	nop                                              ; $6d6c: $00
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	nop                                              ; $6d6f: $00
	nop                                              ; $6d70: $00
	nop                                              ; $6d71: $00
	nop                                              ; $6d72: $00
	nop                                              ; $6d73: $00
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	nop                                              ; $6d7b: $00
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	nop                                              ; $6d88: $00
	nop                                              ; $6d89: $00
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	nop                                              ; $6d8d: $00
	nop                                              ; $6d8e: $00
	nop                                              ; $6d8f: $00
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	nop                                              ; $6d92: $00
	nop                                              ; $6d93: $00
	nop                                              ; $6d94: $00
	nop                                              ; $6d95: $00
	nop                                              ; $6d96: $00
	nop                                              ; $6d97: $00
	nop                                              ; $6d98: $00
	nop                                              ; $6d99: $00
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	nop                                              ; $6da6: $00
	nop                                              ; $6da7: $00
	nop                                              ; $6da8: $00
	nop                                              ; $6da9: $00
	nop                                              ; $6daa: $00
	nop                                              ; $6dab: $00
	nop                                              ; $6dac: $00
	nop                                              ; $6dad: $00
	nop                                              ; $6dae: $00
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	nop                                              ; $6db2: $00
	nop                                              ; $6db3: $00
	nop                                              ; $6db4: $00
	nop                                              ; $6db5: $00
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	nop                                              ; $6db8: $00
	nop                                              ; $6db9: $00
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	nop                                              ; $6dbc: $00
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	nop                                              ; $6dc0: $00
	nop                                              ; $6dc1: $00
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	nop                                              ; $6dc4: $00
	nop                                              ; $6dc5: $00
	nop                                              ; $6dc6: $00
	nop                                              ; $6dc7: $00
	nop                                              ; $6dc8: $00
	nop                                              ; $6dc9: $00
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	nop                                              ; $6dcc: $00
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	nop                                              ; $6dcf: $00
	nop                                              ; $6dd0: $00
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	nop                                              ; $6dd3: $00
	nop                                              ; $6dd4: $00
	nop                                              ; $6dd5: $00
	nop                                              ; $6dd6: $00
	nop                                              ; $6dd7: $00
	nop                                              ; $6dd8: $00
	nop                                              ; $6dd9: $00
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	nop                                              ; $6dde: $00
	nop                                              ; $6ddf: $00
	nop                                              ; $6de0: $00
	nop                                              ; $6de1: $00
	nop                                              ; $6de2: $00
	nop                                              ; $6de3: $00
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	nop                                              ; $6de6: $00
	nop                                              ; $6de7: $00
	nop                                              ; $6de8: $00
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	nop                                              ; $6df0: $00
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	nop                                              ; $6df5: $00
	nop                                              ; $6df6: $00
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	nop                                              ; $6df9: $00
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	nop                                              ; $6dfe: $00
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	nop                                              ; $6e0a: $00
	nop                                              ; $6e0b: $00
	nop                                              ; $6e0c: $00
	nop                                              ; $6e0d: $00
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	nop                                              ; $6e10: $00
	nop                                              ; $6e11: $00
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	nop                                              ; $6e15: $00
	nop                                              ; $6e16: $00
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	nop                                              ; $6e19: $00
	nop                                              ; $6e1a: $00
	nop                                              ; $6e1b: $00
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	nop                                              ; $6e20: $00
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	nop                                              ; $6e27: $00
	nop                                              ; $6e28: $00
	nop                                              ; $6e29: $00
	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	nop                                              ; $6e2d: $00
	nop                                              ; $6e2e: $00
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	nop                                              ; $6e31: $00
	nop                                              ; $6e32: $00
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	nop                                              ; $6e35: $00
	nop                                              ; $6e36: $00
	nop                                              ; $6e37: $00
	nop                                              ; $6e38: $00
	nop                                              ; $6e39: $00
	nop                                              ; $6e3a: $00
	nop                                              ; $6e3b: $00
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	nop                                              ; $6e41: $00
	nop                                              ; $6e42: $00
	nop                                              ; $6e43: $00
	nop                                              ; $6e44: $00
	nop                                              ; $6e45: $00
	nop                                              ; $6e46: $00
	nop                                              ; $6e47: $00
	nop                                              ; $6e48: $00
	nop                                              ; $6e49: $00
	nop                                              ; $6e4a: $00
	nop                                              ; $6e4b: $00
	nop                                              ; $6e4c: $00
	nop                                              ; $6e4d: $00
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	nop                                              ; $6e51: $00
	nop                                              ; $6e52: $00
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	nop                                              ; $6e55: $00
	nop                                              ; $6e56: $00
	nop                                              ; $6e57: $00
	nop                                              ; $6e58: $00
	nop                                              ; $6e59: $00
	nop                                              ; $6e5a: $00
	nop                                              ; $6e5b: $00
	nop                                              ; $6e5c: $00
	nop                                              ; $6e5d: $00
	nop                                              ; $6e5e: $00
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	nop                                              ; $6e67: $00
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	nop                                              ; $6e6c: $00
	nop                                              ; $6e6d: $00
	nop                                              ; $6e6e: $00
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	nop                                              ; $6e76: $00
	nop                                              ; $6e77: $00
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00
	nop                                              ; $6e7a: $00
	nop                                              ; $6e7b: $00
	nop                                              ; $6e7c: $00
	nop                                              ; $6e7d: $00
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	nop                                              ; $6e82: $00
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	nop                                              ; $6e86: $00
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	nop                                              ; $6e8b: $00
	nop                                              ; $6e8c: $00
	nop                                              ; $6e8d: $00
	nop                                              ; $6e8e: $00
	nop                                              ; $6e8f: $00
	nop                                              ; $6e90: $00
	nop                                              ; $6e91: $00
	nop                                              ; $6e92: $00
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	nop                                              ; $6e95: $00
	nop                                              ; $6e96: $00
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	nop                                              ; $6e99: $00
	nop                                              ; $6e9a: $00
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	nop                                              ; $6e9d: $00
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	nop                                              ; $6ea2: $00
	nop                                              ; $6ea3: $00
	nop                                              ; $6ea4: $00
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	nop                                              ; $6ea7: $00
	nop                                              ; $6ea8: $00
	nop                                              ; $6ea9: $00
	nop                                              ; $6eaa: $00
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	nop                                              ; $6ead: $00
	nop                                              ; $6eae: $00
	nop                                              ; $6eaf: $00
	nop                                              ; $6eb0: $00
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	nop                                              ; $6eb6: $00
	nop                                              ; $6eb7: $00
	nop                                              ; $6eb8: $00
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	nop                                              ; $6ec5: $00
	nop                                              ; $6ec6: $00
	nop                                              ; $6ec7: $00
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	nop                                              ; $6eca: $00
	nop                                              ; $6ecb: $00
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	nop                                              ; $6ed2: $00
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	nop                                              ; $6ed5: $00
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	nop                                              ; $6ee3: $00
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	nop                                              ; $6ee6: $00
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	nop                                              ; $6ef0: $00
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	nop                                              ; $6ef8: $00
	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	nop                                              ; $6f08: $00
	nop                                              ; $6f09: $00
	nop                                              ; $6f0a: $00
	nop                                              ; $6f0b: $00
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	nop                                              ; $6f10: $00
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	nop                                              ; $6f13: $00
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	nop                                              ; $6f1d: $00
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	nop                                              ; $6f28: $00
	nop                                              ; $6f29: $00
	nop                                              ; $6f2a: $00
	nop                                              ; $6f2b: $00
	nop                                              ; $6f2c: $00
	nop                                              ; $6f2d: $00
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	nop                                              ; $6f39: $00
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	nop                                              ; $6f42: $00
	nop                                              ; $6f43: $00
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
	nop                                              ; $6f47: $00
	nop                                              ; $6f48: $00
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	nop                                              ; $6f4d: $00
	nop                                              ; $6f4e: $00
	nop                                              ; $6f4f: $00
	nop                                              ; $6f50: $00
	nop                                              ; $6f51: $00
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00
	nop                                              ; $6f54: $00
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	nop                                              ; $6f5a: $00
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	nop                                              ; $6f69: $00
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	nop                                              ; $6f6c: $00
	nop                                              ; $6f6d: $00
	nop                                              ; $6f6e: $00
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	nop                                              ; $6f79: $00
	nop                                              ; $6f7a: $00
	nop                                              ; $6f7b: $00
	nop                                              ; $6f7c: $00
	nop                                              ; $6f7d: $00
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	nop                                              ; $6f84: $00
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	nop                                              ; $6f87: $00
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	nop                                              ; $6f8c: $00
	nop                                              ; $6f8d: $00
	nop                                              ; $6f8e: $00
	nop                                              ; $6f8f: $00
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	nop                                              ; $6f92: $00
	nop                                              ; $6f93: $00
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
	nop                                              ; $6f97: $00
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	nop                                              ; $6f9b: $00
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	nop                                              ; $6fa3: $00
	nop                                              ; $6fa4: $00
	nop                                              ; $6fa5: $00
	nop                                              ; $6fa6: $00
	nop                                              ; $6fa7: $00
	nop                                              ; $6fa8: $00
	nop                                              ; $6fa9: $00
	nop                                              ; $6faa: $00
	nop                                              ; $6fab: $00
	nop                                              ; $6fac: $00
	nop                                              ; $6fad: $00
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	nop                                              ; $6fb4: $00
	nop                                              ; $6fb5: $00
	nop                                              ; $6fb6: $00
	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	nop                                              ; $6fb9: $00
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	nop                                              ; $6fca: $00
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	nop                                              ; $6fcd: $00
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	nop                                              ; $6fd2: $00
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00
	nop                                              ; $6fdb: $00
	nop                                              ; $6fdc: $00
	nop                                              ; $6fdd: $00
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	nop                                              ; $6fe0: $00
	nop                                              ; $6fe1: $00
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00
	nop                                              ; $6fef: $00
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	nop                                              ; $6ff4: $00
	nop                                              ; $6ff5: $00
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	nop                                              ; $6ff8: $00
	nop                                              ; $6ff9: $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	nop                                              ; $700e: $00
	nop                                              ; $700f: $00
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	nop                                              ; $7015: $00
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	nop                                              ; $7018: $00
	nop                                              ; $7019: $00
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	nop                                              ; $701d: $00
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	nop                                              ; $702a: $00
	nop                                              ; $702b: $00
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	nop                                              ; $7035: $00
	nop                                              ; $7036: $00
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	nop                                              ; $7039: $00
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	nop                                              ; $703c: $00
	nop                                              ; $703d: $00
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	nop                                              ; $7049: $00
	nop                                              ; $704a: $00
	nop                                              ; $704b: $00
	nop                                              ; $704c: $00
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	nop                                              ; $7058: $00
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	nop                                              ; $7064: $00
	nop                                              ; $7065: $00
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	nop                                              ; $7068: $00
	nop                                              ; $7069: $00
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00
	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	nop                                              ; $7076: $00
	nop                                              ; $7077: $00
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	nop                                              ; $707b: $00
	nop                                              ; $707c: $00
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	nop                                              ; $7089: $00
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	nop                                              ; $7090: $00
	nop                                              ; $7091: $00
	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	nop                                              ; $70a0: $00
	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	nop                                              ; $70a3: $00
	nop                                              ; $70a4: $00
	nop                                              ; $70a5: $00
	nop                                              ; $70a6: $00
	nop                                              ; $70a7: $00
	nop                                              ; $70a8: $00
	nop                                              ; $70a9: $00
	nop                                              ; $70aa: $00
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	nop                                              ; $70ad: $00
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	nop                                              ; $70b0: $00
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	nop                                              ; $70b3: $00
	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	nop                                              ; $70ce: $00
	nop                                              ; $70cf: $00
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	nop                                              ; $70d3: $00
	nop                                              ; $70d4: $00
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	nop                                              ; $7104: $00
	nop                                              ; $7105: $00
	nop                                              ; $7106: $00
	nop                                              ; $7107: $00
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	nop                                              ; $710a: $00
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
	nop                                              ; $7110: $00
	nop                                              ; $7111: $00
	nop                                              ; $7112: $00
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	nop                                              ; $711d: $00
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	nop                                              ; $7122: $00
	nop                                              ; $7123: $00
	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	nop                                              ; $712c: $00
	nop                                              ; $712d: $00
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
	nop                                              ; $7130: $00
	nop                                              ; $7131: $00
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	nop                                              ; $7134: $00
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	nop                                              ; $7144: $00
	nop                                              ; $7145: $00
	nop                                              ; $7146: $00
	nop                                              ; $7147: $00
	nop                                              ; $7148: $00
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00
	nop                                              ; $714c: $00
	nop                                              ; $714d: $00
	nop                                              ; $714e: $00
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	nop                                              ; $7184: $00
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	nop                                              ; $718d: $00
	nop                                              ; $718e: $00
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	nop                                              ; $71ac: $00
	nop                                              ; $71ad: $00
	nop                                              ; $71ae: $00
	nop                                              ; $71af: $00
	nop                                              ; $71b0: $00
	nop                                              ; $71b1: $00
	nop                                              ; $71b2: $00
	nop                                              ; $71b3: $00
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00
	nop                                              ; $71ba: $00
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
	nop                                              ; $71c6: $00
	nop                                              ; $71c7: $00
	nop                                              ; $71c8: $00
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	nop                                              ; $71d1: $00
	nop                                              ; $71d2: $00
	nop                                              ; $71d3: $00
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	nop                                              ; $71f0: $00
	nop                                              ; $71f1: $00
	nop                                              ; $71f2: $00
	nop                                              ; $71f3: $00
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	nop                                              ; $7205: $00
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	nop                                              ; $720f: $00
	nop                                              ; $7210: $00
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	nop                                              ; $7219: $00
	nop                                              ; $721a: $00
	nop                                              ; $721b: $00
	nop                                              ; $721c: $00
	nop                                              ; $721d: $00
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	nop                                              ; $7224: $00
	nop                                              ; $7225: $00
	nop                                              ; $7226: $00
	nop                                              ; $7227: $00
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	nop                                              ; $722c: $00
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	nop                                              ; $7230: $00
	nop                                              ; $7231: $00
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	nop                                              ; $7238: $00
	nop                                              ; $7239: $00
	nop                                              ; $723a: $00
	nop                                              ; $723b: $00
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	nop                                              ; $723e: $00
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	nop                                              ; $7246: $00
	nop                                              ; $7247: $00
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00
	nop                                              ; $724a: $00
	nop                                              ; $724b: $00
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	nop                                              ; $7252: $00
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	nop                                              ; $7255: $00
	nop                                              ; $7256: $00
	nop                                              ; $7257: $00
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	nop                                              ; $7262: $00
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	nop                                              ; $7265: $00
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	nop                                              ; $726b: $00
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	nop                                              ; $726e: $00
	nop                                              ; $726f: $00
	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	nop                                              ; $7279: $00
	nop                                              ; $727a: $00
	nop                                              ; $727b: $00
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	nop                                              ; $727f: $00
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	nop                                              ; $7286: $00
	nop                                              ; $7287: $00
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	nop                                              ; $728c: $00
	nop                                              ; $728d: $00
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	nop                                              ; $7290: $00
	nop                                              ; $7291: $00
	nop                                              ; $7292: $00
	nop                                              ; $7293: $00
	nop                                              ; $7294: $00
	nop                                              ; $7295: $00
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00
	nop                                              ; $729c: $00
	nop                                              ; $729d: $00
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	nop                                              ; $72ab: $00
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	nop                                              ; $72b0: $00
	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	nop                                              ; $72bd: $00
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	nop                                              ; $72e5: $00
	nop                                              ; $72e6: $00
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	nop                                              ; $72e9: $00
	nop                                              ; $72ea: $00
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	nop                                              ; $72ed: $00
	nop                                              ; $72ee: $00
	nop                                              ; $72ef: $00
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	nop                                              ; $72f5: $00
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	nop                                              ; $72f8: $00
	nop                                              ; $72f9: $00
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	nop                                              ; $730c: $00
	nop                                              ; $730d: $00
	nop                                              ; $730e: $00
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	nop                                              ; $7315: $00
	nop                                              ; $7316: $00
	nop                                              ; $7317: $00
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	nop                                              ; $732d: $00
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	nop                                              ; $7333: $00
	nop                                              ; $7334: $00
	nop                                              ; $7335: $00
	nop                                              ; $7336: $00
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	nop                                              ; $734b: $00
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	nop                                              ; $7351: $00
	nop                                              ; $7352: $00
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	nop                                              ; $7356: $00
	nop                                              ; $7357: $00
	nop                                              ; $7358: $00
	nop                                              ; $7359: $00
	nop                                              ; $735a: $00
	nop                                              ; $735b: $00
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	nop                                              ; $7368: $00
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	nop                                              ; $736e: $00
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	nop                                              ; $7371: $00
	nop                                              ; $7372: $00
	nop                                              ; $7373: $00
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00
	nop                                              ; $7379: $00
	nop                                              ; $737a: $00
	nop                                              ; $737b: $00
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	nop                                              ; $7382: $00
	nop                                              ; $7383: $00
	nop                                              ; $7384: $00
	nop                                              ; $7385: $00
	nop                                              ; $7386: $00
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	nop                                              ; $738a: $00
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	nop                                              ; $738d: $00
	nop                                              ; $738e: $00
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	nop                                              ; $7394: $00
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	nop                                              ; $7397: $00
	nop                                              ; $7398: $00
	nop                                              ; $7399: $00
	nop                                              ; $739a: $00
	nop                                              ; $739b: $00
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	nop                                              ; $73a6: $00
	nop                                              ; $73a7: $00
	nop                                              ; $73a8: $00
	nop                                              ; $73a9: $00
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	nop                                              ; $73ac: $00
	nop                                              ; $73ad: $00
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	nop                                              ; $73b1: $00
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	nop                                              ; $73b4: $00
	nop                                              ; $73b5: $00
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	nop                                              ; $73c9: $00
	nop                                              ; $73ca: $00
	nop                                              ; $73cb: $00
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	nop                                              ; $73cf: $00
	nop                                              ; $73d0: $00
	nop                                              ; $73d1: $00
	nop                                              ; $73d2: $00
	nop                                              ; $73d3: $00
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	nop                                              ; $73d6: $00
	nop                                              ; $73d7: $00
	nop                                              ; $73d8: $00
	nop                                              ; $73d9: $00
	nop                                              ; $73da: $00
	nop                                              ; $73db: $00
	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	nop                                              ; $73e6: $00
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	nop                                              ; $73e9: $00
	nop                                              ; $73ea: $00
	nop                                              ; $73eb: $00
	nop                                              ; $73ec: $00
	nop                                              ; $73ed: $00
	nop                                              ; $73ee: $00
	nop                                              ; $73ef: $00
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	nop                                              ; $73f2: $00
	nop                                              ; $73f3: $00
	nop                                              ; $73f4: $00
	nop                                              ; $73f5: $00
	nop                                              ; $73f6: $00
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	nop                                              ; $73fa: $00
	nop                                              ; $73fb: $00
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	nop                                              ; $7400: $00
	nop                                              ; $7401: $00
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	nop                                              ; $740a: $00
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	nop                                              ; $740d: $00
	nop                                              ; $740e: $00
	nop                                              ; $740f: $00
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	nop                                              ; $7412: $00
	nop                                              ; $7413: $00
	nop                                              ; $7414: $00
	nop                                              ; $7415: $00
	nop                                              ; $7416: $00
	nop                                              ; $7417: $00
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	nop                                              ; $741a: $00
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	nop                                              ; $742e: $00
	nop                                              ; $742f: $00
	nop                                              ; $7430: $00
	nop                                              ; $7431: $00
	nop                                              ; $7432: $00
	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	nop                                              ; $7435: $00
	nop                                              ; $7436: $00
	nop                                              ; $7437: $00
	nop                                              ; $7438: $00
	nop                                              ; $7439: $00
	nop                                              ; $743a: $00
	nop                                              ; $743b: $00
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	nop                                              ; $744f: $00
	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	nop                                              ; $7452: $00
	nop                                              ; $7453: $00
	nop                                              ; $7454: $00
	nop                                              ; $7455: $00
	nop                                              ; $7456: $00
	nop                                              ; $7457: $00
	nop                                              ; $7458: $00
	nop                                              ; $7459: $00
	nop                                              ; $745a: $00
	nop                                              ; $745b: $00
	nop                                              ; $745c: $00
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	nop                                              ; $7461: $00
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	nop                                              ; $7468: $00
	nop                                              ; $7469: $00
	nop                                              ; $746a: $00
	nop                                              ; $746b: $00
	nop                                              ; $746c: $00
	nop                                              ; $746d: $00
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	nop                                              ; $7470: $00
	nop                                              ; $7471: $00
	nop                                              ; $7472: $00
	nop                                              ; $7473: $00
	nop                                              ; $7474: $00
	nop                                              ; $7475: $00
	nop                                              ; $7476: $00
	nop                                              ; $7477: $00
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	nop                                              ; $747a: $00
	nop                                              ; $747b: $00
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	nop                                              ; $7482: $00
	nop                                              ; $7483: $00
	nop                                              ; $7484: $00
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	nop                                              ; $7487: $00
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	nop                                              ; $748c: $00
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	nop                                              ; $7491: $00
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	nop                                              ; $7494: $00
	nop                                              ; $7495: $00
	nop                                              ; $7496: $00
	nop                                              ; $7497: $00
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	nop                                              ; $749a: $00
	nop                                              ; $749b: $00
	nop                                              ; $749c: $00
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	nop                                              ; $749f: $00
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	nop                                              ; $74a7: $00
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	nop                                              ; $74b6: $00
	nop                                              ; $74b7: $00
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	nop                                              ; $74ba: $00
	nop                                              ; $74bb: $00
	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	nop                                              ; $74c1: $00
	nop                                              ; $74c2: $00
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	nop                                              ; $74c9: $00
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	nop                                              ; $74cc: $00
	nop                                              ; $74cd: $00
	nop                                              ; $74ce: $00
	nop                                              ; $74cf: $00
	nop                                              ; $74d0: $00
	nop                                              ; $74d1: $00
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	nop                                              ; $74d4: $00
	nop                                              ; $74d5: $00
	nop                                              ; $74d6: $00
	nop                                              ; $74d7: $00
	nop                                              ; $74d8: $00
	nop                                              ; $74d9: $00
	nop                                              ; $74da: $00
	nop                                              ; $74db: $00
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	nop                                              ; $74e4: $00
	nop                                              ; $74e5: $00
	nop                                              ; $74e6: $00
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	nop                                              ; $74eb: $00
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	nop                                              ; $74ee: $00
	nop                                              ; $74ef: $00
	nop                                              ; $74f0: $00
	nop                                              ; $74f1: $00
	nop                                              ; $74f2: $00
	nop                                              ; $74f3: $00
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	nop                                              ; $74f6: $00
	nop                                              ; $74f7: $00
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	nop                                              ; $74fa: $00
	nop                                              ; $74fb: $00
	nop                                              ; $74fc: $00
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	nop                                              ; $7502: $00
	nop                                              ; $7503: $00
	nop                                              ; $7504: $00
	nop                                              ; $7505: $00
	nop                                              ; $7506: $00
	nop                                              ; $7507: $00
	nop                                              ; $7508: $00
	nop                                              ; $7509: $00
	nop                                              ; $750a: $00
	nop                                              ; $750b: $00
	nop                                              ; $750c: $00
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	nop                                              ; $7511: $00
	nop                                              ; $7512: $00
	nop                                              ; $7513: $00
	nop                                              ; $7514: $00
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	nop                                              ; $7518: $00
	nop                                              ; $7519: $00
	nop                                              ; $751a: $00
	nop                                              ; $751b: $00
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	nop                                              ; $7524: $00
	nop                                              ; $7525: $00
	nop                                              ; $7526: $00
	nop                                              ; $7527: $00
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	nop                                              ; $752a: $00
	nop                                              ; $752b: $00
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	nop                                              ; $752e: $00
	nop                                              ; $752f: $00
	nop                                              ; $7530: $00
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	nop                                              ; $7533: $00
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	nop                                              ; $7536: $00
	nop                                              ; $7537: $00
	nop                                              ; $7538: $00
	nop                                              ; $7539: $00
	nop                                              ; $753a: $00
	nop                                              ; $753b: $00
	nop                                              ; $753c: $00
	nop                                              ; $753d: $00
	nop                                              ; $753e: $00
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	nop                                              ; $7542: $00
	nop                                              ; $7543: $00
	nop                                              ; $7544: $00
	nop                                              ; $7545: $00
	nop                                              ; $7546: $00
	nop                                              ; $7547: $00
	nop                                              ; $7548: $00
	nop                                              ; $7549: $00
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	nop                                              ; $754c: $00
	nop                                              ; $754d: $00
	nop                                              ; $754e: $00
	nop                                              ; $754f: $00
	nop                                              ; $7550: $00
	nop                                              ; $7551: $00
	nop                                              ; $7552: $00
	nop                                              ; $7553: $00
	nop                                              ; $7554: $00
	nop                                              ; $7555: $00
	nop                                              ; $7556: $00
	nop                                              ; $7557: $00
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	nop                                              ; $7565: $00
	nop                                              ; $7566: $00
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00
	nop                                              ; $756e: $00
	nop                                              ; $756f: $00
	nop                                              ; $7570: $00
	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	nop                                              ; $7573: $00
	nop                                              ; $7574: $00
	nop                                              ; $7575: $00
	nop                                              ; $7576: $00
	nop                                              ; $7577: $00
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	nop                                              ; $757a: $00
	nop                                              ; $757b: $00
	nop                                              ; $757c: $00
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	nop                                              ; $7581: $00
	nop                                              ; $7582: $00
	nop                                              ; $7583: $00
	nop                                              ; $7584: $00
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	nop                                              ; $7587: $00
	nop                                              ; $7588: $00
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
	nop                                              ; $7596: $00
	nop                                              ; $7597: $00
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	nop                                              ; $759a: $00
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00
	nop                                              ; $75a4: $00
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	nop                                              ; $75ac: $00
	nop                                              ; $75ad: $00
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	nop                                              ; $75b2: $00
	nop                                              ; $75b3: $00
	nop                                              ; $75b4: $00
	nop                                              ; $75b5: $00
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	nop                                              ; $75b8: $00
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	nop                                              ; $75c4: $00
	nop                                              ; $75c5: $00
	nop                                              ; $75c6: $00
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	nop                                              ; $75cb: $00
	nop                                              ; $75cc: $00
	nop                                              ; $75cd: $00
	nop                                              ; $75ce: $00
	nop                                              ; $75cf: $00
	nop                                              ; $75d0: $00
	nop                                              ; $75d1: $00
	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	nop                                              ; $75d4: $00
	nop                                              ; $75d5: $00
	nop                                              ; $75d6: $00
	nop                                              ; $75d7: $00
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	nop                                              ; $75da: $00
	nop                                              ; $75db: $00
	nop                                              ; $75dc: $00
	nop                                              ; $75dd: $00
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	nop                                              ; $75e0: $00
	nop                                              ; $75e1: $00
	nop                                              ; $75e2: $00
	nop                                              ; $75e3: $00
	nop                                              ; $75e4: $00
	nop                                              ; $75e5: $00
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	nop                                              ; $75e8: $00
	nop                                              ; $75e9: $00
	nop                                              ; $75ea: $00
	nop                                              ; $75eb: $00
	nop                                              ; $75ec: $00
	nop                                              ; $75ed: $00
	nop                                              ; $75ee: $00
	nop                                              ; $75ef: $00
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	nop                                              ; $75f4: $00
	nop                                              ; $75f5: $00
	nop                                              ; $75f6: $00
	nop                                              ; $75f7: $00
	nop                                              ; $75f8: $00
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	nop                                              ; $7602: $00
	nop                                              ; $7603: $00
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00
	nop                                              ; $7606: $00
	nop                                              ; $7607: $00
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	nop                                              ; $760a: $00
	nop                                              ; $760b: $00
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	nop                                              ; $760e: $00
	nop                                              ; $760f: $00
	nop                                              ; $7610: $00
	nop                                              ; $7611: $00
	nop                                              ; $7612: $00
	nop                                              ; $7613: $00
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	nop                                              ; $7619: $00
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	nop                                              ; $7623: $00
	nop                                              ; $7624: $00
	nop                                              ; $7625: $00
	nop                                              ; $7626: $00
	nop                                              ; $7627: $00
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	nop                                              ; $762c: $00
	nop                                              ; $762d: $00
	nop                                              ; $762e: $00
	nop                                              ; $762f: $00
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	nop                                              ; $7632: $00
	nop                                              ; $7633: $00
	nop                                              ; $7634: $00
	nop                                              ; $7635: $00
	nop                                              ; $7636: $00
	nop                                              ; $7637: $00
	nop                                              ; $7638: $00
	nop                                              ; $7639: $00
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	nop                                              ; $7641: $00
	nop                                              ; $7642: $00
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	nop                                              ; $7649: $00
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	nop                                              ; $764f: $00
	nop                                              ; $7650: $00
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	nop                                              ; $7659: $00
	nop                                              ; $765a: $00
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	nop                                              ; $7667: $00
	nop                                              ; $7668: $00
	nop                                              ; $7669: $00
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	nop                                              ; $766d: $00
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00
	nop                                              ; $7672: $00
	nop                                              ; $7673: $00
	nop                                              ; $7674: $00
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	nop                                              ; $767a: $00
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	nop                                              ; $7680: $00
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	nop                                              ; $7684: $00
	nop                                              ; $7685: $00
	nop                                              ; $7686: $00
	nop                                              ; $7687: $00
	nop                                              ; $7688: $00
	nop                                              ; $7689: $00
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	nop                                              ; $768d: $00
	nop                                              ; $768e: $00
	nop                                              ; $768f: $00
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	nop                                              ; $7692: $00
	nop                                              ; $7693: $00
	nop                                              ; $7694: $00
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	nop                                              ; $76a6: $00
	nop                                              ; $76a7: $00
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	nop                                              ; $76b1: $00
	nop                                              ; $76b2: $00
	nop                                              ; $76b3: $00
	nop                                              ; $76b4: $00
	nop                                              ; $76b5: $00
	nop                                              ; $76b6: $00
	nop                                              ; $76b7: $00
	nop                                              ; $76b8: $00
	nop                                              ; $76b9: $00
	nop                                              ; $76ba: $00
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	nop                                              ; $76c2: $00
	nop                                              ; $76c3: $00
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	nop                                              ; $76c8: $00
	nop                                              ; $76c9: $00
	nop                                              ; $76ca: $00
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	nop                                              ; $76cf: $00
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	nop                                              ; $76de: $00
	nop                                              ; $76df: $00
	nop                                              ; $76e0: $00
	nop                                              ; $76e1: $00
	nop                                              ; $76e2: $00
	nop                                              ; $76e3: $00
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	nop                                              ; $76e6: $00
	nop                                              ; $76e7: $00
	nop                                              ; $76e8: $00
	nop                                              ; $76e9: $00
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	nop                                              ; $76f0: $00
	nop                                              ; $76f1: $00
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	nop                                              ; $76f4: $00
	nop                                              ; $76f5: $00
	nop                                              ; $76f6: $00
	nop                                              ; $76f7: $00
	nop                                              ; $76f8: $00
	nop                                              ; $76f9: $00
	nop                                              ; $76fa: $00
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	nop                                              ; $7705: $00
	nop                                              ; $7706: $00
	nop                                              ; $7707: $00
	nop                                              ; $7708: $00
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	nop                                              ; $7712: $00
	nop                                              ; $7713: $00
	nop                                              ; $7714: $00
	nop                                              ; $7715: $00
	nop                                              ; $7716: $00
	nop                                              ; $7717: $00
	nop                                              ; $7718: $00
	nop                                              ; $7719: $00
	nop                                              ; $771a: $00
	nop                                              ; $771b: $00
	nop                                              ; $771c: $00
	nop                                              ; $771d: $00
	nop                                              ; $771e: $00
	nop                                              ; $771f: $00
	nop                                              ; $7720: $00
	nop                                              ; $7721: $00
	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	nop                                              ; $7724: $00
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	nop                                              ; $7728: $00
	nop                                              ; $7729: $00
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	nop                                              ; $772e: $00
	nop                                              ; $772f: $00
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	nop                                              ; $7739: $00
	nop                                              ; $773a: $00
	nop                                              ; $773b: $00
	nop                                              ; $773c: $00
	nop                                              ; $773d: $00
	nop                                              ; $773e: $00
	nop                                              ; $773f: $00
	nop                                              ; $7740: $00
	nop                                              ; $7741: $00
	nop                                              ; $7742: $00
	nop                                              ; $7743: $00
	nop                                              ; $7744: $00
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00
	nop                                              ; $7747: $00
	nop                                              ; $7748: $00
	nop                                              ; $7749: $00
	nop                                              ; $774a: $00
	nop                                              ; $774b: $00
	nop                                              ; $774c: $00
	nop                                              ; $774d: $00
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00
	nop                                              ; $7753: $00
	nop                                              ; $7754: $00
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	nop                                              ; $7757: $00
	nop                                              ; $7758: $00
	nop                                              ; $7759: $00
	nop                                              ; $775a: $00
	nop                                              ; $775b: $00
	nop                                              ; $775c: $00
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	nop                                              ; $775f: $00
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	nop                                              ; $7762: $00
	nop                                              ; $7763: $00
	nop                                              ; $7764: $00
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	nop                                              ; $7767: $00
	nop                                              ; $7768: $00
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	nop                                              ; $776d: $00
	nop                                              ; $776e: $00
	nop                                              ; $776f: $00
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	nop                                              ; $7775: $00
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	nop                                              ; $777f: $00
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	nop                                              ; $7784: $00
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	nop                                              ; $7788: $00
	nop                                              ; $7789: $00
	nop                                              ; $778a: $00
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	nop                                              ; $778d: $00
	nop                                              ; $778e: $00
	nop                                              ; $778f: $00
	nop                                              ; $7790: $00
	nop                                              ; $7791: $00
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	nop                                              ; $7795: $00
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	nop                                              ; $7798: $00
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	nop                                              ; $77b4: $00
	nop                                              ; $77b5: $00
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	nop                                              ; $77b8: $00
	nop                                              ; $77b9: $00
	nop                                              ; $77ba: $00
	nop                                              ; $77bb: $00
	nop                                              ; $77bc: $00
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	nop                                              ; $77c3: $00
	nop                                              ; $77c4: $00
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	nop                                              ; $77c9: $00
	nop                                              ; $77ca: $00
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	nop                                              ; $77cd: $00
	nop                                              ; $77ce: $00
	nop                                              ; $77cf: $00
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	nop                                              ; $77d2: $00
	nop                                              ; $77d3: $00
	nop                                              ; $77d4: $00
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	nop                                              ; $77da: $00
	nop                                              ; $77db: $00
	nop                                              ; $77dc: $00
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	nop                                              ; $77e3: $00
	nop                                              ; $77e4: $00
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	nop                                              ; $77ed: $00
	nop                                              ; $77ee: $00
	nop                                              ; $77ef: $00
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	nop                                              ; $77f2: $00
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00
	nop                                              ; $77f5: $00
	nop                                              ; $77f6: $00
	nop                                              ; $77f7: $00
	nop                                              ; $77f8: $00
	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	nop                                              ; $77fc: $00
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	nop                                              ; $77ff: $00
	nop                                              ; $7800: $00
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	nop                                              ; $7803: $00
	nop                                              ; $7804: $00
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	nop                                              ; $7807: $00
	nop                                              ; $7808: $00
	nop                                              ; $7809: $00
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	nop                                              ; $780e: $00
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	nop                                              ; $7812: $00
	nop                                              ; $7813: $00
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	nop                                              ; $7816: $00
	nop                                              ; $7817: $00
	nop                                              ; $7818: $00
	nop                                              ; $7819: $00
	nop                                              ; $781a: $00
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	nop                                              ; $782a: $00
	nop                                              ; $782b: $00
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	nop                                              ; $782e: $00
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	nop                                              ; $7833: $00
	nop                                              ; $7834: $00
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	nop                                              ; $783c: $00
	nop                                              ; $783d: $00
	nop                                              ; $783e: $00
	nop                                              ; $783f: $00
	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	nop                                              ; $7844: $00
	nop                                              ; $7845: $00
	nop                                              ; $7846: $00
	nop                                              ; $7847: $00
	nop                                              ; $7848: $00
	nop                                              ; $7849: $00
	nop                                              ; $784a: $00
	nop                                              ; $784b: $00
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	nop                                              ; $784e: $00
	nop                                              ; $784f: $00
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	nop                                              ; $7852: $00
	nop                                              ; $7853: $00
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	nop                                              ; $7856: $00
	nop                                              ; $7857: $00
	nop                                              ; $7858: $00
	nop                                              ; $7859: $00
	nop                                              ; $785a: $00
	nop                                              ; $785b: $00
	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	nop                                              ; $7866: $00
	nop                                              ; $7867: $00
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	nop                                              ; $7876: $00
	nop                                              ; $7877: $00
	nop                                              ; $7878: $00
	nop                                              ; $7879: $00
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	nop                                              ; $7880: $00
	nop                                              ; $7881: $00
	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	nop                                              ; $7884: $00
	nop                                              ; $7885: $00
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	nop                                              ; $7889: $00
	nop                                              ; $788a: $00
	nop                                              ; $788b: $00
	nop                                              ; $788c: $00
	nop                                              ; $788d: $00
	nop                                              ; $788e: $00
	nop                                              ; $788f: $00
	nop                                              ; $7890: $00
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
	nop                                              ; $7896: $00
	nop                                              ; $7897: $00
	nop                                              ; $7898: $00
	nop                                              ; $7899: $00
	nop                                              ; $789a: $00
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	nop                                              ; $78a2: $00
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	nop                                              ; $78a9: $00
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	nop                                              ; $78ad: $00
	nop                                              ; $78ae: $00
	nop                                              ; $78af: $00
	nop                                              ; $78b0: $00
	nop                                              ; $78b1: $00
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	nop                                              ; $78b9: $00
	nop                                              ; $78ba: $00
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	nop                                              ; $78bd: $00
	nop                                              ; $78be: $00
	nop                                              ; $78bf: $00
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	nop                                              ; $78c4: $00
	nop                                              ; $78c5: $00
	nop                                              ; $78c6: $00
	nop                                              ; $78c7: $00
	nop                                              ; $78c8: $00
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	nop                                              ; $78cd: $00
	nop                                              ; $78ce: $00
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	nop                                              ; $78d1: $00
	nop                                              ; $78d2: $00
	nop                                              ; $78d3: $00
	nop                                              ; $78d4: $00
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	nop                                              ; $78d7: $00
	nop                                              ; $78d8: $00
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
	nop                                              ; $78e0: $00
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	nop                                              ; $78e3: $00
	nop                                              ; $78e4: $00
	nop                                              ; $78e5: $00
	nop                                              ; $78e6: $00
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	nop                                              ; $78e9: $00
	nop                                              ; $78ea: $00
	nop                                              ; $78eb: $00
	nop                                              ; $78ec: $00
	nop                                              ; $78ed: $00
	nop                                              ; $78ee: $00
	nop                                              ; $78ef: $00
	nop                                              ; $78f0: $00
	nop                                              ; $78f1: $00
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	nop                                              ; $78fa: $00
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	nop                                              ; $78fd: $00
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	nop                                              ; $7902: $00
	nop                                              ; $7903: $00
	nop                                              ; $7904: $00
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	nop                                              ; $7909: $00
	nop                                              ; $790a: $00
	nop                                              ; $790b: $00
	nop                                              ; $790c: $00
	nop                                              ; $790d: $00
	nop                                              ; $790e: $00
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	nop                                              ; $7911: $00
	nop                                              ; $7912: $00
	nop                                              ; $7913: $00
	nop                                              ; $7914: $00
	nop                                              ; $7915: $00
	nop                                              ; $7916: $00
	nop                                              ; $7917: $00
	nop                                              ; $7918: $00
	nop                                              ; $7919: $00
	nop                                              ; $791a: $00
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	nop                                              ; $7920: $00
	nop                                              ; $7921: $00
	nop                                              ; $7922: $00
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	nop                                              ; $7925: $00
	nop                                              ; $7926: $00
	nop                                              ; $7927: $00
	nop                                              ; $7928: $00
	nop                                              ; $7929: $00
	nop                                              ; $792a: $00
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	nop                                              ; $792d: $00
	nop                                              ; $792e: $00
	nop                                              ; $792f: $00
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	nop                                              ; $7932: $00
	nop                                              ; $7933: $00
	nop                                              ; $7934: $00
	nop                                              ; $7935: $00
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	nop                                              ; $7942: $00
	nop                                              ; $7943: $00
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	nop                                              ; $7946: $00
	nop                                              ; $7947: $00
	nop                                              ; $7948: $00
	nop                                              ; $7949: $00
	nop                                              ; $794a: $00
	nop                                              ; $794b: $00
	nop                                              ; $794c: $00
	nop                                              ; $794d: $00
	nop                                              ; $794e: $00
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	nop                                              ; $7951: $00
	nop                                              ; $7952: $00
	nop                                              ; $7953: $00
	nop                                              ; $7954: $00
	nop                                              ; $7955: $00
	nop                                              ; $7956: $00
	nop                                              ; $7957: $00
	nop                                              ; $7958: $00
	nop                                              ; $7959: $00
	nop                                              ; $795a: $00
	nop                                              ; $795b: $00
	nop                                              ; $795c: $00
	nop                                              ; $795d: $00
	nop                                              ; $795e: $00
	nop                                              ; $795f: $00
	nop                                              ; $7960: $00
	nop                                              ; $7961: $00
	nop                                              ; $7962: $00
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	nop                                              ; $7965: $00
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	nop                                              ; $7969: $00
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00
	nop                                              ; $7972: $00
	nop                                              ; $7973: $00
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	nop                                              ; $7976: $00
	nop                                              ; $7977: $00
	nop                                              ; $7978: $00
	nop                                              ; $7979: $00
	nop                                              ; $797a: $00
	nop                                              ; $797b: $00
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	nop                                              ; $7989: $00
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	nop                                              ; $798c: $00
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	nop                                              ; $7991: $00
	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	nop                                              ; $7998: $00
	nop                                              ; $7999: $00
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	nop                                              ; $79ac: $00
	nop                                              ; $79ad: $00
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	nop                                              ; $79b0: $00
	nop                                              ; $79b1: $00
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	nop                                              ; $79b8: $00
	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	nop                                              ; $79c0: $00
	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	nop                                              ; $79c4: $00
	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	nop                                              ; $79c7: $00
	nop                                              ; $79c8: $00
	nop                                              ; $79c9: $00
	nop                                              ; $79ca: $00
	nop                                              ; $79cb: $00
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	nop                                              ; $79d6: $00
	nop                                              ; $79d7: $00
	nop                                              ; $79d8: $00
	nop                                              ; $79d9: $00
	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	nop                                              ; $79e8: $00
	nop                                              ; $79e9: $00
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	nop                                              ; $79ec: $00
	nop                                              ; $79ed: $00
	nop                                              ; $79ee: $00
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	nop                                              ; $79f2: $00
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	nop                                              ; $79f6: $00
	nop                                              ; $79f7: $00
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	nop                                              ; $79ff: $00
	nop                                              ; $7a00: $00
	nop                                              ; $7a01: $00
	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	nop                                              ; $7a0c: $00
	nop                                              ; $7a0d: $00
	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	nop                                              ; $7a16: $00
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	nop                                              ; $7a26: $00
	nop                                              ; $7a27: $00
	nop                                              ; $7a28: $00
	nop                                              ; $7a29: $00
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	nop                                              ; $7a2e: $00
	nop                                              ; $7a2f: $00
	nop                                              ; $7a30: $00
	nop                                              ; $7a31: $00
	nop                                              ; $7a32: $00
	nop                                              ; $7a33: $00
	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	nop                                              ; $7a3a: $00
	nop                                              ; $7a3b: $00
	nop                                              ; $7a3c: $00
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	nop                                              ; $7a45: $00
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	nop                                              ; $7a49: $00
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	nop                                              ; $7a4c: $00
	nop                                              ; $7a4d: $00
	nop                                              ; $7a4e: $00
	nop                                              ; $7a4f: $00
	nop                                              ; $7a50: $00
	nop                                              ; $7a51: $00
	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	nop                                              ; $7a62: $00
	nop                                              ; $7a63: $00
	nop                                              ; $7a64: $00
	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	nop                                              ; $7a73: $00
	nop                                              ; $7a74: $00
	nop                                              ; $7a75: $00
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00
	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	nop                                              ; $7a7a: $00
	nop                                              ; $7a7b: $00
	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	nop                                              ; $7a86: $00
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	nop                                              ; $7a8b: $00
	nop                                              ; $7a8c: $00
	nop                                              ; $7a8d: $00
	nop                                              ; $7a8e: $00
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	nop                                              ; $7a93: $00
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	nop                                              ; $7a96: $00
	nop                                              ; $7a97: $00
	nop                                              ; $7a98: $00
	nop                                              ; $7a99: $00
	nop                                              ; $7a9a: $00
	nop                                              ; $7a9b: $00
	nop                                              ; $7a9c: $00
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	nop                                              ; $7aa2: $00
	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	nop                                              ; $7aa5: $00
	nop                                              ; $7aa6: $00
	nop                                              ; $7aa7: $00
	nop                                              ; $7aa8: $00
	nop                                              ; $7aa9: $00
	nop                                              ; $7aaa: $00
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	nop                                              ; $7aae: $00
	nop                                              ; $7aaf: $00
	nop                                              ; $7ab0: $00
	nop                                              ; $7ab1: $00
	nop                                              ; $7ab2: $00
	nop                                              ; $7ab3: $00
	nop                                              ; $7ab4: $00
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	nop                                              ; $7ab7: $00
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	nop                                              ; $7ac4: $00
	nop                                              ; $7ac5: $00
	nop                                              ; $7ac6: $00
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00
	nop                                              ; $7ac9: $00
	nop                                              ; $7aca: $00
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	nop                                              ; $7ace: $00
	nop                                              ; $7acf: $00
	nop                                              ; $7ad0: $00
	nop                                              ; $7ad1: $00
	nop                                              ; $7ad2: $00
	nop                                              ; $7ad3: $00
	nop                                              ; $7ad4: $00
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	nop                                              ; $7ad9: $00
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00
	nop                                              ; $7ae5: $00
	nop                                              ; $7ae6: $00
	nop                                              ; $7ae7: $00
	nop                                              ; $7ae8: $00
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	nop                                              ; $7af1: $00
	nop                                              ; $7af2: $00
	nop                                              ; $7af3: $00
	nop                                              ; $7af4: $00
	nop                                              ; $7af5: $00
	nop                                              ; $7af6: $00
	nop                                              ; $7af7: $00
	nop                                              ; $7af8: $00
	nop                                              ; $7af9: $00
	nop                                              ; $7afa: $00
	nop                                              ; $7afb: $00
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
	nop                                              ; $7aff: $00
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	nop                                              ; $7b02: $00
	nop                                              ; $7b03: $00
	nop                                              ; $7b04: $00
	nop                                              ; $7b05: $00
	nop                                              ; $7b06: $00
	nop                                              ; $7b07: $00
	nop                                              ; $7b08: $00
	nop                                              ; $7b09: $00
	nop                                              ; $7b0a: $00
	nop                                              ; $7b0b: $00
	nop                                              ; $7b0c: $00
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
	nop                                              ; $7b13: $00
	nop                                              ; $7b14: $00
	nop                                              ; $7b15: $00
	nop                                              ; $7b16: $00
	nop                                              ; $7b17: $00
	nop                                              ; $7b18: $00
	nop                                              ; $7b19: $00
	nop                                              ; $7b1a: $00
	nop                                              ; $7b1b: $00
	nop                                              ; $7b1c: $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	nop                                              ; $7b23: $00
	nop                                              ; $7b24: $00
	nop                                              ; $7b25: $00
	nop                                              ; $7b26: $00
	nop                                              ; $7b27: $00
	nop                                              ; $7b28: $00
	nop                                              ; $7b29: $00
	nop                                              ; $7b2a: $00
	nop                                              ; $7b2b: $00
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	nop                                              ; $7b30: $00
	nop                                              ; $7b31: $00
	nop                                              ; $7b32: $00
	nop                                              ; $7b33: $00
	nop                                              ; $7b34: $00
	nop                                              ; $7b35: $00
	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	nop                                              ; $7b38: $00
	nop                                              ; $7b39: $00
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	nop                                              ; $7b42: $00
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	nop                                              ; $7b49: $00
	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	nop                                              ; $7b4e: $00
	nop                                              ; $7b4f: $00
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	nop                                              ; $7b52: $00
	nop                                              ; $7b53: $00
	nop                                              ; $7b54: $00
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	nop                                              ; $7b58: $00
	nop                                              ; $7b59: $00
	nop                                              ; $7b5a: $00
	nop                                              ; $7b5b: $00
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	nop                                              ; $7b62: $00
	nop                                              ; $7b63: $00
	nop                                              ; $7b64: $00
	nop                                              ; $7b65: $00
	nop                                              ; $7b66: $00
	nop                                              ; $7b67: $00
	nop                                              ; $7b68: $00
	nop                                              ; $7b69: $00
	nop                                              ; $7b6a: $00
	nop                                              ; $7b6b: $00
	nop                                              ; $7b6c: $00
	nop                                              ; $7b6d: $00
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	nop                                              ; $7b73: $00
	nop                                              ; $7b74: $00
	nop                                              ; $7b75: $00
	nop                                              ; $7b76: $00
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	nop                                              ; $7b79: $00
	nop                                              ; $7b7a: $00
	nop                                              ; $7b7b: $00
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	nop                                              ; $7b82: $00
	nop                                              ; $7b83: $00
	nop                                              ; $7b84: $00
	nop                                              ; $7b85: $00
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	nop                                              ; $7b88: $00
	nop                                              ; $7b89: $00
	nop                                              ; $7b8a: $00
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	nop                                              ; $7b8d: $00
	nop                                              ; $7b8e: $00
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	nop                                              ; $7b91: $00
	nop                                              ; $7b92: $00
	nop                                              ; $7b93: $00
	nop                                              ; $7b94: $00
	nop                                              ; $7b95: $00
	nop                                              ; $7b96: $00
	nop                                              ; $7b97: $00
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	nop                                              ; $7b9c: $00
	nop                                              ; $7b9d: $00
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	nop                                              ; $7ba2: $00
	nop                                              ; $7ba3: $00
	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	nop                                              ; $7ba6: $00
	nop                                              ; $7ba7: $00
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	nop                                              ; $7baa: $00
	nop                                              ; $7bab: $00
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	nop                                              ; $7bb8: $00
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	nop                                              ; $7bc2: $00
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	nop                                              ; $7bc5: $00
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	nop                                              ; $7bf0: $00
	nop                                              ; $7bf1: $00
	nop                                              ; $7bf2: $00
	nop                                              ; $7bf3: $00
	nop                                              ; $7bf4: $00
	nop                                              ; $7bf5: $00
	nop                                              ; $7bf6: $00
	nop                                              ; $7bf7: $00
	nop                                              ; $7bf8: $00
	nop                                              ; $7bf9: $00
	nop                                              ; $7bfa: $00
	nop                                              ; $7bfb: $00
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	nop                                              ; $7c06: $00
	nop                                              ; $7c07: $00
	nop                                              ; $7c08: $00
	nop                                              ; $7c09: $00
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
	nop                                              ; $7c0e: $00
	nop                                              ; $7c0f: $00
	nop                                              ; $7c10: $00
	nop                                              ; $7c11: $00
	nop                                              ; $7c12: $00
	nop                                              ; $7c13: $00
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00
	nop                                              ; $7c16: $00
	nop                                              ; $7c17: $00
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	nop                                              ; $7c1a: $00
	nop                                              ; $7c1b: $00
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	nop                                              ; $7c24: $00
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	nop                                              ; $7c29: $00
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00
	nop                                              ; $7c37: $00
	nop                                              ; $7c38: $00
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00
	nop                                              ; $7c3b: $00
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	nop                                              ; $7c70: $00
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	nop                                              ; $7c78: $00
	nop                                              ; $7c79: $00
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	nop                                              ; $7c7c: $00
	nop                                              ; $7c7d: $00
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	nop                                              ; $7c93: $00
	nop                                              ; $7c94: $00
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	nop                                              ; $7c97: $00
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	nop                                              ; $7c9f: $00
	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	nop                                              ; $7ca4: $00
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	nop                                              ; $7cd0: $00
	nop                                              ; $7cd1: $00
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	nop                                              ; $7cd6: $00
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	nop                                              ; $7ce2: $00
	nop                                              ; $7ce3: $00
	nop                                              ; $7ce4: $00
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	nop                                              ; $7cea: $00
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	nop                                              ; $7cee: $00
	nop                                              ; $7cef: $00
	nop                                              ; $7cf0: $00
	nop                                              ; $7cf1: $00
	nop                                              ; $7cf2: $00
	nop                                              ; $7cf3: $00
	nop                                              ; $7cf4: $00
	nop                                              ; $7cf5: $00
	nop                                              ; $7cf6: $00
	nop                                              ; $7cf7: $00
	nop                                              ; $7cf8: $00
	nop                                              ; $7cf9: $00
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	nop                                              ; $7d08: $00
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	nop                                              ; $7d13: $00
	nop                                              ; $7d14: $00
	nop                                              ; $7d15: $00
	nop                                              ; $7d16: $00
	nop                                              ; $7d17: $00
	nop                                              ; $7d18: $00
	nop                                              ; $7d19: $00
	nop                                              ; $7d1a: $00
	nop                                              ; $7d1b: $00
	nop                                              ; $7d1c: $00
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	nop                                              ; $7d20: $00
	nop                                              ; $7d21: $00
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	nop                                              ; $7d31: $00
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	nop                                              ; $7d34: $00
	nop                                              ; $7d35: $00
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	nop                                              ; $7d50: $00
	nop                                              ; $7d51: $00
	nop                                              ; $7d52: $00
	nop                                              ; $7d53: $00
	nop                                              ; $7d54: $00
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	nop                                              ; $7d57: $00
	nop                                              ; $7d58: $00
	nop                                              ; $7d59: $00
	nop                                              ; $7d5a: $00
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
	nop                                              ; $7d6e: $00
	nop                                              ; $7d6f: $00
	nop                                              ; $7d70: $00
	nop                                              ; $7d71: $00
	nop                                              ; $7d72: $00
	nop                                              ; $7d73: $00
	nop                                              ; $7d74: $00
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	nop                                              ; $7d77: $00
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	nop                                              ; $7d7b: $00
	nop                                              ; $7d7c: $00
	nop                                              ; $7d7d: $00
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	nop                                              ; $7d82: $00
	nop                                              ; $7d83: $00
	nop                                              ; $7d84: $00
	nop                                              ; $7d85: $00
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
	nop                                              ; $7d94: $00
	nop                                              ; $7d95: $00
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	nop                                              ; $7d98: $00
	nop                                              ; $7d99: $00
	nop                                              ; $7d9a: $00
	nop                                              ; $7d9b: $00
	nop                                              ; $7d9c: $00
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	nop                                              ; $7da0: $00
	nop                                              ; $7da1: $00
	nop                                              ; $7da2: $00
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	nop                                              ; $7da5: $00
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	nop                                              ; $7da8: $00
	nop                                              ; $7da9: $00
	nop                                              ; $7daa: $00
	nop                                              ; $7dab: $00
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	nop                                              ; $7db1: $00
	nop                                              ; $7db2: $00
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	nop                                              ; $7db9: $00
	nop                                              ; $7dba: $00
	nop                                              ; $7dbb: $00
	nop                                              ; $7dbc: $00
	nop                                              ; $7dbd: $00
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	nop                                              ; $7dc0: $00
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	nop                                              ; $7dc3: $00
	nop                                              ; $7dc4: $00
	nop                                              ; $7dc5: $00
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	nop                                              ; $7dc9: $00
	nop                                              ; $7dca: $00
	nop                                              ; $7dcb: $00
	nop                                              ; $7dcc: $00
	nop                                              ; $7dcd: $00
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	nop                                              ; $7dd0: $00
	nop                                              ; $7dd1: $00
	nop                                              ; $7dd2: $00
	nop                                              ; $7dd3: $00
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	nop                                              ; $7dd8: $00
	nop                                              ; $7dd9: $00
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	nop                                              ; $7de0: $00
	nop                                              ; $7de1: $00
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	nop                                              ; $7de5: $00
	nop                                              ; $7de6: $00
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	nop                                              ; $7def: $00
	nop                                              ; $7df0: $00
	nop                                              ; $7df1: $00
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	nop                                              ; $7df7: $00
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	nop                                              ; $7e05: $00
	nop                                              ; $7e06: $00
	nop                                              ; $7e07: $00
	nop                                              ; $7e08: $00
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	nop                                              ; $7e0b: $00
	nop                                              ; $7e0c: $00
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	nop                                              ; $7e13: $00
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	nop                                              ; $7e2a: $00
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	nop                                              ; $7e34: $00
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	nop                                              ; $7e3b: $00
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	nop                                              ; $7e42: $00
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	nop                                              ; $7e46: $00
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	nop                                              ; $7e8c: $00
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	nop                                              ; $7e8f: $00
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	nop                                              ; $7e98: $00
	nop                                              ; $7e99: $00
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	nop                                              ; $7ee4: $00
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	nop                                              ; $7ef2: $00
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	nop                                              ; $7efc: $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	nop                                              ; $7f0c: $00
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	nop                                              ; $7f11: $00
	nop                                              ; $7f12: $00
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	nop                                              ; $7f15: $00
	nop                                              ; $7f16: $00
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	nop                                              ; $7f19: $00
	nop                                              ; $7f1a: $00
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	nop                                              ; $7f20: $00
	nop                                              ; $7f21: $00
	nop                                              ; $7f22: $00
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	nop                                              ; $7f2d: $00
	nop                                              ; $7f2e: $00
	nop                                              ; $7f2f: $00
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	nop                                              ; $7f37: $00
	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	nop                                              ; $7f40: $00
	nop                                              ; $7f41: $00
	nop                                              ; $7f42: $00
	nop                                              ; $7f43: $00
	nop                                              ; $7f44: $00
	nop                                              ; $7f45: $00
	nop                                              ; $7f46: $00
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	nop                                              ; $7f4e: $00
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	nop                                              ; $7f53: $00
	nop                                              ; $7f54: $00
	nop                                              ; $7f55: $00
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	nop                                              ; $7f60: $00
	nop                                              ; $7f61: $00
	nop                                              ; $7f62: $00
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	nop                                              ; $7f65: $00
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
	nop                                              ; $7f69: $00
	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	nop                                              ; $7f6c: $00
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	nop                                              ; $7f70: $00
	nop                                              ; $7f71: $00
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	nop                                              ; $7f78: $00
	nop                                              ; $7f79: $00
	nop                                              ; $7f7a: $00
	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	nop                                              ; $7f8f: $00
	nop                                              ; $7f90: $00
	nop                                              ; $7f91: $00
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	nop                                              ; $7f94: $00
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	nop                                              ; $7fa3: $00
	nop                                              ; $7fa4: $00
	nop                                              ; $7fa5: $00
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	nop                                              ; $7fac: $00
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	nop                                              ; $7fb0: $00
	nop                                              ; $7fb1: $00
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	nop                                              ; $7fb4: $00
	nop                                              ; $7fb5: $00
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	nop                                              ; $7fbc: $00
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	nop                                              ; $7fc9: $00
	nop                                              ; $7fca: $00
	nop                                              ; $7fcb: $00
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	nop                                              ; $7fed: $00
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	nop                                              ; $7ff2: $00
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	nop                                              ; $7ff5: $00
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
