; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e0", ROMX[$4000], BANK[$e0]

	adc  b                                           ; $4000: $88
	xor  d                                           ; $4001: $aa
	add  l                                           ; $4002: $85
	ld   a, c                                        ; $4003: $79
	sbc  c                                           ; $4004: $99
	sbc  c                                           ; $4005: $99
	adc  c                                           ; $4006: $89
	add  [hl]                                        ; $4007: $86
	ld   a, b                                        ; $4008: $78
	sbc  b                                           ; $4009: $98
	ld   [hl], a                                     ; $400a: $77
	adc  b                                           ; $400b: $88
	halt                                             ; $400c: $76
	ld   d, a                                        ; $400d: $57
	sbc  c                                           ; $400e: $99
	ld   [hl], a                                     ; $400f: $77
	sbc  b                                           ; $4010: $98
	add  a                                           ; $4011: $87
	ld   [hl], a                                     ; $4012: $77
	sbc  c                                           ; $4013: $99
	xor  d                                           ; $4014: $aa
	xor  b                                           ; $4015: $a8
	sbc  c                                           ; $4016: $99
	ld   h, [hl]                                     ; $4017: $66
	ld   [hl], a                                     ; $4018: $77
	sbc  c                                           ; $4019: $99
	ld   a, b                                        ; $401a: $78
	sbc  c                                           ; $401b: $99
	ld   a, b                                        ; $401c: $78
	ld   [hl], a                                     ; $401d: $77
	ld   [hl], a                                     ; $401e: $77
	ld   [hl], a                                     ; $401f: $77
	ld   a, b                                        ; $4020: $78
	sbc  c                                           ; $4021: $99
	ld   [hl], a                                     ; $4022: $77
	sbc  d                                           ; $4023: $9a
	halt                                             ; $4024: $76
	ld   a, b                                        ; $4025: $78
	xor  c                                           ; $4026: $a9
	adc  b                                           ; $4027: $88
	sbc  d                                           ; $4028: $9a
	add  [hl]                                        ; $4029: $86
	sbc  e                                           ; $402a: $9b
	and  a                                           ; $402b: $a7
	ld   h, a                                        ; $402c: $67
	adc  c                                           ; $402d: $89
	halt                                             ; $402e: $76
	ld   [hl], a                                     ; $402f: $77
	ld   [hl], a                                     ; $4030: $77
	ld   [hl], a                                     ; $4031: $77
	adc  c                                           ; $4032: $89
	adc  b                                           ; $4033: $88
	adc  d                                           ; $4034: $8a
	xor  c                                           ; $4035: $a9
	halt                                             ; $4036: $76
	ld   a, b                                        ; $4037: $78
	ld   [hl], a                                     ; $4038: $77
	adc  d                                           ; $4039: $8a
	xor  c                                           ; $403a: $a9
	adc  b                                           ; $403b: $88
	add  a                                           ; $403c: $87
	ld   h, a                                        ; $403d: $67
	sbc  c                                           ; $403e: $99
	sub  a                                           ; $403f: $97
	adc  c                                           ; $4040: $89
	sbc  c                                           ; $4041: $99
	add  a                                           ; $4042: $87
	adc  c                                           ; $4043: $89
	add  a                                           ; $4044: $87
	adc  b                                           ; $4045: $88
	adc  b                                           ; $4046: $88
	add  a                                           ; $4047: $87
	adc  c                                           ; $4048: $89
	adc  b                                           ; $4049: $88
	halt                                             ; $404a: $76
	ld   a, c                                        ; $404b: $79
	add  a                                           ; $404c: $87
	ld   [hl], a                                     ; $404d: $77
	sbc  d                                           ; $404e: $9a
	sub  a                                           ; $404f: $97
	ld   a, b                                        ; $4050: $78
	xor  c                                           ; $4051: $a9
	sbc  c                                           ; $4052: $99
	xor  c                                           ; $4053: $a9
	sbc  b                                           ; $4054: $98
	adc  b                                           ; $4055: $88
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	adc  c                                           ; $4058: $89
	add  a                                           ; $4059: $87
	adc  b                                           ; $405a: $88
	adc  b                                           ; $405b: $88
	add  a                                           ; $405c: $87
	ld   [hl], a                                     ; $405d: $77
	ld   [hl], a                                     ; $405e: $77
	ld   [hl], a                                     ; $405f: $77
	ld   a, b                                        ; $4060: $78
	sbc  c                                           ; $4061: $99
	sbc  c                                           ; $4062: $99
	sbc  b                                           ; $4063: $98
	adc  b                                           ; $4064: $88
	adc  b                                           ; $4065: $88
	adc  c                                           ; $4066: $89
	sbc  c                                           ; $4067: $99
	sbc  c                                           ; $4068: $99
	ld   [hl], a                                     ; $4069: $77
	ld   a, c                                        ; $406a: $79
	sbc  b                                           ; $406b: $98
	ld   a, b                                        ; $406c: $78
	adc  c                                           ; $406d: $89
	add  a                                           ; $406e: $87
	ld   h, a                                        ; $406f: $67
	adc  b                                           ; $4070: $88
	adc  c                                           ; $4071: $89
	sbc  c                                           ; $4072: $99
	sbc  c                                           ; $4073: $99
	sbc  c                                           ; $4074: $99
	adc  b                                           ; $4075: $88
	sbc  c                                           ; $4076: $99
	sbc  c                                           ; $4077: $99
	adc  b                                           ; $4078: $88
	adc  b                                           ; $4079: $88
	sbc  b                                           ; $407a: $98
	adc  b                                           ; $407b: $88
	sbc  c                                           ; $407c: $99
	sbc  c                                           ; $407d: $99
	ld   [hl], a                                     ; $407e: $77
	sbc  b                                           ; $407f: $98
	ld   a, b                                        ; $4080: $78
	sbc  c                                           ; $4081: $99
	add  a                                           ; $4082: $87
	ld   a, b                                        ; $4083: $78
	add  a                                           ; $4084: $87
	adc  b                                           ; $4085: $88
	sbc  b                                           ; $4086: $98
	adc  c                                           ; $4087: $89
	sbc  c                                           ; $4088: $99
	adc  c                                           ; $4089: $89
	adc  b                                           ; $408a: $88
	adc  b                                           ; $408b: $88
	adc  b                                           ; $408c: $88
	adc  b                                           ; $408d: $88
	adc  b                                           ; $408e: $88
	sbc  b                                           ; $408f: $98
	adc  c                                           ; $4090: $89
	adc  b                                           ; $4091: $88
	sbc  b                                           ; $4092: $98
	adc  b                                           ; $4093: $88
	adc  b                                           ; $4094: $88
	adc  b                                           ; $4095: $88
	adc  c                                           ; $4096: $89
	adc  b                                           ; $4097: $88
	sbc  c                                           ; $4098: $99
	sbc  b                                           ; $4099: $98
	adc  b                                           ; $409a: $88
	sbc  b                                           ; $409b: $98
	sbc  b                                           ; $409c: $98
	adc  c                                           ; $409d: $89
	adc  c                                           ; $409e: $89
	adc  b                                           ; $409f: $88
	adc  b                                           ; $40a0: $88
	adc  b                                           ; $40a1: $88
	adc  b                                           ; $40a2: $88
	adc  b                                           ; $40a3: $88
	ld   a, b                                        ; $40a4: $78
	adc  b                                           ; $40a5: $88
	sbc  c                                           ; $40a6: $99
	sbc  c                                           ; $40a7: $99
	sbc  c                                           ; $40a8: $99
	adc  b                                           ; $40a9: $88
	add  a                                           ; $40aa: $87
	ld   a, b                                        ; $40ab: $78
	adc  b                                           ; $40ac: $88
	sbc  c                                           ; $40ad: $99
	adc  b                                           ; $40ae: $88
	sbc  b                                           ; $40af: $98
	adc  c                                           ; $40b0: $89
	adc  c                                           ; $40b1: $89
	sbc  b                                           ; $40b2: $98
	adc  b                                           ; $40b3: $88
	adc  b                                           ; $40b4: $88
	adc  b                                           ; $40b5: $88
	adc  b                                           ; $40b6: $88
	adc  b                                           ; $40b7: $88
	adc  b                                           ; $40b8: $88
	sbc  c                                           ; $40b9: $99
	adc  b                                           ; $40ba: $88
	adc  b                                           ; $40bb: $88
	adc  b                                           ; $40bc: $88
	adc  b                                           ; $40bd: $88
	adc  b                                           ; $40be: $88
	adc  b                                           ; $40bf: $88
	sbc  c                                           ; $40c0: $99
	adc  b                                           ; $40c1: $88
	adc  b                                           ; $40c2: $88
	adc  b                                           ; $40c3: $88
	adc  b                                           ; $40c4: $88
	adc  b                                           ; $40c5: $88
	adc  b                                           ; $40c6: $88
	adc  b                                           ; $40c7: $88
	adc  b                                           ; $40c8: $88
	adc  b                                           ; $40c9: $88
	adc  c                                           ; $40ca: $89
	adc  b                                           ; $40cb: $88
	adc  b                                           ; $40cc: $88
	adc  b                                           ; $40cd: $88
	adc  b                                           ; $40ce: $88
	adc  b                                           ; $40cf: $88
	adc  b                                           ; $40d0: $88
	adc  b                                           ; $40d1: $88
	adc  b                                           ; $40d2: $88
	adc  b                                           ; $40d3: $88
	adc  b                                           ; $40d4: $88
	adc  b                                           ; $40d5: $88
	adc  b                                           ; $40d6: $88
	adc  b                                           ; $40d7: $88
	adc  b                                           ; $40d8: $88
	adc  b                                           ; $40d9: $88
	adc  b                                           ; $40da: $88
	adc  b                                           ; $40db: $88
	adc  b                                           ; $40dc: $88
	adc  b                                           ; $40dd: $88
	adc  b                                           ; $40de: $88
	adc  b                                           ; $40df: $88
	adc  b                                           ; $40e0: $88
	adc  b                                           ; $40e1: $88
	adc  b                                           ; $40e2: $88
	adc  b                                           ; $40e3: $88
	adc  b                                           ; $40e4: $88
	adc  b                                           ; $40e5: $88
	adc  b                                           ; $40e6: $88
	adc  b                                           ; $40e7: $88
	adc  b                                           ; $40e8: $88
	adc  b                                           ; $40e9: $88
	adc  b                                           ; $40ea: $88
	adc  b                                           ; $40eb: $88
	adc  b                                           ; $40ec: $88
	adc  b                                           ; $40ed: $88
	adc  b                                           ; $40ee: $88
	adc  b                                           ; $40ef: $88
	adc  b                                           ; $40f0: $88
	adc  b                                           ; $40f1: $88
	adc  b                                           ; $40f2: $88
	adc  b                                           ; $40f3: $88
	adc  b                                           ; $40f4: $88
	adc  b                                           ; $40f5: $88
	adc  b                                           ; $40f6: $88
	adc  b                                           ; $40f7: $88
	adc  b                                           ; $40f8: $88
	adc  b                                           ; $40f9: $88
	adc  b                                           ; $40fa: $88
	adc  b                                           ; $40fb: $88
	adc  b                                           ; $40fc: $88
	adc  b                                           ; $40fd: $88
	adc  b                                           ; $40fe: $88
	adc  b                                           ; $40ff: $88
	adc  b                                           ; $4100: $88
	adc  b                                           ; $4101: $88
	adc  b                                           ; $4102: $88
	adc  b                                           ; $4103: $88
	adc  b                                           ; $4104: $88
	adc  b                                           ; $4105: $88
	adc  b                                           ; $4106: $88
	adc  b                                           ; $4107: $88
	adc  b                                           ; $4108: $88
	adc  b                                           ; $4109: $88
	ld   de, $1111                                   ; $410a: $11 $11 $11
	ld   de, $1111                                   ; $410d: $11 $11 $11
	ld   de, $1111                                   ; $4110: $11 $11 $11
	ld   de, $1111                                   ; $4113: $11 $11 $11
	ld   de, $1111                                   ; $4116: $11 $11 $11
	ld   de, $1111                                   ; $4119: $11 $11 $11
	ld   de, $1111                                   ; $411c: $11 $11 $11
	ld   de, $1111                                   ; $411f: $11 $11 $11
	ld   de, $1111                                   ; $4122: $11 $11 $11
	ld   de, $1111                                   ; $4125: $11 $11 $11
	ld   de, $0011                                   ; $4128: $11 $11 $00
	ld   c, b                                        ; $412b: $48
	ld   de, $1111                                   ; $412c: $11 $11 $11
	ld   de, $1111                                   ; $412f: $11 $11 $11
	ld   de, $1111                                   ; $4132: $11 $11 $11
	ld   de, $5413                                   ; $4135: $11 $13 $54
	ld   d, h                                        ; $4138: $54
	ld   d, h                                        ; $4139: $54
	ld   b, c                                        ; $413a: $41
	rra                                              ; $413b: $1f
	rst  $38                                         ; $413c: $ff
	pop  af                                          ; $413d: $f1
	ld   de, $1411                                   ; $413e: $11 $11 $14
	or   c                                           ; $4141: $b1
	ld   de, $dd1c                                   ; $4142: $11 $1c $dd
	cp   h                                           ; $4145: $bc
	db   $dd                                         ; $4146: $dd
	or   c                                           ; $4147: $b1
	ld   de, $1111                                   ; $4148: $11 $11 $11
	ld   de, $1111                                   ; $414b: $11 $11 $11
	ld   de, $1111                                   ; $414e: $11 $11 $11
	ld   de, $1111                                   ; $4151: $11 $11 $11
	ld   de, $5411                                   ; $4154: $11 $11 $54
	ld   b, h                                        ; $4157: $44
	or   h                                           ; $4158: $b4
	ld   de, $5454                                   ; $4159: $11 $54 $54
	ld   h, a                                        ; $415c: $67
	ld   [hl], d                                     ; $415d: $72
	ld   de, $1111                                   ; $415e: $11 $11 $11
	ld   de, $1112                                   ; $4161: $11 $12 $11
	ld   [de], a                                     ; $4164: $12
	ld   de, $1111                                   ; $4165: $11 $11 $11
	ld   h, [hl]                                     ; $4168: $66
	halt                                             ; $4169: $76
	add  h                                           ; $416a: $84
	ld   de, $8888                                   ; $416b: $11 $88 $88
	adc  b                                           ; $416e: $88
	adc  b                                           ; $416f: $88
	adc  b                                           ; $4170: $88
	adc  b                                           ; $4171: $88
	adc  b                                           ; $4172: $88
	adc  b                                           ; $4173: $88
	adc  b                                           ; $4174: $88
	adc  b                                           ; $4175: $88
	adc  b                                           ; $4176: $88
	adc  b                                           ; $4177: $88
	adc  b                                           ; $4178: $88
	adc  b                                           ; $4179: $88
	adc  b                                           ; $417a: $88
	sbc  c                                           ; $417b: $99
	adc  b                                           ; $417c: $88
	adc  b                                           ; $417d: $88
	adc  b                                           ; $417e: $88
	adc  b                                           ; $417f: $88
	adc  c                                           ; $4180: $89
	sbc  b                                           ; $4181: $98
	add  a                                           ; $4182: $87
	adc  b                                           ; $4183: $88
	adc  b                                           ; $4184: $88
	adc  b                                           ; $4185: $88
	adc  b                                           ; $4186: $88
	add  a                                           ; $4187: $87
	ld   a, b                                        ; $4188: $78
	add  a                                           ; $4189: $87
	ld   a, b                                        ; $418a: $78
	adc  b                                           ; $418b: $88
	sbc  c                                           ; $418c: $99
	ld   [hl], a                                     ; $418d: $77
	ld   a, c                                        ; $418e: $79
	sub  a                                           ; $418f: $97
	ld   a, b                                        ; $4190: $78
	adc  c                                           ; $4191: $89
	sbc  b                                           ; $4192: $98
	ld   [hl], a                                     ; $4193: $77
	adc  c                                           ; $4194: $89
	add  a                                           ; $4195: $87
	adc  b                                           ; $4196: $88
	adc  b                                           ; $4197: $88
	sbc  c                                           ; $4198: $99
	ld   a, b                                        ; $4199: $78
	sbc  c                                           ; $419a: $99
	adc  b                                           ; $419b: $88
	adc  b                                           ; $419c: $88
	adc  b                                           ; $419d: $88
	adc  b                                           ; $419e: $88
	adc  b                                           ; $419f: $88
	sbc  c                                           ; $41a0: $99
	sbc  b                                           ; $41a1: $98
	ld   [hl], a                                     ; $41a2: $77
	adc  b                                           ; $41a3: $88
	sbc  c                                           ; $41a4: $99
	adc  b                                           ; $41a5: $88
	add  [hl]                                        ; $41a6: $86
	ld   l, b                                        ; $41a7: $68
	add  a                                           ; $41a8: $87
	ld   [hl], a                                     ; $41a9: $77
	ld   [hl], a                                     ; $41aa: $77
	halt                                             ; $41ab: $76
	inc  sp                                          ; $41ac: $33
	inc  sp                                          ; $41ad: $33
	inc  h                                           ; $41ae: $24
	ld   sp, $2146                                   ; $41af: $31 $46 $21
	ld   de, $ff1f                                   ; $41b2: $11 $1f $ff
	db   $fd                                         ; $41b5: $fd
	sbc  b                                           ; $41b6: $98
	ld   b, e                                        ; $41b7: $43
	ld   [hl-], a                                    ; $41b8: $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41b9: $cf
	rst  $38                                         ; $41ba: $ff
	db   $fc                                         ; $41bb: $fc
	ld   d, l                                        ; $41bc: $55
	ld   a, e                                        ; $41bd: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41be: $cf
	db   $fd                                         ; $41bf: $fd
	rst  $38                                         ; $41c0: $ff
	ld   [$bd69], a                                  ; $41c1: $ea $69 $bd
	jp   hl                                          ; $41c4: $e9


	ld   sp, $1211                                   ; $41c5: $31 $11 $12
	ld   de, $1111                                   ; $41c8: $11 $11 $11
	ld   de, $1111                                   ; $41cb: $11 $11 $11
	ld   l, a                                        ; $41ce: $6f
	rst  $38                                         ; $41cf: $ff
	push hl                                          ; $41d0: $e5
	ld   [hl], $ab                                   ; $41d1: $36 $ab
	inc  sp                                          ; $41d3: $33
	rst  $38                                         ; $41d4: $ff
	rst  $38                                         ; $41d5: $ff
	sub  c                                           ; $41d6: $91
	add  hl, de                                      ; $41d7: $19
	db   $fd                                         ; $41d8: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41d9: $cf
	rst  $38                                         ; $41da: $ff
	rst  $38                                         ; $41db: $ff
	ld   h, h                                        ; $41dc: $64
	sbc  a                                           ; $41dd: $9f
	cp   $b6                                         ; $41de: $fe $b6
	ld   a, b                                        ; $41e0: $78
	ld   sp, $1111                                   ; $41e1: $31 $11 $11
	ld   de, $1111                                   ; $41e4: $11 $11 $11
	ld   de, $1111                                   ; $41e7: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41ea: $cf
	rst  $38                                         ; $41eb: $ff
	di                                               ; $41ec: $f3
	ld   d, $c2                                      ; $41ed: $16 $c2
	dec  e                                           ; $41ef: $1d
	rst  $38                                         ; $41f0: $ff
	rst  $38                                         ; $41f1: $ff
	ld   de, $ff5f                                   ; $41f2: $11 $5f $ff
	db   $fd                                         ; $41f5: $fd
	rst  $28                                         ; $41f6: $ef
	db   $fc                                         ; $41f7: $fc
	add  [hl]                                        ; $41f8: $86
	xor  a                                           ; $41f9: $af
	ld   a, [$1111]                                  ; $41fa: $fa $11 $11
	ld   de, $1111                                   ; $41fd: $11 $11 $11
	dec  e                                           ; $4200: $1d
	ld   de, $1111                                   ; $4201: $11 $11 $11
	rla                                              ; $4204: $17
	rst  $38                                         ; $4205: $ff
	rst  $38                                         ; $4206: $ff
	ld   h, c                                        ; $4207: $61
	inc  l                                           ; $4208: $2c
	ld   e, c                                        ; $4209: $59
	ld   l, a                                        ; $420a: $6f
	rst  $38                                         ; $420b: $ff
	rst  $38                                         ; $420c: $ff
	ld   [hl], d                                     ; $420d: $72
	rst  $28                                         ; $420e: $ef
	cp   $11                                         ; $420f: $fe $11
	xor  h                                           ; $4211: $ac
	rst  $28                                         ; $4212: $ef
	sub  l                                           ; $4213: $95
	ld   b, a                                        ; $4214: $47
	ld   [hl], c                                     ; $4215: $71
	ld   de, $1e11                                   ; $4216: $11 $11 $1e
	sub  c                                           ; $4219: $91
	ld   c, b                                        ; $421a: $48
	ld   [hl-], a                                    ; $421b: $32
	ld   de, $1f11                                   ; $421c: $11 $11 $1f
	rst  $38                                         ; $421f: $ff
	rst  $38                                         ; $4220: $ff
	sbc  a                                           ; $4221: $9f
	pop  de                                          ; $4222: $d1
	and  l                                           ; $4223: $a5
	rst  $38                                         ; $4224: $ff
	rst  $38                                         ; $4225: $ff
	cp   $ff                                         ; $4226: $fe $ff
	sbc  a                                           ; $4228: $9f
	or   $58                                         ; $4229: $f6 $58
	add  hl, hl                                      ; $422b: $29
	add  e                                           ; $422c: $83
	ld   h, d                                        ; $422d: $62
	ld   hl, $7113                                   ; $422e: $21 $13 $71
	ld   de, $1811                                   ; $4231: $11 $11 $18
	or   c                                           ; $4234: $b1
	ld   d, $13                                      ; $4235: $16 $13
	ld   de, $ff1b                                   ; $4237: $11 $1b $ff
	ld   a, a                                        ; $423a: $7f
	rst  $38                                         ; $423b: $ff
	rst  $28                                         ; $423c: $ef
	sbc  a                                           ; $423d: $9f
	db   $f4                                         ; $423e: $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $423f: $cf
	rst  $38                                         ; $4240: $ff
	rst  $38                                         ; $4241: $ff
	ld   e, $e6                                      ; $4242: $1e $e6
	ld   sp, hl                                      ; $4244: $f9
	ld   e, l                                        ; $4245: $5d
	ld   d, c                                        ; $4246: $51
	ld   hl, $1451                                   ; $4247: $21 $51 $14
	ld   a, [$7111]                                  ; $424a: $fa $11 $71
	inc  d                                           ; $424d: $14
	sub  e                                           ; $424e: $93
	ld   de, $df11                                   ; $424f: $11 $11 $df
	ld   d, d                                        ; $4252: $52
	sbc  d                                           ; $4253: $9a
	rst  $38                                         ; $4254: $ff
	push de                                          ; $4255: $d5
	ld   a, a                                        ; $4256: $7f
	db   $fc                                         ; $4257: $fc
	rst  $38                                         ; $4258: $ff
	ld   l, a                                        ; $4259: $6f
	rst  $38                                         ; $425a: $ff
	cp   $17                                         ; $425b: $fe $17
	cp   $8a                                         ; $425d: $fe $8a
	add  $11                                         ; $425f: $c6 $11
	cp   c                                           ; $4261: $b9
	inc  d                                           ; $4262: $14
	add  c                                           ; $4263: $81
	inc  d                                           ; $4264: $14
	ld   sp, $142b                                   ; $4265: $31 $2b $14
	pop  de                                          ; $4268: $d1
	dec  d                                           ; $4269: $15
	ld   de, $1cf1                                   ; $426a: $11 $f1 $1c
	cp   $ff                                         ; $426d: $fe $ff
	ld   de, $6bff                                   ; $426f: $11 $ff $6b
	rst  $38                                         ; $4272: $ff
	rst  $38                                         ; $4273: $ff
	pop  af                                          ; $4274: $f1
	cpl                                              ; $4275: $2f

Jump_0e0_4276:
	rst  $38                                         ; $4276: $ff
	ldh  a, [c]                                      ; $4277: $f2
	inc  e                                           ; $4278: $1c

jr_0e0_4279:
	pop  af                                          ; $4279: $f1
	dec  de                                          ; $427a: $1b
	inc  hl                                          ; $427b: $23
	di                                               ; $427c: $f3
	ld   de, $112f                                   ; $427d: $11 $2f $11
	add  c                                           ; $4280: $81
	rra                                              ; $4281: $1f
	ld   sp, $811b                                   ; $4282: $31 $1b $81
	ld   l, d                                        ; $4285: $6a

Jump_0e0_4286:
	add  [hl]                                        ; $4286: $86
	rra                                              ; $4287: $1f
	pop  af                                          ; $4288: $f1
	ld   a, a                                        ; $4289: $7f
	adc  a                                           ; $428a: $8f
	rst  $38                                         ; $428b: $ff
	rst  $38                                         ; $428c: $ff
	rst  $38                                         ; $428d: $ff
	ld   l, a                                        ; $428e: $6f
	rst  $38                                         ; $428f: $ff
	call z, $fbe7                                    ; $4290: $cc $e7 $fb
	ld   a, [hl+]                                    ; $4293: $2a
	ld   c, e                                        ; $4294: $4b
	add  c                                           ; $4295: $81
	ld   de, $11ff                                   ; $4296: $11 $ff $11
	jr   jr_0e0_4279                                 ; $4299: $18 $de

	ld   de, $f11f                                   ; $429b: $11 $1f $f1
	ld   d, $9a                                      ; $429e: $16 $9a
	cp   $51                                         ; $42a0: $fe $51
	rst  $38                                         ; $42a2: $ff
	ld   de, $ffff                                   ; $42a3: $11 $ff $ff

Jump_0e0_42a6:
	add  hl, de                                      ; $42a6: $19
	rst  $38                                         ; $42a7: $ff
	add  l                                           ; $42a8: $85
	rst  $38                                         ; $42a9: $ff
	rst  $38                                         ; $42aa: $ff
	ld   de, $f95b                                   ; $42ab: $11 $5b $f9
	adc  l                                           ; $42ae: $8d
	ld   a, [hl+]                                    ; $42af: $2a
	ld   [$1a11], a                                  ; $42b0: $ea $11 $1a
	db   $f4                                         ; $42b3: $f4
	ld   de, $f91f                                   ; $42b4: $11 $1f $f9
	ld   de, $f11f                                   ; $42b7: $11 $1f $f1
	ld   de, $c5ff                                   ; $42ba: $11 $ff $c5
	ld   a, [$e31f]                                  ; $42bd: $fa $1f $e3
	rst  $28                                         ; $42c0: $ef
	rst  $38                                         ; $42c1: $ff
	and  l                                           ; $42c2: $a5
	rst  $38                                         ; $42c3: $ff
	db   $ed                                         ; $42c4: $ed
	dec  de                                          ; $42c5: $1b
	rst  $30                                         ; $42c6: $f7
	ld   a, h                                        ; $42c7: $7c
	sub  d                                           ; $42c8: $92
	adc  a                                           ; $42c9: $8f
	pop  af                                          ; $42ca: $f1
	rla                                              ; $42cb: $17
	inc  de                                          ; $42cc: $13
	ld   de, rAUD1LOW                                   ; $42cd: $11 $13 $ff
	ld   de, $61ff                                   ; $42d0: $11 $ff $61
	ld   de, $11ff                                   ; $42d3: $11 $ff $11
	rra                                              ; $42d6: $1f
	rst  $38                                         ; $42d7: $ff
	ld   b, c                                        ; $42d8: $41
	rra                                              ; $42d9: $1f
	rst  $38                                         ; $42da: $ff
	ld   de, $ffff                                   ; $42db: $11 $ff $ff
	inc  de                                          ; $42de: $13
	rst  $38                                         ; $42df: $ff
	ld   sp, hl                                      ; $42e0: $f9
	ld   l, [hl]                                     ; $42e1: $6e
	rst  $38                                         ; $42e2: $ff
	ld   de, $71ff                                   ; $42e3: $11 $ff $71
	ld   de, $519b                                   ; $42e6: $11 $9b $51
	inc  d                                           ; $42e9: $14
	ld   sp, $6511                                   ; $42ea: $31 $11 $65
	ld   de, $e11f                                   ; $42ed: $11 $1f $e1
	rla                                              ; $42f0: $17
	pop  af                                          ; $42f1: $f1
	ld   a, a                                        ; $42f2: $7f
	di                                               ; $42f3: $f3
	db   $dd                                         ; $42f4: $dd
	sbc  a                                           ; $42f5: $9f
	ld   e, c                                        ; $42f6: $59
	xor  a                                           ; $42f7: $af
	rst  $38                                         ; $42f8: $ff
	push hl                                          ; $42f9: $e5
	sbc  a                                           ; $42fa: $9f
	cp   $64                                         ; $42fb: $fe $64
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42fd: $cf
	add  h                                           ; $42fe: $84
	adc  b                                           ; $42ff: $88
	ld   a, e                                        ; $4300: $7b
	or   h                                           ; $4301: $b4
	ld   l, c                                        ; $4302: $69
	ld   de, $1132                                   ; $4303: $11 $32 $11
	ld   b, c                                        ; $4306: $41
	ld   [de], a                                     ; $4307: $12
	ld   sp, $196c                                   ; $4308: $31 $6c $19
	sub  l                                           ; $430b: $95
	inc  de                                          ; $430c: $13
	pop  af                                          ; $430d: $f1
	rra                                              ; $430e: $1f
	db   $fd                                         ; $430f: $fd
	rst  $38                                         ; $4310: $ff
	ld   de, $f1ef                                   ; $4311: $11 $ef $f1
	rst  JumpTable                                         ; $4314: $df
	rst  $38                                         ; $4315: $ff
	sbc  e                                           ; $4316: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4317: $cf
	ld   sp, hl                                      ; $4318: $f9
	cp   a                                           ; $4319: $bf
	ei                                               ; $431a: $fb
	add  c                                           ; $431b: $81
	ld   l, e                                        ; $431c: $6b
	sub  a                                           ; $431d: $97
	inc  de                                          ; $431e: $13
	ld   b, l                                        ; $431f: $45
	ld   d, e                                        ; $4320: $53
	ld   de, $3112                                   ; $4321: $11 $12 $31
	ld   de, $5128                                   ; $4324: $11 $28 $51
	daa                                              ; $4327: $27
	jp   c, Jump_0e0_5d31                            ; $4328: $da $31 $5d

	db   $fc                                         ; $432b: $fc
	ld   d, d                                        ; $432c: $52
	xor  a                                           ; $432d: $af
	call nz, $f969                                   ; $432e: $c4 $69 $f9
	sbc  d                                           ; $4331: $9a
	ld   a, e                                        ; $4332: $7b
	xor  h                                           ; $4333: $ac
	ld   h, e                                        ; $4334: $63
	ld   l, d                                        ; $4335: $6a
	sub  h                                           ; $4336: $94
	ld   [hl-], a                                    ; $4337: $32
	ld   h, l                                        ; $4338: $65
	ld   sp, $1111                                   ; $4339: $31 $11 $11
	ld   de, $a11b                                   ; $433c: $11 $1b $a1
	ld   l, a                                        ; $433f: $6f
	ld   hl, sp-$01                                  ; $4340: $f8 $ff
	rst  $28                                         ; $4342: $ef
	cp   $bb                                         ; $4343: $fe $bb
	xor  e                                           ; $4345: $ab
	and  a                                           ; $4346: $a7
	ld   l, b                                        ; $4347: $68
	ld   h, a                                        ; $4348: $67
	halt                                             ; $4349: $76
	adc  c                                           ; $434a: $89
	adc  b                                           ; $434b: $88
	cp   d                                           ; $434c: $ba
	xor  e                                           ; $434d: $ab
	set  1, l                                        ; $434e: $cb $cd
	db   $dd                                         ; $4350: $dd
	xor  $cc                                         ; $4351: $ee $cc
	call c, $bbcb                                    ; $4353: $dc $cb $bb
	cp   d                                           ; $4356: $ba
	sbc  c                                           ; $4357: $99
	xor  d                                           ; $4358: $aa
	sbc  c                                           ; $4359: $99
	xor  d                                           ; $435a: $aa
	sbc  c                                           ; $435b: $99
	sbc  c                                           ; $435c: $99
	sbc  c                                           ; $435d: $99
	adc  b                                           ; $435e: $88
	adc  c                                           ; $435f: $89
	adc  c                                           ; $4360: $89
	sub  a                                           ; $4361: $97
	adc  b                                           ; $4362: $88
	adc  b                                           ; $4363: $88
	adc  b                                           ; $4364: $88
	adc  c                                           ; $4365: $89
	sbc  c                                           ; $4366: $99
	sbc  c                                           ; $4367: $99
	sbc  d                                           ; $4368: $9a
	sbc  c                                           ; $4369: $99
	xor  d                                           ; $436a: $aa
	xor  d                                           ; $436b: $aa
	xor  d                                           ; $436c: $aa
	xor  c                                           ; $436d: $a9
	xor  c                                           ; $436e: $a9
	xor  d                                           ; $436f: $aa
	sbc  c                                           ; $4370: $99
	sbc  c                                           ; $4371: $99
	adc  b                                           ; $4372: $88
	adc  b                                           ; $4373: $88
	add  a                                           ; $4374: $87
	ld   [hl], a                                     ; $4375: $77
	ld   [hl], a                                     ; $4376: $77
	ld   [hl], a                                     ; $4377: $77
	ld   [hl], a                                     ; $4378: $77
	ld   [hl], a                                     ; $4379: $77
	ld   [hl], a                                     ; $437a: $77
	ld   [hl], a                                     ; $437b: $77
	ld   a, b                                        ; $437c: $78
	adc  b                                           ; $437d: $88
	adc  b                                           ; $437e: $88
	sbc  b                                           ; $437f: $98
	adc  c                                           ; $4380: $89
	sbc  b                                           ; $4381: $98
	sbc  b                                           ; $4382: $98
	adc  c                                           ; $4383: $89
	sbc  c                                           ; $4384: $99
	adc  b                                           ; $4385: $88

Jump_0e0_4386:
	adc  b                                           ; $4386: $88
	sbc  b                                           ; $4387: $98
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	adc  b                                           ; $438a: $88
	add  a                                           ; $438b: $87
	ld   [hl], a                                     ; $438c: $77
	add  a                                           ; $438d: $87
	ld   [hl], a                                     ; $438e: $77
	add  a                                           ; $438f: $87
	ld   a, b                                        ; $4390: $78
	ld   [hl], a                                     ; $4391: $77
	ld   [hl], a                                     ; $4392: $77
	ld   a, c                                        ; $4393: $79
	add  a                                           ; $4394: $87
	add  a                                           ; $4395: $87
	ld   a, c                                        ; $4396: $79
	adc  b                                           ; $4397: $88
	ld   a, b                                        ; $4398: $78
	adc  b                                           ; $4399: $88
	add  a                                           ; $439a: $87
	ld   [hl], a                                     ; $439b: $77
	adc  b                                           ; $439c: $88
	add  a                                           ; $439d: $87
	add  a                                           ; $439e: $87
	ld   a, b                                        ; $439f: $78
	ld   a, b                                        ; $43a0: $78
	add  a                                           ; $43a1: $87
	adc  b                                           ; $43a2: $88
	ld   a, b                                        ; $43a3: $78
	adc  b                                           ; $43a4: $88
	add  a                                           ; $43a5: $87
	adc  b                                           ; $43a6: $88
	adc  b                                           ; $43a7: $88
	adc  b                                           ; $43a8: $88
	adc  b                                           ; $43a9: $88
	add  a                                           ; $43aa: $87
	ld   a, b                                        ; $43ab: $78
	adc  b                                           ; $43ac: $88
	ld   [hl], a                                     ; $43ad: $77
	ld   [hl], a                                     ; $43ae: $77
	ld   [hl], a                                     ; $43af: $77
	ld   [hl], a                                     ; $43b0: $77
	ld   [hl], a                                     ; $43b1: $77
	ld   [hl], a                                     ; $43b2: $77
	ld   [hl], a                                     ; $43b3: $77
	ld   [hl], a                                     ; $43b4: $77
	ld   [hl], a                                     ; $43b5: $77
	ld   [hl], a                                     ; $43b6: $77
	ld   a, b                                        ; $43b7: $78
	ld   [hl], a                                     ; $43b8: $77
	ld   a, b                                        ; $43b9: $78
	adc  b                                           ; $43ba: $88
	adc  b                                           ; $43bb: $88
	adc  b                                           ; $43bc: $88
	sbc  b                                           ; $43bd: $98
	adc  b                                           ; $43be: $88
	adc  c                                           ; $43bf: $89
	adc  b                                           ; $43c0: $88
	adc  b                                           ; $43c1: $88
	sbc  b                                           ; $43c2: $98
	adc  b                                           ; $43c3: $88
	adc  b                                           ; $43c4: $88
	add  a                                           ; $43c5: $87
	ld   [hl], a                                     ; $43c6: $77
	ld   [hl], a                                     ; $43c7: $77
	ld   [hl], a                                     ; $43c8: $77
	ld   [hl], a                                     ; $43c9: $77
	ld   [hl], a                                     ; $43ca: $77
	ld   [hl], a                                     ; $43cb: $77
	ld   [hl], a                                     ; $43cc: $77
	ld   [hl], a                                     ; $43cd: $77
	ld   [hl], a                                     ; $43ce: $77
	ld   a, b                                        ; $43cf: $78
	add  a                                           ; $43d0: $87
	ld   a, b                                        ; $43d1: $78
	adc  b                                           ; $43d2: $88
	adc  b                                           ; $43d3: $88
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	ld   a, b                                        ; $43da: $78
	adc  b                                           ; $43db: $88
	add  a                                           ; $43dc: $87
	ld   [hl], a                                     ; $43dd: $77
	add  a                                           ; $43de: $87
	ld   [hl], a                                     ; $43df: $77
	ld   [hl], a                                     ; $43e0: $77
	ld   [hl], a                                     ; $43e1: $77
	ld   [hl], a                                     ; $43e2: $77
	ld   [hl], a                                     ; $43e3: $77
	ld   [hl], a                                     ; $43e4: $77
	ld   [hl], a                                     ; $43e5: $77
	ld   [hl], a                                     ; $43e6: $77
	ld   [hl], a                                     ; $43e7: $77
	ld   [hl], a                                     ; $43e8: $77
	ld   [hl], a                                     ; $43e9: $77
	adc  b                                           ; $43ea: $88
	ld   [hl], a                                     ; $43eb: $77
	ld   a, b                                        ; $43ec: $78
	ld   a, b                                        ; $43ed: $78
	add  a                                           ; $43ee: $87
	adc  b                                           ; $43ef: $88
	adc  b                                           ; $43f0: $88
	adc  b                                           ; $43f1: $88
	adc  b                                           ; $43f2: $88
	adc  b                                           ; $43f3: $88
	add  a                                           ; $43f4: $87
	adc  b                                           ; $43f5: $88
	adc  b                                           ; $43f6: $88
	adc  b                                           ; $43f7: $88
	adc  b                                           ; $43f8: $88
	ld   [hl], a                                     ; $43f9: $77
	ld   a, b                                        ; $43fa: $78
	add  a                                           ; $43fb: $87
	ld   a, b                                        ; $43fc: $78
	adc  b                                           ; $43fd: $88
	adc  b                                           ; $43fe: $88
	adc  b                                           ; $43ff: $88
	adc  b                                           ; $4400: $88
	add  a                                           ; $4401: $87
	adc  b                                           ; $4402: $88
	adc  b                                           ; $4403: $88
	adc  b                                           ; $4404: $88
	adc  b                                           ; $4405: $88
	adc  b                                           ; $4406: $88
	adc  b                                           ; $4407: $88
	adc  b                                           ; $4408: $88
	adc  b                                           ; $4409: $88
	adc  b                                           ; $440a: $88
	adc  b                                           ; $440b: $88
	adc  b                                           ; $440c: $88
	adc  b                                           ; $440d: $88
	adc  b                                           ; $440e: $88
	adc  b                                           ; $440f: $88
	adc  b                                           ; $4410: $88
	adc  b                                           ; $4411: $88
	adc  b                                           ; $4412: $88
	adc  b                                           ; $4413: $88
	adc  b                                           ; $4414: $88
	adc  b                                           ; $4415: $88
	adc  b                                           ; $4416: $88
	adc  b                                           ; $4417: $88
	adc  b                                           ; $4418: $88
	adc  b                                           ; $4419: $88
	adc  b                                           ; $441a: $88
	adc  b                                           ; $441b: $88
	adc  b                                           ; $441c: $88
	adc  b                                           ; $441d: $88
	adc  b                                           ; $441e: $88
	adc  b                                           ; $441f: $88
	adc  b                                           ; $4420: $88
	adc  b                                           ; $4421: $88
	adc  b                                           ; $4422: $88
	adc  b                                           ; $4423: $88
	adc  b                                           ; $4424: $88
	adc  b                                           ; $4425: $88
	adc  b                                           ; $4426: $88
	adc  b                                           ; $4427: $88
	adc  b                                           ; $4428: $88
	sbc  b                                           ; $4429: $98
	adc  b                                           ; $442a: $88
	adc  b                                           ; $442b: $88
	sbc  b                                           ; $442c: $98
	adc  b                                           ; $442d: $88
	adc  b                                           ; $442e: $88
	adc  b                                           ; $442f: $88
	adc  b                                           ; $4430: $88
	adc  b                                           ; $4431: $88
	adc  b                                           ; $4432: $88
	adc  b                                           ; $4433: $88
	adc  b                                           ; $4434: $88
	adc  b                                           ; $4435: $88
	adc  b                                           ; $4436: $88
	adc  b                                           ; $4437: $88
	adc  b                                           ; $4438: $88
	adc  b                                           ; $4439: $88
	adc  b                                           ; $443a: $88
	adc  b                                           ; $443b: $88
	adc  b                                           ; $443c: $88
	adc  b                                           ; $443d: $88
	adc  b                                           ; $443e: $88
	adc  b                                           ; $443f: $88
	adc  b                                           ; $4440: $88
	adc  b                                           ; $4441: $88
	adc  b                                           ; $4442: $88
	adc  b                                           ; $4443: $88
	adc  b                                           ; $4444: $88
	adc  b                                           ; $4445: $88
	adc  b                                           ; $4446: $88
	adc  b                                           ; $4447: $88
	adc  b                                           ; $4448: $88
	adc  b                                           ; $4449: $88
	adc  b                                           ; $444a: $88
	adc  b                                           ; $444b: $88
	adc  b                                           ; $444c: $88
	adc  b                                           ; $444d: $88
	adc  b                                           ; $444e: $88
	adc  b                                           ; $444f: $88
	adc  b                                           ; $4450: $88
	adc  b                                           ; $4451: $88
	adc  b                                           ; $4452: $88
	adc  b                                           ; $4453: $88
	adc  b                                           ; $4454: $88
	adc  b                                           ; $4455: $88
	adc  b                                           ; $4456: $88
	adc  b                                           ; $4457: $88
	adc  b                                           ; $4458: $88
	adc  b                                           ; $4459: $88
	adc  b                                           ; $445a: $88
	adc  b                                           ; $445b: $88
	adc  b                                           ; $445c: $88
	adc  b                                           ; $445d: $88
	adc  b                                           ; $445e: $88
	adc  b                                           ; $445f: $88
	adc  b                                           ; $4460: $88
	adc  b                                           ; $4461: $88
	adc  b                                           ; $4462: $88

Jump_0e0_4463:
	adc  b                                           ; $4463: $88
	adc  b                                           ; $4464: $88
	adc  b                                           ; $4465: $88
	adc  b                                           ; $4466: $88
	adc  b                                           ; $4467: $88
	adc  b                                           ; $4468: $88
	adc  b                                           ; $4469: $88
	adc  b                                           ; $446a: $88
	adc  b                                           ; $446b: $88
	adc  b                                           ; $446c: $88
	adc  b                                           ; $446d: $88
	adc  b                                           ; $446e: $88
	adc  b                                           ; $446f: $88
	adc  b                                           ; $4470: $88
	adc  b                                           ; $4471: $88
	adc  c                                           ; $4472: $89
	adc  d                                           ; $4473: $8a
	cp   c                                           ; $4474: $b9
	adc  h                                           ; $4475: $8c
	xor  b                                           ; $4476: $a8
	cp   e                                           ; $4477: $bb
	cp   a                                           ; $4478: $bf
	cp   c                                           ; $4479: $b9
	xor  h                                           ; $447a: $ac
	reti                                             ; $447b: $d9


	or   a                                           ; $447c: $b7
	ld   e, a                                        ; $447d: $5f
	or   l                                           ; $447e: $b5
	bit  7, h                                        ; $447f: $cb $7c
	call z, $afeb                                    ; $4481: $cc $eb $af
	cp   $96                                         ; $4484: $fe $96
	sbc  d                                           ; $4486: $9a
	and  a                                           ; $4487: $a7
	ld   hl, $6549                                   ; $4488: $21 $49 $65
	inc  [hl]                                        ; $448b: $34
	sbc  d                                           ; $448c: $9a
	add  h                                           ; $448d: $84
	ld   d, a                                        ; $448e: $57
	sub  a                                           ; $448f: $97
	dec  [hl]                                        ; $4490: $35
	ld   b, [hl]                                     ; $4491: $46
	ld   h, h                                        ; $4492: $64
	ld   h, [hl]                                     ; $4493: $66
	halt                                             ; $4494: $76
	ld   h, h                                        ; $4495: $64
	ld   c, b                                        ; $4496: $48
	ld   d, l                                        ; $4497: $55
	ld   h, h                                        ; $4498: $64
	ld   d, a                                        ; $4499: $57
	ld   d, c                                        ; $449a: $51
	dec  [hl]                                        ; $449b: $35
	ld   d, l                                        ; $449c: $55
	ld   c, b                                        ; $449d: $48
	ld   [hl], a                                     ; $449e: $77
	sub  a                                           ; $449f: $97
	xor  d                                           ; $44a0: $aa
	sbc  c                                           ; $44a1: $99
	halt                                             ; $44a2: $76
	ld   e, b                                        ; $44a3: $58
	and  l                                           ; $44a4: $a5
	ld   d, [hl]                                     ; $44a5: $56
	adc  b                                           ; $44a6: $88
	xor  b                                           ; $44a7: $a8
	inc  h                                           ; $44a8: $24
	ld   b, [hl]                                     ; $44a9: $46
	ld   h, e                                        ; $44aa: $63
	ld   b, d                                        ; $44ab: $42
	inc  sp                                          ; $44ac: $33
	ld   de, $1111                                   ; $44ad: $11 $11 $11
	ld   de, $1211                                   ; $44b0: $11 $11 $12
	ld   [hl-], a                                    ; $44b3: $32
	cp   [hl]                                        ; $44b4: $be
	db   $ec                                         ; $44b5: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44b6: $cf
	rst  $38                                         ; $44b7: $ff
	rst  $38                                         ; $44b8: $ff
	rst  JumpTable                                         ; $44b9: $df
	rst  $38                                         ; $44ba: $ff
	db   $ec                                         ; $44bb: $ec
	set  1, h                                        ; $44bc: $cb $cc
	xor  e                                           ; $44be: $ab
	db   $ec                                         ; $44bf: $ec
	ld   l, b                                        ; $44c0: $68
	or   a                                           ; $44c1: $b7
	ld   h, [hl]                                     ; $44c2: $66
	ld   de, $1121                                   ; $44c3: $11 $21 $11
	ld   de, $1111                                   ; $44c6: $11 $11 $11
	ld   de, $1762                                   ; $44c9: $11 $62 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44cc: $cf
	rst  $38                                         ; $44cd: $ff
	xor  a                                           ; $44ce: $af
	rst  $38                                         ; $44cf: $ff
	rst  $38                                         ; $44d0: $ff
	sbc  $ff                                         ; $44d1: $de $ff
	cp   $ff                                         ; $44d3: $fe $ff
	rst  $38                                         ; $44d5: $ff
	ld   a, [$ebaf]                                  ; $44d6: $fa $af $eb
	sbc  b                                           ; $44d9: $98
	ld   de, $1174                                   ; $44da: $11 $74 $11
	ld   hl, $1111                                   ; $44dd: $21 $11 $11
	ld   de, $2311                                   ; $44e0: $11 $11 $23
	daa                                              ; $44e3: $27
	ld   c, a                                        ; $44e4: $4f
	rst  $38                                         ; $44e5: $ff
	ld   hl, sp-$01                                  ; $44e6: $f8 $ff
	rst  $38                                         ; $44e8: $ff
	ld   [$ffff], a                                  ; $44e9: $ea $ff $ff
	rst  $38                                         ; $44ec: $ff
	rst  $38                                         ; $44ed: $ff
	rst  $38                                         ; $44ee: $ff
	rst  JumpTable                                         ; $44ef: $df
	cp   $63                                         ; $44f0: $fe $63
	ld   [hl], a                                     ; $44f2: $77
	ld   b, c                                        ; $44f3: $41
	ld   de, $1155                                   ; $44f4: $11 $55 $11
	ld   de, $1111                                   ; $44f7: $11 $11 $11
	ld   de, $667b                                   ; $44fa: $11 $7b $66
	ccf                                              ; $44fd: $3f
	rst  $38                                         ; $44fe: $ff
	rst  $28                                         ; $44ff: $ef
	rst  $38                                         ; $4500: $ff
	rst  $38                                         ; $4501: $ff
	sub  l                                           ; $4502: $95
	rst  $38                                         ; $4503: $ff
	rst  $38                                         ; $4504: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4505: $cf
	rst  $38                                         ; $4506: $ff
	db   $fd                                         ; $4507: $fd
	adc  d                                           ; $4508: $8a
	rst  $28                                         ; $4509: $ef
	push af                                          ; $450a: $f5
	inc  d                                           ; $450b: $14
	and  h                                           ; $450c: $a4
	ld   de, $1111                                   ; $450d: $11 $11 $11
	ld   de, $1111                                   ; $4510: $11 $11 $11
	ld   de, $916e                                   ; $4513: $11 $6e $91
	ld   c, a                                        ; $4516: $4f
	rst  $38                                         ; $4517: $ff
	db   $fc                                         ; $4518: $fc
	ld   a, a                                        ; $4519: $7f
	rst  $38                                         ; $451a: $ff
	xor  b                                           ; $451b: $a8
	adc  a                                           ; $451c: $8f
	rst  $38                                         ; $451d: $ff
	call z, $ffff                                    ; $451e: $cc $ff $ff
	call $c6df                                       ; $4521: $cd $df $c6
	adc  c                                           ; $4524: $89
	ld   d, a                                        ; $4525: $57
	ld   h, e                                        ; $4526: $63
	inc  d                                           ; $4527: $14
	ld   h, c                                        ; $4528: $61
	ld   de, $1111                                   ; $4529: $11 $11 $11
	ld   de, $9114                                   ; $452c: $11 $14 $91
	ld   e, d                                        ; $452f: $5a
	ld   d, h                                        ; $4530: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4531: $cf
	ei                                               ; $4532: $fb
	rst  JumpTable                                         ; $4533: $df
	rst  $38                                         ; $4534: $ff
	rst  $38                                         ; $4535: $ff
	ld   e, a                                        ; $4536: $5f
	rst  $38                                         ; $4537: $ff
	cp   $df                                         ; $4538: $fe $df
	rst  $38                                         ; $453a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $453b: $cf
	xor  d                                           ; $453c: $aa
	db   $fd                                         ; $453d: $fd
	add  [hl]                                        ; $453e: $86
	sub  a                                           ; $453f: $97
	add  a                                           ; $4540: $87
	ld   [hl+], a                                    ; $4541: $22
	dec  d                                           ; $4542: $15
	ld   b, c                                        ; $4543: $41
	ld   de, $1111                                   ; $4544: $11 $11 $11
	ld   de, $7139                                   ; $4547: $11 $39 $71
	dec  e                                           ; $454a: $1d
	rst  $38                                         ; $454b: $ff
	adc  c                                           ; $454c: $89
	ld   [$8bff], a                                  ; $454d: $ea $ff $8b
	cp   $ff                                         ; $4550: $fe $ff
	cp   c                                           ; $4552: $b9
	xor  [hl]                                        ; $4553: $ae
	rst  $38                                         ; $4554: $ff
	db   $dd                                         ; $4555: $dd
	call c, $cdfd                                    ; $4556: $dc $fd $cd
	ld   a, b                                        ; $4559: $78
	jp   z, $9642                                    ; $455a: $ca $42 $96

	ld   d, [hl]                                     ; $455d: $56
	ld   b, e                                        ; $455e: $43
	ld   de, $7116                                   ; $455f: $11 $16 $71
	ld   de, $9112                                   ; $4562: $11 $12 $91
	ld   de, $ff39                                   ; $4565: $11 $39 $ff
	ld   h, c                                        ; $4568: $61
	ld   a, a                                        ; $4569: $7f
	ld   hl, sp+$67                                  ; $456a: $f8 $67
	rst  $38                                         ; $456c: $ff
	reti                                             ; $456d: $d9


	ld   [hl], h                                     ; $456e: $74
	xor  a                                           ; $456f: $af
	ld   sp, hl                                      ; $4570: $f9
	res  7, a                                        ; $4571: $cb $bf
	cp   $94                                         ; $4573: $fe $94
	cp   a                                           ; $4575: $bf
	sub  $34                                         ; $4576: $d6 $34
	sbc  a                                           ; $4578: $9f
	jp   nc, $be11                                   ; $4579: $d2 $11 $be

	ld   d, c                                        ; $457c: $51
	ld   de, $415d                                   ; $457d: $11 $5d $41
	ld   de, $119c                                   ; $4580: $11 $9c $11
	ld   de, $a47f                                   ; $4583: $11 $7f $a4
	dec  hl                                          ; $4586: $2b

jr_0e0_4587:
	db   $fc                                         ; $4587: $fc
	sub  [hl]                                        ; $4588: $96
	sbc  $ca                                         ; $4589: $de $ca
	ld   e, l                                        ; $458b: $5d
	rst  $38                                         ; $458c: $ff
	push hl                                          ; $458d: $e5
	call z, $b8df                                    ; $458e: $cc $df $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4591: $cf
	db   $fd                                         ; $4592: $fd
	ret  z                                           ; $4593: $c8

	ld   [hl], a                                     ; $4594: $77
	call c, Call_0e0_7667                            ; $4595: $dc $67 $76
	ld   a, b                                        ; $4598: $78
	ld   sp, $1143                                   ; $4599: $31 $43 $11
	dec  [hl]                                        ; $459c: $35
	ld   d, c                                        ; $459d: $51
	ld   de, $4113                                   ; $459e: $11 $13 $41
	ld   de, $f85a                                   ; $45a1: $11 $5a $f8
	ld   [hl-], a                                    ; $45a4: $32
	ld   a, a                                        ; $45a5: $7f
	ret                                              ; $45a6: $c9


	cp   d                                           ; $45a7: $ba
	xor  l                                           ; $45a8: $ad
	res  7, e                                        ; $45a9: $cb $bb
	xor  $c9                                         ; $45ab: $ee $c9
	sbc  [hl]                                        ; $45ad: $9e
	db   $fd                                         ; $45ae: $fd
	ld   h, [hl]                                     ; $45af: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45b0: $cf
	cp   $21                                         ; $45b1: $fe $21
	adc  [hl]                                        ; $45b3: $8e
	ld   sp, hl                                      ; $45b4: $f9
	ld   [hl-], a                                    ; $45b5: $32
	ld   l, e                                        ; $45b6: $6b
	or   [hl]                                        ; $45b7: $b6
	ld   de, $a814                                   ; $45b8: $11 $14 $a8
	ld   hl, $7813                                   ; $45bb: $21 $13 $78
	ld   de, $a813                                   ; $45be: $11 $13 $a8
	add  d                                           ; $45c1: $82
	add  hl, de                                      ; $45c2: $19
	and  [hl]                                        ; $45c3: $a6
	adc  e                                           ; $45c4: $8b
	sbc  h                                           ; $45c5: $9c
	ei                                               ; $45c6: $fb
	sbc  c                                           ; $45c7: $99
	xor  $ba                                         ; $45c8: $ee $ba
	ld   e, l                                        ; $45ca: $5d
	db   $ec                                         ; $45cb: $ec
	and  [hl]                                        ; $45cc: $a6
	sbc  d                                           ; $45cd: $9a
	res  5, c                                        ; $45ce: $cb $a9
	adc  l                                           ; $45d0: $8d
	cp   e                                           ; $45d1: $bb
	add  a                                           ; $45d2: $87
	ld   [hl], a                                     ; $45d3: $77
	sub  [hl]                                        ; $45d4: $96
	add  a                                           ; $45d5: $87
	ld   h, l                                        ; $45d6: $65
	ld   h, $58                                      ; $45d7: $26 $58
	ld   [hl], h                                     ; $45d9: $74
	ld   b, c                                        ; $45da: $41
	ld   d, [hl]                                     ; $45db: $56
	add  a                                           ; $45dc: $87
	ld   [de], a                                     ; $45dd: $12
	jr   z, jr_0e0_4587                              ; $45de: $28 $a7

	ld   sp, $df37                                   ; $45e0: $31 $37 $df
	ld   b, c                                        ; $45e3: $41
	ld   e, b                                        ; $45e4: $58
	db   $db                                         ; $45e5: $db
	and  e                                           ; $45e6: $a3
	ld   e, d                                        ; $45e7: $5a
	sbc  $89                                         ; $45e8: $de $89
	adc  d                                           ; $45ea: $8a
	ret  z                                           ; $45eb: $c8

	ld   b, [hl]                                     ; $45ec: $46
	xor  $a6                                         ; $45ed: $ee $a6
	ld   h, a                                        ; $45ef: $67
	xor  l                                           ; $45f0: $ad
	sub  l                                           ; $45f1: $95
	scf                                              ; $45f2: $37
	call c, Call_0e0_6983                            ; $45f3: $dc $83 $69
	cp   d                                           ; $45f6: $ba
	sub  [hl]                                        ; $45f7: $96
	jr   c, jr_0e0_4674                              ; $45f8: $38 $7a

	halt                                             ; $45fa: $76
	ld   [hl], e                                     ; $45fb: $73
	sub  a                                           ; $45fc: $97
	and  l                                           ; $45fd: $a5
	add  hl, sp                                      ; $45fe: $39
	ld   e, e                                        ; $45ff: $5b
	ld   l, b                                        ; $4600: $68
	ld   [hl], l                                     ; $4601: $75
	sub  l                                           ; $4602: $95
	sub  a                                           ; $4603: $97
	halt                                             ; $4604: $76
	ld   l, e                                        ; $4605: $6b
	halt                                             ; $4606: $76
	ld   b, [hl]                                     ; $4607: $46
	add  a                                           ; $4608: $87
	xor  d                                           ; $4609: $aa
	or   [hl]                                        ; $460a: $b6
	ld   a, c                                        ; $460b: $79
	ld   a, e                                        ; $460c: $7b
	adc  c                                           ; $460d: $89
	adc  d                                           ; $460e: $8a
	sbc  b                                           ; $460f: $98
	reti                                             ; $4610: $d9


	ld   [hl], h                                     ; $4611: $74
	cp   e                                           ; $4612: $bb
	add  a                                           ; $4613: $87
	ld   l, d                                        ; $4614: $6a
	jp   z, $8999                                    ; $4615: $ca $99 $89

	jp   z, $9c77                                    ; $4618: $ca $77 $9c

	xor  c                                           ; $461b: $a9
	ld   [hl], a                                     ; $461c: $77
	sbc  d                                           ; $461d: $9a
	and  a                                           ; $461e: $a7
	ld   [hl], a                                     ; $461f: $77
	adc  c                                           ; $4620: $89
	ld   [hl], a                                     ; $4621: $77
	ld   a, b                                        ; $4622: $78
	and  a                                           ; $4623: $a7
	ld   a, b                                        ; $4624: $78
	sbc  c                                           ; $4625: $99
	sbc  c                                           ; $4626: $99
	ld   h, a                                        ; $4627: $67
	adc  b                                           ; $4628: $88
	sub  a                                           ; $4629: $97
	adc  b                                           ; $462a: $88
	ld   a, b                                        ; $462b: $78
	xor  c                                           ; $462c: $a9
	ld   [hl], a                                     ; $462d: $77
	adc  b                                           ; $462e: $88
	add  a                                           ; $462f: $87
	ld   [hl], a                                     ; $4630: $77
	sbc  c                                           ; $4631: $99
	xor  c                                           ; $4632: $a9
	ld   a, b                                        ; $4633: $78
	cp   c                                           ; $4634: $b9
	xor  c                                           ; $4635: $a9
	adc  c                                           ; $4636: $89
	adc  b                                           ; $4637: $88
	sub  a                                           ; $4638: $97
	sbc  d                                           ; $4639: $9a
	sbc  b                                           ; $463a: $98
	add  [hl]                                        ; $463b: $86
	sbc  e                                           ; $463c: $9b
	sbc  d                                           ; $463d: $9a
	adc  b                                           ; $463e: $88
	sbc  d                                           ; $463f: $9a
	sub  [hl]                                        ; $4640: $96
	adc  b                                           ; $4641: $88
	sbc  d                                           ; $4642: $9a
	sbc  c                                           ; $4643: $99
	add  a                                           ; $4644: $87
	adc  c                                           ; $4645: $89
	xor  c                                           ; $4646: $a9
	adc  b                                           ; $4647: $88
	sub  a                                           ; $4648: $97
	adc  d                                           ; $4649: $8a
	adc  c                                           ; $464a: $89
	ld   a, b                                        ; $464b: $78
	sbc  c                                           ; $464c: $99
	xor  b                                           ; $464d: $a8
	adc  b                                           ; $464e: $88
	sbc  c                                           ; $464f: $99
	sbc  c                                           ; $4650: $99
	adc  c                                           ; $4651: $89
	sbc  c                                           ; $4652: $99
	adc  b                                           ; $4653: $88
	sbc  b                                           ; $4654: $98
	adc  c                                           ; $4655: $89
	adc  c                                           ; $4656: $89
	adc  c                                           ; $4657: $89
	add  a                                           ; $4658: $87
	ld   a, b                                        ; $4659: $78
	and  a                                           ; $465a: $a7
	sbc  c                                           ; $465b: $99
	adc  d                                           ; $465c: $8a
	adc  b                                           ; $465d: $88
	sbc  c                                           ; $465e: $99
	xor  c                                           ; $465f: $a9
	sbc  c                                           ; $4660: $99
	ld   a, c                                        ; $4661: $79
	adc  b                                           ; $4662: $88
	sub  a                                           ; $4663: $97
	adc  d                                           ; $4664: $8a
	xor  b                                           ; $4665: $a8
	adc  b                                           ; $4666: $88
	xor  c                                           ; $4667: $a9
	adc  b                                           ; $4668: $88
	adc  b                                           ; $4669: $88
	sbc  d                                           ; $466a: $9a
	sbc  c                                           ; $466b: $99
	adc  b                                           ; $466c: $88
	sbc  c                                           ; $466d: $99
	sub  a                                           ; $466e: $97
	ld   a, c                                        ; $466f: $79
	adc  d                                           ; $4670: $8a
	adc  b                                           ; $4671: $88
	ld   a, d                                        ; $4672: $7a
	sbc  b                                           ; $4673: $98

jr_0e0_4674:
	add  [hl]                                        ; $4674: $86
	sbc  c                                           ; $4675: $99
	sbc  c                                           ; $4676: $99
	adc  b                                           ; $4677: $88
	ld   a, b                                        ; $4678: $78
	sbc  b                                           ; $4679: $98
	add  a                                           ; $467a: $87
	sbc  c                                           ; $467b: $99
	add  a                                           ; $467c: $87
	adc  c                                           ; $467d: $89
	add  a                                           ; $467e: $87
	ld   h, a                                        ; $467f: $67
	sbc  c                                           ; $4680: $99
	add  a                                           ; $4681: $87
	ld   a, b                                        ; $4682: $78
	sbc  d                                           ; $4683: $9a
	add  a                                           ; $4684: $87
	sbc  b                                           ; $4685: $98
	adc  c                                           ; $4686: $89
	add  a                                           ; $4687: $87
	ld   a, c                                        ; $4688: $79
	adc  b                                           ; $4689: $88
	ld   [hl], a                                     ; $468a: $77
	adc  b                                           ; $468b: $88
	sub  a                                           ; $468c: $97
	adc  b                                           ; $468d: $88
	adc  b                                           ; $468e: $88
	add  a                                           ; $468f: $87
	sbc  b                                           ; $4690: $98
	adc  c                                           ; $4691: $89
	ld   [hl], a                                     ; $4692: $77
	ld   a, c                                        ; $4693: $79
	adc  b                                           ; $4694: $88
	add  a                                           ; $4695: $87
	adc  b                                           ; $4696: $88
	adc  b                                           ; $4697: $88
	ld   l, b                                        ; $4698: $68
	ld   a, b                                        ; $4699: $78
	add  a                                           ; $469a: $87
	add  a                                           ; $469b: $87
	sbc  b                                           ; $469c: $98
	add  a                                           ; $469d: $87
	sbc  c                                           ; $469e: $99
	ld   [hl], a                                     ; $469f: $77
	ld   a, b                                        ; $46a0: $78
	sbc  c                                           ; $46a1: $99
	ld   [hl], a                                     ; $46a2: $77
	ld   a, b                                        ; $46a3: $78
	adc  b                                           ; $46a4: $88
	ld   [hl], a                                     ; $46a5: $77
	sbc  b                                           ; $46a6: $98
	sbc  c                                           ; $46a7: $99
	ld   a, b                                        ; $46a8: $78
	adc  b                                           ; $46a9: $88
	adc  b                                           ; $46aa: $88
	adc  b                                           ; $46ab: $88
	ld   a, b                                        ; $46ac: $78
	sub  a                                           ; $46ad: $97
	ld   a, b                                        ; $46ae: $78
	ld   a, c                                        ; $46af: $79
	add  a                                           ; $46b0: $87
	adc  b                                           ; $46b1: $88
	ld   a, b                                        ; $46b2: $78
	sub  a                                           ; $46b3: $97
	sbc  b                                           ; $46b4: $98
	ld   [hl], a                                     ; $46b5: $77
	ld   a, c                                        ; $46b6: $79
	ld   [hl], a                                     ; $46b7: $77
	sub  a                                           ; $46b8: $97
	add  a                                           ; $46b9: $87
	ld   [hl], a                                     ; $46ba: $77
	ld   a, b                                        ; $46bb: $78
	ld   a, b                                        ; $46bc: $78
	ld   [hl], a                                     ; $46bd: $77
	sbc  b                                           ; $46be: $98
	ld   a, c                                        ; $46bf: $79
	ld   [hl], a                                     ; $46c0: $77
	sub  a                                           ; $46c1: $97
	ld   a, c                                        ; $46c2: $79
	sub  a                                           ; $46c3: $97
	add  a                                           ; $46c4: $87
	sub  a                                           ; $46c5: $97
	adc  b                                           ; $46c6: $88
	ld   [hl], a                                     ; $46c7: $77
	ld   a, c                                        ; $46c8: $79
	ld   a, b                                        ; $46c9: $78
	ld   a, b                                        ; $46ca: $78
	sbc  b                                           ; $46cb: $98
	adc  b                                           ; $46cc: $88
	add  a                                           ; $46cd: $87
	sbc  b                                           ; $46ce: $98
	ld   a, b                                        ; $46cf: $78
	ld   [hl], a                                     ; $46d0: $77
	ld   a, b                                        ; $46d1: $78
	ld   a, b                                        ; $46d2: $78
	ld   a, b                                        ; $46d3: $78
	ld   [hl], a                                     ; $46d4: $77
	add  a                                           ; $46d5: $87
	adc  b                                           ; $46d6: $88
	adc  b                                           ; $46d7: $88
	ld   a, c                                        ; $46d8: $79
	ld   a, b                                        ; $46d9: $78
	ld   [hl], a                                     ; $46da: $77
	add  a                                           ; $46db: $87
	ld   [hl], a                                     ; $46dc: $77
	add  a                                           ; $46dd: $87
	ld   a, b                                        ; $46de: $78
	ld   a, b                                        ; $46df: $78
	add  a                                           ; $46e0: $87
	adc  c                                           ; $46e1: $89
	ld   a, b                                        ; $46e2: $78
	sbc  b                                           ; $46e3: $98
	ld   a, b                                        ; $46e4: $78
	add  a                                           ; $46e5: $87
	ld   [hl], a                                     ; $46e6: $77
	ld   a, b                                        ; $46e7: $78
	ld   [hl], a                                     ; $46e8: $77
	adc  b                                           ; $46e9: $88
	adc  b                                           ; $46ea: $88
	ld   [hl], a                                     ; $46eb: $77
	ld   a, c                                        ; $46ec: $79
	add  [hl]                                        ; $46ed: $86
	adc  b                                           ; $46ee: $88
	adc  b                                           ; $46ef: $88
	ld   [hl], a                                     ; $46f0: $77
	adc  b                                           ; $46f1: $88
	ld   a, b                                        ; $46f2: $78
	ld   [hl], a                                     ; $46f3: $77
	adc  b                                           ; $46f4: $88
	add  a                                           ; $46f5: $87
	add  a                                           ; $46f6: $87
	ld   a, b                                        ; $46f7: $78
	ld   a, b                                        ; $46f8: $78
	ld   a, b                                        ; $46f9: $78
	ld   [hl], a                                     ; $46fa: $77
	ld   [hl], a                                     ; $46fb: $77
	adc  b                                           ; $46fc: $88
	ld   l, b                                        ; $46fd: $68
	sbc  b                                           ; $46fe: $98
	ld   [hl], a                                     ; $46ff: $77
	add  a                                           ; $4700: $87
	ld   a, b                                        ; $4701: $78
	add  a                                           ; $4702: $87
	add  a                                           ; $4703: $87
	ld   a, b                                        ; $4704: $78
	ld   [hl], a                                     ; $4705: $77
	adc  b                                           ; $4706: $88
	ld   [hl], a                                     ; $4707: $77
	ld   a, b                                        ; $4708: $78
	ld   a, b                                        ; $4709: $78
	add  a                                           ; $470a: $87
	add  a                                           ; $470b: $87
	adc  b                                           ; $470c: $88
	add  a                                           ; $470d: $87
	ld   a, b                                        ; $470e: $78
	add  a                                           ; $470f: $87
	adc  b                                           ; $4710: $88

Jump_0e0_4711:
	adc  b                                           ; $4711: $88
	ld   [hl], a                                     ; $4712: $77
	sub  a                                           ; $4713: $97
	ld   [hl], a                                     ; $4714: $77
	adc  c                                           ; $4715: $89
	ld   [hl], a                                     ; $4716: $77
	sub  a                                           ; $4717: $97
	adc  b                                           ; $4718: $88
	ld   [hl], a                                     ; $4719: $77
	adc  b                                           ; $471a: $88
	ld   [hl], a                                     ; $471b: $77
	add  a                                           ; $471c: $87
	adc  b                                           ; $471d: $88
	ld   a, b                                        ; $471e: $78
	add  a                                           ; $471f: $87
	adc  b                                           ; $4720: $88
	ld   [hl], a                                     ; $4721: $77
	sbc  c                                           ; $4722: $99
	ld   a, c                                        ; $4723: $79
	ld   [hl], a                                     ; $4724: $77
	sub  a                                           ; $4725: $97
	ld   [hl], a                                     ; $4726: $77
	sub  a                                           ; $4727: $97
	ld   a, b                                        ; $4728: $78
	adc  b                                           ; $4729: $88
	adc  b                                           ; $472a: $88
	ld   a, b                                        ; $472b: $78
	ld   a, b                                        ; $472c: $78
	ld   a, c                                        ; $472d: $79
	add  a                                           ; $472e: $87
	sbc  b                                           ; $472f: $98
	add  a                                           ; $4730: $87
	ld   a, b                                        ; $4731: $78
	ld   [hl], a                                     ; $4732: $77
	add  a                                           ; $4733: $87
	sbc  b                                           ; $4734: $98
	adc  b                                           ; $4735: $88
	adc  b                                           ; $4736: $88
	adc  b                                           ; $4737: $88
	adc  b                                           ; $4738: $88
	add  a                                           ; $4739: $87
	sbc  c                                           ; $473a: $99
	ld   a, b                                        ; $473b: $78
	ld   a, c                                        ; $473c: $79
	adc  b                                           ; $473d: $88
	add  a                                           ; $473e: $87
	add  a                                           ; $473f: $87
	sbc  b                                           ; $4740: $98
	adc  c                                           ; $4741: $89
	ld   a, b                                        ; $4742: $78
	sub  a                                           ; $4743: $97
	adc  c                                           ; $4744: $89
	ld   a, c                                        ; $4745: $79
	sbc  b                                           ; $4746: $98
	ld   [hl], a                                     ; $4747: $77
	adc  b                                           ; $4748: $88
	ld   a, b                                        ; $4749: $78
	ld   a, c                                        ; $474a: $79
	sub  a                                           ; $474b: $97
	sub  a                                           ; $474c: $97
	sub  a                                           ; $474d: $97
	adc  b                                           ; $474e: $88
	ld   a, c                                        ; $474f: $79
	ld   a, b                                        ; $4750: $78
	sub  a                                           ; $4751: $97
	add  a                                           ; $4752: $87
	ld   [hl], a                                     ; $4753: $77
	adc  b                                           ; $4754: $88
	ld   a, b                                        ; $4755: $78
	ld   a, b                                        ; $4756: $78
	sbc  b                                           ; $4757: $98
	ld   a, b                                        ; $4758: $78
	sbc  b                                           ; $4759: $98
	ld   [hl], a                                     ; $475a: $77
	sub  a                                           ; $475b: $97
	adc  b                                           ; $475c: $88
	adc  c                                           ; $475d: $89
	adc  b                                           ; $475e: $88
	ld   a, b                                        ; $475f: $78
	ld   a, c                                        ; $4760: $79
	add  a                                           ; $4761: $87
	ld   a, b                                        ; $4762: $78
	sbc  b                                           ; $4763: $98
	sub  a                                           ; $4764: $97
	adc  c                                           ; $4765: $89
	adc  b                                           ; $4766: $88
	sbc  b                                           ; $4767: $98
	sub  [hl]                                        ; $4768: $96
	sub  a                                           ; $4769: $97
	ld   a, d                                        ; $476a: $7a
	ld   a, b                                        ; $476b: $78
	ld   a, c                                        ; $476c: $79
	sbc  b                                           ; $476d: $98
	adc  b                                           ; $476e: $88
	ld   [hl], a                                     ; $476f: $77
	sbc  b                                           ; $4770: $98
	adc  b                                           ; $4771: $88
	adc  c                                           ; $4772: $89
	add  a                                           ; $4773: $87
	adc  b                                           ; $4774: $88
	ld   a, b                                        ; $4775: $78
	adc  c                                           ; $4776: $89
	adc  c                                           ; $4777: $89
	adc  b                                           ; $4778: $88
	sub  a                                           ; $4779: $97
	sbc  b                                           ; $477a: $98
	ld   [hl], a                                     ; $477b: $77
	sub  a                                           ; $477c: $97
	adc  b                                           ; $477d: $88
	ld   a, c                                        ; $477e: $79
	sbc  c                                           ; $477f: $99
	ld   a, c                                        ; $4780: $79
	ld   a, b                                        ; $4781: $78
	sbc  b                                           ; $4782: $98
	ld   [hl], a                                     ; $4783: $77
	sbc  c                                           ; $4784: $99
	adc  b                                           ; $4785: $88
	adc  c                                           ; $4786: $89
	ld   a, c                                        ; $4787: $79
	add  a                                           ; $4788: $87
	sbc  b                                           ; $4789: $98
	sbc  c                                           ; $478a: $99
	adc  b                                           ; $478b: $88
	ld   a, b                                        ; $478c: $78
	sbc  c                                           ; $478d: $99
	add  a                                           ; $478e: $87
	adc  b                                           ; $478f: $88
	sbc  b                                           ; $4790: $98
	ld   a, c                                        ; $4791: $79
	adc  b                                           ; $4792: $88
	adc  b                                           ; $4793: $88
	ld   [hl], a                                     ; $4794: $77
	sbc  c                                           ; $4795: $99
	ld   a, c                                        ; $4796: $79
	add  [hl]                                        ; $4797: $86
	sbc  d                                           ; $4798: $9a
	adc  b                                           ; $4799: $88
	ld   a, b                                        ; $479a: $78
	adc  b                                           ; $479b: $88
	adc  b                                           ; $479c: $88
	ld   a, c                                        ; $479d: $79
	and  a                                           ; $479e: $a7
	adc  b                                           ; $479f: $88
	sbc  b                                           ; $47a0: $98
	add  a                                           ; $47a1: $87
	ld   a, c                                        ; $47a2: $79
	adc  c                                           ; $47a3: $89
	ld   a, b                                        ; $47a4: $78
	adc  b                                           ; $47a5: $88
	sbc  b                                           ; $47a6: $98
	sub  a                                           ; $47a7: $97
	ld   a, b                                        ; $47a8: $78
	ld   a, c                                        ; $47a9: $79
	adc  b                                           ; $47aa: $88
	ld   a, b                                        ; $47ab: $78
	sbc  b                                           ; $47ac: $98
	ld   l, c                                        ; $47ad: $69
	sbc  b                                           ; $47ae: $98
	ld   a, b                                        ; $47af: $78
	ld   a, c                                        ; $47b0: $79
	sbc  b                                           ; $47b1: $98
	sub  a                                           ; $47b2: $97
	adc  b                                           ; $47b3: $88
	sbc  b                                           ; $47b4: $98
	ld   [hl], a                                     ; $47b5: $77
	sbc  c                                           ; $47b6: $99
	ld   a, c                                        ; $47b7: $79
	sub  a                                           ; $47b8: $97
	ld   [hl], a                                     ; $47b9: $77
	sbc  c                                           ; $47ba: $99
	ld   [hl], a                                     ; $47bb: $77
	adc  b                                           ; $47bc: $88
	sbc  c                                           ; $47bd: $99
	ld   a, b                                        ; $47be: $78
	adc  b                                           ; $47bf: $88
	sbc  b                                           ; $47c0: $98
	sub  a                                           ; $47c1: $97
	ld   a, c                                        ; $47c2: $79
	ld   a, c                                        ; $47c3: $79
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88
	sbc  b                                           ; $47c7: $98
	ld   a, c                                        ; $47c8: $79
	adc  c                                           ; $47c9: $89
	sub  a                                           ; $47ca: $97
	ld   a, b                                        ; $47cb: $78
	adc  c                                           ; $47cc: $89
	add  a                                           ; $47cd: $87
	adc  b                                           ; $47ce: $88
	sub  a                                           ; $47cf: $97
	ld   a, c                                        ; $47d0: $79
	adc  b                                           ; $47d1: $88
	adc  b                                           ; $47d2: $88
	adc  b                                           ; $47d3: $88
	sub  a                                           ; $47d4: $97
	ld   a, c                                        ; $47d5: $79
	adc  d                                           ; $47d6: $8a
	ld   a, b                                        ; $47d7: $78
	add  a                                           ; $47d8: $87
	sbc  c                                           ; $47d9: $99
	ld   a, c                                        ; $47da: $79
	add  [hl]                                        ; $47db: $86
	sbc  c                                           ; $47dc: $99
	ld   a, b                                        ; $47dd: $78
	adc  d                                           ; $47de: $8a
	or   a                                           ; $47df: $b7
	add  a                                           ; $47e0: $87
	ld   a, c                                        ; $47e1: $79
	adc  b                                           ; $47e2: $88
	add  a                                           ; $47e3: $87
	ld   a, b                                        ; $47e4: $78
	adc  d                                           ; $47e5: $8a
	add  a                                           ; $47e6: $87
	adc  b                                           ; $47e7: $88
	adc  c                                           ; $47e8: $89
	and  a                                           ; $47e9: $a7
	adc  b                                           ; $47ea: $88
	adc  d                                           ; $47eb: $8a
	add  [hl]                                        ; $47ec: $86
	sbc  b                                           ; $47ed: $98
	xor  c                                           ; $47ee: $a9
	ld   h, a                                        ; $47ef: $67
	ld   a, c                                        ; $47f0: $79
	sbc  d                                           ; $47f1: $9a
	sub  a                                           ; $47f2: $97
	ld   [hl], a                                     ; $47f3: $77
	sbc  d                                           ; $47f4: $9a
	add  a                                           ; $47f5: $87
	ld   [hl], a                                     ; $47f6: $77
	adc  b                                           ; $47f7: $88
	add  a                                           ; $47f8: $87
	sbc  d                                           ; $47f9: $9a
	adc  c                                           ; $47fa: $89
	sub  a                                           ; $47fb: $97
	adc  b                                           ; $47fc: $88
	ld   a, b                                        ; $47fd: $78
	sbc  c                                           ; $47fe: $99
	adc  c                                           ; $47ff: $89
	ld   h, a                                        ; $4800: $67
	xor  d                                           ; $4801: $aa
	sub  a                                           ; $4802: $97
	ld   [hl], a                                     ; $4803: $77
	adc  c                                           ; $4804: $89
	xor  b                                           ; $4805: $a8
	ld   l, b                                        ; $4806: $68
	ld   [hl], a                                     ; $4807: $77
	xor  b                                           ; $4808: $a8
	ld   l, b                                        ; $4809: $68
	adc  d                                           ; $480a: $8a
	cp   e                                           ; $480b: $bb
	sub  a                                           ; $480c: $97
	adc  c                                           ; $480d: $89
	xor  d                                           ; $480e: $aa
	sbc  b                                           ; $480f: $98
	halt                                             ; $4810: $76
	ld   l, b                                        ; $4811: $68
	adc  b                                           ; $4812: $88
	xor  b                                           ; $4813: $a8
	ld   d, a                                        ; $4814: $57
	sbc  d                                           ; $4815: $9a
	sbc  b                                           ; $4816: $98
	add  a                                           ; $4817: $87
	adc  b                                           ; $4818: $88
	sbc  d                                           ; $4819: $9a
	add  a                                           ; $481a: $87
	adc  b                                           ; $481b: $88
	sbc  b                                           ; $481c: $98
	ld   [hl], a                                     ; $481d: $77
	add  a                                           ; $481e: $87
	halt                                             ; $481f: $76
	ld   a, b                                        ; $4820: $78
	ld   h, a                                        ; $4821: $67
	sbc  b                                           ; $4822: $98
	ld   l, c                                        ; $4823: $69
	add  a                                           ; $4824: $87
	sbc  e                                           ; $4825: $9b
	sub  [hl]                                        ; $4826: $96
	ld   [hl], a                                     ; $4827: $77
	adc  b                                           ; $4828: $88
	add  [hl]                                        ; $4829: $86
	ld   a, b                                        ; $482a: $78
	ld   d, [hl]                                     ; $482b: $56
	ld   l, b                                        ; $482c: $68
	sub  a                                           ; $482d: $97
	add  l                                           ; $482e: $85
	ld   d, [hl]                                     ; $482f: $56
	xor  c                                           ; $4830: $a9
	ld   [hl], l                                     ; $4831: $75
	ld   d, a                                        ; $4832: $57
	ld   h, [hl]                                     ; $4833: $66
	ld   h, [hl]                                     ; $4834: $66
	ld   a, b                                        ; $4835: $78
	ld   h, a                                        ; $4836: $67
	ld   [hl], a                                     ; $4837: $77
	adc  b                                           ; $4838: $88
	adc  e                                           ; $4839: $8b
	cp   l                                           ; $483a: $bd
	cp   c                                           ; $483b: $b9
	add  a                                           ; $483c: $87
	sbc  c                                           ; $483d: $99
	sbc  b                                           ; $483e: $98
	adc  c                                           ; $483f: $89
	sub  a                                           ; $4840: $97
	ld   [hl], a                                     ; $4841: $77
	ld   a, b                                        ; $4842: $78
	sbc  c                                           ; $4843: $99
	sbc  c                                           ; $4844: $99
	sbc  b                                           ; $4845: $98
	ld   a, c                                        ; $4846: $79
	xor  d                                           ; $4847: $aa
	xor  b                                           ; $4848: $a8
	adc  b                                           ; $4849: $88
	sbc  d                                           ; $484a: $9a
	xor  c                                           ; $484b: $a9
	sbc  b                                           ; $484c: $98
	adc  c                                           ; $484d: $89
	adc  c                                           ; $484e: $89
	sbc  c                                           ; $484f: $99
	adc  b                                           ; $4850: $88
	adc  c                                           ; $4851: $89
	sbc  c                                           ; $4852: $99
	adc  c                                           ; $4853: $89
	adc  b                                           ; $4854: $88
	adc  b                                           ; $4855: $88
	sbc  b                                           ; $4856: $98
	adc  b                                           ; $4857: $88
	sbc  b                                           ; $4858: $98
	adc  b                                           ; $4859: $88
	adc  b                                           ; $485a: $88
	sbc  b                                           ; $485b: $98
	adc  b                                           ; $485c: $88
	adc  b                                           ; $485d: $88
	adc  c                                           ; $485e: $89
	sbc  c                                           ; $485f: $99
	adc  b                                           ; $4860: $88
	adc  b                                           ; $4861: $88
	adc  c                                           ; $4862: $89
	sbc  b                                           ; $4863: $98
	adc  b                                           ; $4864: $88
	adc  b                                           ; $4865: $88
	adc  b                                           ; $4866: $88
	adc  b                                           ; $4867: $88
	adc  b                                           ; $4868: $88
	adc  b                                           ; $4869: $88
	adc  b                                           ; $486a: $88
	adc  b                                           ; $486b: $88
	adc  b                                           ; $486c: $88
	adc  b                                           ; $486d: $88
	adc  b                                           ; $486e: $88
	adc  b                                           ; $486f: $88
	adc  b                                           ; $4870: $88
	adc  b                                           ; $4871: $88
	adc  b                                           ; $4872: $88
	adc  b                                           ; $4873: $88
	adc  b                                           ; $4874: $88
	adc  b                                           ; $4875: $88
	adc  b                                           ; $4876: $88
	adc  b                                           ; $4877: $88
	adc  b                                           ; $4878: $88
	adc  b                                           ; $4879: $88
	adc  b                                           ; $487a: $88
	adc  b                                           ; $487b: $88
	adc  b                                           ; $487c: $88
	adc  b                                           ; $487d: $88
	adc  b                                           ; $487e: $88
	adc  b                                           ; $487f: $88
	adc  b                                           ; $4880: $88
	adc  b                                           ; $4881: $88
	adc  b                                           ; $4882: $88
	adc  b                                           ; $4883: $88
	adc  b                                           ; $4884: $88
	adc  b                                           ; $4885: $88
	adc  b                                           ; $4886: $88
	adc  b                                           ; $4887: $88
	adc  b                                           ; $4888: $88
	adc  b                                           ; $4889: $88
	adc  b                                           ; $488a: $88
	adc  b                                           ; $488b: $88
	adc  b                                           ; $488c: $88
	adc  b                                           ; $488d: $88
	adc  b                                           ; $488e: $88
	adc  b                                           ; $488f: $88
	adc  b                                           ; $4890: $88
	adc  b                                           ; $4891: $88
	adc  b                                           ; $4892: $88
	adc  b                                           ; $4893: $88
	adc  b                                           ; $4894: $88
	adc  b                                           ; $4895: $88
	adc  b                                           ; $4896: $88
	adc  b                                           ; $4897: $88
	adc  b                                           ; $4898: $88
	adc  b                                           ; $4899: $88
	adc  b                                           ; $489a: $88
	adc  b                                           ; $489b: $88
	adc  b                                           ; $489c: $88
	adc  b                                           ; $489d: $88
	adc  b                                           ; $489e: $88
	adc  b                                           ; $489f: $88
	adc  b                                           ; $48a0: $88
	adc  b                                           ; $48a1: $88
	adc  b                                           ; $48a2: $88
	adc  b                                           ; $48a3: $88
	adc  b                                           ; $48a4: $88
	adc  b                                           ; $48a5: $88
	adc  b                                           ; $48a6: $88
	adc  b                                           ; $48a7: $88
	adc  b                                           ; $48a8: $88
	adc  b                                           ; $48a9: $88
	adc  b                                           ; $48aa: $88
	adc  b                                           ; $48ab: $88
	adc  b                                           ; $48ac: $88
	adc  b                                           ; $48ad: $88
	adc  b                                           ; $48ae: $88
	adc  b                                           ; $48af: $88
	adc  b                                           ; $48b0: $88
	adc  b                                           ; $48b1: $88
	adc  b                                           ; $48b2: $88
	adc  b                                           ; $48b3: $88
	adc  b                                           ; $48b4: $88
	adc  b                                           ; $48b5: $88
	adc  b                                           ; $48b6: $88
	adc  b                                           ; $48b7: $88
	adc  b                                           ; $48b8: $88
	adc  b                                           ; $48b9: $88
	adc  b                                           ; $48ba: $88
	adc  b                                           ; $48bb: $88
	adc  b                                           ; $48bc: $88
	adc  b                                           ; $48bd: $88
	adc  b                                           ; $48be: $88
	adc  b                                           ; $48bf: $88
	adc  b                                           ; $48c0: $88
	adc  b                                           ; $48c1: $88
	adc  b                                           ; $48c2: $88
	adc  b                                           ; $48c3: $88
	adc  b                                           ; $48c4: $88
	adc  b                                           ; $48c5: $88
	adc  b                                           ; $48c6: $88
	adc  b                                           ; $48c7: $88
	adc  b                                           ; $48c8: $88
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	adc  b                                           ; $48cd: $88
	adc  b                                           ; $48ce: $88
	adc  b                                           ; $48cf: $88
	adc  b                                           ; $48d0: $88
	adc  b                                           ; $48d1: $88
	adc  b                                           ; $48d2: $88
	adc  b                                           ; $48d3: $88
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	adc  b                                           ; $48d6: $88
	adc  b                                           ; $48d7: $88
	adc  b                                           ; $48d8: $88
	adc  b                                           ; $48d9: $88
	adc  b                                           ; $48da: $88
	adc  b                                           ; $48db: $88
	adc  b                                           ; $48dc: $88
	adc  b                                           ; $48dd: $88
	adc  b                                           ; $48de: $88
	adc  b                                           ; $48df: $88
	adc  b                                           ; $48e0: $88
	adc  b                                           ; $48e1: $88
	adc  b                                           ; $48e2: $88
	adc  b                                           ; $48e3: $88
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	adc  b                                           ; $48e6: $88
	adc  b                                           ; $48e7: $88
	adc  b                                           ; $48e8: $88
	adc  b                                           ; $48e9: $88
	adc  b                                           ; $48ea: $88
	adc  b                                           ; $48eb: $88
	adc  b                                           ; $48ec: $88
	adc  b                                           ; $48ed: $88
	adc  b                                           ; $48ee: $88
	adc  b                                           ; $48ef: $88
	adc  b                                           ; $48f0: $88
	adc  b                                           ; $48f1: $88
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	adc  b                                           ; $48f5: $88
	adc  b                                           ; $48f6: $88
	adc  b                                           ; $48f7: $88
	adc  b                                           ; $48f8: $88
	adc  b                                           ; $48f9: $88
	adc  b                                           ; $48fa: $88
	adc  b                                           ; $48fb: $88
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  b                                           ; $4902: $88
	adc  b                                           ; $4903: $88
	adc  b                                           ; $4904: $88
	adc  b                                           ; $4905: $88
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	adc  b                                           ; $4909: $88
	adc  b                                           ; $490a: $88
	adc  b                                           ; $490b: $88
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  b                                           ; $490e: $88
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	adc  b                                           ; $4911: $88
	adc  b                                           ; $4912: $88
	adc  b                                           ; $4913: $88
	adc  b                                           ; $4914: $88
	adc  b                                           ; $4915: $88
	adc  b                                           ; $4916: $88
	adc  b                                           ; $4917: $88
	adc  b                                           ; $4918: $88
	adc  b                                           ; $4919: $88
	adc  b                                           ; $491a: $88
	adc  b                                           ; $491b: $88
	adc  c                                           ; $491c: $89
	sbc  b                                           ; $491d: $98
	ld   [hl], a                                     ; $491e: $77
	adc  c                                           ; $491f: $89
	sbc  b                                           ; $4920: $98
	ld   a, b                                        ; $4921: $78
	adc  c                                           ; $4922: $89
	adc  b                                           ; $4923: $88
	ld   [hl], a                                     ; $4924: $77
	adc  c                                           ; $4925: $89
	sbc  b                                           ; $4926: $98
	adc  b                                           ; $4927: $88
	adc  b                                           ; $4928: $88
	adc  b                                           ; $4929: $88
	sbc  c                                           ; $492a: $99
	add  a                                           ; $492b: $87
	adc  b                                           ; $492c: $88
	adc  c                                           ; $492d: $89
	adc  b                                           ; $492e: $88
	ld   [hl], a                                     ; $492f: $77
	ld   a, c                                        ; $4930: $79
	sub  a                                           ; $4931: $97
	adc  b                                           ; $4932: $88
	adc  c                                           ; $4933: $89
	sbc  b                                           ; $4934: $98
	adc  b                                           ; $4935: $88
	xor  e                                           ; $4936: $ab
	sbc  c                                           ; $4937: $99
	ld   [hl], h                                     ; $4938: $74
	adc  a                                           ; $4939: $8f
	jp   hl                                          ; $493a: $e9


	inc  [hl]                                        ; $493b: $34
	sbc  l                                           ; $493c: $9d
	and  h                                           ; $493d: $a4
	inc  [hl]                                        ; $493e: $34
	ld   a, c                                        ; $493f: $79
	sbc  b                                           ; $4940: $98
	adc  c                                           ; $4941: $89
	ret                                              ; $4942: $c9


	halt                                             ; $4943: $76
	ld   a, b                                        ; $4944: $78
	xor  d                                           ; $4945: $aa
	ld   h, h                                        ; $4946: $64
	ld   [hl], $89                                   ; $4947: $36 $89
	ld   [hl], l                                     ; $4949: $75
	ld   b, [hl]                                     ; $494a: $46
	xor  e                                           ; $494b: $ab
	sub  [hl]                                        ; $494c: $96
	ld   d, a                                        ; $494d: $57
	sbc  b                                           ; $494e: $98
	ld   [hl], l                                     ; $494f: $75
	ld   l, b                                        ; $4950: $68
	xor  c                                           ; $4951: $a9
	ld   h, l                                        ; $4952: $65
	ld   l, b                                        ; $4953: $68
	xor  d                                           ; $4954: $aa
	add  l                                           ; $4955: $85
	dec  [hl]                                        ; $4956: $35
	sbc  e                                           ; $4957: $9b
	and  l                                           ; $4958: $a5
	inc  sp                                          ; $4959: $33
	adc  d                                           ; $495a: $8a
	xor  d                                           ; $495b: $aa
	ld   [hl], l                                     ; $495c: $75
	ld   b, [hl]                                     ; $495d: $46
	ld   a, d                                        ; $495e: $7a
	db   $db                                         ; $495f: $db
	sub  [hl]                                        ; $4960: $96
	ld   b, [hl]                                     ; $4961: $46
	xor  d                                           ; $4962: $aa
	adc  d                                           ; $4963: $8a
	cp   a                                           ; $4964: $bf
	db   $fd                                         ; $4965: $fd
	xor  b                                           ; $4966: $a8
	sub  [hl]                                        ; $4967: $96
	ld   b, c                                        ; $4968: $41
	ld   b, l                                        ; $4969: $45
	sbc  c                                           ; $496a: $99
	ld   b, e                                        ; $496b: $43
	ld   e, l                                        ; $496c: $5d
	db   $fd                                         ; $496d: $fd
	ld   d, e                                        ; $496e: $53
	ld   c, c                                        ; $496f: $49
	reti                                             ; $4970: $d9


	ld   de, $ff18                                   ; $4971: $11 $18 $ff
	call nz, $ff39                                   ; $4974: $c4 $39 $ff
	ld   d, c                                        ; $4977: $51
	add  hl, de                                      ; $4978: $19
	rst  $28                                         ; $4979: $ef
	cp   c                                           ; $497a: $b9
	xor  l                                           ; $497b: $ad
	ld   a, [$9d51]                                  ; $497c: $fa $51 $9d
	ld   hl, sp+$22                                  ; $497f: $f8 $22
	ld   de, $1121                                   ; $4981: $11 $21 $11
	ld   h, a                                        ; $4984: $67
	ld   a, c                                        ; $4985: $79
	adc  d                                           ; $4986: $8a
	ld   b, c                                        ; $4987: $41
	inc  de                                          ; $4988: $13
	xor  h                                           ; $4989: $ac
	db   $ec                                         ; $498a: $ec
	cp   a                                           ; $498b: $bf
	call c, Call_0e0_61ed                            ; $498c: $dc $ed $61
	dec  h                                           ; $498f: $25
	sub  [hl]                                        ; $4990: $96
	ld   l, b                                        ; $4991: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4992: $cf
	ld   a, [$2811]                                  ; $4993: $fa $11 $28

jr_0e0_4996:
	ld   h, c                                        ; $4996: $61
	ld   [de], a                                     ; $4997: $12
	xor  d                                           ; $4998: $aa
	db   $db                                         ; $4999: $db
	ld   h, a                                        ; $499a: $67
	cp   a                                           ; $499b: $bf
	db   $fd                                         ; $499c: $fd
	ld   d, c                                        ; $499d: $51
	ld   de, $5444                                   ; $499e: $11 $44 $54
	ld   b, e                                        ; $49a1: $43
	ld   a, a                                        ; $49a2: $7f
	rst  $38                                         ; $49a3: $ff
	and  [hl]                                        ; $49a4: $a6
	jr   c, jr_0e0_4996                              ; $49a5: $38 $ef

	db   $fc                                         ; $49a7: $fc
	add  e                                           ; $49a8: $83
	ld   hl, $3137                                   ; $49a9: $21 $37 $31
	ld   de, $fe6e                                   ; $49ac: $11 $6e $fe
	add  [hl]                                        ; $49af: $86
	sbc  d                                           ; $49b0: $9a
	sbc  c                                           ; $49b1: $99
	res  4, [hl]                                     ; $49b2: $cb $a6
	ld   e, e                                        ; $49b4: $5b
	cp   l                                           ; $49b5: $bd
	sbc  e                                           ; $49b6: $9b
	or   [hl]                                        ; $49b7: $b6
	cp   e                                           ; $49b8: $bb
	rst  $38                                         ; $49b9: $ff
	call nc, Call_0e0_5e14                           ; $49ba: $d4 $14 $5e
	ld   [hl], e                                     ; $49bd: $73
	ld   de, $6136                                   ; $49be: $11 $36 $61
	ld   de, $a811                                   ; $49c1: $11 $11 $a8
	ld   de, $ff1b                                   ; $49c4: $11 $1b $ff
	sub  [hl]                                        ; $49c7: $96
	xor  a                                           ; $49c8: $af
	rst  $38                                         ; $49c9: $ff
	ld   a, [$ff5f]                                  ; $49ca: $fa $5f $ff
	ld   hl, sp+$65                                  ; $49cd: $f8 $65
	rst  JumpTable                                         ; $49cf: $df
	sub  $12                                         ; $49d0: $d6 $12
	adc  e                                           ; $49d2: $8b
	ld   [hl], l                                     ; $49d3: $75
	ld   de, $2112                                   ; $49d4: $11 $12 $21
	ld   de, $2125                                   ; $49d7: $11 $25 $21
	ld   de, $bf12                                   ; $49da: $11 $12 $bf
	db   $fc                                         ; $49dd: $fc
	ld   a, a                                        ; $49de: $7f
	rst  $38                                         ; $49df: $ff
	rst  $38                                         ; $49e0: $ff
	rst  $28                                         ; $49e1: $ef
	rst  $38                                         ; $49e2: $ff
	cp   $fe                                         ; $49e3: $fe $fe
	cp   $59                                         ; $49e5: $fe $59
	cp   $31                                         ; $49e7: $fe $31
	dec  d                                           ; $49e9: $15
	ld   [hl], h                                     ; $49ea: $74
	ld   de, $1111                                   ; $49eb: $11 $11 $11
	ld   de, $1111                                   ; $49ee: $11 $11 $11
	ld   d, $c7                                      ; $49f1: $16 $c7
	inc  d                                           ; $49f3: $14
	rst  $38                                         ; $49f4: $ff
	rst  $38                                         ; $49f5: $ff
	rst  $38                                         ; $49f6: $ff
	rst  $38                                         ; $49f7: $ff
	rst  $38                                         ; $49f8: $ff
	and  e                                           ; $49f9: $a3
	rst  JumpTable                                         ; $49fa: $df
	ld   sp, hl                                      ; $49fb: $f9
	ld   d, $bf                                      ; $49fc: $16 $bf
	rst  $38                                         ; $49fe: $ff
	sub  c                                           ; $49ff: $91
	add  hl, de                                      ; $4a00: $19
	ld   a, [$1111]                                  ; $4a01: $fa $11 $11
	ld   de, $1111                                   ; $4a04: $11 $11 $11
	inc  d                                           ; $4a07: $14
	ld   a, b                                        ; $4a08: $78
	ld   de, $ffff                                   ; $4a09: $11 $ff $ff
	rst  $38                                         ; $4a0c: $ff
	rst  $38                                         ; $4a0d: $ff
	rst  $38                                         ; $4a0e: $ff
	jp   hl                                          ; $4a0f: $e9


	xor  a                                           ; $4a10: $af
	rst  $38                                         ; $4a11: $ff
	ld   d, a                                        ; $4a12: $57
	rst  $28                                         ; $4a13: $ef
	rst  $38                                         ; $4a14: $ff
	and  $48                                         ; $4a15: $e6 $48
	sub  e                                           ; $4a17: $93
	ld   de, $1111                                   ; $4a18: $11 $11 $11
	ld   de, $1111                                   ; $4a1b: $11 $11 $11
	jr   @+$13                                       ; $4a1e: $18 $11

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a20: $cf
	ld   hl, sp-$31                                  ; $4a21: $f8 $cf
	rst  $38                                         ; $4a23: $ff
	rst  $38                                         ; $4a24: $ff
	rst  $38                                         ; $4a25: $ff
	sbc  $ff                                         ; $4a26: $de $ff
	rst  $38                                         ; $4a28: $ff
	xor  b                                           ; $4a29: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a2a: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a2b: $cf
	sub  e                                           ; $4a2c: $93
	ld   a, l                                        ; $4a2d: $7d
	or   c                                           ; $4a2e: $b1
	ld   de, $1111                                   ; $4a2f: $11 $11 $11
	ld   de, $1111                                   ; $4a32: $11 $11 $11
	rla                                              ; $4a35: $17
	ld   h, d                                        ; $4a36: $62
	ld   de, $b1ff                                   ; $4a37: $11 $ff $b1
	rst  $38                                         ; $4a3a: $ff
	rst  $38                                         ; $4a3b: $ff
	cp   a                                           ; $4a3c: $bf
	rst  $38                                         ; $4a3d: $ff
	rst  $38                                         ; $4a3e: $ff
	rst  $10                                         ; $4a3f: $d7
	rst  JumpTable                                         ; $4a40: $df
	push af                                          ; $4a41: $f5
	ld   d, l                                        ; $4a42: $55
	ld   e, e                                        ; $4a43: $5b
	sbc  c                                           ; $4a44: $99
	ld   h, l                                        ; $4a45: $65
	ld   [hl], $a6                                   ; $4a46: $36 $a6
	ld   de, $1111                                   ; $4a48: $11 $11 $11
	ld   de, $af11                                   ; $4a4b: $11 $11 $af
	ld   de, $ff1f                                   ; $4a4e: $11 $1f $ff
	ld   c, c                                        ; $4a51: $49
	rst  $38                                         ; $4a52: $ff
	rst  $38                                         ; $4a53: $ff
	rst  $10                                         ; $4a54: $d7
	ccf                                              ; $4a55: $3f
	rst  $38                                         ; $4a56: $ff
	ld   de, $f9ff                                   ; $4a57: $11 $ff $f9
	adc  a                                           ; $4a5a: $8f
	and  e                                           ; $4a5b: $a3
	sbc  a                                           ; $4a5c: $9f
	ld   sp, $4115                                   ; $4a5d: $31 $15 $41
	inc  de                                          ; $4a60: $13
	ld   de, $bb11                                   ; $4a61: $11 $11 $bb
	ld   de, $ff18                                   ; $4a64: $11 $18 $ff
	ld   de, $f3ef                                   ; $4a67: $11 $ef $f3
	add  hl, de                                      ; $4a6a: $19
	rst  $38                                         ; $4a6b: $ff
	pop  af                                          ; $4a6c: $f1
	ld   c, a                                        ; $4a6d: $4f
	rst  $38                                         ; $4a6e: $ff
	ld   h, c                                        ; $4a6f: $61
	ld   e, a                                        ; $4a70: $5f
	or   $18                                         ; $4a71: $f6 $18
	xor  $51                                         ; $4a73: $ee $51
	ld   b, a                                        ; $4a75: $47
	add  h                                           ; $4a76: $84
	ld   b, c                                        ; $4a77: $41
	ld   de, $1131                                   ; $4a78: $11 $31 $11
	rla                                              ; $4a7b: $17
	ld   sp, $a318                                   ; $4a7c: $31 $18 $a3
	cpl                                              ; $4a7f: $2f
	di                                               ; $4a80: $f3
	cpl                                              ; $4a81: $2f
	ld   a, [$ff1c]                                  ; $4a82: $fa $1c $ff
	cp   l                                           ; $4a85: $bd
	and  $af                                         ; $4a86: $e6 $af
	push de                                          ; $4a88: $d5
	ld   a, [de]                                     ; $4a89: $1a
	db   $fd                                         ; $4a8a: $fd
	jr   c, jr_0e0_4aff                              ; $4a8b: $38 $72

	ld   e, c                                        ; $4a8d: $59
	and  d                                           ; $4a8e: $a2
	ld   de, $1148                                   ; $4a8f: $11 $48 $11
	ld   de, $5a31                                   ; $4a92: $11 $31 $5a
	ld   h, c                                        ; $4a95: $61
	ld   a, [de]                                     ; $4a96: $1a
	rst  $38                                         ; $4a97: $ff
	ld   [hl], c                                     ; $4a98: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a99: $cf
	db   $f4                                         ; $4a9a: $f4
	cpl                                              ; $4a9b: $2f
	ei                                               ; $4a9c: $fb
	rst  JumpTable                                         ; $4a9d: $df
	rst  $28                                         ; $4a9e: $ef
	adc  e                                           ; $4a9f: $8b
	ld   h, e                                        ; $4aa0: $63
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aa1: $cf
	ldh  a, [c]                                      ; $4aa2: $f2
	ld   a, [de]                                     ; $4aa3: $1a
	cp   $11                                         ; $4aa4: $fe $11
	ld   e, e                                        ; $4aa6: $5b
	and  c                                           ; $4aa7: $a1
	ld   de, $3139                                   ; $4aa8: $11 $39 $31
	ld   d, $54                                      ; $4aab: $16 $54
	sbc  e                                           ; $4aad: $9b
	and  c                                           ; $4aae: $a1
	dec  a                                           ; $4aaf: $3d
	reti                                             ; $4ab0: $d9


	ld   l, [hl]                                     ; $4ab1: $6e
	ld   hl, sp+$7e                                  ; $4ab2: $f8 $7e
	ei                                               ; $4ab4: $fb
	cp   a                                           ; $4ab5: $bf
	sub  a                                           ; $4ab6: $97
	rst  $28                                         ; $4ab7: $ef
	pop  af                                          ; $4ab8: $f1
	ld   l, $fb                                      ; $4ab9: $2e $fb
	ld   de, $74bd                                   ; $4abb: $11 $bd $74
	ld   h, h                                        ; $4abe: $64
	ld   d, [hl]                                     ; $4abf: $56
	ld   e, b                                        ; $4ac0: $58
	ld   bc, $4157                                   ; $4ac1: $01 $57 $41
	ld   l, d                                        ; $4ac4: $6a
	ld   h, c                                        ; $4ac5: $61
	rra                                              ; $4ac6: $1f
	or   $16                                         ; $4ac7: $f6 $16
	rst  $38                                         ; $4ac9: $ff
	and  l                                           ; $4aca: $a5
	rst  JumpTable                                         ; $4acb: $df
	sbc  h                                           ; $4acc: $9c
	db   $eb                                         ; $4acd: $eb
	sbc  d                                           ; $4ace: $9a
	rst  $28                                         ; $4acf: $ef
	ld   [hl], e                                     ; $4ad0: $73
	cp   a                                           ; $4ad1: $bf
	pop  af                                          ; $4ad2: $f1
	ld   l, a                                        ; $4ad3: $6f
	sub  d                                           ; $4ad4: $92
	ld   a, [hl+]                                    ; $4ad5: $2a
	or   l                                           ; $4ad6: $b5
	inc  [hl]                                        ; $4ad7: $34
	ld   h, h                                        ; $4ad8: $64
	ld   d, h                                        ; $4ad9: $54
	ld   de, $8529                                   ; $4ada: $11 $29 $85
	ld   d, [hl]                                     ; $4add: $56
	ld   [hl], h                                     ; $4ade: $74
	ld   l, a                                        ; $4adf: $6f
	push de                                          ; $4ae0: $d5
	rla                                              ; $4ae1: $17
	db   $fc                                         ; $4ae2: $fc
	cp   b                                           ; $4ae3: $b8
	ld   c, h                                        ; $4ae4: $4c
	rst  $28                                         ; $4ae5: $ef
	sub  h                                           ; $4ae6: $94
	db   $dd                                         ; $4ae7: $dd
	ld   hl, sp+$1a                                  ; $4ae8: $f8 $1a
	cp   d                                           ; $4aea: $ba
	ld   h, c                                        ; $4aeb: $61
	ld   e, h                                        ; $4aec: $5c
	ld   a, [$bd11]                                  ; $4aed: $fa $11 $bd
	sub  c                                           ; $4af0: $91
	inc  d                                           ; $4af1: $14
	reti                                             ; $4af2: $d9


	ld   de, $6635                                   ; $4af3: $11 $35 $66
	ld   d, c                                        ; $4af6: $51
	ld   e, a                                        ; $4af7: $5f
	push hl                                          ; $4af8: $e5
	xor  h                                           ; $4af9: $ac
	xor  b                                           ; $4afa: $a8
	ld   l, a                                        ; $4afb: $6f
	add  [hl]                                        ; $4afc: $86
	add  l                                           ; $4afd: $85
	db   $fc                                         ; $4afe: $fc

jr_0e0_4aff:
	xor  b                                           ; $4aff: $a8
	ld   a, l                                        ; $4b00: $7d
	sub  [hl]                                        ; $4b01: $96
	ld   l, e                                        ; $4b02: $6b
	ret  z                                           ; $4b03: $c8

	adc  c                                           ; $4b04: $89
	ld   h, h                                        ; $4b05: $64
	halt                                             ; $4b06: $76
	ld   h, h                                        ; $4b07: $64
	ld   l, l                                        ; $4b08: $6d
	ld   h, c                                        ; $4b09: $61
	scf                                              ; $4b0a: $37
	add  e                                           ; $4b0b: $83
	rla                                              ; $4b0c: $17
	or   e                                           ; $4b0d: $b3
	ld   d, [hl]                                     ; $4b0e: $56
	ld   a, d                                        ; $4b0f: $7a
	ld   a, e                                        ; $4b10: $7b
	or   d                                           ; $4b11: $b2
	xor  [hl]                                        ; $4b12: $ae
	cp   l                                           ; $4b13: $bd
	rra                                              ; $4b14: $1f
	di                                               ; $4b15: $f3
	ld   sp, hl                                      ; $4b16: $f9
	ccf                                              ; $4b17: $3f
	xor  c                                           ; $4b18: $a9
	db   $e3                                         ; $4b19: $e3
	rst  $30                                         ; $4b1a: $f7
	ld   a, a                                        ; $4b1b: $7f
	ld   e, a                                        ; $4b1c: $5f
	sbc  d                                           ; $4b1d: $9a
	rst  $10                                         ; $4b1e: $d7
	ld   l, e                                        ; $4b1f: $6b
	sub  $76                                         ; $4b20: $d6 $76
	push af                                          ; $4b22: $f5
	ld   [hl], l                                     ; $4b23: $75
	rst  $38                                         ; $4b24: $ff
	ld   e, d                                        ; $4b25: $5a
	cp   a                                           ; $4b26: $bf
	ccf                                              ; $4b27: $3f
	adc  a                                           ; $4b28: $8f
	ld   l, c                                        ; $4b29: $69
	di                                               ; $4b2a: $f3
	sbc  c                                           ; $4b2b: $99
	di                                               ; $4b2c: $f3
	db   $dd                                         ; $4b2d: $dd
	adc  l                                           ; $4b2e: $8d
	ld   l, a                                        ; $4b2f: $6f
	cpl                                              ; $4b30: $2f
	xor  d                                           ; $4b31: $aa
	db   $e4                                         ; $4b32: $e4
	rst  $30                                         ; $4b33: $f7
	call z, wEnterNameMaxChars                                    ; $4b34: $cc $4b $c9
	push hl                                          ; $4b37: $e5
	ret  c                                           ; $4b38: $d8

	sbc  [hl]                                        ; $4b39: $9e
	dec  e                                           ; $4b3a: $1d
	ld   l, e                                        ; $4b3b: $6b
	and  [hl]                                        ; $4b3c: $a6
	sub  l                                           ; $4b3d: $95
	jp   z, $a99b                                    ; $4b3e: $ca $9b $a9

	sbc  c                                           ; $4b41: $99
	add  $f7                                         ; $4b42: $c6 $f7
	ld   a, e                                        ; $4b44: $7b
	ld   l, h                                        ; $4b45: $6c
	xor  c                                           ; $4b46: $a9
	xor  e                                           ; $4b47: $ab
	ld   e, d                                        ; $4b48: $5a
	sbc  h                                           ; $4b49: $9c
	ld   [hl], a                                     ; $4b4a: $77
	adc  [hl]                                        ; $4b4b: $8e
	sub  h                                           ; $4b4c: $94
	or   h                                           ; $4b4d: $b4
	and  $9b                                         ; $4b4e: $e6 $9b
	ld   a, e                                        ; $4b50: $7b
	xor  b                                           ; $4b51: $a8
	ld   c, e                                        ; $4b52: $4b
	xor  b                                           ; $4b53: $a8
	ld   [hl], a                                     ; $4b54: $77
	sbc  l                                           ; $4b55: $9d
	and  l                                           ; $4b56: $a5
	ld   a, d                                        ; $4b57: $7a
	sbc  d                                           ; $4b58: $9a
	or   d                                           ; $4b59: $b2
	jp   c, Jump_0e0_4c4b                            ; $4b5a: $da $4b $4c

	or   l                                           ; $4b5d: $b5
	adc  h                                           ; $4b5e: $8c
	ld   l, c                                        ; $4b5f: $69
	sub  e                                           ; $4b60: $93
	ret                                              ; $4b61: $c9


	ld   a, c                                        ; $4b62: $79
	add  [hl]                                        ; $4b63: $86
	rst  ToBoot                                         ; $4b64: $c7
	inc  a                                           ; $4b65: $3c
	ld   e, d                                        ; $4b66: $5a
	sub  [hl]                                        ; $4b67: $96
	ld   a, b                                        ; $4b68: $78
	or   a                                           ; $4b69: $b7
	ld   h, a                                        ; $4b6a: $67
	or   l                                           ; $4b6b: $b5
	sub  [hl]                                        ; $4b6c: $96
	ld   a, c                                        ; $4b6d: $79
	ld   l, d                                        ; $4b6e: $6a
	ld   c, d                                        ; $4b6f: $4a
	ld   l, c                                        ; $4b70: $69
	ld   h, l                                        ; $4b71: $65
	or   l                                           ; $4b72: $b5
	sub  h                                           ; $4b73: $94
	sub  a                                           ; $4b74: $97
	sbc  b                                           ; $4b75: $98
	ld   e, c                                        ; $4b76: $59

Jump_0e0_4b77:
	ld   a, e                                        ; $4b77: $7b
	ld   c, d                                        ; $4b78: $4a
	ld   c, b                                        ; $4b79: $48
	and  h                                           ; $4b7a: $a4
	or   e                                           ; $4b7b: $b3
	add  a                                           ; $4b7c: $87
	ld   e, d                                        ; $4b7d: $5a
	halt                                             ; $4b7e: $76
	add  [hl]                                        ; $4b7f: $86
	adc  b                                           ; $4b80: $88
	ld   d, a                                        ; $4b81: $57
	ld   a, c                                        ; $4b82: $79
	ld   e, c                                        ; $4b83: $59
	ld   e, b                                        ; $4b84: $58
	ld   a, b                                        ; $4b85: $78
	add  e                                           ; $4b86: $83
	call nz, $8894                                   ; $4b87: $c4 $94 $88
	ld   e, c                                        ; $4b8a: $59
	ld   l, b                                        ; $4b8b: $68
	ld   l, c                                        ; $4b8c: $69
	ld   c, c                                        ; $4b8d: $49
	ld   h, a                                        ; $4b8e: $67
	adc  b                                           ; $4b8f: $88
	ld   d, [hl]                                     ; $4b90: $56
	and  [hl]                                        ; $4b91: $a6
	sub  h                                           ; $4b92: $94
	ld   a, c                                        ; $4b93: $79
	ld   l, b                                        ; $4b94: $68
	ld   d, l                                        ; $4b95: $55
	add  a                                           ; $4b96: $87
	ld   [hl], a                                     ; $4b97: $77
	ld   a, c                                        ; $4b98: $79
	ld   a, b                                        ; $4b99: $78
	ld   c, b                                        ; $4b9a: $48
	add  [hl]                                        ; $4b9b: $86
	ld   [hl], l                                     ; $4b9c: $75
	add  a                                           ; $4b9d: $87
	ld   [hl], a                                     ; $4b9e: $77
	ld   l, b                                        ; $4b9f: $68
	add  h                                           ; $4ba0: $84
	add  a                                           ; $4ba1: $87
	ld   l, b                                        ; $4ba2: $68
	ld   h, a                                        ; $4ba3: $67
	ld   a, b                                        ; $4ba4: $78
	ld   a, c                                        ; $4ba5: $79
	add  [hl]                                        ; $4ba6: $86
	ld   l, b                                        ; $4ba7: $68
	ld   a, b                                        ; $4ba8: $78
	ld   e, b                                        ; $4ba9: $58
	add  a                                           ; $4baa: $87
	add  h                                           ; $4bab: $84
	or   l                                           ; $4bac: $b5
	add  a                                           ; $4bad: $87
	ld   l, c                                        ; $4bae: $69
	ld   e, c                                        ; $4baf: $59
	sub  l                                           ; $4bb0: $95
	adc  b                                           ; $4bb1: $88
	ld   h, a                                        ; $4bb2: $67
	halt                                             ; $4bb3: $76
	add  a                                           ; $4bb4: $87
	ld   l, c                                        ; $4bb5: $69
	halt                                             ; $4bb6: $76
	halt                                             ; $4bb7: $76
	sub  a                                           ; $4bb8: $97
	ld   e, c                                        ; $4bb9: $59
	ld   [hl], l                                     ; $4bba: $75
	sbc  c                                           ; $4bbb: $99
	ld   e, c                                        ; $4bbc: $59
	ld   d, a                                        ; $4bbd: $57
	sub  h                                           ; $4bbe: $94
	or   [hl]                                        ; $4bbf: $b6
	sub  [hl]                                        ; $4bc0: $96
	ld   l, d                                        ; $4bc1: $6a
	ld   d, a                                        ; $4bc2: $57
	sub  [hl]                                        ; $4bc3: $96
	ld   l, d                                        ; $4bc4: $6a
	ld   c, d                                        ; $4bc5: $4a
	ld   h, a                                        ; $4bc6: $67
	add  a                                           ; $4bc7: $87
	add  [hl]                                        ; $4bc8: $86
	sub  [hl]                                        ; $4bc9: $96
	ld   [hl], a                                     ; $4bca: $77
	ld   a, b                                        ; $4bcb: $78
	ld   [hl], l                                     ; $4bcc: $75
	and  [hl]                                        ; $4bcd: $a6
	adc  b                                           ; $4bce: $88
	ld   l, d                                        ; $4bcf: $6a
	ld   e, e                                        ; $4bd0: $5b
	ld   c, b                                        ; $4bd1: $48
	sub  a                                           ; $4bd2: $97
	ld   l, d                                        ; $4bd3: $6a
	ld   [hl], l                                     ; $4bd4: $75
	or   l                                           ; $4bd5: $b5
	and  e                                           ; $4bd6: $a3
	push bc                                          ; $4bd7: $c5
	ld   l, h                                        ; $4bd8: $6c
	dec  sp                                          ; $4bd9: $3b
	ld   l, c                                        ; $4bda: $69
	ld   l, b                                        ; $4bdb: $68
	sub  l                                           ; $4bdc: $95
	ld   a, d                                        ; $4bdd: $7a
	ld   e, b                                        ; $4bde: $58
	sub  l                                           ; $4bdf: $95
	or   l                                           ; $4be0: $b5
	sub  [hl]                                        ; $4be1: $96
	sub  a                                           ; $4be2: $97
	ld   e, e                                        ; $4be3: $5b
	ld   l, b                                        ; $4be4: $68
	add  a                                           ; $4be5: $87
	ld   a, b                                        ; $4be6: $78
	add  [hl]                                        ; $4be7: $86
	sub  a                                           ; $4be8: $97
	adc  d                                           ; $4be9: $8a
	dec  hl                                          ; $4bea: $2b
	ld   [hl], l                                     ; $4beb: $75
	jp   $79a7                                       ; $4bec: $c3 $a7 $79


	ld   l, c                                        ; $4bef: $69
	sub  a                                           ; $4bf0: $97
	sub  a                                           ; $4bf1: $97
	ld   l, d                                        ; $4bf2: $6a
	ld   e, e                                        ; $4bf3: $5b
	halt                                             ; $4bf4: $76
	adc  b                                           ; $4bf5: $88
	ld   [hl], a                                     ; $4bf6: $77
	sub  h                                           ; $4bf7: $94
	push de                                          ; $4bf8: $d5
	ld   a, b                                        ; $4bf9: $78
	sbc  b                                           ; $4bfa: $98
	ld   e, h                                        ; $4bfb: $5c
	ld   h, a                                        ; $4bfc: $67
	add  a                                           ; $4bfd: $87
	sub  [hl]                                        ; $4bfe: $96
	or   l                                           ; $4bff: $b5
	ld   l, l                                        ; $4c00: $6d
	ld   a, [hl+]                                    ; $4c01: $2a
	add  h                                           ; $4c02: $84
	or   [hl]                                        ; $4c03: $b6
	adc  c                                           ; $4c04: $89
	halt                                             ; $4c05: $76
	sbc  b                                           ; $4c06: $98
	ld   l, b                                        ; $4c07: $68
	add  a                                           ; $4c08: $87
	add  a                                           ; $4c09: $87
	ld   a, c                                        ; $4c0a: $79
	ld   a, b                                        ; $4c0b: $78
	ld   [hl], a                                     ; $4c0c: $77
	and  [hl]                                        ; $4c0d: $a6
	add  a                                           ; $4c0e: $87
	ld   e, h                                        ; $4c0f: $5c
	halt                                             ; $4c10: $76
	sub  [hl]                                        ; $4c11: $96
	sbc  b                                           ; $4c12: $98
	ld   c, d                                        ; $4c13: $4a
	sub  [hl]                                        ; $4c14: $96
	ld   a, d                                        ; $4c15: $7a
	ld   e, c                                        ; $4c16: $59
	add  [hl]                                        ; $4c17: $86
	or   d                                           ; $4c18: $b2
	sub  $5b                                         ; $4c19: $d6 $5b
	ld   l, $56                                      ; $4c1b: $2e $56
	or   h                                           ; $4c1d: $b4
	sub  a                                           ; $4c1e: $97
	ld   l, e                                        ; $4c1f: $6b
	add  hl, sp                                      ; $4c20: $39
	sub  e                                           ; $4c21: $93
	jp   nc, Jump_0e0_59a8                           ; $4c22: $d2 $a8 $59

	ld   e, c                                        ; $4c25: $59
	ld   a, d                                        ; $4c26: $7a
	ld   c, c                                        ; $4c27: $49
	ld   a, b                                        ; $4c28: $78
	ld   a, b                                        ; $4c29: $78
	halt                                             ; $4c2a: $76
	add  [hl]                                        ; $4c2b: $86
	sub  h                                           ; $4c2c: $94
	call nc, Call_0e0_5a7a                           ; $4c2d: $d4 $7a $5a
	ld   e, d                                        ; $4c30: $5a
	ld   c, d                                        ; $4c31: $4a
	ld   h, [hl]                                     ; $4c32: $66
	or   e                                           ; $4c33: $b3
	sub  a                                           ; $4c34: $97
	ld   a, c                                        ; $4c35: $79
	ld   h, a                                        ; $4c36: $67
	ld   a, b                                        ; $4c37: $78
	add  h                                           ; $4c38: $84
	adc  c                                           ; $4c39: $89
	ld   e, b                                        ; $4c3a: $58
	add  a                                           ; $4c3b: $87
	ld   a, b                                        ; $4c3c: $78
	dec  sp                                          ; $4c3d: $3b
	ld   [hl], e                                     ; $4c3e: $73
	call nc, $3b99                                   ; $4c3f: $d4 $99 $3b
	sub  h                                           ; $4c42: $94
	sub  a                                           ; $4c43: $97
	ld   l, b                                        ; $4c44: $68
	ld   a, d                                        ; $4c45: $7a
	ld   c, d                                        ; $4c46: $4a
	add  h                                           ; $4c47: $84
	sub  [hl]                                        ; $4c48: $96
	or   l                                           ; $4c49: $b5
	ld   a, c                                        ; $4c4a: $79

Jump_0e0_4c4b:
	ld   c, h                                        ; $4c4b: $4c
	ld   [hl], a                                     ; $4c4c: $77
	add  l                                           ; $4c4d: $85
	or   [hl]                                        ; $4c4e: $b6
	ld   a, e                                        ; $4c4f: $7b
	ld   c, e                                        ; $4c50: $4b
	ld   c, d                                        ; $4c51: $4a
	halt                                             ; $4c52: $76
	or   l                                           ; $4c53: $b5
	xor  c                                           ; $4c54: $a9
	ld   a, b                                        ; $4c55: $78
	add  l                                           ; $4c56: $85
	jp   nz, $4ac8                                   ; $4c57: $c2 $c8 $4a

	ld   a, $3a                                      ; $4c5a: $3e $3a
	sub  l                                           ; $4c5c: $95
	or   l                                           ; $4c5d: $b5
	ld   a, e                                        ; $4c5e: $7b
	halt                                             ; $4c5f: $76
	or   l                                           ; $4c60: $b5
	ld   l, c                                        ; $4c61: $69
	adc  b                                           ; $4c62: $88
	sub  h                                           ; $4c63: $94
	and  a                                           ; $4c64: $a7
	ld   a, b                                        ; $4c65: $78
	ld   e, h                                        ; $4c66: $5c
	ld   d, [hl]                                     ; $4c67: $56
	cp   b                                           ; $4c68: $b8
	ld   e, d                                        ; $4c69: $5a
	ld   l, b                                        ; $4c6a: $68
	add  a                                           ; $4c6b: $87
	sub  l                                           ; $4c6c: $95
	call nz, $6a99                                   ; $4c6d: $c4 $99 $6a
	ld   l, d                                        ; $4c70: $6a
	inc  a                                           ; $4c71: $3c
	halt                                             ; $4c72: $76
	or   e                                           ; $4c73: $b3
	xor  c                                           ; $4c74: $a9
	ld   a, b                                        ; $4c75: $78
	adc  b                                           ; $4c76: $88
	add  a                                           ; $4c77: $87
	ld   a, b                                        ; $4c78: $78
	add  [hl]                                        ; $4c79: $86
	adc  b                                           ; $4c7a: $88
	adc  c                                           ; $4c7b: $89
	ld   [hl], a                                     ; $4c7c: $77
	add  a                                           ; $4c7d: $87
	or   [hl]                                        ; $4c7e: $b6
	ld   e, l                                        ; $4c7f: $5d
	ld   c, e                                        ; $4c80: $4b
	ld   l, b                                        ; $4c81: $68
	and  h                                           ; $4c82: $a4
	push bc                                          ; $4c83: $c5
	sbc  d                                           ; $4c84: $9a
	sub  a                                           ; $4c85: $97
	sub  [hl]                                        ; $4c86: $96
	and  [hl]                                        ; $4c87: $a6
	ld   a, h                                        ; $4c88: $7c
	dec  sp                                          ; $4c89: $3b
	ld   [hl], a                                     ; $4c8a: $77
	ld   a, d                                        ; $4c8b: $7a
	ld   a, c                                        ; $4c8c: $79
	sub  [hl]                                        ; $4c8d: $96
	sub  [hl]                                        ; $4c8e: $96
	and  a                                           ; $4c8f: $a7
	ld   a, e                                        ; $4c90: $7b
	ld   [hl], a                                     ; $4c91: $77
	and  a                                           ; $4c92: $a7
	or   h                                           ; $4c93: $b4
	adc  e                                           ; $4c94: $8b
	ld   e, e                                        ; $4c95: $5b
	ld   l, c                                        ; $4c96: $69
	ld   a, c                                        ; $4c97: $79
	add  l                                           ; $4c98: $85
	xor  b                                           ; $4c99: $a8
	sub  a                                           ; $4c9a: $97
	sbc  c                                           ; $4c9b: $99
	ld   [hl], a                                     ; $4c9c: $77
	sbc  c                                           ; $4c9d: $99
	ld   e, e                                        ; $4c9e: $5b
	add  l                                           ; $4c9f: $85
	sbc  d                                           ; $4ca0: $9a
	add  [hl]                                        ; $4ca1: $86
	sbc  c                                           ; $4ca2: $99
	ld   l, d                                        ; $4ca3: $6a
	sub  [hl]                                        ; $4ca4: $96
	sbc  b                                           ; $4ca5: $98
	ld   [hl], a                                     ; $4ca6: $77
	sbc  c                                           ; $4ca7: $99
	ld   e, d                                        ; $4ca8: $5a
	sbc  b                                           ; $4ca9: $98
	add  a                                           ; $4caa: $87
	and  a                                           ; $4cab: $a7
	xor  c                                           ; $4cac: $a9
	ld   a, c                                        ; $4cad: $79
	adc  c                                           ; $4cae: $89
	ld   l, c                                        ; $4caf: $69
	add  a                                           ; $4cb0: $87
	and  [hl]                                        ; $4cb1: $a6
	adc  d                                           ; $4cb2: $8a
	add  a                                           ; $4cb3: $87
	adc  b                                           ; $4cb4: $88
	ld   l, d                                        ; $4cb5: $6a
	halt                                             ; $4cb6: $76
	or   [hl]                                        ; $4cb7: $b6
	adc  c                                           ; $4cb8: $89
	ld   a, d                                        ; $4cb9: $7a
	sbc  b                                           ; $4cba: $98
	add  l                                           ; $4cbb: $85
	xor  b                                           ; $4cbc: $a8
	ld   a, d                                        ; $4cbd: $7a
	ld   a, c                                        ; $4cbe: $79
	inc  a                                           ; $4cbf: $3c
	ld   [hl], a                                     ; $4cc0: $77
	or   e                                           ; $4cc1: $b3
	or   [hl]                                        ; $4cc2: $b6
	sbc  c                                           ; $4cc3: $99
	ld   e, e                                        ; $4cc4: $5b
	ld   [hl], a                                     ; $4cc5: $77
	ld   a, c                                        ; $4cc6: $79
	rst  ToBoot                                         ; $4cc7: $c7
	adc  c                                           ; $4cc8: $89
	adc  d                                           ; $4cc9: $8a
	ld   l, e                                        ; $4cca: $6b
	ld   l, c                                        ; $4ccb: $69
	and  h                                           ; $4ccc: $a4
	cp   b                                           ; $4ccd: $b8
	sbc  c                                           ; $4cce: $99
	ld   e, d                                        ; $4ccf: $5a
	adc  b                                           ; $4cd0: $88
	ld   [hl], a                                     ; $4cd1: $77
	and  a                                           ; $4cd2: $a7
	and  a                                           ; $4cd3: $a7
	sbc  d                                           ; $4cd4: $9a
	ld   e, c                                        ; $4cd5: $59
	add  a                                           ; $4cd6: $87
	or   e                                           ; $4cd7: $b3
	jp   z, Jump_0e0_783c                            ; $4cd8: $ca $3c $78

	sub  a                                           ; $4cdb: $97
	sbc  e                                           ; $4cdc: $9b
	ld   l, b                                        ; $4cdd: $68
	sub  [hl]                                        ; $4cde: $96
	push bc                                          ; $4cdf: $c5
	xor  d                                           ; $4ce0: $aa
	ld   l, d                                        ; $4ce1: $6a
	ld   e, c                                        ; $4ce2: $59
	or   [hl]                                        ; $4ce3: $b6
	xor  b                                           ; $4ce4: $a8
	adc  c                                           ; $4ce5: $89
	sbc  c                                           ; $4ce6: $99
	ld   a, e                                        ; $4ce7: $7b
	ld   [hl], a                                     ; $4ce8: $77
	and  a                                           ; $4ce9: $a7
	sbc  d                                           ; $4cea: $9a
	ld   c, e                                        ; $4ceb: $4b
	ld   a, b                                        ; $4cec: $78
	add  l                                           ; $4ced: $85
	push hl                                          ; $4cee: $e5
	sbc  b                                           ; $4cef: $98
	ld   l, e                                        ; $4cf0: $6b
	add  a                                           ; $4cf1: $87
	adc  e                                           ; $4cf2: $8b
	sub  a                                           ; $4cf3: $97
	adc  b                                           ; $4cf4: $88
	db   $e3                                         ; $4cf5: $e3
	adc  h                                           ; $4cf6: $8c
	dec  a                                           ; $4cf7: $3d
	ld   c, e                                        ; $4cf8: $4b
	and  l                                           ; $4cf9: $a5
	add  a                                           ; $4cfa: $87
	db   $d3                                         ; $4cfb: $d3
	or   [hl]                                        ; $4cfc: $b6
	ld   l, [hl]                                     ; $4cfd: $6e
	ld   [hl], a                                     ; $4cfe: $77
	ld   a, c                                        ; $4cff: $79
	sbc  b                                           ; $4d00: $98
	ld   e, h                                        ; $4d01: $5c
	add  [hl]                                        ; $4d02: $86
	or   a                                           ; $4d03: $b7
	ld   l, e                                        ; $4d04: $6b
	add  [hl]                                        ; $4d05: $86
	rst  $10                                         ; $4d06: $d7
	sbc  c                                           ; $4d07: $99
	adc  c                                           ; $4d08: $89
	add  a                                           ; $4d09: $87
	or   [hl]                                        ; $4d0a: $b6
	adc  h                                           ; $4d0b: $8c
	dec  l                                           ; $4d0c: $2d
	halt                                             ; $4d0d: $76
	xor  c                                           ; $4d0e: $a9
	sub  a                                           ; $4d0f: $97
	or   h                                           ; $4d10: $b4
	xor  d                                           ; $4d11: $aa
	halt                                             ; $4d12: $76
	xor  b                                           ; $4d13: $a8
	ld   a, e                                        ; $4d14: $7b
	ld   a, c                                        ; $4d15: $79
	adc  d                                           ; $4d16: $8a
	ld   a, c                                        ; $4d17: $79
	ld   l, e                                        ; $4d18: $6b
	ld   e, b                                        ; $4d19: $58
	and  h                                           ; $4d1a: $a4
	rst  ToBoot                                         ; $4d1b: $c7
	ld   a, c                                        ; $4d1c: $79
	or   e                                           ; $4d1d: $b3
	rst  ToBoot                                         ; $4d1e: $c7
	sbc  d                                           ; $4d1f: $9a
	ld   c, l                                        ; $4d20: $4d
	ld   e, h                                        ; $4d21: $5c
	halt                                             ; $4d22: $76
	call nc, Call_0e0_7ba9                           ; $4d23: $d4 $a9 $7b
	ld   e, c                                        ; $4d26: $59
	add  a                                           ; $4d27: $87
	or   [hl]                                        ; $4d28: $b6
	ld   a, e                                        ; $4d29: $7b
	sub  a                                           ; $4d2a: $97
	ld   a, d                                        ; $4d2b: $7a
	and  [hl]                                        ; $4d2c: $a6
	jp   nz, ClearBaseAnimSpriteSpecDetails                                   ; $4d2d: $c2 $c9 $2e

	ld   c, c                                        ; $4d30: $49
	sbc  b                                           ; $4d31: $98
	sub  a                                           ; $4d32: $97
	adc  c                                           ; $4d33: $89
	add  [hl]                                        ; $4d34: $86
	xor  d                                           ; $4d35: $aa
	add  [hl]                                        ; $4d36: $86
	push de                                          ; $4d37: $d5
	sbc  h                                           ; $4d38: $9c
	ld   a, $56                                      ; $4d39: $3e $56
	or   a                                           ; $4d3b: $b7
	sbc  b                                           ; $4d3c: $98
	sbc  b                                           ; $4d3d: $98
	ld   a, c                                        ; $4d3e: $79
	sbc  d                                           ; $4d3f: $9a
	and  l                                           ; $4d40: $a5
	sub  $86                                         ; $4d41: $d6 $86
	xor  h                                           ; $4d43: $ac
	dec  e                                           ; $4d44: $1d
	ld   d, a                                        ; $4d45: $57
	sub  a                                           ; $4d46: $97
	sub  a                                           ; $4d47: $97
	push de                                          ; $4d48: $d5
	ld   a, h                                        ; $4d49: $7c
	ld   [hl], l                                     ; $4d4a: $75
	and  $7b                                         ; $4d4b: $e6 $7b
	ld   a, c                                        ; $4d4d: $79
	adc  b                                           ; $4d4e: $88
	ld   a, d                                        ; $4d4f: $7a
	ld   a, c                                        ; $4d50: $79
	ld   c, d                                        ; $4d51: $4a
	and  [hl]                                        ; $4d52: $a6
	add  $b7                                         ; $4d53: $c6 $b7
	rst  $10                                         ; $4d55: $d7
	ld   a, d                                        ; $4d56: $7a
	sbc  c                                           ; $4d57: $99
	ld   c, e                                        ; $4d58: $4b
	ld   l, b                                        ; $4d59: $68
	ld   a, d                                        ; $4d5a: $7a
	ld   a, c                                        ; $4d5b: $79
	ld   e, d                                        ; $4d5c: $5a
	halt                                             ; $4d5d: $76
	pop  hl                                          ; $4d5e: $e1
	and  $9a                                         ; $4d5f: $e6 $9a
	dec  a                                           ; $4d61: $3d
	ld   l, c                                        ; $4d62: $69
	ld   a, b                                        ; $4d63: $78
	and  h                                           ; $4d64: $a4
	xor  c                                           ; $4d65: $a9
	ld   e, e                                        ; $4d66: $5b
	ld   [hl], a                                     ; $4d67: $77
	sbc  e                                           ; $4d68: $9b
	ld   [hl], l                                     ; $4d69: $75
	jp   z, $9a69                                    ; $4d6a: $ca $69 $9a

	ld   h, l                                        ; $4d6d: $65
	sub  $5a                                         ; $4d6e: $d6 $5a
	adc  b                                           ; $4d70: $88
	ld   e, e                                        ; $4d71: $5b
	halt                                             ; $4d72: $76
	call nz, $77a9                                   ; $4d73: $c4 $a9 $77
	xor  c                                           ; $4d76: $a9
	ld   l, c                                        ; $4d77: $69
	sbc  d                                           ; $4d78: $9a
	ld   c, e                                        ; $4d79: $4b
	sub  l                                           ; $4d7a: $95
	add  a                                           ; $4d7b: $87
	db   $d3                                         ; $4d7c: $d3
	sbc  h                                           ; $4d7d: $9c
	ld   c, d                                        ; $4d7e: $4a
	and  a                                           ; $4d7f: $a7
	ld   a, b                                        ; $4d80: $78
	sub  a                                           ; $4d81: $97
	ld   l, l                                        ; $4d82: $6d
	ld   d, a                                        ; $4d83: $57
	db   $e3                                         ; $4d84: $e3
	xor  b                                           ; $4d85: $a8
	add  [hl]                                        ; $4d86: $86
	sbc  e                                           ; $4d87: $9b
	ld   c, h                                        ; $4d88: $4c
	ld   l, c                                        ; $4d89: $69
	and  a                                           ; $4d8a: $a7
	add  l                                           ; $4d8b: $85
	cp   c                                           ; $4d8c: $b9
	ld   c, e                                        ; $4d8d: $4b
	sub  a                                           ; $4d8e: $97
	and  a                                           ; $4d8f: $a7
	and  h                                           ; $4d90: $a4
	rst  $20                                         ; $4d91: $e7
	ccf                                              ; $4d92: $3f
	ld   b, l                                        ; $4d93: $45
	xor  c                                           ; $4d94: $a9
	or   c                                           ; $4d95: $b1
	jp   c, Jump_0e0_760f                            ; $4d96: $da $0f $76

	ld   a, e                                        ; $4d99: $7b
	and  c                                           ; $4d9a: $a1
	srl  b                                           ; $4d9b: $cb $38
	or   [hl]                                        ; $4d9d: $b6
	ld   h, a                                        ; $4d9e: $67
	call nc, $3a7e                                   ; $4d9f: $d4 $7e $3a
	sub  [hl]                                        ; $4da2: $96
	ld   a, c                                        ; $4da3: $79
	or   [hl]                                        ; $4da4: $b6
	ld   c, [hl]                                     ; $4da5: $4e
	ld   d, a                                        ; $4da6: $57
	or   [hl]                                        ; $4da7: $b6
	sub  h                                           ; $4da8: $94
	push af                                          ; $4da9: $f5
	ld   c, a                                        ; $4daa: $4f
	ld   l, c                                        ; $4dab: $69
	ld   a, d                                        ; $4dac: $7a
	ld   [hl], h                                     ; $4dad: $74
	jp   hl                                          ; $4dae: $e9


jr_0e0_4daf:
	inc  a                                           ; $4daf: $3c
	ld   a, c                                        ; $4db0: $79
	ld   a, b                                        ; $4db1: $78
	and  e                                           ; $4db2: $a3
	db   $f4                                         ; $4db3: $f4
	ld   c, l                                        ; $4db4: $4d
	ld   e, d                                        ; $4db5: $5a
	ld   e, d                                        ; $4db6: $5a
	sub  [hl]                                        ; $4db7: $96
	and  l                                           ; $4db8: $a5
	sbc  c                                           ; $4db9: $99
	ld   e, b                                        ; $4dba: $58
	sub  a                                           ; $4dbb: $97
	ld   l, c                                        ; $4dbc: $69
	and  a                                           ; $4dbd: $a7
	adc  c                                           ; $4dbe: $89
	ld   c, d                                        ; $4dbf: $4a
	or   l                                           ; $4dc0: $b5
	ld   l, e                                        ; $4dc1: $6b
	ld   [hl], l                                     ; $4dc2: $75
	rst  ToBoot                                         ; $4dc3: $c7
	ld   l, d                                        ; $4dc4: $6a
	sub  a                                           ; $4dc5: $97
	ld   a, e                                        ; $4dc6: $7b
	sub  l                                           ; $4dc7: $95
	sbc  l                                           ; $4dc8: $9d
	ld   l, b                                        ; $4dc9: $68
	xor  c                                           ; $4dca: $a9
	push bc                                          ; $4dcb: $c5
	cp   c                                           ; $4dcc: $b9
	sbc  e                                           ; $4dcd: $9b
	ld   l, e                                        ; $4dce: $6b
	xor  c                                           ; $4dcf: $a9
	adc  d                                           ; $4dd0: $8a
	add  a                                           ; $4dd1: $87
	cp   c                                           ; $4dd2: $b9
	ld   e, h                                        ; $4dd3: $5c
	halt                                             ; $4dd4: $76
	ld   [hl], a                                     ; $4dd5: $77
	add  d                                           ; $4dd6: $82
	or   l                                           ; $4dd7: $b5
	ld   d, [hl]                                     ; $4dd8: $56
	add  hl, hl                                      ; $4dd9: $29
	dec  d                                           ; $4dda: $15
	ld   d, d                                        ; $4ddb: $52
	ld   d, d                                        ; $4ddc: $52
	ld   d, [hl]                                     ; $4ddd: $56
	ld   b, a                                        ; $4dde: $47
	ld   d, [hl]                                     ; $4ddf: $56
	sub  a                                           ; $4de0: $97
	xor  e                                           ; $4de1: $ab
	jp   z, $afff                                    ; $4de2: $ca $ff $af

	cp   $ff                                         ; $4de5: $fe $ff
	rst  $28                                         ; $4de7: $ef
	db   $fc                                         ; $4de8: $fc
	db   $ed                                         ; $4de9: $ed
	res  1, c                                        ; $4dea: $cb $89
	add  a                                           ; $4dec: $87
	add  a                                           ; $4ded: $87
	ld   b, a                                        ; $4dee: $47
	ld   h, e                                        ; $4def: $63
	daa                                              ; $4df0: $27
	ld   b, c                                        ; $4df1: $41
	ld   de, $1141                                   ; $4df2: $11 $41 $11
	inc  de                                          ; $4df5: $13
	ld   de, $2412                                   ; $4df6: $11 $12 $24
	add  h                                           ; $4df9: $84
	ld   a, a                                        ; $4dfa: $7f
	adc  [hl]                                        ; $4dfb: $8e
	rst  $38                                         ; $4dfc: $ff
	rst  $38                                         ; $4dfd: $ff
	rst  $38                                         ; $4dfe: $ff
	rst  $38                                         ; $4dff: $ff
	rst  $38                                         ; $4e00: $ff
	xor  $fe                                         ; $4e01: $ee $fe
	ret  z                                           ; $4e03: $c8

	bit  5, d                                        ; $4e04: $cb $6a
	and  [hl]                                        ; $4e06: $a6
	ld   l, b                                        ; $4e07: $68
	ld   h, e                                        ; $4e08: $63
	scf                                              ; $4e09: $37
	ld   b, d                                        ; $4e0a: $42
	ld   d, c                                        ; $4e0b: $51
	ld   de, $1111                                   ; $4e0c: $11 $11 $11
	ld   de, $1111                                   ; $4e0f: $11 $11 $11
	dec  d                                           ; $4e12: $15
	jr   c, jr_0e0_4daf                              ; $4e13: $38 $9a

	db   $fd                                         ; $4e15: $fd
	rst  $38                                         ; $4e16: $ff
	rst  $38                                         ; $4e17: $ff
	rst  $38                                         ; $4e18: $ff
	rst  $38                                         ; $4e19: $ff
	rst  $38                                         ; $4e1a: $ff
	rst  $38                                         ; $4e1b: $ff
	call z, $a999                                    ; $4e1c: $cc $99 $a9
	ld   h, l                                        ; $4e1f: $65
	or   l                                           ; $4e20: $b5
	ld   a, d                                        ; $4e21: $7a
	ld   b, [hl]                                     ; $4e22: $46
	halt                                             ; $4e23: $76
	ld   d, h                                        ; $4e24: $54
	ld   [hl-], a                                    ; $4e25: $32
	ld   de, $1111                                   ; $4e26: $11 $11 $11
	ld   de, $1111                                   ; $4e29: $11 $11 $11
	ld   de, $8925                                   ; $4e2c: $11 $25 $89
	rst  $28                                         ; $4e2f: $ef
	rst  $38                                         ; $4e30: $ff
	rst  $38                                         ; $4e31: $ff
	rst  $38                                         ; $4e32: $ff
	rst  $38                                         ; $4e33: $ff
	rst  $38                                         ; $4e34: $ff
	rst  $38                                         ; $4e35: $ff
	jp   c, $75a8                                    ; $4e36: $da $a8 $75

	ld   d, l                                        ; $4e39: $55
	ld   c, c                                        ; $4e3a: $49
	ld   d, a                                        ; $4e3b: $57
	and  a                                           ; $4e3c: $a7
	ld   l, c                                        ; $4e3d: $69
	ld   [hl], c                                     ; $4e3e: $71
	ld   [hl], a                                     ; $4e3f: $77
	ld   de, $1111                                   ; $4e40: $11 $11 $11
	ld   de, $1111                                   ; $4e43: $11 $11 $11
	ld   de, $9816                                   ; $4e46: $11 $16 $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e49: $cf
	rst  $38                                         ; $4e4a: $ff
	rst  $38                                         ; $4e4b: $ff
	rst  $38                                         ; $4e4c: $ff
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	rst  $38                                         ; $4e4f: $ff
	db   $eb                                         ; $4e50: $eb
	halt                                             ; $4e51: $76
	ld   d, e                                        ; $4e52: $53
	ld   b, e                                        ; $4e53: $43
	rla                                              ; $4e54: $17
	ld   h, l                                        ; $4e55: $65
	add  a                                           ; $4e56: $87
	sub  [hl]                                        ; $4e57: $96
	sub  a                                           ; $4e58: $97
	scf                                              ; $4e59: $37
	ld   sp, $1111                                   ; $4e5a: $31 $11 $11
	ld   de, $1111                                   ; $4e5d: $11 $11 $11
	ld   de, $8c13                                   ; $4e60: $11 $13 $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e63: $cf
	rst  $38                                         ; $4e64: $ff
	rst  $38                                         ; $4e65: $ff
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff

jr_0e0_4e68:
	rst  $38                                         ; $4e68: $ff
	rst  $38                                         ; $4e69: $ff
	jp   z, $2163                                    ; $4e6a: $ca $63 $21

	ld   de, $2523                                   ; $4e6d: $11 $23 $25
	halt                                             ; $4e70: $76
	ld   a, d                                        ; $4e71: $7a
	ld   [hl], a                                     ; $4e72: $77
	ld   [hl], l                                     ; $4e73: $75
	ld   sp, $1111                                   ; $4e74: $31 $11 $11
	ld   de, $1111                                   ; $4e77: $11 $11 $11
	ld   de, $ae38                                   ; $4e7a: $11 $38 $ae
	rst  $38                                         ; $4e7d: $ff
	rst  $38                                         ; $4e7e: $ff
	rst  $38                                         ; $4e7f: $ff
	rst  $38                                         ; $4e80: $ff
	rst  $38                                         ; $4e81: $ff
	rst  $38                                         ; $4e82: $ff
	db   $fd                                         ; $4e83: $fd
	add  h                                           ; $4e84: $84
	ld   d, c                                        ; $4e85: $51
	ld   de, $1311                                   ; $4e86: $11 $11 $13
	inc  h                                           ; $4e89: $24
	ld   h, [hl]                                     ; $4e8a: $66
	ld   h, [hl]                                     ; $4e8b: $66
	ld   l, c                                        ; $4e8c: $69
	ld   sp, $1111                                   ; $4e8d: $31 $11 $11
	ld   de, $1111                                   ; $4e90: $11 $11 $11
	ld   de, $8c16                                   ; $4e93: $11 $16 $8c
	rst  $38                                         ; $4e96: $ff
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	rst  $38                                         ; $4e99: $ff
	rst  $38                                         ; $4e9a: $ff
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	ld   h, c                                        ; $4e9d: $61
	ld   d, e                                        ; $4e9e: $53
	ld   de, $1112                                   ; $4e9f: $11 $12 $11
	dec  h                                           ; $4ea2: $25
	ld   h, l                                        ; $4ea3: $65
	jr   c, jr_0e0_4e68                              ; $4ea4: $38 $c2

	dec  d                                           ; $4ea6: $15
	ld   hl, $1111                                   ; $4ea7: $21 $11 $11
	ld   de, $1111                                   ; $4eaa: $11 $11 $11
	inc  e                                           ; $4ead: $1c
	db   $ec                                         ; $4eae: $ec
	rst  $38                                         ; $4eaf: $ff
	rst  $38                                         ; $4eb0: $ff
	rst  $38                                         ; $4eb1: $ff
	rst  $38                                         ; $4eb2: $ff
	rst  $38                                         ; $4eb3: $ff
	rst  $38                                         ; $4eb4: $ff
	cp   e                                           ; $4eb5: $bb
	and  d                                           ; $4eb6: $a2
	ld   de, $1251                                   ; $4eb7: $11 $51 $12
	ld   d, e                                        ; $4eba: $53
	daa                                              ; $4ebb: $27
	add  [hl]                                        ; $4ebc: $86
	ld   h, a                                        ; $4ebd: $67
	ld   d, l                                        ; $4ebe: $55
	ld   hl, $1111                                   ; $4ebf: $21 $11 $11
	ld   de, $1111                                   ; $4ec2: $11 $11 $11
	ld   de, $ffcf                                   ; $4ec5: $11 $cf $ff
	rst  $38                                         ; $4ec8: $ff
	rst  $38                                         ; $4ec9: $ff
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	rst  $38                                         ; $4ecc: $ff
	db   $db                                         ; $4ecd: $db
	xor  d                                           ; $4ece: $aa
	ld   de, $1141                                   ; $4ecf: $11 $41 $11
	add  hl, hl                                      ; $4ed2: $29
	ld   h, d                                        ; $4ed3: $62
	xor  c                                           ; $4ed4: $a9
	adc  b                                           ; $4ed5: $88
	ld   d, a                                        ; $4ed6: $57
	ld   hl, $1111                                   ; $4ed7: $21 $11 $11
	ld   de, $1111                                   ; $4eda: $11 $11 $11
	ld   hl, $fc1f                                   ; $4edd: $21 $1f $fc
	rst  JumpTable                                         ; $4ee0: $df
	rst  $38                                         ; $4ee1: $ff
	rst  $38                                         ; $4ee2: $ff
	rst  $38                                         ; $4ee3: $ff
	rst  $38                                         ; $4ee4: $ff
	rst  $38                                         ; $4ee5: $ff
	ld   b, h                                        ; $4ee6: $44
	pop  hl                                          ; $4ee7: $e1
	ld   de, $1129                                   ; $4ee8: $11 $29 $11
	call z, $9fb7                                    ; $4eeb: $cc $b7 $9f
	ld   h, c                                        ; $4eee: $61
	ld   d, l                                        ; $4eef: $55
	ld   de, $1111                                   ; $4ef0: $11 $11 $11
	ld   de, $1111                                   ; $4ef3: $11 $11 $11
	ld   a, [$ff1f]                                  ; $4ef6: $fa $1f $ff
	rst  $38                                         ; $4ef9: $ff
	rst  $38                                         ; $4efa: $ff
	rst  $38                                         ; $4efb: $ff
	rst  $38                                         ; $4efc: $ff
	ldh  a, [c]                                      ; $4efd: $f2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4efe: $cf
	sub  c                                           ; $4eff: $91
	ld   d, $c7                                      ; $4f00: $16 $c7
	scf                                              ; $4f02: $37
	cp   a                                           ; $4f03: $bf
	and  h                                           ; $4f04: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f05: $cf
	ld   [hl], d                                     ; $4f06: $72
	dec  d                                           ; $4f07: $15
	ld   sp, $1111                                   ; $4f08: $31 $11 $11
	ld   de, $1211                                   ; $4f0b: $11 $11 $12
	pop  af                                          ; $4f0e: $f1
	rra                                              ; $4f0f: $1f
	rst  $38                                         ; $4f10: $ff
	cpl                                              ; $4f11: $2f
	rst  $38                                         ; $4f12: $ff
	rst  $38                                         ; $4f13: $ff
	rst  $38                                         ; $4f14: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f15: $cf
	ld   sp, hl                                      ; $4f16: $f9
	ld   a, h                                        ; $4f17: $7c
	rst  $38                                         ; $4f18: $ff
	ld   [hl], a                                     ; $4f19: $77
	db   $ec                                         ; $4f1a: $ec
	xor  e                                           ; $4f1b: $ab
	cp   [hl]                                        ; $4f1c: $be
	or   d                                           ; $4f1d: $b2
	inc  hl                                          ; $4f1e: $23
	ld   b, l                                        ; $4f1f: $45
	ld   de, $1111                                   ; $4f20: $11 $11 $11
	ld   de, $1111                                   ; $4f23: $11 $11 $11
	ld   d, l                                        ; $4f26: $55
	inc  d                                           ; $4f27: $14
	rst  $38                                         ; $4f28: $ff
	reti                                             ; $4f29: $d9


	rst  $28                                         ; $4f2a: $ef
	ei                                               ; $4f2b: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f2c: $cf
	rst  $38                                         ; $4f2d: $ff
	db   $dd                                         ; $4f2e: $dd
	rst  $38                                         ; $4f2f: $ff
	cp   $7f                                         ; $4f30: $fe $7f
	rst  $38                                         ; $4f32: $ff
	sub  c                                           ; $4f33: $91
	ld   a, a                                        ; $4f34: $7f
	sub  l                                           ; $4f35: $95
	inc  sp                                          ; $4f36: $33
	sub  h                                           ; $4f37: $94
	ld   de, $1111                                   ; $4f38: $11 $11 $11
	ld   de, $1111                                   ; $4f3b: $11 $11 $11
	ld   de, $114e                                   ; $4f3e: $11 $4e $11
	rst  $38                                         ; $4f41: $ff
	db   $fc                                         ; $4f42: $fc
	adc  a                                           ; $4f43: $8f
	rst  $38                                         ; $4f44: $ff
	rst  $38                                         ; $4f45: $ff
	rst  $38                                         ; $4f46: $ff
	cp   a                                           ; $4f47: $bf
	rst  $38                                         ; $4f48: $ff
	rst  $38                                         ; $4f49: $ff
	ld   [hl], e                                     ; $4f4a: $73
	xor  a                                           ; $4f4b: $af
	push af                                          ; $4f4c: $f5
	ld   c, e                                        ; $4f4d: $4b
	db   $fc                                         ; $4f4e: $fc
	ld   h, h                                        ; $4f4f: $64
	ld   de, $1111                                   ; $4f50: $11 $11 $11
	ld   de, $1111                                   ; $4f53: $11 $11 $11
	ld   de, $1511                                   ; $4f56: $11 $11 $15
	jp   z, $ffaf                                    ; $4f59: $ca $af $ff

	rst  $38                                         ; $4f5c: $ff
	rst  $38                                         ; $4f5d: $ff
	rst  $38                                         ; $4f5e: $ff
	rst  $38                                         ; $4f5f: $ff
	rst  $38                                         ; $4f60: $ff
	rst  $38                                         ; $4f61: $ff
	db   $fd                                         ; $4f62: $fd
	sbc  d                                           ; $4f63: $9a
	rst  $38                                         ; $4f64: $ff
	add  $6a                                         ; $4f65: $c6 $6a
	jp   c, $1321                                    ; $4f67: $da $21 $13

	ld   hl, $1111                                   ; $4f6a: $21 $11 $11
	ld   de, $2117                                   ; $4f6d: $11 $17 $21
	ld   de, $a4ff                                   ; $4f70: $11 $ff $a4
	ld   c, d                                        ; $4f73: $4a
	rst  $38                                         ; $4f74: $ff
	rst  $38                                         ; $4f75: $ff
	jr   @+$01                                       ; $4f76: $18 $ff

	ld   a, [$ff38]                                  ; $4f78: $fa $38 $ff
	ei                                               ; $4f7b: $fb
	ld   b, a                                        ; $4f7c: $47
	rst  $38                                         ; $4f7d: $ff
	ld   hl, sp+$4a                                  ; $4f7e: $f8 $4a
	add  l                                           ; $4f80: $85
	ld   bc, $1111                                   ; $4f81: $01 $11 $11
	ld   de, $1112                                   ; $4f84: $11 $12 $11
	ld   de, $1311                                   ; $4f87: $11 $11 $13
	ld   [hl], l                                     ; $4f8a: $75
	ld   l, c                                        ; $4f8b: $69
	rst  $38                                         ; $4f8c: $ff
	db   $fd                                         ; $4f8d: $fd
	cp   a                                           ; $4f8e: $bf
	rst  $38                                         ; $4f8f: $ff
	ld   a, [$ffad]                                  ; $4f90: $fa $ad $ff
	rst  $30                                         ; $4f93: $f7
	ld   e, d                                        ; $4f94: $5a
	rst  $38                                         ; $4f95: $ff
	ld   sp, hl                                      ; $4f96: $f9
	ld   l, b                                        ; $4f97: $68
	sub  a                                           ; $4f98: $97
	dec  [hl]                                        ; $4f99: $35
	ld   de, $4111                                   ; $4f9a: $11 $11 $41
	ld   de, $5111                                   ; $4f9d: $11 $11 $51
	ld   de, $d20f                                   ; $4fa0: $11 $0f $d2
	add  hl, sp                                      ; $4fa3: $39
	adc  a                                           ; $4fa4: $8f
	rst  $38                                         ; $4fa5: $ff
	sub  e                                           ; $4fa6: $93
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fa7: $cf
	cp   $fb                                         ; $4fa8: $fe $fb
	rst  JumpTable                                         ; $4faa: $df
	rst  $38                                         ; $4fab: $ff
	db   $f4                                         ; $4fac: $f4
	rst  $28                                         ; $4fad: $ef
	sbc  $69                                         ; $4fae: $de $69
	adc  b                                           ; $4fb0: $88
	ld   d, d                                        ; $4fb1: $52
	ld   de, $1111                                   ; $4fb2: $11 $11 $11
	ld   de, $1111                                   ; $4fb5: $11 $11 $11
	ld   de, $9d11                                   ; $4fb8: $11 $11 $9d
	ld   e, b                                        ; $4fbb: $58
	adc  a                                           ; $4fbc: $8f
	rst  $38                                         ; $4fbd: $ff
	sbc  a                                           ; $4fbe: $9f
	db   $fc                                         ; $4fbf: $fc
	rst  $38                                         ; $4fc0: $ff
	rst  $30                                         ; $4fc1: $f7
	dec  hl                                          ; $4fc2: $2b
	rst  $38                                         ; $4fc3: $ff
	cp   $c6                                         ; $4fc4: $fe $c6
	cp   a                                           ; $4fc6: $bf
	rst  $38                                         ; $4fc7: $ff
	ld   de, $b959                                   ; $4fc8: $11 $59 $b9
	ld   de, $6811                                   ; $4fcb: $11 $11 $68
	ld   h, c                                        ; $4fce: $61
	ld   de, $1157                                   ; $4fcf: $11 $57 $11
	inc  de                                          ; $4fd2: $13
	sbc  a                                           ; $4fd3: $9f
	rst  $38                                         ; $4fd4: $ff
	ld   h, d                                        ; $4fd5: $62
	rst  $38                                         ; $4fd6: $ff
	rst  $38                                         ; $4fd7: $ff
	jr   @+$01                                       ; $4fd8: $18 $ff

	rst  $38                                         ; $4fda: $ff
	adc  e                                           ; $4fdb: $8b
	xor  a                                           ; $4fdc: $af
	cp   $a6                                         ; $4fdd: $fe $a6
	adc  a                                           ; $4fdf: $8f
	db   $fc                                         ; $4fe0: $fc
	ld   d, c                                        ; $4fe1: $51
	inc  d                                           ; $4fe2: $14
	ld   d, d                                        ; $4fe3: $52
	ld   de, $9314                                   ; $4fe4: $11 $14 $93
	ld   de, $1111                                   ; $4fe7: $11 $11 $11
	ld   d, c                                        ; $4fea: $51
	jr   @+$01                                       ; $4feb: $18 $ff

	di                                               ; $4fed: $f3
	ld   c, a                                        ; $4fee: $4f
	rst  $38                                         ; $4fef: $ff
	rst  $38                                         ; $4ff0: $ff
	ld   [hl], d                                     ; $4ff1: $72
	rst  $28                                         ; $4ff2: $ef
	db   $fd                                         ; $4ff3: $fd
	sbc  [hl]                                        ; $4ff4: $9e
	rst  $38                                         ; $4ff5: $ff
	adc  $d7                                         ; $4ff6: $ce $d7
	ld   b, a                                        ; $4ff8: $47
	cp   h                                           ; $4ff9: $bc
	and  e                                           ; $4ffa: $a3
	ld   de, $1311                                   ; $4ffb: $11 $11 $13
	ld   b, d                                        ; $4ffe: $42
	ld   [de], a                                     ; $4fff: $12
	ld   de, $1111                                   ; $5000: $11 $11 $11
	rla                                              ; $5003: $17
	rst  $38                                         ; $5004: $ff
	or   a                                           ; $5005: $b7
	ld   a, d                                        ; $5006: $7a
	rst  $38                                         ; $5007: $ff
	jp   c, $ff46                                    ; $5008: $da $46 $ff

	cp   $79                                         ; $500b: $fe $79
	rst  $38                                         ; $500d: $ff
	rst  $38                                         ; $500e: $ff
	ld   h, e                                        ; $500f: $63
	ld   b, [hl]                                     ; $5010: $46
	xor  e                                           ; $5011: $ab
	call nz, $1411                                   ; $5012: $c4 $11 $14
	ld   [hl], e                                     ; $5015: $73
	ld   de, $3115                                   ; $5016: $11 $15 $31
	ld   de, $b619                                   ; $5019: $11 $19 $b6
	sbc  [hl]                                        ; $501c: $9e
	db   $ed                                         ; $501d: $ed
	db   $ec                                         ; $501e: $ec
	rst  JumpTable                                         ; $501f: $df
	call Call_0e0_7ff2                               ; $5020: $cd $f2 $7f
	rst  $38                                         ; $5023: $ff
	jp   hl                                          ; $5024: $e9


	cp   a                                           ; $5025: $bf
	db   $fd                                         ; $5026: $fd
	or   e                                           ; $5027: $b3
	dec  de                                          ; $5028: $1b
	db   $db                                         ; $5029: $db
	and  e                                           ; $502a: $a3
	ld   de, $3611                                   ; $502b: $11 $11 $36
	inc  sp                                          ; $502e: $33
	ld   b, d                                        ; $502f: $42
	ld   de, $1311                                   ; $5030: $11 $11 $13
	adc  l                                           ; $5033: $8d
	ei                                               ; $5034: $fb
	ld   [hl], a                                     ; $5035: $77
	sbc  a                                           ; $5036: $9f
	rst  $38                                         ; $5037: $ff
	cp   $89                                         ; $5038: $fe $89
	sbc  l                                           ; $503a: $9d
	db   $fc                                         ; $503b: $fc
	xor  $ac                                         ; $503c: $ee $ac
	rst  $38                                         ; $503e: $ff
	pop  de                                          ; $503f: $d1
	ld   h, $97                                      ; $5040: $26 $97
	dec  [hl]                                        ; $5042: $35
	ld   de, $5315                                   ; $5043: $11 $15 $53
	ld   [hl+], a                                    ; $5046: $22
	ld   de, $9311                                   ; $5047: $11 $11 $93
	dec  d                                           ; $504a: $15
	ld   b, a                                        ; $504b: $47
	rst  $28                                         ; $504c: $ef
	ei                                               ; $504d: $fb
	sub  a                                           ; $504e: $97
	ld   l, a                                        ; $504f: $6f
	rst  $38                                         ; $5050: $ff
	adc  c                                           ; $5051: $89
	sbc  e                                           ; $5052: $9b
	rst  $28                                         ; $5053: $ef
	ei                                               ; $5054: $fb
	xor  e                                           ; $5055: $ab
	rst  $38                                         ; $5056: $ff

jr_0e0_5057:
	and  d                                           ; $5057: $a2
	inc  sp                                          ; $5058: $33
	ld   c, d                                        ; $5059: $4a
	add  d                                           ; $505a: $82
	ld   de, $9626                                   ; $505b: $11 $26 $96
	ld   sp, $1511                                   ; $505e: $31 $11 $15
	db   $dd                                         ; $5061: $dd
	ld   hl, $ff7f                                   ; $5062: $21 $7f $ff
	rst  ToBoot                                         ; $5065: $c7
	jr   jr_0e0_5057                                 ; $5066: $18 $ef

	or   $15                                         ; $5068: $f6 $15
	adc  a                                           ; $506a: $8f
	rst  $38                                         ; $506b: $ff
	db   $e3                                         ; $506c: $e3
	ld   c, c                                        ; $506d: $49
	adc  d                                           ; $506e: $8a
	sub  l                                           ; $506f: $95
	ld   [hl+], a                                    ; $5070: $22
	ld   c, d                                        ; $5071: $4a
	sub  e                                           ; $5072: $93
	ld   de, $cc18                                   ; $5073: $11 $18 $cc
	ld   h, c                                        ; $5076: $61
	ld   de, $ff4c                                   ; $5077: $11 $4c $ff
	or   c                                           ; $507a: $b1
	inc  e                                           ; $507b: $1c
	rst  $38                                         ; $507c: $ff
	rst  $28                                         ; $507d: $ef
	and  $8f                                         ; $507e: $e6 $8f
	reti                                             ; $5080: $d9


	add  a                                           ; $5081: $87
	call $94df                                       ; $5082: $cd $df $94
	ld   h, $76                                      ; $5085: $26 $76
	ld   d, [hl]                                     ; $5087: $56
	add  a                                           ; $5088: $87
	ld   h, l                                        ; $5089: $65
	ld   sp, $a928                                   ; $508a: $31 $28 $a9
	ld   sp, $bb15                                   ; $508d: $31 $15 $bb
	add  a                                           ; $5090: $87
	ld   e, c                                        ; $5091: $59
	db   $ed                                         ; $5092: $ed
	cp   e                                           ; $5093: $bb
	ld   h, e                                        ; $5094: $63
	xor  a                                           ; $5095: $af
	rst  $38                                         ; $5096: $ff
	rst  ToBoot                                         ; $5097: $c7
	halt                                             ; $5098: $76
	adc  e                                           ; $5099: $8b
	xor  e                                           ; $509a: $ab
	cp   d                                           ; $509b: $ba
	ld   [hl], l                                     ; $509c: $75
	ld   [hl], a                                     ; $509d: $77
	sub  a                                           ; $509e: $97
	ld   d, l                                        ; $509f: $55
	inc  sp                                          ; $50a0: $33
	ld   d, a                                        ; $50a1: $57
	ld   [hl], d                                     ; $50a2: $72
	inc  de                                          ; $50a3: $13
	ld   l, c                                        ; $50a4: $69
	adc  $c8                                         ; $50a5: $ce $c8
	ld   h, [hl]                                     ; $50a7: $66
	xor  h                                           ; $50a8: $ac
	jp   c, $8e76                                    ; $50a9: $da $76 $8e

	db   $ec                                         ; $50ac: $ec
	add  [hl]                                        ; $50ad: $86
	ld   a, c                                        ; $50ae: $79
	rst  JumpTable                                         ; $50af: $df
	rst  $20                                         ; $50b0: $e7
	inc  hl                                          ; $50b1: $23
	ld   a, c                                        ; $50b2: $79
	cp   d                                           ; $50b3: $ba
	ld   d, h                                        ; $50b4: $54
	ld   b, a                                        ; $50b5: $47
	or   a                                           ; $50b6: $b7
	ld   b, l                                        ; $50b7: $45
	ld   h, a                                        ; $50b8: $67
	ld   l, b                                        ; $50b9: $68
	halt                                             ; $50ba: $76
	ld   d, d                                        ; $50bb: $52
	ld   l, h                                        ; $50bc: $6c
	cp   h                                           ; $50bd: $bc
	ld   [$6954], a                                  ; $50be: $ea $54 $69
	cp   d                                           ; $50c1: $ba
	cp   h                                           ; $50c2: $bc
	xor  c                                           ; $50c3: $a9
	adc  d                                           ; $50c4: $8a
	cp   c                                           ; $50c5: $b9
	xor  c                                           ; $50c6: $a9
	add  a                                           ; $50c7: $87
	ld   h, a                                        ; $50c8: $67
	halt                                             ; $50c9: $76
	ld   h, h                                        ; $50ca: $64
	ld   l, d                                        ; $50cb: $6a
	cp   d                                           ; $50cc: $ba
	sub  [hl]                                        ; $50cd: $96
	inc  sp                                          ; $50ce: $33
	scf                                              ; $50cf: $37
	xor  c                                           ; $50d0: $a9
	add  a                                           ; $50d1: $87
	ld   h, a                                        ; $50d2: $67
	xor  e                                           ; $50d3: $ab
	xor  b                                           ; $50d4: $a8
	ld   a, c                                        ; $50d5: $79
	cp   e                                           ; $50d6: $bb
	cp   b                                           ; $50d7: $b8
	ld   d, h                                        ; $50d8: $54
	ld   e, e                                        ; $50d9: $5b
	db   $dd                                         ; $50da: $dd
	cp   b                                           ; $50db: $b8
	ld   d, e                                        ; $50dc: $53
	ld   b, a                                        ; $50dd: $47
	ld   [hl], a                                     ; $50de: $77
	ld   h, a                                        ; $50df: $67
	sbc  b                                           ; $50e0: $98
	sbc  d                                           ; $50e1: $9a
	sbc  b                                           ; $50e2: $98
	halt                                             ; $50e3: $76
	ld   h, a                                        ; $50e4: $67
	ld   a, b                                        ; $50e5: $78
	ld   [hl], l                                     ; $50e6: $75
	ld   d, a                                        ; $50e7: $57
	xor  d                                           ; $50e8: $aa
	cp   d                                           ; $50e9: $ba
	ld   a, b                                        ; $50ea: $78
	sub  a                                           ; $50eb: $97
	sbc  d                                           ; $50ec: $9a
	halt                                             ; $50ed: $76
	ld   a, b                                        ; $50ee: $78
	adc  c                                           ; $50ef: $89
	sbc  c                                           ; $50f0: $99
	xor  c                                           ; $50f1: $a9
	ld   a, c                                        ; $50f2: $79
	ld   [hl], a                                     ; $50f3: $77
	halt                                             ; $50f4: $76
	ld   h, a                                        ; $50f5: $67
	ld   d, l                                        ; $50f6: $55
	ld   [hl], a                                     ; $50f7: $77
	adc  d                                           ; $50f8: $8a
	adc  c                                           ; $50f9: $89
	ld   [hl], a                                     ; $50fa: $77
	adc  c                                           ; $50fb: $89
	sub  a                                           ; $50fc: $97
	ld   h, a                                        ; $50fd: $67
	ld   a, c                                        ; $50fe: $79
	xor  d                                           ; $50ff: $aa
	sbc  c                                           ; $5100: $99
	halt                                             ; $5101: $76
	adc  c                                           ; $5102: $89
	sbc  c                                           ; $5103: $99
	sbc  c                                           ; $5104: $99
	halt                                             ; $5105: $76
	ld   [hl], a                                     ; $5106: $77
	ld   h, [hl]                                     ; $5107: $66
	ld   h, a                                        ; $5108: $67
	sbc  c                                           ; $5109: $99
	adc  b                                           ; $510a: $88
	ld   [hl], a                                     ; $510b: $77
	ld   [hl], a                                     ; $510c: $77
	ld   a, b                                        ; $510d: $78
	sbc  c                                           ; $510e: $99
	sub  a                                           ; $510f: $97
	ld   d, h                                        ; $5110: $54
	ld   e, b                                        ; $5111: $58
	call z, Call_0e0_67b8                            ; $5112: $cc $b8 $67
	adc  c                                           ; $5115: $89
	add  a                                           ; $5116: $87
	ld   a, c                                        ; $5117: $79
	sbc  c                                           ; $5118: $99
	sub  a                                           ; $5119: $97
	ld   h, [hl]                                     ; $511a: $66
	ld   a, b                                        ; $511b: $78
	sbc  c                                           ; $511c: $99
	xor  c                                           ; $511d: $a9
	add  [hl]                                        ; $511e: $86
	ld   d, l                                        ; $511f: $55
	ld   l, c                                        ; $5120: $69
	cp   d                                           ; $5121: $ba
	ld   [hl], l                                     ; $5122: $75
	ld   h, a                                        ; $5123: $67
	adc  d                                           ; $5124: $8a
	sub  a                                           ; $5125: $97
	ld   h, [hl]                                     ; $5126: $66
	ld   a, b                                        ; $5127: $78
	sbc  c                                           ; $5128: $99
	add  a                                           ; $5129: $87
	adc  c                                           ; $512a: $89
	sbc  c                                           ; $512b: $99
	adc  c                                           ; $512c: $89
	add  a                                           ; $512d: $87
	ld   l, b                                        ; $512e: $68
	adc  c                                           ; $512f: $89
	and  a                                           ; $5130: $a7
	ld   h, l                                        ; $5131: $65
	ld   l, b                                        ; $5132: $68
	xor  c                                           ; $5133: $a9
	sbc  b                                           ; $5134: $98
	halt                                             ; $5135: $76
	ld   a, b                                        ; $5136: $78
	adc  b                                           ; $5137: $88
	ld   [hl], a                                     ; $5138: $77
	ld   h, a                                        ; $5139: $67
	adc  b                                           ; $513a: $88
	ld   [hl], a                                     ; $513b: $77
	ld   a, c                                        ; $513c: $79
	xor  c                                           ; $513d: $a9
	sbc  b                                           ; $513e: $98
	adc  b                                           ; $513f: $88
	adc  b                                           ; $5140: $88
	ld   [hl], a                                     ; $5141: $77
	ld   [hl], a                                     ; $5142: $77
	ld   a, b                                        ; $5143: $78
	adc  b                                           ; $5144: $88
	sbc  c                                           ; $5145: $99
	sbc  c                                           ; $5146: $99
	add  a                                           ; $5147: $87
	ld   [hl], a                                     ; $5148: $77
	ld   [hl], a                                     ; $5149: $77
	ld   [hl], a                                     ; $514a: $77
	adc  b                                           ; $514b: $88
	sbc  b                                           ; $514c: $98
	add  a                                           ; $514d: $87
	ld   h, a                                        ; $514e: $67
	adc  b                                           ; $514f: $88
	ld   [hl], a                                     ; $5150: $77
	ld   a, c                                        ; $5151: $79
	sbc  c                                           ; $5152: $99
	adc  b                                           ; $5153: $88
	adc  b                                           ; $5154: $88
	sbc  b                                           ; $5155: $98
	sub  a                                           ; $5156: $97
	ld   h, a                                        ; $5157: $67
	ld   a, b                                        ; $5158: $78
	add  a                                           ; $5159: $87
	ld   a, c                                        ; $515a: $79
	adc  c                                           ; $515b: $89
	sbc  b                                           ; $515c: $98
	sub  a                                           ; $515d: $97
	adc  b                                           ; $515e: $88
	adc  b                                           ; $515f: $88
	ld   [hl], a                                     ; $5160: $77
	add  a                                           ; $5161: $87
	add  a                                           ; $5162: $87
	ld   [hl], a                                     ; $5163: $77
	adc  b                                           ; $5164: $88
	adc  b                                           ; $5165: $88
	sbc  b                                           ; $5166: $98
	sbc  c                                           ; $5167: $99
	add  a                                           ; $5168: $87
	ld   h, a                                        ; $5169: $67
	ld   a, c                                        ; $516a: $79
	adc  b                                           ; $516b: $88
	adc  b                                           ; $516c: $88
	adc  c                                           ; $516d: $89
	adc  b                                           ; $516e: $88
	add  a                                           ; $516f: $87
	ld   [hl], a                                     ; $5170: $77
	adc  c                                           ; $5171: $89
	adc  c                                           ; $5172: $89
	adc  c                                           ; $5173: $89
	sub  a                                           ; $5174: $97
	ld   [hl], a                                     ; $5175: $77

Jump_0e0_5176:
	adc  c                                           ; $5176: $89
	add  a                                           ; $5177: $87
	adc  b                                           ; $5178: $88
	adc  c                                           ; $5179: $89
	sbc  b                                           ; $517a: $98
	add  a                                           ; $517b: $87
	ld   a, b                                        ; $517c: $78
	sbc  c                                           ; $517d: $99
	add  a                                           ; $517e: $87
	ld   [hl], a                                     ; $517f: $77
	adc  b                                           ; $5180: $88
	adc  c                                           ; $5181: $89
	sbc  b                                           ; $5182: $98
	add  a                                           ; $5183: $87
	ld   a, b                                        ; $5184: $78
	sbc  b                                           ; $5185: $98
	sbc  b                                           ; $5186: $98
	add  a                                           ; $5187: $87
	adc  b                                           ; $5188: $88
	adc  b                                           ; $5189: $88
	sbc  c                                           ; $518a: $99
	adc  b                                           ; $518b: $88
	adc  b                                           ; $518c: $88
	adc  b                                           ; $518d: $88
	ld   [hl], a                                     ; $518e: $77
	adc  c                                           ; $518f: $89
	sbc  c                                           ; $5190: $99
	sbc  b                                           ; $5191: $98
	adc  b                                           ; $5192: $88
	adc  b                                           ; $5193: $88
	adc  c                                           ; $5194: $89
	adc  b                                           ; $5195: $88
	add  a                                           ; $5196: $87
	ld   a, b                                        ; $5197: $78
	sbc  b                                           ; $5198: $98
	adc  c                                           ; $5199: $89
	adc  b                                           ; $519a: $88
	sbc  b                                           ; $519b: $98
	adc  b                                           ; $519c: $88
	ld   [hl], a                                     ; $519d: $77
	ld   a, b                                        ; $519e: $78
	adc  b                                           ; $519f: $88
	adc  b                                           ; $51a0: $88
	adc  b                                           ; $51a1: $88
	sbc  c                                           ; $51a2: $99
	adc  b                                           ; $51a3: $88
	adc  b                                           ; $51a4: $88
	adc  b                                           ; $51a5: $88
	ld   a, b                                        ; $51a6: $78
	adc  b                                           ; $51a7: $88

Call_0e0_51a8:
	sbc  b                                           ; $51a8: $98
	adc  b                                           ; $51a9: $88
	adc  b                                           ; $51aa: $88
	adc  b                                           ; $51ab: $88
	adc  b                                           ; $51ac: $88
	adc  b                                           ; $51ad: $88
	adc  b                                           ; $51ae: $88
	adc  b                                           ; $51af: $88
	adc  c                                           ; $51b0: $89
	adc  b                                           ; $51b1: $88
	adc  c                                           ; $51b2: $89
	sbc  c                                           ; $51b3: $99
	sbc  c                                           ; $51b4: $99
	adc  b                                           ; $51b5: $88
	adc  b                                           ; $51b6: $88
	adc  b                                           ; $51b7: $88
	adc  c                                           ; $51b8: $89
	adc  b                                           ; $51b9: $88
	add  a                                           ; $51ba: $87
	adc  b                                           ; $51bb: $88
	adc  b                                           ; $51bc: $88
	ld   [hl], a                                     ; $51bd: $77
	ld   [hl], a                                     ; $51be: $77
	ld   [hl], a                                     ; $51bf: $77
	adc  b                                           ; $51c0: $88
	adc  b                                           ; $51c1: $88
	adc  b                                           ; $51c2: $88
	adc  c                                           ; $51c3: $89
	sbc  b                                           ; $51c4: $98
	adc  b                                           ; $51c5: $88
	adc  b                                           ; $51c6: $88
	adc  c                                           ; $51c7: $89

Call_0e0_51c8:
	adc  b                                           ; $51c8: $88
	adc  b                                           ; $51c9: $88
	adc  b                                           ; $51ca: $88
	adc  b                                           ; $51cb: $88
	adc  b                                           ; $51cc: $88
	add  a                                           ; $51cd: $87
	adc  b                                           ; $51ce: $88
	adc  b                                           ; $51cf: $88
	adc  b                                           ; $51d0: $88
	adc  b                                           ; $51d1: $88
	adc  b                                           ; $51d2: $88
	adc  b                                           ; $51d3: $88
	adc  b                                           ; $51d4: $88
	adc  b                                           ; $51d5: $88
	adc  b                                           ; $51d6: $88
	adc  b                                           ; $51d7: $88
	adc  b                                           ; $51d8: $88
	adc  b                                           ; $51d9: $88
	adc  b                                           ; $51da: $88
	adc  b                                           ; $51db: $88
	adc  b                                           ; $51dc: $88
	adc  b                                           ; $51dd: $88
	adc  b                                           ; $51de: $88
	adc  b                                           ; $51df: $88
	adc  b                                           ; $51e0: $88
	adc  b                                           ; $51e1: $88
	adc  b                                           ; $51e2: $88
	adc  b                                           ; $51e3: $88
	adc  b                                           ; $51e4: $88
	adc  b                                           ; $51e5: $88
	adc  b                                           ; $51e6: $88
	adc  b                                           ; $51e7: $88
	adc  b                                           ; $51e8: $88
	adc  b                                           ; $51e9: $88
	adc  b                                           ; $51ea: $88
	adc  b                                           ; $51eb: $88
	adc  b                                           ; $51ec: $88
	adc  b                                           ; $51ed: $88
	adc  b                                           ; $51ee: $88
	adc  b                                           ; $51ef: $88
	adc  b                                           ; $51f0: $88
	adc  b                                           ; $51f1: $88
	adc  b                                           ; $51f2: $88
	adc  b                                           ; $51f3: $88
	adc  b                                           ; $51f4: $88
	adc  b                                           ; $51f5: $88
	adc  b                                           ; $51f6: $88
	adc  b                                           ; $51f7: $88
	adc  b                                           ; $51f8: $88
	adc  b                                           ; $51f9: $88
	adc  b                                           ; $51fa: $88
	adc  b                                           ; $51fb: $88
	adc  b                                           ; $51fc: $88
	adc  b                                           ; $51fd: $88
	adc  b                                           ; $51fe: $88

Call_0e0_51ff:
	adc  b                                           ; $51ff: $88
	adc  b                                           ; $5200: $88
	adc  b                                           ; $5201: $88
	adc  b                                           ; $5202: $88
	adc  b                                           ; $5203: $88
	adc  b                                           ; $5204: $88
	adc  b                                           ; $5205: $88
	adc  b                                           ; $5206: $88
	adc  b                                           ; $5207: $88
	adc  b                                           ; $5208: $88
	adc  b                                           ; $5209: $88
	adc  b                                           ; $520a: $88
	adc  b                                           ; $520b: $88
	adc  b                                           ; $520c: $88
	adc  b                                           ; $520d: $88
	adc  b                                           ; $520e: $88
	adc  b                                           ; $520f: $88
	adc  b                                           ; $5210: $88
	adc  b                                           ; $5211: $88
	adc  b                                           ; $5212: $88
	adc  b                                           ; $5213: $88
	adc  b                                           ; $5214: $88
	adc  b                                           ; $5215: $88
	adc  b                                           ; $5216: $88
	adc  b                                           ; $5217: $88
	adc  b                                           ; $5218: $88
	adc  b                                           ; $5219: $88
	adc  b                                           ; $521a: $88
	adc  b                                           ; $521b: $88
	adc  b                                           ; $521c: $88
	adc  b                                           ; $521d: $88
	adc  b                                           ; $521e: $88
	adc  b                                           ; $521f: $88
	adc  b                                           ; $5220: $88
	adc  b                                           ; $5221: $88
	adc  b                                           ; $5222: $88
	adc  b                                           ; $5223: $88
	adc  b                                           ; $5224: $88
	adc  b                                           ; $5225: $88
	adc  b                                           ; $5226: $88
	adc  b                                           ; $5227: $88
	adc  b                                           ; $5228: $88
	adc  b                                           ; $5229: $88
	adc  b                                           ; $522a: $88
	adc  b                                           ; $522b: $88
	adc  b                                           ; $522c: $88
	adc  b                                           ; $522d: $88
	adc  b                                           ; $522e: $88
	adc  b                                           ; $522f: $88
	adc  b                                           ; $5230: $88
	adc  b                                           ; $5231: $88
	adc  b                                           ; $5232: $88
	adc  b                                           ; $5233: $88
	adc  b                                           ; $5234: $88
	adc  b                                           ; $5235: $88
	adc  b                                           ; $5236: $88
	adc  b                                           ; $5237: $88
	adc  b                                           ; $5238: $88
	adc  b                                           ; $5239: $88
	adc  b                                           ; $523a: $88
	adc  b                                           ; $523b: $88
	adc  b                                           ; $523c: $88
	adc  b                                           ; $523d: $88
	adc  b                                           ; $523e: $88
	adc  b                                           ; $523f: $88
	adc  b                                           ; $5240: $88
	adc  b                                           ; $5241: $88
	adc  b                                           ; $5242: $88
	adc  b                                           ; $5243: $88
	adc  b                                           ; $5244: $88
	adc  b                                           ; $5245: $88
	adc  b                                           ; $5246: $88
	adc  b                                           ; $5247: $88
	adc  b                                           ; $5248: $88
	adc  b                                           ; $5249: $88
	adc  b                                           ; $524a: $88
	adc  b                                           ; $524b: $88
	adc  b                                           ; $524c: $88
	adc  b                                           ; $524d: $88
	adc  b                                           ; $524e: $88
	adc  b                                           ; $524f: $88
	adc  b                                           ; $5250: $88
	adc  b                                           ; $5251: $88
	adc  b                                           ; $5252: $88
	adc  b                                           ; $5253: $88
	adc  b                                           ; $5254: $88
	adc  b                                           ; $5255: $88
	adc  b                                           ; $5256: $88
	adc  b                                           ; $5257: $88
	adc  b                                           ; $5258: $88
	adc  b                                           ; $5259: $88
	adc  b                                           ; $525a: $88
	adc  b                                           ; $525b: $88
	adc  b                                           ; $525c: $88
	adc  b                                           ; $525d: $88
	adc  b                                           ; $525e: $88
	adc  b                                           ; $525f: $88
	adc  b                                           ; $5260: $88
	adc  b                                           ; $5261: $88
	adc  b                                           ; $5262: $88
	adc  b                                           ; $5263: $88
	adc  b                                           ; $5264: $88
	adc  b                                           ; $5265: $88
	adc  b                                           ; $5266: $88
	adc  b                                           ; $5267: $88
	adc  b                                           ; $5268: $88
	adc  b                                           ; $5269: $88
	adc  b                                           ; $526a: $88
	adc  b                                           ; $526b: $88
	adc  b                                           ; $526c: $88
	adc  b                                           ; $526d: $88
	adc  b                                           ; $526e: $88
	adc  b                                           ; $526f: $88
	adc  b                                           ; $5270: $88
	adc  b                                           ; $5271: $88
	adc  b                                           ; $5272: $88
	adc  b                                           ; $5273: $88
	adc  b                                           ; $5274: $88
	adc  b                                           ; $5275: $88
	adc  b                                           ; $5276: $88
	adc  b                                           ; $5277: $88
	adc  b                                           ; $5278: $88
	adc  b                                           ; $5279: $88
	adc  b                                           ; $527a: $88
	adc  b                                           ; $527b: $88
	adc  b                                           ; $527c: $88
	adc  b                                           ; $527d: $88
	adc  b                                           ; $527e: $88
	adc  b                                           ; $527f: $88
	adc  b                                           ; $5280: $88
	adc  b                                           ; $5281: $88
	adc  b                                           ; $5282: $88
	adc  b                                           ; $5283: $88
	adc  b                                           ; $5284: $88
	adc  b                                           ; $5285: $88
	adc  b                                           ; $5286: $88
	adc  b                                           ; $5287: $88
	adc  b                                           ; $5288: $88
	adc  b                                           ; $5289: $88
	adc  b                                           ; $528a: $88
	adc  b                                           ; $528b: $88
	adc  b                                           ; $528c: $88
	adc  b                                           ; $528d: $88
	adc  b                                           ; $528e: $88
	adc  b                                           ; $528f: $88
	adc  b                                           ; $5290: $88
	adc  b                                           ; $5291: $88
	adc  b                                           ; $5292: $88
	adc  b                                           ; $5293: $88
	adc  b                                           ; $5294: $88
	adc  b                                           ; $5295: $88
	adc  b                                           ; $5296: $88
	adc  b                                           ; $5297: $88
	adc  b                                           ; $5298: $88
	adc  b                                           ; $5299: $88
	adc  b                                           ; $529a: $88
	adc  b                                           ; $529b: $88
	adc  b                                           ; $529c: $88
	adc  b                                           ; $529d: $88
	adc  b                                           ; $529e: $88
	adc  b                                           ; $529f: $88
	adc  b                                           ; $52a0: $88
	adc  b                                           ; $52a1: $88
	adc  b                                           ; $52a2: $88
	adc  b                                           ; $52a3: $88
	adc  b                                           ; $52a4: $88
	adc  b                                           ; $52a5: $88
	adc  b                                           ; $52a6: $88
	adc  b                                           ; $52a7: $88
	adc  b                                           ; $52a8: $88
	adc  b                                           ; $52a9: $88
	adc  b                                           ; $52aa: $88
	adc  b                                           ; $52ab: $88
	adc  b                                           ; $52ac: $88
	adc  b                                           ; $52ad: $88
	adc  b                                           ; $52ae: $88
	adc  b                                           ; $52af: $88
	adc  b                                           ; $52b0: $88
	adc  b                                           ; $52b1: $88
	adc  b                                           ; $52b2: $88
	adc  b                                           ; $52b3: $88
	adc  b                                           ; $52b4: $88
	adc  b                                           ; $52b5: $88
	adc  b                                           ; $52b6: $88
	adc  b                                           ; $52b7: $88
	adc  b                                           ; $52b8: $88
	adc  b                                           ; $52b9: $88
	adc  b                                           ; $52ba: $88
	adc  b                                           ; $52bb: $88
	adc  b                                           ; $52bc: $88
	adc  b                                           ; $52bd: $88
	adc  b                                           ; $52be: $88
	adc  b                                           ; $52bf: $88
	adc  b                                           ; $52c0: $88
	adc  b                                           ; $52c1: $88
	adc  b                                           ; $52c2: $88
	adc  b                                           ; $52c3: $88
	adc  b                                           ; $52c4: $88
	adc  b                                           ; $52c5: $88
	adc  b                                           ; $52c6: $88
	adc  b                                           ; $52c7: $88
	adc  b                                           ; $52c8: $88
	adc  b                                           ; $52c9: $88
	adc  b                                           ; $52ca: $88
	adc  b                                           ; $52cb: $88
	adc  b                                           ; $52cc: $88
	adc  b                                           ; $52cd: $88
	adc  b                                           ; $52ce: $88
	adc  b                                           ; $52cf: $88
	adc  b                                           ; $52d0: $88
	adc  b                                           ; $52d1: $88
	adc  b                                           ; $52d2: $88
	adc  b                                           ; $52d3: $88
	adc  b                                           ; $52d4: $88
	adc  b                                           ; $52d5: $88
	adc  b                                           ; $52d6: $88
	adc  b                                           ; $52d7: $88
	adc  b                                           ; $52d8: $88
	adc  b                                           ; $52d9: $88
	adc  b                                           ; $52da: $88
	adc  b                                           ; $52db: $88
	adc  b                                           ; $52dc: $88
	adc  b                                           ; $52dd: $88
	adc  b                                           ; $52de: $88
	adc  b                                           ; $52df: $88
	adc  b                                           ; $52e0: $88
	adc  b                                           ; $52e1: $88
	adc  b                                           ; $52e2: $88
	adc  b                                           ; $52e3: $88
	adc  b                                           ; $52e4: $88
	adc  b                                           ; $52e5: $88
	adc  b                                           ; $52e6: $88
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	adc  b                                           ; $52ea: $88
	adc  b                                           ; $52eb: $88
	adc  b                                           ; $52ec: $88
	adc  b                                           ; $52ed: $88
	adc  b                                           ; $52ee: $88
	adc  b                                           ; $52ef: $88
	adc  b                                           ; $52f0: $88
	adc  b                                           ; $52f1: $88
	adc  b                                           ; $52f2: $88
	adc  b                                           ; $52f3: $88
	adc  b                                           ; $52f4: $88
	adc  b                                           ; $52f5: $88
	adc  b                                           ; $52f6: $88
	adc  b                                           ; $52f7: $88
	adc  b                                           ; $52f8: $88
	adc  b                                           ; $52f9: $88
	adc  b                                           ; $52fa: $88
	adc  b                                           ; $52fb: $88
	adc  b                                           ; $52fc: $88
	adc  b                                           ; $52fd: $88
	adc  b                                           ; $52fe: $88
	adc  b                                           ; $52ff: $88
	adc  b                                           ; $5300: $88
	adc  b                                           ; $5301: $88
	adc  b                                           ; $5302: $88
	adc  b                                           ; $5303: $88
	adc  b                                           ; $5304: $88
	adc  b                                           ; $5305: $88
	adc  b                                           ; $5306: $88
	adc  b                                           ; $5307: $88
	adc  b                                           ; $5308: $88
	adc  b                                           ; $5309: $88
	adc  b                                           ; $530a: $88
	adc  b                                           ; $530b: $88
	adc  b                                           ; $530c: $88
	adc  b                                           ; $530d: $88
	adc  b                                           ; $530e: $88
	adc  b                                           ; $530f: $88
	adc  b                                           ; $5310: $88
	adc  b                                           ; $5311: $88
	adc  b                                           ; $5312: $88
	adc  b                                           ; $5313: $88
	adc  b                                           ; $5314: $88
	adc  b                                           ; $5315: $88
	adc  b                                           ; $5316: $88
	adc  b                                           ; $5317: $88
	adc  b                                           ; $5318: $88
	adc  b                                           ; $5319: $88
	adc  b                                           ; $531a: $88
	adc  b                                           ; $531b: $88
	adc  b                                           ; $531c: $88
	adc  b                                           ; $531d: $88
	adc  b                                           ; $531e: $88
	adc  b                                           ; $531f: $88
	adc  b                                           ; $5320: $88
	adc  b                                           ; $5321: $88
	adc  b                                           ; $5322: $88
	adc  b                                           ; $5323: $88
	adc  b                                           ; $5324: $88
	adc  b                                           ; $5325: $88
	adc  b                                           ; $5326: $88
	adc  b                                           ; $5327: $88
	adc  b                                           ; $5328: $88
	adc  b                                           ; $5329: $88
	adc  b                                           ; $532a: $88
	adc  b                                           ; $532b: $88
	adc  b                                           ; $532c: $88
	adc  b                                           ; $532d: $88
	adc  b                                           ; $532e: $88
	adc  b                                           ; $532f: $88
	adc  b                                           ; $5330: $88
	adc  b                                           ; $5331: $88
	adc  b                                           ; $5332: $88
	adc  b                                           ; $5333: $88
	adc  b                                           ; $5334: $88
	adc  b                                           ; $5335: $88
	adc  b                                           ; $5336: $88
	adc  b                                           ; $5337: $88
	adc  b                                           ; $5338: $88
	adc  b                                           ; $5339: $88
	adc  b                                           ; $533a: $88
	adc  b                                           ; $533b: $88
	adc  b                                           ; $533c: $88
	adc  b                                           ; $533d: $88
	adc  b                                           ; $533e: $88
	adc  b                                           ; $533f: $88
	adc  b                                           ; $5340: $88
	adc  b                                           ; $5341: $88
	adc  b                                           ; $5342: $88
	adc  b                                           ; $5343: $88
	adc  b                                           ; $5344: $88
	adc  b                                           ; $5345: $88
	adc  b                                           ; $5346: $88
	adc  b                                           ; $5347: $88
	adc  b                                           ; $5348: $88
	adc  b                                           ; $5349: $88
	adc  b                                           ; $534a: $88
	adc  b                                           ; $534b: $88
	adc  b                                           ; $534c: $88
	adc  b                                           ; $534d: $88
	adc  b                                           ; $534e: $88
	adc  b                                           ; $534f: $88
	adc  b                                           ; $5350: $88
	adc  b                                           ; $5351: $88
	adc  b                                           ; $5352: $88
	adc  b                                           ; $5353: $88
	adc  b                                           ; $5354: $88
	adc  b                                           ; $5355: $88
	adc  b                                           ; $5356: $88
	adc  b                                           ; $5357: $88
	adc  b                                           ; $5358: $88
	adc  b                                           ; $5359: $88
	adc  b                                           ; $535a: $88
	adc  b                                           ; $535b: $88
	adc  b                                           ; $535c: $88
	adc  b                                           ; $535d: $88
	adc  b                                           ; $535e: $88
	adc  b                                           ; $535f: $88
	adc  b                                           ; $5360: $88
	adc  b                                           ; $5361: $88
	adc  b                                           ; $5362: $88
	adc  b                                           ; $5363: $88
	adc  b                                           ; $5364: $88
	adc  b                                           ; $5365: $88
	adc  b                                           ; $5366: $88
	adc  b                                           ; $5367: $88
	adc  b                                           ; $5368: $88
	adc  b                                           ; $5369: $88
	adc  b                                           ; $536a: $88
	adc  b                                           ; $536b: $88
	adc  b                                           ; $536c: $88
	adc  b                                           ; $536d: $88
	adc  b                                           ; $536e: $88
	adc  b                                           ; $536f: $88
	adc  b                                           ; $5370: $88
	adc  b                                           ; $5371: $88
	adc  b                                           ; $5372: $88
	adc  b                                           ; $5373: $88
	adc  b                                           ; $5374: $88
	adc  b                                           ; $5375: $88
	adc  b                                           ; $5376: $88
	adc  b                                           ; $5377: $88
	adc  b                                           ; $5378: $88
	adc  b                                           ; $5379: $88
	adc  b                                           ; $537a: $88
	adc  b                                           ; $537b: $88
	adc  b                                           ; $537c: $88
	adc  b                                           ; $537d: $88
	adc  b                                           ; $537e: $88
	adc  b                                           ; $537f: $88
	adc  b                                           ; $5380: $88
	adc  b                                           ; $5381: $88
	adc  b                                           ; $5382: $88
	adc  b                                           ; $5383: $88
	adc  b                                           ; $5384: $88
	adc  b                                           ; $5385: $88
	adc  b                                           ; $5386: $88
	adc  b                                           ; $5387: $88
	adc  b                                           ; $5388: $88
	adc  b                                           ; $5389: $88
	adc  b                                           ; $538a: $88
	adc  b                                           ; $538b: $88
	adc  b                                           ; $538c: $88
	adc  b                                           ; $538d: $88
	adc  b                                           ; $538e: $88
	adc  b                                           ; $538f: $88
	adc  b                                           ; $5390: $88
	adc  b                                           ; $5391: $88
	adc  b                                           ; $5392: $88
	adc  b                                           ; $5393: $88
	adc  b                                           ; $5394: $88
	adc  b                                           ; $5395: $88
	adc  b                                           ; $5396: $88

Jump_0e0_5397:
	adc  b                                           ; $5397: $88
	adc  b                                           ; $5398: $88
	adc  b                                           ; $5399: $88
	adc  b                                           ; $539a: $88
	adc  b                                           ; $539b: $88
	adc  b                                           ; $539c: $88
	adc  b                                           ; $539d: $88
	adc  b                                           ; $539e: $88
	adc  b                                           ; $539f: $88
	adc  b                                           ; $53a0: $88
	adc  b                                           ; $53a1: $88
	adc  b                                           ; $53a2: $88
	adc  b                                           ; $53a3: $88
	adc  b                                           ; $53a4: $88
	adc  b                                           ; $53a5: $88
	adc  b                                           ; $53a6: $88
	adc  b                                           ; $53a7: $88
	adc  b                                           ; $53a8: $88
	adc  b                                           ; $53a9: $88
	adc  b                                           ; $53aa: $88
	adc  b                                           ; $53ab: $88
	adc  b                                           ; $53ac: $88
	adc  b                                           ; $53ad: $88
	adc  b                                           ; $53ae: $88
	adc  b                                           ; $53af: $88
	adc  b                                           ; $53b0: $88
	adc  b                                           ; $53b1: $88
	adc  b                                           ; $53b2: $88
	adc  b                                           ; $53b3: $88
	adc  b                                           ; $53b4: $88
	adc  b                                           ; $53b5: $88
	adc  b                                           ; $53b6: $88
	adc  b                                           ; $53b7: $88
	adc  b                                           ; $53b8: $88
	adc  b                                           ; $53b9: $88
	adc  b                                           ; $53ba: $88
	adc  b                                           ; $53bb: $88
	adc  b                                           ; $53bc: $88
	adc  b                                           ; $53bd: $88
	adc  b                                           ; $53be: $88
	adc  b                                           ; $53bf: $88
	adc  b                                           ; $53c0: $88
	adc  b                                           ; $53c1: $88
	adc  b                                           ; $53c2: $88
	adc  b                                           ; $53c3: $88
	adc  b                                           ; $53c4: $88
	adc  b                                           ; $53c5: $88
	adc  b                                           ; $53c6: $88
	adc  b                                           ; $53c7: $88
	adc  b                                           ; $53c8: $88
	adc  b                                           ; $53c9: $88
	adc  b                                           ; $53ca: $88
	adc  b                                           ; $53cb: $88
	adc  b                                           ; $53cc: $88
	adc  b                                           ; $53cd: $88
	adc  b                                           ; $53ce: $88
	adc  b                                           ; $53cf: $88
	adc  b                                           ; $53d0: $88
	adc  b                                           ; $53d1: $88
	adc  b                                           ; $53d2: $88
	adc  b                                           ; $53d3: $88
	adc  b                                           ; $53d4: $88
	adc  b                                           ; $53d5: $88
	adc  b                                           ; $53d6: $88
	adc  b                                           ; $53d7: $88
	adc  b                                           ; $53d8: $88
	adc  b                                           ; $53d9: $88
	adc  b                                           ; $53da: $88
	adc  b                                           ; $53db: $88
	adc  b                                           ; $53dc: $88
	adc  b                                           ; $53dd: $88
	adc  b                                           ; $53de: $88
	adc  b                                           ; $53df: $88
	adc  b                                           ; $53e0: $88
	adc  b                                           ; $53e1: $88
	adc  b                                           ; $53e2: $88
	adc  b                                           ; $53e3: $88
	adc  b                                           ; $53e4: $88
	adc  b                                           ; $53e5: $88
	adc  b                                           ; $53e6: $88
	adc  b                                           ; $53e7: $88
	adc  b                                           ; $53e8: $88
	adc  b                                           ; $53e9: $88
	adc  b                                           ; $53ea: $88
	adc  b                                           ; $53eb: $88
	adc  b                                           ; $53ec: $88
	adc  b                                           ; $53ed: $88
	adc  b                                           ; $53ee: $88
	adc  b                                           ; $53ef: $88
	adc  b                                           ; $53f0: $88
	adc  b                                           ; $53f1: $88
	adc  b                                           ; $53f2: $88
	adc  b                                           ; $53f3: $88
	adc  b                                           ; $53f4: $88
	adc  b                                           ; $53f5: $88
	adc  b                                           ; $53f6: $88
	adc  b                                           ; $53f7: $88
	adc  b                                           ; $53f8: $88
	adc  b                                           ; $53f9: $88
	adc  b                                           ; $53fa: $88
	adc  b                                           ; $53fb: $88
	adc  b                                           ; $53fc: $88
	adc  b                                           ; $53fd: $88
	adc  b                                           ; $53fe: $88
	adc  b                                           ; $53ff: $88
	adc  b                                           ; $5400: $88
	adc  b                                           ; $5401: $88
	adc  b                                           ; $5402: $88
	adc  b                                           ; $5403: $88
	adc  b                                           ; $5404: $88
	adc  b                                           ; $5405: $88
	adc  b                                           ; $5406: $88
	adc  b                                           ; $5407: $88
	adc  b                                           ; $5408: $88
	adc  b                                           ; $5409: $88
	adc  b                                           ; $540a: $88
	adc  b                                           ; $540b: $88
	adc  b                                           ; $540c: $88
	adc  b                                           ; $540d: $88
	adc  b                                           ; $540e: $88
	adc  b                                           ; $540f: $88
	adc  b                                           ; $5410: $88
	adc  b                                           ; $5411: $88
	adc  b                                           ; $5412: $88
	adc  b                                           ; $5413: $88
	adc  b                                           ; $5414: $88
	adc  b                                           ; $5415: $88
	adc  b                                           ; $5416: $88
	adc  b                                           ; $5417: $88
	adc  b                                           ; $5418: $88
	adc  b                                           ; $5419: $88
	adc  b                                           ; $541a: $88
	adc  b                                           ; $541b: $88
	adc  b                                           ; $541c: $88
	adc  b                                           ; $541d: $88
	adc  b                                           ; $541e: $88
	adc  b                                           ; $541f: $88
	adc  b                                           ; $5420: $88
	adc  b                                           ; $5421: $88
	adc  b                                           ; $5422: $88
	adc  b                                           ; $5423: $88
	adc  b                                           ; $5424: $88
	adc  b                                           ; $5425: $88
	adc  b                                           ; $5426: $88
	adc  b                                           ; $5427: $88
	adc  b                                           ; $5428: $88
	adc  b                                           ; $5429: $88
	adc  b                                           ; $542a: $88
	adc  b                                           ; $542b: $88
	adc  b                                           ; $542c: $88
	adc  b                                           ; $542d: $88
	adc  b                                           ; $542e: $88
	adc  b                                           ; $542f: $88
	adc  b                                           ; $5430: $88
	adc  b                                           ; $5431: $88
	adc  b                                           ; $5432: $88
	adc  b                                           ; $5433: $88
	adc  b                                           ; $5434: $88
	adc  b                                           ; $5435: $88
	adc  b                                           ; $5436: $88
	adc  b                                           ; $5437: $88
	adc  b                                           ; $5438: $88
	adc  b                                           ; $5439: $88
	adc  b                                           ; $543a: $88
	adc  b                                           ; $543b: $88
	adc  b                                           ; $543c: $88
	adc  b                                           ; $543d: $88
	adc  b                                           ; $543e: $88
	adc  b                                           ; $543f: $88
	adc  b                                           ; $5440: $88
	adc  b                                           ; $5441: $88
	adc  b                                           ; $5442: $88
	adc  b                                           ; $5443: $88
	adc  b                                           ; $5444: $88
	adc  b                                           ; $5445: $88
	adc  b                                           ; $5446: $88
	adc  b                                           ; $5447: $88
	adc  b                                           ; $5448: $88
	adc  b                                           ; $5449: $88
	adc  b                                           ; $544a: $88
	adc  b                                           ; $544b: $88
	adc  b                                           ; $544c: $88
	adc  b                                           ; $544d: $88
	adc  b                                           ; $544e: $88
	adc  b                                           ; $544f: $88
	adc  b                                           ; $5450: $88
	adc  b                                           ; $5451: $88
	adc  b                                           ; $5452: $88
	adc  b                                           ; $5453: $88
	adc  b                                           ; $5454: $88
	adc  b                                           ; $5455: $88
	adc  b                                           ; $5456: $88
	adc  b                                           ; $5457: $88
	adc  b                                           ; $5458: $88
	adc  b                                           ; $5459: $88
	adc  b                                           ; $545a: $88
	adc  b                                           ; $545b: $88
	adc  b                                           ; $545c: $88
	adc  b                                           ; $545d: $88
	adc  b                                           ; $545e: $88
	adc  b                                           ; $545f: $88
	adc  b                                           ; $5460: $88
	adc  b                                           ; $5461: $88
	adc  b                                           ; $5462: $88
	adc  b                                           ; $5463: $88
	adc  b                                           ; $5464: $88
	adc  b                                           ; $5465: $88
	adc  b                                           ; $5466: $88
	adc  b                                           ; $5467: $88
	adc  b                                           ; $5468: $88
	adc  b                                           ; $5469: $88
	adc  b                                           ; $546a: $88
	adc  b                                           ; $546b: $88
	adc  b                                           ; $546c: $88
	adc  b                                           ; $546d: $88
	adc  b                                           ; $546e: $88
	adc  b                                           ; $546f: $88
	adc  b                                           ; $5470: $88
	adc  b                                           ; $5471: $88
	adc  b                                           ; $5472: $88
	adc  b                                           ; $5473: $88
	adc  b                                           ; $5474: $88
	adc  b                                           ; $5475: $88
	adc  b                                           ; $5476: $88
	adc  b                                           ; $5477: $88
	adc  b                                           ; $5478: $88
	adc  b                                           ; $5479: $88
	adc  b                                           ; $547a: $88
	adc  b                                           ; $547b: $88
	adc  b                                           ; $547c: $88
	adc  b                                           ; $547d: $88
	adc  b                                           ; $547e: $88
	adc  b                                           ; $547f: $88
	adc  b                                           ; $5480: $88
	adc  b                                           ; $5481: $88
	adc  b                                           ; $5482: $88
	adc  b                                           ; $5483: $88
	adc  b                                           ; $5484: $88
	adc  b                                           ; $5485: $88
	adc  b                                           ; $5486: $88
	adc  b                                           ; $5487: $88
	adc  b                                           ; $5488: $88
	adc  b                                           ; $5489: $88
	adc  b                                           ; $548a: $88
	adc  b                                           ; $548b: $88
	adc  b                                           ; $548c: $88
	adc  b                                           ; $548d: $88
	adc  b                                           ; $548e: $88
	adc  b                                           ; $548f: $88
	adc  b                                           ; $5490: $88
	adc  b                                           ; $5491: $88
	adc  b                                           ; $5492: $88
	adc  b                                           ; $5493: $88
	adc  b                                           ; $5494: $88
	adc  b                                           ; $5495: $88
	adc  b                                           ; $5496: $88
	adc  b                                           ; $5497: $88
	adc  b                                           ; $5498: $88
	adc  b                                           ; $5499: $88
	adc  b                                           ; $549a: $88
	adc  b                                           ; $549b: $88
	adc  b                                           ; $549c: $88
	adc  b                                           ; $549d: $88
	adc  b                                           ; $549e: $88
	adc  b                                           ; $549f: $88
	adc  b                                           ; $54a0: $88
	adc  b                                           ; $54a1: $88
	adc  b                                           ; $54a2: $88
	adc  b                                           ; $54a3: $88
	adc  b                                           ; $54a4: $88
	adc  b                                           ; $54a5: $88
	adc  b                                           ; $54a6: $88
	adc  b                                           ; $54a7: $88
	adc  b                                           ; $54a8: $88
	adc  b                                           ; $54a9: $88
	adc  b                                           ; $54aa: $88
	adc  b                                           ; $54ab: $88
	adc  b                                           ; $54ac: $88
	adc  b                                           ; $54ad: $88
	adc  b                                           ; $54ae: $88
	adc  b                                           ; $54af: $88
	adc  b                                           ; $54b0: $88
	adc  b                                           ; $54b1: $88
	adc  b                                           ; $54b2: $88
	adc  b                                           ; $54b3: $88
	adc  b                                           ; $54b4: $88
	adc  b                                           ; $54b5: $88
	adc  b                                           ; $54b6: $88
	adc  b                                           ; $54b7: $88
	adc  b                                           ; $54b8: $88
	adc  b                                           ; $54b9: $88
	adc  b                                           ; $54ba: $88
	adc  b                                           ; $54bb: $88
	adc  b                                           ; $54bc: $88
	adc  b                                           ; $54bd: $88
	adc  b                                           ; $54be: $88
	adc  b                                           ; $54bf: $88
	adc  b                                           ; $54c0: $88
	adc  b                                           ; $54c1: $88
	adc  b                                           ; $54c2: $88
	adc  b                                           ; $54c3: $88
	adc  b                                           ; $54c4: $88
	adc  b                                           ; $54c5: $88
	adc  b                                           ; $54c6: $88
	adc  b                                           ; $54c7: $88
	adc  b                                           ; $54c8: $88
	adc  b                                           ; $54c9: $88
	adc  b                                           ; $54ca: $88
	adc  b                                           ; $54cb: $88
	adc  b                                           ; $54cc: $88
	adc  b                                           ; $54cd: $88
	adc  b                                           ; $54ce: $88
	adc  b                                           ; $54cf: $88
	adc  b                                           ; $54d0: $88
	adc  b                                           ; $54d1: $88
	adc  b                                           ; $54d2: $88
	adc  b                                           ; $54d3: $88
	adc  b                                           ; $54d4: $88
	adc  b                                           ; $54d5: $88
	adc  b                                           ; $54d6: $88
	adc  b                                           ; $54d7: $88
	adc  b                                           ; $54d8: $88
	adc  b                                           ; $54d9: $88
	adc  b                                           ; $54da: $88
	adc  b                                           ; $54db: $88
	adc  b                                           ; $54dc: $88
	adc  b                                           ; $54dd: $88
	adc  b                                           ; $54de: $88
	adc  b                                           ; $54df: $88
	adc  b                                           ; $54e0: $88
	adc  b                                           ; $54e1: $88
	adc  b                                           ; $54e2: $88
	adc  b                                           ; $54e3: $88
	adc  b                                           ; $54e4: $88
	adc  b                                           ; $54e5: $88
	adc  b                                           ; $54e6: $88
	adc  b                                           ; $54e7: $88
	adc  b                                           ; $54e8: $88
	adc  b                                           ; $54e9: $88
	adc  b                                           ; $54ea: $88
	adc  b                                           ; $54eb: $88
	adc  b                                           ; $54ec: $88
	adc  b                                           ; $54ed: $88
	adc  b                                           ; $54ee: $88
	adc  b                                           ; $54ef: $88
	adc  b                                           ; $54f0: $88
	adc  b                                           ; $54f1: $88
	adc  b                                           ; $54f2: $88
	adc  b                                           ; $54f3: $88
	adc  b                                           ; $54f4: $88
	adc  b                                           ; $54f5: $88
	adc  b                                           ; $54f6: $88
	adc  b                                           ; $54f7: $88
	adc  b                                           ; $54f8: $88
	adc  b                                           ; $54f9: $88
	adc  b                                           ; $54fa: $88
	adc  b                                           ; $54fb: $88
	adc  b                                           ; $54fc: $88
	adc  b                                           ; $54fd: $88
	adc  b                                           ; $54fe: $88
	adc  b                                           ; $54ff: $88
	adc  b                                           ; $5500: $88
	adc  b                                           ; $5501: $88
	adc  b                                           ; $5502: $88
	adc  b                                           ; $5503: $88
	adc  b                                           ; $5504: $88
	adc  b                                           ; $5505: $88
	adc  b                                           ; $5506: $88
	adc  b                                           ; $5507: $88
	adc  b                                           ; $5508: $88
	adc  b                                           ; $5509: $88
	adc  b                                           ; $550a: $88
	adc  b                                           ; $550b: $88
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	adc  b                                           ; $550e: $88
	adc  b                                           ; $550f: $88
	adc  b                                           ; $5510: $88
	adc  b                                           ; $5511: $88
	adc  b                                           ; $5512: $88
	adc  b                                           ; $5513: $88
	adc  b                                           ; $5514: $88
	adc  b                                           ; $5515: $88
	adc  b                                           ; $5516: $88
	adc  b                                           ; $5517: $88
	adc  b                                           ; $5518: $88
	adc  b                                           ; $5519: $88
	adc  b                                           ; $551a: $88
	adc  b                                           ; $551b: $88
	adc  b                                           ; $551c: $88
	adc  b                                           ; $551d: $88
	adc  b                                           ; $551e: $88
	adc  b                                           ; $551f: $88
	adc  b                                           ; $5520: $88
	adc  b                                           ; $5521: $88
	adc  b                                           ; $5522: $88
	adc  b                                           ; $5523: $88
	adc  b                                           ; $5524: $88
	adc  b                                           ; $5525: $88
	adc  b                                           ; $5526: $88
	adc  b                                           ; $5527: $88
	adc  b                                           ; $5528: $88
	adc  b                                           ; $5529: $88
	adc  b                                           ; $552a: $88
	adc  b                                           ; $552b: $88
	adc  b                                           ; $552c: $88
	adc  b                                           ; $552d: $88
	adc  b                                           ; $552e: $88
	adc  b                                           ; $552f: $88
	adc  b                                           ; $5530: $88
	adc  b                                           ; $5531: $88
	adc  b                                           ; $5532: $88
	adc  b                                           ; $5533: $88
	adc  b                                           ; $5534: $88
	adc  b                                           ; $5535: $88
	adc  b                                           ; $5536: $88
	adc  b                                           ; $5537: $88
	adc  b                                           ; $5538: $88
	adc  b                                           ; $5539: $88
	adc  b                                           ; $553a: $88
	adc  b                                           ; $553b: $88
	adc  b                                           ; $553c: $88
	adc  b                                           ; $553d: $88
	adc  b                                           ; $553e: $88
	adc  b                                           ; $553f: $88
	adc  b                                           ; $5540: $88
	adc  b                                           ; $5541: $88
	adc  b                                           ; $5542: $88
	adc  b                                           ; $5543: $88
	adc  b                                           ; $5544: $88
	adc  b                                           ; $5545: $88
	adc  b                                           ; $5546: $88
	adc  b                                           ; $5547: $88
	adc  b                                           ; $5548: $88
	adc  b                                           ; $5549: $88
	adc  b                                           ; $554a: $88
	adc  b                                           ; $554b: $88
	adc  b                                           ; $554c: $88
	adc  b                                           ; $554d: $88
	adc  b                                           ; $554e: $88
	adc  b                                           ; $554f: $88
	adc  b                                           ; $5550: $88
	adc  b                                           ; $5551: $88
	adc  b                                           ; $5552: $88
	adc  b                                           ; $5553: $88
	adc  b                                           ; $5554: $88
	adc  b                                           ; $5555: $88
	adc  b                                           ; $5556: $88
	adc  b                                           ; $5557: $88
	adc  b                                           ; $5558: $88
	adc  b                                           ; $5559: $88
	adc  b                                           ; $555a: $88
	adc  b                                           ; $555b: $88
	adc  b                                           ; $555c: $88
	adc  b                                           ; $555d: $88
	adc  b                                           ; $555e: $88
	adc  b                                           ; $555f: $88
	adc  b                                           ; $5560: $88
	adc  b                                           ; $5561: $88
	adc  b                                           ; $5562: $88
	adc  b                                           ; $5563: $88
	adc  b                                           ; $5564: $88
	adc  b                                           ; $5565: $88
	adc  b                                           ; $5566: $88
	adc  b                                           ; $5567: $88
	adc  b                                           ; $5568: $88
	adc  b                                           ; $5569: $88
	adc  b                                           ; $556a: $88
	adc  b                                           ; $556b: $88
	adc  b                                           ; $556c: $88
	adc  b                                           ; $556d: $88
	adc  b                                           ; $556e: $88
	adc  b                                           ; $556f: $88
	adc  b                                           ; $5570: $88
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	adc  b                                           ; $5573: $88
	adc  b                                           ; $5574: $88
	adc  b                                           ; $5575: $88
	adc  b                                           ; $5576: $88
	adc  b                                           ; $5577: $88
	adc  b                                           ; $5578: $88
	adc  b                                           ; $5579: $88
	adc  b                                           ; $557a: $88
	adc  b                                           ; $557b: $88
	adc  b                                           ; $557c: $88
	adc  b                                           ; $557d: $88
	adc  b                                           ; $557e: $88
	adc  b                                           ; $557f: $88
	adc  b                                           ; $5580: $88
	adc  b                                           ; $5581: $88
	adc  b                                           ; $5582: $88
	adc  b                                           ; $5583: $88
	adc  b                                           ; $5584: $88
	adc  b                                           ; $5585: $88

Jump_0e0_5586:
	adc  b                                           ; $5586: $88
	adc  b                                           ; $5587: $88
	adc  b                                           ; $5588: $88
	adc  b                                           ; $5589: $88
	adc  b                                           ; $558a: $88
	adc  b                                           ; $558b: $88
	adc  b                                           ; $558c: $88
	adc  b                                           ; $558d: $88
	adc  b                                           ; $558e: $88
	adc  b                                           ; $558f: $88
	adc  b                                           ; $5590: $88
	adc  b                                           ; $5591: $88
	adc  b                                           ; $5592: $88
	adc  b                                           ; $5593: $88
	adc  b                                           ; $5594: $88
	adc  b                                           ; $5595: $88
	adc  b                                           ; $5596: $88
	adc  b                                           ; $5597: $88
	adc  b                                           ; $5598: $88
	adc  b                                           ; $5599: $88
	adc  b                                           ; $559a: $88
	adc  b                                           ; $559b: $88
	adc  b                                           ; $559c: $88
	adc  b                                           ; $559d: $88
	adc  b                                           ; $559e: $88
	adc  b                                           ; $559f: $88
	adc  b                                           ; $55a0: $88
	adc  b                                           ; $55a1: $88
	adc  b                                           ; $55a2: $88
	adc  b                                           ; $55a3: $88
	adc  b                                           ; $55a4: $88
	adc  b                                           ; $55a5: $88
	adc  b                                           ; $55a6: $88
	adc  b                                           ; $55a7: $88
	adc  b                                           ; $55a8: $88
	adc  b                                           ; $55a9: $88
	adc  b                                           ; $55aa: $88
	adc  b                                           ; $55ab: $88
	adc  b                                           ; $55ac: $88
	adc  b                                           ; $55ad: $88
	adc  b                                           ; $55ae: $88
	adc  b                                           ; $55af: $88
	adc  b                                           ; $55b0: $88
	adc  b                                           ; $55b1: $88
	adc  b                                           ; $55b2: $88
	adc  b                                           ; $55b3: $88
	adc  b                                           ; $55b4: $88
	adc  b                                           ; $55b5: $88
	adc  b                                           ; $55b6: $88
	adc  b                                           ; $55b7: $88
	adc  b                                           ; $55b8: $88
	adc  b                                           ; $55b9: $88
	adc  b                                           ; $55ba: $88
	adc  b                                           ; $55bb: $88
	adc  b                                           ; $55bc: $88
	adc  b                                           ; $55bd: $88
	adc  b                                           ; $55be: $88
	adc  b                                           ; $55bf: $88
	adc  b                                           ; $55c0: $88
	adc  b                                           ; $55c1: $88
	adc  b                                           ; $55c2: $88
	adc  b                                           ; $55c3: $88
	adc  b                                           ; $55c4: $88
	adc  b                                           ; $55c5: $88
	adc  b                                           ; $55c6: $88
	adc  b                                           ; $55c7: $88
	adc  b                                           ; $55c8: $88
	adc  b                                           ; $55c9: $88
	adc  b                                           ; $55ca: $88
	adc  b                                           ; $55cb: $88
	adc  b                                           ; $55cc: $88
	adc  b                                           ; $55cd: $88
	adc  b                                           ; $55ce: $88
	adc  b                                           ; $55cf: $88
	adc  b                                           ; $55d0: $88
	adc  b                                           ; $55d1: $88
	adc  b                                           ; $55d2: $88
	adc  b                                           ; $55d3: $88
	adc  b                                           ; $55d4: $88
	adc  b                                           ; $55d5: $88
	adc  b                                           ; $55d6: $88
	adc  b                                           ; $55d7: $88
	adc  b                                           ; $55d8: $88
	adc  b                                           ; $55d9: $88
	adc  b                                           ; $55da: $88
	adc  b                                           ; $55db: $88
	adc  b                                           ; $55dc: $88
	adc  b                                           ; $55dd: $88
	adc  b                                           ; $55de: $88
	adc  b                                           ; $55df: $88
	adc  b                                           ; $55e0: $88
	adc  b                                           ; $55e1: $88
	adc  b                                           ; $55e2: $88
	adc  b                                           ; $55e3: $88
	adc  b                                           ; $55e4: $88
	adc  b                                           ; $55e5: $88
	adc  b                                           ; $55e6: $88
	adc  b                                           ; $55e7: $88
	adc  b                                           ; $55e8: $88
	adc  b                                           ; $55e9: $88
	adc  b                                           ; $55ea: $88
	adc  b                                           ; $55eb: $88
	adc  b                                           ; $55ec: $88
	adc  b                                           ; $55ed: $88
	adc  b                                           ; $55ee: $88
	adc  b                                           ; $55ef: $88
	adc  b                                           ; $55f0: $88
	adc  b                                           ; $55f1: $88
	adc  b                                           ; $55f2: $88
	adc  b                                           ; $55f3: $88
	adc  b                                           ; $55f4: $88
	adc  b                                           ; $55f5: $88
	adc  b                                           ; $55f6: $88
	adc  b                                           ; $55f7: $88
	adc  b                                           ; $55f8: $88
	adc  b                                           ; $55f9: $88
	adc  b                                           ; $55fa: $88
	adc  b                                           ; $55fb: $88
	adc  b                                           ; $55fc: $88
	adc  b                                           ; $55fd: $88
	adc  b                                           ; $55fe: $88
	adc  b                                           ; $55ff: $88
	adc  b                                           ; $5600: $88
	adc  b                                           ; $5601: $88
	adc  b                                           ; $5602: $88
	adc  b                                           ; $5603: $88
	adc  b                                           ; $5604: $88
	adc  b                                           ; $5605: $88
	adc  b                                           ; $5606: $88
	adc  b                                           ; $5607: $88
	adc  b                                           ; $5608: $88
	adc  b                                           ; $5609: $88
	adc  b                                           ; $560a: $88
	adc  b                                           ; $560b: $88
	adc  b                                           ; $560c: $88
	adc  b                                           ; $560d: $88
	adc  b                                           ; $560e: $88
	adc  b                                           ; $560f: $88
	adc  b                                           ; $5610: $88
	adc  b                                           ; $5611: $88
	adc  b                                           ; $5612: $88
	adc  b                                           ; $5613: $88
	adc  b                                           ; $5614: $88
	adc  b                                           ; $5615: $88
	adc  b                                           ; $5616: $88
	adc  b                                           ; $5617: $88
	adc  b                                           ; $5618: $88
	adc  b                                           ; $5619: $88
	adc  b                                           ; $561a: $88
	adc  b                                           ; $561b: $88
	adc  b                                           ; $561c: $88
	adc  b                                           ; $561d: $88
	adc  b                                           ; $561e: $88
	adc  b                                           ; $561f: $88
	adc  b                                           ; $5620: $88
	adc  b                                           ; $5621: $88
	adc  b                                           ; $5622: $88
	adc  b                                           ; $5623: $88
	adc  b                                           ; $5624: $88
	adc  b                                           ; $5625: $88
	adc  b                                           ; $5626: $88
	adc  b                                           ; $5627: $88
	adc  b                                           ; $5628: $88
	adc  b                                           ; $5629: $88
	adc  b                                           ; $562a: $88
	adc  b                                           ; $562b: $88
	adc  b                                           ; $562c: $88
	adc  b                                           ; $562d: $88
	adc  b                                           ; $562e: $88
	adc  b                                           ; $562f: $88
	adc  b                                           ; $5630: $88
	adc  b                                           ; $5631: $88
	adc  b                                           ; $5632: $88
	adc  b                                           ; $5633: $88
	adc  b                                           ; $5634: $88
	adc  b                                           ; $5635: $88
	adc  b                                           ; $5636: $88
	adc  b                                           ; $5637: $88
	adc  b                                           ; $5638: $88
	adc  b                                           ; $5639: $88
	adc  b                                           ; $563a: $88
	adc  b                                           ; $563b: $88
	adc  b                                           ; $563c: $88
	adc  b                                           ; $563d: $88
	adc  b                                           ; $563e: $88
	adc  b                                           ; $563f: $88
	adc  b                                           ; $5640: $88
	adc  b                                           ; $5641: $88
	adc  b                                           ; $5642: $88
	adc  b                                           ; $5643: $88
	adc  b                                           ; $5644: $88
	adc  b                                           ; $5645: $88
	adc  b                                           ; $5646: $88
	adc  b                                           ; $5647: $88
	adc  b                                           ; $5648: $88
	adc  b                                           ; $5649: $88
	adc  b                                           ; $564a: $88
	adc  b                                           ; $564b: $88
	adc  b                                           ; $564c: $88
	adc  b                                           ; $564d: $88
	adc  b                                           ; $564e: $88
	adc  b                                           ; $564f: $88
	adc  b                                           ; $5650: $88
	adc  b                                           ; $5651: $88
	adc  b                                           ; $5652: $88
	adc  b                                           ; $5653: $88
	adc  b                                           ; $5654: $88
	adc  b                                           ; $5655: $88
	adc  b                                           ; $5656: $88
	adc  b                                           ; $5657: $88
	adc  b                                           ; $5658: $88
	adc  b                                           ; $5659: $88
	adc  b                                           ; $565a: $88
	adc  b                                           ; $565b: $88
	adc  b                                           ; $565c: $88
	adc  b                                           ; $565d: $88
	adc  b                                           ; $565e: $88
	adc  b                                           ; $565f: $88
	adc  b                                           ; $5660: $88
	adc  b                                           ; $5661: $88
	adc  b                                           ; $5662: $88
	adc  b                                           ; $5663: $88
	adc  b                                           ; $5664: $88
	adc  b                                           ; $5665: $88
	adc  b                                           ; $5666: $88
	adc  b                                           ; $5667: $88
	adc  b                                           ; $5668: $88
	adc  b                                           ; $5669: $88
	adc  b                                           ; $566a: $88
	adc  b                                           ; $566b: $88
	adc  b                                           ; $566c: $88
	adc  b                                           ; $566d: $88
	adc  b                                           ; $566e: $88
	adc  b                                           ; $566f: $88
	adc  b                                           ; $5670: $88
	adc  b                                           ; $5671: $88
	adc  b                                           ; $5672: $88
	adc  b                                           ; $5673: $88
	adc  b                                           ; $5674: $88
	adc  b                                           ; $5675: $88
	adc  b                                           ; $5676: $88
	adc  b                                           ; $5677: $88
	adc  b                                           ; $5678: $88
	adc  b                                           ; $5679: $88
	adc  b                                           ; $567a: $88
	adc  b                                           ; $567b: $88
	adc  b                                           ; $567c: $88
	adc  b                                           ; $567d: $88
	adc  b                                           ; $567e: $88
	adc  b                                           ; $567f: $88
	adc  b                                           ; $5680: $88
	adc  b                                           ; $5681: $88
	adc  b                                           ; $5682: $88
	adc  b                                           ; $5683: $88
	adc  b                                           ; $5684: $88
	adc  b                                           ; $5685: $88
	adc  b                                           ; $5686: $88
	adc  b                                           ; $5687: $88
	adc  b                                           ; $5688: $88
	adc  b                                           ; $5689: $88
	adc  b                                           ; $568a: $88
	adc  b                                           ; $568b: $88
	adc  b                                           ; $568c: $88
	adc  b                                           ; $568d: $88
	adc  b                                           ; $568e: $88
	adc  b                                           ; $568f: $88
	adc  b                                           ; $5690: $88
	adc  b                                           ; $5691: $88
	adc  b                                           ; $5692: $88
	adc  b                                           ; $5693: $88
	adc  b                                           ; $5694: $88
	adc  b                                           ; $5695: $88
	adc  b                                           ; $5696: $88
	adc  b                                           ; $5697: $88
	adc  b                                           ; $5698: $88
	adc  b                                           ; $5699: $88
	adc  b                                           ; $569a: $88
	adc  b                                           ; $569b: $88
	adc  b                                           ; $569c: $88
	adc  b                                           ; $569d: $88
	adc  b                                           ; $569e: $88
	adc  b                                           ; $569f: $88
	adc  b                                           ; $56a0: $88
	adc  b                                           ; $56a1: $88
	adc  b                                           ; $56a2: $88
	adc  b                                           ; $56a3: $88
	adc  b                                           ; $56a4: $88
	adc  b                                           ; $56a5: $88
	adc  b                                           ; $56a6: $88
	adc  b                                           ; $56a7: $88
	adc  b                                           ; $56a8: $88
	adc  b                                           ; $56a9: $88
	adc  b                                           ; $56aa: $88
	adc  b                                           ; $56ab: $88
	adc  b                                           ; $56ac: $88
	adc  b                                           ; $56ad: $88
	adc  b                                           ; $56ae: $88
	adc  b                                           ; $56af: $88
	adc  b                                           ; $56b0: $88
	adc  b                                           ; $56b1: $88
	adc  b                                           ; $56b2: $88
	adc  b                                           ; $56b3: $88
	adc  b                                           ; $56b4: $88
	adc  b                                           ; $56b5: $88
	adc  b                                           ; $56b6: $88
	adc  b                                           ; $56b7: $88
	adc  b                                           ; $56b8: $88
	adc  b                                           ; $56b9: $88
	adc  b                                           ; $56ba: $88
	adc  b                                           ; $56bb: $88
	adc  b                                           ; $56bc: $88
	adc  b                                           ; $56bd: $88
	adc  b                                           ; $56be: $88
	adc  b                                           ; $56bf: $88
	adc  b                                           ; $56c0: $88
	adc  b                                           ; $56c1: $88
	adc  b                                           ; $56c2: $88
	adc  b                                           ; $56c3: $88
	adc  b                                           ; $56c4: $88
	adc  b                                           ; $56c5: $88
	adc  b                                           ; $56c6: $88
	adc  b                                           ; $56c7: $88
	adc  b                                           ; $56c8: $88
	adc  b                                           ; $56c9: $88
	adc  b                                           ; $56ca: $88
	adc  b                                           ; $56cb: $88
	adc  b                                           ; $56cc: $88
	adc  b                                           ; $56cd: $88
	adc  b                                           ; $56ce: $88
	adc  b                                           ; $56cf: $88
	adc  b                                           ; $56d0: $88
	adc  b                                           ; $56d1: $88
	adc  b                                           ; $56d2: $88
	adc  b                                           ; $56d3: $88
	adc  b                                           ; $56d4: $88
	adc  b                                           ; $56d5: $88
	adc  b                                           ; $56d6: $88
	adc  b                                           ; $56d7: $88
	adc  b                                           ; $56d8: $88
	adc  b                                           ; $56d9: $88
	adc  b                                           ; $56da: $88
	adc  b                                           ; $56db: $88
	adc  b                                           ; $56dc: $88
	adc  b                                           ; $56dd: $88
	adc  b                                           ; $56de: $88
	adc  b                                           ; $56df: $88
	adc  b                                           ; $56e0: $88
	adc  b                                           ; $56e1: $88
	adc  b                                           ; $56e2: $88
	adc  b                                           ; $56e3: $88
	adc  b                                           ; $56e4: $88
	adc  b                                           ; $56e5: $88
	adc  b                                           ; $56e6: $88
	adc  b                                           ; $56e7: $88
	adc  b                                           ; $56e8: $88
	adc  b                                           ; $56e9: $88
	adc  b                                           ; $56ea: $88
	adc  b                                           ; $56eb: $88
	adc  b                                           ; $56ec: $88
	adc  b                                           ; $56ed: $88
	adc  b                                           ; $56ee: $88
	adc  b                                           ; $56ef: $88
	adc  b                                           ; $56f0: $88
	adc  b                                           ; $56f1: $88
	adc  b                                           ; $56f2: $88
	adc  b                                           ; $56f3: $88
	adc  b                                           ; $56f4: $88
	adc  b                                           ; $56f5: $88
	adc  b                                           ; $56f6: $88
	adc  b                                           ; $56f7: $88
	adc  b                                           ; $56f8: $88
	adc  b                                           ; $56f9: $88
	adc  b                                           ; $56fa: $88
	adc  b                                           ; $56fb: $88
	adc  b                                           ; $56fc: $88
	adc  b                                           ; $56fd: $88
	adc  b                                           ; $56fe: $88
	adc  b                                           ; $56ff: $88
	adc  b                                           ; $5700: $88
	adc  b                                           ; $5701: $88
	adc  b                                           ; $5702: $88
	adc  b                                           ; $5703: $88
	adc  b                                           ; $5704: $88
	adc  b                                           ; $5705: $88
	adc  b                                           ; $5706: $88
	adc  b                                           ; $5707: $88
	adc  b                                           ; $5708: $88
	adc  b                                           ; $5709: $88
	adc  b                                           ; $570a: $88
	adc  b                                           ; $570b: $88
	adc  b                                           ; $570c: $88
	adc  b                                           ; $570d: $88
	adc  b                                           ; $570e: $88
	adc  b                                           ; $570f: $88
	adc  b                                           ; $5710: $88
	adc  b                                           ; $5711: $88
	adc  b                                           ; $5712: $88
	adc  b                                           ; $5713: $88
	adc  b                                           ; $5714: $88
	adc  b                                           ; $5715: $88
	adc  b                                           ; $5716: $88
	adc  b                                           ; $5717: $88
	adc  b                                           ; $5718: $88
	adc  b                                           ; $5719: $88
	adc  b                                           ; $571a: $88
	adc  b                                           ; $571b: $88
	adc  b                                           ; $571c: $88
	adc  b                                           ; $571d: $88
	adc  b                                           ; $571e: $88
	adc  b                                           ; $571f: $88
	adc  b                                           ; $5720: $88
	adc  b                                           ; $5721: $88
	adc  b                                           ; $5722: $88
	adc  b                                           ; $5723: $88
	adc  b                                           ; $5724: $88
	adc  b                                           ; $5725: $88
	adc  b                                           ; $5726: $88
	adc  b                                           ; $5727: $88
	adc  b                                           ; $5728: $88
	adc  b                                           ; $5729: $88
	adc  b                                           ; $572a: $88
	adc  b                                           ; $572b: $88
	adc  b                                           ; $572c: $88
	adc  b                                           ; $572d: $88
	adc  b                                           ; $572e: $88
	adc  b                                           ; $572f: $88
	adc  b                                           ; $5730: $88
	adc  b                                           ; $5731: $88
	adc  b                                           ; $5732: $88
	adc  b                                           ; $5733: $88
	adc  b                                           ; $5734: $88
	adc  b                                           ; $5735: $88
	adc  b                                           ; $5736: $88
	adc  b                                           ; $5737: $88
	adc  b                                           ; $5738: $88
	adc  b                                           ; $5739: $88
	adc  b                                           ; $573a: $88
	adc  b                                           ; $573b: $88
	adc  b                                           ; $573c: $88
	adc  b                                           ; $573d: $88
	adc  b                                           ; $573e: $88
	adc  b                                           ; $573f: $88
	adc  b                                           ; $5740: $88
	adc  b                                           ; $5741: $88
	adc  b                                           ; $5742: $88
	adc  b                                           ; $5743: $88
	adc  b                                           ; $5744: $88
	adc  b                                           ; $5745: $88
	adc  b                                           ; $5746: $88
	adc  b                                           ; $5747: $88
	adc  b                                           ; $5748: $88
	adc  b                                           ; $5749: $88
	adc  b                                           ; $574a: $88
	adc  b                                           ; $574b: $88
	adc  b                                           ; $574c: $88
	adc  b                                           ; $574d: $88
	adc  b                                           ; $574e: $88
	adc  b                                           ; $574f: $88
	adc  b                                           ; $5750: $88
	adc  b                                           ; $5751: $88
	adc  b                                           ; $5752: $88
	adc  b                                           ; $5753: $88
	adc  b                                           ; $5754: $88
	adc  b                                           ; $5755: $88
	adc  b                                           ; $5756: $88
	adc  b                                           ; $5757: $88
	adc  b                                           ; $5758: $88
	adc  b                                           ; $5759: $88
	adc  b                                           ; $575a: $88
	adc  b                                           ; $575b: $88
	adc  b                                           ; $575c: $88
	adc  b                                           ; $575d: $88
	adc  b                                           ; $575e: $88
	adc  b                                           ; $575f: $88
	adc  b                                           ; $5760: $88
	adc  b                                           ; $5761: $88
	adc  b                                           ; $5762: $88
	adc  b                                           ; $5763: $88
	adc  b                                           ; $5764: $88
	adc  b                                           ; $5765: $88
	adc  b                                           ; $5766: $88
	adc  b                                           ; $5767: $88
	adc  b                                           ; $5768: $88
	adc  b                                           ; $5769: $88
	adc  b                                           ; $576a: $88
	adc  b                                           ; $576b: $88
	adc  b                                           ; $576c: $88
	adc  b                                           ; $576d: $88
	adc  b                                           ; $576e: $88
	adc  b                                           ; $576f: $88
	adc  b                                           ; $5770: $88
	adc  b                                           ; $5771: $88
	adc  b                                           ; $5772: $88
	adc  b                                           ; $5773: $88
	adc  b                                           ; $5774: $88
	adc  b                                           ; $5775: $88
	adc  b                                           ; $5776: $88
	adc  b                                           ; $5777: $88
	adc  b                                           ; $5778: $88
	adc  b                                           ; $5779: $88
	adc  b                                           ; $577a: $88
	adc  b                                           ; $577b: $88
	adc  b                                           ; $577c: $88
	adc  b                                           ; $577d: $88
	adc  b                                           ; $577e: $88
	adc  b                                           ; $577f: $88
	adc  b                                           ; $5780: $88
	adc  b                                           ; $5781: $88
	adc  b                                           ; $5782: $88
	adc  b                                           ; $5783: $88
	adc  b                                           ; $5784: $88
	adc  b                                           ; $5785: $88
	adc  b                                           ; $5786: $88
	adc  b                                           ; $5787: $88
	adc  b                                           ; $5788: $88
	adc  b                                           ; $5789: $88
	adc  b                                           ; $578a: $88
	adc  b                                           ; $578b: $88
	adc  b                                           ; $578c: $88
	adc  b                                           ; $578d: $88
	adc  b                                           ; $578e: $88
	adc  b                                           ; $578f: $88
	adc  b                                           ; $5790: $88
	adc  b                                           ; $5791: $88
	adc  b                                           ; $5792: $88
	adc  b                                           ; $5793: $88
	adc  b                                           ; $5794: $88
	adc  b                                           ; $5795: $88
	adc  b                                           ; $5796: $88
	adc  b                                           ; $5797: $88
	adc  b                                           ; $5798: $88
	adc  b                                           ; $5799: $88
	adc  b                                           ; $579a: $88
	adc  b                                           ; $579b: $88
	adc  b                                           ; $579c: $88
	adc  b                                           ; $579d: $88
	adc  b                                           ; $579e: $88
	adc  b                                           ; $579f: $88
	adc  b                                           ; $57a0: $88
	adc  b                                           ; $57a1: $88
	adc  b                                           ; $57a2: $88
	adc  b                                           ; $57a3: $88
	adc  b                                           ; $57a4: $88
	adc  b                                           ; $57a5: $88
	adc  b                                           ; $57a6: $88
	adc  b                                           ; $57a7: $88
	adc  b                                           ; $57a8: $88
	adc  b                                           ; $57a9: $88
	adc  b                                           ; $57aa: $88
	adc  b                                           ; $57ab: $88
	adc  b                                           ; $57ac: $88
	adc  b                                           ; $57ad: $88
	adc  b                                           ; $57ae: $88
	adc  b                                           ; $57af: $88
	adc  b                                           ; $57b0: $88
	adc  b                                           ; $57b1: $88
	adc  b                                           ; $57b2: $88
	adc  b                                           ; $57b3: $88
	adc  b                                           ; $57b4: $88
	adc  b                                           ; $57b5: $88
	adc  b                                           ; $57b6: $88
	adc  b                                           ; $57b7: $88
	adc  b                                           ; $57b8: $88
	adc  b                                           ; $57b9: $88
	adc  b                                           ; $57ba: $88
	adc  b                                           ; $57bb: $88
	adc  b                                           ; $57bc: $88
	adc  b                                           ; $57bd: $88
	adc  b                                           ; $57be: $88
	adc  b                                           ; $57bf: $88
	adc  b                                           ; $57c0: $88
	adc  b                                           ; $57c1: $88
	adc  b                                           ; $57c2: $88
	adc  b                                           ; $57c3: $88
	adc  b                                           ; $57c4: $88
	adc  b                                           ; $57c5: $88
	adc  b                                           ; $57c6: $88
	adc  b                                           ; $57c7: $88
	adc  b                                           ; $57c8: $88
	adc  b                                           ; $57c9: $88
	adc  b                                           ; $57ca: $88
	adc  b                                           ; $57cb: $88
	adc  b                                           ; $57cc: $88
	adc  b                                           ; $57cd: $88
	adc  b                                           ; $57ce: $88
	adc  b                                           ; $57cf: $88
	adc  b                                           ; $57d0: $88
	adc  b                                           ; $57d1: $88
	adc  b                                           ; $57d2: $88
	adc  b                                           ; $57d3: $88
	adc  b                                           ; $57d4: $88
	adc  b                                           ; $57d5: $88
	adc  b                                           ; $57d6: $88
	adc  b                                           ; $57d7: $88
	adc  b                                           ; $57d8: $88
	adc  b                                           ; $57d9: $88
	adc  b                                           ; $57da: $88
	adc  b                                           ; $57db: $88
	adc  b                                           ; $57dc: $88
	adc  b                                           ; $57dd: $88
	adc  b                                           ; $57de: $88
	adc  b                                           ; $57df: $88
	adc  b                                           ; $57e0: $88
	adc  b                                           ; $57e1: $88
	adc  b                                           ; $57e2: $88
	adc  b                                           ; $57e3: $88
	adc  b                                           ; $57e4: $88
	adc  b                                           ; $57e5: $88
	adc  b                                           ; $57e6: $88
	adc  b                                           ; $57e7: $88
	adc  b                                           ; $57e8: $88
	adc  b                                           ; $57e9: $88
	adc  b                                           ; $57ea: $88
	adc  b                                           ; $57eb: $88
	adc  b                                           ; $57ec: $88
	adc  b                                           ; $57ed: $88
	adc  b                                           ; $57ee: $88
	adc  b                                           ; $57ef: $88
	adc  b                                           ; $57f0: $88
	adc  b                                           ; $57f1: $88
	adc  b                                           ; $57f2: $88
	adc  b                                           ; $57f3: $88
	adc  b                                           ; $57f4: $88
	adc  b                                           ; $57f5: $88
	adc  b                                           ; $57f6: $88
	adc  b                                           ; $57f7: $88
	adc  b                                           ; $57f8: $88
	adc  b                                           ; $57f9: $88
	adc  b                                           ; $57fa: $88
	adc  b                                           ; $57fb: $88
	adc  b                                           ; $57fc: $88
	adc  b                                           ; $57fd: $88
	adc  b                                           ; $57fe: $88
	adc  b                                           ; $57ff: $88
	adc  b                                           ; $5800: $88
	adc  b                                           ; $5801: $88
	adc  b                                           ; $5802: $88
	adc  b                                           ; $5803: $88
	adc  b                                           ; $5804: $88
	adc  b                                           ; $5805: $88
	adc  b                                           ; $5806: $88
	adc  b                                           ; $5807: $88
	adc  b                                           ; $5808: $88
	adc  b                                           ; $5809: $88
	adc  b                                           ; $580a: $88
	adc  b                                           ; $580b: $88
	adc  b                                           ; $580c: $88
	adc  b                                           ; $580d: $88
	adc  b                                           ; $580e: $88
	adc  b                                           ; $580f: $88
	adc  b                                           ; $5810: $88
	adc  b                                           ; $5811: $88
	adc  b                                           ; $5812: $88
	adc  b                                           ; $5813: $88
	adc  b                                           ; $5814: $88
	adc  b                                           ; $5815: $88
	adc  b                                           ; $5816: $88
	adc  b                                           ; $5817: $88
	adc  b                                           ; $5818: $88
	adc  b                                           ; $5819: $88
	adc  b                                           ; $581a: $88
	adc  b                                           ; $581b: $88
	adc  b                                           ; $581c: $88
	adc  b                                           ; $581d: $88
	adc  b                                           ; $581e: $88
	adc  b                                           ; $581f: $88
	adc  b                                           ; $5820: $88
	adc  b                                           ; $5821: $88
	adc  b                                           ; $5822: $88
	adc  b                                           ; $5823: $88
	adc  b                                           ; $5824: $88
	adc  b                                           ; $5825: $88
	adc  b                                           ; $5826: $88
	adc  b                                           ; $5827: $88
	adc  b                                           ; $5828: $88
	adc  b                                           ; $5829: $88
	adc  b                                           ; $582a: $88
	adc  b                                           ; $582b: $88
	adc  b                                           ; $582c: $88
	adc  b                                           ; $582d: $88
	adc  b                                           ; $582e: $88
	adc  b                                           ; $582f: $88
	adc  b                                           ; $5830: $88
	adc  b                                           ; $5831: $88
	adc  b                                           ; $5832: $88
	adc  b                                           ; $5833: $88
	sbc  c                                           ; $5834: $99
	sbc  c                                           ; $5835: $99
	sbc  c                                           ; $5836: $99
	adc  b                                           ; $5837: $88
	adc  b                                           ; $5838: $88
	adc  b                                           ; $5839: $88
	adc  b                                           ; $583a: $88
	adc  c                                           ; $583b: $89
	sbc  b                                           ; $583c: $98
	adc  b                                           ; $583d: $88
	adc  b                                           ; $583e: $88
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	adc  b                                           ; $5841: $88
	adc  b                                           ; $5842: $88
	add  a                                           ; $5843: $87
	adc  b                                           ; $5844: $88
	adc  b                                           ; $5845: $88
	add  a                                           ; $5846: $87
	ld   [hl], a                                     ; $5847: $77
	ld   [hl], a                                     ; $5848: $77
	ld   [hl], a                                     ; $5849: $77
	ld   [hl], a                                     ; $584a: $77
	ld   [hl], a                                     ; $584b: $77
	adc  b                                           ; $584c: $88
	adc  e                                           ; $584d: $8b
	ei                                               ; $584e: $fb
	inc  d                                           ; $584f: $14
	rst  $38                                         ; $5850: $ff
	ld   sp, $f66f                                   ; $5851: $31 $6f $f6
	rla                                              ; $5854: $17
	ei                                               ; $5855: $fb
	ld   d, a                                        ; $5856: $57
	sbc  [hl]                                        ; $5857: $9e
	ld   sp, hl                                      ; $5858: $f9
	ld   l, d                                        ; $5859: $6a
	db   $ec                                         ; $585a: $ec
	xor  c                                           ; $585b: $a9
	adc  c                                           ; $585c: $89
	jp   z, Jump_0e0_7699                            ; $585d: $ca $99 $76

	ld   [hl], a                                     ; $5860: $77
	ld   d, h                                        ; $5861: $54
	ld   b, l                                        ; $5862: $45
	ld   h, l                                        ; $5863: $65
	ld   b, h                                        ; $5864: $44
	ld   h, h                                        ; $5865: $64
	ld   [hl-], a                                    ; $5866: $32
	ld   hl, $1111                                   ; $5867: $21 $11 $11
	ld   de, $2511                                   ; $586a: $11 $11 $25
	ld   l, b                                        ; $586d: $68
	rst  $28                                         ; $586e: $ef
	rst  $38                                         ; $586f: $ff
	rst  $38                                         ; $5870: $ff
	rst  $38                                         ; $5871: $ff
	rst  $38                                         ; $5872: $ff
	rst  $38                                         ; $5873: $ff
	cp   d                                           ; $5874: $ba
	sbc  d                                           ; $5875: $9a
	ld   h, l                                        ; $5876: $65
	inc  [hl]                                        ; $5877: $34
	adc  c                                           ; $5878: $89
	cp   b                                           ; $5879: $b8
	adc  $fc                                         ; $587a: $ce $fc
	ld   [hl], l                                     ; $587c: $75
	ld   hl, $1111                                   ; $587d: $21 $11 $11
	ld   de, $1111                                   ; $5880: $11 $11 $11
	add  hl, de                                      ; $5883: $19
	rst  $38                                         ; $5884: $ff
	rst  $38                                         ; $5885: $ff
	rst  $38                                         ; $5886: $ff
	rst  $38                                         ; $5887: $ff
	db   $fd                                         ; $5888: $fd
	cp   d                                           ; $5889: $ba
	ld   de, $6511                                   ; $588a: $11 $11 $65
	adc  a                                           ; $588d: $8f
	rst  $38                                         ; $588e: $ff
	rst  $38                                         ; $588f: $ff
	rst  $38                                         ; $5890: $ff
	rst  $38                                         ; $5891: $ff
	and  c                                           ; $5892: $a1
	ld   de, $1111                                   ; $5893: $11 $11 $11
	ld   de, $1111                                   ; $5896: $11 $11 $11
	ld   e, $ff                                      ; $5899: $1e $ff
	rst  $38                                         ; $589b: $ff
	rst  $38                                         ; $589c: $ff
	ei                                               ; $589d: $fb
	ret  z                                           ; $589e: $c8

	ld   b, c                                        ; $589f: $41
	dec  d                                           ; $58a0: $15
	rst  $38                                         ; $58a1: $ff
	rst  $38                                         ; $58a2: $ff
	rst  $38                                         ; $58a3: $ff
	rst  $38                                         ; $58a4: $ff
	rst  $38                                         ; $58a5: $ff
	rst  $38                                         ; $58a6: $ff
	db   $fd                                         ; $58a7: $fd
	ld   [hl], l                                     ; $58a8: $75
	ld   [hl], a                                     ; $58a9: $77
	inc  hl                                          ; $58aa: $23
	ld   de, $1111                                   ; $58ab: $11 $11 $11
	ld   de, $1111                                   ; $58ae: $11 $11 $11
	rst  $38                                         ; $58b1: $ff
	rst  $38                                         ; $58b2: $ff
	rst  $38                                         ; $58b3: $ff
	rst  $38                                         ; $58b4: $ff
	or   [hl]                                        ; $58b5: $b6
	ld   de, $457c                                   ; $58b6: $11 $7c $45
	rst  $38                                         ; $58b9: $ff
	rst  $38                                         ; $58ba: $ff
	rst  $38                                         ; $58bb: $ff
	rst  $38                                         ; $58bc: $ff
	db   $fc                                         ; $58bd: $fc
	ld   b, l                                        ; $58be: $45
	sla  c                                           ; $58bf: $cb $21
	add  hl, de                                      ; $58c1: $19
	ld   d, c                                        ; $58c2: $51
	ld   de, $1111                                   ; $58c3: $11 $11 $11
	ld   de, $ff1d                                   ; $58c6: $11 $1d $ff
	rst  $38                                         ; $58c9: $ff
	rst  $38                                         ; $58ca: $ff
	rst  $30                                         ; $58cb: $f7
	ld   de, $fd5b                                   ; $58cc: $11 $5b $fd
	ld   a, a                                        ; $58cf: $7f
	rst  $38                                         ; $58d0: $ff
	db   $fc                                         ; $58d1: $fc
	rst  $38                                         ; $58d2: $ff
	rst  $38                                         ; $58d3: $ff
	push af                                          ; $58d4: $f5
	ld   c, l                                        ; $58d5: $4d
	ld   a, [$6811]                                  ; $58d6: $fa $11 $68
	ld   sp, $1111                                   ; $58d9: $31 $11 $11
	ld   de, $4f11                                   ; $58dc: $11 $11 $4f
	rst  $38                                         ; $58df: $ff
	rst  $38                                         ; $58e0: $ff
	rst  $38                                         ; $58e1: $ff
	sub  c                                           ; $58e2: $91
	ld   de, $ffff                                   ; $58e3: $11 $ff $ff
	rst  $38                                         ; $58e6: $ff
	rst  $38                                         ; $58e7: $ff
	rst  JumpTable                                         ; $58e8: $df
	rst  $38                                         ; $58e9: $ff
	rst  $38                                         ; $58ea: $ff
	ld   hl, sp-$34                                  ; $58eb: $f8 $cc
	ld   d, c                                        ; $58ed: $51
	inc  d                                           ; $58ee: $14
	ld   sp, $1111                                   ; $58ef: $31 $11 $11
	ld   de, $1711                                   ; $58f2: $11 $11 $17
	rst  $38                                         ; $58f5: $ff
	db   $fc                                         ; $58f6: $fc
	rst  $38                                         ; $58f7: $ff
	ld   a, [$9f21]                                  ; $58f8: $fa $21 $9f
	rst  $38                                         ; $58fb: $ff
	db   $fd                                         ; $58fc: $fd
	rst  $38                                         ; $58fd: $ff
	cp   $ff                                         ; $58fe: $fe $ff
	rst  $38                                         ; $5900: $ff
	rst  $38                                         ; $5901: $ff
	sub  d                                           ; $5902: $92
	ld   b, [hl]                                     ; $5903: $46
	inc  hl                                          ; $5904: $23
	sbc  b                                           ; $5905: $98
	ld   de, $1111                                   ; $5906: $11 $11 $11
	ld   de, $1f11                                   ; $5909: $11 $11 $1f
	rst  $38                                         ; $590c: $ff
	rst  $38                                         ; $590d: $ff
	rst  $28                                         ; $590e: $ef
	push af                                          ; $590f: $f5
	adc  c                                           ; $5910: $89
	cp   a                                           ; $5911: $bf
	rst  $38                                         ; $5912: $ff
	rst  $38                                         ; $5913: $ff
	db   $fc                                         ; $5914: $fc
	rst  $38                                         ; $5915: $ff
	rst  $38                                         ; $5916: $ff
	rst  $38                                         ; $5917: $ff
	db   $fd                                         ; $5918: $fd

jr_0e0_5919:
	ld   a, b                                        ; $5919: $78
	add  c                                           ; $591a: $81
	dec  sp                                          ; $591b: $3b
	ld   h, c                                        ; $591c: $61
	ld   de, $1111                                   ; $591d: $11 $11 $11
	ld   de, $ff16                                   ; $5920: $11 $16 $ff
	cp   $f7                                         ; $5923: $fe $f7
	adc  a                                           ; $5925: $8f
	cp   e                                           ; $5926: $bb
	rst  $38                                         ; $5927: $ff
	rst  $38                                         ; $5928: $ff
	rst  $38                                         ; $5929: $ff
	rst  $38                                         ; $592a: $ff
	rst  $38                                         ; $592b: $ff
	rst  $38                                         ; $592c: $ff
	rst  $38                                         ; $592d: $ff
	ld   [hl], e                                     ; $592e: $73
	ld   d, h                                        ; $592f: $54
	ld   a, d                                        ; $5930: $7a
	ld   d, h                                        ; $5931: $54
	ld   d, c                                        ; $5932: $51
	ld   de, $1111                                   ; $5933: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $5936: $11 $12 $ff
	set  7, a                                        ; $5939: $cb $ff
	rst  $28                                         ; $593b: $ef
	cp   $ff                                         ; $593c: $fe $ff
	rst  $38                                         ; $593e: $ff
	rst  $38                                         ; $593f: $ff
	rst  $38                                         ; $5940: $ff
	rst  $38                                         ; $5941: $ff
	rst  $38                                         ; $5942: $ff
	rst  $38                                         ; $5943: $ff
	or   d                                           ; $5944: $b2
	dec  h                                           ; $5945: $25
	ld   b, d                                        ; $5946: $42
	ld   l, b                                        ; $5947: $68
	ld   sp, $1111                                   ; $5948: $31 $11 $11
	ld   de, $1611                                   ; $594b: $11 $11 $16
	rst  $38                                         ; $594e: $ff
	rst  ToBoot                                         ; $594f: $c7
	rst  $38                                         ; $5950: $ff
	rst  $38                                         ; $5951: $ff
	ld   a, [$ffdf]                                  ; $5952: $fa $df $ff
	rst  $38                                         ; $5955: $ff
	rst  $38                                         ; $5956: $ff
	rst  $38                                         ; $5957: $ff
	rst  $38                                         ; $5958: $ff
	rst  $38                                         ; $5959: $ff
	sub  $53                                         ; $595a: $d6 $53
	ld   de, $4199                                   ; $595c: $11 $99 $41
	ld   de, $1111                                   ; $595f: $11 $11 $11
	ld   de, $4b17                                   ; $5962: $11 $17 $4b
	ld   sp, hl                                      ; $5965: $f9
	rst  $38                                         ; $5966: $ff
	rst  $38                                         ; $5967: $ff
	db   $ec                                         ; $5968: $ec
	rst  $38                                         ; $5969: $ff
	rst  $38                                         ; $596a: $ff
	rst  $38                                         ; $596b: $ff
	rst  $38                                         ; $596c: $ff
	rst  $38                                         ; $596d: $ff
	rst  $38                                         ; $596e: $ff
	rst  $38                                         ; $596f: $ff
	add  $11                                         ; $5970: $c6 $11
	jr   c, jr_0e0_5919                              ; $5972: $38 $a5

	ld   de, $1111                                   ; $5974: $11 $11 $11
	ld   de, $1111                                   ; $5977: $11 $11 $11
	sbc  h                                           ; $597a: $9c
	ld   [hl], h                                     ; $597b: $74
	rst  $38                                         ; $597c: $ff
	rst  $38                                         ; $597d: $ff
	rst  $38                                         ; $597e: $ff
	rst  $28                                         ; $597f: $ef
	rst  $38                                         ; $5980: $ff
	rst  $38                                         ; $5981: $ff
	rst  $38                                         ; $5982: $ff
	rst  $38                                         ; $5983: $ff
	rst  $38                                         ; $5984: $ff
	rst  $38                                         ; $5985: $ff
	or   e                                           ; $5986: $b3
	ld   h, $21                                      ; $5987: $26 $21
	ld   b, h                                        ; $5989: $44
	ld   sp, $1111                                   ; $598a: $31 $11 $11
	ld   de, $1111                                   ; $598d: $11 $11 $11
	ld   a, [de]                                     ; $5990: $1a
	ld   sp, hl                                      ; $5991: $f9
	cp   a                                           ; $5992: $bf
	rst  $38                                         ; $5993: $ff
	rst  $38                                         ; $5994: $ff
	rst  $38                                         ; $5995: $ff
	rst  $28                                         ; $5996: $ef
	rst  $38                                         ; $5997: $ff
	rst  $38                                         ; $5998: $ff
	rst  $38                                         ; $5999: $ff
	rst  $38                                         ; $599a: $ff
	rst  $38                                         ; $599b: $ff
	db   $e4                                         ; $599c: $e4
	inc  d                                           ; $599d: $14
	ld   h, h                                        ; $599e: $64
	ld   b, e                                        ; $599f: $43
	ld   de, $1111                                   ; $59a0: $11 $11 $11
	ld   de, $1111                                   ; $59a3: $11 $11 $11
	ld   a, [de]                                     ; $59a6: $1a
	ld   sp, hl                                      ; $59a7: $f9

Jump_0e0_59a8:
	ld   a, a                                        ; $59a8: $7f
	rst  $38                                         ; $59a9: $ff
	rst  $38                                         ; $59aa: $ff
	call z, $ffff                                    ; $59ab: $cc $ff $ff
	rst  $38                                         ; $59ae: $ff
	rst  $38                                         ; $59af: $ff
	rst  $38                                         ; $59b0: $ff
	rst  $38                                         ; $59b1: $ff
	or   $17                                         ; $59b2: $f6 $17
	ld   h, d                                        ; $59b4: $62
	ld   sp, $1113                                   ; $59b5: $31 $13 $11
	ld   de, $1111                                   ; $59b8: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $59bb: $11 $11 $ff
	ld   e, a                                        ; $59be: $5f
	rst  $38                                         ; $59bf: $ff
	rst  $38                                         ; $59c0: $ff
	rst  $38                                         ; $59c1: $ff
	db   $ec                                         ; $59c2: $ec
	rst  $38                                         ; $59c3: $ff
	rst  $38                                         ; $59c4: $ff
	rst  $38                                         ; $59c5: $ff
	rst  $38                                         ; $59c6: $ff
	rst  $38                                         ; $59c7: $ff
	db   $fc                                         ; $59c8: $fc
	jr   c, jr_0e0_5a2d                              ; $59c9: $38 $62

	ld   d, [hl]                                     ; $59cb: $56
	ld   [de], a                                     ; $59cc: $12
	ld   hl, $1111                                   ; $59cd: $21 $11 $11
	ld   de, $1111                                   ; $59d0: $11 $11 $11
	jr   c, @-$31                                    ; $59d3: $38 $cd

	rst  $38                                         ; $59d5: $ff
	rst  $38                                         ; $59d6: $ff
	cp   $ff                                         ; $59d7: $fe $ff
	cp   a                                           ; $59d9: $bf
	rst  $38                                         ; $59da: $ff
	rst  $38                                         ; $59db: $ff
	rst  $38                                         ; $59dc: $ff
	rst  $38                                         ; $59dd: $ff
	rst  $38                                         ; $59de: $ff
	add  $a5                                         ; $59df: $c6 $a5
	dec  sp                                          ; $59e1: $3b
	ld   h, e                                        ; $59e2: $63
	ld   sp, $1111                                   ; $59e3: $31 $11 $11
	ld   de, $1111                                   ; $59e6: $11 $11 $11
	ld   de, $f84d                                   ; $59e9: $11 $4d $f8
	rst  $38                                         ; $59ec: $ff
	rst  $38                                         ; $59ed: $ff
	db   $fc                                         ; $59ee: $fc
	cp   $ff                                         ; $59ef: $fe $ff
	rst  $38                                         ; $59f1: $ff
	rst  $38                                         ; $59f2: $ff
	rst  $38                                         ; $59f3: $ff
	rst  $38                                         ; $59f4: $ff
	rst  $38                                         ; $59f5: $ff
	and  a                                           ; $59f6: $a7
	and  [hl]                                        ; $59f7: $a6
	ld   h, a                                        ; $59f8: $67
	inc  [hl]                                        ; $59f9: $34
	ld   sp, $1111                                   ; $59fa: $31 $11 $11
	ld   de, $1111                                   ; $59fd: $11 $11 $11
	ld   de, $da4c                                   ; $5a00: $11 $4c $da
	rst  $38                                         ; $5a03: $ff
	rst  $38                                         ; $5a04: $ff
	cp   $cf                                         ; $5a05: $fe $cf
	rst  $28                                         ; $5a07: $ef
	rst  $38                                         ; $5a08: $ff
	rst  $38                                         ; $5a09: $ff
	rst  $38                                         ; $5a0a: $ff
	rst  $38                                         ; $5a0b: $ff
	rst  $38                                         ; $5a0c: $ff
	xor  c                                           ; $5a0d: $a9
	or   a                                           ; $5a0e: $b7
	ld   a, d                                        ; $5a0f: $7a
	ld   h, [hl]                                     ; $5a10: $66
	ld   [hl], d                                     ; $5a11: $72
	ld   de, $1111                                   ; $5a12: $11 $11 $11
	ld   de, $1111                                   ; $5a15: $11 $11 $11
	add  hl, de                                      ; $5a18: $19
	call $ffde                                       ; $5a19: $cd $de $ff
	rst  $38                                         ; $5a1c: $ff
	db   $fc                                         ; $5a1d: $fc
	sbc  h                                           ; $5a1e: $9c
	rst  $38                                         ; $5a1f: $ff
	rst  $38                                         ; $5a20: $ff
	rst  $38                                         ; $5a21: $ff
	rst  $38                                         ; $5a22: $ff
	rst  $38                                         ; $5a23: $ff
	jp   c, $9a99                                    ; $5a24: $da $99 $9a

	and  a                                           ; $5a27: $a7
	and  a                                           ; $5a28: $a7
	ld   b, l                                        ; $5a29: $45
	ld   de, $1111                                   ; $5a2a: $11 $11 $11

jr_0e0_5a2d:
	ld   de, $1111                                   ; $5a2d: $11 $11 $11
	ld   d, $de                                      ; $5a30: $16 $de
	rst  JumpTable                                         ; $5a32: $df
	rst  $38                                         ; $5a33: $ff
	rst  $38                                         ; $5a34: $ff
	db   $db                                         ; $5a35: $db
	adc  $ff                                         ; $5a36: $ce $ff
	rst  $38                                         ; $5a38: $ff
	rst  $38                                         ; $5a39: $ff
	rst  $38                                         ; $5a3a: $ff
	rst  $38                                         ; $5a3b: $ff
	ei                                               ; $5a3c: $fb
	xor  c                                           ; $5a3d: $a9
	adc  c                                           ; $5a3e: $89
	sbc  c                                           ; $5a3f: $99
	xor  b                                           ; $5a40: $a8
	ld   [hl], l                                     ; $5a41: $75
	ld   de, $1111                                   ; $5a42: $11 $11 $11
	ld   de, $1111                                   ; $5a45: $11 $11 $11
	ld   de, $cf7d                                   ; $5a48: $11 $7d $cf
	rst  $38                                         ; $5a4b: $ff
	rst  $38                                         ; $5a4c: $ff
	rst  $38                                         ; $5a4d: $ff
	db   $ed                                         ; $5a4e: $ed
	xor  $ff                                         ; $5a4f: $ee $ff
	rst  $38                                         ; $5a51: $ff
	rst  $38                                         ; $5a52: $ff
	rst  $38                                         ; $5a53: $ff
	db   $fd                                         ; $5a54: $fd
	res  1, c                                        ; $5a55: $cb $89
	add  a                                           ; $5a57: $87
	add  a                                           ; $5a58: $87
	ld   h, a                                        ; $5a59: $67
	ld   d, e                                        ; $5a5a: $53
	ld   hl, $1111                                   ; $5a5b: $21 $11 $11
	ld   de, $1111                                   ; $5a5e: $11 $11 $11
	ld   de, $7b14                                   ; $5a61: $11 $14 $7b
	cp   $ff                                         ; $5a64: $fe $ff
	rst  $38                                         ; $5a66: $ff
	rst  $38                                         ; $5a67: $ff
	rst  $38                                         ; $5a68: $ff
	rst  $38                                         ; $5a69: $ff
	cp   $fe                                         ; $5a6a: $fe $fe
	db   $ed                                         ; $5a6c: $ed
	sbc  $ee                                         ; $5a6d: $de $ee
	db   $ed                                         ; $5a6f: $ed
	call z, $abbb                                    ; $5a70: $cc $bb $ab
	xor  c                                           ; $5a73: $a9
	add  a                                           ; $5a74: $87
	ld   h, l                                        ; $5a75: $65
	ld   b, e                                        ; $5a76: $43
	ld   hl, $1111                                   ; $5a77: $21 $11 $11

Call_0e0_5a7a:
	ld   de, $1111                                   ; $5a7a: $11 $11 $11
	ld   de, $2311                                   ; $5a7d: $11 $11 $23
	ld   l, b                                        ; $5a80: $68
	sbc  e                                           ; $5a81: $9b
	rst  JumpTable                                         ; $5a82: $df
	rst  $38                                         ; $5a83: $ff
	rst  $38                                         ; $5a84: $ff
	rst  $38                                         ; $5a85: $ff
	rst  $38                                         ; $5a86: $ff
	rst  $38                                         ; $5a87: $ff
	rst  $38                                         ; $5a88: $ff
	rst  $38                                         ; $5a89: $ff
	rst  $38                                         ; $5a8a: $ff
	cp   $dd                                         ; $5a8b: $fe $dd
	res  3, b                                        ; $5a8d: $cb $98
	ld   h, l                                        ; $5a8f: $65
	ld   [hl-], a                                    ; $5a90: $32
	ld   de, $1111                                   ; $5a91: $11 $11 $11
	ld   de, $1111                                   ; $5a94: $11 $11 $11
	ld   de, $1111                                   ; $5a97: $11 $11 $11
	dec  h                                           ; $5a9a: $25
	adc  e                                           ; $5a9b: $8b
	rst  $28                                         ; $5a9c: $ef
	rst  $38                                         ; $5a9d: $ff
	rst  $38                                         ; $5a9e: $ff
	rst  $38                                         ; $5a9f: $ff
	rst  $38                                         ; $5aa0: $ff
	rst  $38                                         ; $5aa1: $ff
	rst  $38                                         ; $5aa2: $ff
	rst  $38                                         ; $5aa3: $ff
	rst  $38                                         ; $5aa4: $ff
	rst  $38                                         ; $5aa5: $ff
	db   $eb                                         ; $5aa6: $eb
	xor  c                                           ; $5aa7: $a9

Call_0e0_5aa8:
	halt                                             ; $5aa8: $76
	ld   b, e                                        ; $5aa9: $43
	ld   hl, $1111                                   ; $5aaa: $21 $11 $11
	ld   de, $1111                                   ; $5aad: $11 $11 $11
	ld   de, $1111                                   ; $5ab0: $11 $11 $11
	ld   de, $7914                                   ; $5ab3: $11 $14 $79
	adc  $ff                                         ; $5ab6: $ce $ff
	rst  $38                                         ; $5ab8: $ff
	rst  $38                                         ; $5ab9: $ff
	rst  $38                                         ; $5aba: $ff
	rst  $38                                         ; $5abb: $ff
	rst  $38                                         ; $5abc: $ff
	rst  $38                                         ; $5abd: $ff
	rst  $38                                         ; $5abe: $ff
	rst  $38                                         ; $5abf: $ff
	db   $fd                                         ; $5ac0: $fd
	jp   z, $75a8                                    ; $5ac1: $ca $a8 $75

	ld   b, e                                        ; $5ac4: $43
	ld   hl, $1111                                   ; $5ac5: $21 $11 $11
	ld   de, $1111                                   ; $5ac8: $11 $11 $11
	ld   de, $1111                                   ; $5acb: $11 $11 $11
	ld   de, $5703                                   ; $5ace: $11 $03 $57
	sbc  e                                           ; $5ad1: $9b
	rst  JumpTable                                         ; $5ad2: $df
	rst  $38                                         ; $5ad3: $ff
	rst  $38                                         ; $5ad4: $ff
	rst  $38                                         ; $5ad5: $ff
	rst  $38                                         ; $5ad6: $ff
	rst  $38                                         ; $5ad7: $ff
	rst  $38                                         ; $5ad8: $ff
	rst  $38                                         ; $5ad9: $ff
	rst  $38                                         ; $5ada: $ff
	rst  $38                                         ; $5adb: $ff
	call c, $97aa                                    ; $5adc: $dc $aa $97
	ld   h, [hl]                                     ; $5adf: $66
	ld   b, e                                        ; $5ae0: $43
	ld   hl, $1111                                   ; $5ae1: $21 $11 $11
	ld   de, $1111                                   ; $5ae4: $11 $11 $11
	ld   de, $1111                                   ; $5ae7: $11 $11 $11
	ld   de, $5714                                   ; $5aea: $11 $14 $57
	sbc  e                                           ; $5aed: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5aee: $cf
	rst  $38                                         ; $5aef: $ff
	rst  $38                                         ; $5af0: $ff
	rst  $38                                         ; $5af1: $ff
	rst  $38                                         ; $5af2: $ff
	rst  $38                                         ; $5af3: $ff
	rst  $38                                         ; $5af4: $ff
	rst  $38                                         ; $5af5: $ff
	rst  $38                                         ; $5af6: $ff
	cp   $ec                                         ; $5af7: $fe $ec
	cp   d                                           ; $5af9: $ba
	sub  a                                           ; $5afa: $97
	ld   h, l                                        ; $5afb: $65
	ld   b, e                                        ; $5afc: $43
	ld   hl, $1111                                   ; $5afd: $21 $11 $11
	ld   de, $1111                                   ; $5b00: $11 $11 $11
	ld   de, $1111                                   ; $5b03: $11 $11 $11
	ld   de, $5713                                   ; $5b06: $11 $13 $57
	sbc  d                                           ; $5b09: $9a
	cp   h                                           ; $5b0a: $bc
	rst  JumpTable                                         ; $5b0b: $df
	rst  $38                                         ; $5b0c: $ff
	rst  $38                                         ; $5b0d: $ff
	rst  $38                                         ; $5b0e: $ff
	rst  $38                                         ; $5b0f: $ff
	rst  $38                                         ; $5b10: $ff
	rst  $38                                         ; $5b11: $ff
	rst  $38                                         ; $5b12: $ff
	rst  $38                                         ; $5b13: $ff
	db   $ec                                         ; $5b14: $ec
	cp   e                                           ; $5b15: $bb
	xor  c                                           ; $5b16: $a9
	ld   [hl], a                                     ; $5b17: $77
	ld   h, l                                        ; $5b18: $65
	ld   b, e                                        ; $5b19: $43
	ld   [hl+], a                                    ; $5b1a: $22
	ld   de, $1111                                   ; $5b1b: $11 $11 $11
	ld   de, $1111                                   ; $5b1e: $11 $11 $11
	ld   de, $0111                                   ; $5b21: $11 $11 $01
	inc  [hl]                                        ; $5b24: $34
	ld   h, a                                        ; $5b25: $67
	adc  c                                           ; $5b26: $89
	cp   e                                           ; $5b27: $bb
	sbc  $ef                                         ; $5b28: $de $ef
	rst  $38                                         ; $5b2a: $ff
	rst  $38                                         ; $5b2b: $ff
	rst  $38                                         ; $5b2c: $ff
	rst  $38                                         ; $5b2d: $ff
	rst  $38                                         ; $5b2e: $ff
	rst  $38                                         ; $5b2f: $ff
	rst  $28                                         ; $5b30: $ef
	db   $ed                                         ; $5b31: $ed
	res  5, c                                        ; $5b32: $cb $a9
	adc  b                                           ; $5b34: $88
	halt                                             ; $5b35: $76
	ld   h, l                                        ; $5b36: $65
	ld   b, h                                        ; $5b37: $44
	inc  sp                                          ; $5b38: $33
	inc  sp                                          ; $5b39: $33
	ld   [hl-], a                                    ; $5b3a: $32
	ld   [hl+], a                                    ; $5b3b: $22
	ld   [hl+], a                                    ; $5b3c: $22
	ld   [hl+], a                                    ; $5b3d: $22
	ld   [hl+], a                                    ; $5b3e: $22
	inc  hl                                          ; $5b3f: $23
	ld   [hl+], a                                    ; $5b40: $22
	inc  hl                                          ; $5b41: $23
	ld   b, h                                        ; $5b42: $44
	ld   d, [hl]                                     ; $5b43: $56
	ld   a, b                                        ; $5b44: $78
	sbc  d                                           ; $5b45: $9a
	cp   e                                           ; $5b46: $bb
	call z, $cddd                                    ; $5b47: $cc $dd $cd
	db   $dd                                         ; $5b4a: $dd
	db   $dd                                         ; $5b4b: $dd
	db   $dd                                         ; $5b4c: $dd
	db   $dd                                         ; $5b4d: $dd
	call c, $bbdc                                    ; $5b4e: $dc $dc $bb
	xor  d                                           ; $5b51: $aa
	sbc  d                                           ; $5b52: $9a
	sbc  b                                           ; $5b53: $98
	sbc  b                                           ; $5b54: $98
	ld   [hl], a                                     ; $5b55: $77
	halt                                             ; $5b56: $76
	ld   h, [hl]                                     ; $5b57: $66
	ld   h, l                                        ; $5b58: $65
	ld   d, l                                        ; $5b59: $55
	ld   d, l                                        ; $5b5a: $55
	ld   d, l                                        ; $5b5b: $55
	ld   d, l                                        ; $5b5c: $55
	ld   d, l                                        ; $5b5d: $55
	ld   d, l                                        ; $5b5e: $55
	ld   b, h                                        ; $5b5f: $44
	ld   d, h                                        ; $5b60: $54
	ld   b, h                                        ; $5b61: $44
	ld   d, l                                        ; $5b62: $55
	ld   d, [hl]                                     ; $5b63: $56
	ld   [hl], a                                     ; $5b64: $77
	adc  c                                           ; $5b65: $89
	sbc  d                                           ; $5b66: $9a
	sbc  d                                           ; $5b67: $9a
	cp   d                                           ; $5b68: $ba
	cp   e                                           ; $5b69: $bb
	cp   e                                           ; $5b6a: $bb
	cp   e                                           ; $5b6b: $bb
	cp   e                                           ; $5b6c: $bb
	cp   e                                           ; $5b6d: $bb
	cp   d                                           ; $5b6e: $ba
	cp   d                                           ; $5b6f: $ba
	xor  c                                           ; $5b70: $a9
	sbc  c                                           ; $5b71: $99
	xor  c                                           ; $5b72: $a9
	sbc  c                                           ; $5b73: $99
	sbc  b                                           ; $5b74: $98
	sbc  c                                           ; $5b75: $99
	adc  b                                           ; $5b76: $88
	adc  b                                           ; $5b77: $88
	ld   [hl], a                                     ; $5b78: $77
	ld   [hl], a                                     ; $5b79: $77
	ld   [hl], a                                     ; $5b7a: $77
	ld   [hl], a                                     ; $5b7b: $77
	ld   [hl], a                                     ; $5b7c: $77
	ld   [hl], a                                     ; $5b7d: $77
	ld   [hl], a                                     ; $5b7e: $77
	ld   [hl], a                                     ; $5b7f: $77
	ld   [hl], a                                     ; $5b80: $77
	halt                                             ; $5b81: $76
	ld   h, [hl]                                     ; $5b82: $66
	ld   h, [hl]                                     ; $5b83: $66
	ld   h, [hl]                                     ; $5b84: $66
	ld   h, [hl]                                     ; $5b85: $66
	ld   h, [hl]                                     ; $5b86: $66
	ld   [hl], a                                     ; $5b87: $77
	ld   a, b                                        ; $5b88: $78
	adc  b                                           ; $5b89: $88
	sbc  c                                           ; $5b8a: $99
	sbc  b                                           ; $5b8b: $98
	sbc  c                                           ; $5b8c: $99
	sbc  c                                           ; $5b8d: $99
	sbc  c                                           ; $5b8e: $99
	sbc  c                                           ; $5b8f: $99
	sbc  c                                           ; $5b90: $99
	sbc  c                                           ; $5b91: $99
	sbc  c                                           ; $5b92: $99
	sbc  c                                           ; $5b93: $99
	sbc  c                                           ; $5b94: $99
	sbc  c                                           ; $5b95: $99
	sbc  c                                           ; $5b96: $99
	adc  b                                           ; $5b97: $88
	adc  b                                           ; $5b98: $88
	sbc  c                                           ; $5b99: $99
	sbc  c                                           ; $5b9a: $99
	adc  b                                           ; $5b9b: $88
	adc  b                                           ; $5b9c: $88
	adc  c                                           ; $5b9d: $89
	adc  b                                           ; $5b9e: $88
	adc  b                                           ; $5b9f: $88
	sbc  c                                           ; $5ba0: $99
	adc  b                                           ; $5ba1: $88
	adc  b                                           ; $5ba2: $88
	add  a                                           ; $5ba3: $87
	ld   [hl], a                                     ; $5ba4: $77
	ld   [hl], a                                     ; $5ba5: $77
	ld   h, [hl]                                     ; $5ba6: $66
	ld   h, [hl]                                     ; $5ba7: $66
	ld   h, [hl]                                     ; $5ba8: $66
	ld   h, [hl]                                     ; $5ba9: $66
	ld   h, [hl]                                     ; $5baa: $66
	ld   h, [hl]                                     ; $5bab: $66
	ld   h, [hl]                                     ; $5bac: $66
	ld   h, [hl]                                     ; $5bad: $66
	ld   h, [hl]                                     ; $5bae: $66
	ld   [hl], a                                     ; $5baf: $77
	ld   a, b                                        ; $5bb0: $78
	sbc  b                                           ; $5bb1: $98
	adc  b                                           ; $5bb2: $88
	sbc  b                                           ; $5bb3: $98
	adc  c                                           ; $5bb4: $89
	sbc  d                                           ; $5bb5: $9a
	xor  d                                           ; $5bb6: $aa
	xor  c                                           ; $5bb7: $a9
	sbc  c                                           ; $5bb8: $99
	xor  d                                           ; $5bb9: $aa
	sbc  d                                           ; $5bba: $9a
	xor  d                                           ; $5bbb: $aa
	xor  c                                           ; $5bbc: $a9
	sbc  d                                           ; $5bbd: $9a
	sbc  c                                           ; $5bbe: $99
	sbc  c                                           ; $5bbf: $99
	adc  c                                           ; $5bc0: $89
	sbc  c                                           ; $5bc1: $99
	sbc  b                                           ; $5bc2: $98
	adc  b                                           ; $5bc3: $88
	adc  c                                           ; $5bc4: $89
	xor  d                                           ; $5bc5: $aa
	adc  e                                           ; $5bc6: $8b
	cp   c                                           ; $5bc7: $b9
	cp   b                                           ; $5bc8: $b8
	ld   [hl], a                                     ; $5bc9: $77
	halt                                             ; $5bca: $76
	ld   b, l                                        ; $5bcb: $45
	ld   d, h                                        ; $5bcc: $54
	ld   hl, $3411                                   ; $5bcd: $21 $11 $34
	ld   d, l                                        ; $5bd0: $55
	ld   h, [hl]                                     ; $5bd1: $66
	ld   a, b                                        ; $5bd2: $78
	xor  h                                           ; $5bd3: $ac
	cp   h                                           ; $5bd4: $bc
	call c, $dcdc                                    ; $5bd5: $dc $dc $dc
	cp   h                                           ; $5bd8: $bc
	db   $dd                                         ; $5bd9: $dd
	call z, $bcdc                                    ; $5bda: $cc $dc $bc
	res  7, e                                        ; $5bdd: $cb $bb
	xor  c                                           ; $5bdf: $a9
	ld   [hl], a                                     ; $5be0: $77
	ld   b, e                                        ; $5be1: $43
	ld   [hl-], a                                    ; $5be2: $32
	ld   hl, $1111                                   ; $5be3: $21 $11 $11
	ld   de, $1111                                   ; $5be6: $11 $11 $11
	cp   a                                           ; $5be9: $bf
	rst  $38                                         ; $5bea: $ff
	rst  $38                                         ; $5beb: $ff
	rst  $38                                         ; $5bec: $ff
	ei                                               ; $5bed: $fb
	ld   sp, $7d12                                   ; $5bee: $31 $12 $7d
	reti                                             ; $5bf1: $d9


	cp   a                                           ; $5bf2: $bf
	rst  $38                                         ; $5bf3: $ff
	rst  $38                                         ; $5bf4: $ff
	reti                                             ; $5bf5: $d9


	cp   e                                           ; $5bf6: $bb
	or   a                                           ; $5bf7: $b7
	ld   b, d                                        ; $5bf8: $42
	add  hl, sp                                      ; $5bf9: $39
	db   $ed                                         ; $5bfa: $ed
	ret                                              ; $5bfb: $c9


	sbc  b                                           ; $5bfc: $98
	halt                                             ; $5bfd: $76
	ld   de, $1111                                   ; $5bfe: $11 $11 $11
	ld   de, $1f11                                   ; $5c01: $11 $11 $1f
	rst  $38                                         ; $5c04: $ff
	rst  $38                                         ; $5c05: $ff
	rst  $38                                         ; $5c06: $ff
	rst  $38                                         ; $5c07: $ff
	ld   de, $7e11                                   ; $5c08: $11 $11 $7e
	rst  $38                                         ; $5c0b: $ff
	rst  $38                                         ; $5c0c: $ff
	rst  $38                                         ; $5c0d: $ff
	rst  $38                                         ; $5c0e: $ff
	sub  e                                           ; $5c0f: $93
	inc  d                                           ; $5c10: $14
	ld   d, e                                        ; $5c11: $53
	dec  h                                           ; $5c12: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c13: $cf
	rst  $38                                         ; $5c14: $ff
	rst  $38                                         ; $5c15: $ff
	jp   z, $1181                                    ; $5c16: $ca $81 $11

	ld   de, $1111                                   ; $5c19: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $5c1c: $11 $14 $ff
	rst  $38                                         ; $5c1f: $ff
	rst  $38                                         ; $5c20: $ff
	db   $eb                                         ; $5c21: $eb
	and  [hl]                                        ; $5c22: $a6
	ld   de, $ffbf                                   ; $5c23: $11 $bf $ff
	rst  $38                                         ; $5c26: $ff
	rst  $38                                         ; $5c27: $ff
	db   $fc                                         ; $5c28: $fc
	ld   sp, $7b12                                   ; $5c29: $31 $12 $7b
	cp   e                                           ; $5c2c: $bb
	rst  $38                                         ; $5c2d: $ff
	rst  $38                                         ; $5c2e: $ff
	cp   $77                                         ; $5c2f: $fe $77
	add  h                                           ; $5c31: $84
	ld   de, $1111                                   ; $5c32: $11 $11 $11
	ld   de, $1111                                   ; $5c35: $11 $11 $11
	ld   de, $ffef                                   ; $5c38: $11 $ef $ff
	rst  $38                                         ; $5c3b: $ff
	rst  $38                                         ; $5c3c: $ff
	or   $12                                         ; $5c3d: $f6 $12
	rst  JumpTable                                         ; $5c3f: $df
	rst  $38                                         ; $5c40: $ff
	db   $dd                                         ; $5c41: $dd
	rst  $38                                         ; $5c42: $ff
	ld   hl, sp+$11                                  ; $5c43: $f8 $11
	dec  hl                                          ; $5c45: $2b
	db   $ed                                         ; $5c46: $ed
	sbc  d                                           ; $5c47: $9a
	rst  $38                                         ; $5c48: $ff
	rst  $38                                         ; $5c49: $ff
	and  a                                           ; $5c4a: $a7
	sbc  h                                           ; $5c4b: $9c
	call nz, $1111                                   ; $5c4c: $c4 $11 $11
	ld   de, $1111                                   ; $5c4f: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $5c52: $11 $12 $ff
	rst  $38                                         ; $5c55: $ff
	cp   $ff                                         ; $5c56: $fe $ff
	sub  $17                                         ; $5c58: $d6 $17
	rst  $38                                         ; $5c5a: $ff
	rst  $38                                         ; $5c5b: $ff
	rst  $28                                         ; $5c5c: $ef
	rst  $38                                         ; $5c5d: $ff
	call nz, $8d13                                   ; $5c5e: $c4 $13 $8d
	db   $eb                                         ; $5c61: $eb
	xor  a                                           ; $5c62: $af
	rst  $38                                         ; $5c63: $ff
	db   $fc                                         ; $5c64: $fc
	xor  d                                           ; $5c65: $aa
	xor  e                                           ; $5c66: $ab
	ld   h, c                                        ; $5c67: $61
	ld   de, $1111                                   ; $5c68: $11 $11 $11
	ld   de, $1111                                   ; $5c6b: $11 $11 $11
	inc  l                                           ; $5c6e: $2c
	rst  $38                                         ; $5c6f: $ff
	rst  $38                                         ; $5c70: $ff
	rst  $38                                         ; $5c71: $ff
	rst  $38                                         ; $5c72: $ff
	sub  $6c                                         ; $5c73: $d6 $6c
	rst  $38                                         ; $5c75: $ff
	rst  $38                                         ; $5c76: $ff
	rst  $38                                         ; $5c77: $ff
	db   $ec                                         ; $5c78: $ec

jr_0e0_5c79:
	ld   [hl], l                                     ; $5c79: $75
	ld   a, b                                        ; $5c7a: $78
	xor  l                                           ; $5c7b: $ad
	call $fdff                                       ; $5c7c: $cd $ff $fd
	call Call_0e0_51c8                               ; $5c7f: $cd $c8 $51
	ld   de, $1111                                   ; $5c82: $11 $11 $11
	ld   de, $1111                                   ; $5c85: $11 $11 $11
	jr   z, jr_0e0_5c79                              ; $5c88: $28 $ef

	rst  $38                                         ; $5c8a: $ff
	rst  $38                                         ; $5c8b: $ff
	rst  $38                                         ; $5c8c: $ff
	ld   a, [$cf88]                                  ; $5c8d: $fa $88 $cf
	rst  $38                                         ; $5c90: $ff
	rst  $38                                         ; $5c91: $ff
	db   $fd                                         ; $5c92: $fd
	xor  c                                           ; $5c93: $a9
	ld   a, b                                        ; $5c94: $78
	xor  e                                           ; $5c95: $ab
	call $ccdc                                       ; $5c96: $cd $dc $cc
	call Call_0e0_51a8                               ; $5c99: $cd $a8 $51
	ld   de, $1111                                   ; $5c9c: $11 $11 $11
	ld   de, $1111                                   ; $5c9f: $11 $11 $11
	ld   b, a                                        ; $5ca2: $47
	cp   a                                           ; $5ca3: $bf
	rst  $38                                         ; $5ca4: $ff
	rst  $38                                         ; $5ca5: $ff
	rst  $38                                         ; $5ca6: $ff
	db   $ed                                         ; $5ca7: $ed
	sub  [hl]                                        ; $5ca8: $96
	rst  $28                                         ; $5ca9: $ef
	rst  $38                                         ; $5caa: $ff
	sbc  $fc                                         ; $5cab: $de $fc
	db   $eb                                         ; $5cad: $eb
	sbc  l                                           ; $5cae: $9d
	cp   e                                           ; $5caf: $bb
	jp   c, $bb9b                                    ; $5cb0: $da $9b $bb

	xor  c                                           ; $5cb3: $a9
	sub  [hl]                                        ; $5cb4: $96
	ld   sp, $1111                                   ; $5cb5: $31 $11 $11
	ld   de, $1111                                   ; $5cb8: $11 $11 $11
	inc  de                                          ; $5cbb: $13
	jr   z, @+$01                                    ; $5cbc: $28 $ff

	rst  $38                                         ; $5cbe: $ff
	rst  $38                                         ; $5cbf: $ff
	rst  $38                                         ; $5cc0: $ff
	and  $5f                                         ; $5cc1: $e6 $5f
	ld   a, [$ffbc]                                  ; $5cc3: $fa $bc $ff
	rst  $38                                         ; $5cc6: $ff
	cp   l                                           ; $5cc7: $bd
	db   $fd                                         ; $5cc8: $fd
	jp   z, Jump_0e0_78a9                            ; $5cc9: $ca $a9 $78

	ld   [hl], h                                     ; $5ccc: $74
	ld   d, h                                        ; $5ccd: $54
	ld   hl, $1111                                   ; $5cce: $21 $11 $11
	ld   de, $1111                                   ; $5cd1: $11 $11 $11
	ld   de, $ff1b                                   ; $5cd4: $11 $1b $ff
	rst  $38                                         ; $5cd7: $ff
	rst  $38                                         ; $5cd8: $ff
	rst  $38                                         ; $5cd9: $ff
	ei                                               ; $5cda: $fb
	rst  $28                                         ; $5cdb: $ef
	cp   c                                           ; $5cdc: $b9
	xor  e                                           ; $5cdd: $ab
	jp   z, $bfdc                                    ; $5cde: $ca $dc $bf

	cp   $ff                                         ; $5ce1: $fe $ff
	jp   z, Jump_0e0_4286                            ; $5ce3: $ca $86 $42

	ld   de, $1111                                   ; $5ce6: $11 $11 $11
	ld   de, $1111                                   ; $5ce9: $11 $11 $11
	ld   de, $4f11                                   ; $5cec: $11 $11 $4f
	rst  $38                                         ; $5cef: $ff
	rst  $38                                         ; $5cf0: $ff
	rst  $38                                         ; $5cf1: $ff
	rst  $38                                         ; $5cf2: $ff
	rst  $38                                         ; $5cf3: $ff
	rst  $38                                         ; $5cf4: $ff
	jp   z, Jump_0e0_67cd                            ; $5cf5: $ca $cd $67

	sbc  c                                           ; $5cf8: $99
	call z, $efbe                                    ; $5cf9: $cc $be $ef
	jp   c, Jump_0e0_42a6                            ; $5cfc: $da $a6 $42

	ld   de, $1111                                   ; $5cff: $11 $11 $11
	ld   de, $1111                                   ; $5d02: $11 $11 $11
	ld   de, $ff17                                   ; $5d05: $11 $17 $ff
	rst  $38                                         ; $5d08: $ff
	rst  $38                                         ; $5d09: $ff
	rst  $38                                         ; $5d0a: $ff
	rst  $38                                         ; $5d0b: $ff
	rst  $38                                         ; $5d0c: $ff
	cp   $cc                                         ; $5d0d: $fe $cc
	or   a                                           ; $5d0f: $b7
	ld   [hl], a                                     ; $5d10: $77
	sbc  b                                           ; $5d11: $98
	sbc  e                                           ; $5d12: $9b
	cp   e                                           ; $5d13: $bb
	jp   c, Jump_0e0_65aa                            ; $5d14: $da $aa $65

	ld   b, d                                        ; $5d17: $42
	ld   de, $1111                                   ; $5d18: $11 $11 $11
	ld   de, $1111                                   ; $5d1b: $11 $11 $11
	ld   de, $9fac                                   ; $5d1e: $11 $ac $9f
	rst  $38                                         ; $5d21: $ff
	rst  $38                                         ; $5d22: $ff
	rst  $38                                         ; $5d23: $ff
	rst  $38                                         ; $5d24: $ff
	rst  $38                                         ; $5d25: $ff
	rst  $38                                         ; $5d26: $ff
	cp   d                                           ; $5d27: $ba
	ld   [hl], l                                     ; $5d28: $75
	ld   h, [hl]                                     ; $5d29: $66
	ld   b, [hl]                                     ; $5d2a: $46
	adc  c                                           ; $5d2b: $89
	adc  d                                           ; $5d2c: $8a
	sbc  b                                           ; $5d2d: $98
	add  a                                           ; $5d2e: $87
	ld   d, l                                        ; $5d2f: $55
	ld   b, e                                        ; $5d30: $43

Jump_0e0_5d31:
	ld   [hl-], a                                    ; $5d31: $32
	ld   de, $1111                                   ; $5d32: $11 $11 $11
	ld   de, $1111                                   ; $5d35: $11 $11 $11
	ld   b, [hl]                                     ; $5d38: $46
	ld   l, c                                        ; $5d39: $69
	rst  JumpTable                                         ; $5d3a: $df
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	rst  $38                                         ; $5d3d: $ff
	rst  $38                                         ; $5d3e: $ff
	rst  $38                                         ; $5d3f: $ff
	xor  $ca                                         ; $5d40: $ee $ca
	sbc  c                                           ; $5d42: $99
	adc  c                                           ; $5d43: $89
	sbc  b                                           ; $5d44: $98
	ld   a, c                                        ; $5d45: $79
	and  a                                           ; $5d46: $a7
	ld   a, b                                        ; $5d47: $78
	ld   h, l                                        ; $5d48: $65
	ld   h, l                                        ; $5d49: $65
	ld   b, h                                        ; $5d4a: $44
	ld   b, e                                        ; $5d4b: $43
	inc  [hl]                                        ; $5d4c: $34
	ld   hl, $1111                                   ; $5d4d: $21 $11 $11
	ld   de, $1311                                   ; $5d50: $11 $11 $13
	ld   b, [hl]                                     ; $5d53: $46
	ld   a, c                                        ; $5d54: $79
	cp   l                                           ; $5d55: $bd
	rst  $28                                         ; $5d56: $ef
	rst  $38                                         ; $5d57: $ff
	rst  $38                                         ; $5d58: $ff
	rst  $38                                         ; $5d59: $ff
	cp   $ff                                         ; $5d5a: $fe $ff
	rst  $38                                         ; $5d5c: $ff
	rst  $38                                         ; $5d5d: $ff
	db   $ed                                         ; $5d5e: $ed
	call z, $99cc                                    ; $5d5f: $cc $cc $99
	cp   c                                           ; $5d62: $b9
	halt                                             ; $5d63: $76
	ld   h, [hl]                                     ; $5d64: $66
	ld   d, c                                        ; $5d65: $51
	ld   de, $1111                                   ; $5d66: $11 $11 $11
	ld   de, $1111                                   ; $5d69: $11 $11 $11
	ld   de, $4711                                   ; $5d6c: $11 $11 $47
	cp   [hl]                                        ; $5d6f: $be
	rst  $38                                         ; $5d70: $ff
	rst  $38                                         ; $5d71: $ff
	rst  $38                                         ; $5d72: $ff
	rst  $38                                         ; $5d73: $ff
	rst  $38                                         ; $5d74: $ff
	rst  $38                                         ; $5d75: $ff
	rst  $38                                         ; $5d76: $ff
	db   $fc                                         ; $5d77: $fc
	cp   e                                           ; $5d78: $bb
	sbc  b                                           ; $5d79: $98
	ld   h, l                                        ; $5d7a: $65
	ld   h, h                                        ; $5d7b: $64
	ld   [hl+], a                                    ; $5d7c: $22
	ld   de, $1111                                   ; $5d7d: $11 $11 $11
	ld   de, $1111                                   ; $5d80: $11 $11 $11
	ld   de, $1111                                   ; $5d83: $11 $11 $11
	ld   h, $cf                                      ; $5d86: $26 $cf
	rst  $38                                         ; $5d88: $ff
	rst  $38                                         ; $5d89: $ff
	rst  $38                                         ; $5d8a: $ff
	rst  $38                                         ; $5d8b: $ff
	rst  $38                                         ; $5d8c: $ff
	rst  $38                                         ; $5d8d: $ff
	rst  $38                                         ; $5d8e: $ff
	db   $eb                                         ; $5d8f: $eb
	cp   d                                           ; $5d90: $ba
	add  [hl]                                        ; $5d91: $86
	ld   h, [hl]                                     ; $5d92: $66
	ld   b, h                                        ; $5d93: $44
	ld   [hl-], a                                    ; $5d94: $32
	ld   de, $1111                                   ; $5d95: $11 $11 $11
	ld   de, $1111                                   ; $5d98: $11 $11 $11
	ld   de, $1111                                   ; $5d9b: $11 $11 $11
	ld   a, l                                        ; $5d9e: $7d
	rst  $28                                         ; $5d9f: $ef
	rst  $38                                         ; $5da0: $ff
	rst  $38                                         ; $5da1: $ff
	rst  $38                                         ; $5da2: $ff
	rst  $38                                         ; $5da3: $ff
	rst  $38                                         ; $5da4: $ff
	rst  $38                                         ; $5da5: $ff
	rst  $38                                         ; $5da6: $ff
	db   $fc                                         ; $5da7: $fc
	sbc  d                                           ; $5da8: $9a
	and  [hl]                                        ; $5da9: $a6
	ld   d, [hl]                                     ; $5daa: $56
	ld   b, d                                        ; $5dab: $42
	ld   sp, $1111                                   ; $5dac: $31 $11 $11
	ld   de, $1111                                   ; $5daf: $11 $11 $11
	ld   de, $1111                                   ; $5db2: $11 $11 $11
	dec  d                                           ; $5db5: $15
	rst  JumpTable                                         ; $5db6: $df
	rst  $38                                         ; $5db7: $ff
	rst  $38                                         ; $5db8: $ff
	rst  $38                                         ; $5db9: $ff
	rst  $38                                         ; $5dba: $ff
	rst  $38                                         ; $5dbb: $ff
	rst  $38                                         ; $5dbc: $ff
	rst  $38                                         ; $5dbd: $ff
	rst  $38                                         ; $5dbe: $ff
	call c, Call_0e0_76ba                            ; $5dbf: $dc $ba $76
	ld   h, h                                        ; $5dc2: $64
	ld   [hl-], a                                    ; $5dc3: $32
	ld   de, $1111                                   ; $5dc4: $11 $11 $11
	ld   de, $1111                                   ; $5dc7: $11 $11 $11
	ld   de, $1111                                   ; $5dca: $11 $11 $11
	ld   a, e                                        ; $5dcd: $7b
	rst  $38                                         ; $5dce: $ff
	rst  $38                                         ; $5dcf: $ff
	rst  $38                                         ; $5dd0: $ff
	rst  $38                                         ; $5dd1: $ff
	rst  $38                                         ; $5dd2: $ff
	rst  $38                                         ; $5dd3: $ff
	rst  $38                                         ; $5dd4: $ff
	rst  $38                                         ; $5dd5: $ff
	rst  $38                                         ; $5dd6: $ff
	db   $eb                                         ; $5dd7: $eb
	adc  b                                           ; $5dd8: $88
	ld   h, h                                        ; $5dd9: $64
	ld   [hl-], a                                    ; $5dda: $32
	ld   de, $1111                                   ; $5ddb: $11 $11 $11
	ld   de, $1111                                   ; $5dde: $11 $11 $11
	ld   de, $1111                                   ; $5de1: $11 $11 $11
	ld   d, a                                        ; $5de4: $57
	rst  JumpTable                                         ; $5de5: $df
	rst  $38                                         ; $5de6: $ff
	rst  $38                                         ; $5de7: $ff
	rst  $38                                         ; $5de8: $ff
	rst  $38                                         ; $5de9: $ff
	rst  $38                                         ; $5dea: $ff
	rst  $38                                         ; $5deb: $ff
	rst  $38                                         ; $5dec: $ff
	rst  $38                                         ; $5ded: $ff
	db   $eb                                         ; $5dee: $eb
	sub  a                                           ; $5def: $97
	ld   h, h                                        ; $5df0: $64
	ld   hl, $1111                                   ; $5df1: $21 $11 $11
	ld   de, $1111                                   ; $5df4: $11 $11 $11
	ld   de, $1111                                   ; $5df7: $11 $11 $11
	ld   de, $af36                                   ; $5dfa: $11 $36 $af
	rst  $38                                         ; $5dfd: $ff
	rst  $38                                         ; $5dfe: $ff
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	rst  $38                                         ; $5e01: $ff
	rst  $38                                         ; $5e02: $ff
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	db   $fd                                         ; $5e05: $fd
	xor  b                                           ; $5e06: $a8
	ld   h, l                                        ; $5e07: $65
	ld   sp, $1111                                   ; $5e08: $31 $11 $11
	ld   de, $1111                                   ; $5e0b: $11 $11 $11
	ld   de, $1111                                   ; $5e0e: $11 $11 $11
	ld   de, $8b13                                   ; $5e11: $11 $13 $8b

Call_0e0_5e14:
	rst  $28                                         ; $5e14: $ef
	rst  $38                                         ; $5e15: $ff
	rst  $38                                         ; $5e16: $ff
	rst  $38                                         ; $5e17: $ff
	rst  $38                                         ; $5e18: $ff
	rst  $38                                         ; $5e19: $ff
	rst  $38                                         ; $5e1a: $ff
	rst  $38                                         ; $5e1b: $ff
	rst  $38                                         ; $5e1c: $ff
	jp   z, Jump_0e0_4386                            ; $5e1d: $ca $86 $43

	ld   sp, $1111                                   ; $5e20: $31 $11 $11
	ld   de, $1111                                   ; $5e23: $11 $11 $11
	ld   de, $1111                                   ; $5e26: $11 $11 $11
	ld   de, $9d26                                   ; $5e29: $11 $26 $9d
	rst  $38                                         ; $5e2c: $ff
	rst  $38                                         ; $5e2d: $ff
	rst  $38                                         ; $5e2e: $ff
	rst  $38                                         ; $5e2f: $ff
	rst  $38                                         ; $5e30: $ff
	rst  $38                                         ; $5e31: $ff
	rst  $38                                         ; $5e32: $ff
	rst  $38                                         ; $5e33: $ff
	cp   $ba                                         ; $5e34: $fe $ba
	add  a                                           ; $5e36: $87
	ld   d, h                                        ; $5e37: $54
	ld   hl, $1111                                   ; $5e38: $21 $11 $11
	ld   de, $1111                                   ; $5e3b: $11 $11 $11
	ld   de, $1111                                   ; $5e3e: $11 $11 $11
	ld   de, $ae47                                   ; $5e41: $11 $47 $ae
	rst  $38                                         ; $5e44: $ff
	rst  $38                                         ; $5e45: $ff
	rst  $38                                         ; $5e46: $ff
	rst  $38                                         ; $5e47: $ff
	rst  $38                                         ; $5e48: $ff
	rst  $38                                         ; $5e49: $ff
	rst  $38                                         ; $5e4a: $ff
	rst  $38                                         ; $5e4b: $ff
	cp   $c9                                         ; $5e4c: $fe $c9
	halt                                             ; $5e4e: $76
	ld   b, d                                        ; $5e4f: $42
	ld   de, $1111                                   ; $5e50: $11 $11 $11
	ld   de, $1111                                   ; $5e53: $11 $11 $11
	ld   de, $1111                                   ; $5e56: $11 $11 $11
	inc  de                                          ; $5e59: $13
	ld   l, d                                        ; $5e5a: $6a
	rst  JumpTable                                         ; $5e5b: $df
	rst  $38                                         ; $5e5c: $ff
	rst  $38                                         ; $5e5d: $ff
	rst  $38                                         ; $5e5e: $ff
	rst  $38                                         ; $5e5f: $ff
	rst  $38                                         ; $5e60: $ff
	rst  $38                                         ; $5e61: $ff
	rst  $38                                         ; $5e62: $ff
	rst  $38                                         ; $5e63: $ff
	db   $ec                                         ; $5e64: $ec
	sub  a                                           ; $5e65: $97
	ld   d, e                                        ; $5e66: $53
	ld   de, $1111                                   ; $5e67: $11 $11 $11
	ld   de, $1111                                   ; $5e6a: $11 $11 $11
	ld   de, $1111                                   ; $5e6d: $11 $11 $11
	ld   de, $ae47                                   ; $5e70: $11 $47 $ae
	rst  $38                                         ; $5e73: $ff
	rst  $38                                         ; $5e74: $ff
	rst  $38                                         ; $5e75: $ff
	rst  $38                                         ; $5e76: $ff
	rst  $38                                         ; $5e77: $ff
	rst  $38                                         ; $5e78: $ff
	rst  $38                                         ; $5e79: $ff
	rst  $38                                         ; $5e7a: $ff
	db   $fd                                         ; $5e7b: $fd
	xor  c                                           ; $5e7c: $a9
	ld   h, h                                        ; $5e7d: $64
	ld   hl, $1111                                   ; $5e7e: $21 $11 $11
	ld   de, $1111                                   ; $5e81: $11 $11 $11
	ld   de, $1111                                   ; $5e84: $11 $11 $11
	ld   de, $8c25                                   ; $5e87: $11 $25 $8c
	rst  $38                                         ; $5e8a: $ff
	rst  $38                                         ; $5e8b: $ff
	rst  $38                                         ; $5e8c: $ff
	rst  $38                                         ; $5e8d: $ff
	rst  $38                                         ; $5e8e: $ff
	rst  $38                                         ; $5e8f: $ff
	rst  $38                                         ; $5e90: $ff
	rst  $38                                         ; $5e91: $ff
	db   $fd                                         ; $5e92: $fd
	cp   c                                           ; $5e93: $b9
	ld   h, l                                        ; $5e94: $65
	ld   hl, $1111                                   ; $5e95: $21 $11 $11
	ld   de, $1111                                   ; $5e98: $11 $11 $11
	ld   de, $1111                                   ; $5e9b: $11 $11 $11
	ld   de, $8a24                                   ; $5e9e: $11 $24 $8a
	rst  JumpTable                                         ; $5ea1: $df
	rst  $38                                         ; $5ea2: $ff
	rst  $38                                         ; $5ea3: $ff
	rst  $38                                         ; $5ea4: $ff
	rst  $38                                         ; $5ea5: $ff
	rst  $38                                         ; $5ea6: $ff
	rst  $38                                         ; $5ea7: $ff
	rst  $38                                         ; $5ea8: $ff
	rst  $38                                         ; $5ea9: $ff
	jp   c, Jump_0e0_4276                            ; $5eaa: $da $76 $42

	ld   de, $1111                                   ; $5ead: $11 $11 $11
	ld   de, $1111                                   ; $5eb0: $11 $11 $11
	ld   de, $1111                                   ; $5eb3: $11 $11 $11
	inc  h                                           ; $5eb6: $24
	ld   a, e                                        ; $5eb7: $7b
	rst  $28                                         ; $5eb8: $ef
	rst  $38                                         ; $5eb9: $ff
	rst  $38                                         ; $5eba: $ff
	rst  $38                                         ; $5ebb: $ff
	rst  $38                                         ; $5ebc: $ff
	rst  $38                                         ; $5ebd: $ff
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	jp   c, Jump_0e0_5397                            ; $5ec1: $da $97 $53

	ld   de, $1111                                   ; $5ec4: $11 $11 $11
	ld   de, $1111                                   ; $5ec7: $11 $11 $11
	ld   de, $1111                                   ; $5eca: $11 $11 $11
	dec  h                                           ; $5ecd: $25
	adc  e                                           ; $5ece: $8b
	rst  $38                                         ; $5ecf: $ff
	rst  $38                                         ; $5ed0: $ff
	rst  $38                                         ; $5ed1: $ff
	rst  $38                                         ; $5ed2: $ff
	rst  $38                                         ; $5ed3: $ff
	rst  $38                                         ; $5ed4: $ff
	rst  $38                                         ; $5ed5: $ff
	rst  $38                                         ; $5ed6: $ff
	rst  $38                                         ; $5ed7: $ff
	ld   [$3286], a                                  ; $5ed8: $ea $86 $32
	ld   hl, $1111                                   ; $5edb: $21 $11 $11
	ld   de, $1111                                   ; $5ede: $11 $11 $11
	ld   de, $1311                                   ; $5ee1: $11 $11 $13
	ld   l, d                                        ; $5ee4: $6a
	rst  $28                                         ; $5ee5: $ef
	rst  $38                                         ; $5ee6: $ff
	rst  $38                                         ; $5ee7: $ff
	rst  $38                                         ; $5ee8: $ff
	rst  $38                                         ; $5ee9: $ff
	rst  $38                                         ; $5eea: $ff
	rst  $38                                         ; $5eeb: $ff
	rst  $38                                         ; $5eec: $ff
	rst  $38                                         ; $5eed: $ff
	db   $ec                                         ; $5eee: $ec
	and  [hl]                                        ; $5eef: $a6
	ld   d, l                                        ; $5ef0: $55
	ld   de, $1111                                   ; $5ef1: $11 $11 $11
	ld   de, $1111                                   ; $5ef4: $11 $11 $11
	ld   de, $1211                                   ; $5ef7: $11 $11 $12
	ld   l, d                                        ; $5efa: $6a
	db   $dd                                         ; $5efb: $dd
	rst  $38                                         ; $5efc: $ff
	rst  $38                                         ; $5efd: $ff
	rst  $38                                         ; $5efe: $ff
	rst  $38                                         ; $5eff: $ff
	rst  $38                                         ; $5f00: $ff
	rst  $38                                         ; $5f01: $ff
	rst  $38                                         ; $5f02: $ff
	rst  $38                                         ; $5f03: $ff
	cp   $d9                                         ; $5f04: $fe $d9
	halt                                             ; $5f06: $76
	ld   de, $1111                                   ; $5f07: $11 $11 $11
	ld   de, $1111                                   ; $5f0a: $11 $11 $11
	ld   de, $1111                                   ; $5f0d: $11 $11 $11
	inc  a                                           ; $5f10: $3c
	ei                                               ; $5f11: $fb
	rst  JumpTable                                         ; $5f12: $df
	rst  $38                                         ; $5f13: $ff
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	rst  $38                                         ; $5f16: $ff
	rst  $38                                         ; $5f17: $ff
	rst  $38                                         ; $5f18: $ff
	rst  $38                                         ; $5f19: $ff
	db   $fd                                         ; $5f1a: $fd
	jp   z, $1176                                    ; $5f1b: $ca $76 $11

	ld   de, $1111                                   ; $5f1e: $11 $11 $11
	ld   de, $1111                                   ; $5f21: $11 $11 $11
	ld   de, $1c11                                   ; $5f24: $11 $11 $1c
	db   $fd                                         ; $5f27: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f28: $cf
	rst  $38                                         ; $5f29: $ff
	rst  $38                                         ; $5f2a: $ff
	rst  $38                                         ; $5f2b: $ff
	rst  $38                                         ; $5f2c: $ff
	rst  $38                                         ; $5f2d: $ff
	rst  $38                                         ; $5f2e: $ff
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	jp   z, Jump_0e0_5176                            ; $5f31: $ca $76 $51

	ld   de, $1111                                   ; $5f34: $11 $11 $11
	ld   de, $1111                                   ; $5f37: $11 $11 $11
	ld   de, $2c11                                   ; $5f3a: $11 $11 $2c
	ld   [hl], a                                     ; $5f3d: $77
	rst  $38                                         ; $5f3e: $ff
	rst  $38                                         ; $5f3f: $ff
	rst  $38                                         ; $5f40: $ff
	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	rst  $38                                         ; $5f43: $ff
	rst  $38                                         ; $5f44: $ff
	rst  $38                                         ; $5f45: $ff
	cp   $bc                                         ; $5f46: $fe $bc
	sub  [hl]                                        ; $5f48: $96
	ld   sp, $1111                                   ; $5f49: $31 $11 $11
	ld   de, $1111                                   ; $5f4c: $11 $11 $11
	ld   de, $1111                                   ; $5f4f: $11 $11 $11
	ld   [hl], c                                     ; $5f52: $71
	rla                                              ; $5f53: $17
	rst  $38                                         ; $5f54: $ff
	cp   e                                           ; $5f55: $bb
	rst  $38                                         ; $5f56: $ff
	rst  $38                                         ; $5f57: $ff
	rst  $38                                         ; $5f58: $ff
	rst  $38                                         ; $5f59: $ff
	rst  $38                                         ; $5f5a: $ff
	rst  $38                                         ; $5f5b: $ff
	cp   $cf                                         ; $5f5c: $fe $cf
	rst  $30                                         ; $5f5e: $f7
	ld   de, $1141                                   ; $5f5f: $11 $41 $11
	ld   de, $1111                                   ; $5f62: $11 $11 $11
	ld   de, $1111                                   ; $5f65: $11 $11 $11
	ld   de, $ff1d                                   ; $5f68: $11 $1d $ff
	rst  $38                                         ; $5f6b: $ff
	rst  $38                                         ; $5f6c: $ff
	rst  $38                                         ; $5f6d: $ff
	rst  $38                                         ; $5f6e: $ff
	rst  $38                                         ; $5f6f: $ff
	rst  $38                                         ; $5f70: $ff
	rst  $38                                         ; $5f71: $ff
	rst  $38                                         ; $5f72: $ff
	cp   $eb                                         ; $5f73: $fe $eb
	ld   [hl], e                                     ; $5f75: $73
	inc  de                                          ; $5f76: $13
	ld   hl, $1111                                   ; $5f77: $21 $11 $11
	ld   de, $1111                                   ; $5f7a: $11 $11 $11
	ld   de, $b511                                   ; $5f7d: $11 $11 $b5
	dec  de                                          ; $5f80: $1b
	cp   $ff                                         ; $5f81: $fe $ff
	rst  JumpTable                                         ; $5f83: $df
	rst  $38                                         ; $5f84: $ff
	rst  $28                                         ; $5f85: $ef
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	rst  $38                                         ; $5f88: $ff
	rst  $38                                         ; $5f89: $ff
	cp   $b9                                         ; $5f8a: $fe $b9
	add  [hl]                                        ; $5f8c: $86
	ld   de, $1141                                   ; $5f8d: $11 $41 $11
	ld   de, $1121                                   ; $5f90: $11 $21 $11
	ld   de, $1111                                   ; $5f93: $11 $11 $11
	cp   c                                           ; $5f96: $b9
	ld   de, $ffff                                   ; $5f97: $11 $ff $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f9a: $cf
	rst  $38                                         ; $5f9b: $ff
	ld   sp, hl                                      ; $5f9c: $f9
	rst  $38                                         ; $5f9d: $ff
	rst  $38                                         ; $5f9e: $ff
	rst  $38                                         ; $5f9f: $ff
	rst  $38                                         ; $5fa0: $ff
	push af                                          ; $5fa1: $f5
	adc  [hl]                                        ; $5fa2: $8e
	ld   hl, sp+$11                                  ; $5fa3: $f8 $11
	ld   d, $11                                      ; $5fa5: $16 $11
	inc  d                                           ; $5fa7: $14
	inc  sp                                          ; $5fa8: $33
	ld   de, $1111                                   ; $5fa9: $11 $11 $11
	ld   de, $5519                                   ; $5fac: $11 $19 $55
	cp   c                                           ; $5faf: $b9
	rst  $38                                         ; $5fb0: $ff
	ld   h, a                                        ; $5fb1: $67
	rst  $38                                         ; $5fb2: $ff
	cp   c                                           ; $5fb3: $b9
	rst  JumpTable                                         ; $5fb4: $df
	rst  $38                                         ; $5fb5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb6: $cf
	rst  $38                                         ; $5fb7: $ff
	db   $fd                                         ; $5fb8: $fd
	sbc  d                                           ; $5fb9: $9a
	xor  d                                           ; $5fba: $aa
	ld   [hl], c                                     ; $5fbb: $71
	ld   h, $23                                      ; $5fbc: $26 $23
	ld   de, $1144                                   ; $5fbe: $11 $44 $11
	ld   b, c                                        ; $5fc1: $41
	ld   de, $1111                                   ; $5fc2: $11 $11 $11
	ld   a, [de]                                     ; $5fc5: $1a
	ld   a, [rAUD1HIGH]                                  ; $5fc6: $fa $14 $ff
	sub  c                                           ; $5fc9: $91
	cp   a                                           ; $5fca: $bf
	db   $fc                                         ; $5fcb: $fc
	ld   a, d                                        ; $5fcc: $7a
	rst  $38                                         ; $5fcd: $ff
	ld   sp, hl                                      ; $5fce: $f9
	cp   a                                           ; $5fcf: $bf
	cp   $74                                         ; $5fd0: $fe $74
	adc  h                                           ; $5fd2: $8c
	sub  c                                           ; $5fd3: $91
	inc  bc                                          ; $5fd4: $03
	ld   l, d                                        ; $5fd5: $6a
	ld   b, c                                        ; $5fd6: $41
	ld   h, $73                                      ; $5fd7: $26 $73
	ld   de, $1121                                   ; $5fd9: $11 $21 $11
	ld   d, $44                                      ; $5fdc: $16 $44
	xor  e                                           ; $5fde: $ab
	adc  e                                           ; $5fdf: $8b
	xor  c                                           ; $5fe0: $a9
	db   $fd                                         ; $5fe1: $fd
	ld   a, b                                        ; $5fe2: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fe3: $cf
	cp   $4a                                         ; $5fe4: $fe $4a
	rst  $38                                         ; $5fe6: $ff
	ld   sp, hl                                      ; $5fe7: $f9
	sbc  e                                           ; $5fe8: $9b
	cp   $73                                         ; $5fe9: $fe $73
	ld   l, c                                        ; $5feb: $69
	ld   [hl], a                                     ; $5fec: $77
	ld   de, $3299                                   ; $5fed: $11 $99 $32
	ld   b, e                                        ; $5ff0: $43
	ld   h, e                                        ; $5ff1: $63
	ld   de, $1711                                   ; $5ff2: $11 $11 $17
	ld   d, c                                        ; $5ff5: $51
	add  hl, hl                                      ; $5ff6: $29
	db   $fc                                         ; $5ff7: $fc
	inc  h                                           ; $5ff8: $24
	cp   $79                                         ; $5ff9: $fe $79
	ld   [$afbd], a                                  ; $5ffb: $ea $bd $af
	ld   [$ecbf], a                                  ; $5ffe: $ea $bf $ec
	ei                                               ; $6001: $fb
	add  [hl]                                        ; $6002: $86
	xor  d                                           ; $6003: $aa
	ld   [hl], h                                     ; $6004: $74
	ld   b, a                                        ; $6005: $47
	sbc  c                                           ; $6006: $99
	ld   b, d                                        ; $6007: $42
	ld   h, a                                        ; $6008: $67
	ld   d, d                                        ; $6009: $52
	inc  h                                           ; $600a: $24
	ld   d, c                                        ; $600b: $51
	inc  de                                          ; $600c: $13
	ld   b, l                                        ; $600d: $45
	ld   b, d                                        ; $600e: $42
	ld   l, [hl]                                     ; $600f: $6e
	or   [hl]                                        ; $6010: $b6
	ld   a, b                                        ; $6011: $78
	sbc  e                                           ; $6012: $9b
	ret  c                                           ; $6013: $d8

	sbc  a                                           ; $6014: $9f
	rst  ToBoot                                         ; $6015: $c7
	xor  a                                           ; $6016: $af
	ei                                               ; $6017: $fb
	sbc  b                                           ; $6018: $98
	cp   a                                           ; $6019: $bf
	jp   hl                                          ; $601a: $e9


	ld   l, b                                        ; $601b: $68
	xor  h                                           ; $601c: $ac
	halt                                             ; $601d: $76
	ld   a, d                                        ; $601e: $7a
	sub  e                                           ; $601f: $93
	ld   d, l                                        ; $6020: $55
	sub  a                                           ; $6021: $97
	ld   de, $5436                                   ; $6022: $11 $36 $54
	ld   de, $6734                                   ; $6025: $11 $34 $67
	add  [hl]                                        ; $6028: $86
	ld   e, c                                        ; $6029: $59
	sbc  d                                           ; $602a: $9a
	xor  b                                           ; $602b: $a8
	adc  e                                           ; $602c: $8b
	db   $db                                         ; $602d: $db
	xor  e                                           ; $602e: $ab
	cp   e                                           ; $602f: $bb
	sbc  e                                           ; $6030: $9b
	xor  $ed                                         ; $6031: $ee $ed
	sub  a                                           ; $6033: $97
	xor  d                                           ; $6034: $aa
	ld   h, a                                        ; $6035: $67
	ld   a, b                                        ; $6036: $78
	cp   b                                           ; $6037: $b8
	ld   b, [hl]                                     ; $6038: $46
	ld   h, h                                        ; $6039: $64
	ld   h, h                                        ; $603a: $64
	scf                                              ; $603b: $37
	add  [hl]                                        ; $603c: $86
	ld   d, l                                        ; $603d: $55
	dec  [hl]                                        ; $603e: $35
	ld   h, [hl]                                     ; $603f: $66
	ld   d, [hl]                                     ; $6040: $56
	sbc  c                                           ; $6041: $99
	sub  a                                           ; $6042: $97
	sbc  d                                           ; $6043: $9a
	xor  e                                           ; $6044: $ab
	xor  c                                           ; $6045: $a9
	ld   a, e                                        ; $6046: $7b
	reti                                             ; $6047: $d9


	sbc  b                                           ; $6048: $98
	cp   d                                           ; $6049: $ba
	adc  c                                           ; $604a: $89
	xor  e                                           ; $604b: $ab
	res  3, b                                        ; $604c: $cb $98
	xor  d                                           ; $604e: $aa
	ld   h, a                                        ; $604f: $67
	add  a                                           ; $6050: $87
	sub  [hl]                                        ; $6051: $96
	ld   [hl], l                                     ; $6052: $75
	ld   d, a                                        ; $6053: $57
	sbc  b                                           ; $6054: $98
	ld   l, b                                        ; $6055: $68
	ld   a, c                                        ; $6056: $79
	halt                                             ; $6057: $76
	ld   e, b                                        ; $6058: $58
	sub  a                                           ; $6059: $97
	ld   l, b                                        ; $605a: $68
	ret  z                                           ; $605b: $c8

	ld   [hl], a                                     ; $605c: $77
	adc  c                                           ; $605d: $89
	xor  d                                           ; $605e: $aa
	ld   a, e                                        ; $605f: $7b
	res  7, d                                        ; $6060: $cb $ba
	add  a                                           ; $6062: $87
	cp   c                                           ; $6063: $b9
	sbc  b                                           ; $6064: $98
	ld   a, d                                        ; $6065: $7a
	adc  d                                           ; $6066: $8a
	ld   h, l                                        ; $6067: $65
	add  [hl]                                        ; $6068: $86
	ld   h, l                                        ; $6069: $65
	and  l                                           ; $606a: $a5
	ld   l, b                                        ; $606b: $68
	ld   l, b                                        ; $606c: $68
	ld   l, d                                        ; $606d: $6a
	ld   a, d                                        ; $606e: $7a
	adc  c                                           ; $606f: $89
	db   $db                                         ; $6070: $db
	sub  $86                                         ; $6071: $d6 $86
	xor  e                                           ; $6073: $ab
	xor  c                                           ; $6074: $a9
	ld   a, e                                        ; $6075: $7b
	ld   a, d                                        ; $6076: $7a
	ld   h, a                                        ; $6077: $67
	adc  c                                           ; $6078: $89
	and  [hl]                                        ; $6079: $a6
	add  l                                           ; $607a: $85
	xor  b                                           ; $607b: $a8
	ld   a, b                                        ; $607c: $78
	adc  d                                           ; $607d: $8a
	sbc  c                                           ; $607e: $99
	ld   e, c                                        ; $607f: $59
	sbc  b                                           ; $6080: $98
	sub  [hl]                                        ; $6081: $96
	ld   [hl], a                                     ; $6082: $77
	and  a                                           ; $6083: $a7
	and  a                                           ; $6084: $a7
	adc  b                                           ; $6085: $88
	sbc  c                                           ; $6086: $99
	ld   l, c                                        ; $6087: $69
	sbc  c                                           ; $6088: $99
	ld   [hl], a                                     ; $6089: $77
	sub  a                                           ; $608a: $97
	xor  b                                           ; $608b: $a8
	adc  b                                           ; $608c: $88
	add  a                                           ; $608d: $87
	adc  b                                           ; $608e: $88
	adc  c                                           ; $608f: $89
	adc  b                                           ; $6090: $88
	adc  c                                           ; $6091: $89
	ld   a, b                                        ; $6092: $78
	add  a                                           ; $6093: $87
	sub  a                                           ; $6094: $97
	ld   [hl], a                                     ; $6095: $77
	sbc  c                                           ; $6096: $99
	ld   [hl], a                                     ; $6097: $77
	sbc  c                                           ; $6098: $99
	adc  b                                           ; $6099: $88
	ld   [hl], a                                     ; $609a: $77
	ld   a, b                                        ; $609b: $78
	add  a                                           ; $609c: $87
	adc  b                                           ; $609d: $88
	adc  c                                           ; $609e: $89
	adc  b                                           ; $609f: $88
	adc  b                                           ; $60a0: $88
	ld   [hl], a                                     ; $60a1: $77
	adc  c                                           ; $60a2: $89
	ld   a, b                                        ; $60a3: $78
	sbc  b                                           ; $60a4: $98
	adc  c                                           ; $60a5: $89
	add  a                                           ; $60a6: $87
	sbc  b                                           ; $60a7: $98
	ld   a, b                                        ; $60a8: $78
	sbc  c                                           ; $60a9: $99
	adc  b                                           ; $60aa: $88
	ld   a, b                                        ; $60ab: $78
	add  a                                           ; $60ac: $87
	ld   a, c                                        ; $60ad: $79
	adc  b                                           ; $60ae: $88
	sbc  b                                           ; $60af: $98
	ld   [hl], a                                     ; $60b0: $77
	adc  b                                           ; $60b1: $88
	add  a                                           ; $60b2: $87
	adc  b                                           ; $60b3: $88
	add  a                                           ; $60b4: $87
	ld   [hl], a                                     ; $60b5: $77
	ld   l, c                                        ; $60b6: $69
	ld   [hl], a                                     ; $60b7: $77
	add  a                                           ; $60b8: $87
	ld   [hl], a                                     ; $60b9: $77
	sub  a                                           ; $60ba: $97
	sbc  b                                           ; $60bb: $98
	ld   [hl], a                                     ; $60bc: $77
	ld   a, b                                        ; $60bd: $78
	adc  b                                           ; $60be: $88
	adc  b                                           ; $60bf: $88
	ld   [hl], a                                     ; $60c0: $77
	ld   [hl], a                                     ; $60c1: $77
	add  a                                           ; $60c2: $87
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	adc  b                                           ; $60c6: $88
	add  a                                           ; $60c7: $87
	ld   a, b                                        ; $60c8: $78
	ld   [hl], a                                     ; $60c9: $77
	add  a                                           ; $60ca: $87
	ld   [hl], a                                     ; $60cb: $77
	ld   [hl], a                                     ; $60cc: $77
	ld   [hl], a                                     ; $60cd: $77
	ld   [hl], a                                     ; $60ce: $77
	ld   a, b                                        ; $60cf: $78
	ld   [hl], a                                     ; $60d0: $77
	ld   a, b                                        ; $60d1: $78
	ld   [hl], a                                     ; $60d2: $77
	ld   a, b                                        ; $60d3: $78
	sub  a                                           ; $60d4: $97
	ld   a, c                                        ; $60d5: $79
	ld   [hl], a                                     ; $60d6: $77
	ld   [hl], a                                     ; $60d7: $77
	ld   a, b                                        ; $60d8: $78
	adc  b                                           ; $60d9: $88
	adc  c                                           ; $60da: $89
	ld   [hl], a                                     ; $60db: $77
	add  a                                           ; $60dc: $87
	ld   [hl], a                                     ; $60dd: $77
	adc  b                                           ; $60de: $88
	sub  a                                           ; $60df: $97
	add  a                                           ; $60e0: $87
	ld   a, b                                        ; $60e1: $78
	ld   a, b                                        ; $60e2: $78
	ld   [hl], a                                     ; $60e3: $77
	adc  b                                           ; $60e4: $88
	add  a                                           ; $60e5: $87
	ld   [hl], a                                     ; $60e6: $77
	ld   a, c                                        ; $60e7: $79
	ld   a, b                                        ; $60e8: $78
	ld   [hl], a                                     ; $60e9: $77
	ld   [hl], a                                     ; $60ea: $77
	adc  c                                           ; $60eb: $89
	add  a                                           ; $60ec: $87
	add  a                                           ; $60ed: $87
	ld   [hl], a                                     ; $60ee: $77
	add  a                                           ; $60ef: $87
	adc  b                                           ; $60f0: $88
	ld   [hl], a                                     ; $60f1: $77
	adc  c                                           ; $60f2: $89
	ld   a, b                                        ; $60f3: $78
	add  a                                           ; $60f4: $87
	add  a                                           ; $60f5: $87
	sub  a                                           ; $60f6: $97
	ld   [hl], a                                     ; $60f7: $77
	sub  a                                           ; $60f8: $97
	adc  b                                           ; $60f9: $88
	ld   a, b                                        ; $60fa: $78
	ld   a, b                                        ; $60fb: $78
	ld   a, b                                        ; $60fc: $78
	add  a                                           ; $60fd: $87
	adc  b                                           ; $60fe: $88
	add  a                                           ; $60ff: $87
	adc  b                                           ; $6100: $88
	ld   [hl], a                                     ; $6101: $77
	adc  b                                           ; $6102: $88
	add  a                                           ; $6103: $87
	add  a                                           ; $6104: $87
	ld   [hl], a                                     ; $6105: $77
	ld   a, b                                        ; $6106: $78
	add  a                                           ; $6107: $87
	ld   [hl], a                                     ; $6108: $77
	adc  c                                           ; $6109: $89
	ld   a, b                                        ; $610a: $78
	adc  b                                           ; $610b: $88
	add  a                                           ; $610c: $87
	adc  b                                           ; $610d: $88
	ld   [hl], a                                     ; $610e: $77
	ld   a, b                                        ; $610f: $78
	ld   [hl], a                                     ; $6110: $77
	sbc  b                                           ; $6111: $98
	adc  b                                           ; $6112: $88
	adc  b                                           ; $6113: $88
	adc  b                                           ; $6114: $88
	adc  b                                           ; $6115: $88
	adc  b                                           ; $6116: $88
	ld   [hl], a                                     ; $6117: $77
	adc  b                                           ; $6118: $88
	ld   a, b                                        ; $6119: $78
	ld   a, b                                        ; $611a: $78
	adc  b                                           ; $611b: $88
	ld   [hl], a                                     ; $611c: $77
	sbc  b                                           ; $611d: $98
	ld   [hl], a                                     ; $611e: $77
	ld   a, b                                        ; $611f: $78
	add  a                                           ; $6120: $87
	sbc  b                                           ; $6121: $98
	ld   a, b                                        ; $6122: $78
	ld   a, c                                        ; $6123: $79
	adc  b                                           ; $6124: $88
	add  a                                           ; $6125: $87
	sbc  b                                           ; $6126: $98
	sbc  b                                           ; $6127: $98
	ld   a, b                                        ; $6128: $78
	sbc  b                                           ; $6129: $98
	sbc  b                                           ; $612a: $98
	ld   a, b                                        ; $612b: $78
	ld   a, c                                        ; $612c: $79
	add  a                                           ; $612d: $87
	ld   [hl], a                                     ; $612e: $77
	adc  b                                           ; $612f: $88
	adc  b                                           ; $6130: $88
	adc  b                                           ; $6131: $88
	ld   a, c                                        ; $6132: $79
	add  a                                           ; $6133: $87
	adc  b                                           ; $6134: $88
	add  a                                           ; $6135: $87
	adc  c                                           ; $6136: $89
	adc  c                                           ; $6137: $89
	ld   [hl], a                                     ; $6138: $77
	adc  b                                           ; $6139: $88
	sbc  b                                           ; $613a: $98
	add  a                                           ; $613b: $87
	adc  b                                           ; $613c: $88
	adc  b                                           ; $613d: $88
	adc  b                                           ; $613e: $88
	adc  b                                           ; $613f: $88
	adc  b                                           ; $6140: $88
	adc  b                                           ; $6141: $88
	adc  b                                           ; $6142: $88
	sub  a                                           ; $6143: $97
	adc  c                                           ; $6144: $89
	ld   a, b                                        ; $6145: $78
	adc  b                                           ; $6146: $88
	adc  b                                           ; $6147: $88
	adc  b                                           ; $6148: $88
	add  a                                           ; $6149: $87
	sbc  b                                           ; $614a: $98
	sbc  b                                           ; $614b: $98
	adc  b                                           ; $614c: $88
	adc  b                                           ; $614d: $88
	ld   [hl], a                                     ; $614e: $77
	adc  c                                           ; $614f: $89
	adc  c                                           ; $6150: $89
	sbc  b                                           ; $6151: $98
	adc  b                                           ; $6152: $88
	sub  a                                           ; $6153: $97
	add  a                                           ; $6154: $87
	adc  b                                           ; $6155: $88
	ld   a, b                                        ; $6156: $78
	xor  c                                           ; $6157: $a9
	sub  a                                           ; $6158: $97
	sbc  d                                           ; $6159: $9a
	ld   a, b                                        ; $615a: $78
	ld   a, b                                        ; $615b: $78
	sub  a                                           ; $615c: $97
	sub  a                                           ; $615d: $97
	adc  b                                           ; $615e: $88
	adc  b                                           ; $615f: $88
	ld   a, d                                        ; $6160: $7a
	ld   a, c                                        ; $6161: $79
	adc  b                                           ; $6162: $88
	sbc  b                                           ; $6163: $98
	sbc  b                                           ; $6164: $98
	sbc  b                                           ; $6165: $98
	adc  b                                           ; $6166: $88
	sbc  b                                           ; $6167: $98
	adc  b                                           ; $6168: $88
	sbc  b                                           ; $6169: $98
	ld   a, c                                        ; $616a: $79
	adc  d                                           ; $616b: $8a
	adc  c                                           ; $616c: $89
	add  a                                           ; $616d: $87
	sbc  b                                           ; $616e: $98
	sub  a                                           ; $616f: $97
	adc  b                                           ; $6170: $88
	adc  b                                           ; $6171: $88
	ld   a, c                                        ; $6172: $79
	sbc  c                                           ; $6173: $99
	adc  b                                           ; $6174: $88
	adc  b                                           ; $6175: $88
	add  a                                           ; $6176: $87
	sbc  b                                           ; $6177: $98
	ld   a, c                                        ; $6178: $79
	sbc  b                                           ; $6179: $98
	adc  b                                           ; $617a: $88
	ld   [hl], a                                     ; $617b: $77
	ld   a, c                                        ; $617c: $79
	sbc  c                                           ; $617d: $99
	sbc  c                                           ; $617e: $99
	adc  d                                           ; $617f: $8a
	sub  a                                           ; $6180: $97
	sub  [hl]                                        ; $6181: $96
	ld   a, b                                        ; $6182: $78
	sbc  c                                           ; $6183: $99
	ld   a, c                                        ; $6184: $79
	sbc  d                                           ; $6185: $9a
	sbc  b                                           ; $6186: $98
	ld   [hl], a                                     ; $6187: $77
	adc  b                                           ; $6188: $88
	adc  b                                           ; $6189: $88
	adc  c                                           ; $618a: $89
	add  a                                           ; $618b: $87
	ld   a, b                                        ; $618c: $78
	sbc  c                                           ; $618d: $99
	sbc  b                                           ; $618e: $98
	ld   a, b                                        ; $618f: $78
	adc  b                                           ; $6190: $88
	adc  b                                           ; $6191: $88
	ld   a, b                                        ; $6192: $78
	sub  a                                           ; $6193: $97
	ld   [hl], a                                     ; $6194: $77
	sbc  b                                           ; $6195: $98
	adc  b                                           ; $6196: $88
	ld   l, c                                        ; $6197: $69
	sbc  c                                           ; $6198: $99
	add  a                                           ; $6199: $87
	adc  c                                           ; $619a: $89
	ld   a, c                                        ; $619b: $79
	sbc  b                                           ; $619c: $98
	adc  b                                           ; $619d: $88
	sub  a                                           ; $619e: $97
	add  a                                           ; $619f: $87
	ld   a, d                                        ; $61a0: $7a
	sbc  b                                           ; $61a1: $98
	sbc  e                                           ; $61a2: $9b
	xor  c                                           ; $61a3: $a9
	ld   [hl], a                                     ; $61a4: $77
	add  a                                           ; $61a5: $87
	ld   [hl], a                                     ; $61a6: $77
	sbc  c                                           ; $61a7: $99
	xor  c                                           ; $61a8: $a9
	ld   [hl], a                                     ; $61a9: $77
	ld   a, b                                        ; $61aa: $78
	adc  c                                           ; $61ab: $89
	ld   a, c                                        ; $61ac: $79
	adc  b                                           ; $61ad: $88
	and  [hl]                                        ; $61ae: $a6
	ld   h, a                                        ; $61af: $67
	sbc  c                                           ; $61b0: $99
	ld   l, c                                        ; $61b1: $69
	ld   a, b                                        ; $61b2: $78
	adc  c                                           ; $61b3: $89
	adc  b                                           ; $61b4: $88
	sub  [hl]                                        ; $61b5: $96
	add  a                                           ; $61b6: $87
	adc  b                                           ; $61b7: $88
	sbc  c                                           ; $61b8: $99
	ld   a, b                                        ; $61b9: $78
	xor  b                                           ; $61ba: $a8
	ld   [hl], a                                     ; $61bb: $77
	ld   [hl], a                                     ; $61bc: $77
	sbc  b                                           ; $61bd: $98
	adc  d                                           ; $61be: $8a
	and  a                                           ; $61bf: $a7
	ld   h, a                                        ; $61c0: $67
	ld   [hl], a                                     ; $61c1: $77
	ld   a, b                                        ; $61c2: $78
	sbc  b                                           ; $61c3: $98
	add  a                                           ; $61c4: $87
	ld   h, a                                        ; $61c5: $67
	adc  b                                           ; $61c6: $88
	ld   a, b                                        ; $61c7: $78
	sbc  c                                           ; $61c8: $99
	sub  a                                           ; $61c9: $97
	adc  b                                           ; $61ca: $88
	adc  b                                           ; $61cb: $88
	add  [hl]                                        ; $61cc: $86
	adc  c                                           ; $61cd: $89
	add  a                                           ; $61ce: $87
	ld   h, a                                        ; $61cf: $67
	add  a                                           ; $61d0: $87
	ld   [hl], a                                     ; $61d1: $77
	sub  a                                           ; $61d2: $97
	adc  d                                           ; $61d3: $8a
	sbc  c                                           ; $61d4: $99
	add  a                                           ; $61d5: $87
	adc  b                                           ; $61d6: $88
	ld   a, c                                        ; $61d7: $79
	add  a                                           ; $61d8: $87
	sbc  c                                           ; $61d9: $99
	ld   a, b                                        ; $61da: $78
	ld   [hl], a                                     ; $61db: $77
	xor  d                                           ; $61dc: $aa
	ld   [hl], a                                     ; $61dd: $77
	xor  b                                           ; $61de: $a8
	ld   d, a                                        ; $61df: $57
	adc  b                                           ; $61e0: $88
	sbc  c                                           ; $61e1: $99
	sub  a                                           ; $61e2: $97
	adc  b                                           ; $61e3: $88
	ld   a, c                                        ; $61e4: $79
	sub  l                                           ; $61e5: $95
	ld   l, d                                        ; $61e6: $6a
	cp   d                                           ; $61e7: $ba
	ld   a, c                                        ; $61e8: $79
	adc  c                                           ; $61e9: $89
	or   l                                           ; $61ea: $b5
	ld   h, a                                        ; $61eb: $67
	add  [hl]                                        ; $61ec: $86

Call_0e0_61ed:
	ld   e, d                                        ; $61ed: $5a
	sbc  d                                           ; $61ee: $9a
	xor  b                                           ; $61ef: $a8
	ld   h, a                                        ; $61f0: $67
	adc  b                                           ; $61f1: $88
	ld   [hl], a                                     ; $61f2: $77
	sub  a                                           ; $61f3: $97
	xor  c                                           ; $61f4: $a9
	ld   d, a                                        ; $61f5: $57
	adc  d                                           ; $61f6: $8a
	ld   [hl], a                                     ; $61f7: $77
	ld   [hl], l                                     ; $61f8: $75
	adc  d                                           ; $61f9: $8a
	ld   h, e                                        ; $61fa: $63
	ld   l, c                                        ; $61fb: $69
	adc  b                                           ; $61fc: $88
	add  a                                           ; $61fd: $87
	sbc  d                                           ; $61fe: $9a
	ld   [hl], a                                     ; $61ff: $77
	add  [hl]                                        ; $6200: $86
	add  a                                           ; $6201: $87
	add  [hl]                                        ; $6202: $86
	ld   l, b                                        ; $6203: $68
	ld   a, d                                        ; $6204: $7a
	ld   [hl], a                                     ; $6205: $77
	sbc  d                                           ; $6206: $9a
	ld   l, b                                        ; $6207: $68
	or   a                                           ; $6208: $b7
	add  a                                           ; $6209: $87
	add  [hl]                                        ; $620a: $86
	ld   a, e                                        ; $620b: $7b
	ld   b, a                                        ; $620c: $47
	ld   e, b                                        ; $620d: $58
	and  a                                           ; $620e: $a7
	sbc  b                                           ; $620f: $98
	or   [hl]                                        ; $6210: $b6
	ld   l, c                                        ; $6211: $69
	add  [hl]                                        ; $6212: $86
	ld   [hl], a                                     ; $6213: $77
	add  hl, de                                      ; $6214: $19
	or   l                                           ; $6215: $b5
	daa                                              ; $6216: $27
	jp   hl                                          ; $6217: $e9


	adc  l                                           ; $6218: $8d
	rst  ToBoot                                         ; $6219: $c7
	sbc  l                                           ; $621a: $9d
	call nc, $bf8b                                   ; $621b: $d4 $8b $bf
	rst  $20                                         ; $621e: $e7
	adc  a                                           ; $621f: $8f
	ld   hl, sp+$67                                  ; $6220: $f8 $67
	cp   a                                           ; $6222: $bf
	or   c                                           ; $6223: $b1
	dec  d                                           ; $6224: $15
	ld   h, c                                        ; $6225: $61
	ld   de, $0411                                   ; $6226: $11 $11 $04
	ld   de, $f55f                                   ; $6229: $11 $5f $f5
	sbc  a                                           ; $622c: $9f
	rst  $38                                         ; $622d: $ff
	db   $fc                                         ; $622e: $fc
	sbc  a                                           ; $622f: $9f
	db   $fc                                         ; $6230: $fc
	rst  $28                                         ; $6231: $ef
	rst  $38                                         ; $6232: $ff
	ei                                               ; $6233: $fb
	cp   a                                           ; $6234: $bf
	db   $f4                                         ; $6235: $f4
	rla                                              ; $6236: $17
	ld   b, c                                        ; $6237: $41
	ld   de, $1111                                   ; $6238: $11 $11 $11
	ld   de, $6a14                                   ; $623b: $11 $14 $6a
	sbc  l                                           ; $623e: $9d
	rst  $38                                         ; $623f: $ff
	rst  $38                                         ; $6240: $ff
	ret                                              ; $6241: $c9


	rst  $38                                         ; $6242: $ff
	ld   c, a                                        ; $6243: $4f
	db   $fd                                         ; $6244: $fd
	rst  $38                                         ; $6245: $ff
	rst  $38                                         ; $6246: $ff
	db   $ed                                         ; $6247: $ed
	rst  $30                                         ; $6248: $f7
	ld   b, c                                        ; $6249: $41
	ld   de, $1111                                   ; $624a: $11 $11 $11
	ld   [de], a                                     ; $624d: $12
	ld   b, c                                        ; $624e: $41
	ld   de, $9b32                                   ; $624f: $11 $32 $9b
	ld   c, c                                        ; $6252: $49
	rst  $38                                         ; $6253: $ff
	jp   hl                                          ; $6254: $e9


	db   $ed                                         ; $6255: $ed
	rst  $38                                         ; $6256: $ff
	jp   c, $ffaf                                    ; $6257: $da $af $ff

	cp   e                                           ; $625a: $bb
	rst  $38                                         ; $625b: $ff
	pop  de                                          ; $625c: $d1
	dec  de                                          ; $625d: $1b
	add  c                                           ; $625e: $81
	ld   de, $1111                                   ; $625f: $11 $11 $11
	ld   de, $c11b                                   ; $6262: $11 $1b $c1
	add  hl, de                                      ; $6265: $19
	sbc  l                                           ; $6266: $9d
	rst  $38                                         ; $6267: $ff
	rst  $38                                         ; $6268: $ff
	cp   h                                           ; $6269: $bc
	db   $fd                                         ; $626a: $fd
	rst  $28                                         ; $626b: $ef
	db   $ec                                         ; $626c: $ec
	rst  $38                                         ; $626d: $ff
	db   $fd                                         ; $626e: $fd
	ld   c, c                                        ; $626f: $49
	and  d                                           ; $6270: $a2
	ld   [de], a                                     ; $6271: $12
	ld   hl, $1114                                   ; $6272: $21 $14 $11
	ld   de, $1111                                   ; $6275: $11 $11 $11
	push bc                                          ; $6278: $c5
	ld   a, c                                        ; $6279: $79
	cp   a                                           ; $627a: $bf
	rst  $30                                         ; $627b: $f7
	cpl                                              ; $627c: $2f
	ei                                               ; $627d: $fb
	ld   c, h                                        ; $627e: $4c
	rst  $38                                         ; $627f: $ff
	ret                                              ; $6280: $c9


	rst  $38                                         ; $6281: $ff
	ld   hl, sp+$69                                  ; $6282: $f8 $69
	ld   [hl], c                                     ; $6284: $71
	ld   de, $d111                                   ; $6285: $11 $11 $d1
	ld   de, $1156                                   ; $6288: $11 $56 $11
	dec  de                                          ; $628b: $1b
	ld   sp, hl                                      ; $628c: $f9
	dec  e                                           ; $628d: $1d
	rst  $38                                         ; $628e: $ff
	xor  e                                           ; $628f: $ab
	ld   a, b                                        ; $6290: $78
	rst  $38                                         ; $6291: $ff
	xor  b                                           ; $6292: $a8
	rst  $38                                         ; $6293: $ff
	ei                                               ; $6294: $fb
	adc  a                                           ; $6295: $8f
	xor  e                                           ; $6296: $ab
	pop  bc                                          ; $6297: $c1
	ld   [de], a                                     ; $6298: $12
	ld   d, d                                        ; $6299: $52
	ld   de, $7211                                   ; $629a: $11 $11 $72
	ld   de, $113d                                   ; $629d: $11 $3d $11
	sbc  a                                           ; $62a0: $9f
	rst  $38                                         ; $62a1: $ff
	pop  af                                          ; $62a2: $f1
	ld   c, a                                        ; $62a3: $4f
	ld   sp, hl                                      ; $62a4: $f9
	dec  de                                          ; $62a5: $1b
	rst  $38                                         ; $62a6: $ff
	cp   l                                           ; $62a7: $bd
	rst  JumpTable                                         ; $62a8: $df
	ei                                               ; $62a9: $fb
	ld   de, $11ef                                   ; $62aa: $11 $ef $11
	add  hl, de                                      ; $62ad: $19
	ld   sp, hl                                      ; $62ae: $f9
	ld   de, $118a                                   ; $62af: $11 $8a $11
	ld   de, $fcff                                   ; $62b2: $11 $ff $fc
	ld   e, [hl]                                     ; $62b5: $5e
	cp   $14                                         ; $62b6: $fe $14
	rst  $38                                         ; $62b8: $ff
	ld   sp, hl                                      ; $62b9: $f9
	rst  $28                                         ; $62ba: $ef
	rst  $38                                         ; $62bb: $ff
	add  l                                           ; $62bc: $85
	adc  e                                           ; $62bd: $8b
	ld   d, h                                        ; $62be: $54
	ld   de, $1431                                   ; $62bf: $11 $31 $14
	ld   de, $11a1                                   ; $62c2: $11 $a1 $11
	ld   h, c                                        ; $62c5: $61
	ld   a, a                                        ; $62c6: $7f
	ei                                               ; $62c7: $fb
	rra                                              ; $62c8: $1f
	pop  af                                          ; $62c9: $f1
	rst  $38                                         ; $62ca: $ff
	inc  e                                           ; $62cb: $1c
	db   $fc                                         ; $62cc: $fc
	cp   $cf                                         ; $62cd: $fe $cf
	db   $e4                                         ; $62cf: $e4
	jr   z, @-$46                                    ; $62d0: $28 $b8

	ld   de, $517d                                   ; $62d2: $11 $7d $51
	ld   de, $1111                                   ; $62d5: $11 $11 $11
	ld   a, [de]                                     ; $62d8: $1a
	rst  $38                                         ; $62d9: $ff
	ld   l, [hl]                                     ; $62da: $6e
	db   $db                                         ; $62db: $db
	ei                                               ; $62dc: $fb
	jr   @+$01                                       ; $62dd: $18 $ff

	rst  $30                                         ; $62df: $f7
	rst  $38                                         ; $62e0: $ff
	jp   hl                                          ; $62e1: $e9


	set  7, e                                        ; $62e2: $cb $fb
	ld   de, $2713                                   ; $62e4: $11 $13 $27
	ld   b, c                                        ; $62e7: $41
	ld   e, $c1                                      ; $62e8: $1e $c1
	ld   de, $11fd                                   ; $62ea: $11 $fd $11
	rst  $38                                         ; $62ed: $ff
	ld   de, $f8ff                                   ; $62ee: $11 $ff $f8
	ld   d, $ff                                      ; $62f1: $16 $ff
	ld   [$fc5e], a                                  ; $62f3: $ea $5e $fc
	ld   de, $11ff                                   ; $62f6: $11 $ff $11
	ld   h, $28                                      ; $62f9: $26 $28
	ld   de, $111a                                   ; $62fb: $11 $1a $11
	ld   de, $e1ff                                   ; $62fe: $11 $ff $e1
	rra                                              ; $6301: $1f
	pop  af                                          ; $6302: $f1
	rla                                              ; $6303: $17
	rst  $38                                         ; $6304: $ff
	ld   [hl], c                                     ; $6305: $71
	rst  $38                                         ; $6306: $ff
	cp   $12                                         ; $6307: $fe $12
	rst  $38                                         ; $6309: $ff
	ld   de, $f518                                   ; $630a: $11 $18 $f5
	ld   de, $617e                                   ; $630d: $11 $7e $61
	ld   d, $81                                      ; $6310: $16 $81
	ld   a, a                                        ; $6312: $7f
	push af                                          ; $6313: $f5
	rra                                              ; $6314: $1f
	pop  af                                          ; $6315: $f1
	dec  e                                           ; $6316: $1d
	rst  JumpTable                                         ; $6317: $df
	rst  $38                                         ; $6318: $ff
	rst  $28                                         ; $6319: $ef
	reti                                             ; $631a: $d9


	rst  $30                                         ; $631b: $f7
	dec  hl                                          ; $631c: $2b
	or   a                                           ; $631d: $b7
	ld   de, $a52b                                   ; $631e: $11 $2b $a5
	ld   de, $417a                                   ; $6321: $11 $7a $41
	ld   a, [de]                                     ; $6324: $1a
	ld   hl, sp+$5f                                  ; $6325: $f8 $5f
	add  sp, -$09                                    ; $6327: $e8 $f7
	rra                                              ; $6329: $1f
	ldh  a, [c]                                      ; $632a: $f2
	ld   c, e                                        ; $632b: $4b
	rst  JumpTable                                         ; $632c: $df
	rst  $30                                         ; $632d: $f7
	rra                                              ; $632e: $1f
	ei                                               ; $632f: $fb
	ld   [hl-], a                                    ; $6330: $32
	inc  [hl]                                        ; $6331: $34
	ld   b, c                                        ; $6332: $41
	ld   d, $71                                      ; $6333: $16 $71
	ld   de, $51bb                                   ; $6335: $11 $bb $51
	ld   e, $e5                                      ; $6338: $1e $e5
	ld   e, d                                        ; $633a: $5a
	xor  $f8                                         ; $633b: $ee $f8
	ld   e, a                                        ; $633d: $5f
	sbc  $f7                                         ; $633e: $de $f7
	ld   l, a                                        ; $6340: $6f
	ld   sp, hl                                      ; $6341: $f9
	ld   h, c                                        ; $6342: $61
	ld   h, a                                        ; $6343: $67
	ld   d, a                                        ; $6344: $57
	ld   h, e                                        ; $6345: $63
	adc  d                                           ; $6346: $8a
	ld   hl, $7112                                   ; $6347: $21 $12 $71
	inc  e                                           ; $634a: $1c
	ldh  a, [c]                                      ; $634b: $f2
	scf                                              ; $634c: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $634d: $cf
	pop  af                                          ; $634e: $f1
	cp   a                                           ; $634f: $bf
	adc  a                                           ; $6350: $8f
	ld   d, c                                        ; $6351: $51
	rst  $38                                         ; $6352: $ff
	ld   a, [$f56f]                                  ; $6353: $fa $6f $f5
	ld   d, l                                        ; $6356: $55
	ld   e, b                                        ; $6357: $58
	ld   [hl+], a                                    ; $6358: $22
	ld   h, l                                        ; $6359: $65
	ld   b, d                                        ; $635a: $42
	ld   de, $225a                                   ; $635b: $11 $5a $22
	rst  ToBoot                                         ; $635e: $c7
	ld   e, e                                        ; $635f: $5b
	ld   c, b                                        ; $6360: $48
	ld   a, [rAUD1ENV]                                  ; $6361: $fa $12 $ff
	pop  de                                          ; $6364: $d1
	adc  a                                           ; $6365: $8f
	db   $fd                                         ; $6366: $fd
	inc  de                                          ; $6367: $13
	rst  $38                                         ; $6368: $ff
	sub  c                                           ; $6369: $91
	ld   [de], a                                     ; $636a: $12
	xor  h                                           ; $636b: $ac
	ld   d, c                                        ; $636c: $51
	ld   l, a                                        ; $636d: $6f
	add  c                                           ; $636e: $81
	inc  d                                           ; $636f: $14
	jp   z, Jump_0e0_6523                            ; $6370: $ca $23 $65

	rst  $38                                         ; $6373: $ff
	ld   d, c                                        ; $6374: $51
	sbc  a                                           ; $6375: $9f
	pop  hl                                          ; $6376: $e1
	ld   c, a                                        ; $6377: $4f
	ld   a, [rAUD1LOW]                                  ; $6378: $fa $13 $ff
	and  c                                           ; $637b: $a1
	ld   l, d                                        ; $637c: $6a
	db   $ed                                         ; $637d: $ed
	ld   b, c                                        ; $637e: $41
	ld   e, e                                        ; $637f: $5b
	ld   [hl], l                                     ; $6380: $75
	ld   e, b                                        ; $6381: $58
	ld   b, e                                        ; $6382: $43
	inc  h                                           ; $6383: $24
	halt                                             ; $6384: $76
	or   e                                           ; $6385: $b3
	inc  e                                           ; $6386: $1c
	or   l                                           ; $6387: $b5
	xor  $17                                         ; $6388: $ee $17
	ld   a, [$a65d]                                  ; $638a: $fa $5d $a6
	xor  $87                                         ; $638d: $ee $87
	or   a                                           ; $638f: $b7
	cp   a                                           ; $6390: $bf
	ld   d, c                                        ; $6391: $51
	ld   l, c                                        ; $6392: $69
	ld   d, d                                        ; $6393: $52
	ld   a, e                                        ; $6394: $7b
	ld   d, [hl]                                     ; $6395: $56
	sub  c                                           ; $6396: $91
	ld   e, h                                        ; $6397: $5c
	ld   d, d                                        ; $6398: $52
	ld   b, [hl]                                     ; $6399: $46
	adc  d                                           ; $639a: $8a
	ld   [hl], e                                     ; $639b: $73
	adc  l                                           ; $639c: $8d
	db   $ed                                         ; $639d: $ed
	and  l                                           ; $639e: $a5
	ld   l, e                                        ; $639f: $6b
	jp   z, $999c                                    ; $63a0: $ca $9c $99

	cp   d                                           ; $63a3: $ba
	ld   h, h                                        ; $63a4: $64
	ld   h, a                                        ; $63a5: $67
	jp   z, $b66a                                    ; $63a6: $ca $6a $b6

	ld   b, h                                        ; $63a9: $44
	scf                                              ; $63aa: $37
	ld   h, l                                        ; $63ab: $65
	ld   d, a                                        ; $63ac: $57
	or   a                                           ; $63ad: $b7
	ld   a, e                                        ; $63ae: $7b
	ld   [hl], h                                     ; $63af: $74
	sbc  e                                           ; $63b0: $9b
	db   $fd                                         ; $63b1: $fd
	dec  d                                           ; $63b2: $15
	cp   $a4                                         ; $63b3: $fe $a4
	dec  l                                           ; $63b5: $2d
	rst  $30                                         ; $63b6: $f7
	adc  c                                           ; $63b7: $89
	xor  h                                           ; $63b8: $ac
	sub  h                                           ; $63b9: $94
	ld   e, d                                        ; $63ba: $5a
	ld   [hl], h                                     ; $63bb: $74
	ld   d, [hl]                                     ; $63bc: $56
	adc  e                                           ; $63bd: $8b
	or   a                                           ; $63be: $b7
	inc  sp                                          ; $63bf: $33
	adc  c                                           ; $63c0: $89
	halt                                             ; $63c1: $76
	add  hl, sp                                      ; $63c2: $39
	ld   a, [$9756]                                  ; $63c3: $fa $56 $97
	adc  e                                           ; $63c6: $8b
	xor  c                                           ; $63c7: $a9
	sbc  d                                           ; $63c8: $9a
	ret  z                                           ; $63c9: $c8

	ld   d, a                                        ; $63ca: $57
	sbc  h                                           ; $63cb: $9c
	sub  a                                           ; $63cc: $97
	sbc  b                                           ; $63cd: $98
	ld   l, b                                        ; $63ce: $68
	ld   [hl], a                                     ; $63cf: $77
	halt                                             ; $63d0: $76
	adc  e                                           ; $63d1: $8b
	sub  h                                           ; $63d2: $94
	ld   b, a                                        ; $63d3: $47
	ld   [hl], a                                     ; $63d4: $77
	adc  b                                           ; $63d5: $88
	sbc  d                                           ; $63d6: $9a
	add  h                                           ; $63d7: $84
	sbc  e                                           ; $63d8: $9b
	ld   h, a                                        ; $63d9: $67
	and  l                                           ; $63da: $a5
	adc  d                                           ; $63db: $8a
	adc  e                                           ; $63dc: $8b
	cp   b                                           ; $63dd: $b8
	sbc  b                                           ; $63de: $98
	add  a                                           ; $63df: $87
	ld   h, a                                        ; $63e0: $67
	ld   [hl], a                                     ; $63e1: $77
	xor  d                                           ; $63e2: $aa
	add  [hl]                                        ; $63e3: $86
	ld   [hl], a                                     ; $63e4: $77
	ld   a, b                                        ; $63e5: $78
	ld   h, l                                        ; $63e6: $65
	xor  c                                           ; $63e7: $a9
	ld   d, [hl]                                     ; $63e8: $56
	sbc  d                                           ; $63e9: $9a
	cp   b                                           ; $63ea: $b8
	ld   l, c                                        ; $63eb: $69
	cp   b                                           ; $63ec: $b8
	ld   d, [hl]                                     ; $63ed: $56
	ld   a, d                                        ; $63ee: $7a
	xor  c                                           ; $63ef: $a9
	adc  c                                           ; $63f0: $89
	cp   d                                           ; $63f1: $ba
	halt                                             ; $63f2: $76
	sbc  e                                           ; $63f3: $9b
	sbc  c                                           ; $63f4: $99
	ld   [hl], a                                     ; $63f5: $77
	xor  b                                           ; $63f6: $a8
	ld   h, [hl]                                     ; $63f7: $66
	adc  d                                           ; $63f8: $8a
	sub  a                                           ; $63f9: $97
	sbc  e                                           ; $63fa: $9b
	and  a                                           ; $63fb: $a7
	ld   d, [hl]                                     ; $63fc: $56
	adc  b                                           ; $63fd: $88
	ld   [hl], a                                     ; $63fe: $77
	adc  c                                           ; $63ff: $89
	cp   e                                           ; $6400: $bb
	adc  b                                           ; $6401: $88
	add  a                                           ; $6402: $87
	halt                                             ; $6403: $76
	ld   a, c                                        ; $6404: $79
	sbc  b                                           ; $6405: $98
	xor  b                                           ; $6406: $a8
	sbc  d                                           ; $6407: $9a
	add  [hl]                                        ; $6408: $86
	adc  c                                           ; $6409: $89
	ld   a, c                                        ; $640a: $79
	xor  b                                           ; $640b: $a8
	adc  b                                           ; $640c: $88
	ld   [hl], a                                     ; $640d: $77
	add  a                                           ; $640e: $87
	ld   a, b                                        ; $640f: $78
	adc  c                                           ; $6410: $89
	sbc  b                                           ; $6411: $98
	adc  b                                           ; $6412: $88
	add  a                                           ; $6413: $87
	ld   a, b                                        ; $6414: $78
	adc  b                                           ; $6415: $88
	sbc  d                                           ; $6416: $9a
	sbc  c                                           ; $6417: $99
	add  a                                           ; $6418: $87
	ld   a, b                                        ; $6419: $78
	adc  c                                           ; $641a: $89
	sbc  c                                           ; $641b: $99
	adc  b                                           ; $641c: $88
	add  a                                           ; $641d: $87
	ld   a, b                                        ; $641e: $78
	ld   [hl], a                                     ; $641f: $77
	ld   [hl], a                                     ; $6420: $77
	ld   a, c                                        ; $6421: $79
	add  a                                           ; $6422: $87
	sbc  c                                           ; $6423: $99
	adc  c                                           ; $6424: $89
	adc  b                                           ; $6425: $88
	add  a                                           ; $6426: $87
	ld   a, b                                        ; $6427: $78
	sbc  c                                           ; $6428: $99
	adc  c                                           ; $6429: $89
	adc  b                                           ; $642a: $88
	sub  a                                           ; $642b: $97
	ld   a, b                                        ; $642c: $78
	adc  b                                           ; $642d: $88
	sbc  c                                           ; $642e: $99
	adc  b                                           ; $642f: $88
	ld   [hl], a                                     ; $6430: $77
	sbc  b                                           ; $6431: $98
	adc  c                                           ; $6432: $89
	sbc  c                                           ; $6433: $99
	sbc  b                                           ; $6434: $98
	adc  c                                           ; $6435: $89
	add  a                                           ; $6436: $87
	adc  b                                           ; $6437: $88
	adc  c                                           ; $6438: $89
	add  a                                           ; $6439: $87
	ld   a, c                                        ; $643a: $79
	add  a                                           ; $643b: $87
	adc  b                                           ; $643c: $88
	ld   [hl], a                                     ; $643d: $77
	adc  b                                           ; $643e: $88
	ld   a, c                                        ; $643f: $79
	sbc  b                                           ; $6440: $98
	adc  b                                           ; $6441: $88
	adc  c                                           ; $6442: $89
	sub  a                                           ; $6443: $97
	adc  c                                           ; $6444: $89
	sbc  b                                           ; $6445: $98
	adc  b                                           ; $6446: $88
	adc  b                                           ; $6447: $88
	adc  b                                           ; $6448: $88
	adc  c                                           ; $6449: $89
	adc  b                                           ; $644a: $88
	adc  b                                           ; $644b: $88
	adc  b                                           ; $644c: $88
	add  a                                           ; $644d: $87
	ld   a, b                                        ; $644e: $78
	adc  b                                           ; $644f: $88
	sbc  c                                           ; $6450: $99
	sbc  c                                           ; $6451: $99
	sbc  b                                           ; $6452: $98
	adc  b                                           ; $6453: $88
	adc  b                                           ; $6454: $88
	adc  b                                           ; $6455: $88
	sbc  b                                           ; $6456: $98
	adc  b                                           ; $6457: $88
	adc  b                                           ; $6458: $88
	adc  b                                           ; $6459: $88
	adc  b                                           ; $645a: $88
	adc  b                                           ; $645b: $88
	ld   a, b                                        ; $645c: $78
	adc  b                                           ; $645d: $88
	add  a                                           ; $645e: $87
	adc  b                                           ; $645f: $88
	adc  b                                           ; $6460: $88
	adc  b                                           ; $6461: $88
	adc  b                                           ; $6462: $88
	adc  b                                           ; $6463: $88
	adc  b                                           ; $6464: $88
	adc  c                                           ; $6465: $89
	sbc  b                                           ; $6466: $98
	sbc  b                                           ; $6467: $98
	adc  b                                           ; $6468: $88
	sbc  c                                           ; $6469: $99
	adc  b                                           ; $646a: $88
	adc  b                                           ; $646b: $88
	adc  b                                           ; $646c: $88
	adc  b                                           ; $646d: $88
	adc  b                                           ; $646e: $88
	adc  b                                           ; $646f: $88
	adc  b                                           ; $6470: $88
	adc  b                                           ; $6471: $88
	adc  b                                           ; $6472: $88
	ld   [hl], a                                     ; $6473: $77
	add  a                                           ; $6474: $87
	ld   a, b                                        ; $6475: $78
	adc  b                                           ; $6476: $88
	adc  b                                           ; $6477: $88
	adc  b                                           ; $6478: $88
	adc  b                                           ; $6479: $88
	adc  b                                           ; $647a: $88
	adc  b                                           ; $647b: $88
	adc  b                                           ; $647c: $88
	adc  b                                           ; $647d: $88
	adc  b                                           ; $647e: $88
	adc  b                                           ; $647f: $88
	sbc  b                                           ; $6480: $98
	adc  b                                           ; $6481: $88
	adc  b                                           ; $6482: $88
	adc  b                                           ; $6483: $88
	adc  b                                           ; $6484: $88
	adc  b                                           ; $6485: $88
	adc  b                                           ; $6486: $88
	adc  b                                           ; $6487: $88
	adc  b                                           ; $6488: $88
	adc  b                                           ; $6489: $88
	adc  b                                           ; $648a: $88
	adc  b                                           ; $648b: $88
	adc  b                                           ; $648c: $88
	adc  b                                           ; $648d: $88
	adc  b                                           ; $648e: $88
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	adc  b                                           ; $6491: $88
	adc  b                                           ; $6492: $88
	adc  b                                           ; $6493: $88
	adc  b                                           ; $6494: $88
	adc  b                                           ; $6495: $88
	adc  b                                           ; $6496: $88
	adc  b                                           ; $6497: $88
	adc  b                                           ; $6498: $88
	adc  b                                           ; $6499: $88
	adc  b                                           ; $649a: $88
	adc  b                                           ; $649b: $88
	adc  b                                           ; $649c: $88
	adc  b                                           ; $649d: $88
	adc  b                                           ; $649e: $88
	adc  b                                           ; $649f: $88
	adc  b                                           ; $64a0: $88
	adc  b                                           ; $64a1: $88
	adc  b                                           ; $64a2: $88
	adc  b                                           ; $64a3: $88
	adc  b                                           ; $64a4: $88
	adc  b                                           ; $64a5: $88
	adc  b                                           ; $64a6: $88
	adc  b                                           ; $64a7: $88
	adc  b                                           ; $64a8: $88
	adc  b                                           ; $64a9: $88
	adc  b                                           ; $64aa: $88
	adc  b                                           ; $64ab: $88
	adc  b                                           ; $64ac: $88
	add  c                                           ; $64ad: $81
	ld   de, $1111                                   ; $64ae: $11 $11 $11
	ld   de, $1111                                   ; $64b1: $11 $11 $11
	ld   de, $1111                                   ; $64b4: $11 $11 $11
	ld   de, $1111                                   ; $64b7: $11 $11 $11
	ld   de, $1111                                   ; $64ba: $11 $11 $11
	ld   de, $1111                                   ; $64bd: $11 $11 $11
	ld   de, $1111                                   ; $64c0: $11 $11 $11
	ld   de, $1111                                   ; $64c3: $11 $11 $11
	ld   de, $1111                                   ; $64c6: $11 $11 $11
	ld   de, $1111                                   ; $64c9: $11 $11 $11
	ld   de, $1111                                   ; $64cc: $11 $11 $11
	ld   de, $1111                                   ; $64cf: $11 $11 $11
	ld   de, $1111                                   ; $64d2: $11 $11 $11
	ld   de, $4800                                   ; $64d5: $11 $00 $48
	ld   de, $1111                                   ; $64d8: $11 $11 $11
	ld   de, $1111                                   ; $64db: $11 $11 $11
	ld   de, $1111                                   ; $64de: $11 $11 $11
	ld   de, $5413                                   ; $64e1: $11 $13 $54
	ld   d, h                                        ; $64e4: $54
	ld   d, h                                        ; $64e5: $54
	ld   b, c                                        ; $64e6: $41
	rra                                              ; $64e7: $1f
	rst  $38                                         ; $64e8: $ff
	pop  af                                          ; $64e9: $f1
	ld   de, $1911                                   ; $64ea: $11 $11 $19
	ld   hl, $1c11                                   ; $64ed: $21 $11 $1c
	db   $dd                                         ; $64f0: $dd
	cp   h                                           ; $64f1: $bc
	db   $dd                                         ; $64f2: $dd
	or   c                                           ; $64f3: $b1
	ld   de, $1111                                   ; $64f4: $11 $11 $11
	ld   de, $1111                                   ; $64f7: $11 $11 $11
	ld   de, $1111                                   ; $64fa: $11 $11 $11
	ld   de, $1111                                   ; $64fd: $11 $11 $11
	ld   de, $5411                                   ; $6500: $11 $11 $54
	ld   b, h                                        ; $6503: $44
	add  hl, hl                                      ; $6504: $29
	ld   de, $5454                                   ; $6505: $11 $54 $54
	ld   h, a                                        ; $6508: $67
	ld   [hl], d                                     ; $6509: $72
	ld   de, $1111                                   ; $650a: $11 $11 $11
	ld   de, $1112                                   ; $650d: $11 $12 $11
	ld   [de], a                                     ; $6510: $12
	ld   de, $1111                                   ; $6511: $11 $11 $11
	ld   h, [hl]                                     ; $6514: $66
	halt                                             ; $6515: $76
	ld   sp, hl                                      ; $6516: $f9
	ld   de, $8888                                   ; $6517: $11 $88 $88
	add  a                                           ; $651a: $87
	ld   [hl], a                                     ; $651b: $77
	ld   [hl], a                                     ; $651c: $77
	halt                                             ; $651d: $76
	ld   h, [hl]                                     ; $651e: $66
	ld   h, [hl]                                     ; $651f: $66
	ld   d, l                                        ; $6520: $55
	ld   d, l                                        ; $6521: $55
	ld   b, h                                        ; $6522: $44

Jump_0e0_6523:
	ld   b, h                                        ; $6523: $44
	ld   b, h                                        ; $6524: $44
	ld   d, l                                        ; $6525: $55
	ld   d, [hl]                                     ; $6526: $56
	ld   h, a                                        ; $6527: $67
	adc  c                                           ; $6528: $89
	xor  e                                           ; $6529: $ab
	call $fedd                                       ; $652a: $cd $dd $fe
	rst  $38                                         ; $652d: $ff
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	cp   $ed                                         ; $6530: $fe $ed
	db   $dd                                         ; $6532: $dd
	res  3, c                                        ; $6533: $cb $99
	add  a                                           ; $6535: $87
	ld   h, l                                        ; $6536: $65
	ld   [hl-], a                                    ; $6537: $32
	ld   de, $1111                                   ; $6538: $11 $11 $11
	ld   de, $1111                                   ; $653b: $11 $11 $11
	ld   de, $6714                                   ; $653e: $11 $14 $67
	sbc  h                                           ; $6541: $9c
	sbc  $ff                                         ; $6542: $de $ff
	rst  $38                                         ; $6544: $ff
	rst  $38                                         ; $6545: $ff
	rst  $38                                         ; $6546: $ff
	rst  $38                                         ; $6547: $ff
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	db   $fd                                         ; $654b: $fd
	call z, $87b9                                    ; $654c: $cc $b9 $87
	ld   d, h                                        ; $654f: $54
	ld   sp, $1111                                   ; $6550: $31 $11 $11
	ld   de, $1111                                   ; $6553: $11 $11 $11
	ld   de, $1111                                   ; $6556: $11 $11 $11
	ld   [hl], $7a                                   ; $6559: $36 $7a
	adc  $ff                                         ; $655b: $ce $ff
	rst  $38                                         ; $655d: $ff
	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	rst  $38                                         ; $6562: $ff
	rst  $38                                         ; $6563: $ff
	rst  $38                                         ; $6564: $ff
	call c, $97ba                                    ; $6565: $dc $ba $97
	ld   h, l                                        ; $6568: $65
	ld   sp, $1111                                   ; $6569: $31 $11 $11
	ld   de, $1111                                   ; $656c: $11 $11 $11
	ld   de, $1111                                   ; $656f: $11 $11 $11
	inc  de                                          ; $6572: $13
	ld   h, a                                        ; $6573: $67
	xor  l                                           ; $6574: $ad
	rst  $38                                         ; $6575: $ff
	rst  $38                                         ; $6576: $ff
	rst  $38                                         ; $6577: $ff
	rst  $38                                         ; $6578: $ff
	rst  $38                                         ; $6579: $ff
	rst  $38                                         ; $657a: $ff
	rst  $38                                         ; $657b: $ff
	rst  $38                                         ; $657c: $ff
	rst  $38                                         ; $657d: $ff
	db   $fd                                         ; $657e: $fd
	res  5, b                                        ; $657f: $cb $a8
	ld   h, l                                        ; $6581: $65
	ld   sp, $1111                                   ; $6582: $31 $11 $11
	ld   de, $1111                                   ; $6585: $11 $11 $11
	ld   de, $1111                                   ; $6588: $11 $11 $11
	ld   [de], a                                     ; $658b: $12
	ld   e, b                                        ; $658c: $58
	cp   [hl]                                        ; $658d: $be
	rst  $38                                         ; $658e: $ff
	rst  $38                                         ; $658f: $ff
	rst  $38                                         ; $6590: $ff
	rst  $38                                         ; $6591: $ff
	rst  $38                                         ; $6592: $ff
	rst  $38                                         ; $6593: $ff
	rst  $38                                         ; $6594: $ff
	rst  $38                                         ; $6595: $ff
	rst  $38                                         ; $6596: $ff
	db   $fd                                         ; $6597: $fd
	ret                                              ; $6598: $c9


	add  [hl]                                        ; $6599: $86
	ld   b, d                                        ; $659a: $42
	ld   de, $1111                                   ; $659b: $11 $11 $11
	ld   de, $1111                                   ; $659e: $11 $11 $11
	ld   de, $1111                                   ; $65a1: $11 $11 $11
	ld   [hl], $9d                                   ; $65a4: $36 $9d
	rst  $38                                         ; $65a6: $ff
	rst  $38                                         ; $65a7: $ff
	rst  $38                                         ; $65a8: $ff
	rst  $38                                         ; $65a9: $ff

Jump_0e0_65aa:
	rst  $38                                         ; $65aa: $ff
	rst  $38                                         ; $65ab: $ff
	rst  $38                                         ; $65ac: $ff
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	cp   $cb                                         ; $65af: $fe $cb
	add  [hl]                                        ; $65b1: $86
	ld   b, d                                        ; $65b2: $42
	ld   de, $1111                                   ; $65b3: $11 $11 $11
	ld   de, $1111                                   ; $65b6: $11 $11 $11
	ld   de, $1111                                   ; $65b9: $11 $11 $11
	ld   b, [hl]                                     ; $65bc: $46
	sbc  l                                           ; $65bd: $9d
	rst  $38                                         ; $65be: $ff
	rst  $38                                         ; $65bf: $ff
	rst  $38                                         ; $65c0: $ff
	rst  $38                                         ; $65c1: $ff
	rst  $38                                         ; $65c2: $ff
	rst  $38                                         ; $65c3: $ff
	rst  $38                                         ; $65c4: $ff
	rst  $38                                         ; $65c5: $ff
	rst  $38                                         ; $65c6: $ff
	rst  $38                                         ; $65c7: $ff
	reti                                             ; $65c8: $d9


	ld   [hl], l                                     ; $65c9: $75
	ld   hl, $1111                                   ; $65ca: $21 $11 $11
	ld   de, $1111                                   ; $65cd: $11 $11 $11
	ld   de, $1111                                   ; $65d0: $11 $11 $11
	ld   [de], a                                     ; $65d3: $12
	ld   e, c                                        ; $65d4: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65d5: $cf
	rst  $38                                         ; $65d6: $ff
	rst  $38                                         ; $65d7: $ff
	rst  $38                                         ; $65d8: $ff
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	rst  $38                                         ; $65db: $ff
	rst  $38                                         ; $65dc: $ff
	rst  $38                                         ; $65dd: $ff
	rst  $38                                         ; $65de: $ff
	db   $fc                                         ; $65df: $fc
	or   a                                           ; $65e0: $b7
	ld   d, e                                        ; $65e1: $53
	ld   de, $1111                                   ; $65e2: $11 $11 $11
	ld   de, $1111                                   ; $65e5: $11 $11 $11
	ld   de, $1111                                   ; $65e8: $11 $11 $11
	ld   [hl], $bf                                   ; $65eb: $36 $bf
	rst  $38                                         ; $65ed: $ff
	rst  $38                                         ; $65ee: $ff
	rst  $38                                         ; $65ef: $ff
	rst  $38                                         ; $65f0: $ff
	rst  $38                                         ; $65f1: $ff
	rst  $38                                         ; $65f2: $ff
	rst  $38                                         ; $65f3: $ff
	rst  $38                                         ; $65f4: $ff
	rst  $38                                         ; $65f5: $ff
	cp   $a8                                         ; $65f6: $fe $a8
	ld   d, d                                        ; $65f8: $52
	ld   de, $1111                                   ; $65f9: $11 $11 $11
	ld   de, $1111                                   ; $65fc: $11 $11 $11
	ld   de, $7912                                   ; $65ff: $11 $12 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6602: $cf
	rst  $38                                         ; $6603: $ff
	rst  $38                                         ; $6604: $ff
	rst  $38                                         ; $6605: $ff
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	rst  $38                                         ; $660a: $ff
	rst  $38                                         ; $660b: $ff
	db   $fd                                         ; $660c: $fd
	cp   b                                           ; $660d: $b8
	ld   h, h                                        ; $660e: $64
	ld   de, $1111                                   ; $660f: $11 $11 $11
	ld   de, $1111                                   ; $6612: $11 $11 $11
	ld   l, a                                        ; $6615: $6f
	rst  $38                                         ; $6616: $ff
	rst  $38                                         ; $6617: $ff
	rst  $38                                         ; $6618: $ff
	xor  b                                           ; $6619: $a8
	ld   h, d                                        ; $661a: $62
	inc  [hl]                                        ; $661b: $34
	cp   a                                           ; $661c: $bf
	rst  $38                                         ; $661d: $ff
	rst  $38                                         ; $661e: $ff
	rst  $38                                         ; $661f: $ff
	rst  $38                                         ; $6620: $ff
	ei                                               ; $6621: $fb
	sub  e                                           ; $6622: $93
	inc  de                                          ; $6623: $13
	dec  [hl]                                        ; $6624: $35
	ld   h, h                                        ; $6625: $64
	ld   de, $1111                                   ; $6626: $11 $11 $11
	ld   de, $1911                                   ; $6629: $11 $11 $19
	rst  $38                                         ; $662c: $ff
	rst  $38                                         ; $662d: $ff
	rst  $38                                         ; $662e: $ff
	ld   hl, sp+$13                                  ; $662f: $f8 $13
	ld   de, $ff3d                                   ; $6631: $11 $3d $ff
	rst  $38                                         ; $6634: $ff
	rst  $38                                         ; $6635: $ff
	rst  $38                                         ; $6636: $ff
	add  sp, $66                                     ; $6637: $e8 $66
	ld   [hl+], a                                    ; $6639: $22
	ld   l, c                                        ; $663a: $69
	add  [hl]                                        ; $663b: $86
	ld   [hl], c                                     ; $663c: $71
	ld   de, $1111                                   ; $663d: $11 $11 $11
	ld   de, $ff17                                   ; $6640: $11 $17 $ff
	rst  $38                                         ; $6643: $ff
	rst  $38                                         ; $6644: $ff
	sub  a                                           ; $6645: $97
	ld   de, $1e11                                   ; $6646: $11 $11 $1e
	rst  $38                                         ; $6649: $ff
	rst  $38                                         ; $664a: $ff
	rst  $38                                         ; $664b: $ff
	db   $fd                                         ; $664c: $fd
	ld   [hl], h                                     ; $664d: $74
	ld   b, e                                        ; $664e: $43
	ld   h, [hl]                                     ; $664f: $66
	adc  [hl]                                        ; $6650: $8e
	jp   z, $1161                                    ; $6651: $ca $61 $11

	ld   de, $1111                                   ; $6654: $11 $11 $11
	dec  e                                           ; $6657: $1d
	rst  $38                                         ; $6658: $ff
	rst  $38                                         ; $6659: $ff
	cp   $11                                         ; $665a: $fe $11
	ld   de, $8f11                                   ; $665c: $11 $11 $8f
	rst  $38                                         ; $665f: $ff
	rst  $38                                         ; $6660: $ff
	rst  $38                                         ; $6661: $ff
	ld   [hl], h                                     ; $6662: $74
	ld   de, $aa25                                   ; $6663: $11 $25 $aa
	rst  $38                                         ; $6666: $ff
	db   $fc                                         ; $6667: $fc
	ld   hl, $1111                                   ; $6668: $21 $11 $11
	ld   de, $1f11                                   ; $666b: $11 $11 $1f
	rst  $38                                         ; $666e: $ff
	rst  $38                                         ; $666f: $ff
	di                                               ; $6670: $f3
	ld   de, $1511                                   ; $6671: $11 $11 $15
	rst  $38                                         ; $6674: $ff
	rst  $38                                         ; $6675: $ff
	rst  $38                                         ; $6676: $ff
	rst  $30                                         ; $6677: $f7
	ld   de, $6b23                                   ; $6678: $11 $23 $6b
	rst  $28                                         ; $667b: $ef
	rst  $38                                         ; $667c: $ff
	sub  $11                                         ; $667d: $d6 $11
	ld   de, $1111                                   ; $667f: $11 $11 $11
	ld   de, $ffff                                   ; $6682: $11 $ff $ff
	rst  $38                                         ; $6685: $ff
	ld   d, c                                        ; $6686: $51
	ld   de, $7d13                                   ; $6687: $11 $13 $7d
	rst  $38                                         ; $668a: $ff
	rst  $38                                         ; $668b: $ff
	db   $fd                                         ; $668c: $fd
	ld   sp, $5f12                                   ; $668d: $31 $12 $5f
	rst  $28                                         ; $6690: $ef
	rst  $38                                         ; $6691: $ff
	ld   a, [$1141]                                  ; $6692: $fa $41 $11
	ld   de, $1111                                   ; $6695: $11 $11 $11
	rla                                              ; $6698: $17
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	push af                                          ; $669b: $f5
	ld   de, $1911                                   ; $669c: $11 $11 $19
	rst  $38                                         ; $669f: $ff
	rst  $38                                         ; $66a0: $ff
	rst  $38                                         ; $66a1: $ff
	sub  e                                           ; $66a2: $93
	ld   de, $ef68                                   ; $66a3: $11 $68 $ef
	rst  $38                                         ; $66a6: $ff
	rst  $38                                         ; $66a7: $ff

Call_0e0_66a8:
	and  d                                           ; $66a8: $a2
	ld   de, $1111                                   ; $66a9: $11 $11 $11
	ld   de, $2f11                                   ; $66ac: $11 $11 $2f
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	ld   sp, $1111                                   ; $66b1: $31 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66b4: $cf
	rst  $38                                         ; $66b5: $ff
	rst  $38                                         ; $66b6: $ff
	ld   hl, sp+$11                                  ; $66b7: $f8 $11
	ld   d, $af                                      ; $66b9: $16 $af
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	ld   a, [$1111]                                  ; $66bd: $fa $11 $11
	ld   de, $1111                                   ; $66c0: $11 $11 $11
	ld   de, $ffff                                   ; $66c3: $11 $ff $ff
	or   $11                                         ; $66c6: $f6 $11
	ld   de, rAUD1HIGH                                   ; $66c8: $11 $14 $ff
	rst  $38                                         ; $66cb: $ff
	rst  $38                                         ; $66cc: $ff
	pop  af                                          ; $66cd: $f1
	ld   de, $ff1d                                   ; $66ce: $11 $1d $ff
	rst  $38                                         ; $66d1: $ff
	cp   $d4                                         ; $66d2: $fe $d4
	ld   de, $1111                                   ; $66d4: $11 $11 $11
	ld   de, $1911                                   ; $66d7: $11 $11 $19
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	sub  c                                           ; $66dc: $91
	ld   de, $1f11                                   ; $66dd: $11 $11 $1f
	rst  $38                                         ; $66e0: $ff
	rst  $38                                         ; $66e1: $ff
	rst  $38                                         ; $66e2: $ff
	ld   de, $8f11                                   ; $66e3: $11 $11 $8f
	rst  $38                                         ; $66e6: $ff
	rst  $38                                         ; $66e7: $ff
	ld   hl, sp+$61                                  ; $66e8: $f8 $61
	ld   de, $1111                                   ; $66ea: $11 $11 $11
	ld   de, $3f11                                   ; $66ed: $11 $11 $3f
	rst  $38                                         ; $66f0: $ff
	db   $fc                                         ; $66f1: $fc
	ld   de, $1111                                   ; $66f2: $11 $11 $11
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	ldh  a, [c]                                      ; $66f8: $f2
	ld   de, $ff17                                   ; $66f9: $11 $17 $ff
	rst  $38                                         ; $66fc: $ff
	rst  $38                                         ; $66fd: $ff
	sbc  b                                           ; $66fe: $98
	ld   de, $1111                                   ; $66ff: $11 $11 $11
	ld   de, $1111                                   ; $6702: $11 $11 $11
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	pop  af                                          ; $6707: $f1
	ld   de, $1915                                   ; $6708: $11 $15 $19
	rst  $38                                         ; $670b: $ff
	rst  $38                                         ; $670c: $ff
	rst  $38                                         ; $670d: $ff
	ld   b, c                                        ; $670e: $41
	ld   de, $ff5f                                   ; $670f: $11 $5f $ff
	rst  $38                                         ; $6712: $ff
	ld   sp, hl                                      ; $6713: $f9
	ld   d, c                                        ; $6714: $51
	ld   de, $1111                                   ; $6715: $11 $11 $11
	ld   de, $1f11                                   ; $6718: $11 $11 $1f
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	ld   de, $3111                                   ; $671d: $11 $11 $31
	rra                                              ; $6720: $1f
	rst  $38                                         ; $6721: $ff
	rst  $38                                         ; $6722: $ff
	di                                               ; $6723: $f3
	ld   de, rAUD1LEN                                   ; $6724: $11 $11 $ff
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	or   e                                           ; $6729: $b3
	ld   de, $1111                                   ; $672a: $11 $11 $11
	ld   de, $1111                                   ; $672d: $11 $11 $11
	rst  $38                                         ; $6730: $ff
	rst  $38                                         ; $6731: $ff
	pop  af                                          ; $6732: $f1
	ld   de, $1111                                   ; $6733: $11 $11 $11
	rst  $38                                         ; $6736: $ff
	rst  $38                                         ; $6737: $ff
	rst  $38                                         ; $6738: $ff
	ld   [hl], c                                     ; $6739: $71
	ld   de, $ff1f                                   ; $673a: $11 $1f $ff
	rst  $38                                         ; $673d: $ff
	cp   $31                                         ; $673e: $fe $31
	ld   de, $1111                                   ; $6740: $11 $11 $11
	ld   de, $1c11                                   ; $6743: $11 $11 $1c
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	ld   de, $5111                                   ; $6748: $11 $11 $51
	rra                                              ; $674b: $1f
	rst  $38                                         ; $674c: $ff
	rst  $38                                         ; $674d: $ff
	ld   hl, sp+$11                                  ; $674e: $f8 $11
	ld   de, $ffcf                                   ; $6750: $11 $cf $ff
	rst  $38                                         ; $6753: $ff
	di                                               ; $6754: $f3
	ld   hl, $1111                                   ; $6755: $21 $11 $11
	ld   de, $1111                                   ; $6758: $11 $11 $11
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	pop  af                                          ; $675d: $f1
	ld   de, $1115                                   ; $675e: $11 $15 $11
	rst  $38                                         ; $6761: $ff
	rst  $38                                         ; $6762: $ff
	rst  $38                                         ; $6763: $ff
	ld   sp, $1911                                   ; $6764: $31 $11 $19
	rst  $38                                         ; $6767: $ff
	rst  $38                                         ; $6768: $ff
	ld   hl, sp+$13                                  ; $6769: $f8 $13
	ld   de, $1111                                   ; $676b: $11 $11 $11
	ld   de, $1f11                                   ; $676e: $11 $11 $1f
	rst  $38                                         ; $6771: $ff
	rst  $38                                         ; $6772: $ff
	ld   de, $1111                                   ; $6773: $11 $11 $11
	rra                                              ; $6776: $1f
	rst  $38                                         ; $6777: $ff
	rst  $38                                         ; $6778: $ff
	pop  af                                          ; $6779: $f1
	inc  de                                          ; $677a: $13
	ld   de, $ff6f                                   ; $677b: $11 $6f $ff
	rst  $38                                         ; $677e: $ff
	ld   b, e                                        ; $677f: $43
	ld   b, c                                        ; $6780: $41
	ld   hl, $1111                                   ; $6781: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $6784: $11 $11 $ff
	rst  $38                                         ; $6787: $ff
	sub  c                                           ; $6788: $91
	ld   de, $1611                                   ; $6789: $11 $11 $16
	rst  $38                                         ; $678c: $ff
	rst  $38                                         ; $678d: $ff
	rst  $38                                         ; $678e: $ff
	inc  de                                          ; $678f: $13
	ld   h, c                                        ; $6790: $61
	ld   d, $ff                                      ; $6791: $16 $ff
	rst  $38                                         ; $6793: $ff
	ldh  a, [c]                                      ; $6794: $f2
	ld   d, d                                        ; $6795: $52
	ld   [de], a                                     ; $6796: $12
	ld   de, $1111                                   ; $6797: $11 $11 $11
	ld   de, $ffef                                   ; $679a: $11 $ef $ff
	db   $f4                                         ; $679d: $f4
	ld   de, $1111                                   ; $679e: $11 $11 $11
	rst  $38                                         ; $67a1: $ff
	rst  $38                                         ; $67a2: $ff
	rst  $38                                         ; $67a3: $ff
	push de                                          ; $67a4: $d5
	add  e                                           ; $67a5: $83
	ld   de, $ffcf                                   ; $67a6: $11 $cf $ff
	db   $fc                                         ; $67a9: $fc
	ld   a, c                                        ; $67aa: $79

jr_0e0_67ab:
	ld   [de], a                                     ; $67ab: $12
	ld   de, $1111                                   ; $67ac: $11 $11 $11
	ld   de, $ff6f                                   ; $67af: $11 $6f $ff
	ei                                               ; $67b2: $fb
	and  c                                           ; $67b3: $a1
	ld   de, rAUD1LEN                                   ; $67b4: $11 $11 $ff
	rst  $38                                         ; $67b7: $ff

Call_0e0_67b8:
	rst  $38                                         ; $67b8: $ff
	cp   $f5                                         ; $67b9: $fe $f5
	ld   de, $ff57                                   ; $67bb: $11 $57 $ff
	rst  $38                                         ; $67be: $ff
	cp   a                                           ; $67bf: $bf
	sub  c                                           ; $67c0: $91
	ld   de, $1111                                   ; $67c1: $11 $11 $11
	ld   de, $ff1f                                   ; $67c4: $11 $1f $ff
	rst  $38                                         ; $67c7: $ff
	push af                                          ; $67c8: $f5
	ld   de, $4f11                                   ; $67c9: $11 $11 $4f
	rst  $38                                         ; $67cc: $ff

Jump_0e0_67cd:
	rst  $38                                         ; $67cd: $ff
	rst  $38                                         ; $67ce: $ff
	ei                                               ; $67cf: $fb
	ld   de, $ff36                                   ; $67d0: $11 $36 $ff
	rst  $38                                         ; $67d3: $ff
	rst  $28                                         ; $67d4: $ef
	db   $e4                                         ; $67d5: $e4
	ld   de, $1111                                   ; $67d6: $11 $11 $11
	ld   de, $ff1f                                   ; $67d9: $11 $1f $ff
	rst  $38                                         ; $67dc: $ff
	rst  $38                                         ; $67dd: $ff
	ld   de, $1f11                                   ; $67de: $11 $11 $1f
	rst  $38                                         ; $67e1: $ff
	rst  $38                                         ; $67e2: $ff
	rst  $38                                         ; $67e3: $ff
	cp   $11                                         ; $67e4: $fe $11
	ld   [hl], $95                                   ; $67e6: $36 $95
	sbc  a                                           ; $67e8: $9f
	rst  $38                                         ; $67e9: $ff
	pop  af                                          ; $67ea: $f1
	ld   de, $1111                                   ; $67eb: $11 $11 $11
	ld   de, $ff1f                                   ; $67ee: $11 $1f $ff
	rst  $38                                         ; $67f1: $ff
	rst  $38                                         ; $67f2: $ff
	ld   de, $2b11                                   ; $67f3: $11 $11 $2b
	ei                                               ; $67f6: $fb
	rst  $38                                         ; $67f7: $ff
	rst  $38                                         ; $67f8: $ff
	rst  $38                                         ; $67f9: $ff
	halt                                             ; $67fa: $76
	ld   c, b                                        ; $67fb: $48
	ld   sp, $ff6e                                   ; $67fc: $31 $6e $ff
	ld   [hl], h                                     ; $67ff: $74
	ld   d, c                                        ; $6800: $51
	ld   de, $1111                                   ; $6801: $11 $11 $11
	rst  $28                                         ; $6804: $ef
	rst  $38                                         ; $6805: $ff
	rst  $38                                         ; $6806: $ff
	rst  $38                                         ; $6807: $ff
	pop  bc                                          ; $6808: $c1
	ld   de, $114a                                   ; $6809: $11 $4a $11
	rst  $38                                         ; $680c: $ff
	rst  $38                                         ; $680d: $ff
	rst  $38                                         ; $680e: $ff
	rst  $38                                         ; $680f: $ff
	jp   nc, $bb11                                   ; $6810: $d2 $11 $bb

	sub  c                                           ; $6813: $91
	dec  de                                          ; $6814: $1b
	ld   d, c                                        ; $6815: $51
	ld   de, $1111                                   ; $6816: $11 $11 $11
	rst  $38                                         ; $6819: $ff
	cp   a                                           ; $681a: $bf
	rst  $38                                         ; $681b: $ff
	rst  $38                                         ; $681c: $ff
	sub  c                                           ; $681d: $91
	dec  de                                          ; $681e: $1b
	ld   d, c                                        ; $681f: $51
	inc  d                                           ; $6820: $14
	rst  $38                                         ; $6821: $ff
	rst  $38                                         ; $6822: $ff
	rst  $38                                         ; $6823: $ff
	rst  $38                                         ; $6824: $ff
	or   c                                           ; $6825: $b1
	jr   jr_0e0_67ab                                 ; $6826: $18 $83

	ld   de, $1124                                   ; $6828: $11 $24 $11
	ld   de, $1f11                                   ; $682b: $11 $11 $1f
	rst  $30                                         ; $682e: $f7
	rst  $38                                         ; $682f: $ff
	rst  $38                                         ; $6830: $ff
	rst  $38                                         ; $6831: $ff
	inc  de                                          ; $6832: $13
	add  $11                                         ; $6833: $c6 $11
	rra                                              ; $6835: $1f
	rst  $38                                         ; $6836: $ff
	rst  $38                                         ; $6837: $ff
	rst  $38                                         ; $6838: $ff
	rst  $38                                         ; $6839: $ff
	ld   h, [hl]                                     ; $683a: $66
	or   a                                           ; $683b: $b7
	ld   hl, $1111                                   ; $683c: $21 $11 $11
	ld   de, $1111                                   ; $683f: $11 $11 $11
	ld   sp, hl                                      ; $6842: $f9
	sbc  a                                           ; $6843: $9f
	rst  $38                                         ; $6844: $ff
	rst  $38                                         ; $6845: $ff
	db   $e4                                         ; $6846: $e4
	reti                                             ; $6847: $d9


	ld   de, $fe18                                   ; $6848: $11 $18 $fe
	rst  $38                                         ; $684b: $ff
	rst  $38                                         ; $684c: $ff
	rst  $38                                         ; $684d: $ff
	rst  $38                                         ; $684e: $ff
	db   $fc                                         ; $684f: $fc
	ld   de, $1111                                   ; $6850: $11 $11 $11
	ld   de, $1111                                   ; $6853: $11 $11 $11
	ld   e, h                                        ; $6856: $5c
	ld   l, [hl]                                     ; $6857: $6e
	rst  $38                                         ; $6858: $ff
	rst  $38                                         ; $6859: $ff
	rst  $38                                         ; $685a: $ff
	sbc  $62                                         ; $685b: $de $62
	ld   de, $bf9c                                   ; $685d: $11 $9c $bf
	rst  $38                                         ; $6860: $ff
	rst  $38                                         ; $6861: $ff
	rst  $38                                         ; $6862: $ff
	rst  $38                                         ; $6863: $ff
	or   [hl]                                        ; $6864: $b6
	ld   hl, $1111                                   ; $6865: $21 $11 $11
	ld   de, $1411                                   ; $6868: $11 $11 $14
	ld   a, [de]                                     ; $686b: $1a
	rst  $38                                         ; $686c: $ff
	rst  $38                                         ; $686d: $ff
	rst  $38                                         ; $686e: $ff
	rst  $38                                         ; $686f: $ff
	add  $44                                         ; $6870: $c6 $44
	ld   h, d                                        ; $6872: $62
	add  hl, hl                                      ; $6873: $29
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	rst  $38                                         ; $6876: $ff
	rst  $38                                         ; $6877: $ff
	rst  $38                                         ; $6878: $ff
	add  $21                                         ; $6879: $c6 $21
	ld   de, $1111                                   ; $687b: $11 $11 $11
	ld   de, $ef11                                   ; $687e: $11 $11 $ef
	rst  $38                                         ; $6881: $ff
	rst  $38                                         ; $6882: $ff
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	cp   $82                                         ; $6885: $fe $82
	inc  [hl]                                        ; $6887: $34
	ld   d, [hl]                                     ; $6888: $56
	ld   l, e                                        ; $6889: $6b
	rst  $28                                         ; $688a: $ef
	rst  $38                                         ; $688b: $ff
	rst  $38                                         ; $688c: $ff
	db   $fc                                         ; $688d: $fc
	add  l                                           ; $688e: $85
	ld   de, $1111                                   ; $688f: $11 $11 $11
	ld   de, $7611                                   ; $6892: $11 $11 $76
	ld   c, [hl]                                     ; $6895: $4e
	rst  $38                                         ; $6896: $ff
	rst  $38                                         ; $6897: $ff
	rst  $38                                         ; $6898: $ff
	rst  $38                                         ; $6899: $ff
	rst  $38                                         ; $689a: $ff
	db   $fc                                         ; $689b: $fc
	ld   [hl], l                                     ; $689c: $75
	ld   c, b                                        ; $689d: $48
	sub  a                                           ; $689e: $97
	ld   a, d                                        ; $689f: $7a
	db   $dd                                         ; $68a0: $dd
	sbc  b                                           ; $68a1: $98
	adc  b                                           ; $68a2: $88
	ld   b, c                                        ; $68a3: $41
	ld   de, $1111                                   ; $68a4: $11 $11 $11
	ld   [de], a                                     ; $68a7: $12
	ld   de, $8918                                   ; $68a8: $11 $18 $89
	rst  $28                                         ; $68ab: $ef
	rst  $38                                         ; $68ac: $ff
	rst  $38                                         ; $68ad: $ff
	rst  $38                                         ; $68ae: $ff
	rst  $38                                         ; $68af: $ff
	db   $ec                                         ; $68b0: $ec
	db   $dd                                         ; $68b1: $dd
	jp   z, $d99c                                    ; $68b2: $ca $9c $d9

	ld   a, c                                        ; $68b5: $79
	sub  [hl]                                        ; $68b6: $96
	ld   [hl-], a                                    ; $68b7: $32
	ld   de, $1112                                   ; $68b8: $11 $12 $11
	ld   [de], a                                     ; $68bb: $12
	ld   de, $2412                                   ; $68bc: $11 $12 $24
	adc  c                                           ; $68bf: $89
	adc  [hl]                                        ; $68c0: $8e
	rst  $38                                         ; $68c1: $ff
	rst  $28                                         ; $68c2: $ef
	rst  $38                                         ; $68c3: $ff
	rst  JumpTable                                         ; $68c4: $df
	db   $fc                                         ; $68c5: $fc
	rst  $28                                         ; $68c6: $ef
	call c, $bffd                                    ; $68c7: $dc $fd $bf
	jp   hl                                          ; $68ca: $e9


	sbc  c                                           ; $68cb: $99
	ld   d, h                                        ; $68cc: $54
	ld   [hl-], a                                    ; $68cd: $32
	ld   de, $1111                                   ; $68ce: $11 $11 $11
	ld   de, $1211                                   ; $68d1: $11 $11 $12
	inc  sp                                          ; $68d4: $33
	ld   e, b                                        ; $68d5: $58
	cp   [hl]                                        ; $68d6: $be
	db   $ec                                         ; $68d7: $ec
	rst  $38                                         ; $68d8: $ff
	db   $ed                                         ; $68d9: $ed
	rst  $38                                         ; $68da: $ff
	rst  $38                                         ; $68db: $ff
	rst  $38                                         ; $68dc: $ff
	rst  $38                                         ; $68dd: $ff
	rst  $38                                         ; $68de: $ff
	db   $ec                                         ; $68df: $ec
	cp   d                                           ; $68e0: $ba
	ret                                              ; $68e1: $c9


	inc  hl                                          ; $68e2: $23
	ld   b, c                                        ; $68e3: $41
	ld   de, $1111                                   ; $68e4: $11 $11 $11
	ld   de, $1111                                   ; $68e7: $11 $11 $11
	ld   c, c                                        ; $68ea: $49
	rst  $28                                         ; $68eb: $ef
	rst  $38                                         ; $68ec: $ff
	rst  $38                                         ; $68ed: $ff
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	rst  $38                                         ; $68f0: $ff
	call c, Call_0e0_77d9                            ; $68f1: $dc $d9 $77
	ld   [hl], h                                     ; $68f4: $74
	ld   hl, $1111                                   ; $68f5: $21 $11 $11
	ld   de, $1111                                   ; $68f8: $11 $11 $11
	ld   hl, $ac15                                   ; $68fb: $21 $15 $ac
	rst  $38                                         ; $68fe: $ff
	rst  $38                                         ; $68ff: $ff
	rst  $38                                         ; $6900: $ff
	rst  $38                                         ; $6901: $ff
	rst  $38                                         ; $6902: $ff
	db   $fd                                         ; $6903: $fd
	cp   b                                           ; $6904: $b8
	sub  a                                           ; $6905: $97
	dec  h                                           ; $6906: $25
	and  [hl]                                        ; $6907: $a6
	dec  [hl]                                        ; $6908: $35
	ld   d, d                                        ; $6909: $52
	ld   de, $1111                                   ; $690a: $11 $11 $11
	ld   de, $1111                                   ; $690d: $11 $11 $11
	cp   h                                           ; $6910: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6911: $cf
	rst  $38                                         ; $6912: $ff
	rst  $38                                         ; $6913: $ff
	rst  $38                                         ; $6914: $ff
	rst  $38                                         ; $6915: $ff
	rst  $38                                         ; $6916: $ff
	ei                                               ; $6917: $fb
	ld   a, c                                        ; $6918: $79
	ld   d, l                                        ; $6919: $55
	ld   b, h                                        ; $691a: $44
	ld   b, c                                        ; $691b: $41
	ld   hl, $1111                                   ; $691c: $21 $11 $11
	ld   de, $1111                                   ; $691f: $11 $11 $11
	add  hl, de                                      ; $6922: $19
	jp   c, $ffff                                    ; $6923: $da $ff $ff

	rst  $38                                         ; $6926: $ff
	rst  $38                                         ; $6927: $ff
	rst  $38                                         ; $6928: $ff
	cp   $c9                                         ; $6929: $fe $c9
	ld   l, b                                        ; $692b: $68
	inc  sp                                          ; $692c: $33
	ld   hl, $1121                                   ; $692d: $21 $21 $11
	ld   de, $1111                                   ; $6930: $11 $11 $11
	ld   sp, $db13                                   ; $6933: $31 $13 $db
	cp   a                                           ; $6936: $bf
	rst  $38                                         ; $6937: $ff
	rst  $38                                         ; $6938: $ff
	rst  $38                                         ; $6939: $ff
	rst  $38                                         ; $693a: $ff
	rst  $38                                         ; $693b: $ff
	db   $eb                                         ; $693c: $eb
	ld   a, c                                        ; $693d: $79
	ld   [hl], d                                     ; $693e: $72
	ld   sp, $1111                                   ; $693f: $31 $11 $11
	ld   de, $1111                                   ; $6942: $11 $11 $11
	ld   [hl-], a                                    ; $6945: $32
	inc  d                                           ; $6946: $14
	db   $fc                                         ; $6947: $fc
	cp   a                                           ; $6948: $bf
	rst  $38                                         ; $6949: $ff
	rst  $38                                         ; $694a: $ff
	rst  $38                                         ; $694b: $ff
	rst  $38                                         ; $694c: $ff
	rst  $38                                         ; $694d: $ff
	ld   [$5168], a                                  ; $694e: $ea $68 $51
	ld   de, $1111                                   ; $6951: $11 $11 $11
	ld   de, $1111                                   ; $6954: $11 $11 $11

jr_0e0_6957:
	ld   b, c                                        ; $6957: $41
	jr   jr_0e0_6957                                 ; $6958: $18 $fd

	rst  $28                                         ; $695a: $ef
	rst  $38                                         ; $695b: $ff
	rst  $38                                         ; $695c: $ff
	rst  $38                                         ; $695d: $ff
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	rst  ToBoot                                         ; $6960: $c7
	ld   l, b                                        ; $6961: $68
	ld   de, $1111                                   ; $6962: $11 $11 $11
	ld   de, $1111                                   ; $6965: $11 $11 $11
	ld   de, $5f11                                   ; $6968: $11 $11 $5f
	sbc  $ff                                         ; $696b: $de $ff
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	rst  $38                                         ; $696f: $ff
	rst  $38                                         ; $6970: $ff
	db   $fc                                         ; $6971: $fc
	and  a                                           ; $6972: $a7
	add  c                                           ; $6973: $81

Call_0e0_6974:
	ld   de, $1111                                   ; $6974: $11 $11 $11
	ld   de, $1111                                   ; $6977: $11 $11 $11
	ld   de, $fb12                                   ; $697a: $11 $12 $fb
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	rst  $38                                         ; $697f: $ff
	rst  $38                                         ; $6980: $ff
	rst  $38                                         ; $6981: $ff
	rst  $38                                         ; $6982: $ff

Call_0e0_6983:
	db   $ec                                         ; $6983: $ec
	ld   a, b                                        ; $6984: $78
	ld   hl, $1111                                   ; $6985: $21 $11 $11
	ld   de, $1111                                   ; $6988: $11 $11 $11
	ld   de, $4f11                                   ; $698b: $11 $11 $4f
	xor  [hl]                                        ; $698e: $ae
	rst  $38                                         ; $698f: $ff
	rst  $38                                         ; $6990: $ff
	rst  $38                                         ; $6991: $ff
	rst  $38                                         ; $6992: $ff
	rst  $38                                         ; $6993: $ff
	rst  $38                                         ; $6994: $ff
	cp   c                                           ; $6995: $b9
	sub  c                                           ; $6996: $91
	ld   de, $1111                                   ; $6997: $11 $11 $11
	ld   de, $1111                                   ; $699a: $11 $11 $11
	ld   de, $e815                                   ; $699d: $11 $15 $e8
	rst  JumpTable                                         ; $69a0: $df
	rst  $38                                         ; $69a1: $ff
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	rst  $38                                         ; $69a5: $ff
	rst  $38                                         ; $69a6: $ff
	and  a                                           ; $69a7: $a7
	ld   de, $1111                                   ; $69a8: $11 $11 $11
	ld   de, $1111                                   ; $69ab: $11 $11 $11
	ld   de, $6c11                                   ; $69ae: $11 $11 $6c
	ld   a, a                                        ; $69b1: $7f
	rst  $38                                         ; $69b2: $ff
	rst  $38                                         ; $69b3: $ff
	rst  $38                                         ; $69b4: $ff
	rst  $38                                         ; $69b5: $ff
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	ld   sp, hl                                      ; $69b8: $f9
	ld   [hl], c                                     ; $69b9: $71
	ld   de, $1111                                   ; $69ba: $11 $11 $11
	ld   de, $1111                                   ; $69bd: $11 $11 $11
	ld   de, $9718                                   ; $69c0: $11 $18 $97
	rst  $38                                         ; $69c3: $ff
	rst  $38                                         ; $69c4: $ff
	rst  $38                                         ; $69c5: $ff
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	add  [hl]                                        ; $69ca: $86
	inc  hl                                          ; $69cb: $23
	ld   de, $1111                                   ; $69cc: $11 $11 $11
	ld   de, $1111                                   ; $69cf: $11 $11 $11
	ld   de, $af88                                   ; $69d2: $11 $88 $af
	rst  $38                                         ; $69d5: $ff
	rst  $38                                         ; $69d6: $ff
	rst  $38                                         ; $69d7: $ff
	rst  $38                                         ; $69d8: $ff
	rst  $38                                         ; $69d9: $ff
	rst  $38                                         ; $69da: $ff
	jp   c, $1152                                    ; $69db: $da $52 $11

	ld   de, $1111                                   ; $69de: $11 $11 $11
	ld   de, $1111                                   ; $69e1: $11 $11 $11
	add  hl, de                                      ; $69e4: $19
	ld   e, e                                        ; $69e5: $5b
	rst  $38                                         ; $69e6: $ff
	rst  $38                                         ; $69e7: $ff
	rst  $38                                         ; $69e8: $ff
	rst  $38                                         ; $69e9: $ff
	rst  $38                                         ; $69ea: $ff
	rst  $38                                         ; $69eb: $ff
	db   $fc                                         ; $69ec: $fc
	sub  [hl]                                        ; $69ed: $96
	ld   hl, $1111                                   ; $69ee: $21 $11 $11
	ld   de, $1111                                   ; $69f1: $11 $11 $11
	ld   de, $9512                                   ; $69f4: $11 $12 $95
	rst  JumpTable                                         ; $69f7: $df
	rst  $38                                         ; $69f8: $ff
	rst  $38                                         ; $69f9: $ff
	rst  $38                                         ; $69fa: $ff
	rst  $38                                         ; $69fb: $ff
	rst  $38                                         ; $69fc: $ff
	rst  $38                                         ; $69fd: $ff
	xor  c                                           ; $69fe: $a9
	ld   b, h                                        ; $69ff: $44
	ld   de, $1111                                   ; $6a00: $11 $11 $11
	ld   de, $1111                                   ; $6a03: $11 $11 $11
	ld   de, $7f67                                   ; $6a06: $11 $67 $7f
	rst  $38                                         ; $6a09: $ff
	rst  $38                                         ; $6a0a: $ff
	rst  $38                                         ; $6a0b: $ff
	rst  $38                                         ; $6a0c: $ff
	rst  $38                                         ; $6a0d: $ff
	rst  $38                                         ; $6a0e: $ff
	ld   a, [$2174]                                  ; $6a0f: $fa $74 $21
	ld   de, $1111                                   ; $6a12: $11 $11 $11
	ld   de, $1111                                   ; $6a15: $11 $11 $11
	jr   jr_0e0_6a86                                 ; $6a18: $18 $6c

	rst  $38                                         ; $6a1a: $ff
	rst  $38                                         ; $6a1b: $ff
	rst  $38                                         ; $6a1c: $ff
	rst  $38                                         ; $6a1d: $ff
	rst  $38                                         ; $6a1e: $ff
	rst  $38                                         ; $6a1f: $ff
	db   $fc                                         ; $6a20: $fc
	and  h                                           ; $6a21: $a4
	ld   sp, $1111                                   ; $6a22: $31 $11 $11
	ld   de, $1111                                   ; $6a25: $11 $11 $11
	ld   de, $8616                                   ; $6a28: $11 $16 $86
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	rst  $38                                         ; $6a2d: $ff
	rst  $38                                         ; $6a2e: $ff
	rst  $38                                         ; $6a2f: $ff
	rst  $38                                         ; $6a30: $ff
	rst  $38                                         ; $6a31: $ff
	and  [hl]                                        ; $6a32: $a6
	ld   [hl+], a                                    ; $6a33: $22
	ld   de, $1111                                   ; $6a34: $11 $11 $11
	ld   de, $1111                                   ; $6a37: $11 $11 $11
	ld   de, $cf88                                   ; $6a3a: $11 $88 $cf
	rst  $38                                         ; $6a3d: $ff
	rst  $38                                         ; $6a3e: $ff
	rst  $38                                         ; $6a3f: $ff
	rst  $38                                         ; $6a40: $ff
	rst  $38                                         ; $6a41: $ff
	rst  $38                                         ; $6a42: $ff
	cp   c                                           ; $6a43: $b9
	ld   sp, $1111                                   ; $6a44: $31 $11 $11
	ld   de, $1111                                   ; $6a47: $11 $11 $11
	ld   de, $8811                                   ; $6a4a: $11 $11 $88
	xor  a                                           ; $6a4d: $af
	rst  $38                                         ; $6a4e: $ff
	rst  $38                                         ; $6a4f: $ff
	rst  $38                                         ; $6a50: $ff
	rst  $38                                         ; $6a51: $ff
	rst  $38                                         ; $6a52: $ff
	rst  $38                                         ; $6a53: $ff
	ret  z                                           ; $6a54: $c8

	ld   d, c                                        ; $6a55: $51
	ld   de, $1111                                   ; $6a56: $11 $11 $11
	ld   de, $1111                                   ; $6a59: $11 $11 $11
	ld   de, $bf8a                                   ; $6a5c: $11 $8a $bf
	rst  $38                                         ; $6a5f: $ff
	rst  $38                                         ; $6a60: $ff
	rst  $38                                         ; $6a61: $ff
	rst  $38                                         ; $6a62: $ff
	rst  $38                                         ; $6a63: $ff
	rst  $38                                         ; $6a64: $ff
	xor  b                                           ; $6a65: $a8
	ld   sp, $1111                                   ; $6a66: $31 $11 $11
	ld   de, $1111                                   ; $6a69: $11 $11 $11
	ld   de, $ca11                                   ; $6a6c: $11 $11 $ca
	rst  $38                                         ; $6a6f: $ff
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	rst  $38                                         ; $6a73: $ff
	rst  $38                                         ; $6a74: $ff
	db   $fd                                         ; $6a75: $fd
	sub  [hl]                                        ; $6a76: $96
	ld   de, $1111                                   ; $6a77: $11 $11 $11
	ld   de, $1111                                   ; $6a7a: $11 $11 $11
	ld   de, $db18                                   ; $6a7d: $11 $18 $db
	rst  $38                                         ; $6a80: $ff
	rst  $38                                         ; $6a81: $ff
	rst  $38                                         ; $6a82: $ff
	rst  $38                                         ; $6a83: $ff
	rst  $38                                         ; $6a84: $ff
	rst  $38                                         ; $6a85: $ff

jr_0e0_6a86:
	jp   hl                                          ; $6a86: $e9


	ld   h, d                                        ; $6a87: $62
	ld   de, $1111                                   ; $6a88: $11 $11 $11
	ld   de, $1111                                   ; $6a8b: $11 $11 $11
	ld   de, $ff5f                                   ; $6a8e: $11 $5f $ff
	rst  $38                                         ; $6a91: $ff
	rst  $38                                         ; $6a92: $ff
	rst  $38                                         ; $6a93: $ff
	rst  $38                                         ; $6a94: $ff
	rst  $38                                         ; $6a95: $ff
	ei                                               ; $6a96: $fb
	ld   [hl], l                                     ; $6a97: $75
	ld   de, $1111                                   ; $6a98: $11 $11 $11
	ld   de, $1111                                   ; $6a9b: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $6a9e: $11 $14 $ff
	rst  $38                                         ; $6aa1: $ff
	rst  $38                                         ; $6aa2: $ff
	rst  $38                                         ; $6aa3: $ff
	rst  $38                                         ; $6aa4: $ff
	rst  $38                                         ; $6aa5: $ff
	rst  $38                                         ; $6aa6: $ff
	add  h                                           ; $6aa7: $84
	ld   b, c                                        ; $6aa8: $41
	ld   de, $1111                                   ; $6aa9: $11 $11 $11
	ld   de, $1111                                   ; $6aac: $11 $11 $11
	ld   sp, $ff6f                                   ; $6aaf: $31 $6f $ff
	rst  $38                                         ; $6ab2: $ff
	rst  $38                                         ; $6ab3: $ff
	rst  $38                                         ; $6ab4: $ff
	rst  $38                                         ; $6ab5: $ff
	rst  $38                                         ; $6ab6: $ff
	db   $f4                                         ; $6ab7: $f4
	ld   de, $1111                                   ; $6ab8: $11 $11 $11
	ld   de, $1111                                   ; $6abb: $11 $11 $11
	ld   de, $1d54                                   ; $6abe: $11 $54 $1d
	rst  $38                                         ; $6ac1: $ff
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	rst  $38                                         ; $6ac4: $ff
	rst  $38                                         ; $6ac5: $ff
	db   $fd                                         ; $6ac6: $fd
	db   $fd                                         ; $6ac7: $fd
	ld   de, $1111                                   ; $6ac8: $11 $11 $11
	ld   de, $1111                                   ; $6acb: $11 $11 $11
	ld   de, $5738                                   ; $6ace: $11 $38 $57
	rst  $38                                         ; $6ad1: $ff
	rst  $38                                         ; $6ad2: $ff
	rst  $38                                         ; $6ad3: $ff
	rst  $38                                         ; $6ad4: $ff
	rst  $38                                         ; $6ad5: $ff
	ei                                               ; $6ad6: $fb
	rst  JumpTable                                         ; $6ad7: $df
	ld   hl, $1111                                   ; $6ad8: $21 $11 $11
	ld   de, $1111                                   ; $6adb: $11 $11 $11
	ld   de, $b519                                   ; $6ade: $11 $19 $b5
	rst  $38                                         ; $6ae1: $ff
	rst  $38                                         ; $6ae2: $ff
	rst  $38                                         ; $6ae3: $ff
	rst  $38                                         ; $6ae4: $ff
	rst  $38                                         ; $6ae5: $ff
	db   $fc                                         ; $6ae6: $fc
	ld   c, a                                        ; $6ae7: $4f
	add  c                                           ; $6ae8: $81
	ld   de, $1111                                   ; $6ae9: $11 $11 $11
	ld   de, $2111                                   ; $6aec: $11 $11 $21
	dec  d                                           ; $6aef: $15
	ld   a, [$ff7f]                                  ; $6af0: $fa $7f $ff
	rst  $38                                         ; $6af3: $ff
	rst  $38                                         ; $6af4: $ff
	rst  $38                                         ; $6af5: $ff
	rst  $38                                         ; $6af6: $ff
	add  hl, de                                      ; $6af7: $19
	db   $e4                                         ; $6af8: $e4
	ld   de, $1141                                   ; $6af9: $11 $41 $11
	ld   de, $1111                                   ; $6afc: $11 $11 $11
	ld   de, $8fbd                                   ; $6aff: $11 $bd $8f
	rst  $38                                         ; $6b02: $ff
	rst  $38                                         ; $6b03: $ff
	rst  $38                                         ; $6b04: $ff
	rst  $38                                         ; $6b05: $ff
	rst  $38                                         ; $6b06: $ff
	and  d                                           ; $6b07: $a2
	cp   b                                           ; $6b08: $b8
	ld   de, $1111                                   ; $6b09: $11 $11 $11
	ld   de, $1111                                   ; $6b0c: $11 $11 $11
	ld   de, $ef9e                                   ; $6b0f: $11 $9e $ef
	rst  $38                                         ; $6b12: $ff
	rst  $38                                         ; $6b13: $ff
	rst  $38                                         ; $6b14: $ff
	cp   $ff                                         ; $6b15: $fe $ff
	jp   nc, $1158                                   ; $6b17: $d2 $58 $11

	ld   de, $1111                                   ; $6b1a: $11 $11 $11
	ld   de, $1111                                   ; $6b1d: $11 $11 $11
	ld   a, [hl+]                                    ; $6b20: $2a
	rst  $38                                         ; $6b21: $ff
	rst  $38                                         ; $6b22: $ff
	rst  $38                                         ; $6b23: $ff
	rst  $38                                         ; $6b24: $ff
	rst  $38                                         ; $6b25: $ff
	rst  $38                                         ; $6b26: $ff
	or   $36                                         ; $6b27: $f6 $36
	ld   b, c                                        ; $6b29: $41
	ld   de, $1111                                   ; $6b2a: $11 $11 $11
	ld   de, $1111                                   ; $6b2d: $11 $11 $11
	ld   a, [de]                                     ; $6b30: $1a
	rst  $38                                         ; $6b31: $ff
	rst  $38                                         ; $6b32: $ff
	rst  $38                                         ; $6b33: $ff
	rst  $38                                         ; $6b34: $ff
	rst  $38                                         ; $6b35: $ff
	set  7, e                                        ; $6b36: $cb $fb
	inc  d                                           ; $6b38: $14
	ld   h, e                                        ; $6b39: $63
	ld   hl, $1132                                   ; $6b3a: $21 $32 $11
	ld   de, $1111                                   ; $6b3d: $11 $11 $11
	inc  de                                          ; $6b40: $13
	adc  $ff                                         ; $6b41: $ce $ff
	rst  $38                                         ; $6b43: $ff
	rst  $38                                         ; $6b44: $ff
	rst  $38                                         ; $6b45: $ff
	ei                                               ; $6b46: $fb
	xor  l                                           ; $6b47: $ad
	ld   d, c                                        ; $6b48: $51
	ld   h, l                                        ; $6b49: $65
	inc  [hl]                                        ; $6b4a: $34
	ld   h, [hl]                                     ; $6b4b: $66
	ld   de, $1111                                   ; $6b4c: $11 $11 $11
	ld   de, $5f11                                   ; $6b4f: $11 $11 $5f
	rst  $38                                         ; $6b52: $ff
	rst  $38                                         ; $6b53: $ff
	rst  $38                                         ; $6b54: $ff
	rst  $38                                         ; $6b55: $ff
	ei                                               ; $6b56: $fb
	ld   b, a                                        ; $6b57: $47
	ld   [hl], e                                     ; $6b58: $73
	dec  [hl]                                        ; $6b59: $35
	ld   h, [hl]                                     ; $6b5a: $66
	adc  c                                           ; $6b5b: $89
	ld   [hl], c                                     ; $6b5c: $71
	ld   de, $1111                                   ; $6b5d: $11 $11 $11
	ld   de, $ff1d                                   ; $6b60: $11 $1d $ff
	rst  $38                                         ; $6b63: $ff
	rst  $38                                         ; $6b64: $ff
	rst  $38                                         ; $6b65: $ff
	rst  $38                                         ; $6b66: $ff
	ld   [hl], c                                     ; $6b67: $71
	dec  [hl]                                        ; $6b68: $35
	inc  h                                           ; $6b69: $24
	adc  c                                           ; $6b6a: $89
	cp   [hl]                                        ; $6b6b: $be
	rst  $20                                         ; $6b6c: $e7
	ld   de, $1111                                   ; $6b6d: $11 $11 $11
	ld   de, $ef11                                   ; $6b70: $11 $11 $ef
	rst  $38                                         ; $6b73: $ff
	rst  $38                                         ; $6b74: $ff
	rst  $38                                         ; $6b75: $ff
	cp   $b2                                         ; $6b76: $fe $b2
	ld   de, $8b23                                   ; $6b78: $11 $23 $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b7b: $cf
	rst  $38                                         ; $6b7c: $ff
	sub  c                                           ; $6b7d: $91
	ld   de, $1111                                   ; $6b7e: $11 $11 $11
	ld   de, $ff1f                                   ; $6b81: $11 $1f $ff
	rst  $38                                         ; $6b84: $ff
	rst  $38                                         ; $6b85: $ff
	rst  $38                                         ; $6b86: $ff
	ld   [hl], h                                     ; $6b87: $74
	ld   de, $5c12                                   ; $6b88: $11 $12 $5c
	rst  $38                                         ; $6b8b: $ff
	rst  $38                                         ; $6b8c: $ff
	ld   a, [$1111]                                  ; $6b8d: $fa $11 $11
	ld   de, $1111                                   ; $6b90: $11 $11 $11
	rst  $28                                         ; $6b93: $ef
	rst  $38                                         ; $6b94: $ff
	rst  $38                                         ; $6b95: $ff
	rst  $38                                         ; $6b96: $ff
	db   $d3                                         ; $6b97: $d3
	ld   de, $4a11                                   ; $6b98: $11 $11 $4a
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	rst  $38                                         ; $6b9d: $ff
	pop  bc                                          ; $6b9e: $c1
	ld   de, $1111                                   ; $6b9f: $11 $11 $11
	inc  de                                          ; $6ba2: $13
	cpl                                              ; $6ba3: $2f
	rst  $38                                         ; $6ba4: $ff
	rst  $38                                         ; $6ba5: $ff
	rst  $38                                         ; $6ba6: $ff
	ld   sp, hl                                      ; $6ba7: $f9
	ld   de, $1911                                   ; $6ba8: $11 $11 $19
	rst  $38                                         ; $6bab: $ff
	rst  $38                                         ; $6bac: $ff
	rst  $38                                         ; $6bad: $ff
	ei                                               ; $6bae: $fb
	ld   de, $1111                                   ; $6baf: $11 $11 $11
	ld   de, $ff19                                   ; $6bb2: $11 $19 $ff
	rst  $38                                         ; $6bb5: $ff
	rst  $38                                         ; $6bb6: $ff
	ld   a, [$1131]                                  ; $6bb7: $fa $31 $11
	ld   de, $ffbf                                   ; $6bba: $11 $bf $ff
	rst  $38                                         ; $6bbd: $ff
	rst  $38                                         ; $6bbe: $ff
	sub  c                                           ; $6bbf: $91
	ld   de, $1111                                   ; $6bc0: $11 $11 $11
	ld   de, $ffff                                   ; $6bc3: $11 $ff $ff
	rst  $38                                         ; $6bc6: $ff
	rst  $38                                         ; $6bc7: $ff
	ld   h, c                                        ; $6bc8: $61
	ld   de, $4911                                   ; $6bc9: $11 $11 $49
	rst  $38                                         ; $6bcc: $ff
	rst  $38                                         ; $6bcd: $ff
	rst  $38                                         ; $6bce: $ff
	ld   hl, sp+$41                                  ; $6bcf: $f8 $41
	ld   de, $1111                                   ; $6bd1: $11 $11 $11
	ld   de, $ffff                                   ; $6bd4: $11 $ff $ff
	rst  $38                                         ; $6bd7: $ff
	rst  $38                                         ; $6bd8: $ff
	ld   sp, $3711                                   ; $6bd9: $31 $11 $37
	xor  [hl]                                        ; $6bdc: $ae
	rst  $38                                         ; $6bdd: $ff
	rst  $38                                         ; $6bde: $ff

jr_0e0_6bdf:
	rst  $38                                         ; $6bdf: $ff
	or   [hl]                                        ; $6be0: $b6
	ld   de, $1111                                   ; $6be1: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $6be4: $11 $12 $ff
	rst  $38                                         ; $6be7: $ff
	rst  $38                                         ; $6be8: $ff
	rst  $38                                         ; $6be9: $ff
	ld   b, c                                        ; $6bea: $41
	ld   de, $af7a                                   ; $6beb: $11 $7a $af
	rst  $38                                         ; $6bee: $ff
	rst  $38                                         ; $6bef: $ff
	rst  $38                                         ; $6bf0: $ff
	and  [hl]                                        ; $6bf1: $a6
	ld   de, $1111                                   ; $6bf2: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $6bf5: $11 $12 $ff
	rst  $38                                         ; $6bf8: $ff
	rst  $38                                         ; $6bf9: $ff
	rst  $38                                         ; $6bfa: $ff
	ld   sp, $9f26                                   ; $6bfb: $31 $26 $9f
	adc  $ff                                         ; $6bfe: $ce $ff
	rst  $38                                         ; $6c00: $ff
	cp   $87                                         ; $6c01: $fe $87
	ld   hl, $1111                                   ; $6c03: $21 $11 $11
	ld   de, $af11                                   ; $6c06: $11 $11 $af
	rst  $38                                         ; $6c09: $ff
	rst  $38                                         ; $6c0a: $ff
	rst  $38                                         ; $6c0b: $ff
	and  d                                           ; $6c0c: $a2
	dec  [hl]                                        ; $6c0d: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c0e: $cf
	set  7, a                                        ; $6c0f: $cb $ff
	rst  $38                                         ; $6c11: $ff
	ld   a, [$51ab]                                  ; $6c12: $fa $ab $51
	ld   de, $1111                                   ; $6c15: $11 $11 $11
	ld   de, $ef5f                                   ; $6c18: $11 $5f $ef
	rst  $38                                         ; $6c1b: $ff
	rst  $38                                         ; $6c1c: $ff
	pop  af                                          ; $6c1d: $f1
	jr   jr_0e0_6bdf                                 ; $6c1e: $18 $bf

	ld   [$ffaf], a                                  ; $6c20: $ea $af $ff
	db   $fc                                         ; $6c23: $fc
	cp   c                                           ; $6c24: $b9
	sub  l                                           ; $6c25: $95
	ld   de, $1111                                   ; $6c26: $11 $11 $11
	ld   de, $af1b                                   ; $6c29: $11 $1b $af
	db   $fd                                         ; $6c2c: $fd
	rst  $38                                         ; $6c2d: $ff
	ld   sp, hl                                      ; $6c2e: $f9
	jr   @+$70                                       ; $6c2f: $18 $6e

	or   $9f                                         ; $6c31: $f6 $9f
	rst  $38                                         ; $6c33: $ff
	db   $fd                                         ; $6c34: $fd
	cp   l                                           ; $6c35: $bd
	or   $11                                         ; $6c36: $f6 $11
	ld   de, $1111                                   ; $6c38: $11 $11 $11
	ld   d, $bd                                      ; $6c3b: $16 $bd
	rst  $38                                         ; $6c3d: $ff
	rst  $38                                         ; $6c3e: $ff
	ei                                               ; $6c3f: $fb
	ld   d, l                                        ; $6c40: $55
	ccf                                              ; $6c41: $3f
	ret                                              ; $6c42: $c9


	xor  l                                           ; $6c43: $ad
	rst  $38                                         ; $6c44: $ff
	rst  $38                                         ; $6c45: $ff
	call z, $11fc                                    ; $6c46: $cc $fc $11
	ld   de, $1111                                   ; $6c49: $11 $11 $11
	ld   de, $ff68                                   ; $6c4c: $11 $68 $ff
	rst  $38                                         ; $6c4f: $ff
	rst  $38                                         ; $6c50: $ff
	di                                               ; $6c51: $f3
	ld   h, e                                        ; $6c52: $63
	db   $dd                                         ; $6c53: $dd
	ld   a, h                                        ; $6c54: $7c
	rst  $38                                         ; $6c55: $ff
	rst  $38                                         ; $6c56: $ff
	ei                                               ; $6c57: $fb
	db   $ed                                         ; $6c58: $ed
	ld   h, e                                        ; $6c59: $63
	ld   de, $1111                                   ; $6c5a: $11 $11 $11
	ld   de, $8f16                                   ; $6c5d: $11 $16 $8f
	db   $fc                                         ; $6c60: $fc
	rst  $38                                         ; $6c61: $ff
	rst  $30                                         ; $6c62: $f7
	dec  d                                           ; $6c63: $15
	rst  $28                                         ; $6c64: $ef
	and  d                                           ; $6c65: $a2
	sbc  a                                           ; $6c66: $9f
	rst  $38                                         ; $6c67: $ff
	rst  $38                                         ; $6c68: $ff
	cp   a                                           ; $6c69: $bf
	push af                                          ; $6c6a: $f5
	ld   de, $1111                                   ; $6c6b: $11 $11 $11
	ld   de, $1511                                   ; $6c6e: $11 $11 $15
	rst  $38                                         ; $6c71: $ff
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	and  $6b                                         ; $6c74: $e6 $6b
	xor  e                                           ; $6c76: $ab
	sbc  e                                           ; $6c77: $9b
	rst  $38                                         ; $6c78: $ff
	rst  $38                                         ; $6c79: $ff
	cp   $fe                                         ; $6c7a: $fe $fe
	ld   [hl], d                                     ; $6c7c: $72
	ld   de, $1111                                   ; $6c7d: $11 $11 $11
	ld   de, $4a12                                   ; $6c80: $11 $12 $4a
	db   $fc                                         ; $6c83: $fc
	rst  $38                                         ; $6c84: $ff
	db   $fd                                         ; $6c85: $fd
	adc  e                                           ; $6c86: $8b
	xor  h                                           ; $6c87: $ac
	rst  $10                                         ; $6c88: $d7
	ld   c, [hl]                                     ; $6c89: $4e
	rst  $38                                         ; $6c8a: $ff
	rst  $38                                         ; $6c8b: $ff
	rst  JumpTable                                         ; $6c8c: $df
	db   $fd                                         ; $6c8d: $fd
	ld   sp, $1111                                   ; $6c8e: $31 $11 $11
	ld   de, $1311                                   ; $6c91: $11 $11 $13
	add  hl, de                                      ; $6c94: $19
	rst  $38                                         ; $6c95: $ff
	rst  $28                                         ; $6c96: $ef
	rst  $38                                         ; $6c97: $ff
	cp   d                                           ; $6c98: $ba
	res  5, d                                        ; $6c99: $cb $aa
	ld   l, a                                        ; $6c9b: $6f
	rst  $38                                         ; $6c9c: $ff
	rst  $38                                         ; $6c9d: $ff
	cp   $fb                                         ; $6c9e: $fe $fb
	ld   d, c                                        ; $6ca0: $51
	ld   bc, $1111                                   ; $6ca1: $01 $11 $11
	ld   de, $5c11                                   ; $6ca4: $11 $11 $5c
	call c, $ffff                                    ; $6ca7: $dc $ff $ff
	call z, $65cf                                    ; $6caa: $cc $cf $65
	ld   a, a                                        ; $6cad: $7f
	rst  $38                                         ; $6cae: $ff
	ld   sp, hl                                      ; $6caf: $f9
	rst  $38                                         ; $6cb0: $ff
	ld   hl, sp+$25                                  ; $6cb1: $f8 $25
	ld   sp, $1111                                   ; $6cb3: $31 $11 $11
	ld   de, $1511                                   ; $6cb6: $11 $11 $15

Call_0e0_6cb9:
	rst  $38                                         ; $6cb9: $ff
	rst  JumpTable                                         ; $6cba: $df
	rst  $38                                         ; $6cbb: $ff
	cp   $dd                                         ; $6cbc: $fe $dd
	jp   c, $ce9f                                    ; $6cbe: $da $9f $ce

	rst  $38                                         ; $6cc1: $ff
	adc  $fc                                         ; $6cc2: $ce $fc
	or   a                                           ; $6cc4: $b7
	ld   sp, $1121                                   ; $6cc5: $31 $21 $11
	ld   de, $1111                                   ; $6cc8: $11 $11 $11
	rla                                              ; $6ccb: $17
	db   $fc                                         ; $6ccc: $fc
	db   $fd                                         ; $6ccd: $fd
	rst  $38                                         ; $6cce: $ff
	rst  $28                                         ; $6ccf: $ef
	call $9bab                                       ; $6cd0: $cd $ab $9b
	db   $db                                         ; $6cd3: $db
	cp   c                                           ; $6cd4: $b9
	cp   d                                           ; $6cd5: $ba
	ret                                              ; $6cd6: $c9


	halt                                             ; $6cd7: $76
	ld   d, l                                        ; $6cd8: $55
	ld   [hl+], a                                    ; $6cd9: $22
	ld   de, $1211                                   ; $6cda: $11 $11 $12
	inc  sp                                          ; $6cdd: $33
	inc  hl                                          ; $6cde: $23
	ld   d, [hl]                                     ; $6cdf: $56
	ld   d, [hl]                                     ; $6ce0: $56
	halt                                             ; $6ce1: $76
	sbc  c                                           ; $6ce2: $99
	sbc  d                                           ; $6ce3: $9a
	xor  e                                           ; $6ce4: $ab
	cp   l                                           ; $6ce5: $bd
	sbc  $ee                                         ; $6ce6: $de $ee
	sbc  $dd                                         ; $6ce8: $de $dd
	call z, $baba                                    ; $6cea: $cc $ba $ba
	adc  c                                           ; $6ced: $89
	sbc  c                                           ; $6cee: $99
	sbc  c                                           ; $6cef: $99
	adc  c                                           ; $6cf0: $89
	sub  a                                           ; $6cf1: $97
	ld   [hl], a                                     ; $6cf2: $77
	ld   h, [hl]                                     ; $6cf3: $66
	ld   h, [hl]                                     ; $6cf4: $66
	ld   h, [hl]                                     ; $6cf5: $66
	ld   h, [hl]                                     ; $6cf6: $66
	ld   h, a                                        ; $6cf7: $67
	adc  b                                           ; $6cf8: $88
	adc  b                                           ; $6cf9: $88
	adc  c                                           ; $6cfa: $89
	sbc  c                                           ; $6cfb: $99
	sbc  b                                           ; $6cfc: $98
	sbc  c                                           ; $6cfd: $99
	sbc  d                                           ; $6cfe: $9a
	xor  c                                           ; $6cff: $a9
	cp   d                                           ; $6d00: $ba
	cp   e                                           ; $6d01: $bb
	cp   e                                           ; $6d02: $bb
	cp   d                                           ; $6d03: $ba
	xor  c                                           ; $6d04: $a9
	sbc  b                                           ; $6d05: $98
	ld   [hl], a                                     ; $6d06: $77
	halt                                             ; $6d07: $76
	ld   [hl], a                                     ; $6d08: $77
	ld   [hl], a                                     ; $6d09: $77
	ld   [hl], a                                     ; $6d0a: $77
	ld   [hl], a                                     ; $6d0b: $77
	ld   a, b                                        ; $6d0c: $78
	ld   [hl], a                                     ; $6d0d: $77
	halt                                             ; $6d0e: $76
	ld   h, [hl]                                     ; $6d0f: $66
	ld   [hl], a                                     ; $6d10: $77
	ld   a, b                                        ; $6d11: $78
	adc  c                                           ; $6d12: $89
	xor  e                                           ; $6d13: $ab
	cp   e                                           ; $6d14: $bb
	cp   d                                           ; $6d15: $ba
	xor  c                                           ; $6d16: $a9
	sbc  c                                           ; $6d17: $99
	adc  c                                           ; $6d18: $89
	adc  c                                           ; $6d19: $89
	adc  c                                           ; $6d1a: $89
	adc  b                                           ; $6d1b: $88
	sbc  b                                           ; $6d1c: $98
	sbc  c                                           ; $6d1d: $99
	add  a                                           ; $6d1e: $87
	ld   [hl], a                                     ; $6d1f: $77
	ld   h, [hl]                                     ; $6d20: $66
	ld   h, l                                        ; $6d21: $65
	ld   h, [hl]                                     ; $6d22: $66
	ld   h, a                                        ; $6d23: $67
	ld   a, b                                        ; $6d24: $78
	sbc  c                                           ; $6d25: $99
	sbc  c                                           ; $6d26: $99
	sbc  c                                           ; $6d27: $99
	adc  b                                           ; $6d28: $88
	adc  b                                           ; $6d29: $88
	sbc  c                                           ; $6d2a: $99
	adc  b                                           ; $6d2b: $88
	adc  c                                           ; $6d2c: $89
	sbc  c                                           ; $6d2d: $99
	sbc  c                                           ; $6d2e: $99
	sbc  c                                           ; $6d2f: $99
	adc  b                                           ; $6d30: $88
	ld   [hl], a                                     ; $6d31: $77
	ld   h, [hl]                                     ; $6d32: $66
	ld   h, [hl]                                     ; $6d33: $66
	ld   h, [hl]                                     ; $6d34: $66
	ld   [hl], a                                     ; $6d35: $77
	ld   a, b                                        ; $6d36: $78
	adc  b                                           ; $6d37: $88
	adc  b                                           ; $6d38: $88
	adc  b                                           ; $6d39: $88
	adc  b                                           ; $6d3a: $88
	adc  b                                           ; $6d3b: $88
	adc  c                                           ; $6d3c: $89
	adc  c                                           ; $6d3d: $89
	sbc  c                                           ; $6d3e: $99
	sbc  c                                           ; $6d3f: $99
	sbc  c                                           ; $6d40: $99
	sbc  c                                           ; $6d41: $99
	adc  b                                           ; $6d42: $88
	ld   [hl], a                                     ; $6d43: $77
	ld   [hl], a                                     ; $6d44: $77
	ld   [hl], a                                     ; $6d45: $77
	ld   [hl], a                                     ; $6d46: $77
	ld   [hl], a                                     ; $6d47: $77
	adc  b                                           ; $6d48: $88
	adc  b                                           ; $6d49: $88
	adc  b                                           ; $6d4a: $88
	ld   [hl], a                                     ; $6d4b: $77
	ld   [hl], a                                     ; $6d4c: $77
	adc  b                                           ; $6d4d: $88
	adc  c                                           ; $6d4e: $89
	adc  b                                           ; $6d4f: $88
	sbc  c                                           ; $6d50: $99
	sbc  c                                           ; $6d51: $99
	adc  c                                           ; $6d52: $89
	sbc  b                                           ; $6d53: $98
	add  a                                           ; $6d54: $87
	ld   [hl], a                                     ; $6d55: $77
	ld   [hl], a                                     ; $6d56: $77
	ld   [hl], a                                     ; $6d57: $77
	ld   [hl], a                                     ; $6d58: $77
	ld   a, b                                        ; $6d59: $78
	adc  b                                           ; $6d5a: $88
	adc  b                                           ; $6d5b: $88
	add  a                                           ; $6d5c: $87
	ld   [hl], a                                     ; $6d5d: $77
	ld   [hl], a                                     ; $6d5e: $77
	adc  b                                           ; $6d5f: $88
	adc  c                                           ; $6d60: $89
	sbc  b                                           ; $6d61: $98
	sbc  c                                           ; $6d62: $99
	adc  b                                           ; $6d63: $88
	sbc  c                                           ; $6d64: $99
	adc  b                                           ; $6d65: $88
	add  a                                           ; $6d66: $87
	ld   [hl], a                                     ; $6d67: $77
	ld   [hl], a                                     ; $6d68: $77
	ld   [hl], a                                     ; $6d69: $77
	ld   a, b                                        ; $6d6a: $78
	adc  b                                           ; $6d6b: $88
	adc  b                                           ; $6d6c: $88
	adc  b                                           ; $6d6d: $88
	add  a                                           ; $6d6e: $87
	ld   [hl], a                                     ; $6d6f: $77
	adc  b                                           ; $6d70: $88
	adc  b                                           ; $6d71: $88
	adc  b                                           ; $6d72: $88
	sbc  c                                           ; $6d73: $99
	sbc  c                                           ; $6d74: $99
	adc  c                                           ; $6d75: $89
	adc  b                                           ; $6d76: $88
	adc  b                                           ; $6d77: $88
	adc  b                                           ; $6d78: $88
	ld   a, b                                        ; $6d79: $78
	ld   [hl], a                                     ; $6d7a: $77
	adc  b                                           ; $6d7b: $88
	adc  b                                           ; $6d7c: $88
	adc  b                                           ; $6d7d: $88
	adc  b                                           ; $6d7e: $88
	adc  b                                           ; $6d7f: $88
	adc  b                                           ; $6d80: $88
	adc  b                                           ; $6d81: $88
	adc  b                                           ; $6d82: $88
	adc  c                                           ; $6d83: $89
	adc  b                                           ; $6d84: $88
	adc  b                                           ; $6d85: $88
	adc  b                                           ; $6d86: $88
	adc  b                                           ; $6d87: $88
	adc  b                                           ; $6d88: $88
	adc  b                                           ; $6d89: $88
	add  a                                           ; $6d8a: $87
	ld   [hl], a                                     ; $6d8b: $77
	ld   [hl], a                                     ; $6d8c: $77
	ld   [hl], a                                     ; $6d8d: $77
	ld   a, b                                        ; $6d8e: $78
	add  a                                           ; $6d8f: $87
	adc  b                                           ; $6d90: $88
	adc  b                                           ; $6d91: $88
	adc  b                                           ; $6d92: $88
	adc  c                                           ; $6d93: $89
	sbc  c                                           ; $6d94: $99
	sbc  c                                           ; $6d95: $99
	sbc  c                                           ; $6d96: $99
	sbc  b                                           ; $6d97: $98
	sbc  b                                           ; $6d98: $98
	adc  b                                           ; $6d99: $88
	adc  b                                           ; $6d9a: $88
	adc  b                                           ; $6d9b: $88
	ld   a, b                                        ; $6d9c: $78
	ld   [hl], a                                     ; $6d9d: $77
	ld   [hl], a                                     ; $6d9e: $77
	adc  b                                           ; $6d9f: $88
	adc  b                                           ; $6da0: $88
	adc  b                                           ; $6da1: $88
	adc  b                                           ; $6da2: $88
	adc  b                                           ; $6da3: $88
	adc  b                                           ; $6da4: $88
	adc  b                                           ; $6da5: $88
	adc  b                                           ; $6da6: $88
	sbc  c                                           ; $6da7: $99
	sbc  c                                           ; $6da8: $99
	sbc  c                                           ; $6da9: $99
	sbc  c                                           ; $6daa: $99
	adc  b                                           ; $6dab: $88
	adc  b                                           ; $6dac: $88
	adc  b                                           ; $6dad: $88
	adc  b                                           ; $6dae: $88
	adc  b                                           ; $6daf: $88
	adc  b                                           ; $6db0: $88
	adc  b                                           ; $6db1: $88
	adc  b                                           ; $6db2: $88
	adc  b                                           ; $6db3: $88
	adc  b                                           ; $6db4: $88
	adc  b                                           ; $6db5: $88
	adc  b                                           ; $6db6: $88
	adc  b                                           ; $6db7: $88
	adc  b                                           ; $6db8: $88
	adc  b                                           ; $6db9: $88
	adc  c                                           ; $6dba: $89
	adc  b                                           ; $6dbb: $88
	adc  b                                           ; $6dbc: $88
	adc  b                                           ; $6dbd: $88
	adc  b                                           ; $6dbe: $88
	adc  b                                           ; $6dbf: $88
	adc  b                                           ; $6dc0: $88
	adc  b                                           ; $6dc1: $88
	adc  b                                           ; $6dc2: $88
	adc  b                                           ; $6dc3: $88
	adc  b                                           ; $6dc4: $88
	adc  b                                           ; $6dc5: $88
	adc  b                                           ; $6dc6: $88
	adc  b                                           ; $6dc7: $88
	adc  b                                           ; $6dc8: $88
	adc  b                                           ; $6dc9: $88
	adc  b                                           ; $6dca: $88
	adc  b                                           ; $6dcb: $88
	adc  b                                           ; $6dcc: $88
	adc  b                                           ; $6dcd: $88
	adc  b                                           ; $6dce: $88
	adc  b                                           ; $6dcf: $88
	adc  b                                           ; $6dd0: $88
	adc  b                                           ; $6dd1: $88
	adc  b                                           ; $6dd2: $88
	adc  b                                           ; $6dd3: $88
	adc  b                                           ; $6dd4: $88
	adc  b                                           ; $6dd5: $88
	adc  b                                           ; $6dd6: $88
	adc  b                                           ; $6dd7: $88
	adc  b                                           ; $6dd8: $88
	adc  b                                           ; $6dd9: $88
	adc  b                                           ; $6dda: $88
	adc  b                                           ; $6ddb: $88
	adc  b                                           ; $6ddc: $88
	adc  b                                           ; $6ddd: $88
	adc  b                                           ; $6dde: $88
	adc  b                                           ; $6ddf: $88
	adc  b                                           ; $6de0: $88
	adc  b                                           ; $6de1: $88
	adc  b                                           ; $6de2: $88
	adc  b                                           ; $6de3: $88
	adc  b                                           ; $6de4: $88
	adc  b                                           ; $6de5: $88
	adc  b                                           ; $6de6: $88
	adc  b                                           ; $6de7: $88
	adc  b                                           ; $6de8: $88
	adc  b                                           ; $6de9: $88
	adc  b                                           ; $6dea: $88
	adc  b                                           ; $6deb: $88
	adc  b                                           ; $6dec: $88
	adc  b                                           ; $6ded: $88
	adc  b                                           ; $6dee: $88
	adc  b                                           ; $6def: $88
	adc  b                                           ; $6df0: $88
	adc  b                                           ; $6df1: $88
	adc  b                                           ; $6df2: $88
	adc  b                                           ; $6df3: $88
	adc  b                                           ; $6df4: $88
	adc  b                                           ; $6df5: $88
	adc  b                                           ; $6df6: $88
	adc  b                                           ; $6df7: $88
	adc  b                                           ; $6df8: $88
	adc  b                                           ; $6df9: $88
	adc  b                                           ; $6dfa: $88
	adc  b                                           ; $6dfb: $88
	adc  b                                           ; $6dfc: $88
	adc  b                                           ; $6dfd: $88
	adc  b                                           ; $6dfe: $88
	adc  b                                           ; $6dff: $88
	adc  b                                           ; $6e00: $88
	adc  b                                           ; $6e01: $88
	adc  b                                           ; $6e02: $88
	adc  b                                           ; $6e03: $88
	adc  b                                           ; $6e04: $88
	adc  b                                           ; $6e05: $88
	adc  b                                           ; $6e06: $88
	adc  b                                           ; $6e07: $88
	adc  b                                           ; $6e08: $88
	adc  b                                           ; $6e09: $88
	adc  b                                           ; $6e0a: $88
	adc  b                                           ; $6e0b: $88
	adc  c                                           ; $6e0c: $89
	adc  b                                           ; $6e0d: $88
	sbc  b                                           ; $6e0e: $98
	sbc  b                                           ; $6e0f: $98
	adc  b                                           ; $6e10: $88
	adc  b                                           ; $6e11: $88
	adc  b                                           ; $6e12: $88
	adc  b                                           ; $6e13: $88
	adc  b                                           ; $6e14: $88
	adc  b                                           ; $6e15: $88
	adc  b                                           ; $6e16: $88
	adc  b                                           ; $6e17: $88
	adc  b                                           ; $6e18: $88
	adc  b                                           ; $6e19: $88
	adc  b                                           ; $6e1a: $88
	adc  b                                           ; $6e1b: $88
	adc  b                                           ; $6e1c: $88
	adc  b                                           ; $6e1d: $88
	adc  b                                           ; $6e1e: $88
	adc  b                                           ; $6e1f: $88
	adc  b                                           ; $6e20: $88
	adc  b                                           ; $6e21: $88
	adc  b                                           ; $6e22: $88
	adc  b                                           ; $6e23: $88
	adc  b                                           ; $6e24: $88
	adc  b                                           ; $6e25: $88
	adc  b                                           ; $6e26: $88
	adc  b                                           ; $6e27: $88
	adc  b                                           ; $6e28: $88
	adc  b                                           ; $6e29: $88
	adc  b                                           ; $6e2a: $88
	adc  b                                           ; $6e2b: $88
	adc  b                                           ; $6e2c: $88
	adc  b                                           ; $6e2d: $88
	adc  b                                           ; $6e2e: $88
	adc  b                                           ; $6e2f: $88
	adc  b                                           ; $6e30: $88
	adc  b                                           ; $6e31: $88
	adc  b                                           ; $6e32: $88
	adc  b                                           ; $6e33: $88
	adc  b                                           ; $6e34: $88
	adc  b                                           ; $6e35: $88
	adc  b                                           ; $6e36: $88
	adc  c                                           ; $6e37: $89
	adc  b                                           ; $6e38: $88
	sbc  c                                           ; $6e39: $99
	adc  c                                           ; $6e3a: $89
	sbc  d                                           ; $6e3b: $9a
	ret  z                                           ; $6e3c: $c8

	sbc  h                                           ; $6e3d: $9c
	ld   a, b                                        ; $6e3e: $78
	ret                                              ; $6e3f: $c9


	cp   d                                           ; $6e40: $ba
	sbc  d                                           ; $6e41: $9a
	adc  h                                           ; $6e42: $8c
	halt                                             ; $6e43: $76
	sbc  d                                           ; $6e44: $9a
	xor  b                                           ; $6e45: $a8
	adc  d                                           ; $6e46: $8a
	xor  h                                           ; $6e47: $ac
	ret  c                                           ; $6e48: $d8

	xor  l                                           ; $6e49: $ad
	cp   h                                           ; $6e4a: $bc
	and  [hl]                                        ; $6e4b: $a6
	ld   [hl], a                                     ; $6e4c: $77
	xor  b                                           ; $6e4d: $a8
	inc  [hl]                                        ; $6e4e: $34
	ld   a, c                                        ; $6e4f: $79
	sbc  b                                           ; $6e50: $98
	ld   [hl], a                                     ; $6e51: $77
	sbc  c                                           ; $6e52: $99
	sub  l                                           ; $6e53: $95
	ld   d, a                                        ; $6e54: $57
	sbc  c                                           ; $6e55: $99
	ld   d, e                                        ; $6e56: $53
	ld   d, a                                        ; $6e57: $57
	ld   b, h                                        ; $6e58: $44
	ld   b, l                                        ; $6e59: $45
	ld   h, h                                        ; $6e5a: $64
	ld   [hl], a                                     ; $6e5b: $77
	ld   h, a                                        ; $6e5c: $67
	ld   d, [hl]                                     ; $6e5d: $56
	ld   l, d                                        ; $6e5e: $6a
	ld   [hl], h                                     ; $6e5f: $74
	halt                                             ; $6e60: $76
	ld   e, b                                        ; $6e61: $58
	and  d                                           ; $6e62: $a2
	add  hl, hl                                      ; $6e63: $29
	xor  c                                           ; $6e64: $a9
	ld   b, d                                        ; $6e65: $42
	ld   h, $a8                                      ; $6e66: $26 $a8
	ld   b, h                                        ; $6e68: $44
	ld   a, d                                        ; $6e69: $7a
	sub  l                                           ; $6e6a: $95
	ld   a, b                                        ; $6e6b: $78
	ld   d, l                                        ; $6e6c: $55
	adc  d                                           ; $6e6d: $8a
	ld   d, d                                        ; $6e6e: $52
	ld   l, d                                        ; $6e6f: $6a
	and  [hl]                                        ; $6e70: $a6
	ld   d, a                                        ; $6e71: $57
	adc  e                                           ; $6e72: $8b
	ld   [hl], l                                     ; $6e73: $75
	ld   [de], a                                     ; $6e74: $12
	ret                                              ; $6e75: $c9


	ld   b, c                                        ; $6e76: $41
	add  hl, de                                      ; $6e77: $19
	sub  a                                           ; $6e78: $97
	dec  [hl]                                        ; $6e79: $35
	ld   b, h                                        ; $6e7a: $44
	rst  JumpTable                                         ; $6e7b: $df
	ld   de, $e1df                                   ; $6e7c: $11 $df $e1
	dec  e                                           ; $6e7f: $1d
	rst  $38                                         ; $6e80: $ff
	ld   l, c                                        ; $6e81: $69
	ld   c, l                                        ; $6e82: $4d
	rst  $38                                         ; $6e83: $ff
	ld   hl, $c1ff                                   ; $6e84: $21 $ff $c1
	ld   de, $1179                                   ; $6e87: $11 $79 $11
	inc  de                                          ; $6e8a: $13
	ld   de, $1111                                   ; $6e8b: $11 $11 $11
	push hl                                          ; $6e8e: $e5
	xor  h                                           ; $6e8f: $ac
	rst  $38                                         ; $6e90: $ff
	rst  $38                                         ; $6e91: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e92: $cf
	rst  $38                                         ; $6e93: $ff
	sbc  [hl]                                        ; $6e94: $9e
	db   $fc                                         ; $6e95: $fc
	rst  $38                                         ; $6e96: $ff
	db   $fc                                         ; $6e97: $fc
	xor  a                                           ; $6e98: $af
	or   e                                           ; $6e99: $b3
	ld   [de], a                                     ; $6e9a: $12
	ld   b, e                                        ; $6e9b: $43
	ld   de, $1111                                   ; $6e9c: $11 $11 $11
	ld   de, $3f11                                   ; $6e9f: $11 $11 $3f
	cp   $bf                                         ; $6ea2: $fe $bf
	rst  $38                                         ; $6ea4: $ff
	ei                                               ; $6ea5: $fb
	xor  h                                           ; $6ea6: $ac
	rst  $38                                         ; $6ea7: $ff
	db   $fc                                         ; $6ea8: $fc
	rst  $38                                         ; $6ea9: $ff
	rst  $38                                         ; $6eaa: $ff
	ld   d, a                                        ; $6eab: $57
	ld   e, a                                        ; $6eac: $5f
	add  c                                           ; $6ead: $81
	ld   de, $1111                                   ; $6eae: $11 $11 $11
	ld   de, $1931                                   ; $6eb1: $11 $31 $19
	rst  JumpTable                                         ; $6eb4: $df
	ld   a, [$9fff]                                  ; $6eb5: $fa $ff $9f
	xor  a                                           ; $6eb8: $af
	jp   hl                                          ; $6eb9: $e9


	rst  $38                                         ; $6eba: $ff
	rst  $38                                         ; $6ebb: $ff
	rst  ToBoot                                         ; $6ebc: $c7
	rst  $38                                         ; $6ebd: $ff
	pop  hl                                          ; $6ebe: $e1
	dec  de                                          ; $6ebf: $1b
	ld   d, a                                        ; $6ec0: $57
	ld   hl, $4111                                   ; $6ec1: $21 $11 $41
	ld   de, $3112                                   ; $6ec4: $11 $12 $31
	ld   c, d                                        ; $6ec7: $4a
	ei                                               ; $6ec8: $fb
	rst  $38                                         ; $6ec9: $ff
	rst  $38                                         ; $6eca: $ff
	ld   c, a                                        ; $6ecb: $4f
	xor  a                                           ; $6ecc: $af
	cp   a                                           ; $6ecd: $bf
	rst  $38                                         ; $6ece: $ff
	db   $fd                                         ; $6ecf: $fd
	ld   hl, sp+$6c                                  ; $6ed0: $f8 $6c
	di                                               ; $6ed2: $f3
	ld   a, [de]                                     ; $6ed3: $1a
	ld   h, d                                        ; $6ed4: $62
	inc  hl                                          ; $6ed5: $23
	ld   de, $1111                                   ; $6ed6: $11 $11 $11
	ld   de, $ffc9                                   ; $6ed9: $11 $c9 $ff
	rst  $38                                         ; $6edc: $ff
	rst  $38                                         ; $6edd: $ff
	db   $fd                                         ; $6ede: $fd
	ld   h, h                                        ; $6edf: $64
	ld   a, a                                        ; $6ee0: $7f
	rst  $38                                         ; $6ee1: $ff
	rst  $38                                         ; $6ee2: $ff
	db   $fd                                         ; $6ee3: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ee4: $cf
	or   l                                           ; $6ee5: $b5
	ld   [hl], $11                                   ; $6ee6: $36 $11
	ld   de, $1111                                   ; $6ee8: $11 $11 $11
	ld   h, c                                        ; $6eeb: $61
	inc  d                                           ; $6eec: $14
	pop  af                                          ; $6eed: $f1
	rra                                              ; $6eee: $1f
	db   $fd                                         ; $6eef: $fd
	cpl                                              ; $6ef0: $2f
	rst  $28                                         ; $6ef1: $ef
	pop  af                                          ; $6ef2: $f1
	ccf                                              ; $6ef3: $3f
	rst  $38                                         ; $6ef4: $ff
	rst  $30                                         ; $6ef5: $f7
	rst  $38                                         ; $6ef6: $ff
	rst  $38                                         ; $6ef7: $ff
	inc  [hl]                                        ; $6ef8: $34
	ld   a, d                                        ; $6ef9: $7a
	ld   h, c                                        ; $6efa: $61
	ld   de, $1171                                   ; $6efb: $11 $71 $11
	ld   de, $1111                                   ; $6efe: $11 $11 $11
	cp   $fb                                         ; $6f01: $fe $fb
	rst  $38                                         ; $6f03: $ff
	or   $8f                                         ; $6f04: $f6 $8f
	cp   a                                           ; $6f06: $bf
	adc  $ff                                         ; $6f07: $ce $ff
	cp   $ce                                         ; $6f09: $fe $ce
	rst  $30                                         ; $6f0b: $f7
	ld   a, b                                        ; $6f0c: $78
	ld   h, $11                                      ; $6f0d: $26 $11
	ld   de, wInGameStickyButtonsPressed                                   ; $6f0f: $11 $11 $c2
	ld   de, $1fe1                                   ; $6f12: $11 $e1 $1f
	pop  af                                          ; $6f15: $f1
	rst  $38                                         ; $6f16: $ff
	or   $1f                                         ; $6f17: $f6 $1f
	di                                               ; $6f19: $f3
	xor  d                                           ; $6f1a: $aa
	rst  $38                                         ; $6f1b: $ff
	rst  $38                                         ; $6f1c: $ff
	xor  a                                           ; $6f1d: $af
	ldh  a, [c]                                      ; $6f1e: $f2
	ld   d, l                                        ; $6f1f: $55
	dec  sp                                          ; $6f20: $3b
	ld   hl, $2611                                   ; $6f21: $21 $11 $26
	ld   de, $1711                                   ; $6f24: $11 $11 $17
	ld   de, $1fff                                   ; $6f27: $11 $ff $1f
	or   $ff                                         ; $6f2a: $f6 $ff
	db   $f4                                         ; $6f2c: $f4
	rra                                              ; $6f2d: $1f
	ld   hl, sp-$01                                  ; $6f2e: $f8 $ff
	ld   a, [$73cf]                                  ; $6f30: $fa $cf $73
	or   d                                           ; $6f33: $b2
	sub  [hl]                                        ; $6f34: $96
	ld   de, $1111                                   ; $6f35: $11 $11 $11
	ld   de, $1111                                   ; $6f38: $11 $11 $11
	rst  $38                                         ; $6f3b: $ff
	ld   a, b                                        ; $6f3c: $78
	rst  $38                                         ; $6f3d: $ff
	rst  $38                                         ; $6f3e: $ff
	sub  a                                           ; $6f3f: $97
	adc  a                                           ; $6f40: $8f
	ld   a, [$ffee]                                  ; $6f41: $fa $ee $ff
	ei                                               ; $6f44: $fb
	adc  [hl]                                        ; $6f45: $8e
	ret  z                                           ; $6f46: $c8

	inc  d                                           ; $6f47: $14
	ld   de, $1151                                   ; $6f48: $11 $51 $11
	ld   [de], a                                     ; $6f4b: $12
	ld   de, $1847                                   ; $6f4c: $11 $47 $18
	rst  $38                                         ; $6f4f: $ff
	rra                                              ; $6f50: $1f
	di                                               ; $6f51: $f3
	rst  $38                                         ; $6f52: $ff
	ld   a, e                                        ; $6f53: $7b
	rst  $38                                         ; $6f54: $ff
	cp   d                                           ; $6f55: $ba
	rst  $38                                         ; $6f56: $ff
	xor  a                                           ; $6f57: $af
	and  [hl]                                        ; $6f58: $a6
	db   $fd                                         ; $6f59: $fd
	ld   b, c                                        ; $6f5a: $41
	dec  de                                          ; $6f5b: $1b
	ld   hl, $1111                                   ; $6f5c: $21 $11 $11
	rla                                              ; $6f5f: $17
	ld   hl, $1aaf                                   ; $6f60: $21 $af $1a
	rst  $38                                         ; $6f63: $ff
	sbc  a                                           ; $6f64: $9f
	ei                                               ; $6f65: $fb
	cp   $6d                                         ; $6f66: $fe $6d
	rst  $38                                         ; $6f68: $ff
	db   $eb                                         ; $6f69: $eb
	rst  $38                                         ; $6f6a: $ff
	rst  $28                                         ; $6f6b: $ef
	ld   a, b                                        ; $6f6c: $78
	cp   b                                           ; $6f6d: $b8
	and  c                                           ; $6f6e: $a1
	inc  h                                           ; $6f6f: $24
	ld   de, $1111                                   ; $6f70: $11 $11 $11
	ld   de, $113e                                   ; $6f73: $11 $3e $11
	rst  $38                                         ; $6f76: $ff
	rst  $38                                         ; $6f77: $ff
	rst  $28                                         ; $6f78: $ef
	rst  $38                                         ; $6f79: $ff
	jp   z, $fcef                                    ; $6f7a: $ca $ef $fc

	sbc  a                                           ; $6f7d: $9f
	rst  $38                                         ; $6f7e: $ff
	rst  $20                                         ; $6f7f: $e7
	call c, $21b9                                    ; $6f80: $dc $b9 $21
	ld   sp, $1111                                   ; $6f83: $31 $11 $11
	ld   de, $2611                                   ; $6f86: $11 $11 $26
	ld   a, [de]                                     ; $6f89: $1a
	rst  $38                                         ; $6f8a: $ff
	adc  a                                           ; $6f8b: $8f
	db   $fd                                         ; $6f8c: $fd
	xor  a                                           ; $6f8d: $af
	db   $fc                                         ; $6f8e: $fc
	db   $fd                                         ; $6f8f: $fd
	sbc  [hl]                                        ; $6f90: $9e
	rst  $38                                         ; $6f91: $ff
	xor  a                                           ; $6f92: $af
	db   $ed                                         ; $6f93: $ed
	db   $ed                                         ; $6f94: $ed
	add  [hl]                                        ; $6f95: $86
	or   h                                           ; $6f96: $b4
	ld   de, $1111                                   ; $6f97: $11 $11 $11
	ld   de, $5111                                   ; $6f9a: $11 $11 $51
	inc  d                                           ; $6f9d: $14
	rst  $38                                         ; $6f9e: $ff
	rst  $38                                         ; $6f9f: $ff
	rst  $28                                         ; $6fa0: $ef
	rst  $38                                         ; $6fa1: $ff
	ld   a, e                                        ; $6fa2: $7b
	rst  $38                                         ; $6fa3: $ff
	res  5, d                                        ; $6fa4: $cb $aa
	rst  $38                                         ; $6fa6: $ff
	halt                                             ; $6fa7: $76
	rst  $38                                         ; $6fa8: $ff
	push bc                                          ; $6fa9: $c5
	ld   [hl-], a                                    ; $6faa: $32
	adc  b                                           ; $6fab: $88
	ld   de, $1111                                   ; $6fac: $11 $11 $11
	ld   de, $111a                                   ; $6faf: $11 $1a $11
	ld   e, l                                        ; $6fb2: $5d
	rst  $38                                         ; $6fb3: $ff
	set  7, a                                        ; $6fb4: $cb $ff
	db   $fd                                         ; $6fb6: $fd
	rst  JumpTable                                         ; $6fb7: $df
	rst  $38                                         ; $6fb8: $ff
	or   a                                           ; $6fb9: $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fba: $cf
	ld   a, [$de7a]                                  ; $6fbb: $fa $7a $de
	ld   [hl], h                                     ; $6fbe: $74
	ld   c, c                                        ; $6fbf: $49
	ld   [hl], c                                     ; $6fc0: $71
	ld   de, $1133                                   ; $6fc1: $11 $33 $11
	ld   [de], a                                     ; $6fc4: $12
	ld   [hl-], a                                    ; $6fc5: $32
	ld   de, $6447                                   ; $6fc6: $11 $47 $64
	ld   a, c                                        ; $6fc9: $79
	sbc  e                                           ; $6fca: $9b
	xor  c                                           ; $6fcb: $a9
	sbc  $de                                         ; $6fcc: $de $de
	rst  $28                                         ; $6fce: $ef
	rst  $38                                         ; $6fcf: $ff
	call c, $ccfd                                    ; $6fd0: $dc $fd $cc
	xor  e                                           ; $6fd3: $ab
	and  a                                           ; $6fd4: $a7
	xor  b                                           ; $6fd5: $a8
	ld   l, c                                        ; $6fd6: $69
	ld   [hl], l                                     ; $6fd7: $75
	ld   h, l                                        ; $6fd8: $65
	ld   b, [hl]                                     ; $6fd9: $46
	inc  [hl]                                        ; $6fda: $34
	ld   d, e                                        ; $6fdb: $53
	ld   d, l                                        ; $6fdc: $55
	ld   d, l                                        ; $6fdd: $55
	ld   d, l                                        ; $6fde: $55
	ld   h, [hl]                                     ; $6fdf: $66
	ld   h, a                                        ; $6fe0: $67
	ld   a, c                                        ; $6fe1: $79
	sbc  c                                           ; $6fe2: $99
	cp   e                                           ; $6fe3: $bb
	cp   e                                           ; $6fe4: $bb
	call z, $cbcb                                    ; $6fe5: $cc $cb $cb
	cp   e                                           ; $6fe8: $bb
	xor  d                                           ; $6fe9: $aa
	ret                                              ; $6fea: $c9


	sbc  e                                           ; $6feb: $9b
	adc  b                                           ; $6fec: $88
	sbc  b                                           ; $6fed: $98
	halt                                             ; $6fee: $76
	add  a                                           ; $6fef: $87
	ld   h, a                                        ; $6ff0: $67
	ld   h, [hl]                                     ; $6ff1: $66
	halt                                             ; $6ff2: $76
	ld   h, [hl]                                     ; $6ff3: $66
	ld   [hl], a                                     ; $6ff4: $77
	ld   [hl], a                                     ; $6ff5: $77
	add  a                                           ; $6ff6: $87
	sbc  b                                           ; $6ff7: $98
	xor  c                                           ; $6ff8: $a9
	sbc  c                                           ; $6ff9: $99
	sbc  b                                           ; $6ffa: $98
	sbc  c                                           ; $6ffb: $99
	sbc  b                                           ; $6ffc: $98
	adc  c                                           ; $6ffd: $89
	sbc  c                                           ; $6ffe: $99
	sbc  c                                           ; $6fff: $99
	adc  c                                           ; $7000: $89
	ld   a, b                                        ; $7001: $78
	adc  b                                           ; $7002: $88
	add  a                                           ; $7003: $87
	sbc  b                                           ; $7004: $98
	ld   a, b                                        ; $7005: $78
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	ld   a, b                                        ; $7008: $78
	add  a                                           ; $7009: $87
	adc  b                                           ; $700a: $88
	sbc  c                                           ; $700b: $99
	adc  b                                           ; $700c: $88
	sbc  c                                           ; $700d: $99
	adc  c                                           ; $700e: $89
	adc  b                                           ; $700f: $88
	sbc  b                                           ; $7010: $98
	add  a                                           ; $7011: $87
	adc  b                                           ; $7012: $88
	add  a                                           ; $7013: $87
	adc  b                                           ; $7014: $88
	add  a                                           ; $7015: $87
	ld   [hl], a                                     ; $7016: $77
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	adc  c                                           ; $701e: $89
	adc  c                                           ; $701f: $89
	adc  c                                           ; $7020: $89
	ld   a, b                                        ; $7021: $78
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  b                                           ; $7024: $88
	adc  b                                           ; $7025: $88
	adc  b                                           ; $7026: $88
	adc  b                                           ; $7027: $88
	ld   [hl], a                                     ; $7028: $77
	ld   a, b                                        ; $7029: $78
	ld   a, b                                        ; $702a: $78
	add  a                                           ; $702b: $87
	adc  b                                           ; $702c: $88
	adc  b                                           ; $702d: $88
	adc  b                                           ; $702e: $88
	adc  b                                           ; $702f: $88
	adc  b                                           ; $7030: $88
	adc  b                                           ; $7031: $88
	adc  b                                           ; $7032: $88
	adc  b                                           ; $7033: $88
	sbc  b                                           ; $7034: $98
	sbc  b                                           ; $7035: $98
	adc  b                                           ; $7036: $88
	adc  b                                           ; $7037: $88
	adc  b                                           ; $7038: $88
	adc  b                                           ; $7039: $88
	adc  b                                           ; $703a: $88
	ld   a, b                                        ; $703b: $78
	adc  b                                           ; $703c: $88
	add  a                                           ; $703d: $87
	adc  b                                           ; $703e: $88
	adc  b                                           ; $703f: $88
	adc  b                                           ; $7040: $88
	adc  b                                           ; $7041: $88
	adc  b                                           ; $7042: $88
	adc  b                                           ; $7043: $88
	adc  b                                           ; $7044: $88
	adc  b                                           ; $7045: $88
	adc  b                                           ; $7046: $88
	adc  b                                           ; $7047: $88
	adc  b                                           ; $7048: $88
	adc  c                                           ; $7049: $89
	adc  b                                           ; $704a: $88
	adc  b                                           ; $704b: $88
	adc  b                                           ; $704c: $88
	adc  b                                           ; $704d: $88
	adc  b                                           ; $704e: $88
	adc  b                                           ; $704f: $88
	adc  b                                           ; $7050: $88
	adc  b                                           ; $7051: $88
	adc  b                                           ; $7052: $88
	adc  b                                           ; $7053: $88
	adc  b                                           ; $7054: $88
	adc  b                                           ; $7055: $88
	ld   [hl], a                                     ; $7056: $77
	ld   [hl], a                                     ; $7057: $77
	add  a                                           ; $7058: $87
	ld   [hl], a                                     ; $7059: $77
	adc  b                                           ; $705a: $88
	ld   a, b                                        ; $705b: $78
	adc  b                                           ; $705c: $88
	adc  b                                           ; $705d: $88
	adc  b                                           ; $705e: $88
	adc  b                                           ; $705f: $88
	adc  b                                           ; $7060: $88
	adc  b                                           ; $7061: $88
	adc  b                                           ; $7062: $88
	adc  b                                           ; $7063: $88
	adc  b                                           ; $7064: $88
	adc  b                                           ; $7065: $88
	adc  c                                           ; $7066: $89
	adc  b                                           ; $7067: $88
	adc  b                                           ; $7068: $88
	adc  b                                           ; $7069: $88
	adc  b                                           ; $706a: $88
	adc  b                                           ; $706b: $88
	ld   [hl], a                                     ; $706c: $77
	ld   [hl], a                                     ; $706d: $77
	ld   [hl], a                                     ; $706e: $77
	add  a                                           ; $706f: $87
	ld   a, b                                        ; $7070: $78
	add  a                                           ; $7071: $87
	ld   a, b                                        ; $7072: $78
	adc  b                                           ; $7073: $88
	adc  b                                           ; $7074: $88
	adc  b                                           ; $7075: $88
	adc  b                                           ; $7076: $88
	adc  b                                           ; $7077: $88
	adc  b                                           ; $7078: $88
	sbc  b                                           ; $7079: $98
	adc  b                                           ; $707a: $88
	sbc  b                                           ; $707b: $98
	adc  b                                           ; $707c: $88
	adc  b                                           ; $707d: $88
	adc  b                                           ; $707e: $88
	adc  b                                           ; $707f: $88
	adc  b                                           ; $7080: $88
	ld   a, b                                        ; $7081: $78
	add  a                                           ; $7082: $87
	adc  b                                           ; $7083: $88
	adc  b                                           ; $7084: $88
	adc  b                                           ; $7085: $88
	adc  b                                           ; $7086: $88
	adc  b                                           ; $7087: $88
	adc  b                                           ; $7088: $88
	adc  b                                           ; $7089: $88
	adc  b                                           ; $708a: $88
	adc  b                                           ; $708b: $88
	adc  b                                           ; $708c: $88
	adc  b                                           ; $708d: $88
	adc  b                                           ; $708e: $88
	adc  b                                           ; $708f: $88
	adc  b                                           ; $7090: $88
	adc  b                                           ; $7091: $88
	adc  b                                           ; $7092: $88
	adc  b                                           ; $7093: $88
	adc  b                                           ; $7094: $88
	adc  b                                           ; $7095: $88
	adc  b                                           ; $7096: $88
	adc  b                                           ; $7097: $88
	adc  b                                           ; $7098: $88
	adc  b                                           ; $7099: $88
	adc  b                                           ; $709a: $88
	adc  b                                           ; $709b: $88
	adc  b                                           ; $709c: $88
	adc  b                                           ; $709d: $88
	adc  b                                           ; $709e: $88
	adc  b                                           ; $709f: $88
	adc  b                                           ; $70a0: $88
	adc  b                                           ; $70a1: $88
	adc  b                                           ; $70a2: $88
	adc  b                                           ; $70a3: $88
	adc  b                                           ; $70a4: $88
	adc  b                                           ; $70a5: $88
	adc  b                                           ; $70a6: $88
	adc  b                                           ; $70a7: $88
	adc  b                                           ; $70a8: $88
	adc  b                                           ; $70a9: $88
	adc  b                                           ; $70aa: $88
	adc  b                                           ; $70ab: $88
	adc  b                                           ; $70ac: $88
	adc  b                                           ; $70ad: $88
	adc  b                                           ; $70ae: $88
	adc  b                                           ; $70af: $88
	adc  b                                           ; $70b0: $88
	adc  b                                           ; $70b1: $88
	adc  b                                           ; $70b2: $88
	adc  b                                           ; $70b3: $88
	adc  b                                           ; $70b4: $88
	adc  b                                           ; $70b5: $88
	adc  b                                           ; $70b6: $88
	adc  b                                           ; $70b7: $88
	adc  b                                           ; $70b8: $88
	adc  b                                           ; $70b9: $88
	adc  b                                           ; $70ba: $88
	ld   [hl], a                                     ; $70bb: $77
	add  a                                           ; $70bc: $87
	adc  b                                           ; $70bd: $88
	add  a                                           ; $70be: $87
	sbc  d                                           ; $70bf: $9a
	ld   a, b                                        ; $70c0: $78
	sub  a                                           ; $70c1: $97
	sub  a                                           ; $70c2: $97
	adc  b                                           ; $70c3: $88
	adc  b                                           ; $70c4: $88
	adc  b                                           ; $70c5: $88
	adc  c                                           ; $70c6: $89
	adc  b                                           ; $70c7: $88
	adc  c                                           ; $70c8: $89
	adc  b                                           ; $70c9: $88
	adc  b                                           ; $70ca: $88
	adc  b                                           ; $70cb: $88
	adc  b                                           ; $70cc: $88
	sbc  b                                           ; $70cd: $98
	adc  b                                           ; $70ce: $88
	adc  b                                           ; $70cf: $88
	adc  b                                           ; $70d0: $88
	ld   a, b                                        ; $70d1: $78
	ld   a, b                                        ; $70d2: $78
	ld   a, b                                        ; $70d3: $78
	adc  b                                           ; $70d4: $88
	sbc  c                                           ; $70d5: $99
	add  a                                           ; $70d6: $87
	adc  b                                           ; $70d7: $88
	adc  b                                           ; $70d8: $88
	ld   a, c                                        ; $70d9: $79
	ld   a, b                                        ; $70da: $78
	add  a                                           ; $70db: $87
	adc  b                                           ; $70dc: $88
	adc  c                                           ; $70dd: $89
	adc  b                                           ; $70de: $88
	adc  c                                           ; $70df: $89
	ld   a, c                                        ; $70e0: $79
	adc  b                                           ; $70e1: $88
	sub  a                                           ; $70e2: $97
	sub  a                                           ; $70e3: $97
	ld   a, c                                        ; $70e4: $79
	ld   [hl], a                                     ; $70e5: $77
	add  a                                           ; $70e6: $87
	ld   a, c                                        ; $70e7: $79
	ld   a, d                                        ; $70e8: $7a
	ld   [hl], a                                     ; $70e9: $77
	sub  a                                           ; $70ea: $97
	sub  a                                           ; $70eb: $97
	sbc  c                                           ; $70ec: $99
	ld   a, c                                        ; $70ed: $79
	adc  b                                           ; $70ee: $88
	ld   a, c                                        ; $70ef: $79
	ld   a, c                                        ; $70f0: $79
	xor  b                                           ; $70f1: $a8
	adc  b                                           ; $70f2: $88
	sub  a                                           ; $70f3: $97
	ld   a, d                                        ; $70f4: $7a
	ld   [hl], a                                     ; $70f5: $77
	sub  a                                           ; $70f6: $97
	adc  b                                           ; $70f7: $88
	adc  b                                           ; $70f8: $88
	ld   a, c                                        ; $70f9: $79
	sub  a                                           ; $70fa: $97
	sub  a                                           ; $70fb: $97
	sbc  b                                           ; $70fc: $98
	adc  b                                           ; $70fd: $88
	ld   a, c                                        ; $70fe: $79
	ld   a, b                                        ; $70ff: $78
	adc  c                                           ; $7100: $89
	adc  b                                           ; $7101: $88
	adc  b                                           ; $7102: $88
	sub  a                                           ; $7103: $97
	add  a                                           ; $7104: $87
	sbc  b                                           ; $7105: $98
	add  a                                           ; $7106: $87
	sub  a                                           ; $7107: $97
	adc  c                                           ; $7108: $89
	ld   l, e                                        ; $7109: $6b
	ld   e, b                                        ; $710a: $58
	and  l                                           ; $710b: $a5
	sbc  d                                           ; $710c: $9a
	ld   h, a                                        ; $710d: $67
	xor  b                                           ; $710e: $a8
	ld   a, b                                        ; $710f: $78
	adc  b                                           ; $7110: $88
	sub  a                                           ; $7111: $97
	adc  c                                           ; $7112: $89
	ld   [hl], a                                     ; $7113: $77
	sbc  b                                           ; $7114: $98
	ld   a, b                                        ; $7115: $78
	adc  b                                           ; $7116: $88
	ld   l, d                                        ; $7117: $6a
	ld   a, b                                        ; $7118: $78
	or   e                                           ; $7119: $b3
	cp   c                                           ; $711a: $b9
	ld   l, d                                        ; $711b: $6a
	ld   a, b                                        ; $711c: $78
	ld   a, c                                        ; $711d: $79
	ld   e, d                                        ; $711e: $5a
	halt                                             ; $711f: $76
	or   l                                           ; $7120: $b5
	sbc  b                                           ; $7121: $98
	halt                                             ; $7122: $76
	or   l                                           ; $7123: $b5
	and  a                                           ; $7124: $a7
	ld   e, l                                        ; $7125: $5d
	inc  a                                           ; $7126: $3c
	ld   l, d                                        ; $7127: $6a
	ld   [hl], a                                     ; $7128: $77
	or   e                                           ; $7129: $b3
	or   [hl]                                        ; $712a: $b6
	sub  [hl]                                        ; $712b: $96
	adc  c                                           ; $712c: $89
	ld   e, e                                        ; $712d: $5b
	ld   a, b                                        ; $712e: $78
	adc  c                                           ; $712f: $89
	halt                                             ; $7130: $76
	or   [hl]                                        ; $7131: $b6
	cp   c                                           ; $7132: $b9
	ld   l, d                                        ; $7133: $6a
	ld   l, h                                        ; $7134: $6c
	ld   c, d                                        ; $7135: $4a
	add  h                                           ; $7136: $84
	call nz, Call_0e0_5aa8                           ; $7137: $c4 $a8 $5a
	ld   e, c                                        ; $713a: $59
	ld   a, d                                        ; $713b: $7a
	sub  [hl]                                        ; $713c: $96
	or   h                                           ; $713d: $b4
	or   a                                           ; $713e: $b7
	adc  l                                           ; $713f: $8d
	ld   d, a                                        ; $7140: $57
	sbc  d                                           ; $7141: $9a
	ld   [hl], a                                     ; $7142: $77
	add  [hl]                                        ; $7143: $86
	adc  b                                           ; $7144: $88
	ld   l, e                                        ; $7145: $6b
	add  [hl]                                        ; $7146: $86
	adc  c                                           ; $7147: $89
	ld   [hl], a                                     ; $7148: $77
	add  a                                           ; $7149: $87
	ld   [hl], a                                     ; $714a: $77
	adc  c                                           ; $714b: $89
	add  a                                           ; $714c: $87
	ld   a, d                                        ; $714d: $7a
	ld   c, e                                        ; $714e: $4b
	halt                                             ; $714f: $76
	or   l                                           ; $7150: $b5
	and  [hl]                                        ; $7151: $a6
	sbc  c                                           ; $7152: $99
	ld   e, h                                        ; $7153: $5c
	ld   e, d                                        ; $7154: $5a
	add  [hl]                                        ; $7155: $86
	sub  l                                           ; $7156: $95
	or   l                                           ; $7157: $b5
	sbc  d                                           ; $7158: $9a
	ld   e, e                                        ; $7159: $5b
	ld   h, l                                        ; $715a: $65
	cp   d                                           ; $715b: $ba
	ld   a, d                                        ; $715c: $7a
	ld   e, c                                        ; $715d: $59
	add  [hl]                                        ; $715e: $86
	or   [hl]                                        ; $715f: $b6
	ld   a, d                                        ; $7160: $7a
	ld   e, c                                        ; $7161: $59
	sub  [hl]                                        ; $7162: $96
	add  a                                           ; $7163: $87
	call nz, $6b8a                                   ; $7164: $c4 $8a $6b
	ld   l, d                                        ; $7167: $6a
	ld   l, b                                        ; $7168: $68
	adc  b                                           ; $7169: $88
	add  a                                           ; $716a: $87
	and  [hl]                                        ; $716b: $a6
	sbc  b                                           ; $716c: $98
	ld   a, d                                        ; $716d: $7a
	halt                                             ; $716e: $76
	sub  [hl]                                        ; $716f: $96
	adc  b                                           ; $7170: $88
	ld   a, c                                        ; $7171: $79
	ld   l, d                                        ; $7172: $6a
	add  [hl]                                        ; $7173: $86
	and  a                                           ; $7174: $a7
	ld   a, e                                        ; $7175: $7b
	ld   e, c                                        ; $7176: $59
	add  [hl]                                        ; $7177: $86
	or   l                                           ; $7178: $b5
	xor  c                                           ; $7179: $a9
	ld   c, d                                        ; $717a: $4a
	ld   [hl], a                                     ; $717b: $77
	sub  a                                           ; $717c: $97
	ld   a, d                                        ; $717d: $7a
	ld   [hl], a                                     ; $717e: $77
	or   h                                           ; $717f: $b4
	cp   d                                           ; $7180: $ba
	ld   c, d                                        ; $7181: $4a
	ld   a, b                                        ; $7182: $78
	xor  b                                           ; $7183: $a8
	ld   a, d                                        ; $7184: $7a
	ld   a, b                                        ; $7185: $78
	sub  a                                           ; $7186: $97
	ld   a, c                                        ; $7187: $79
	and  a                                           ; $7188: $a7
	add  a                                           ; $7189: $87
	or   a                                           ; $718a: $b7
	ld   a, c                                        ; $718b: $79
	adc  c                                           ; $718c: $89
	ld   l, e                                        ; $718d: $6b
	ld   e, b                                        ; $718e: $58
	and  [hl]                                        ; $718f: $a6
	and  l                                           ; $7190: $a5
	sbc  d                                           ; $7191: $9a
	ld   l, d                                        ; $7192: $6a
	ld   e, e                                        ; $7193: $5b
	add  h                                           ; $7194: $84
	call nz, Call_0e0_6cb9                           ; $7195: $c4 $b9 $6c
	ld   e, c                                        ; $7198: $59
	adc  d                                           ; $7199: $8a
	ld   e, b                                        ; $719a: $58
	and  l                                           ; $719b: $a5
	sub  a                                           ; $719c: $97
	adc  b                                           ; $719d: $88
	add  a                                           ; $719e: $87
	ld   a, d                                        ; $719f: $7a
	sub  l                                           ; $71a0: $95
	sbc  b                                           ; $71a1: $98
	sbc  d                                           ; $71a2: $9a
	ld   c, e                                        ; $71a3: $4b
	add  a                                           ; $71a4: $87
	and  a                                           ; $71a5: $a7
	add  [hl]                                        ; $71a6: $86
	or   a                                           ; $71a7: $b7
	adc  c                                           ; $71a8: $89
	ld   l, e                                        ; $71a9: $6b
	ld   d, a                                        ; $71aa: $57
	and  h                                           ; $71ab: $a4
	or   [hl]                                        ; $71ac: $b6
	ld   l, l                                        ; $71ad: $6d
	ld   e, c                                        ; $71ae: $59
	add  a                                           ; $71af: $87
	and  [hl]                                        ; $71b0: $a6
	and  [hl]                                        ; $71b1: $a6
	or   a                                           ; $71b2: $b7
	adc  d                                           ; $71b3: $8a
	inc  a                                           ; $71b4: $3c
	ld   l, b                                        ; $71b5: $68
	adc  b                                           ; $71b6: $88
	sub  a                                           ; $71b7: $97
	add  a                                           ; $71b8: $87
	adc  b                                           ; $71b9: $88
	sbc  b                                           ; $71ba: $98
	ld   l, d                                        ; $71bb: $6a
	add  l                                           ; $71bc: $85
	and  a                                           ; $71bd: $a7
	ld   a, c                                        ; $71be: $79
	ld   a, c                                        ; $71bf: $79
	halt                                             ; $71c0: $76
	push de                                          ; $71c1: $d5
	ld   l, [hl]                                     ; $71c2: $6e
	dec  e                                           ; $71c3: $1d
	ld   h, [hl]                                     ; $71c4: $66
	pop  hl                                          ; $71c5: $e1
	rst  $10                                         ; $71c6: $d7
	ld   e, h                                        ; $71c7: $5c
	ld   e, c                                        ; $71c8: $59
	sub  [hl]                                        ; $71c9: $96
	and  a                                           ; $71ca: $a7
	ld   l, d                                        ; $71cb: $6a
	add  [hl]                                        ; $71cc: $86
	adc  b                                           ; $71cd: $88
	ld   l, d                                        ; $71ce: $6a
	ld   l, c                                        ; $71cf: $69
	and  [hl]                                        ; $71d0: $a6
	add  $9b                                         ; $71d1: $c6 $9b
	ld   e, d                                        ; $71d3: $5a
	halt                                             ; $71d4: $76
	or   l                                           ; $71d5: $b5
	sbc  b                                           ; $71d6: $98
	ld   l, h                                        ; $71d7: $6c
	ld   a, [hl-]                                    ; $71d8: $3a
	sub  l                                           ; $71d9: $95
	add  $6b                                         ; $71da: $c6 $6b
	ld   l, h                                        ; $71dc: $6c
	ld   h, [hl]                                     ; $71dd: $66
	call nz, $7999                                   ; $71de: $c4 $99 $79
	adc  b                                           ; $71e1: $88
	ld   l, c                                        ; $71e2: $69
	and  l                                           ; $71e3: $a5
	and  a                                           ; $71e4: $a7
	sbc  c                                           ; $71e5: $99
	ld   l, e                                        ; $71e6: $6b
	dec  a                                           ; $71e7: $3d
	add  h                                           ; $71e8: $84
	or   [hl]                                        ; $71e9: $b6
	or   a                                           ; $71ea: $b7
	ld   e, c                                        ; $71eb: $59
	ld   l, c                                        ; $71ec: $69
	add  [hl]                                        ; $71ed: $86
	sub  a                                           ; $71ee: $97
	push bc                                          ; $71ef: $c5
	ld   a, e                                        ; $71f0: $7b
	ld   l, h                                        ; $71f1: $6c
	ld   h, a                                        ; $71f2: $67
	or   a                                           ; $71f3: $b7
	sub  [hl]                                        ; $71f4: $96
	ld   a, l                                        ; $71f5: $7d
	ld   l, c                                        ; $71f6: $69
	sub  a                                           ; $71f7: $97
	sub  [hl]                                        ; $71f8: $96
	sub  a                                           ; $71f9: $97
	ld   a, d                                        ; $71fa: $7a
	and  [hl]                                        ; $71fb: $a6
	sbc  e                                           ; $71fc: $9b
	ld   l, b                                        ; $71fd: $68
	adc  c                                           ; $71fe: $89
	ld   a, b                                        ; $71ff: $78
	or   e                                           ; $7200: $b3
	sbc  d                                           ; $7201: $9a
	ld   e, d                                        ; $7202: $5a
	ld   c, h                                        ; $7203: $4c
	ld   [hl], h                                     ; $7204: $74
	add  $6a                                         ; $7205: $c6 $6a
	ld   h, a                                        ; $7207: $67
	sbc  c                                           ; $7208: $99
	sub  l                                           ; $7209: $95
	sbc  c                                           ; $720a: $99
	adc  b                                           ; $720b: $88
	ld   l, b                                        ; $720c: $68
	sbc  b                                           ; $720d: $98
	or   a                                           ; $720e: $b7
	ld   l, e                                        ; $720f: $6b
	ld   e, e                                        ; $7210: $5b
	and  l                                           ; $7211: $a5
	cp   b                                           ; $7212: $b8
	xor  c                                           ; $7213: $a9
	ld   c, e                                        ; $7214: $4b
	sub  l                                           ; $7215: $95
	rst  ToBoot                                         ; $7216: $c7
	ld   l, b                                        ; $7217: $68
	ld   a, c                                        ; $7218: $79
	adc  b                                           ; $7219: $88
	ld   e, b                                        ; $721a: $58
	ld   h, e                                        ; $721b: $63
	jp   Jump_0e0_4b77                               ; $721c: $c3 $77 $4b


	daa                                              ; $721f: $27
	sub  [hl]                                        ; $7220: $96
	adc  c                                           ; $7221: $89
	add  [hl]                                        ; $7222: $86
	xor  c                                           ; $7223: $a9
	xor  c                                           ; $7224: $a9
	cp   e                                           ; $7225: $bb
	ld   a, l                                        ; $7226: $7d
	jp   z, $8bca                                    ; $7227: $ca $ca $8b

	reti                                             ; $722a: $d9


	adc  c                                           ; $722b: $89
	and  l                                           ; $722c: $a5
	add  a                                           ; $722d: $87
	scf                                              ; $722e: $37
	ld   h, c                                        ; $722f: $61
	ld   [hl-], a                                    ; $7230: $32
	inc  hl                                          ; $7231: $23
	ld   [hl+], a                                    ; $7232: $22
	inc  h                                           ; $7233: $24
	dec  [hl]                                        ; $7234: $35
	ld   [hl], $a6                                   ; $7235: $36 $a6
	call c, $dfbf                                    ; $7237: $dc $bf $df
	rst  $38                                         ; $723a: $ff
	db   $fd                                         ; $723b: $fd
	rst  $28                                         ; $723c: $ef
	xor  $bc                                         ; $723d: $ee $bc
	xor  d                                           ; $723f: $aa
	ld   h, a                                        ; $7240: $67
	ld   d, d                                        ; $7241: $52
	inc  sp                                          ; $7242: $33
	ld   de, $1111                                   ; $7243: $11 $11 $11
	ld   de, $4711                                   ; $7246: $11 $11 $47
	ld   e, c                                        ; $7249: $59
	cp   a                                           ; $724a: $bf
	db   $fd                                         ; $724b: $fd
	rst  $38                                         ; $724c: $ff
	rst  $38                                         ; $724d: $ff
	rst  $38                                         ; $724e: $ff
	rst  $28                                         ; $724f: $ef
	db   $fc                                         ; $7250: $fc
	sbc  $ab                                         ; $7251: $de $ab
	ld   a, b                                        ; $7253: $78
	ld   [hl], e                                     ; $7254: $73
	ld   h, c                                        ; $7255: $61
	ld   de, $1111                                   ; $7256: $11 $11 $11
	ld   de, $1311                                   ; $7259: $11 $11 $13
	ld   [hl], $9c                                   ; $725c: $36 $9c
	db   $fd                                         ; $725e: $fd
	rst  $38                                         ; $725f: $ff
	rst  $38                                         ; $7260: $ff
	rst  $38                                         ; $7261: $ff
	rst  $38                                         ; $7262: $ff
	rst  $38                                         ; $7263: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7264: $cf
	cp   b                                           ; $7265: $b8
	cp   c                                           ; $7266: $b9
	ld   [hl], $51                                   ; $7267: $36 $51
	ld   de, $1111                                   ; $7269: $11 $11 $11
	ld   de, $1111                                   ; $726c: $11 $11 $11
	ld   b, a                                        ; $726f: $47
	ld   e, e                                        ; $7270: $5b
	rst  $38                                         ; $7271: $ff
	rst  $38                                         ; $7272: $ff
	rst  $38                                         ; $7273: $ff
	rst  $38                                         ; $7274: $ff
	rst  $38                                         ; $7275: $ff
	cp   $db                                         ; $7276: $fe $db
	ret  z                                           ; $7278: $c8

	ld   l, e                                        ; $7279: $6b
	ld   d, e                                        ; $727a: $53
	ld   b, c                                        ; $727b: $41
	ld   de, $1111                                   ; $727c: $11 $11 $11
	ld   de, $1111                                   ; $727f: $11 $11 $11
	ld   b, h                                        ; $7282: $44
	adc  h                                           ; $7283: $8c
	rst  $28                                         ; $7284: $ef
	rst  $38                                         ; $7285: $ff
	rst  $38                                         ; $7286: $ff
	rst  $38                                         ; $7287: $ff
	rst  $38                                         ; $7288: $ff
	rst  $38                                         ; $7289: $ff
	db   $fc                                         ; $728a: $fc
	add  a                                           ; $728b: $87
	sub  e                                           ; $728c: $93
	dec  d                                           ; $728d: $15
	ld   de, $1111                                   ; $728e: $11 $11 $11
	ld   de, $1111                                   ; $7291: $11 $11 $11
	ld   de, $9f76                                   ; $7294: $11 $76 $9f
	rst  $38                                         ; $7297: $ff
	rst  $38                                         ; $7298: $ff
	rst  $38                                         ; $7299: $ff
	rst  $38                                         ; $729a: $ff
	rst  $38                                         ; $729b: $ff
	db   $fc                                         ; $729c: $fc
	jp   z, $1374                                    ; $729d: $ca $74 $13

	ld   de, $1111                                   ; $72a0: $11 $11 $11
	ld   de, $1111                                   ; $72a3: $11 $11 $11
	ld   de, $9e26                                   ; $72a6: $11 $26 $9e
	rst  JumpTable                                         ; $72a9: $df
	rst  $38                                         ; $72aa: $ff
	rst  $38                                         ; $72ab: $ff
	rst  $38                                         ; $72ac: $ff
	rst  $38                                         ; $72ad: $ff
	rst  $38                                         ; $72ae: $ff
	db   $db                                         ; $72af: $db
	ld   [hl], l                                     ; $72b0: $75
	ld   hl, $1111                                   ; $72b1: $21 $11 $11
	ld   de, $1111                                   ; $72b4: $11 $11 $11
	ld   de, $1611                                   ; $72b7: $11 $11 $16
	cp   a                                           ; $72ba: $bf
	rst  $38                                         ; $72bb: $ff
	rst  $38                                         ; $72bc: $ff
	rst  $38                                         ; $72bd: $ff
	rst  $38                                         ; $72be: $ff
	rst  $38                                         ; $72bf: $ff
	rst  $38                                         ; $72c0: $ff
	jp   c, $1154                                    ; $72c1: $da $54 $11

	ld   de, $1111                                   ; $72c4: $11 $11 $11
	ld   de, $1111                                   ; $72c7: $11 $11 $11
	ld   de, $ff18                                   ; $72ca: $11 $18 $ff
	rst  $38                                         ; $72cd: $ff
	rst  $38                                         ; $72ce: $ff
	rst  $38                                         ; $72cf: $ff
	rst  $38                                         ; $72d0: $ff
	rst  $38                                         ; $72d1: $ff
	rst  $38                                         ; $72d2: $ff
	or   l                                           ; $72d3: $b5
	ld   d, d                                        ; $72d4: $52
	ld   de, $1111                                   ; $72d5: $11 $11 $11
	ld   de, $1111                                   ; $72d8: $11 $11 $11
	inc  de                                          ; $72db: $13
	ld   h, c                                        ; $72dc: $61
	rra                                              ; $72dd: $1f
	rst  $38                                         ; $72de: $ff
	rst  $38                                         ; $72df: $ff
	rst  $38                                         ; $72e0: $ff
	rst  $38                                         ; $72e1: $ff
	rst  $38                                         ; $72e2: $ff
	rst  $38                                         ; $72e3: $ff
	rst  $38                                         ; $72e4: $ff
	ld   h, c                                        ; $72e5: $61
	ld   de, $1111                                   ; $72e6: $11 $11 $11
	ld   de, $1111                                   ; $72e9: $11 $11 $11
	ld   de, $9118                                   ; $72ec: $11 $18 $91
	ld   c, a                                        ; $72ef: $4f
	rst  $38                                         ; $72f0: $ff
	rst  $38                                         ; $72f1: $ff
	rst  $38                                         ; $72f2: $ff
	rst  $38                                         ; $72f3: $ff
	rst  $38                                         ; $72f4: $ff
	db   $fd                                         ; $72f5: $fd
	ei                                               ; $72f6: $fb
	ld   hl, $1111                                   ; $72f7: $21 $11 $11
	ld   de, $1111                                   ; $72fa: $11 $11 $11
	ld   de, $1d11                                   ; $72fd: $11 $11 $1d
	sub  d                                           ; $7300: $92
	rst  $38                                         ; $7301: $ff
	rst  $38                                         ; $7302: $ff
	rst  $38                                         ; $7303: $ff
	rst  $38                                         ; $7304: $ff
	rst  $38                                         ; $7305: $ff
	rst  $38                                         ; $7306: $ff
	ei                                               ; $7307: $fb
	ld   h, d                                        ; $7308: $62
	ld   sp, $1111                                   ; $7309: $31 $11 $11
	ld   de, $1111                                   ; $730c: $11 $11 $11
	ld   de, $6c11                                   ; $730f: $11 $11 $6c
	ld   [hl], a                                     ; $7312: $77
	rst  $38                                         ; $7313: $ff
	rst  $38                                         ; $7314: $ff
	rst  $38                                         ; $7315: $ff
	rst  $38                                         ; $7316: $ff
	rst  $38                                         ; $7317: $ff
	rst  $38                                         ; $7318: $ff
	reti                                             ; $7319: $d9


	ld   hl, $1111                                   ; $731a: $21 $11 $11
	ld   de, $1111                                   ; $731d: $11 $11 $11
	ld   de, $1131                                   ; $7320: $11 $31 $11
	inc  d                                           ; $7323: $14
	ld   b, h                                        ; $7324: $44
	ld   a, e                                        ; $7325: $7b
	rst  $28                                         ; $7326: $ef
	rst  $38                                         ; $7327: $ff
	rst  $38                                         ; $7328: $ff
	rst  $38                                         ; $7329: $ff
	db   $fd                                         ; $732a: $fd
	jp   c, $9989                                    ; $732b: $da $89 $99

	sbc  c                                           ; $732e: $99
	xor  c                                           ; $732f: $a9
	sbc  c                                           ; $7330: $99
	add  a                                           ; $7331: $87
	ld   h, l                                        ; $7332: $65
	ld   b, e                                        ; $7333: $43
	ld   [hl+], a                                    ; $7334: $22
	ld   de, $1111                                   ; $7335: $11 $11 $11
	ld   de, $8a35                                   ; $7338: $11 $35 $8a
	call z, $dddc                                    ; $733b: $cc $dc $dd
	xor  $ed                                         ; $733e: $ee $ed
	rst  $28                                         ; $7340: $ef
	xor  $ff                                         ; $7341: $ee $ff
	db   $ed                                         ; $7343: $ed
	db   $db                                         ; $7344: $db
	cp   d                                           ; $7345: $ba
	sbc  b                                           ; $7346: $98
	ld   [hl], l                                     ; $7347: $75
	ld   b, e                                        ; $7348: $43
	ld   de, $1111                                   ; $7349: $11 $11 $11
	ld   de, $2411                                   ; $734c: $11 $11 $24
	ld   h, a                                        ; $734f: $67
	adc  d                                           ; $7350: $8a
	xor  e                                           ; $7351: $ab
	call z, $efed                                    ; $7352: $cc $ed $ef
	rst  $38                                         ; $7355: $ff
	rst  $38                                         ; $7356: $ff
	rst  $38                                         ; $7357: $ff
	rst  $38                                         ; $7358: $ff
	cp   $dc                                         ; $7359: $fe $dc
	xor  d                                           ; $735b: $aa
	add  [hl]                                        ; $735c: $86
	ld   b, d                                        ; $735d: $42
	ld   de, $1111                                   ; $735e: $11 $11 $11
	ld   de, $1211                                   ; $7361: $11 $11 $12
	ld   b, l                                        ; $7364: $45
	ld   a, b                                        ; $7365: $78
	sbc  d                                           ; $7366: $9a
	cp   h                                           ; $7367: $bc
	sbc  $ff                                         ; $7368: $de $ff
	rst  $38                                         ; $736a: $ff
	rst  $38                                         ; $736b: $ff
	rst  $38                                         ; $736c: $ff
	rst  $38                                         ; $736d: $ff
	rst  $38                                         ; $736e: $ff
	cp   $dc                                         ; $736f: $fe $dc
	sbc  b                                           ; $7371: $98
	ld   h, e                                        ; $7372: $63
	ld   de, $1111                                   ; $7373: $11 $11 $11
	ld   de, $1111                                   ; $7376: $11 $11 $11
	ld   [de], a                                     ; $7379: $12
	ld   b, [hl]                                     ; $737a: $46
	ld   a, b                                        ; $737b: $78
	xor  d                                           ; $737c: $aa
	call $ffdf                                       ; $737d: $cd $df $ff
	rst  $38                                         ; $7380: $ff
	rst  $38                                         ; $7381: $ff
	rst  $38                                         ; $7382: $ff
	rst  $38                                         ; $7383: $ff
	rst  $38                                         ; $7384: $ff
	xor  $ca                                         ; $7385: $ee $ca
	add  [hl]                                        ; $7387: $86
	ld   b, d                                        ; $7388: $42
	ld   de, $1111                                   ; $7389: $11 $11 $11
	ld   de, $1111                                   ; $738c: $11 $11 $11
	inc  de                                          ; $738f: $13
	ld   d, a                                        ; $7390: $57
	sbc  d                                           ; $7391: $9a
	call $ffef                                       ; $7392: $cd $ef $ff
	rst  $38                                         ; $7395: $ff
	rst  $38                                         ; $7396: $ff
	rst  $38                                         ; $7397: $ff
	rst  $38                                         ; $7398: $ff
	rst  $38                                         ; $7399: $ff
	rst  $38                                         ; $739a: $ff
	db   $db                                         ; $739b: $db
	cp   c                                           ; $739c: $b9
	ld   [hl], l                                     ; $739d: $75
	ld   sp, $1111                                   ; $739e: $31 $11 $11
	ld   de, $1111                                   ; $73a1: $11 $11 $11
	ld   de, $7a25                                   ; $73a4: $11 $25 $7a
	call $ffef                                       ; $73a7: $cd $ef $ff
	rst  $38                                         ; $73aa: $ff
	rst  $38                                         ; $73ab: $ff
	rst  $38                                         ; $73ac: $ff
	rst  $38                                         ; $73ad: $ff
	rst  $38                                         ; $73ae: $ff
	cp   $de                                         ; $73af: $fe $de
	db   $db                                         ; $73b1: $db
	xor  b                                           ; $73b2: $a8
	ld   h, h                                        ; $73b3: $64
	ld   hl, $1111                                   ; $73b4: $21 $11 $11
	ld   de, $1111                                   ; $73b7: $11 $11 $11
	ld   de, $ad47                                   ; $73ba: $11 $47 $ad
	rst  $38                                         ; $73bd: $ff
	rst  $38                                         ; $73be: $ff
	rst  $38                                         ; $73bf: $ff
	rst  $38                                         ; $73c0: $ff
	rst  $38                                         ; $73c1: $ff
	rst  $28                                         ; $73c2: $ef
	rst  $28                                         ; $73c3: $ef
	cp   $dd                                         ; $73c4: $fe $dd
	res  5, c                                        ; $73c6: $cb $a9
	ld   h, e                                        ; $73c8: $63
	ld   hl, $1111                                   ; $73c9: $21 $11 $11
	ld   de, $1111                                   ; $73cc: $11 $11 $11
	ld   de, $df69                                   ; $73cf: $11 $69 $df
	rst  $38                                         ; $73d2: $ff
	rst  $38                                         ; $73d3: $ff
	rst  $38                                         ; $73d4: $ff
	rst  $38                                         ; $73d5: $ff
	db   $ed                                         ; $73d6: $ed
	db   $dd                                         ; $73d7: $dd
	db   $dd                                         ; $73d8: $dd
	call $b9ed                                       ; $73d9: $cd $ed $b9
	add  [hl]                                        ; $73dc: $86
	ld   sp, $1111                                   ; $73dd: $31 $11 $11
	ld   de, $1111                                   ; $73e0: $11 $11 $11
	ld   de, $ff4b                                   ; $73e3: $11 $4b $ff
	rst  $38                                         ; $73e6: $ff
	rst  $38                                         ; $73e7: $ff
	rst  $38                                         ; $73e8: $ff
	rst  $38                                         ; $73e9: $ff
	db   $fc                                         ; $73ea: $fc
	add  a                                           ; $73eb: $87
	ld   a, c                                        ; $73ec: $79
	cp   d                                           ; $73ed: $ba
	call $c8cd                                       ; $73ee: $cd $cd $c8
	ld   b, c                                        ; $73f1: $41
	ld   de, $1111                                   ; $73f2: $11 $11 $11
	ld   de, $8b15                                   ; $73f5: $11 $15 $8b
	rst  $38                                         ; $73f8: $ff
	rst  $38                                         ; $73f9: $ff
	rst  $38                                         ; $73fa: $ff
	rst  $38                                         ; $73fb: $ff
	rst  $38                                         ; $73fc: $ff
	jp   hl                                          ; $73fd: $e9


	ld   de, $5713                                   ; $73fe: $11 $13 $57
	sbc  $ef                                         ; $7401: $de $ef
	rst  $38                                         ; $7403: $ff
	jp   $1111                                       ; $7404: $c3 $11 $11


	ld   de, $1411                                   ; $7407: $11 $11 $14
	xor  a                                           ; $740a: $af
	rst  $38                                         ; $740b: $ff
	rst  $38                                         ; $740c: $ff
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	ei                                               ; $740f: $fb
	ld   [hl], h                                     ; $7410: $74
	ld   de, $4911                                   ; $7411: $11 $11 $49
	rst  $28                                         ; $7414: $ef
	rst  $38                                         ; $7415: $ff
	rst  $38                                         ; $7416: $ff
	call nz, $1111                                   ; $7417: $c4 $11 $11
	ld   de, $3b11                                   ; $741a: $11 $11 $3b
	rst  $38                                         ; $741d: $ff
	rst  $38                                         ; $741e: $ff
	rst  $38                                         ; $741f: $ff
	rst  $38                                         ; $7420: $ff
	db   $fc                                         ; $7421: $fc
	ld   [hl], e                                     ; $7422: $73
	ld   de, $1511                                   ; $7423: $11 $11 $15
	rst  JumpTable                                         ; $7426: $df
	rst  $38                                         ; $7427: $ff
	rst  $38                                         ; $7428: $ff
	rst  $38                                         ; $7429: $ff
	ld   d, c                                        ; $742a: $51
	ld   de, $1111                                   ; $742b: $11 $11 $11
	inc  d                                           ; $742e: $14
	rst  $38                                         ; $742f: $ff
	rst  $38                                         ; $7430: $ff
	rst  $38                                         ; $7431: $ff
	rst  $38                                         ; $7432: $ff
	db   $fc                                         ; $7433: $fc
	ld   b, c                                        ; $7434: $41
	ld   de, $1111                                   ; $7435: $11 $11 $11
	xor  a                                           ; $7438: $af
	rst  $38                                         ; $7439: $ff
	rst  $38                                         ; $743a: $ff
	rst  $38                                         ; $743b: $ff
	di                                               ; $743c: $f3
	ld   de, $1111                                   ; $743d: $11 $11 $11
	ld   de, $ff1f                                   ; $7440: $11 $1f $ff
	rst  $38                                         ; $7443: $ff
	rst  $38                                         ; $7444: $ff
	rst  $38                                         ; $7445: $ff
	ld   h, c                                        ; $7446: $61
	ld   de, $1111                                   ; $7447: $11 $11 $11
	ld   c, a                                        ; $744a: $4f
	rst  $38                                         ; $744b: $ff
	rst  $38                                         ; $744c: $ff
	rst  $38                                         ; $744d: $ff
	db   $fc                                         ; $744e: $fc
	ld   hl, $1111                                   ; $744f: $21 $11 $11
	ld   de, $ef11                                   ; $7452: $11 $11 $ef
	rst  $38                                         ; $7455: $ff
	rst  $38                                         ; $7456: $ff
	rst  $38                                         ; $7457: $ff
	rst  $30                                         ; $7458: $f7
	ld   de, $1111                                   ; $7459: $11 $11 $11
	adc  [hl]                                        ; $745c: $8e
	rst  $38                                         ; $745d: $ff
	rst  $38                                         ; $745e: $ff
	rst  $38                                         ; $745f: $ff
	ei                                               ; $7460: $fb

jr_0e0_7461:
	ld   d, c                                        ; $7461: $51
	ld   de, $1111                                   ; $7462: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7465: $11 $11 $ff
	rst  $38                                         ; $7468: $ff
	rst  $38                                         ; $7469: $ff
	rst  $38                                         ; $746a: $ff
	db   $e4                                         ; $746b: $e4
	ld   de, $9b11                                   ; $746c: $11 $11 $9b
	rst  $38                                         ; $746f: $ff
	rst  $38                                         ; $7470: $ff
	rst  $38                                         ; $7471: $ff
	db   $fd                                         ; $7472: $fd
	ld   h, h                                        ; $7473: $64
	ld   de, $1111                                   ; $7474: $11 $11 $11
	ld   de, $1111                                   ; $7477: $11 $11 $11
	rra                                              ; $747a: $1f
	rst  $38                                         ; $747b: $ff
	rst  $38                                         ; $747c: $ff
	rst  $38                                         ; $747d: $ff
	rst  $38                                         ; $747e: $ff
	ld   b, c                                        ; $747f: $41
	jr   jr_0e0_7461                                 ; $7480: $18 $df

	cp   $ff                                         ; $7482: $fe $ff
	rst  $38                                         ; $7484: $ff
	db   $fc                                         ; $7485: $fc
	ld   h, h                                        ; $7486: $64
	ld   h, l                                        ; $7487: $65
	ld   d, c                                        ; $7488: $51
	ld   de, $1111                                   ; $7489: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $748c: $11 $11 $ff
	rst  $38                                         ; $748f: $ff
	rst  $38                                         ; $7490: $ff
	rst  $38                                         ; $7491: $ff
	db   $f4                                         ; $7492: $f4
	ld   de, $ec9d                                   ; $7493: $11 $9d $ec
	xor  e                                           ; $7496: $ab
	rst  $38                                         ; $7497: $ff
	rst  $38                                         ; $7498: $ff
	sbc  b                                           ; $7499: $98
	sbc  d                                           ; $749a: $9a
	and  [hl]                                        ; $749b: $a6
	ld   de, $1111                                   ; $749c: $11 $11 $11
	ld   de, $1811                                   ; $749f: $11 $11 $18
	rst  $38                                         ; $74a2: $ff
	rst  $38                                         ; $74a3: $ff
	rst  $38                                         ; $74a4: $ff
	rst  $38                                         ; $74a5: $ff
	sub  c                                           ; $74a6: $91
	jr   @-$32                                       ; $74a7: $18 $cc

	reti                                             ; $74a9: $d9


	rst  $28                                         ; $74aa: $ef
	rst  $38                                         ; $74ab: $ff
	ld   a, [$bc88]                                  ; $74ac: $fa $88 $bc
	and  a                                           ; $74af: $a7
	ld   de, $1111                                   ; $74b0: $11 $11 $11
	ld   de, $1a11                                   ; $74b3: $11 $11 $1a
	rst  $38                                         ; $74b6: $ff
	rst  $38                                         ; $74b7: $ff
	rst  $38                                         ; $74b8: $ff
	ld   a, [$1d11]                                  ; $74b9: $fa $11 $1d
	rst  $38                                         ; $74bc: $ff
	rst  $38                                         ; $74bd: $ff
	rst  $38                                         ; $74be: $ff
	rst  $38                                         ; $74bf: $ff
	or   $57                                         ; $74c0: $f6 $57
	sbc  h                                           ; $74c2: $9c
	or   [hl]                                        ; $74c3: $b6
	inc  sp                                          ; $74c4: $33
	ld   b, h                                        ; $74c5: $44
	ld   de, $1111                                   ; $74c6: $11 $11 $11
	ld   de, $ffef                                   ; $74c9: $11 $ef $ff
	rst  $38                                         ; $74cc: $ff
	ei                                               ; $74cd: $fb
	ld   hl, $ff16                                   ; $74ce: $21 $16 $ff
	rst  $38                                         ; $74d1: $ff
	rst  $38                                         ; $74d2: $ff
	rst  $38                                         ; $74d3: $ff
	ld   hl, sp-$67                                  ; $74d4: $f8 $99
	adc  d                                           ; $74d6: $8a
	xor  b                                           ; $74d7: $a8
	ld   h, l                                        ; $74d8: $65
	ld   h, h                                        ; $74d9: $64
	ld   de, $1111                                   ; $74da: $11 $11 $11
	ld   de, $ff1f                                   ; $74dd: $11 $1f $ff
	rst  $38                                         ; $74e0: $ff
	rst  $38                                         ; $74e1: $ff
	ld   [hl], c                                     ; $74e2: $71
	ld   de, $ffaf                                   ; $74e3: $11 $af $ff
	rst  $38                                         ; $74e6: $ff
	rst  $38                                         ; $74e7: $ff
	rst  $38                                         ; $74e8: $ff
	ld   [hl], a                                     ; $74e9: $77
	ld   a, b                                        ; $74ea: $78
	xor  d                                           ; $74eb: $aa
	sub  a                                           ; $74ec: $97
	ld   [hl], a                                     ; $74ed: $77
	ld   d, c                                        ; $74ee: $51
	ld   de, $1111                                   ; $74ef: $11 $11 $11
	ld   de, $ffcf                                   ; $74f2: $11 $cf $ff
	rst  $38                                         ; $74f5: $ff
	add  sp, $21                                     ; $74f6: $e8 $21
	dec  d                                           ; $74f8: $15
	rst  $38                                         ; $74f9: $ff
	rst  $38                                         ; $74fa: $ff
	rst  $38                                         ; $74fb: $ff
	rst  $38                                         ; $74fc: $ff
	ld   hl, sp+$7a                                  ; $74fd: $f8 $7a
	ld   a, b                                        ; $74ff: $78
	sbc  d                                           ; $7500: $9a
	xor  b                                           ; $7501: $a8
	add  [hl]                                        ; $7502: $86
	ld   de, $1111                                   ; $7503: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $7506: $11 $12 $ff
	rst  $38                                         ; $7509: $ff
	rst  $38                                         ; $750a: $ff
	or   h                                           ; $750b: $b4
	ld   de, $ff1c                                   ; $750c: $11 $1c $ff
	rst  $38                                         ; $750f: $ff
	rst  $38                                         ; $7510: $ff
	rst  $38                                         ; $7511: $ff
	rst  $30                                         ; $7512: $f7
	ld   a, e                                        ; $7513: $7b
	halt                                             ; $7514: $76
	sbc  d                                           ; $7515: $9a
	sbc  d                                           ; $7516: $9a
	sub  l                                           ; $7517: $95
	ld   de, $1111                                   ; $7518: $11 $11 $11
	ld   de, $df11                                   ; $751b: $11 $11 $df
	rst  $38                                         ; $751e: $ff
	rst  $38                                         ; $751f: $ff
	or   l                                           ; $7520: $b5
	ld   de, $ff19                                   ; $7521: $11 $19 $ff
	rst  $38                                         ; $7524: $ff
	rst  $38                                         ; $7525: $ff
	rst  $38                                         ; $7526: $ff
	ld   sp, hl                                      ; $7527: $f9
	ld   a, e                                        ; $7528: $7b
	sub  l                                           ; $7529: $95
	adc  h                                           ; $752a: $8c
	res  2, h                                        ; $752b: $cb $94
	ld   de, $1111                                   ; $752d: $11 $11 $11
	ld   de, $2f11                                   ; $7530: $11 $11 $2f
	rst  $38                                         ; $7533: $ff
	rst  $38                                         ; $7534: $ff
	ld   a, [$1561]                                  ; $7535: $fa $61 $15
	rst  $38                                         ; $7538: $ff
	rst  $38                                         ; $7539: $ff
	rst  $38                                         ; $753a: $ff
	rst  $38                                         ; $753b: $ff
	db   $fd                                         ; $753c: $fd
	sbc  d                                           ; $753d: $9a
	jp   c, $ba59                                    ; $753e: $da $59 $ba

	rst  ToBoot                                         ; $7541: $c7
	ld   de, $1111                                   ; $7542: $11 $11 $11
	ld   de, $1411                                   ; $7545: $11 $11 $14
	rst  $38                                         ; $7548: $ff
	rst  $38                                         ; $7549: $ff
	rst  $38                                         ; $754a: $ff
	ld   hl, sp+$31                                  ; $754b: $f8 $31
	ld   a, a                                        ; $754d: $7f
	rst  $38                                         ; $754e: $ff
	rst  $38                                         ; $754f: $ff
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	db   $eb                                         ; $7552: $eb
	call c, Call_0e0_6974                            ; $7553: $dc $74 $69
	cp   h                                           ; $7556: $bc
	ld   h, e                                        ; $7557: $63
	ld   hl, $1111                                   ; $7558: $21 $11 $11
	ld   de, $1b11                                   ; $755b: $11 $11 $1b
	rst  $38                                         ; $755e: $ff
	rst  $38                                         ; $755f: $ff
	rst  $38                                         ; $7560: $ff
	ld   a, [$cf11]                                  ; $7561: $fa $11 $cf
	rst  $38                                         ; $7564: $ff
	rst  $38                                         ; $7565: $ff
	rst  $38                                         ; $7566: $ff
	rst  $38                                         ; $7567: $ff
	db   $dd                                         ; $7568: $dd
	ei                                               ; $7569: $fb
	ld   sp, $d96a                                   ; $756a: $31 $6a $d9
	ld   b, e                                        ; $756d: $43
	ld   [hl-], a                                    ; $756e: $32
	ld   de, $1111                                   ; $756f: $11 $11 $11
	ld   de, $ff15                                   ; $7572: $11 $15 $ff
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	ld   a, [$9f65]                                  ; $7577: $fa $65 $9f
	rst  $38                                         ; $757a: $ff
	rst  $38                                         ; $757b: $ff
	rst  $38                                         ; $757c: $ff
	rst  $38                                         ; $757d: $ff
	db   $ec                                         ; $757e: $ec
	db   $ed                                         ; $757f: $ed
	ld   h, c                                        ; $7580: $61
	ld   c, c                                        ; $7581: $49
	jp   z, $3264                                    ; $7582: $ca $64 $32

	ld   de, $1111                                   ; $7585: $11 $11 $11
	ld   de, $af11                                   ; $7588: $11 $11 $af
	rst  $38                                         ; $758b: $ff
	rst  $38                                         ; $758c: $ff
	rst  $38                                         ; $758d: $ff
	or   a                                           ; $758e: $b7
	xor  a                                           ; $758f: $af
	rst  $38                                         ; $7590: $ff
	rst  JumpTable                                         ; $7591: $df
	rst  $38                                         ; $7592: $ff
	rst  $38                                         ; $7593: $ff
	rst  $28                                         ; $7594: $ef
	rst  $38                                         ; $7595: $ff
	push de                                          ; $7596: $d5
	dec  [hl]                                        ; $7597: $35
	adc  c                                           ; $7598: $89
	ld   h, d                                        ; $7599: $62
	inc  [hl]                                        ; $759a: $34
	ld   hl, $1111                                   ; $759b: $21 $11 $11
	ld   de, $1811                                   ; $759e: $11 $11 $18
	cp   $df                                         ; $75a1: $fe $df
	rst  $38                                         ; $75a3: $ff
	db   $fd                                         ; $75a4: $fd
	xor  h                                           ; $75a5: $ac
	rst  $38                                         ; $75a6: $ff
	jp   c, $ffdf                                    ; $75a7: $da $df $ff

	db   $fc                                         ; $75aa: $fc
	rst  $38                                         ; $75ab: $ff
	db   $fd                                         ; $75ac: $fd
	add  h                                           ; $75ad: $84
	ld   d, a                                        ; $75ae: $57
	sub  [hl]                                        ; $75af: $96
	inc  hl                                          ; $75b0: $23
	ld   d, l                                        ; $75b1: $55
	ld   sp, $1111                                   ; $75b2: $31 $11 $11
	ld   de, $1711                                   ; $75b5: $11 $11 $17
	cp   c                                           ; $75b8: $b9
	cp   a                                           ; $75b9: $bf
	rst  $38                                         ; $75ba: $ff
	db   $fd                                         ; $75bb: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75bc: $cf
	rst  $38                                         ; $75bd: $ff
	set  1, [hl]                                     ; $75be: $cb $ce
	rst  $38                                         ; $75c0: $ff
	set  5, a                                        ; $75c1: $cb $ef
	db   $fd                                         ; $75c3: $fd
	xor  b                                           ; $75c4: $a8
	sbc  c                                           ; $75c5: $99
	sub  [hl]                                        ; $75c6: $96
	ld   d, l                                        ; $75c7: $55
	ld   d, [hl]                                     ; $75c8: $56
	ld   b, c                                        ; $75c9: $41
	ld   de, $1111                                   ; $75ca: $11 $11 $11
	ld   de, $3212                                   ; $75cd: $11 $12 $32
	ld   c, b                                        ; $75d0: $48
	cp   a                                           ; $75d1: $bf
	db   $fd                                         ; $75d2: $fd
	cp   h                                           ; $75d3: $bc
	rst  $38                                         ; $75d4: $ff
	rst  $38                                         ; $75d5: $ff
	db   $ec                                         ; $75d6: $ec
	rst  JumpTable                                         ; $75d7: $df
	call c, $cecc                                    ; $75d8: $dc $cc $ce
	db   $fd                                         ; $75db: $fd
	cp   d                                           ; $75dc: $ba
	cp   d                                           ; $75dd: $ba
	cp   d                                           ; $75de: $ba
	sbc  c                                           ; $75df: $99
	adc  c                                           ; $75e0: $89
	halt                                             ; $75e1: $76
	ld   d, e                                        ; $75e2: $53
	ld   de, $1111                                   ; $75e3: $11 $11 $11
	ld   de, $1211                                   ; $75e6: $11 $11 $12
	ld   e, b                                        ; $75e9: $58
	xor  b                                           ; $75ea: $a8
	xor  h                                           ; $75eb: $ac
	rst  $28                                         ; $75ec: $ef
	rst  $38                                         ; $75ed: $ff
	xor  $ff                                         ; $75ee: $ee $ff
	xor  $ed                                         ; $75f0: $ee $ed
	rst  $28                                         ; $75f2: $ef
	cp   $de                                         ; $75f3: $fe $de
	db   $dd                                         ; $75f5: $dd
	db   $db                                         ; $75f6: $db
	cp   e                                           ; $75f7: $bb
	cp   d                                           ; $75f8: $ba
	add  [hl]                                        ; $75f9: $86
	ld   b, d                                        ; $75fa: $42
	ld   de, $1111                                   ; $75fb: $11 $11 $11
	ld   de, $1111                                   ; $75fe: $11 $11 $11
	ld   h, $88                                      ; $7601: $26 $88
	sbc  h                                           ; $7603: $9c
	rst  $38                                         ; $7604: $ff
	rst  $38                                         ; $7605: $ff
	rst  $38                                         ; $7606: $ff
	rst  $38                                         ; $7607: $ff
	cp   $dd                                         ; $7608: $fe $dd
	rst  $38                                         ; $760a: $ff
	rst  $38                                         ; $760b: $ff
	cp   $ee                                         ; $760c: $fe $ee
	db   $eb                                         ; $760e: $eb

Jump_0e0_760f:
	xor  d                                           ; $760f: $aa
	cp   c                                           ; $7610: $b9
	sub  [hl]                                        ; $7611: $96
	ld   b, d                                        ; $7612: $42
	ld   de, $1111                                   ; $7613: $11 $11 $11
	ld   de, $1111                                   ; $7616: $11 $11 $11
	ld   h, $98                                      ; $7619: $26 $98
	adc  d                                           ; $761b: $8a
	rst  $28                                         ; $761c: $ef
	rst  $38                                         ; $761d: $ff
	rst  $38                                         ; $761e: $ff
	rst  $38                                         ; $761f: $ff
	rst  $38                                         ; $7620: $ff
	cp   $ef                                         ; $7621: $fe $ef
	rst  $38                                         ; $7623: $ff
	db   $ed                                         ; $7624: $ed
	call c, $cbdd                                    ; $7625: $dc $dd $cb
	cp   e                                           ; $7628: $bb
	xor  b                                           ; $7629: $a8
	ld   h, d                                        ; $762a: $62
	ld   de, $1111                                   ; $762b: $11 $11 $11
	ld   de, $1111                                   ; $762e: $11 $11 $11
	ld   [de], a                                     ; $7631: $12
	ld   l, d                                        ; $7632: $6a
	xor  c                                           ; $7633: $a9
	xor  [hl]                                        ; $7634: $ae
	rst  $38                                         ; $7635: $ff
	rst  $38                                         ; $7636: $ff
	rst  $38                                         ; $7637: $ff
	rst  $38                                         ; $7638: $ff
	cp   $cc                                         ; $7639: $fe $cc
	rst  $28                                         ; $763b: $ef
	rst  $38                                         ; $763c: $ff
	xor  $de                                         ; $763d: $ee $de
	db   $eb                                         ; $763f: $eb
	adc  c                                           ; $7640: $89
	sbc  b                                           ; $7641: $98
	halt                                             ; $7642: $76
	ld   sp, $1111                                   ; $7643: $31 $11 $11
	ld   de, $1111                                   ; $7646: $11 $11 $11
	ld   de, $bf36                                   ; $7649: $11 $36 $bf
	ld   [$ffbe], a                                  ; $764c: $ea $be $ff
	db   $fd                                         ; $764f: $fd
	xor  h                                           ; $7650: $ac
	rst  $38                                         ; $7651: $ff
	xor  $dd                                         ; $7652: $ee $dd
	rst  $38                                         ; $7654: $ff
	rst  $38                                         ; $7655: $ff
	db   $ed                                         ; $7656: $ed
	adc  $ea                                         ; $7657: $ce $ea
	adc  b                                           ; $7659: $88
	adc  c                                           ; $765a: $89
	halt                                             ; $765b: $76
	ld   sp, $1101                                   ; $765c: $31 $01 $11
	ld   de, $1111                                   ; $765f: $11 $11 $11
	ld   [hl-], a                                    ; $7662: $32
	ld   c, c                                        ; $7663: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7664: $cf
	db   $fd                                         ; $7665: $fd
	xor  d                                           ; $7666: $aa

Call_0e0_7667:
	rst  $28                                         ; $7667: $ef
	db   $fc                                         ; $7668: $fc
	sbc  d                                           ; $7669: $9a
	rst  JumpTable                                         ; $766a: $df
	rst  $38                                         ; $766b: $ff
	xor  $ff                                         ; $766c: $ee $ff
	rst  $38                                         ; $766e: $ff
	db   $dd                                         ; $766f: $dd
	sbc  $dc                                         ; $7670: $de $dc
	sbc  b                                           ; $7672: $98
	sbc  d                                           ; $7673: $9a
	add  [hl]                                        ; $7674: $86
	ld   b, c                                        ; $7675: $41
	ld   de, $1111                                   ; $7676: $11 $11 $11
	ld   de, $5811                                   ; $7679: $11 $11 $58
	ld   l, d                                        ; $767c: $6a
	adc  $ff                                         ; $767d: $ce $ff
	rst  $20                                         ; $767f: $e7
	adc  h                                           ; $7680: $8c
	call $8fd9                                       ; $7681: $cd $d9 $8f
	rst  $38                                         ; $7684: $ff
	rst  $38                                         ; $7685: $ff
	rst  $38                                         ; $7686: $ff
	rst  $38                                         ; $7687: $ff
	ret                                              ; $7688: $c9


	sbc  l                                           ; $7689: $9d
	call c, $9ba8                                    ; $768a: $dc $a8 $9b
	cp   c                                           ; $768d: $b9
	ld   h, h                                        ; $768e: $64
	ld   [hl-], a                                    ; $768f: $32
	ld   de, $1111                                   ; $7690: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7693: $11 $11 $ff
	sbc  $ff                                         ; $7696: $de $ff

Jump_0e0_7698:
	rst  $38                                         ; $7698: $ff

Jump_0e0_7699:
	ld   d, c                                        ; $7699: $51
	add  hl, hl                                      ; $769a: $29
	cp   e                                           ; $769b: $bb
	call z, $ffff                                    ; $769c: $cc $ff $ff
	db   $fc                                         ; $769f: $fc
	call z, $3974                                    ; $76a0: $cc $74 $39
	call c, $dffe                                    ; $76a3: $dc $fe $df
	db   $fc                                         ; $76a6: $fc
	sub  l                                           ; $76a7: $95
	ld   [hl-], a                                    ; $76a8: $32
	ld   de, $1111                                   ; $76a9: $11 $11 $11
	ld   de, $1c11                                   ; $76ac: $11 $11 $1c
	rst  $38                                         ; $76af: $ff
	cp   [hl]                                        ; $76b0: $be
	rst  $28                                         ; $76b1: $ef
	ld   hl, sp+$11                                  ; $76b2: $f8 $11
	ld   a, a                                        ; $76b4: $7f
	rst  $38                                         ; $76b5: $ff
	rst  $38                                         ; $76b6: $ff
	rst  $38                                         ; $76b7: $ff

Call_0e0_76b8:
	rst  $38                                         ; $76b8: $ff
	add  [hl]                                        ; $76b9: $86

Call_0e0_76ba:
	sub  [hl]                                        ; $76ba: $96
	ld   b, e                                        ; $76bb: $43
	ld   a, [hl+]                                    ; $76bc: $2a
	rst  $38                                         ; $76bd: $ff
	rst  $38                                         ; $76be: $ff
	rst  $28                                         ; $76bf: $ef
	jp   hl                                          ; $76c0: $e9


	ld   d, c                                        ; $76c1: $51
	ld   de, $1111                                   ; $76c2: $11 $11 $11
	ld   de, $1111                                   ; $76c5: $11 $11 $11
	dec  d                                           ; $76c8: $15
	rst  $38                                         ; $76c9: $ff
	xor  b                                           ; $76ca: $a8
	cp   [hl]                                        ; $76cb: $be
	db   $fc                                         ; $76cc: $fc
	ld   de, $ff2f                                   ; $76cd: $11 $2f $ff
	rst  $38                                         ; $76d0: $ff
	rst  $38                                         ; $76d1: $ff
	rst  $38                                         ; $76d2: $ff
	add  d                                           ; $76d3: $82
	add  hl, sp                                      ; $76d4: $39
	add  h                                           ; $76d5: $84
	scf                                              ; $76d6: $37
	rst  $38                                         ; $76d7: $ff
	rst  $38                                         ; $76d8: $ff
	db   $eb                                         ; $76d9: $eb
	db   $dd                                         ; $76da: $dd
	ld   h, c                                        ; $76db: $61
	ld   de, $1134                                   ; $76dc: $11 $34 $11
	ld   de, $1111                                   ; $76df: $11 $11 $11
	ld   de, $faff                                   ; $76e2: $11 $ff $fa
	call Call_0e0_51ff                               ; $76e5: $cd $ff $51
	rla                                              ; $76e8: $17
	rst  $38                                         ; $76e9: $ff
	rst  $38                                         ; $76ea: $ff
	rst  $38                                         ; $76eb: $ff
	rst  $38                                         ; $76ec: $ff
	jp   $8514                                       ; $76ed: $c3 $14 $85


	inc  [hl]                                        ; $76f0: $34
	cp   a                                           ; $76f1: $bf
	rst  $38                                         ; $76f2: $ff
	db   $fc                                         ; $76f3: $fc
	xor  h                                           ; $76f4: $ac
	sub  c                                           ; $76f5: $91
	ld   de, $4147                                   ; $76f6: $11 $47 $41
	ld   de, $1111                                   ; $76f9: $11 $11 $11
	ld   de, $ff1b                                   ; $76fc: $11 $1b $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76ff: $cf
	rst  $38                                         ; $7700: $ff
	or   $11                                         ; $7701: $f6 $11
	ccf                                              ; $7703: $3f
	rst  $38                                         ; $7704: $ff
	rst  $38                                         ; $7705: $ff
	rst  $38                                         ; $7706: $ff
	db   $fc                                         ; $7707: $fc
	ld   hl, $7316                                   ; $7708: $21 $16 $73
	ld   c, d                                        ; $770b: $4a
	rst  $38                                         ; $770c: $ff
	rst  $38                                         ; $770d: $ff
	jp   z, $31aa                                    ; $770e: $ca $aa $31

	inc  d                                           ; $7711: $14
	ld   [hl], a                                     ; $7712: $77
	ld   sp, $1111                                   ; $7713: $31 $11 $11
	ld   de, $1f11                                   ; $7716: $11 $11 $1f
	rst  $38                                         ; $7719: $ff
	rst  $28                                         ; $771a: $ef
	rst  $28                                         ; $771b: $ef
	or   c                                           ; $771c: $b1
	ld   de, $ff7f                                   ; $771d: $11 $7f $ff
	rst  $38                                         ; $7720: $ff
	rst  $38                                         ; $7721: $ff
	rst  $30                                         ; $7722: $f7
	ld   de, $8717                                   ; $7723: $11 $17 $87
	ld   a, l                                        ; $7726: $7d
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	ret                                              ; $7729: $c9


	sbc  d                                           ; $772a: $9a
	ld   d, c                                        ; $772b: $51
	dec  d                                           ; $772c: $15
	adc  c                                           ; $772d: $89
	ld   h, d                                        ; $772e: $62
	ld   de, $1111                                   ; $772f: $11 $11 $11
	ld   de, $ff18                                   ; $7732: $11 $18 $ff
	rst  $38                                         ; $7735: $ff
	jp   z, $11d4                                    ; $7736: $ca $d4 $11

	inc  e                                           ; $7739: $1c
	rst  $38                                         ; $773a: $ff
	rst  $38                                         ; $773b: $ff
	rst  $38                                         ; $773c: $ff
	cp   $31                                         ; $773d: $fe $31
	ld   de, $ab8b                                   ; $773f: $11 $8b $ab
	rst  $28                                         ; $7742: $ef
	rst  $38                                         ; $7743: $ff
	jp   hl                                          ; $7744: $e9


	ld   [hl], a                                     ; $7745: $77
	add  [hl]                                        ; $7746: $86
	ld   [hl-], a                                    ; $7747: $32
	ld   a, e                                        ; $7748: $7b
	or   a                                           ; $7749: $b7
	ld   hl, $1111                                   ; $774a: $21 $11 $11
	ld   de, $5f11                                   ; $774d: $11 $11 $5f
	rst  $38                                         ; $7750: $ff
	cp   $9b                                         ; $7751: $fe $9b
	ld   sp, $8f11                                   ; $7753: $31 $11 $8f
	rst  $38                                         ; $7756: $ff
	rst  $38                                         ; $7757: $ff
	rst  $38                                         ; $7758: $ff
	db   $d3                                         ; $7759: $d3
	ld   de, $bd17                                   ; $775a: $11 $17 $bd
	sbc  $ff                                         ; $775d: $de $ff
	rst  $38                                         ; $775f: $ff
	add  $58                                         ; $7760: $c6 $58
	add  l                                           ; $7762: $85
	ld   h, a                                        ; $7763: $67
	adc  d                                           ; $7764: $8a
	add  l                                           ; $7765: $85
	ld   hl, $1111                                   ; $7766: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $7769: $11 $11 $ff
	rst  $38                                         ; $776c: $ff
	rst  $10                                         ; $776d: $d7
	and  a                                           ; $776e: $a7
	ld   de, rAUD1LEN                                   ; $776f: $11 $11 $ff
	rst  $38                                         ; $7772: $ff
	rst  $38                                         ; $7773: $ff
	rst  $38                                         ; $7774: $ff
	ld   [hl], d                                     ; $7775: $72
	ld   de, $be47                                   ; $7776: $11 $47 $be
	rst  $28                                         ; $7779: $ef
	rst  $38                                         ; $777a: $ff
	rst  $38                                         ; $777b: $ff
	or   [hl]                                        ; $777c: $b6
	ld   h, a                                        ; $777d: $67
	ld   h, a                                        ; $777e: $67
	adc  c                                           ; $777f: $89
	xor  d                                           ; $7780: $aa
	add  l                                           ; $7781: $85
	ld   hl, $1111                                   ; $7782: $21 $11 $11
	ld   de, $8f11                                   ; $7785: $11 $11 $8f
	rst  $38                                         ; $7788: $ff
	reti                                             ; $7789: $d9


	sbc  d                                           ; $778a: $9a
	ld   de, $df11                                   ; $778b: $11 $11 $df
	rst  $38                                         ; $778e: $ff
	rst  $38                                         ; $778f: $ff
	rst  $38                                         ; $7790: $ff
	jp   Jump_0e0_4711                               ; $7791: $c3 $11 $47


	sbc  d                                           ; $7794: $9a
	rst  JumpTable                                         ; $7795: $df
	rst  $38                                         ; $7796: $ff
	rst  $38                                         ; $7797: $ff
	ld   [$7589], a                                  ; $7798: $ea $89 $75
	ld   [hl], a                                     ; $779b: $77
	sbc  c                                           ; $779c: $99
	halt                                             ; $779d: $76
	ld   b, d                                        ; $779e: $42
	ld   de, $1111                                   ; $779f: $11 $11 $11
	ld   de, $ff19                                   ; $77a2: $11 $19 $ff
	cp   $ab                                         ; $77a5: $fe $ab
	and  e                                           ; $77a7: $a3
	ld   de, $ff1a                                   ; $77a8: $11 $1a $ff
	rst  $38                                         ; $77ab: $ff
	rst  $38                                         ; $77ac: $ff
	rst  $38                                         ; $77ad: $ff
	ld   [hl], c                                     ; $77ae: $71
	dec  d                                           ; $77af: $15
	ld   h, a                                        ; $77b0: $67
	adc  c                                           ; $77b1: $89
	rst  $28                                         ; $77b2: $ef
	rst  $38                                         ; $77b3: $ff
	cp   $ca                                         ; $77b4: $fe $ca
	sub  [hl]                                        ; $77b6: $96
	ld   b, e                                        ; $77b7: $43

Call_0e0_77b8:
	ld   d, a                                        ; $77b8: $57

Call_0e0_77b9:
	sbc  c                                           ; $77b9: $99
	ld   [hl], l                                     ; $77ba: $75
	ld   b, e                                        ; $77bb: $43
	ld   de, $1111                                   ; $77bc: $11 $11 $11
	ld   de, $ff1f                                   ; $77bf: $11 $1f $ff
	db   $fd                                         ; $77c2: $fd
	rst  $28                                         ; $77c3: $ef
	ld   [hl], c                                     ; $77c4: $71
	ld   de, $ef4b                                   ; $77c5: $11 $4b $ef
	rst  $38                                         ; $77c8: $ff
	rst  $38                                         ; $77c9: $ff
	rst  $38                                         ; $77ca: $ff
	add  e                                           ; $77cb: $83
	ld   [hl], $55                                   ; $77cc: $36 $55
	ld   h, a                                        ; $77ce: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77cf: $cf
	rst  $38                                         ; $77d0: $ff
	cp   $ec                                         ; $77d1: $fe $ec
	add  [hl]                                        ; $77d3: $86
	ld   [hl-], a                                    ; $77d4: $32
	ld   d, a                                        ; $77d5: $57
	ld   a, b                                        ; $77d6: $78
	halt                                             ; $77d7: $76
	ld   d, e                                        ; $77d8: $53

Call_0e0_77d9:
	ld   de, $1111                                   ; $77d9: $11 $11 $11
	ld   de, $ff1a                                   ; $77dc: $11 $1a $ff
	rst  $38                                         ; $77df: $ff
	rst  JumpTable                                         ; $77e0: $df
	call nc, $0811                                   ; $77e1: $d4 $11 $08
	sbc  l                                           ; $77e4: $9d
	rst  JumpTable                                         ; $77e5: $df
	rst  $38                                         ; $77e6: $ff
	rst  $38                                         ; $77e7: $ff
	rst  $20                                         ; $77e8: $e7
	ld   h, a                                        ; $77e9: $67
	ld   h, l                                        ; $77ea: $65
	ld   b, e                                        ; $77eb: $43
	ld   a, h                                        ; $77ec: $7c
	rst  $38                                         ; $77ed: $ff
	rst  $38                                         ; $77ee: $ff
	rst  $38                                         ; $77ef: $ff
	jp   c, Jump_0e0_4463                            ; $77f0: $da $63 $44

	ld   d, [hl]                                     ; $77f3: $56
	ld   d, h                                        ; $77f4: $54
	ld   d, h                                        ; $77f5: $54
	ld   [hl-], a                                    ; $77f6: $32
	ld   de, $1111                                   ; $77f7: $11 $11 $11
	ld   de, $de7e                                   ; $77fa: $11 $7e $de
	xor  $ff                                         ; $77fd: $ee $ff
	or   [hl]                                        ; $77ff: $b6
	dec  b                                           ; $7800: $05
	ld   [hl], a                                     ; $7801: $77
	xor  c                                           ; $7802: $a9
	xor  a                                           ; $7803: $af
	rst  $38                                         ; $7804: $ff
	rst  $38                                         ; $7805: $ff
	call z, $95ba                                    ; $7806: $cc $ba $95
	ld   b, l                                        ; $7809: $45
	ld   a, d                                        ; $780a: $7a
	call $efef                                       ; $780b: $cd $ef $ef
	db   $eb                                         ; $780e: $eb
	add  a                                           ; $780f: $87
	ld   h, [hl]                                     ; $7810: $66
	ld   d, h                                        ; $7811: $54
	ld   [hl-], a                                    ; $7812: $32
	ld   [de], a                                     ; $7813: $12
	ld   de, $1111                                   ; $7814: $11 $11 $11
	ld   de, $8b11                                   ; $7817: $11 $11 $8b
	sbc  e                                           ; $781a: $9b
	cp   [hl]                                        ; $781b: $be
	rst  $38                                         ; $781c: $ff
	rst  ToBoot                                         ; $781d: $c7
	ld   l, c                                        ; $781e: $69
	adc  d                                           ; $781f: $8a
	cp   b                                           ; $7820: $b8
	sbc  h                                           ; $7821: $9c
	rst  $28                                         ; $7822: $ef
	cp   $ec                                         ; $7823: $fe $ec
	db   $dd                                         ; $7825: $dd
	cp   c                                           ; $7826: $b9
	add  a                                           ; $7827: $87
	adc  c                                           ; $7828: $89
	xor  d                                           ; $7829: $aa
	xor  c                                           ; $782a: $a9
	xor  e                                           ; $782b: $ab
	xor  d                                           ; $782c: $aa
	add  a                                           ; $782d: $87
	adc  b                                           ; $782e: $88
	halt                                             ; $782f: $76
	ld   d, h                                        ; $7830: $54
	ld   b, e                                        ; $7831: $43
	ld   [hl-], a                                    ; $7832: $32
	ld   [de], a                                     ; $7833: $12
	ld   de, $1111                                   ; $7834: $11 $11 $11
	ld   b, l                                        ; $7837: $45
	ld   d, l                                        ; $7838: $55
	ld   h, a                                        ; $7839: $67
	sbc  c                                           ; $783a: $99
	sbc  c                                           ; $783b: $99

Jump_0e0_783c:
	ld   a, d                                        ; $783c: $7a
	xor  e                                           ; $783d: $ab
	jp   z, $bc9a                                    ; $783e: $ca $9a $bc

	cp   e                                           ; $7841: $bb
	cp   e                                           ; $7842: $bb
	call $ccdd                                       ; $7843: $cd $dd $cc
	set  1, e                                        ; $7846: $cb $cb
	cp   d                                           ; $7848: $ba
	xor  e                                           ; $7849: $ab
	xor  d                                           ; $784a: $aa
	xor  d                                           ; $784b: $aa
	xor  d                                           ; $784c: $aa
	xor  d                                           ; $784d: $aa
	sbc  b                                           ; $784e: $98
	halt                                             ; $784f: $76
	ld   h, l                                        ; $7850: $65
	ld   b, e                                        ; $7851: $43
	ld   hl, $1111                                   ; $7852: $21 $11 $11
	ld   de, $1111                                   ; $7855: $11 $11 $11
	ld   de, $5734                                   ; $7858: $11 $34 $57
	sbc  e                                           ; $785b: $9b
	rst  JumpTable                                         ; $785c: $df
	rst  $38                                         ; $785d: $ff
	rst  $38                                         ; $785e: $ff
	rst  $38                                         ; $785f: $ff
	rst  $38                                         ; $7860: $ff
	rst  $38                                         ; $7861: $ff
	rst  $38                                         ; $7862: $ff
	cp   $dc                                         ; $7863: $fe $dc
	cp   h                                           ; $7865: $bc
	cp   e                                           ; $7866: $bb
	xor  c                                           ; $7867: $a9
	adc  b                                           ; $7868: $88
	sbc  b                                           ; $7869: $98
	halt                                             ; $786a: $76
	ld   h, [hl]                                     ; $786b: $66
	ld   h, [hl]                                     ; $786c: $66
	ld   d, l                                        ; $786d: $55
	ld   b, h                                        ; $786e: $44
	inc  sp                                          ; $786f: $33
	ld   hl, $1111                                   ; $7870: $21 $11 $11
	ld   de, $1111                                   ; $7873: $11 $11 $11
	inc  de                                          ; $7876: $13
	ld   b, l                                        ; $7877: $45
	ld   l, b                                        ; $7878: $68
	sbc  h                                           ; $7879: $9c
	rst  JumpTable                                         ; $787a: $df
	rst  $38                                         ; $787b: $ff
	rst  $38                                         ; $787c: $ff
	rst  $38                                         ; $787d: $ff
	rst  $38                                         ; $787e: $ff
	rst  $38                                         ; $787f: $ff
	rst  $38                                         ; $7880: $ff
	db   $ed                                         ; $7881: $ed
	call z, $b9bb                                    ; $7882: $cc $bb $b9
	adc  b                                           ; $7885: $88
	adc  b                                           ; $7886: $88
	ld   [hl], a                                     ; $7887: $77
	ld   h, [hl]                                     ; $7888: $66
	ld   h, [hl]                                     ; $7889: $66
	ld   [hl], a                                     ; $788a: $77
	ld   h, [hl]                                     ; $788b: $66
	ld   d, l                                        ; $788c: $55
	ld   b, e                                        ; $788d: $43
	ld   [hl+], a                                    ; $788e: $22
	ld   de, $1101                                   ; $788f: $11 $01 $11
	ld   de, $1211                                   ; $7892: $11 $11 $12
	inc  [hl]                                        ; $7895: $34
	ld   d, a                                        ; $7896: $57
	sbc  e                                           ; $7897: $9b
	sbc  $ff                                         ; $7898: $de $ff
	rst  $38                                         ; $789a: $ff
	rst  $38                                         ; $789b: $ff
	rst  $38                                         ; $789c: $ff
	rst  $38                                         ; $789d: $ff
	rst  $38                                         ; $789e: $ff
	rst  $38                                         ; $789f: $ff
	call c, $aacc                                    ; $78a0: $dc $cc $aa
	sbc  c                                           ; $78a3: $99
	adc  b                                           ; $78a4: $88
	ld   [hl], a                                     ; $78a5: $77
	halt                                             ; $78a6: $76
	ld   h, [hl]                                     ; $78a7: $66
	ld   [hl], a                                     ; $78a8: $77

Jump_0e0_78a9:
	ld   h, [hl]                                     ; $78a9: $66
	ld   d, l                                        ; $78aa: $55
	ld   b, h                                        ; $78ab: $44
	ld   b, e                                        ; $78ac: $43
	ld   [hl-], a                                    ; $78ad: $32
	ld   [hl+], a                                    ; $78ae: $22
	ld   de, $1111                                   ; $78af: $11 $11 $11
	ld   de, $4512                                   ; $78b2: $11 $12 $45
	ld   a, b                                        ; $78b5: $78
	xor  e                                           ; $78b6: $ab
	adc  $ff                                         ; $78b7: $ce $ff
	rst  $38                                         ; $78b9: $ff
	rst  $38                                         ; $78ba: $ff
	rst  $38                                         ; $78bb: $ff
	rst  $38                                         ; $78bc: $ff
	rst  $38                                         ; $78bd: $ff
	cp   $dc                                         ; $78be: $fe $dc
	cp   d                                           ; $78c0: $ba
	xor  c                                           ; $78c1: $a9
	sbc  c                                           ; $78c2: $99
	adc  b                                           ; $78c3: $88
	add  a                                           ; $78c4: $87
	halt                                             ; $78c5: $76
	ld   h, [hl]                                     ; $78c6: $66
	ld   h, [hl]                                     ; $78c7: $66
	ld   h, [hl]                                     ; $78c8: $66
	ld   d, l                                        ; $78c9: $55
	ld   d, l                                        ; $78ca: $55
	ld   b, h                                        ; $78cb: $44
	inc  sp                                          ; $78cc: $33
	inc  sp                                          ; $78cd: $33
	ld   hl, $1111                                   ; $78ce: $21 $11 $11
	ld   de, $3512                                   ; $78d1: $11 $12 $35
	ld   h, a                                        ; $78d4: $67
	sbc  d                                           ; $78d5: $9a
	cp   l                                           ; $78d6: $bd
	rst  $28                                         ; $78d7: $ef
	rst  $38                                         ; $78d8: $ff
	rst  $38                                         ; $78d9: $ff
	rst  $38                                         ; $78da: $ff
	rst  $38                                         ; $78db: $ff
	rst  $38                                         ; $78dc: $ff
	cp   $ec                                         ; $78dd: $fe $ec
	res  7, d                                        ; $78df: $cb $ba
	xor  c                                           ; $78e1: $a9
	adc  b                                           ; $78e2: $88
	sbc  b                                           ; $78e3: $98
	ld   [hl], a                                     ; $78e4: $77
	ld   h, [hl]                                     ; $78e5: $66
	ld   h, [hl]                                     ; $78e6: $66
	ld   h, [hl]                                     ; $78e7: $66
	ld   h, l                                        ; $78e8: $65
	ld   d, l                                        ; $78e9: $55
	ld   d, l                                        ; $78ea: $55
	ld   b, h                                        ; $78eb: $44
	ld   b, e                                        ; $78ec: $43
	ld   [hl-], a                                    ; $78ed: $32
	ld   de, $1111                                   ; $78ee: $11 $11 $11
	ld   de, $5624                                   ; $78f1: $11 $24 $56
	ld   a, b                                        ; $78f4: $78
	sbc  e                                           ; $78f5: $9b
	adc  $ff                                         ; $78f6: $ce $ff
	rst  $38                                         ; $78f8: $ff
	rst  $38                                         ; $78f9: $ff
	rst  $38                                         ; $78fa: $ff
	rst  $38                                         ; $78fb: $ff
	rst  $38                                         ; $78fc: $ff
	xor  $db                                         ; $78fd: $ee $db
	cp   e                                           ; $78ff: $bb
	cp   d                                           ; $7900: $ba
	xor  c                                           ; $7901: $a9
	sbc  b                                           ; $7902: $98
	add  a                                           ; $7903: $87
	ld   h, [hl]                                     ; $7904: $66
	ld   h, [hl]                                     ; $7905: $66
	ld   h, [hl]                                     ; $7906: $66
	ld   h, [hl]                                     ; $7907: $66
	ld   h, [hl]                                     ; $7908: $66
	ld   h, [hl]                                     ; $7909: $66
	ld   d, l                                        ; $790a: $55
	ld   d, l                                        ; $790b: $55
	ld   b, h                                        ; $790c: $44
	ld   b, e                                        ; $790d: $43
	ld   [hl+], a                                    ; $790e: $22
	ld   de, $1111                                   ; $790f: $11 $11 $11
	ld   [de], a                                     ; $7912: $12
	inc  [hl]                                        ; $7913: $34
	ld   h, [hl]                                     ; $7914: $66
	ld   a, c                                        ; $7915: $79
	cp   h                                           ; $7916: $bc
	sbc  $ef                                         ; $7917: $de $ef
	rst  $38                                         ; $7919: $ff
	rst  $38                                         ; $791a: $ff
	cp   $ee                                         ; $791b: $fe $ee
	cp   $ed                                         ; $791d: $fe $ed
	cp   e                                           ; $791f: $bb
	xor  d                                           ; $7920: $aa
	xor  c                                           ; $7921: $a9
	adc  c                                           ; $7922: $89
	adc  b                                           ; $7923: $88
	ld   [hl], a                                     ; $7924: $77
	halt                                             ; $7925: $76
	ld   h, a                                        ; $7926: $67
	ld   [hl], a                                     ; $7927: $77
	ld   [hl], a                                     ; $7928: $77
	halt                                             ; $7929: $76
	ld   h, [hl]                                     ; $792a: $66
	ld   h, [hl]                                     ; $792b: $66
	ld   h, l                                        ; $792c: $65
	ld   d, l                                        ; $792d: $55
	ld   b, h                                        ; $792e: $44
	ld   [hl-], a                                    ; $792f: $32
	ld   hl, $1111                                   ; $7930: $21 $11 $11
	ld   [de], a                                     ; $7933: $12
	inc  [hl]                                        ; $7934: $34
	ld   d, [hl]                                     ; $7935: $56
	ld   a, b                                        ; $7936: $78
	sbc  d                                           ; $7937: $9a
	call z, $eeed                                    ; $7938: $cc $ed $ee
	rst  $38                                         ; $793b: $ff
	rst  $28                                         ; $793c: $ef
	cp   $ee                                         ; $793d: $fe $ee
	db   $ec                                         ; $793f: $ec
	call z, $a9ba                                    ; $7940: $cc $ba $a9
	sbc  b                                           ; $7943: $98
	sbc  b                                           ; $7944: $98
	add  a                                           ; $7945: $87
	ld   [hl], a                                     ; $7946: $77
	ld   [hl], a                                     ; $7947: $77
	ld   [hl], a                                     ; $7948: $77
	ld   [hl], a                                     ; $7949: $77
	ld   [hl], a                                     ; $794a: $77
	halt                                             ; $794b: $76
	ld   h, [hl]                                     ; $794c: $66
	ld   h, [hl]                                     ; $794d: $66
	ld   h, l                                        ; $794e: $65
	ld   d, h                                        ; $794f: $54
	ld   b, e                                        ; $7950: $43
	ld   [hl-], a                                    ; $7951: $32
	ld   hl, $1111                                   ; $7952: $21 $11 $11
	ld   [de], a                                     ; $7955: $12
	inc  [hl]                                        ; $7956: $34
	ld   d, [hl]                                     ; $7957: $56
	ld   a, c                                        ; $7958: $79
	sbc  e                                           ; $7959: $9b
	call z, $efdd                                    ; $795a: $cc $dd $ef
	rst  $38                                         ; $795d: $ff
	xor  $ed                                         ; $795e: $ee $ed
	sbc  $dd                                         ; $7960: $de $dd
	cp   e                                           ; $7962: $bb
	cp   e                                           ; $7963: $bb
	xor  c                                           ; $7964: $a9
	sbc  c                                           ; $7965: $99
	sbc  c                                           ; $7966: $99
	add  a                                           ; $7967: $87
	ld   [hl], a                                     ; $7968: $77
	ld   [hl], a                                     ; $7969: $77
	ld   [hl], a                                     ; $796a: $77
	ld   [hl], a                                     ; $796b: $77
	ld   [hl], a                                     ; $796c: $77
	ld   [hl], a                                     ; $796d: $77
	halt                                             ; $796e: $76
	ld   h, [hl]                                     ; $796f: $66
	ld   h, [hl]                                     ; $7970: $66
	ld   d, l                                        ; $7971: $55
	ld   b, h                                        ; $7972: $44
	inc  sp                                          ; $7973: $33
	ld   [hl+], a                                    ; $7974: $22
	ld   de, $1212                                   ; $7975: $11 $12 $12
	inc  h                                           ; $7978: $24
	ld   b, l                                        ; $7979: $45
	ld   h, a                                        ; $797a: $67
	adc  c                                           ; $797b: $89
	cp   h                                           ; $797c: $bc
	sbc  $ee                                         ; $797d: $de $ee
	xor  $ff                                         ; $797f: $ee $ff
	db   $ed                                         ; $7981: $ed
	xor  $dd                                         ; $7982: $ee $dd
	call c, $cbbc                                    ; $7984: $dc $bc $cb
	xor  d                                           ; $7987: $aa
	adc  c                                           ; $7988: $89
	add  a                                           ; $7989: $87
	halt                                             ; $798a: $76
	ld   h, l                                        ; $798b: $65
	ld   h, [hl]                                     ; $798c: $66
	ld   [hl], a                                     ; $798d: $77
	ld   [hl], a                                     ; $798e: $77
	ld   a, b                                        ; $798f: $78
	halt                                             ; $7990: $76
	ld   d, l                                        ; $7991: $55
	ld   d, h                                        ; $7992: $54
	inc  sp                                          ; $7993: $33
	ld   hl, $1111                                   ; $7994: $21 $11 $11
	ld   de, $9a14                                   ; $7997: $11 $14 $9a
	sbc  c                                           ; $799a: $99
	cp   h                                           ; $799b: $bc
	call $8ab9                                       ; $799c: $cd $b9 $8a
	xor  c                                           ; $799f: $a9
	sub  a                                           ; $79a0: $97
	ld   a, c                                        ; $79a1: $79
	xor  h                                           ; $79a2: $ac
	call z, $edbd                                    ; $79a3: $cc $bd $ed
	call c, $9aa9                                    ; $79a6: $dc $a9 $9a
	xor  c                                           ; $79a9: $a9
	ld   [hl], a                                     ; $79aa: $77
	adc  c                                           ; $79ab: $89
	xor  d                                           ; $79ac: $aa
	sbc  c                                           ; $79ad: $99
	cp   e                                           ; $79ae: $bb
	cp   e                                           ; $79af: $bb
	cp   d                                           ; $79b0: $ba
	sbc  c                                           ; $79b1: $99
	sbc  b                                           ; $79b2: $98
	halt                                             ; $79b3: $76
	ld   h, l                                        ; $79b4: $65
	ld   d, h                                        ; $79b5: $54
	ld   b, h                                        ; $79b6: $44
	ld   [hl-], a                                    ; $79b7: $32
	ld   de, $1111                                   ; $79b8: $11 $11 $11
	ld   de, $8937                                   ; $79bb: $11 $37 $89
	sbc  e                                           ; $79be: $9b
	cp   l                                           ; $79bf: $bd
	db   $ed                                         ; $79c0: $ed
	cp   c                                           ; $79c1: $b9
	xor  c                                           ; $79c2: $a9
	xor  d                                           ; $79c3: $aa
	adc  b                                           ; $79c4: $88
	adc  c                                           ; $79c5: $89
	cp   h                                           ; $79c6: $bc
	db   $dd                                         ; $79c7: $dd
	db   $dd                                         ; $79c8: $dd
	rst  JumpTable                                         ; $79c9: $df
	db   $ec                                         ; $79ca: $ec
	sbc  b                                           ; $79cb: $98
	adc  b                                           ; $79cc: $88
	adc  b                                           ; $79cd: $88
	ld   [hl], a                                     ; $79ce: $77
	adc  b                                           ; $79cf: $88
	sbc  e                                           ; $79d0: $9b
	xor  d                                           ; $79d1: $aa
	xor  e                                           ; $79d2: $ab
	cp   e                                           ; $79d3: $bb
	xor  d                                           ; $79d4: $aa
	sbc  b                                           ; $79d5: $98
	adc  b                                           ; $79d6: $88
	ld   [hl], a                                     ; $79d7: $77
	ld   h, l                                        ; $79d8: $65
	ld   d, l                                        ; $79d9: $55
	ld   b, h                                        ; $79da: $44
	ld   [hl-], a                                    ; $79db: $32
	ld   de, $1111                                   ; $79dc: $11 $11 $11
	ld   de, $9937                                   ; $79df: $11 $37 $99
	sbc  e                                           ; $79e2: $9b
	cp   h                                           ; $79e3: $bc
	call Call_0e0_77b8                               ; $79e4: $cd $b8 $77
	adc  b                                           ; $79e7: $88
	adc  b                                           ; $79e8: $88
	sbc  c                                           ; $79e9: $99
	cp   l                                           ; $79ea: $bd
	xor  $ef                                         ; $79eb: $ee $ef
	db   $ec                                         ; $79ed: $ec
	call c, Call_0e0_77b9                            ; $79ee: $dc $b9 $77
	ld   h, a                                        ; $79f1: $67
	adc  b                                           ; $79f2: $88
	adc  c                                           ; $79f3: $89
	xor  d                                           ; $79f4: $aa
	cp   e                                           ; $79f5: $bb
	cp   d                                           ; $79f6: $ba
	xor  c                                           ; $79f7: $a9
	xor  c                                           ; $79f8: $a9
	adc  b                                           ; $79f9: $88
	add  a                                           ; $79fa: $87
	ld   [hl], a                                     ; $79fb: $77
	ld   [hl], a                                     ; $79fc: $77
	halt                                             ; $79fd: $76
	ld   h, l                                        ; $79fe: $65
	ld   b, e                                        ; $79ff: $43
	ld   hl, $1111                                   ; $7a00: $21 $11 $11
	ld   de, $6912                                   ; $7a03: $11 $12 $69
	cp   e                                           ; $7a06: $bb
	call $cbcc                                       ; $7a07: $cd $cc $cb
	add  a                                           ; $7a0a: $87
	ld   h, [hl]                                     ; $7a0b: $66
	ld   h, a                                        ; $7a0c: $67
	adc  b                                           ; $7a0d: $88
	xor  e                                           ; $7a0e: $ab
	sbc  $ff                                         ; $7a0f: $de $ff
	xor  $dc                                         ; $7a11: $ee $dc
	xor  d                                           ; $7a13: $aa
	sbc  b                                           ; $7a14: $98
	halt                                             ; $7a15: $76
	ld   h, a                                        ; $7a16: $67
	adc  d                                           ; $7a17: $8a
	xor  d                                           ; $7a18: $aa
	cp   e                                           ; $7a19: $bb
	cp   e                                           ; $7a1a: $bb
	xor  d                                           ; $7a1b: $aa
	sbc  c                                           ; $7a1c: $99
	ld   [hl], a                                     ; $7a1d: $77
	ld   [hl], a                                     ; $7a1e: $77
	adc  b                                           ; $7a1f: $88
	add  a                                           ; $7a20: $87
	adc  b                                           ; $7a21: $88
	add  a                                           ; $7a22: $87
	ld   h, l                                        ; $7a23: $65
	ld   [hl-], a                                    ; $7a24: $32
	ld   hl, $1111                                   ; $7a25: $21 $11 $11
	ld   de, $6a12                                   ; $7a28: $11 $12 $6a
	call $cacc                                       ; $7a2b: $cd $cc $ca
	xor  d                                           ; $7a2e: $aa
	sub  a                                           ; $7a2f: $97
	ld   h, l                                        ; $7a30: $65
	ld   h, a                                        ; $7a31: $67
	adc  d                                           ; $7a32: $8a
	cp   e                                           ; $7a33: $bb
	adc  $ee                                         ; $7a34: $ce $ee
	db   $ed                                         ; $7a36: $ed
	db   $db                                         ; $7a37: $db
	xor  c                                           ; $7a38: $a9
	add  a                                           ; $7a39: $87
	ld   [hl], a                                     ; $7a3a: $77
	ld   [hl], a                                     ; $7a3b: $77
	adc  c                                           ; $7a3c: $89
	sbc  d                                           ; $7a3d: $9a
	call z, $99bb                                    ; $7a3e: $cc $bb $99
	adc  c                                           ; $7a41: $89
	add  a                                           ; $7a42: $87
	ld   [hl], a                                     ; $7a43: $77
	adc  b                                           ; $7a44: $88
	sbc  d                                           ; $7a45: $9a
	xor  c                                           ; $7a46: $a9
	sbc  b                                           ; $7a47: $98
	ld   h, l                                        ; $7a48: $65
	ld   b, e                                        ; $7a49: $43
	ld   [hl-], a                                    ; $7a4a: $32
	ld   de, $1111                                   ; $7a4b: $11 $11 $11
	ld   de, $8a14                                   ; $7a4e: $11 $14 $8a
	call z, $aacb                                    ; $7a51: $cc $cb $aa
	sbc  b                                           ; $7a54: $98
	add  a                                           ; $7a55: $87
	halt                                             ; $7a56: $76
	ld   [hl], a                                     ; $7a57: $77
	sbc  d                                           ; $7a58: $9a
	call $eede                                       ; $7a59: $cd $de $ee
	db   $dd                                         ; $7a5c: $dd
	res  5, b                                        ; $7a5d: $cb $a8
	ld   [hl], a                                     ; $7a5f: $77
	ld   [hl], a                                     ; $7a60: $77
	adc  b                                           ; $7a61: $88
	adc  c                                           ; $7a62: $89
	sbc  d                                           ; $7a63: $9a
	cp   d                                           ; $7a64: $ba
	cp   d                                           ; $7a65: $ba
	xor  c                                           ; $7a66: $a9
	add  a                                           ; $7a67: $87
	ld   a, b                                        ; $7a68: $78
	adc  c                                           ; $7a69: $89
	sbc  b                                           ; $7a6a: $98
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	sbc  b                                           ; $7a6d: $98
	ld   h, l                                        ; $7a6e: $65
	ld   b, e                                        ; $7a6f: $43
	ld   [hl+], a                                    ; $7a70: $22
	ld   de, $1111                                   ; $7a71: $11 $11 $11
	ld   de, $7a24                                   ; $7a74: $11 $24 $7a
	call z, $aacb                                    ; $7a77: $cc $cb $aa
	sbc  b                                           ; $7a7a: $98
	adc  b                                           ; $7a7b: $88
	add  a                                           ; $7a7c: $87
	ld   [hl], a                                     ; $7a7d: $77
	adc  c                                           ; $7a7e: $89
	cp   h                                           ; $7a7f: $bc
	db   $ed                                         ; $7a80: $ed
	db   $dd                                         ; $7a81: $dd
	db   $db                                         ; $7a82: $db
	res  7, d                                        ; $7a83: $cb $ba
	adc  b                                           ; $7a85: $88
	ld   [hl], a                                     ; $7a86: $77
	ld   a, c                                        ; $7a87: $79
	sbc  d                                           ; $7a88: $9a
	xor  d                                           ; $7a89: $aa
	xor  c                                           ; $7a8a: $a9
	xor  c                                           ; $7a8b: $a9
	xor  c                                           ; $7a8c: $a9
	adc  b                                           ; $7a8d: $88
	ld   [hl], a                                     ; $7a8e: $77
	ld   a, b                                        ; $7a8f: $78
	sbc  b                                           ; $7a90: $98
	sbc  c                                           ; $7a91: $99
	adc  c                                           ; $7a92: $89
	adc  b                                           ; $7a93: $88
	halt                                             ; $7a94: $76
	ld   d, h                                        ; $7a95: $54
	ld   [hl-], a                                    ; $7a96: $32
	ld   hl, $1111                                   ; $7a97: $21 $11 $11
	ld   de, $6913                                   ; $7a9a: $11 $13 $69
	call z, $aacc                                    ; $7a9d: $cc $cc $aa
	sbc  c                                           ; $7aa0: $99
	adc  b                                           ; $7aa1: $88
	add  a                                           ; $7aa2: $87
	ld   [hl], a                                     ; $7aa3: $77
	ld   a, b                                        ; $7aa4: $78
	sbc  h                                           ; $7aa5: $9c
	xor  $ee                                         ; $7aa6: $ee $ee
	db   $db                                         ; $7aa8: $db
	cp   e                                           ; $7aa9: $bb
	xor  e                                           ; $7aaa: $ab
	xor  c                                           ; $7aab: $a9
	sub  a                                           ; $7aac: $97
	ld   [hl], a                                     ; $7aad: $77
	adc  b                                           ; $7aae: $88
	xor  e                                           ; $7aaf: $ab
	cp   e                                           ; $7ab0: $bb
	xor  c                                           ; $7ab1: $a9
	sbc  c                                           ; $7ab2: $99
	adc  c                                           ; $7ab3: $89
	adc  b                                           ; $7ab4: $88
	ld   [hl], a                                     ; $7ab5: $77
	ld   a, b                                        ; $7ab6: $78
	sbc  c                                           ; $7ab7: $99
	sbc  c                                           ; $7ab8: $99
	adc  b                                           ; $7ab9: $88
	halt                                             ; $7aba: $76
	ld   d, h                                        ; $7abb: $54
	ld   b, e                                        ; $7abc: $43
	ld   [hl-], a                                    ; $7abd: $32
	ld   de, $1111                                   ; $7abe: $11 $11 $11
	inc  de                                          ; $7ac1: $13
	ld   e, c                                        ; $7ac2: $59
	xor  h                                           ; $7ac3: $ac
	call c, $98bb                                    ; $7ac4: $dc $bb $98
	ld   [hl], a                                     ; $7ac7: $77
	add  a                                           ; $7ac8: $87
	ld   [hl], a                                     ; $7ac9: $77
	ld   [hl], a                                     ; $7aca: $77
	sbc  e                                           ; $7acb: $9b
	call $ecfe                                       ; $7acc: $cd $fe $ec
	cp   d                                           ; $7acf: $ba
	xor  d                                           ; $7ad0: $aa
	sbc  d                                           ; $7ad1: $9a
	sbc  c                                           ; $7ad2: $99
	add  a                                           ; $7ad3: $87
	ld   a, b                                        ; $7ad4: $78
	sbc  d                                           ; $7ad5: $9a
	cp   e                                           ; $7ad6: $bb
	xor  d                                           ; $7ad7: $aa
	xor  c                                           ; $7ad8: $a9
	sbc  b                                           ; $7ad9: $98
	adc  b                                           ; $7ada: $88
	adc  b                                           ; $7adb: $88
	adc  b                                           ; $7adc: $88
	adc  c                                           ; $7add: $89
	adc  c                                           ; $7ade: $89
	sbc  b                                           ; $7adf: $98
	add  a                                           ; $7ae0: $87
	ld   h, l                                        ; $7ae1: $65
	ld   b, e                                        ; $7ae2: $43
	ld   [hl+], a                                    ; $7ae3: $22
	ld   hl, $1111                                   ; $7ae4: $21 $11 $11
	ld   de, $ac47                                   ; $7ae7: $11 $47 $ac
	xor  $da                                         ; $7aea: $ee $da
	sbc  b                                           ; $7aec: $98
	ld   [hl], a                                     ; $7aed: $77
	adc  b                                           ; $7aee: $88
	adc  b                                           ; $7aef: $88
	ld   [hl], a                                     ; $7af0: $77
	adc  d                                           ; $7af1: $8a
	cp   l                                           ; $7af2: $bd
	rst  $28                                         ; $7af3: $ef
	cp   $cb                                         ; $7af4: $fe $cb
	sbc  c                                           ; $7af6: $99
	xor  d                                           ; $7af7: $aa
	sbc  c                                           ; $7af8: $99
	adc  b                                           ; $7af9: $88
	ld   [hl], a                                     ; $7afa: $77
	adc  c                                           ; $7afb: $89
	sbc  d                                           ; $7afc: $9a
	cp   e                                           ; $7afd: $bb
	xor  c                                           ; $7afe: $a9
	add  a                                           ; $7aff: $87
	ld   [hl], a                                     ; $7b00: $77
	adc  b                                           ; $7b01: $88
	adc  b                                           ; $7b02: $88
	adc  b                                           ; $7b03: $88
	adc  c                                           ; $7b04: $89
	adc  b                                           ; $7b05: $88
	sbc  b                                           ; $7b06: $98
	halt                                             ; $7b07: $76
	ld   b, e                                        ; $7b08: $43
	ld   [hl-], a                                    ; $7b09: $32
	ld   hl, $1111                                   ; $7b0a: $21 $11 $11
	ld   de, $9b36                                   ; $7b0d: $11 $36 $9b
	xor  $eb                                         ; $7b10: $ee $eb
	xor  b                                           ; $7b12: $a8
	ld   [hl], a                                     ; $7b13: $77
	ld   a, b                                        ; $7b14: $78
	adc  c                                           ; $7b15: $89
	add  a                                           ; $7b16: $87
	adc  b                                           ; $7b17: $88
	xor  e                                           ; $7b18: $ab
	rst  $28                                         ; $7b19: $ef
	cp   $ec                                         ; $7b1a: $fe $ec
	xor  c                                           ; $7b1c: $a9
	adc  c                                           ; $7b1d: $89
	adc  c                                           ; $7b1e: $89
	sbc  b                                           ; $7b1f: $98
	sbc  b                                           ; $7b20: $98
	adc  c                                           ; $7b21: $89
	sbc  d                                           ; $7b22: $9a
	xor  d                                           ; $7b23: $aa
	xor  d                                           ; $7b24: $aa
	sbc  b                                           ; $7b25: $98
	ld   [hl], a                                     ; $7b26: $77
	ld   [hl], a                                     ; $7b27: $77
	ld   a, b                                        ; $7b28: $78
	sbc  c                                           ; $7b29: $99
	adc  b                                           ; $7b2a: $88
	sbc  c                                           ; $7b2b: $99
	adc  b                                           ; $7b2c: $88
	halt                                             ; $7b2d: $76
	ld   d, h                                        ; $7b2e: $54
	ld   [hl-], a                                    ; $7b2f: $32
	ld   de, $1111                                   ; $7b30: $11 $11 $11
	ld   de, $9b36                                   ; $7b33: $11 $36 $9b
	rst  JumpTable                                         ; $7b36: $df
	call c, Call_0e0_76b8                            ; $7b37: $dc $b8 $76
	ld   h, a                                        ; $7b3a: $67
	ld   a, c                                        ; $7b3b: $79
	sbc  b                                           ; $7b3c: $98
	sbc  b                                           ; $7b3d: $98
	sbc  e                                           ; $7b3e: $9b
	rst  JumpTable                                         ; $7b3f: $df
	rst  $38                                         ; $7b40: $ff
	db   $ed                                         ; $7b41: $ed
	cp   b                                           ; $7b42: $b8
	add  a                                           ; $7b43: $87
	adc  b                                           ; $7b44: $88
	sbc  c                                           ; $7b45: $99
	sbc  b                                           ; $7b46: $98
	sbc  c                                           ; $7b47: $99
	adc  d                                           ; $7b48: $8a
	xor  e                                           ; $7b49: $ab
	xor  e                                           ; $7b4a: $ab
	xor  c                                           ; $7b4b: $a9
	ld   [hl], a                                     ; $7b4c: $77
	ld   h, a                                        ; $7b4d: $67
	ld   a, b                                        ; $7b4e: $78
	sbc  c                                           ; $7b4f: $99
	sbc  c                                           ; $7b50: $99
	adc  c                                           ; $7b51: $89
	add  a                                           ; $7b52: $87
	halt                                             ; $7b53: $76
	ld   d, h                                        ; $7b54: $54
	ld   [hl-], a                                    ; $7b55: $32
	ld   de, $1111                                   ; $7b56: $11 $11 $11
	ld   [de], a                                     ; $7b59: $12
	ld   b, a                                        ; $7b5a: $47
	xor  h                                           ; $7b5b: $ac
	rst  JumpTable                                         ; $7b5c: $df
	call c, Call_0e0_66a8                            ; $7b5d: $dc $a8 $66
	ld   h, [hl]                                     ; $7b60: $66
	ld   a, c                                        ; $7b61: $79
	adc  c                                           ; $7b62: $89
	sbc  c                                           ; $7b63: $99
	xor  e                                           ; $7b64: $ab
	adc  $ee                                         ; $7b65: $ce $ee
	db   $ec                                         ; $7b67: $ec
	xor  b                                           ; $7b68: $a8
	ld   [hl], a                                     ; $7b69: $77
	ld   a, b                                        ; $7b6a: $78
	adc  c                                           ; $7b6b: $89
	sbc  d                                           ; $7b6c: $9a
	xor  c                                           ; $7b6d: $a9
	xor  c                                           ; $7b6e: $a9
	xor  d                                           ; $7b6f: $aa
	cp   d                                           ; $7b70: $ba
	sbc  c                                           ; $7b71: $99
	ld   [hl], a                                     ; $7b72: $77
	ld   h, a                                        ; $7b73: $67
	ld   a, b                                        ; $7b74: $78
	adc  b                                           ; $7b75: $88
	sbc  c                                           ; $7b76: $99
	adc  c                                           ; $7b77: $89
	add  a                                           ; $7b78: $87
	ld   h, [hl]                                     ; $7b79: $66
	ld   d, e                                        ; $7b7a: $53
	ld   hl, $1111                                   ; $7b7b: $21 $11 $11
	ld   de, $8b25                                   ; $7b7e: $11 $25 $8b
	rst  $28                                         ; $7b81: $ef
	xor  $c9                                         ; $7b82: $ee $c9
	ld   [hl], l                                     ; $7b84: $75
	ld   d, l                                        ; $7b85: $55
	ld   h, a                                        ; $7b86: $67
	adc  b                                           ; $7b87: $88
	adc  c                                           ; $7b88: $89
	xor  e                                           ; $7b89: $ab
	cp   [hl]                                        ; $7b8a: $be
	xor  $ee                                         ; $7b8b: $ee $ee
	cp   c                                           ; $7b8d: $b9
	halt                                             ; $7b8e: $76
	ld   h, a                                        ; $7b8f: $67
	adc  c                                           ; $7b90: $89
	xor  d                                           ; $7b91: $aa
	xor  c                                           ; $7b92: $a9
	sbc  c                                           ; $7b93: $99
	sbc  d                                           ; $7b94: $9a
	xor  d                                           ; $7b95: $aa
	xor  d                                           ; $7b96: $aa
	add  a                                           ; $7b97: $87
	ld   h, [hl]                                     ; $7b98: $66
	ld   h, a                                        ; $7b99: $67
	adc  b                                           ; $7b9a: $88
	xor  d                                           ; $7b9b: $aa
	xor  c                                           ; $7b9c: $a9
	sbc  b                                           ; $7b9d: $98
	halt                                             ; $7b9e: $76
	ld   d, h                                        ; $7b9f: $54
	ld   [hl-], a                                    ; $7ba0: $32
	ld   de, $1111                                   ; $7ba1: $11 $11 $11
	dec  h                                           ; $7ba4: $25
	adc  d                                           ; $7ba5: $8a
	rst  JumpTable                                         ; $7ba6: $df
	cp   $ba                                         ; $7ba7: $fe $ba

Call_0e0_7ba9:
	ld   [hl], l                                     ; $7ba9: $75
	ld   d, l                                        ; $7baa: $55
	ld   d, a                                        ; $7bab: $57
	ld   [hl], a                                     ; $7bac: $77
	adc  b                                           ; $7bad: $88
	sbc  e                                           ; $7bae: $9b
	cp   l                                           ; $7baf: $bd
	rst  $38                                         ; $7bb0: $ff
	cp   $b9                                         ; $7bb1: $fe $b9
	ld   [hl], l                                     ; $7bb3: $75
	ld   d, l                                        ; $7bb4: $55
	ld   l, b                                        ; $7bb5: $68
	sbc  d                                           ; $7bb6: $9a
	xor  e                                           ; $7bb7: $ab
	xor  d                                           ; $7bb8: $aa
	xor  d                                           ; $7bb9: $aa
	cp   d                                           ; $7bba: $ba
	cp   d                                           ; $7bbb: $ba
	sbc  b                                           ; $7bbc: $98
	ld   h, [hl]                                     ; $7bbd: $66
	ld   h, [hl]                                     ; $7bbe: $66
	ld   a, c                                        ; $7bbf: $79
	xor  d                                           ; $7bc0: $aa
	xor  d                                           ; $7bc1: $aa
	xor  b                                           ; $7bc2: $a8
	add  a                                           ; $7bc3: $87
	halt                                             ; $7bc4: $76
	ld   d, h                                        ; $7bc5: $54
	ld   hl, $1111                                   ; $7bc6: $21 $11 $11
	inc  de                                          ; $7bc9: $13
	ld   l, c                                        ; $7bca: $69
	cp   l                                           ; $7bcb: $bd
	db   $ed                                         ; $7bcc: $ed
	jp   z, Jump_0e0_5586                            ; $7bcd: $ca $86 $55

	ld   d, [hl]                                     ; $7bd0: $56
	ld   [hl], a                                     ; $7bd1: $77
	ld   a, b                                        ; $7bd2: $78
	adc  c                                           ; $7bd3: $89
	cp   h                                           ; $7bd4: $bc
	rst  JumpTable                                         ; $7bd5: $df
	db   $ed                                         ; $7bd6: $ed
	jp   z, Jump_0e0_5586                            ; $7bd7: $ca $86 $55

	ld   d, [hl]                                     ; $7bda: $56
	ld   a, b                                        ; $7bdb: $78
	sbc  c                                           ; $7bdc: $99
	xor  e                                           ; $7bdd: $ab
	cp   e                                           ; $7bde: $bb
	cp   d                                           ; $7bdf: $ba
	xor  d                                           ; $7be0: $aa
	sub  a                                           ; $7be1: $97
	halt                                             ; $7be2: $76
	ld   h, a                                        ; $7be3: $67
	ld   a, b                                        ; $7be4: $78
	sbc  d                                           ; $7be5: $9a
	sbc  d                                           ; $7be6: $9a
	xor  d                                           ; $7be7: $aa
	sbc  c                                           ; $7be8: $99
	adc  b                                           ; $7be9: $88
	ld   [hl], a                                     ; $7bea: $77
	ld   h, l                                        ; $7beb: $65
	ld   d, h                                        ; $7bec: $54
	inc  sp                                          ; $7bed: $33
	inc  sp                                          ; $7bee: $33
	inc  sp                                          ; $7bef: $33
	inc  sp                                          ; $7bf0: $33
	ld   b, l                                        ; $7bf1: $45
	ld   a, b                                        ; $7bf2: $78
	xor  e                                           ; $7bf3: $ab
	jp   z, Jump_0e0_7698                            ; $7bf4: $ca $98 $76

	ld   h, [hl]                                     ; $7bf7: $66
	ld   a, c                                        ; $7bf8: $79
	sbc  d                                           ; $7bf9: $9a
	sbc  c                                           ; $7bfa: $99
	xor  d                                           ; $7bfb: $aa
	xor  h                                           ; $7bfc: $ac
	cp   h                                           ; $7bfd: $bc
	res  5, c                                        ; $7bfe: $cb $a9
	halt                                             ; $7c00: $76
	ld   h, [hl]                                     ; $7c01: $66
	ld   [hl], a                                     ; $7c02: $77
	adc  b                                           ; $7c03: $88
	sbc  b                                           ; $7c04: $98
	sbc  c                                           ; $7c05: $99
	sbc  c                                           ; $7c06: $99
	sbc  c                                           ; $7c07: $99
	adc  c                                           ; $7c08: $89
	add  a                                           ; $7c09: $87
	ld   [hl], a                                     ; $7c0a: $77
	ld   a, b                                        ; $7c0b: $78
	adc  d                                           ; $7c0c: $8a
	sbc  d                                           ; $7c0d: $9a
	xor  d                                           ; $7c0e: $aa
	sbc  d                                           ; $7c0f: $9a
	sbc  c                                           ; $7c10: $99
	sbc  b                                           ; $7c11: $98
	sbc  b                                           ; $7c12: $98
	ld   [hl], a                                     ; $7c13: $77
	ld   [hl], a                                     ; $7c14: $77
	ld   [hl], a                                     ; $7c15: $77
	ld   [hl], a                                     ; $7c16: $77
	ld   h, [hl]                                     ; $7c17: $66
	ld   d, l                                        ; $7c18: $55
	ld   b, e                                        ; $7c19: $43
	inc  sp                                          ; $7c1a: $33
	inc  sp                                          ; $7c1b: $33
	inc  [hl]                                        ; $7c1c: $34
	ld   d, [hl]                                     ; $7c1d: $56
	ld   a, c                                        ; $7c1e: $79
	cp   h                                           ; $7c1f: $bc
	cp   h                                           ; $7c20: $bc
	xor  c                                           ; $7c21: $a9
	adc  b                                           ; $7c22: $88
	ld   [hl], a                                     ; $7c23: $77
	adc  b                                           ; $7c24: $88
	sbc  d                                           ; $7c25: $9a
	sbc  c                                           ; $7c26: $99
	xor  d                                           ; $7c27: $aa
	cp   d                                           ; $7c28: $ba
	cp   e                                           ; $7c29: $bb
	xor  d                                           ; $7c2a: $aa
	sbc  b                                           ; $7c2b: $98
	halt                                             ; $7c2c: $76
	ld   h, [hl]                                     ; $7c2d: $66
	ld   h, a                                        ; $7c2e: $67
	ld   a, b                                        ; $7c2f: $78
	adc  c                                           ; $7c30: $89
	sbc  b                                           ; $7c31: $98
	adc  b                                           ; $7c32: $88
	adc  c                                           ; $7c33: $89
	sbc  b                                           ; $7c34: $98
	adc  b                                           ; $7c35: $88
	ld   [hl], a                                     ; $7c36: $77
	adc  c                                           ; $7c37: $89
	sbc  d                                           ; $7c38: $9a
	xor  d                                           ; $7c39: $aa
	cp   d                                           ; $7c3a: $ba
	xor  c                                           ; $7c3b: $a9
	xor  c                                           ; $7c3c: $a9
	adc  c                                           ; $7c3d: $89
	adc  b                                           ; $7c3e: $88
	ld   [hl], a                                     ; $7c3f: $77
	ld   [hl], a                                     ; $7c40: $77
	ld   [hl], a                                     ; $7c41: $77
	ld   a, b                                        ; $7c42: $78
	adc  b                                           ; $7c43: $88
	ld   [hl], a                                     ; $7c44: $77
	ld   [hl], a                                     ; $7c45: $77
	ld   h, [hl]                                     ; $7c46: $66
	ld   h, [hl]                                     ; $7c47: $66
	ld   h, [hl]                                     ; $7c48: $66
	ld   h, [hl]                                     ; $7c49: $66
	ld   [hl], a                                     ; $7c4a: $77
	ld   [hl], a                                     ; $7c4b: $77
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	add  a                                           ; $7c4f: $87
	ld   [hl], a                                     ; $7c50: $77
	ld   [hl], a                                     ; $7c51: $77
	ld   [hl], a                                     ; $7c52: $77
	ld   a, b                                        ; $7c53: $78
	adc  b                                           ; $7c54: $88
	adc  b                                           ; $7c55: $88
	adc  b                                           ; $7c56: $88
	adc  c                                           ; $7c57: $89
	sbc  b                                           ; $7c58: $98
	adc  c                                           ; $7c59: $89
	sbc  c                                           ; $7c5a: $99
	sbc  c                                           ; $7c5b: $99
	sbc  c                                           ; $7c5c: $99
	sbc  c                                           ; $7c5d: $99
	sbc  c                                           ; $7c5e: $99
	xor  d                                           ; $7c5f: $aa
	xor  d                                           ; $7c60: $aa
	xor  c                                           ; $7c61: $a9
	sbc  c                                           ; $7c62: $99
	adc  c                                           ; $7c63: $89
	sbc  b                                           ; $7c64: $98
	adc  b                                           ; $7c65: $88
	ld   [hl], a                                     ; $7c66: $77
	halt                                             ; $7c67: $76
	ld   d, l                                        ; $7c68: $55
	ld   d, h                                        ; $7c69: $54
	ld   b, h                                        ; $7c6a: $44
	ld   b, h                                        ; $7c6b: $44
	ld   b, [hl]                                     ; $7c6c: $46
	ld   a, c                                        ; $7c6d: $79
	cp   e                                           ; $7c6e: $bb
	cp   e                                           ; $7c6f: $bb
	xor  b                                           ; $7c70: $a8
	ld   [hl], a                                     ; $7c71: $77
	ld   [hl], a                                     ; $7c72: $77
	adc  b                                           ; $7c73: $88
	sbc  c                                           ; $7c74: $99
	xor  d                                           ; $7c75: $aa
	xor  c                                           ; $7c76: $a9
	xor  d                                           ; $7c77: $aa
	xor  e                                           ; $7c78: $ab
	xor  d                                           ; $7c79: $aa
	sbc  b                                           ; $7c7a: $98
	halt                                             ; $7c7b: $76
	ld   h, [hl]                                     ; $7c7c: $66
	ld   [hl], a                                     ; $7c7d: $77
	adc  b                                           ; $7c7e: $88
	adc  b                                           ; $7c7f: $88
	add  a                                           ; $7c80: $87
	ld   [hl], a                                     ; $7c81: $77
	ld   a, b                                        ; $7c82: $78
	adc  b                                           ; $7c83: $88
	ld   [hl], a                                     ; $7c84: $77
	ld   [hl], a                                     ; $7c85: $77
	ld   a, b                                        ; $7c86: $78
	sbc  c                                           ; $7c87: $99
	xor  c                                           ; $7c88: $a9
	xor  c                                           ; $7c89: $a9
	xor  c                                           ; $7c8a: $a9
	sbc  b                                           ; $7c8b: $98
	adc  b                                           ; $7c8c: $88
	adc  c                                           ; $7c8d: $89
	sbc  c                                           ; $7c8e: $99
	adc  b                                           ; $7c8f: $88
	adc  b                                           ; $7c90: $88
	adc  b                                           ; $7c91: $88
	sbc  b                                           ; $7c92: $98
	adc  b                                           ; $7c93: $88
	ld   [hl], a                                     ; $7c94: $77
	ld   [hl], a                                     ; $7c95: $77
	ld   [hl], a                                     ; $7c96: $77
	ld   [hl], a                                     ; $7c97: $77
	ld   [hl], a                                     ; $7c98: $77
	ld   [hl], a                                     ; $7c99: $77
	ld   [hl], a                                     ; $7c9a: $77
	adc  b                                           ; $7c9b: $88
	adc  c                                           ; $7c9c: $89
	sbc  c                                           ; $7c9d: $99
	sbc  b                                           ; $7c9e: $98
	adc  b                                           ; $7c9f: $88
	adc  b                                           ; $7ca0: $88
	adc  c                                           ; $7ca1: $89
	sbc  c                                           ; $7ca2: $99
	sbc  c                                           ; $7ca3: $99
	adc  b                                           ; $7ca4: $88
	adc  b                                           ; $7ca5: $88
	adc  b                                           ; $7ca6: $88
	adc  b                                           ; $7ca7: $88
	ld   [hl], a                                     ; $7ca8: $77
	ld   [hl], a                                     ; $7ca9: $77
	ld   [hl], a                                     ; $7caa: $77
	ld   [hl], a                                     ; $7cab: $77
	ld   a, b                                        ; $7cac: $78
	adc  b                                           ; $7cad: $88
	adc  b                                           ; $7cae: $88
	adc  b                                           ; $7caf: $88
	adc  b                                           ; $7cb0: $88
	adc  b                                           ; $7cb1: $88
	sbc  c                                           ; $7cb2: $99
	sbc  c                                           ; $7cb3: $99
	sbc  c                                           ; $7cb4: $99
	sbc  c                                           ; $7cb5: $99
	adc  b                                           ; $7cb6: $88
	adc  c                                           ; $7cb7: $89
	sbc  b                                           ; $7cb8: $98
	adc  b                                           ; $7cb9: $88
	adc  b                                           ; $7cba: $88
	adc  b                                           ; $7cbb: $88
	adc  b                                           ; $7cbc: $88
	adc  b                                           ; $7cbd: $88
	adc  b                                           ; $7cbe: $88
	adc  b                                           ; $7cbf: $88
	adc  b                                           ; $7cc0: $88
	ld   [hl], a                                     ; $7cc1: $77
	ld   [hl], a                                     ; $7cc2: $77
	ld   [hl], a                                     ; $7cc3: $77
	ld   [hl], a                                     ; $7cc4: $77
	adc  b                                           ; $7cc5: $88
	adc  b                                           ; $7cc6: $88
	adc  b                                           ; $7cc7: $88
	adc  b                                           ; $7cc8: $88
	adc  b                                           ; $7cc9: $88
	adc  b                                           ; $7cca: $88
	adc  b                                           ; $7ccb: $88
	adc  b                                           ; $7ccc: $88
	adc  b                                           ; $7ccd: $88
	adc  b                                           ; $7cce: $88
	adc  b                                           ; $7ccf: $88
	adc  b                                           ; $7cd0: $88
	adc  b                                           ; $7cd1: $88
	adc  b                                           ; $7cd2: $88
	adc  b                                           ; $7cd3: $88
	adc  b                                           ; $7cd4: $88
	add  a                                           ; $7cd5: $87
	ld   [hl], a                                     ; $7cd6: $77
	ld   a, b                                        ; $7cd7: $78
	adc  b                                           ; $7cd8: $88
	adc  b                                           ; $7cd9: $88
	adc  b                                           ; $7cda: $88
	adc  b                                           ; $7cdb: $88
	adc  b                                           ; $7cdc: $88
	adc  b                                           ; $7cdd: $88
	adc  b                                           ; $7cde: $88
	adc  b                                           ; $7cdf: $88
	adc  b                                           ; $7ce0: $88
	adc  b                                           ; $7ce1: $88
	adc  b                                           ; $7ce2: $88
	adc  b                                           ; $7ce3: $88
	adc  b                                           ; $7ce4: $88
	adc  b                                           ; $7ce5: $88
	adc  b                                           ; $7ce6: $88
	adc  b                                           ; $7ce7: $88
	adc  b                                           ; $7ce8: $88
	adc  b                                           ; $7ce9: $88
	adc  b                                           ; $7cea: $88
	adc  b                                           ; $7ceb: $88
	adc  b                                           ; $7cec: $88
	adc  b                                           ; $7ced: $88
	adc  b                                           ; $7cee: $88
	adc  b                                           ; $7cef: $88
	adc  b                                           ; $7cf0: $88
	adc  b                                           ; $7cf1: $88
	adc  b                                           ; $7cf2: $88
	adc  b                                           ; $7cf3: $88
	adc  b                                           ; $7cf4: $88
	adc  b                                           ; $7cf5: $88
	adc  b                                           ; $7cf6: $88
	adc  b                                           ; $7cf7: $88
	adc  b                                           ; $7cf8: $88
	adc  b                                           ; $7cf9: $88
	adc  b                                           ; $7cfa: $88
	adc  b                                           ; $7cfb: $88
	adc  b                                           ; $7cfc: $88
	adc  b                                           ; $7cfd: $88
	adc  b                                           ; $7cfe: $88
	adc  b                                           ; $7cff: $88
	adc  b                                           ; $7d00: $88
	adc  b                                           ; $7d01: $88
	adc  b                                           ; $7d02: $88
	adc  b                                           ; $7d03: $88
	adc  b                                           ; $7d04: $88
	adc  b                                           ; $7d05: $88
	adc  b                                           ; $7d06: $88
	adc  b                                           ; $7d07: $88
	adc  b                                           ; $7d08: $88
	adc  b                                           ; $7d09: $88
	adc  b                                           ; $7d0a: $88
	adc  b                                           ; $7d0b: $88
	adc  b                                           ; $7d0c: $88
	adc  b                                           ; $7d0d: $88
	adc  b                                           ; $7d0e: $88
	adc  b                                           ; $7d0f: $88
	adc  b                                           ; $7d10: $88
	adc  b                                           ; $7d11: $88
	adc  b                                           ; $7d12: $88
	adc  b                                           ; $7d13: $88
	adc  b                                           ; $7d14: $88
	adc  b                                           ; $7d15: $88
	adc  b                                           ; $7d16: $88
	adc  b                                           ; $7d17: $88
	adc  b                                           ; $7d18: $88
	adc  b                                           ; $7d19: $88
	adc  b                                           ; $7d1a: $88
	adc  b                                           ; $7d1b: $88
	adc  b                                           ; $7d1c: $88
	adc  b                                           ; $7d1d: $88
	adc  b                                           ; $7d1e: $88
	adc  b                                           ; $7d1f: $88
	adc  b                                           ; $7d20: $88
	adc  b                                           ; $7d21: $88
	adc  b                                           ; $7d22: $88
	adc  b                                           ; $7d23: $88
	adc  b                                           ; $7d24: $88
	adc  b                                           ; $7d25: $88
	adc  b                                           ; $7d26: $88
	adc  b                                           ; $7d27: $88
	adc  b                                           ; $7d28: $88
	adc  b                                           ; $7d29: $88
	adc  b                                           ; $7d2a: $88
	adc  b                                           ; $7d2b: $88
	adc  b                                           ; $7d2c: $88
	adc  b                                           ; $7d2d: $88
	adc  b                                           ; $7d2e: $88
	adc  b                                           ; $7d2f: $88
	adc  b                                           ; $7d30: $88
	adc  b                                           ; $7d31: $88
	adc  b                                           ; $7d32: $88
	adc  b                                           ; $7d33: $88
	adc  b                                           ; $7d34: $88
	adc  b                                           ; $7d35: $88
	adc  b                                           ; $7d36: $88
	adc  b                                           ; $7d37: $88
	adc  b                                           ; $7d38: $88
	adc  b                                           ; $7d39: $88
	adc  b                                           ; $7d3a: $88
	adc  b                                           ; $7d3b: $88
	adc  b                                           ; $7d3c: $88
	adc  b                                           ; $7d3d: $88
	adc  b                                           ; $7d3e: $88
	adc  b                                           ; $7d3f: $88
	adc  b                                           ; $7d40: $88
	adc  b                                           ; $7d41: $88
	adc  b                                           ; $7d42: $88
	adc  b                                           ; $7d43: $88
	adc  b                                           ; $7d44: $88
	adc  b                                           ; $7d45: $88
	adc  b                                           ; $7d46: $88
	adc  b                                           ; $7d47: $88
	adc  b                                           ; $7d48: $88
	adc  b                                           ; $7d49: $88
	adc  b                                           ; $7d4a: $88
	adc  b                                           ; $7d4b: $88
	adc  b                                           ; $7d4c: $88
	adc  b                                           ; $7d4d: $88
	adc  b                                           ; $7d4e: $88
	adc  b                                           ; $7d4f: $88
	adc  b                                           ; $7d50: $88
	adc  b                                           ; $7d51: $88
	adc  b                                           ; $7d52: $88
	adc  b                                           ; $7d53: $88
	adc  b                                           ; $7d54: $88
	adc  b                                           ; $7d55: $88
	adc  b                                           ; $7d56: $88
	adc  b                                           ; $7d57: $88
	adc  b                                           ; $7d58: $88
	adc  b                                           ; $7d59: $88
	adc  b                                           ; $7d5a: $88
	adc  b                                           ; $7d5b: $88
	adc  b                                           ; $7d5c: $88
	adc  b                                           ; $7d5d: $88
	adc  b                                           ; $7d5e: $88
	adc  b                                           ; $7d5f: $88
	adc  b                                           ; $7d60: $88
	adc  b                                           ; $7d61: $88
	adc  b                                           ; $7d62: $88
	adc  b                                           ; $7d63: $88
	adc  b                                           ; $7d64: $88
	adc  b                                           ; $7d65: $88
	adc  b                                           ; $7d66: $88
	adc  b                                           ; $7d67: $88
	adc  b                                           ; $7d68: $88
	adc  b                                           ; $7d69: $88
	adc  b                                           ; $7d6a: $88
	adc  b                                           ; $7d6b: $88
	adc  b                                           ; $7d6c: $88
	adc  b                                           ; $7d6d: $88
	adc  b                                           ; $7d6e: $88
	adc  b                                           ; $7d6f: $88
	adc  b                                           ; $7d70: $88
	adc  b                                           ; $7d71: $88
	adc  b                                           ; $7d72: $88
	adc  b                                           ; $7d73: $88
	adc  b                                           ; $7d74: $88
	adc  b                                           ; $7d75: $88
	adc  b                                           ; $7d76: $88
	adc  b                                           ; $7d77: $88
	adc  b                                           ; $7d78: $88
	adc  b                                           ; $7d79: $88
	adc  b                                           ; $7d7a: $88
	adc  b                                           ; $7d7b: $88
	adc  b                                           ; $7d7c: $88
	adc  b                                           ; $7d7d: $88
	adc  b                                           ; $7d7e: $88
	adc  b                                           ; $7d7f: $88
	adc  b                                           ; $7d80: $88
	adc  b                                           ; $7d81: $88
	adc  b                                           ; $7d82: $88
	adc  b                                           ; $7d83: $88
	adc  b                                           ; $7d84: $88
	adc  b                                           ; $7d85: $88
	adc  b                                           ; $7d86: $88
	adc  b                                           ; $7d87: $88
	adc  b                                           ; $7d88: $88
	adc  b                                           ; $7d89: $88
	adc  b                                           ; $7d8a: $88
	adc  b                                           ; $7d8b: $88
	adc  b                                           ; $7d8c: $88
	adc  b                                           ; $7d8d: $88
	adc  b                                           ; $7d8e: $88
	adc  b                                           ; $7d8f: $88
	adc  b                                           ; $7d90: $88
	adc  b                                           ; $7d91: $88
	adc  b                                           ; $7d92: $88
	adc  b                                           ; $7d93: $88
	adc  b                                           ; $7d94: $88
	adc  b                                           ; $7d95: $88
	adc  b                                           ; $7d96: $88
	adc  b                                           ; $7d97: $88
	adc  b                                           ; $7d98: $88
	adc  b                                           ; $7d99: $88
	adc  b                                           ; $7d9a: $88
	adc  b                                           ; $7d9b: $88
	adc  b                                           ; $7d9c: $88
	adc  b                                           ; $7d9d: $88
	adc  b                                           ; $7d9e: $88
	adc  b                                           ; $7d9f: $88
	adc  b                                           ; $7da0: $88
	adc  b                                           ; $7da1: $88
	adc  b                                           ; $7da2: $88
	adc  b                                           ; $7da3: $88
	adc  b                                           ; $7da4: $88
	adc  b                                           ; $7da5: $88
	adc  b                                           ; $7da6: $88
	adc  b                                           ; $7da7: $88
	adc  b                                           ; $7da8: $88
	adc  b                                           ; $7da9: $88
	adc  b                                           ; $7daa: $88
	adc  b                                           ; $7dab: $88
	adc  b                                           ; $7dac: $88
	adc  b                                           ; $7dad: $88
	adc  b                                           ; $7dae: $88
	adc  b                                           ; $7daf: $88
	adc  b                                           ; $7db0: $88
	adc  b                                           ; $7db1: $88
	adc  b                                           ; $7db2: $88
	adc  b                                           ; $7db3: $88
	adc  b                                           ; $7db4: $88
	adc  b                                           ; $7db5: $88
	adc  b                                           ; $7db6: $88
	adc  b                                           ; $7db7: $88
	adc  b                                           ; $7db8: $88
	adc  b                                           ; $7db9: $88
	adc  b                                           ; $7dba: $88
	adc  b                                           ; $7dbb: $88
	adc  b                                           ; $7dbc: $88
	adc  b                                           ; $7dbd: $88
	adc  b                                           ; $7dbe: $88
	adc  b                                           ; $7dbf: $88
	adc  b                                           ; $7dc0: $88
	adc  b                                           ; $7dc1: $88
	adc  b                                           ; $7dc2: $88
	adc  b                                           ; $7dc3: $88
	adc  b                                           ; $7dc4: $88
	adc  b                                           ; $7dc5: $88
	adc  b                                           ; $7dc6: $88
	adc  b                                           ; $7dc7: $88
	adc  b                                           ; $7dc8: $88
	adc  b                                           ; $7dc9: $88
	adc  b                                           ; $7dca: $88
	adc  b                                           ; $7dcb: $88
	adc  b                                           ; $7dcc: $88
	adc  b                                           ; $7dcd: $88
	adc  b                                           ; $7dce: $88
	adc  b                                           ; $7dcf: $88
	adc  b                                           ; $7dd0: $88
	adc  b                                           ; $7dd1: $88
	adc  b                                           ; $7dd2: $88
	adc  b                                           ; $7dd3: $88
	adc  b                                           ; $7dd4: $88
	adc  b                                           ; $7dd5: $88
	adc  b                                           ; $7dd6: $88
	adc  b                                           ; $7dd7: $88
	adc  b                                           ; $7dd8: $88
	adc  b                                           ; $7dd9: $88
	adc  b                                           ; $7dda: $88
	adc  b                                           ; $7ddb: $88
	adc  b                                           ; $7ddc: $88
	adc  b                                           ; $7ddd: $88
	adc  b                                           ; $7dde: $88
	adc  b                                           ; $7ddf: $88
	adc  b                                           ; $7de0: $88
	adc  b                                           ; $7de1: $88
	adc  b                                           ; $7de2: $88
	adc  b                                           ; $7de3: $88
	adc  b                                           ; $7de4: $88
	adc  b                                           ; $7de5: $88
	adc  b                                           ; $7de6: $88
	adc  b                                           ; $7de7: $88
	adc  b                                           ; $7de8: $88
	adc  b                                           ; $7de9: $88
	adc  b                                           ; $7dea: $88
	adc  b                                           ; $7deb: $88
	adc  b                                           ; $7dec: $88
	adc  b                                           ; $7ded: $88
	adc  b                                           ; $7dee: $88
	adc  b                                           ; $7def: $88
	adc  b                                           ; $7df0: $88
	adc  b                                           ; $7df1: $88
	adc  b                                           ; $7df2: $88
	adc  b                                           ; $7df3: $88
	adc  b                                           ; $7df4: $88
	adc  b                                           ; $7df5: $88
	adc  b                                           ; $7df6: $88
	adc  b                                           ; $7df7: $88
	adc  b                                           ; $7df8: $88
	adc  b                                           ; $7df9: $88
	adc  b                                           ; $7dfa: $88
	adc  b                                           ; $7dfb: $88
	adc  b                                           ; $7dfc: $88
	adc  b                                           ; $7dfd: $88
	adc  b                                           ; $7dfe: $88
	adc  b                                           ; $7dff: $88
	adc  b                                           ; $7e00: $88
	adc  b                                           ; $7e01: $88
	adc  b                                           ; $7e02: $88
	adc  b                                           ; $7e03: $88
	adc  b                                           ; $7e04: $88
	adc  b                                           ; $7e05: $88
	adc  b                                           ; $7e06: $88
	adc  b                                           ; $7e07: $88
	adc  b                                           ; $7e08: $88
	adc  b                                           ; $7e09: $88
	adc  b                                           ; $7e0a: $88
	adc  b                                           ; $7e0b: $88
	adc  b                                           ; $7e0c: $88
	adc  b                                           ; $7e0d: $88
	adc  b                                           ; $7e0e: $88
	adc  b                                           ; $7e0f: $88
	adc  b                                           ; $7e10: $88
	adc  b                                           ; $7e11: $88
	adc  b                                           ; $7e12: $88
	adc  b                                           ; $7e13: $88
	adc  b                                           ; $7e14: $88
	adc  b                                           ; $7e15: $88
	adc  b                                           ; $7e16: $88
	adc  b                                           ; $7e17: $88
	adc  b                                           ; $7e18: $88
	adc  b                                           ; $7e19: $88
	adc  b                                           ; $7e1a: $88
	adc  b                                           ; $7e1b: $88
	adc  b                                           ; $7e1c: $88
	adc  b                                           ; $7e1d: $88
	adc  b                                           ; $7e1e: $88
	adc  b                                           ; $7e1f: $88
	adc  b                                           ; $7e20: $88
	adc  b                                           ; $7e21: $88
	adc  b                                           ; $7e22: $88
	adc  b                                           ; $7e23: $88
	adc  b                                           ; $7e24: $88
	adc  b                                           ; $7e25: $88
	adc  b                                           ; $7e26: $88
	adc  b                                           ; $7e27: $88
	adc  b                                           ; $7e28: $88
	adc  b                                           ; $7e29: $88
	adc  b                                           ; $7e2a: $88
	adc  b                                           ; $7e2b: $88
	adc  b                                           ; $7e2c: $88
	adc  b                                           ; $7e2d: $88
	adc  b                                           ; $7e2e: $88
	adc  b                                           ; $7e2f: $88
	adc  b                                           ; $7e30: $88
	adc  b                                           ; $7e31: $88
	adc  b                                           ; $7e32: $88
	adc  b                                           ; $7e33: $88
	adc  b                                           ; $7e34: $88
	adc  b                                           ; $7e35: $88
	adc  b                                           ; $7e36: $88
	adc  b                                           ; $7e37: $88
	adc  b                                           ; $7e38: $88
	adc  b                                           ; $7e39: $88
	adc  b                                           ; $7e3a: $88
	adc  b                                           ; $7e3b: $88
	adc  b                                           ; $7e3c: $88
	adc  b                                           ; $7e3d: $88
	adc  b                                           ; $7e3e: $88
	adc  b                                           ; $7e3f: $88
	adc  b                                           ; $7e40: $88
	adc  b                                           ; $7e41: $88
	adc  b                                           ; $7e42: $88
	adc  b                                           ; $7e43: $88
	adc  b                                           ; $7e44: $88
	adc  b                                           ; $7e45: $88
	adc  b                                           ; $7e46: $88
	adc  b                                           ; $7e47: $88
	adc  b                                           ; $7e48: $88
	adc  b                                           ; $7e49: $88
	adc  b                                           ; $7e4a: $88
	adc  b                                           ; $7e4b: $88
	adc  b                                           ; $7e4c: $88
	adc  b                                           ; $7e4d: $88
	adc  b                                           ; $7e4e: $88
	adc  b                                           ; $7e4f: $88
	adc  b                                           ; $7e50: $88
	adc  b                                           ; $7e51: $88
	adc  b                                           ; $7e52: $88
	adc  b                                           ; $7e53: $88
	adc  b                                           ; $7e54: $88
	adc  b                                           ; $7e55: $88
	adc  b                                           ; $7e56: $88
	adc  b                                           ; $7e57: $88
	adc  b                                           ; $7e58: $88
	adc  b                                           ; $7e59: $88
	adc  b                                           ; $7e5a: $88
	adc  b                                           ; $7e5b: $88
	adc  b                                           ; $7e5c: $88
	adc  b                                           ; $7e5d: $88
	adc  b                                           ; $7e5e: $88
	adc  b                                           ; $7e5f: $88
	adc  b                                           ; $7e60: $88
	adc  b                                           ; $7e61: $88
	adc  b                                           ; $7e62: $88
	adc  b                                           ; $7e63: $88
	adc  b                                           ; $7e64: $88
	adc  b                                           ; $7e65: $88
	adc  b                                           ; $7e66: $88
	adc  b                                           ; $7e67: $88
	adc  b                                           ; $7e68: $88
	adc  b                                           ; $7e69: $88
	adc  b                                           ; $7e6a: $88
	adc  b                                           ; $7e6b: $88
	adc  b                                           ; $7e6c: $88
	adc  b                                           ; $7e6d: $88
	adc  b                                           ; $7e6e: $88
	adc  b                                           ; $7e6f: $88
	adc  b                                           ; $7e70: $88
	adc  b                                           ; $7e71: $88
	adc  b                                           ; $7e72: $88
	adc  b                                           ; $7e73: $88
	adc  b                                           ; $7e74: $88
	adc  b                                           ; $7e75: $88
	adc  b                                           ; $7e76: $88
	adc  b                                           ; $7e77: $88
	adc  b                                           ; $7e78: $88
	adc  b                                           ; $7e79: $88
	adc  b                                           ; $7e7a: $88
	adc  b                                           ; $7e7b: $88
	adc  b                                           ; $7e7c: $88
	adc  b                                           ; $7e7d: $88
	adc  b                                           ; $7e7e: $88
	adc  b                                           ; $7e7f: $88
	adc  b                                           ; $7e80: $88
	adc  b                                           ; $7e81: $88
	adc  b                                           ; $7e82: $88
	adc  b                                           ; $7e83: $88
	adc  b                                           ; $7e84: $88
	adc  b                                           ; $7e85: $88
	adc  b                                           ; $7e86: $88
	adc  b                                           ; $7e87: $88
	adc  b                                           ; $7e88: $88
	adc  b                                           ; $7e89: $88
	adc  b                                           ; $7e8a: $88
	adc  b                                           ; $7e8b: $88
	adc  b                                           ; $7e8c: $88
	adc  b                                           ; $7e8d: $88
	adc  b                                           ; $7e8e: $88
	adc  b                                           ; $7e8f: $88
	adc  b                                           ; $7e90: $88
	adc  b                                           ; $7e91: $88
	adc  b                                           ; $7e92: $88
	adc  b                                           ; $7e93: $88
	adc  b                                           ; $7e94: $88
	adc  b                                           ; $7e95: $88
	adc  b                                           ; $7e96: $88
	adc  b                                           ; $7e97: $88
	adc  b                                           ; $7e98: $88
	adc  b                                           ; $7e99: $88
	adc  b                                           ; $7e9a: $88
	adc  b                                           ; $7e9b: $88
	adc  b                                           ; $7e9c: $88
	adc  b                                           ; $7e9d: $88
	adc  b                                           ; $7e9e: $88
	adc  b                                           ; $7e9f: $88
	adc  b                                           ; $7ea0: $88
	adc  b                                           ; $7ea1: $88
	adc  b                                           ; $7ea2: $88
	adc  b                                           ; $7ea3: $88
	adc  b                                           ; $7ea4: $88
	adc  b                                           ; $7ea5: $88
	adc  b                                           ; $7ea6: $88
	adc  b                                           ; $7ea7: $88
	adc  b                                           ; $7ea8: $88
	adc  b                                           ; $7ea9: $88
	adc  b                                           ; $7eaa: $88
	adc  b                                           ; $7eab: $88
	adc  b                                           ; $7eac: $88
	adc  b                                           ; $7ead: $88
	adc  b                                           ; $7eae: $88
	adc  b                                           ; $7eaf: $88
	adc  b                                           ; $7eb0: $88
	adc  b                                           ; $7eb1: $88
	adc  b                                           ; $7eb2: $88
	adc  b                                           ; $7eb3: $88
	adc  b                                           ; $7eb4: $88
	adc  b                                           ; $7eb5: $88
	adc  b                                           ; $7eb6: $88
	adc  b                                           ; $7eb7: $88
	adc  b                                           ; $7eb8: $88
	adc  b                                           ; $7eb9: $88
	adc  b                                           ; $7eba: $88
	adc  b                                           ; $7ebb: $88
	adc  b                                           ; $7ebc: $88
	adc  b                                           ; $7ebd: $88
	adc  b                                           ; $7ebe: $88
	adc  b                                           ; $7ebf: $88
	adc  b                                           ; $7ec0: $88
	adc  b                                           ; $7ec1: $88
	adc  b                                           ; $7ec2: $88
	adc  b                                           ; $7ec3: $88
	adc  b                                           ; $7ec4: $88
	adc  b                                           ; $7ec5: $88
	adc  b                                           ; $7ec6: $88
	adc  b                                           ; $7ec7: $88
	adc  b                                           ; $7ec8: $88
	adc  b                                           ; $7ec9: $88
	adc  b                                           ; $7eca: $88
	adc  b                                           ; $7ecb: $88
	adc  b                                           ; $7ecc: $88
	adc  b                                           ; $7ecd: $88
	adc  b                                           ; $7ece: $88
	adc  b                                           ; $7ecf: $88
	adc  b                                           ; $7ed0: $88
	adc  b                                           ; $7ed1: $88
	adc  b                                           ; $7ed2: $88
	adc  b                                           ; $7ed3: $88
	adc  b                                           ; $7ed4: $88
	adc  b                                           ; $7ed5: $88
	adc  b                                           ; $7ed6: $88
	adc  b                                           ; $7ed7: $88
	adc  b                                           ; $7ed8: $88
	adc  b                                           ; $7ed9: $88
	adc  b                                           ; $7eda: $88
	adc  b                                           ; $7edb: $88
	adc  b                                           ; $7edc: $88
	adc  b                                           ; $7edd: $88
	adc  b                                           ; $7ede: $88
	adc  b                                           ; $7edf: $88
	adc  b                                           ; $7ee0: $88
	adc  b                                           ; $7ee1: $88
	adc  b                                           ; $7ee2: $88
	adc  b                                           ; $7ee3: $88
	adc  b                                           ; $7ee4: $88
	adc  b                                           ; $7ee5: $88
	adc  b                                           ; $7ee6: $88
	adc  b                                           ; $7ee7: $88
	adc  b                                           ; $7ee8: $88
	adc  b                                           ; $7ee9: $88
	adc  b                                           ; $7eea: $88
	adc  b                                           ; $7eeb: $88
	adc  b                                           ; $7eec: $88
	adc  b                                           ; $7eed: $88
	adc  b                                           ; $7eee: $88
	adc  b                                           ; $7eef: $88
	adc  b                                           ; $7ef0: $88
	adc  b                                           ; $7ef1: $88
	adc  b                                           ; $7ef2: $88
	adc  b                                           ; $7ef3: $88
	adc  b                                           ; $7ef4: $88
	adc  b                                           ; $7ef5: $88
	adc  b                                           ; $7ef6: $88
	adc  b                                           ; $7ef7: $88
	adc  b                                           ; $7ef8: $88
	adc  b                                           ; $7ef9: $88
	adc  b                                           ; $7efa: $88
	adc  b                                           ; $7efb: $88
	adc  b                                           ; $7efc: $88
	adc  b                                           ; $7efd: $88
	adc  b                                           ; $7efe: $88
	adc  b                                           ; $7eff: $88
	adc  b                                           ; $7f00: $88
	adc  b                                           ; $7f01: $88
	adc  b                                           ; $7f02: $88
	adc  b                                           ; $7f03: $88
	adc  b                                           ; $7f04: $88
	adc  b                                           ; $7f05: $88
	adc  b                                           ; $7f06: $88
	adc  b                                           ; $7f07: $88
	adc  b                                           ; $7f08: $88
	adc  b                                           ; $7f09: $88
	adc  b                                           ; $7f0a: $88
	adc  b                                           ; $7f0b: $88
	adc  b                                           ; $7f0c: $88
	adc  b                                           ; $7f0d: $88
	adc  b                                           ; $7f0e: $88
	adc  b                                           ; $7f0f: $88
	adc  b                                           ; $7f10: $88
	adc  b                                           ; $7f11: $88
	adc  b                                           ; $7f12: $88
	adc  b                                           ; $7f13: $88
	adc  b                                           ; $7f14: $88
	adc  b                                           ; $7f15: $88
	adc  b                                           ; $7f16: $88
	adc  b                                           ; $7f17: $88
	adc  b                                           ; $7f18: $88
	adc  b                                           ; $7f19: $88
	adc  b                                           ; $7f1a: $88
	adc  b                                           ; $7f1b: $88
	adc  b                                           ; $7f1c: $88
	adc  b                                           ; $7f1d: $88
	adc  b                                           ; $7f1e: $88
	adc  b                                           ; $7f1f: $88
	adc  b                                           ; $7f20: $88
	adc  b                                           ; $7f21: $88
	adc  b                                           ; $7f22: $88
	adc  b                                           ; $7f23: $88
	adc  b                                           ; $7f24: $88
	adc  b                                           ; $7f25: $88
	adc  b                                           ; $7f26: $88
	adc  b                                           ; $7f27: $88
	adc  b                                           ; $7f28: $88
	adc  b                                           ; $7f29: $88
	adc  b                                           ; $7f2a: $88
	adc  b                                           ; $7f2b: $88
	adc  b                                           ; $7f2c: $88
	adc  b                                           ; $7f2d: $88
	adc  b                                           ; $7f2e: $88
	adc  b                                           ; $7f2f: $88
	adc  b                                           ; $7f30: $88
	adc  b                                           ; $7f31: $88
	adc  b                                           ; $7f32: $88
	adc  b                                           ; $7f33: $88
	adc  b                                           ; $7f34: $88
	adc  b                                           ; $7f35: $88
	adc  b                                           ; $7f36: $88
	adc  b                                           ; $7f37: $88
	adc  b                                           ; $7f38: $88
	adc  b                                           ; $7f39: $88
	adc  b                                           ; $7f3a: $88
	adc  b                                           ; $7f3b: $88
	adc  b                                           ; $7f3c: $88
	adc  b                                           ; $7f3d: $88
	adc  b                                           ; $7f3e: $88
	adc  b                                           ; $7f3f: $88
	adc  b                                           ; $7f40: $88
	adc  b                                           ; $7f41: $88
	adc  b                                           ; $7f42: $88
	adc  b                                           ; $7f43: $88
	adc  b                                           ; $7f44: $88
	adc  b                                           ; $7f45: $88
	adc  b                                           ; $7f46: $88
	adc  b                                           ; $7f47: $88
	adc  b                                           ; $7f48: $88
	adc  b                                           ; $7f49: $88
	adc  b                                           ; $7f4a: $88
	adc  b                                           ; $7f4b: $88
	adc  b                                           ; $7f4c: $88
	adc  b                                           ; $7f4d: $88
	adc  b                                           ; $7f4e: $88
	adc  b                                           ; $7f4f: $88
	adc  b                                           ; $7f50: $88
	adc  b                                           ; $7f51: $88
	adc  b                                           ; $7f52: $88
	adc  b                                           ; $7f53: $88
	adc  b                                           ; $7f54: $88
	adc  b                                           ; $7f55: $88
	adc  b                                           ; $7f56: $88
	adc  b                                           ; $7f57: $88
	adc  b                                           ; $7f58: $88
	adc  b                                           ; $7f59: $88
	adc  b                                           ; $7f5a: $88
	adc  b                                           ; $7f5b: $88
	adc  b                                           ; $7f5c: $88
	adc  b                                           ; $7f5d: $88
	adc  b                                           ; $7f5e: $88
	adc  b                                           ; $7f5f: $88
	adc  b                                           ; $7f60: $88
	adc  b                                           ; $7f61: $88
	adc  b                                           ; $7f62: $88
	adc  b                                           ; $7f63: $88
	adc  b                                           ; $7f64: $88
	adc  b                                           ; $7f65: $88
	adc  b                                           ; $7f66: $88
	adc  b                                           ; $7f67: $88
	adc  b                                           ; $7f68: $88
	adc  b                                           ; $7f69: $88
	adc  b                                           ; $7f6a: $88
	adc  b                                           ; $7f6b: $88
	adc  b                                           ; $7f6c: $88
	adc  b                                           ; $7f6d: $88
	adc  b                                           ; $7f6e: $88
	adc  b                                           ; $7f6f: $88
	adc  b                                           ; $7f70: $88
	adc  b                                           ; $7f71: $88
	adc  b                                           ; $7f72: $88
	adc  b                                           ; $7f73: $88
	adc  b                                           ; $7f74: $88
	adc  b                                           ; $7f75: $88
	adc  b                                           ; $7f76: $88
	adc  b                                           ; $7f77: $88
	adc  b                                           ; $7f78: $88
	adc  b                                           ; $7f79: $88
	adc  b                                           ; $7f7a: $88
	adc  b                                           ; $7f7b: $88
	adc  b                                           ; $7f7c: $88
	adc  b                                           ; $7f7d: $88
	adc  b                                           ; $7f7e: $88
	adc  b                                           ; $7f7f: $88
	adc  b                                           ; $7f80: $88
	adc  b                                           ; $7f81: $88
	adc  b                                           ; $7f82: $88
	adc  b                                           ; $7f83: $88
	adc  b                                           ; $7f84: $88
	adc  b                                           ; $7f85: $88
	adc  b                                           ; $7f86: $88
	adc  b                                           ; $7f87: $88
	adc  b                                           ; $7f88: $88
	adc  b                                           ; $7f89: $88
	adc  b                                           ; $7f8a: $88
	adc  b                                           ; $7f8b: $88
	adc  b                                           ; $7f8c: $88
	adc  b                                           ; $7f8d: $88
	adc  b                                           ; $7f8e: $88
	adc  b                                           ; $7f8f: $88
	adc  b                                           ; $7f90: $88
	adc  b                                           ; $7f91: $88
	adc  b                                           ; $7f92: $88
	adc  b                                           ; $7f93: $88
	adc  b                                           ; $7f94: $88
	adc  b                                           ; $7f95: $88
	adc  b                                           ; $7f96: $88
	adc  b                                           ; $7f97: $88
	adc  b                                           ; $7f98: $88
	adc  b                                           ; $7f99: $88
	adc  b                                           ; $7f9a: $88
	adc  b                                           ; $7f9b: $88
	adc  b                                           ; $7f9c: $88
	adc  b                                           ; $7f9d: $88
	adc  b                                           ; $7f9e: $88
	adc  b                                           ; $7f9f: $88
	adc  b                                           ; $7fa0: $88
	adc  b                                           ; $7fa1: $88
	adc  b                                           ; $7fa2: $88
	adc  b                                           ; $7fa3: $88
	adc  b                                           ; $7fa4: $88
	adc  b                                           ; $7fa5: $88
	adc  b                                           ; $7fa6: $88
	adc  b                                           ; $7fa7: $88
	adc  b                                           ; $7fa8: $88
	adc  b                                           ; $7fa9: $88
	adc  b                                           ; $7faa: $88
	adc  b                                           ; $7fab: $88
	adc  b                                           ; $7fac: $88
	adc  b                                           ; $7fad: $88
	adc  b                                           ; $7fae: $88
	adc  b                                           ; $7faf: $88
	adc  b                                           ; $7fb0: $88
	adc  b                                           ; $7fb1: $88
	adc  b                                           ; $7fb2: $88
	adc  b                                           ; $7fb3: $88
	adc  b                                           ; $7fb4: $88
	adc  b                                           ; $7fb5: $88
	adc  b                                           ; $7fb6: $88
	adc  b                                           ; $7fb7: $88
	adc  b                                           ; $7fb8: $88
	adc  b                                           ; $7fb9: $88
	adc  b                                           ; $7fba: $88
	adc  b                                           ; $7fbb: $88
	adc  b                                           ; $7fbc: $88
	adc  b                                           ; $7fbd: $88
	adc  b                                           ; $7fbe: $88
	adc  b                                           ; $7fbf: $88
	adc  b                                           ; $7fc0: $88
	adc  b                                           ; $7fc1: $88
	adc  b                                           ; $7fc2: $88
	adc  b                                           ; $7fc3: $88
	adc  b                                           ; $7fc4: $88
	adc  b                                           ; $7fc5: $88
	adc  b                                           ; $7fc6: $88
	adc  b                                           ; $7fc7: $88
	adc  b                                           ; $7fc8: $88
	adc  b                                           ; $7fc9: $88
	adc  b                                           ; $7fca: $88
	adc  b                                           ; $7fcb: $88
	adc  b                                           ; $7fcc: $88
	adc  b                                           ; $7fcd: $88
	adc  b                                           ; $7fce: $88
	adc  b                                           ; $7fcf: $88
	adc  b                                           ; $7fd0: $88
	adc  b                                           ; $7fd1: $88
	adc  b                                           ; $7fd2: $88
	adc  b                                           ; $7fd3: $88
	adc  b                                           ; $7fd4: $88
	adc  b                                           ; $7fd5: $88
	adc  b                                           ; $7fd6: $88
	adc  b                                           ; $7fd7: $88
	adc  b                                           ; $7fd8: $88
	adc  b                                           ; $7fd9: $88
	adc  b                                           ; $7fda: $88
	adc  b                                           ; $7fdb: $88
	adc  b                                           ; $7fdc: $88
	adc  b                                           ; $7fdd: $88
	adc  b                                           ; $7fde: $88
	adc  b                                           ; $7fdf: $88
	adc  b                                           ; $7fe0: $88
	adc  b                                           ; $7fe1: $88
	adc  b                                           ; $7fe2: $88
	adc  b                                           ; $7fe3: $88
	adc  b                                           ; $7fe4: $88
	adc  b                                           ; $7fe5: $88
	adc  b                                           ; $7fe6: $88
	adc  b                                           ; $7fe7: $88
	adc  b                                           ; $7fe8: $88
	adc  b                                           ; $7fe9: $88
	adc  b                                           ; $7fea: $88
	adc  b                                           ; $7feb: $88
	adc  b                                           ; $7fec: $88
	adc  b                                           ; $7fed: $88
	adc  b                                           ; $7fee: $88
	adc  b                                           ; $7fef: $88
	adc  b                                           ; $7ff0: $88
	adc  b                                           ; $7ff1: $88

Call_0e0_7ff2:
	adc  b                                           ; $7ff2: $88
	adc  b                                           ; $7ff3: $88
	adc  b                                           ; $7ff4: $88
	adc  b                                           ; $7ff5: $88
	adc  b                                           ; $7ff6: $88
	adc  b                                           ; $7ff7: $88
	adc  b                                           ; $7ff8: $88
	adc  b                                           ; $7ff9: $88
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	adc  b                                           ; $7ffc: $88
	adc  b                                           ; $7ffd: $88
	adc  b                                           ; $7ffe: $88
	adc  b                                           ; $7fff: $88
