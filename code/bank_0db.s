; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0db", ROMX[$4000], BANK[$db]

	ld   de, $1111                                   ; $4000: $11 $11 $11
	inc  de                                          ; $4003: $13
	xor  l                                           ; $4004: $ad
	rst  $38                                         ; $4005: $ff
	rst  $38                                         ; $4006: $ff
	rst  $38                                         ; $4007: $ff
	rst  $38                                         ; $4008: $ff
	rst  $38                                         ; $4009: $ff
	jp   hl                                          ; $400a: $e9


	sub  c                                           ; $400b: $91
	ld   de, $1111                                   ; $400c: $11 $11 $11
	ld   de, $9f6b                                   ; $400f: $11 $6b $9f
	rst  $38                                         ; $4012: $ff
	rst  $38                                         ; $4013: $ff
	rst  $38                                         ; $4014: $ff
	rst  $38                                         ; $4015: $ff
	rst  $38                                         ; $4016: $ff
	sub  a                                           ; $4017: $97
	ld   de, $1111                                   ; $4018: $11 $11 $11
	ld   de, $fd13                                   ; $401b: $11 $13 $fd
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	rst  $38                                         ; $4020: $ff
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	db   $fd                                         ; $4023: $fd
	add  c                                           ; $4024: $81
	ld   de, $1111                                   ; $4025: $11 $11 $11
	ld   de, $cf19                                   ; $4028: $11 $19 $cf
	rst  $28                                         ; $402b: $ef
	rst  $38                                         ; $402c: $ff
	rst  $38                                         ; $402d: $ff
	rst  $38                                         ; $402e: $ff
	rst  $38                                         ; $402f: $ff
	db   $ec                                         ; $4030: $ec
	ld   de, $1111                                   ; $4031: $11 $11 $11
	ld   de, $5e11                                   ; $4034: $11 $11 $5e
	db   $ec                                         ; $4037: $ec
	rst  $38                                         ; $4038: $ff
	rst  $38                                         ; $4039: $ff
	rst  $38                                         ; $403a: $ff
	rst  $38                                         ; $403b: $ff
	cp   $f5                                         ; $403c: $fe $f5
	ld   de, $1111                                   ; $403e: $11 $11 $11
	ld   de, $ce11                                   ; $4041: $11 $11 $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4044: $cf
	rst  $38                                         ; $4045: $ff
	rst  $38                                         ; $4046: $ff
	rst  $38                                         ; $4047: $ff
	rst  $38                                         ; $4048: $ff
	rst  $38                                         ; $4049: $ff
	and  c                                           ; $404a: $a1
	ld   de, $1111                                   ; $404b: $11 $11 $11
	ld   de, $ad16                                   ; $404e: $11 $16 $ad
	rst  JumpTable                                         ; $4051: $df
	rst  $38                                         ; $4052: $ff
	rst  $38                                         ; $4053: $ff
	rst  $38                                         ; $4054: $ff
	rst  $38                                         ; $4055: $ff
	rst  $38                                         ; $4056: $ff
	ld   [hl], c                                     ; $4057: $71
	ld   de, $1111                                   ; $4058: $11 $11 $11
	ld   de, $b918                                   ; $405b: $11 $18 $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $405e: $cf
	rst  $38                                         ; $405f: $ff
	rst  $38                                         ; $4060: $ff
	rst  $38                                         ; $4061: $ff
	rst  $38                                         ; $4062: $ff
	rst  $38                                         ; $4063: $ff
	ld   b, c                                        ; $4064: $41
	ld   de, $1111                                   ; $4065: $11 $11 $11
	ld   de, $861b                                   ; $4068: $11 $1b $86
	rst  JumpTable                                         ; $406b: $df
	rst  $38                                         ; $406c: $ff
	rst  $38                                         ; $406d: $ff
	rst  $38                                         ; $406e: $ff
	rst  $38                                         ; $406f: $ff
	rst  $38                                         ; $4070: $ff
	ld   d, c                                        ; $4071: $51
	ld   de, $1111                                   ; $4072: $11 $11 $11
	ld   de, $7618                                   ; $4075: $11 $18 $76
	cp   a                                           ; $4078: $bf
	rst  $38                                         ; $4079: $ff
	rst  $38                                         ; $407a: $ff
	rst  $38                                         ; $407b: $ff
	rst  $38                                         ; $407c: $ff
	cp   $64                                         ; $407d: $fe $64
	ld   de, $1111                                   ; $407f: $11 $11 $11
	ld   de, $6615                                   ; $4082: $11 $15 $66
	xor  a                                           ; $4085: $af
	rst  $38                                         ; $4086: $ff
	rst  $38                                         ; $4087: $ff
	rst  $38                                         ; $4088: $ff
	rst  $38                                         ; $4089: $ff
	rst  $38                                         ; $408a: $ff
	and  l                                           ; $408b: $a5
	ld   hl, $1111                                   ; $408c: $21 $11 $11
	ld   de, $7511                                   ; $408f: $11 $11 $75
	adc  a                                           ; $4092: $8f
	rst  $38                                         ; $4093: $ff
	rst  $38                                         ; $4094: $ff
	rst  $38                                         ; $4095: $ff
	rst  $38                                         ; $4096: $ff
	rst  $38                                         ; $4097: $ff
	and  a                                           ; $4098: $a7
	ld   hl, $1111                                   ; $4099: $21 $11 $11
	ld   de, $3711                                   ; $409c: $11 $11 $37
	ld   a, l                                        ; $409f: $7d
	rst  $38                                         ; $40a0: $ff
	rst  $38                                         ; $40a1: $ff
	rst  $38                                         ; $40a2: $ff
	rst  $38                                         ; $40a3: $ff
	rst  $38                                         ; $40a4: $ff
	ld   hl, sp+$51                                  ; $40a5: $f8 $51
	ld   de, $1111                                   ; $40a7: $11 $11 $11
	ld   de, $6935                                   ; $40aa: $11 $35 $69
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	rst  $38                                         ; $40af: $ff
	rst  $38                                         ; $40b0: $ff
	rst  $38                                         ; $40b1: $ff
	db   $fc                                         ; $40b2: $fc
	ld   [hl], d                                     ; $40b3: $72
	ld   de, $1111                                   ; $40b4: $11 $11 $11
	ld   de, $4613                                   ; $40b7: $11 $13 $46
	rst  $28                                         ; $40ba: $ef
	rst  $38                                         ; $40bb: $ff
	rst  $38                                         ; $40bc: $ff
	rst  $38                                         ; $40bd: $ff
	rst  $38                                         ; $40be: $ff
	cp   $b7                                         ; $40bf: $fe $b7
	ld   de, $1111                                   ; $40c1: $11 $11 $11
	ld   de, $3511                                   ; $40c4: $11 $11 $35
	ld   a, [hl]                                     ; $40c7: $7e
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	rst  $38                                         ; $40ca: $ff
	rst  $38                                         ; $40cb: $ff
	rst  $38                                         ; $40cc: $ff
	jp   c, $1151                                    ; $40cd: $da $51 $11

	ld   de, $1111                                   ; $40d0: $11 $11 $11
	inc  hl                                          ; $40d3: $23
	ld   c, b                                        ; $40d4: $48
	rst  $38                                         ; $40d5: $ff
	rst  $38                                         ; $40d6: $ff
	rst  $38                                         ; $40d7: $ff
	rst  $38                                         ; $40d8: $ff
	rst  $38                                         ; $40d9: $ff
	db   $fd                                         ; $40da: $fd
	or   h                                           ; $40db: $b4
	ld   de, $1111                                   ; $40dc: $11 $11 $11
	ld   de, $4611                                   ; $40df: $11 $11 $46
	adc  a                                           ; $40e2: $8f
	rst  $38                                         ; $40e3: $ff
	rst  $38                                         ; $40e4: $ff
	rst  $38                                         ; $40e5: $ff
	rst  $38                                         ; $40e6: $ff
	rst  $38                                         ; $40e7: $ff
	ret                                              ; $40e8: $c9


	ld   d, c                                        ; $40e9: $51
	ld   de, $1111                                   ; $40ea: $11 $11 $11
	ld   de, $4a32                                   ; $40ed: $11 $32 $4a
	rst  $38                                         ; $40f0: $ff
	rst  $38                                         ; $40f1: $ff
	rst  $38                                         ; $40f2: $ff
	rst  $38                                         ; $40f3: $ff
	rst  $38                                         ; $40f4: $ff
	db   $fc                                         ; $40f5: $fc
	or   h                                           ; $40f6: $b4
	ld   hl, $1111                                   ; $40f7: $21 $11 $11
	ld   de, $3211                                   ; $40fa: $11 $11 $32
	xor  a                                           ; $40fd: $af
	rst  $28                                         ; $40fe: $ef
	rst  $38                                         ; $40ff: $ff
	rst  $38                                         ; $4100: $ff
	rst  $38                                         ; $4101: $ff
	rst  $38                                         ; $4102: $ff
	db   $db                                         ; $4103: $db
	ld   d, e                                        ; $4104: $53
	ld   de, $1111                                   ; $4105: $11 $11 $11
	ld   de, $3713                                   ; $4108: $11 $13 $37
	db   $dd                                         ; $410b: $dd
	rst  $38                                         ; $410c: $ff
	rst  $38                                         ; $410d: $ff
	rst  $38                                         ; $410e: $ff
	rst  $38                                         ; $410f: $ff
	cp   $d7                                         ; $4110: $fe $d7
	ld   sp, $1111                                   ; $4112: $31 $11 $11
	ld   de, $2111                                   ; $4115: $11 $11 $21
	ld   e, h                                        ; $4118: $5c
	cp   a                                           ; $4119: $bf
	rst  $38                                         ; $411a: $ff
	rst  $38                                         ; $411b: $ff
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	cp   $96                                         ; $411e: $fe $96
	ld   hl, $1111                                   ; $4120: $21 $11 $11
	ld   de, $2411                                   ; $4123: $11 $11 $24
	adc  h                                           ; $4126: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4127: $cf
	rst  $38                                         ; $4128: $ff
	rst  $38                                         ; $4129: $ff
	rst  $38                                         ; $412a: $ff
	rst  $38                                         ; $412b: $ff
	db   $eb                                         ; $412c: $eb
	ld   [hl], l                                     ; $412d: $75
	ld   de, $1111                                   ; $412e: $11 $11 $11
	ld   de, $3511                                   ; $4131: $11 $11 $35
	sbc  h                                           ; $4134: $9c
	rst  JumpTable                                         ; $4135: $df
	rst  $38                                         ; $4136: $ff
	rst  $38                                         ; $4137: $ff
	rst  $38                                         ; $4138: $ff
	cp   $d9                                         ; $4139: $fe $d9
	add  e                                           ; $413b: $83
	ld   de, $1111                                   ; $413c: $11 $11 $11
	ld   de, $4611                                   ; $413f: $11 $11 $46
	sbc  l                                           ; $4142: $9d
	rst  JumpTable                                         ; $4143: $df
	rst  $38                                         ; $4144: $ff
	rst  $38                                         ; $4145: $ff
	rst  $38                                         ; $4146: $ff
	rst  $38                                         ; $4147: $ff
	xor  c                                           ; $4148: $a9
	ld   [hl], h                                     ; $4149: $74
	ld   de, $1111                                   ; $414a: $11 $11 $11
	ld   de, $3812                                   ; $414d: $11 $12 $38
	xor  d                                           ; $4150: $aa
	rst  JumpTable                                         ; $4151: $df
	rst  $38                                         ; $4152: $ff
	rst  $38                                         ; $4153: $ff
	rst  $38                                         ; $4154: $ff
	xor  $c8                                         ; $4155: $ee $c8
	ld   h, l                                        ; $4157: $65
	ld   hl, $1111                                   ; $4158: $21 $11 $11
	ld   de, $4733                                   ; $415b: $11 $33 $47
	sbc  c                                           ; $415e: $99
	call $ffff                                       ; $415f: $cd $ff $ff
	rst  $38                                         ; $4162: $ff
	db   $ec                                         ; $4163: $ec
	cp   d                                           ; $4164: $ba

Jump_0db_4165:
	ld   [hl], h                                     ; $4165: $74
	ld   b, h                                        ; $4166: $44
	ld   de, $1212                                   ; $4167: $11 $12 $12
	inc  [hl]                                        ; $416a: $34
	ld   d, l                                        ; $416b: $55
	ld   a, c                                        ; $416c: $79
	xor  d                                           ; $416d: $aa
	xor  $df                                         ; $416e: $ee $df
	xor  $cd                                         ; $4170: $ee $cd
	cp   d                                           ; $4172: $ba
	sub  a                                           ; $4173: $97
	ld   [hl], l                                     ; $4174: $75
	ld   d, h                                        ; $4175: $54
	ld   b, h                                        ; $4176: $44
	ld   b, h                                        ; $4177: $44
	ld   b, [hl]                                     ; $4178: $46
	ld   d, [hl]                                     ; $4179: $56
	ld   h, a                                        ; $417a: $67
	adc  b                                           ; $417b: $88
	sbc  d                                           ; $417c: $9a
	cp   e                                           ; $417d: $bb
	cp   h                                           ; $417e: $bc
	cp   d                                           ; $417f: $ba
	cp   e                                           ; $4180: $bb
	sbc  c                                           ; $4181: $99
	sbc  c                                           ; $4182: $99
	adc  c                                           ; $4183: $89
	ld   [hl], a                                     ; $4184: $77
	add  [hl]                                        ; $4185: $86
	ld   h, [hl]                                     ; $4186: $66

Jump_0db_4187:
	ld   h, [hl]                                     ; $4187: $66
	ld   h, [hl]                                     ; $4188: $66
	ld   h, a                                        ; $4189: $67
	ld   h, a                                        ; $418a: $67
	ld   a, b                                        ; $418b: $78
	adc  b                                           ; $418c: $88
	xor  c                                           ; $418d: $a9
	xor  c                                           ; $418e: $a9
	xor  d                                           ; $418f: $aa
	sbc  c                                           ; $4190: $99
	xor  d                                           ; $4191: $aa
	sbc  c                                           ; $4192: $99
	adc  c                                           ; $4193: $89
	add  a                                           ; $4194: $87
	adc  b                                           ; $4195: $88
	halt                                             ; $4196: $76
	ld   [hl], a                                     ; $4197: $77
	ld   h, [hl]                                     ; $4198: $66
	ld   h, a                                        ; $4199: $67
	ld   h, a                                        ; $419a: $67
	ld   [hl], a                                     ; $419b: $77
	add  a                                           ; $419c: $87
	adc  b                                           ; $419d: $88
	sbc  c                                           ; $419e: $99
	sbc  c                                           ; $419f: $99
	xor  c                                           ; $41a0: $a9
	sbc  c                                           ; $41a1: $99
	sbc  c                                           ; $41a2: $99

Call_0db_41a3:
	adc  b                                           ; $41a3: $88
	sbc  c                                           ; $41a4: $99
	adc  b                                           ; $41a5: $88
	add  a                                           ; $41a6: $87
	ld   [hl], a                                     ; $41a7: $77
	ld   [hl], a                                     ; $41a8: $77
	ld   [hl], a                                     ; $41a9: $77
	ld   h, a                                        ; $41aa: $67
	ld   [hl], a                                     ; $41ab: $77
	ld   [hl], a                                     ; $41ac: $77
	adc  b                                           ; $41ad: $88
	sbc  b                                           ; $41ae: $98
	adc  c                                           ; $41af: $89
	adc  c                                           ; $41b0: $89
	sbc  b                                           ; $41b1: $98
	adc  c                                           ; $41b2: $89
	adc  b                                           ; $41b3: $88
	adc  b                                           ; $41b4: $88
	adc  b                                           ; $41b5: $88
	adc  b                                           ; $41b6: $88
	adc  b                                           ; $41b7: $88
	adc  b                                           ; $41b8: $88
	sbc  c                                           ; $41b9: $99
	adc  c                                           ; $41ba: $89
	adc  b                                           ; $41bb: $88
	adc  b                                           ; $41bc: $88
	adc  b                                           ; $41bd: $88
	add  a                                           ; $41be: $87
	adc  b                                           ; $41bf: $88
	ld   [hl], a                                     ; $41c0: $77
	adc  b                                           ; $41c1: $88
	ld   a, b                                        ; $41c2: $78
	ld   a, b                                        ; $41c3: $78
	adc  b                                           ; $41c4: $88
	adc  b                                           ; $41c5: $88
	adc  b                                           ; $41c6: $88
	sbc  b                                           ; $41c7: $98
	adc  b                                           ; $41c8: $88
	sbc  c                                           ; $41c9: $99
	adc  b                                           ; $41ca: $88
	adc  b                                           ; $41cb: $88
	adc  b                                           ; $41cc: $88
	adc  b                                           ; $41cd: $88
	adc  b                                           ; $41ce: $88
	ld   a, b                                        ; $41cf: $78
	adc  b                                           ; $41d0: $88
	adc  b                                           ; $41d1: $88
	adc  b                                           ; $41d2: $88
	adc  b                                           ; $41d3: $88
	adc  b                                           ; $41d4: $88
	adc  b                                           ; $41d5: $88
	adc  b                                           ; $41d6: $88
	adc  b                                           ; $41d7: $88
	sbc  c                                           ; $41d8: $99
	adc  b                                           ; $41d9: $88
	adc  b                                           ; $41da: $88
	adc  b                                           ; $41db: $88
	adc  b                                           ; $41dc: $88
	adc  b                                           ; $41dd: $88
	adc  b                                           ; $41de: $88
	adc  b                                           ; $41df: $88
	adc  b                                           ; $41e0: $88
	adc  b                                           ; $41e1: $88
	adc  b                                           ; $41e2: $88
	adc  b                                           ; $41e3: $88
	adc  b                                           ; $41e4: $88
	adc  b                                           ; $41e5: $88
	adc  b                                           ; $41e6: $88
	adc  b                                           ; $41e7: $88
	adc  b                                           ; $41e8: $88
	adc  b                                           ; $41e9: $88
	adc  b                                           ; $41ea: $88
	adc  b                                           ; $41eb: $88
	adc  b                                           ; $41ec: $88
	adc  b                                           ; $41ed: $88
	adc  b                                           ; $41ee: $88
	adc  b                                           ; $41ef: $88
	adc  b                                           ; $41f0: $88
	sbc  c                                           ; $41f1: $99
	adc  b                                           ; $41f2: $88
	adc  b                                           ; $41f3: $88
	adc  b                                           ; $41f4: $88
	adc  c                                           ; $41f5: $89
	adc  b                                           ; $41f6: $88
	adc  b                                           ; $41f7: $88
	adc  b                                           ; $41f8: $88
	adc  b                                           ; $41f9: $88
	adc  b                                           ; $41fa: $88
	adc  b                                           ; $41fb: $88
	adc  b                                           ; $41fc: $88
	ld   a, b                                        ; $41fd: $78
	adc  b                                           ; $41fe: $88
	adc  b                                           ; $41ff: $88
	add  a                                           ; $4200: $87
	ld   a, b                                        ; $4201: $78
	sbc  b                                           ; $4202: $98
	adc  c                                           ; $4203: $89
	adc  b                                           ; $4204: $88
	adc  b                                           ; $4205: $88
	sbc  c                                           ; $4206: $99
	adc  b                                           ; $4207: $88
	adc  b                                           ; $4208: $88
	adc  b                                           ; $4209: $88
	adc  c                                           ; $420a: $89
	sbc  c                                           ; $420b: $99
	add  a                                           ; $420c: $87
	add  a                                           ; $420d: $87
	adc  b                                           ; $420e: $88
	sbc  c                                           ; $420f: $99
	adc  b                                           ; $4210: $88
	adc  b                                           ; $4211: $88
	adc  b                                           ; $4212: $88
	adc  c                                           ; $4213: $89
	sbc  b                                           ; $4214: $98
	adc  b                                           ; $4215: $88
	ld   [hl], a                                     ; $4216: $77
	adc  c                                           ; $4217: $89
	adc  b                                           ; $4218: $88
	add  a                                           ; $4219: $87
	ld   [hl], a                                     ; $421a: $77
	ld   a, b                                        ; $421b: $78
	ld   [hl], a                                     ; $421c: $77
	adc  c                                           ; $421d: $89
	add  a                                           ; $421e: $87
	ld   a, c                                        ; $421f: $79
	adc  b                                           ; $4220: $88
	sbc  b                                           ; $4221: $98
	sbc  b                                           ; $4222: $98
	ld   a, b                                        ; $4223: $78
	adc  b                                           ; $4224: $88
	adc  b                                           ; $4225: $88
	adc  b                                           ; $4226: $88
	add  a                                           ; $4227: $87
	ld   [hl], a                                     ; $4228: $77
	adc  b                                           ; $4229: $88
	adc  c                                           ; $422a: $89
	sbc  b                                           ; $422b: $98
	adc  c                                           ; $422c: $89
	sbc  b                                           ; $422d: $98
	sbc  b                                           ; $422e: $98
	sbc  c                                           ; $422f: $99
	adc  b                                           ; $4230: $88
	sbc  c                                           ; $4231: $99
	add  a                                           ; $4232: $87
	add  a                                           ; $4233: $87
	ld   a, b                                        ; $4234: $78
	sbc  b                                           ; $4235: $98
	ld   a, b                                        ; $4236: $78
	adc  b                                           ; $4237: $88
	adc  c                                           ; $4238: $89
	sbc  b                                           ; $4239: $98
	adc  b                                           ; $423a: $88
	add  a                                           ; $423b: $87
	ld   [hl], a                                     ; $423c: $77
	ld   [hl], a                                     ; $423d: $77
	ld   [hl], a                                     ; $423e: $77
	ld   [hl], a                                     ; $423f: $77
	ld   [hl], a                                     ; $4240: $77
	ld   a, b                                        ; $4241: $78
	adc  c                                           ; $4242: $89
	adc  c                                           ; $4243: $89
	adc  c                                           ; $4244: $89
	sbc  c                                           ; $4245: $99
	sbc  b                                           ; $4246: $98
	adc  c                                           ; $4247: $89
	add  a                                           ; $4248: $87
	ld   [hl], a                                     ; $4249: $77
	ld   a, b                                        ; $424a: $78
	ld   a, b                                        ; $424b: $78
	ld   [hl], a                                     ; $424c: $77
	add  a                                           ; $424d: $87
	sbc  b                                           ; $424e: $98
	adc  b                                           ; $424f: $88
	adc  c                                           ; $4250: $89
	adc  c                                           ; $4251: $89
	adc  c                                           ; $4252: $89
	adc  b                                           ; $4253: $88
	sbc  b                                           ; $4254: $98
	add  a                                           ; $4255: $87
	ld   [hl], a                                     ; $4256: $77
	adc  b                                           ; $4257: $88
	sbc  c                                           ; $4258: $99
	sbc  b                                           ; $4259: $98
	ld   a, b                                        ; $425a: $78
	adc  b                                           ; $425b: $88
	sbc  b                                           ; $425c: $98
	add  a                                           ; $425d: $87
	ld   h, a                                        ; $425e: $67
	ld   [hl], a                                     ; $425f: $77
	adc  b                                           ; $4260: $88
	sub  a                                           ; $4261: $97
	adc  b                                           ; $4262: $88
	adc  b                                           ; $4263: $88
	adc  b                                           ; $4264: $88
	adc  b                                           ; $4265: $88
	ld   a, b                                        ; $4266: $78
	adc  b                                           ; $4267: $88
	sbc  b                                           ; $4268: $98
	add  a                                           ; $4269: $87
	add  a                                           ; $426a: $87
	adc  b                                           ; $426b: $88
	ld   a, b                                        ; $426c: $78
	adc  b                                           ; $426d: $88
	adc  b                                           ; $426e: $88
	sbc  c                                           ; $426f: $99
	adc  b                                           ; $4270: $88
	sbc  c                                           ; $4271: $99
	sbc  b                                           ; $4272: $98
	adc  b                                           ; $4273: $88
	add  a                                           ; $4274: $87
	ld   a, c                                        ; $4275: $79
	adc  b                                           ; $4276: $88
	halt                                             ; $4277: $76
	ld   [hl], a                                     ; $4278: $77
	add  a                                           ; $4279: $87
	sbc  c                                           ; $427a: $99
	adc  b                                           ; $427b: $88
	ld   a, c                                        ; $427c: $79
	sbc  c                                           ; $427d: $99
	adc  b                                           ; $427e: $88
	adc  b                                           ; $427f: $88
	add  a                                           ; $4280: $87
	adc  b                                           ; $4281: $88
	sbc  b                                           ; $4282: $98
	sub  a                                           ; $4283: $97
	ld   a, b                                        ; $4284: $78
	adc  b                                           ; $4285: $88
	adc  c                                           ; $4286: $89
	adc  c                                           ; $4287: $89
	adc  b                                           ; $4288: $88
	sbc  b                                           ; $4289: $98
	sbc  c                                           ; $428a: $99
	adc  b                                           ; $428b: $88
	sbc  b                                           ; $428c: $98
	adc  c                                           ; $428d: $89
	ld   a, c                                        ; $428e: $79
	ld   a, b                                        ; $428f: $78
	add  a                                           ; $4290: $87
	add  a                                           ; $4291: $87
	sub  a                                           ; $4292: $97
	adc  b                                           ; $4293: $88
	adc  b                                           ; $4294: $88
	adc  c                                           ; $4295: $89
	ld   a, b                                        ; $4296: $78
	adc  b                                           ; $4297: $88
	adc  b                                           ; $4298: $88
	add  a                                           ; $4299: $87
	adc  b                                           ; $429a: $88
	sbc  b                                           ; $429b: $98
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	ld   a, c                                        ; $429e: $79
	sbc  b                                           ; $429f: $98
	sub  a                                           ; $42a0: $97
	adc  b                                           ; $42a1: $88
	sbc  b                                           ; $42a2: $98
	adc  b                                           ; $42a3: $88
	ld   a, b                                        ; $42a4: $78
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88
	add  a                                           ; $42a7: $87
	add  a                                           ; $42a8: $87
	adc  c                                           ; $42a9: $89
	adc  b                                           ; $42aa: $88
	adc  b                                           ; $42ab: $88
	adc  b                                           ; $42ac: $88
	adc  b                                           ; $42ad: $88
	ld   a, b                                        ; $42ae: $78
	adc  b                                           ; $42af: $88
	sbc  b                                           ; $42b0: $98
	sub  a                                           ; $42b1: $97
	adc  b                                           ; $42b2: $88
	adc  b                                           ; $42b3: $88
	ld   a, c                                        ; $42b4: $79
	ld   a, c                                        ; $42b5: $79
	adc  b                                           ; $42b6: $88
	sub  a                                           ; $42b7: $97
	sub  a                                           ; $42b8: $97
	add  a                                           ; $42b9: $87
	sbc  c                                           ; $42ba: $99
	ld   a, b                                        ; $42bb: $78
	ld   a, b                                        ; $42bc: $78
	ld   a, b                                        ; $42bd: $78
	adc  b                                           ; $42be: $88
	sbc  b                                           ; $42bf: $98
	adc  b                                           ; $42c0: $88
	adc  b                                           ; $42c1: $88
	add  a                                           ; $42c2: $87
	sbc  b                                           ; $42c3: $98
	adc  b                                           ; $42c4: $88
	adc  b                                           ; $42c5: $88
	ld   a, b                                        ; $42c6: $78
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	adc  c                                           ; $42c9: $89
	sub  a                                           ; $42ca: $97
	sbc  b                                           ; $42cb: $98
	adc  b                                           ; $42cc: $88
	adc  b                                           ; $42cd: $88
	adc  b                                           ; $42ce: $88
	adc  b                                           ; $42cf: $88
	adc  b                                           ; $42d0: $88
	adc  b                                           ; $42d1: $88
	adc  c                                           ; $42d2: $89
	adc  b                                           ; $42d3: $88
	adc  b                                           ; $42d4: $88
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	adc  b                                           ; $42d7: $88
	adc  b                                           ; $42d8: $88
	sbc  c                                           ; $42d9: $99
	adc  b                                           ; $42da: $88
	adc  c                                           ; $42db: $89
	adc  b                                           ; $42dc: $88
	adc  b                                           ; $42dd: $88
	adc  b                                           ; $42de: $88
	adc  b                                           ; $42df: $88
	adc  b                                           ; $42e0: $88
	adc  b                                           ; $42e1: $88
	adc  b                                           ; $42e2: $88
	adc  b                                           ; $42e3: $88
	adc  b                                           ; $42e4: $88
	adc  b                                           ; $42e5: $88
	adc  c                                           ; $42e6: $89
	ld   a, c                                        ; $42e7: $79
	adc  b                                           ; $42e8: $88
	sbc  b                                           ; $42e9: $98
	adc  b                                           ; $42ea: $88
	adc  b                                           ; $42eb: $88
	sbc  b                                           ; $42ec: $98
	adc  b                                           ; $42ed: $88
	adc  b                                           ; $42ee: $88
	adc  b                                           ; $42ef: $88
	ld   a, c                                        ; $42f0: $79
	adc  b                                           ; $42f1: $88
	sub  a                                           ; $42f2: $97
	adc  b                                           ; $42f3: $88
	adc  b                                           ; $42f4: $88
	adc  c                                           ; $42f5: $89
	ld   a, b                                        ; $42f6: $78
	adc  b                                           ; $42f7: $88
	adc  b                                           ; $42f8: $88
	sub  a                                           ; $42f9: $97
	adc  b                                           ; $42fa: $88
	adc  b                                           ; $42fb: $88
	adc  b                                           ; $42fc: $88
	sbc  b                                           ; $42fd: $98
	adc  b                                           ; $42fe: $88
	adc  b                                           ; $42ff: $88
	adc  b                                           ; $4300: $88
	adc  b                                           ; $4301: $88
	adc  b                                           ; $4302: $88
	adc  b                                           ; $4303: $88
	adc  b                                           ; $4304: $88
	adc  b                                           ; $4305: $88
	adc  b                                           ; $4306: $88
	sbc  b                                           ; $4307: $98
	adc  b                                           ; $4308: $88
	adc  b                                           ; $4309: $88
	adc  b                                           ; $430a: $88
	adc  c                                           ; $430b: $89
	adc  b                                           ; $430c: $88
	adc  b                                           ; $430d: $88
	adc  b                                           ; $430e: $88
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	adc  b                                           ; $4311: $88
	adc  b                                           ; $4312: $88
	adc  b                                           ; $4313: $88
	adc  b                                           ; $4314: $88
	adc  b                                           ; $4315: $88
	adc  b                                           ; $4316: $88
	adc  b                                           ; $4317: $88
	adc  b                                           ; $4318: $88
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	adc  b                                           ; $431b: $88
	adc  b                                           ; $431c: $88
	adc  b                                           ; $431d: $88
	adc  b                                           ; $431e: $88
	adc  b                                           ; $431f: $88
	adc  b                                           ; $4320: $88
	adc  b                                           ; $4321: $88
	adc  b                                           ; $4322: $88
	adc  c                                           ; $4323: $89
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	adc  b                                           ; $4326: $88
	adc  b                                           ; $4327: $88
	adc  b                                           ; $4328: $88
	adc  b                                           ; $4329: $88
	adc  b                                           ; $432a: $88
	adc  b                                           ; $432b: $88
	adc  b                                           ; $432c: $88
	adc  b                                           ; $432d: $88
	adc  b                                           ; $432e: $88
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	adc  b                                           ; $4331: $88
	adc  b                                           ; $4332: $88
	adc  b                                           ; $4333: $88
	adc  b                                           ; $4334: $88
	adc  b                                           ; $4335: $88
	adc  b                                           ; $4336: $88
	adc  b                                           ; $4337: $88
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	adc  b                                           ; $433b: $88
	adc  b                                           ; $433c: $88
	adc  b                                           ; $433d: $88
	adc  b                                           ; $433e: $88
	adc  b                                           ; $433f: $88
	adc  b                                           ; $4340: $88
	adc  b                                           ; $4341: $88
	adc  b                                           ; $4342: $88
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	adc  b                                           ; $4345: $88
	adc  b                                           ; $4346: $88
	adc  b                                           ; $4347: $88
	adc  b                                           ; $4348: $88
	adc  b                                           ; $4349: $88
	adc  b                                           ; $434a: $88
	adc  b                                           ; $434b: $88
	adc  b                                           ; $434c: $88
	adc  b                                           ; $434d: $88
	adc  b                                           ; $434e: $88
	adc  b                                           ; $434f: $88
	adc  b                                           ; $4350: $88
	adc  b                                           ; $4351: $88
	adc  b                                           ; $4352: $88
	adc  b                                           ; $4353: $88
	adc  b                                           ; $4354: $88
	adc  b                                           ; $4355: $88
	adc  b                                           ; $4356: $88
	adc  b                                           ; $4357: $88
	adc  b                                           ; $4358: $88
	adc  b                                           ; $4359: $88
	adc  b                                           ; $435a: $88
	adc  b                                           ; $435b: $88
	adc  b                                           ; $435c: $88
	adc  b                                           ; $435d: $88
	adc  b                                           ; $435e: $88
	adc  b                                           ; $435f: $88
	adc  b                                           ; $4360: $88
	adc  b                                           ; $4361: $88
	adc  b                                           ; $4362: $88
	adc  b                                           ; $4363: $88
	adc  b                                           ; $4364: $88
	adc  b                                           ; $4365: $88
	adc  b                                           ; $4366: $88
	adc  b                                           ; $4367: $88
	adc  b                                           ; $4368: $88
	adc  b                                           ; $4369: $88
	adc  b                                           ; $436a: $88
	adc  b                                           ; $436b: $88
	adc  b                                           ; $436c: $88
	adc  b                                           ; $436d: $88
	adc  b                                           ; $436e: $88
	adc  b                                           ; $436f: $88
	adc  b                                           ; $4370: $88
	adc  b                                           ; $4371: $88
	adc  b                                           ; $4372: $88
	adc  b                                           ; $4373: $88
	adc  b                                           ; $4374: $88

Jump_0db_4375:
	adc  b                                           ; $4375: $88
	adc  b                                           ; $4376: $88
	adc  b                                           ; $4377: $88
	adc  b                                           ; $4378: $88
	adc  b                                           ; $4379: $88
	adc  b                                           ; $437a: $88
	adc  b                                           ; $437b: $88
	adc  b                                           ; $437c: $88
	adc  b                                           ; $437d: $88
	adc  b                                           ; $437e: $88
	adc  b                                           ; $437f: $88
	adc  b                                           ; $4380: $88
	adc  b                                           ; $4381: $88
	adc  b                                           ; $4382: $88
	adc  b                                           ; $4383: $88
	adc  b                                           ; $4384: $88
	adc  b                                           ; $4385: $88
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	adc  b                                           ; $438a: $88
	adc  b                                           ; $438b: $88
	adc  b                                           ; $438c: $88
	adc  b                                           ; $438d: $88
	adc  b                                           ; $438e: $88
	adc  b                                           ; $438f: $88
	adc  b                                           ; $4390: $88
	adc  b                                           ; $4391: $88
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
	adc  b                                           ; $4394: $88
	adc  b                                           ; $4395: $88

Jump_0db_4396:
	adc  b                                           ; $4396: $88
	adc  b                                           ; $4397: $88
	adc  b                                           ; $4398: $88
	adc  b                                           ; $4399: $88
	adc  b                                           ; $439a: $88
	adc  b                                           ; $439b: $88
	adc  b                                           ; $439c: $88
	adc  b                                           ; $439d: $88
	adc  b                                           ; $439e: $88
	adc  b                                           ; $439f: $88
	adc  b                                           ; $43a0: $88
	adc  b                                           ; $43a1: $88
	adc  b                                           ; $43a2: $88
	adc  b                                           ; $43a3: $88
	adc  b                                           ; $43a4: $88
	adc  b                                           ; $43a5: $88
	adc  b                                           ; $43a6: $88
	adc  b                                           ; $43a7: $88
	adc  b                                           ; $43a8: $88
	adc  b                                           ; $43a9: $88
	adc  b                                           ; $43aa: $88
	adc  b                                           ; $43ab: $88
	adc  b                                           ; $43ac: $88
	adc  b                                           ; $43ad: $88
	adc  b                                           ; $43ae: $88
	adc  b                                           ; $43af: $88
	adc  b                                           ; $43b0: $88
	adc  b                                           ; $43b1: $88
	adc  b                                           ; $43b2: $88
	adc  b                                           ; $43b3: $88
	adc  b                                           ; $43b4: $88
	adc  b                                           ; $43b5: $88
	adc  b                                           ; $43b6: $88
	adc  b                                           ; $43b7: $88
	adc  b                                           ; $43b8: $88
	adc  b                                           ; $43b9: $88
	adc  b                                           ; $43ba: $88
	adc  b                                           ; $43bb: $88
	adc  b                                           ; $43bc: $88
	adc  b                                           ; $43bd: $88
	adc  b                                           ; $43be: $88
	adc  b                                           ; $43bf: $88
	adc  b                                           ; $43c0: $88
	adc  b                                           ; $43c1: $88
	adc  b                                           ; $43c2: $88
	adc  b                                           ; $43c3: $88
	adc  b                                           ; $43c4: $88
	adc  b                                           ; $43c5: $88
	adc  b                                           ; $43c6: $88
	adc  b                                           ; $43c7: $88
	adc  b                                           ; $43c8: $88
	adc  b                                           ; $43c9: $88
	adc  b                                           ; $43ca: $88
	adc  b                                           ; $43cb: $88
	adc  b                                           ; $43cc: $88
	adc  b                                           ; $43cd: $88
	adc  b                                           ; $43ce: $88
	adc  b                                           ; $43cf: $88
	adc  b                                           ; $43d0: $88
	adc  b                                           ; $43d1: $88
	adc  b                                           ; $43d2: $88
	adc  b                                           ; $43d3: $88
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
	adc  b                                           ; $43db: $88
	adc  b                                           ; $43dc: $88
	adc  b                                           ; $43dd: $88
	adc  b                                           ; $43de: $88
	adc  b                                           ; $43df: $88
	adc  b                                           ; $43e0: $88
	adc  b                                           ; $43e1: $88
	adc  b                                           ; $43e2: $88
	adc  b                                           ; $43e3: $88
	adc  b                                           ; $43e4: $88
	adc  b                                           ; $43e5: $88
	adc  b                                           ; $43e6: $88
	adc  b                                           ; $43e7: $88
	adc  b                                           ; $43e8: $88
	adc  b                                           ; $43e9: $88
	adc  b                                           ; $43ea: $88
	adc  b                                           ; $43eb: $88
	adc  b                                           ; $43ec: $88
	adc  b                                           ; $43ed: $88
	adc  b                                           ; $43ee: $88
	adc  b                                           ; $43ef: $88
	adc  b                                           ; $43f0: $88
	adc  b                                           ; $43f1: $88
	adc  b                                           ; $43f2: $88
	adc  b                                           ; $43f3: $88
	adc  b                                           ; $43f4: $88
	adc  b                                           ; $43f5: $88
	adc  b                                           ; $43f6: $88
	adc  b                                           ; $43f7: $88
	adc  b                                           ; $43f8: $88
	adc  b                                           ; $43f9: $88
	adc  b                                           ; $43fa: $88
	adc  b                                           ; $43fb: $88
	adc  b                                           ; $43fc: $88
	adc  b                                           ; $43fd: $88
	adc  b                                           ; $43fe: $88
	adc  b                                           ; $43ff: $88
	adc  b                                           ; $4400: $88
	adc  b                                           ; $4401: $88
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
	adc  b                                           ; $4429: $88
	adc  b                                           ; $442a: $88
	adc  b                                           ; $442b: $88
	adc  b                                           ; $442c: $88
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
	adc  b                                           ; $4472: $88
	adc  b                                           ; $4473: $88
	adc  b                                           ; $4474: $88

Jump_0db_4475:
	adc  b                                           ; $4475: $88
	adc  b                                           ; $4476: $88
	adc  c                                           ; $4477: $89
	sbc  b                                           ; $4478: $98
	adc  b                                           ; $4479: $88
	adc  b                                           ; $447a: $88
	adc  b                                           ; $447b: $88
	adc  b                                           ; $447c: $88
	adc  b                                           ; $447d: $88
	adc  b                                           ; $447e: $88
	adc  b                                           ; $447f: $88
	adc  b                                           ; $4480: $88
	adc  b                                           ; $4481: $88
	adc  b                                           ; $4482: $88
	sbc  c                                           ; $4483: $99
	adc  b                                           ; $4484: $88
	sbc  c                                           ; $4485: $99
	sbc  b                                           ; $4486: $98
	adc  b                                           ; $4487: $88
	adc  b                                           ; $4488: $88
	adc  b                                           ; $4489: $88
	sbc  b                                           ; $448a: $98
	ld   [hl], a                                     ; $448b: $77
	adc  c                                           ; $448c: $89
	add  a                                           ; $448d: $87
	adc  b                                           ; $448e: $88
	adc  b                                           ; $448f: $88
	sbc  b                                           ; $4490: $98
	adc  b                                           ; $4491: $88
	adc  b                                           ; $4492: $88
	adc  b                                           ; $4493: $88
	sbc  c                                           ; $4494: $99
	adc  b                                           ; $4495: $88
	adc  b                                           ; $4496: $88
	adc  b                                           ; $4497: $88
	adc  b                                           ; $4498: $88
	adc  b                                           ; $4499: $88
	adc  b                                           ; $449a: $88
	adc  c                                           ; $449b: $89
	sbc  c                                           ; $449c: $99
	sbc  b                                           ; $449d: $98
	adc  c                                           ; $449e: $89
	ld   [hl], a                                     ; $449f: $77
	adc  d                                           ; $44a0: $8a
	add  a                                           ; $44a1: $87
	ld   [hl], a                                     ; $44a2: $77
	ld   [hl], a                                     ; $44a3: $77
	ld   [hl], a                                     ; $44a4: $77
	add  a                                           ; $44a5: $87
	ld   [hl], a                                     ; $44a6: $77
	ld   a, b                                        ; $44a7: $78
	adc  b                                           ; $44a8: $88
	adc  b                                           ; $44a9: $88
	adc  b                                           ; $44aa: $88
	adc  c                                           ; $44ab: $89
	sbc  c                                           ; $44ac: $99
	sbc  c                                           ; $44ad: $99
	sbc  d                                           ; $44ae: $9a
	sbc  c                                           ; $44af: $99
	adc  b                                           ; $44b0: $88
	adc  b                                           ; $44b1: $88
	ld   [hl], a                                     ; $44b2: $77
	ld   [hl], a                                     ; $44b3: $77
	ld   h, [hl]                                     ; $44b4: $66
	ld   d, l                                        ; $44b5: $55
	ld   [hl], a                                     ; $44b6: $77
	dec  [hl]                                        ; $44b7: $35
	ld   h, [hl]                                     ; $44b8: $66
	ld   h, [hl]                                     ; $44b9: $66
	add  [hl]                                        ; $44ba: $86
	sbc  d                                           ; $44bb: $9a
	sbc  b                                           ; $44bc: $98
	cp   l                                           ; $44bd: $bd
	xor  d                                           ; $44be: $aa
	cp   d                                           ; $44bf: $ba
	cp   h                                           ; $44c0: $bc
	cp   c                                           ; $44c1: $b9
	xor  e                                           ; $44c2: $ab
	sbc  c                                           ; $44c3: $99
	sbc  b                                           ; $44c4: $98
	halt                                             ; $44c5: $76
	ld   b, d                                        ; $44c6: $42
	ld   de, $5116                                   ; $44c7: $11 $16 $51
	scf                                              ; $44ca: $37
	add  a                                           ; $44cb: $87
	xor  h                                           ; $44cc: $ac
	xor  a                                           ; $44cd: $af
	db   $fc                                         ; $44ce: $fc
	cp   h                                           ; $44cf: $bc
	sub  $97                                         ; $44d0: $d6 $97
	ld   h, a                                        ; $44d2: $67
	sbc  b                                           ; $44d3: $98
	ld   l, h                                        ; $44d4: $6c
	jp   z, $cbbd                                    ; $44d5: $ca $bd $cb

	rst  ToBoot                                         ; $44d8: $c7
	ld   [hl-], a                                    ; $44d9: $32
	ld   de, $6111                                   ; $44da: $11 $11 $61
	inc  d                                           ; $44dd: $14
	sbc  [hl]                                        ; $44de: $9e
	rst  $38                                         ; $44df: $ff
	rst  $38                                         ; $44e0: $ff
	rst  $38                                         ; $44e1: $ff
	reti                                             ; $44e2: $d9


	or   a                                           ; $44e3: $b7
	ld   de, $3311                                   ; $44e4: $11 $11 $33
	ld   c, c                                        ; $44e7: $49
	rst  $38                                         ; $44e8: $ff
	rst  $38                                         ; $44e9: $ff
	rst  $38                                         ; $44ea: $ff
	rst  $38                                         ; $44eb: $ff
	and  l                                           ; $44ec: $a5
	ld   de, $1111                                   ; $44ed: $11 $11 $11
	inc  de                                          ; $44f0: $13
	rla                                              ; $44f1: $17
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	rst  $38                                         ; $44f4: $ff
	rst  $38                                         ; $44f5: $ff
	ld   sp, $1111                                   ; $44f6: $31 $11 $11
	ld   de, $ff6a                                   ; $44f9: $11 $6a $ff
	rst  $38                                         ; $44fc: $ff
	rst  $38                                         ; $44fd: $ff
	rst  $38                                         ; $44fe: $ff
	or   $11                                         ; $44ff: $f6 $11
	ld   de, $1111                                   ; $4501: $11 $11 $11
	xor  a                                           ; $4504: $af
	rst  $28                                         ; $4505: $ef
	rst  $38                                         ; $4506: $ff
	rst  $38                                         ; $4507: $ff
	ld   a, [$11b3]                                  ; $4508: $fa $b3 $11
	ld   de, $1811                                   ; $450b: $11 $11 $18
	rst  $38                                         ; $450e: $ff
	rst  $38                                         ; $450f: $ff
	rst  $38                                         ; $4510: $ff
	rst  $38                                         ; $4511: $ff
	ld   [hl], e                                     ; $4512: $73
	ld   de, $1111                                   ; $4513: $11 $11 $11
	ld   de, $ff16                                   ; $4516: $11 $16 $ff
	rst  $38                                         ; $4519: $ff
	rst  $38                                         ; $451a: $ff
	db   $fc                                         ; $451b: $fc
	ld   hl, $1111                                   ; $451c: $21 $11 $11
	ld   [de], a                                     ; $451f: $12
	ld   a, [hl]                                     ; $4520: $7e
	rst  $38                                         ; $4521: $ff
	rst  $38                                         ; $4522: $ff
	rst  $38                                         ; $4523: $ff
	db   $eb                                         ; $4524: $eb
	sub  [hl]                                        ; $4525: $96
	ld   sp, $4422                                   ; $4526: $31 $22 $44
	ld   de, $1111                                   ; $4529: $11 $11 $11
	cp   a                                           ; $452c: $bf
	db   $ec                                         ; $452d: $ec
	rst  $38                                         ; $452e: $ff
	rst  $38                                         ; $452f: $ff
	sub  d                                           ; $4530: $92
	inc  [hl]                                        ; $4531: $34
	ld   de, $5b11                                   ; $4532: $11 $11 $5b
	xor  $ff                                         ; $4535: $ee $ff
	rst  $38                                         ; $4537: $ff
	ld   a, [$84aa]                                  ; $4538: $fa $aa $84
	ld   b, l                                        ; $453b: $45
	ld   d, [hl]                                     ; $453c: $56
	ld   de, $1111                                   ; $453d: $11 $11 $11
	adc  a                                           ; $4540: $8f
	rst  $38                                         ; $4541: $ff
	rst  $38                                         ; $4542: $ff
	rst  $38                                         ; $4543: $ff
	sub  c                                           ; $4544: $91
	ld   de, $1111                                   ; $4545: $11 $11 $11
	sbc  a                                           ; $4548: $9f
	rst  $38                                         ; $4549: $ff
	rst  $38                                         ; $454a: $ff
	rst  $38                                         ; $454b: $ff
	or   e                                           ; $454c: $b3
	ld   [hl], $9a                                   ; $454d: $36 $9a
	sbc  c                                           ; $454f: $99
	adc  d                                           ; $4550: $8a
	ld   b, c                                        ; $4551: $41
	ld   de, $1c11                                   ; $4552: $11 $11 $1c
	rst  $38                                         ; $4555: $ff
	rst  $38                                         ; $4556: $ff
	rst  $38                                         ; $4557: $ff
	ldh  a, [c]                                      ; $4558: $f2
	ld   de, $1111                                   ; $4559: $11 $11 $11
	ld   l, a                                        ; $455c: $6f
	rst  $38                                         ; $455d: $ff
	rst  $38                                         ; $455e: $ff
	rst  $38                                         ; $455f: $ff
	pop  bc                                          ; $4560: $c1
	ld   de, $fdae                                   ; $4561: $11 $ae $fd
	sbc  c                                           ; $4564: $99
	ld   h, d                                        ; $4565: $62
	ld   de, $1111                                   ; $4566: $11 $11 $11
	rst  $38                                         ; $4569: $ff
	rst  $38                                         ; $456a: $ff
	rst  $38                                         ; $456b: $ff
	and  $11                                         ; $456c: $e6 $11
	ld   de, $bf25                                   ; $456e: $11 $25 $bf
	rst  $38                                         ; $4571: $ff
	rst  $38                                         ; $4572: $ff
	and  l                                           ; $4573: $a5
	ld   d, c                                        ; $4574: $51
	ld   de, $ff8f                                   ; $4575: $11 $8f $ff
	and  $31                                         ; $4578: $e6 $31
	ld   de, $1111                                   ; $457a: $11 $11 $11
	rra                                              ; $457d: $1f
	rst  $38                                         ; $457e: $ff
	rst  $38                                         ; $457f: $ff
	and  h                                           ; $4580: $a4
	ld   de, $1d11                                   ; $4581: $11 $11 $1d
	rst  $38                                         ; $4584: $ff
	rst  $38                                         ; $4585: $ff
	rst  $38                                         ; $4586: $ff
	pop  bc                                          ; $4587: $c1
	ld   de, $bf13                                   ; $4588: $11 $13 $bf
	rst  $38                                         ; $458b: $ff
	push af                                          ; $458c: $f5
	ld   de, $2113                                   ; $458d: $11 $13 $21
	ld   de, rAUD1LEN                                   ; $4590: $11 $11 $ff
	rst  $38                                         ; $4593: $ff
	db   $d3                                         ; $4594: $d3
	ld   de, $1111                                   ; $4595: $11 $11 $11
	rst  $38                                         ; $4598: $ff
	rst  $38                                         ; $4599: $ff
	rst  $38                                         ; $459a: $ff
	xor  c                                           ; $459b: $a9
	ld   de, $cf13                                   ; $459c: $11 $13 $cf
	rst  $38                                         ; $459f: $ff
	ld   hl, sp+$11                                  ; $45a0: $f8 $11
	ld   [de], a                                     ; $45a2: $12
	cp   c                                           ; $45a3: $b9
	ld   de, $1111                                   ; $45a4: $11 $11 $11
	rst  $38                                         ; $45a7: $ff
	rst  $38                                         ; $45a8: $ff
	and  c                                           ; $45a9: $a1
	ld   de, $1311                                   ; $45aa: $11 $11 $13
	rst  $38                                         ; $45ad: $ff
	rst  $38                                         ; $45ae: $ff
	ld   sp, hl                                      ; $45af: $f9
	ld   l, b                                        ; $45b0: $68
	ld   b, c                                        ; $45b1: $41
	ld   a, [de]                                     ; $45b2: $1a
	rst  $38                                         ; $45b3: $ff
	rst  $38                                         ; $45b4: $ff
	ld   h, c                                        ; $45b5: $61
	ld   de, $c83b                                   ; $45b6: $11 $3b $c8
	ld   de, $1111                                   ; $45b9: $11 $11 $11
	rst  $38                                         ; $45bc: $ff
	rst  $38                                         ; $45bd: $ff
	add  c                                           ; $45be: $81
	ld   de, $1811                                   ; $45bf: $11 $11 $18
	rst  $38                                         ; $45c2: $ff
	rst  $38                                         ; $45c3: $ff
	pop  af                                          ; $45c4: $f1
	rla                                              ; $45c5: $17
	ld   sp, $ff3f                                   ; $45c6: $31 $3f $ff
	rst  $38                                         ; $45c9: $ff
	ld   de, $9f11                                   ; $45ca: $11 $11 $9f
	db   $e4                                         ; $45cd: $e4
	ld   de, $1111                                   ; $45ce: $11 $11 $11
	rst  $38                                         ; $45d1: $ff
	rst  $38                                         ; $45d2: $ff
	ld   sp, $7111                                   ; $45d3: $31 $11 $71
	inc  e                                           ; $45d6: $1c
	rst  $38                                         ; $45d7: $ff
	rst  $38                                         ; $45d8: $ff
	ld   [hl], c                                     ; $45d9: $71
	jr   jr_0db_4650                                 ; $45da: $18 $74

	sbc  a                                           ; $45dc: $9f
	rst  $38                                         ; $45dd: $ff
	or   $11                                         ; $45de: $f6 $11
	jr   @+$01                                       ; $45e0: $18 $ff

	or   c                                           ; $45e2: $b1
	ld   de, $1611                                   ; $45e3: $11 $11 $16
	rst  $38                                         ; $45e6: $ff
	rst  $38                                         ; $45e7: $ff
	ld   de, $c111                                   ; $45e8: $11 $11 $c1
	rra                                              ; $45eb: $1f
	rst  $38                                         ; $45ec: $ff
	rst  $38                                         ; $45ed: $ff
	ld   de, $b81b                                   ; $45ee: $11 $1b $b8
	rst  $38                                         ; $45f1: $ff
	rst  $38                                         ; $45f2: $ff
	pop  af                                          ; $45f3: $f1
	ld   de, $ff2f                                   ; $45f4: $11 $2f $ff
	ld   h, c                                        ; $45f7: $61
	ld   de, $1e11                                   ; $45f8: $11 $11 $1e
	rst  $38                                         ; $45fb: $ff
	db   $fd                                         ; $45fc: $fd
	ld   de, $d114                                   ; $45fd: $11 $14 $d1
	ccf                                              ; $4600: $3f
	rst  $38                                         ; $4601: $ff
	cp   $11                                         ; $4602: $fe $11
	dec  e                                           ; $4604: $1d
	adc  $ff                                         ; $4605: $ce $ff
	rst  $38                                         ; $4607: $ff
	ld   h, c                                        ; $4608: $61
	ld   de, $ffcf                                   ; $4609: $11 $cf $ff
	ld   de, $1111                                   ; $460c: $11 $11 $11
	rra                                              ; $460f: $1f
	rst  $38                                         ; $4610: $ff
	pop  af                                          ; $4611: $f1
	ld   de, $311f                                   ; $4612: $11 $1f $31
	rst  $28                                         ; $4615: $ef
	rst  $38                                         ; $4616: $ff
	db   $f4                                         ; $4617: $f4
	ld   de, $ff8d                                   ; $4618: $11 $8d $ff
	rst  $38                                         ; $461b: $ff
	cp   $11                                         ; $461c: $fe $11
	dec  d                                           ; $461e: $15
	rst  $38                                         ; $461f: $ff
	or   $11                                         ; $4620: $f6 $11
	ld   de, rAUD1LEN                                   ; $4622: $11 $11 $ff
	rst  $38                                         ; $4625: $ff
	pop  hl                                          ; $4626: $e1
	ld   de, $165f                                   ; $4627: $11 $5f $16
	rst  $38                                         ; $462a: $ff
	rst  $38                                         ; $462b: $ff
	pop  hl                                          ; $462c: $e1
	ld   [de], a                                     ; $462d: $12
	cp   a                                           ; $462e: $bf
	rst  $38                                         ; $462f: $ff
	rst  $38                                         ; $4630: $ff
	ldh  a, [c]                                      ; $4631: $f2
	ld   de, $ff1f                                   ; $4632: $11 $1f $ff
	pop  bc                                          ; $4635: $c1
	ld   de, $1911                                   ; $4636: $11 $11 $19
	rst  $38                                         ; $4639: $ff
	rst  $38                                         ; $463a: $ff
	ld   de, $f111                                   ; $463b: $11 $11 $f1
	cpl                                              ; $463e: $2f
	rst  $38                                         ; $463f: $ff
	rst  $38                                         ; $4640: $ff
	ld   de, $ef1a                                   ; $4641: $11 $1a $ef
	rst  $38                                         ; $4644: $ff
	cp   $41                                         ; $4645: $fe $41
	ld   de, $fcdf                                   ; $4647: $11 $df $fc
	ld   de, $1111                                   ; $464a: $11 $11 $11
	xor  a                                           ; $464d: $af
	rst  $38                                         ; $464e: $ff
	pop  af                                          ; $464f: $f1

jr_0db_4650:
	ld   de, $150f                                   ; $4650: $11 $0f $15
	rst  $38                                         ; $4653: $ff
	rst  $38                                         ; $4654: $ff
	pop  hl                                          ; $4655: $e1
	ld   de, $ff8f                                   ; $4656: $11 $8f $ff
	rst  $38                                         ; $4659: $ff
	or   c                                           ; $465a: $b1
	ld   de, $ff6f                                   ; $465b: $11 $6f $ff
	ld   [hl], c                                     ; $465e: $71
	ld   de, $1d11                                   ; $465f: $11 $11 $1d
	rst  $38                                         ; $4662: $ff
	rst  $38                                         ; $4663: $ff
	ld   de, $f114                                   ; $4664: $11 $14 $f1
	xor  a                                           ; $4667: $af
	rst  $38                                         ; $4668: $ff
	cp   $11                                         ; $4669: $fe $11
	daa                                              ; $466b: $27
	rst  $38                                         ; $466c: $ff
	rst  $38                                         ; $466d: $ff
	ret  c                                           ; $466e: $d8

	ld   de, $ff18                                   ; $466f: $11 $18 $ff
	db   $e4                                         ; $4672: $e4
	ld   de, $1111                                   ; $4673: $11 $11 $11
	rst  $38                                         ; $4676: $ff
	rst  $38                                         ; $4677: $ff
	or   c                                           ; $4678: $b1
	ld   de, $1fac                                   ; $4679: $11 $ac $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $467c: $cf
	rst  $38                                         ; $467d: $ff
	and  c                                           ; $467e: $a1
	ld   [de], a                                     ; $467f: $12
	sbc  a                                           ; $4680: $9f
	rst  $38                                         ; $4681: $ff
	db   $fd                                         ; $4682: $fd
	ld   b, c                                        ; $4683: $41
	ld   de, $fc8e                                   ; $4684: $11 $8e $fc
	ld   de, $1111                                   ; $4687: $11 $11 $11
	rra                                              ; $468a: $1f
	rst  $38                                         ; $468b: $ff
	pop  af                                          ; $468c: $f1
	ld   de, $111f                                   ; $468d: $11 $1f $11
	ld   sp, hl                                      ; $4690: $f9
	rst  $38                                         ; $4691: $ff
	di                                               ; $4692: $f3
	ld   de, $ff2d                                   ; $4693: $11 $2d $ff
	rst  $38                                         ; $4696: $ff
	or   c                                           ; $4697: $b1
	ld   de, $de18                                   ; $4698: $11 $18 $de
	and  c                                           ; $469b: $a1
	ld   de, $1c11                                   ; $469c: $11 $11 $1c
	rst  $38                                         ; $469f: $ff
	rst  $38                                         ; $46a0: $ff
	ld   de, $c113                                   ; $46a1: $11 $13 $c1
	ld   a, l                                        ; $46a4: $7d
	rst  $28                                         ; $46a5: $ef
	rst  $38                                         ; $46a6: $ff
	ld   de, $ff35                                   ; $46a7: $11 $35 $ff
	rst  $38                                         ; $46aa: $ff
	rst  $30                                         ; $46ab: $f7
	inc  d                                           ; $46ac: $14
	inc  h                                           ; $46ad: $24
	sbc  c                                           ; $46ae: $99
	and  h                                           ; $46af: $a4
	ld   de, $1111                                   ; $46b0: $11 $11 $11
	rst  $38                                         ; $46b3: $ff
	rst  $38                                         ; $46b4: $ff
	ld   de, $d111                                   ; $46b5: $11 $11 $d1
	dec  de                                          ; $46b8: $1b
	ld   e, a                                        ; $46b9: $5f
	rst  $38                                         ; $46ba: $ff
	ld   [hl], c                                     ; $46bb: $71
	ld   d, e                                        ; $46bc: $53
	rst  $38                                         ; $46bd: $ff
	rst  $38                                         ; $46be: $ff
	db   $fc                                         ; $46bf: $fc
	ld   l, b                                        ; $46c0: $68
	ld   b, d                                        ; $46c1: $42
	ld   a, b                                        ; $46c2: $78
	add  [hl]                                        ; $46c3: $86
	ld   de, $1111                                   ; $46c4: $11 $11 $11
	rst  $38                                         ; $46c7: $ff
	rst  $38                                         ; $46c8: $ff
	pop  af                                          ; $46c9: $f1
	ld   de, $1991                                   ; $46ca: $11 $91 $19
	rra                                              ; $46cd: $1f
	rst  $38                                         ; $46ce: $ff
	jp   $cf85                                       ; $46cf: $c3 $85 $cf


	db   $fd                                         ; $46d2: $fd
	db   $fc                                         ; $46d3: $fc
	adc  h                                           ; $46d4: $8c
	ld   [hl], e                                     ; $46d5: $73
	ld   h, l                                        ; $46d6: $65
	ld   d, l                                        ; $46d7: $55
	ld   hl, $1111                                   ; $46d8: $21 $11 $11
	rst  $38                                         ; $46db: $ff
	rst  $38                                         ; $46dc: $ff
	pop  af                                          ; $46dd: $f1
	dec  d                                           ; $46de: $15
	sub  c                                           ; $46df: $91
	dec  d                                           ; $46e0: $15
	rra                                              ; $46e1: $1f
	rst  $38                                         ; $46e2: $ff
	rst  $20                                         ; $46e3: $e7
	xor  b                                           ; $46e4: $a8
	rst  $28                                         ; $46e5: $ef
	set  5, b                                        ; $46e6: $cb $e8
	adc  [hl]                                        ; $46e8: $8e
	add  a                                           ; $46e9: $87
	ld   [hl], h                                     ; $46ea: $74
	ld   [hl-], a                                    ; $46eb: $32
	ld   hl, $1111                                   ; $46ec: $21 $11 $11
	rst  $38                                         ; $46ef: $ff
	rst  $38                                         ; $46f0: $ff
	pop  de                                          ; $46f1: $d1
	add  a                                           ; $46f2: $87
	or   c                                           ; $46f3: $b1
	ld   [de], a                                     ; $46f4: $12
	rra                                              ; $46f5: $1f
	rst  $38                                         ; $46f6: $ff
	ld   [$fffc], a                                  ; $46f7: $ea $fc $ff
	adc  l                                           ; $46fa: $8d
	and  l                                           ; $46fb: $a5
	call z, Call_0db_747a                            ; $46fc: $cc $7a $74
	ld   hl, $1111                                   ; $46ff: $21 $11 $11
	ld   de, $ffff                                   ; $4702: $11 $ff $ff
	ld   de, $91f9                                   ; $4705: $11 $f9 $91
	ld   de, $cd1f                                   ; $4708: $11 $1f $cd
	cp   l                                           ; $470b: $bd
	rst  $38                                         ; $470c: $ff
	db   $fd                                         ; $470d: $fd
	cp   [hl]                                        ; $470e: $be
	add  hl, sp                                      ; $470f: $39
	and  [hl]                                        ; $4710: $a6
	cp   d                                           ; $4711: $ba
	add  l                                           ; $4712: $85
	ld   de, $1111                                   ; $4713: $11 $11 $11
	rra                                              ; $4716: $1f
	rst  $38                                         ; $4717: $ff
	db   $fd                                         ; $4718: $fd
	rra                                              ; $4719: $1f
	cp   h                                           ; $471a: $bc
	ld   de, $f911                                   ; $471b: $11 $11 $f9
	ld   a, c                                        ; $471e: $79
	sbc  a                                           ; $471f: $9f
	rst  $38                                         ; $4720: $ff
	db   $fc                                         ; $4721: $fc
	push af                                          ; $4722: $f5
	sbc  b                                           ; $4723: $98
	daa                                              ; $4724: $27
	sbc  d                                           ; $4725: $9a
	add  e                                           ; $4726: $83
	ld   de, $1111                                   ; $4727: $11 $11 $11
	ld   e, a                                        ; $472a: $5f
	rst  $38                                         ; $472b: $ff
	pop  af                                          ; $472c: $f1
	db   $fd                                         ; $472d: $fd
	push de                                          ; $472e: $d5
	inc  d                                           ; $472f: $14
	rra                                              ; $4730: $1f
	and  e                                           ; $4731: $a3
	ld   [hl], d                                     ; $4732: $72
	rst  $38                                         ; $4733: $ff
	rst  $38                                         ; $4734: $ff
	rst  JumpTable                                         ; $4735: $df
	ld   a, e                                        ; $4736: $7b
	sub  d                                           ; $4737: $92
	ld   l, b                                        ; $4738: $68
	xor  c                                           ; $4739: $a9
	ld   d, c                                        ; $473a: $51
	ld   de, $1111                                   ; $473b: $11 $11 $11
	rst  $38                                         ; $473e: $ff
	rst  $38                                         ; $473f: $ff
	cpl                                              ; $4740: $2f
	db   $fd                                         ; $4741: $fd
	and  c                                           ; $4742: $a1
	ld   [hl], c                                     ; $4743: $71
	db   $db                                         ; $4744: $db
	ld   d, $1f                                      ; $4745: $16 $1f
	rst  JumpTable                                         ; $4747: $df
	cp   $fc                                         ; $4748: $fe $fc
	db   $eb                                         ; $474a: $eb
	ld   [hl], $6a                                   ; $474b: $36 $6a
	ld   [hl], l                                     ; $474d: $75
	ld   de, $1111                                   ; $474e: $11 $11 $11
	rra                                              ; $4751: $1f
	db   $fd                                         ; $4752: $fd
	ldh  a, [c]                                      ; $4753: $f2
	rst  $38                                         ; $4754: $ff
	cp   $1a                                         ; $4755: $fe $1a
	dec  e                                           ; $4757: $1d
	pop  bc                                          ; $4758: $c1
	ld   d, c                                        ; $4759: $51
	db   $db                                         ; $475a: $db
	rst  $38                                         ; $475b: $ff
	rst  JumpTable                                         ; $475c: $df
	rst  $38                                         ; $475d: $ff
	add  $68                                         ; $475e: $c6 $68
	or   [hl]                                        ; $4760: $b6
	ld   b, c                                        ; $4761: $41
	ld   de, $1111                                   ; $4762: $11 $11 $11
	xor  $9f                                         ; $4765: $ee $9f
	ld   a, $ff                                      ; $4767: $3e $ff
	or   $d2                                         ; $4769: $f6 $d2
	db   $eb                                         ; $476b: $eb
	inc  d                                           ; $476c: $14
	inc  e                                           ; $476d: $1c
	adc  a                                           ; $476e: $8f
	db   $fd                                         ; $476f: $fd
	rst  $38                                         ; $4770: $ff
	ei                                               ; $4771: $fb
	sub  a                                           ; $4772: $97
	cp   l                                           ; $4773: $bd
	ld   [hl], e                                     ; $4774: $73
	ld   de, $1111                                   ; $4775: $11 $11 $11
	inc  e                                           ; $4778: $1c
	or   l                                           ; $4779: $b5
	di                                               ; $477a: $f3
	rst  $28                                         ; $477b: $ef
	rst  $38                                         ; $477c: $ff
	xor  a                                           ; $477d: $af
	sbc  a                                           ; $477e: $9f
	sub  e                                           ; $477f: $93
	ld   [hl-], a                                    ; $4780: $32
	push bc                                          ; $4781: $c5
	db   $db                                         ; $4782: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4783: $cf
	rst  $38                                         ; $4784: $ff
	cp   e                                           ; $4785: $bb
	sbc  h                                           ; $4786: $9c
	reti                                             ; $4787: $d9


	ld   b, d                                        ; $4788: $42
	ld   de, $1111                                   ; $4789: $11 $11 $11
	and  l                                           ; $478c: $a5
	add  hl, sp                                      ; $478d: $39
	ld   c, a                                        ; $478e: $4f
	rst  $38                                         ; $478f: $ff
	db   $ed                                         ; $4790: $ed
	cp   $fa                                         ; $4791: $fe $fa
	ld   d, l                                        ; $4793: $55
	ld   l, e                                        ; $4794: $6b
	ld   e, c                                        ; $4795: $59
	sbc  h                                           ; $4796: $9c
	db   $fd                                         ; $4797: $fd
	db   $eb                                         ; $4798: $eb
	call z, $87cd                                    ; $4799: $cc $cd $87
	ld   d, d                                        ; $479c: $52
	ld   de, $1611                                   ; $479d: $11 $11 $16
	ld   [de], a                                     ; $47a0: $12
	ld   b, l                                        ; $47a1: $45
	jp   c, $ffdc                                    ; $47a2: $da $dc $ff

	rst  $38                                         ; $47a5: $ff
	cp   e                                           ; $47a6: $bb
	adc  c                                           ; $47a7: $89
	and  a                                           ; $47a8: $a7
	cp   b                                           ; $47a9: $b8
	call z, $bbbb                                    ; $47aa: $cc $bb $bb
	cp   e                                           ; $47ad: $bb
	cp   d                                           ; $47ae: $ba
	sub  [hl]                                        ; $47af: $96
	ld   b, c                                        ; $47b0: $41
	ld   de, $1111                                   ; $47b1: $11 $11 $11
	ld   [de], a                                     ; $47b4: $12
	ld   [hl], a                                     ; $47b5: $77
	ld   l, d                                        ; $47b6: $6a
	cp   a                                           ; $47b7: $bf
	rst  $38                                         ; $47b8: $ff
	db   $fd                                         ; $47b9: $fd
	db   $ec                                         ; $47ba: $ec
	db   $db                                         ; $47bb: $db
	cp   e                                           ; $47bc: $bb
	xor  h                                           ; $47bd: $ac
	sbc  b                                           ; $47be: $98
	sbc  d                                           ; $47bf: $9a
	xor  d                                           ; $47c0: $aa
	cp   d                                           ; $47c1: $ba
	xor  b                                           ; $47c2: $a8
	ld   d, e                                        ; $47c3: $53
	ld   de, $1111                                   ; $47c4: $11 $11 $11
	ld   de, $1545                                   ; $47c7: $11 $45 $15
	sbc  a                                           ; $47ca: $9f
	rst  $38                                         ; $47cb: $ff
	rst  $38                                         ; $47cc: $ff
	rst  $38                                         ; $47cd: $ff
	db   $ed                                         ; $47ce: $ed
	db   $ed                                         ; $47cf: $ed
	cp   e                                           ; $47d0: $bb
	sbc  b                                           ; $47d1: $98
	sbc  d                                           ; $47d2: $9a
	xor  d                                           ; $47d3: $aa
	cp   d                                           ; $47d4: $ba
	cp   c                                           ; $47d5: $b9
	ld   h, h                                        ; $47d6: $64
	ld   de, $1111                                   ; $47d7: $11 $11 $11
	ld   de, $1431                                   ; $47da: $11 $31 $14
	xor  [hl]                                        ; $47dd: $ae
	rst  $28                                         ; $47de: $ef
	rst  $38                                         ; $47df: $ff
	rst  $38                                         ; $47e0: $ff
	rst  $38                                         ; $47e1: $ff
	rst  $38                                         ; $47e2: $ff
	cp   e                                           ; $47e3: $bb
	xor  b                                           ; $47e4: $a8
	adc  b                                           ; $47e5: $88
	sbc  c                                           ; $47e6: $99
	xor  c                                           ; $47e7: $a9
	adc  c                                           ; $47e8: $89
	ld   [hl], h                                     ; $47e9: $74
	ld   de, $1111                                   ; $47ea: $11 $11 $11
	ld   de, $1711                                   ; $47ed: $11 $11 $17
	cp   l                                           ; $47f0: $bd
	rst  $28                                         ; $47f1: $ef
	rst  $38                                         ; $47f2: $ff
	rst  $38                                         ; $47f3: $ff
	rst  $38                                         ; $47f4: $ff
	rst  $38                                         ; $47f5: $ff
	call $88b9                                       ; $47f6: $cd $b9 $88
	adc  b                                           ; $47f9: $88
	sbc  c                                           ; $47fa: $99
	ld   [hl], a                                     ; $47fb: $77
	ld   d, e                                        ; $47fc: $53
	ld   de, $1111                                   ; $47fd: $11 $11 $11
	ld   de, $1911                                   ; $4800: $11 $11 $19
	cp   h                                           ; $4803: $bc
	rst  $38                                         ; $4804: $ff
	rst  $38                                         ; $4805: $ff
	rst  $38                                         ; $4806: $ff

jr_0db_4807:
	rst  $38                                         ; $4807: $ff
	cp   $ee                                         ; $4808: $fe $ee
	xor  b                                           ; $480a: $a8
	sbc  b                                           ; $480b: $98
	ld   h, a                                        ; $480c: $67
	add  a                                           ; $480d: $87
	ld   [hl], l                                     ; $480e: $75
	ld   sp, $1111                                   ; $480f: $31 $11 $11
	ld   de, $1111                                   ; $4812: $11 $11 $11
	ld   c, d                                        ; $4815: $4a
	call z, $ffff                                    ; $4816: $cc $ff $ff
	rst  $38                                         ; $4819: $ff
	rst  $38                                         ; $481a: $ff
	rst  $38                                         ; $481b: $ff
	db   $ed                                         ; $481c: $ed
	xor  c                                           ; $481d: $a9
	sub  a                                           ; $481e: $97
	ld   h, a                                        ; $481f: $67
	halt                                             ; $4820: $76

Jump_0db_4821:
	ld   d, h                                        ; $4821: $54
	ld   de, $1111                                   ; $4822: $11 $11 $11
	ld   de, $1111                                   ; $4825: $11 $11 $11
	xor  e                                           ; $4828: $ab
	cp   a                                           ; $4829: $bf
	rst  $38                                         ; $482a: $ff
	rst  $38                                         ; $482b: $ff
	rst  $38                                         ; $482c: $ff
	rst  $38                                         ; $482d: $ff
	cp   $ea                                         ; $482e: $fe $ea
	adc  c                                           ; $4830: $89
	ld   [hl], l                                     ; $4831: $75
	ld   h, a                                        ; $4832: $67
	ld   h, h                                        ; $4833: $64
	ld   sp, $1111                                   ; $4834: $31 $11 $11
	ld   de, $1111                                   ; $4837: $11 $11 $11
	jr   jr_0db_4807                                 ; $483a: $18 $cb

	rst  $38                                         ; $483c: $ff
	rst  $38                                         ; $483d: $ff
	rst  $38                                         ; $483e: $ff
	rst  $38                                         ; $483f: $ff
	rst  $38                                         ; $4840: $ff
	xor  $b8                                         ; $4841: $ee $b8
	sub  a                                           ; $4843: $97
	ld   d, l                                        ; $4844: $55
	ld   h, [hl]                                     ; $4845: $66
	ld   b, h                                        ; $4846: $44
	ld   hl, $1111                                   ; $4847: $21 $11 $11
	ld   de, $1111                                   ; $484a: $11 $11 $11
	ld   a, l                                        ; $484d: $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $484e: $cf
	rst  $38                                         ; $484f: $ff
	rst  $38                                         ; $4850: $ff
	rst  $38                                         ; $4851: $ff
	rst  $38                                         ; $4852: $ff
	cp   $fc                                         ; $4853: $fe $fc
	xor  c                                           ; $4855: $a9
	add  l                                           ; $4856: $85
	ld   d, [hl]                                     ; $4857: $56
	ld   d, h                                        ; $4858: $54
	ld   b, d                                        ; $4859: $42
	ld   de, $1111                                   ; $485a: $11 $11 $11
	ld   de, $1511                                   ; $485d: $11 $11 $15
	call z, $ffef                                    ; $4860: $cc $ef $ff
	rst  $38                                         ; $4863: $ff
	rst  $38                                         ; $4864: $ff
	rst  $38                                         ; $4865: $ff

jr_0db_4866:
	rst  $38                                         ; $4866: $ff
	ld   [$6588], a                                  ; $4867: $ea $88 $65
	ld   h, [hl]                                     ; $486a: $66
	ld   b, e                                        ; $486b: $43
	ld   hl, $1111                                   ; $486c: $21 $11 $11
	ld   de, $1111                                   ; $486f: $11 $11 $11
	dec  sp                                          ; $4872: $3b
	call z, $ffff                                    ; $4873: $cc $ff $ff
	rst  $38                                         ; $4876: $ff
	rst  $38                                         ; $4877: $ff
	rst  $38                                         ; $4878: $ff
	xor  $b8                                         ; $4879: $ee $b8
	add  [hl]                                        ; $487b: $86
	ld   d, [hl]                                     ; $487c: $56
	ld   h, l                                        ; $487d: $65
	ld   b, e                                        ; $487e: $43
	ld   bc, $1111                                   ; $487f: $01 $11 $11
	ld   de, $1211                                   ; $4882: $11 $11 $12
	xor  h                                           ; $4885: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4886: $cf
	rst  $38                                         ; $4887: $ff
	rst  $38                                         ; $4888: $ff
	rst  $38                                         ; $4889: $ff
	rst  $38                                         ; $488a: $ff
	rst  $38                                         ; $488b: $ff
	ei                                               ; $488c: $fb
	adc  b                                           ; $488d: $88
	ld   h, h                                        ; $488e: $64
	ld   d, [hl]                                     ; $488f: $56
	ld   d, e                                        ; $4890: $53
	ld   hl, $1111                                   ; $4891: $21 $11 $11
	ld   de, $1111                                   ; $4894: $11 $11 $11
	jr   z, jr_0db_4866                              ; $4897: $28 $cd

	rst  $38                                         ; $4899: $ff
	rst  $38                                         ; $489a: $ff
	rst  $38                                         ; $489b: $ff
	rst  $38                                         ; $489c: $ff
	rst  $38                                         ; $489d: $ff
	cp   $c9                                         ; $489e: $fe $c9
	halt                                             ; $48a0: $76
	ld   d, l                                        ; $48a1: $55
	ld   d, h                                        ; $48a2: $54
	ld   b, e                                        ; $48a3: $43
	ld   de, $1111                                   ; $48a4: $11 $11 $11
	ld   de, $1211                                   ; $48a7: $11 $11 $12
	adc  h                                           ; $48aa: $8c
	rst  JumpTable                                         ; $48ab: $df
	rst  $38                                         ; $48ac: $ff
	rst  $38                                         ; $48ad: $ff
	rst  $38                                         ; $48ae: $ff
	rst  $38                                         ; $48af: $ff
	cp   $ed                                         ; $48b0: $fe $ed
	sub  a                                           ; $48b2: $97
	ld   h, l                                        ; $48b3: $65
	ld   h, l                                        ; $48b4: $65
	ld   d, h                                        ; $48b5: $54
	ld   sp, $1111                                   ; $48b6: $31 $11 $11
	ld   de, $1111                                   ; $48b9: $11 $11 $11
	ld   h, $ad                                      ; $48bc: $26 $ad
	rst  $38                                         ; $48be: $ff
	rst  $38                                         ; $48bf: $ff
	rst  $38                                         ; $48c0: $ff
	rst  $38                                         ; $48c1: $ff
	rst  $38                                         ; $48c2: $ff
	db   $ed                                         ; $48c3: $ed
	db   $db                                         ; $48c4: $db
	ld   [hl], h                                     ; $48c5: $74
	ld   d, a                                        ; $48c6: $57
	ld   b, e                                        ; $48c7: $43
	ld   b, h                                        ; $48c8: $44
	ld   de, $1111                                   ; $48c9: $11 $11 $11
	ld   de, $1611                                   ; $48cc: $11 $11 $16
	sbc  b                                           ; $48cf: $98
	rst  $28                                         ; $48d0: $ef
	rst  $38                                         ; $48d1: $ff
	rst  $38                                         ; $48d2: $ff
	rst  $38                                         ; $48d3: $ff
	rst  $38                                         ; $48d4: $ff
	call c, $95a9                                    ; $48d5: $dc $a9 $95
	ld   d, l                                        ; $48d8: $55
	ld   h, h                                        ; $48d9: $64
	ld   d, a                                        ; $48da: $57
	ld   b, c                                        ; $48db: $41
	ld   de, $1111                                   ; $48dc: $11 $11 $11
	inc  h                                           ; $48df: $24
	ld   de, $8c7d                                   ; $48e0: $11 $7d $8c
	rst  $38                                         ; $48e3: $ff
	rst  $38                                         ; $48e4: $ff
	rst  $38                                         ; $48e5: $ff
	rst  $38                                         ; $48e6: $ff
	cp   $aa                                         ; $48e7: $fe $aa
	ld   a, c                                        ; $48e9: $79
	ld   b, e                                        ; $48ea: $43
	ld   b, [hl]                                     ; $48eb: $46
	ld   b, e                                        ; $48ec: $43
	ld   [hl], l                                     ; $48ed: $75
	ld   sp, $1311                                   ; $48ee: $31 $11 $13
	ld   de, $1493                                   ; $48f1: $11 $93 $14
	db   $ec                                         ; $48f4: $ec
	adc  a                                           ; $48f5: $8f
	rst  $38                                         ; $48f6: $ff
	rst  $38                                         ; $48f7: $ff
	rst  $38                                         ; $48f8: $ff
	cp   $fb                                         ; $48f9: $fe $fb
	sub  [hl]                                        ; $48fb: $96
	add  [hl]                                        ; $48fc: $86
	inc  h                                           ; $48fd: $24
	ld   b, [hl]                                     ; $48fe: $46
	dec  h                                           ; $48ff: $25
	ld   d, e                                        ; $4900: $53
	ld   de, $4111                                   ; $4901: $11 $11 $41
	add  hl, de                                      ; $4904: $19
	and  c                                           ; $4905: $a1
	cpl                                              ; $4906: $2f
	ld   hl, sp-$01                                  ; $4907: $f8 $ff
	rst  $38                                         ; $4909: $ff
	rst  $38                                         ; $490a: $ff
	rst  $38                                         ; $490b: $ff
	adc  $c9                                         ; $490c: $ce $c9
	ld   h, [hl]                                     ; $490e: $66
	and  e                                           ; $490f: $a3
	ld   b, l                                        ; $4910: $45
	ld   h, e                                        ; $4911: $63
	ld   [hl], $31                                   ; $4912: $36 $31
	ld   de, $1112                                   ; $4914: $11 $12 $11
	adc  h                                           ; $4917: $8c
	ld   bc, $afff                                   ; $4918: $01 $ff $af
	rst  $38                                         ; $491b: $ff
	rst  $38                                         ; $491c: $ff
	rst  $38                                         ; $491d: $ff
	ei                                               ; $491e: $fb
	call Call_0db_6995                               ; $491f: $cd $95 $69
	ld   b, e                                        ; $4922: $43
	ld   b, l                                        ; $4923: $45
	inc  sp                                          ; $4924: $33
	ld   d, d                                        ; $4925: $52
	ld   de, $4111                                   ; $4926: $11 $11 $41
	dec  de                                          ; $4929: $1b
	pop  de                                          ; $492a: $d1
	ccf                                              ; $492b: $3f
	ld   a, [$ffff]                                  ; $492c: $fa $ff $ff
	rst  $38                                         ; $492f: $ff
	rst  $38                                         ; $4930: $ff
	sbc  d                                           ; $4931: $9a
	jp   z, $9446                                    ; $4932: $ca $46 $94

	inc  [hl]                                        ; $4935: $34
	ld   h, e                                        ; $4936: $63
	inc  [hl]                                        ; $4937: $34
	ld   de, $1411                                   ; $4938: $11 $11 $14
	ld   de, $39ea                                   ; $493b: $11 $ea $39
	rst  $38                                         ; $493e: $ff
	rst  JumpTable                                         ; $493f: $df
	rst  $38                                         ; $4940: $ff
	rst  $38                                         ; $4941: $ff
	rst  $38                                         ; $4942: $ff
	jp   hl                                          ; $4943: $e9


	sbc  e                                           ; $4944: $9b
	sub  h                                           ; $4945: $94
	ld   h, a                                        ; $4946: $67
	ld   d, h                                        ; $4947: $54
	dec  [hl]                                        ; $4948: $35
	inc  sp                                          ; $4949: $33
	ld   hl, $1111                                   ; $494a: $21 $11 $11
	ld   de, $977f                                   ; $494d: $11 $7f $97
	rst  $28                                         ; $4950: $ef
	rst  $38                                         ; $4951: $ff
	rst  $38                                         ; $4952: $ff
	rst  $38                                         ; $4953: $ff
	rst  $38                                         ; $4954: $ff
	ei                                               ; $4955: $fb
	ld   a, c                                        ; $4956: $79
	and  a                                           ; $4957: $a7
	ld   d, a                                        ; $4958: $57
	ld   h, [hl]                                     ; $4959: $66
	inc  [hl]                                        ; $495a: $34
	ld   b, e                                        ; $495b: $43
	ld   sp, $1111                                   ; $495c: $31 $11 $11
	ld   de, $da5f                                   ; $495f: $11 $5f $da
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4962: $cf
	rst  $38                                         ; $4963: $ff
	rst  $38                                         ; $4964: $ff
	rst  $38                                         ; $4965: $ff
	db   $fc                                         ; $4966: $fc
	ei                                               ; $4967: $fb
	ld   h, a                                        ; $4968: $67
	xor  b                                           ; $4969: $a8
	ld   [hl], $68                                   ; $496a: $36 $68
	ld   b, e                                        ; $496c: $43
	ld   [hl-], a                                    ; $496d: $32
	ld   sp, $1111                                   ; $496e: $31 $11 $11
	ld   de, $7b8f                                   ; $4971: $11 $8f $7b
	rst  $38                                         ; $4974: $ff
	rst  $38                                         ; $4975: $ff
	rst  $38                                         ; $4976: $ff
	rst  $38                                         ; $4977: $ff
	cp   $f9                                         ; $4978: $fe $f9
	ld   e, d                                        ; $497a: $5a
	sub  a                                           ; $497b: $97
	ld   c, c                                        ; $497c: $49
	ld   [hl], a                                     ; $497d: $77
	ld   b, e                                        ; $497e: $43
	ld   b, c                                        ; $497f: $41
	ld   de, $1211                                   ; $4980: $11 $11 $12
	ld   de, $bfef                                   ; $4983: $11 $ef $bf
	rst  $38                                         ; $4986: $ff
	rst  $38                                         ; $4987: $ff
	rst  $38                                         ; $4988: $ff
	cp   $cd                                         ; $4989: $fe $cd
	sub  $77                                         ; $498b: $d6 $77
	add  [hl]                                        ; $498d: $86
	ld   h, [hl]                                     ; $498e: $66
	ld   l, b                                        ; $498f: $68
	ld   [de], a                                     ; $4990: $12
	ld   de, $1111                                   ; $4991: $11 $11 $11
	ld   h, c                                        ; $4994: $61
	rra                                              ; $4995: $1f
	ei                                               ; $4996: $fb
	rst  $38                                         ; $4997: $ff
	rst  $38                                         ; $4998: $ff
	cp   $ff                                         ; $4999: $fe $ff
	db   $ec                                         ; $499b: $ec
	sbc  $67                                         ; $499c: $de $67
	ld   l, b                                        ; $499e: $68
	ld   h, l                                        ; $499f: $65
	ld   d, h                                        ; $49a0: $54
	ld   [hl], c                                     ; $49a1: $71
	ld   de, $1111                                   ; $49a2: $11 $11 $11
	ld   b, d                                        ; $49a5: $42
	ld   e, $ff                                      ; $49a6: $1e $ff
	rst  $38                                         ; $49a8: $ff
	rst  $38                                         ; $49a9: $ff
	cp   $ff                                         ; $49aa: $fe $ff
	ei                                               ; $49ac: $fb
	cp   e                                           ; $49ad: $bb
	add  a                                           ; $49ae: $87
	ld   d, a                                        ; $49af: $57
	ld   h, [hl]                                     ; $49b0: $66
	inc  h                                           ; $49b1: $24
	ld   d, c                                        ; $49b2: $51
	ld   de, $1111                                   ; $49b3: $11 $11 $11
	inc  sp                                          ; $49b6: $33
	cp   a                                           ; $49b7: $bf
	rst  $28                                         ; $49b8: $ef
	rst  $38                                         ; $49b9: $ff
	rst  $38                                         ; $49ba: $ff
	rst  $38                                         ; $49bb: $ff
	rst  $38                                         ; $49bc: $ff
	db   $db                                         ; $49bd: $db
	ret  z                                           ; $49be: $c8

	add  [hl]                                        ; $49bf: $86
	ld   d, l                                        ; $49c0: $55
	ld   b, e                                        ; $49c1: $43
	inc  de                                          ; $49c2: $13
	ld   de, $1211                                   ; $49c3: $11 $11 $12
	ld   [de], a                                     ; $49c6: $12
	db   $fd                                         ; $49c7: $fd
	rst  $28                                         ; $49c8: $ef
	rst  $38                                         ; $49c9: $ff
	rst  $38                                         ; $49ca: $ff
	rst  $38                                         ; $49cb: $ff
	cp   $cc                                         ; $49cc: $fe $cc
	xor  c                                           ; $49ce: $a9
	ld   [hl], a                                     ; $49cf: $77
	ld   h, l                                        ; $49d0: $65
	ld   b, d                                        ; $49d1: $42
	ld   hl, $1111                                   ; $49d2: $21 $11 $11
	ld   b, c                                        ; $49d5: $41
	dec  e                                           ; $49d6: $1d
	rst  JumpTable                                         ; $49d7: $df
	rst  $38                                         ; $49d8: $ff
	rst  $38                                         ; $49d9: $ff
	db   $fc                                         ; $49da: $fc
	rst  $38                                         ; $49db: $ff
	ld   a, [$a6bb]                                  ; $49dc: $fa $bb $a6
	dec  [hl]                                        ; $49df: $35
	inc  sp                                          ; $49e0: $33
	ld   [de], a                                     ; $49e1: $12
	ld   de, $3111                                   ; $49e2: $11 $11 $31
	ld   c, d                                        ; $49e5: $4a
	rst  $28                                         ; $49e6: $ef
	rst  $38                                         ; $49e7: $ff
	rst  $38                                         ; $49e8: $ff
	db   $ed                                         ; $49e9: $ed
	rst  $38                                         ; $49ea: $ff
	ld   sp, hl                                      ; $49eb: $f9
	cp   c                                           ; $49ec: $b9
	sub  e                                           ; $49ed: $93
	inc  hl                                          ; $49ee: $23
	ld   [de], a                                     ; $49ef: $12
	ld   de, $1411                                   ; $49f0: $11 $11 $14
	ld   de, $ffcc                                   ; $49f3: $11 $cc $ff
	rst  $38                                         ; $49f6: $ff
	rst  $38                                         ; $49f7: $ff
	rst  JumpTable                                         ; $49f8: $df
	rst  $38                                         ; $49f9: $ff
	jp   z, Jump_0db_62ba                            ; $49fa: $ca $ba $62

	ld   [hl+], a                                    ; $49fd: $22
	ld   de, $1111                                   ; $49fe: $11 $11 $11
	ld   b, c                                        ; $4a01: $41
	add  hl, de                                      ; $4a02: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a03: $cf
	rst  $38                                         ; $4a04: $ff
	rst  $38                                         ; $4a05: $ff
	db   $fd                                         ; $4a06: $fd
	rst  $38                                         ; $4a07: $ff
	db   $fd                                         ; $4a08: $fd
	cp   e                                           ; $4a09: $bb
	and  [hl]                                        ; $4a0a: $a6
	ld   [hl+], a                                    ; $4a0b: $22
	ld   [de], a                                     ; $4a0c: $12
	ld   de, $1311                                   ; $4a0d: $11 $11 $13
	ld   de, $ffbb                                   ; $4a10: $11 $bb $ff
	rst  $38                                         ; $4a13: $ff
	rst  $38                                         ; $4a14: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a15: $cf
	rst  $28                                         ; $4a16: $ef
	call c, $61da                                    ; $4a17: $dc $da $61
	ld   b, c                                        ; $4a1a: $41
	ld   de, $1111                                   ; $4a1b: $11 $11 $11
	ld   b, c                                        ; $4a1e: $41
	dec  hl                                          ; $4a1f: $2b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a20: $cf
	rst  $38                                         ; $4a21: $ff
	rst  $38                                         ; $4a22: $ff
	db   $fd                                         ; $4a23: $fd
	rst  $28                                         ; $4a24: $ef
	db   $fd                                         ; $4a25: $fd
	res  4, [hl]                                     ; $4a26: $cb $a6
	ld   [hl-], a                                    ; $4a28: $32
	ld   de, $1111                                   ; $4a29: $11 $11 $11
	inc  de                                          ; $4a2c: $13
	ld   d, $bd                                      ; $4a2d: $16 $bd
	cp   $ff                                         ; $4a2f: $fe $ff
	cp   $fe                                         ; $4a31: $fe $fe
	db   $fd                                         ; $4a33: $fd
	cp   e                                           ; $4a34: $bb
	and  a                                           ; $4a35: $a7
	ld   b, h                                        ; $4a36: $44
	ld   de, $1111                                   ; $4a37: $11 $11 $11
	inc  de                                          ; $4a3a: $13
	ld   hl, $eb7d                                   ; $4a3b: $21 $7d $eb
	rst  $38                                         ; $4a3e: $ff
	cp   $cf                                         ; $4a3f: $fe $cf
	db   $fd                                         ; $4a41: $fd
	call $63b9                                       ; $4a42: $cd $b9 $63
	ld   [hl-], a                                    ; $4a45: $32
	ld   de, $1111                                   ; $4a46: $11 $11 $11
	ld   b, c                                        ; $4a49: $41
	dec  sp                                          ; $4a4a: $3b
	xor  h                                           ; $4a4b: $ac
	rst  $38                                         ; $4a4c: $ff
	rst  $38                                         ; $4a4d: $ff
	db   $fd                                         ; $4a4e: $fd
	rst  $38                                         ; $4a4f: $ff
	db   $fd                                         ; $4a50: $fd
	res  0, a                                        ; $4a51: $cb $87
	ld   b, e                                        ; $4a53: $43
	ld   hl, $1111                                   ; $4a54: $21 $11 $11
	inc  b                                           ; $4a57: $04
	inc  [hl]                                        ; $4a58: $34
	ld   e, b                                        ; $4a59: $58
	sbc  $be                                         ; $4a5a: $de $be
	rst  $38                                         ; $4a5c: $ff
	ei                                               ; $4a5d: $fb
	rst  $28                                         ; $4a5e: $ef
	db   $eb                                         ; $4a5f: $eb
	cp   d                                           ; $4a60: $ba
	add  a                                           ; $4a61: $87
	inc  hl                                          ; $4a62: $23
	ld   [hl-], a                                    ; $4a63: $32
	ld   de, $5311                                   ; $4a64: $11 $11 $53
	inc  [hl]                                        ; $4a67: $34
	sbc  d                                           ; $4a68: $9a
	sbc  e                                           ; $4a69: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a6a: $cf
	sbc  $ec                                         ; $4a6b: $de $ec
	db   $ed                                         ; $4a6d: $ed
	ret                                              ; $4a6e: $c9


	sbc  c                                           ; $4a6f: $99
	add  a                                           ; $4a70: $87
	ld   b, l                                        ; $4a71: $45
	ld   b, e                                        ; $4a72: $43
	ld   b, d                                        ; $4a73: $42
	inc  hl                                          ; $4a74: $23
	ld   d, h                                        ; $4a75: $54
	ld   b, [hl]                                     ; $4a76: $46
	adc  c                                           ; $4a77: $89
	adc  c                                           ; $4a78: $89
	sbc  e                                           ; $4a79: $9b
	xor  c                                           ; $4a7a: $a9
	res  7, d                                        ; $4a7b: $cb $ba
	xor  d                                           ; $4a7d: $aa
	xor  b                                           ; $4a7e: $a8
	adc  b                                           ; $4a7f: $88
	ld   h, a                                        ; $4a80: $67
	ld   [hl], a                                     ; $4a81: $77
	ld   d, l                                        ; $4a82: $55
	ld   h, [hl]                                     ; $4a83: $66
	ld   d, e                                        ; $4a84: $53
	ld   d, a                                        ; $4a85: $57
	halt                                             ; $4a86: $76
	ld   [hl], a                                     ; $4a87: $77
	sbc  c                                           ; $4a88: $99
	ld   a, c                                        ; $4a89: $79
	adc  c                                           ; $4a8a: $89
	adc  c                                           ; $4a8b: $89
	adc  c                                           ; $4a8c: $89
	adc  c                                           ; $4a8d: $89
	adc  d                                           ; $4a8e: $8a
	xor  c                                           ; $4a8f: $a9
	cp   e                                           ; $4a90: $bb
	xor  d                                           ; $4a91: $aa
	xor  d                                           ; $4a92: $aa
	sbc  b                                           ; $4a93: $98
	adc  d                                           ; $4a94: $8a
	xor  b                                           ; $4a95: $a8
	add  a                                           ; $4a96: $87
	ld   [hl], a                                     ; $4a97: $77
	adc  c                                           ; $4a98: $89
	adc  b                                           ; $4a99: $88
	sub  a                                           ; $4a9a: $97
	ld   [hl], a                                     ; $4a9b: $77
	adc  b                                           ; $4a9c: $88
	adc  b                                           ; $4a9d: $88
	ld   a, b                                        ; $4a9e: $78
	adc  c                                           ; $4a9f: $89
	adc  c                                           ; $4aa0: $89
	sbc  c                                           ; $4aa1: $99
	xor  c                                           ; $4aa2: $a9
	sbc  c                                           ; $4aa3: $99
	sbc  c                                           ; $4aa4: $99
	adc  c                                           ; $4aa5: $89
	sbc  c                                           ; $4aa6: $99
	sbc  b                                           ; $4aa7: $98
	adc  b                                           ; $4aa8: $88
	adc  b                                           ; $4aa9: $88
	adc  b                                           ; $4aaa: $88
	adc  b                                           ; $4aab: $88
	ld   [hl], a                                     ; $4aac: $77
	adc  b                                           ; $4aad: $88
	ld   [hl], a                                     ; $4aae: $77
	adc  c                                           ; $4aaf: $89
	adc  b                                           ; $4ab0: $88
	adc  b                                           ; $4ab1: $88
	adc  c                                           ; $4ab2: $89
	sbc  c                                           ; $4ab3: $99
	sbc  c                                           ; $4ab4: $99
	sbc  b                                           ; $4ab5: $98
	adc  b                                           ; $4ab6: $88
	sbc  b                                           ; $4ab7: $98
	add  a                                           ; $4ab8: $87
	ld   [hl], a                                     ; $4ab9: $77
	adc  b                                           ; $4aba: $88
	add  a                                           ; $4abb: $87
	adc  b                                           ; $4abc: $88
	adc  b                                           ; $4abd: $88
	sbc  b                                           ; $4abe: $98
	sbc  b                                           ; $4abf: $98
	adc  b                                           ; $4ac0: $88
	adc  c                                           ; $4ac1: $89
	sbc  c                                           ; $4ac2: $99
	sbc  c                                           ; $4ac3: $99
	adc  b                                           ; $4ac4: $88
	ld   a, b                                        ; $4ac5: $78
	adc  b                                           ; $4ac6: $88
	ld   a, b                                        ; $4ac7: $78
	halt                                             ; $4ac8: $76
	ld   a, b                                        ; $4ac9: $78
	ld   a, b                                        ; $4aca: $78
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	sbc  b                                           ; $4acd: $98
	adc  b                                           ; $4ace: $88
	adc  b                                           ; $4acf: $88
	adc  c                                           ; $4ad0: $89
	sbc  c                                           ; $4ad1: $99
	sbc  c                                           ; $4ad2: $99
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  b                                           ; $4ad5: $88
	add  a                                           ; $4ad6: $87
	ld   [hl], a                                     ; $4ad7: $77
	ld   a, b                                        ; $4ad8: $78
	adc  b                                           ; $4ad9: $88
	sbc  b                                           ; $4ada: $98
	ld   a, b                                        ; $4adb: $78
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  c                                           ; $4ae1: $89
	sbc  b                                           ; $4ae2: $98
	adc  b                                           ; $4ae3: $88
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88
	adc  b                                           ; $4ae6: $88
	adc  b                                           ; $4ae7: $88
	adc  b                                           ; $4ae8: $88
	adc  b                                           ; $4ae9: $88
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	adc  b                                           ; $4af0: $88
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	adc  b                                           ; $4af6: $88
	adc  b                                           ; $4af7: $88
	adc  b                                           ; $4af8: $88
	adc  c                                           ; $4af9: $89
	adc  b                                           ; $4afa: $88
	adc  b                                           ; $4afb: $88
	adc  b                                           ; $4afc: $88
	adc  b                                           ; $4afd: $88
	adc  b                                           ; $4afe: $88
	adc  b                                           ; $4aff: $88
	adc  b                                           ; $4b00: $88
	adc  b                                           ; $4b01: $88
	adc  b                                           ; $4b02: $88
	adc  b                                           ; $4b03: $88
	adc  b                                           ; $4b04: $88
	adc  b                                           ; $4b05: $88
	adc  b                                           ; $4b06: $88
	sbc  c                                           ; $4b07: $99
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	adc  b                                           ; $4b0a: $88
	adc  b                                           ; $4b0b: $88
	adc  b                                           ; $4b0c: $88
	adc  b                                           ; $4b0d: $88
	adc  b                                           ; $4b0e: $88
	adc  b                                           ; $4b0f: $88
	adc  b                                           ; $4b10: $88
	adc  b                                           ; $4b11: $88
	adc  b                                           ; $4b12: $88
	adc  b                                           ; $4b13: $88
	adc  b                                           ; $4b14: $88
	adc  b                                           ; $4b15: $88
	adc  b                                           ; $4b16: $88
	adc  b                                           ; $4b17: $88
	adc  b                                           ; $4b18: $88
	adc  b                                           ; $4b19: $88
	adc  b                                           ; $4b1a: $88
	adc  b                                           ; $4b1b: $88
	adc  b                                           ; $4b1c: $88
	adc  b                                           ; $4b1d: $88
	adc  b                                           ; $4b1e: $88
	adc  b                                           ; $4b1f: $88
	adc  b                                           ; $4b20: $88
	adc  b                                           ; $4b21: $88
	adc  b                                           ; $4b22: $88
	sbc  b                                           ; $4b23: $98
	adc  b                                           ; $4b24: $88
	adc  c                                           ; $4b25: $89
	adc  b                                           ; $4b26: $88
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	adc  b                                           ; $4b2a: $88
	adc  b                                           ; $4b2b: $88
	adc  b                                           ; $4b2c: $88
	ld   a, b                                        ; $4b2d: $78
	ld   a, b                                        ; $4b2e: $78
	adc  b                                           ; $4b2f: $88
	adc  b                                           ; $4b30: $88
	adc  b                                           ; $4b31: $88
	adc  b                                           ; $4b32: $88
	sbc  c                                           ; $4b33: $99
	adc  b                                           ; $4b34: $88
	adc  b                                           ; $4b35: $88
	adc  b                                           ; $4b36: $88
	adc  b                                           ; $4b37: $88
	adc  b                                           ; $4b38: $88
	adc  b                                           ; $4b39: $88
	adc  b                                           ; $4b3a: $88
	adc  b                                           ; $4b3b: $88
	adc  b                                           ; $4b3c: $88
	adc  b                                           ; $4b3d: $88
	adc  b                                           ; $4b3e: $88
	adc  b                                           ; $4b3f: $88
	adc  b                                           ; $4b40: $88
	adc  b                                           ; $4b41: $88
	adc  b                                           ; $4b42: $88
	adc  b                                           ; $4b43: $88
	adc  b                                           ; $4b44: $88
	adc  b                                           ; $4b45: $88
	adc  b                                           ; $4b46: $88
	adc  b                                           ; $4b47: $88
	adc  b                                           ; $4b48: $88
	adc  b                                           ; $4b49: $88
	adc  b                                           ; $4b4a: $88
	adc  b                                           ; $4b4b: $88
	adc  b                                           ; $4b4c: $88
	adc  b                                           ; $4b4d: $88
	adc  b                                           ; $4b4e: $88
	adc  b                                           ; $4b4f: $88
	adc  b                                           ; $4b50: $88
	adc  b                                           ; $4b51: $88
	adc  b                                           ; $4b52: $88
	adc  b                                           ; $4b53: $88
	adc  b                                           ; $4b54: $88
	adc  b                                           ; $4b55: $88
	adc  b                                           ; $4b56: $88
	adc  b                                           ; $4b57: $88
	adc  b                                           ; $4b58: $88
	adc  b                                           ; $4b59: $88
	adc  b                                           ; $4b5a: $88
	adc  b                                           ; $4b5b: $88
	adc  b                                           ; $4b5c: $88
	adc  b                                           ; $4b5d: $88
	adc  b                                           ; $4b5e: $88
	adc  b                                           ; $4b5f: $88
	adc  b                                           ; $4b60: $88
	adc  b                                           ; $4b61: $88
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	adc  b                                           ; $4b65: $88
	adc  b                                           ; $4b66: $88
	adc  b                                           ; $4b67: $88
	adc  b                                           ; $4b68: $88
	adc  b                                           ; $4b69: $88
	adc  b                                           ; $4b6a: $88
	adc  b                                           ; $4b6b: $88
	adc  b                                           ; $4b6c: $88
	adc  b                                           ; $4b6d: $88
	adc  b                                           ; $4b6e: $88
	adc  b                                           ; $4b6f: $88
	adc  b                                           ; $4b70: $88
	adc  b                                           ; $4b71: $88
	adc  b                                           ; $4b72: $88
	adc  b                                           ; $4b73: $88
	adc  b                                           ; $4b74: $88
	adc  b                                           ; $4b75: $88
	adc  b                                           ; $4b76: $88
	adc  b                                           ; $4b77: $88
	adc  b                                           ; $4b78: $88
	adc  b                                           ; $4b79: $88
	adc  b                                           ; $4b7a: $88
	adc  b                                           ; $4b7b: $88
	adc  b                                           ; $4b7c: $88
	adc  b                                           ; $4b7d: $88
	adc  b                                           ; $4b7e: $88
	adc  b                                           ; $4b7f: $88
	adc  b                                           ; $4b80: $88
	adc  b                                           ; $4b81: $88
	adc  b                                           ; $4b82: $88
	adc  b                                           ; $4b83: $88
	adc  b                                           ; $4b84: $88
	adc  b                                           ; $4b85: $88
	adc  b                                           ; $4b86: $88
	adc  b                                           ; $4b87: $88
	adc  b                                           ; $4b88: $88
	adc  b                                           ; $4b89: $88
	adc  b                                           ; $4b8a: $88
	adc  b                                           ; $4b8b: $88
	adc  b                                           ; $4b8c: $88
	adc  b                                           ; $4b8d: $88
	adc  b                                           ; $4b8e: $88
	adc  b                                           ; $4b8f: $88
	adc  b                                           ; $4b90: $88
	adc  b                                           ; $4b91: $88
	adc  b                                           ; $4b92: $88
	adc  b                                           ; $4b93: $88
	adc  b                                           ; $4b94: $88
	adc  b                                           ; $4b95: $88
	adc  b                                           ; $4b96: $88
	adc  b                                           ; $4b97: $88
	adc  b                                           ; $4b98: $88
	adc  b                                           ; $4b99: $88
	adc  b                                           ; $4b9a: $88
	adc  b                                           ; $4b9b: $88
	adc  b                                           ; $4b9c: $88
	adc  b                                           ; $4b9d: $88
	adc  b                                           ; $4b9e: $88
	adc  b                                           ; $4b9f: $88
	adc  b                                           ; $4ba0: $88
	adc  b                                           ; $4ba1: $88
	adc  b                                           ; $4ba2: $88
	adc  b                                           ; $4ba3: $88
	adc  b                                           ; $4ba4: $88
	adc  b                                           ; $4ba5: $88
	adc  b                                           ; $4ba6: $88
	adc  b                                           ; $4ba7: $88
	adc  b                                           ; $4ba8: $88
	adc  b                                           ; $4ba9: $88
	adc  b                                           ; $4baa: $88
	adc  b                                           ; $4bab: $88
	adc  b                                           ; $4bac: $88
	adc  b                                           ; $4bad: $88
	adc  b                                           ; $4bae: $88
	adc  b                                           ; $4baf: $88
	adc  b                                           ; $4bb0: $88
	adc  b                                           ; $4bb1: $88
	adc  b                                           ; $4bb2: $88
	adc  b                                           ; $4bb3: $88
	adc  b                                           ; $4bb4: $88
	sbc  c                                           ; $4bb5: $99
	adc  b                                           ; $4bb6: $88
	adc  b                                           ; $4bb7: $88
	adc  b                                           ; $4bb8: $88
	adc  b                                           ; $4bb9: $88
	adc  b                                           ; $4bba: $88
	adc  b                                           ; $4bbb: $88
	adc  b                                           ; $4bbc: $88
	adc  b                                           ; $4bbd: $88
	adc  b                                           ; $4bbe: $88
	adc  b                                           ; $4bbf: $88
	adc  b                                           ; $4bc0: $88
	adc  b                                           ; $4bc1: $88
	adc  b                                           ; $4bc2: $88
	adc  b                                           ; $4bc3: $88
	add  a                                           ; $4bc4: $87
	adc  c                                           ; $4bc5: $89
	adc  b                                           ; $4bc6: $88
	adc  b                                           ; $4bc7: $88
	adc  c                                           ; $4bc8: $89
	and  a                                           ; $4bc9: $a7
	adc  b                                           ; $4bca: $88
	add  a                                           ; $4bcb: $87
	ld   a, b                                        ; $4bcc: $78
	add  a                                           ; $4bcd: $87
	ld   a, b                                        ; $4bce: $78
	ld   a, b                                        ; $4bcf: $78
	adc  b                                           ; $4bd0: $88
	adc  b                                           ; $4bd1: $88
	sbc  c                                           ; $4bd2: $99
	sbc  b                                           ; $4bd3: $98
	adc  b                                           ; $4bd4: $88
	adc  b                                           ; $4bd5: $88
	adc  b                                           ; $4bd6: $88
	adc  c                                           ; $4bd7: $89
	adc  c                                           ; $4bd8: $89
	sbc  c                                           ; $4bd9: $99
	ld   a, c                                        ; $4bda: $79
	add  a                                           ; $4bdb: $87
	adc  b                                           ; $4bdc: $88
	adc  b                                           ; $4bdd: $88
	ld   [hl], a                                     ; $4bde: $77
	ld   a, c                                        ; $4bdf: $79
	sub  a                                           ; $4be0: $97
	ld   [hl], a                                     ; $4be1: $77
	cp   h                                           ; $4be2: $bc
	sub  a                                           ; $4be3: $97
	cp   c                                           ; $4be4: $b9
	ld   d, a                                        ; $4be5: $57
	ld   a, c                                        ; $4be6: $79
	halt                                             ; $4be7: $76
	ld   [hl], a                                     ; $4be8: $77
	ld   [hl], a                                     ; $4be9: $77
	sub  a                                           ; $4bea: $97
	adc  c                                           ; $4beb: $89
	sbc  d                                           ; $4bec: $9a
	xor  c                                           ; $4bed: $a9
	ld   a, c                                        ; $4bee: $79
	add  a                                           ; $4bef: $87
	adc  c                                           ; $4bf0: $89
	and  a                                           ; $4bf1: $a7
	ld   e, d                                        ; $4bf2: $5a
	sub  l                                           ; $4bf3: $95
	adc  d                                           ; $4bf4: $8a
	sbc  b                                           ; $4bf5: $98
	sbc  b                                           ; $4bf6: $98
	add  a                                           ; $4bf7: $87
	ld   a, b                                        ; $4bf8: $78
	halt                                             ; $4bf9: $76
	ld   a, b                                        ; $4bfa: $78
	ld   a, b                                        ; $4bfb: $78
	ld   [hl], a                                     ; $4bfc: $77
	ld   [hl], a                                     ; $4bfd: $77
	adc  h                                           ; $4bfe: $8c
	or   [hl]                                        ; $4bff: $b6
	sbc  b                                           ; $4c00: $98
	add  a                                           ; $4c01: $87
	ld   l, b                                        ; $4c02: $68
	adc  b                                           ; $4c03: $88
	ld   [hl], a                                     ; $4c04: $77
	ld   [hl], a                                     ; $4c05: $77
	ld   a, b                                        ; $4c06: $78
	add  a                                           ; $4c07: $87
	adc  c                                           ; $4c08: $89
	xor  c                                           ; $4c09: $a9
	ld   [hl], a                                     ; $4c0a: $77
	sbc  e                                           ; $4c0b: $9b
	add  [hl]                                        ; $4c0c: $86
	sbc  b                                           ; $4c0d: $98

jr_0db_4c0e:
	sub  a                                           ; $4c0e: $97
	ld   d, a                                        ; $4c0f: $57
	ld   a, b                                        ; $4c10: $78
	ld   h, [hl]                                     ; $4c11: $66
	ld   l, c                                        ; $4c12: $69
	add  a                                           ; $4c13: $87
	add  a                                           ; $4c14: $87
	add  a                                           ; $4c15: $87
	ld   [hl], a                                     ; $4c16: $77
	ld   a, b                                        ; $4c17: $78
	ld   a, b                                        ; $4c18: $78
	adc  c                                           ; $4c19: $89
	sbc  c                                           ; $4c1a: $99
	adc  b                                           ; $4c1b: $88
	ld   [hl], a                                     ; $4c1c: $77
	ld   [hl], a                                     ; $4c1d: $77
	ld   a, b                                        ; $4c1e: $78
	ld   [hl], a                                     ; $4c1f: $77
	add  a                                           ; $4c20: $87
	ld   a, c                                        ; $4c21: $79
	sbc  c                                           ; $4c22: $99
	or   [hl]                                        ; $4c23: $b6
	adc  d                                           ; $4c24: $8a
	sub  a                                           ; $4c25: $97
	ld   d, a                                        ; $4c26: $57
	sub  a                                           ; $4c27: $97
	ld   h, l                                        ; $4c28: $65
	ld   l, c                                        ; $4c29: $69
	halt                                             ; $4c2a: $76
	ld   h, a                                        ; $4c2b: $67
	adc  b                                           ; $4c2c: $88
	sbc  b                                           ; $4c2d: $98
	adc  c                                           ; $4c2e: $89
	sbc  b                                           ; $4c2f: $98
	adc  b                                           ; $4c30: $88
	ld   a, e                                        ; $4c31: $7b
	xor  c                                           ; $4c32: $a9
	halt                                             ; $4c33: $76
	ld   [hl], a                                     ; $4c34: $77
	add  a                                           ; $4c35: $87
	sbc  b                                           ; $4c36: $98
	halt                                             ; $4c37: $76
	ld   l, c                                        ; $4c38: $69
	sub  a                                           ; $4c39: $97
	ld   [hl], a                                     ; $4c3a: $77
	ld   h, l                                        ; $4c3b: $65
	ld   a, c                                        ; $4c3c: $79
	ld   d, [hl]                                     ; $4c3d: $56
	ld   d, l                                        ; $4c3e: $55
	ld   a, b                                        ; $4c3f: $78
	add  [hl]                                        ; $4c40: $86
	ld   e, c                                        ; $4c41: $59
	ret                                              ; $4c42: $c9


	adc  b                                           ; $4c43: $88
	ld   l, h                                        ; $4c44: $6c
	push de                                          ; $4c45: $d5
	ld   a, e                                        ; $4c46: $7b
	cp   d                                           ; $4c47: $ba
	xor  b                                           ; $4c48: $a8
	ld   a, c                                        ; $4c49: $79
	adc  d                                           ; $4c4a: $8a
	xor  c                                           ; $4c4b: $a9
	ld   d, l                                        ; $4c4c: $55
	ld   d, l                                        ; $4c4d: $55
	ld   h, d                                        ; $4c4e: $62
	ld   de, $1101                                   ; $4c4f: $11 $01 $11
	jr   jr_0db_4c0e                                 ; $4c52: $18 $ba

	rst  JumpTable                                         ; $4c54: $df
	rst  $38                                         ; $4c55: $ff
	rst  $38                                         ; $4c56: $ff
	jp   c, $eacd                                    ; $4c57: $da $cd $ea

	jp   z, $b5af                                    ; $4c5a: $ca $af $b5

	ld   e, d                                        ; $4c5d: $5a
	ld   d, h                                        ; $4c5e: $54
	ld   de, $1111                                   ; $4c5f: $11 $11 $11
	scf                                              ; $4c62: $37
	cp   a                                           ; $4c63: $bf
	rst  $38                                         ; $4c64: $ff
	rst  $38                                         ; $4c65: $ff
	ei                                               ; $4c66: $fb
	ld   a, c                                        ; $4c67: $79
	sbc  h                                           ; $4c68: $9c
	ei                                               ; $4c69: $fb
	db   $db                                         ; $4c6a: $db
	cp   d                                           ; $4c6b: $ba
	ld   l, c                                        ; $4c6c: $69
	sbc  c                                           ; $4c6d: $99
	ld   h, h                                        ; $4c6e: $64
	ld   de, $1111                                   ; $4c6f: $11 $11 $11
	jr   c, @+$01                                    ; $4c72: $38 $ff

	rst  $38                                         ; $4c74: $ff
	db   $fd                                         ; $4c75: $fd
	add  a                                           ; $4c76: $87
	adc  h                                           ; $4c77: $8c
	cp   d                                           ; $4c78: $ba
	ld   a, h                                        ; $4c79: $7c
	xor  c                                           ; $4c7a: $a9
	xor  c                                           ; $4c7b: $a9
	and  a                                           ; $4c7c: $a7
	and  a                                           ; $4c7d: $a7
	ld   h, h                                        ; $4c7e: $64
	ld   de, $1111                                   ; $4c7f: $11 $11 $11
	adc  c                                           ; $4c82: $89
	rst  $38                                         ; $4c83: $ff
	rst  $38                                         ; $4c84: $ff
	rst  $38                                         ; $4c85: $ff
	cp   [hl]                                        ; $4c86: $be
	ld   d, [hl]                                     ; $4c87: $56
	call z, $b6bd                                    ; $4c88: $cc $bd $b6
	xor  d                                           ; $4c8b: $aa
	sbc  d                                           ; $4c8c: $9a
	sub  a                                           ; $4c8d: $97
	ld   d, h                                        ; $4c8e: $54
	ld   de, $1711                                   ; $4c8f: $11 $11 $17
	sbc  [hl]                                        ; $4c92: $9e
	rst  $38                                         ; $4c93: $ff
	rst  $38                                         ; $4c94: $ff
	ld   [$6ce5], a                                  ; $4c95: $ea $e5 $6c
	cp   [hl]                                        ; $4c98: $be
	jp   z, $aa7c                                    ; $4c99: $ca $7c $aa

	sbc  c                                           ; $4c9c: $99
	ret  c                                           ; $4c9d: $d8

	ld   de, $1111                                   ; $4c9e: $11 $11 $11
	ld   d, $9f                                      ; $4ca1: $16 $9f
	rst  $38                                         ; $4ca3: $ff
	rst  $38                                         ; $4ca4: $ff
	reti                                             ; $4ca5: $d9


	halt                                             ; $4ca6: $76
	ld   l, e                                        ; $4ca7: $6b
	rst  JumpTable                                         ; $4ca8: $df
	adc  e                                           ; $4ca9: $8b
	ret                                              ; $4caa: $c9


	db   $db                                         ; $4cab: $db
	xor  b                                           ; $4cac: $a8
	or   l                                           ; $4cad: $b5
	ld   de, $1111                                   ; $4cae: $11 $11 $11
	cpl                                              ; $4cb1: $2f
	rst  $28                                         ; $4cb2: $ef
	rst  $38                                         ; $4cb3: $ff
	rst  $38                                         ; $4cb4: $ff
	pop  af                                          ; $4cb5: $f1
	ld   b, a                                        ; $4cb6: $47
	sbc  h                                           ; $4cb7: $9c
	cp   a                                           ; $4cb8: $bf
	adc  e                                           ; $4cb9: $8b
	ld   a, h                                        ; $4cba: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cbb: $cf
	and  $71                                         ; $4cbc: $e6 $71
	ld   de, $1111                                   ; $4cbe: $11 $11 $11
	ld   c, a                                        ; $4cc1: $4f
	rst  $38                                         ; $4cc2: $ff
	rst  $38                                         ; $4cc3: $ff
	rst  $38                                         ; $4cc4: $ff
	ld   a, b                                        ; $4cc5: $78
	dec  [hl]                                        ; $4cc6: $35
	sbc  e                                           ; $4cc7: $9b
	ld   sp, hl                                      ; $4cc8: $f9
	cp   e                                           ; $4cc9: $bb
	call z, $9cfe                                    ; $4cca: $cc $fe $9c
	ld   h, c                                        ; $4ccd: $61
	ld   de, $1111                                   ; $4cce: $11 $11 $11
	dec  a                                           ; $4cd1: $3d
	rst  $38                                         ; $4cd2: $ff
	ld   a, [$f8ff]                                  ; $4cd3: $fa $ff $f8
	ld   de, $fc5d                                   ; $4cd6: $11 $5d $fc
	db   $db                                         ; $4cd9: $db
	db   $fc                                         ; $4cda: $fc
	call $31dc                                       ; $4cdb: $cd $dc $31
	ld   de, $1111                                   ; $4cde: $11 $11 $11
	dec  e                                           ; $4ce1: $1d
	rst  $38                                         ; $4ce2: $ff
	db   $fd                                         ; $4ce3: $fd
	rst  $38                                         ; $4ce4: $ff
	and  [hl]                                        ; $4ce5: $a6
	ld   b, d                                        ; $4ce6: $42
	sbc  e                                           ; $4ce7: $9b
	adc  $ce                                         ; $4ce8: $ce $ce
	xor  $eb                                         ; $4cea: $ee $eb
	cp   l                                           ; $4cec: $bd
	ld   [hl], c                                     ; $4ced: $71
	ld   de, $1111                                   ; $4cee: $11 $11 $11
	inc  e                                           ; $4cf1: $1c
	rst  $38                                         ; $4cf2: $ff
	rst  $38                                         ; $4cf3: $ff
	adc  $fa                                         ; $4cf4: $ce $fa
	ld   de, $ff5e                                   ; $4cf6: $11 $5e $ff
	xor  e                                           ; $4cf9: $ab
	rst  $38                                         ; $4cfa: $ff
	db   $fd                                         ; $4cfb: $fd
	ret  z                                           ; $4cfc: $c8

	ld   [hl], d                                     ; $4cfd: $72
	ld   de, $1111                                   ; $4cfe: $11 $11 $11
	rla                                              ; $4d01: $17
	rst  $38                                         ; $4d02: $ff
	rst  $38                                         ; $4d03: $ff
	rst  $38                                         ; $4d04: $ff
	db   $ec                                         ; $4d05: $ec
	ld   sp, $df6d                                   ; $4d06: $31 $6d $df
	jp   z, $faff                                    ; $4d09: $ca $ff $fa

	xor  d                                           ; $4d0c: $aa
	sub  l                                           ; $4d0d: $95
	ld   de, $1111                                   ; $4d0e: $11 $11 $11
	ld   de, $ffdf                                   ; $4d11: $11 $df $ff
	cp   $c9                                         ; $4d14: $fe $c9
	ld   [hl], a                                     ; $4d16: $77
	ld   c, b                                        ; $4d17: $48
	sbc  l                                           ; $4d18: $9d
	db   $fd                                         ; $4d19: $fd
	rst  $38                                         ; $4d1a: $ff
	db   $fc                                         ; $4d1b: $fc
	cp   e                                           ; $4d1c: $bb
	sub  a                                           ; $4d1d: $97
	ld   hl, $1111                                   ; $4d1e: $21 $11 $11
	ld   de, $ff4f                                   ; $4d21: $11 $4f $ff
	rst  $38                                         ; $4d24: $ff
	call c, Call_0db_41a3                            ; $4d25: $dc $a3 $41
	cp   a                                           ; $4d28: $bf
	rst  JumpTable                                         ; $4d29: $df
	cp   h                                           ; $4d2a: $bc
	rst  $28                                         ; $4d2b: $ef
	cp   e                                           ; $4d2c: $bb
	and  [hl]                                        ; $4d2d: $a6
	ld   h, c                                        ; $4d2e: $61
	ld   de, $1111                                   ; $4d2f: $11 $11 $11
	dec  de                                          ; $4d32: $1b
	rst  $38                                         ; $4d33: $ff
	rst  $38                                         ; $4d34: $ff
	call c, $93d9                                    ; $4d35: $dc $d9 $93
	ld   a, [hl+]                                    ; $4d38: $2a
	rst  JumpTable                                         ; $4d39: $df
	db   $fc                                         ; $4d3a: $fc
	db   $dd                                         ; $4d3b: $dd
	cp   $c8                                         ; $4d3c: $fe $c8
	ld   h, d                                        ; $4d3e: $62
	ld   de, $1111                                   ; $4d3f: $11 $11 $11
	ld   de, $ffcf                                   ; $4d42: $11 $cf $ff
	call z, $a5fe                                    ; $4d45: $cc $fe $a5
	inc  de                                          ; $4d48: $13
	cp   [hl]                                        ; $4d49: $be
	cp   $dd                                         ; $4d4a: $fe $dd
	rst  $28                                         ; $4d4c: $ef
	reti                                             ; $4d4d: $d9


	add  [hl]                                        ; $4d4e: $86
	ld   de, $1111                                   ; $4d4f: $11 $11 $11
	ld   de, $ef1d                                   ; $4d52: $11 $1d $ef
	rst  $38                                         ; $4d55: $ff
	rst  $28                                         ; $4d56: $ef
	add  sp, $62                                     ; $4d57: $e8 $62
	ld   a, h                                        ; $4d59: $7c
	rst  JumpTable                                         ; $4d5a: $df
	sbc  $df                                         ; $4d5b: $de $df
	ld   [$72a7], a                                  ; $4d5d: $ea $a7 $72
	ld   de, $1111                                   ; $4d60: $11 $11 $11
	ld   de, $ff9e                                   ; $4d63: $11 $9e $ff
	rst  $38                                         ; $4d66: $ff
	call z, $37a9                                    ; $4d67: $cc $a9 $37
	cp   a                                           ; $4d6a: $bf
	cp   $ed                                         ; $4d6b: $fe $ed
	db   $ec                                         ; $4d6d: $ec
	cp   c                                           ; $4d6e: $b9
	adc  b                                           ; $4d6f: $88
	ld   hl, $1111                                   ; $4d70: $21 $11 $11
	ld   de, $ff1b                                   ; $4d73: $11 $1b $ff
	db   $fd                                         ; $4d76: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d77: $cf
	ei                                               ; $4d78: $fb
	ld   [hl], e                                     ; $4d79: $73
	ld   l, l                                        ; $4d7a: $6d
	rst  $38                                         ; $4d7b: $ff
	call c, $dbcd                                    ; $4d7c: $dc $cd $db
	xor  b                                           ; $4d7f: $a8
	ld   [hl], e                                     ; $4d80: $73
	ld   de, $1111                                   ; $4d81: $11 $11 $11
	ld   de, $ff8b                                   ; $4d84: $11 $8b $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d87: $cf
	rst  $38                                         ; $4d88: $ff
	cp   c                                           ; $4d89: $b9
	ld   b, a                                        ; $4d8a: $47
	db   $dd                                         ; $4d8b: $dd
	ei                                               ; $4d8c: $fb
	db   $dd                                         ; $4d8d: $dd
	adc  $aa                                         ; $4d8e: $ce $aa
	adc  b                                           ; $4d90: $88
	ld   b, c                                        ; $4d91: $41
	ld   de, $1111                                   ; $4d92: $11 $11 $11
	rla                                              ; $4d95: $17
	xor  a                                           ; $4d96: $af
	cp   $ff                                         ; $4d97: $fe $ff
	db   $fc                                         ; $4d99: $fc
	and  a                                           ; $4d9a: $a7
	ld   a, e                                        ; $4d9b: $7b
	rst  JumpTable                                         ; $4d9c: $df
	call $d9cd                                       ; $4d9d: $cd $cd $d9
	cp   b                                           ; $4da0: $b8
	sub  l                                           ; $4da1: $95
	ld   hl, $1111                                   ; $4da2: $21 $11 $11
	ld   de, $bf48                                   ; $4da5: $11 $48 $bf
	rst  JumpTable                                         ; $4da8: $df
	rst  $38                                         ; $4da9: $ff
	db   $fc                                         ; $4daa: $fc
	cp   b                                           ; $4dab: $b8
	call z, $bced                                    ; $4dac: $cc $ed $bc
	cp   [hl]                                        ; $4daf: $be
	jp   z, Jump_0db_6487                            ; $4db0: $ca $87 $64

	ld   hl, $1111                                   ; $4db3: $21 $11 $11
	ld   de, $ad47                                   ; $4db6: $11 $47 $ad
	call $fcff                                       ; $4db9: $cd $ff $fc
	sbc  d                                           ; $4dbc: $9a
	db   $dd                                         ; $4dbd: $dd
	db   $ec                                         ; $4dbe: $ec
	xor  e                                           ; $4dbf: $ab
	cp   e                                           ; $4dc0: $bb
	xor  b                                           ; $4dc1: $a8
	add  a                                           ; $4dc2: $87
	ld   [hl], l                                     ; $4dc3: $75
	ld   b, d                                        ; $4dc4: $42
	ld   [de], a                                     ; $4dc5: $12
	ld   de, $4611                                   ; $4dc6: $11 $11 $46
	ld   l, c                                        ; $4dc9: $69
	ld   l, c                                        ; $4dca: $69
	xor  h                                           ; $4dcb: $ac
	jp   c, $beba                                    ; $4dcc: $da $ba $be

	db   $dd                                         ; $4dcf: $dd
	cp   h                                           ; $4dd0: $bc
	res  7, e                                        ; $4dd1: $cb $bb
	xor  d                                           ; $4dd3: $aa
	xor  d                                           ; $4dd4: $aa
	sub  a                                           ; $4dd5: $97
	ld   [hl], a                                     ; $4dd6: $77
	ld   d, l                                        ; $4dd7: $55
	ld   b, d                                        ; $4dd8: $42
	ld   de, $1211                                   ; $4dd9: $11 $11 $12
	inc  sp                                          ; $4ddc: $33
	ld   [hl], $78                                   ; $4ddd: $36 $78
	cp   h                                           ; $4ddf: $bc
	rst  $28                                         ; $4de0: $ef
	rst  $38                                         ; $4de1: $ff
	rst  $38                                         ; $4de2: $ff
	rst  $38                                         ; $4de3: $ff
	xor  $dc                                         ; $4de4: $ee $dc
	xor  c                                           ; $4de6: $a9
	add  a                                           ; $4de7: $87
	ld   h, h                                        ; $4de8: $64
	ld   b, e                                        ; $4de9: $43
	ld   hl, $1111                                   ; $4dea: $21 $11 $11
	ld   de, $2311                                   ; $4ded: $11 $11 $23
	ld   d, a                                        ; $4df0: $57
	sbc  e                                           ; $4df1: $9b
	adc  $ff                                         ; $4df2: $ce $ff
	rst  $38                                         ; $4df4: $ff
	rst  $38                                         ; $4df5: $ff
	rst  $38                                         ; $4df6: $ff
	db   $fd                                         ; $4df7: $fd
	cp   c                                           ; $4df8: $b9
	add  a                                           ; $4df9: $87
	ld   d, h                                        ; $4dfa: $54
	inc  sp                                          ; $4dfb: $33
	ld   [hl-], a                                    ; $4dfc: $32
	ld   de, $1111                                   ; $4dfd: $11 $11 $11
	ld   de, $3521                                   ; $4e00: $11 $21 $35
	ld   a, c                                        ; $4e03: $79
	cp   h                                           ; $4e04: $bc
	rst  $28                                         ; $4e05: $ef
	rst  $38                                         ; $4e06: $ff
	rst  $38                                         ; $4e07: $ff
	rst  $38                                         ; $4e08: $ff
	rst  $38                                         ; $4e09: $ff
	db   $db                                         ; $4e0a: $db
	sbc  c                                           ; $4e0b: $99
	halt                                             ; $4e0c: $76
	ld   d, h                                        ; $4e0d: $54
	ld   b, e                                        ; $4e0e: $43
	ld   hl, $1111                                   ; $4e0f: $21 $11 $11
	ld   de, $2211                                   ; $4e12: $11 $11 $22
	ld   b, [hl]                                     ; $4e15: $46
	adc  d                                           ; $4e16: $8a
	call $ffff                                       ; $4e17: $cd $ff $ff
	rst  $38                                         ; $4e1a: $ff
	rst  $38                                         ; $4e1b: $ff
	cp   $da                                         ; $4e1c: $fe $da
	xor  b                                           ; $4e1e: $a8
	halt                                             ; $4e1f: $76
	ld   d, h                                        ; $4e20: $54
	ld   b, e                                        ; $4e21: $43
	ld   hl, $1111                                   ; $4e22: $21 $11 $11
	ld   de, $2311                                   ; $4e25: $11 $11 $23
	ld   d, [hl]                                     ; $4e28: $56
	sbc  e                                           ; $4e29: $9b
	cp   [hl]                                        ; $4e2a: $be
	rst  $38                                         ; $4e2b: $ff
	rst  $38                                         ; $4e2c: $ff
	rst  $38                                         ; $4e2d: $ff
	rst  $38                                         ; $4e2e: $ff
	db   $fd                                         ; $4e2f: $fd
	jp   c, Jump_0db_7699                            ; $4e30: $da $99 $76

	ld   d, h                                        ; $4e33: $54
	ld   b, e                                        ; $4e34: $43
	ld   [hl+], a                                    ; $4e35: $22
	ld   de, $1111                                   ; $4e36: $11 $11 $11
	ld   [de], a                                     ; $4e39: $12
	inc  hl                                          ; $4e3a: $23
	ld   d, a                                        ; $4e3b: $57
	sbc  c                                           ; $4e3c: $99
	cp   [hl]                                        ; $4e3d: $be
	rst  $38                                         ; $4e3e: $ff
	rst  $38                                         ; $4e3f: $ff
	rst  $38                                         ; $4e40: $ff
	rst  $38                                         ; $4e41: $ff
	cp   $cb                                         ; $4e42: $fe $cb
	xor  c                                           ; $4e44: $a9
	halt                                             ; $4e45: $76
	ld   d, l                                        ; $4e46: $55
	ld   b, h                                        ; $4e47: $44
	ld   [hl-], a                                    ; $4e48: $32
	ld   hl, $2111                                   ; $4e49: $21 $11 $21
	ld   [de], a                                     ; $4e4c: $12
	ld   [hl+], a                                    ; $4e4d: $22
	ld   b, [hl]                                     ; $4e4e: $46
	ld   a, c                                        ; $4e4f: $79
	xor  h                                           ; $4e50: $ac
	rst  $28                                         ; $4e51: $ef
	rst  $38                                         ; $4e52: $ff
	rst  $38                                         ; $4e53: $ff
	rst  $38                                         ; $4e54: $ff
	cp   $cb                                         ; $4e55: $fe $cb
	xor  c                                           ; $4e57: $a9
	add  a                                           ; $4e58: $87
	ld   h, l                                        ; $4e59: $65
	ld   d, h                                        ; $4e5a: $54
	inc  sp                                          ; $4e5b: $33
	ld   [hl+], a                                    ; $4e5c: $22
	ld   de, $1122                                   ; $4e5d: $11 $22 $11
	inc  hl                                          ; $4e60: $23
	dec  [hl]                                        ; $4e61: $35
	ld   h, a                                        ; $4e62: $67
	sbc  d                                           ; $4e63: $9a
	adc  $ff                                         ; $4e64: $ce $ff
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff
	rst  $38                                         ; $4e68: $ff
	db   $ed                                         ; $4e69: $ed
	jp   z, Jump_0db_76a9                            ; $4e6a: $ca $a9 $76

	ld   h, l                                        ; $4e6d: $65
	ld   b, h                                        ; $4e6e: $44
	inc  sp                                          ; $4e6f: $33
	ld   hl, $2102                                   ; $4e70: $21 $02 $21
	ld   [de], a                                     ; $4e73: $12
	ld   [hl+], a                                    ; $4e74: $22
	ld   b, l                                        ; $4e75: $45
	ld   a, b                                        ; $4e76: $78
	xor  e                                           ; $4e77: $ab
	rst  $28                                         ; $4e78: $ef
	rst  $38                                         ; $4e79: $ff
	rst  $38                                         ; $4e7a: $ff
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	db   $db                                         ; $4e7d: $db
	cp   e                                           ; $4e7e: $bb
	xor  c                                           ; $4e7f: $a9
	halt                                             ; $4e80: $76
	ld   h, l                                        ; $4e81: $65
	ld   b, h                                        ; $4e82: $44
	inc  sp                                          ; $4e83: $33
	ld   [hl+], a                                    ; $4e84: $22
	ld   [de], a                                     ; $4e85: $12
	ld   hl, $2312                                   ; $4e86: $21 $12 $23
	ld   b, l                                        ; $4e89: $45
	ld   l, b                                        ; $4e8a: $68
	sbc  e                                           ; $4e8b: $9b
	sbc  $ff                                         ; $4e8c: $de $ff
	rst  $38                                         ; $4e8e: $ff
	rst  $38                                         ; $4e8f: $ff
	rst  $38                                         ; $4e90: $ff
	call c, $98ca                                    ; $4e91: $dc $ca $98
	add  a                                           ; $4e94: $87
	ld   h, l                                        ; $4e95: $65
	ld   d, h                                        ; $4e96: $54
	ld   b, e                                        ; $4e97: $43
	ld   [hl+], a                                    ; $4e98: $22
	ld   de, $1122                                   ; $4e99: $11 $22 $11
	ld   [hl+], a                                    ; $4e9c: $22
	dec  [hl]                                        ; $4e9d: $35
	ld   h, a                                        ; $4e9e: $67
	adc  d                                           ; $4e9f: $8a
	adc  $ff                                         ; $4ea0: $ce $ff
	rst  $38                                         ; $4ea2: $ff
	rst  $38                                         ; $4ea3: $ff
	rst  $38                                         ; $4ea4: $ff
	db   $ec                                         ; $4ea5: $ec
	cp   e                                           ; $4ea6: $bb
	xor  d                                           ; $4ea7: $aa
	add  a                                           ; $4ea8: $87
	ld   h, [hl]                                     ; $4ea9: $66
	ld   d, l                                        ; $4eaa: $55
	ld   b, e                                        ; $4eab: $43
	ld   [hl-], a                                    ; $4eac: $32
	ld   de, $1111                                   ; $4ead: $11 $11 $11
	ld   [de], a                                     ; $4eb0: $12
	inc  h                                           ; $4eb1: $24
	ld   d, [hl]                                     ; $4eb2: $56
	ld   a, c                                        ; $4eb3: $79
	xor  l                                           ; $4eb4: $ad
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff
	rst  $38                                         ; $4eb8: $ff
	cp   $dc                                         ; $4eb9: $fe $dc
	cp   e                                           ; $4ebb: $bb
	xor  b                                           ; $4ebc: $a8
	halt                                             ; $4ebd: $76
	ld   d, l                                        ; $4ebe: $55
	ld   b, e                                        ; $4ebf: $43
	ld   [hl-], a                                    ; $4ec0: $32
	ld   hl, $1111                                   ; $4ec1: $21 $11 $11
	ld   de, $3522                                   ; $4ec4: $11 $22 $35
	ld   h, a                                        ; $4ec7: $67
	sbc  e                                           ; $4ec8: $9b
	rst  JumpTable                                         ; $4ec9: $df
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	rst  $38                                         ; $4ecc: $ff
	rst  $38                                         ; $4ecd: $ff
	cp   $da                                         ; $4ece: $fe $da
	xor  c                                           ; $4ed0: $a9
	add  l                                           ; $4ed1: $85
	inc  h                                           ; $4ed2: $24
	ld   [hl-], a                                    ; $4ed3: $32
	ld   sp, $1101                                   ; $4ed4: $31 $01 $11
	ld   de, $2312                                   ; $4ed7: $11 $12 $23
	ld   e, b                                        ; $4eda: $58
	xor  e                                           ; $4edb: $ab
	call $ffdf                                       ; $4edc: $cd $df $ff
	rst  $38                                         ; $4edf: $ff
	rst  $38                                         ; $4ee0: $ff
	cp   $da                                         ; $4ee1: $fe $da
	sbc  b                                           ; $4ee3: $98
	ld   [hl], a                                     ; $4ee4: $77
	halt                                             ; $4ee5: $76
	ld   d, h                                        ; $4ee6: $54
	ld   b, h                                        ; $4ee7: $44
	inc  sp                                          ; $4ee8: $33
	ld   hl, $1111                                   ; $4ee9: $21 $11 $11
	ld   de, $5623                                   ; $4eec: $11 $23 $56
	sbc  e                                           ; $4eef: $9b
	call $ffee                                       ; $4ef0: $cd $ee $ff
	rst  $38                                         ; $4ef3: $ff
	rst  $38                                         ; $4ef4: $ff
	cp   $db                                         ; $4ef5: $fe $db
	sbc  b                                           ; $4ef7: $98
	ld   [hl], a                                     ; $4ef8: $77
	halt                                             ; $4ef9: $76
	ld   d, h                                        ; $4efa: $54
	inc  sp                                          ; $4efb: $33
	ld   b, e                                        ; $4efc: $43
	ld   hl, $1111                                   ; $4efd: $21 $11 $11
	ld   [de], a                                     ; $4f00: $12
	inc  [hl]                                        ; $4f01: $34
	ld   l, c                                        ; $4f02: $69
	xor  d                                           ; $4f03: $aa
	call z, $ffce                                    ; $4f04: $cc $ce $ff
	rst  $38                                         ; $4f07: $ff
	rst  $38                                         ; $4f08: $ff
	db   $fd                                         ; $4f09: $fd
	db   $db                                         ; $4f0a: $db
	sub  a                                           ; $4f0b: $97
	ld   h, a                                        ; $4f0c: $67
	ld   [hl], a                                     ; $4f0d: $77
	ld   h, h                                        ; $4f0e: $64
	ld   b, l                                        ; $4f0f: $45
	ld   b, h                                        ; $4f10: $44
	ld   [hl-], a                                    ; $4f11: $32
	ld   de, $0211                                   ; $4f12: $11 $11 $02
	inc  [hl]                                        ; $4f15: $34
	ld   e, c                                        ; $4f16: $59
	xor  e                                           ; $4f17: $ab
	call z, $ffde                                    ; $4f18: $cc $de $ff
	rst  $38                                         ; $4f1b: $ff
	rst  $38                                         ; $4f1c: $ff
	xor  $da                                         ; $4f1d: $ee $da
	xor  b                                           ; $4f1f: $a8
	ld   [hl], a                                     ; $4f20: $77
	add  a                                           ; $4f21: $87
	ld   [hl], l                                     ; $4f22: $75
	ld   b, e                                        ; $4f23: $43
	ld   b, h                                        ; $4f24: $44
	ld   b, e                                        ; $4f25: $43
	ld   de, $1211                                   ; $4f26: $11 $11 $12
	inc  [hl]                                        ; $4f29: $34
	ld   d, [hl]                                     ; $4f2a: $56
	adc  e                                           ; $4f2b: $8b
	db   $dd                                         ; $4f2c: $dd
	db   $dd                                         ; $4f2d: $dd
	rst  $28                                         ; $4f2e: $ef
	rst  $38                                         ; $4f2f: $ff
	rst  $38                                         ; $4f30: $ff
	db   $ed                                         ; $4f31: $ed
	res  5, c                                        ; $4f32: $cb $a9
	halt                                             ; $4f34: $76
	ld   [hl], a                                     ; $4f35: $77
	halt                                             ; $4f36: $76
	ld   d, l                                        ; $4f37: $55
	ld   b, h                                        ; $4f38: $44
	ld   d, h                                        ; $4f39: $54
	ld   hl, $1111                                   ; $4f3a: $21 $11 $11
	inc  de                                          ; $4f3d: $13
	ld   b, l                                        ; $4f3e: $45
	ld   a, c                                        ; $4f3f: $79
	cp   l                                           ; $4f40: $bd
	sbc  $ff                                         ; $4f41: $de $ff
	rst  $38                                         ; $4f43: $ff
	rst  $38                                         ; $4f44: $ff
	cp   $cc                                         ; $4f45: $fe $cc
	cp   c                                           ; $4f47: $b9
	add  a                                           ; $4f48: $87
	ld   [hl], a                                     ; $4f49: $77
	ld   [hl], a                                     ; $4f4a: $77
	halt                                             ; $4f4b: $76
	ld   d, h                                        ; $4f4c: $54
	ld   b, l                                        ; $4f4d: $45
	ld   b, e                                        ; $4f4e: $43
	ld   de, $1111                                   ; $4f4f: $11 $11 $11
	inc  hl                                          ; $4f52: $23
	ld   b, [hl]                                     ; $4f53: $46
	sbc  e                                           ; $4f54: $9b
	call $ffdd                                       ; $4f55: $cd $dd $ff
	rst  $38                                         ; $4f58: $ff
	rst  $38                                         ; $4f59: $ff
	db   $ed                                         ; $4f5a: $ed
	res  5, c                                        ; $4f5b: $cb $a9
	ld   [hl], a                                     ; $4f5d: $77
	ld   a, b                                        ; $4f5e: $78
	sbc  b                                           ; $4f5f: $98
	ld   h, l                                        ; $4f60: $65
	ld   b, h                                        ; $4f61: $44
	ld   b, l                                        ; $4f62: $45
	ld   b, e                                        ; $4f63: $43
	ld   de, $1111                                   ; $4f64: $11 $11 $11
	inc  [hl]                                        ; $4f67: $34
	ld   d, [hl]                                     ; $4f68: $56
	adc  e                                           ; $4f69: $8b
	adc  $ee                                         ; $4f6a: $ce $ee
	rst  $28                                         ; $4f6c: $ef
	rst  $38                                         ; $4f6d: $ff
	rst  $38                                         ; $4f6e: $ff
	call c, $bacb                                    ; $4f6f: $dc $cb $ba
	add  [hl]                                        ; $4f72: $86
	ld   h, a                                        ; $4f73: $67
	adc  b                                           ; $4f74: $88
	ld   [hl], l                                     ; $4f75: $75
	ld   b, h                                        ; $4f76: $44
	ld   b, h                                        ; $4f77: $44
	ld   b, e                                        ; $4f78: $43
	ld   de, $1111                                   ; $4f79: $11 $11 $11
	inc  hl                                          ; $4f7c: $23
	ld   b, [hl]                                     ; $4f7d: $46
	sbc  e                                           ; $4f7e: $9b
	sbc  $ee                                         ; $4f7f: $de $ee
	rst  $38                                         ; $4f81: $ff
	rst  $38                                         ; $4f82: $ff
	rst  $38                                         ; $4f83: $ff
	db   $ed                                         ; $4f84: $ed
	cp   e                                           ; $4f85: $bb
	sbc  c                                           ; $4f86: $99
	add  a                                           ; $4f87: $87
	ld   [hl], a                                     ; $4f88: $77
	ld   a, b                                        ; $4f89: $78
	halt                                             ; $4f8a: $76
	ld   d, h                                        ; $4f8b: $54
	ld   b, h                                        ; $4f8c: $44
	ld   b, h                                        ; $4f8d: $44
	ld   hl, $1111                                   ; $4f8e: $21 $11 $11
	inc  de                                          ; $4f91: $13
	ld   b, l                                        ; $4f92: $45
	ld   a, c                                        ; $4f93: $79
	cp   l                                           ; $4f94: $bd
	rst  $28                                         ; $4f95: $ef
	rst  $38                                         ; $4f96: $ff
	rst  $38                                         ; $4f97: $ff
	rst  $38                                         ; $4f98: $ff
	cp   $cc                                         ; $4f99: $fe $cc
	cp   d                                           ; $4f9b: $ba
	sub  a                                           ; $4f9c: $97
	ld   h, [hl]                                     ; $4f9d: $66
	ld   [hl], a                                     ; $4f9e: $77
	halt                                             ; $4f9f: $76
	ld   d, l                                        ; $4fa0: $55
	ld   b, l                                        ; $4fa1: $45
	ld   d, l                                        ; $4fa2: $55
	ld   b, d                                        ; $4fa3: $42
	ld   de, $1111                                   ; $4fa4: $11 $11 $11
	inc  h                                           ; $4fa7: $24
	ld   b, [hl]                                     ; $4fa8: $46
	sbc  d                                           ; $4fa9: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4faa: $cf
	xor  $ff                                         ; $4fab: $ee $ff
	rst  $38                                         ; $4fad: $ff
	rst  $38                                         ; $4fae: $ff
	db   $ec                                         ; $4faf: $ec
	res  5, b                                        ; $4fb0: $cb $a8
	halt                                             ; $4fb2: $76
	ld   h, a                                        ; $4fb3: $67
	ld   [hl], a                                     ; $4fb4: $77
	ld   h, [hl]                                     ; $4fb5: $66
	ld   d, l                                        ; $4fb6: $55
	ld   d, l                                        ; $4fb7: $55
	ld   d, h                                        ; $4fb8: $54
	ld   [hl-], a                                    ; $4fb9: $32
	ld   de, $1111                                   ; $4fba: $11 $11 $11
	inc  [hl]                                        ; $4fbd: $34
	ld   h, a                                        ; $4fbe: $67
	sbc  h                                           ; $4fbf: $9c
	rst  JumpTable                                         ; $4fc0: $df
	rst  $38                                         ; $4fc1: $ff
	rst  $38                                         ; $4fc2: $ff
	rst  $38                                         ; $4fc3: $ff
	cp   $cc                                         ; $4fc4: $fe $cc
	cp   d                                           ; $4fc6: $ba
	xor  b                                           ; $4fc7: $a8
	halt                                             ; $4fc8: $76
	ld   h, a                                        ; $4fc9: $67
	ld   [hl], a                                     ; $4fca: $77
	ld   h, [hl]                                     ; $4fcb: $66
	ld   h, l                                        ; $4fcc: $65
	ld   d, l                                        ; $4fcd: $55
	ld   b, h                                        ; $4fce: $44
	ld   [hl-], a                                    ; $4fcf: $32
	ld   de, $1311                                   ; $4fd0: $11 $11 $13
	dec  [hl]                                        ; $4fd3: $35
	ld   d, a                                        ; $4fd4: $57
	xor  h                                           ; $4fd5: $ac
	rst  $38                                         ; $4fd6: $ff
	rst  $38                                         ; $4fd7: $ff
	rst  $38                                         ; $4fd8: $ff
	rst  $38                                         ; $4fd9: $ff
	db   $fd                                         ; $4fda: $fd
	call z, $87ba                                    ; $4fdb: $cc $ba $87
	ld   h, [hl]                                     ; $4fde: $66
	ld   [hl], a                                     ; $4fdf: $77
	halt                                             ; $4fe0: $76
	ld   h, [hl]                                     ; $4fe1: $66
	ld   h, [hl]                                     ; $4fe2: $66
	ld   d, l                                        ; $4fe3: $55
	ld   b, h                                        ; $4fe4: $44
	ld   [hl-], a                                    ; $4fe5: $32
	ld   de, $1211                                   ; $4fe6: $11 $11 $12
	dec  [hl]                                        ; $4fe9: $35
	ld   h, a                                        ; $4fea: $67
	cp   l                                           ; $4feb: $bd
	rst  $38                                         ; $4fec: $ff
	rst  $38                                         ; $4fed: $ff
	rst  $38                                         ; $4fee: $ff
	rst  $38                                         ; $4fef: $ff
	db   $fd                                         ; $4ff0: $fd
	call z, $87aa                                    ; $4ff1: $cc $aa $87
	ld   h, [hl]                                     ; $4ff4: $66
	ld   [hl], a                                     ; $4ff5: $77
	ld   [hl], a                                     ; $4ff6: $77
	ld   h, a                                        ; $4ff7: $67
	ld   h, [hl]                                     ; $4ff8: $66
	ld   d, l                                        ; $4ff9: $55
	ld   d, l                                        ; $4ffa: $55
	ld   b, e                                        ; $4ffb: $43
	ld   hl, $1211                                   ; $4ffc: $21 $11 $12
	inc  [hl]                                        ; $4fff: $34
	ld   h, a                                        ; $5000: $67
	sbc  h                                           ; $5001: $9c
	rst  $28                                         ; $5002: $ef
	rst  $38                                         ; $5003: $ff
	rst  $38                                         ; $5004: $ff
	rst  $38                                         ; $5005: $ff
	db   $fd                                         ; $5006: $fd
	res  5, d                                        ; $5007: $cb $aa
	add  a                                           ; $5009: $87
	ld   h, [hl]                                     ; $500a: $66
	ld   h, [hl]                                     ; $500b: $66
	ld   h, [hl]                                     ; $500c: $66
	ld   h, [hl]                                     ; $500d: $66
	ld   h, [hl]                                     ; $500e: $66
	ld   d, l                                        ; $500f: $55
	ld   d, l                                        ; $5010: $55
	ld   b, e                                        ; $5011: $43
	ld   hl, $1211                                   ; $5012: $21 $11 $12
	inc  [hl]                                        ; $5015: $34
	ld   h, [hl]                                     ; $5016: $66
	adc  e                                           ; $5017: $8b
	sbc  $ff                                         ; $5018: $de $ff
	rst  $38                                         ; $501a: $ff
	rst  $38                                         ; $501b: $ff
	cp   $cb                                         ; $501c: $fe $cb
	cp   d                                           ; $501e: $ba
	sub  a                                           ; $501f: $97
	ld   h, [hl]                                     ; $5020: $66
	ld   h, [hl]                                     ; $5021: $66
	ld   h, [hl]                                     ; $5022: $66
	ld   [hl], a                                     ; $5023: $77
	ld   [hl], a                                     ; $5024: $77
	ld   h, l                                        ; $5025: $65
	ld   d, l                                        ; $5026: $55
	ld   d, h                                        ; $5027: $54
	ld   sp, $1111                                   ; $5028: $31 $11 $11
	inc  hl                                          ; $502b: $23
	ld   d, [hl]                                     ; $502c: $56
	adc  d                                           ; $502d: $8a
	adc  $ff                                         ; $502e: $ce $ff
	rst  $38                                         ; $5030: $ff
	rst  $38                                         ; $5031: $ff
	cp   $dc                                         ; $5032: $fe $dc
	jp   z, Jump_0db_6687                            ; $5034: $ca $87 $66

	ld   d, [hl]                                     ; $5037: $56
	ld   h, [hl]                                     ; $5038: $66
	ld   [hl], a                                     ; $5039: $77
	ld   [hl], a                                     ; $503a: $77
	ld   h, [hl]                                     ; $503b: $66
	ld   h, [hl]                                     ; $503c: $66
	ld   h, l                                        ; $503d: $65
	ld   [hl-], a                                    ; $503e: $32
	ld   de, $2311                                   ; $503f: $11 $11 $23
	ld   b, l                                        ; $5042: $45
	ld   l, c                                        ; $5043: $69
	cp   h                                           ; $5044: $bc
	xor  $ff                                         ; $5045: $ee $ff
	rst  $38                                         ; $5047: $ff
	rst  $38                                         ; $5048: $ff
	db   $ed                                         ; $5049: $ed
	res  0, a                                        ; $504a: $cb $87
	ld   h, [hl]                                     ; $504c: $66
	ld   d, l                                        ; $504d: $55
	ld   d, l                                        ; $504e: $55
	ld   h, [hl]                                     ; $504f: $66
	ld   [hl], a                                     ; $5050: $77
	ld   [hl], a                                     ; $5051: $77
	ld   [hl], a                                     ; $5052: $77
	halt                                             ; $5053: $76
	ld   d, h                                        ; $5054: $54
	ld   b, d                                        ; $5055: $42
	ld   de, $3312                                   ; $5056: $11 $12 $33
	ld   d, [hl]                                     ; $5059: $56
	adc  d                                           ; $505a: $8a
	cp   l                                           ; $505b: $bd
	rst  $28                                         ; $505c: $ef
	rst  $38                                         ; $505d: $ff
	rst  $38                                         ; $505e: $ff
	cp   $dc                                         ; $505f: $fe $dc
	xor  c                                           ; $5061: $a9
	add  a                                           ; $5062: $87
	ld   h, [hl]                                     ; $5063: $66
	ld   h, [hl]                                     ; $5064: $66
	ld   h, [hl]                                     ; $5065: $66
	ld   [hl], a                                     ; $5066: $77
	ld   [hl], a                                     ; $5067: $77
	adc  b                                           ; $5068: $88
	add  a                                           ; $5069: $87
	ld   [hl], a                                     ; $506a: $77
	ld   h, [hl]                                     ; $506b: $66
	ld   d, h                                        ; $506c: $54
	inc  sp                                          ; $506d: $33
	inc  sp                                          ; $506e: $33
	inc  [hl]                                        ; $506f: $34
	ld   b, l                                        ; $5070: $45
	ld   d, [hl]                                     ; $5071: $56
	adc  c                                           ; $5072: $89
	xor  e                                           ; $5073: $ab
	call $dddd                                       ; $5074: $cd $dd $dd
	db   $dd                                         ; $5077: $dd
	cp   e                                           ; $5078: $bb
	xor  c                                           ; $5079: $a9
	xor  b                                           ; $507a: $a8
	adc  b                                           ; $507b: $88
	adc  b                                           ; $507c: $88
	adc  b                                           ; $507d: $88
	adc  b                                           ; $507e: $88
	adc  b                                           ; $507f: $88
	ld   [hl], a                                     ; $5080: $77
	ld   [hl], a                                     ; $5081: $77
	ld   [hl], a                                     ; $5082: $77
	ld   h, [hl]                                     ; $5083: $66
	ld   d, l                                        ; $5084: $55
	ld   d, h                                        ; $5085: $54
	ld   b, h                                        ; $5086: $44
	ld   b, e                                        ; $5087: $43
	ld   b, h                                        ; $5088: $44
	ld   b, h                                        ; $5089: $44
	ld   d, [hl]                                     ; $508a: $56
	ld   a, b                                        ; $508b: $78
	xor  e                                           ; $508c: $ab
	cp   h                                           ; $508d: $bc
	db   $dd                                         ; $508e: $dd
	db   $ed                                         ; $508f: $ed
	db   $dd                                         ; $5090: $dd
	db   $ec                                         ; $5091: $ec
	call z, $99aa                                    ; $5092: $cc $aa $99
	sbc  b                                           ; $5095: $98
	ld   [hl], a                                     ; $5096: $77
	ld   [hl], a                                     ; $5097: $77
	ld   h, [hl]                                     ; $5098: $66
	ld   h, [hl]                                     ; $5099: $66
	ld   h, [hl]                                     ; $509a: $66
	ld   h, [hl]                                     ; $509b: $66
	ld   h, [hl]                                     ; $509c: $66
	ld   d, l                                        ; $509d: $55
	ld   d, h                                        ; $509e: $54
	ld   b, h                                        ; $509f: $44
	inc  [hl]                                        ; $50a0: $34
	ld   b, h                                        ; $50a1: $44
	ld   b, l                                        ; $50a2: $45
	ld   d, [hl]                                     ; $50a3: $56
	ld   a, b                                        ; $50a4: $78
	sbc  d                                           ; $50a5: $9a
	call $ddcd                                       ; $50a6: $cd $cd $dd
	sbc  $dc                                         ; $50a9: $de $dc
	call z, $a9ba                                    ; $50ab: $cc $ba $a9
	add  a                                           ; $50ae: $87
	ld   [hl], a                                     ; $50af: $77
	ld   h, [hl]                                     ; $50b0: $66
	ld   h, [hl]                                     ; $50b1: $66
	ld   h, [hl]                                     ; $50b2: $66
	ld   h, [hl]                                     ; $50b3: $66
	halt                                             ; $50b4: $76
	ld   h, [hl]                                     ; $50b5: $66
	ld   h, [hl]                                     ; $50b6: $66
	ld   h, l                                        ; $50b7: $65
	ld   d, l                                        ; $50b8: $55
	ld   d, h                                        ; $50b9: $54
	ld   b, h                                        ; $50ba: $44
	ld   b, l                                        ; $50bb: $45
	ld   d, l                                        ; $50bc: $55
	ld   h, a                                        ; $50bd: $67
	adc  b                                           ; $50be: $88
	sbc  e                                           ; $50bf: $9b
	cp   e                                           ; $50c0: $bb
	call z, $dccd                                    ; $50c1: $cc $cd $dc
	call c, $aabb                                    ; $50c4: $dc $bb $aa
	sbc  c                                           ; $50c7: $99
	adc  b                                           ; $50c8: $88
	add  a                                           ; $50c9: $87
	ld   [hl], a                                     ; $50ca: $77
	halt                                             ; $50cb: $76
	halt                                             ; $50cc: $76
	ld   h, [hl]                                     ; $50cd: $66
	ld   h, [hl]                                     ; $50ce: $66
	ld   h, [hl]                                     ; $50cf: $66
	ld   h, [hl]                                     ; $50d0: $66
	ld   h, [hl]                                     ; $50d1: $66
	ld   d, l                                        ; $50d2: $55
	ld   d, l                                        ; $50d3: $55
	ld   d, l                                        ; $50d4: $55
	ld   d, l                                        ; $50d5: $55
	ld   d, l                                        ; $50d6: $55
	ld   d, [hl]                                     ; $50d7: $56
	ld   h, a                                        ; $50d8: $67
	adc  b                                           ; $50d9: $88
	sbc  d                                           ; $50da: $9a
	cp   d                                           ; $50db: $ba
	cp   h                                           ; $50dc: $bc
	call z, $bbcc                                    ; $50dd: $cc $cc $bb
	cp   e                                           ; $50e0: $bb
	xor  d                                           ; $50e1: $aa
	sbc  d                                           ; $50e2: $9a
	sbc  b                                           ; $50e3: $98
	sbc  b                                           ; $50e4: $98
	ld   [hl], a                                     ; $50e5: $77
	ld   [hl], a                                     ; $50e6: $77
	ld   [hl], a                                     ; $50e7: $77
	ld   [hl], a                                     ; $50e8: $77
	ld   [hl], a                                     ; $50e9: $77
	ld   [hl], a                                     ; $50ea: $77
	ld   [hl], a                                     ; $50eb: $77
	ld   [hl], a                                     ; $50ec: $77
	ld   [hl], a                                     ; $50ed: $77
	halt                                             ; $50ee: $76
	ld   h, [hl]                                     ; $50ef: $66
	ld   h, [hl]                                     ; $50f0: $66
	ld   h, [hl]                                     ; $50f1: $66
	ld   h, [hl]                                     ; $50f2: $66
	ld   h, [hl]                                     ; $50f3: $66
	ld   h, a                                        ; $50f4: $67
	ld   a, b                                        ; $50f5: $78
	sbc  c                                           ; $50f6: $99
	xor  c                                           ; $50f7: $a9
	xor  d                                           ; $50f8: $aa
	cp   e                                           ; $50f9: $bb
	cp   e                                           ; $50fa: $bb
	cp   d                                           ; $50fb: $ba
	xor  d                                           ; $50fc: $aa
	sbc  c                                           ; $50fd: $99
	xor  c                                           ; $50fe: $a9
	sbc  c                                           ; $50ff: $99
	adc  c                                           ; $5100: $89
	sbc  b                                           ; $5101: $98
	adc  b                                           ; $5102: $88
	adc  b                                           ; $5103: $88
	add  a                                           ; $5104: $87
	ld   [hl], a                                     ; $5105: $77
	ld   [hl], a                                     ; $5106: $77
	ld   [hl], a                                     ; $5107: $77
	halt                                             ; $5108: $76
	ld   h, a                                        ; $5109: $67
	ld   [hl], a                                     ; $510a: $77
	ld   [hl], a                                     ; $510b: $77
	ld   h, [hl]                                     ; $510c: $66
	ld   [hl], a                                     ; $510d: $77
	ld   [hl], a                                     ; $510e: $77
	ld   [hl], a                                     ; $510f: $77
	ld   [hl], a                                     ; $5110: $77
	ld   [hl], a                                     ; $5111: $77
	ld   [hl], a                                     ; $5112: $77
	add  a                                           ; $5113: $87
	adc  b                                           ; $5114: $88
	adc  c                                           ; $5115: $89
	sbc  b                                           ; $5116: $98
	sbc  c                                           ; $5117: $99
	sbc  c                                           ; $5118: $99
	sbc  c                                           ; $5119: $99
	sbc  d                                           ; $511a: $9a
	xor  d                                           ; $511b: $aa
	xor  d                                           ; $511c: $aa
	xor  d                                           ; $511d: $aa
	sbc  c                                           ; $511e: $99
	sbc  c                                           ; $511f: $99
	sbc  c                                           ; $5120: $99
	adc  c                                           ; $5121: $89
	sbc  c                                           ; $5122: $99
	xor  c                                           ; $5123: $a9
	adc  c                                           ; $5124: $89
	adc  b                                           ; $5125: $88
	adc  b                                           ; $5126: $88
	add  a                                           ; $5127: $87
	ld   [hl], a                                     ; $5128: $77
	ld   h, [hl]                                     ; $5129: $66
	ld   h, [hl]                                     ; $512a: $66
	ld   h, [hl]                                     ; $512b: $66
	ld   h, [hl]                                     ; $512c: $66
	ld   h, [hl]                                     ; $512d: $66
	ld   h, [hl]                                     ; $512e: $66
	ld   h, [hl]                                     ; $512f: $66
	ld   h, [hl]                                     ; $5130: $66
	ld   h, a                                        ; $5131: $67
	ld   [hl], a                                     ; $5132: $77
	ld   [hl], a                                     ; $5133: $77
	adc  c                                           ; $5134: $89
	adc  c                                           ; $5135: $89
	sbc  c                                           ; $5136: $99
	xor  d                                           ; $5137: $aa
	xor  c                                           ; $5138: $a9
	sbc  d                                           ; $5139: $9a
	xor  c                                           ; $513a: $a9
	sbc  d                                           ; $513b: $9a
	xor  d                                           ; $513c: $aa
	xor  d                                           ; $513d: $aa
	sbc  c                                           ; $513e: $99
	sbc  b                                           ; $513f: $98
	adc  c                                           ; $5140: $89
	sbc  c                                           ; $5141: $99
	sbc  b                                           ; $5142: $98
	adc  b                                           ; $5143: $88
	ld   a, b                                        ; $5144: $78
	ld   [hl], a                                     ; $5145: $77
	ld   [hl], a                                     ; $5146: $77
	ld   [hl], a                                     ; $5147: $77
	ld   [hl], a                                     ; $5148: $77
	ld   [hl], a                                     ; $5149: $77
	ld   [hl], a                                     ; $514a: $77
	ld   [hl], a                                     ; $514b: $77
	ld   h, [hl]                                     ; $514c: $66
	ld   h, [hl]                                     ; $514d: $66
	ld   h, [hl]                                     ; $514e: $66
	ld   h, [hl]                                     ; $514f: $66
	ld   h, [hl]                                     ; $5150: $66
	ld   h, a                                        ; $5151: $67
	ld   [hl], a                                     ; $5152: $77
	adc  c                                           ; $5153: $89
	sbc  c                                           ; $5154: $99
	sbc  c                                           ; $5155: $99
	xor  e                                           ; $5156: $ab
	xor  h                                           ; $5157: $ac
	cp   e                                           ; $5158: $bb
	cp   d                                           ; $5159: $ba
	xor  c                                           ; $515a: $a9
	adc  b                                           ; $515b: $88
	sbc  c                                           ; $515c: $99
	sbc  c                                           ; $515d: $99
	adc  b                                           ; $515e: $88
	ld   a, b                                        ; $515f: $78
	adc  b                                           ; $5160: $88
	sbc  b                                           ; $5161: $98
	sbc  c                                           ; $5162: $99
	add  a                                           ; $5163: $87
	ld   [hl], a                                     ; $5164: $77
	ld   a, b                                        ; $5165: $78
	ld   [hl], a                                     ; $5166: $77
	ld   [hl], a                                     ; $5167: $77
	ld   h, l                                        ; $5168: $65
	ld   d, h                                        ; $5169: $54
	ld   [hl-], a                                    ; $516a: $32
	inc  hl                                          ; $516b: $23
	inc  [hl]                                        ; $516c: $34
	ld   b, l                                        ; $516d: $45
	ld   h, a                                        ; $516e: $67
	sbc  d                                           ; $516f: $9a
	cp   h                                           ; $5170: $bc
	sbc  $ee                                         ; $5171: $de $ee
	sbc  $cc                                         ; $5173: $de $cc
	xor  d                                           ; $5175: $aa
	sbc  c                                           ; $5176: $99
	ld   [hl], a                                     ; $5177: $77
	ld   h, a                                        ; $5178: $67
	ld   [hl], a                                     ; $5179: $77
	ld   [hl], a                                     ; $517a: $77
	adc  c                                           ; $517b: $89
	sbc  c                                           ; $517c: $99
	sbc  b                                           ; $517d: $98
	adc  b                                           ; $517e: $88
	halt                                             ; $517f: $76
	ld   d, l                                        ; $5180: $55
	ld   b, e                                        ; $5181: $43
	ld   de, $1111                                   ; $5182: $11 $11 $11
	ld   [hl+], a                                    ; $5185: $22
	dec  [hl]                                        ; $5186: $35
	ld   l, d                                        ; $5187: $6a
	adc  $ff                                         ; $5188: $ce $ff
	rst  $38                                         ; $518a: $ff
	rst  $38                                         ; $518b: $ff
	rst  $38                                         ; $518c: $ff
	db   $ec                                         ; $518d: $ec
	add  a                                           ; $518e: $87
	ld   d, l                                        ; $518f: $55
	ld   b, d                                        ; $5190: $42
	ld   [hl+], a                                    ; $5191: $22
	ld   b, [hl]                                     ; $5192: $46
	ld   a, c                                        ; $5193: $79
	xor  h                                           ; $5194: $ac
	call $b9dc                                       ; $5195: $cd $dc $b9
	ld   [hl], h                                     ; $5198: $74
	ld   [hl-], a                                    ; $5199: $32
	ld   de, $1111                                   ; $519a: $11 $11 $11
	ld   de, $9d25                                   ; $519d: $11 $25 $9d
	rst  $38                                         ; $51a0: $ff
	rst  $38                                         ; $51a1: $ff
	rst  $38                                         ; $51a2: $ff
	rst  $38                                         ; $51a3: $ff
	rst  $38                                         ; $51a4: $ff
	cp   b                                           ; $51a5: $b8
	ld   h, d                                        ; $51a6: $62
	ld   de, $1311                                   ; $51a7: $11 $11 $13
	ld   b, a                                        ; $51aa: $47
	xor  h                                           ; $51ab: $ac
	rst  $28                                         ; $51ac: $ef
	rst  $38                                         ; $51ad: $ff
	rst  $38                                         ; $51ae: $ff
	ret                                              ; $51af: $c9


	ld   h, e                                        ; $51b0: $63
	ld   de, $1111                                   ; $51b1: $11 $11 $11
	ld   de, $4a13                                   ; $51b4: $11 $13 $4a
	rst  $38                                         ; $51b7: $ff
	rst  $38                                         ; $51b8: $ff
	rst  $38                                         ; $51b9: $ff
	rst  $38                                         ; $51ba: $ff
	rst  $38                                         ; $51bb: $ff
	ld   [$1153], a                                  ; $51bc: $ea $53 $11
	ld   de, $4711                                   ; $51bf: $11 $11 $47
	sbc  l                                           ; $51c2: $9d
	rst  $38                                         ; $51c3: $ff
	rst  $38                                         ; $51c4: $ff
	cp   $db                                         ; $51c5: $fe $db
	ld   [hl], e                                     ; $51c7: $73
	ld   de, $1111                                   ; $51c8: $11 $11 $11
	ld   de, $6811                                   ; $51cb: $11 $11 $68
	rst  JumpTable                                         ; $51ce: $df
	rst  $38                                         ; $51cf: $ff
	rst  $38                                         ; $51d0: $ff
	rst  $38                                         ; $51d1: $ff
	rst  $38                                         ; $51d2: $ff
	bit  6, e                                        ; $51d3: $cb $73
	ld   de, $1211                                   ; $51d5: $11 $11 $12
	ld   b, a                                        ; $51d8: $47
	xor  h                                           ; $51d9: $ac
	rst  $38                                         ; $51da: $ff
	rst  $38                                         ; $51db: $ff
	rst  $38                                         ; $51dc: $ff
	db   $eb                                         ; $51dd: $eb
	add  [hl]                                        ; $51de: $86
	ld   hl, $1111                                   ; $51df: $21 $11 $11
	ld   de, $1611                                   ; $51e2: $11 $11 $16
	sbc  e                                           ; $51e5: $9b
	rst  $38                                         ; $51e6: $ff
	rst  $38                                         ; $51e7: $ff
	rst  $38                                         ; $51e8: $ff
	rst  $38                                         ; $51e9: $ff
	db   $fd                                         ; $51ea: $fd
	cp   b                                           ; $51eb: $b8
	ld   d, c                                        ; $51ec: $51
	ld   hl, $3512                                   ; $51ed: $21 $12 $35
	ld   l, d                                        ; $51f0: $6a
	adc  $ff                                         ; $51f1: $ce $ff
	rst  $38                                         ; $51f3: $ff
	cp   $db                                         ; $51f4: $fe $db
	add  l                                           ; $51f6: $85
	ld   sp, $1111                                   ; $51f7: $31 $11 $11
	ld   de, $1311                                   ; $51fa: $11 $11 $13
	set  5, a                                        ; $51fd: $cb $ef
	rst  $38                                         ; $51ff: $ff
	rst  $38                                         ; $5200: $ff
	rst  $38                                         ; $5201: $ff
	db   $fd                                         ; $5202: $fd
	cp   b                                           ; $5203: $b8
	add  e                                           ; $5204: $83
	ld   hl, $3512                                   ; $5205: $21 $12 $35
	ld   e, b                                        ; $5208: $58
	cp   a                                           ; $5209: $bf
	rst  $38                                         ; $520a: $ff
	rst  $38                                         ; $520b: $ff
	rst  $38                                         ; $520c: $ff
	jp   c, $3197                                    ; $520d: $da $97 $31

	ld   de, $1111                                   ; $5210: $11 $11 $11
	ld   de, $9b11                                   ; $5213: $11 $11 $9b
	rst  JumpTable                                         ; $5216: $df
	rst  $38                                         ; $5217: $ff
	rst  $38                                         ; $5218: $ff
	rst  $38                                         ; $5219: $ff
	db   $fd                                         ; $521a: $fd
	cp   b                                           ; $521b: $b8
	ld   [hl], h                                     ; $521c: $74
	ld   de, $3612                                   ; $521d: $11 $12 $36
	ld   l, b                                        ; $5220: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5221: $cf
	rst  $38                                         ; $5222: $ff
	rst  $38                                         ; $5223: $ff
	rst  $38                                         ; $5224: $ff
	jp   z, Jump_0db_4187                            ; $5225: $ca $87 $41

	ld   de, $1111                                   ; $5228: $11 $11 $11
	ld   de, $9d11                                   ; $522b: $11 $11 $9d
	cp   [hl]                                        ; $522e: $be
	rst  $38                                         ; $522f: $ff
	rst  $38                                         ; $5230: $ff
	rst  $38                                         ; $5231: $ff
	rst  $38                                         ; $5232: $ff
	or   a                                           ; $5233: $b7
	halt                                             ; $5234: $76
	ld   de, $3511                                   ; $5235: $11 $11 $35
	ld   [hl], a                                     ; $5238: $77
	rst  JumpTable                                         ; $5239: $df
	rst  $38                                         ; $523a: $ff
	rst  $38                                         ; $523b: $ff
	rst  $38                                         ; $523c: $ff
	res  2, a                                        ; $523d: $cb $97
	ld   b, c                                        ; $523f: $41
	ld   de, $1111                                   ; $5240: $11 $11 $11
	ld   de, $ae11                                   ; $5243: $11 $11 $ae
	xor  a                                           ; $5246: $af
	rst  $38                                         ; $5247: $ff
	rst  $38                                         ; $5248: $ff
	rst  $38                                         ; $5249: $ff
	rst  $38                                         ; $524a: $ff
	and  a                                           ; $524b: $a7
	ld   [hl], h                                     ; $524c: $74
	ld   de, $3611                                   ; $524d: $11 $11 $36
	ld   a, c                                        ; $5250: $79
	rst  JumpTable                                         ; $5251: $df
	rst  $38                                         ; $5252: $ff
	rst  $38                                         ; $5253: $ff
	rst  $38                                         ; $5254: $ff
	ret                                              ; $5255: $c9


	add  [hl]                                        ; $5256: $86
	ld   sp, $1111                                   ; $5257: $31 $11 $11
	ld   de, $1811                                   ; $525a: $11 $11 $18
	jp   hl                                          ; $525d: $e9


	rst  JumpTable                                         ; $525e: $df
	rst  $38                                         ; $525f: $ff
	rst  $38                                         ; $5260: $ff
	rst  $38                                         ; $5261: $ff
	ld   a, [$6177]                                  ; $5262: $fa $77 $61
	ld   de, $5713                                   ; $5265: $11 $13 $57
	adc  h                                           ; $5268: $8c
	rst  $38                                         ; $5269: $ff
	rst  $38                                         ; $526a: $ff
	rst  $38                                         ; $526b: $ff
	db   $ec                                         ; $526c: $ec
	xor  b                                           ; $526d: $a8
	ld   h, h                                        ; $526e: $64
	ld   de, $1111                                   ; $526f: $11 $11 $11
	ld   de, $ca11                                   ; $5272: $11 $11 $ca
	ld   a, a                                        ; $5275: $7f
	rst  $38                                         ; $5276: $ff
	rst  $38                                         ; $5277: $ff
	rst  $38                                         ; $5278: $ff
	rst  $38                                         ; $5279: $ff
	sub  a                                           ; $527a: $97
	sub  e                                           ; $527b: $93
	ld   de, $3611                                   ; $527c: $11 $11 $36
	ld   a, c                                        ; $527f: $79
	rst  $28                                         ; $5280: $ef
	rst  $38                                         ; $5281: $ff
	rst  $38                                         ; $5282: $ff
	db   $fd                                         ; $5283: $fd
	xor  b                                           ; $5284: $a8
	ld   [hl], l                                     ; $5285: $75
	ld   de, $1111                                   ; $5286: $11 $11 $11
	ld   de, $a517                                   ; $5289: $11 $17 $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $528c: $cf
	rst  $38                                         ; $528d: $ff
	rst  $38                                         ; $528e: $ff
	rst  $38                                         ; $528f: $ff
	db   $fc                                         ; $5290: $fc
	sbc  d                                           ; $5291: $9a
	ld   [hl], c                                     ; $5292: $71
	ld   hl, $5513                                   ; $5293: $21 $13 $55
	ld   l, e                                        ; $5296: $6b

Call_0db_5297:
	sbc  $ff                                         ; $5297: $de $ff
	xor  $ea                                         ; $5299: $ee $ea
	sub  a                                           ; $529b: $97
	ld   d, c                                        ; $529c: $51
	ld   de, $1111                                   ; $529d: $11 $11 $11
	dec  d                                           ; $52a0: $15
	ld   l, b                                        ; $52a1: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52a2: $cf
	rst  $38                                         ; $52a3: $ff
	rst  $38                                         ; $52a4: $ff
	rst  $38                                         ; $52a5: $ff
	db   $fd                                         ; $52a6: $fd
	bit  4, l                                        ; $52a7: $cb $65
	ld   hl, $4423                                   ; $52a9: $21 $23 $44
	ld   a, c                                        ; $52ac: $79
	adc  $ed                                         ; $52ad: $ce $ed
	db   $dd                                         ; $52af: $dd
	cp   c                                           ; $52b0: $b9
	ld   h, d                                        ; $52b1: $62
	ld   de, $1111                                   ; $52b2: $11 $11 $11
	ld   b, d                                        ; $52b5: $42
	ld   c, d                                        ; $52b6: $4a
	rst  $28                                         ; $52b7: $ef

Call_0db_52b8:
	rst  $38                                         ; $52b8: $ff
	rst  $38                                         ; $52b9: $ff
	rst  $38                                         ; $52ba: $ff
	db   $fd                                         ; $52bb: $fd
	ret                                              ; $52bc: $c9


	ld   [hl], l                                     ; $52bd: $75
	inc  hl                                          ; $52be: $23
	dec  [hl]                                        ; $52bf: $35
	ld   b, [hl]                                     ; $52c0: $46
	ld   a, c                                        ; $52c1: $79
	res  7, d                                        ; $52c2: $cb $ba
	xor  b                                           ; $52c4: $a8
	ld   d, d                                        ; $52c5: $52
	ld   de, $1211                                   ; $52c6: $11 $11 $12
	dec  d                                           ; $52c9: $15
	xor  l                                           ; $52ca: $ad
	rst  $38                                         ; $52cb: $ff
	rst  $38                                         ; $52cc: $ff
	rst  $38                                         ; $52cd: $ff
	rst  $38                                         ; $52ce: $ff
	db   $ec                                         ; $52cf: $ec
	add  a                                           ; $52d0: $87
	ld   b, e                                        ; $52d1: $43
	inc  hl                                          ; $52d2: $23
	ld   b, h                                        ; $52d3: $44
	ld   h, a                                        ; $52d4: $67
	xor  d                                           ; $52d5: $aa
	res  3, c                                        ; $52d6: $cb $99
	ld   d, e                                        ; $52d8: $53
	ld   de, $2111                                   ; $52d9: $11 $11 $21
	dec  d                                           ; $52dc: $15
	adc  e                                           ; $52dd: $8b
	rst  $28                                         ; $52de: $ef
	rst  $38                                         ; $52df: $ff
	rst  $38                                         ; $52e0: $ff
	rst  $38                                         ; $52e1: $ff
	db   $fd                                         ; $52e2: $fd
	cp   b                                           ; $52e3: $b8
	ld   d, l                                        ; $52e4: $55
	ld   b, h                                        ; $52e5: $44
	inc  [hl]                                        ; $52e6: $34
	ld   d, [hl]                                     ; $52e7: $56
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	add  [hl]                                        ; $52ea: $86
	ld   b, d                                        ; $52eb: $42
	ld   de, $1214                                   ; $52ec: $11 $14 $12
	ld   b, a                                        ; $52ef: $47
	xor  h                                           ; $52f0: $ac
	call z, $ffff                                    ; $52f1: $cc $ff $ff
	rst  $38                                         ; $52f4: $ff
	db   $ec                                         ; $52f5: $ec
	adc  b                                           ; $52f6: $88
	halt                                             ; $52f7: $76
	ld   d, l                                        ; $52f8: $55
	ld   d, l                                        ; $52f9: $55
	ld   [hl], a                                     ; $52fa: $77
	ld   [hl], a                                     ; $52fb: $77
	ld   [hl], a                                     ; $52fc: $77
	ld   d, h                                        ; $52fd: $54
	ld   hl, $3215                                   ; $52fe: $21 $15 $32
	ld   d, l                                        ; $5301: $55
	sbc  d                                           ; $5302: $9a
	cp   e                                           ; $5303: $bb
	adc  $ef                                         ; $5304: $ce $ef
	xor  $ed                                         ; $5306: $ee $ed
	cp   c                                           ; $5308: $b9
	add  a                                           ; $5309: $87
	ld   [hl], l                                     ; $530a: $75
	ld   h, l                                        ; $530b: $65
	ld   h, [hl]                                     ; $530c: $66
	ld   h, [hl]                                     ; $530d: $66
	ld   d, [hl]                                     ; $530e: $56
	ld   b, l                                        ; $530f: $45
	ld   hl, $5657                                   ; $5310: $21 $57 $56
	ld   a, b                                        ; $5313: $78
	sbc  d                                           ; $5314: $9a
	cp   c                                           ; $5315: $b9
	call z, $dcdc                                    ; $5316: $cc $dc $dc
	cp   h                                           ; $5319: $bc
	sbc  c                                           ; $531a: $99
	ld   a, b                                        ; $531b: $78
	ld   [hl], a                                     ; $531c: $77
	halt                                             ; $531d: $76
	halt                                             ; $531e: $76
	ld   h, l                                        ; $531f: $65
	ld   d, l                                        ; $5320: $55
	ld   b, h                                        ; $5321: $44
	dec  h                                           ; $5322: $25
	ld   h, [hl]                                     ; $5323: $66
	ld   [hl], a                                     ; $5324: $77
	adc  c                                           ; $5325: $89
	xor  d                                           ; $5326: $aa
	cp   h                                           ; $5327: $bc
	cp   l                                           ; $5328: $bd
	call c, $babb                                    ; $5329: $dc $bb $ba
	add  a                                           ; $532c: $87
	ld   [hl], a                                     ; $532d: $77
	halt                                             ; $532e: $76
	ld   h, [hl]                                     ; $532f: $66
	ld   h, [hl]                                     ; $5330: $66
	ld   d, l                                        ; $5331: $55
	ld   b, l                                        ; $5332: $45
	ld   d, h                                        ; $5333: $54
	ld   h, a                                        ; $5334: $67
	ld   [hl], a                                     ; $5335: $77
	adc  b                                           ; $5336: $88
	sbc  d                                           ; $5337: $9a
	xor  d                                           ; $5338: $aa
	cp   d                                           ; $5339: $ba
	cp   e                                           ; $533a: $bb
	cp   d                                           ; $533b: $ba
	cp   e                                           ; $533c: $bb
	xor  c                                           ; $533d: $a9
	adc  b                                           ; $533e: $88
	ld   a, b                                        ; $533f: $78
	halt                                             ; $5340: $76
	ld   h, l                                        ; $5341: $65
	ld   h, [hl]                                     ; $5342: $66
	ld   d, l                                        ; $5343: $55
	ld   h, l                                        ; $5344: $65
	ld   d, [hl]                                     ; $5345: $56
	ld   [hl], a                                     ; $5346: $77
	ld   [hl], a                                     ; $5347: $77
	ld   a, b                                        ; $5348: $78
	sbc  c                                           ; $5349: $99
	sbc  d                                           ; $534a: $9a
	cp   d                                           ; $534b: $ba
	sbc  d                                           ; $534c: $9a
	xor  d                                           ; $534d: $aa
	sbc  c                                           ; $534e: $99
	adc  b                                           ; $534f: $88
	sub  a                                           ; $5350: $97
	add  a                                           ; $5351: $87
	ld   [hl], a                                     ; $5352: $77
	ld   [hl], a                                     ; $5353: $77
	ld   [hl], a                                     ; $5354: $77
	ld   [hl], a                                     ; $5355: $77
	ld   [hl], a                                     ; $5356: $77
	ld   [hl], a                                     ; $5357: $77
	ld   a, b                                        ; $5358: $78
	ld   [hl], a                                     ; $5359: $77
	ld   a, b                                        ; $535a: $78
	ld   [hl], a                                     ; $535b: $77
	adc  b                                           ; $535c: $88
	sbc  b                                           ; $535d: $98
	adc  c                                           ; $535e: $89
	sbc  c                                           ; $535f: $99
	adc  b                                           ; $5360: $88
	adc  c                                           ; $5361: $89
	sbc  c                                           ; $5362: $99
	adc  c                                           ; $5363: $89
	adc  b                                           ; $5364: $88
	add  a                                           ; $5365: $87
	sub  a                                           ; $5366: $97
	ld   a, b                                        ; $5367: $78
	adc  b                                           ; $5368: $88
	ld   [hl], a                                     ; $5369: $77
	adc  c                                           ; $536a: $89
	add  a                                           ; $536b: $87
	adc  b                                           ; $536c: $88
	adc  b                                           ; $536d: $88
	sbc  b                                           ; $536e: $98
	adc  c                                           ; $536f: $89
	adc  c                                           ; $5370: $89
	adc  b                                           ; $5371: $88
	adc  b                                           ; $5372: $88
	sbc  b                                           ; $5373: $98
	adc  b                                           ; $5374: $88
	adc  b                                           ; $5375: $88
	adc  b                                           ; $5376: $88
	sbc  b                                           ; $5377: $98
	adc  b                                           ; $5378: $88
	adc  c                                           ; $5379: $89
	adc  b                                           ; $537a: $88
	sbc  b                                           ; $537b: $98
	adc  b                                           ; $537c: $88
	sbc  c                                           ; $537d: $99
	sbc  b                                           ; $537e: $98
	adc  b                                           ; $537f: $88
	adc  c                                           ; $5380: $89
	sbc  c                                           ; $5381: $99
	sbc  b                                           ; $5382: $98
	sbc  b                                           ; $5383: $98
	adc  b                                           ; $5384: $88
	sbc  b                                           ; $5385: $98
	adc  b                                           ; $5386: $88
	adc  b                                           ; $5387: $88
	adc  b                                           ; $5388: $88
	adc  b                                           ; $5389: $88
	sbc  b                                           ; $538a: $98
	adc  c                                           ; $538b: $89
	adc  b                                           ; $538c: $88
	adc  b                                           ; $538d: $88
	sbc  c                                           ; $538e: $99
	sbc  c                                           ; $538f: $99
	sbc  b                                           ; $5390: $98
	sbc  c                                           ; $5391: $99
	sbc  c                                           ; $5392: $99
	sbc  b                                           ; $5393: $98
	adc  b                                           ; $5394: $88
	adc  b                                           ; $5395: $88
	adc  b                                           ; $5396: $88
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
	sbc  b                                           ; $53a3: $98
	adc  c                                           ; $53a4: $89
	sbc  c                                           ; $53a5: $99
	sbc  b                                           ; $53a6: $98
	adc  b                                           ; $53a7: $88
	adc  b                                           ; $53a8: $88
	adc  b                                           ; $53a9: $88
	add  a                                           ; $53aa: $87
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
	sbc  b                                           ; $53b8: $98
	adc  b                                           ; $53b9: $88
	adc  b                                           ; $53ba: $88
	adc  b                                           ; $53bb: $88
	adc  b                                           ; $53bc: $88
	adc  b                                           ; $53bd: $88
	adc  b                                           ; $53be: $88
	add  a                                           ; $53bf: $87
	add  a                                           ; $53c0: $87
	add  a                                           ; $53c1: $87
	ld   [hl], a                                     ; $53c2: $77
	ld   a, b                                        ; $53c3: $78
	adc  b                                           ; $53c4: $88
	adc  b                                           ; $53c5: $88
	adc  b                                           ; $53c6: $88
	adc  c                                           ; $53c7: $89
	adc  b                                           ; $53c8: $88
	adc  b                                           ; $53c9: $88
	sbc  b                                           ; $53ca: $98
	adc  b                                           ; $53cb: $88
	adc  b                                           ; $53cc: $88
	ld   a, b                                        ; $53cd: $78
	adc  b                                           ; $53ce: $88
	adc  b                                           ; $53cf: $88
	adc  b                                           ; $53d0: $88
	adc  b                                           ; $53d1: $88
	adc  b                                           ; $53d2: $88
	add  a                                           ; $53d3: $87
	add  a                                           ; $53d4: $87
	ld   a, b                                        ; $53d5: $78
	adc  b                                           ; $53d6: $88
	adc  b                                           ; $53d7: $88
	adc  b                                           ; $53d8: $88
	adc  b                                           ; $53d9: $88
	sbc  c                                           ; $53da: $99
	adc  b                                           ; $53db: $88
	sbc  b                                           ; $53dc: $98
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
	ld   [hl], a                                     ; $53e8: $77
	adc  b                                           ; $53e9: $88
	adc  b                                           ; $53ea: $88
	adc  b                                           ; $53eb: $88
	adc  b                                           ; $53ec: $88
	adc  b                                           ; $53ed: $88
	adc  c                                           ; $53ee: $89
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
	sbc  b                                           ; $5437: $98
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
	sbc  b                                           ; $5445: $98
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
	sbc  b                                           ; $5452: $98
	adc  b                                           ; $5453: $88
	sbc  b                                           ; $5454: $98
	adc  b                                           ; $5455: $88
	adc  b                                           ; $5456: $88
	adc  b                                           ; $5457: $88
	adc  b                                           ; $5458: $88
	adc  b                                           ; $5459: $88
	adc  b                                           ; $545a: $88
	adc  b                                           ; $545b: $88
	adc  b                                           ; $545c: $88
	adc  c                                           ; $545d: $89
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
	ld   a, b                                        ; $546d: $78
	adc  b                                           ; $546e: $88
	adc  b                                           ; $546f: $88
	adc  b                                           ; $5470: $88
	adc  b                                           ; $5471: $88
	adc  b                                           ; $5472: $88
	adc  b                                           ; $5473: $88
	adc  b                                           ; $5474: $88
	adc  b                                           ; $5475: $88
	adc  b                                           ; $5476: $88
	ld   a, b                                        ; $5477: $78
	sbc  b                                           ; $5478: $98
	adc  b                                           ; $5479: $88
	adc  b                                           ; $547a: $88
	adc  b                                           ; $547b: $88
	sbc  b                                           ; $547c: $98
	adc  b                                           ; $547d: $88
	adc  b                                           ; $547e: $88
	sbc  b                                           ; $547f: $98
	adc  b                                           ; $5480: $88
	adc  b                                           ; $5481: $88
	adc  b                                           ; $5482: $88
	adc  b                                           ; $5483: $88
	adc  b                                           ; $5484: $88
	adc  b                                           ; $5485: $88

Jump_0db_5486:
	adc  b                                           ; $5486: $88
	adc  b                                           ; $5487: $88
	adc  c                                           ; $5488: $89
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
	adc  c                                           ; $5493: $89
	adc  b                                           ; $5494: $88
	adc  b                                           ; $5495: $88
	sbc  b                                           ; $5496: $98
	adc  b                                           ; $5497: $88
	adc  b                                           ; $5498: $88
	adc  b                                           ; $5499: $88
	adc  b                                           ; $549a: $88
	adc  b                                           ; $549b: $88
	adc  b                                           ; $549c: $88
	ld   a, b                                        ; $549d: $78
	adc  b                                           ; $549e: $88
	adc  c                                           ; $549f: $89
	adc  b                                           ; $54a0: $88
	adc  b                                           ; $54a1: $88
	adc  b                                           ; $54a2: $88
	adc  c                                           ; $54a3: $89
	adc  b                                           ; $54a4: $88
	adc  b                                           ; $54a5: $88
	adc  b                                           ; $54a6: $88

Call_0db_54a7:
	adc  b                                           ; $54a7: $88
	adc  b                                           ; $54a8: $88
	adc  b                                           ; $54a9: $88
	adc  b                                           ; $54aa: $88
	adc  b                                           ; $54ab: $88
	adc  b                                           ; $54ac: $88
	adc  b                                           ; $54ad: $88
	sbc  b                                           ; $54ae: $98
	adc  b                                           ; $54af: $88
	adc  b                                           ; $54b0: $88
	adc  b                                           ; $54b1: $88
	adc  b                                           ; $54b2: $88
	adc  b                                           ; $54b3: $88
	ld   a, b                                        ; $54b4: $78
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
	adc  c                                           ; $54c5: $89
	adc  b                                           ; $54c6: $88
	adc  b                                           ; $54c7: $88
	adc  b                                           ; $54c8: $88
	adc  b                                           ; $54c9: $88
	adc  b                                           ; $54ca: $88
	adc  b                                           ; $54cb: $88
	adc  b                                           ; $54cc: $88
	adc  c                                           ; $54cd: $89
	adc  b                                           ; $54ce: $88
	adc  c                                           ; $54cf: $89
	adc  b                                           ; $54d0: $88
	adc  b                                           ; $54d1: $88
	adc  c                                           ; $54d2: $89
	adc  b                                           ; $54d3: $88
	sbc  b                                           ; $54d4: $98
	adc  b                                           ; $54d5: $88
	adc  b                                           ; $54d6: $88
	adc  b                                           ; $54d7: $88
	adc  b                                           ; $54d8: $88
	adc  b                                           ; $54d9: $88
	adc  b                                           ; $54da: $88
	adc  b                                           ; $54db: $88
	adc  b                                           ; $54dc: $88
	adc  b                                           ; $54dd: $88
	sbc  b                                           ; $54de: $98
	adc  b                                           ; $54df: $88
	add  a                                           ; $54e0: $87
	adc  b                                           ; $54e1: $88
	adc  b                                           ; $54e2: $88
	adc  b                                           ; $54e3: $88
	adc  b                                           ; $54e4: $88
	adc  b                                           ; $54e5: $88
	adc  c                                           ; $54e6: $89
	adc  b                                           ; $54e7: $88
	adc  c                                           ; $54e8: $89
	adc  b                                           ; $54e9: $88
	adc  b                                           ; $54ea: $88
	adc  b                                           ; $54eb: $88
	adc  b                                           ; $54ec: $88
	adc  b                                           ; $54ed: $88
	adc  b                                           ; $54ee: $88
	adc  b                                           ; $54ef: $88
	adc  b                                           ; $54f0: $88
	adc  b                                           ; $54f1: $88
	sbc  b                                           ; $54f2: $98
	adc  b                                           ; $54f3: $88
	adc  b                                           ; $54f4: $88
	add  a                                           ; $54f5: $87
	adc  c                                           ; $54f6: $89
	adc  b                                           ; $54f7: $88
	adc  b                                           ; $54f8: $88
	sbc  b                                           ; $54f9: $98
	adc  c                                           ; $54fa: $89
	add  a                                           ; $54fb: $87
	sbc  b                                           ; $54fc: $98
	adc  b                                           ; $54fd: $88
	sbc  b                                           ; $54fe: $98
	ld   a, c                                        ; $54ff: $79
	adc  c                                           ; $5500: $89
	add  a                                           ; $5501: $87
	adc  b                                           ; $5502: $88
	adc  b                                           ; $5503: $88
	adc  b                                           ; $5504: $88
	adc  b                                           ; $5505: $88
	add  a                                           ; $5506: $87
	adc  b                                           ; $5507: $88
	adc  b                                           ; $5508: $88
	adc  b                                           ; $5509: $88
	adc  c                                           ; $550a: $89
	adc  b                                           ; $550b: $88
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	adc  b                                           ; $550e: $88
	sbc  b                                           ; $550f: $98
	adc  b                                           ; $5510: $88
	adc  b                                           ; $5511: $88
	adc  b                                           ; $5512: $88
	adc  b                                           ; $5513: $88
	adc  b                                           ; $5514: $88
	ld   a, b                                        ; $5515: $78
	adc  b                                           ; $5516: $88
	adc  c                                           ; $5517: $89
	adc  b                                           ; $5518: $88
	adc  b                                           ; $5519: $88
	adc  b                                           ; $551a: $88
	adc  b                                           ; $551b: $88
	adc  b                                           ; $551c: $88
	adc  b                                           ; $551d: $88
	adc  c                                           ; $551e: $89
	adc  b                                           ; $551f: $88
	adc  b                                           ; $5520: $88
	adc  b                                           ; $5521: $88
	sbc  b                                           ; $5522: $98
	adc  b                                           ; $5523: $88
	adc  b                                           ; $5524: $88
	adc  c                                           ; $5525: $89
	adc  c                                           ; $5526: $89
	sbc  c                                           ; $5527: $99
	add  a                                           ; $5528: $87
	halt                                             ; $5529: $76
	ld   a, b                                        ; $552a: $78
	sub  a                                           ; $552b: $97
	ld   [hl], a                                     ; $552c: $77
	ld   [hl], a                                     ; $552d: $77
	ld   a, b                                        ; $552e: $78
	sbc  c                                           ; $552f: $99
	adc  b                                           ; $5530: $88
	adc  b                                           ; $5531: $88
	adc  d                                           ; $5532: $8a
	sbc  b                                           ; $5533: $98
	adc  b                                           ; $5534: $88
	ld   [hl], a                                     ; $5535: $77
	ld   a, b                                        ; $5536: $78
	add  a                                           ; $5537: $87
	ld   [hl], a                                     ; $5538: $77
	ld   [hl], a                                     ; $5539: $77
	adc  b                                           ; $553a: $88
	sbc  b                                           ; $553b: $98
	adc  c                                           ; $553c: $89
	adc  b                                           ; $553d: $88
	sbc  c                                           ; $553e: $99
	adc  c                                           ; $553f: $89
	sbc  b                                           ; $5540: $98
	adc  b                                           ; $5541: $88
	ld   [hl], a                                     ; $5542: $77
	adc  b                                           ; $5543: $88
	ld   [hl], a                                     ; $5544: $77
	adc  b                                           ; $5545: $88
	ld   a, b                                        ; $5546: $78
	adc  b                                           ; $5547: $88
	adc  b                                           ; $5548: $88
	adc  c                                           ; $5549: $89
	adc  b                                           ; $554a: $88
	sbc  c                                           ; $554b: $99
	sbc  c                                           ; $554c: $99
	adc  b                                           ; $554d: $88
	adc  b                                           ; $554e: $88
	adc  b                                           ; $554f: $88
	adc  c                                           ; $5550: $89
	adc  c                                           ; $5551: $89
	adc  b                                           ; $5552: $88
	adc  b                                           ; $5553: $88
	sbc  b                                           ; $5554: $98
	adc  b                                           ; $5555: $88
	adc  b                                           ; $5556: $88
	add  a                                           ; $5557: $87
	ld   a, b                                        ; $5558: $78
	sbc  b                                           ; $5559: $98
	adc  c                                           ; $555a: $89
	sbc  b                                           ; $555b: $98
	sbc  c                                           ; $555c: $99
	sbc  c                                           ; $555d: $99
	adc  b                                           ; $555e: $88
	add  a                                           ; $555f: $87
	ld   [hl], a                                     ; $5560: $77
	ld   [hl], a                                     ; $5561: $77
	ld   [hl], a                                     ; $5562: $77
	ld   [hl], a                                     ; $5563: $77
	ld   [hl], a                                     ; $5564: $77
	adc  b                                           ; $5565: $88
	ld   a, b                                        ; $5566: $78
	sbc  b                                           ; $5567: $98
	add  a                                           ; $5568: $87
	adc  b                                           ; $5569: $88
	adc  c                                           ; $556a: $89
	sbc  b                                           ; $556b: $98
	adc  b                                           ; $556c: $88
	ld   a, b                                        ; $556d: $78
	adc  b                                           ; $556e: $88
	adc  b                                           ; $556f: $88
	sbc  c                                           ; $5570: $99
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	adc  b                                           ; $5573: $88
	sbc  c                                           ; $5574: $99
	adc  b                                           ; $5575: $88
	sbc  c                                           ; $5576: $99
	sbc  b                                           ; $5577: $98
	adc  b                                           ; $5578: $88
	sbc  c                                           ; $5579: $99
	adc  b                                           ; $557a: $88
	adc  b                                           ; $557b: $88
	adc  c                                           ; $557c: $89
	adc  b                                           ; $557d: $88
	sbc  b                                           ; $557e: $98
	adc  b                                           ; $557f: $88
	adc  b                                           ; $5580: $88
	add  a                                           ; $5581: $87
	ld   a, b                                        ; $5582: $78
	ld   [hl], a                                     ; $5583: $77
	ld   [hl], a                                     ; $5584: $77
	adc  b                                           ; $5585: $88
	ld   [hl], a                                     ; $5586: $77
	adc  b                                           ; $5587: $88
	add  a                                           ; $5588: $87
	adc  b                                           ; $5589: $88
	adc  b                                           ; $558a: $88
	adc  b                                           ; $558b: $88
	sbc  b                                           ; $558c: $98
	ld   a, c                                        ; $558d: $79
	adc  b                                           ; $558e: $88
	sbc  b                                           ; $558f: $98
	adc  b                                           ; $5590: $88
	sbc  b                                           ; $5591: $98
	adc  c                                           ; $5592: $89
	adc  b                                           ; $5593: $88
	adc  b                                           ; $5594: $88
	adc  b                                           ; $5595: $88
	adc  c                                           ; $5596: $89
	sbc  c                                           ; $5597: $99
	adc  c                                           ; $5598: $89
	sbc  b                                           ; $5599: $98
	sbc  c                                           ; $559a: $99
	adc  b                                           ; $559b: $88
	adc  b                                           ; $559c: $88
	ld   [hl], a                                     ; $559d: $77
	ld   [hl], a                                     ; $559e: $77
	adc  b                                           ; $559f: $88
	ld   [hl], a                                     ; $55a0: $77
	ld   a, b                                        ; $55a1: $78
	add  a                                           ; $55a2: $87
	ld   a, c                                        ; $55a3: $79
	sbc  c                                           ; $55a4: $99
	adc  b                                           ; $55a5: $88
	adc  b                                           ; $55a6: $88
	adc  b                                           ; $55a7: $88
	adc  c                                           ; $55a8: $89
	sbc  c                                           ; $55a9: $99
	add  a                                           ; $55aa: $87
	ld   a, b                                        ; $55ab: $78
	adc  b                                           ; $55ac: $88
	add  a                                           ; $55ad: $87
	ld   a, b                                        ; $55ae: $78
	adc  c                                           ; $55af: $89
	sbc  c                                           ; $55b0: $99
	adc  b                                           ; $55b1: $88
	adc  c                                           ; $55b2: $89
	adc  b                                           ; $55b3: $88
	add  a                                           ; $55b4: $87
	ld   [hl], a                                     ; $55b5: $77
	ld   a, b                                        ; $55b6: $78
	add  a                                           ; $55b7: $87
	adc  b                                           ; $55b8: $88
	adc  b                                           ; $55b9: $88
	adc  c                                           ; $55ba: $89
	adc  c                                           ; $55bb: $89
	sbc  b                                           ; $55bc: $98
	sbc  b                                           ; $55bd: $98
	sbc  b                                           ; $55be: $98
	adc  b                                           ; $55bf: $88
	adc  c                                           ; $55c0: $89
	adc  c                                           ; $55c1: $89
	add  a                                           ; $55c2: $87
	adc  c                                           ; $55c3: $89
	ld   [hl], a                                     ; $55c4: $77
	adc  b                                           ; $55c5: $88
	ld   [hl], a                                     ; $55c6: $77
	ld   [hl], a                                     ; $55c7: $77
	ld   [hl], a                                     ; $55c8: $77
	ld   [hl], a                                     ; $55c9: $77
	ld   [hl], a                                     ; $55ca: $77
	halt                                             ; $55cb: $76
	ld   [hl], a                                     ; $55cc: $77
	halt                                             ; $55cd: $76
	ld   [hl], a                                     ; $55ce: $77
	halt                                             ; $55cf: $76
	ld   h, a                                        ; $55d0: $67
	ld   [hl], a                                     ; $55d1: $77
	ld   a, b                                        ; $55d2: $78
	sbc  c                                           ; $55d3: $99
	xor  c                                           ; $55d4: $a9
	xor  e                                           ; $55d5: $ab
	cp   e                                           ; $55d6: $bb
	cp   e                                           ; $55d7: $bb
	cp   d                                           ; $55d8: $ba
	xor  e                                           ; $55d9: $ab
	xor  c                                           ; $55da: $a9
	sbc  c                                           ; $55db: $99
	adc  b                                           ; $55dc: $88
	ld   a, b                                        ; $55dd: $78
	ld   [hl], a                                     ; $55de: $77
	halt                                             ; $55df: $76
	ld   h, [hl]                                     ; $55e0: $66
	ld   h, l                                        ; $55e1: $65
	ld   d, l                                        ; $55e2: $55
	ld   d, l                                        ; $55e3: $55
	ld   b, h                                        ; $55e4: $44
	ld   b, l                                        ; $55e5: $45
	ld   d, [hl]                                     ; $55e6: $56
	ld   h, [hl]                                     ; $55e7: $66
	ld   a, c                                        ; $55e8: $79
	xor  d                                           ; $55e9: $aa
	xor  e                                           ; $55ea: $ab
	set  1, h                                        ; $55eb: $cb $cc
	cp   e                                           ; $55ed: $bb
	cp   e                                           ; $55ee: $bb
	cp   d                                           ; $55ef: $ba
	xor  d                                           ; $55f0: $aa
	sbc  d                                           ; $55f1: $9a
	sbc  c                                           ; $55f2: $99
	sbc  b                                           ; $55f3: $98
	adc  b                                           ; $55f4: $88
	halt                                             ; $55f5: $76
	ld   h, [hl]                                     ; $55f6: $66
	ld   d, l                                        ; $55f7: $55
	ld   b, h                                        ; $55f8: $44
	ld   b, h                                        ; $55f9: $44
	ld   b, h                                        ; $55fa: $44
	inc  sp                                          ; $55fb: $33
	inc  [hl]                                        ; $55fc: $34
	ld   d, l                                        ; $55fd: $55
	ld   [hl], a                                     ; $55fe: $77
	adc  d                                           ; $55ff: $8a
	call z, $dddd                                    ; $5600: $cc $dd $dd
	db   $dd                                         ; $5603: $dd
	db   $db                                         ; $5604: $db
	cp   d                                           ; $5605: $ba
	xor  d                                           ; $5606: $aa
	xor  c                                           ; $5607: $a9
	sbc  c                                           ; $5608: $99
	sbc  c                                           ; $5609: $99
	add  a                                           ; $560a: $87
	ld   [hl], a                                     ; $560b: $77
	halt                                             ; $560c: $76
	ld   h, l                                        ; $560d: $65
	ld   b, h                                        ; $560e: $44
	inc  hl                                          ; $560f: $23
	ld   b, e                                        ; $5610: $43
	ld   [hl+], a                                    ; $5611: $22
	ld   [hl+], a                                    ; $5612: $22
	ld   b, l                                        ; $5613: $45
	ld   h, a                                        ; $5614: $67
	adc  d                                           ; $5615: $8a
	call $efff                                       ; $5616: $cd $ff $ef
	rst  $28                                         ; $5619: $ef
	call c, $a9bb                                    ; $561a: $dc $bb $a9
	sbc  b                                           ; $561d: $98
	adc  c                                           ; $561e: $89
	sbc  b                                           ; $561f: $98
	adc  b                                           ; $5620: $88
	ld   [hl], a                                     ; $5621: $77
	halt                                             ; $5622: $76
	ld   d, h                                        ; $5623: $54
	ld   [hl-], a                                    ; $5624: $32
	inc  de                                          ; $5625: $13
	ld   b, c                                        ; $5626: $41
	ld   hl, $4612                                   ; $5627: $21 $12 $46
	ld   l, b                                        ; $562a: $68
	xor  h                                           ; $562b: $ac
	rst  $38                                         ; $562c: $ff
	rst  $38                                         ; $562d: $ff
	rst  $38                                         ; $562e: $ff
	rst  $38                                         ; $562f: $ff
	db   $db                                         ; $5630: $db
	xor  d                                           ; $5631: $aa
	sub  a                                           ; $5632: $97
	add  [hl]                                        ; $5633: $86
	ld   h, a                                        ; $5634: $67
	add  a                                           ; $5635: $87
	ld   a, b                                        ; $5636: $78
	ld   [hl], a                                     ; $5637: $77
	ld   h, [hl]                                     ; $5638: $66
	ld   b, e                                        ; $5639: $43
	ld   hl, $1124                                   ; $563a: $21 $24 $11
	ld   de, $7624                                   ; $563d: $11 $24 $76
	adc  h                                           ; $5640: $8c
	cp   a                                           ; $5641: $bf
	rst  $38                                         ; $5642: $ff
	rst  $38                                         ; $5643: $ff
	cp   $fe                                         ; $5644: $fe $fe
	xor  d                                           ; $5646: $aa
	adc  c                                           ; $5647: $89
	ld   h, a                                        ; $5648: $67
	ld   h, l                                        ; $5649: $65
	ld   a, b                                        ; $564a: $78
	add  a                                           ; $564b: $87
	sbc  b                                           ; $564c: $98
	add  a                                           ; $564d: $87
	ld   h, h                                        ; $564e: $64
	ld   [hl+], a                                    ; $564f: $22
	ld   de, $1141                                   ; $5650: $11 $41 $11
	ld   de, $7848                                   ; $5653: $11 $48 $78
	db   $dd                                         ; $5656: $dd
	rst  $38                                         ; $5657: $ff
	rst  $38                                         ; $5658: $ff
	rst  $38                                         ; $5659: $ff
	rst  $38                                         ; $565a: $ff
	ld   sp, hl                                      ; $565b: $f9
	add  a                                           ; $565c: $87
	add  [hl]                                        ; $565d: $86
	ld   b, [hl]                                     ; $565e: $46
	ld   b, [hl]                                     ; $565f: $46
	adc  b                                           ; $5660: $88
	sbc  c                                           ; $5661: $99
	xor  c                                           ; $5662: $a9
	add  a                                           ; $5663: $87
	ld   b, e                                        ; $5664: $43
	ld   hl, $1113                                   ; $5665: $21 $13 $11
	ld   de, $8913                                   ; $5668: $11 $13 $89
	sbc  l                                           ; $566b: $9d
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	rst  $38                                         ; $566e: $ff
	rst  $38                                         ; $566f: $ff
	db   $ed                                         ; $5670: $ed
	and  a                                           ; $5671: $a7
	ld   h, [hl]                                     ; $5672: $66
	ld   d, e                                        ; $5673: $53
	ld   d, l                                        ; $5674: $55
	ld   e, b                                        ; $5675: $58
	adc  c                                           ; $5676: $89
	sbc  c                                           ; $5677: $99
	xor  b                                           ; $5678: $a8
	add  [hl]                                        ; $5679: $86
	ld   [hl-], a                                    ; $567a: $32
	ld   de, $1111                                   ; $567b: $11 $11 $11
	ld   de, $9926                                   ; $567e: $11 $26 $99
	rst  JumpTable                                         ; $5681: $df
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	rst  $38                                         ; $5684: $ff
	rst  $38                                         ; $5685: $ff
	ld   [$4575], a                                  ; $5686: $ea $75 $45
	inc  [hl]                                        ; $5689: $34
	ld   d, h                                        ; $568a: $54
	ld   a, b                                        ; $568b: $78
	xor  d                                           ; $568c: $aa
	xor  d                                           ; $568d: $aa
	xor  c                                           ; $568e: $a9
	add  l                                           ; $568f: $85
	ld   sp, $1111                                   ; $5690: $31 $11 $11
	ld   de, $5911                                   ; $5693: $11 $11 $59
	cp   e                                           ; $5696: $bb
	rst  $38                                         ; $5697: $ff
	rst  $38                                         ; $5698: $ff
	rst  $38                                         ; $5699: $ff
	rst  $38                                         ; $569a: $ff
	db   $fd                                         ; $569b: $fd
	ret  z                                           ; $569c: $c8

	ld   d, e                                        ; $569d: $53
	inc  [hl]                                        ; $569e: $34
	inc  [hl]                                        ; $569f: $34
	ld   b, l                                        ; $56a0: $45
	adc  c                                           ; $56a1: $89
	cp   e                                           ; $56a2: $bb
	call z, Call_0db_74a9                            ; $56a3: $cc $a9 $74
	ld   hl, $1111                                   ; $56a6: $21 $11 $11
	ld   de, $6a11                                   ; $56a9: $11 $11 $6a
	db   $dd                                         ; $56ac: $dd
	rst  $38                                         ; $56ad: $ff
	rst  $38                                         ; $56ae: $ff
	rst  $38                                         ; $56af: $ff
	rst  $38                                         ; $56b0: $ff
	db   $fc                                         ; $56b1: $fc
	and  a                                           ; $56b2: $a7
	ld   b, d                                        ; $56b3: $42
	ld   [hl+], a                                    ; $56b4: $22
	inc  h                                           ; $56b5: $24
	ld   b, l                                        ; $56b6: $45
	sbc  e                                           ; $56b7: $9b
	call z, $c9cd                                    ; $56b8: $cc $cd $c9
	ld   [hl], h                                     ; $56bb: $74
	ld   hl, $1111                                   ; $56bc: $21 $11 $11
	ld   de, $5b11                                   ; $56bf: $11 $11 $5b
	sbc  $ff                                         ; $56c2: $de $ff
	rst  $38                                         ; $56c4: $ff
	rst  $38                                         ; $56c5: $ff
	rst  $38                                         ; $56c6: $ff
	jp   c, $3196                                    ; $56c7: $da $96 $31

	ld   de, $5623                                   ; $56ca: $11 $23 $56
	sbc  e                                           ; $56cd: $9b
	call $dadd                                       ; $56ce: $cd $dd $da
	add  l                                           ; $56d1: $85
	ld   sp, $1111                                   ; $56d2: $31 $11 $11
	ld   de, $4811                                   ; $56d5: $11 $11 $48
	rst  JumpTable                                         ; $56d8: $df
	rst  $38                                         ; $56d9: $ff
	rst  $38                                         ; $56da: $ff
	rst  $38                                         ; $56db: $ff
	rst  $38                                         ; $56dc: $ff
	ld   [$4297], a                                  ; $56dd: $ea $97 $42
	ld   de, $4612                                   ; $56e0: $11 $12 $46
	adc  c                                           ; $56e3: $89
	cp   h                                           ; $56e4: $bc
	rst  JumpTable                                         ; $56e5: $df
	db   $ec                                         ; $56e6: $ec
	and  [hl]                                        ; $56e7: $a6
	ld   b, d                                        ; $56e8: $42
	ld   de, $1111                                   ; $56e9: $11 $11 $11
	ld   de, $af15                                   ; $56ec: $11 $15 $af
	rst  $38                                         ; $56ef: $ff
	rst  $38                                         ; $56f0: $ff
	rst  $38                                         ; $56f1: $ff
	rst  $38                                         ; $56f2: $ff
	db   $fd                                         ; $56f3: $fd
	sub  a                                           ; $56f4: $97
	ld   h, h                                        ; $56f5: $64
	ld   hl, $2511                                   ; $56f6: $21 $11 $25
	ld   a, c                                        ; $56f9: $79
	xor  h                                           ; $56fa: $ac
	adc  $fe                                         ; $56fb: $ce $fe
	cp   c                                           ; $56fd: $b9
	ld   h, h                                        ; $56fe: $64
	ld   de, $1111                                   ; $56ff: $11 $11 $11
	ld   de, $6912                                   ; $5702: $11 $12 $69
	rst  $28                                         ; $5705: $ef
	rst  $38                                         ; $5706: $ff
	rst  $38                                         ; $5707: $ff
	rst  $38                                         ; $5708: $ff
	rst  $38                                         ; $5709: $ff
	reti                                             ; $570a: $d9


	ld   h, l                                        ; $570b: $65
	inc  sp                                          ; $570c: $33
	ld   hl, $5813                                   ; $570d: $21 $13 $58
	xor  h                                           ; $5710: $ac
	call z, $ebdd                                    ; $5711: $cc $dd $eb
	sub  [hl]                                        ; $5714: $96
	ld   b, c                                        ; $5715: $41
	ld   de, $1111                                   ; $5716: $11 $11 $11
	ld   [de], a                                     ; $5719: $12
	ld   [hl], $9e                                   ; $571a: $36 $9e
	rst  $38                                         ; $571c: $ff
	rst  $38                                         ; $571d: $ff
	rst  $38                                         ; $571e: $ff
	rst  $38                                         ; $571f: $ff
	db   $ed                                         ; $5720: $ed
	sub  [hl]                                        ; $5721: $96
	ld   d, e                                        ; $5722: $53
	inc  sp                                          ; $5723: $33
	inc  hl                                          ; $5724: $23
	dec  [hl]                                        ; $5725: $35
	ld   a, d                                        ; $5726: $7a
	cp   h                                           ; $5727: $bc
	call z, $badc                                    ; $5728: $cc $dc $ba
	ld   [hl], h                                     ; $572b: $74
	ld   hl, $1111                                   ; $572c: $21 $11 $11
	ld   de, $5723                                   ; $572f: $11 $23 $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5732: $cf
	rst  $38                                         ; $5733: $ff
	rst  $38                                         ; $5734: $ff
	rst  $38                                         ; $5735: $ff
	rst  $38                                         ; $5736: $ff
	db   $db                                         ; $5737: $db
	halt                                             ; $5738: $76
	ld   b, h                                        ; $5739: $44
	ld   b, h                                        ; $573a: $44
	ld   b, h                                        ; $573b: $44
	ld   d, a                                        ; $573c: $57
	adc  e                                           ; $573d: $8b
	cp   l                                           ; $573e: $bd
	set  1, e                                        ; $573f: $cb $cb
	xor  b                                           ; $5741: $a8
	ld   d, h                                        ; $5742: $54
	ld   de, $1111                                   ; $5743: $11 $11 $11
	inc  de                                          ; $5746: $13
	inc  [hl]                                        ; $5747: $34
	ld   e, b                                        ; $5748: $58
	rst  JumpTable                                         ; $5749: $df
	rst  $38                                         ; $574a: $ff
	rst  $38                                         ; $574b: $ff
	rst  $38                                         ; $574c: $ff
	cp   $ea                                         ; $574d: $fe $ea
	halt                                             ; $574f: $76
	ld   b, l                                        ; $5750: $45
	ld   b, l                                        ; $5751: $45
	ld   h, l                                        ; $5752: $65
	ld   [hl], a                                     ; $5753: $77
	sbc  e                                           ; $5754: $9b
	cp   l                                           ; $5755: $bd
	cp   h                                           ; $5756: $bc
	xor  d                                           ; $5757: $aa
	add  [hl]                                        ; $5758: $86
	ld   d, e                                        ; $5759: $53
	ld   de, $1111                                   ; $575a: $11 $11 $11
	inc  [hl]                                        ; $575d: $34
	inc  [hl]                                        ; $575e: $34
	ld   e, b                                        ; $575f: $58
	adc  $ff                                         ; $5760: $ce $ff
	rst  $38                                         ; $5762: $ff
	xor  $fe                                         ; $5763: $ee $fe
	db   $eb                                         ; $5765: $eb
	sub  [hl]                                        ; $5766: $96
	ld   d, l                                        ; $5767: $55
	ld   d, [hl]                                     ; $5768: $56
	ld   h, a                                        ; $5769: $67
	ld   a, b                                        ; $576a: $78
	sbc  d                                           ; $576b: $9a
	call z, $a9bc                                    ; $576c: $cc $bc $a9
	halt                                             ; $576f: $76
	ld   d, e                                        ; $5770: $53
	ld   de, $0111                                   ; $5771: $11 $11 $01
	ld   b, h                                        ; $5774: $44
	ld   b, h                                        ; $5775: $44
	ld   e, b                                        ; $5776: $58
	adc  $ff                                         ; $5777: $ce $ff
	rst  $38                                         ; $5779: $ff
	xor  $ee                                         ; $577a: $ee $ee
	db   $db                                         ; $577c: $db
	sub  a                                           ; $577d: $97
	ld   d, l                                        ; $577e: $55
	ld   d, [hl]                                     ; $577f: $56
	ld   a, b                                        ; $5780: $78
	adc  b                                           ; $5781: $88
	xor  d                                           ; $5782: $aa
	xor  e                                           ; $5783: $ab
	call z, Call_0db_75b8                            ; $5784: $cc $b8 $75
	ld   b, e                                        ; $5787: $43
	ld   de, $1111                                   ; $5788: $11 $11 $11
	inc  [hl]                                        ; $578b: $34
	ld   b, l                                        ; $578c: $45
	ld   e, b                                        ; $578d: $58
	cp   l                                           ; $578e: $bd
	rst  $38                                         ; $578f: $ff
	rst  $38                                         ; $5790: $ff
	db   $ed                                         ; $5791: $ed
	db   $dd                                         ; $5792: $dd
	db   $db                                         ; $5793: $db
	and  a                                           ; $5794: $a7
	ld   d, l                                        ; $5795: $55
	ld   d, [hl]                                     ; $5796: $56
	ld   a, b                                        ; $5797: $78
	xor  c                                           ; $5798: $a9
	sbc  d                                           ; $5799: $9a
	cp   e                                           ; $579a: $bb
	cp   h                                           ; $579b: $bc
	cp   b                                           ; $579c: $b8
	ld   [hl], l                                     ; $579d: $75
	ld   b, e                                        ; $579e: $43
	ld   de, $1211                                   ; $579f: $11 $11 $12
	ld   b, l                                        ; $57a2: $45
	ld   b, l                                        ; $57a3: $45
	ld   e, b                                        ; $57a4: $58
	cp   h                                           ; $57a5: $bc
	rst  $38                                         ; $57a6: $ff
	rst  $38                                         ; $57a7: $ff
	db   $dd                                         ; $57a8: $dd
	call $a8db                                       ; $57a9: $cd $db $a8
	ld   h, l                                        ; $57ac: $65
	ld   d, [hl]                                     ; $57ad: $56
	ld   a, b                                        ; $57ae: $78
	sbc  c                                           ; $57af: $99
	xor  d                                           ; $57b0: $aa
	xor  d                                           ; $57b1: $aa
	xor  e                                           ; $57b2: $ab
	cp   c                                           ; $57b3: $b9
	ld   [hl], l                                     ; $57b4: $75
	ld   b, d                                        ; $57b5: $42
	ld   de, $2211                                   ; $57b6: $11 $11 $22
	ld   b, l                                        ; $57b9: $45
	ld   b, l                                        ; $57ba: $45
	ld   e, b                                        ; $57bb: $58
	cp   l                                           ; $57bc: $bd
	rst  $38                                         ; $57bd: $ff
	rst  $38                                         ; $57be: $ff
	db   $ec                                         ; $57bf: $ec
	call z, $b8db                                    ; $57c0: $cc $db $b8
	ld   h, l                                        ; $57c3: $65
	ld   d, [hl]                                     ; $57c4: $56
	ld   a, c                                        ; $57c5: $79
	xor  d                                           ; $57c6: $aa
	xor  d                                           ; $57c7: $aa
	xor  d                                           ; $57c8: $aa
	xor  d                                           ; $57c9: $aa
	xor  c                                           ; $57ca: $a9
	add  l                                           ; $57cb: $85
	ld   b, d                                        ; $57cc: $42
	ld   de, $2311                                   ; $57cd: $11 $11 $23
	ld   b, l                                        ; $57d0: $45
	ld   b, l                                        ; $57d1: $45
	ld   d, a                                        ; $57d2: $57
	xor  h                                           ; $57d3: $ac
	rst  $38                                         ; $57d4: $ff
	rst  $38                                         ; $57d5: $ff
	db   $db                                         ; $57d6: $db
	cp   e                                           ; $57d7: $bb
	res  7, c                                        ; $57d8: $cb $b9
	ld   h, l                                        ; $57da: $65
	ld   d, l                                        ; $57db: $55
	ld   a, b                                        ; $57dc: $78
	xor  e                                           ; $57dd: $ab
	xor  d                                           ; $57de: $aa
	xor  d                                           ; $57df: $aa
	cp   e                                           ; $57e0: $bb
	xor  c                                           ; $57e1: $a9
	add  [hl]                                        ; $57e2: $86
	ld   b, d                                        ; $57e3: $42
	ld   de, $2311                                   ; $57e4: $11 $11 $23
	ld   b, [hl]                                     ; $57e7: $46
	ld   b, l                                        ; $57e8: $45
	ld   h, a                                        ; $57e9: $67
	cp   l                                           ; $57ea: $bd
	rst  $38                                         ; $57eb: $ff
	rst  $38                                         ; $57ec: $ff
	db   $eb                                         ; $57ed: $eb
	cp   d                                           ; $57ee: $ba
	cp   h                                           ; $57ef: $bc
	cp   d                                           ; $57f0: $ba
	ld   [hl], l                                     ; $57f1: $75
	ld   d, l                                        ; $57f2: $55
	ld   l, b                                        ; $57f3: $68
	xor  e                                           ; $57f4: $ab
	res  7, e                                        ; $57f5: $cb $bb
	cp   e                                           ; $57f7: $bb
	cp   c                                           ; $57f8: $b9
	add  [hl]                                        ; $57f9: $86
	ld   b, d                                        ; $57fa: $42
	ld   de, $1311                                   ; $57fb: $11 $11 $13
	ld   b, [hl]                                     ; $57fe: $46
	ld   h, l                                        ; $57ff: $65
	ld   [hl], a                                     ; $5800: $77
	xor  h                                           ; $5801: $ac
	rst  $38                                         ; $5802: $ff
	rst  $38                                         ; $5803: $ff
	ld   a, [$aba9]                                  ; $5804: $fa $a9 $ab
	xor  d                                           ; $5807: $aa
	add  l                                           ; $5808: $85
	ld   d, h                                        ; $5809: $54
	ld   d, a                                        ; $580a: $57
	xor  e                                           ; $580b: $ab
	call z, $aabb                                    ; $580c: $cc $bb $aa
	xor  d                                           ; $580f: $aa
	sub  a                                           ; $5810: $97
	ld   b, d                                        ; $5811: $42
	ld   de, $1211                                   ; $5812: $11 $11 $12
	ld   b, a                                        ; $5815: $47
	add  a                                           ; $5816: $87
	adc  c                                           ; $5817: $89
	sbc  [hl]                                        ; $5818: $9e
	rst  $38                                         ; $5819: $ff
	rst  $38                                         ; $581a: $ff
	ei                                               ; $581b: $fb
	sbc  b                                           ; $581c: $98
	ld   a, b                                        ; $581d: $78
	adc  c                                           ; $581e: $89
	add  [hl]                                        ; $581f: $86
	ld   d, l                                        ; $5820: $55
	ld   d, a                                        ; $5821: $57
	xor  h                                           ; $5822: $ac
	rst  $28                                         ; $5823: $ef
	db   $ed                                         ; $5824: $ed
	cp   e                                           ; $5825: $bb
	xor  d                                           ; $5826: $aa
	sub  a                                           ; $5827: $97
	ld   b, c                                        ; $5828: $41
	ld   de, $1111                                   ; $5829: $11 $11 $11
	ld   [hl], $ab                                   ; $582c: $36 $ab
	xor  h                                           ; $582e: $ac
	cp   l                                           ; $582f: $bd
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	db   $ec                                         ; $5832: $ec
	ld   [hl], l                                     ; $5833: $75
	ld   d, h                                        ; $5834: $54
	ld   h, a                                        ; $5835: $67
	ld   a, b                                        ; $5836: $78
	ld   h, [hl]                                     ; $5837: $66
	ld   [hl], a                                     ; $5838: $77
	cp   l                                           ; $5839: $bd
	rst  $38                                         ; $583a: $ff
	rst  $38                                         ; $583b: $ff
	db   $db                                         ; $583c: $db
	xor  c                                           ; $583d: $a9
	add  a                                           ; $583e: $87
	ld   b, c                                        ; $583f: $41
	ld   de, $1111                                   ; $5840: $11 $11 $11
	daa                                              ; $5843: $27
	xor  a                                           ; $5844: $af
	cp   $fe                                         ; $5845: $fe $fe
	rst  $38                                         ; $5847: $ff
	rst  $38                                         ; $5848: $ff
	ld   [$1171], a                                  ; $5849: $ea $71 $11
	dec  d                                           ; $584c: $15
	adc  d                                           ; $584d: $8a
	cp   d                                           ; $584e: $ba
	xor  e                                           ; $584f: $ab
	cp   a                                           ; $5850: $bf
	rst  $38                                         ; $5851: $ff
	rst  $38                                         ; $5852: $ff
	ret                                              ; $5853: $c9


	add  a                                           ; $5854: $87
	ld   h, [hl]                                     ; $5855: $66
	ld   b, c                                        ; $5856: $41
	ld   de, $1111                                   ; $5857: $11 $11 $11
	jr   @-$2f                                       ; $585a: $18 $cf

	rst  $38                                         ; $585c: $ff
	rst  $38                                         ; $585d: $ff
	rst  $28                                         ; $585e: $ef
	rst  $38                                         ; $585f: $ff
	rst  $20                                         ; $5860: $e7
	ld   b, c                                        ; $5861: $41
	ld   de, $ae14                                   ; $5862: $11 $14 $ae
	rst  $38                                         ; $5865: $ff
	cp   $cf                                         ; $5866: $fe $cf
	rst  $38                                         ; $5868: $ff

jr_0db_5869:
	cp   $a7                                         ; $5869: $fe $a7
	ld   d, h                                        ; $586b: $54
	ld   b, l                                        ; $586c: $45
	ld   b, c                                        ; $586d: $41
	ld   de, $1111                                   ; $586e: $11 $11 $11
	add  hl, de                                      ; $5871: $19
	rst  JumpTable                                         ; $5872: $df
	rst  $38                                         ; $5873: $ff
	rst  $38                                         ; $5874: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5875: $cf
	rst  JumpTable                                         ; $5876: $df
	sub  $31                                         ; $5877: $d6 $31
	ld   de, $df15                                   ; $5879: $11 $15 $df
	rst  $38                                         ; $587c: $ff
	db   $fd                                         ; $587d: $fd
	cp   h                                           ; $587e: $bc
	db   $ed                                         ; $587f: $ed
	db   $ed                                         ; $5880: $ed
	sub  [hl]                                        ; $5881: $96
	ld   d, h                                        ; $5882: $54
	ld   b, l                                        ; $5883: $45
	ld   d, e                                        ; $5884: $53
	ld   de, $1111                                   ; $5885: $11 $11 $11
	jr   jr_0db_5869                                 ; $5888: $18 $df

	rst  $38                                         ; $588a: $ff
	rst  $38                                         ; $588b: $ff
	cp   l                                           ; $588c: $bd
	call $21b4                                       ; $588d: $cd $b4 $21
	ld   de, $ff16                                   ; $5890: $11 $16 $ff
	rst  $38                                         ; $5893: $ff
	db   $fc                                         ; $5894: $fc
	sbc  c                                           ; $5895: $99
	xor  d                                           ; $5896: $aa
	cp   h                                           ; $5897: $bc
	add  [hl]                                        ; $5898: $86
	ld   d, h                                        ; $5899: $54
	ld   d, a                                        ; $589a: $57
	ld   [hl], l                                     ; $589b: $75
	ld   sp, $1111                                   ; $589c: $31 $11 $11
	rla                                              ; $589f: $17
	rst  $28                                         ; $58a0: $ef
	rst  $38                                         ; $58a1: $ff
	rst  $38                                         ; $58a2: $ff
	xor  d                                           ; $58a3: $aa
	xor  d                                           ; $58a4: $aa
	and  e                                           ; $58a5: $a3
	ld   de, $2a11                                   ; $58a6: $11 $11 $2a
	rst  $38                                         ; $58a9: $ff
	rst  $38                                         ; $58aa: $ff
	ei                                               ; $58ab: $fb
	ld   d, [hl]                                     ; $58ac: $56
	ld   a, b                                        ; $58ad: $78
	cp   e                                           ; $58ae: $bb
	sub  [hl]                                        ; $58af: $96
	ld   d, l                                        ; $58b0: $55
	ld   e, b                                        ; $58b1: $58
	add  [hl]                                        ; $58b2: $86
	ld   b, c                                        ; $58b3: $41
	ld   de, $1811                                   ; $58b4: $11 $11 $18
	rst  $38                                         ; $58b7: $ff
	rst  $38                                         ; $58b8: $ff
	rst  $38                                         ; $58b9: $ff
	adc  c                                           ; $58ba: $89
	adc  d                                           ; $58bb: $8a
	add  d                                           ; $58bc: $82
	ld   de, $6f11                                   ; $58bd: $11 $11 $6f
	rst  $38                                         ; $58c0: $ff
	rst  $38                                         ; $58c1: $ff
	push de                                          ; $58c2: $d5
	inc  h                                           ; $58c3: $24
	ld   l, c                                        ; $58c4: $69
	jp   z, Jump_0db_4475                            ; $58c5: $ca $75 $44

	ld   a, c                                        ; $58c8: $79
	and  a                                           ; $58c9: $a7
	ld   sp, $1111                                   ; $58ca: $31 $11 $11
	ld   c, a                                        ; $58cd: $4f
	rst  $38                                         ; $58ce: $ff
	rst  $38                                         ; $58cf: $ff
	rst  $30                                         ; $58d0: $f7
	ld   e, b                                        ; $58d1: $58
	ld   a, c                                        ; $58d2: $79
	ld   sp, $1711                                   ; $58d3: $31 $11 $17
	rst  $38                                         ; $58d6: $ff
	rst  $38                                         ; $58d7: $ff
	db   $fd                                         ; $58d8: $fd
	ld   b, c                                        ; $58d9: $41
	ld   d, $8c                                      ; $58da: $16 $8c
	ret  z                                           ; $58dc: $c8

	ld   d, h                                        ; $58dd: $54
	ld   b, a                                        ; $58de: $47
	cp   h                                           ; $58df: $bc
	sub  l                                           ; $58e0: $95
	ld   de, $1111                                   ; $58e1: $11 $11 $11
	rst  $28                                         ; $58e4: $ef
	rst  $38                                         ; $58e5: $ff
	rst  $38                                         ; $58e6: $ff
	and  d                                           ; $58e7: $a2
	ld   h, [hl]                                     ; $58e8: $66
	ld   [hl], l                                     ; $58e9: $75
	ld   de, $9f11                                   ; $58ea: $11 $11 $9f
	rst  $38                                         ; $58ed: $ff
	rst  $38                                         ; $58ee: $ff
	or   d                                           ; $58ef: $b2
	ld   de, $cd5a                                   ; $58f0: $11 $5a $cd
	sub  h                                           ; $58f3: $94
	ld   b, h                                        ; $58f4: $44
	ld   a, h                                        ; $58f5: $7c
	db   $db                                         ; $58f6: $db
	ld   d, c                                        ; $58f7: $51
	ld   de, $1f11                                   ; $58f8: $11 $11 $1f
	rst  $38                                         ; $58fb: $ff
	rst  $38                                         ; $58fc: $ff
	ld   sp, hl                                      ; $58fd: $f9
	inc  d                                           ; $58fe: $14
	ld   d, [hl]                                     ; $58ff: $56
	ld   d, c                                        ; $5900: $51
	ld   de, $ff1b                                   ; $5901: $11 $1b $ff
	rst  $38                                         ; $5904: $ff
	ld   hl, sp+$11                                  ; $5905: $f8 $11
	rla                                              ; $5907: $17
	call $34e8                                       ; $5908: $cd $e8 $34
	ld   b, a                                        ; $590b: $47
	db   $dd                                         ; $590c: $dd
	sub  h                                           ; $590d: $94
	ld   de, $1511                                   ; $590e: $11 $11 $15
	rst  $38                                         ; $5911: $ff
	rst  $38                                         ; $5912: $ff
	db   $fc                                         ; $5913: $fc
	ld   sp, $6455                                   ; $5914: $31 $55 $64
	ld   de, rAUD1HIGH                                   ; $5917: $11 $14 $ff
	rst  $38                                         ; $591a: $ff
	ld   a, [$1421]                                  ; $591b: $fa $21 $14
	cp   l                                           ; $591e: $bd
	db   $eb                                         ; $591f: $eb
	ld   b, e                                        ; $5920: $43
	ld   b, l                                        ; $5921: $45
	xor  [hl]                                        ; $5922: $ae
	rst  ToBoot                                         ; $5923: $c7
	ld   de, $1111                                   ; $5924: $11 $11 $11
	rst  $28                                         ; $5927: $ef
	rst  $38                                         ; $5928: $ff
	db   $fc                                         ; $5929: $fc
	and  c                                           ; $592a: $a1
	dec  d                                           ; $592b: $15
	ld   b, [hl]                                     ; $592c: $46
	ld   hl, $cf11                                   ; $592d: $21 $11 $cf
	rst  $38                                         ; $5930: $ff
	db   $fc                                         ; $5931: $fc
	ld   b, c                                        ; $5932: $41
	ld   de, $fd9e                                   ; $5933: $11 $9e $fd
	sub  d                                           ; $5936: $92
	ld   b, l                                        ; $5937: $45
	ld   a, l                                        ; $5938: $7d
	reti                                             ; $5939: $d9


	ld   sp, $1111                                   ; $593a: $31 $11 $11
	ccf                                              ; $593d: $3f
	rst  $38                                         ; $593e: $ff
	rst  $38                                         ; $593f: $ff
	and  e                                           ; $5940: $a3
	ld   [de], a                                     ; $5941: $12
	ld   b, [hl]                                     ; $5942: $46
	ld   h, c                                        ; $5943: $61
	ld   hl, $ff6f                                   ; $5944: $21 $6f $ff
	rst  $38                                         ; $5947: $ff
	ld   b, c                                        ; $5948: $41
	ld   de, $fd7e                                   ; $5949: $11 $7e $fd
	or   h                                           ; $594c: $b4
	ld   [hl], $6c                                   ; $594d: $36 $6c
	jp   c, $1151                                    ; $594f: $da $51 $11

	ld   de, $ff1f                                   ; $5952: $11 $1f $ff
	rst  $38                                         ; $5955: $ff
	sub  l                                           ; $5956: $95
	ld   de, $9355                                   ; $5957: $11 $55 $93
	ld   hl, $ff4f                                   ; $595a: $21 $4f $ff
	rst  $38                                         ; $595d: $ff
	ld   b, c                                        ; $595e: $41
	ld   de, $ff7e                                   ; $595f: $11 $7e $ff
	or   h                                           ; $5962: $b4
	dec  d                                           ; $5963: $15
	ld   l, d                                        ; $5964: $6a
	ld   a, [$1151]                                  ; $5965: $fa $51 $11
	ld   de, $ff1f                                   ; $5968: $11 $1f $ff
	rst  $38                                         ; $596b: $ff
	ld   [hl], h                                     ; $596c: $74
	ld   de, $a456                                   ; $596d: $11 $56 $a4
	ld   sp, $ff5f                                   ; $5970: $31 $5f $ff
	cp   $11                                         ; $5973: $fe $11
	ld   de, $fe9f                                   ; $5975: $11 $9f $fe
	or   e                                           ; $5978: $b3
	ld   d, $6c                                      ; $5979: $16 $6c
	ld   [$1151], a                                  ; $597b: $ea $51 $11
	ld   de, $ff6f                                   ; $597e: $11 $6f $ff
	ld   sp, hl                                      ; $5981: $f9
	ld   [hl], c                                     ; $5982: $71
	inc  d                                           ; $5983: $14
	ld   e, e                                        ; $5984: $5b
	or   h                                           ; $5985: $b4
	ld   b, c                                        ; $5986: $41
	cp   a                                           ; $5987: $bf
	rst  $38                                         ; $5988: $ff
	ld   hl, sp+$11                                  ; $5989: $f8 $11
	inc  d                                           ; $598b: $14
	rst  JumpTable                                         ; $598c: $df
	db   $fd                                         ; $598d: $fd
	ld   h, c                                        ; $598e: $61
	ld   h, $8e                                      ; $598f: $26 $8e
	rst  $10                                         ; $5991: $d7
	ld   de, $1111                                   ; $5992: $11 $11 $11
	rst  $38                                         ; $5995: $ff
	rst  $38                                         ; $5996: $ff
	push bc                                          ; $5997: $c5
	ld   de, $af17                                   ; $5998: $11 $17 $af
	ld   h, l                                        ; $599b: $65
	ld   d, $ff                                      ; $599c: $16 $ff
	rst  $38                                         ; $599e: $ff
	sub  c                                           ; $599f: $91
	ld   de, $ff3c                                   ; $59a0: $11 $3c $ff
	rst  $10                                         ; $59a3: $d7
	ld   bc, $dd57                                   ; $59a4: $01 $57 $dd
	ld   [hl], d                                     ; $59a7: $72
	ld   de, $1f11                                   ; $59a8: $11 $11 $1f
	rst  $38                                         ; $59ab: $ff
	ld   sp, hl                                      ; $59ac: $f9
	ld   h, c                                        ; $59ad: $61
	inc  de                                          ; $59ae: $13
	ld   a, h                                        ; $59af: $7c
	rst  $30                                         ; $59b0: $f7
	ld   [hl], c                                     ; $59b1: $71
	ld   l, a                                        ; $59b2: $6f
	rst  $38                                         ; $59b3: $ff
	rst  $30                                         ; $59b4: $f7
	ld   de, $df16                                   ; $59b5: $11 $16 $df
	ei                                               ; $59b8: $fb
	ld   d, c                                        ; $59b9: $51
	dec  h                                           ; $59ba: $25
	ld   a, [hl]                                     ; $59bb: $7e
	add  $11                                         ; $59bc: $c6 $11
	ld   de, $ff1c                                   ; $59be: $11 $1c $ff
	rst  $38                                         ; $59c1: $ff
	ld   h, $11                                      ; $59c2: $26 $11
	add  a                                           ; $59c4: $87
	rst  $38                                         ; $59c5: $ff
	sub  l                                           ; $59c6: $95
	ld   e, $ff                                      ; $59c7: $1e $ff
	db   $fc                                         ; $59c9: $fc
	ld   sp, $bf11                                   ; $59ca: $31 $11 $bf
	rst  $38                                         ; $59cd: $ff
	ld   [hl], c                                     ; $59ce: $71
	inc  de                                          ; $59cf: $13
	ld   e, e                                        ; $59d0: $5b
	add  sp, $21                                     ; $59d1: $e8 $21
	ld   de, $ff19                                   ; $59d3: $11 $19 $ff
	rst  $38                                         ; $59d6: $ff
	inc  h                                           ; $59d7: $24
	ld   de, $ff88                                   ; $59d8: $11 $88 $ff
	or   a                                           ; $59db: $b7
	dec  de                                          ; $59dc: $1b
	rst  $38                                         ; $59dd: $ff
	db   $fd                                         ; $59de: $fd
	ld   h, c                                        ; $59df: $61
	ld   de, $feae                                   ; $59e0: $11 $ae $fe
	add  c                                           ; $59e3: $81
	ld   [de], a                                     ; $59e4: $12
	ld   e, e                                        ; $59e5: $5b
	rst  $10                                         ; $59e6: $d7
	ld   de, $1f11                                   ; $59e7: $11 $11 $1f
	rst  $38                                         ; $59ea: $ff
	rst  $38                                         ; $59eb: $ff
	ld   sp, $7c11                                   ; $59ec: $31 $11 $7c
	rst  $38                                         ; $59ef: $ff
	db   $d3                                         ; $59f0: $d3
	ld   c, h                                        ; $59f1: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59f2: $cf
	ld   a, [$1581]                                  ; $59f3: $fa $81 $15
	cp   l                                           ; $59f6: $bd
	db   $fd                                         ; $59f7: $fd
	ld   h, c                                        ; $59f8: $61
	inc  de                                          ; $59f9: $13
	ld   l, l                                        ; $59fa: $6d
	and  e                                           ; $59fb: $a3
	ld   de, $af11                                   ; $59fc: $11 $11 $af
	rst  $38                                         ; $59ff: $ff
	db   $f4                                         ; $5a00: $f4
	ld   de, $af15                                   ; $5a01: $11 $15 $af
	rst  $38                                         ; $5a04: $ff
	ld   d, d                                        ; $5a05: $52
	sbc  b                                           ; $5a06: $98
	rst  $38                                         ; $5a07: $ff
	db   $db                                         ; $5a08: $db
	ld   b, c                                        ; $5a09: $41
	add  hl, sp                                      ; $5a0a: $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a0b: $cf
	rst  ToBoot                                         ; $5a0c: $c7
	ld   hl, $aa25                                   ; $5a0d: $21 $25 $aa
	ld   sp, $1d11                                   ; $5a10: $31 $11 $1d
	rst  $38                                         ; $5a13: $ff
	rst  $38                                         ; $5a14: $ff
	ld   [hl], c                                     ; $5a15: $71
	ld   de, $ff4f                                   ; $5a16: $11 $4f $ff
	db   $f4                                         ; $5a19: $f4
	ld   [hl], $8f                                   ; $5a1a: $36 $8f
	cp   $c3                                         ; $5a1c: $fe $c3
	dec  d                                           ; $5a1e: $15
	sbc  l                                           ; $5a1f: $9d
	ld   [$1352], a                                  ; $5a20: $ea $52 $13
	ld   l, c                                        ; $5a23: $69
	ld   h, c                                        ; $5a24: $61
	ld   de, $ff18                                   ; $5a25: $11 $18 $ff
	rst  $38                                         ; $5a28: $ff
	sub  c                                           ; $5a29: $91
	ld   de, $ff1c                                   ; $5a2a: $11 $1c $ff
	rst  $30                                         ; $5a2d: $f7
	inc  sp                                          ; $5a2e: $33
	ld   e, a                                        ; $5a2f: $5f
	rst  $38                                         ; $5a30: $ff
	and  $14                                         ; $5a31: $e6 $14
	ld   a, d                                        ; $5a33: $7a
	db   $eb                                         ; $5a34: $eb
	ld   [hl], l                                     ; $5a35: $75
	ld   [hl+], a                                    ; $5a36: $22
	ld   b, l                                        ; $5a37: $45
	ld   hl, $1d11                                   ; $5a38: $21 $11 $1d
	rst  $38                                         ; $5a3b: $ff
	rst  $38                                         ; $5a3c: $ff
	ld   [hl], c                                     ; $5a3d: $71
	ld   de, $ff4f                                   ; $5a3e: $11 $4f $ff
	rst  $30                                         ; $5a41: $f7
	ld   b, d                                        ; $5a42: $42
	xor  a                                           ; $5a43: $af
	rst  $38                                         ; $5a44: $ff
	or   l                                           ; $5a45: $b5
	inc  hl                                          ; $5a46: $23
	ld   c, c                                        ; $5a47: $49
	cp   e                                           ; $5a48: $bb
	add  [hl]                                        ; $5a49: $86
	ld   sp, $1101                                   ; $5a4a: $31 $01 $11
	rla                                              ; $5a4d: $17
	rst  $38                                         ; $5a4e: $ff
	rst  $38                                         ; $5a4f: $ff
	pop  af                                          ; $5a50: $f1
	ld   de, $ff18                                   ; $5a51: $11 $18 $ff
	db   $fc                                         ; $5a54: $fc
	add  h                                           ; $5a55: $84
	ld   e, e                                        ; $5a56: $5b
	rst  JumpTable                                         ; $5a57: $df
	ld   sp, hl                                      ; $5a58: $f9
	ld   h, e                                        ; $5a59: $63
	inc  d                                           ; $5a5a: $14
	ld   h, a                                        ; $5a5b: $67
	sub  a                                           ; $5a5c: $97
	ld   d, d                                        ; $5a5d: $52
	ld   de, $5e11                                   ; $5a5e: $11 $11 $5e
	rst  $38                                         ; $5a61: $ff
	db   $fd                                         ; $5a62: $fd
	ld   h, c                                        ; $5a63: $61
	ld   de, $ff6f                                   ; $5a64: $11 $6f $ff
	ei                                               ; $5a67: $fb
	sub  l                                           ; $5a68: $95
	adc  d                                           ; $5a69: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a6a: $cf
	ret                                              ; $5a6b: $c9


	ld   h, e                                        ; $5a6c: $63
	inc  [hl]                                        ; $5a6d: $34
	ld   d, [hl]                                     ; $5a6e: $56
	ld   h, l                                        ; $5a6f: $65
	ld   hl, $1d11                                   ; $5a70: $21 $11 $1d
	rst  $38                                         ; $5a73: $ff
	cp   $61                                         ; $5a74: $fe $61
	ld   de, $ff6d                                   ; $5a76: $11 $6d $ff
	ld   a, [$7a96]                                  ; $5a79: $fa $96 $7a
	cp   h                                           ; $5a7c: $bc
	jp   c, $3375                                    ; $5a7d: $da $75 $33

	ld   b, h                                        ; $5a80: $44
	ld   b, e                                        ; $5a81: $43
	ld   de, $af11                                   ; $5a82: $11 $11 $af
	rst  $38                                         ; $5a85: $ff
	ei                                               ; $5a86: $fb
	ld   hl, $8f11                                   ; $5a87: $21 $11 $8f
	rst  $38                                         ; $5a8a: $ff
	call c, $9996                                    ; $5a8b: $dc $96 $99
	cp   e                                           ; $5a8e: $bb
	sbc  b                                           ; $5a8f: $98
	ld   d, e                                        ; $5a90: $53
	ld   hl, $1111                                   ; $5a91: $21 $11 $11
	ld   bc, $ff9f                                   ; $5a94: $01 $9f $ff

jr_0db_5a97:
	db   $fc                                         ; $5a97: $fc
	ld   h, c                                        ; $5a98: $61
	ld   de, $ff7e                                   ; $5a99: $11 $7e $ff
	ld   a, [$7a86]                                  ; $5a9c: $fa $86 $7a
	xor  e                                           ; $5a9f: $ab
	xor  b                                           ; $5aa0: $a8
	ld   h, e                                        ; $5aa1: $63
	ld   de, $1111                                   ; $5aa2: $11 $11 $11
	jr   @+$01                                       ; $5aa5: $18 $ff

	rst  $38                                         ; $5aa7: $ff
	rst  $30                                         ; $5aa8: $f7
	ld   de, $bf16                                   ; $5aa9: $11 $16 $bf
	cp   $b9                                         ; $5aac: $fe $b9
	adc  d                                           ; $5aae: $8a
	cp   h                                           ; $5aaf: $bc
	jp   z, $1163                                    ; $5ab0: $ca $63 $11

	ld   de, $1611                                   ; $5ab3: $11 $11 $16
	rst  $28                                         ; $5ab6: $ef
	rst  $38                                         ; $5ab7: $ff
	ld   a, [$1511]                                  ; $5ab8: $fa $11 $15
	cp   a                                           ; $5abb: $bf
	rst  $38                                         ; $5abc: $ff
	cp   d                                           ; $5abd: $ba
	ld   a, b                                        ; $5abe: $78
	cp   d                                           ; $5abf: $ba
	bit  6, l                                        ; $5ac0: $cb $75
	ld   de, $1111                                   ; $5ac2: $11 $11 $11
	inc  l                                           ; $5ac5: $2c
	rst  $38                                         ; $5ac6: $ff
	rst  $38                                         ; $5ac7: $ff
	push de                                          ; $5ac8: $d5
	ld   de, $df49                                   ; $5ac9: $11 $49 $df
	jp   c, $9b97                                    ; $5acc: $da $97 $9b

	db   $dd                                         ; $5acf: $dd
	cp   c                                           ; $5ad0: $b9
	ld   b, c                                        ; $5ad1: $41
	ld   de, $1511                                   ; $5ad2: $11 $11 $15
	rst  $28                                         ; $5ad5: $ef
	rst  $38                                         ; $5ad6: $ff
	ld   a, [$3721]                                  ; $5ad7: $fa $21 $37
	db   $dd                                         ; $5ada: $dd
	db   $db                                         ; $5adb: $db
	add  a                                           ; $5adc: $87
	ld   a, c                                        ; $5add: $79
	cp   e                                           ; $5ade: $bb
	bit  6, e                                        ; $5adf: $cb $73
	ld   de, $1411                                   ; $5ae1: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ae4: $cf
	rst  $38                                         ; $5ae5: $ff
	ei                                               ; $5ae6: $fb
	ld   d, d                                        ; $5ae7: $52
	jr   c, jr_0db_5a97                              ; $5ae8: $38 $ad

	jp   c, $6797                                    ; $5aea: $da $97 $67

	adc  d                                           ; $5aed: $8a
	cp   d                                           ; $5aee: $ba
	ld   [hl], h                                     ; $5aef: $74
	ld   de, $1911                                   ; $5af0: $11 $11 $19
	rst  $38                                         ; $5af3: $ff
	rst  $38                                         ; $5af4: $ff
	rst  $10                                         ; $5af5: $d7
	ld   d, [hl]                                     ; $5af6: $56
	sbc  h                                           ; $5af7: $9c
	cp   e                                           ; $5af8: $bb
	xor  b                                           ; $5af9: $a8
	add  [hl]                                        ; $5afa: $86
	ld   [hl], a                                     ; $5afb: $77
	adc  c                                           ; $5afc: $89
	add  [hl]                                        ; $5afd: $86
	ld   sp, $1511                                   ; $5afe: $31 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b01: $cf
	rst  $38                                         ; $5b02: $ff
	jp   hl                                          ; $5b03: $e9


	ld   d, a                                        ; $5b04: $57
	adc  e                                           ; $5b05: $8b
	db   $dd                                         ; $5b06: $dd
	res  2, a                                        ; $5b07: $cb $97
	ld   h, h                                        ; $5b09: $64
	ld   d, l                                        ; $5b0a: $55
	ld   d, [hl]                                     ; $5b0b: $56
	ld   [hl-], a                                    ; $5b0c: $32
	ld   de, $df15                                   ; $5b0d: $11 $15 $df
	rst  $38                                         ; $5b10: $ff
	or   [hl]                                        ; $5b11: $b6
	ld   b, [hl]                                     ; $5b12: $46
	sbc  l                                           ; $5b13: $9d
	cp   $ca                                         ; $5b14: $fe $ca
	sub  [hl]                                        ; $5b16: $96
	ld   d, l                                        ; $5b17: $55
	ld   b, l                                        ; $5b18: $45
	ld   b, e                                        ; $5b19: $43
	ld   hl, $5b11                                   ; $5b1a: $21 $11 $5b
	rst  $38                                         ; $5b1d: $ff
	rst  $38                                         ; $5b1e: $ff
	and  l                                           ; $5b1f: $a5
	ld   d, a                                        ; $5b20: $57
	sbc  e                                           ; $5b21: $9b
	db   $dd                                         ; $5b22: $dd
	cp   e                                           ; $5b23: $bb
	sub  a                                           ; $5b24: $97
	ld   d, e                                        ; $5b25: $53
	inc  sp                                          ; $5b26: $33
	ld   sp, $1711                                   ; $5b27: $31 $11 $17
	rst  $28                                         ; $5b2a: $ef
	rst  $38                                         ; $5b2b: $ff
	rst  $10                                         ; $5b2c: $d7
	ld   h, [hl]                                     ; $5b2d: $66
	sbc  e                                           ; $5b2e: $9b
	call $96bb                                       ; $5b2f: $cd $bb $96
	ld   d, e                                        ; $5b32: $53
	inc  hl                                          ; $5b33: $23
	ld   [hl-], a                                    ; $5b34: $32
	ld   de, $af15                                   ; $5b35: $11 $15 $af
	rst  $38                                         ; $5b38: $ff
	jp   hl                                          ; $5b39: $e9


	ld   l, b                                        ; $5b3a: $68
	sbc  d                                           ; $5b3b: $9a
	set  1, h                                        ; $5b3c: $cb $cc
	xor  c                                           ; $5b3e: $a9
	ld   h, e                                        ; $5b3f: $63
	ld   hl, $1122                                   ; $5b40: $21 $22 $11
	ld   d, $bf                                      ; $5b43: $16 $bf
	rst  $38                                         ; $5b45: $ff
	cp   c                                           ; $5b46: $b9
	ld   d, [hl]                                     ; $5b47: $56
	xor  e                                           ; $5b48: $ab
	sbc  $ba                                         ; $5b49: $de $ba
	add  [hl]                                        ; $5b4b: $86
	ld   d, l                                        ; $5b4c: $55
	inc  sp                                          ; $5b4d: $33
	ld   hl, $4911                                   ; $5b4e: $21 $11 $49
	rst  JumpTable                                         ; $5b51: $df
	cp   $b7                                         ; $5b52: $fe $b7
	ld   a, c                                        ; $5b54: $79
	sbc  h                                           ; $5b55: $9c
	cp   h                                           ; $5b56: $bc
	cp   d                                           ; $5b57: $ba
	add  a                                           ; $5b58: $87
	ld   b, d                                        ; $5b59: $42
	ld   hl, $1411                                   ; $5b5a: $21 $11 $14
	adc  h                                           ; $5b5d: $8c
	rst  $38                                         ; $5b5e: $ff
	db   $eb                                         ; $5b5f: $eb
	adc  b                                           ; $5b60: $88
	xor  h                                           ; $5b61: $ac
	call z, $97ba                                    ; $5b62: $cc $ba $97
	ld   [hl], l                                     ; $5b65: $75
	inc  hl                                          ; $5b66: $23
	ld   de, $4811                                   ; $5b67: $11 $11 $48
	cp   [hl]                                        ; $5b6a: $be
	cp   $ca                                         ; $5b6b: $fe $ca
	adc  c                                           ; $5b6d: $89
	xor  d                                           ; $5b6e: $aa
	cp   e                                           ; $5b6f: $bb
	cp   e                                           ; $5b70: $bb
	and  [hl]                                        ; $5b71: $a6
	ld   [hl-], a                                    ; $5b72: $32
	ld   de, $4622                                   ; $5b73: $11 $22 $46
	sbc  l                                           ; $5b76: $9d
	call c, $9ada                                    ; $5b77: $dc $da $9a
	xor  d                                           ; $5b7a: $aa
	cp   e                                           ; $5b7b: $bb
	cp   h                                           ; $5b7c: $bc
	sbc  b                                           ; $5b7d: $98
	ld   d, c                                        ; $5b7e: $51
	ld   de, $3413                                   ; $5b7f: $11 $13 $34
	adc  d                                           ; $5b82: $8a
	xor  $cb                                         ; $5b83: $ee $cb
	adc  c                                           ; $5b85: $89
	sbc  d                                           ; $5b86: $9a
	call z, $98dc                                    ; $5b87: $cc $dc $98
	ld   d, d                                        ; $5b8a: $52
	ld   hl, $2422                                   ; $5b8b: $21 $22 $24
	ld   l, c                                        ; $5b8e: $69
	db   $dd                                         ; $5b8f: $dd
	res  1, b                                        ; $5b90: $cb $88
	sbc  e                                           ; $5b92: $9b
	db   $ed                                         ; $5b93: $ed
	db   $db                                         ; $5b94: $db
	sub  a                                           ; $5b95: $97
	ld   d, h                                        ; $5b96: $54
	inc  sp                                          ; $5b97: $33
	inc  sp                                          ; $5b98: $33
	inc  sp                                          ; $5b99: $33
	ld   e, b                                        ; $5b9a: $58
	xor  l                                           ; $5b9b: $ad
	jp   c, $9c99                                    ; $5b9c: $da $99 $9c

	sbc  $da                                         ; $5b9f: $de $da
	and  a                                           ; $5ba1: $a7
	ld   d, h                                        ; $5ba2: $54
	ld   [hl+], a                                    ; $5ba3: $22
	inc  de                                          ; $5ba4: $13
	dec  [hl]                                        ; $5ba5: $35
	adc  e                                           ; $5ba6: $8b
	db   $ec                                         ; $5ba7: $ec
	jp   z, $9c78                                    ; $5ba8: $ca $78 $9c

	db   $ec                                         ; $5bab: $ec
	reti                                             ; $5bac: $d9


	add  [hl]                                        ; $5bad: $86
	inc  [hl]                                        ; $5bae: $34
	ld   [hl+], a                                    ; $5baf: $22
	ld   [hl+], a                                    ; $5bb0: $22
	ld   d, a                                        ; $5bb1: $57
	cp   h                                           ; $5bb2: $bc
	call z, $9998                                    ; $5bb3: $cc $98 $99
	adc  $ed                                         ; $5bb6: $ce $ed
	cp   c                                           ; $5bb8: $b9
	ld   h, e                                        ; $5bb9: $63
	ld   de, $4512                                   ; $5bba: $11 $12 $45
	ld   a, c                                        ; $5bbd: $79
	xor  h                                           ; $5bbe: $ac
	res  3, b                                        ; $5bbf: $cb $98
	adc  e                                           ; $5bc1: $8b
	call $a8dc                                       ; $5bc2: $cd $dc $a8
	ld   b, d                                        ; $5bc5: $42
	ld   hl, $4723                                   ; $5bc6: $21 $23 $47
	adc  d                                           ; $5bc9: $8a
	cp   h                                           ; $5bca: $bc
	jp   z, $bca9                                    ; $5bcb: $ca $a9 $bc

	call Call_0db_74db                               ; $5bce: $cd $db $74
	ld   de, $4512                                   ; $5bd1: $11 $12 $45
	ld   a, d                                        ; $5bd4: $7a
	xor  h                                           ; $5bd5: $ac
	cp   c                                           ; $5bd6: $b9
	xor  c                                           ; $5bd7: $a9
	xor  h                                           ; $5bd8: $ac
	call $a7eb                                       ; $5bd9: $cd $eb $a7
	ld   sp, $2411                                   ; $5bdc: $31 $11 $24
	ld   l, d                                        ; $5bdf: $6a
	xor  e                                           ; $5be0: $ab
	cp   d                                           ; $5be1: $ba
	adc  c                                           ; $5be2: $89
	sbc  e                                           ; $5be3: $9b
	db   $dd                                         ; $5be4: $dd
	db   $ed                                         ; $5be5: $ed
	cp   c                                           ; $5be6: $b9
	ld   d, c                                        ; $5be7: $51
	ld   de, $6915                                   ; $5be8: $11 $15 $69
	xor  c                                           ; $5beb: $a9
	xor  b                                           ; $5bec: $a8
	adc  c                                           ; $5bed: $89
	xor  d                                           ; $5bee: $aa
	sbc  $ed                                         ; $5bef: $de $ed
	cp   c                                           ; $5bf1: $b9
	ld   [hl], e                                     ; $5bf2: $73
	ld   [de], a                                     ; $5bf3: $12
	inc  de                                          ; $5bf4: $13
	ld   d, [hl]                                     ; $5bf5: $56
	xor  d                                           ; $5bf6: $aa
	cp   d                                           ; $5bf7: $ba
	adc  b                                           ; $5bf8: $88
	adc  c                                           ; $5bf9: $89
	call $b9ef                                       ; $5bfa: $cd $ef $b9
	ld   h, c                                        ; $5bfd: $61
	ld   de, $5814                                   ; $5bfe: $11 $14 $58
	sbc  d                                           ; $5c01: $9a
	xor  c                                           ; $5c02: $a9
	sbc  c                                           ; $5c03: $99
	sbc  e                                           ; $5c04: $9b
	adc  $ed                                         ; $5c05: $ce $ed
	cp   c                                           ; $5c07: $b9
	ld   d, d                                        ; $5c08: $52
	ld   hl, $5a34                                   ; $5c09: $21 $34 $5a
	adc  e                                           ; $5c0c: $8b
	xor  b                                           ; $5c0d: $a8
	sub  a                                           ; $5c0e: $97
	sbc  h                                           ; $5c0f: $9c
	rst  JumpTable                                         ; $5c10: $df
	call c, Call_0db_5297                            ; $5c11: $dc $97 $52
	ld   [hl+], a                                    ; $5c14: $22
	inc  h                                           ; $5c15: $24
	ld   l, c                                        ; $5c16: $69
	jp   z, Jump_0db_6799                            ; $5c17: $ca $99 $67

	sbc  e                                           ; $5c1a: $9b
	cp   $db                                         ; $5c1b: $fe $db
	add  l                                           ; $5c1d: $85
	ld   hl, $5613                                   ; $5c1e: $21 $13 $56
	sbc  d                                           ; $5c21: $9a
	xor  c                                           ; $5c22: $a9
	sbc  b                                           ; $5c23: $98
	sbc  d                                           ; $5c24: $9a
	xor  l                                           ; $5c25: $ad
	call c, $85d9                                    ; $5c26: $dc $d9 $85
	ld   de, $6813                                   ; $5c29: $11 $13 $68
	xor  c                                           ; $5c2c: $a9
	and  a                                           ; $5c2d: $a7
	ld   a, d                                        ; $5c2e: $7a
	sbc  h                                           ; $5c2f: $9c
	call c, $a9ec                                    ; $5c30: $dc $ec $a9
	ld   sp, $3611                                   ; $5c33: $31 $11 $36
	ld   a, d                                        ; $5c36: $7a
	xor  d                                           ; $5c37: $aa
	sbc  b                                           ; $5c38: $98
	ld   a, c                                        ; $5c39: $79
	cp   l                                           ; $5c3a: $bd
	cp   $cb                                         ; $5c3b: $fe $cb
	ld   h, e                                        ; $5c3d: $63
	ld   hl, $5813                                   ; $5c3e: $21 $13 $58
	cp   d                                           ; $5c41: $ba
	xor  c                                           ; $5c42: $a9
	ld   h, a                                        ; $5c43: $67
	sbc  e                                           ; $5c44: $9b
	cp   $ec                                         ; $5c45: $fe $ec
	sub  a                                           ; $5c47: $97
	ld   sp, $4611                                   ; $5c48: $31 $11 $46
	cp   d                                           ; $5c4b: $ba
	xor  d                                           ; $5c4c: $aa
	ld   h, a                                        ; $5c4d: $67
	ld   a, b                                        ; $5c4e: $78
	call $baef                                       ; $5c4f: $cd $ef $ba
	ld   d, c                                        ; $5c52: $51
	ld   de, $7b25                                   ; $5c53: $11 $25 $7b
	cp   d                                           ; $5c56: $ba
	sub  l                                           ; $5c57: $95
	add  a                                           ; $5c58: $87
	adc  $df                                         ; $5c59: $ce $df
	cp   d                                           ; $5c5b: $ba
	add  e                                           ; $5c5c: $83
	ld   hl, $6913                                   ; $5c5d: $21 $13 $69
	res  4, a                                        ; $5c60: $cb $a7
	ld   h, a                                        ; $5c62: $67
	xor  l                                           ; $5c63: $ad
	xor  $fb                                         ; $5c64: $ee $fb
	sub  l                                           ; $5c66: $95
	ld   bc, $7a11                                   ; $5c67: $01 $11 $7a
	cp   h                                           ; $5c6a: $bc
	adc  b                                           ; $5c6b: $88
	ld   d, [hl]                                     ; $5c6c: $56
	xor  e                                           ; $5c6d: $ab
	rst  $38                                         ; $5c6e: $ff
	db   $ed                                         ; $5c6f: $ed
	add  l                                           ; $5c70: $85
	ld   de, $6812                                   ; $5c71: $11 $12 $68
	xor  h                                           ; $5c74: $ac
	sbc  b                                           ; $5c75: $98
	ld   h, [hl]                                     ; $5c76: $66
	adc  d                                           ; $5c77: $8a
	rst  JumpTable                                         ; $5c78: $df
	db   $ec                                         ; $5c79: $ec
	sub  [hl]                                        ; $5c7a: $96
	ld   hl, $5711                                   ; $5c7b: $21 $11 $57
	xor  l                                           ; $5c7e: $ad
	xor  c                                           ; $5c7f: $a9
	add  [hl]                                        ; $5c80: $86
	sbc  c                                           ; $5c81: $99
	sbc  $ee                                         ; $5c82: $de $ee
	sub  l                                           ; $5c84: $95
	ld   de, $6a11                                   ; $5c85: $11 $11 $6a
	cp   l                                           ; $5c88: $bd
	and  a                                           ; $5c89: $a7
	ld   [hl], l                                     ; $5c8a: $75
	xor  l                                           ; $5c8b: $ad
	rst  $28                                         ; $5c8c: $ef
	ld   [$2194], a                                  ; $5c8d: $ea $94 $21
	inc  bc                                          ; $5c90: $03
	ld   c, b                                        ; $5c91: $48
	xor  e                                           ; $5c92: $ab
	cp   b                                           ; $5c93: $b8
	add  a                                           ; $5c94: $87
	ld   a, h                                        ; $5c95: $7c
	adc  $fb                                         ; $5c96: $ce $fb
	sub  h                                           ; $5c98: $94
	ld   de, $7a12                                   ; $5c99: $11 $12 $7a
	call z, $7797                                    ; $5c9c: $cc $97 $77
	sbc  l                                           ; $5c9f: $9d
	rst  $38                                         ; $5ca0: $ff
	jp   hl                                          ; $5ca1: $e9


	ld   [hl], e                                     ; $5ca2: $73
	ld   de, $7a14                                   ; $5ca3: $11 $14 $7a
	jp   z, Jump_0db_6897                            ; $5ca6: $ca $97 $68

	call $b8fd                                       ; $5ca9: $cd $fd $b8
	ld   b, d                                        ; $5cac: $42
	ld   de, $9b25                                   ; $5cad: $11 $25 $9b
	res  0, a                                        ; $5cb0: $cb $87
	ld   l, d                                        ; $5cb2: $6a
	rst  JumpTable                                         ; $5cb3: $df
	db   $fd                                         ; $5cb4: $fd
	or   [hl]                                        ; $5cb5: $b6
	ld   de, $5911                                   ; $5cb6: $11 $11 $59
	cp   l                                           ; $5cb9: $bd
	cp   c                                           ; $5cba: $b9
	ld   [hl], a                                     ; $5cbb: $77
	xor  h                                           ; $5cbc: $ac
	xor  $db                                         ; $5cbd: $ee $db
	ld   [hl], e                                     ; $5cbf: $73
	ld   de, $8b12                                   ; $5cc0: $11 $12 $8b
	db   $dd                                         ; $5cc3: $dd
	sub  a                                           ; $5cc4: $97
	ld   h, a                                        ; $5cc5: $67
	adc  $fe                                         ; $5cc6: $ce $fe
	rst  ToBoot                                         ; $5cc8: $c7
	ld   b, c                                        ; $5cc9: $41
	ld   de, $ad26                                   ; $5cca: $11 $26 $ad
	db   $db                                         ; $5ccd: $db
	add  l                                           ; $5cce: $85
	ld   a, c                                        ; $5ccf: $79
	rst  $28                                         ; $5cd0: $ef
	db   $fc                                         ; $5cd1: $fc
	add  l                                           ; $5cd2: $85
	ld   de, $5a11                                   ; $5cd3: $11 $11 $5a
	call $88b8                                       ; $5cd6: $cd $b8 $88
	xor  l                                           ; $5cd9: $ad
	call $72c9                                       ; $5cda: $cd $c9 $72
	ld   de, $8d15                                   ; $5cdd: $11 $15 $8d
	db   $eb                                         ; $5ce0: $eb
	sub  a                                           ; $5ce1: $97
	ld   l, c                                        ; $5ce2: $69
	cp   [hl]                                        ; $5ce3: $be
	db   $ec                                         ; $5ce4: $ec
	or   l                                           ; $5ce5: $b5
	ld   de, $5912                                   ; $5ce6: $11 $12 $59
	call c, Call_0db_77c8                            ; $5ce9: $dc $c8 $77
	xor  l                                           ; $5cec: $ad
	rst  $28                                         ; $5ced: $ef
	ret  z                                           ; $5cee: $c8

	ld   d, c                                        ; $5cef: $51
	ld   de, $9c15                                   ; $5cf0: $11 $15 $9c
	db   $db                                         ; $5cf3: $db
	sbc  b                                           ; $5cf4: $98
	adc  c                                           ; $5cf5: $89
	call $95dc                                       ; $5cf6: $cd $dc $95
	ld   hl, $6a12                                   ; $5cf9: $21 $12 $6a
	call $87b8                                       ; $5cfc: $cd $b8 $87
	xor  e                                           ; $5cff: $ab
	call z, Call_0db_52b8                            ; $5d00: $cc $b8 $52
	ld   de, $bd26                                   ; $5d03: $11 $26 $bd
	ld   [$9b87], a                                  ; $5d06: $ea $87 $9b
	sbc  $ca                                         ; $5d09: $de $ca
	ld   [hl], h                                     ; $5d0b: $74
	ld   de, $7a13                                   ; $5d0c: $11 $13 $7a
	sbc  $b9                                         ; $5d0f: $de $b9
	ld   a, b                                        ; $5d11: $78
	xor  e                                           ; $5d12: $ab
	db   $dd                                         ; $5d13: $dd
	and  a                                           ; $5d14: $a7
	ld   sp, $3811                                   ; $5d15: $31 $11 $38
	cp   l                                           ; $5d18: $bd
	jp   z, $9a97                                    ; $5d19: $ca $97 $9a

	call Call_0db_63ca                               ; $5d1c: $cd $ca $63
	ld   de, $9b14                                   ; $5d1f: $11 $14 $9b
	db   $ed                                         ; $5d22: $ed
	xor  b                                           ; $5d23: $a8
	ld   a, c                                        ; $5d24: $79
	cp   l                                           ; $5d25: $bd
	jp   z, $3185                                    ; $5d26: $ca $85 $31

	ld   [de], a                                     ; $5d29: $12
	ld   e, c                                        ; $5d2a: $59
	call Call_0db_78ca                               ; $5d2b: $cd $ca $78
	xor  e                                           ; $5d2e: $ab
	db   $dd                                         ; $5d2f: $dd
	xor  b                                           ; $5d30: $a8
	ld   sp, $4811                                   ; $5d31: $31 $11 $48
	cp   [hl]                                        ; $5d34: $be
	cp   d                                           ; $5d35: $ba
	sub  a                                           ; $5d36: $97
	sbc  d                                           ; $5d37: $9a
	cp   h                                           ; $5d38: $bc
	cp   c                                           ; $5d39: $b9
	ld   [hl], e                                     ; $5d3a: $73
	ld   de, $9c14                                   ; $5d3b: $11 $14 $9c
	db   $ec                                         ; $5d3e: $ec
	and  a                                           ; $5d3f: $a7
	ld   a, c                                        ; $5d40: $79
	xor  h                                           ; $5d41: $ac
	jp   c, $2185                                    ; $5d42: $da $85 $21

	ld   [de], a                                     ; $5d45: $12
	ld   l, d                                        ; $5d46: $6a
	call c, Call_0db_78ca                            ; $5d47: $dc $ca $78
	sbc  h                                           ; $5d4a: $9c
	res  6, [hl]                                     ; $5d4b: $cb $b6
	ld   b, d                                        ; $5d4d: $42
	ld   [de], a                                     ; $5d4e: $12
	ld   b, a                                        ; $5d4f: $47
	cp   h                                           ; $5d50: $bc
	jp   z, $9a98                                    ; $5d51: $ca $98 $9a

	cp   h                                           ; $5d54: $bc
	cp   c                                           ; $5d55: $b9
	ld   h, e                                        ; $5d56: $63
	ld   hl, $8c25                                   ; $5d57: $21 $25 $8c
	db   $db                                         ; $5d5a: $db
	xor  b                                           ; $5d5b: $a8
	adc  b                                           ; $5d5c: $88
	xor  h                                           ; $5d5d: $ac
	cp   h                                           ; $5d5e: $bc
	sub  l                                           ; $5d5f: $95
	ld   sp, $7a14                                   ; $5d60: $31 $14 $7a
	call z, Call_0db_79b9                            ; $5d63: $cc $b9 $79
	xor  d                                           ; $5d66: $aa
	cp   d                                           ; $5d67: $ba
	add  a                                           ; $5d68: $87
	ld   d, h                                        ; $5d69: $54
	ld   [hl-], a                                    ; $5d6a: $32
	ld   b, a                                        ; $5d6b: $47
	sbc  h                                           ; $5d6c: $9c
	db   $db                                         ; $5d6d: $db
	adc  b                                           ; $5d6e: $88
	adc  d                                           ; $5d6f: $8a
	cp   e                                           ; $5d70: $bb
	xor  b                                           ; $5d71: $a8
	ld   d, h                                        ; $5d72: $54
	inc  sp                                          ; $5d73: $33
	ld   b, [hl]                                     ; $5d74: $46
	adc  d                                           ; $5d75: $8a
	res  5, b                                        ; $5d76: $cb $a8
	adc  d                                           ; $5d78: $8a
	xor  d                                           ; $5d79: $aa
	xor  c                                           ; $5d7a: $a9
	halt                                             ; $5d7b: $76
	inc  sp                                          ; $5d7c: $33
	inc  [hl]                                        ; $5d7d: $34
	ld   a, c                                        ; $5d7e: $79
	call z, $88a9                                    ; $5d7f: $cc $a9 $88
	sbc  d                                           ; $5d82: $9a
	xor  c                                           ; $5d83: $a9
	sub  a                                           ; $5d84: $97
	ld   h, h                                        ; $5d85: $64
	ld   b, h                                        ; $5d86: $44
	ld   e, b                                        ; $5d87: $58
	xor  e                                           ; $5d88: $ab
	xor  c                                           ; $5d89: $a9
	sbc  b                                           ; $5d8a: $98
	adc  c                                           ; $5d8b: $89
	sbc  c                                           ; $5d8c: $99
	sbc  b                                           ; $5d8d: $98
	ld   [hl], l                                     ; $5d8e: $75
	ld   d, l                                        ; $5d8f: $55
	ld   b, a                                        ; $5d90: $47
	sbc  e                                           ; $5d91: $9b
	jp   z, $88a8                                    ; $5d92: $ca $a8 $88

	sbc  c                                           ; $5d95: $99
	sbc  c                                           ; $5d96: $99
	ld   [hl], a                                     ; $5d97: $77
	ld   h, l                                        ; $5d98: $65
	ld   d, l                                        ; $5d99: $55
	ld   a, c                                        ; $5d9a: $79
	cp   d                                           ; $5d9b: $ba
	sbc  c                                           ; $5d9c: $99
	ld   [hl], a                                     ; $5d9d: $77
	adc  c                                           ; $5d9e: $89
	adc  c                                           ; $5d9f: $89
	sub  a                                           ; $5da0: $97
	halt                                             ; $5da1: $76
	ld   h, [hl]                                     ; $5da2: $66
	ld   a, b                                        ; $5da3: $78
	sbc  e                                           ; $5da4: $9b
	xor  b                                           ; $5da5: $a8
	add  a                                           ; $5da6: $87
	ld   a, c                                        ; $5da7: $79
	adc  c                                           ; $5da8: $89
	add  a                                           ; $5da9: $87
	ld   [hl], a                                     ; $5daa: $77
	ld   [hl], a                                     ; $5dab: $77
	adc  b                                           ; $5dac: $88
	sbc  c                                           ; $5dad: $99
	sbc  c                                           ; $5dae: $99
	sbc  b                                           ; $5daf: $98
	add  a                                           ; $5db0: $87
	ld   h, a                                        ; $5db1: $67
	ld   a, b                                        ; $5db2: $78
	sbc  b                                           ; $5db3: $98
	add  a                                           ; $5db4: $87
	ld   [hl], a                                     ; $5db5: $77
	sbc  d                                           ; $5db6: $9a
	sbc  d                                           ; $5db7: $9a
	sbc  b                                           ; $5db8: $98
	ld   [hl], a                                     ; $5db9: $77
	ld   h, a                                        ; $5dba: $67
	ld   a, b                                        ; $5dbb: $78
	sbc  b                                           ; $5dbc: $98
	add  a                                           ; $5dbd: $87
	adc  c                                           ; $5dbe: $89
	sbc  d                                           ; $5dbf: $9a
	sbc  b                                           ; $5dc0: $98
	add  a                                           ; $5dc1: $87
	add  a                                           ; $5dc2: $87
	ld   a, b                                        ; $5dc3: $78
	ld   [hl], a                                     ; $5dc4: $77
	ld   [hl], a                                     ; $5dc5: $77
	adc  c                                           ; $5dc6: $89
	sbc  d                                           ; $5dc7: $9a
	adc  b                                           ; $5dc8: $88
	add  a                                           ; $5dc9: $87
	sbc  b                                           ; $5dca: $98
	sbc  b                                           ; $5dcb: $98
	ld   [hl], a                                     ; $5dcc: $77
	ld   [hl], a                                     ; $5dcd: $77
	adc  c                                           ; $5dce: $89
	adc  b                                           ; $5dcf: $88
	adc  b                                           ; $5dd0: $88
	adc  b                                           ; $5dd1: $88
	adc  c                                           ; $5dd2: $89
	sbc  b                                           ; $5dd3: $98
	add  a                                           ; $5dd4: $87
	ld   [hl], a                                     ; $5dd5: $77
	ld   a, b                                        ; $5dd6: $78
	adc  c                                           ; $5dd7: $89
	sub  a                                           ; $5dd8: $97
	ld   a, b                                        ; $5dd9: $78
	adc  b                                           ; $5dda: $88
	add  a                                           ; $5ddb: $87
	adc  b                                           ; $5ddc: $88
	adc  b                                           ; $5ddd: $88
	adc  b                                           ; $5dde: $88
	adc  b                                           ; $5ddf: $88
	adc  b                                           ; $5de0: $88
	adc  c                                           ; $5de1: $89
	adc  b                                           ; $5de2: $88
	add  a                                           ; $5de3: $87
	ld   [hl], a                                     ; $5de4: $77
	ld   a, c                                        ; $5de5: $79
	sbc  c                                           ; $5de6: $99
	adc  b                                           ; $5de7: $88
	ld   a, c                                        ; $5de8: $79
	sbc  b                                           ; $5de9: $98
	sub  a                                           ; $5dea: $97
	ld   a, b                                        ; $5deb: $78
	ld   a, b                                        ; $5dec: $78
	add  a                                           ; $5ded: $87
	adc  b                                           ; $5dee: $88
	adc  b                                           ; $5def: $88
	adc  b                                           ; $5df0: $88
	sbc  b                                           ; $5df1: $98
	adc  c                                           ; $5df2: $89
	ld   a, b                                        ; $5df3: $78
	add  a                                           ; $5df4: $87
	adc  b                                           ; $5df5: $88
	adc  b                                           ; $5df6: $88
	adc  b                                           ; $5df7: $88
	adc  b                                           ; $5df8: $88
	adc  b                                           ; $5df9: $88
	sbc  b                                           ; $5dfa: $98
	sbc  b                                           ; $5dfb: $98
	ld   [hl], a                                     ; $5dfc: $77
	ld   [hl], a                                     ; $5dfd: $77
	sbc  b                                           ; $5dfe: $98
	sbc  b                                           ; $5dff: $98
	ld   [hl], a                                     ; $5e00: $77
	adc  b                                           ; $5e01: $88
	sbc  b                                           ; $5e02: $98
	adc  b                                           ; $5e03: $88
	add  a                                           ; $5e04: $87
	adc  b                                           ; $5e05: $88
	sbc  b                                           ; $5e06: $98
	adc  b                                           ; $5e07: $88
	add  a                                           ; $5e08: $87
	adc  b                                           ; $5e09: $88
	adc  b                                           ; $5e0a: $88
	ld   a, b                                        ; $5e0b: $78
	adc  b                                           ; $5e0c: $88
	adc  b                                           ; $5e0d: $88
	adc  c                                           ; $5e0e: $89
	adc  c                                           ; $5e0f: $89
	sbc  b                                           ; $5e10: $98
	sbc  b                                           ; $5e11: $98
	ld   [hl], a                                     ; $5e12: $77
	ld   a, b                                        ; $5e13: $78
	sbc  b                                           ; $5e14: $98
	adc  b                                           ; $5e15: $88
	adc  b                                           ; $5e16: $88
	sbc  b                                           ; $5e17: $98
	adc  b                                           ; $5e18: $88
	add  a                                           ; $5e19: $87
	ld   a, b                                        ; $5e1a: $78
	adc  b                                           ; $5e1b: $88
	sbc  b                                           ; $5e1c: $98
	ld   [hl], a                                     ; $5e1d: $77
	adc  b                                           ; $5e1e: $88
	adc  b                                           ; $5e1f: $88
	adc  c                                           ; $5e20: $89
	add  a                                           ; $5e21: $87
	adc  b                                           ; $5e22: $88
	adc  c                                           ; $5e23: $89
	adc  c                                           ; $5e24: $89
	adc  b                                           ; $5e25: $88
	adc  b                                           ; $5e26: $88
	adc  b                                           ; $5e27: $88
	adc  b                                           ; $5e28: $88
	adc  b                                           ; $5e29: $88
	adc  b                                           ; $5e2a: $88
	adc  b                                           ; $5e2b: $88
	adc  b                                           ; $5e2c: $88
	adc  b                                           ; $5e2d: $88
	adc  b                                           ; $5e2e: $88
	adc  b                                           ; $5e2f: $88
	adc  b                                           ; $5e30: $88
	adc  b                                           ; $5e31: $88
	adc  b                                           ; $5e32: $88
	adc  b                                           ; $5e33: $88
	sbc  c                                           ; $5e34: $99
	sbc  b                                           ; $5e35: $98
	adc  b                                           ; $5e36: $88
	adc  b                                           ; $5e37: $88
	sbc  b                                           ; $5e38: $98
	add  a                                           ; $5e39: $87
	ld   a, b                                        ; $5e3a: $78
	adc  b                                           ; $5e3b: $88
	adc  b                                           ; $5e3c: $88
	adc  b                                           ; $5e3d: $88
	adc  b                                           ; $5e3e: $88
	adc  c                                           ; $5e3f: $89
	adc  b                                           ; $5e40: $88
	ld   [hl], a                                     ; $5e41: $77
	adc  b                                           ; $5e42: $88
	sbc  b                                           ; $5e43: $98
	adc  b                                           ; $5e44: $88
	ld   a, b                                        ; $5e45: $78
	adc  b                                           ; $5e46: $88
	adc  b                                           ; $5e47: $88
	adc  b                                           ; $5e48: $88
	ld   a, b                                        ; $5e49: $78
	adc  b                                           ; $5e4a: $88
	sbc  b                                           ; $5e4b: $98
	adc  b                                           ; $5e4c: $88
	adc  b                                           ; $5e4d: $88
	adc  b                                           ; $5e4e: $88
	adc  b                                           ; $5e4f: $88
	adc  b                                           ; $5e50: $88
	adc  b                                           ; $5e51: $88
	sbc  b                                           ; $5e52: $98
	adc  b                                           ; $5e53: $88
	ld   a, b                                        ; $5e54: $78
	adc  b                                           ; $5e55: $88
	sbc  c                                           ; $5e56: $99
	sbc  b                                           ; $5e57: $98
	add  a                                           ; $5e58: $87
	adc  b                                           ; $5e59: $88
	adc  c                                           ; $5e5a: $89
	adc  b                                           ; $5e5b: $88
	adc  b                                           ; $5e5c: $88
	adc  b                                           ; $5e5d: $88
	adc  c                                           ; $5e5e: $89
	adc  b                                           ; $5e5f: $88
	adc  b                                           ; $5e60: $88
	sbc  b                                           ; $5e61: $98
	adc  b                                           ; $5e62: $88
	adc  b                                           ; $5e63: $88
	adc  b                                           ; $5e64: $88
	adc  b                                           ; $5e65: $88
	adc  b                                           ; $5e66: $88
	adc  b                                           ; $5e67: $88
	adc  b                                           ; $5e68: $88
	adc  b                                           ; $5e69: $88
	adc  b                                           ; $5e6a: $88
	adc  b                                           ; $5e6b: $88
	adc  b                                           ; $5e6c: $88
	adc  b                                           ; $5e6d: $88
	adc  b                                           ; $5e6e: $88
	adc  b                                           ; $5e6f: $88
	adc  b                                           ; $5e70: $88
	adc  b                                           ; $5e71: $88
	adc  b                                           ; $5e72: $88
	adc  b                                           ; $5e73: $88
	adc  b                                           ; $5e74: $88
	adc  b                                           ; $5e75: $88
	adc  c                                           ; $5e76: $89
	adc  b                                           ; $5e77: $88
	add  a                                           ; $5e78: $87
	adc  b                                           ; $5e79: $88
	adc  b                                           ; $5e7a: $88
	adc  b                                           ; $5e7b: $88
	adc  b                                           ; $5e7c: $88
	adc  b                                           ; $5e7d: $88
	sbc  b                                           ; $5e7e: $98
	adc  b                                           ; $5e7f: $88
	adc  b                                           ; $5e80: $88
	adc  b                                           ; $5e81: $88
	adc  b                                           ; $5e82: $88
	adc  b                                           ; $5e83: $88
	adc  b                                           ; $5e84: $88
	adc  b                                           ; $5e85: $88
	adc  b                                           ; $5e86: $88
	adc  b                                           ; $5e87: $88
	adc  b                                           ; $5e88: $88
	adc  b                                           ; $5e89: $88
	adc  c                                           ; $5e8a: $89
	adc  b                                           ; $5e8b: $88
	adc  b                                           ; $5e8c: $88
	adc  b                                           ; $5e8d: $88
	adc  b                                           ; $5e8e: $88
	adc  b                                           ; $5e8f: $88
	adc  b                                           ; $5e90: $88
	adc  b                                           ; $5e91: $88
	adc  b                                           ; $5e92: $88
	adc  b                                           ; $5e93: $88
	adc  b                                           ; $5e94: $88
	adc  b                                           ; $5e95: $88
	adc  b                                           ; $5e96: $88
	adc  b                                           ; $5e97: $88
	adc  b                                           ; $5e98: $88
	adc  b                                           ; $5e99: $88
	adc  b                                           ; $5e9a: $88
	adc  b                                           ; $5e9b: $88
	adc  b                                           ; $5e9c: $88
	adc  b                                           ; $5e9d: $88
	adc  b                                           ; $5e9e: $88
	adc  b                                           ; $5e9f: $88
	adc  b                                           ; $5ea0: $88
	adc  b                                           ; $5ea1: $88
	adc  b                                           ; $5ea2: $88
	adc  b                                           ; $5ea3: $88
	adc  b                                           ; $5ea4: $88
	adc  b                                           ; $5ea5: $88
	adc  b                                           ; $5ea6: $88
	adc  b                                           ; $5ea7: $88
	adc  b                                           ; $5ea8: $88
	adc  b                                           ; $5ea9: $88
	adc  b                                           ; $5eaa: $88
	adc  b                                           ; $5eab: $88
	adc  b                                           ; $5eac: $88
	adc  b                                           ; $5ead: $88
	adc  b                                           ; $5eae: $88
	adc  b                                           ; $5eaf: $88
	adc  b                                           ; $5eb0: $88
	adc  b                                           ; $5eb1: $88
	adc  b                                           ; $5eb2: $88
	adc  b                                           ; $5eb3: $88
	adc  b                                           ; $5eb4: $88
	adc  b                                           ; $5eb5: $88
	adc  b                                           ; $5eb6: $88
	adc  b                                           ; $5eb7: $88
	adc  b                                           ; $5eb8: $88
	adc  b                                           ; $5eb9: $88
	adc  b                                           ; $5eba: $88
	adc  b                                           ; $5ebb: $88
	adc  b                                           ; $5ebc: $88
	adc  b                                           ; $5ebd: $88
	adc  b                                           ; $5ebe: $88
	adc  b                                           ; $5ebf: $88
	adc  b                                           ; $5ec0: $88
	adc  b                                           ; $5ec1: $88
	adc  b                                           ; $5ec2: $88
	adc  b                                           ; $5ec3: $88
	adc  b                                           ; $5ec4: $88
	adc  b                                           ; $5ec5: $88
	adc  b                                           ; $5ec6: $88
	adc  b                                           ; $5ec7: $88
	adc  b                                           ; $5ec8: $88
	adc  b                                           ; $5ec9: $88
	add  c                                           ; $5eca: $81
	ld   de, $1111                                   ; $5ecb: $11 $11 $11
	ld   de, $1111                                   ; $5ece: $11 $11 $11
	ld   de, $1111                                   ; $5ed1: $11 $11 $11
	ld   de, $1111                                   ; $5ed4: $11 $11 $11
	ld   de, $1111                                   ; $5ed7: $11 $11 $11
	ld   de, $1111                                   ; $5eda: $11 $11 $11
	ld   de, $1111                                   ; $5edd: $11 $11 $11
	ld   de, $1111                                   ; $5ee0: $11 $11 $11
	ld   de, $1111                                   ; $5ee3: $11 $11 $11
	ld   de, $1111                                   ; $5ee6: $11 $11 $11
	ld   de, $1111                                   ; $5ee9: $11 $11 $11
	ld   de, $1111                                   ; $5eec: $11 $11 $11
	ld   de, $1111                                   ; $5eef: $11 $11 $11
	ld   de, $1111                                   ; $5ef2: $11 $11 $11
	ld   de, $1111                                   ; $5ef5: $11 $11 $11
	ld   de, $1111                                   ; $5ef8: $11 $11 $11
	ld   de, $1111                                   ; $5efb: $11 $11 $11
	ld   de, $1111                                   ; $5efe: $11 $11 $11
	ld   de, $1111                                   ; $5f01: $11 $11 $11
	ld   de, $1111                                   ; $5f04: $11 $11 $11
	ld   de, $1111                                   ; $5f07: $11 $11 $11
	nop                                              ; $5f0a: $00
	ld   c, b                                        ; $5f0b: $48
	ld   de, $1111                                   ; $5f0c: $11 $11 $11
	ld   de, $1111                                   ; $5f0f: $11 $11 $11
	ld   de, $1111                                   ; $5f12: $11 $11 $11
	ld   de, $5413                                   ; $5f15: $11 $13 $54
	ld   d, h                                        ; $5f18: $54
	ld   d, h                                        ; $5f19: $54
	ld   b, c                                        ; $5f1a: $41
	rra                                              ; $5f1b: $1f
	rst  $38                                         ; $5f1c: $ff
	pop  af                                          ; $5f1d: $f1
	ld   de, $1611                                   ; $5f1e: $11 $11 $16
	ld   d, c                                        ; $5f21: $51
	ld   de, $df1c                                   ; $5f22: $11 $1c $df
	sbc  h                                           ; $5f25: $9c
	rst  JumpTable                                         ; $5f26: $df
	sub  c                                           ; $5f27: $91
	ld   de, $1111                                   ; $5f28: $11 $11 $11
	ld   de, $1111                                   ; $5f2b: $11 $11 $11
	ld   de, $1111                                   ; $5f2e: $11 $11 $11
	ld   de, $1111                                   ; $5f31: $11 $11 $11
	ld   de, $5411                                   ; $5f34: $11 $11 $54
	ld   b, h                                        ; $5f37: $44
	ld   b, [hl]                                     ; $5f38: $46
	ld   de, $5454                                   ; $5f39: $11 $54 $54
	ld   h, a                                        ; $5f3c: $67
	ld   [hl], d                                     ; $5f3d: $72
	ld   de, $1111                                   ; $5f3e: $11 $11 $11
	ld   de, $1112                                   ; $5f41: $11 $12 $11
	ld   [de], a                                     ; $5f44: $12
	ld   de, $1111                                   ; $5f45: $11 $11 $11
	ld   h, [hl]                                     ; $5f48: $66
	halt                                             ; $5f49: $76
	ld   h, $11                                      ; $5f4a: $26 $11
	adc  b                                           ; $5f4c: $88
	adc  b                                           ; $5f4d: $88
	adc  b                                           ; $5f4e: $88
	adc  b                                           ; $5f4f: $88
	adc  b                                           ; $5f50: $88
	adc  b                                           ; $5f51: $88
	adc  b                                           ; $5f52: $88
	adc  b                                           ; $5f53: $88
	adc  b                                           ; $5f54: $88
	adc  b                                           ; $5f55: $88
	adc  b                                           ; $5f56: $88
	adc  b                                           ; $5f57: $88
	adc  b                                           ; $5f58: $88
	adc  b                                           ; $5f59: $88
	adc  b                                           ; $5f5a: $88
	adc  b                                           ; $5f5b: $88
	adc  b                                           ; $5f5c: $88
	adc  b                                           ; $5f5d: $88
	adc  b                                           ; $5f5e: $88
	adc  b                                           ; $5f5f: $88
	adc  b                                           ; $5f60: $88
	adc  b                                           ; $5f61: $88
	adc  b                                           ; $5f62: $88
	adc  b                                           ; $5f63: $88
	adc  b                                           ; $5f64: $88
	adc  b                                           ; $5f65: $88
	adc  c                                           ; $5f66: $89
	adc  b                                           ; $5f67: $88
	adc  b                                           ; $5f68: $88
	adc  b                                           ; $5f69: $88
	adc  b                                           ; $5f6a: $88
	adc  b                                           ; $5f6b: $88
	adc  b                                           ; $5f6c: $88
	adc  b                                           ; $5f6d: $88
	adc  b                                           ; $5f6e: $88
	adc  b                                           ; $5f6f: $88
	adc  b                                           ; $5f70: $88
	adc  b                                           ; $5f71: $88
	adc  b                                           ; $5f72: $88
	adc  b                                           ; $5f73: $88
	adc  b                                           ; $5f74: $88
	adc  b                                           ; $5f75: $88
	adc  b                                           ; $5f76: $88
	adc  b                                           ; $5f77: $88
	adc  b                                           ; $5f78: $88
	adc  b                                           ; $5f79: $88
	adc  b                                           ; $5f7a: $88
	adc  b                                           ; $5f7b: $88
	adc  b                                           ; $5f7c: $88
	adc  b                                           ; $5f7d: $88
	adc  b                                           ; $5f7e: $88
	adc  b                                           ; $5f7f: $88
	adc  b                                           ; $5f80: $88
	adc  b                                           ; $5f81: $88
	adc  b                                           ; $5f82: $88
	adc  b                                           ; $5f83: $88
	adc  b                                           ; $5f84: $88
	adc  b                                           ; $5f85: $88
	adc  b                                           ; $5f86: $88
	adc  b                                           ; $5f87: $88
	adc  b                                           ; $5f88: $88
	adc  b                                           ; $5f89: $88
	adc  b                                           ; $5f8a: $88
	adc  b                                           ; $5f8b: $88
	adc  b                                           ; $5f8c: $88
	adc  b                                           ; $5f8d: $88
	sbc  b                                           ; $5f8e: $98
	adc  b                                           ; $5f8f: $88
	adc  b                                           ; $5f90: $88
	adc  b                                           ; $5f91: $88
	adc  b                                           ; $5f92: $88
	adc  b                                           ; $5f93: $88
	adc  b                                           ; $5f94: $88
	adc  c                                           ; $5f95: $89
	adc  b                                           ; $5f96: $88
	adc  b                                           ; $5f97: $88
	adc  b                                           ; $5f98: $88
	adc  b                                           ; $5f99: $88
	adc  b                                           ; $5f9a: $88
	adc  b                                           ; $5f9b: $88
	adc  b                                           ; $5f9c: $88
	adc  b                                           ; $5f9d: $88
	adc  b                                           ; $5f9e: $88
	adc  b                                           ; $5f9f: $88
	adc  b                                           ; $5fa0: $88
	adc  b                                           ; $5fa1: $88
	sbc  c                                           ; $5fa2: $99
	adc  b                                           ; $5fa3: $88
	sbc  b                                           ; $5fa4: $98
	adc  b                                           ; $5fa5: $88
	adc  b                                           ; $5fa6: $88
	adc  b                                           ; $5fa7: $88
	adc  b                                           ; $5fa8: $88
	adc  b                                           ; $5fa9: $88
	ld   a, b                                        ; $5faa: $78
	adc  b                                           ; $5fab: $88
	add  a                                           ; $5fac: $87
	adc  d                                           ; $5fad: $8a
	adc  b                                           ; $5fae: $88
	adc  b                                           ; $5faf: $88
	adc  b                                           ; $5fb0: $88
	adc  b                                           ; $5fb1: $88
	sbc  b                                           ; $5fb2: $98
	adc  b                                           ; $5fb3: $88
	adc  b                                           ; $5fb4: $88
	adc  b                                           ; $5fb5: $88
	adc  b                                           ; $5fb6: $88
	adc  b                                           ; $5fb7: $88
	adc  c                                           ; $5fb8: $89
	adc  b                                           ; $5fb9: $88
	adc  c                                           ; $5fba: $89
	adc  b                                           ; $5fbb: $88
	sbc  b                                           ; $5fbc: $98
	adc  b                                           ; $5fbd: $88
	adc  b                                           ; $5fbe: $88
	adc  b                                           ; $5fbf: $88
	sbc  b                                           ; $5fc0: $98
	adc  b                                           ; $5fc1: $88
	ld   a, b                                        ; $5fc2: $78
	sbc  b                                           ; $5fc3: $98
	adc  b                                           ; $5fc4: $88
	add  a                                           ; $5fc5: $87
	sbc  b                                           ; $5fc6: $98
	adc  b                                           ; $5fc7: $88
	ld   a, b                                        ; $5fc8: $78
	sbc  b                                           ; $5fc9: $98
	ld   a, b                                        ; $5fca: $78
	adc  c                                           ; $5fcb: $89
	adc  b                                           ; $5fcc: $88
	sbc  b                                           ; $5fcd: $98
	ld   a, b                                        ; $5fce: $78
	adc  b                                           ; $5fcf: $88
	adc  b                                           ; $5fd0: $88
	adc  b                                           ; $5fd1: $88
	ld   a, b                                        ; $5fd2: $78
	adc  c                                           ; $5fd3: $89
	sbc  c                                           ; $5fd4: $99
	adc  b                                           ; $5fd5: $88
	adc  c                                           ; $5fd6: $89
	sbc  b                                           ; $5fd7: $98
	adc  b                                           ; $5fd8: $88
	ld   [hl], a                                     ; $5fd9: $77
	add  a                                           ; $5fda: $87
	adc  b                                           ; $5fdb: $88
	adc  b                                           ; $5fdc: $88
	adc  b                                           ; $5fdd: $88
	adc  b                                           ; $5fde: $88
	ld   h, [hl]                                     ; $5fdf: $66
	xor  d                                           ; $5fe0: $aa
	adc  d                                           ; $5fe1: $8a
	ld   a, c                                        ; $5fe2: $79
	add  a                                           ; $5fe3: $87
	sbc  c                                           ; $5fe4: $99
	add  a                                           ; $5fe5: $87
	ld   a, b                                        ; $5fe6: $78
	adc  b                                           ; $5fe7: $88
	ld   [hl], a                                     ; $5fe8: $77
	ld   [hl], a                                     ; $5fe9: $77
	ld   [hl], a                                     ; $5fea: $77
	ld   a, d                                        ; $5feb: $7a
	sub  a                                           ; $5fec: $97
	xor  l                                           ; $5fed: $ad
	sub  l                                           ; $5fee: $95
	add  a                                           ; $5fef: $87
	ld   a, e                                        ; $5ff0: $7b
	sub  a                                           ; $5ff1: $97
	add  a                                           ; $5ff2: $87
	ld   [hl], a                                     ; $5ff3: $77
	adc  b                                           ; $5ff4: $88
	sbc  b                                           ; $5ff5: $98
	ld   [hl], a                                     ; $5ff6: $77
	ld   a, b                                        ; $5ff7: $78
	xor  c                                           ; $5ff8: $a9
	ld   a, b                                        ; $5ff9: $78
	adc  b                                           ; $5ffa: $88
	adc  b                                           ; $5ffb: $88
	sub  a                                           ; $5ffc: $97
	sbc  c                                           ; $5ffd: $99
	ld   a, b                                        ; $5ffe: $78
	add  a                                           ; $5fff: $87
	adc  b                                           ; $6000: $88
	ld   a, c                                        ; $6001: $79
	add  a                                           ; $6002: $87
	adc  c                                           ; $6003: $89
	sub  a                                           ; $6004: $97
	add  a                                           ; $6005: $87
	adc  c                                           ; $6006: $89
	add  a                                           ; $6007: $87
	adc  c                                           ; $6008: $89
	ld   a, b                                        ; $6009: $78
	add  a                                           ; $600a: $87
	sbc  c                                           ; $600b: $99
	ld   a, b                                        ; $600c: $78
	xor  c                                           ; $600d: $a9
	ld   h, a                                        ; $600e: $67
	xor  b                                           ; $600f: $a8
	adc  b                                           ; $6010: $88
	ld   l, c                                        ; $6011: $69
	sub  [hl]                                        ; $6012: $96
	ld   [hl], a                                     ; $6013: $77
	sub  a                                           ; $6014: $97
	ld   a, c                                        ; $6015: $79
	adc  c                                           ; $6016: $89
	add  a                                           ; $6017: $87
	ld   a, c                                        ; $6018: $79
	adc  c                                           ; $6019: $89
	sbc  b                                           ; $601a: $98
	sbc  b                                           ; $601b: $98
	sbc  b                                           ; $601c: $98
	adc  b                                           ; $601d: $88
	sub  a                                           ; $601e: $97
	ld   a, b                                        ; $601f: $78
	sbc  b                                           ; $6020: $98
	ld   a, b                                        ; $6021: $78
	ld   [hl], a                                     ; $6022: $77
	ld   a, b                                        ; $6023: $78
	adc  b                                           ; $6024: $88
	sub  a                                           ; $6025: $97
	adc  b                                           ; $6026: $88
	adc  c                                           ; $6027: $89
	adc  c                                           ; $6028: $89
	adc  b                                           ; $6029: $88
	add  a                                           ; $602a: $87
	adc  b                                           ; $602b: $88
	sub  a                                           ; $602c: $97
	add  a                                           ; $602d: $87
	ld   [hl], a                                     ; $602e: $77
	ld   a, b                                        ; $602f: $78
	adc  c                                           ; $6030: $89
	sub  a                                           ; $6031: $97
	adc  b                                           ; $6032: $88
	sbc  b                                           ; $6033: $98
	adc  b                                           ; $6034: $88
	adc  b                                           ; $6035: $88
	ld   a, b                                        ; $6036: $78
	ld   a, b                                        ; $6037: $78
	ld   [hl], a                                     ; $6038: $77
	adc  b                                           ; $6039: $88
	ld   [hl], a                                     ; $603a: $77
	adc  d                                           ; $603b: $8a
	adc  b                                           ; $603c: $88
	sbc  b                                           ; $603d: $98
	adc  b                                           ; $603e: $88
	adc  b                                           ; $603f: $88
	adc  b                                           ; $6040: $88
	ld   [hl], a                                     ; $6041: $77
	ld   [hl], a                                     ; $6042: $77
	add  a                                           ; $6043: $87
	ld   l, b                                        ; $6044: $68
	cp   c                                           ; $6045: $b9
	add  a                                           ; $6046: $87
	adc  d                                           ; $6047: $8a
	ld   h, a                                        ; $6048: $67
	xor  c                                           ; $6049: $a9
	add  a                                           ; $604a: $87
	adc  e                                           ; $604b: $8b
	sub  a                                           ; $604c: $97
	ld   h, a                                        ; $604d: $67
	sbc  b                                           ; $604e: $98
	ld   a, b                                        ; $604f: $78
	adc  b                                           ; $6050: $88
	halt                                             ; $6051: $76
	ld   a, b                                        ; $6052: $78
	xor  c                                           ; $6053: $a9
	adc  b                                           ; $6054: $88
	adc  b                                           ; $6055: $88
	ld   l, c                                        ; $6056: $69
	adc  c                                           ; $6057: $89
	adc  b                                           ; $6058: $88
	add  a                                           ; $6059: $87
	ld   [hl], a                                     ; $605a: $77
	adc  b                                           ; $605b: $88
	sub  a                                           ; $605c: $97
	adc  b                                           ; $605d: $88
	ld   a, d                                        ; $605e: $7a
	sbc  b                                           ; $605f: $98
	ld   a, b                                        ; $6060: $78
	adc  b                                           ; $6061: $88
	adc  c                                           ; $6062: $89
	adc  c                                           ; $6063: $89
	adc  b                                           ; $6064: $88
	ld   [hl], a                                     ; $6065: $77
	adc  c                                           ; $6066: $89
	add  a                                           ; $6067: $87
	adc  b                                           ; $6068: $88
	adc  c                                           ; $6069: $89
	adc  c                                           ; $606a: $89
	ld   a, b                                        ; $606b: $78
	add  a                                           ; $606c: $87
	sub  a                                           ; $606d: $97
	adc  c                                           ; $606e: $89
	add  a                                           ; $606f: $87
	adc  b                                           ; $6070: $88
	adc  b                                           ; $6071: $88
	ld   [hl], a                                     ; $6072: $77
	adc  c                                           ; $6073: $89
	sub  a                                           ; $6074: $97
	sbc  c                                           ; $6075: $99
	adc  b                                           ; $6076: $88
	ld   a, b                                        ; $6077: $78
	adc  b                                           ; $6078: $88
	adc  c                                           ; $6079: $89
	sbc  b                                           ; $607a: $98
	adc  b                                           ; $607b: $88
	adc  b                                           ; $607c: $88
	add  a                                           ; $607d: $87
	adc  b                                           ; $607e: $88
	ld   a, c                                        ; $607f: $79
	add  a                                           ; $6080: $87
	adc  b                                           ; $6081: $88
	ld   a, c                                        ; $6082: $79
	add  a                                           ; $6083: $87
	add  a                                           ; $6084: $87
	ld   a, b                                        ; $6085: $78
	ld   a, b                                        ; $6086: $78
	add  a                                           ; $6087: $87
	adc  b                                           ; $6088: $88
	ld   a, b                                        ; $6089: $78
	sbc  b                                           ; $608a: $98
	adc  b                                           ; $608b: $88
	ld   a, c                                        ; $608c: $79
	cp   c                                           ; $608d: $b9
	sbc  c                                           ; $608e: $99
	ld   [hl], a                                     ; $608f: $77
	ld   a, c                                        ; $6090: $79
	sbc  b                                           ; $6091: $98
	sbc  c                                           ; $6092: $99
	ld   a, c                                        ; $6093: $79
	add  a                                           ; $6094: $87
	ld   a, b                                        ; $6095: $78
	sbc  b                                           ; $6096: $98
	adc  b                                           ; $6097: $88
	halt                                             ; $6098: $76
	ld   h, a                                        ; $6099: $67
	sbc  c                                           ; $609a: $99
	ld   [hl], a                                     ; $609b: $77
	adc  c                                           ; $609c: $89
	ld   h, [hl]                                     ; $609d: $66
	ld   h, a                                        ; $609e: $67
	ld   [hl], a                                     ; $609f: $77
	sbc  c                                           ; $60a0: $99
	sbc  d                                           ; $60a1: $9a
	and  a                                           ; $60a2: $a7
	sbc  d                                           ; $60a3: $9a
	adc  c                                           ; $60a4: $89
	xor  e                                           ; $60a5: $ab
	xor  e                                           ; $60a6: $ab
	xor  d                                           ; $60a7: $aa
	sbc  b                                           ; $60a8: $98
	sbc  b                                           ; $60a9: $98
	ld   [hl], a                                     ; $60aa: $77
	ld   h, l                                        ; $60ab: $65
	ld   d, h                                        ; $60ac: $54
	inc  [hl]                                        ; $60ad: $34
	ld   d, h                                        ; $60ae: $54
	ld   [hl+], a                                    ; $60af: $22
	inc  [hl]                                        ; $60b0: $34
	ld   d, a                                        ; $60b1: $57
	ld   a, b                                        ; $60b2: $78
	sbc  h                                           ; $60b3: $9c
	call $feee                                       ; $60b4: $cd $ee $fe
	rst  $38                                         ; $60b7: $ff
	xor  $cb                                         ; $60b8: $ee $cb
	xor  d                                           ; $60ba: $aa
	add  [hl]                                        ; $60bb: $86
	ld   d, d                                        ; $60bc: $52
	ld   de, $1142                                   ; $60bd: $11 $42 $11
	ld   [de], a                                     ; $60c0: $12
	inc  d                                           ; $60c1: $14
	ld   h, [hl]                                     ; $60c2: $66
	ld   a, e                                        ; $60c3: $7b
	call z, $ffdf                                    ; $60c4: $cc $df $ff
	rst  $38                                         ; $60c7: $ff
	rst  $38                                         ; $60c8: $ff
	db   $ed                                         ; $60c9: $ed
	call z, $96a9                                    ; $60ca: $cc $a9 $96
	ld   sp, $2114                                   ; $60cd: $31 $14 $21
	ld   de, $2511                                   ; $60d0: $11 $11 $25
	ld   b, [hl]                                     ; $60d3: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60d4: $cf
	rst  $28                                         ; $60d5: $ef
	rst  $38                                         ; $60d6: $ff
	rst  $38                                         ; $60d7: $ff
	cp   $ef                                         ; $60d8: $fe $ef
	call c, Call_0db_74aa                            ; $60da: $dc $aa $74
	ld   hl, $1112                                   ; $60dd: $21 $12 $11
	ld   de, $2611                                   ; $60e0: $11 $11 $26
	ld   e, b                                        ; $60e3: $58
	rst  $38                                         ; $60e4: $ff
	rst  $38                                         ; $60e5: $ff
	rst  $38                                         ; $60e6: $ff
	rst  $38                                         ; $60e7: $ff
	cp   $ff                                         ; $60e8: $fe $ff
	reti                                             ; $60ea: $d9


	and  a                                           ; $60eb: $a7
	ld   de, $1111                                   ; $60ec: $11 $11 $11
	ld   de, $1111                                   ; $60ef: $11 $11 $11
	ld   h, l                                        ; $60f2: $65
	adc  a                                           ; $60f3: $8f
	rst  $38                                         ; $60f4: $ff
	rst  $38                                         ; $60f5: $ff
	rst  $38                                         ; $60f6: $ff
	rst  $38                                         ; $60f7: $ff
	rst  $28                                         ; $60f8: $ef
	db   $fc                                         ; $60f9: $fc
	add  a                                           ; $60fa: $87
	ld   b, c                                        ; $60fb: $41
	ld   de, $1112                                   ; $60fc: $11 $12 $11
	ld   de, $3711                                   ; $60ff: $11 $11 $37
	ld   l, h                                        ; $6102: $6c
	rst  $38                                         ; $6103: $ff
	rst  $38                                         ; $6104: $ff
	rst  $38                                         ; $6105: $ff
	rst  $38                                         ; $6106: $ff
	cp   $ee                                         ; $6107: $fe $ee
	and  a                                           ; $6109: $a7
	ld   sp, $1111                                   ; $610a: $31 $11 $11
	ld   de, $1111                                   ; $610d: $11 $11 $11
	rla                                              ; $6110: $17
	sbc  b                                           ; $6111: $98
	rst  $38                                         ; $6112: $ff
	rst  $38                                         ; $6113: $ff
	rst  $38                                         ; $6114: $ff
	rst  $38                                         ; $6115: $ff
	rst  $38                                         ; $6116: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6117: $cf
	or   [hl]                                        ; $6118: $b6
	ld   sp, $1111                                   ; $6119: $31 $11 $11
	ld   de, $1111                                   ; $611c: $11 $11 $11
	ld   de, $efa9                                   ; $611f: $11 $a9 $ef
	rst  $38                                         ; $6122: $ff
	rst  $38                                         ; $6123: $ff
	rst  $38                                         ; $6124: $ff
	rst  $38                                         ; $6125: $ff
	ld   [$21b7], a                                  ; $6126: $ea $b7 $21
	ld   de, $1111                                   ; $6129: $11 $11 $11
	ld   de, $1211                                   ; $612c: $11 $11 $12
	adc  h                                           ; $612f: $8c
	rst  $28                                         ; $6130: $ef
	rst  $38                                         ; $6131: $ff
	rst  $38                                         ; $6132: $ff
	rst  $38                                         ; $6133: $ff
	rst  $38                                         ; $6134: $ff
	ld   sp, hl                                      ; $6135: $f9
	ld   [hl], l                                     ; $6136: $75
	ld   de, $1111                                   ; $6137: $11 $11 $11
	ld   de, $1111                                   ; $613a: $11 $11 $11
	inc  de                                          ; $613d: $13
	sbc  [hl]                                        ; $613e: $9e
	rst  $38                                         ; $613f: $ff
	rst  $38                                         ; $6140: $ff
	rst  $38                                         ; $6141: $ff
	rst  $38                                         ; $6142: $ff
	rst  $38                                         ; $6143: $ff
	ld   a, [$1164]                                  ; $6144: $fa $64 $11
	ld   de, $1111                                   ; $6147: $11 $11 $11
	ld   de, $1511                                   ; $614a: $11 $11 $15
	sbc  a                                           ; $614d: $9f
	rst  $38                                         ; $614e: $ff
	rst  $38                                         ; $614f: $ff
	rst  $38                                         ; $6150: $ff
	rst  $38                                         ; $6151: $ff
	rst  $38                                         ; $6152: $ff
	ld   hl, sp+$22                                  ; $6153: $f8 $22
	ld   de, $1111                                   ; $6155: $11 $11 $11
	ld   de, $1111                                   ; $6158: $11 $11 $11
	daa                                              ; $615b: $27
	rst  JumpTable                                         ; $615c: $df
	rst  $38                                         ; $615d: $ff
	rst  $38                                         ; $615e: $ff
	rst  $38                                         ; $615f: $ff
	rst  $38                                         ; $6160: $ff
	rst  $38                                         ; $6161: $ff
	db   $e3                                         ; $6162: $e3
	ld   de, $1111                                   ; $6163: $11 $11 $11
	ld   de, $1111                                   ; $6166: $11 $11 $11
	ld   de, $ff7f                                   ; $6169: $11 $7f $ff
	rst  $38                                         ; $616c: $ff
	rst  $38                                         ; $616d: $ff
	rst  $38                                         ; $616e: $ff
	rst  $38                                         ; $616f: $ff
	rst  $38                                         ; $6170: $ff
	ld   [hl], c                                     ; $6171: $71
	ld   de, $1111                                   ; $6172: $11 $11 $11
	ld   de, $1111                                   ; $6175: $11 $11 $11
	inc  l                                           ; $6178: $2c
	rst  $38                                         ; $6179: $ff
	rst  $38                                         ; $617a: $ff
	rst  $38                                         ; $617b: $ff
	rst  $38                                         ; $617c: $ff
	rst  $38                                         ; $617d: $ff
	rst  $38                                         ; $617e: $ff
	call nz, $1111                                   ; $617f: $c4 $11 $11
	ld   de, $1111                                   ; $6182: $11 $11 $11
	ld   de, $cf12                                   ; $6185: $11 $12 $cf
	rst  $38                                         ; $6188: $ff
	rst  $38                                         ; $6189: $ff
	rst  $38                                         ; $618a: $ff
	rst  $38                                         ; $618b: $ff
	rst  $38                                         ; $618c: $ff
	ld   a, [$1161]                                  ; $618d: $fa $61 $11
	ld   de, $1111                                   ; $6190: $11 $11 $11
	ld   de, $1c11                                   ; $6193: $11 $11 $1c
	rst  $38                                         ; $6196: $ff
	rst  $38                                         ; $6197: $ff
	rst  $38                                         ; $6198: $ff
	rst  $38                                         ; $6199: $ff
	rst  $38                                         ; $619a: $ff
	rst  $38                                         ; $619b: $ff
	and  h                                           ; $619c: $a4
	ld   de, $1111                                   ; $619d: $11 $11 $11
	ld   de, $1111                                   ; $61a0: $11 $11 $11
	ld   de, $ff7f                                   ; $61a3: $11 $7f $ff
	rst  $38                                         ; $61a6: $ff
	rst  $38                                         ; $61a7: $ff
	rst  $38                                         ; $61a8: $ff
	rst  $38                                         ; $61a9: $ff
	db   $fc                                         ; $61aa: $fc
	sub  d                                           ; $61ab: $92
	ld   de, $1111                                   ; $61ac: $11 $11 $11
	ld   de, $1111                                   ; $61af: $11 $11 $11
	inc  d                                           ; $61b2: $14
	xor  a                                           ; $61b3: $af
	rst  $38                                         ; $61b4: $ff
	rst  $38                                         ; $61b5: $ff
	rst  $38                                         ; $61b6: $ff
	rst  $38                                         ; $61b7: $ff
	rst  $38                                         ; $61b8: $ff
	ei                                               ; $61b9: $fb
	ld   [hl], c                                     ; $61ba: $71
	ld   de, $1111                                   ; $61bb: $11 $11 $11
	ld   de, $1111                                   ; $61be: $11 $11 $11
	inc  h                                           ; $61c1: $24
	sbc  [hl]                                        ; $61c2: $9e
	rst  $38                                         ; $61c3: $ff
	rst  $38                                         ; $61c4: $ff
	rst  $38                                         ; $61c5: $ff
	rst  $38                                         ; $61c6: $ff
	rst  $38                                         ; $61c7: $ff
	db   $fd                                         ; $61c8: $fd
	sub  d                                           ; $61c9: $92
	ld   de, $1111                                   ; $61ca: $11 $11 $11
	ld   de, $1111                                   ; $61cd: $11 $11 $11
	ld   sp, $ff6d                                   ; $61d0: $31 $6d $ff
	rst  $38                                         ; $61d3: $ff
	rst  $38                                         ; $61d4: $ff
	rst  $38                                         ; $61d5: $ff
	rst  $38                                         ; $61d6: $ff
	rst  $38                                         ; $61d7: $ff
	sub  l                                           ; $61d8: $95
	ld   de, $1111                                   ; $61d9: $11 $11 $11
	ld   de, $1111                                   ; $61dc: $11 $11 $11
	dec  d                                           ; $61df: $15
	inc  [hl]                                        ; $61e0: $34
	cp   a                                           ; $61e1: $bf
	rst  $38                                         ; $61e2: $ff
	rst  $38                                         ; $61e3: $ff
	rst  $38                                         ; $61e4: $ff
	rst  $38                                         ; $61e5: $ff
	rst  $38                                         ; $61e6: $ff
	ld   a, [$1162]                                  ; $61e7: $fa $62 $11
	ld   de, $1111                                   ; $61ea: $11 $11 $11
	ld   de, $3511                                   ; $61ed: $11 $11 $35
	dec  h                                           ; $61f0: $25
	cp   a                                           ; $61f1: $bf
	rst  $38                                         ; $61f2: $ff
	rst  $38                                         ; $61f3: $ff

jr_0db_61f4:
	rst  $38                                         ; $61f4: $ff
	rst  $38                                         ; $61f5: $ff
	rst  $38                                         ; $61f6: $ff
	ld   a, [$1163]                                  ; $61f7: $fa $63 $11
	ld   de, $1111                                   ; $61fa: $11 $11 $11
	ld   de, $8311                                   ; $61fd: $11 $11 $83
	ld   de, $de6c                                   ; $6200: $11 $6c $de
	rst  $38                                         ; $6203: $ff
	rst  $38                                         ; $6204: $ff
	rst  $38                                         ; $6205: $ff
	rst  $38                                         ; $6206: $ff
	db   $fd                                         ; $6207: $fd
	ret  c                                           ; $6208: $d8

	ld   c, b                                        ; $6209: $48
	ld   h, h                                        ; $620a: $64
	ld   de, $2162                                   ; $620b: $11 $62 $21
	ld   de, $8111                                   ; $620e: $11 $11 $81
	ld   de, $4958                                   ; $6211: $11 $58 $49
	db   $fd                                         ; $6214: $fd
	rst  $38                                         ; $6215: $ff
	rst  $38                                         ; $6216: $ff
	rst  $38                                         ; $6217: $ff
	db   $fd                                         ; $6218: $fd
	rst  $38                                         ; $6219: $ff
	ld   a, e                                        ; $621a: $7b
	and  a                                           ; $621b: $a7
	ld   de, $1181                                   ; $621c: $11 $81 $11
	ld   de, $1111                                   ; $621f: $11 $11 $11
	ld   de, $8924                                   ; $6222: $11 $24 $89
	rst  $38                                         ; $6225: $ff
	rst  $38                                         ; $6226: $ff
	rst  $38                                         ; $6227: $ff
	rst  $38                                         ; $6228: $ff
	rst  $38                                         ; $6229: $ff
	rst  $38                                         ; $622a: $ff
	ld   l, c                                        ; $622b: $69
	ld   [hl], a                                     ; $622c: $77
	ld   de, $1151                                   ; $622d: $11 $51 $11
	ld   de, $1311                                   ; $6230: $11 $11 $13
	ld   de, $a815                                   ; $6233: $11 $15 $a8
	rst  $28                                         ; $6236: $ef
	rst  $38                                         ; $6237: $ff
	rst  $38                                         ; $6238: $ff
	rst  $38                                         ; $6239: $ff
	rst  $38                                         ; $623a: $ff
	rst  $28                                         ; $623b: $ef
	and  [hl]                                        ; $623c: $a6
	ld   [hl], l                                     ; $623d: $75
	ld   hl, $1114                                   ; $623e: $21 $14 $11
	ld   de, $1111                                   ; $6241: $11 $11 $11
	ld   sp, $7b13                                   ; $6244: $31 $13 $7b
	adc  a                                           ; $6247: $8f
	rst  $38                                         ; $6248: $ff
	rst  $38                                         ; $6249: $ff
	rst  $38                                         ; $624a: $ff
	rst  $38                                         ; $624b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $624c: $cf
	push af                                          ; $624d: $f5
	add  h                                           ; $624e: $84
	ld   d, c                                        ; $624f: $51
	rla                                              ; $6250: $17
	ld   de, $1111                                   ; $6251: $11 $11 $11
	ld   de, $1131                                   ; $6254: $11 $31 $11
	jr   c, jr_0db_61f4                              ; $6257: $38 $9b

	rst  $38                                         ; $6259: $ff
	rst  $38                                         ; $625a: $ff
	rst  $38                                         ; $625b: $ff
	rst  $38                                         ; $625c: $ff
	ld   sp, hl                                      ; $625d: $f9
	db   $fd                                         ; $625e: $fd
	ld   e, b                                        ; $625f: $58
	ld   [hl], $11                                   ; $6260: $36 $11
	add  c                                           ; $6262: $81
	ld   de, $1111                                   ; $6263: $11 $11 $11
	inc  d                                           ; $6266: $14
	ld   de, $8912                                   ; $6267: $11 $12 $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $626a: $cf
	rst  $38                                         ; $626b: $ff
	rst  $38                                         ; $626c: $ff
	rst  $38                                         ; $626d: $ff
	rst  $38                                         ; $626e: $ff
	sbc  a                                           ; $626f: $9f
	rst  ToBoot                                         ; $6270: $c7
	sub  e                                           ; $6271: $93
	ld   h, c                                        ; $6272: $61
	ld   [$1112], sp                                 ; $6273: $08 $12 $11
	ld   de, $5111                                   ; $6276: $11 $11 $51
	ld   de, $8918                                   ; $6279: $11 $18 $89
	rst  $38                                         ; $627c: $ff
	rst  $38                                         ; $627d: $ff
	rst  $38                                         ; $627e: $ff
	rst  $38                                         ; $627f: $ff
	ld   sp, hl                                      ; $6280: $f9
	db   $fc                                         ; $6281: $fc
	ld   a, d                                        ; $6282: $7a
	daa                                              ; $6283: $27
	ld   de, $2181                                   ; $6284: $11 $81 $21
	ld   de, $1211                                   ; $6287: $11 $11 $12
	ld   sp, $5a11                                   ; $628a: $31 $11 $5a
	adc  a                                           ; $628d: $8f
	rst  $38                                         ; $628e: $ff
	rst  $38                                         ; $628f: $ff
	rst  $38                                         ; $6290: $ff
	rst  $38                                         ; $6291: $ff
	sbc  a                                           ; $6292: $9f
	sub  $b2                                         ; $6293: $d6 $b2
	ld   h, d                                        ; $6295: $62
	jr   jr_0db_62ba                                 ; $6296: $18 $22

	ld   sp, $1131                                   ; $6298: $31 $31 $11
	ld   d, $11                                      ; $629b: $16 $11
	inc  d                                           ; $629d: $14
	sub  a                                           ; $629e: $97
	rst  $38                                         ; $629f: $ff
	rst  $38                                         ; $62a0: $ff
	rst  $38                                         ; $62a1: $ff
	rst  $38                                         ; $62a2: $ff
	db   $fc                                         ; $62a3: $fc
	rst  $38                                         ; $62a4: $ff
	ld   a, h                                        ; $62a5: $7c
	ld   b, [hl]                                     ; $62a6: $46
	ld   b, c                                        ; $62a7: $41
	ld   [hl], e                                     ; $62a8: $73
	inc  de                                          ; $62a9: $13
	inc  de                                          ; $62aa: $13
	ld   de, $4112                                   ; $62ab: $11 $12 $41
	ld   [de], a                                     ; $62ae: $12
	ld   c, b                                        ; $62af: $48
	adc  a                                           ; $62b0: $8f
	rst  $38                                         ; $62b1: $ff
	rst  $38                                         ; $62b2: $ff
	rst  $38                                         ; $62b3: $ff
	rst  $38                                         ; $62b4: $ff
	cp   [hl]                                        ; $62b5: $be
	rst  $30                                         ; $62b6: $f7
	call nc, $1873                                   ; $62b7: $d4 $73 $18

Jump_0db_62ba:
jr_0db_62ba:
	ld   hl, $3121                                   ; $62ba: $21 $21 $31
	ld   de, $1142                                   ; $62bd: $11 $42 $11
	dec  h                                           ; $62c0: $25
	ld   a, d                                        ; $62c1: $7a
	cp   $ff                                         ; $62c2: $fe $ff
	rst  $38                                         ; $62c4: $ff
	rst  $38                                         ; $62c5: $ff
	ld   sp, hl                                      ; $62c6: $f9
	ei                                               ; $62c7: $fb
	sbc  h                                           ; $62c8: $9c
	jr   c, jr_0db_62dc                              ; $62c9: $38 $11

	add  c                                           ; $62cb: $81
	ld   hl, $1112                                   ; $62cc: $21 $12 $11
	inc  d                                           ; $62cf: $14
	ld   de, $6615                                   ; $62d0: $11 $15 $66
	rst  $38                                         ; $62d3: $ff
	rst  $38                                         ; $62d4: $ff
	rst  $38                                         ; $62d5: $ff
	rst  $38                                         ; $62d6: $ff
	rst  $38                                         ; $62d7: $ff
	cp   a                                           ; $62d8: $bf
	sbc  h                                           ; $62d9: $9c
	ld   [hl], h                                     ; $62da: $74
	ld   h, c                                        ; $62db: $61

jr_0db_62dc:
	inc  [hl]                                        ; $62dc: $34
	inc  de                                          ; $62dd: $13
	ld   de, $1511                                   ; $62de: $11 $11 $15
	ld   de, $7415                                   ; $62e1: $11 $15 $74
	rst  JumpTable                                         ; $62e4: $df
	rst  $38                                         ; $62e5: $ff
	rst  $38                                         ; $62e6: $ff
	rst  $38                                         ; $62e7: $ff
	rst  $38                                         ; $62e8: $ff
	cp   a                                           ; $62e9: $bf
	xor  d                                           ; $62ea: $aa
	sub  l                                           ; $62eb: $95
	ld   h, c                                        ; $62ec: $61
	ld   d, $11                                      ; $62ed: $16 $11
	ld   de, $1811                                   ; $62ef: $11 $11 $18
	ld   de, $9414                                   ; $62f2: $11 $14 $94
	rst  JumpTable                                         ; $62f5: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62f6: $cf
	rst  $38                                         ; $62f7: $ff
	rst  $38                                         ; $62f8: $ff
	rst  $38                                         ; $62f9: $ff
	cp   a                                           ; $62fa: $bf
	xor  e                                           ; $62fb: $ab
	add  l                                           ; $62fc: $85
	ld   h, c                                        ; $62fd: $61
	inc  h                                           ; $62fe: $24
	ld   de, $1111                                   ; $62ff: $11 $11 $11
	ld   h, [hl]                                     ; $6302: $66
	ld   de, $9528                                   ; $6303: $11 $28 $95
	rst  $38                                         ; $6306: $ff
	rst  $38                                         ; $6307: $ff
	rst  $38                                         ; $6308: $ff
	rst  $38                                         ; $6309: $ff
	ld   a, [$8cef]                                  ; $630a: $fa $ef $8c
	ld   d, a                                        ; $630d: $57
	ld   de, $1161                                   ; $630e: $11 $61 $11
	ld   de, $b112                                   ; $6311: $11 $12 $b1
	ld   [de], a                                     ; $6314: $12
	ld   l, e                                        ; $6315: $6b
	ld   c, a                                        ; $6316: $4f
	db   $fc                                         ; $6317: $fc
	rst  $38                                         ; $6318: $ff
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	call c, $b8f7                                    ; $631b: $dc $f7 $b8
	ld   h, d                                        ; $631e: $62
	inc  d                                           ; $631f: $14
	ld   de, $1111                                   ; $6320: $11 $11 $11
	add  hl, sp                                      ; $6323: $39
	ld   de, $a656                                   ; $6324: $11 $56 $a6
	rst  $38                                         ; $6327: $ff
	rst  $38                                         ; $6328: $ff
	rst  $38                                         ; $6329: $ff
	rst  $38                                         ; $632a: $ff
	db   $fc                                         ; $632b: $fc
	rst  $38                                         ; $632c: $ff
	ld   a, e                                        ; $632d: $7b
	add  l                                           ; $632e: $85
	ld   de, $1131                                   ; $632f: $11 $31 $11
	ld   de, $1118                                   ; $6332: $11 $18 $11
	rla                                              ; $6335: $17
	xor  b                                           ; $6336: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6337: $cf
	rst  $38                                         ; $6338: $ff
	rst  $38                                         ; $6339: $ff
	rst  $38                                         ; $633a: $ff
	rst  $38                                         ; $633b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $633c: $cf
	xor  c                                           ; $633d: $a9
	and  l                                           ; $633e: $a5
	ld   de, $1111                                   ; $633f: $11 $11 $11
	ld   de, $1117                                   ; $6342: $11 $17 $11
	add  hl, de                                      ; $6345: $19
	xor  d                                           ; $6346: $aa
	rst  $38                                         ; $6347: $ff
	rst  $38                                         ; $6348: $ff
	rst  $38                                         ; $6349: $ff
	rst  $38                                         ; $634a: $ff
	rst  $38                                         ; $634b: $ff
	xor  $9a                                         ; $634c: $ee $9a
	sub  d                                           ; $634e: $92
	ld   de, $1111                                   ; $634f: $11 $11 $11
	ld   de, $1172                                   ; $6352: $11 $72 $11
	ld   l, h                                        ; $6355: $6c
	cp   l                                           ; $6356: $bd
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	rst  $38                                         ; $6359: $ff
	rst  $38                                         ; $635a: $ff
	cp   $f9                                         ; $635b: $fe $f9
	sbc  h                                           ; $635d: $9c
	ld   d, c                                        ; $635e: $51
	ld   de, $1111                                   ; $635f: $11 $11 $11
	ld   d, $31                                      ; $6362: $16 $31
	inc  de                                          ; $6364: $13
	cp   h                                           ; $6365: $bc
	rst  $38                                         ; $6366: $ff
	rst  $38                                         ; $6367: $ff
	rst  $38                                         ; $6368: $ff
	rst  $38                                         ; $6369: $ff
	rst  $38                                         ; $636a: $ff
	rst  $38                                         ; $636b: $ff
	ld   [hl], a                                     ; $636c: $77
	or   a                                           ; $636d: $b7
	ld   de, $1111                                   ; $636e: $11 $11 $11
	ld   de, $1161                                   ; $6371: $11 $61 $11
	dec  sp                                          ; $6374: $3b
	cp   a                                           ; $6375: $bf
	rst  $38                                         ; $6376: $ff
	rst  $38                                         ; $6377: $ff
	rst  $38                                         ; $6378: $ff
	rst  $38                                         ; $6379: $ff
	rst  $38                                         ; $637a: $ff
	push af                                          ; $637b: $f5
	ld   a, d                                        ; $637c: $7a
	ld   b, c                                        ; $637d: $41
	ld   de, $1111                                   ; $637e: $11 $11 $11
	ld   [de], a                                     ; $6381: $12
	ld   de, $be16                                   ; $6382: $11 $16 $be
	rst  $38                                         ; $6385: $ff
	rst  $38                                         ; $6386: $ff
	rst  $38                                         ; $6387: $ff
	rst  $38                                         ; $6388: $ff
	rst  $38                                         ; $6389: $ff
	rst  $30                                         ; $638a: $f7
	ld   d, a                                        ; $638b: $57
	ld   hl, $1111                                   ; $638c: $21 $11 $11
	ld   de, $1141                                   ; $638f: $11 $41 $11
	ld   c, c                                        ; $6392: $49
	cp   a                                           ; $6393: $bf
	rst  $38                                         ; $6394: $ff
	rst  $38                                         ; $6395: $ff
	rst  $38                                         ; $6396: $ff
	rst  $38                                         ; $6397: $ff
	rst  $38                                         ; $6398: $ff
	jp   nc, $1174                                   ; $6399: $d2 $74 $11

	ld   de, $1211                                   ; $639c: $11 $11 $12
	ld   hl, $8e15                                   ; $639f: $21 $15 $8e
	rst  $38                                         ; $63a2: $ff
	rst  $38                                         ; $63a3: $ff
	rst  $38                                         ; $63a4: $ff
	rst  $38                                         ; $63a5: $ff
	rst  $38                                         ; $63a6: $ff
	db   $fd                                         ; $63a7: $fd
	ld   d, $31                                      ; $63a8: $16 $31
	ld   de, $1111                                   ; $63aa: $11 $11 $11
	ld   h, c                                        ; $63ad: $61
	inc  d                                           ; $63ae: $14
	sbc  h                                           ; $63af: $9c
	rst  $38                                         ; $63b0: $ff
	rst  $38                                         ; $63b1: $ff
	rst  $38                                         ; $63b2: $ff
	rst  $38                                         ; $63b3: $ff
	rst  $38                                         ; $63b4: $ff
	rst  $38                                         ; $63b5: $ff
	add  c                                           ; $63b6: $81
	ld   [hl], c                                     ; $63b7: $71
	ld   de, $1111                                   ; $63b8: $11 $11 $11
	ld   [hl], c                                     ; $63bb: $71
	inc  d                                           ; $63bc: $14
	cp   e                                           ; $63bd: $bb
	rst  JumpTable                                         ; $63be: $df
	rst  $38                                         ; $63bf: $ff
	rst  $38                                         ; $63c0: $ff

jr_0db_63c1:
	rst  $38                                         ; $63c1: $ff
	rst  $38                                         ; $63c2: $ff
	rst  JumpTable                                         ; $63c3: $df
	pop  de                                          ; $63c4: $d1
	ld   [hl], c                                     ; $63c5: $71
	ld   de, $1111                                   ; $63c6: $11 $11 $11
	and  c                                           ; $63c9: $a1

Call_0db_63ca:
	rla                                              ; $63ca: $17
	xor  h                                           ; $63cb: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63cc: $cf
	rst  $38                                         ; $63cd: $ff
	rst  $38                                         ; $63ce: $ff
	rst  $38                                         ; $63cf: $ff
	rst  $38                                         ; $63d0: $ff
	cp   a                                           ; $63d1: $bf
	sub  c                                           ; $63d2: $91
	ld   d, c                                        ; $63d3: $51
	ld   de, $1111                                   ; $63d4: $11 $11 $11
	ld   de, $aa1a                                   ; $63d7: $11 $1a $aa
	rst  $38                                         ; $63da: $ff
	rst  $38                                         ; $63db: $ff
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	db   $fd                                         ; $63de: $fd
	rst  $38                                         ; $63df: $ff
	ld   [de], a                                     ; $63e0: $12
	ld   de, $1111                                   ; $63e1: $11 $11 $11
	ld   de, $a811                                   ; $63e4: $11 $11 $a8
	xor  a                                           ; $63e7: $af
	rst  $38                                         ; $63e8: $ff
	rst  $38                                         ; $63e9: $ff
	rst  $38                                         ; $63ea: $ff
	rst  $38                                         ; $63eb: $ff
	rst  $38                                         ; $63ec: $ff
	or   d                                           ; $63ed: $b2
	ld   de, $1111                                   ; $63ee: $11 $11 $11
	ld   de, $3911                                   ; $63f1: $11 $11 $39
	xor  a                                           ; $63f4: $af
	rst  $38                                         ; $63f5: $ff
	rst  $38                                         ; $63f6: $ff
	rst  $38                                         ; $63f7: $ff
	rst  $38                                         ; $63f8: $ff
	rst  $38                                         ; $63f9: $ff
	jp   $1111                                       ; $63fa: $c3 $11 $11


	ld   de, $1111                                   ; $63fd: $11 $11 $11
	jr   z, jr_0db_63c1                              ; $6400: $28 $bf

	rst  $38                                         ; $6402: $ff
	rst  $38                                         ; $6403: $ff
	rst  $38                                         ; $6404: $ff
	rst  $38                                         ; $6405: $ff
	rst  $38                                         ; $6406: $ff
	and  h                                           ; $6407: $a4
	ld   de, $1111                                   ; $6408: $11 $11 $11
	ld   de, $2811                                   ; $640b: $11 $11 $28
	rst  JumpTable                                         ; $640e: $df
	rst  $38                                         ; $640f: $ff
	rst  $38                                         ; $6410: $ff
	rst  $38                                         ; $6411: $ff
	rst  $38                                         ; $6412: $ff
	db   $fd                                         ; $6413: $fd
	add  l                                           ; $6414: $85
	ld   de, $1111                                   ; $6415: $11 $11 $11
	ld   de, $5a12                                   ; $6418: $11 $12 $5a
	rst  $38                                         ; $641b: $ff
	rst  $38                                         ; $641c: $ff
	rst  $38                                         ; $641d: $ff
	rst  $38                                         ; $641e: $ff
	rst  $38                                         ; $641f: $ff
	reti                                             ; $6420: $d9


	ld   h, c                                        ; $6421: $61
	ld   de, $1111                                   ; $6422: $11 $11 $11
	ld   de, $8f35                                   ; $6425: $11 $35 $8f
	rst  $38                                         ; $6428: $ff
	rst  $38                                         ; $6429: $ff
	rst  $38                                         ; $642a: $ff
	rst  $38                                         ; $642b: $ff
	cp   $95                                         ; $642c: $fe $95
	ld   de, $1111                                   ; $642e: $11 $11 $11
	ld   de, $5911                                   ; $6431: $11 $11 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6434: $cf
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	rst  $38                                         ; $6437: $ff
	rst  $38                                         ; $6438: $ff
	db   $ec                                         ; $6439: $ec
	ld   d, d                                        ; $643a: $52
	ld   de, $1111                                   ; $643b: $11 $11 $11
	ld   de, $6914                                   ; $643e: $11 $14 $69
	rst  JumpTable                                         ; $6441: $df
	rst  $38                                         ; $6442: $ff
	rst  $38                                         ; $6443: $ff
	rst  $38                                         ; $6444: $ff
	rst  $38                                         ; $6445: $ff
	jp   hl                                          ; $6446: $e9


	ld   [hl-], a                                    ; $6447: $32
	ld   de, $1111                                   ; $6448: $11 $11 $11
	ld   de, $8b05                                   ; $644b: $11 $05 $8b
	rst  $28                                         ; $644e: $ef
	rst  $38                                         ; $644f: $ff
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	rst  $38                                         ; $6452: $ff
	or   [hl]                                        ; $6453: $b6
	ld   h, e                                        ; $6454: $63
	ld   de, $1111                                   ; $6455: $11 $11 $11
	ld   bc, $8a27                                   ; $6458: $01 $27 $8a
	db   $ed                                         ; $645b: $ed
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	rst  $38                                         ; $645e: $ff
	db   $dd                                         ; $645f: $dd
	cp   b                                           ; $6460: $b8
	add  c                                           ; $6461: $81
	ld   sp, $1441                                   ; $6462: $31 $41 $14
	inc  de                                          ; $6465: $13
	inc  de                                          ; $6466: $13
	xor  b                                           ; $6467: $a8
	add  sp, -$31                                    ; $6468: $e8 $cf
	db   $ed                                         ; $646a: $ed
	rst  $38                                         ; $646b: $ff
	db   $ec                                         ; $646c: $ec
	cp   b                                           ; $646d: $b8
	or   l                                           ; $646e: $b5
	inc  de                                          ; $646f: $13
	ld   d, e                                        ; $6470: $53
	ld   de, $3234                                   ; $6471: $11 $34 $32
	ld   l, d                                        ; $6474: $6a
	sbc  c                                           ; $6475: $99
	cp   a                                           ; $6476: $bf
	db   $ec                                         ; $6477: $ec
	sbc  $fd                                         ; $6478: $de $fd
	cp   d                                           ; $647a: $ba
	cp   c                                           ; $647b: $b9
	ld   [hl], h                                     ; $647c: $74
	ld   [hl], $32                                   ; $647d: $36 $32
	dec  d                                           ; $647f: $15
	ld   b, d                                        ; $6480: $42
	ld   d, [hl]                                     ; $6481: $56
	sbc  b                                           ; $6482: $98
	sbc  d                                           ; $6483: $9a
	call c, $dcbe                                    ; $6484: $dc $be $dc

Jump_0db_6487:
	cp   h                                           ; $6487: $bc
	cp   d                                           ; $6488: $ba
	or   l                                           ; $6489: $b5
	sub  a                                           ; $648a: $97
	ld   h, h                                        ; $648b: $64
	ld   [hl], $45                                   ; $648c: $36 $45
	ld   [hl], $66                                   ; $648e: $36 $66
	add  [hl]                                        ; $6490: $86
	xor  c                                           ; $6491: $a9
	sbc  e                                           ; $6492: $9b
	cp   l                                           ; $6493: $bd
	xor  e                                           ; $6494: $ab
	xor  e                                           ; $6495: $ab
	cp   b                                           ; $6496: $b8
	adc  d                                           ; $6497: $8a
	add  [hl]                                        ; $6498: $86
	sub  [hl]                                        ; $6499: $96
	ld   h, [hl]                                     ; $649a: $66
	ld   d, a                                        ; $649b: $57
	ld   h, a                                        ; $649c: $67
	ld   d, a                                        ; $649d: $57
	ld   [hl], a                                     ; $649e: $77
	adc  b                                           ; $649f: $88
	sub  a                                           ; $64a0: $97
	sbc  d                                           ; $64a1: $9a
	sbc  d                                           ; $64a2: $9a
	sbc  c                                           ; $64a3: $99
	sbc  c                                           ; $64a4: $99
	sbc  c                                           ; $64a5: $99
	adc  b                                           ; $64a6: $88
	ld   a, c                                        ; $64a7: $79
	adc  c                                           ; $64a8: $89
	add  a                                           ; $64a9: $87
	add  [hl]                                        ; $64aa: $86
	add  a                                           ; $64ab: $87
	ld   l, b                                        ; $64ac: $68
	ld   a, b                                        ; $64ad: $78
	ld   a, b                                        ; $64ae: $78
	ld   h, a                                        ; $64af: $67
	add  [hl]                                        ; $64b0: $86
	add  a                                           ; $64b1: $87
	adc  b                                           ; $64b2: $88
	ld   a, c                                        ; $64b3: $79
	sbc  c                                           ; $64b4: $99
	sbc  b                                           ; $64b5: $98
	sbc  c                                           ; $64b6: $99
	sbc  b                                           ; $64b7: $98
	adc  c                                           ; $64b8: $89
	sbc  c                                           ; $64b9: $99
	ld   a, c                                        ; $64ba: $79
	adc  b                                           ; $64bb: $88
	halt                                             ; $64bc: $76
	add  a                                           ; $64bd: $87
	ld   [hl], a                                     ; $64be: $77
	add  a                                           ; $64bf: $87
	ld   a, c                                        ; $64c0: $79
	sbc  b                                           ; $64c1: $98
	xor  b                                           ; $64c2: $a8
	sbc  c                                           ; $64c3: $99
	adc  c                                           ; $64c4: $89
	sbc  b                                           ; $64c5: $98
	adc  c                                           ; $64c6: $89
	add  a                                           ; $64c7: $87
	add  [hl]                                        ; $64c8: $86
	adc  c                                           ; $64c9: $89
	ld   h, a                                        ; $64ca: $67
	add  a                                           ; $64cb: $87
	sbc  b                                           ; $64cc: $98
	adc  b                                           ; $64cd: $88
	sbc  c                                           ; $64ce: $99
	adc  c                                           ; $64cf: $89
	sbc  c                                           ; $64d0: $99
	adc  c                                           ; $64d1: $89
	adc  b                                           ; $64d2: $88
	adc  b                                           ; $64d3: $88
	sub  a                                           ; $64d4: $97
	add  a                                           ; $64d5: $87
	ld   [hl], a                                     ; $64d6: $77
	ld   a, b                                        ; $64d7: $78
	ld   [hl], a                                     ; $64d8: $77
	ld   a, b                                        ; $64d9: $78
	sbc  c                                           ; $64da: $99
	adc  c                                           ; $64db: $89
	sbc  c                                           ; $64dc: $99
	sbc  c                                           ; $64dd: $99
	adc  c                                           ; $64de: $89
	sbc  c                                           ; $64df: $99
	adc  b                                           ; $64e0: $88
	adc  b                                           ; $64e1: $88
	add  a                                           ; $64e2: $87
	ld   a, b                                        ; $64e3: $78
	ld   [hl], a                                     ; $64e4: $77
	ld   [hl], a                                     ; $64e5: $77
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	sbc  c                                           ; $64ea: $99
	sbc  c                                           ; $64eb: $99
	adc  b                                           ; $64ec: $88
	adc  c                                           ; $64ed: $89
	add  a                                           ; $64ee: $87
	adc  b                                           ; $64ef: $88
	ld   [hl], a                                     ; $64f0: $77
	ld   a, b                                        ; $64f1: $78
	add  a                                           ; $64f2: $87
	ld   [hl], a                                     ; $64f3: $77
	adc  b                                           ; $64f4: $88
	ld   a, b                                        ; $64f5: $78
	adc  b                                           ; $64f6: $88
	adc  c                                           ; $64f7: $89
	adc  b                                           ; $64f8: $88
	sbc  b                                           ; $64f9: $98
	adc  c                                           ; $64fa: $89
	adc  b                                           ; $64fb: $88
	adc  b                                           ; $64fc: $88
	add  a                                           ; $64fd: $87
	ld   a, c                                        ; $64fe: $79
	ld   [hl], a                                     ; $64ff: $77
	add  a                                           ; $6500: $87
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	add  a                                           ; $6503: $87
	adc  b                                           ; $6504: $88
	adc  b                                           ; $6505: $88
	adc  b                                           ; $6506: $88
	add  a                                           ; $6507: $87
	adc  b                                           ; $6508: $88
	ld   a, c                                        ; $6509: $79
	ld   a, b                                        ; $650a: $78
	add  a                                           ; $650b: $87
	sbc  b                                           ; $650c: $98
	sub  a                                           ; $650d: $97
	adc  b                                           ; $650e: $88
	ld   a, b                                        ; $650f: $78
	adc  c                                           ; $6510: $89
	sbc  b                                           ; $6511: $98
	ld   [hl], a                                     ; $6512: $77
	add  a                                           ; $6513: $87
	adc  b                                           ; $6514: $88
	ld   a, b                                        ; $6515: $78
	add  a                                           ; $6516: $87
	adc  b                                           ; $6517: $88
	ld   a, b                                        ; $6518: $78
	adc  b                                           ; $6519: $88
	sbc  b                                           ; $651a: $98
	ld   a, b                                        ; $651b: $78
	adc  b                                           ; $651c: $88
	adc  b                                           ; $651d: $88
	sbc  c                                           ; $651e: $99
	ld   [hl], a                                     ; $651f: $77
	adc  b                                           ; $6520: $88
	adc  b                                           ; $6521: $88
	ld   a, b                                        ; $6522: $78
	ld   a, b                                        ; $6523: $78
	add  a                                           ; $6524: $87
	add  a                                           ; $6525: $87
	sbc  b                                           ; $6526: $98
	ld   a, c                                        ; $6527: $79
	ld   a, c                                        ; $6528: $79
	adc  b                                           ; $6529: $88
	add  a                                           ; $652a: $87
	add  a                                           ; $652b: $87
	sbc  b                                           ; $652c: $98
	adc  b                                           ; $652d: $88
	add  a                                           ; $652e: $87
	ld   a, c                                        ; $652f: $79
	ld   a, b                                        ; $6530: $78
	add  a                                           ; $6531: $87
	add  a                                           ; $6532: $87
	adc  b                                           ; $6533: $88
	adc  b                                           ; $6534: $88
	adc  b                                           ; $6535: $88
	adc  b                                           ; $6536: $88
	sbc  b                                           ; $6537: $98
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	adc  b                                           ; $653a: $88
	adc  c                                           ; $653b: $89
	add  a                                           ; $653c: $87
	adc  b                                           ; $653d: $88
	add  [hl]                                        ; $653e: $86
	adc  b                                           ; $653f: $88
	ld   a, b                                        ; $6540: $78
	ld   a, c                                        ; $6541: $79
	adc  b                                           ; $6542: $88
	adc  c                                           ; $6543: $89
	sbc  b                                           ; $6544: $98
	adc  c                                           ; $6545: $89
	adc  b                                           ; $6546: $88
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	add  a                                           ; $6549: $87
	add  a                                           ; $654a: $87
	ld   a, b                                        ; $654b: $78
	adc  b                                           ; $654c: $88
	ld   a, c                                        ; $654d: $79
	ld   [hl], a                                     ; $654e: $77
	adc  b                                           ; $654f: $88
	add  a                                           ; $6550: $87
	adc  c                                           ; $6551: $89
	adc  b                                           ; $6552: $88
	sbc  b                                           ; $6553: $98
	adc  b                                           ; $6554: $88
	adc  b                                           ; $6555: $88
	ld   a, b                                        ; $6556: $78
	ld   [hl], a                                     ; $6557: $77
	adc  b                                           ; $6558: $88
	ld   [hl], a                                     ; $6559: $77
	add  a                                           ; $655a: $87
	adc  b                                           ; $655b: $88
	ld   a, b                                        ; $655c: $78
	adc  b                                           ; $655d: $88
	adc  c                                           ; $655e: $89
	adc  b                                           ; $655f: $88
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	ld   a, b                                        ; $6562: $78
	add  a                                           ; $6563: $87
	adc  b                                           ; $6564: $88
	adc  b                                           ; $6565: $88
	adc  b                                           ; $6566: $88
	adc  b                                           ; $6567: $88
	adc  b                                           ; $6568: $88
	adc  c                                           ; $6569: $89
	ld   a, b                                        ; $656a: $78
	adc  b                                           ; $656b: $88
	adc  c                                           ; $656c: $89
	ld   a, b                                        ; $656d: $78
	adc  b                                           ; $656e: $88
	sub  a                                           ; $656f: $97
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	ld   a, b                                        ; $6572: $78
	ld   a, b                                        ; $6573: $78
	ld   a, c                                        ; $6574: $79
	adc  b                                           ; $6575: $88
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	sbc  b                                           ; $6578: $98
	adc  c                                           ; $6579: $89
	adc  c                                           ; $657a: $89
	adc  b                                           ; $657b: $88
	add  a                                           ; $657c: $87
	adc  c                                           ; $657d: $89
	adc  b                                           ; $657e: $88
	adc  b                                           ; $657f: $88
	adc  b                                           ; $6580: $88
	ld   a, b                                        ; $6581: $78
	ld   a, c                                        ; $6582: $79
	add  a                                           ; $6583: $87
	adc  b                                           ; $6584: $88
	adc  b                                           ; $6585: $88
	adc  b                                           ; $6586: $88
	adc  b                                           ; $6587: $88
	adc  b                                           ; $6588: $88
	ld   [hl], a                                     ; $6589: $77
	adc  b                                           ; $658a: $88
	sbc  b                                           ; $658b: $98
	ld   a, b                                        ; $658c: $78
	ld   a, b                                        ; $658d: $78
	ld   a, b                                        ; $658e: $78
	add  a                                           ; $658f: $87
	add  a                                           ; $6590: $87
	sbc  b                                           ; $6591: $98
	ld   a, b                                        ; $6592: $78
	adc  c                                           ; $6593: $89
	adc  c                                           ; $6594: $89
	adc  c                                           ; $6595: $89
	add  a                                           ; $6596: $87
	sub  a                                           ; $6597: $97
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	adc  b                                           ; $659a: $88
	adc  b                                           ; $659b: $88
	ld   a, b                                        ; $659c: $78
	adc  b                                           ; $659d: $88
	sbc  b                                           ; $659e: $98
	adc  c                                           ; $659f: $89
	adc  b                                           ; $65a0: $88
	adc  b                                           ; $65a1: $88
	adc  c                                           ; $65a2: $89
	add  a                                           ; $65a3: $87
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	ld   a, b                                        ; $65a6: $78
	add  a                                           ; $65a7: $87
	add  a                                           ; $65a8: $87
	adc  b                                           ; $65a9: $88
	adc  c                                           ; $65aa: $89
	add  a                                           ; $65ab: $87
	sbc  b                                           ; $65ac: $98
	ld   a, c                                        ; $65ad: $79
	adc  c                                           ; $65ae: $89
	adc  b                                           ; $65af: $88
	adc  b                                           ; $65b0: $88
	ld   a, b                                        ; $65b1: $78
	add  a                                           ; $65b2: $87
	adc  b                                           ; $65b3: $88
	adc  b                                           ; $65b4: $88
	adc  b                                           ; $65b5: $88
	adc  c                                           ; $65b6: $89
	adc  b                                           ; $65b7: $88
	adc  c                                           ; $65b8: $89
	ld   a, b                                        ; $65b9: $78
	sbc  b                                           ; $65ba: $98
	sbc  b                                           ; $65bb: $98
	add  a                                           ; $65bc: $87
	adc  c                                           ; $65bd: $89
	ld   a, c                                        ; $65be: $79
	adc  b                                           ; $65bf: $88
	sbc  b                                           ; $65c0: $98
	sbc  b                                           ; $65c1: $98
	adc  b                                           ; $65c2: $88
	adc  b                                           ; $65c3: $88
	adc  b                                           ; $65c4: $88
	add  a                                           ; $65c5: $87
	adc  b                                           ; $65c6: $88
	ld   a, b                                        ; $65c7: $78
	adc  c                                           ; $65c8: $89
	ld   a, b                                        ; $65c9: $78
	add  a                                           ; $65ca: $87
	add  a                                           ; $65cb: $87
	sbc  b                                           ; $65cc: $98
	adc  b                                           ; $65cd: $88
	ld   a, b                                        ; $65ce: $78
	ld   a, b                                        ; $65cf: $78
	adc  b                                           ; $65d0: $88
	sub  a                                           ; $65d1: $97
	adc  b                                           ; $65d2: $88
	adc  b                                           ; $65d3: $88
	adc  b                                           ; $65d4: $88
	sbc  b                                           ; $65d5: $98
	add  a                                           ; $65d6: $87
	adc  c                                           ; $65d7: $89
	ld   a, c                                        ; $65d8: $79
	adc  c                                           ; $65d9: $89
	add  a                                           ; $65da: $87
	adc  b                                           ; $65db: $88
	add  a                                           ; $65dc: $87
	adc  c                                           ; $65dd: $89
	add  a                                           ; $65de: $87
	adc  b                                           ; $65df: $88
	sub  a                                           ; $65e0: $97
	adc  b                                           ; $65e1: $88
	adc  b                                           ; $65e2: $88
	ld   a, b                                        ; $65e3: $78
	sbc  b                                           ; $65e4: $98
	add  a                                           ; $65e5: $87
	adc  c                                           ; $65e6: $89
	adc  b                                           ; $65e7: $88
	sbc  b                                           ; $65e8: $98
	add  a                                           ; $65e9: $87
	adc  b                                           ; $65ea: $88
	sub  a                                           ; $65eb: $97
	sbc  b                                           ; $65ec: $98
	ld   a, b                                        ; $65ed: $78
	ld   l, b                                        ; $65ee: $68
	adc  b                                           ; $65ef: $88
	sub  a                                           ; $65f0: $97
	add  a                                           ; $65f1: $87
	add  a                                           ; $65f2: $87
	adc  c                                           ; $65f3: $89
	ld   a, b                                        ; $65f4: $78
	adc  b                                           ; $65f5: $88
	adc  b                                           ; $65f6: $88
	ld   a, c                                        ; $65f7: $79
	sbc  c                                           ; $65f8: $99
	adc  b                                           ; $65f9: $88
	add  a                                           ; $65fa: $87
	adc  b                                           ; $65fb: $88
	sub  a                                           ; $65fc: $97
	adc  b                                           ; $65fd: $88
	adc  b                                           ; $65fe: $88
	sbc  b                                           ; $65ff: $98
	ld   a, b                                        ; $6600: $78
	ld   a, c                                        ; $6601: $79
	sbc  b                                           ; $6602: $98
	adc  b                                           ; $6603: $88
	adc  b                                           ; $6604: $88
	adc  b                                           ; $6605: $88
	adc  b                                           ; $6606: $88
	adc  b                                           ; $6607: $88
	ld   [hl], a                                     ; $6608: $77
	sbc  b                                           ; $6609: $98
	ld   a, b                                        ; $660a: $78
	adc  b                                           ; $660b: $88
	add  a                                           ; $660c: $87
	sbc  b                                           ; $660d: $98
	ld   a, b                                        ; $660e: $78
	ld   a, c                                        ; $660f: $79
	ld   a, b                                        ; $6610: $78
	add  a                                           ; $6611: $87
	and  a                                           ; $6612: $a7
	adc  c                                           ; $6613: $89
	ld   a, b                                        ; $6614: $78
	ld   a, c                                        ; $6615: $79
	adc  b                                           ; $6616: $88
	ld   [hl], a                                     ; $6617: $77
	sbc  c                                           ; $6618: $99
	ld   a, b                                        ; $6619: $78
	sbc  b                                           ; $661a: $98
	adc  b                                           ; $661b: $88
	adc  b                                           ; $661c: $88
	adc  b                                           ; $661d: $88
	adc  b                                           ; $661e: $88
	add  a                                           ; $661f: $87
	adc  b                                           ; $6620: $88
	adc  b                                           ; $6621: $88
	add  a                                           ; $6622: $87
	adc  b                                           ; $6623: $88
	adc  c                                           ; $6624: $89
	ld   a, b                                        ; $6625: $78
	adc  b                                           ; $6626: $88
	adc  b                                           ; $6627: $88
	adc  c                                           ; $6628: $89
	add  a                                           ; $6629: $87
	sub  a                                           ; $662a: $97
	adc  b                                           ; $662b: $88
	adc  b                                           ; $662c: $88
	adc  c                                           ; $662d: $89
	adc  b                                           ; $662e: $88
	adc  b                                           ; $662f: $88
	adc  c                                           ; $6630: $89
	ld   a, b                                        ; $6631: $78
	adc  b                                           ; $6632: $88
	sbc  b                                           ; $6633: $98
	ld   a, c                                        ; $6634: $79
	sbc  b                                           ; $6635: $98
	sub  a                                           ; $6636: $97
	sub  a                                           ; $6637: $97
	sbc  b                                           ; $6638: $98
	ld   a, b                                        ; $6639: $78
	adc  c                                           ; $663a: $89
	ld   a, b                                        ; $663b: $78
	sbc  b                                           ; $663c: $98
	sub  a                                           ; $663d: $97
	sbc  c                                           ; $663e: $99
	adc  b                                           ; $663f: $88
	sbc  c                                           ; $6640: $99
	ld   a, b                                        ; $6641: $78
	sub  a                                           ; $6642: $97
	adc  b                                           ; $6643: $88
	ld   a, c                                        ; $6644: $79
	ld   [hl], a                                     ; $6645: $77
	sub  a                                           ; $6646: $97
	adc  b                                           ; $6647: $88
	sbc  b                                           ; $6648: $98
	ld   a, b                                        ; $6649: $78
	sub  a                                           ; $664a: $97
	adc  b                                           ; $664b: $88
	ld   a, c                                        ; $664c: $79
	sub  a                                           ; $664d: $97
	sbc  b                                           ; $664e: $98
	adc  b                                           ; $664f: $88
	sbc  b                                           ; $6650: $98
	adc  b                                           ; $6651: $88
	ld   a, b                                        ; $6652: $78
	adc  b                                           ; $6653: $88
	sbc  b                                           ; $6654: $98
	sbc  b                                           ; $6655: $98
	ld   a, b                                        ; $6656: $78
	adc  b                                           ; $6657: $88
	add  a                                           ; $6658: $87
	adc  b                                           ; $6659: $88
	adc  b                                           ; $665a: $88
	adc  b                                           ; $665b: $88
	ld   a, b                                        ; $665c: $78
	sbc  b                                           ; $665d: $98
	add  [hl]                                        ; $665e: $86
	sbc  d                                           ; $665f: $9a
	ld   a, b                                        ; $6660: $78
	add  a                                           ; $6661: $87
	ld   a, b                                        ; $6662: $78
	sbc  b                                           ; $6663: $98
	sbc  b                                           ; $6664: $98
	sub  a                                           ; $6665: $97
	ld   [hl], a                                     ; $6666: $77
	ld   a, c                                        ; $6667: $79
	adc  b                                           ; $6668: $88
	adc  b                                           ; $6669: $88
	adc  c                                           ; $666a: $89
	ld   a, c                                        ; $666b: $79
	ld   [hl], a                                     ; $666c: $77
	sbc  b                                           ; $666d: $98
	adc  c                                           ; $666e: $89
	sbc  b                                           ; $666f: $98
	ld   a, b                                        ; $6670: $78
	sub  a                                           ; $6671: $97
	add  a                                           ; $6672: $87
	adc  c                                           ; $6673: $89
	sbc  b                                           ; $6674: $98
	adc  b                                           ; $6675: $88
	adc  c                                           ; $6676: $89
	adc  b                                           ; $6677: $88
	sbc  c                                           ; $6678: $99
	adc  c                                           ; $6679: $89
	sbc  b                                           ; $667a: $98
	add  a                                           ; $667b: $87
	add  a                                           ; $667c: $87
	sbc  c                                           ; $667d: $99
	ld   a, b                                        ; $667e: $78
	ld   l, c                                        ; $667f: $69
	add  a                                           ; $6680: $87
	adc  c                                           ; $6681: $89
	sub  a                                           ; $6682: $97
	adc  b                                           ; $6683: $88
	sub  a                                           ; $6684: $97
	sbc  b                                           ; $6685: $98
	adc  b                                           ; $6686: $88

Jump_0db_6687:
	ld   a, d                                        ; $6687: $7a
	ld   a, b                                        ; $6688: $78
	ld   a, b                                        ; $6689: $78
	sub  a                                           ; $668a: $97
	ld   a, b                                        ; $668b: $78
	and  a                                           ; $668c: $a7
	adc  b                                           ; $668d: $88
	adc  b                                           ; $668e: $88
	add  a                                           ; $668f: $87
	adc  b                                           ; $6690: $88
	ld   a, b                                        ; $6691: $78
	adc  c                                           ; $6692: $89
	ld   a, c                                        ; $6693: $79
	adc  b                                           ; $6694: $88
	add  a                                           ; $6695: $87
	sbc  b                                           ; $6696: $98
	adc  b                                           ; $6697: $88
	adc  b                                           ; $6698: $88
	adc  c                                           ; $6699: $89
	adc  c                                           ; $669a: $89
	add  a                                           ; $669b: $87
	add  a                                           ; $669c: $87
	ld   a, c                                        ; $669d: $79
	adc  c                                           ; $669e: $89
	ld   a, c                                        ; $669f: $79
	ld   a, b                                        ; $66a0: $78
	add  a                                           ; $66a1: $87
	sub  a                                           ; $66a2: $97
	add  a                                           ; $66a3: $87
	adc  b                                           ; $66a4: $88
	ld   a, b                                        ; $66a5: $78
	ld   l, c                                        ; $66a6: $69
	adc  b                                           ; $66a7: $88
	adc  b                                           ; $66a8: $88
	sbc  c                                           ; $66a9: $99
	adc  c                                           ; $66aa: $89
	adc  c                                           ; $66ab: $89
	add  a                                           ; $66ac: $87
	adc  b                                           ; $66ad: $88
	ld   [hl], a                                     ; $66ae: $77
	ld   a, b                                        ; $66af: $78
	ld   a, b                                        ; $66b0: $78
	sbc  b                                           ; $66b1: $98
	sbc  b                                           ; $66b2: $98
	ld   a, b                                        ; $66b3: $78
	adc  b                                           ; $66b4: $88
	ld   a, c                                        ; $66b5: $79
	adc  b                                           ; $66b6: $88
	sbc  c                                           ; $66b7: $99
	adc  b                                           ; $66b8: $88
	add  a                                           ; $66b9: $87
	sbc  b                                           ; $66ba: $98
	ld   [hl], a                                     ; $66bb: $77
	adc  b                                           ; $66bc: $88
	ld   a, b                                        ; $66bd: $78
	adc  b                                           ; $66be: $88
	adc  b                                           ; $66bf: $88
	ld   a, b                                        ; $66c0: $78
	add  a                                           ; $66c1: $87
	adc  c                                           ; $66c2: $89
	sbc  b                                           ; $66c3: $98
	ld   a, d                                        ; $66c4: $7a
	ld   a, b                                        ; $66c5: $78
	sub  a                                           ; $66c6: $97
	sbc  b                                           ; $66c7: $98
	add  a                                           ; $66c8: $87
	sub  a                                           ; $66c9: $97
	ld   a, c                                        ; $66ca: $79
	ld   [hl], a                                     ; $66cb: $77
	adc  b                                           ; $66cc: $88
	sub  a                                           ; $66cd: $97
	adc  d                                           ; $66ce: $8a
	sbc  b                                           ; $66cf: $98
	ld   l, c                                        ; $66d0: $69
	sub  a                                           ; $66d1: $97
	add  a                                           ; $66d2: $87
	sub  a                                           ; $66d3: $97
	ld   a, b                                        ; $66d4: $78
	ld   a, c                                        ; $66d5: $79
	ld   l, b                                        ; $66d6: $68
	ld   a, c                                        ; $66d7: $79
	add  a                                           ; $66d8: $87
	sbc  b                                           ; $66d9: $98
	add  a                                           ; $66da: $87
	sbc  b                                           ; $66db: $98
	adc  b                                           ; $66dc: $88
	adc  c                                           ; $66dd: $89
	ld   a, b                                        ; $66de: $78
	ld   a, b                                        ; $66df: $78
	sub  a                                           ; $66e0: $97
	xor  c                                           ; $66e1: $a9
	add  a                                           ; $66e2: $87
	sbc  c                                           ; $66e3: $99
	ld   a, b                                        ; $66e4: $78
	adc  b                                           ; $66e5: $88
	sub  a                                           ; $66e6: $97
	adc  b                                           ; $66e7: $88
	add  [hl]                                        ; $66e8: $86
	ld   a, b                                        ; $66e9: $78
	adc  b                                           ; $66ea: $88
	ld   [hl], a                                     ; $66eb: $77
	add  a                                           ; $66ec: $87
	adc  b                                           ; $66ed: $88
	sbc  b                                           ; $66ee: $98
	ld   a, c                                        ; $66ef: $79
	add  a                                           ; $66f0: $87
	add  a                                           ; $66f1: $87
	add  a                                           ; $66f2: $87
	adc  b                                           ; $66f3: $88
	ld   a, c                                        ; $66f4: $79
	ld   a, b                                        ; $66f5: $78
	adc  b                                           ; $66f6: $88
	sbc  b                                           ; $66f7: $98
	sbc  b                                           ; $66f8: $98
	adc  b                                           ; $66f9: $88
	ld   a, b                                        ; $66fa: $78
	ld   a, b                                        ; $66fb: $78
	adc  b                                           ; $66fc: $88
	sbc  b                                           ; $66fd: $98
	sbc  b                                           ; $66fe: $98
	adc  c                                           ; $66ff: $89
	adc  c                                           ; $6700: $89
	adc  c                                           ; $6701: $89
	ld   a, d                                        ; $6702: $7a
	ld   [hl], a                                     ; $6703: $77
	add  [hl]                                        ; $6704: $86
	sub  a                                           ; $6705: $97
	add  a                                           ; $6706: $87
	ld   a, c                                        ; $6707: $79
	ld   l, b                                        ; $6708: $68
	adc  b                                           ; $6709: $88
	sub  a                                           ; $670a: $97
	sbc  c                                           ; $670b: $99
	sbc  c                                           ; $670c: $99
	sbc  d                                           ; $670d: $9a
	xor  c                                           ; $670e: $a9
	adc  c                                           ; $670f: $89
	add  a                                           ; $6710: $87
	ld   h, [hl]                                     ; $6711: $66
	ld   [hl], l                                     ; $6712: $75
	ld   h, l                                        ; $6713: $65
	ld   d, a                                        ; $6714: $57
	ld   d, l                                        ; $6715: $55
	ld   l, b                                        ; $6716: $68
	adc  b                                           ; $6717: $88
	cp   d                                           ; $6718: $ba
	cp   l                                           ; $6719: $bd
	cp   h                                           ; $671a: $bc
	call c, $95ab                                    ; $671b: $dc $ab $95
	ld   [hl], a                                     ; $671e: $77
	ld   [hl], c                                     ; $671f: $71
	ld   d, $11                                      ; $6720: $16 $11
	dec  d                                           ; $6722: $15
	ld   h, e                                        ; $6723: $63
	xor  h                                           ; $6724: $ac
	rst  $38                                         ; $6725: $ff
	rst  $28                                         ; $6726: $ef
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	ld   sp, hl                                      ; $6729: $f9
	ld   [hl], l                                     ; $672a: $75
	ld   e, e                                        ; $672b: $5b
	ld   de, $1171                                   ; $672c: $11 $71 $11
	ld   [hl], $17                                   ; $672f: $36 $17
	call z, $fffd                                    ; $6731: $cc $fd $ff
	rst  $38                                         ; $6734: $ff
	rst  $38                                         ; $6735: $ff
	ret                                              ; $6736: $c9


	and  [hl]                                        ; $6737: $a6
	ld   [de], a                                     ; $6738: $12
	sub  c                                           ; $6739: $91
	add  hl, de                                      ; $673a: $19
	ld   de, $2113                                   ; $673b: $11 $13 $21
	db   $db                                         ; $673e: $db
	rst  JumpTable                                         ; $673f: $df
	rst  $38                                         ; $6740: $ff
	rst  $38                                         ; $6741: $ff
	rst  $38                                         ; $6742: $ff
	ld   hl, sp-$78                                  ; $6743: $f8 $88
	ld   de, $1681                                   ; $6745: $11 $81 $16
	ld   de, $4112                                   ; $6748: $11 $12 $41
	cp   a                                           ; $674b: $bf
	cp   a                                           ; $674c: $bf
	rst  $38                                         ; $674d: $ff
	rst  $38                                         ; $674e: $ff
	rst  $38                                         ; $674f: $ff
	ld   a, [$1189]                                  ; $6750: $fa $89 $11
	ld   h, c                                        ; $6753: $61
	ld   [de], a                                     ; $6754: $12
	ld   hl, $4111                                   ; $6755: $21 $11 $41
	sbc  a                                           ; $6758: $9f
	adc  a                                           ; $6759: $8f
	rst  $38                                         ; $675a: $ff
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	db   $fd                                         ; $675d: $fd
	ld   a, e                                        ; $675e: $7b
	ld   de, $1152                                   ; $675f: $11 $52 $11
	ld   hl, $4111                                   ; $6762: $21 $11 $41
	ld   l, a                                        ; $6765: $6f
	ld   l, a                                        ; $6766: $6f
	rst  $38                                         ; $6767: $ff
	rst  $38                                         ; $6768: $ff
	rst  $38                                         ; $6769: $ff
	rst  $38                                         ; $676a: $ff
	adc  h                                           ; $676b: $8c
	ld   sp, $1125                                   ; $676c: $31 $25 $11
	ld   h, c                                        ; $676f: $61
	ld   de, $1f41                                   ; $6770: $11 $41 $1f
	sbc  a                                           ; $6773: $9f
	rst  $38                                         ; $6774: $ff
	rst  $38                                         ; $6775: $ff
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	ld   a, l                                        ; $6778: $7d
	ld   h, c                                        ; $6779: $61
	rla                                              ; $677a: $17
	ld   de, $1171                                   ; $677b: $11 $71 $11
	ld   hl, $db1f                                   ; $677e: $21 $1f $db
	rst  $38                                         ; $6781: $ff
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	rst  $38                                         ; $6784: $ff
	sbc  [hl]                                        ; $6785: $9e
	sub  c                                           ; $6786: $91
	add  hl, de                                      ; $6787: $19
	ld   de, $1151                                   ; $6788: $11 $51 $11
	ld   de, $f81e                                   ; $678b: $11 $1e $f8
	rst  $38                                         ; $678e: $ff
	rst  $38                                         ; $678f: $ff
	rst  $38                                         ; $6790: $ff
	rst  $38                                         ; $6791: $ff
	call z, $14c1                                    ; $6792: $cc $c1 $14
	ld   hl, $1114                                   ; $6795: $21 $14 $11
	ld   [de], a                                     ; $6798: $12

Jump_0db_6799:
	ld   de, $fff7                                   ; $6799: $11 $f7 $ff
	rst  $38                                         ; $679c: $ff
	rst  $38                                         ; $679d: $ff
	rst  $38                                         ; $679e: $ff
	ld   a, [$11f5]                                  ; $679f: $fa $f5 $11
	sub  c                                           ; $67a2: $91
	ld   a, [de]                                     ; $67a3: $1a
	ld   de, $1111                                   ; $67a4: $11 $11 $11
	rst  $38                                         ; $67a7: $ff
	ld   a, a                                        ; $67a8: $7f
	rst  $38                                         ; $67a9: $ff
	rst  $38                                         ; $67aa: $ff
	rst  $38                                         ; $67ab: $ff
	db   $fc                                         ; $67ac: $fc
	db   $fd                                         ; $67ad: $fd
	ld   de, $1125                                   ; $67ae: $11 $25 $11
	sub  c                                           ; $67b1: $91
	ld   de, $1f31                                   ; $67b2: $11 $31 $1f
	xor  [hl]                                        ; $67b5: $ae
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	rst  $38                                         ; $67b8: $ff
	rst  $38                                         ; $67b9: $ff
	xor  a                                           ; $67ba: $af
	ld   h, c                                        ; $67bb: $61
	ld   d, $11                                      ; $67bc: $16 $11
	ld   d, c                                        ; $67be: $51
	ld   de, $1812                                   ; $67bf: $11 $12 $18
	rst  $30                                         ; $67c2: $f7
	rst  $38                                         ; $67c3: $ff
	rst  $38                                         ; $67c4: $ff
	rst  $38                                         ; $67c5: $ff
	rst  $38                                         ; $67c6: $ff
	xor  $f1                                         ; $67c7: $ee $f1
	ld   de, $1b61                                   ; $67c9: $11 $61 $1b
	ld   de, $1113                                   ; $67cc: $11 $13 $11
	rst  $38                                         ; $67cf: $ff
	sbc  a                                           ; $67d0: $9f
	rst  $38                                         ; $67d1: $ff
	rst  $38                                         ; $67d2: $ff
	rst  $38                                         ; $67d3: $ff
	ei                                               ; $67d4: $fb
	ld   a, [$2111]                                  ; $67d5: $fa $11 $21
	ld   de, $1181                                   ; $67d8: $11 $81 $11
	ld   b, c                                        ; $67db: $41
	rra                                              ; $67dc: $1f
	cp   a                                           ; $67dd: $bf
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
	rst  $38                                         ; $67e0: $ff
	rst  $38                                         ; $67e1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67e2: $cf
	ld   sp, $1114                                   ; $67e3: $31 $14 $11
	ld   d, c                                        ; $67e6: $51
	ld   de, $1623                                   ; $67e7: $11 $23 $16
	rst  $30                                         ; $67ea: $f7
	rst  $38                                         ; $67eb: $ff
	rst  $38                                         ; $67ec: $ff
	rst  $38                                         ; $67ed: $ff
	rst  $38                                         ; $67ee: $ff
	rst  $28                                         ; $67ef: $ef
	pop  af                                          ; $67f0: $f1
	ld   de, $1931                                   ; $67f1: $11 $31 $19
	ld   de, $2112                                   ; $67f4: $11 $12 $21
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67f7: $cf
	ld   l, a                                        ; $67f8: $6f
	rst  $38                                         ; $67f9: $ff
	rst  $38                                         ; $67fa: $ff
	rst  $38                                         ; $67fb: $ff
	cp   $ff                                         ; $67fc: $fe $ff
	ld   [de], a                                     ; $67fe: $12
	inc  de                                          ; $67ff: $13
	ld   de, $1191                                   ; $6800: $11 $91 $11
	ld   sp, $f51e                                   ; $6803: $31 $1e $f5
	rst  $38                                         ; $6806: $ff
	rst  $38                                         ; $6807: $ff
	rst  $38                                         ; $6808: $ff
	rst  $38                                         ; $6809: $ff
	rst  $28                                         ; $680a: $ef
	pop  hl                                          ; $680b: $e1
	ld   sp, $1811                                   ; $680c: $31 $11 $18
	ld   de, $1113                                   ; $680f: $11 $13 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6812: $cf
	ld   c, a                                        ; $6813: $4f
	rst  $38                                         ; $6814: $ff
	rst  $38                                         ; $6815: $ff
	rst  $38                                         ; $6816: $ff
	rst  $38                                         ; $6817: $ff
	rst  $38                                         ; $6818: $ff
	dec  d                                           ; $6819: $15
	ld   de, $1111                                   ; $681a: $11 $11 $11
	ld   de, $1431                                   ; $681d: $11 $31 $14
	or   $ff                                         ; $6820: $f6 $ff
	rst  $38                                         ; $6822: $ff
	rst  $38                                         ; $6823: $ff
	rst  $38                                         ; $6824: $ff
	rst  $38                                         ; $6825: $ff
	pop  af                                          ; $6826: $f1
	ld   b, d                                        ; $6827: $42
	ld   de, $4111                                   ; $6828: $11 $11 $41
	ld   de, $1f11                                   ; $682b: $11 $11 $1f
	rst  ToBoot                                         ; $682e: $c7
	rst  $38                                         ; $682f: $ff
	rst  $38                                         ; $6830: $ff
	rst  $38                                         ; $6831: $ff
	rst  $38                                         ; $6832: $ff
	rst  $38                                         ; $6833: $ff
	ld   [hl], c                                     ; $6834: $71
	add  c                                           ; $6835: $81
	ld   de, $1111                                   ; $6836: $11 $11 $11
	ld   de, $9f11                                   ; $6839: $11 $11 $9f
	ld   e, a                                        ; $683c: $5f
	rst  $38                                         ; $683d: $ff
	rst  $38                                         ; $683e: $ff
	rst  $38                                         ; $683f: $ff
	rst  $38                                         ; $6840: $ff
	rst  $38                                         ; $6841: $ff
	rla                                              ; $6842: $17
	ld   bc, $1111                                   ; $6843: $01 $11 $11
	ld   de, $1111                                   ; $6846: $11 $11 $11
	cp   $9f                                         ; $6849: $fe $9f
	rst  $38                                         ; $684b: $ff
	rst  $38                                         ; $684c: $ff
	rst  $38                                         ; $684d: $ff
	rst  $38                                         ; $684e: $ff
	ei                                               ; $684f: $fb
	jr   z, @+$13                                    ; $6850: $28 $11

	ld   de, $1111                                   ; $6852: $11 $11 $11
	ld   de, $fb11                                   ; $6855: $11 $11 $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6858: $cf
	rst  $38                                         ; $6859: $ff
	rst  $38                                         ; $685a: $ff
	rst  $38                                         ; $685b: $ff
	rst  $38                                         ; $685c: $ff
	rst  $30                                         ; $685d: $f7
	ld   b, a                                        ; $685e: $47
	ld   de, $1211                                   ; $685f: $11 $11 $12
	ld   de, $1311                                   ; $6862: $11 $11 $13
	ld   hl, sp-$11                                  ; $6865: $f8 $ef
	rst  $38                                         ; $6867: $ff
	rst  $38                                         ; $6868: $ff
	rst  $38                                         ; $6869: $ff
	rst  $38                                         ; $686a: $ff
	push af                                          ; $686b: $f5
	ld   h, [hl]                                     ; $686c: $66
	ld   de, $1111                                   ; $686d: $11 $11 $11
	ld   de, $1411                                   ; $6870: $11 $11 $14
	ld   hl, sp-$01                                  ; $6873: $f8 $ff
	rst  $38                                         ; $6875: $ff
	rst  $38                                         ; $6876: $ff
	rst  $38                                         ; $6877: $ff
	rst  $38                                         ; $6878: $ff
	push af                                          ; $6879: $f5
	add  [hl]                                        ; $687a: $86
	ld   de, $1211                                   ; $687b: $11 $11 $12
	ld   de, $1421                                   ; $687e: $11 $21 $14
	ld   sp, hl                                      ; $6881: $f9
	rst  $38                                         ; $6882: $ff
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	rst  $38                                         ; $6886: $ff
	or   $86                                         ; $6887: $f6 $86
	ld   de, $1311                                   ; $6889: $11 $11 $13
	ld   de, $1311                                   ; $688c: $11 $11 $13
	jp   hl                                          ; $688f: $e9


	rst  $28                                         ; $6890: $ef
	rst  $38                                         ; $6891: $ff
	rst  $38                                         ; $6892: $ff
	rst  $38                                         ; $6893: $ff
	rst  $38                                         ; $6894: $ff
	ld   hl, sp-$77                                  ; $6895: $f8 $89

Jump_0db_6897:
	ld   de, $1321                                   ; $6897: $11 $21 $13
	ld   de, $1111                                   ; $689a: $11 $11 $11
	jp   z, $ffbf                                    ; $689d: $ca $bf $ff

	rst  $38                                         ; $68a0: $ff
	rst  $38                                         ; $68a1: $ff
	rst  $38                                         ; $68a2: $ff
	db   $fc                                         ; $68a3: $fc
	ld   a, h                                        ; $68a4: $7c
	ld   de, $1121                                   ; $68a5: $11 $21 $11
	ld   de, $1111                                   ; $68a8: $11 $11 $11
	ld   a, e                                        ; $68ab: $7b
	sbc  a                                           ; $68ac: $9f
	rst  $38                                         ; $68ad: $ff
	rst  $38                                         ; $68ae: $ff
	rst  $38                                         ; $68af: $ff
	rst  $38                                         ; $68b0: $ff
	rst  $38                                         ; $68b1: $ff
	ld   a, h                                        ; $68b2: $7c
	ld   b, c                                        ; $68b3: $41
	ld   de, $3111                                   ; $68b4: $11 $11 $31
	ld   de, $2b11                                   ; $68b7: $11 $11 $2b
	sbc  l                                           ; $68ba: $9d
	rst  $38                                         ; $68bb: $ff
	rst  $38                                         ; $68bc: $ff
	rst  $38                                         ; $68bd: $ff
	rst  $38                                         ; $68be: $ff
	rst  $38                                         ; $68bf: $ff
	cp   d                                           ; $68c0: $ba
	and  c                                           ; $68c1: $a1
	ld   de, $1111                                   ; $68c2: $11 $11 $11
	ld   de, $1611                                   ; $68c5: $11 $11 $16
	xor  b                                           ; $68c8: $a8
	rst  $38                                         ; $68c9: $ff
	rst  $38                                         ; $68ca: $ff
	rst  $38                                         ; $68cb: $ff
	rst  $38                                         ; $68cc: $ff
	rst  $38                                         ; $68cd: $ff
	ld   sp, hl                                      ; $68ce: $f9
	sub  $11                                         ; $68cf: $d6 $11
	ld   sp, $1114                                   ; $68d1: $31 $14 $11
	ld   de, $8811                                   ; $68d4: $11 $11 $88
	xor  a                                           ; $68d7: $af
	rst  $28                                         ; $68d8: $ef
	rst  $38                                         ; $68d9: $ff
	rst  $38                                         ; $68da: $ff
	rst  $38                                         ; $68db: $ff
	cp   $ab                                         ; $68dc: $fe $ab
	ld   d, d                                        ; $68de: $52
	inc  d                                           ; $68df: $14
	ld   de, $1121                                   ; $68e0: $11 $21 $11
	ld   de, $6b19                                   ; $68e3: $11 $19 $6b
	cp   $ff                                         ; $68e6: $fe $ff
	rst  $38                                         ; $68e8: $ff
	rst  $38                                         ; $68e9: $ff
	rst  $38                                         ; $68ea: $ff
	db   $db                                         ; $68eb: $db
	or   [hl]                                        ; $68ec: $b6
	ld   [hl-], a                                    ; $68ed: $32
	ld   b, c                                        ; $68ee: $41
	ld   de, $1111                                   ; $68ef: $11 $11 $11
	ld   de, $bd95                                   ; $68f2: $11 $95 $bd
	rst  $28                                         ; $68f5: $ef
	rst  $38                                         ; $68f6: $ff
	rst  $38                                         ; $68f7: $ff
	rst  $38                                         ; $68f8: $ff
	db   $fd                                         ; $68f9: $fd
	bit  6, h                                        ; $68fa: $cb $74
	inc  [hl]                                        ; $68fc: $34
	ld   de, $1111                                   ; $68fd: $11 $11 $11
	ld   de, $5a17                                   ; $6900: $11 $17 $5a
	call $ffff                                       ; $6903: $cd $ff $ff
	rst  $38                                         ; $6906: $ff
	rst  $38                                         ; $6907: $ff
	xor  $c9                                         ; $6908: $ee $c9
	ld   [hl], h                                     ; $690a: $74
	ld   d, c                                        ; $690b: $51
	ld   de, $1111                                   ; $690c: $11 $11 $11
	ld   de, $9b54                                   ; $690f: $11 $54 $9b
	xor  a                                           ; $6912: $af
	rst  $38                                         ; $6913: $ff
	rst  $38                                         ; $6914: $ff
	rst  $38                                         ; $6915: $ff
	rst  $38                                         ; $6916: $ff
	cp   $b9                                         ; $6917: $fe $b9
	ld   h, l                                        ; $6919: $65
	ld   sp, $1111                                   ; $691a: $31 $11 $11
	ld   de, $3612                                   ; $691d: $11 $12 $36
	sbc  d                                           ; $6920: $9a
	rst  $28                                         ; $6921: $ef
	rst  $38                                         ; $6922: $ff
	rst  $38                                         ; $6923: $ff
	rst  $38                                         ; $6924: $ff
	rst  $38                                         ; $6925: $ff
	db   $fd                                         ; $6926: $fd
	xor  c                                           ; $6927: $a9
	ld   d, h                                        ; $6928: $54
	ld   sp, $1111                                   ; $6929: $31 $11 $11
	ld   de, $4712                                   ; $692c: $11 $12 $47
	sbc  h                                           ; $692f: $9c
	rst  $38                                         ; $6930: $ff
	rst  $38                                         ; $6931: $ff
	rst  $38                                         ; $6932: $ff
	rst  $38                                         ; $6933: $ff
	rst  $38                                         ; $6934: $ff
	db   $eb                                         ; $6935: $eb
	sub  a                                           ; $6936: $97
	ld   d, e                                        ; $6937: $53
	ld   hl, $1111                                   ; $6938: $21 $11 $11
	ld   de, $6913                                   ; $693b: $11 $13 $69
	sbc  l                                           ; $693e: $9d
	rst  $38                                         ; $693f: $ff
	rst  $38                                         ; $6940: $ff
	rst  $38                                         ; $6941: $ff
	rst  $38                                         ; $6942: $ff
	rst  $38                                         ; $6943: $ff
	jp   c, Jump_0db_4396                            ; $6944: $da $96 $43

	ld   hl, $1111                                   ; $6947: $21 $11 $11
	ld   de, $7824                                   ; $694a: $11 $24 $78
	cp   a                                           ; $694d: $bf
	rst  $38                                         ; $694e: $ff
	rst  $38                                         ; $694f: $ff
	rst  $38                                         ; $6950: $ff
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	cp   e                                           ; $6953: $bb
	sub  l                                           ; $6954: $95
	ld   b, e                                        ; $6955: $43
	ld   de, $1111                                   ; $6956: $11 $11 $11
	ld   de, $8925                                   ; $6959: $11 $25 $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $695c: $cf
	rst  $38                                         ; $695d: $ff
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	rst  $38                                         ; $6960: $ff
	db   $fd                                         ; $6961: $fd
	cp   d                                           ; $6962: $ba
	add  l                                           ; $6963: $85
	ld   b, e                                        ; $6964: $43
	ld   de, $1111                                   ; $6965: $11 $11 $11
	ld   de, $7a36                                   ; $6968: $11 $36 $7a
	rst  JumpTable                                         ; $696b: $df
	rst  $28                                         ; $696c: $ef
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	rst  $38                                         ; $696f: $ff
	cp   $ba                                         ; $6970: $fe $ba
	ld   [hl], l                                     ; $6972: $75
	ld   b, e                                        ; $6973: $43
	ld   de, $1111                                   ; $6974: $11 $11 $11
	ld   de, $7936                                   ; $6977: $11 $36 $79
	rst  JumpTable                                         ; $697a: $df
	rst  $28                                         ; $697b: $ef
	rst  $38                                         ; $697c: $ff
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	db   $fd                                         ; $697f: $fd
	jp   z, Jump_0db_4375                            ; $6980: $ca $75 $43

	ld   de, $1111                                   ; $6983: $11 $11 $11
	ld   de, $7a46                                   ; $6986: $11 $46 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6989: $cf
	rst  $38                                         ; $698a: $ff
	rst  $38                                         ; $698b: $ff
	rst  $38                                         ; $698c: $ff
	rst  $38                                         ; $698d: $ff
	db   $fd                                         ; $698e: $fd
	cp   e                                           ; $698f: $bb
	ld   [hl], l                                     ; $6990: $75
	ld   b, e                                        ; $6991: $43
	ld   de, $1111                                   ; $6992: $11 $11 $11

Call_0db_6995:
	ld   de, $7a35                                   ; $6995: $11 $35 $7a
	sbc  $ff                                         ; $6998: $de $ff
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	rst  $38                                         ; $699c: $ff
	cp   $cb                                         ; $699d: $fe $cb
	add  l                                           ; $699f: $85
	ld   b, e                                        ; $69a0: $43
	ld   de, $1111                                   ; $69a1: $11 $11 $11
	ld   de, $7a35                                   ; $69a4: $11 $35 $7a
	sbc  $ef                                         ; $69a7: $de $ef
	rst  $38                                         ; $69a9: $ff
	rst  $38                                         ; $69aa: $ff
	rst  $38                                         ; $69ab: $ff
	db   $fd                                         ; $69ac: $fd
	jp   z, Jump_0db_5486                            ; $69ad: $ca $86 $54

	ld   de, $1111                                   ; $69b0: $11 $11 $11
	ld   de, $6a35                                   ; $69b3: $11 $35 $6a
	call $ffff                                       ; $69b6: $cd $ff $ff
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	rst  $38                                         ; $69bb: $ff
	db   $db                                         ; $69bc: $db
	sub  [hl]                                        ; $69bd: $96
	ld   d, h                                        ; $69be: $54
	ld   hl, $1111                                   ; $69bf: $21 $11 $11
	ld   de, $6824                                   ; $69c2: $11 $24 $68
	adc  $ef                                         ; $69c5: $ce $ef
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	db   $db                                         ; $69cb: $db
	and  a                                           ; $69cc: $a7
	ld   d, h                                        ; $69cd: $54
	ld   hl, $1111                                   ; $69ce: $21 $11 $11
	ld   de, $5824                                   ; $69d1: $11 $24 $58
	cp   l                                           ; $69d4: $bd
	rst  $28                                         ; $69d5: $ef
	rst  $38                                         ; $69d6: $ff
	rst  $38                                         ; $69d7: $ff
	rst  $38                                         ; $69d8: $ff
	rst  $38                                         ; $69d9: $ff
	db   $ec                                         ; $69da: $ec
	xor  b                                           ; $69db: $a8
	ld   h, h                                        ; $69dc: $64
	ld   sp, $1111                                   ; $69dd: $31 $11 $11
	ld   de, $4713                                   ; $69e0: $11 $13 $47
	xor  l                                           ; $69e3: $ad
	xor  $ff                                         ; $69e4: $ee $ff
	rst  $38                                         ; $69e6: $ff
	rst  $38                                         ; $69e7: $ff
	rst  $38                                         ; $69e8: $ff
	db   $fc                                         ; $69e9: $fc
	jp   z, Jump_0db_4165                            ; $69ea: $ca $65 $41

	ld   de, $1111                                   ; $69ed: $11 $11 $11
	ld   [de], a                                     ; $69f0: $12
	ld   b, l                                        ; $69f1: $45
	sbc  e                                           ; $69f2: $9b
	sbc  $ff                                         ; $69f3: $de $ff
	rst  $38                                         ; $69f5: $ff
	rst  $38                                         ; $69f6: $ff
	rst  $38                                         ; $69f7: $ff
	cp   $cb                                         ; $69f8: $fe $cb
	add  l                                           ; $69fa: $85
	ld   b, e                                        ; $69fb: $43
	ld   de, $1111                                   ; $69fc: $11 $11 $11
	ld   de, $7a34                                   ; $69ff: $11 $34 $7a
	sbc  $ef                                         ; $6a02: $de $ef
	rst  $38                                         ; $6a04: $ff
	rst  $38                                         ; $6a05: $ff
	rst  $38                                         ; $6a06: $ff
	cp   $cc                                         ; $6a07: $fe $cc
	sub  [hl]                                        ; $6a09: $96
	ld   d, h                                        ; $6a0a: $54
	ld   de, $1111                                   ; $6a0b: $11 $11 $11
	ld   de, $6a34                                   ; $6a0e: $11 $34 $6a
	cp   h                                           ; $6a11: $bc
	rst  $28                                         ; $6a12: $ef
	rst  $38                                         ; $6a13: $ff
	rst  $38                                         ; $6a14: $ff
	rst  $38                                         ; $6a15: $ff
	rst  $38                                         ; $6a16: $ff
	db   $ec                                         ; $6a17: $ec
	xor  b                                           ; $6a18: $a8
	ld   d, h                                        ; $6a19: $54
	ld   sp, $1111                                   ; $6a1a: $31 $11 $11
	ld   de, $4713                                   ; $6a1d: $11 $13 $47
	cp   l                                           ; $6a20: $bd
	rst  JumpTable                                         ; $6a21: $df
	rst  $38                                         ; $6a22: $ff
	rst  $38                                         ; $6a23: $ff
	rst  $38                                         ; $6a24: $ff
	rst  $38                                         ; $6a25: $ff
	db   $fd                                         ; $6a26: $fd
	cp   d                                           ; $6a27: $ba
	ld   [hl], l                                     ; $6a28: $75
	ld   b, c                                        ; $6a29: $41
	ld   de, $1111                                   ; $6a2a: $11 $11 $11
	ld   [de], a                                     ; $6a2d: $12
	ld   b, l                                        ; $6a2e: $45
	sbc  e                                           ; $6a2f: $9b
	call $ffff                                       ; $6a30: $cd $ff $ff
	rst  $38                                         ; $6a33: $ff
	rst  $38                                         ; $6a34: $ff
	cp   $cb                                         ; $6a35: $fe $cb
	sub  [hl]                                        ; $6a37: $96
	ld   d, e                                        ; $6a38: $53
	ld   de, $1111                                   ; $6a39: $11 $11 $11
	ld   de, $7b34                                   ; $6a3c: $11 $34 $7b
	call z, $ffff                                    ; $6a3f: $cc $ff $ff
	rst  $38                                         ; $6a42: $ff
	rst  $38                                         ; $6a43: $ff
	rst  $38                                         ; $6a44: $ff
	db   $ec                                         ; $6a45: $ec
	xor  b                                           ; $6a46: $a8
	ld   d, h                                        ; $6a47: $54
	ld   hl, $1111                                   ; $6a48: $21 $11 $11
	ld   de, $5823                                   ; $6a4b: $11 $23 $58
	cp   h                                           ; $6a4e: $bc
	rst  JumpTable                                         ; $6a4f: $df
	rst  $38                                         ; $6a50: $ff
	rst  $38                                         ; $6a51: $ff
	rst  $38                                         ; $6a52: $ff
	rst  $38                                         ; $6a53: $ff
	db   $fd                                         ; $6a54: $fd
	cp   d                                           ; $6a55: $ba
	ld   [hl], l                                     ; $6a56: $75
	ld   b, c                                        ; $6a57: $41
	ld   de, $1111                                   ; $6a58: $11 $11 $11
	ld   [de], a                                     ; $6a5b: $12
	ld   b, l                                        ; $6a5c: $45
	sbc  e                                           ; $6a5d: $9b
	call $ffff                                       ; $6a5e: $cd $ff $ff
	rst  $38                                         ; $6a61: $ff
	rst  $38                                         ; $6a62: $ff
	cp   $db                                         ; $6a63: $fe $db
	sub  [hl]                                        ; $6a65: $96
	ld   d, e                                        ; $6a66: $53
	ld   de, $1111                                   ; $6a67: $11 $11 $11
	ld   de, $7a34                                   ; $6a6a: $11 $34 $7a
	call z, $ffef                                    ; $6a6d: $cc $ef $ff
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	call c, Call_0db_54a7                            ; $6a73: $dc $a7 $54
	ld   hl, $1111                                   ; $6a76: $21 $11 $11
	ld   de, $5824                                   ; $6a79: $11 $24 $58
	cp   l                                           ; $6a7c: $bd
	sbc  $ff                                         ; $6a7d: $de $ff
	rst  $38                                         ; $6a7f: $ff
	rst  $38                                         ; $6a80: $ff
	rst  $38                                         ; $6a81: $ff
	db   $fd                                         ; $6a82: $fd
	cp   c                                           ; $6a83: $b9
	ld   [hl], l                                     ; $6a84: $75
	ld   b, c                                        ; $6a85: $41
	ld   de, $1111                                   ; $6a86: $11 $11 $11
	ld   [de], a                                     ; $6a89: $12
	ld   b, [hl]                                     ; $6a8a: $46
	sbc  h                                           ; $6a8b: $9c
	adc  $ff                                         ; $6a8c: $ce $ff
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	rst  $38                                         ; $6a90: $ff
	cp   $db                                         ; $6a91: $fe $db
	sub  [hl]                                        ; $6a93: $96
	ld   d, e                                        ; $6a94: $53
	ld   de, $1111                                   ; $6a95: $11 $11 $11
	ld   de, $7935                                   ; $6a98: $11 $35 $79
	call $ffef                                       ; $6a9b: $cd $ef $ff
	rst  $38                                         ; $6a9e: $ff
	rst  $38                                         ; $6a9f: $ff
	cp   $ec                                         ; $6aa0: $fe $ec
	and  a                                           ; $6aa2: $a7
	ld   h, l                                        ; $6aa3: $65
	ld   hl, $1111                                   ; $6aa4: $21 $11 $11
	ld   de, $5714                                   ; $6aa7: $11 $14 $57
	cp   l                                           ; $6aaa: $bd
	rst  $28                                         ; $6aab: $ef
	rst  $38                                         ; $6aac: $ff
	rst  $38                                         ; $6aad: $ff
	rst  $38                                         ; $6aae: $ff
	rst  $38                                         ; $6aaf: $ff
	xor  $c9                                         ; $6ab0: $ee $c9
	halt                                             ; $6ab2: $76
	ld   b, c                                        ; $6ab3: $41
	ld   de, $1111                                   ; $6ab4: $11 $11 $11
	ld   [de], a                                     ; $6ab7: $12
	ld   b, [hl]                                     ; $6ab8: $46
	adc  h                                           ; $6ab9: $8c
	sbc  $ff                                         ; $6aba: $de $ff
	rst  $38                                         ; $6abc: $ff
	rst  $38                                         ; $6abd: $ff
	rst  $38                                         ; $6abe: $ff
	db   $fd                                         ; $6abf: $fd
	db   $db                                         ; $6ac0: $db
	add  [hl]                                        ; $6ac1: $86
	ld   d, e                                        ; $6ac2: $53
	ld   de, $1111                                   ; $6ac3: $11 $11 $11
	ld   de, $7a35                                   ; $6ac6: $11 $35 $7a
	call $ffef                                       ; $6ac9: $cd $ef $ff
	rst  $38                                         ; $6acc: $ff
	rst  $38                                         ; $6acd: $ff
	cp   $ec                                         ; $6ace: $fe $ec
	and  a                                           ; $6ad0: $a7
	ld   h, l                                        ; $6ad1: $65
	ld   hl, $1111                                   ; $6ad2: $21 $11 $11
	ld   de, $6714                                   ; $6ad5: $11 $14 $67
	xor  h                                           ; $6ad8: $ac
	xor  $ff                                         ; $6ad9: $ee $ff
	rst  $38                                         ; $6adb: $ff
	rst  $38                                         ; $6adc: $ff
	rst  $38                                         ; $6add: $ff
	db   $ed                                         ; $6ade: $ed
	ret                                              ; $6adf: $c9


	halt                                             ; $6ae0: $76
	ld   b, c                                        ; $6ae1: $41
	ld   de, $1111                                   ; $6ae2: $11 $11 $11
	ld   [de], a                                     ; $6ae5: $12
	ld   b, [hl]                                     ; $6ae6: $46
	adc  e                                           ; $6ae7: $8b
	db   $dd                                         ; $6ae8: $dd
	rst  $28                                         ; $6ae9: $ef
	rst  $38                                         ; $6aea: $ff
	rst  $38                                         ; $6aeb: $ff
	rst  $38                                         ; $6aec: $ff
	db   $fd                                         ; $6aed: $fd
	db   $db                                         ; $6aee: $db
	sub  [hl]                                        ; $6aef: $96
	ld   d, e                                        ; $6af0: $53
	ld   de, $1111                                   ; $6af1: $11 $11 $11
	ld   de, $8924                                   ; $6af4: $11 $24 $89
	adc  $ef                                         ; $6af7: $ce $ef
	rst  $38                                         ; $6af9: $ff
	rst  $38                                         ; $6afa: $ff
	rst  $38                                         ; $6afb: $ff
	cp   $eb                                         ; $6afc: $fe $eb
	ld   a, c                                        ; $6afe: $79
	ld   h, c                                        ; $6aff: $61
	ld   de, $1111                                   ; $6b00: $11 $11 $11
	ld   de, $6b45                                   ; $6b03: $11 $45 $6b
	cp   a                                           ; $6b06: $bf
	rst  $28                                         ; $6b07: $ef
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	rst  $38                                         ; $6b0a: $ff
	rst  JumpTable                                         ; $6b0b: $df
	xor  e                                           ; $6b0c: $ab
	ld   h, h                                        ; $6b0d: $64
	ld   [hl], c                                     ; $6b0e: $71
	ld   de, $1111                                   ; $6b0f: $11 $11 $11
	ld   de, $6b18                                   ; $6b12: $11 $18 $6b
	rst  JumpTable                                         ; $6b15: $df
	rst  $38                                         ; $6b16: $ff
	rst  $38                                         ; $6b17: $ff
	rst  $38                                         ; $6b18: $ff
	rst  $38                                         ; $6b19: $ff
	sbc  $c8                                         ; $6b1a: $de $c8
	ld   [hl], c                                     ; $6b1c: $71
	ld   h, d                                        ; $6b1d: $62
	ld   de, $1111                                   ; $6b1e: $11 $11 $11
	ld   de, $9b16                                   ; $6b21: $11 $16 $9b
	rst  JumpTable                                         ; $6b24: $df
	rst  $38                                         ; $6b25: $ff
	rst  $38                                         ; $6b26: $ff
	rst  $38                                         ; $6b27: $ff
	rst  $38                                         ; $6b28: $ff
	db   $ec                                         ; $6b29: $ec
	rst  ToBoot                                         ; $6b2a: $c7
	ld   h, c                                        ; $6b2b: $61
	inc  sp                                          ; $6b2c: $33
	ld   de, $1111                                   ; $6b2d: $11 $11 $11
	ld   de, $8d17                                   ; $6b30: $11 $17 $8d
	rst  JumpTable                                         ; $6b33: $df
	rst  $38                                         ; $6b34: $ff
	rst  $38                                         ; $6b35: $ff
	rst  $38                                         ; $6b36: $ff
	rst  $38                                         ; $6b37: $ff
	db   $fd                                         ; $6b38: $fd
	add  $61                                         ; $6b39: $c6 $61
	inc  de                                          ; $6b3b: $13
	ld   de, $1111                                   ; $6b3c: $11 $11 $11
	ld   de, $8e19                                   ; $6b3f: $11 $19 $8e
	rst  $38                                         ; $6b42: $ff
	rst  $38                                         ; $6b43: $ff
	rst  $38                                         ; $6b44: $ff
	rst  $38                                         ; $6b45: $ff
	rst  $38                                         ; $6b46: $ff
	ei                                               ; $6b47: $fb
	or   h                                           ; $6b48: $b4
	ld   b, c                                        ; $6b49: $41
	ld   [de], a                                     ; $6b4a: $12
	ld   de, $1111                                   ; $6b4b: $11 $11 $11
	ld   de, $8f1a                                   ; $6b4e: $11 $1a $8f
	rst  $38                                         ; $6b51: $ff
	rst  $38                                         ; $6b52: $ff
	rst  $38                                         ; $6b53: $ff
	rst  $38                                         ; $6b54: $ff
	rst  $38                                         ; $6b55: $ff
	db   $eb                                         ; $6b56: $eb
	and  e                                           ; $6b57: $a3
	ld   hl, $1111                                   ; $6b58: $21 $11 $11
	ld   de, $1111                                   ; $6b5b: $11 $11 $11
	inc  a                                           ; $6b5e: $3c
	xor  a                                           ; $6b5f: $af
	rst  $38                                         ; $6b60: $ff
	rst  $38                                         ; $6b61: $ff
	rst  $38                                         ; $6b62: $ff
	rst  $38                                         ; $6b63: $ff
	rst  $38                                         ; $6b64: $ff
	xor  d                                           ; $6b65: $aa
	sub  c                                           ; $6b66: $91
	ld   de, $1231                                   ; $6b67: $11 $31 $12
	ld   de, $0111                                   ; $6b6a: $11 $11 $01
	adc  l                                           ; $6b6d: $8d
	cp   a                                           ; $6b6e: $bf
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	rst  $38                                         ; $6b71: $ff
	rst  $38                                         ; $6b72: $ff
	rst  $38                                         ; $6b73: $ff
	ld   a, d                                        ; $6b74: $7a
	ld   d, c                                        ; $6b75: $51
	ld   de, $1231                                   ; $6b76: $11 $31 $12
	ld   de, $1111                                   ; $6b79: $11 $11 $11
	db   $eb                                         ; $6b7c: $eb
	rst  $38                                         ; $6b7d: $ff
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	rst  $38                                         ; $6b80: $ff
	rst  $38                                         ; $6b81: $ff
	db   $fd                                         ; $6b82: $fd
	ld   l, c                                        ; $6b83: $69
	ld   de, $1111                                   ; $6b84: $11 $11 $11
	ld   sp, $1111                                   ; $6b87: $31 $11 $11
	ld   a, [de]                                     ; $6b8a: $1a
	ei                                               ; $6b8b: $fb
	rst  $38                                         ; $6b8c: $ff
	rst  $38                                         ; $6b8d: $ff
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	rst  $38                                         ; $6b90: $ff
	db   $f4                                         ; $6b91: $f4
	and  e                                           ; $6b92: $a3
	ld   de, $1111                                   ; $6b93: $11 $11 $11
	ld   de, $1111                                   ; $6b96: $11 $11 $11
	ld   e, a                                        ; $6b99: $5f
	xor  a                                           ; $6b9a: $af
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	rst  $38                                         ; $6b9d: $ff
	rst  $38                                         ; $6b9e: $ff
	rst  $38                                         ; $6b9f: $ff
	ld   d, [hl]                                     ; $6ba0: $56
	ld   h, c                                        ; $6ba1: $61
	ld   de, $1211                                   ; $6ba2: $11 $11 $12
	ld   de, $0411                                   ; $6ba5: $11 $11 $04
	ei                                               ; $6ba8: $fb
	rst  $38                                         ; $6ba9: $ff
	rst  $38                                         ; $6baa: $ff
	rst  $38                                         ; $6bab: $ff
	rst  $38                                         ; $6bac: $ff
	rst  $38                                         ; $6bad: $ff
	push af                                          ; $6bae: $f5
	ld   b, [hl]                                     ; $6baf: $46
	ld   de, $1111                                   ; $6bb0: $11 $11 $11
	ld   bc, $1111                                   ; $6bb3: $01 $11 $11
	ld   a, a                                        ; $6bb6: $7f
	xor  a                                           ; $6bb7: $af
	rst  $38                                         ; $6bb8: $ff
	rst  $38                                         ; $6bb9: $ff
	rst  $38                                         ; $6bba: $ff
	rst  $38                                         ; $6bbb: $ff
	rst  $38                                         ; $6bbc: $ff
	dec  [hl]                                        ; $6bbd: $35
	ld   d, c                                        ; $6bbe: $51
	ld   de, $1111                                   ; $6bbf: $11 $11 $11
	ld   de, $1c11                                   ; $6bc2: $11 $11 $1c
	ld   a, [$ffff]                                  ; $6bc5: $fa $ff $ff
	rst  $38                                         ; $6bc8: $ff
	rst  $38                                         ; $6bc9: $ff
	rst  $38                                         ; $6bca: $ff
	pop  af                                          ; $6bcb: $f1
	ld   h, c                                        ; $6bcc: $61
	ld   de, $1211                                   ; $6bcd: $11 $11 $12
	ld   de, $1631                                   ; $6bd0: $11 $31 $16
	db   $fd                                         ; $6bd3: $fd
	rst  $38                                         ; $6bd4: $ff
	rst  $38                                         ; $6bd5: $ff
	rst  $38                                         ; $6bd6: $ff
	rst  $38                                         ; $6bd7: $ff
	rst  $38                                         ; $6bd8: $ff
	rst  $30                                         ; $6bd9: $f7
	dec  d                                           ; $6bda: $15
	ld   de, $1111                                   ; $6bdb: $11 $11 $11
	ld   de, $1212                                   ; $6bde: $11 $12 $12
	rst  $38                                         ; $6be1: $ff
	rst  JumpTable                                         ; $6be2: $df
	rst  $38                                         ; $6be3: $ff
	rst  $38                                         ; $6be4: $ff
	rst  $38                                         ; $6be5: $ff
	rst  $38                                         ; $6be6: $ff
	ld   a, [$1114]                                  ; $6be7: $fa $14 $11
	ld   de, $1111                                   ; $6bea: $11 $11 $11
	ld   [de], a                                     ; $6bed: $12
	ld   de, $dfff                                   ; $6bee: $11 $ff $df
	rst  $38                                         ; $6bf1: $ff
	rst  $38                                         ; $6bf2: $ff
	rst  $38                                         ; $6bf3: $ff
	rst  $38                                         ; $6bf4: $ff
	ld   a, [$1111]                                  ; $6bf5: $fa $11 $11
	ld   de, $1111                                   ; $6bf8: $11 $11 $11
	ld   [de], a                                     ; $6bfb: $12
	inc  d                                           ; $6bfc: $14
	rst  $38                                         ; $6bfd: $ff
	rst  $38                                         ; $6bfe: $ff
	rst  $38                                         ; $6bff: $ff
	rst  $38                                         ; $6c00: $ff
	rst  $38                                         ; $6c01: $ff
	rst  $38                                         ; $6c02: $ff
	db   $f4                                         ; $6c03: $f4
	ld   de, $1111                                   ; $6c04: $11 $11 $11
	ld   de, $3111                                   ; $6c07: $11 $11 $31
	rra                                              ; $6c0a: $1f
	cp   $ff                                         ; $6c0b: $fe $ff
	rst  $38                                         ; $6c0d: $ff
	rst  $38                                         ; $6c0e: $ff
	rst  $38                                         ; $6c0f: $ff
	rst  $38                                         ; $6c10: $ff
	and  c                                           ; $6c11: $a1
	ld   de, $1111                                   ; $6c12: $11 $11 $11
	ld   de, $2111                                   ; $6c15: $11 $11 $21
	sbc  a                                           ; $6c18: $9f
	rst  $38                                         ; $6c19: $ff
	rst  $38                                         ; $6c1a: $ff
	rst  $38                                         ; $6c1b: $ff
	rst  $38                                         ; $6c1c: $ff
	rst  $38                                         ; $6c1d: $ff
	xor  $11                                         ; $6c1e: $ee $11
	ld   de, $1111                                   ; $6c20: $11 $11 $11
	ld   de, $1714                                   ; $6c23: $11 $14 $17
	rst  $38                                         ; $6c26: $ff
	rst  $38                                         ; $6c27: $ff
	rst  $38                                         ; $6c28: $ff
	rst  $38                                         ; $6c29: $ff
	rst  $38                                         ; $6c2a: $ff
	cp   $e1                                         ; $6c2b: $fe $e1
	ld   de, $1111                                   ; $6c2d: $11 $11 $11
	ld   de, $2111                                   ; $6c30: $11 $11 $21
	cp   a                                           ; $6c33: $bf
	rst  $38                                         ; $6c34: $ff
	rst  $38                                         ; $6c35: $ff
	rst  $38                                         ; $6c36: $ff
	rst  $38                                         ; $6c37: $ff
	db   $fc                                         ; $6c38: $fc
	ld   sp, hl                                      ; $6c39: $f9
	ld   de, $1111                                   ; $6c3a: $11 $11 $11
	ld   de, $2111                                   ; $6c3d: $11 $11 $21
	ld   c, a                                        ; $6c40: $4f
	rst  $38                                         ; $6c41: $ff
	rst  $38                                         ; $6c42: $ff
	rst  $38                                         ; $6c43: $ff
	rst  $38                                         ; $6c44: $ff
	cp   $cb                                         ; $6c45: $fe $cb
	ld   de, $1111                                   ; $6c47: $11 $11 $11
	ld   de, $1311                                   ; $6c4a: $11 $11 $13
	inc  a                                           ; $6c4d: $3c
	rst  $38                                         ; $6c4e: $ff
	rst  $38                                         ; $6c4f: $ff
	rst  $38                                         ; $6c50: $ff
	rst  $38                                         ; $6c51: $ff
	cp   $ab                                         ; $6c52: $fe $ab
	ld   sp, $1111                                   ; $6c54: $31 $11 $11
	ld   de, $1511                                   ; $6c57: $11 $11 $15
	ld   e, e                                        ; $6c5a: $5b
	rst  $38                                         ; $6c5b: $ff
	rst  $38                                         ; $6c5c: $ff
	rst  $38                                         ; $6c5d: $ff
	rst  $38                                         ; $6c5e: $ff
	cp   $b8                                         ; $6c5f: $fe $b8
	ld   de, $1111                                   ; $6c61: $11 $11 $11
	ld   de, $1411                                   ; $6c64: $11 $11 $14
	ld   a, h                                        ; $6c67: $7c
	rst  $38                                         ; $6c68: $ff
	rst  $38                                         ; $6c69: $ff
	rst  $38                                         ; $6c6a: $ff
	rst  $38                                         ; $6c6b: $ff
	db   $fd                                         ; $6c6c: $fd
	or   a                                           ; $6c6d: $b7
	ld   de, $1111                                   ; $6c6e: $11 $11 $11
	ld   de, $2511                                   ; $6c71: $11 $11 $25
	sbc  l                                           ; $6c74: $9d
	rst  $38                                         ; $6c75: $ff
	rst  $38                                         ; $6c76: $ff
	rst  $38                                         ; $6c77: $ff
	rst  $38                                         ; $6c78: $ff
	ei                                               ; $6c79: $fb
	sub  e                                           ; $6c7a: $93
	ld   de, $1111                                   ; $6c7b: $11 $11 $11
	ld   de, $4611                                   ; $6c7e: $11 $11 $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c81: $cf
	rst  $38                                         ; $6c82: $ff
	rst  $38                                         ; $6c83: $ff
	rst  $38                                         ; $6c84: $ff
	rst  $38                                         ; $6c85: $ff
	add  sp, $72                                     ; $6c86: $e8 $72
	ld   de, $1111                                   ; $6c88: $11 $11 $11
	ld   de, $5913                                   ; $6c8b: $11 $13 $59
	rst  JumpTable                                         ; $6c8e: $df
	rst  $38                                         ; $6c8f: $ff
	rst  $38                                         ; $6c90: $ff
	rst  $38                                         ; $6c91: $ff
	cp   $99                                         ; $6c92: $fe $99
	ld   d, c                                        ; $6c94: $51
	ld   de, $1111                                   ; $6c95: $11 $11 $11
	ld   de, $7b23                                   ; $6c98: $11 $23 $7b
	rst  JumpTable                                         ; $6c9b: $df
	rst  $38                                         ; $6c9c: $ff
	rst  $38                                         ; $6c9d: $ff
	rst  $38                                         ; $6c9e: $ff
	ei                                               ; $6c9f: $fb
	xor  b                                           ; $6ca0: $a8
	inc  sp                                          ; $6ca1: $33
	ld   hl, $1111                                   ; $6ca2: $21 $11 $11
	ld   de, $8c56                                   ; $6ca5: $11 $56 $8c
	rst  $28                                         ; $6ca8: $ef
	rst  $38                                         ; $6ca9: $ff
	rst  $38                                         ; $6caa: $ff
	cp   $da                                         ; $6cab: $fe $da
	ld   [hl], a                                     ; $6cad: $77
	ld   b, h                                        ; $6cae: $44
	ld   hl, $1111                                   ; $6caf: $21 $11 $11
	dec  h                                           ; $6cb2: $25
	ld   c, b                                        ; $6cb3: $48
	sbc  h                                           ; $6cb4: $9c
	sbc  $ff                                         ; $6cb5: $de $ff
	db   $ed                                         ; $6cb7: $ed
	call c, Call_0db_76a9                            ; $6cb8: $dc $a9 $76
	ld   d, h                                        ; $6cbb: $54
	inc  h                                           ; $6cbc: $24
	ld   b, c                                        ; $6cbd: $41
	inc  h                                           ; $6cbe: $24
	ld   h, h                                        ; $6cbf: $64
	ld   l, c                                        ; $6cc0: $69
	cp   e                                           ; $6cc1: $bb
	call $dbdc                                       ; $6cc2: $cd $dc $db
	cp   d                                           ; $6cc5: $ba
	sbc  c                                           ; $6cc6: $99
	halt                                             ; $6cc7: $76
	ld   h, [hl]                                     ; $6cc8: $66
	ld   b, h                                        ; $6cc9: $44
	ld   b, l                                        ; $6cca: $45
	ld   d, h                                        ; $6ccb: $54
	ld   h, a                                        ; $6ccc: $67
	ld   l, b                                        ; $6ccd: $68
	sbc  e                                           ; $6cce: $9b
	xor  d                                           ; $6ccf: $aa
	res  7, d                                        ; $6cd0: $cb $ba
	xor  d                                           ; $6cd2: $aa
	sbc  b                                           ; $6cd3: $98
	ld   a, b                                        ; $6cd4: $78
	add  [hl]                                        ; $6cd5: $86
	ld   d, a                                        ; $6cd6: $57
	ld   h, l                                        ; $6cd7: $65
	ld   d, [hl]                                     ; $6cd8: $56
	halt                                             ; $6cd9: $76
	ld   l, b                                        ; $6cda: $68
	sbc  b                                           ; $6cdb: $98
	adc  c                                           ; $6cdc: $89
	xor  c                                           ; $6cdd: $a9
	sbc  e                                           ; $6cde: $9b
	xor  d                                           ; $6cdf: $aa
	sbc  c                                           ; $6ce0: $99
	add  a                                           ; $6ce1: $87
	add  a                                           ; $6ce2: $87
	ld   [hl], a                                     ; $6ce3: $77
	ld   h, [hl]                                     ; $6ce4: $66
	ld   h, [hl]                                     ; $6ce5: $66
	ld   [hl], a                                     ; $6ce6: $77
	ld   [hl], a                                     ; $6ce7: $77
	adc  c                                           ; $6ce8: $89
	adc  c                                           ; $6ce9: $89
	xor  b                                           ; $6cea: $a8
	sbc  c                                           ; $6ceb: $99
	sbc  c                                           ; $6cec: $99
	sbc  b                                           ; $6ced: $98
	sbc  c                                           ; $6cee: $99
	sbc  b                                           ; $6cef: $98
	add  a                                           ; $6cf0: $87
	ld   [hl], a                                     ; $6cf1: $77
	ld   [hl], a                                     ; $6cf2: $77
	ld   [hl], a                                     ; $6cf3: $77
	ld   [hl], a                                     ; $6cf4: $77
	ld   [hl], a                                     ; $6cf5: $77
	adc  b                                           ; $6cf6: $88
	adc  c                                           ; $6cf7: $89
	sbc  c                                           ; $6cf8: $99
	sbc  b                                           ; $6cf9: $98
	adc  c                                           ; $6cfa: $89
	adc  c                                           ; $6cfb: $89
	sbc  b                                           ; $6cfc: $98
	adc  b                                           ; $6cfd: $88
	add  a                                           ; $6cfe: $87
	adc  b                                           ; $6cff: $88
	ld   a, b                                        ; $6d00: $78
	add  a                                           ; $6d01: $87
	ld   a, b                                        ; $6d02: $78
	ld   a, b                                        ; $6d03: $78
	add  a                                           ; $6d04: $87
	adc  b                                           ; $6d05: $88
	adc  b                                           ; $6d06: $88
	sbc  b                                           ; $6d07: $98
	adc  b                                           ; $6d08: $88
	adc  c                                           ; $6d09: $89
	adc  b                                           ; $6d0a: $88
	adc  b                                           ; $6d0b: $88
	adc  c                                           ; $6d0c: $89
	sbc  c                                           ; $6d0d: $99
	adc  b                                           ; $6d0e: $88
	adc  b                                           ; $6d0f: $88
	adc  b                                           ; $6d10: $88
	adc  c                                           ; $6d11: $89
	adc  b                                           ; $6d12: $88
	ld   [hl], a                                     ; $6d13: $77
	adc  b                                           ; $6d14: $88
	adc  b                                           ; $6d15: $88
	adc  b                                           ; $6d16: $88
	add  a                                           ; $6d17: $87
	adc  b                                           ; $6d18: $88
	adc  b                                           ; $6d19: $88
	adc  c                                           ; $6d1a: $89
	adc  b                                           ; $6d1b: $88
	adc  b                                           ; $6d1c: $88
	sbc  b                                           ; $6d1d: $98
	adc  c                                           ; $6d1e: $89
	adc  b                                           ; $6d1f: $88
	ld   a, b                                        ; $6d20: $78
	adc  b                                           ; $6d21: $88
	adc  b                                           ; $6d22: $88
	adc  b                                           ; $6d23: $88
	adc  b                                           ; $6d24: $88
	adc  b                                           ; $6d25: $88
	sbc  b                                           ; $6d26: $98
	adc  b                                           ; $6d27: $88
	adc  b                                           ; $6d28: $88
	sbc  b                                           ; $6d29: $98
	adc  b                                           ; $6d2a: $88
	adc  b                                           ; $6d2b: $88
	adc  b                                           ; $6d2c: $88
	adc  b                                           ; $6d2d: $88
	adc  b                                           ; $6d2e: $88
	adc  b                                           ; $6d2f: $88
	adc  b                                           ; $6d30: $88
	adc  b                                           ; $6d31: $88
	adc  b                                           ; $6d32: $88
	adc  b                                           ; $6d33: $88
	adc  b                                           ; $6d34: $88
	adc  b                                           ; $6d35: $88
	adc  b                                           ; $6d36: $88
	adc  b                                           ; $6d37: $88
	adc  b                                           ; $6d38: $88
	adc  b                                           ; $6d39: $88
	adc  b                                           ; $6d3a: $88
	adc  b                                           ; $6d3b: $88
	adc  b                                           ; $6d3c: $88
	adc  b                                           ; $6d3d: $88
	adc  b                                           ; $6d3e: $88
	adc  b                                           ; $6d3f: $88
	adc  b                                           ; $6d40: $88
	adc  b                                           ; $6d41: $88
	adc  b                                           ; $6d42: $88
	adc  b                                           ; $6d43: $88
	adc  b                                           ; $6d44: $88
	adc  b                                           ; $6d45: $88
	adc  b                                           ; $6d46: $88
	adc  b                                           ; $6d47: $88
	adc  b                                           ; $6d48: $88
	adc  b                                           ; $6d49: $88
	adc  b                                           ; $6d4a: $88
	adc  b                                           ; $6d4b: $88
	adc  b                                           ; $6d4c: $88
	adc  b                                           ; $6d4d: $88
	adc  b                                           ; $6d4e: $88
	adc  b                                           ; $6d4f: $88
	adc  b                                           ; $6d50: $88
	adc  b                                           ; $6d51: $88
	adc  b                                           ; $6d52: $88
	adc  b                                           ; $6d53: $88
	adc  b                                           ; $6d54: $88
	adc  b                                           ; $6d55: $88
	adc  b                                           ; $6d56: $88
	adc  b                                           ; $6d57: $88
	adc  b                                           ; $6d58: $88
	adc  b                                           ; $6d59: $88
	adc  b                                           ; $6d5a: $88
	adc  b                                           ; $6d5b: $88
	adc  b                                           ; $6d5c: $88
	adc  b                                           ; $6d5d: $88
	adc  b                                           ; $6d5e: $88
	adc  b                                           ; $6d5f: $88
	adc  b                                           ; $6d60: $88
	adc  b                                           ; $6d61: $88
	adc  b                                           ; $6d62: $88
	adc  b                                           ; $6d63: $88
	adc  b                                           ; $6d64: $88
	adc  b                                           ; $6d65: $88
	adc  b                                           ; $6d66: $88
	adc  b                                           ; $6d67: $88
	adc  b                                           ; $6d68: $88
	adc  b                                           ; $6d69: $88
	adc  b                                           ; $6d6a: $88
	adc  b                                           ; $6d6b: $88
	adc  b                                           ; $6d6c: $88
	adc  b                                           ; $6d6d: $88
	adc  b                                           ; $6d6e: $88
	adc  b                                           ; $6d6f: $88
	adc  b                                           ; $6d70: $88
	adc  b                                           ; $6d71: $88
	adc  b                                           ; $6d72: $88
	adc  b                                           ; $6d73: $88
	adc  b                                           ; $6d74: $88
	adc  b                                           ; $6d75: $88
	adc  b                                           ; $6d76: $88
	adc  b                                           ; $6d77: $88
	adc  b                                           ; $6d78: $88
	adc  b                                           ; $6d79: $88
	adc  b                                           ; $6d7a: $88
	adc  b                                           ; $6d7b: $88
	adc  b                                           ; $6d7c: $88
	adc  b                                           ; $6d7d: $88
	adc  b                                           ; $6d7e: $88
	adc  b                                           ; $6d7f: $88
	adc  b                                           ; $6d80: $88
	adc  b                                           ; $6d81: $88
	adc  b                                           ; $6d82: $88
	adc  b                                           ; $6d83: $88
	adc  b                                           ; $6d84: $88
	adc  b                                           ; $6d85: $88
	adc  b                                           ; $6d86: $88
	adc  b                                           ; $6d87: $88
	adc  b                                           ; $6d88: $88
	adc  b                                           ; $6d89: $88
	adc  b                                           ; $6d8a: $88
	adc  b                                           ; $6d8b: $88
	adc  b                                           ; $6d8c: $88
	adc  b                                           ; $6d8d: $88
	adc  b                                           ; $6d8e: $88
	adc  b                                           ; $6d8f: $88
	adc  b                                           ; $6d90: $88
	adc  b                                           ; $6d91: $88
	adc  b                                           ; $6d92: $88
	adc  b                                           ; $6d93: $88
	adc  b                                           ; $6d94: $88
	adc  b                                           ; $6d95: $88
	adc  b                                           ; $6d96: $88
	adc  b                                           ; $6d97: $88
	adc  b                                           ; $6d98: $88
	adc  b                                           ; $6d99: $88
	adc  b                                           ; $6d9a: $88
	adc  b                                           ; $6d9b: $88
	adc  b                                           ; $6d9c: $88
	adc  b                                           ; $6d9d: $88
	adc  b                                           ; $6d9e: $88
	adc  b                                           ; $6d9f: $88
	adc  b                                           ; $6da0: $88
	adc  b                                           ; $6da1: $88
	adc  b                                           ; $6da2: $88
	adc  b                                           ; $6da3: $88
	adc  b                                           ; $6da4: $88
	adc  b                                           ; $6da5: $88
	adc  b                                           ; $6da6: $88
	adc  b                                           ; $6da7: $88
	adc  b                                           ; $6da8: $88
	adc  b                                           ; $6da9: $88
	adc  b                                           ; $6daa: $88
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
	adc  b                                           ; $6dba: $88
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
	adc  c                                           ; $6dcd: $89
	adc  b                                           ; $6dce: $88
	adc  b                                           ; $6dcf: $88
	adc  b                                           ; $6dd0: $88
	sbc  b                                           ; $6dd1: $98
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
	adc  b                                           ; $6e0c: $88
	adc  b                                           ; $6e0d: $88
	adc  b                                           ; $6e0e: $88
	adc  b                                           ; $6e0f: $88
	ld   a, b                                        ; $6e10: $78
	add  a                                           ; $6e11: $87
	adc  c                                           ; $6e12: $89
	adc  b                                           ; $6e13: $88
	adc  b                                           ; $6e14: $88
	add  a                                           ; $6e15: $87
	sbc  c                                           ; $6e16: $99
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
	adc  c                                           ; $6e2d: $89
	sbc  b                                           ; $6e2e: $98
	adc  b                                           ; $6e2f: $88
	adc  b                                           ; $6e30: $88
	ld   a, b                                        ; $6e31: $78
	sbc  c                                           ; $6e32: $99
	ld   a, b                                        ; $6e33: $78
	adc  b                                           ; $6e34: $88
	adc  b                                           ; $6e35: $88
	sbc  b                                           ; $6e36: $98
	adc  b                                           ; $6e37: $88
	adc  b                                           ; $6e38: $88
	adc  b                                           ; $6e39: $88
	adc  b                                           ; $6e3a: $88
	adc  b                                           ; $6e3b: $88
	adc  b                                           ; $6e3c: $88
	adc  b                                           ; $6e3d: $88
	adc  b                                           ; $6e3e: $88
	adc  b                                           ; $6e3f: $88
	sbc  b                                           ; $6e40: $98
	adc  b                                           ; $6e41: $88
	adc  b                                           ; $6e42: $88
	adc  b                                           ; $6e43: $88
	adc  b                                           ; $6e44: $88
	adc  b                                           ; $6e45: $88
	adc  b                                           ; $6e46: $88
	adc  b                                           ; $6e47: $88
	adc  b                                           ; $6e48: $88
	adc  b                                           ; $6e49: $88
	adc  b                                           ; $6e4a: $88
	adc  b                                           ; $6e4b: $88
	adc  b                                           ; $6e4c: $88
	adc  b                                           ; $6e4d: $88
	adc  b                                           ; $6e4e: $88
	adc  b                                           ; $6e4f: $88
	sbc  b                                           ; $6e50: $98
	adc  b                                           ; $6e51: $88
	adc  b                                           ; $6e52: $88
	adc  b                                           ; $6e53: $88
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	ld   a, b                                        ; $6e56: $78
	sub  a                                           ; $6e57: $97
	adc  b                                           ; $6e58: $88
	adc  b                                           ; $6e59: $88
	adc  c                                           ; $6e5a: $89
	sbc  b                                           ; $6e5b: $98
	adc  b                                           ; $6e5c: $88
	adc  b                                           ; $6e5d: $88
	adc  b                                           ; $6e5e: $88
	adc  b                                           ; $6e5f: $88
	adc  b                                           ; $6e60: $88
	adc  b                                           ; $6e61: $88
	adc  b                                           ; $6e62: $88
	adc  b                                           ; $6e63: $88
	adc  b                                           ; $6e64: $88
	adc  b                                           ; $6e65: $88
	adc  c                                           ; $6e66: $89
	adc  b                                           ; $6e67: $88
	adc  b                                           ; $6e68: $88
	adc  b                                           ; $6e69: $88
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	adc  b                                           ; $6e6c: $88
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	adc  b                                           ; $6e6f: $88
	adc  c                                           ; $6e70: $89
	adc  b                                           ; $6e71: $88
	adc  b                                           ; $6e72: $88
	adc  b                                           ; $6e73: $88
	adc  b                                           ; $6e74: $88
	adc  b                                           ; $6e75: $88
	adc  b                                           ; $6e76: $88
	adc  b                                           ; $6e77: $88
	adc  b                                           ; $6e78: $88
	adc  b                                           ; $6e79: $88
	adc  b                                           ; $6e7a: $88
	adc  b                                           ; $6e7b: $88
	adc  b                                           ; $6e7c: $88
	adc  b                                           ; $6e7d: $88
	adc  b                                           ; $6e7e: $88
	adc  b                                           ; $6e7f: $88
	adc  b                                           ; $6e80: $88
	adc  b                                           ; $6e81: $88
	adc  b                                           ; $6e82: $88
	adc  b                                           ; $6e83: $88
	adc  b                                           ; $6e84: $88
	adc  b                                           ; $6e85: $88
	adc  b                                           ; $6e86: $88
	adc  b                                           ; $6e87: $88
	adc  b                                           ; $6e88: $88
	adc  b                                           ; $6e89: $88
	adc  b                                           ; $6e8a: $88
	sbc  b                                           ; $6e8b: $98
	ld   a, b                                        ; $6e8c: $78
	sbc  b                                           ; $6e8d: $98
	adc  b                                           ; $6e8e: $88
	sbc  b                                           ; $6e8f: $98
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
	adc  b                                           ; $6e92: $88
	adc  b                                           ; $6e93: $88
	adc  b                                           ; $6e94: $88
	adc  b                                           ; $6e95: $88
	adc  b                                           ; $6e96: $88
	adc  b                                           ; $6e97: $88
	adc  b                                           ; $6e98: $88
	sbc  b                                           ; $6e99: $98
	adc  b                                           ; $6e9a: $88
	adc  c                                           ; $6e9b: $89
	adc  b                                           ; $6e9c: $88
	adc  b                                           ; $6e9d: $88
	adc  b                                           ; $6e9e: $88
	adc  b                                           ; $6e9f: $88
	adc  b                                           ; $6ea0: $88
	adc  b                                           ; $6ea1: $88
	adc  b                                           ; $6ea2: $88
	adc  b                                           ; $6ea3: $88
	adc  b                                           ; $6ea4: $88
	adc  b                                           ; $6ea5: $88
	adc  b                                           ; $6ea6: $88
	adc  b                                           ; $6ea7: $88
	adc  b                                           ; $6ea8: $88
	adc  b                                           ; $6ea9: $88
	adc  c                                           ; $6eaa: $89
	adc  b                                           ; $6eab: $88
	add  a                                           ; $6eac: $87
	adc  b                                           ; $6ead: $88
	adc  b                                           ; $6eae: $88
	sbc  b                                           ; $6eaf: $98
	adc  b                                           ; $6eb0: $88
	adc  b                                           ; $6eb1: $88
	adc  c                                           ; $6eb2: $89
	adc  b                                           ; $6eb3: $88
	adc  b                                           ; $6eb4: $88
	adc  b                                           ; $6eb5: $88
	adc  b                                           ; $6eb6: $88
	adc  b                                           ; $6eb7: $88
	adc  b                                           ; $6eb8: $88
	adc  b                                           ; $6eb9: $88
	adc  b                                           ; $6eba: $88
	adc  b                                           ; $6ebb: $88
	adc  b                                           ; $6ebc: $88
	adc  b                                           ; $6ebd: $88
	sbc  c                                           ; $6ebe: $99
	adc  b                                           ; $6ebf: $88
	adc  b                                           ; $6ec0: $88
	adc  b                                           ; $6ec1: $88
	adc  c                                           ; $6ec2: $89
	adc  b                                           ; $6ec3: $88
	ld   a, b                                        ; $6ec4: $78
	adc  b                                           ; $6ec5: $88
	adc  b                                           ; $6ec6: $88
	adc  b                                           ; $6ec7: $88
	adc  c                                           ; $6ec8: $89
	adc  b                                           ; $6ec9: $88
	adc  b                                           ; $6eca: $88
	adc  b                                           ; $6ecb: $88
	adc  b                                           ; $6ecc: $88
	adc  b                                           ; $6ecd: $88
	adc  b                                           ; $6ece: $88
	adc  b                                           ; $6ecf: $88
	adc  b                                           ; $6ed0: $88
	adc  b                                           ; $6ed1: $88
	add  a                                           ; $6ed2: $87
	adc  b                                           ; $6ed3: $88
	adc  c                                           ; $6ed4: $89
	ld   a, b                                        ; $6ed5: $78
	sbc  b                                           ; $6ed6: $98
	sbc  b                                           ; $6ed7: $98
	adc  b                                           ; $6ed8: $88
	adc  b                                           ; $6ed9: $88
	adc  b                                           ; $6eda: $88
	adc  b                                           ; $6edb: $88
	adc  b                                           ; $6edc: $88
	adc  b                                           ; $6edd: $88
	adc  b                                           ; $6ede: $88
	adc  b                                           ; $6edf: $88
	adc  b                                           ; $6ee0: $88
	adc  c                                           ; $6ee1: $89
	adc  c                                           ; $6ee2: $89
	adc  c                                           ; $6ee3: $89
	adc  b                                           ; $6ee4: $88
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	adc  b                                           ; $6ee7: $88
	add  a                                           ; $6ee8: $87
	ld   a, b                                        ; $6ee9: $78
	ld   a, b                                        ; $6eea: $78
	adc  b                                           ; $6eeb: $88
	adc  b                                           ; $6eec: $88
	adc  b                                           ; $6eed: $88
	adc  b                                           ; $6eee: $88
	sbc  b                                           ; $6eef: $98
	adc  b                                           ; $6ef0: $88
	sbc  b                                           ; $6ef1: $98
	adc  b                                           ; $6ef2: $88
	adc  b                                           ; $6ef3: $88
	adc  b                                           ; $6ef4: $88
	adc  b                                           ; $6ef5: $88
	adc  b                                           ; $6ef6: $88
	add  a                                           ; $6ef7: $87
	adc  b                                           ; $6ef8: $88
	adc  b                                           ; $6ef9: $88
	adc  b                                           ; $6efa: $88
	adc  b                                           ; $6efb: $88
	adc  c                                           ; $6efc: $89
	adc  b                                           ; $6efd: $88
	adc  b                                           ; $6efe: $88
	adc  b                                           ; $6eff: $88
	adc  b                                           ; $6f00: $88
	add  a                                           ; $6f01: $87
	adc  b                                           ; $6f02: $88
	adc  b                                           ; $6f03: $88
	ld   a, c                                        ; $6f04: $79
	adc  b                                           ; $6f05: $88
	adc  b                                           ; $6f06: $88
	sbc  b                                           ; $6f07: $98
	adc  b                                           ; $6f08: $88
	sbc  b                                           ; $6f09: $98
	adc  b                                           ; $6f0a: $88
	adc  c                                           ; $6f0b: $89
	adc  b                                           ; $6f0c: $88
	adc  b                                           ; $6f0d: $88
	adc  b                                           ; $6f0e: $88
	adc  b                                           ; $6f0f: $88
	sbc  b                                           ; $6f10: $98
	adc  b                                           ; $6f11: $88
	adc  b                                           ; $6f12: $88
	adc  b                                           ; $6f13: $88
	adc  b                                           ; $6f14: $88
	adc  c                                           ; $6f15: $89
	adc  b                                           ; $6f16: $88
	sbc  b                                           ; $6f17: $98
	adc  b                                           ; $6f18: $88
	adc  b                                           ; $6f19: $88
	add  a                                           ; $6f1a: $87
	adc  b                                           ; $6f1b: $88
	ld   [hl], a                                     ; $6f1c: $77
	adc  b                                           ; $6f1d: $88
	ld   [hl], a                                     ; $6f1e: $77
	adc  b                                           ; $6f1f: $88
	adc  b                                           ; $6f20: $88
	adc  b                                           ; $6f21: $88
	sbc  b                                           ; $6f22: $98
	adc  b                                           ; $6f23: $88
	sbc  c                                           ; $6f24: $99
	adc  c                                           ; $6f25: $89
	adc  c                                           ; $6f26: $89
	sbc  b                                           ; $6f27: $98
	adc  b                                           ; $6f28: $88
	adc  b                                           ; $6f29: $88
	add  a                                           ; $6f2a: $87
	ld   [hl], a                                     ; $6f2b: $77
	add  a                                           ; $6f2c: $87
	ld   [hl], a                                     ; $6f2d: $77
	ld   [hl], a                                     ; $6f2e: $77
	ld   [hl], a                                     ; $6f2f: $77
	ld   [hl], a                                     ; $6f30: $77
	adc  b                                           ; $6f31: $88
	adc  b                                           ; $6f32: $88
	sbc  b                                           ; $6f33: $98
	adc  c                                           ; $6f34: $89
	adc  c                                           ; $6f35: $89
	xor  d                                           ; $6f36: $aa
	adc  c                                           ; $6f37: $89
	adc  b                                           ; $6f38: $88
	sbc  b                                           ; $6f39: $98
	add  a                                           ; $6f3a: $87
	ld   [hl], a                                     ; $6f3b: $77
	ld   [hl], a                                     ; $6f3c: $77
	ld   h, [hl]                                     ; $6f3d: $66
	ld   h, [hl]                                     ; $6f3e: $66
	ld   d, [hl]                                     ; $6f3f: $56
	ld   h, [hl]                                     ; $6f40: $66
	ld   h, [hl]                                     ; $6f41: $66
	ld   [hl], a                                     ; $6f42: $77
	sbc  c                                           ; $6f43: $99
	sbc  d                                           ; $6f44: $9a
	cp   h                                           ; $6f45: $bc
	cp   e                                           ; $6f46: $bb
	call z, $aabb                                    ; $6f47: $cc $bb $aa
	sub  a                                           ; $6f4a: $97
	ld   [hl], h                                     ; $6f4b: $74
	ld   e, d                                        ; $6f4c: $5a
	ld   h, c                                        ; $6f4d: $61
	ld   [de], a                                     ; $6f4e: $12
	ld   sp, $3812                                   ; $6f4f: $31 $12 $38
	xor  b                                           ; $6f52: $a8
	sbc  l                                           ; $6f53: $9d
	cp   $ee                                         ; $6f54: $fe $ee
	rst  JumpTable                                         ; $6f56: $df
	db   $fc                                         ; $6f57: $fc
	cp   h                                           ; $6f58: $bc
	res  2, a                                        ; $6f59: $cb $97
	ld   h, [hl]                                     ; $6f5b: $66
	ld   b, e                                        ; $6f5c: $43
	ld   a, b                                        ; $6f5d: $78
	ld   de, $1111                                   ; $6f5e: $11 $11 $11
	ld   hl, $9a49                                   ; $6f61: $21 $49 $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f64: $cf
	rst  $38                                         ; $6f65: $ff
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	db   $ec                                         ; $6f68: $ec
	cp   h                                           ; $6f69: $bc
	xor  c                                           ; $6f6a: $a9
	ld   [hl], l                                     ; $6f6b: $75
	ld   b, e                                        ; $6f6c: $43
	inc  d                                           ; $6f6d: $14
	add  c                                           ; $6f6e: $81
	ld   de, $1111                                   ; $6f6f: $11 $11 $11
	inc  de                                          ; $6f72: $13
	xor  e                                           ; $6f73: $ab
	xor  l                                           ; $6f74: $ad
	rst  $38                                         ; $6f75: $ff
	rst  $38                                         ; $6f76: $ff
	rst  $38                                         ; $6f77: $ff
	rst  $38                                         ; $6f78: $ff
	ret  z                                           ; $6f79: $c8

	cp   c                                           ; $6f7a: $b9
	ld   d, e                                        ; $6f7b: $53
	ld   hl, $3511                                   ; $6f7c: $21 $11 $35
	ld   de, $1111                                   ; $6f7f: $11 $11 $11
	inc  hl                                          ; $6f82: $23
	ld   a, a                                        ; $6f83: $7f
	db   $ed                                         ; $6f84: $ed
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	rst  $38                                         ; $6f87: $ff
	rst  $38                                         ; $6f88: $ff
	ld   sp, hl                                      ; $6f89: $f9
	sbc  c                                           ; $6f8a: $99
	ld   sp, $1111                                   ; $6f8b: $31 $11 $11
	inc  de                                          ; $6f8e: $13
	ld   de, $1111                                   ; $6f8f: $11 $11 $11
	ld   b, a                                        ; $6f92: $47
	sbc  a                                           ; $6f93: $9f
	rst  $38                                         ; $6f94: $ff
	rst  $38                                         ; $6f95: $ff
	rst  $38                                         ; $6f96: $ff
	rst  $38                                         ; $6f97: $ff
	rst  $38                                         ; $6f98: $ff
	rst  $30                                         ; $6f99: $f7
	inc  h                                           ; $6f9a: $24
	ld   de, $1111                                   ; $6f9b: $11 $11 $11
	ld   [de], a                                     ; $6f9e: $12
	ld   de, $5538                                   ; $6f9f: $11 $38 $55
	rst  $28                                         ; $6fa2: $ef
	rst  $38                                         ; $6fa3: $ff
	rst  $38                                         ; $6fa4: $ff
	rst  $38                                         ; $6fa5: $ff
	rst  $38                                         ; $6fa6: $ff
	rst  $38                                         ; $6fa7: $ff
	xor  $81                                         ; $6fa8: $ee $81
	ld   de, $1111                                   ; $6faa: $11 $11 $11
	ld   de, $1131                                   ; $6fad: $11 $31 $11
	rst  $28                                         ; $6fb0: $ef
	sbc  l                                           ; $6fb1: $9d
	rst  $38                                         ; $6fb2: $ff
	rst  $38                                         ; $6fb3: $ff
	rst  $38                                         ; $6fb4: $ff
	rst  $38                                         ; $6fb5: $ff
	db   $fc                                         ; $6fb6: $fc
	jp   hl                                          ; $6fb7: $e9


	ld   [hl], e                                     ; $6fb8: $73
	ld   de, $1111                                   ; $6fb9: $11 $11 $11
	ld   de, $9111                                   ; $6fbc: $11 $11 $91
	rra                                              ; $6fbf: $1f
	rst  $38                                         ; $6fc0: $ff
	rst  $28                                         ; $6fc1: $ef
	rst  $38                                         ; $6fc2: $ff
	rst  $38                                         ; $6fc3: $ff
	rst  $38                                         ; $6fc4: $ff
	db   $fc                                         ; $6fc5: $fc
	ld   c, b                                        ; $6fc6: $48
	ld   h, c                                        ; $6fc7: $61
	ld   de, $1111                                   ; $6fc8: $11 $11 $11
	ld   de, $1411                                   ; $6fcb: $11 $11 $14
	or   $3d                                         ; $6fce: $f6 $3d
	rst  $38                                         ; $6fd0: $ff
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	cp   [hl]                                        ; $6fd4: $be
	db   $fc                                         ; $6fd5: $fc
	ld   [hl], $51                                   ; $6fd6: $36 $51
	ld   a, c                                        ; $6fd8: $79
	ld   d, l                                        ; $6fd9: $55
	cp   c                                           ; $6fda: $b9
	ld   [hl+], a                                    ; $6fdb: $22
	ld   h, [hl]                                     ; $6fdc: $66
	ld   de, $8113                                   ; $6fdd: $11 $13 $81
	ld   [de], a                                     ; $6fe0: $12
	cp   l                                           ; $6fe1: $bd
	ld   a, [hl]                                     ; $6fe2: $7e
	rst  $38                                         ; $6fe3: $ff
	rst  $38                                         ; $6fe4: $ff
	rst  $38                                         ; $6fe5: $ff
	rst  $38                                         ; $6fe6: $ff
	ld   hl, $7736                                   ; $6fe7: $21 $36 $77
	adc  c                                           ; $6fea: $89
	db   $ed                                         ; $6feb: $ed
	add  a                                           ; $6fec: $87
	adc  $81                                         ; $6fed: $ce $81
	ld   de, $1118                                   ; $6fef: $11 $18 $11
	dec  de                                          ; $6ff2: $1b
	and  c                                           ; $6ff3: $a1
	ld   a, a                                        ; $6ff4: $7f
	rst  $38                                         ; $6ff5: $ff
	cp   $ff                                         ; $6ff6: $fe $ff
	di                                               ; $6ff8: $f3
	ld   d, $31                                      ; $6ff9: $16 $31
	ld   de, $d28f                                   ; $6ffb: $11 $8f $d2
	sbc  a                                           ; $6ffe: $9f
	ld   a, [$1185]                                  ; $6fff: $fa $85 $11
	dec  d                                           ; $7002: $15
	ld   de, $5314                                   ; $7003: $11 $14 $53
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7006: $cf
	rst  $38                                         ; $7007: $ff
	rst  $38                                         ; $7008: $ff
	rst  $38                                         ; $7009: $ff
	di                                               ; $700a: $f3
	inc  h                                           ; $700b: $24
	ld   de, $6f11                                   ; $700c: $11 $11 $6f
	db   $d3                                         ; $700f: $d3
	rst  JumpTable                                         ; $7010: $df
	ei                                               ; $7011: $fb
	cp   e                                           ; $7012: $bb
	ld   de, $1111                                   ; $7013: $11 $11 $11
	ld   de, $bf78                                   ; $7016: $11 $78 $bf
	rst  $38                                         ; $7019: $ff
	rst  $38                                         ; $701a: $ff
	rst  $38                                         ; $701b: $ff
	or   $11                                         ; $701c: $f6 $11
	ld   de, $5f11                                   ; $701e: $11 $11 $5f
	ld   hl, sp-$41                                  ; $7021: $f8 $bf
	rst  $38                                         ; $7023: $ff
	jp   hl                                          ; $7024: $e9


	ld   de, $1111                                   ; $7025: $11 $11 $11
	inc  de                                          ; $7028: $13
	xor  c                                           ; $7029: $a9
	xor  a                                           ; $702a: $af
	rst  $38                                         ; $702b: $ff
	rst  $38                                         ; $702c: $ff
	rst  $38                                         ; $702d: $ff
	di                                               ; $702e: $f3
	ld   de, $1111                                   ; $702f: $11 $11 $11
	xor  a                                           ; $7032: $af
	ld   a, [$ffef]                                  ; $7033: $fa $ef $ff
	rst  $10                                         ; $7036: $d7
	ld   de, $1111                                   ; $7037: $11 $11 $11
	dec  d                                           ; $703a: $15
	cp   c                                           ; $703b: $b9
	rst  $38                                         ; $703c: $ff
	rst  $38                                         ; $703d: $ff
	rst  $38                                         ; $703e: $ff
	rst  $38                                         ; $703f: $ff
	pop  af                                          ; $7040: $f1
	ld   de, $1311                                   ; $7041: $11 $11 $13
	rst  $38                                         ; $7044: $ff
	ei                                               ; $7045: $fb
	rst  $38                                         ; $7046: $ff
	cp   $a1                                         ; $7047: $fe $a1
	ld   de, $1111                                   ; $7049: $11 $11 $11
	ld   a, [de]                                     ; $704c: $1a
	cp   l                                           ; $704d: $bd
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	rst  $38                                         ; $7050: $ff
	rst  $38                                         ; $7051: $ff
	ld   [hl], c                                     ; $7052: $71
	ld   de, $1b11                                   ; $7053: $11 $11 $1b
	rst  $38                                         ; $7056: $ff
	db   $ed                                         ; $7057: $ed
	rst  $38                                         ; $7058: $ff
	db   $fd                                         ; $7059: $fd
	ld   hl, $1111                                   ; $705a: $21 $11 $11
	ld   de, $cfbf                                   ; $705d: $11 $bf $cf
	rst  $38                                         ; $7060: $ff
	rst  $38                                         ; $7061: $ff
	rst  $38                                         ; $7062: $ff
	ld   sp, hl                                      ; $7063: $f9
	ld   de, $1311                                   ; $7064: $11 $11 $13
	xor  a                                           ; $7067: $af
	rst  $38                                         ; $7068: $ff
	rst  $28                                         ; $7069: $ef
	rst  $38                                         ; $706a: $ff
	pop  de                                          ; $706b: $d1
	ld   de, $1112                                   ; $706c: $11 $12 $11
	ld   e, $fb                                      ; $706f: $1e $fb
	rst  $38                                         ; $7071: $ff
	rst  $38                                         ; $7072: $ff
	rst  $38                                         ; $7073: $ff
	rst  $38                                         ; $7074: $ff
	add  c                                           ; $7075: $81
	ld   de, $4c11                                   ; $7076: $11 $11 $4c
	rst  $38                                         ; $7079: $ff
	db   $fc                                         ; $707a: $fc
	rst  $38                                         ; $707b: $ff
	ld   a, [$1111]                                  ; $707c: $fa $11 $11
	ld   sp, $ff15                                   ; $707f: $31 $15 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7082: $cf
	rst  $38                                         ; $7083: $ff
	rst  $38                                         ; $7084: $ff
	cp   a                                           ; $7085: $bf
	pop  af                                          ; $7086: $f1
	ld   de, $7911                                   ; $7087: $11 $11 $79
	rst  $38                                         ; $708a: $ff
	rst  $38                                         ; $708b: $ff
	xor  a                                           ; $708c: $af
	db   $fd                                         ; $708d: $fd
	ld   de, $8111                                   ; $708e: $11 $11 $81
	ld   de, $cfff                                   ; $7091: $11 $ff $cf
	rst  $38                                         ; $7094: $ff
	rst  $38                                         ; $7095: $ff
	adc  l                                           ; $7096: $8d
	di                                               ; $7097: $f3
	ld   de, $ab13                                   ; $7098: $11 $13 $ab
	rst  $38                                         ; $709b: $ff
	rst  $38                                         ; $709c: $ff
	ld   a, h                                        ; $709d: $7c
	db   $fd                                         ; $709e: $fd
	ld   de, $a111                                   ; $709f: $11 $11 $a1
	inc  de                                          ; $70a2: $13
	rst  $38                                         ; $70a3: $ff
	rst  JumpTable                                         ; $70a4: $df
	rst  $38                                         ; $70a5: $ff
	rst  $38                                         ; $70a6: $ff
	ld   l, h                                        ; $70a7: $6c
	pop  de                                          ; $70a8: $d1
	ld   de, $fc18                                   ; $70a9: $11 $18 $fc
	rst  $38                                         ; $70ac: $ff
	cp   $5d                                         ; $70ad: $fe $5d
	ld   hl, sp+$11                                  ; $70af: $f8 $11
	ld   d, $31                                      ; $70b1: $16 $31
	rra                                              ; $70b3: $1f
	rst  $38                                         ; $70b4: $ff
	rst  $38                                         ; $70b5: $ff
	rst  $38                                         ; $70b6: $ff
	push af                                          ; $70b7: $f5
	ld   l, h                                        ; $70b8: $6c
	ld   [hl], c                                     ; $70b9: $71
	ld   de, $fe3f                                   ; $70ba: $11 $3f $fe
	rst  $38                                         ; $70bd: $ff
	rst  $30                                         ; $70be: $f7
	adc  a                                           ; $70bf: $8f
	pop  bc                                          ; $70c0: $c1
	ld   de, $1117                                   ; $70c1: $11 $17 $11
	xor  a                                           ; $70c4: $af
	rst  $38                                         ; $70c5: $ff
	rst  $38                                         ; $70c6: $ff
	rst  $38                                         ; $70c7: $ff
	sub  e                                           ; $70c8: $93
	sub  [hl]                                        ; $70c9: $96
	ld   de, rAUD1LOW                                   ; $70ca: $11 $13 $ff
	rst  $28                                         ; $70cd: $ef
	rst  $38                                         ; $70ce: $ff
	ld   [hl], l                                     ; $70cf: $75
	reti                                             ; $70d0: $d9


	ld   de, $2114                                   ; $70d1: $11 $14 $21
	rra                                              ; $70d4: $1f
	rst  $38                                         ; $70d5: $ff
	rst  $38                                         ; $70d6: $ff
	rst  $38                                         ; $70d7: $ff
	push af                                          ; $70d8: $f5
	ld   c, b                                        ; $70d9: $48
	ld   de, $bf11                                   ; $70da: $11 $11 $bf
	rst  $38                                         ; $70dd: $ff
	rst  $38                                         ; $70de: $ff
	db   $d3                                         ; $70df: $d3
	adc  e                                           ; $70e0: $8b
	ld   de, $8111                                   ; $70e1: $11 $11 $81
	add  hl, de                                      ; $70e4: $19
	rst  $38                                         ; $70e5: $ff
	rst  $38                                         ; $70e6: $ff
	rst  $38                                         ; $70e7: $ff
	ld   hl, sp+$15                                  ; $70e8: $f8 $15
	ld   b, c                                        ; $70ea: $41
	ld   de, $ff6f                                   ; $70eb: $11 $6f $ff
	rst  $38                                         ; $70ee: $ff
	or   $3b                                         ; $70ef: $f6 $3b
	ld   d, c                                        ; $70f1: $51
	ld   de, $1371                                   ; $70f2: $11 $71 $13
	rst  $38                                         ; $70f5: $ff
	rst  $38                                         ; $70f6: $ff
	rst  $38                                         ; $70f7: $ff
	db   $fd                                         ; $70f8: $fd
	ld   [de], a                                     ; $70f9: $12
	ld   b, c                                        ; $70fa: $41
	ld   de, $ff4f                                   ; $70fb: $11 $4f $ff
	rst  $38                                         ; $70fe: $ff
	ld   hl, sp+$18                                  ; $70ff: $f8 $18
	ld   h, c                                        ; $7101: $61
	ld   de, $1481                                   ; $7102: $11 $81 $14
	rst  $38                                         ; $7105: $ff
	rst  $38                                         ; $7106: $ff
	rst  $38                                         ; $7107: $ff
	db   $fd                                         ; $7108: $fd
	ld   de, $1141                                   ; $7109: $11 $41 $11
	ld   l, a                                        ; $710c: $6f
	rst  $38                                         ; $710d: $ff
	rst  $38                                         ; $710e: $ff
	or   $15                                         ; $710f: $f6 $15
	ld   de, $8111                                   ; $7111: $11 $11 $81
	dec  e                                           ; $7114: $1d
	rst  $38                                         ; $7115: $ff
	rst  $38                                         ; $7116: $ff
	rst  $38                                         ; $7117: $ff
	push af                                          ; $7118: $f5
	ld   de, $1111                                   ; $7119: $11 $11 $11
	rst  JumpTable                                         ; $711c: $df
	rst  $38                                         ; $711d: $ff
	rst  $38                                         ; $711e: $ff
	db   $d3                                         ; $711f: $d3
	ld   [de], a                                     ; $7120: $12
	ld   de, $5112                                   ; $7121: $11 $12 $51
	rra                                              ; $7124: $1f
	rst  $38                                         ; $7125: $ff
	rst  $38                                         ; $7126: $ff
	rst  $38                                         ; $7127: $ff
	pop  af                                          ; $7128: $f1
	ld   de, $1711                                   ; $7129: $11 $11 $17
	rst  $38                                         ; $712c: $ff
	rst  $38                                         ; $712d: $ff
	rst  $38                                         ; $712e: $ff
	and  d                                           ; $712f: $a2
	ld   de, $1711                                   ; $7130: $11 $11 $17
	ld   de, $ffff                                   ; $7133: $11 $ff $ff
	rst  $38                                         ; $7136: $ff
	rst  $38                                         ; $7137: $ff
	ld   de, $1111                                   ; $7138: $11 $11 $11
	cpl                                              ; $713b: $2f
	rst  $38                                         ; $713c: $ff
	rst  $38                                         ; $713d: $ff
	db   $fd                                         ; $713e: $fd
	ld   d, e                                        ; $713f: $53
	ld   de, $5111                                   ; $7140: $11 $11 $51
	rra                                              ; $7143: $1f
	rst  $38                                         ; $7144: $ff
	rst  $38                                         ; $7145: $ff
	rst  $38                                         ; $7146: $ff
	pop  af                                          ; $7147: $f1
	ld   [de], a                                     ; $7148: $12
	ld   de, $ff15                                   ; $7149: $11 $15 $ff
	rst  $38                                         ; $714c: $ff
	rst  $38                                         ; $714d: $ff
	jp   $1141                                       ; $714e: $c3 $41 $11


	ld   h, c                                        ; $7151: $61
	ld   d, $ff                                      ; $7152: $16 $ff
	rst  $38                                         ; $7154: $ff
	rst  $38                                         ; $7155: $ff
	db   $fd                                         ; $7156: $fd
	inc  d                                           ; $7157: $14

Jump_0db_7158:
	ld   de, $ef11                                   ; $7158: $11 $11 $ef
	rst  $38                                         ; $715b: $ff
	rst  $38                                         ; $715c: $ff
	call nc, $1152                                   ; $715d: $d4 $52 $11
	and  c                                           ; $7160: $a1
	inc  d                                           ; $7161: $14
	rst  $38                                         ; $7162: $ff
	rst  $38                                         ; $7163: $ff
	rst  $38                                         ; $7164: $ff
	rst  $38                                         ; $7165: $ff
	rlca                                             ; $7166: $07
	ld   h, c                                        ; $7167: $61
	ld   de, $ffbf                                   ; $7168: $11 $bf $ff
	rst  $38                                         ; $716b: $ff
	sub  d                                           ; $716c: $92
	ld   d, c                                        ; $716d: $51
	ld   de, $1cd1                                   ; $716e: $11 $d1 $1c
	ei                                               ; $7171: $fb
	rst  JumpTable                                         ; $7172: $df
	rst  $38                                         ; $7173: $ff
	ei                                               ; $7174: $fb
	inc  a                                           ; $7175: $3c
	ld   d, c                                        ; $7176: $51
	ld   de, $dbcf                                   ; $7177: $11 $cf $db
	xor  $41                                         ; $717a: $ee $41
	ld   sp, $911e                                   ; $717c: $31 $1e $91
	rra                                              ; $717f: $1f
	rst  $30                                         ; $7180: $f7
	rst  $38                                         ; $7181: $ff
	rst  $38                                         ; $7182: $ff
	di                                               ; $7183: $f3
	adc  [hl]                                        ; $7184: $8e
	ld   de, $ff1a                                   ; $7185: $11 $1a $ff
	cp   e                                           ; $7188: $bb
	rst  ToBoot                                         ; $7189: $c7
	ld   de, $7f11                                   ; $718a: $11 $11 $7f
	ld   de, $9aff                                   ; $718d: $11 $ff $9a
	rst  $38                                         ; $7190: $ff
	rst  $38                                         ; $7191: $ff
	ld   b, e                                        ; $7192: $43
	and  $11                                         ; $7193: $e6 $11
	adc  a                                           ; $7195: $8f
	db   $fc                                         ; $7196: $fc
	xor  h                                           ; $7197: $ac
	ld   [hl], c                                     ; $7198: $71
	ld   de, $f116                                   ; $7199: $11 $16 $f1
	rra                                              ; $719c: $1f
	ei                                               ; $719d: $fb
	xor  a                                           ; $719e: $af
	rst  $38                                         ; $719f: $ff
	db   $e4                                         ; $71a0: $e4
	ld   c, l                                        ; $71a1: $4d
	ld   h, c                                        ; $71a2: $61
	rla                                              ; $71a3: $17
	rst  $38                                         ; $71a4: $ff
	cp   d                                           ; $71a5: $ba
	or   l                                           ; $71a6: $b5
	ld   de, $be11                                   ; $71a7: $11 $11 $be
	ld   de, $bbff                                   ; $71aa: $11 $ff $bb
	rst  $38                                         ; $71ad: $ff
	ei                                               ; $71ae: $fb
	scf                                              ; $71af: $37
	db   $e3                                         ; $71b0: $e3
	ld   de, $f8bf                                   ; $71b1: $11 $bf $f8
	cp   c                                           ; $71b4: $b9
	ld   de, $3f11                                   ; $71b5: $11 $11 $3f
	ld   hl, $f9ff                                   ; $71b8: $21 $ff $f9
	rst  $38                                         ; $71bb: $ff
	db   $fd                                         ; $71bc: $fd
	ld   d, l                                        ; $71bd: $55
	rst  ToBoot                                         ; $71be: $c7
	ld   de, $fa8f                                   ; $71bf: $11 $8f $fa
	sbc  d                                           ; $71c2: $9a
	ld   de, $1f11                                   ; $71c3: $11 $11 $1f
	ld   b, c                                        ; $71c6: $41
	rst  $38                                         ; $71c7: $ff
	ld   hl, sp-$01                                  ; $71c8: $f8 $ff
	db   $fc                                         ; $71ca: $fc
	ld   h, h                                        ; $71cb: $64
	rst  $20                                         ; $71cc: $e7
	ld   de, $ea9f                                   ; $71cd: $11 $9f $ea
	add  a                                           ; $71d0: $87
	ld   hl, $8f11                                   ; $71d1: $21 $11 $8f
	ld   de, $d8ff                                   ; $71d4: $11 $ff $d8
	rst  $38                                         ; $71d7: $ff
	db   $fd                                         ; $71d8: $fd
	ld   e, c                                        ; $71d9: $59
	db   $e4                                         ; $71da: $e4
	ld   de, $b9af                                   ; $71db: $11 $af $b9
	ld   h, d                                        ; $71de: $62
	ld   de, $fa12                                   ; $71df: $11 $12 $fa
	rra                                              ; $71e2: $1f
	rst  $38                                         ; $71e3: $ff
	sbc  h                                           ; $71e4: $9c
	rst  $38                                         ; $71e5: $ff
	jp   c, $816e                                    ; $71e6: $da $6e $81

	ld   h, $db                                      ; $71e9: $26 $db
	halt                                             ; $71eb: $76
	ld   hl, $1f11                                   ; $71ec: $21 $11 $1f
	and  c                                           ; $71ef: $a1
	rst  $38                                         ; $71f0: $ff
	rst  $30                                         ; $71f1: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71f2: $cf
	ei                                               ; $71f3: $fb
	and  [hl]                                        ; $71f4: $a6
	db   $db                                         ; $71f5: $db
	ld   hl, $a46e                                   ; $71f6: $21 $6e $a4
	ld   d, c                                        ; $71f9: $51
	ld   de, $f11b                                   ; $71fa: $11 $1b $f1
	rra                                              ; $71fd: $1f
	ld   a, [$f99f]                                  ; $71fe: $fa $9f $f9
	or   a                                           ; $7201: $b7
	ld   a, a                                        ; $7202: $7f
	ld   h, c                                        ; $7203: $61
	ld   e, e                                        ; $7204: $5b
	sub  $43                                         ; $7205: $d6 $43
	ld   de, $f119                                   ; $7207: $11 $19 $f1
	rra                                              ; $720a: $1f
	ei                                               ; $720b: $fb
	sbc  a                                           ; $720c: $9f
	ei                                               ; $720d: $fb
	add  $3f                                         ; $720e: $c6 $3f
	sub  c                                           ; $7210: $91
	add  hl, hl                                      ; $7211: $29
	sub  $21                                         ; $7212: $d6 $21
	ld   de, $f11f                                   ; $7214: $11 $1f $f1
	adc  a                                           ; $7217: $8f
	or   $af                                         ; $7218: $f6 $af
	ei                                               ; $721a: $fb
	or   c                                           ; $721b: $b1
	xor  a                                           ; $721c: $af
	ld   d, c                                        ; $721d: $51
	ld   c, l                                        ; $721e: $4d
	add  c                                           ; $721f: $81
	ld   de, rAUD1LEN                                   ; $7220: $11 $11 $ff
	ld   de, $98ff                                   ; $7223: $11 $ff $98
	rst  $38                                         ; $7226: $ff
	sbc  a                                           ; $7227: $9f
	dec  [hl]                                        ; $7228: $35
	or   $11                                         ; $7229: $f6 $11
	jp   c, $1111                                    ; $722b: $da $11 $11

	rra                                              ; $722e: $1f
	pop  af                                          ; $722f: $f1
	adc  a                                           ; $7230: $8f
	push af                                          ; $7231: $f5
	cp   a                                           ; $7232: $bf
	ld   a, [$bff2]                                  ; $7233: $fa $f2 $bf
	ld   hl, $411d                                   ; $7236: $21 $1d $41
	ld   de, $f11c                                   ; $7239: $11 $1c $f1
	rra                                              ; $723c: $1f
	ld   a, [$fb1f]                                  ; $723d: $fa $1f $fb
	ldh  a, [c]                                      ; $7240: $f2
	ld   e, a                                        ; $7241: $5f
	or   c                                           ; $7242: $b1
	ld   a, [de]                                     ; $7243: $1a
	and  c                                           ; $7244: $a1
	ld   de, $f11f                                   ; $7245: $11 $1f $f1
	cpl                                              ; $7248: $2f
	db   $f4                                         ; $7249: $f4
	ccf                                              ; $724a: $3f
	db   $fd                                         ; $724b: $fd
	pop  af                                          ; $724c: $f1
	xor  a                                           ; $724d: $af
	ld   hl, $311d                                   ; $724e: $21 $1d $31
	ld   de, $315f                                   ; $7251: $11 $5f $31
	rst  $38                                         ; $7254: $ff
	pop  af                                          ; $7255: $f1
	rst  $38                                         ; $7256: $ff
	rst  $28                                         ; $7257: $ef
	ld   de, $11fb                                   ; $7258: $11 $fb $11
	ld   h, a                                        ; $725b: $67
	ld   de, $f11e                                   ; $725c: $11 $1e $f1
	rra                                              ; $725f: $1f
	rst  $38                                         ; $7260: $ff
	rra                                              ; $7261: $1f
	rst  $38                                         ; $7262: $ff
	pop  af                                          ; $7263: $f1
	ld   l, a                                        ; $7264: $6f
	add  c                                           ; $7265: $81
	jr   jr_0db_7279                                 ; $7266: $18 $11

	ld   de, $1fff                                   ; $7268: $11 $ff $1f
	rst  $38                                         ; $726b: $ff
	sub  [hl]                                        ; $726c: $96
	rst  $38                                         ; $726d: $ff
	pop  af                                          ; $726e: $f1
	rra                                              ; $726f: $1f
	pop  hl                                          ; $7270: $e1
	ld   de, $1131                                   ; $7271: $11 $31 $11
	rst  $38                                         ; $7274: $ff
	rra                                              ; $7275: $1f
	rst  $38                                         ; $7276: $ff
	rst  $38                                         ; $7277: $ff
	rst  $38                                         ; $7278: $ff

jr_0db_7279:
	db   $f4                                         ; $7279: $f4
	rra                                              ; $727a: $1f
	add  c                                           ; $727b: $81
	ld   de, $1211                                   ; $727c: $11 $11 $12
	db   $f4                                         ; $727f: $f4
	rra                                              ; $7280: $1f
	rst  $38                                         ; $7281: $ff
	rst  JumpTable                                         ; $7282: $df
	rst  $38                                         ; $7283: $ff
	pop  af                                          ; $7284: $f1
	adc  a                                           ; $7285: $8f
	ld   sp, $1111                                   ; $7286: $31 $11 $11
	rra                                              ; $7289: $1f
	and  c                                           ; $728a: $a1
	rst  $38                                         ; $728b: $ff
	cp   $ff                                         ; $728c: $fe $ff
	rst  $38                                         ; $728e: $ff
	ld   hl, $11f5                                   ; $728f: $21 $f5 $11
	ld   de, $f111                                   ; $7292: $11 $11 $f1
	rra                                              ; $7295: $1f
	rst  $38                                         ; $7296: $ff
	rst  $38                                         ; $7297: $ff
	rst  $38                                         ; $7298: $ff
	db   $f4                                         ; $7299: $f4
	ld   a, a                                        ; $729a: $7f
	ld   de, $1111                                   ; $729b: $11 $11 $11
	ld   e, a                                        ; $729e: $5f
	ld   d, $ff                                      ; $729f: $16 $ff
	rst  $38                                         ; $72a1: $ff
	rst  $38                                         ; $72a2: $ff
	rst  $38                                         ; $72a3: $ff
	rra                                              ; $72a4: $1f
	pop  af                                          ; $72a5: $f1
	ld   de, $1f11                                   ; $72a6: $11 $11 $1f
	ld   de, $ffff                                   ; $72a9: $11 $ff $ff
	rst  $38                                         ; $72ac: $ff
	rst  $38                                         ; $72ad: $ff
	ld   a, b                                        ; $72ae: $78
	rst  $30                                         ; $72af: $f7
	ld   de, $1411                                   ; $72b0: $11 $11 $14
	sub  c                                           ; $72b3: $91
	ld   l, a                                        ; $72b4: $6f
	rst  $38                                         ; $72b5: $ff
	rst  $38                                         ; $72b6: $ff
	rst  $38                                         ; $72b7: $ff
	or   $ff                                         ; $72b8: $f6 $ff
	ld   de, $1111                                   ; $72ba: $11 $11 $11
	and  c                                           ; $72bd: $a1
	rra                                              ; $72be: $1f
	db   $fd                                         ; $72bf: $fd
	rst  $38                                         ; $72c0: $ff
	rst  $38                                         ; $72c1: $ff
	ld   sp, hl                                      ; $72c2: $f9
	rst  $38                                         ; $72c3: $ff
	add  c                                           ; $72c4: $81
	ld   de, $1411                                   ; $72c5: $11 $11 $14
	ld   de, $bfbb                                   ; $72c8: $11 $bb $bf
	rst  $38                                         ; $72cb: $ff
	rst  $38                                         ; $72cc: $ff
	cp   a                                           ; $72cd: $bf
	or   $33                                         ; $72ce: $f6 $33
	ld   de, $9112                                   ; $72d0: $11 $12 $91
	dec  d                                           ; $72d3: $15
	xor  e                                           ; $72d4: $ab
	adc  [hl]                                        ; $72d5: $8e
	rst  $38                                         ; $72d6: $ff
	ld   a, [$85cc]                                  ; $72d7: $fa $cc $85
	ld   l, d                                        ; $72da: $6a
	or   l                                           ; $72db: $b5
	dec  h                                           ; $72dc: $25
	sub  [hl]                                        ; $72dd: $96
	dec  h                                           ; $72de: $25
	ld   [hl], a                                     ; $72df: $77
	ld   d, a                                        ; $72e0: $57
	adc  b                                           ; $72e1: $88
	xor  b                                           ; $72e2: $a8
	adc  c                                           ; $72e3: $89
	cp   h                                           ; $72e4: $bc
	cp   d                                           ; $72e5: $ba
	xor  c                                           ; $72e6: $a9
	sub  [hl]                                        ; $72e7: $96
	adc  d                                           ; $72e8: $8a
	add  l                                           ; $72e9: $85
	ld   b, h                                        ; $72ea: $44
	ld   d, l                                        ; $72eb: $55
	ld   b, l                                        ; $72ec: $45
	ld   h, a                                        ; $72ed: $67
	ld   a, b                                        ; $72ee: $78
	cp   h                                           ; $72ef: $bc
	cp   d                                           ; $72f0: $ba
	xor  h                                           ; $72f1: $ac
	jp   z, $9988                                    ; $72f2: $ca $88 $99

	ld   h, l                                        ; $72f5: $65
	ld   h, [hl]                                     ; $72f6: $66
	ld   d, h                                        ; $72f7: $54
	ld   b, [hl]                                     ; $72f8: $46
	ld   [hl], a                                     ; $72f9: $77
	ld   a, b                                        ; $72fa: $78
	sbc  d                                           ; $72fb: $9a
	xor  d                                           ; $72fc: $aa
	xor  d                                           ; $72fd: $aa
	cp   c                                           ; $72fe: $b9
	sbc  c                                           ; $72ff: $99
	sbc  b                                           ; $7300: $98
	ld   a, b                                        ; $7301: $78
	add  a                                           ; $7302: $87
	ld   h, [hl]                                     ; $7303: $66
	halt                                             ; $7304: $76
	ld   a, c                                        ; $7305: $79
	add  [hl]                                        ; $7306: $86
	ld   h, a                                        ; $7307: $67
	sbc  c                                           ; $7308: $99
	ld   [hl], a                                     ; $7309: $77
	sbc  d                                           ; $730a: $9a
	adc  b                                           ; $730b: $88
	adc  c                                           ; $730c: $89
	xor  b                                           ; $730d: $a8
	ld   [hl], a                                     ; $730e: $77
	sbc  c                                           ; $730f: $99
	halt                                             ; $7310: $76
	ld   a, b                                        ; $7311: $78
	add  a                                           ; $7312: $87
	ld   l, b                                        ; $7313: $68
	sbc  b                                           ; $7314: $98
	ld   [hl], a                                     ; $7315: $77
	sbc  c                                           ; $7316: $99
	add  a                                           ; $7317: $87
	sbc  c                                           ; $7318: $99
	adc  b                                           ; $7319: $88
	adc  c                                           ; $731a: $89
	sbc  c                                           ; $731b: $99
	adc  b                                           ; $731c: $88
	adc  b                                           ; $731d: $88
	sbc  d                                           ; $731e: $9a
	add  a                                           ; $731f: $87
	ld   a, c                                        ; $7320: $79
	sub  a                                           ; $7321: $97
	ld   a, b                                        ; $7322: $78
	sbc  b                                           ; $7323: $98
	ld   [hl], a                                     ; $7324: $77
	adc  b                                           ; $7325: $88
	ld   a, b                                        ; $7326: $78
	sbc  b                                           ; $7327: $98
	adc  b                                           ; $7328: $88
	sbc  b                                           ; $7329: $98
	sbc  b                                           ; $732a: $98
	sbc  b                                           ; $732b: $98
	adc  c                                           ; $732c: $89
	adc  b                                           ; $732d: $88
	add  a                                           ; $732e: $87
	adc  b                                           ; $732f: $88
	ld   [hl], a                                     ; $7330: $77
	adc  b                                           ; $7331: $88
	add  a                                           ; $7332: $87
	adc  b                                           ; $7333: $88
	adc  b                                           ; $7334: $88
	sbc  c                                           ; $7335: $99
	sbc  b                                           ; $7336: $98
	adc  b                                           ; $7337: $88
	adc  c                                           ; $7338: $89
	adc  b                                           ; $7339: $88
	ld   [hl], a                                     ; $733a: $77
	adc  b                                           ; $733b: $88
	sbc  b                                           ; $733c: $98
	adc  b                                           ; $733d: $88
	ld   a, b                                        ; $733e: $78
	adc  b                                           ; $733f: $88
	adc  b                                           ; $7340: $88
	adc  b                                           ; $7341: $88
	sbc  c                                           ; $7342: $99
	adc  b                                           ; $7343: $88
	adc  b                                           ; $7344: $88
	adc  b                                           ; $7345: $88
	adc  b                                           ; $7346: $88
	ld   a, b                                        ; $7347: $78
	adc  b                                           ; $7348: $88
	adc  c                                           ; $7349: $89
	sbc  b                                           ; $734a: $98
	adc  b                                           ; $734b: $88
	adc  c                                           ; $734c: $89
	adc  b                                           ; $734d: $88
	adc  b                                           ; $734e: $88
	adc  b                                           ; $734f: $88
	adc  b                                           ; $7350: $88
	adc  b                                           ; $7351: $88
	adc  b                                           ; $7352: $88
	adc  b                                           ; $7353: $88
	adc  b                                           ; $7354: $88
	adc  c                                           ; $7355: $89
	adc  b                                           ; $7356: $88
	adc  b                                           ; $7357: $88
	adc  b                                           ; $7358: $88
	adc  b                                           ; $7359: $88
	adc  b                                           ; $735a: $88
	adc  b                                           ; $735b: $88
	adc  c                                           ; $735c: $89
	adc  b                                           ; $735d: $88
	adc  b                                           ; $735e: $88
	adc  b                                           ; $735f: $88
	adc  b                                           ; $7360: $88
	adc  b                                           ; $7361: $88
	adc  b                                           ; $7362: $88
	adc  b                                           ; $7363: $88
	adc  b                                           ; $7364: $88
	adc  b                                           ; $7365: $88
	adc  b                                           ; $7366: $88
	adc  b                                           ; $7367: $88
	adc  b                                           ; $7368: $88
	adc  b                                           ; $7369: $88
	adc  b                                           ; $736a: $88
	adc  b                                           ; $736b: $88
	adc  b                                           ; $736c: $88
	adc  b                                           ; $736d: $88
	adc  b                                           ; $736e: $88
	adc  b                                           ; $736f: $88
	adc  b                                           ; $7370: $88
	adc  b                                           ; $7371: $88
	adc  b                                           ; $7372: $88
	adc  b                                           ; $7373: $88
	adc  b                                           ; $7374: $88
	adc  b                                           ; $7375: $88
	adc  b                                           ; $7376: $88
	adc  b                                           ; $7377: $88
	adc  b                                           ; $7378: $88
	adc  b                                           ; $7379: $88
	adc  b                                           ; $737a: $88
	adc  b                                           ; $737b: $88
	adc  b                                           ; $737c: $88
	adc  b                                           ; $737d: $88
	adc  b                                           ; $737e: $88
	adc  b                                           ; $737f: $88
	adc  b                                           ; $7380: $88
	adc  b                                           ; $7381: $88
	adc  b                                           ; $7382: $88
	adc  b                                           ; $7383: $88
	adc  b                                           ; $7384: $88
	adc  b                                           ; $7385: $88
	adc  b                                           ; $7386: $88
	adc  b                                           ; $7387: $88
	adc  b                                           ; $7388: $88
	adc  b                                           ; $7389: $88
	adc  b                                           ; $738a: $88
	adc  b                                           ; $738b: $88
	adc  b                                           ; $738c: $88
	adc  b                                           ; $738d: $88
	adc  b                                           ; $738e: $88
	adc  b                                           ; $738f: $88
	adc  b                                           ; $7390: $88
	adc  b                                           ; $7391: $88
	adc  b                                           ; $7392: $88
	adc  b                                           ; $7393: $88
	adc  b                                           ; $7394: $88
	adc  b                                           ; $7395: $88
	adc  b                                           ; $7396: $88
	adc  b                                           ; $7397: $88
	adc  b                                           ; $7398: $88
	adc  b                                           ; $7399: $88
	adc  b                                           ; $739a: $88
	adc  b                                           ; $739b: $88
	adc  b                                           ; $739c: $88
	adc  b                                           ; $739d: $88
	adc  b                                           ; $739e: $88
	adc  b                                           ; $739f: $88
	adc  b                                           ; $73a0: $88
	adc  b                                           ; $73a1: $88
	adc  b                                           ; $73a2: $88
	adc  b                                           ; $73a3: $88
	adc  b                                           ; $73a4: $88
	adc  b                                           ; $73a5: $88
	adc  b                                           ; $73a6: $88
	adc  b                                           ; $73a7: $88
	adc  b                                           ; $73a8: $88
	adc  b                                           ; $73a9: $88
	adc  b                                           ; $73aa: $88
	adc  b                                           ; $73ab: $88
	adc  b                                           ; $73ac: $88
	adc  b                                           ; $73ad: $88
	adc  b                                           ; $73ae: $88
	adc  b                                           ; $73af: $88
	adc  b                                           ; $73b0: $88
	adc  b                                           ; $73b1: $88
	adc  b                                           ; $73b2: $88
	adc  b                                           ; $73b3: $88
	adc  b                                           ; $73b4: $88
	adc  b                                           ; $73b5: $88
	adc  b                                           ; $73b6: $88
	adc  b                                           ; $73b7: $88
	adc  b                                           ; $73b8: $88
	adc  b                                           ; $73b9: $88
	adc  b                                           ; $73ba: $88
	adc  b                                           ; $73bb: $88
	adc  b                                           ; $73bc: $88
	adc  b                                           ; $73bd: $88
	adc  b                                           ; $73be: $88
	adc  b                                           ; $73bf: $88
	adc  b                                           ; $73c0: $88
	adc  b                                           ; $73c1: $88
	adc  b                                           ; $73c2: $88
	adc  b                                           ; $73c3: $88
	adc  b                                           ; $73c4: $88
	adc  b                                           ; $73c5: $88
	adc  b                                           ; $73c6: $88
	adc  b                                           ; $73c7: $88
	adc  b                                           ; $73c8: $88
	adc  b                                           ; $73c9: $88
	adc  b                                           ; $73ca: $88
	adc  b                                           ; $73cb: $88
	adc  b                                           ; $73cc: $88
	adc  b                                           ; $73cd: $88
	adc  b                                           ; $73ce: $88
	adc  b                                           ; $73cf: $88
	adc  b                                           ; $73d0: $88
	adc  b                                           ; $73d1: $88
	adc  b                                           ; $73d2: $88
	adc  b                                           ; $73d3: $88
	adc  b                                           ; $73d4: $88
	adc  b                                           ; $73d5: $88
	adc  b                                           ; $73d6: $88
	adc  b                                           ; $73d7: $88
	adc  b                                           ; $73d8: $88
	adc  b                                           ; $73d9: $88
	adc  b                                           ; $73da: $88
	adc  b                                           ; $73db: $88
	adc  b                                           ; $73dc: $88
	adc  b                                           ; $73dd: $88
	adc  b                                           ; $73de: $88
	adc  b                                           ; $73df: $88
	adc  b                                           ; $73e0: $88
	adc  b                                           ; $73e1: $88
	adc  b                                           ; $73e2: $88
	adc  b                                           ; $73e3: $88
	adc  b                                           ; $73e4: $88
	adc  b                                           ; $73e5: $88
	adc  b                                           ; $73e6: $88
	adc  b                                           ; $73e7: $88
	adc  b                                           ; $73e8: $88
	adc  b                                           ; $73e9: $88
	adc  b                                           ; $73ea: $88
	adc  b                                           ; $73eb: $88
	adc  b                                           ; $73ec: $88
	adc  b                                           ; $73ed: $88
	adc  b                                           ; $73ee: $88
	adc  b                                           ; $73ef: $88
	adc  b                                           ; $73f0: $88
	adc  b                                           ; $73f1: $88
	adc  b                                           ; $73f2: $88
	adc  b                                           ; $73f3: $88
	adc  b                                           ; $73f4: $88
	adc  b                                           ; $73f5: $88
	adc  b                                           ; $73f6: $88
	adc  b                                           ; $73f7: $88
	adc  b                                           ; $73f8: $88
	adc  b                                           ; $73f9: $88
	adc  b                                           ; $73fa: $88
	adc  b                                           ; $73fb: $88
	adc  b                                           ; $73fc: $88
	adc  b                                           ; $73fd: $88
	adc  b                                           ; $73fe: $88
	adc  b                                           ; $73ff: $88
	adc  b                                           ; $7400: $88
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	adc  b                                           ; $7403: $88
	adc  b                                           ; $7404: $88
	adc  b                                           ; $7405: $88
	adc  b                                           ; $7406: $88
	adc  b                                           ; $7407: $88
	adc  b                                           ; $7408: $88
	adc  b                                           ; $7409: $88
	adc  b                                           ; $740a: $88
	adc  b                                           ; $740b: $88
	adc  b                                           ; $740c: $88
	adc  b                                           ; $740d: $88
	adc  b                                           ; $740e: $88
	adc  b                                           ; $740f: $88
	adc  b                                           ; $7410: $88
	adc  b                                           ; $7411: $88
	adc  b                                           ; $7412: $88
	adc  b                                           ; $7413: $88
	adc  b                                           ; $7414: $88
	adc  b                                           ; $7415: $88
	adc  b                                           ; $7416: $88
	adc  b                                           ; $7417: $88
	adc  b                                           ; $7418: $88
	adc  b                                           ; $7419: $88
	adc  b                                           ; $741a: $88
	adc  b                                           ; $741b: $88
	adc  b                                           ; $741c: $88
	adc  b                                           ; $741d: $88
	adc  b                                           ; $741e: $88
	adc  b                                           ; $741f: $88
	adc  b                                           ; $7420: $88
	adc  b                                           ; $7421: $88
	adc  b                                           ; $7422: $88
	adc  b                                           ; $7423: $88
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	adc  b                                           ; $7426: $88
	adc  b                                           ; $7427: $88
	adc  b                                           ; $7428: $88
	adc  b                                           ; $7429: $88
	adc  b                                           ; $742a: $88
	adc  b                                           ; $742b: $88
	adc  b                                           ; $742c: $88
	adc  b                                           ; $742d: $88
	adc  b                                           ; $742e: $88
	adc  b                                           ; $742f: $88
	adc  b                                           ; $7430: $88
	adc  b                                           ; $7431: $88
	adc  b                                           ; $7432: $88
	adc  b                                           ; $7433: $88
	adc  b                                           ; $7434: $88
	adc  b                                           ; $7435: $88
	adc  b                                           ; $7436: $88
	adc  b                                           ; $7437: $88
	adc  b                                           ; $7438: $88
	adc  b                                           ; $7439: $88
	adc  b                                           ; $743a: $88
	adc  b                                           ; $743b: $88
	adc  b                                           ; $743c: $88
	adc  b                                           ; $743d: $88
	adc  b                                           ; $743e: $88
	adc  b                                           ; $743f: $88
	adc  b                                           ; $7440: $88
	adc  b                                           ; $7441: $88
	adc  b                                           ; $7442: $88
	adc  b                                           ; $7443: $88
	adc  b                                           ; $7444: $88
	adc  b                                           ; $7445: $88
	adc  b                                           ; $7446: $88
	adc  b                                           ; $7447: $88
	adc  b                                           ; $7448: $88
	adc  b                                           ; $7449: $88
	adc  b                                           ; $744a: $88
	adc  b                                           ; $744b: $88
	adc  b                                           ; $744c: $88
	adc  b                                           ; $744d: $88
	adc  b                                           ; $744e: $88
	adc  b                                           ; $744f: $88
	adc  b                                           ; $7450: $88
	adc  b                                           ; $7451: $88
	adc  b                                           ; $7452: $88
	adc  b                                           ; $7453: $88
	adc  b                                           ; $7454: $88
	adc  b                                           ; $7455: $88
	adc  b                                           ; $7456: $88
	adc  b                                           ; $7457: $88
	adc  b                                           ; $7458: $88
	adc  b                                           ; $7459: $88
	adc  b                                           ; $745a: $88
	adc  b                                           ; $745b: $88
	adc  b                                           ; $745c: $88
	adc  b                                           ; $745d: $88
	adc  b                                           ; $745e: $88
	adc  b                                           ; $745f: $88
	adc  b                                           ; $7460: $88
	adc  b                                           ; $7461: $88
	adc  b                                           ; $7462: $88
	adc  b                                           ; $7463: $88
	adc  b                                           ; $7464: $88
	adc  b                                           ; $7465: $88
	adc  b                                           ; $7466: $88
	adc  b                                           ; $7467: $88
	adc  b                                           ; $7468: $88
	adc  b                                           ; $7469: $88
	adc  b                                           ; $746a: $88
	adc  b                                           ; $746b: $88
	adc  b                                           ; $746c: $88
	adc  b                                           ; $746d: $88
	adc  b                                           ; $746e: $88
	adc  b                                           ; $746f: $88
	adc  b                                           ; $7470: $88
	adc  b                                           ; $7471: $88
	adc  b                                           ; $7472: $88
	adc  b                                           ; $7473: $88
	adc  b                                           ; $7474: $88
	adc  b                                           ; $7475: $88
	adc  b                                           ; $7476: $88
	adc  b                                           ; $7477: $88
	adc  b                                           ; $7478: $88
	adc  b                                           ; $7479: $88

Call_0db_747a:
	adc  b                                           ; $747a: $88
	adc  b                                           ; $747b: $88
	adc  b                                           ; $747c: $88
	adc  b                                           ; $747d: $88
	adc  b                                           ; $747e: $88
	adc  b                                           ; $747f: $88
	adc  b                                           ; $7480: $88
	adc  b                                           ; $7481: $88
	adc  b                                           ; $7482: $88
	adc  b                                           ; $7483: $88
	adc  b                                           ; $7484: $88
	adc  b                                           ; $7485: $88
	adc  b                                           ; $7486: $88
	adc  b                                           ; $7487: $88
	adc  b                                           ; $7488: $88
	adc  b                                           ; $7489: $88
	adc  b                                           ; $748a: $88
	adc  b                                           ; $748b: $88
	adc  b                                           ; $748c: $88
	adc  b                                           ; $748d: $88
	adc  b                                           ; $748e: $88
	adc  b                                           ; $748f: $88
	adc  b                                           ; $7490: $88
	adc  b                                           ; $7491: $88
	adc  b                                           ; $7492: $88
	adc  b                                           ; $7493: $88
	adc  b                                           ; $7494: $88
	adc  b                                           ; $7495: $88
	adc  b                                           ; $7496: $88
	adc  b                                           ; $7497: $88
	adc  b                                           ; $7498: $88
	adc  b                                           ; $7499: $88
	adc  b                                           ; $749a: $88
	adc  b                                           ; $749b: $88
	adc  b                                           ; $749c: $88
	adc  b                                           ; $749d: $88
	adc  b                                           ; $749e: $88
	adc  b                                           ; $749f: $88
	adc  b                                           ; $74a0: $88
	adc  b                                           ; $74a1: $88
	adc  b                                           ; $74a2: $88
	adc  b                                           ; $74a3: $88
	adc  b                                           ; $74a4: $88
	adc  b                                           ; $74a5: $88
	adc  b                                           ; $74a6: $88
	adc  b                                           ; $74a7: $88
	adc  b                                           ; $74a8: $88

Call_0db_74a9:
	adc  b                                           ; $74a9: $88

Call_0db_74aa:
	adc  b                                           ; $74aa: $88
	adc  b                                           ; $74ab: $88
	adc  b                                           ; $74ac: $88
	sbc  b                                           ; $74ad: $98
	adc  b                                           ; $74ae: $88
	adc  b                                           ; $74af: $88
	sbc  c                                           ; $74b0: $99
	adc  b                                           ; $74b1: $88
	adc  b                                           ; $74b2: $88
	ld   [hl], a                                     ; $74b3: $77
	ld   [hl], a                                     ; $74b4: $77
	adc  b                                           ; $74b5: $88
	ld   [hl], a                                     ; $74b6: $77
	adc  b                                           ; $74b7: $88
	sbc  c                                           ; $74b8: $99
	add  a                                           ; $74b9: $87
	adc  b                                           ; $74ba: $88
	sbc  c                                           ; $74bb: $99
	add  a                                           ; $74bc: $87
	ld   [hl], a                                     ; $74bd: $77
	adc  c                                           ; $74be: $89
	sbc  b                                           ; $74bf: $98
	ld   [hl], a                                     ; $74c0: $77
	adc  b                                           ; $74c1: $88
	adc  b                                           ; $74c2: $88
	ld   [hl], a                                     ; $74c3: $77
	ld   a, c                                        ; $74c4: $79
	adc  b                                           ; $74c5: $88
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	add  a                                           ; $74c8: $87
	ld   [hl], a                                     ; $74c9: $77
	ld   a, b                                        ; $74ca: $78
	cp   d                                           ; $74cb: $ba
	sub  l                                           ; $74cc: $95
	ld   d, a                                        ; $74cd: $57
	xor  e                                           ; $74ce: $ab
	sub  [hl]                                        ; $74cf: $96
	ld   a, d                                        ; $74d0: $7a
	xor  c                                           ; $74d1: $a9
	sbc  c                                           ; $74d2: $99
	sbc  b                                           ; $74d3: $98
	sbc  c                                           ; $74d4: $99
	sbc  b                                           ; $74d5: $98
	adc  b                                           ; $74d6: $88
	add  [hl]                                        ; $74d7: $86
	ld   b, e                                        ; $74d8: $43
	ld   d, a                                        ; $74d9: $57
	xor  e                                           ; $74da: $ab

Call_0db_74db:
	add  l                                           ; $74db: $85
	ld   b, l                                        ; $74dc: $45
	adc  e                                           ; $74dd: $8b
	xor  c                                           ; $74de: $a9
	adc  e                                           ; $74df: $8b
	jp   z, Jump_0db_7d84                            ; $74e0: $ca $84 $7d

	db   $fd                                         ; $74e3: $fd
	ld   h, c                                        ; $74e4: $61
	ld   de, $a47c                                   ; $74e5: $11 $7c $a4
	ld   [de], a                                     ; $74e8: $12
	sbc  a                                           ; $74e9: $9f
	ei                                               ; $74ea: $fb
	ld   b, c                                        ; $74eb: $41
	add  hl, hl                                      ; $74ec: $29
	rst  $38                                         ; $74ed: $ff
	or   l                                           ; $74ee: $b5
	inc  sp                                          ; $74ef: $33
	adc  c                                           ; $74f0: $89
	xor  c                                           ; $74f1: $a9
	sbc  b                                           ; $74f2: $98
	adc  d                                           ; $74f3: $8a
	adc  c                                           ; $74f4: $89
	adc  b                                           ; $74f5: $88
	halt                                             ; $74f6: $76
	halt                                             ; $74f7: $76
	ld   a, b                                        ; $74f8: $78
	sbc  e                                           ; $74f9: $9b
	sub  [hl]                                        ; $74fa: $96
	ld   b, l                                        ; $74fb: $45
	ld   a, c                                        ; $74fc: $79
	xor  b                                           ; $74fd: $a8
	ld   [hl], a                                     ; $74fe: $77
	adc  c                                           ; $74ff: $89
	adc  c                                           ; $7500: $89
	xor  b                                           ; $7501: $a8
	ld   [hl], a                                     ; $7502: $77
	adc  b                                           ; $7503: $88
	xor  c                                           ; $7504: $a9
	ld   [hl], l                                     ; $7505: $75
	ld   d, [hl]                                     ; $7506: $56
	ld   [hl], a                                     ; $7507: $77
	halt                                             ; $7508: $76
	ld   d, h                                        ; $7509: $54
	ld   h, a                                        ; $750a: $67
	adc  c                                           ; $750b: $89
	sbc  b                                           ; $750c: $98
	sbc  e                                           ; $750d: $9b
	cp   d                                           ; $750e: $ba
	sbc  e                                           ; $750f: $9b
	call $96ba                                       ; $7510: $cd $ba $96
	ld   h, [hl]                                     ; $7513: $66
	ld   h, h                                        ; $7514: $64
	ld   hl, $5711                                   ; $7515: $21 $11 $57
	halt                                             ; $7518: $76
	ld   e, c                                        ; $7519: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $751a: $cf
	rst  $38                                         ; $751b: $ff
	call c, $fedf                                    ; $751c: $dc $df $fe
	rst  ToBoot                                         ; $751f: $c7
	ld   b, e                                        ; $7520: $43
	inc  sp                                          ; $7521: $33
	ld   de, $1511                                   ; $7522: $11 $11 $15
	sbc  h                                           ; $7525: $9c
	xor  b                                           ; $7526: $a8
	xor  l                                           ; $7527: $ad
	rst  $38                                         ; $7528: $ff
	rst  $38                                         ; $7529: $ff
	rst  JumpTable                                         ; $752a: $df
	cp   $b5                                         ; $752b: $fe $b5
	ld   de, $1111                                   ; $752d: $11 $11 $11
	ld   de, $ef18                                   ; $7530: $11 $18 $ef
	db   $fc                                         ; $7533: $fc
	rst  JumpTable                                         ; $7534: $df
	rst  $38                                         ; $7535: $ff
	rst  $38                                         ; $7536: $ff
	db   $dd                                         ; $7537: $dd
	and  a                                           ; $7538: $a7
	ld   de, $1111                                   ; $7539: $11 $11 $11
	ld   de, $df17                                   ; $753c: $11 $17 $df
	rst  $38                                         ; $753f: $ff
	rst  $38                                         ; $7540: $ff
	rst  $38                                         ; $7541: $ff
	rst  $38                                         ; $7542: $ff
	ld   [$1173], a                                  ; $7543: $ea $73 $11
	ld   de, $1411                                   ; $7546: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7549: $cf
	rst  $38                                         ; $754a: $ff
	rst  $38                                         ; $754b: $ff
	rst  $38                                         ; $754c: $ff
	rst  $38                                         ; $754d: $ff
	jp   hl                                          ; $754e: $e9


	adc  b                                           ; $754f: $88
	ld   h, d                                        ; $7550: $62
	ld   de, $1111                                   ; $7551: $11 $11 $11
	adc  a                                           ; $7554: $8f
	rst  $38                                         ; $7555: $ff
	rst  $38                                         ; $7556: $ff
	rst  $38                                         ; $7557: $ff
	rst  $38                                         ; $7558: $ff
	db   $fd                                         ; $7559: $fd
	bit  4, c                                        ; $755a: $cb $61
	ld   de, $1111                                   ; $755c: $11 $11 $11
	inc  l                                           ; $755f: $2c
	rst  $38                                         ; $7560: $ff
	rst  $38                                         ; $7561: $ff
	rst  $38                                         ; $7562: $ff
	db   $fd                                         ; $7563: $fd
	db   $fd                                         ; $7564: $fd
	sbc  $83                                         ; $7565: $de $83
	ld   de, $1111                                   ; $7567: $11 $11 $11
	dec  de                                          ; $756a: $1b
	rst  $38                                         ; $756b: $ff
	rst  $38                                         ; $756c: $ff
	rst  $38                                         ; $756d: $ff
	call c, $dddc                                    ; $756e: $dc $dc $dd
	sub  d                                           ; $7571: $92
	ld   de, $1111                                   ; $7572: $11 $11 $11
	ld   e, a                                        ; $7575: $5f
	rst  $38                                         ; $7576: $ff
	rst  $38                                         ; $7577: $ff
	rst  $38                                         ; $7578: $ff
	or   a                                           ; $7579: $b7
	adc  b                                           ; $757a: $88
	cp   a                                           ; $757b: $bf
	jp   $1111                                       ; $757c: $c3 $11 $11


	ld   de, $ffff                                   ; $757f: $11 $ff $ff
	rst  $38                                         ; $7582: $ff
	rst  $38                                         ; $7583: $ff
	add  $47                                         ; $7584: $c6 $47
	cp   [hl]                                        ; $7586: $be
	or   d                                           ; $7587: $b2
	ld   de, $1911                                   ; $7588: $11 $11 $19
	rst  $38                                         ; $758b: $ff
	rst  $38                                         ; $758c: $ff
	rst  $38                                         ; $758d: $ff
	ei                                               ; $758e: $fb
	halt                                             ; $758f: $76
	ld   e, d                                        ; $7590: $5a
	rst  JumpTable                                         ; $7591: $df
	sub  c                                           ; $7592: $91
	ld   de, $1d11                                   ; $7593: $11 $11 $1d
	rst  $38                                         ; $7596: $ff
	rst  $38                                         ; $7597: $ff
	rst  $38                                         ; $7598: $ff
	xor  d                                           ; $7599: $aa
	ld   h, l                                        ; $759a: $65
	ld   a, d                                        ; $759b: $7a
	db   $fc                                         ; $759c: $fc
	ld   h, c                                        ; $759d: $61
	ld   de, $8f11                                   ; $759e: $11 $11 $8f
	rst  $38                                         ; $75a1: $ff
	rst  $38                                         ; $75a2: $ff
	ld   a, [$6768]                                  ; $75a3: $fa $68 $67
	xor  e                                           ; $75a6: $ab
	push bc                                          ; $75a7: $c5
	ld   de, $1111                                   ; $75a8: $11 $11 $11
	rst  $38                                         ; $75ab: $ff
	rst  $38                                         ; $75ac: $ff
	rst  $38                                         ; $75ad: $ff
	ld   sp, hl                                      ; $75ae: $f9
	ld   b, [hl]                                     ; $75af: $46
	ld   b, l                                        ; $75b0: $45
	db   $dd                                         ; $75b1: $dd
	and  d                                           ; $75b2: $a2
	ld   de, $1f11                                   ; $75b3: $11 $11 $1f
	rst  $38                                         ; $75b6: $ff
	rst  $38                                         ; $75b7: $ff

Call_0db_75b8:
	db   $fc                                         ; $75b8: $fc
	ld   h, l                                        ; $75b9: $65
	halt                                             ; $75ba: $76
	ld   l, c                                        ; $75bb: $69
	reti                                             ; $75bc: $d9


	ld   b, c                                        ; $75bd: $41
	ld   de, $ef11                                   ; $75be: $11 $11 $ef
	rst  $38                                         ; $75c1: $ff
	rst  $38                                         ; $75c2: $ff
	and  h                                           ; $75c3: $a4
	ld   [hl-], a                                    ; $75c4: $32
	ld   l, c                                        ; $75c5: $69
	cp   [hl]                                        ; $75c6: $be
	or   h                                           ; $75c7: $b4
	ld   de, $1a11                                   ; $75c8: $11 $11 $1a
	rst  $38                                         ; $75cb: $ff
	rst  $38                                         ; $75cc: $ff
	ei                                               ; $75cd: $fb
	ld   d, c                                        ; $75ce: $51
	inc  d                                           ; $75cf: $14
	ld   l, e                                        ; $75d0: $6b
	rst  $38                                         ; $75d1: $ff
	add  c                                           ; $75d2: $81
	ld   de, $6f11                                   ; $75d3: $11 $11 $6f
	rst  $38                                         ; $75d6: $ff
	rst  $38                                         ; $75d7: $ff
	and  $11                                         ; $75d8: $e6 $11
	ld   c, b                                        ; $75da: $48
	cp   a                                           ; $75db: $bf
	rst  $30                                         ; $75dc: $f7
	ld   de, $1311                                   ; $75dd: $11 $11 $13
	rst  $38                                         ; $75e0: $ff
	rst  $38                                         ; $75e1: $ff
	rst  $38                                         ; $75e2: $ff
	ld   [hl], d                                     ; $75e3: $72
	inc  d                                           ; $75e4: $14
	ld   a, b                                        ; $75e5: $78
	rst  $38                                         ; $75e6: $ff
	and  c                                           ; $75e7: $a1
	ld   de, $1f11                                   ; $75e8: $11 $11 $1f
	rst  $38                                         ; $75eb: $ff
	rst  $38                                         ; $75ec: $ff
	ld   sp, hl                                      ; $75ed: $f9
	ld   hl, $af16                                   ; $75ee: $21 $16 $af
	db   $fc                                         ; $75f1: $fc
	ld   sp, $1111                                   ; $75f2: $31 $11 $11
	rst  JumpTable                                         ; $75f5: $df
	rst  $38                                         ; $75f6: $ff
	rst  $38                                         ; $75f7: $ff
	or   d                                           ; $75f8: $b2
	ld   de, $df3a                                   ; $75f9: $11 $3a $df
	di                                               ; $75fc: $f3
	ld   de, $1b11                                   ; $75fd: $11 $11 $1b
	rst  $38                                         ; $7600: $ff
	rst  $38                                         ; $7601: $ff
	cp   $31                                         ; $7602: $fe $31
	inc  d                                           ; $7604: $14
	ld   l, [hl]                                     ; $7605: $6e
	cp   $81                                         ; $7606: $fe $81
	ld   de, $6f11                                   ; $7608: $11 $11 $6f
	rst  $38                                         ; $760b: $ff
	rst  $38                                         ; $760c: $ff
	or   $11                                         ; $760d: $f6 $11
	dec  d                                           ; $760f: $15
	cp   a                                           ; $7610: $bf
	ld   sp, hl                                      ; $7611: $f9
	ld   de, $1211                                   ; $7612: $11 $11 $12
	rst  $38                                         ; $7615: $ff
	rst  $38                                         ; $7616: $ff
	rst  $38                                         ; $7617: $ff
	add  d                                           ; $7618: $82
	ld   de, $ff37                                   ; $7619: $11 $37 $ff
	db   $e4                                         ; $761c: $e4
	ld   de, $1f11                                   ; $761d: $11 $11 $1f
	rst  $38                                         ; $7620: $ff
	rst  $38                                         ; $7621: $ff
	push de                                          ; $7622: $d5
	ld   de, $bf36                                   ; $7623: $11 $36 $bf
	db   $fc                                         ; $7626: $fc
	ld   bc, $1111                                   ; $7627: $01 $11 $11
	rst  $38                                         ; $762a: $ff
	rst  $38                                         ; $762b: $ff
	rst  $38                                         ; $762c: $ff
	add  c                                           ; $762d: $81
	ld   de, $ef49                                   ; $762e: $11 $49 $ef
	jp   nz, $1111                                   ; $7631: $c2 $11 $11

	rra                                              ; $7634: $1f
	rst  $38                                         ; $7635: $ff
	rst  $38                                         ; $7636: $ff
	or   $11                                         ; $7637: $f6 $11
	daa                                              ; $7639: $27
	sbc  a                                           ; $763a: $9f
	ei                                               ; $763b: $fb
	ld   b, c                                        ; $763c: $41
	ld   de, $cf11                                   ; $763d: $11 $11 $cf
	rst  $38                                         ; $7640: $ff
	rst  $38                                         ; $7641: $ff
	or   e                                           ; $7642: $b3
	ld   de, $ff37                                   ; $7643: $11 $37 $ff
	or   $11                                         ; $7646: $f6 $11
	ld   de, $ff1b                                   ; $7648: $11 $1b $ff
	rst  $38                                         ; $764b: $ff
	ei                                               ; $764c: $fb
	ld   de, $ad01                                   ; $764d: $11 $01 $ad
	rst  $38                                         ; $7650: $ff
	ld   d, c                                        ; $7651: $51
	ld   de, $cf11                                   ; $7652: $11 $11 $cf
	rst  $38                                         ; $7655: $ff
	rst  $38                                         ; $7656: $ff
	and  c                                           ; $7657: $a1
	ld   de, $df59                                   ; $7658: $11 $59 $df
	push de                                          ; $765b: $d5
	ld   de, $1c11                                   ; $765c: $11 $11 $1c
	rst  $38                                         ; $765f: $ff
	rst  $38                                         ; $7660: $ff
	ei                                               ; $7661: $fb
	ld   de, $8d04                                   ; $7662: $11 $04 $8d
	cp   $61                                         ; $7665: $fe $61
	ld   de, $8f11                                   ; $7667: $11 $11 $8f
	rst  $38                                         ; $766a: $ff
	rst  $38                                         ; $766b: $ff
	and  c                                           ; $766c: $a1
	ld   de, $cf3a                                   ; $766d: $11 $3a $cf
	or   $11                                         ; $7670: $f6 $11
	ld   de, $ff1c                                   ; $7672: $11 $1c $ff
	rst  $38                                         ; $7675: $ff
	ld   a, [$1421]                                  ; $7676: $fa $21 $14
	ld   e, a                                        ; $7679: $5f
	cp   $91                                         ; $767a: $fe $91
	ld   de, $bf11                                   ; $767c: $11 $11 $bf
	rst  $38                                         ; $767f: $ff
	rst  $38                                         ; $7680: $ff
	and  c                                           ; $7681: $a1
	ld   de, $cf18                                   ; $7682: $11 $18 $cf
	or   $11                                         ; $7685: $f6 $11
	ld   de, $ff1d                                   ; $7687: $11 $1d $ff
	rst  $38                                         ; $768a: $ff
	ld   hl, sp+$31                                  ; $768b: $f8 $31
	inc  d                                           ; $768d: $14
	ld   l, e                                        ; $768e: $6b
	rst  $38                                         ; $768f: $ff
	sub  c                                           ; $7690: $91
	ld   de, $df11                                   ; $7691: $11 $11 $df
	rst  $38                                         ; $7694: $ff
	rst  $38                                         ; $7695: $ff
	sub  c                                           ; $7696: $91
	ld   [de], a                                     ; $7697: $12
	dec  h                                           ; $7698: $25

Jump_0db_7699:
	rst  JumpTable                                         ; $7699: $df
	ret  c                                           ; $769a: $d8

	ld   de, $1f11                                   ; $769b: $11 $11 $1f
	rst  $38                                         ; $769e: $ff
	rst  $38                                         ; $769f: $ff
	rst  $30                                         ; $76a0: $f7
	ld   de, $6c14                                   ; $76a1: $11 $14 $6c
	db   $fd                                         ; $76a4: $fd
	ld   [hl], c                                     ; $76a5: $71
	ld   de, rAUD1LEN                                   ; $76a6: $11 $11 $ff

Call_0db_76a9:
Jump_0db_76a9:
	rst  $38                                         ; $76a9: $ff
	rst  $38                                         ; $76aa: $ff
	ld   [hl], e                                     ; $76ab: $73
	ld   [hl+], a                                    ; $76ac: $22
	ld   d, $cf                                      ; $76ad: $16 $cf
	ld   hl, sp+$11                                  ; $76af: $f8 $11
	ld   de, $ff1f                                   ; $76b1: $11 $1f $ff
	rst  $38                                         ; $76b4: $ff
	and  $22                                         ; $76b5: $e6 $22
	ld   h, l                                        ; $76b7: $65
	ld   e, e                                        ; $76b8: $5b
	call c, $1181                                    ; $76b9: $dc $81 $11
	ld   de, $ffef                                   ; $76bc: $11 $ef $ff
	rst  $38                                         ; $76bf: $ff
	ld   b, c                                        ; $76c0: $41
	ld   [de], a                                     ; $76c1: $12
	ld   h, a                                        ; $76c2: $67
	xor  a                                           ; $76c3: $af
	sub  $11                                         ; $76c4: $d6 $11
	ld   de, $ff1f                                   ; $76c6: $11 $1f $ff
	rst  $38                                         ; $76c9: $ff
	rst  $30                                         ; $76ca: $f7
	ld   [de], a                                     ; $76cb: $12
	inc  [hl]                                        ; $76cc: $34
	ld   l, e                                        ; $76cd: $6b
	db   $fd                                         ; $76ce: $fd
	ld   h, c                                        ; $76cf: $61
	ld   de, rAUD1LEN                                   ; $76d0: $11 $11 $ff
	rst  $38                                         ; $76d3: $ff
	rst  $38                                         ; $76d4: $ff
	add  e                                           ; $76d5: $83
	ld   b, e                                        ; $76d6: $43
	dec  h                                           ; $76d7: $25
	xor  a                                           ; $76d8: $af
	rst  $20                                         ; $76d9: $e7
	ld   de, $1f11                                   ; $76da: $11 $11 $1f
	rst  $38                                         ; $76dd: $ff
	rst  $38                                         ; $76de: $ff
	or   $44                                         ; $76df: $f6 $44
	ld   b, e                                        ; $76e1: $43
	ld   l, c                                        ; $76e2: $69
	sbc  $61                                         ; $76e3: $de $61
	ld   de, rAUD1LEN                                   ; $76e5: $11 $11 $ff
	rst  $38                                         ; $76e8: $ff
	rst  $38                                         ; $76e9: $ff
	ld   h, d                                        ; $76ea: $62
	ld   b, l                                        ; $76eb: $45
	ld   d, [hl]                                     ; $76ec: $56
	xor  h                                           ; $76ed: $ac
	or   l                                           ; $76ee: $b5
	ld   de, $1f11                                   ; $76ef: $11 $11 $1f
	rst  $38                                         ; $76f2: $ff
	rst  $38                                         ; $76f3: $ff
	push hl                                          ; $76f4: $e5
	inc  [hl]                                        ; $76f5: $34
	ld   h, h                                        ; $76f6: $64
	ld   e, d                                        ; $76f7: $5a
	xor  d                                           ; $76f8: $aa
	ld   d, c                                        ; $76f9: $51
	ld   de, rAUD1LEN                                   ; $76fa: $11 $11 $ff
	rst  $38                                         ; $76fd: $ff
	db   $fc                                         ; $76fe: $fc
	ld   b, l                                        ; $76ff: $45
	ld   h, [hl]                                     ; $7700: $66
	ld   b, l                                        ; $7701: $45
	cp   h                                           ; $7702: $bc
	or   e                                           ; $7703: $b3
	ld   de, $5f11                                   ; $7704: $11 $11 $5f
	rst  $38                                         ; $7707: $ff
	rst  $38                                         ; $7708: $ff
	or   [hl]                                        ; $7709: $b6
	ld   d, l                                        ; $770a: $55
	ld   d, d                                        ; $770b: $52
	ld   c, d                                        ; $770c: $4a
	db   $ed                                         ; $770d: $ed
	ld   hl, $1a11                                   ; $770e: $21 $11 $1a
	rst  $38                                         ; $7711: $ff
	rst  $38                                         ; $7712: $ff
	rst  $20                                         ; $7713: $e7
	add  a                                           ; $7714: $87
	sub  [hl]                                        ; $7715: $96
	ld   [de], a                                     ; $7716: $12
	adc  h                                           ; $7717: $8c
	or   c                                           ; $7718: $b1
	ld   de, $ef11                                   ; $7719: $11 $11 $ef
	rst  $38                                         ; $771c: $ff
	cp   $88                                         ; $771d: $fe $88
	adc  d                                           ; $771f: $8a
	ld   d, c                                        ; $7720: $51
	ld   c, c                                        ; $7721: $49
	rl   c                                           ; $7722: $cb $11
	ld   de, $ff1f                                   ; $7724: $11 $1f $ff
	rst  $38                                         ; $7727: $ff
	cp   b                                           ; $7728: $b8
	sbc  e                                           ; $7729: $9b
	sub  e                                           ; $772a: $93
	inc  de                                          ; $772b: $13
	xor  [hl]                                        ; $772c: $ae
	or   c                                           ; $772d: $b1
	ld   de, rAUD1LEN                                   ; $772e: $11 $11 $ff
	rst  $38                                         ; $7731: $ff
	ei                                               ; $7732: $fb
	sbc  e                                           ; $7733: $9b
	ret  c                                           ; $7734: $d8

	ld   de, $e73a                                   ; $7735: $11 $3a $e7
	ld   de, $6f11                                   ; $7738: $11 $11 $6f
	rst  $38                                         ; $773b: $ff
	rst  $38                                         ; $773c: $ff
	sbc  d                                           ; $773d: $9a
	call z, $1561                                    ; $773e: $cc $61 $15
	cp   a                                           ; $7741: $bf
	ld   b, c                                        ; $7742: $41
	ld   de, $ff1e                                   ; $7743: $11 $1e $ff
	rst  $38                                         ; $7746: $ff
	jp   z, $b2ff                                    ; $7747: $ca $ff $b2

	ld   de, $f19f                                   ; $774a: $11 $9f $f1
	ld   de, rAUD1LEN                                   ; $774d: $11 $11 $ff
	rst  $38                                         ; $7750: $ff
	db   $fc                                         ; $7751: $fc
	rst  $28                                         ; $7752: $ef
	ld   sp, hl                                      ; $7753: $f9
	ld   de, $fc1d                                   ; $7754: $11 $1d $fc
	ld   de, $5f11                                   ; $7757: $11 $11 $5f
	rst  $38                                         ; $775a: $ff
	ei                                               ; $775b: $fb
	rst  JumpTable                                         ; $775c: $df
	rst  $38                                         ; $775d: $ff
	ld   h, c                                        ; $775e: $61
	inc  d                                           ; $775f: $14
	rst  $38                                         ; $7760: $ff
	and  c                                           ; $7761: $a1
	ld   de, $ff1d                                   ; $7762: $11 $1d $ff
	rst  $38                                         ; $7765: $ff
	xor  a                                           ; $7766: $af
	rst  $38                                         ; $7767: $ff
	pop  af                                          ; $7768: $f1
	ld   de, $f48f                                   ; $7769: $11 $8f $f4
	ld   de, rAUD1LEN                                   ; $776c: $11 $11 $ff
	rst  $38                                         ; $776f: $ff
	cp   e                                           ; $7770: $bb
	rst  $38                                         ; $7771: $ff
	ei                                               ; $7772: $fb
	ld   de, $ff1f                                   ; $7773: $11 $1f $ff
	ld   de, $5f11                                   ; $7776: $11 $11 $5f
	rst  $38                                         ; $7779: $ff
	ld   sp, hl                                      ; $777a: $f9
	rst  $38                                         ; $777b: $ff
	rst  $38                                         ; $777c: $ff
	ld   sp, $ff17                                   ; $777d: $31 $17 $ff
	add  c                                           ; $7780: $81
	ld   de, $ff1f                                   ; $7781: $11 $1f $ff
	ei                                               ; $7784: $fb
	rst  JumpTable                                         ; $7785: $df
	rst  $38                                         ; $7786: $ff
	pop  bc                                          ; $7787: $c1
	ld   de, $f1ff                                   ; $7788: $11 $ff $f1
	ld   de, rAUD1LEN                                   ; $778b: $11 $11 $ff
	rst  $38                                         ; $778e: $ff
	rst  JumpTable                                         ; $778f: $df
	rst  $38                                         ; $7790: $ff
	ldh  a, [c]                                      ; $7791: $f2
	ld   de, $f88f                                   ; $7792: $11 $8f $f8
	ld   de, $9f11                                   ; $7795: $11 $11 $9f
	rst  $38                                         ; $7798: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7799: $cf
	rst  $38                                         ; $779a: $ff
	ei                                               ; $779b: $fb
	ld   de, $ff1f                                   ; $779c: $11 $1f $ff
	ld   de, $1f11                                   ; $779f: $11 $11 $1f
	rst  $38                                         ; $77a2: $ff
	rst  $28                                         ; $77a3: $ef
	rst  $38                                         ; $77a4: $ff
	rst  $38                                         ; $77a5: $ff
	ld   b, c                                        ; $77a6: $41
	add  hl, de                                      ; $77a7: $19
	rst  $38                                         ; $77a8: $ff
	ld   b, c                                        ; $77a9: $41
	ld   de, $df12                                   ; $77aa: $11 $12 $df
	rst  $38                                         ; $77ad: $ff
	rst  $38                                         ; $77ae: $ff
	rst  $38                                         ; $77af: $ff
	db   $e3                                         ; $77b0: $e3
	inc  de                                          ; $77b1: $13
	rst  $28                                         ; $77b2: $ef
	and  c                                           ; $77b3: $a1
	ld   de, $6d11                                   ; $77b4: $11 $11 $6d
	rst  $28                                         ; $77b7: $ef
	rst  $38                                         ; $77b8: $ff
	rst  $38                                         ; $77b9: $ff
	ld   a, [$9f31]                                  ; $77ba: $fa $31 $9f
	call nc, $1111                                   ; $77bd: $d4 $11 $11
	rla                                              ; $77c0: $17
	cp   l                                           ; $77c1: $bd
	rst  $38                                         ; $77c2: $ff
	rst  $38                                         ; $77c3: $ff
	rst  $38                                         ; $77c4: $ff
	add  l                                           ; $77c5: $85
	ld   l, [hl]                                     ; $77c6: $6e
	ld   sp, hl                                      ; $77c7: $f9

Call_0db_77c8:
	ld   de, $1111                                   ; $77c8: $11 $11 $11
	adc  e                                           ; $77cb: $8b
	rst  $38                                         ; $77cc: $ff
	rst  $38                                         ; $77cd: $ff
	rst  $38                                         ; $77ce: $ff
	reti                                             ; $77cf: $d9


	ld   l, e                                        ; $77d0: $6b
	ei                                               ; $77d1: $fb
	ld   hl, $1111                                   ; $77d2: $21 $11 $11
	ld   b, [hl]                                     ; $77d5: $46
	cp   a                                           ; $77d6: $bf
	rst  $38                                         ; $77d7: $ff
	rst  $38                                         ; $77d8: $ff
	db   $fc                                         ; $77d9: $fc
	cp   d                                           ; $77da: $ba
	xor  $71                                         ; $77db: $ee $71
	ld   de, $1411                                   ; $77dd: $11 $11 $14
	ld   a, e                                        ; $77e0: $7b
	rst  $38                                         ; $77e1: $ff
	rst  $38                                         ; $77e2: $ff
	rst  $38                                         ; $77e3: $ff
	db   $ed                                         ; $77e4: $ed
	rst  $28                                         ; $77e5: $ef
	or   d                                           ; $77e6: $b2
	ld   de, $1111                                   ; $77e7: $11 $11 $11
	daa                                              ; $77ea: $27
	rst  JumpTable                                         ; $77eb: $df
	rst  $38                                         ; $77ec: $ff
	rst  $38                                         ; $77ed: $ff
	rst  $38                                         ; $77ee: $ff
	rst  $38                                         ; $77ef: $ff
	rst  $30                                         ; $77f0: $f7
	ld   de, $1111                                   ; $77f1: $11 $11 $11
	ld   de, $ff7d                                   ; $77f4: $11 $7d $ff
	rst  $38                                         ; $77f7: $ff
	rst  $38                                         ; $77f8: $ff
	rst  $38                                         ; $77f9: $ff
	db   $fd                                         ; $77fa: $fd
	ld   d, c                                        ; $77fb: $51
	ld   de, $1111                                   ; $77fc: $11 $11 $11
	rla                                              ; $77ff: $17
	rst  $38                                         ; $7800: $ff
	rst  $38                                         ; $7801: $ff
	rst  $38                                         ; $7802: $ff
	rst  $38                                         ; $7803: $ff
	rst  $38                                         ; $7804: $ff
	or   e                                           ; $7805: $b3
	ld   de, $1111                                   ; $7806: $11 $11 $11
	ld   de, $ff8f                                   ; $7809: $11 $8f $ff
	rst  $38                                         ; $780c: $ff
	rst  $38                                         ; $780d: $ff
	rst  $38                                         ; $780e: $ff
	ei                                               ; $780f: $fb
	ld   sp, $1111                                   ; $7810: $31 $11 $11
	ld   de, $df29                                   ; $7813: $11 $29 $df
	rst  $38                                         ; $7816: $ff
	rst  $38                                         ; $7817: $ff
	rst  $38                                         ; $7818: $ff
	rst  $38                                         ; $7819: $ff
	and  e                                           ; $781a: $a3
	ld   de, $1111                                   ; $781b: $11 $11 $11
	ld   [de], a                                     ; $781e: $12
	ld   e, b                                        ; $781f: $58
	rst  $38                                         ; $7820: $ff
	rst  $38                                         ; $7821: $ff
	rst  $38                                         ; $7822: $ff
	rst  $38                                         ; $7823: $ff
	ld   a, [$1161]                                  ; $7824: $fa $61 $11
	ld   de, $1111                                   ; $7827: $11 $11 $11
	ld   e, h                                        ; $782a: $5c
	rst  $38                                         ; $782b: $ff
	rst  $38                                         ; $782c: $ff
	rst  $38                                         ; $782d: $ff
	rst  $38                                         ; $782e: $ff
	ld   [$1111], a                                  ; $782f: $ea $11 $11
	ld   de, $1211                                   ; $7832: $11 $11 $12
	sbc  e                                           ; $7835: $9b
	rst  $28                                         ; $7836: $ef

jr_0db_7837:
	rst  $38                                         ; $7837: $ff
	rst  $38                                         ; $7838: $ff
	rst  $38                                         ; $7839: $ff
	push hl                                          ; $783a: $e5
	ld   de, $1111                                   ; $783b: $11 $11 $11
	ld   de, $7814                                   ; $783e: $11 $14 $78
	rst  JumpTable                                         ; $7841: $df
	rst  $38                                         ; $7842: $ff
	rst  $38                                         ; $7843: $ff
	rst  $38                                         ; $7844: $ff
	and  l                                           ; $7845: $a5
	ld   d, l                                        ; $7846: $55
	ld   de, $1111                                   ; $7847: $11 $11 $11
	dec  d                                           ; $784a: $15
	scf                                              ; $784b: $37
	rst  $28                                         ; $784c: $ef
	rst  $38                                         ; $784d: $ff
	rst  $38                                         ; $784e: $ff
	rst  $38                                         ; $784f: $ff
	ret                                              ; $7850: $c9


	ld   d, [hl]                                     ; $7851: $56
	ld   de, $1111                                   ; $7852: $11 $11 $11
	ld   [de], a                                     ; $7855: $12
	jr   z, jr_0db_7837                              ; $7856: $28 $df

	rst  $38                                         ; $7858: $ff
	rst  $38                                         ; $7859: $ff
	rst  $38                                         ; $785a: $ff
	ret  c                                           ; $785b: $d8

	ld   a, c                                        ; $785c: $79
	ld   hl, $1121                                   ; $785d: $21 $21 $11
	ld   hl, $ac28                                   ; $7860: $21 $28 $ac
	rst  $38                                         ; $7863: $ff
	rst  $38                                         ; $7864: $ff
	db   $fd                                         ; $7865: $fd
	cp   d                                           ; $7866: $ba
	adc  d                                           ; $7867: $8a
	ld   h, d                                        ; $7868: $62
	ld   b, c                                        ; $7869: $41
	ld   de, $1633                                   ; $786a: $11 $33 $16
	adc  c                                           ; $786d: $89
	adc  $ff                                         ; $786e: $ce $ff
	xor  $cc                                         ; $7870: $ee $cc
	sbc  d                                           ; $7872: $9a
	sub  h                                           ; $7873: $94
	ld   d, [hl]                                     ; $7874: $56
	ld   hl, $1323                                   ; $7875: $21 $23 $13
	ld   h, a                                        ; $7878: $67
	xor  d                                           ; $7879: $aa
	adc  $ee                                         ; $787a: $ce $ee
	db   $db                                         ; $787c: $db
	cp   c                                           ; $787d: $b9
	xor  d                                           ; $787e: $aa
	ld   d, [hl]                                     ; $787f: $56
	ld   [hl], d                                     ; $7880: $72
	inc  hl                                          ; $7881: $23
	ld   [hl-], a                                    ; $7882: $32
	ld   b, [hl]                                     ; $7883: $46
	ld   l, d                                        ; $7884: $6a
	xor  e                                           ; $7885: $ab
	call $cbcc                                       ; $7886: $cd $cc $cb
	xor  h                                           ; $7889: $ac
	xor  b                                           ; $788a: $a8
	add  [hl]                                        ; $788b: $86
	ld   d, h                                        ; $788c: $54
	ld   b, e                                        ; $788d: $43
	inc  sp                                          ; $788e: $33
	ld   b, [hl]                                     ; $788f: $46
	ld   a, b                                        ; $7890: $78
	sbc  d                                           ; $7891: $9a
	xor  e                                           ; $7892: $ab
	call z, $bbdc                                    ; $7893: $cc $dc $bb
	cp   c                                           ; $7896: $b9
	sbc  b                                           ; $7897: $98
	halt                                             ; $7898: $76
	ld   d, l                                        ; $7899: $55
	ld   d, l                                        ; $789a: $55
	ld   d, l                                        ; $789b: $55
	ld   h, [hl]                                     ; $789c: $66
	ld   a, c                                        ; $789d: $79
	xor  d                                           ; $789e: $aa
	cp   d                                           ; $789f: $ba
	xor  e                                           ; $78a0: $ab
	cp   d                                           ; $78a1: $ba
	xor  c                                           ; $78a2: $a9
	adc  c                                           ; $78a3: $89
	adc  b                                           ; $78a4: $88
	add  a                                           ; $78a5: $87
	ld   [hl], a                                     ; $78a6: $77
	ld   h, [hl]                                     ; $78a7: $66
	ld   [hl], a                                     ; $78a8: $77
	ld   [hl], a                                     ; $78a9: $77
	ld   [hl], a                                     ; $78aa: $77
	ld   a, b                                        ; $78ab: $78
	adc  c                                           ; $78ac: $89
	sbc  c                                           ; $78ad: $99
	adc  c                                           ; $78ae: $89
	sbc  c                                           ; $78af: $99
	sbc  c                                           ; $78b0: $99
	adc  c                                           ; $78b1: $89
	sbc  c                                           ; $78b2: $99
	adc  c                                           ; $78b3: $89
	adc  b                                           ; $78b4: $88
	adc  b                                           ; $78b5: $88
	ld   [hl], a                                     ; $78b6: $77
	ld   [hl], a                                     ; $78b7: $77
	ld   [hl], a                                     ; $78b8: $77
	adc  b                                           ; $78b9: $88
	add  a                                           ; $78ba: $87
	ld   [hl], a                                     ; $78bb: $77
	adc  b                                           ; $78bc: $88
	sbc  b                                           ; $78bd: $98
	adc  c                                           ; $78be: $89
	sbc  c                                           ; $78bf: $99
	sbc  c                                           ; $78c0: $99
	adc  b                                           ; $78c1: $88
	adc  b                                           ; $78c2: $88
	adc  b                                           ; $78c3: $88
	adc  b                                           ; $78c4: $88
	ld   [hl], a                                     ; $78c5: $77
	adc  b                                           ; $78c6: $88
	adc  b                                           ; $78c7: $88
	adc  b                                           ; $78c8: $88
	adc  b                                           ; $78c9: $88

Call_0db_78ca:
	adc  b                                           ; $78ca: $88
	adc  b                                           ; $78cb: $88
	ld   a, b                                        ; $78cc: $78
	adc  b                                           ; $78cd: $88
	adc  b                                           ; $78ce: $88
	adc  b                                           ; $78cf: $88
	adc  b                                           ; $78d0: $88
	adc  c                                           ; $78d1: $89
	adc  c                                           ; $78d2: $89
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	ld   [hl], a                                     ; $78d6: $77
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	ld   a, b                                        ; $78d9: $78
	adc  b                                           ; $78da: $88
	adc  b                                           ; $78db: $88
	sbc  c                                           ; $78dc: $99
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	add  a                                           ; $78e0: $87
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	adc  b                                           ; $78e4: $88
	adc  b                                           ; $78e5: $88
	sbc  c                                           ; $78e6: $99
	sbc  b                                           ; $78e7: $98
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  b                                           ; $78ef: $88
	adc  b                                           ; $78f0: $88
	adc  b                                           ; $78f1: $88
	adc  b                                           ; $78f2: $88
	adc  b                                           ; $78f3: $88
	adc  b                                           ; $78f4: $88
	adc  b                                           ; $78f5: $88
	adc  b                                           ; $78f6: $88
	adc  b                                           ; $78f7: $88
	adc  b                                           ; $78f8: $88
	adc  b                                           ; $78f9: $88
	adc  b                                           ; $78fa: $88
	adc  b                                           ; $78fb: $88
	adc  b                                           ; $78fc: $88
	adc  b                                           ; $78fd: $88
	adc  b                                           ; $78fe: $88
	adc  b                                           ; $78ff: $88
	adc  b                                           ; $7900: $88
	adc  b                                           ; $7901: $88
	adc  b                                           ; $7902: $88
	adc  b                                           ; $7903: $88
	adc  b                                           ; $7904: $88
	adc  b                                           ; $7905: $88
	adc  b                                           ; $7906: $88
	adc  b                                           ; $7907: $88
	adc  b                                           ; $7908: $88
	adc  b                                           ; $7909: $88
	adc  b                                           ; $790a: $88
	adc  b                                           ; $790b: $88
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	adc  b                                           ; $790e: $88
	adc  b                                           ; $790f: $88
	adc  b                                           ; $7910: $88
	adc  b                                           ; $7911: $88
	adc  b                                           ; $7912: $88
	ld   a, b                                        ; $7913: $78
	adc  b                                           ; $7914: $88
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	adc  b                                           ; $7917: $88
	adc  b                                           ; $7918: $88
	sbc  c                                           ; $7919: $99
	adc  b                                           ; $791a: $88
	adc  b                                           ; $791b: $88
	adc  b                                           ; $791c: $88
	ld   [hl], a                                     ; $791d: $77
	ld   [hl], a                                     ; $791e: $77
	ld   [hl], a                                     ; $791f: $77
	adc  b                                           ; $7920: $88
	adc  b                                           ; $7921: $88
	adc  b                                           ; $7922: $88
	sbc  c                                           ; $7923: $99
	adc  b                                           ; $7924: $88
	sbc  b                                           ; $7925: $98
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	add  a                                           ; $7928: $87
	ld   [hl], a                                     ; $7929: $77
	ld   a, b                                        ; $792a: $78
	ld   a, b                                        ; $792b: $78
	adc  b                                           ; $792c: $88
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	sbc  c                                           ; $792f: $99
	sbc  b                                           ; $7930: $98
	adc  b                                           ; $7931: $88
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	adc  b                                           ; $7938: $88
	sbc  b                                           ; $7939: $98
	adc  b                                           ; $793a: $88
	adc  b                                           ; $793b: $88
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  b                                           ; $7940: $88
	adc  b                                           ; $7941: $88
	adc  b                                           ; $7942: $88
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	adc  b                                           ; $7945: $88
	adc  b                                           ; $7946: $88
	adc  b                                           ; $7947: $88
	adc  b                                           ; $7948: $88
	adc  b                                           ; $7949: $88
	adc  b                                           ; $794a: $88
	add  a                                           ; $794b: $87
	adc  b                                           ; $794c: $88
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	adc  b                                           ; $7951: $88
	adc  b                                           ; $7952: $88
	adc  b                                           ; $7953: $88
	adc  b                                           ; $7954: $88
	adc  b                                           ; $7955: $88
	ld   a, b                                        ; $7956: $78
	adc  b                                           ; $7957: $88
	adc  b                                           ; $7958: $88
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	adc  b                                           ; $795e: $88
	adc  b                                           ; $795f: $88
	adc  b                                           ; $7960: $88
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	adc  b                                           ; $7965: $88
	adc  b                                           ; $7966: $88
	adc  b                                           ; $7967: $88
	adc  b                                           ; $7968: $88
	adc  b                                           ; $7969: $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	adc  b                                           ; $796e: $88
	adc  b                                           ; $796f: $88
	adc  b                                           ; $7970: $88
	adc  b                                           ; $7971: $88
	adc  b                                           ; $7972: $88
	adc  b                                           ; $7973: $88
	adc  b                                           ; $7974: $88
	adc  b                                           ; $7975: $88
	adc  b                                           ; $7976: $88
	adc  b                                           ; $7977: $88
	adc  b                                           ; $7978: $88
	adc  b                                           ; $7979: $88
	adc  b                                           ; $797a: $88
	adc  b                                           ; $797b: $88
	adc  b                                           ; $797c: $88
	adc  b                                           ; $797d: $88
	adc  b                                           ; $797e: $88
	adc  b                                           ; $797f: $88
	adc  b                                           ; $7980: $88
	adc  b                                           ; $7981: $88
	adc  b                                           ; $7982: $88
	adc  b                                           ; $7983: $88
	adc  b                                           ; $7984: $88
	adc  b                                           ; $7985: $88
	adc  b                                           ; $7986: $88
	adc  b                                           ; $7987: $88
	adc  b                                           ; $7988: $88
	adc  b                                           ; $7989: $88
	adc  b                                           ; $798a: $88
	adc  b                                           ; $798b: $88
	adc  b                                           ; $798c: $88
	adc  b                                           ; $798d: $88
	adc  b                                           ; $798e: $88
	adc  b                                           ; $798f: $88
	adc  b                                           ; $7990: $88
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	adc  b                                           ; $7993: $88
	adc  b                                           ; $7994: $88
	adc  b                                           ; $7995: $88
	adc  b                                           ; $7996: $88
	adc  b                                           ; $7997: $88
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	adc  b                                           ; $799d: $88
	adc  b                                           ; $799e: $88
	adc  b                                           ; $799f: $88
	adc  b                                           ; $79a0: $88
	adc  b                                           ; $79a1: $88
	adc  b                                           ; $79a2: $88
	adc  b                                           ; $79a3: $88
	adc  b                                           ; $79a4: $88
	adc  b                                           ; $79a5: $88
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	adc  b                                           ; $79a8: $88
	adc  b                                           ; $79a9: $88
	adc  b                                           ; $79aa: $88
	adc  b                                           ; $79ab: $88
	adc  b                                           ; $79ac: $88
	adc  b                                           ; $79ad: $88
	adc  b                                           ; $79ae: $88
	adc  b                                           ; $79af: $88
	adc  b                                           ; $79b0: $88
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	adc  b                                           ; $79b3: $88
	adc  b                                           ; $79b4: $88
	adc  b                                           ; $79b5: $88
	adc  b                                           ; $79b6: $88
	adc  b                                           ; $79b7: $88
	adc  b                                           ; $79b8: $88

Call_0db_79b9:
	adc  b                                           ; $79b9: $88
	adc  b                                           ; $79ba: $88
	adc  b                                           ; $79bb: $88
	adc  b                                           ; $79bc: $88
	adc  b                                           ; $79bd: $88
	adc  b                                           ; $79be: $88
	adc  b                                           ; $79bf: $88
	adc  b                                           ; $79c0: $88
	adc  b                                           ; $79c1: $88
	adc  b                                           ; $79c2: $88
	adc  b                                           ; $79c3: $88
	adc  b                                           ; $79c4: $88
	adc  b                                           ; $79c5: $88
	adc  b                                           ; $79c6: $88
	adc  b                                           ; $79c7: $88
	adc  b                                           ; $79c8: $88
	adc  b                                           ; $79c9: $88
	adc  b                                           ; $79ca: $88
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	adc  b                                           ; $79cd: $88
	adc  b                                           ; $79ce: $88
	adc  b                                           ; $79cf: $88
	adc  b                                           ; $79d0: $88
	adc  b                                           ; $79d1: $88
	adc  b                                           ; $79d2: $88
	adc  b                                           ; $79d3: $88
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	adc  b                                           ; $79d6: $88
	adc  b                                           ; $79d7: $88
	adc  b                                           ; $79d8: $88
	adc  b                                           ; $79d9: $88
	adc  b                                           ; $79da: $88
	adc  b                                           ; $79db: $88
	adc  b                                           ; $79dc: $88
	adc  b                                           ; $79dd: $88
	adc  b                                           ; $79de: $88
	adc  b                                           ; $79df: $88
	adc  b                                           ; $79e0: $88
	adc  b                                           ; $79e1: $88
	adc  b                                           ; $79e2: $88
	adc  b                                           ; $79e3: $88
	adc  b                                           ; $79e4: $88
	adc  b                                           ; $79e5: $88
	adc  b                                           ; $79e6: $88
	adc  b                                           ; $79e7: $88
	adc  b                                           ; $79e8: $88
	sbc  b                                           ; $79e9: $98
	sbc  c                                           ; $79ea: $99
	adc  d                                           ; $79eb: $8a
	add  a                                           ; $79ec: $87
	sbc  b                                           ; $79ed: $98
	adc  b                                           ; $79ee: $88
	adc  b                                           ; $79ef: $88
	adc  b                                           ; $79f0: $88
	add  a                                           ; $79f1: $87
	adc  b                                           ; $79f2: $88
	ld   a, b                                        ; $79f3: $78
	adc  b                                           ; $79f4: $88
	adc  b                                           ; $79f5: $88
	sbc  d                                           ; $79f6: $9a
	ret                                              ; $79f7: $c9


	add  [hl]                                        ; $79f8: $86
	cp   d                                           ; $79f9: $ba
	ld   e, b                                        ; $79fa: $58
	adc  b                                           ; $79fb: $88
	ld   a, c                                        ; $79fc: $79
	sub  a                                           ; $79fd: $97
	and  a                                           ; $79fe: $a7
	ld   e, b                                        ; $79ff: $58
	sbc  b                                           ; $7a00: $98
	xor  c                                           ; $7a01: $a9
	ld   a, b                                        ; $7a02: $78
	ld   [hl], a                                     ; $7a03: $77
	ld   a, d                                        ; $7a04: $7a
	xor  b                                           ; $7a05: $a8
	xor  d                                           ; $7a06: $aa
	sbc  b                                           ; $7a07: $98
	adc  c                                           ; $7a08: $89
	ld   a, c                                        ; $7a09: $79
	cp   b                                           ; $7a0a: $b8
	ld   a, c                                        ; $7a0b: $79
	sub  [hl]                                        ; $7a0c: $96
	sub  [hl]                                        ; $7a0d: $96
	ld   l, c                                        ; $7a0e: $69
	sub  a                                           ; $7a0f: $97
	ld   a, b                                        ; $7a10: $78
	add  a                                           ; $7a11: $87
	add  a                                           ; $7a12: $87
	adc  c                                           ; $7a13: $89
	sub  [hl]                                        ; $7a14: $96
	adc  d                                           ; $7a15: $8a
	sbc  d                                           ; $7a16: $9a
	sub  a                                           ; $7a17: $97
	ld   [hl], a                                     ; $7a18: $77
	ld   d, h                                        ; $7a19: $54
	ld   d, [hl]                                     ; $7a1a: $56
	ld   h, l                                        ; $7a1b: $65
	ld   h, [hl]                                     ; $7a1c: $66
	adc  c                                           ; $7a1d: $89
	xor  d                                           ; $7a1e: $aa
	call $99bb                                       ; $7a1f: $cd $bb $99
	add  l                                           ; $7a22: $85
	ld   hl, $1111                                   ; $7a23: $21 $11 $11
	ld   h, h                                        ; $7a26: $64
	ld   e, e                                        ; $7a27: $5b
	rst  $38                                         ; $7a28: $ff
	rst  $38                                         ; $7a29: $ff
	rst  $38                                         ; $7a2a: $ff
	cp   $99                                         ; $7a2b: $fe $99
	sub  c                                           ; $7a2d: $91
	ld   de, $b111                                   ; $7a2e: $11 $11 $b1
	rra                                              ; $7a31: $1f
	rst  $38                                         ; $7a32: $ff
	rst  $38                                         ; $7a33: $ff
	rst  $38                                         ; $7a34: $ff
	db   $f4                                         ; $7a35: $f4
	rst  $28                                         ; $7a36: $ef
	or   c                                           ; $7a37: $b1
	ld   de, $1111                                   ; $7a38: $11 $11 $11
	call nz, $ffff                                   ; $7a3b: $c4 $ff $ff
	rst  $38                                         ; $7a3e: $ff
	rst  $38                                         ; $7a3f: $ff
	sub  d                                           ; $7a40: $92
	and  h                                           ; $7a41: $a4
	ld   de, $1111                                   ; $7a42: $11 $11 $11
	ld   c, a                                        ; $7a45: $4f
	rst  $38                                         ; $7a46: $ff
	rst  $38                                         ; $7a47: $ff
	rst  $38                                         ; $7a48: $ff
	rst  $38                                         ; $7a49: $ff
	db   $e4                                         ; $7a4a: $e4
	ld   [de], a                                     ; $7a4b: $12
	ld   b, c                                        ; $7a4c: $41
	ld   de, $1811                                   ; $7a4d: $11 $11 $18
	rst  $38                                         ; $7a50: $ff
	rst  $38                                         ; $7a51: $ff
	rst  $38                                         ; $7a52: $ff
	rst  $38                                         ; $7a53: $ff
	jp   z, Jump_0db_4821                            ; $7a54: $ca $21 $48

	ld   de, $1111                                   ; $7a57: $11 $11 $11
	rra                                              ; $7a5a: $1f
	cp   $ff                                         ; $7a5b: $fe $ff
	rst  $38                                         ; $7a5d: $ff
	db   $fc                                         ; $7a5e: $fc
	ld   a, b                                        ; $7a5f: $78
	ld   de, $11b7                                   ; $7a60: $11 $b7 $11
	ld   de, $ef11                                   ; $7a63: $11 $11 $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a66: $cf
	rst  $38                                         ; $7a67: $ff
	rst  $38                                         ; $7a68: $ff
	ret  c                                           ; $7a69: $d8

	sub  d                                           ; $7a6a: $92
	ld   a, [de]                                     ; $7a6b: $1a
	or   e                                           ; $7a6c: $b3
	ld   de, $1811                                   ; $7a6d: $11 $11 $18
	ei                                               ; $7a70: $fb
	rst  $38                                         ; $7a71: $ff
	rst  $38                                         ; $7a72: $ff
	cp   $79                                         ; $7a73: $fe $79
	ld   hl, $428d                                   ; $7a75: $21 $8d $42
	ld   de, $3f11                                   ; $7a78: $11 $11 $3f
	rst  $38                                         ; $7a7b: $ff
	rst  $38                                         ; $7a7c: $ff
	rst  $38                                         ; $7a7d: $ff
	push hl                                          ; $7a7e: $e5
	ld   [hl], e                                     ; $7a7f: $73
	dec  d                                           ; $7a80: $15
	ld   hl, sp+$51                                  ; $7a81: $f8 $51
	ld   de, rAUD1LEN                                   ; $7a83: $11 $11 $ff
	rst  $38                                         ; $7a86: $ff
	rst  $38                                         ; $7a87: $ff
	rst  $38                                         ; $7a88: $ff
	ld   b, h                                        ; $7a89: $44
	ld   sp, $b94e                                   ; $7a8a: $31 $4e $b9
	ld   de, $1f11                                   ; $7a8d: $11 $11 $1f
	rst  $38                                         ; $7a90: $ff
	rst  $38                                         ; $7a91: $ff
	rst  $38                                         ; $7a92: $ff
	db   $f4                                         ; $7a93: $f4
	dec  [hl]                                        ; $7a94: $35
	ld   de, $b1ee                                   ; $7a95: $11 $ee $b1
	ld   de, $5f11                                   ; $7a98: $11 $11 $5f
	rst  $38                                         ; $7a9b: $ff
	rst  $38                                         ; $7a9c: $ff
	rst  $38                                         ; $7a9d: $ff
	ld   b, c                                        ; $7a9e: $41
	ld   d, c                                        ; $7a9f: $51
	dec  e                                           ; $7aa0: $1d
	db   $fd                                         ; $7aa1: $fd
	add  c                                           ; $7aa2: $81
	ld   de, rAUD1LEN                                   ; $7aa3: $11 $11 $ff
	rst  $38                                         ; $7aa6: $ff
	rst  $38                                         ; $7aa7: $ff
	ld   hl, sp+$13                                  ; $7aa8: $f8 $13
	ld   de, $f9bf                                   ; $7aaa: $11 $bf $f9
	ld   de, $1d11                                   ; $7aad: $11 $11 $1d
	rst  $38                                         ; $7ab0: $ff
	rst  $38                                         ; $7ab1: $ff
	rst  $38                                         ; $7ab2: $ff
	pop  hl                                          ; $7ab3: $e1
	dec  d                                           ; $7ab4: $15
	ld   d, $ff                                      ; $7ab5: $16 $ff
	pop  bc                                          ; $7ab7: $c1
	ld   de, $3f11                                   ; $7ab8: $11 $11 $3f
	rst  $38                                         ; $7abb: $ff
	rst  $38                                         ; $7abc: $ff
	rst  $38                                         ; $7abd: $ff
	ld   de, $8e23                                   ; $7abe: $11 $23 $8e
	rst  $28                                         ; $7ac1: $ef
	ld   h, c                                        ; $7ac2: $61
	ld   de, rAUD1LEN                                   ; $7ac3: $11 $11 $ff
	rst  $38                                         ; $7ac6: $ff
	rst  $38                                         ; $7ac7: $ff
	db   $f4                                         ; $7ac8: $f4
	ld   de, rAUD1LOW                                   ; $7ac9: $11 $13 $ff
	ld   sp, hl                                      ; $7acc: $f9
	ld   de, $1e11                                   ; $7acd: $11 $11 $1e
	rst  $38                                         ; $7ad0: $ff
	rst  $38                                         ; $7ad1: $ff
	rst  $38                                         ; $7ad2: $ff
	ld   h, c                                        ; $7ad3: $61
	rla                                              ; $7ad4: $17
	ld   b, [hl]                                     ; $7ad5: $46
	rst  $38                                         ; $7ad6: $ff
	pop  de                                          ; $7ad7: $d1
	ld   de, $be11                                   ; $7ad8: $11 $11 $be
	rst  $38                                         ; $7adb: $ff
	rst  $38                                         ; $7adc: $ff
	cp   $11                                         ; $7add: $fe $11
	ld   d, c                                        ; $7adf: $51
	xor  a                                           ; $7ae0: $af
	jp   hl                                          ; $7ae1: $e9


	ld   de, $1711                                   ; $7ae2: $11 $11 $17
	rst  $38                                         ; $7ae5: $ff
	rst  $38                                         ; $7ae6: $ff
	rst  $38                                         ; $7ae7: $ff
	pop  af                                          ; $7ae8: $f1
	inc  d                                           ; $7ae9: $14
	ld   c, d                                        ; $7aea: $4a
	rst  $38                                         ; $7aeb: $ff
	sub  c                                           ; $7aec: $91
	ld   de, $4f11                                   ; $7aed: $11 $11 $4f
	rst  $38                                         ; $7af0: $ff
	rst  $38                                         ; $7af1: $ff
	rst  $38                                         ; $7af2: $ff
	ld   [hl], c                                     ; $7af3: $71
	rla                                              ; $7af4: $17
	ld   a, l                                        ; $7af5: $7d
	ld   a, [$1111]                                  ; $7af6: $fa $11 $11
	ld   [de], a                                     ; $7af9: $12
	rst  JumpTable                                         ; $7afa: $df
	rst  $38                                         ; $7afb: $ff
	rst  $28                                         ; $7afc: $ef
	pop  af                                          ; $7afd: $f1
	dec  d                                           ; $7afe: $15
	ld   l, d                                        ; $7aff: $6a
	rst  JumpTable                                         ; $7b00: $df
	or   e                                           ; $7b01: $b3
	ld   de, $1b11                                   ; $7b02: $11 $11 $1b
	rst  $38                                         ; $7b05: $ff
	rst  $38                                         ; $7b06: $ff
	ld   a, [$1ff1]                                  ; $7b07: $fa $f1 $1f
	ld   a, [hl]                                     ; $7b0a: $7e
	sub  $91                                         ; $7b0b: $d6 $91
	ld   de, $9f14                                   ; $7b0d: $11 $14 $9f
	rst  $38                                         ; $7b10: $ff
	rst  $38                                         ; $7b11: $ff
	ret                                              ; $7b12: $c9


	ld   h, c                                        ; $7b13: $61
	cp   c                                           ; $7b14: $b9
	cp   [hl]                                        ; $7b15: $be
	adc  b                                           ; $7b16: $88
	ld   de, $1811                                   ; $7b17: $11 $11 $18
	rst  $38                                         ; $7b1a: $ff
	rst  $38                                         ; $7b1b: $ff
	rst  JumpTable                                         ; $7b1c: $df
	pop  af                                          ; $7b1d: $f1
	ld   c, [hl]                                     ; $7b1e: $4e
	sbc  e                                           ; $7b1f: $9b
	xor  h                                           ; $7b20: $ac
	ld   de, $1111                                   ; $7b21: $11 $11 $11
	adc  a                                           ; $7b24: $8f
	rst  $38                                         ; $7b25: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b26: $cf
	di                                               ; $7b27: $f3
	ld   e, c                                        ; $7b28: $59
	ld   a, h                                        ; $7b29: $7c
	xor  l                                           ; $7b2a: $ad
	or   c                                           ; $7b2b: $b1
	ld   de, $1c11                                   ; $7b2c: $11 $11 $1c
	cp   $ff                                         ; $7b2f: $fe $ff
	sub  l                                           ; $7b31: $95
	db   $fc                                         ; $7b32: $fc
	dec  e                                           ; $7b33: $1d
	or   $c7                                         ; $7b34: $f6 $c7
	ld   de, $1121                                   ; $7b36: $11 $21 $11
	rst  $38                                         ; $7b39: $ff
	db   $ed                                         ; $7b3a: $ed
	rst  $38                                         ; $7b3b: $ff
	rra                                              ; $7b3c: $1f
	pop  af                                          ; $7b3d: $f1
	rst  $28                                         ; $7b3e: $ef
	or   l                                           ; $7b3f: $b5
	add  c                                           ; $7b40: $81
	ld   a, [de]                                     ; $7b41: $1a
	ld   de, $e38f                                   ; $7b42: $11 $8f $e3
	rst  $38                                         ; $7b45: $ff
	ld   b, d                                        ; $7b46: $42
	xor  a                                           ; $7b47: $af
	pop  af                                          ; $7b48: $f1
	db   $fc                                         ; $7b49: $fc
	ld   b, a                                        ; $7b4a: $47
	ld   de, $1a71                                   ; $7b4b: $11 $71 $1a
	ei                                               ; $7b4e: $fb
	xor  a                                           ; $7b4f: $af
	push af                                          ; $7b50: $f5
	ld   l, e                                        ; $7b51: $6b
	cp   $1d                                         ; $7b52: $fe $1d
	pop  af                                          ; $7b54: $f1
	ld   de, $2118                                   ; $7b55: $11 $18 $21
	ld   l, a                                        ; $7b58: $6f
	jp   nc, $3fff                                   ; $7b59: $d2 $ff $3f

	pop  af                                          ; $7b5c: $f1
	xor  a                                           ; $7b5d: $af
	or   d                                           ; $7b5e: $b2
	rla                                              ; $7b5f: $17
	ld   [hl], c                                     ; $7b60: $71
	ld   d, $49                                      ; $7b61: $16 $49
	ld   a, [$f66f]                                  ; $7b63: $fa $6f $f6
	rra                                              ; $7b66: $1f
	ld   sp, hl                                      ; $7b67: $f9
	ldh  a, [c]                                      ; $7b68: $f2
	and  l                                           ; $7b69: $a5
	ld   de, $2607                                   ; $7b6a: $11 $07 $26
	adc  b                                           ; $7b6d: $88
	rst  $28                                         ; $7b6e: $ef
	ld   h, c                                        ; $7b6f: $61
	cp   $7f                                         ; $7b70: $fe $7f
	xor  l                                           ; $7b72: $ad
	and  h                                           ; $7b73: $a4
	ld   hl, $116c                                   ; $7b74: $21 $6c $11
	db   $db                                         ; $7b77: $db
	adc  b                                           ; $7b78: $88
	ld   e, a                                        ; $7b79: $5f
	pop  af                                          ; $7b7a: $f1
	ld   c, a                                        ; $7b7b: $4f
	ld   [hl], d                                     ; $7b7c: $72
	sbc  l                                           ; $7b7d: $9d
	pop  de                                          ; $7b7e: $d1
	dec  [hl]                                        ; $7b7f: $35
	jr   z, jr_0db_7b9b                              ; $7b80: $28 $19

	jp   $117f                                       ; $7b82: $c3 $7f $11


	rst  $30                                         ; $7b85: $f7
	call c, $113f                                    ; $7b86: $dc $3f $11
	ld   b, c                                        ; $7b89: $41
	ld   h, e                                        ; $7b8a: $63
	halt                                             ; $7b8b: $76
	ld   e, l                                        ; $7b8c: $5d
	sub  e                                           ; $7b8d: $93
	adc  a                                           ; $7b8e: $8f
	push bc                                          ; $7b8f: $c5
	cp   a                                           ; $7b90: $bf
	jp   $11aa                                       ; $7b91: $c3 $aa $11


	jr   c, jr_0db_7bcb                              ; $7b94: $38 $35

	adc  c                                           ; $7b96: $89
	sub  c                                           ; $7b97: $91
	rst  $38                                         ; $7b98: $ff
	ld   e, $f6                                      ; $7b99: $1e $f6

jr_0db_7b9b:
	ld   a, [$246b]                                  ; $7b9b: $fa $6b $24
	ld   b, c                                        ; $7b9e: $41
	and  l                                           ; $7b9f: $a5
	inc  a                                           ; $7ba0: $3c
	ld   [hl], d                                     ; $7ba1: $72
	sbc  b                                           ; $7ba2: $98
	xor  [hl]                                        ; $7ba3: $ae
	ld   c, [hl]                                     ; $7ba4: $4e
	ret  c                                           ; $7ba5: $d8

	and  $82                                         ; $7ba6: $e6 $82
	ld   b, a                                        ; $7ba8: $47
	ld   d, a                                        ; $7ba9: $57
	ld   c, c                                        ; $7baa: $49
	sbc  b                                           ; $7bab: $98
	ld   e, b                                        ; $7bac: $58
	sbc  d                                           ; $7bad: $9a
	add  l                                           ; $7bae: $85
	db   $fc                                         ; $7baf: $fc
	ld   l, c                                        ; $7bb0: $69
	or   h                                           ; $7bb1: $b4
	ld   d, a                                        ; $7bb2: $57
	ld   l, c                                        ; $7bb3: $69
	ld   e, b                                        ; $7bb4: $58
	ld   l, c                                        ; $7bb5: $69
	ld   h, l                                        ; $7bb6: $65
	or   h                                           ; $7bb7: $b4
	sbc  e                                           ; $7bb8: $9b
	ld   a, b                                        ; $7bb9: $78
	cp   h                                           ; $7bba: $bc
	ld   b, a                                        ; $7bbb: $47
	or   c                                           ; $7bbc: $b1
	ld   a, d                                        ; $7bbd: $7a
	ld   h, [hl]                                     ; $7bbe: $66
	xor  d                                           ; $7bbf: $aa
	ld   e, c                                        ; $7bc0: $59
	ld   h, [hl]                                     ; $7bc1: $66
	ld   a, c                                        ; $7bc2: $79
	adc  b                                           ; $7bc3: $88
	and  h                                           ; $7bc4: $a4
	ret  c                                           ; $7bc5: $d8

	inc  a                                           ; $7bc6: $3c
	halt                                             ; $7bc7: $76
	ld   a, c                                        ; $7bc8: $79
	ld   [hl], a                                     ; $7bc9: $77
	sbc  c                                           ; $7bca: $99

jr_0db_7bcb:
	rst  ToBoot                                         ; $7bcb: $c7
	add  a                                           ; $7bcc: $87
	ld   a, b                                        ; $7bcd: $78
	adc  c                                           ; $7bce: $89
	sbc  d                                           ; $7bcf: $9a
	sub  l                                           ; $7bd0: $95
	sbc  e                                           ; $7bd1: $9b
	ld   a, c                                        ; $7bd2: $79
	sbc  h                                           ; $7bd3: $9c
	ld   c, d                                        ; $7bd4: $4a
	or   l                                           ; $7bd5: $b5
	or   [hl]                                        ; $7bd6: $b6
	sbc  b                                           ; $7bd7: $98
	sbc  c                                           ; $7bd8: $99
	ld   a, b                                        ; $7bd9: $78
	ld   l, d                                        ; $7bda: $6a
	sbc  c                                           ; $7bdb: $99
	adc  d                                           ; $7bdc: $8a
	add  a                                           ; $7bdd: $87
	ld   a, d                                        ; $7bde: $7a
	xor  b                                           ; $7bdf: $a8
	cp   b                                           ; $7be0: $b8
	ld   a, c                                        ; $7be1: $79
	sbc  c                                           ; $7be2: $99
	ld   a, c                                        ; $7be3: $79
	add  a                                           ; $7be4: $87
	xor  c                                           ; $7be5: $a9
	ld   e, c                                        ; $7be6: $59
	ld   a, b                                        ; $7be7: $78
	sub  a                                           ; $7be8: $97
	and  a                                           ; $7be9: $a7
	sbc  c                                           ; $7bea: $99
	ld   a, d                                        ; $7beb: $7a
	sbc  b                                           ; $7bec: $98
	sub  a                                           ; $7bed: $97
	adc  c                                           ; $7bee: $89
	adc  b                                           ; $7bef: $88
	ld   a, c                                        ; $7bf0: $79
	ld   a, b                                        ; $7bf1: $78
	ld   a, c                                        ; $7bf2: $79
	sbc  b                                           ; $7bf3: $98
	adc  c                                           ; $7bf4: $89
	adc  b                                           ; $7bf5: $88
	sub  a                                           ; $7bf6: $97
	adc  c                                           ; $7bf7: $89
	sbc  c                                           ; $7bf8: $99
	adc  c                                           ; $7bf9: $89
	sbc  c                                           ; $7bfa: $99
	sbc  b                                           ; $7bfb: $98
	adc  c                                           ; $7bfc: $89
	adc  c                                           ; $7bfd: $89
	sub  a                                           ; $7bfe: $97
	sbc  b                                           ; $7bff: $98
	sbc  b                                           ; $7c00: $98
	adc  c                                           ; $7c01: $89
	adc  d                                           ; $7c02: $8a
	ld   a, b                                        ; $7c03: $78
	sbc  b                                           ; $7c04: $98
	sbc  b                                           ; $7c05: $98
	ld   [hl], a                                     ; $7c06: $77
	sub  a                                           ; $7c07: $97
	adc  c                                           ; $7c08: $89
	sub  [hl]                                        ; $7c09: $96
	ld   a, c                                        ; $7c0a: $79
	ld   a, c                                        ; $7c0b: $79
	sub  a                                           ; $7c0c: $97
	ld   a, d                                        ; $7c0d: $7a
	ld   a, b                                        ; $7c0e: $78
	add  a                                           ; $7c0f: $87
	add  a                                           ; $7c10: $87
	adc  c                                           ; $7c11: $89
	sub  a                                           ; $7c12: $97
	adc  b                                           ; $7c13: $88
	ld   a, b                                        ; $7c14: $78
	sbc  b                                           ; $7c15: $98
	ld   a, b                                        ; $7c16: $78
	adc  b                                           ; $7c17: $88
	ld   a, b                                        ; $7c18: $78
	sub  a                                           ; $7c19: $97
	ld   a, b                                        ; $7c1a: $78
	sub  a                                           ; $7c1b: $97
	sbc  b                                           ; $7c1c: $98
	ld   [hl], a                                     ; $7c1d: $77
	sub  a                                           ; $7c1e: $97
	ld   [hl], a                                     ; $7c1f: $77
	sbc  c                                           ; $7c20: $99
	ld   a, b                                        ; $7c21: $78
	ld   a, b                                        ; $7c22: $78
	ld   a, b                                        ; $7c23: $78
	sbc  b                                           ; $7c24: $98
	sub  a                                           ; $7c25: $97
	ld   a, b                                        ; $7c26: $78
	sbc  b                                           ; $7c27: $98
	add  a                                           ; $7c28: $87
	ld   [hl], a                                     ; $7c29: $77
	adc  c                                           ; $7c2a: $89
	sbc  b                                           ; $7c2b: $98
	ld   a, b                                        ; $7c2c: $78
	ld   [hl], a                                     ; $7c2d: $77
	ld   a, b                                        ; $7c2e: $78
	ld   [hl], a                                     ; $7c2f: $77
	add  a                                           ; $7c30: $87
	add  a                                           ; $7c31: $87
	add  a                                           ; $7c32: $87
	ld   [hl], a                                     ; $7c33: $77
	adc  b                                           ; $7c34: $88
	adc  b                                           ; $7c35: $88
	add  a                                           ; $7c36: $87
	ld   a, b                                        ; $7c37: $78
	sub  a                                           ; $7c38: $97
	ld   a, b                                        ; $7c39: $78
	add  a                                           ; $7c3a: $87
	ld   a, b                                        ; $7c3b: $78
	add  a                                           ; $7c3c: $87
	add  a                                           ; $7c3d: $87
	adc  c                                           ; $7c3e: $89
	sbc  b                                           ; $7c3f: $98
	ld   a, b                                        ; $7c40: $78
	ld   a, b                                        ; $7c41: $78
	add  a                                           ; $7c42: $87
	sbc  b                                           ; $7c43: $98
	add  a                                           ; $7c44: $87
	ld   a, c                                        ; $7c45: $79
	add  a                                           ; $7c46: $87
	adc  b                                           ; $7c47: $88
	ld   a, b                                        ; $7c48: $78
	ld   a, b                                        ; $7c49: $78
	adc  b                                           ; $7c4a: $88
	sbc  b                                           ; $7c4b: $98
	add  a                                           ; $7c4c: $87
	ld   a, b                                        ; $7c4d: $78
	add  a                                           ; $7c4e: $87
	adc  b                                           ; $7c4f: $88
	ld   a, b                                        ; $7c50: $78
	ld   a, b                                        ; $7c51: $78
	sub  a                                           ; $7c52: $97
	sub  a                                           ; $7c53: $97
	add  a                                           ; $7c54: $87
	adc  c                                           ; $7c55: $89
	adc  b                                           ; $7c56: $88
	ld   [hl], a                                     ; $7c57: $77
	ld   a, b                                        ; $7c58: $78
	ld   a, b                                        ; $7c59: $78
	adc  b                                           ; $7c5a: $88
	ld   [hl], a                                     ; $7c5b: $77
	adc  b                                           ; $7c5c: $88
	add  a                                           ; $7c5d: $87
	add  a                                           ; $7c5e: $87
	sbc  b                                           ; $7c5f: $98
	adc  b                                           ; $7c60: $88
	add  a                                           ; $7c61: $87
	ld   a, b                                        ; $7c62: $78
	ld   a, b                                        ; $7c63: $78
	adc  b                                           ; $7c64: $88
	ld   [hl], a                                     ; $7c65: $77
	ld   a, b                                        ; $7c66: $78
	adc  b                                           ; $7c67: $88
	sub  a                                           ; $7c68: $97
	add  a                                           ; $7c69: $87
	adc  b                                           ; $7c6a: $88
	adc  c                                           ; $7c6b: $89
	ld   [hl], a                                     ; $7c6c: $77
	sub  a                                           ; $7c6d: $97
	ld   a, b                                        ; $7c6e: $78
	adc  c                                           ; $7c6f: $89
	ld   a, b                                        ; $7c70: $78
	adc  b                                           ; $7c71: $88
	adc  b                                           ; $7c72: $88
	sbc  b                                           ; $7c73: $98
	adc  b                                           ; $7c74: $88
	ld   a, b                                        ; $7c75: $78
	add  a                                           ; $7c76: $87
	adc  b                                           ; $7c77: $88
	add  a                                           ; $7c78: $87
	adc  b                                           ; $7c79: $88
	ld   a, b                                        ; $7c7a: $78
	ld   a, b                                        ; $7c7b: $78
	adc  b                                           ; $7c7c: $88
	adc  b                                           ; $7c7d: $88
	adc  b                                           ; $7c7e: $88
	adc  b                                           ; $7c7f: $88
	add  a                                           ; $7c80: $87
	ld   a, b                                        ; $7c81: $78
	adc  b                                           ; $7c82: $88
	adc  b                                           ; $7c83: $88
	adc  b                                           ; $7c84: $88
	adc  b                                           ; $7c85: $88
	add  a                                           ; $7c86: $87
	add  a                                           ; $7c87: $87
	adc  b                                           ; $7c88: $88
	adc  b                                           ; $7c89: $88
	adc  b                                           ; $7c8a: $88
	ld   a, c                                        ; $7c8b: $79
	ld   [hl], a                                     ; $7c8c: $77
	add  a                                           ; $7c8d: $87
	ld   a, b                                        ; $7c8e: $78
	adc  b                                           ; $7c8f: $88
	adc  b                                           ; $7c90: $88
	adc  b                                           ; $7c91: $88
	adc  b                                           ; $7c92: $88
	sbc  b                                           ; $7c93: $98
	add  a                                           ; $7c94: $87
	ld   a, c                                        ; $7c95: $79
	ld   a, b                                        ; $7c96: $78
	add  a                                           ; $7c97: $87
	sub  a                                           ; $7c98: $97
	adc  b                                           ; $7c99: $88
	ld   a, b                                        ; $7c9a: $78
	ld   a, b                                        ; $7c9b: $78
	add  a                                           ; $7c9c: $87
	sub  a                                           ; $7c9d: $97
	adc  b                                           ; $7c9e: $88
	ld   a, c                                        ; $7c9f: $79
	ld   a, b                                        ; $7ca0: $78
	ld   a, c                                        ; $7ca1: $79
	adc  b                                           ; $7ca2: $88
	adc  b                                           ; $7ca3: $88
	adc  b                                           ; $7ca4: $88
	add  a                                           ; $7ca5: $87
	sbc  b                                           ; $7ca6: $98
	adc  b                                           ; $7ca7: $88
	sbc  b                                           ; $7ca8: $98
	adc  b                                           ; $7ca9: $88
	ld   a, c                                        ; $7caa: $79
	adc  b                                           ; $7cab: $88
	adc  b                                           ; $7cac: $88
	ld   a, b                                        ; $7cad: $78
	adc  c                                           ; $7cae: $89
	adc  b                                           ; $7caf: $88
	adc  b                                           ; $7cb0: $88
	adc  b                                           ; $7cb1: $88
	sub  a                                           ; $7cb2: $97
	sbc  b                                           ; $7cb3: $98
	adc  b                                           ; $7cb4: $88
	sub  a                                           ; $7cb5: $97
	adc  b                                           ; $7cb6: $88
	ld   a, c                                        ; $7cb7: $79
	ld   a, c                                        ; $7cb8: $79
	ld   a, b                                        ; $7cb9: $78
	sbc  b                                           ; $7cba: $98
	sbc  b                                           ; $7cbb: $98
	adc  c                                           ; $7cbc: $89
	add  a                                           ; $7cbd: $87
	sbc  b                                           ; $7cbe: $98
	adc  b                                           ; $7cbf: $88
	adc  c                                           ; $7cc0: $89
	ld   a, c                                        ; $7cc1: $79
	ld   a, b                                        ; $7cc2: $78
	adc  c                                           ; $7cc3: $89
	adc  b                                           ; $7cc4: $88
	sbc  b                                           ; $7cc5: $98
	sub  a                                           ; $7cc6: $97
	adc  b                                           ; $7cc7: $88
	sbc  b                                           ; $7cc8: $98
	adc  c                                           ; $7cc9: $89
	adc  b                                           ; $7cca: $88
	adc  c                                           ; $7ccb: $89
	sub  a                                           ; $7ccc: $97
	sbc  b                                           ; $7ccd: $98
	sbc  b                                           ; $7cce: $98
	ld   a, c                                        ; $7ccf: $79
	adc  c                                           ; $7cd0: $89
	ld   a, c                                        ; $7cd1: $79
	adc  b                                           ; $7cd2: $88
	sbc  b                                           ; $7cd3: $98
	add  a                                           ; $7cd4: $87
	adc  b                                           ; $7cd5: $88
	sbc  c                                           ; $7cd6: $99
	ld   a, c                                        ; $7cd7: $79
	adc  c                                           ; $7cd8: $89
	adc  c                                           ; $7cd9: $89
	add  a                                           ; $7cda: $87
	adc  c                                           ; $7cdb: $89
	adc  b                                           ; $7cdc: $88
	sub  a                                           ; $7cdd: $97
	sbc  b                                           ; $7cde: $98
	adc  c                                           ; $7cdf: $89
	adc  c                                           ; $7ce0: $89
	adc  b                                           ; $7ce1: $88
	sbc  b                                           ; $7ce2: $98
	adc  b                                           ; $7ce3: $88
	adc  b                                           ; $7ce4: $88
	adc  c                                           ; $7ce5: $89
	sub  a                                           ; $7ce6: $97
	adc  c                                           ; $7ce7: $89
	ld   a, b                                        ; $7ce8: $78
	adc  b                                           ; $7ce9: $88
	sbc  b                                           ; $7cea: $98
	sub  a                                           ; $7ceb: $97
	adc  b                                           ; $7cec: $88
	add  a                                           ; $7ced: $87
	sbc  b                                           ; $7cee: $98
	adc  c                                           ; $7cef: $89
	adc  b                                           ; $7cf0: $88
	sbc  b                                           ; $7cf1: $98
	adc  c                                           ; $7cf2: $89
	adc  b                                           ; $7cf3: $88
	adc  c                                           ; $7cf4: $89
	adc  b                                           ; $7cf5: $88
	add  a                                           ; $7cf6: $87
	adc  b                                           ; $7cf7: $88
	adc  c                                           ; $7cf8: $89
	adc  b                                           ; $7cf9: $88
	add  a                                           ; $7cfa: $87
	adc  b                                           ; $7cfb: $88
	adc  c                                           ; $7cfc: $89
	adc  b                                           ; $7cfd: $88
	adc  c                                           ; $7cfe: $89
	adc  b                                           ; $7cff: $88
	sbc  b                                           ; $7d00: $98
	adc  b                                           ; $7d01: $88
	adc  c                                           ; $7d02: $89
	adc  c                                           ; $7d03: $89
	adc  b                                           ; $7d04: $88
	adc  b                                           ; $7d05: $88
	adc  b                                           ; $7d06: $88
	sbc  c                                           ; $7d07: $99
	adc  b                                           ; $7d08: $88
	adc  b                                           ; $7d09: $88
	adc  c                                           ; $7d0a: $89
	sbc  b                                           ; $7d0b: $98
	adc  c                                           ; $7d0c: $89
	adc  b                                           ; $7d0d: $88
	adc  b                                           ; $7d0e: $88
	adc  b                                           ; $7d0f: $88
	adc  b                                           ; $7d10: $88
	adc  b                                           ; $7d11: $88
	adc  c                                           ; $7d12: $89
	add  a                                           ; $7d13: $87
	sbc  b                                           ; $7d14: $98
	adc  b                                           ; $7d15: $88
	sbc  b                                           ; $7d16: $98
	adc  b                                           ; $7d17: $88
	ld   a, b                                        ; $7d18: $78
	adc  b                                           ; $7d19: $88
	adc  b                                           ; $7d1a: $88
	adc  b                                           ; $7d1b: $88
	add  a                                           ; $7d1c: $87
	sbc  c                                           ; $7d1d: $99
	adc  b                                           ; $7d1e: $88
	sub  a                                           ; $7d1f: $97
	sbc  b                                           ; $7d20: $98
	adc  b                                           ; $7d21: $88
	adc  c                                           ; $7d22: $89
	ld   a, b                                        ; $7d23: $78
	adc  b                                           ; $7d24: $88
	adc  b                                           ; $7d25: $88
	adc  b                                           ; $7d26: $88
	add  a                                           ; $7d27: $87
	adc  d                                           ; $7d28: $8a
	ld   [hl], a                                     ; $7d29: $77
	adc  c                                           ; $7d2a: $89
	ld   a, b                                        ; $7d2b: $78
	adc  b                                           ; $7d2c: $88
	adc  b                                           ; $7d2d: $88
	adc  c                                           ; $7d2e: $89
	adc  b                                           ; $7d2f: $88
	add  a                                           ; $7d30: $87
	sub  a                                           ; $7d31: $97
	adc  b                                           ; $7d32: $88
	sbc  b                                           ; $7d33: $98
	ld   a, c                                        ; $7d34: $79
	adc  b                                           ; $7d35: $88
	adc  b                                           ; $7d36: $88
	sub  a                                           ; $7d37: $97
	sbc  b                                           ; $7d38: $98
	adc  b                                           ; $7d39: $88
	adc  b                                           ; $7d3a: $88
	adc  c                                           ; $7d3b: $89
	adc  b                                           ; $7d3c: $88
	adc  b                                           ; $7d3d: $88
	add  a                                           ; $7d3e: $87
	sub  a                                           ; $7d3f: $97
	ld   a, b                                        ; $7d40: $78
	ld   a, c                                        ; $7d41: $79
	adc  c                                           ; $7d42: $89
	adc  c                                           ; $7d43: $89
	adc  b                                           ; $7d44: $88
	adc  b                                           ; $7d45: $88
	adc  b                                           ; $7d46: $88
	add  a                                           ; $7d47: $87
	sub  a                                           ; $7d48: $97
	adc  c                                           ; $7d49: $89
	adc  b                                           ; $7d4a: $88
	adc  b                                           ; $7d4b: $88
	ld   a, b                                        ; $7d4c: $78
	ld   a, b                                        ; $7d4d: $78
	ld   a, b                                        ; $7d4e: $78
	adc  b                                           ; $7d4f: $88
	add  a                                           ; $7d50: $87
	sbc  b                                           ; $7d51: $98
	sbc  b                                           ; $7d52: $98
	adc  b                                           ; $7d53: $88
	adc  b                                           ; $7d54: $88
	sbc  b                                           ; $7d55: $98
	adc  b                                           ; $7d56: $88
	ld   l, d                                        ; $7d57: $6a
	ld   a, b                                        ; $7d58: $78
	add  a                                           ; $7d59: $87
	add  a                                           ; $7d5a: $87
	sub  a                                           ; $7d5b: $97
	sbc  b                                           ; $7d5c: $98
	adc  b                                           ; $7d5d: $88
	adc  b                                           ; $7d5e: $88
	adc  b                                           ; $7d5f: $88
	ld   a, c                                        ; $7d60: $79
	ld   a, b                                        ; $7d61: $78
	adc  b                                           ; $7d62: $88
	add  a                                           ; $7d63: $87
	sbc  b                                           ; $7d64: $98
	adc  b                                           ; $7d65: $88
	ld   a, b                                        ; $7d66: $78
	ld   a, c                                        ; $7d67: $79
	sbc  b                                           ; $7d68: $98
	add  a                                           ; $7d69: $87
	adc  b                                           ; $7d6a: $88
	ld   a, c                                        ; $7d6b: $79
	add  a                                           ; $7d6c: $87
	sub  a                                           ; $7d6d: $97
	sbc  b                                           ; $7d6e: $98
	ld   a, b                                        ; $7d6f: $78
	adc  b                                           ; $7d70: $88
	adc  c                                           ; $7d71: $89
	adc  b                                           ; $7d72: $88
	ld   [hl], a                                     ; $7d73: $77
	sbc  b                                           ; $7d74: $98
	adc  b                                           ; $7d75: $88
	adc  b                                           ; $7d76: $88
	add  a                                           ; $7d77: $87
	sub  a                                           ; $7d78: $97
	adc  c                                           ; $7d79: $89
	ld   a, b                                        ; $7d7a: $78
	adc  b                                           ; $7d7b: $88
	adc  b                                           ; $7d7c: $88
	sbc  b                                           ; $7d7d: $98
	adc  b                                           ; $7d7e: $88
	adc  c                                           ; $7d7f: $89
	add  a                                           ; $7d80: $87
	sub  a                                           ; $7d81: $97
	add  a                                           ; $7d82: $87
	ld   a, c                                        ; $7d83: $79

Jump_0db_7d84:
	ld   a, c                                        ; $7d84: $79
	ld   a, b                                        ; $7d85: $78
	ld   a, c                                        ; $7d86: $79
	adc  b                                           ; $7d87: $88
	sub  a                                           ; $7d88: $97
	add  a                                           ; $7d89: $87
	add  a                                           ; $7d8a: $87
	sbc  c                                           ; $7d8b: $99
	ld   a, b                                        ; $7d8c: $78
	ld   a, c                                        ; $7d8d: $79
	ld   a, c                                        ; $7d8e: $79
	add  a                                           ; $7d8f: $87
	sub  a                                           ; $7d90: $97
	add  a                                           ; $7d91: $87
	sbc  b                                           ; $7d92: $98
	adc  b                                           ; $7d93: $88
	ld   a, b                                        ; $7d94: $78
	ld   a, c                                        ; $7d95: $79
	ld   a, b                                        ; $7d96: $78
	adc  b                                           ; $7d97: $88
	add  a                                           ; $7d98: $87
	sbc  b                                           ; $7d99: $98
	add  a                                           ; $7d9a: $87
	sbc  b                                           ; $7d9b: $98
	ld   a, c                                        ; $7d9c: $79
	ld   a, c                                        ; $7d9d: $79
	ld   a, b                                        ; $7d9e: $78
	ld   a, b                                        ; $7d9f: $78
	add  a                                           ; $7da0: $87
	sbc  b                                           ; $7da1: $98
	add  a                                           ; $7da2: $87
	sbc  b                                           ; $7da3: $98
	adc  c                                           ; $7da4: $89
	ld   a, b                                        ; $7da5: $78
	adc  c                                           ; $7da6: $89
	ld   a, b                                        ; $7da7: $78
	sub  a                                           ; $7da8: $97
	sub  a                                           ; $7da9: $97
	adc  b                                           ; $7daa: $88
	adc  b                                           ; $7dab: $88
	adc  c                                           ; $7dac: $89
	sbc  b                                           ; $7dad: $98
	adc  c                                           ; $7dae: $89
	adc  d                                           ; $7daf: $8a
	adc  c                                           ; $7db0: $89
	sub  a                                           ; $7db1: $97
	add  [hl]                                        ; $7db2: $86
	add  a                                           ; $7db3: $87
	ld   a, b                                        ; $7db4: $78
	ld   [hl], a                                     ; $7db5: $77
	ld   h, [hl]                                     ; $7db6: $66
	ld   d, l                                        ; $7db7: $55
	adc  d                                           ; $7db8: $8a
	sub  a                                           ; $7db9: $97
	ld   [hl], a                                     ; $7dba: $77
	ld   a, b                                        ; $7dbb: $78
	adc  c                                           ; $7dbc: $89
	sbc  d                                           ; $7dbd: $9a
	add  a                                           ; $7dbe: $87
	adc  c                                           ; $7dbf: $89
	sub  a                                           ; $7dc0: $97
	ld   a, b                                        ; $7dc1: $78
	ld   [hl], a                                     ; $7dc2: $77
	ld   a, b                                        ; $7dc3: $78
	add  a                                           ; $7dc4: $87
	sbc  b                                           ; $7dc5: $98
	sbc  b                                           ; $7dc6: $98
	sbc  c                                           ; $7dc7: $99
	adc  d                                           ; $7dc8: $8a
	adc  c                                           ; $7dc9: $89
	adc  c                                           ; $7dca: $89
	add  a                                           ; $7dcb: $87
	sub  a                                           ; $7dcc: $97
	add  a                                           ; $7dcd: $87
	halt                                             ; $7dce: $76
	ld   [hl], a                                     ; $7dcf: $77
	ld   a, b                                        ; $7dd0: $78
	ld   a, c                                        ; $7dd1: $79
	adc  c                                           ; $7dd2: $89
	sbc  c                                           ; $7dd3: $99
	xor  b                                           ; $7dd4: $a8
	adc  b                                           ; $7dd5: $88
	sub  a                                           ; $7dd6: $97
	ld   a, b                                        ; $7dd7: $78
	ld   h, a                                        ; $7dd8: $67
	ld   h, [hl]                                     ; $7dd9: $66
	halt                                             ; $7dda: $76
	halt                                             ; $7ddb: $76
	adc  b                                           ; $7ddc: $88
	adc  d                                           ; $7ddd: $8a
	adc  d                                           ; $7dde: $8a
	xor  d                                           ; $7ddf: $aa
	xor  c                                           ; $7de0: $a9
	xor  b                                           ; $7de1: $a8
	sub  [hl]                                        ; $7de2: $96
	ld   l, b                                        ; $7de3: $68
	ld   h, l                                        ; $7de4: $65
	ld   b, [hl]                                     ; $7de5: $46
	ld   d, h                                        ; $7de6: $54
	ld   d, [hl]                                     ; $7de7: $56
	adc  d                                           ; $7de8: $8a
	sbc  e                                           ; $7de9: $9b
	sbc  $ec                                         ; $7dea: $de $ec
	cp   d                                           ; $7dec: $ba
	ld   a, d                                        ; $7ded: $7a
	call nz, $3146                                   ; $7dee: $c4 $46 $31
	ld   [de], a                                     ; $7df1: $12
	ld   b, l                                        ; $7df2: $45
	ld   h, a                                        ; $7df3: $67
	rst  $38                                         ; $7df4: $ff
	rst  JumpTable                                         ; $7df5: $df
	rst  $38                                         ; $7df6: $ff
	xor  c                                           ; $7df7: $a9
	adc  e                                           ; $7df8: $8b
	pop  af                                          ; $7df9: $f1
	ld   a, [de]                                     ; $7dfa: $1a
	ld   de, $4314                                   ; $7dfb: $11 $14 $43
	halt                                             ; $7dfe: $76
	rst  $38                                         ; $7dff: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e00: $cf
	rst  $38                                         ; $7e01: $ff
	xor  c                                           ; $7e02: $a9
	adc  b                                           ; $7e03: $88
	pop  af                                          ; $7e04: $f1
	dec  de                                          ; $7e05: $1b
	ld   sp, $6113                                   ; $7e06: $31 $13 $61
	ld   l, b                                        ; $7e09: $68
	rst  $38                                         ; $7e0a: $ff
	rst  JumpTable                                         ; $7e0b: $df
	rst  $38                                         ; $7e0c: $ff
	or   a                                           ; $7e0d: $b7
	cp   b                                           ; $7e0e: $b8
	pop  de                                          ; $7e0f: $d1
	ld   a, [de]                                     ; $7e10: $1a
	ld   hl, $9111                                   ; $7e11: $21 $11 $91
	ld   e, d                                        ; $7e14: $5a
	rst  $38                                         ; $7e15: $ff
	rst  JumpTable                                         ; $7e16: $df
	rst  $38                                         ; $7e17: $ff
	sub  $ca                                         ; $7e18: $d6 $ca
	pop  de                                          ; $7e1a: $d1
	dec  de                                          ; $7e1b: $1b
	ld   de, $9111                                   ; $7e1c: $11 $11 $91
	dec  de                                          ; $7e1f: $1b
	rst  $38                                         ; $7e20: $ff
	rst  $28                                         ; $7e21: $ef
	rst  $38                                         ; $7e22: $ff
	ld   hl, sp-$15                                  ; $7e23: $f8 $eb
	or   d                                           ; $7e25: $b2
	jr   @+$23                                       ; $7e26: $18 $21

	ld   de, $1c81                                   ; $7e28: $11 $81 $1c
	rst  $38                                         ; $7e2b: $ff
	rst  $38                                         ; $7e2c: $ff
	rst  $38                                         ; $7e2d: $ff
	ld   a, [$7add]                                  ; $7e2e: $fa $dd $7a
	ld   de, $1191                                   ; $7e31: $11 $91 $11
	inc  hl                                          ; $7e34: $23
	ld   d, $ff                                      ; $7e35: $16 $ff
	rst  $38                                         ; $7e37: $ff
	rst  $38                                         ; $7e38: $ff
	rst  $38                                         ; $7e39: $ff
	cp   a                                           ; $7e3a: $bf
	adc  d                                           ; $7e3b: $8a
	ld   de, $1151                                   ; $7e3c: $11 $51 $11
	ld   d, $11                                      ; $7e3f: $16 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e41: $cf
	rst  $38                                         ; $7e42: $ff
	rst  $38                                         ; $7e43: $ff
	rst  $38                                         ; $7e44: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e45: $cf
	add  $a1                                         ; $7e46: $c6 $a1
	ld   d, $11                                      ; $7e48: $16 $11
	ld   de, $3f51                                   ; $7e4a: $11 $51 $3f
	rst  $38                                         ; $7e4d: $ff
	rst  $38                                         ; $7e4e: $ff
	rst  $38                                         ; $7e4f: $ff
	ei                                               ; $7e50: $fb
	jp   hl                                          ; $7e51: $e9


	ld   a, b                                        ; $7e52: $78
	ld   de, $1131                                   ; $7e53: $11 $31 $11
	inc  d                                           ; $7e56: $14
	ld   [de], a                                     ; $7e57: $12
	rst  JumpTable                                         ; $7e58: $df
	rst  $38                                         ; $7e59: $ff
	rst  $38                                         ; $7e5a: $ff
	rst  $38                                         ; $7e5b: $ff
	call c, $9197                                    ; $7e5c: $dc $97 $91
	ld   de, $1111                                   ; $7e5f: $11 $11 $11
	ld   d, e                                        ; $7e62: $53
	ld   a, [hl+]                                    ; $7e63: $2a
	rst  $38                                         ; $7e64: $ff
	rst  $38                                         ; $7e65: $ff
	rst  $38                                         ; $7e66: $ff
	rst  $38                                         ; $7e67: $ff
	jp   c, Jump_0db_7158                            ; $7e68: $da $58 $71

	ld   de, $1111                                   ; $7e6b: $11 $11 $11
	ld   [hl-], a                                    ; $7e6e: $32
	ld   e, d                                        ; $7e6f: $5a
	rst  JumpTable                                         ; $7e70: $df
	rst  $38                                         ; $7e71: $ff
	rst  $38                                         ; $7e72: $ff
	rst  $38                                         ; $7e73: $ff
	db   $fc                                         ; $7e74: $fc
	ld   l, c                                        ; $7e75: $69
	or   a                                           ; $7e76: $b7
	ld   hl, $1111                                   ; $7e77: $21 $11 $11
	ld   [de], a                                     ; $7e7a: $12
	dec  [hl]                                        ; $7e7b: $35
	sbc  h                                           ; $7e7c: $9c
	rst  JumpTable                                         ; $7e7d: $df
	rst  $38                                         ; $7e7e: $ff
	rst  $38                                         ; $7e7f: $ff
	cp   $98                                         ; $7e80: $fe $98
	ret                                              ; $7e82: $c9


	ld   b, c                                        ; $7e83: $41
	ld   de, $1111                                   ; $7e84: $11 $11 $11
	inc  [hl]                                        ; $7e87: $34
	ld   l, c                                        ; $7e88: $69
	call $ffff                                       ; $7e89: $cd $ff $ff
	rst  $38                                         ; $7e8c: $ff
	jp   c, $93ab                                    ; $7e8d: $da $ab $93

	ld   de, $1111                                   ; $7e90: $11 $11 $11
	inc  de                                          ; $7e93: $13
	ld   b, [hl]                                     ; $7e94: $46
	xor  h                                           ; $7e95: $ac
	rst  $38                                         ; $7e96: $ff
	rst  $38                                         ; $7e97: $ff
	rst  $38                                         ; $7e98: $ff
	db   $fc                                         ; $7e99: $fc
	xor  d                                           ; $7e9a: $aa
	cp   b                                           ; $7e9b: $b8
	ld   sp, $1111                                   ; $7e9c: $31 $11 $11
	ld   de, $6823                                   ; $7e9f: $11 $23 $68
	cp   a                                           ; $7ea2: $bf
	rst  $38                                         ; $7ea3: $ff
	rst  $38                                         ; $7ea4: $ff
	rst  $38                                         ; $7ea5: $ff
	db   $db                                         ; $7ea6: $db
	cp   h                                           ; $7ea7: $bc
	sub  h                                           ; $7ea8: $94
	ld   de, $1111                                   ; $7ea9: $11 $11 $11
	ld   [de], a                                     ; $7eac: $12
	dec  h                                           ; $7ead: $25
	adc  d                                           ; $7eae: $8a
	rst  JumpTable                                         ; $7eaf: $df
	rst  $38                                         ; $7eb0: $ff
	rst  $38                                         ; $7eb1: $ff
	cp   $cc                                         ; $7eb2: $fe $cc
	bit  2, c                                        ; $7eb4: $cb $51
	ld   de, $1111                                   ; $7eb6: $11 $11 $11
	ld   [de], a                                     ; $7eb9: $12
	scf                                              ; $7eba: $37
	sbc  h                                           ; $7ebb: $9c
	rst  $38                                         ; $7ebc: $ff
	rst  $38                                         ; $7ebd: $ff
	rst  $38                                         ; $7ebe: $ff
	db   $fc                                         ; $7ebf: $fc
	set  0, a                                        ; $7ec0: $cb $c7
	ld   hl, $1111                                   ; $7ec2: $21 $11 $11
	ld   de, $6923                                   ; $7ec5: $11 $23 $69
	cp   a                                           ; $7ec8: $bf
	rst  $38                                         ; $7ec9: $ff
	rst  $38                                         ; $7eca: $ff
	rst  $38                                         ; $7ecb: $ff
	db   $db                                         ; $7ecc: $db
	res  2, e                                        ; $7ecd: $cb $93
	ld   de, $1111                                   ; $7ecf: $11 $11 $11
	ld   [de], a                                     ; $7ed2: $12
	dec  h                                           ; $7ed3: $25
	adc  e                                           ; $7ed4: $8b
	rst  $28                                         ; $7ed5: $ef
	rst  $38                                         ; $7ed6: $ff
	rst  $38                                         ; $7ed7: $ff
	cp   $cc                                         ; $7ed8: $fe $cc
	cp   e                                           ; $7eda: $bb
	ld   h, c                                        ; $7edb: $61
	ld   de, $1111                                   ; $7edc: $11 $11 $11
	ld   [de], a                                     ; $7edf: $12
	ld   [hl], $ad                                   ; $7ee0: $36 $ad
	rst  $38                                         ; $7ee2: $ff
	rst  $38                                         ; $7ee3: $ff
	rst  $38                                         ; $7ee4: $ff
	db   $ed                                         ; $7ee5: $ed
	set  1, b                                        ; $7ee6: $cb $c8
	ld   sp, $1111                                   ; $7ee8: $31 $11 $11
	ld   de, $5822                                   ; $7eeb: $11 $22 $58
	cp   a                                           ; $7eee: $bf
	rst  $38                                         ; $7eef: $ff
	rst  $38                                         ; $7ef0: $ff
	rst  $38                                         ; $7ef1: $ff
	db   $ed                                         ; $7ef2: $ed
	call z, $11b5                                    ; $7ef3: $cc $b5 $11
	ld   de, $1111                                   ; $7ef6: $11 $11 $11
	inc  hl                                          ; $7ef9: $23
	ld   l, c                                        ; $7efa: $69
	rst  JumpTable                                         ; $7efb: $df
	rst  $38                                         ; $7efc: $ff
	rst  $38                                         ; $7efd: $ff
	cp   $ed                                         ; $7efe: $fe $ed
	call z, $1183                                    ; $7f00: $cc $83 $11
	ld   de, $1111                                   ; $7f03: $11 $11 $11
	inc  h                                           ; $7f06: $24
	adc  e                                           ; $7f07: $8b
	rst  $38                                         ; $7f08: $ff
	rst  $38                                         ; $7f09: $ff
	rst  $38                                         ; $7f0a: $ff
	cp   $ec                                         ; $7f0b: $fe $ec
	bit  2, c                                        ; $7f0d: $cb $51
	ld   de, $1111                                   ; $7f0f: $11 $11 $11
	ld   de, $9d36                                   ; $7f12: $11 $36 $9d
	rst  $38                                         ; $7f15: $ff
	rst  $38                                         ; $7f16: $ff
	rst  $38                                         ; $7f17: $ff
	cp   $dc                                         ; $7f18: $fe $dc
	reti                                             ; $7f1a: $d9


	ld   hl, $1111                                   ; $7f1b: $21 $11 $11
	ld   de, $4811                                   ; $7f1e: $11 $11 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f21: $cf
	rst  $38                                         ; $7f22: $ff
	rst  $38                                         ; $7f23: $ff
	rst  $38                                         ; $7f24: $ff
	db   $fd                                         ; $7f25: $fd
	call $11c5                                       ; $7f26: $cd $c5 $11
	ld   de, $1111                                   ; $7f29: $11 $11 $11
	ld   [de], a                                     ; $7f2c: $12
	ld   l, c                                        ; $7f2d: $69
	rst  JumpTable                                         ; $7f2e: $df
	rst  $38                                         ; $7f2f: $ff
	rst  $38                                         ; $7f30: $ff
	rst  $38                                         ; $7f31: $ff
	db   $ec                                         ; $7f32: $ec
	call z, $1182                                    ; $7f33: $cc $82 $11
	ld   de, $0111                                   ; $7f36: $11 $11 $01
	inc  d                                           ; $7f39: $14
	adc  e                                           ; $7f3a: $8b
	rst  $38                                         ; $7f3b: $ff
	rst  $38                                         ; $7f3c: $ff
	rst  $38                                         ; $7f3d: $ff
	cp   $dc                                         ; $7f3e: $fe $dc
	call z, $1151                                    ; $7f40: $cc $51 $11
	ld   de, $1111                                   ; $7f43: $11 $11 $11
	dec  h                                           ; $7f46: $25
	sbc  l                                           ; $7f47: $9d
	rst  $38                                         ; $7f48: $ff
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	cp   $dd                                         ; $7f4b: $fe $dd
	reti                                             ; $7f4d: $d9


	ld   hl, $1111                                   ; $7f4e: $21 $11 $11
	ld   de, $3711                                   ; $7f51: $11 $11 $37
	xor  a                                           ; $7f54: $af
	rst  $38                                         ; $7f55: $ff
	rst  $38                                         ; $7f56: $ff
	rst  $38                                         ; $7f57: $ff
	xor  $dd                                         ; $7f58: $ee $dd
	rst  $10                                         ; $7f5a: $d7
	ld   de, $1111                                   ; $7f5b: $11 $11 $11
	ld   bc, $3811                                   ; $7f5e: $01 $11 $38
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f61: $cf
	rst  $38                                         ; $7f62: $ff
	rst  $38                                         ; $7f63: $ff
	cp   $ef                                         ; $7f64: $fe $ef
	sbc  $c5                                         ; $7f66: $de $c5
	ld   de, $1111                                   ; $7f68: $11 $11 $11
	ld   de, $4911                                   ; $7f6b: $11 $11 $49
	rst  $28                                         ; $7f6e: $ef
	rst  $38                                         ; $7f6f: $ff
	rst  $38                                         ; $7f70: $ff
	cp   $fe                                         ; $7f71: $fe $fe
	sbc  $b2                                         ; $7f73: $de $b2
	ld   de, $1111                                   ; $7f75: $11 $11 $11
	ld   de, $6a12                                   ; $7f78: $11 $12 $6a
	rst  $38                                         ; $7f7b: $ff
	rst  $38                                         ; $7f7c: $ff
	rst  $38                                         ; $7f7d: $ff
	db   $fd                                         ; $7f7e: $fd
	db   $ed                                         ; $7f7f: $ed
	db   $dd                                         ; $7f80: $dd
	add  c                                           ; $7f81: $81
	ld   de, $1111                                   ; $7f82: $11 $11 $11
	ld   de, $7b12                                   ; $7f85: $11 $12 $7b
	rst  $38                                         ; $7f88: $ff
	rst  $38                                         ; $7f89: $ff
	rst  $38                                         ; $7f8a: $ff
	cp   $ee                                         ; $7f8b: $fe $ee
	xor  $61                                         ; $7f8d: $ee $61
	ld   de, $1211                                   ; $7f8f: $11 $11 $12
	ld   de, $7d13                                   ; $7f92: $11 $13 $7d
	rst  $38                                         ; $7f95: $ff
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	call c, $eecc                                    ; $7f98: $dc $cc $ee
	ld   d, c                                        ; $7f9b: $51
	ld   de, $1311                                   ; $7f9c: $11 $11 $13
	ld   [hl-], a                                    ; $7f9f: $32
	dec  h                                           ; $7fa0: $25
	adc  [hl]                                        ; $7fa1: $8e
	rst  $38                                         ; $7fa2: $ff
	rst  $38                                         ; $7fa3: $ff
	cp   $cc                                         ; $7fa4: $fe $cc
	xor  e                                           ; $7fa6: $ab
	db   $fc                                         ; $7fa7: $fc
	ld   hl, $1111                                   ; $7fa8: $21 $11 $11
	inc  [hl]                                        ; $7fab: $34
	ld   b, h                                        ; $7fac: $44
	ld   b, a                                        ; $7fad: $47
	xor  a                                           ; $7fae: $af
	rst  $38                                         ; $7faf: $ff
	rst  $38                                         ; $7fb0: $ff
	ei                                               ; $7fb1: $fb
	add  a                                           ; $7fb2: $87
	ld   e, e                                        ; $7fb3: $5b
	ei                                               ; $7fb4: $fb
	ld   de, $1311                                   ; $7fb5: $11 $11 $13
	sbc  b                                           ; $7fb8: $98
	and  a                                           ; $7fb9: $a7
	ld   a, b                                        ; $7fba: $78
	rst  $28                                         ; $7fbb: $ef
	rst  $38                                         ; $7fbc: $ff
	rst  $38                                         ; $7fbd: $ff
	ld   d, c                                        ; $7fbe: $51
	ld   de, $fa1f                                   ; $7fbf: $11 $1f $fa
	ld   de, $af11                                   ; $7fc2: $11 $11 $af
	rst  $38                                         ; $7fc5: $ff
	sub  e                                           ; $7fc6: $93
	cp   a                                           ; $7fc7: $bf
	rst  $38                                         ; $7fc8: $ff
	db   $fc                                         ; $7fc9: $fc
	ld   de, $1111                                   ; $7fca: $11 $11 $11
	ld   a, b                                        ; $7fcd: $78
	adc  e                                           ; $7fce: $8b
	ld   l, e                                        ; $7fcf: $6b
	rst  $38                                         ; $7fd0: $ff
	rst  $38                                         ; $7fd1: $ff
	db   $fd                                         ; $7fd2: $fd
	cp   a                                           ; $7fd3: $bf
	rst  $38                                         ; $7fd4: $ff
	rst  $30                                         ; $7fd5: $f7
	ld   de, $1111                                   ; $7fd6: $11 $11 $11
	adc  a                                           ; $7fd9: $8f
	rst  $38                                         ; $7fda: $ff
	rst  $28                                         ; $7fdb: $ef
	rst  $38                                         ; $7fdc: $ff
	rst  $38                                         ; $7fdd: $ff
	ret  z                                           ; $7fde: $c8

	ld   a, a                                        ; $7fdf: $7f
	rst  $38                                         ; $7fe0: $ff
	pop  bc                                          ; $7fe1: $c1
	ld   hl, $1111                                   ; $7fe2: $21 $11 $11
	ld   e, a                                        ; $7fe5: $5f
	rst  $38                                         ; $7fe6: $ff
	ei                                               ; $7fe7: $fb
	rst  $38                                         ; $7fe8: $ff
	rst  $38                                         ; $7fe9: $ff
	add  h                                           ; $7fea: $84
	cpl                                              ; $7feb: $2f
	db   $fc                                         ; $7fec: $fc
	and  c                                           ; $7fed: $a1
	ld   de, $1111                                   ; $7fee: $11 $11 $11
	rst  $38                                         ; $7ff1: $ff
	rst  $38                                         ; $7ff2: $ff
	call c, $fcff                                    ; $7ff3: $dc $ff $fc
	ld   [de], a                                     ; $7ff6: $12
	rra                                              ; $7ff7: $1f
	ld   a, [$1261]                                  ; $7ff8: $fa $61 $12
	ld   de, rAUD1LEN                                   ; $7ffb: $11 $11 $ff
	rst  $38                                         ; $7ffe: $ff
	ld   a, h                                        ; $7fff: $7c
