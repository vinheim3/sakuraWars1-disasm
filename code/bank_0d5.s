; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d5", ROMX[$4000], BANK[$d5]

	ld   de, $ab11                                   ; $4000: $11 $11 $ab
	rst  $28                                         ; $4003: $ef
	rst  $38                                         ; $4004: $ff
	rst  $38                                         ; $4005: $ff
	rst  $38                                         ; $4006: $ff
	rst  $38                                         ; $4007: $ff
	rst  $38                                         ; $4008: $ff
	rst  $38                                         ; $4009: $ff
	db   $fd                                         ; $400a: $fd
	ld   d, c                                        ; $400b: $51
	ld   de, $1111                                   ; $400c: $11 $11 $11
	ld   de, $1111                                   ; $400f: $11 $11 $11
	adc  l                                           ; $4012: $8d
	rst  $38                                         ; $4013: $ff
	rst  $38                                         ; $4014: $ff
	rst  $38                                         ; $4015: $ff
	rst  $38                                         ; $4016: $ff
	rst  $38                                         ; $4017: $ff
	rst  $38                                         ; $4018: $ff
	rst  $38                                         ; $4019: $ff
	ld   a, [$1131]                                  ; $401a: $fa $31 $11
	ld   de, $1111                                   ; $401d: $11 $11 $11
	ld   de, $8d16                                   ; $4020: $11 $16 $8d
	rst  $38                                         ; $4023: $ff
	rst  $38                                         ; $4024: $ff
	rst  $38                                         ; $4025: $ff
	rst  $38                                         ; $4026: $ff
	rst  $38                                         ; $4027: $ff
	rst  $38                                         ; $4028: $ff
	rst  $38                                         ; $4029: $ff
	db   $fc                                         ; $402a: $fc
	ld   hl, $1111                                   ; $402b: $21 $11 $11
	ld   de, $1111                                   ; $402e: $11 $11 $11
	inc  d                                           ; $4031: $14
	xor  l                                           ; $4032: $ad
	rst  $38                                         ; $4033: $ff
	rst  $38                                         ; $4034: $ff
	rst  $38                                         ; $4035: $ff
	rst  $38                                         ; $4036: $ff
	rst  $38                                         ; $4037: $ff
	rst  $38                                         ; $4038: $ff
	rst  $38                                         ; $4039: $ff
	ld   sp, hl                                      ; $403a: $f9
	ld   hl, $1111                                   ; $403b: $21 $11 $11
	ld   de, $1111                                   ; $403e: $11 $11 $11
	ld   [de], a                                     ; $4041: $12
	cp   [hl]                                        ; $4042: $be
	rst  $38                                         ; $4043: $ff
	rst  $38                                         ; $4044: $ff
	rst  $38                                         ; $4045: $ff
	rst  $38                                         ; $4046: $ff
	rst  $38                                         ; $4047: $ff
	rst  $38                                         ; $4048: $ff
	rst  $38                                         ; $4049: $ff
	reti                                             ; $404a: $d9


	ld   hl, $1111                                   ; $404b: $21 $11 $11
	ld   de, $1111                                   ; $404e: $11 $11 $11
	db   $18, $9e                                    ; $4051: $18 $9e
	rst  $38                                         ; $4053: $ff
	rst  $38                                         ; $4054: $ff
	rst  $38                                         ; $4055: $ff
	rst  $38                                         ; $4056: $ff
	rst  $38                                         ; $4057: $ff
	rst  $38                                         ; $4058: $ff
	rst  $38                                         ; $4059: $ff
	ld   a, [$1131]                                  ; $405a: $fa $31 $11
	ld   de, $1111                                   ; $405d: $11 $11 $11
	ld   de, $ab14                                   ; $4060: $11 $14 $ab
	rst  $38                                         ; $4063: $ff
	rst  $38                                         ; $4064: $ff
	rst  $38                                         ; $4065: $ff
	rst  $38                                         ; $4066: $ff
	rst  $38                                         ; $4067: $ff
	rst  $38                                         ; $4068: $ff
	rst  $38                                         ; $4069: $ff
	ld   sp, hl                                      ; $406a: $f9
	ld   b, c                                        ; $406b: $41
	ld   de, $1111                                   ; $406c: $11 $11 $11
	ld   de, $1411                                   ; $406f: $11 $11 $14
	ret                                              ; $4072: $c9


	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	rst  $38                                         ; $4075: $ff
	rst  $38                                         ; $4076: $ff
	rst  $38                                         ; $4077: $ff
	rst  $38                                         ; $4078: $ff
	rst  $38                                         ; $4079: $ff
	db   $fc                                         ; $407a: $fc
	ld   [hl], c                                     ; $407b: $71
	ld   de, $1111                                   ; $407c: $11 $11 $11
	ld   de, $1111                                   ; $407f: $11 $11 $11
	ld   a, d                                        ; $4082: $7a
	rst  JumpTable                                         ; $4083: $df
	rst  $38                                         ; $4084: $ff
	rst  $38                                         ; $4085: $ff
	rst  $38                                         ; $4086: $ff
	rst  $38                                         ; $4087: $ff
	rst  $38                                         ; $4088: $ff
	rst  $38                                         ; $4089: $ff
	rst  $38                                         ; $408a: $ff
	and  h                                           ; $408b: $a4
	ld   de, $1111                                   ; $408c: $11 $11 $11
	ld   de, $1111                                   ; $408f: $11 $11 $11
	add  hl, hl                                      ; $4092: $29
	sbc  [hl]                                        ; $4093: $9e
	rst  $38                                         ; $4094: $ff
	rst  $38                                         ; $4095: $ff
	rst  $38                                         ; $4096: $ff
	rst  $38                                         ; $4097: $ff
	rst  $38                                         ; $4098: $ff
	rst  $38                                         ; $4099: $ff
	rst  $38                                         ; $409a: $ff
	ret  c                                           ; $409b: $d8

	ld   hl, $1111                                   ; $409c: $21 $11 $11
	ld   de, $1111                                   ; $409f: $11 $11 $11
	inc  d                                           ; $40a2: $14
	ld   l, h                                        ; $40a3: $6c
	rst  JumpTable                                         ; $40a4: $df
	rst  $38                                         ; $40a5: $ff
	rst  $38                                         ; $40a6: $ff
	rst  $38                                         ; $40a7: $ff
	rst  $38                                         ; $40a8: $ff
	rst  $38                                         ; $40a9: $ff
	rst  $38                                         ; $40aa: $ff
	db   $fd                                         ; $40ab: $fd
	ld   h, h                                        ; $40ac: $64
	ld   de, $1111                                   ; $40ad: $11 $11 $11
	ld   de, $1111                                   ; $40b0: $11 $11 $11
	ld   d, d                                        ; $40b3: $52
	xor  a                                           ; $40b4: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40b5: $cf
	rst  $38                                         ; $40b6: $ff
	rst  $38                                         ; $40b7: $ff
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	rst  $38                                         ; $40ba: $ff
	rst  $38                                         ; $40bb: $ff
	ret                                              ; $40bc: $c9


	ld   [hl], c                                     ; $40bd: $71
	ld   de, $1111                                   ; $40be: $11 $11 $11
	ld   de, $1211                                   ; $40c1: $11 $11 $12
	dec  [hl]                                        ; $40c4: $35
	set  7, a                                        ; $40c5: $cb $ff
	rst  $38                                         ; $40c7: $ff
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	rst  $38                                         ; $40ca: $ff
	rst  $38                                         ; $40cb: $ff
	rst  $38                                         ; $40cc: $ff
	rst  ToBoot                                         ; $40cd: $c7
	ld   d, c                                        ; $40ce: $51
	ld   de, $1111                                   ; $40cf: $11 $11 $11
	ld   de, $1211                                   ; $40d2: $11 $11 $12
	ld   [hl], c                                     ; $40d5: $71
	rst  JumpTable                                         ; $40d6: $df
	xor  a                                           ; $40d7: $af
	rst  $38                                         ; $40d8: $ff
	rst  $38                                         ; $40d9: $ff
	rst  $38                                         ; $40da: $ff
	rst  $38                                         ; $40db: $ff
	rst  $38                                         ; $40dc: $ff
	rst  $38                                         ; $40dd: $ff
	or   [hl]                                        ; $40de: $b6
	add  c                                           ; $40df: $81
	ld   de, $1111                                   ; $40e0: $11 $11 $11
	ld   de, $1111                                   ; $40e3: $11 $11 $11
	ld   d, h                                        ; $40e6: $54
	sbc  l                                           ; $40e7: $9d
	rst  JumpTable                                         ; $40e8: $df
	rst  $38                                         ; $40e9: $ff
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	rst  $38                                         ; $40ec: $ff
	rst  $38                                         ; $40ed: $ff
	rst  $38                                         ; $40ee: $ff
	add  sp, -$6b                                    ; $40ef: $e8 $95
	ld   de, $1111                                   ; $40f1: $11 $11 $11
	ld   de, $1111                                   ; $40f4: $11 $11 $11
	ld   d, $78                                      ; $40f7: $16 $78
	rst  JumpTable                                         ; $40f9: $df
	rst  $28                                         ; $40fa: $ef
	rst  $38                                         ; $40fb: $ff
	rst  $38                                         ; $40fc: $ff
	rst  $38                                         ; $40fd: $ff
	rst  $38                                         ; $40fe: $ff
	rst  $38                                         ; $40ff: $ff
	db   $fc                                         ; $4100: $fc
	cp   c                                           ; $4101: $b9
	ld   [hl-], a                                    ; $4102: $32
	ld   de, $1111                                   ; $4103: $11 $11 $11
	ld   de, $1111                                   ; $4106: $11 $11 $11
	ld   d, l                                        ; $4109: $55
	sbc  l                                           ; $410a: $9d
	xor  $ff                                         ; $410b: $ee $ff
	rst  $38                                         ; $410d: $ff
	rst  $38                                         ; $410e: $ff
	rst  $38                                         ; $410f: $ff
	rst  $38                                         ; $4110: $ff
	rst  $38                                         ; $4111: $ff
	jp   c, $1186                                    ; $4112: $da $86 $11

	ld   de, $1111                                   ; $4115: $11 $11 $11
	ld   de, $1211                                   ; $4118: $11 $11 $12
	scf                                              ; $411b: $37
	cp   e                                           ; $411c: $bb
	rst  JumpTable                                         ; $411d: $df
	rst  $38                                         ; $411e: $ff
	rst  $38                                         ; $411f: $ff
	rst  $38                                         ; $4120: $ff
	rst  $38                                         ; $4121: $ff
	rst  $38                                         ; $4122: $ff
	rst  $38                                         ; $4123: $ff
	cp   d                                           ; $4124: $ba
	add  l                                           ; $4125: $85
	ld   [hl+], a                                    ; $4126: $22
	ld   hl, $1111                                   ; $4127: $21 $11 $11
	ld   de, $1211                                   ; $412a: $11 $11 $12
	ld   d, l                                        ; $412d: $55
	xor  h                                           ; $412e: $ac
	xor  a                                           ; $412f: $af
	db   $fd                                         ; $4130: $fd
	rst  $38                                         ; $4131: $ff
	rst  $38                                         ; $4132: $ff
	rst  $38                                         ; $4133: $ff
	rst  $38                                         ; $4134: $ff
	cp   $da                                         ; $4135: $fe $da
	sub  a                                           ; $4137: $97
	ld   b, h                                        ; $4138: $44
	ld   sp, $1111                                   ; $4139: $31 $11 $11
	ld   de, $1111                                   ; $413c: $11 $11 $11
	dec  [hl]                                        ; $413f: $35
	ld   a, b                                        ; $4140: $78
	xor  e                                           ; $4141: $ab
	adc  $df                                         ; $4142: $ce $df
	rst  $38                                         ; $4144: $ff
	rst  $38                                         ; $4145: $ff
	rst  $38                                         ; $4146: $ff
	cp   $ee                                         ; $4147: $fe $ee
	sbc  b                                           ; $4149: $98
	ld   [hl], l                                     ; $414a: $75
	ld   b, h                                        ; $414b: $44
	ld   sp, $1111                                   ; $414c: $31 $11 $11
	ld   de, $2421                                   ; $414f: $11 $21 $24
	dec  [hl]                                        ; $4152: $35
	adc  c                                           ; $4153: $89
	sbc  h                                           ; $4154: $9c
	cp   l                                           ; $4155: $bd
	db   $ed                                         ; $4156: $ed
	rst  $38                                         ; $4157: $ff
	rst  $38                                         ; $4158: $ff
	rst  $38                                         ; $4159: $ff
	db   $fd                                         ; $415a: $fd
	db   $ed                                         ; $415b: $ed
	xor  c                                           ; $415c: $a9
	sub  [hl]                                        ; $415d: $96
	ld   d, [hl]                                     ; $415e: $56
	inc  sp                                          ; $415f: $33
	ld   de, $0111                                   ; $4160: $11 $11 $01
	ld   de, $3624                                   ; $4163: $11 $24 $36
	ld   [hl], a                                     ; $4166: $77
	adc  d                                           ; $4167: $8a
	xor  d                                           ; $4168: $aa
	sbc  $df                                         ; $4169: $de $df
	rst  $38                                         ; $416b: $ff
	rst  $28                                         ; $416c: $ef
	db   $fc                                         ; $416d: $fc
	call z, $89a8                                    ; $416e: $cc $a8 $89
	ld   h, [hl]                                     ; $4171: $66
	ld   d, h                                        ; $4172: $54
	ld   [hl-], a                                    ; $4173: $32
	ld   [hl-], a                                    ; $4174: $32

Call_0d5_4175:
	ld   [de], a                                     ; $4175: $12
	ld   hl, $3534                                   ; $4176: $21 $34 $35
	ld   h, [hl]                                     ; $4179: $66
	adc  b                                           ; $417a: $88
	adc  c                                           ; $417b: $89
	cp   h                                           ; $417c: $bc
	call $eded                                       ; $417d: $cd $ed $ed
	db   $ed                                         ; $4180: $ed
	call z, $99b9                                    ; $4181: $cc $b9 $99
	ld   [hl], a                                     ; $4184: $77
	ld   [hl], l                                     ; $4185: $75
	ld   h, l                                        ; $4186: $65
	ld   b, h                                        ; $4187: $44
	inc  sp                                          ; $4188: $33
	ld   [hl-], a                                    ; $4189: $32
	inc  [hl]                                        ; $418a: $34
	ld   b, l                                        ; $418b: $45
	ld   d, l                                        ; $418c: $55
	ld   h, a                                        ; $418d: $67
	ld   a, c                                        ; $418e: $79
	sbc  d                                           ; $418f: $9a
	cp   e                                           ; $4190: $bb
	xor  h                                           ; $4191: $ac
	cp   h                                           ; $4192: $bc
	cp   h                                           ; $4193: $bc
	res  7, e                                        ; $4194: $cb $bb
	xor  c                                           ; $4196: $a9
	sbc  c                                           ; $4197: $99
	add  a                                           ; $4198: $87
	ld   [hl], a                                     ; $4199: $77
	ld   h, a                                        ; $419a: $67
	ld   h, l                                        ; $419b: $65
	ld   d, l                                        ; $419c: $55
	ld   b, l                                        ; $419d: $45
	ld   d, l                                        ; $419e: $55
	ld   d, l                                        ; $419f: $55
	ld   h, [hl]                                     ; $41a0: $66
	ld   h, a                                        ; $41a1: $67
	ld   [hl], a                                     ; $41a2: $77
	ld   a, b                                        ; $41a3: $78
	adc  c                                           ; $41a4: $89
	sbc  d                                           ; $41a5: $9a
	xor  c                                           ; $41a6: $a9
	xor  e                                           ; $41a7: $ab
	xor  d                                           ; $41a8: $aa
	cp   d                                           ; $41a9: $ba
	xor  e                                           ; $41aa: $ab
	sbc  c                                           ; $41ab: $99
	xor  c                                           ; $41ac: $a9
	adc  c                                           ; $41ad: $89
	sbc  b                                           ; $41ae: $98
	ld   [hl], a                                     ; $41af: $77
	halt                                             ; $41b0: $76
	ld   h, [hl]                                     ; $41b1: $66
	ld   h, l                                        ; $41b2: $65
	ld   h, l                                        ; $41b3: $65
	ld   d, [hl]                                     ; $41b4: $56
	ld   h, [hl]                                     ; $41b5: $66
	ld   h, [hl]                                     ; $41b6: $66
	ld   h, [hl]                                     ; $41b7: $66
	ld   [hl], a                                     ; $41b8: $77
	ld   a, c                                        ; $41b9: $79
	adc  b                                           ; $41ba: $88
	sbc  d                                           ; $41bb: $9a
	xor  e                                           ; $41bc: $ab
	xor  d                                           ; $41bd: $aa
	cp   d                                           ; $41be: $ba
	xor  e                                           ; $41bf: $ab
	xor  d                                           ; $41c0: $aa
	xor  c                                           ; $41c1: $a9
	xor  c                                           ; $41c2: $a9
	adc  b                                           ; $41c3: $88
	ld   [hl], a                                     ; $41c4: $77
	halt                                             ; $41c5: $76
	ld   h, [hl]                                     ; $41c6: $66
	ld   h, [hl]                                     ; $41c7: $66
	ld   h, l                                        ; $41c8: $65
	ld   d, [hl]                                     ; $41c9: $56
	ld   h, [hl]                                     ; $41ca: $66
	ld   h, [hl]                                     ; $41cb: $66
	ld   h, a                                        ; $41cc: $67
	adc  b                                           ; $41cd: $88
	adc  b                                           ; $41ce: $88
	sbc  c                                           ; $41cf: $99
	xor  d                                           ; $41d0: $aa
	xor  d                                           ; $41d1: $aa
	xor  d                                           ; $41d2: $aa
	sbc  d                                           ; $41d3: $9a
	sbc  d                                           ; $41d4: $9a
	xor  c                                           ; $41d5: $a9
	sbc  c                                           ; $41d6: $99
	adc  c                                           ; $41d7: $89
	add  a                                           ; $41d8: $87
	ld   [hl], a                                     ; $41d9: $77
	ld   h, [hl]                                     ; $41da: $66
	ld   h, [hl]                                     ; $41db: $66
	ld   h, [hl]                                     ; $41dc: $66
	ld   [hl], a                                     ; $41dd: $77
	ld   h, a                                        ; $41de: $67
	ld   [hl], a                                     ; $41df: $77
	ld   [hl], a                                     ; $41e0: $77
	ld   a, b                                        ; $41e1: $78
	adc  b                                           ; $41e2: $88
	adc  b                                           ; $41e3: $88
	adc  c                                           ; $41e4: $89
	adc  c                                           ; $41e5: $89
	sbc  c                                           ; $41e6: $99
	sbc  c                                           ; $41e7: $99
	sbc  c                                           ; $41e8: $99
	sbc  c                                           ; $41e9: $99
	adc  b                                           ; $41ea: $88
	sbc  c                                           ; $41eb: $99
	add  a                                           ; $41ec: $87
	add  a                                           ; $41ed: $87
	ld   [hl], a                                     ; $41ee: $77
	ld   [hl], a                                     ; $41ef: $77
	ld   [hl], a                                     ; $41f0: $77
	ld   [hl], a                                     ; $41f1: $77
	ld   [hl], a                                     ; $41f2: $77
	ld   [hl], a                                     ; $41f3: $77
	ld   [hl], a                                     ; $41f4: $77
	ld   [hl], a                                     ; $41f5: $77
	adc  b                                           ; $41f6: $88
	adc  c                                           ; $41f7: $89
	adc  b                                           ; $41f8: $88
	adc  c                                           ; $41f9: $89
	adc  c                                           ; $41fa: $89
	adc  c                                           ; $41fb: $89
	sbc  b                                           ; $41fc: $98
	adc  b                                           ; $41fd: $88
	sbc  c                                           ; $41fe: $99

Call_0d5_41ff:
	adc  b                                           ; $41ff: $88
	adc  b                                           ; $4200: $88
	adc  b                                           ; $4201: $88
	adc  b                                           ; $4202: $88
	ld   [hl], a                                     ; $4203: $77
	ld   [hl], a                                     ; $4204: $77
	ld   [hl], a                                     ; $4205: $77
	ld   a, b                                        ; $4206: $78
	adc  b                                           ; $4207: $88
	adc  b                                           ; $4208: $88
	adc  b                                           ; $4209: $88
	adc  b                                           ; $420a: $88
	adc  b                                           ; $420b: $88
	adc  c                                           ; $420c: $89
	sbc  b                                           ; $420d: $98
	sbc  c                                           ; $420e: $99
	sbc  c                                           ; $420f: $99
	adc  b                                           ; $4210: $88
	adc  b                                           ; $4211: $88
	adc  b                                           ; $4212: $88
	adc  b                                           ; $4213: $88
	adc  b                                           ; $4214: $88
	adc  b                                           ; $4215: $88
	adc  b                                           ; $4216: $88
	adc  b                                           ; $4217: $88
	adc  b                                           ; $4218: $88
	adc  b                                           ; $4219: $88
	adc  b                                           ; $421a: $88
	adc  b                                           ; $421b: $88
	adc  b                                           ; $421c: $88
	adc  b                                           ; $421d: $88
	adc  b                                           ; $421e: $88
	adc  b                                           ; $421f: $88
	adc  b                                           ; $4220: $88
	adc  b                                           ; $4221: $88
	adc  b                                           ; $4222: $88
	adc  b                                           ; $4223: $88
	adc  b                                           ; $4224: $88
	adc  b                                           ; $4225: $88
	adc  b                                           ; $4226: $88
	adc  b                                           ; $4227: $88
	adc  b                                           ; $4228: $88
	adc  b                                           ; $4229: $88
	add  c                                           ; $422a: $81
	ld   de, $1111                                   ; $422b: $11 $11 $11
	ld   de, $1111                                   ; $422e: $11 $11 $11
	ld   de, $1111                                   ; $4231: $11 $11 $11
	ld   de, $1111                                   ; $4234: $11 $11 $11
	ld   de, $1111                                   ; $4237: $11 $11 $11
	ld   de, $1111                                   ; $423a: $11 $11 $11
	ld   de, $4800                                   ; $423d: $11 $00 $48
	ld   de, $1111                                   ; $4240: $11 $11 $11
	ld   de, $1111                                   ; $4243: $11 $11 $11
	ld   de, $1111                                   ; $4246: $11 $11 $11
	ld   de, $5413                                   ; $4249: $11 $13 $54
	ld   d, h                                        ; $424c: $54
	ld   d, h                                        ; $424d: $54
	ld   b, c                                        ; $424e: $41
	rra                                              ; $424f: $1f
	rst  $38                                         ; $4250: $ff
	pop  af                                          ; $4251: $f1
	ld   de, $1211                                   ; $4252: $11 $11 $12
	ld   de, $1c11                                   ; $4255: $11 $11 $1c
	pop  de                                          ; $4258: $d1
	db   $ec                                         ; $4259: $ec
	pop  de                                          ; $425a: $d1
	pop  hl                                          ; $425b: $e1
	ld   de, $1111                                   ; $425c: $11 $11 $11
	ld   de, $1111                                   ; $425f: $11 $11 $11
	ld   de, $1111                                   ; $4262: $11 $11 $11
	ld   de, $1111                                   ; $4265: $11 $11 $11
	ld   de, $5411                                   ; $4268: $11 $11 $54
	ld   b, h                                        ; $426b: $44
	ld   [de], a                                     ; $426c: $12
	ld   de, $5454                                   ; $426d: $11 $54 $54
	ld   h, a                                        ; $4270: $67
	ld   [hl], d                                     ; $4271: $72
	ld   de, $1111                                   ; $4272: $11 $11 $11
	ld   de, $1112                                   ; $4275: $11 $12 $11
	ld   [de], a                                     ; $4278: $12
	ld   de, $1111                                   ; $4279: $11 $11 $11
	ld   h, [hl]                                     ; $427c: $66
	halt                                             ; $427d: $76
	ldh  a, [c]                                      ; $427e: $f2
	ld   de, $8888                                   ; $427f: $11 $88 $88
	adc  b                                           ; $4282: $88
	sbc  c                                           ; $4283: $99
	sbc  c                                           ; $4284: $99
	add  a                                           ; $4285: $87
	adc  b                                           ; $4286: $88
	sbc  b                                           ; $4287: $98
	sbc  b                                           ; $4288: $98
	ld   a, b                                        ; $4289: $78
	ld   a, c                                        ; $428a: $79
	sbc  b                                           ; $428b: $98
	add  a                                           ; $428c: $87
	ld   a, b                                        ; $428d: $78
	sbc  c                                           ; $428e: $99
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	add  a                                           ; $4292: $87
	ld   [hl], a                                     ; $4293: $77
	ld   a, b                                        ; $4294: $78
	adc  b                                           ; $4295: $88
	add  a                                           ; $4296: $87
	ld   [hl], a                                     ; $4297: $77
	ld   a, c                                        ; $4298: $79
	xor  c                                           ; $4299: $a9
	xor  d                                           ; $429a: $aa
	sub  a                                           ; $429b: $97
	ld   [hl], a                                     ; $429c: $77
	adc  b                                           ; $429d: $88
	sbc  c                                           ; $429e: $99
	adc  b                                           ; $429f: $88
	ld   a, b                                        ; $42a0: $78
	sbc  d                                           ; $42a1: $9a
	xor  c                                           ; $42a2: $a9
	sbc  b                                           ; $42a3: $98
	add  a                                           ; $42a4: $87
	ld   h, h                                        ; $42a5: $64
	ld   hl, $5f11                                   ; $42a6: $21 $11 $5f
	rst  $38                                         ; $42a9: $ff
	ld   hl, sp+$21                                  ; $42aa: $f8 $21
	inc  d                                           ; $42ac: $14
	ld   a, c                                        ; $42ad: $79
	xor  l                                           ; $42ae: $ad
	rst  $28                                         ; $42af: $ef
	ei                                               ; $42b0: $fb
	ld   h, c                                        ; $42b1: $61
	dec  h                                           ; $42b2: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42b3: $cf
	ld   sp, hl                                      ; $42b4: $f9
	ld   de, $5f11                                   ; $42b5: $11 $11 $5f
	rst  $38                                         ; $42b8: $ff
	pop  af                                          ; $42b9: $f1
	ld   de, $c649                                   ; $42ba: $11 $49 $c6
	ld   c, l                                        ; $42bd: $4d
	rst  $38                                         ; $42be: $ff
	ld   a, [$1a01]                                  ; $42bf: $fa $01 $1a
	rst  $38                                         ; $42c2: $ff
	ld   a, [$1152]                                  ; $42c3: $fa $52 $11
	ld   de, $ff16                                   ; $42c6: $11 $16 $ff
	rst  $38                                         ; $42c9: $ff
	ld   de, $5311                                   ; $42ca: $11 $11 $53
	ld   [de], a                                     ; $42cd: $12
	rst  JumpTable                                         ; $42ce: $df
	rst  $38                                         ; $42cf: $ff
	rst  $30                                         ; $42d0: $f7
	ld   de, $ff4b                                   ; $42d1: $11 $4b $ff
	jp   hl                                          ; $42d4: $e9


	ld   de, $1c11                                   ; $42d5: $11 $11 $1c
	rst  $38                                         ; $42d8: $ff
	rst  $38                                         ; $42d9: $ff
	ld   de, $4212                                   ; $42da: $11 $12 $42
	dec  d                                           ; $42dd: $15
	rst  $28                                         ; $42de: $ef
	rst  $38                                         ; $42df: $ff
	pop  de                                          ; $42e0: $d1
	ld   de, $ff8f                                   ; $42e1: $11 $8f $ff
	or   h                                           ; $42e4: $b4
	ld   de, $1f11                                   ; $42e5: $11 $11 $1f
	rst  $38                                         ; $42e8: $ff
	push af                                          ; $42e9: $f5
	ld   de, $4113                                   ; $42ea: $11 $13 $41
	dec  e                                           ; $42ed: $1d
	rst  $38                                         ; $42ee: $ff
	cp   $11                                         ; $42ef: $fe $11
	ld   a, [de]                                     ; $42f1: $1a
	rst  $38                                         ; $42f2: $ff
	ld   sp, hl                                      ; $42f3: $f9
	ld   b, c                                        ; $42f4: $41
	ld   de, rAUD1LEN                                   ; $42f5: $11 $11 $ff
	rst  $38                                         ; $42f8: $ff
	ld   b, c                                        ; $42f9: $41
	ld   de, $1125                                   ; $42fa: $11 $25 $11
	rst  $38                                         ; $42fd: $ff
	rst  $38                                         ; $42fe: $ff
	ld   h, c                                        ; $42ff: $61
	ld   de, $ffef                                   ; $4300: $11 $ef $ff
	sub  c                                           ; $4303: $91
	ld   de, $1f11                                   ; $4304: $11 $11 $1f
	rst  $38                                         ; $4307: $ff
	pop  af                                          ; $4308: $f1
	ld   de, $3112                                   ; $4309: $11 $12 $31
	ld   a, a                                        ; $430c: $7f
	rst  $38                                         ; $430d: $ff
	pop  af                                          ; $430e: $f1
	ld   de, $ff7f                                   ; $430f: $11 $7f $ff
	or   $11                                         ; $4312: $f6 $11
	ld   de, $ff1c                                   ; $4314: $11 $1c $ff
	rst  $38                                         ; $4317: $ff
	ld   de, $1111                                   ; $4318: $11 $11 $11
	rra                                              ; $431b: $1f
	rst  $38                                         ; $431c: $ff
	pop  af                                          ; $431d: $f1
	ld   de, $ff3f                                   ; $431e: $11 $3f $ff
	rst  $38                                         ; $4321: $ff
	ld   sp, $1111                                   ; $4322: $31 $11 $11
	rst  $38                                         ; $4325: $ff
	rst  $38                                         ; $4326: $ff
	ld   [hl], c                                     ; $4327: $71
	ld   de, $1411                                   ; $4328: $11 $11 $14
	rst  $38                                         ; $432b: $ff
	ei                                               ; $432c: $fb
	ld   de, $ff1d                                   ; $432d: $11 $1d $ff
	rst  $38                                         ; $4330: $ff
	or   c                                           ; $4331: $b1
	ld   de, $6f11                                   ; $4332: $11 $11 $6f
	rst  $38                                         ; $4335: $ff
	pop  af                                          ; $4336: $f1
	ld   sp, $1111                                   ; $4337: $31 $11 $11
	rst  $38                                         ; $433a: $ff
	rst  $38                                         ; $433b: $ff
	ld   de, $ff1b                                   ; $433c: $11 $1b $ff
	rst  JumpTable                                         ; $433f: $df
	rst  $30                                         ; $4340: $f7
	ld   de, $1f11                                   ; $4341: $11 $11 $1f
	rst  $38                                         ; $4344: $ff
	db   $f4                                         ; $4345: $f4
	jr   z, @+$13                                    ; $4346: $28 $11

	ld   de, $ff8f                                   ; $4348: $11 $8f $ff
	ld   hl, $dd6c                                   ; $434b: $21 $6c $dd
	xor  l                                           ; $434e: $ad
	db   $fd                                         ; $434f: $fd
	ld   de, $1f11                                   ; $4350: $11 $11 $1f
	rst  $38                                         ; $4353: $ff
	rst  $38                                         ; $4354: $ff
	ld   e, $41                                      ; $4355: $1e $41
	ld   de, $ff1f                                   ; $4357: $11 $1f $ff
	and  c                                           ; $435a: $a1

jr_0d5_435b:
	sbc  a                                           ; $435b: $9f
	or   a                                           ; $435c: $b7
	xor  b                                           ; $435d: $a8
	rst  $38                                         ; $435e: $ff
	ld   hl, $1111                                   ; $435f: $21 $11 $11
	rst  $38                                         ; $4362: $ff
	rst  $38                                         ; $4363: $ff
	ld   e, [hl]                                     ; $4364: $5e
	and  c                                           ; $4365: $a1
	ld   de, $ff1f                                   ; $4366: $11 $1f $ff
	di                                               ; $4369: $f3
	sbc  a                                           ; $436a: $9f
	db   $e3                                         ; $436b: $e3
	adc  c                                           ; $436c: $89
	rst  $38                                         ; $436d: $ff
	ld   b, c                                        ; $436e: $41
	ld   de, rAUD1LEN                                   ; $436f: $11 $11 $ff
	rst  $38                                         ; $4372: $ff
	cp   $f2                                         ; $4373: $fe $f2
	ld   de, $fd15                                   ; $4375: $11 $15 $fd
	ret                                              ; $4378: $c9


	sbc  a                                           ; $4379: $9f
	or   $3c                                         ; $437a: $f6 $3c
	cp   a                                           ; $437c: $bf
	or   c                                           ; $437d: $b1
	ld   de, $4f11                                   ; $437e: $11 $11 $4f
	rst  $38                                         ; $4381: $ff
	ei                                               ; $4382: $fb
	rst  $30                                         ; $4383: $f7
	ld   sp, $df11                                   ; $4384: $31 $11 $df
	xor  e                                           ; $4387: $ab
	cp   a                                           ; $4388: $bf
	rst  $38                                         ; $4389: $ff
	jr   jr_0d5_435b                                 ; $438a: $18 $cf

	pop  af                                          ; $438c: $f1
	ld   de, $1f11                                   ; $438d: $11 $11 $1f
	rst  $38                                         ; $4390: $ff
	rst  $38                                         ; $4391: $ff
	rst  $38                                         ; $4392: $ff
	add  c                                           ; $4393: $81
	ld   de, $b85e                                   ; $4394: $11 $5e $b8
	ld   a, a                                        ; $4397: $7f
	rst  $38                                         ; $4398: $ff
	sub  e                                           ; $4399: $93
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $439a: $cf
	or   $11                                         ; $439b: $f6 $11
	ld   de, $ff16                                   ; $439d: $11 $16 $ff
	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	jp   c, $2811                                    ; $43a2: $da $11 $28

	sbc  d                                           ; $43a5: $9a
	dec  hl                                          ; $43a6: $2b
	rst  $38                                         ; $43a7: $ff
	or   $ae                                         ; $43a8: $f6 $ae
	ld   a, [$1111]                                  ; $43aa: $fa $11 $11
	ld   de, $ffff                                   ; $43ad: $11 $ff $ff
	rst  $38                                         ; $43b0: $ff
	rst  $38                                         ; $43b1: $ff
	sub  c                                           ; $43b2: $91
	rla                                              ; $43b3: $17
	ld   l, b                                        ; $43b4: $68
	ld   b, c                                        ; $43b5: $41
	adc  $fa                                         ; $43b6: $ce $fa
	adc  [hl]                                        ; $43b8: $8e
	db   $ed                                         ; $43b9: $ed
	ld   d, c                                        ; $43ba: $51
	ld   de, $5f11                                   ; $43bb: $11 $11 $5f
	rst  $38                                         ; $43be: $ff
	rst  $28                                         ; $43bf: $ef
	rst  $38                                         ; $43c0: $ff
	or   $39                                         ; $43c1: $f6 $39
	adc  b                                           ; $43c3: $88
	ld   h, c                                        ; $43c4: $61
	ld   l, b                                        ; $43c5: $68
	cp   c                                           ; $43c6: $b9
	ld   e, c                                        ; $43c7: $59
	db   $dd                                         ; $43c8: $dd
	ld   [hl], d                                     ; $43c9: $72
	ld   de, $5611                                   ; $43ca: $11 $11 $56
	xor  b                                           ; $43cd: $a8
	adc  a                                           ; $43ce: $8f
	rst  $38                                         ; $43cf: $ff
	db   $fc                                         ; $43d0: $fc
	xor  h                                           ; $43d1: $ac
	res  0, l                                        ; $43d2: $cb $85
	halt                                             ; $43d4: $76
	ld   h, h                                        ; $43d5: $64
	inc  de                                          ; $43d6: $13
	ld   l, b                                        ; $43d7: $68
	add  a                                           ; $43d8: $87
	xor  d                                           ; $43d9: $aa
	ld   a, b                                        ; $43da: $78
	add  [hl]                                        ; $43db: $86
	ld   d, e                                        ; $43dc: $53
	ld   b, l                                        ; $43dd: $45
	ld   h, a                                        ; $43de: $67
	adc  b                                           ; $43df: $88
	adc  c                                           ; $43e0: $89
	sbc  c                                           ; $43e1: $99
	sbc  c                                           ; $43e2: $99
	sbc  c                                           ; $43e3: $99
	sbc  c                                           ; $43e4: $99
	xor  d                                           ; $43e5: $aa
	xor  e                                           ; $43e6: $ab
	cp   d                                           ; $43e7: $ba
	res  7, e                                        ; $43e8: $cb $bb
	sbc  b                                           ; $43ea: $98
	ld   h, [hl]                                     ; $43eb: $66
	ld   h, l                                        ; $43ec: $65
	ld   d, [hl]                                     ; $43ed: $56
	ld   h, [hl]                                     ; $43ee: $66
	ld   h, [hl]                                     ; $43ef: $66
	ld   h, [hl]                                     ; $43f0: $66
	ld   h, [hl]                                     ; $43f1: $66
	ld   h, [hl]                                     ; $43f2: $66
	ld   [hl], a                                     ; $43f3: $77
	adc  c                                           ; $43f4: $89
	sbc  c                                           ; $43f5: $99
	sbc  e                                           ; $43f6: $9b
	cp   h                                           ; $43f7: $bc
	res  7, d                                        ; $43f8: $cb $ba
	xor  c                                           ; $43fa: $a9
	sbc  b                                           ; $43fb: $98
	adc  c                                           ; $43fc: $89
	sbc  b                                           ; $43fd: $98
	sbc  b                                           ; $43fe: $98
	add  a                                           ; $43ff: $87
	ld   [hl], a                                     ; $4400: $77
	ld   h, [hl]                                     ; $4401: $66
	ld   h, [hl]                                     ; $4402: $66
	ld   h, [hl]                                     ; $4403: $66
	ld   h, [hl]                                     ; $4404: $66
	ld   h, a                                        ; $4405: $67
	ld   a, b                                        ; $4406: $78
	sbc  c                                           ; $4407: $99
	sbc  c                                           ; $4408: $99
	sbc  c                                           ; $4409: $99
	adc  b                                           ; $440a: $88
	adc  b                                           ; $440b: $88
	sbc  c                                           ; $440c: $99
	sbc  c                                           ; $440d: $99
	xor  c                                           ; $440e: $a9
	xor  c                                           ; $440f: $a9
	sbc  c                                           ; $4410: $99
	sbc  b                                           ; $4411: $98
	adc  b                                           ; $4412: $88
	ld   [hl], a                                     ; $4413: $77
	ld   h, [hl]                                     ; $4414: $66
	ld   [hl], a                                     ; $4415: $77
	ld   a, b                                        ; $4416: $78
	add  a                                           ; $4417: $87
	ld   [hl], a                                     ; $4418: $77
	ld   h, [hl]                                     ; $4419: $66
	ld   h, [hl]                                     ; $441a: $66
	ld   h, a                                        ; $441b: $67
	adc  b                                           ; $441c: $88
	sbc  c                                           ; $441d: $99
	sbc  b                                           ; $441e: $98
	sbc  c                                           ; $441f: $99
	sbc  d                                           ; $4420: $9a
	sbc  d                                           ; $4421: $9a
	sbc  c                                           ; $4422: $99
	sbc  b                                           ; $4423: $98
	adc  c                                           ; $4424: $89
	sbc  c                                           ; $4425: $99
	xor  c                                           ; $4426: $a9
	sbc  b                                           ; $4427: $98
	add  a                                           ; $4428: $87
	ld   [hl], a                                     ; $4429: $77
	ld   h, a                                        ; $442a: $67
	ld   [hl], a                                     ; $442b: $77
	ld   [hl], a                                     ; $442c: $77
	ld   h, a                                        ; $442d: $67
	ld   [hl], a                                     ; $442e: $77
	ld   a, b                                        ; $442f: $78
	adc  b                                           ; $4430: $88
	adc  b                                           ; $4431: $88
	add  a                                           ; $4432: $87
	ld   a, b                                        ; $4433: $78
	adc  b                                           ; $4434: $88
	sbc  c                                           ; $4435: $99
	xor  d                                           ; $4436: $aa
	sbc  c                                           ; $4437: $99
	adc  c                                           ; $4438: $89
	adc  b                                           ; $4439: $88
	adc  c                                           ; $443a: $89
	adc  b                                           ; $443b: $88
	ld   [hl], a                                     ; $443c: $77
	ld   [hl], a                                     ; $443d: $77
	ld   a, b                                        ; $443e: $78
	adc  b                                           ; $443f: $88
	adc  b                                           ; $4440: $88
	ld   [hl], a                                     ; $4441: $77
	ld   [hl], a                                     ; $4442: $77
	ld   [hl], a                                     ; $4443: $77
	ld   a, b                                        ; $4444: $78
	adc  b                                           ; $4445: $88
	adc  b                                           ; $4446: $88
	adc  b                                           ; $4447: $88
	adc  b                                           ; $4448: $88
	adc  c                                           ; $4449: $89
	sbc  b                                           ; $444a: $98
	adc  b                                           ; $444b: $88
	adc  b                                           ; $444c: $88
	adc  c                                           ; $444d: $89
	adc  b                                           ; $444e: $88
	adc  c                                           ; $444f: $89
	adc  c                                           ; $4450: $89
	adc  b                                           ; $4451: $88
	adc  b                                           ; $4452: $88
	adc  b                                           ; $4453: $88
	adc  b                                           ; $4454: $88
	add  a                                           ; $4455: $87
	ld   [hl], a                                     ; $4456: $77
	ld   [hl], a                                     ; $4457: $77
	ld   a, b                                        ; $4458: $78
	adc  b                                           ; $4459: $88
	add  a                                           ; $445a: $87
	ld   [hl], a                                     ; $445b: $77
	ld   a, b                                        ; $445c: $78
	adc  b                                           ; $445d: $88
	adc  c                                           ; $445e: $89
	adc  b                                           ; $445f: $88
	sbc  c                                           ; $4460: $99
	sbc  b                                           ; $4461: $98
	adc  b                                           ; $4462: $88
	adc  b                                           ; $4463: $88
	adc  b                                           ; $4464: $88
	adc  b                                           ; $4465: $88
	adc  b                                           ; $4466: $88
	adc  b                                           ; $4467: $88
	sbc  b                                           ; $4468: $98
	adc  b                                           ; $4469: $88
	ld   [hl], a                                     ; $446a: $77
	ld   [hl], a                                     ; $446b: $77
	adc  b                                           ; $446c: $88
	adc  b                                           ; $446d: $88
	adc  b                                           ; $446e: $88
	adc  b                                           ; $446f: $88
	adc  b                                           ; $4470: $88
	adc  b                                           ; $4471: $88
	adc  b                                           ; $4472: $88
	adc  b                                           ; $4473: $88
	adc  b                                           ; $4474: $88
	adc  b                                           ; $4475: $88
	adc  b                                           ; $4476: $88
	sbc  c                                           ; $4477: $99
	adc  b                                           ; $4478: $88
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
	adc  b                                           ; $4483: $88
	adc  b                                           ; $4484: $88
	adc  b                                           ; $4485: $88
	adc  b                                           ; $4486: $88
	adc  b                                           ; $4487: $88
	adc  b                                           ; $4488: $88
	adc  b                                           ; $4489: $88
	adc  b                                           ; $448a: $88
	adc  b                                           ; $448b: $88
	adc  b                                           ; $448c: $88
	adc  b                                           ; $448d: $88
	adc  b                                           ; $448e: $88
	adc  b                                           ; $448f: $88
	adc  b                                           ; $4490: $88
	adc  b                                           ; $4491: $88
	adc  b                                           ; $4492: $88
	adc  b                                           ; $4493: $88
	adc  b                                           ; $4494: $88
	adc  b                                           ; $4495: $88
	adc  b                                           ; $4496: $88
	adc  b                                           ; $4497: $88
	adc  b                                           ; $4498: $88
	adc  b                                           ; $4499: $88
	adc  b                                           ; $449a: $88
	adc  b                                           ; $449b: $88
	adc  b                                           ; $449c: $88
	adc  b                                           ; $449d: $88
	adc  b                                           ; $449e: $88
	adc  b                                           ; $449f: $88
	adc  b                                           ; $44a0: $88
	adc  b                                           ; $44a1: $88
	adc  b                                           ; $44a2: $88
	adc  b                                           ; $44a3: $88
	adc  b                                           ; $44a4: $88
	adc  b                                           ; $44a5: $88
	adc  b                                           ; $44a6: $88
	adc  b                                           ; $44a7: $88
	adc  b                                           ; $44a8: $88
	adc  b                                           ; $44a9: $88
	adc  b                                           ; $44aa: $88
	adc  b                                           ; $44ab: $88
	adc  b                                           ; $44ac: $88
	adc  b                                           ; $44ad: $88
	adc  b                                           ; $44ae: $88
	adc  b                                           ; $44af: $88
	adc  b                                           ; $44b0: $88
	adc  b                                           ; $44b1: $88
	adc  b                                           ; $44b2: $88
	adc  b                                           ; $44b3: $88
	adc  b                                           ; $44b4: $88
	adc  b                                           ; $44b5: $88
	adc  b                                           ; $44b6: $88
	adc  b                                           ; $44b7: $88
	adc  b                                           ; $44b8: $88
	adc  b                                           ; $44b9: $88
	adc  b                                           ; $44ba: $88
	adc  b                                           ; $44bb: $88
	adc  b                                           ; $44bc: $88
	adc  b                                           ; $44bd: $88
	adc  b                                           ; $44be: $88
	adc  b                                           ; $44bf: $88
	adc  b                                           ; $44c0: $88
	adc  b                                           ; $44c1: $88
	adc  b                                           ; $44c2: $88
	adc  b                                           ; $44c3: $88
	adc  b                                           ; $44c4: $88
	adc  b                                           ; $44c5: $88
	adc  b                                           ; $44c6: $88
	adc  b                                           ; $44c7: $88
	adc  b                                           ; $44c8: $88
	adc  b                                           ; $44c9: $88
	adc  b                                           ; $44ca: $88
	adc  b                                           ; $44cb: $88
	adc  b                                           ; $44cc: $88
	adc  b                                           ; $44cd: $88
	adc  b                                           ; $44ce: $88
	adc  b                                           ; $44cf: $88
	adc  b                                           ; $44d0: $88
	adc  b                                           ; $44d1: $88
	adc  b                                           ; $44d2: $88
	adc  b                                           ; $44d3: $88
	adc  b                                           ; $44d4: $88
	adc  b                                           ; $44d5: $88
	adc  b                                           ; $44d6: $88
	adc  b                                           ; $44d7: $88
	adc  b                                           ; $44d8: $88
	adc  b                                           ; $44d9: $88
	adc  b                                           ; $44da: $88
	adc  b                                           ; $44db: $88
	adc  b                                           ; $44dc: $88
	adc  b                                           ; $44dd: $88
	adc  b                                           ; $44de: $88
	adc  b                                           ; $44df: $88
	adc  b                                           ; $44e0: $88
	adc  b                                           ; $44e1: $88
	adc  b                                           ; $44e2: $88
	adc  b                                           ; $44e3: $88
	adc  b                                           ; $44e4: $88
	adc  b                                           ; $44e5: $88
	adc  b                                           ; $44e6: $88
	adc  b                                           ; $44e7: $88
	adc  b                                           ; $44e8: $88
	adc  b                                           ; $44e9: $88
	adc  b                                           ; $44ea: $88
	adc  b                                           ; $44eb: $88
	adc  b                                           ; $44ec: $88
	adc  b                                           ; $44ed: $88
	adc  b                                           ; $44ee: $88
	adc  b                                           ; $44ef: $88
	adc  b                                           ; $44f0: $88
	adc  b                                           ; $44f1: $88
	adc  b                                           ; $44f2: $88
	adc  b                                           ; $44f3: $88
	adc  b                                           ; $44f4: $88
	adc  b                                           ; $44f5: $88
	adc  b                                           ; $44f6: $88
	adc  b                                           ; $44f7: $88
	adc  b                                           ; $44f8: $88
	adc  b                                           ; $44f9: $88
	adc  b                                           ; $44fa: $88
	adc  b                                           ; $44fb: $88
	adc  b                                           ; $44fc: $88
	adc  b                                           ; $44fd: $88
	adc  b                                           ; $44fe: $88
	adc  b                                           ; $44ff: $88
	adc  b                                           ; $4500: $88
	adc  b                                           ; $4501: $88
	adc  b                                           ; $4502: $88
	adc  b                                           ; $4503: $88
	adc  b                                           ; $4504: $88
	adc  b                                           ; $4505: $88
	adc  b                                           ; $4506: $88
	adc  b                                           ; $4507: $88
	adc  b                                           ; $4508: $88
	adc  b                                           ; $4509: $88
	adc  b                                           ; $450a: $88
	adc  b                                           ; $450b: $88
	adc  b                                           ; $450c: $88
	adc  b                                           ; $450d: $88
	adc  b                                           ; $450e: $88
	adc  b                                           ; $450f: $88
	adc  b                                           ; $4510: $88
	adc  b                                           ; $4511: $88
	adc  b                                           ; $4512: $88
	adc  b                                           ; $4513: $88
	adc  b                                           ; $4514: $88
	adc  b                                           ; $4515: $88
	adc  b                                           ; $4516: $88
	adc  b                                           ; $4517: $88
	adc  b                                           ; $4518: $88
	adc  b                                           ; $4519: $88
	adc  b                                           ; $451a: $88
	adc  b                                           ; $451b: $88
	adc  b                                           ; $451c: $88
	adc  b                                           ; $451d: $88
	adc  b                                           ; $451e: $88
	adc  b                                           ; $451f: $88
	adc  b                                           ; $4520: $88
	adc  b                                           ; $4521: $88
	adc  b                                           ; $4522: $88
	adc  b                                           ; $4523: $88
	adc  b                                           ; $4524: $88
	adc  b                                           ; $4525: $88
	adc  b                                           ; $4526: $88
	adc  b                                           ; $4527: $88
	adc  b                                           ; $4528: $88
	adc  b                                           ; $4529: $88
	adc  b                                           ; $452a: $88
	adc  b                                           ; $452b: $88
	adc  b                                           ; $452c: $88
	adc  b                                           ; $452d: $88
	adc  b                                           ; $452e: $88
	adc  b                                           ; $452f: $88
	adc  b                                           ; $4530: $88
	adc  b                                           ; $4531: $88
	adc  b                                           ; $4532: $88
	adc  b                                           ; $4533: $88
	adc  b                                           ; $4534: $88
	adc  b                                           ; $4535: $88
	adc  b                                           ; $4536: $88
	adc  b                                           ; $4537: $88
	adc  b                                           ; $4538: $88
	adc  b                                           ; $4539: $88
	adc  b                                           ; $453a: $88
	adc  b                                           ; $453b: $88
	adc  b                                           ; $453c: $88
	adc  b                                           ; $453d: $88
	adc  b                                           ; $453e: $88
	adc  b                                           ; $453f: $88
	adc  b                                           ; $4540: $88
	adc  b                                           ; $4541: $88
	adc  b                                           ; $4542: $88
	adc  b                                           ; $4543: $88
	adc  b                                           ; $4544: $88
	adc  b                                           ; $4545: $88
	adc  b                                           ; $4546: $88
	adc  b                                           ; $4547: $88
	adc  b                                           ; $4548: $88
	adc  b                                           ; $4549: $88
	adc  b                                           ; $454a: $88
	adc  b                                           ; $454b: $88
	adc  b                                           ; $454c: $88
	adc  b                                           ; $454d: $88
	adc  b                                           ; $454e: $88
	adc  b                                           ; $454f: $88
	adc  b                                           ; $4550: $88
	adc  b                                           ; $4551: $88
	adc  b                                           ; $4552: $88
	adc  b                                           ; $4553: $88
	adc  b                                           ; $4554: $88
	adc  b                                           ; $4555: $88
	adc  b                                           ; $4556: $88
	adc  b                                           ; $4557: $88
	adc  b                                           ; $4558: $88
	adc  b                                           ; $4559: $88
	adc  b                                           ; $455a: $88
	adc  b                                           ; $455b: $88
	adc  b                                           ; $455c: $88
	adc  b                                           ; $455d: $88
	adc  b                                           ; $455e: $88

Jump_0d5_455f:
	adc  b                                           ; $455f: $88
	adc  b                                           ; $4560: $88
	adc  b                                           ; $4561: $88
	adc  b                                           ; $4562: $88
	adc  b                                           ; $4563: $88
	adc  b                                           ; $4564: $88
	adc  b                                           ; $4565: $88
	adc  b                                           ; $4566: $88
	adc  b                                           ; $4567: $88
	adc  b                                           ; $4568: $88
	adc  b                                           ; $4569: $88
	adc  b                                           ; $456a: $88
	adc  b                                           ; $456b: $88
	adc  b                                           ; $456c: $88
	adc  b                                           ; $456d: $88
	adc  b                                           ; $456e: $88
	adc  b                                           ; $456f: $88
	adc  b                                           ; $4570: $88
	adc  b                                           ; $4571: $88
	adc  b                                           ; $4572: $88
	adc  b                                           ; $4573: $88
	adc  b                                           ; $4574: $88
	adc  b                                           ; $4575: $88
	adc  b                                           ; $4576: $88
	adc  b                                           ; $4577: $88
	adc  b                                           ; $4578: $88
	adc  b                                           ; $4579: $88
	adc  b                                           ; $457a: $88
	adc  b                                           ; $457b: $88
	adc  b                                           ; $457c: $88
	adc  b                                           ; $457d: $88
	adc  b                                           ; $457e: $88
	adc  b                                           ; $457f: $88
	adc  b                                           ; $4580: $88
	adc  b                                           ; $4581: $88
	adc  b                                           ; $4582: $88
	adc  b                                           ; $4583: $88
	adc  b                                           ; $4584: $88
	adc  b                                           ; $4585: $88
	add  a                                           ; $4586: $87
	adc  c                                           ; $4587: $89
	add  a                                           ; $4588: $87
	adc  b                                           ; $4589: $88
	sbc  b                                           ; $458a: $98
	adc  b                                           ; $458b: $88
	adc  b                                           ; $458c: $88
	adc  b                                           ; $458d: $88
	ld   a, b                                        ; $458e: $78
	sbc  b                                           ; $458f: $98
	ld   a, b                                        ; $4590: $78
	add  a                                           ; $4591: $87
	adc  c                                           ; $4592: $89
	adc  b                                           ; $4593: $88
	adc  b                                           ; $4594: $88
	add  a                                           ; $4595: $87
	adc  c                                           ; $4596: $89
	ld   a, c                                        ; $4597: $79
	adc  b                                           ; $4598: $88
	adc  b                                           ; $4599: $88
	adc  b                                           ; $459a: $88
	adc  b                                           ; $459b: $88
	adc  b                                           ; $459c: $88
	adc  b                                           ; $459d: $88
	ld   [hl], a                                     ; $459e: $77
	adc  c                                           ; $459f: $89
	ld   a, b                                        ; $45a0: $78
	sbc  b                                           ; $45a1: $98
	ld   a, b                                        ; $45a2: $78
	sbc  b                                           ; $45a3: $98
	ld   a, b                                        ; $45a4: $78
	add  a                                           ; $45a5: $87
	ld   a, b                                        ; $45a6: $78
	sbc  b                                           ; $45a7: $98
	adc  c                                           ; $45a8: $89
	sub  a                                           ; $45a9: $97
	ld   a, b                                        ; $45aa: $78
	sbc  c                                           ; $45ab: $99
	adc  b                                           ; $45ac: $88
	sub  a                                           ; $45ad: $97
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	ld   a, b                                        ; $45b0: $78
	sbc  c                                           ; $45b1: $99
	sub  a                                           ; $45b2: $97
	ld   a, b                                        ; $45b3: $78
	adc  b                                           ; $45b4: $88
	ld   a, b                                        ; $45b5: $78
	sbc  c                                           ; $45b6: $99
	add  a                                           ; $45b7: $87
	adc  b                                           ; $45b8: $88
	ld   [hl], a                                     ; $45b9: $77
	sbc  c                                           ; $45ba: $99
	add  a                                           ; $45bb: $87
	sbc  b                                           ; $45bc: $98
	add  a                                           ; $45bd: $87
	sbc  c                                           ; $45be: $99
	ld   a, b                                        ; $45bf: $78
	adc  b                                           ; $45c0: $88
	ld   a, c                                        ; $45c1: $79
	add  a                                           ; $45c2: $87
	sbc  b                                           ; $45c3: $98
	sbc  b                                           ; $45c4: $98
	adc  b                                           ; $45c5: $88
	ld   a, c                                        ; $45c6: $79
	sbc  b                                           ; $45c7: $98
	adc  b                                           ; $45c8: $88
	sub  a                                           ; $45c9: $97
	adc  b                                           ; $45ca: $88
	adc  b                                           ; $45cb: $88
	adc  b                                           ; $45cc: $88
	adc  b                                           ; $45cd: $88
	ld   a, b                                        ; $45ce: $78
	adc  b                                           ; $45cf: $88
	add  a                                           ; $45d0: $87
	adc  c                                           ; $45d1: $89
	ld   [hl], a                                     ; $45d2: $77
	adc  b                                           ; $45d3: $88
	adc  c                                           ; $45d4: $89
	adc  b                                           ; $45d5: $88
	ld   a, c                                        ; $45d6: $79
	adc  c                                           ; $45d7: $89
	adc  b                                           ; $45d8: $88
	sbc  b                                           ; $45d9: $98
	adc  b                                           ; $45da: $88
	adc  b                                           ; $45db: $88
	add  a                                           ; $45dc: $87
	sbc  c                                           ; $45dd: $99
	ld   a, c                                        ; $45de: $79
	sbc  b                                           ; $45df: $98
	adc  b                                           ; $45e0: $88
	adc  b                                           ; $45e1: $88
	adc  b                                           ; $45e2: $88
	adc  c                                           ; $45e3: $89
	adc  b                                           ; $45e4: $88
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	adc  b                                           ; $45e7: $88
	adc  b                                           ; $45e8: $88
	adc  b                                           ; $45e9: $88
	adc  c                                           ; $45ea: $89
	sub  a                                           ; $45eb: $97
	add  a                                           ; $45ec: $87
	ld   a, b                                        ; $45ed: $78
	adc  b                                           ; $45ee: $88
	add  a                                           ; $45ef: $87
	adc  b                                           ; $45f0: $88
	adc  c                                           ; $45f1: $89
	add  [hl]                                        ; $45f2: $86
	adc  d                                           ; $45f3: $8a
	adc  b                                           ; $45f4: $88
	adc  b                                           ; $45f5: $88
	add  a                                           ; $45f6: $87
	adc  c                                           ; $45f7: $89
	sub  a                                           ; $45f8: $97
	ld   a, b                                        ; $45f9: $78
	add  a                                           ; $45fa: $87
	ld   a, d                                        ; $45fb: $7a
	add  [hl]                                        ; $45fc: $86
	adc  b                                           ; $45fd: $88
	adc  c                                           ; $45fe: $89
	ld   a, b                                        ; $45ff: $78
	sbc  b                                           ; $4600: $98
	adc  b                                           ; $4601: $88
	ld   a, c                                        ; $4602: $79
	sbc  b                                           ; $4603: $98
	adc  c                                           ; $4604: $89
	adc  b                                           ; $4605: $88
	add  a                                           ; $4606: $87
	ld   a, b                                        ; $4607: $78
	add  a                                           ; $4608: $87
	adc  b                                           ; $4609: $88
	ld   a, b                                        ; $460a: $78
	sbc  b                                           ; $460b: $98
	adc  b                                           ; $460c: $88
	adc  b                                           ; $460d: $88
	adc  b                                           ; $460e: $88
	ld   a, c                                        ; $460f: $79
	sbc  b                                           ; $4610: $98
	ld   [hl], a                                     ; $4611: $77
	adc  b                                           ; $4612: $88
	adc  b                                           ; $4613: $88
	ld   a, c                                        ; $4614: $79
	add  a                                           ; $4615: $87
	ld   a, b                                        ; $4616: $78
	adc  c                                           ; $4617: $89
	sbc  b                                           ; $4618: $98
	ld   [hl], a                                     ; $4619: $77
	ld   a, c                                        ; $461a: $79
	add  a                                           ; $461b: $87
	ld   a, b                                        ; $461c: $78
	sub  a                                           ; $461d: $97
	ld   [hl], a                                     ; $461e: $77
	adc  c                                           ; $461f: $89
	adc  b                                           ; $4620: $88
	adc  b                                           ; $4621: $88
	add  a                                           ; $4622: $87
	adc  c                                           ; $4623: $89
	ld   [hl], a                                     ; $4624: $77
	adc  b                                           ; $4625: $88
	adc  b                                           ; $4626: $88
	adc  b                                           ; $4627: $88
	adc  b                                           ; $4628: $88
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	adc  c                                           ; $462b: $89
	add  a                                           ; $462c: $87
	ld   [hl], a                                     ; $462d: $77
	adc  b                                           ; $462e: $88
	adc  b                                           ; $462f: $88
	add  a                                           ; $4630: $87
	ld   [hl], a                                     ; $4631: $77
	adc  c                                           ; $4632: $89
	ld   a, b                                        ; $4633: $78
	sbc  b                                           ; $4634: $98
	adc  b                                           ; $4635: $88
	add  a                                           ; $4636: $87
	adc  b                                           ; $4637: $88
	sub  a                                           ; $4638: $97
	adc  c                                           ; $4639: $89
	ld   [hl], a                                     ; $463a: $77
	add  a                                           ; $463b: $87
	ld   a, c                                        ; $463c: $79
	adc  b                                           ; $463d: $88
	adc  b                                           ; $463e: $88
	adc  c                                           ; $463f: $89
	sbc  b                                           ; $4640: $98
	ld   a, c                                        ; $4641: $79
	sbc  b                                           ; $4642: $98
	ld   [hl], a                                     ; $4643: $77
	ld   a, b                                        ; $4644: $78
	add  a                                           ; $4645: $87
	ld   h, a                                        ; $4646: $67
	adc  b                                           ; $4647: $88
	ld   [hl], a                                     ; $4648: $77
	adc  b                                           ; $4649: $88
	adc  c                                           ; $464a: $89
	add  a                                           ; $464b: $87
	adc  b                                           ; $464c: $88
	adc  b                                           ; $464d: $88
	halt                                             ; $464e: $76
	ld   a, c                                        ; $464f: $79
	ld   [hl], a                                     ; $4650: $77
	sbc  b                                           ; $4651: $98
	ld   [hl], a                                     ; $4652: $77
	adc  c                                           ; $4653: $89
	add  a                                           ; $4654: $87
	ld   a, b                                        ; $4655: $78
	sbc  b                                           ; $4656: $98
	adc  b                                           ; $4657: $88
	adc  b                                           ; $4658: $88
	add  a                                           ; $4659: $87
	ld   a, b                                        ; $465a: $78
	sbc  c                                           ; $465b: $99
	adc  b                                           ; $465c: $88
	ld   a, b                                        ; $465d: $78
	sbc  b                                           ; $465e: $98
	adc  b                                           ; $465f: $88
	add  a                                           ; $4660: $87
	ld   a, b                                        ; $4661: $78
	sbc  b                                           ; $4662: $98
	adc  c                                           ; $4663: $89
	adc  b                                           ; $4664: $88
	adc  b                                           ; $4665: $88
	adc  b                                           ; $4666: $88
	sbc  c                                           ; $4667: $99
	adc  b                                           ; $4668: $88
	sbc  b                                           ; $4669: $98
	adc  b                                           ; $466a: $88
	adc  b                                           ; $466b: $88
	sbc  b                                           ; $466c: $98
	adc  c                                           ; $466d: $89
	adc  b                                           ; $466e: $88
	adc  b                                           ; $466f: $88
	adc  b                                           ; $4670: $88
	sbc  c                                           ; $4671: $99
	sbc  c                                           ; $4672: $99
	adc  b                                           ; $4673: $88
	adc  b                                           ; $4674: $88
	adc  b                                           ; $4675: $88
	adc  b                                           ; $4676: $88
	adc  b                                           ; $4677: $88
	adc  b                                           ; $4678: $88
	adc  b                                           ; $4679: $88
	adc  b                                           ; $467a: $88
	adc  b                                           ; $467b: $88
	adc  b                                           ; $467c: $88
	adc  b                                           ; $467d: $88
	adc  b                                           ; $467e: $88
	adc  b                                           ; $467f: $88
	adc  b                                           ; $4680: $88
	adc  b                                           ; $4681: $88
	adc  b                                           ; $4682: $88
	adc  b                                           ; $4683: $88
	adc  b                                           ; $4684: $88
	adc  b                                           ; $4685: $88
	adc  b                                           ; $4686: $88
	adc  b                                           ; $4687: $88
	adc  b                                           ; $4688: $88
	adc  b                                           ; $4689: $88
	adc  b                                           ; $468a: $88
	adc  b                                           ; $468b: $88
	adc  b                                           ; $468c: $88
	adc  b                                           ; $468d: $88
	adc  b                                           ; $468e: $88
	adc  b                                           ; $468f: $88
	adc  b                                           ; $4690: $88
	adc  b                                           ; $4691: $88
	adc  b                                           ; $4692: $88
	adc  b                                           ; $4693: $88
	adc  b                                           ; $4694: $88
	adc  b                                           ; $4695: $88
	adc  b                                           ; $4696: $88
	adc  b                                           ; $4697: $88
	adc  b                                           ; $4698: $88
	adc  b                                           ; $4699: $88
	adc  b                                           ; $469a: $88
	adc  b                                           ; $469b: $88
	adc  b                                           ; $469c: $88
	adc  b                                           ; $469d: $88
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	adc  b                                           ; $46a1: $88
	adc  b                                           ; $46a2: $88
	adc  b                                           ; $46a3: $88
	adc  b                                           ; $46a4: $88
	adc  b                                           ; $46a5: $88
	adc  b                                           ; $46a6: $88
	adc  b                                           ; $46a7: $88
	adc  b                                           ; $46a8: $88
	adc  b                                           ; $46a9: $88
	adc  b                                           ; $46aa: $88
	adc  b                                           ; $46ab: $88
	adc  b                                           ; $46ac: $88
	adc  b                                           ; $46ad: $88
	adc  b                                           ; $46ae: $88
	adc  b                                           ; $46af: $88
	adc  b                                           ; $46b0: $88
	adc  b                                           ; $46b1: $88
	adc  b                                           ; $46b2: $88
	adc  b                                           ; $46b3: $88
	adc  b                                           ; $46b4: $88
	adc  b                                           ; $46b5: $88
	adc  b                                           ; $46b6: $88
	adc  b                                           ; $46b7: $88
	adc  b                                           ; $46b8: $88
	adc  b                                           ; $46b9: $88
	adc  b                                           ; $46ba: $88
	adc  b                                           ; $46bb: $88
	adc  b                                           ; $46bc: $88
	adc  b                                           ; $46bd: $88
	adc  b                                           ; $46be: $88
	adc  b                                           ; $46bf: $88
	adc  b                                           ; $46c0: $88
	adc  b                                           ; $46c1: $88
	adc  b                                           ; $46c2: $88
	adc  b                                           ; $46c3: $88
	adc  b                                           ; $46c4: $88
	adc  b                                           ; $46c5: $88
	adc  b                                           ; $46c6: $88

Call_0d5_46c7:
	adc  b                                           ; $46c7: $88
	adc  b                                           ; $46c8: $88
	adc  b                                           ; $46c9: $88
	adc  b                                           ; $46ca: $88
	adc  b                                           ; $46cb: $88
	adc  b                                           ; $46cc: $88
	adc  b                                           ; $46cd: $88
	adc  b                                           ; $46ce: $88
	adc  b                                           ; $46cf: $88
	adc  b                                           ; $46d0: $88
	adc  b                                           ; $46d1: $88
	adc  b                                           ; $46d2: $88
	adc  b                                           ; $46d3: $88
	adc  b                                           ; $46d4: $88
	adc  b                                           ; $46d5: $88
	adc  b                                           ; $46d6: $88
	adc  b                                           ; $46d7: $88
	adc  b                                           ; $46d8: $88
	adc  b                                           ; $46d9: $88
	adc  b                                           ; $46da: $88
	adc  b                                           ; $46db: $88
	adc  b                                           ; $46dc: $88
	adc  b                                           ; $46dd: $88
	adc  b                                           ; $46de: $88
	adc  b                                           ; $46df: $88
	adc  b                                           ; $46e0: $88
	adc  b                                           ; $46e1: $88
	adc  b                                           ; $46e2: $88
	adc  b                                           ; $46e3: $88
	adc  b                                           ; $46e4: $88
	adc  b                                           ; $46e5: $88
	adc  b                                           ; $46e6: $88
	adc  b                                           ; $46e7: $88
	adc  b                                           ; $46e8: $88
	adc  b                                           ; $46e9: $88
	adc  b                                           ; $46ea: $88
	adc  b                                           ; $46eb: $88
	adc  b                                           ; $46ec: $88
	adc  b                                           ; $46ed: $88
	adc  b                                           ; $46ee: $88
	adc  b                                           ; $46ef: $88
	adc  b                                           ; $46f0: $88
	adc  b                                           ; $46f1: $88
	adc  b                                           ; $46f2: $88
	adc  b                                           ; $46f3: $88
	adc  b                                           ; $46f4: $88
	adc  b                                           ; $46f5: $88
	adc  b                                           ; $46f6: $88
	adc  b                                           ; $46f7: $88
	adc  b                                           ; $46f8: $88
	adc  b                                           ; $46f9: $88
	adc  b                                           ; $46fa: $88
	adc  b                                           ; $46fb: $88
	adc  b                                           ; $46fc: $88
	adc  b                                           ; $46fd: $88
	adc  b                                           ; $46fe: $88
	adc  b                                           ; $46ff: $88
	adc  b                                           ; $4700: $88
	adc  b                                           ; $4701: $88
	adc  b                                           ; $4702: $88
	adc  b                                           ; $4703: $88
	adc  b                                           ; $4704: $88
	adc  b                                           ; $4705: $88
	adc  b                                           ; $4706: $88
	adc  b                                           ; $4707: $88
	adc  b                                           ; $4708: $88
	adc  b                                           ; $4709: $88
	adc  b                                           ; $470a: $88
	adc  b                                           ; $470b: $88
	adc  b                                           ; $470c: $88
	adc  b                                           ; $470d: $88
	adc  b                                           ; $470e: $88
	adc  b                                           ; $470f: $88
	adc  b                                           ; $4710: $88
	adc  b                                           ; $4711: $88
	adc  b                                           ; $4712: $88
	adc  b                                           ; $4713: $88
	adc  b                                           ; $4714: $88
	adc  b                                           ; $4715: $88
	adc  b                                           ; $4716: $88
	adc  b                                           ; $4717: $88
	adc  b                                           ; $4718: $88
	adc  b                                           ; $4719: $88
	adc  b                                           ; $471a: $88
	adc  b                                           ; $471b: $88
	adc  b                                           ; $471c: $88
	adc  b                                           ; $471d: $88
	adc  b                                           ; $471e: $88
	adc  b                                           ; $471f: $88
	adc  b                                           ; $4720: $88
	adc  b                                           ; $4721: $88
	adc  b                                           ; $4722: $88
	adc  b                                           ; $4723: $88
	adc  b                                           ; $4724: $88
	adc  b                                           ; $4725: $88
	adc  b                                           ; $4726: $88
	adc  b                                           ; $4727: $88
	adc  b                                           ; $4728: $88
	adc  b                                           ; $4729: $88
	adc  b                                           ; $472a: $88
	adc  b                                           ; $472b: $88
	adc  b                                           ; $472c: $88
	adc  b                                           ; $472d: $88
	adc  b                                           ; $472e: $88
	adc  b                                           ; $472f: $88
	adc  b                                           ; $4730: $88
	adc  b                                           ; $4731: $88
	adc  b                                           ; $4732: $88
	adc  b                                           ; $4733: $88
	adc  b                                           ; $4734: $88
	adc  b                                           ; $4735: $88
	sbc  b                                           ; $4736: $98
	adc  b                                           ; $4737: $88
	adc  b                                           ; $4738: $88
	add  a                                           ; $4739: $87
	adc  b                                           ; $473a: $88
	sbc  b                                           ; $473b: $98
	adc  b                                           ; $473c: $88
	sbc  b                                           ; $473d: $98
	adc  b                                           ; $473e: $88
	adc  b                                           ; $473f: $88
	adc  b                                           ; $4740: $88
	adc  b                                           ; $4741: $88
	adc  b                                           ; $4742: $88
	adc  b                                           ; $4743: $88
	adc  b                                           ; $4744: $88
	adc  b                                           ; $4745: $88
	adc  b                                           ; $4746: $88
	adc  b                                           ; $4747: $88
	adc  c                                           ; $4748: $89
	adc  b                                           ; $4749: $88
	ld   [hl], a                                     ; $474a: $77
	sbc  b                                           ; $474b: $98
	adc  b                                           ; $474c: $88
	sbc  b                                           ; $474d: $98
	add  a                                           ; $474e: $87
	adc  b                                           ; $474f: $88
	adc  b                                           ; $4750: $88
	adc  c                                           ; $4751: $89
	add  a                                           ; $4752: $87
	adc  b                                           ; $4753: $88
	sbc  b                                           ; $4754: $98
	adc  b                                           ; $4755: $88
	ld   [hl], a                                     ; $4756: $77
	ld   [hl], a                                     ; $4757: $77
	ld   [hl], a                                     ; $4758: $77
	ld   [hl], a                                     ; $4759: $77
	ld   a, b                                        ; $475a: $78
	sub  a                                           ; $475b: $97
	ld   a, b                                        ; $475c: $78
	sbc  c                                           ; $475d: $99
	sbc  c                                           ; $475e: $99
	cp   d                                           ; $475f: $ba
	xor  c                                           ; $4760: $a9
	sbc  c                                           ; $4761: $99
	adc  b                                           ; $4762: $88
	ld   [hl], a                                     ; $4763: $77
	ld   h, h                                        ; $4764: $64
	ld   hl, $2668                                   ; $4765: $21 $68 $26
	sbc  d                                           ; $4768: $9a
	sbc  c                                           ; $4769: $99
	call $cac9                                       ; $476a: $cd $c9 $ca
	xor  d                                           ; $476d: $aa
	adc  c                                           ; $476e: $89
	and  [hl]                                        ; $476f: $a6
	ld   a, d                                        ; $4770: $7a
	ld   a, b                                        ; $4771: $78
	ld   h, h                                        ; $4772: $64
	ld   h, h                                        ; $4773: $64
	ld   de, $5665                                   ; $4774: $11 $65 $56
	adc  e                                           ; $4777: $8b
	cp   e                                           ; $4778: $bb
	sbc  $cc                                         ; $4779: $de $cc
	cp   e                                           ; $477b: $bb
	ret  z                                           ; $477c: $c8

	sbc  e                                           ; $477d: $9b
	xor  d                                           ; $477e: $aa
	xor  d                                           ; $477f: $aa
	and  [hl]                                        ; $4780: $a6
	ld   de, $1b11                                   ; $4781: $11 $11 $1b
	ld   d, c                                        ; $4784: $51
	adc  $fd                                         ; $4785: $ce $fd
	rst  JumpTable                                         ; $4787: $df
	ei                                               ; $4788: $fb
	sbc  e                                           ; $4789: $9b
	ld   l, e                                        ; $478a: $6b
	ld   d, h                                        ; $478b: $54
	cp   d                                           ; $478c: $ba
	xor  l                                           ; $478d: $ad
	res  0, c                                        ; $478e: $cb $81
	ld   de, $b111                                   ; $4790: $11 $11 $b1
	ld   e, $ff                                      ; $4793: $1e $ff
	rst  $38                                         ; $4795: $ff
	rst  $38                                         ; $4796: $ff
	sbc  d                                           ; $4797: $9a
	add  a                                           ; $4798: $87
	call nz, $ce5c                                   ; $4799: $c4 $5c $ce
	ld   a, [$1172]                                  ; $479c: $fa $72 $11
	ld   de, $1a6d                                   ; $479f: $11 $6d $1a
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	rst  $38                                         ; $47a4: $ff
	pop  de                                          ; $47a5: $d1
	ld   b, e                                        ; $47a6: $43
	sbc  c                                           ; $47a7: $99
	ld   e, h                                        ; $47a8: $5c
	rst  $38                                         ; $47a9: $ff
	db   $fd                                         ; $47aa: $fd
	ld   b, h                                        ; $47ab: $44
	ld   de, $1f11                                   ; $47ac: $11 $11 $1f
	pop  hl                                          ; $47af: $e1
	rst  $38                                         ; $47b0: $ff
	rst  $38                                         ; $47b1: $ff
	call c, $11d1                                    ; $47b2: $dc $d1 $11
	ld   e, a                                        ; $47b5: $5f
	adc  l                                           ; $47b6: $8d
	rst  $38                                         ; $47b7: $ff
	ei                                               ; $47b8: $fb
	ld   hl, $1131                                   ; $47b9: $21 $31 $11
	inc  de                                          ; $47bc: $13
	di                                               ; $47bd: $f3
	ccf                                              ; $47be: $3f
	rst  $38                                         ; $47bf: $ff
	ld   d, d                                        ; $47c0: $52
	daa                                              ; $47c1: $27
	ld   de, $fc3f                                   ; $47c2: $11 $3f $fc
	rst  $38                                         ; $47c5: $ff
	db   $e4                                         ; $47c6: $e4
	ld   de, $1167                                   ; $47c7: $11 $67 $11
	ld   de, $1fff                                   ; $47ca: $11 $ff $1f
	rst  $38                                         ; $47cd: $ff
	ld   de, $8114                                   ; $47ce: $11 $14 $81
	cpl                                              ; $47d1: $2f
	rst  $38                                         ; $47d2: $ff
	rst  $38                                         ; $47d3: $ff
	ld   h, c                                        ; $47d4: $61
	ld   de, $112f                                   ; $47d5: $11 $2f $11
	ld   de, $1fff                                   ; $47d8: $11 $ff $1f
	rst  $38                                         ; $47db: $ff
	ld   de, $f113                                   ; $47dc: $11 $13 $f1
	ld   l, a                                        ; $47df: $6f
	rst  $38                                         ; $47e0: $ff
	xor  a                                           ; $47e1: $af
	ld   de, $df11                                   ; $47e2: $11 $11 $df
	ld   de, $f11d                                   ; $47e5: $11 $1d $f1
	rra                                              ; $47e8: $1f
	rst  $30                                         ; $47e9: $f7
	ld   de, $811f                                   ; $47ea: $11 $1f $81
	rst  $38                                         ; $47ed: $ff
	rst  $30                                         ; $47ee: $f7
	ld   h, c                                        ; $47ef: $61
	ld   de, $fb18                                   ; $47f0: $11 $18 $fb
	ld   de, $513f                                   ; $47f3: $11 $3f $51
	rst  $38                                         ; $47f6: $ff
	pop  bc                                          ; $47f7: $c1
	ld   de, $1fff                                   ; $47f8: $11 $ff $1f
	rst  $38                                         ; $47fb: $ff
	ld   [hl], d                                     ; $47fc: $72
	ld   de, $9f41                                   ; $47fd: $11 $41 $9f
	and  c                                           ; $4800: $a1
	rra                                              ; $4801: $1f
	pop  af                                          ; $4802: $f1
	rra                                              ; $4803: $1f
	di                                               ; $4804: $f3
	ld   de, $d11f                                   ; $4805: $11 $1f $d1
	rst  $38                                         ; $4808: $ff
	ldh  a, [c]                                      ; $4809: $f2
	ld   de, $2f24                                   ; $480a: $11 $24 $2f
	pop  af                                          ; $480d: $f1
	ld   de, $1bff                                   ; $480e: $11 $ff $1b
	rst  $38                                         ; $4811: $ff
	ld   de, $f117                                   ; $4812: $11 $17 $f1
	cp   a                                           ; $4815: $bf
	rst  $38                                         ; $4816: $ff
	ld   de, $4718                                   ; $4817: $11 $18 $47
	rst  $38                                         ; $481a: $ff
	ld   de, $71ef                                   ; $481b: $11 $ef $71
	rst  $38                                         ; $481e: $ff
	add  c                                           ; $481f: $81
	ld   de, $1fff                                   ; $4820: $11 $ff $1f
	rst  $38                                         ; $4823: $ff
	ld   sp, $a414                                   ; $4824: $31 $14 $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4827: $cf
	ld   de, $f11f                                   ; $4828: $11 $1f $f1
	cp   a                                           ; $482b: $bf
	pop  af                                          ; $482c: $f1
	ld   de, $2c8f                                   ; $482d: $11 $8f $2c
	rst  $38                                         ; $4830: $ff
	pop  af                                          ; $4831: $f1
	ld   de, $7fa5                                   ; $4832: $11 $a5 $7f
	pop  bc                                          ; $4835: $c1
	rra                                              ; $4836: $1f
	ldh  a, [c]                                      ; $4837: $f2
	rra                                              ; $4838: $1f
	db   $f4                                         ; $4839: $f4
	ld   de, $f11f                                   ; $483a: $11 $1f $f1
	rst  $38                                         ; $483d: $ff
	pop  af                                          ; $483e: $f1
	ld   de, $4d78                                   ; $483f: $11 $78 $4d
	pop  af                                          ; $4842: $f1
	ld   de, $1fff                                   ; $4843: $11 $ff $1f
	rst  $38                                         ; $4846: $ff
	ld   de, $f11f                                   ; $4847: $11 $1f $f1
	rst  $38                                         ; $484a: $ff
	ld   a, [$4a11]                                  ; $484b: $fa $11 $4a
	add  hl, sp                                      ; $484e: $39
	db   $f4                                         ; $484f: $f4
	ld   de, $13ff                                   ; $4850: $11 $ff $13
	rst  $38                                         ; $4853: $ff
	ld   de, $f41c                                   ; $4854: $11 $1c $f4
	adc  a                                           ; $4857: $8f
	rst  $38                                         ; $4858: $ff
	ld   de, $452a                                   ; $4859: $11 $2a $45
	ei                                               ; $485c: $fb
	ld   de, $11ff                                   ; $485d: $11 $ff $11
	rst  $38                                         ; $4860: $ff
	ld   de, $fb14                                   ; $4861: $11 $14 $fb
	ccf                                              ; $4864: $3f
	rst  $38                                         ; $4865: $ff
	ld   de, $5319                                   ; $4866: $11 $19 $53
	xor  $11                                         ; $4869: $ee $11
	rst  $38                                         ; $486b: $ff
	and  c                                           ; $486c: $a1
	rst  $38                                         ; $486d: $ff
	add  c                                           ; $486e: $81
	ld   de, $1fff                                   ; $486f: $11 $ff $1f
	rst  $38                                         ; $4872: $ff
	ld   de, $6219                                   ; $4873: $11 $19 $62
	cp   a                                           ; $4876: $bf
	ld   de, $f15f                                   ; $4877: $11 $5f $f1
	cp   a                                           ; $487a: $bf
	pop  hl                                          ; $487b: $e1
	ld   de, $1fff                                   ; $487c: $11 $ff $1f
	rst  $38                                         ; $487f: $ff
	ld   sp, $7117                                   ; $4880: $31 $17 $71
	adc  a                                           ; $4883: $8f
	ld   de, $f11f                                   ; $4884: $11 $1f $f1
	adc  a                                           ; $4887: $8f
	pop  af                                          ; $4888: $f1
	ld   de, $1eff                                   ; $4889: $11 $ff $1e
	rst  $38                                         ; $488c: $ff
	add  c                                           ; $488d: $81
	ld   d, $71                                      ; $488e: $16 $71
	ld   e, a                                        ; $4890: $5f
	ld   sp, $f11f                                   ; $4891: $31 $1f $f1
	ld   c, a                                        ; $4894: $4f
	pop  af                                          ; $4895: $f1
	ld   de, $2dff                                   ; $4896: $11 $ff $2d
	rst  $38                                         ; $4899: $ff
	pop  de                                          ; $489a: $d1
	inc  d                                           ; $489b: $14
	ld   [hl], d                                     ; $489c: $72
	ld   a, $61                                      ; $489d: $3e $61
	rra                                              ; $489f: $1f
	pop  af                                          ; $48a0: $f1
	ld   a, $f1                                      ; $48a1: $3e $f1
	ld   de, $59ff                                   ; $48a3: $11 $ff $59
	rst  $38                                         ; $48a6: $ff
	pop  af                                          ; $48a7: $f1
	inc  de                                          ; $48a8: $13
	ld   h, d                                        ; $48a9: $62
	ld   a, [de]                                     ; $48aa: $1a
	add  c                                           ; $48ab: $81
	rra                                              ; $48ac: $1f
	pop  af                                          ; $48ad: $f1
	dec  sp                                          ; $48ae: $3b
	di                                               ; $48af: $f3
	ld   de, $67df                                   ; $48b0: $11 $df $67
	rst  $38                                         ; $48b3: $ff
	pop  af                                          ; $48b4: $f1
	ld   [de], a                                     ; $48b5: $12
	ld   h, c                                        ; $48b6: $61
	jr   @-$4d                                       ; $48b7: $18 $b1

	rra                                              ; $48b9: $1f
	db   $f4                                         ; $48ba: $f4
	dec  sp                                          ; $48bb: $3b
	push af                                          ; $48bc: $f5
	ld   de, $74af                                   ; $48bd: $11 $af $74
	rst  $38                                         ; $48c0: $ff
	di                                               ; $48c1: $f3
	ld   de, $1352                                   ; $48c2: $11 $52 $13
	pop  de                                          ; $48c5: $d1
	rra                                              ; $48c6: $1f
	db   $fc                                         ; $48c7: $fc
	dec  hl                                          ; $48c8: $2b
	ei                                               ; $48c9: $fb
	ld   de, $a22f                                   ; $48ca: $11 $2f $a2
	rst  $38                                         ; $48cd: $ff
	ld   a, [$6111]                                  ; $48ce: $fa $11 $61
	ld   de, $1fa1                                   ; $48d1: $11 $a1 $1f
	rst  $38                                         ; $48d4: $ff
	adc  c                                           ; $48d5: $89
	cp   $11                                         ; $48d6: $fe $11
	rra                                              ; $48d8: $1f
	or   e                                           ; $48d9: $b3
	xor  a                                           ; $48da: $af
	rst  $38                                         ; $48db: $ff
	ld   d, c                                        ; $48dc: $51
	add  h                                           ; $48dd: $84
	ld   de, $1f41                                   ; $48de: $11 $41 $1f
	rst  $38                                         ; $48e1: $ff
	cp   [hl]                                        ; $48e2: $be
	rst  $38                                         ; $48e3: $ff
	ld   de, $721f                                   ; $48e4: $11 $1f $72
	ccf                                              ; $48e7: $3f
	rst  $38                                         ; $48e8: $ff
	rst  $10                                         ; $48e9: $d7
	xor  c                                           ; $48ea: $a9
	ld   de, $1b11                                   ; $48eb: $11 $11 $1b
	ei                                               ; $48ee: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ef: $cf
	rst  $38                                         ; $48f0: $ff
	add  c                                           ; $48f1: $81
	dec  sp                                          ; $48f2: $3b
	sub  c                                           ; $48f3: $91
	inc  a                                           ; $48f4: $3c
	rst  $38                                         ; $48f5: $ff
	cp   c                                           ; $48f6: $b9
	xor  e                                           ; $48f7: $ab
	ld   de, $7e11                                   ; $48f8: $11 $11 $7e
	ld   h, l                                        ; $48fb: $65
	sbc  c                                           ; $48fc: $99
	reti                                             ; $48fd: $d9


	ld   l, b                                        ; $48fe: $68
	cp   a                                           ; $48ff: $bf
	and  [hl]                                        ; $4900: $a6
	ld   a, l                                        ; $4901: $7d
	ei                                               ; $4902: $fb
	ld   [hl], a                                     ; $4903: $77
	swap c                                           ; $4904: $cb $31
	ld   de, $948f                                   ; $4906: $11 $8f $94
	ld   a, b                                        ; $4909: $78
	cp   d                                           ; $490a: $ba
	ld   h, h                                        ; $490b: $64
	sbc  l                                           ; $490c: $9d
	xor  b                                           ; $490d: $a8
	ld   c, b                                        ; $490e: $48
	db   $fd                                         ; $490f: $fd
	ld   [hl], l                                     ; $4910: $75
	cp   h                                           ; $4911: $bc
	add  [hl]                                        ; $4912: $86
	ld   a, c                                        ; $4913: $79
	xor  e                                           ; $4914: $ab
	sub  a                                           ; $4915: $97
	halt                                             ; $4916: $76
	ld   l, c                                        ; $4917: $69
	ld   [hl], l                                     ; $4918: $75
	ld   [hl], $87                                   ; $4919: $36 $87
	ld   h, [hl]                                     ; $491b: $66
	adc  d                                           ; $491c: $8a
	sbc  b                                           ; $491d: $98
	sbc  d                                           ; $491e: $9a
	sbc  c                                           ; $491f: $99
	sbc  e                                           ; $4920: $9b
	cp   e                                           ; $4921: $bb
	adc  c                                           ; $4922: $89
	sbc  c                                           ; $4923: $99
	sbc  c                                           ; $4924: $99
	adc  b                                           ; $4925: $88
	ld   d, [hl]                                     ; $4926: $56
	ld   [hl], a                                     ; $4927: $77
	ld   d, l                                        ; $4928: $55
	ld   h, [hl]                                     ; $4929: $66
	ld   h, [hl]                                     ; $492a: $66
	ld   l, b                                        ; $492b: $68
	ld   [hl], a                                     ; $492c: $77
	xor  l                                           ; $492d: $ad
	db   $eb                                         ; $492e: $eb
	xor  c                                           ; $492f: $a9
	cp   d                                           ; $4930: $ba
	ld   a, c                                        ; $4931: $79
	sub  a                                           ; $4932: $97
	ld   e, b                                        ; $4933: $58
	sub  [hl]                                        ; $4934: $96
	ld   d, l                                        ; $4935: $55
	ld   h, a                                        ; $4936: $67
	ld   h, e                                        ; $4937: $63
	scf                                              ; $4938: $37
	halt                                             ; $4939: $76
	ld   a, b                                        ; $493a: $78
	cp   h                                           ; $493b: $bc
	call c, $cced                                    ; $493c: $dc $ed $cc
	sbc  c                                           ; $493f: $99
	ld   [hl], l                                     ; $4940: $75
	ld   hl, $832b                                   ; $4941: $21 $2b $83
	ld   [hl+], a                                    ; $4944: $22
	adc  e                                           ; $4945: $8b
	sub  e                                           ; $4946: $93
	sbc  a                                           ; $4947: $9f
	db   $ed                                         ; $4948: $ed
	ld   l, b                                        ; $4949: $68
	rst  JumpTable                                         ; $494a: $df
	add  $8c                                         ; $494b: $c6 $8c
	rst  ToBoot                                         ; $494d: $c7
	ld   sp, $7911                                   ; $494e: $31 $11 $79
	ld   [de], a                                     ; $4951: $12
	ld   l, l                                        ; $4952: $6d
	rst  $10                                         ; $4953: $d7
	ld   l, l                                        ; $4954: $6d
	db   $fd                                         ; $4955: $fd
	ld   [hl], l                                     ; $4956: $75
	xor  a                                           ; $4957: $af
	or   [hl]                                        ; $4958: $b6
	ld   l, h                                        ; $4959: $6c
	ld   sp, hl                                      ; $495a: $f9
	ld   [hl-], a                                    ; $495b: $32
	ld   de, $721d                                   ; $495c: $11 $1d $72
	sbc  e                                           ; $495f: $9b
	db   $fd                                         ; $4960: $fd
	ld   a, b                                        ; $4961: $78
	rst  $38                                         ; $4962: $ff
	ld   a, d                                        ; $4963: $7a
	adc  h                                           ; $4964: $8c
	rst  ToBoot                                         ; $4965: $c7
	adc  b                                           ; $4966: $88
	cp   b                                           ; $4967: $b8
	ld   sp, $fc11                                   ; $4968: $31 $11 $fc
	ld   d, $cf                                      ; $496b: $16 $cf
	and  $4f                                         ; $496d: $e6 $4f
	rst  $30                                         ; $496f: $f7
	ld   h, a                                        ; $4970: $67
	rst  $28                                         ; $4971: $ef
	halt                                             ; $4972: $76
	sbc  l                                           ; $4973: $9d
	add  c                                           ; $4974: $81
	ld   de, $811f                                   ; $4975: $11 $1f $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4978: $cf
	db   $fc                                         ; $4979: $fc
	ld   d, a                                        ; $497a: $57
	rst  $38                                         ; $497b: $ff
	dec  d                                           ; $497c: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $497d: $cf
	and  l                                           ; $497e: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $497f: $cf
	jp   $1111                                       ; $4980: $c3 $11 $11


	di                                               ; $4983: $f3
	rra                                              ; $4984: $1f
	rst  $38                                         ; $4985: $ff
	adc  d                                           ; $4986: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4987: $cf
	add  c                                           ; $4988: $81
	cp   [hl]                                        ; $4989: $be
	push bc                                          ; $498a: $c5
	sbc  a                                           ; $498b: $9f
	rst  $10                                         ; $498c: $d7
	ld   hl, $3f11                                   ; $498d: $21 $11 $3f
	dec  d                                           ; $4990: $15
	rst  $38                                         ; $4991: $ff
	ld   a, [$f29d]                                  ; $4992: $fa $9d $f2
	inc  a                                           ; $4995: $3c
	jp   z, $fc6c                                    ; $4996: $ca $6c $fc

	ld   b, d                                        ; $4999: $42
	ld   de, $a11c                                   ; $499a: $11 $1c $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $499d: $cf
	ld   a, [$fb9a]                                  ; $499e: $fa $9a $fb
	ld   a, [de]                                     ; $49a1: $1a
	call z, $fd79                                    ; $49a2: $cc $79 $fd
	ld   [hl], d                                     ; $49a5: $72
	ld   de, $f114                                   ; $49a6: $11 $14 $f1
	ld   e, a                                        ; $49a9: $5f
	cp   $7a                                         ; $49aa: $fe $7a
	rst  $38                                         ; $49ac: $ff
	dec  d                                           ; $49ad: $15
	db   $fd                                         ; $49ae: $fd
	add  a                                           ; $49af: $87
	rst  $38                                         ; $49b0: $ff
	add  c                                           ; $49b1: $81
	ld   de, $f411                                   ; $49b2: $11 $11 $f4
	cpl                                              ; $49b5: $2f
	rst  $38                                         ; $49b6: $ff
	add  a                                           ; $49b7: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49b8: $cf
	ld   de, $a7dd                                   ; $49b9: $11 $dd $a7
	rst  $38                                         ; $49bc: $ff
	sub  d                                           ; $49bd: $92
	ld   de, $f611                                   ; $49be: $11 $11 $f6
	cpl                                              ; $49c1: $2f
	rst  $38                                         ; $49c2: $ff
	adc  b                                           ; $49c3: $88
	rst  JumpTable                                         ; $49c4: $df
	ld   de, $a8dc                                   ; $49c5: $11 $dc $a8
	rst  $38                                         ; $49c8: $ff
	add  c                                           ; $49c9: $81
	ld   de, $f511                                   ; $49ca: $11 $11 $f5
	ccf                                              ; $49cd: $3f
	rst  $38                                         ; $49ce: $ff
	adc  b                                           ; $49cf: $88
	adc  $13                                         ; $49d0: $ce $13
	db   $ec                                         ; $49d2: $ec
	xor  c                                           ; $49d3: $a9
	cp   $61                                         ; $49d4: $fe $61
	ld   de, $f117                                   ; $49d6: $11 $17 $f1
	xor  a                                           ; $49d9: $af
	db   $fc                                         ; $49da: $fc
	sbc  e                                           ; $49db: $9b
	add  sp, $18                                     ; $49dc: $e8 $18
	db   $ed                                         ; $49de: $ed
	sbc  h                                           ; $49df: $9c
	ei                                               ; $49e0: $fb
	ld   hl, $1f11                                   ; $49e1: $21 $11 $1f
	sub  c                                           ; $49e4: $91
	rst  $38                                         ; $49e5: $ff
	ld   a, [$f3ac]                                  ; $49e6: $fa $ac $f3
	dec  c                                           ; $49e9: $0d
	db   $ec                                         ; $49ea: $ec
	adc  a                                           ; $49eb: $8f
	push af                                          ; $49ec: $f5
	ld   de, $fd11                                   ; $49ed: $11 $11 $fd
	rra                                              ; $49f0: $1f
	rst  $38                                         ; $49f1: $ff
	sbc  h                                           ; $49f2: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49f3: $cf
	ld   h, c                                        ; $49f4: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49f5: $cf
	cp   b                                           ; $49f6: $b8
	rst  $38                                         ; $49f7: $ff
	ld   h, c                                        ; $49f8: $61
	ld   de, $e11d                                   ; $49f9: $11 $1d $e1
	rst  $38                                         ; $49fc: $ff
	ld   sp, hl                                      ; $49fd: $f9
	db   $db                                         ; $49fe: $db
	ld   hl, sp+$1c                                  ; $49ff: $f8 $1c
	db   $fc                                         ; $4a01: $fc
	ld   l, l                                        ; $4a02: $6d
	db   $f4                                         ; $4a03: $f4
	ld   de, $f611                                   ; $4a04: $11 $11 $f6
	rra                                              ; $4a07: $1f
	ei                                               ; $4a08: $fb
	adc  a                                           ; $4a09: $8f
	cp   a                                           ; $4a0a: $bf
	ld   d, c                                        ; $4a0b: $51
	rst  $38                                         ; $4a0c: $ff
	and  [hl]                                        ; $4a0d: $a6
	ret                                              ; $4a0e: $c9


	ld   de, $f811                                   ; $4a0f: $11 $11 $f8
	rra                                              ; $4a12: $1f
	rst  $38                                         ; $4a13: $ff
	rra                                              ; $4a14: $1f
	rst  $38                                         ; $4a15: $ff
	ld   b, c                                        ; $4a16: $41
	rst  $38                                         ; $4a17: $ff
	add  l                                           ; $4a18: $85
	db   $db                                         ; $4a19: $db
	ld   de, $bc11                                   ; $4a1a: $11 $11 $bc
	rra                                              ; $4a1d: $1f
	rst  $38                                         ; $4a1e: $ff
	ld   c, a                                        ; $4a1f: $4f
	rst  $38                                         ; $4a20: $ff
	ld   [hl], c                                     ; $4a21: $71
	rst  $38                                         ; $4a22: $ff
	ld   [hl], l                                     ; $4a23: $75
	jp   z, $1111                                    ; $4a24: $ca $11 $11

	db   $db                                         ; $4a27: $db
	rra                                              ; $4a28: $1f
	rst  $38                                         ; $4a29: $ff
	ld   a, [hl]                                     ; $4a2a: $7e
	rst  $38                                         ; $4a2b: $ff
	ld   sp, $42ff                                   ; $4a2c: $31 $ff $42
	rl   c                                           ; $4a2f: $cb $11
	ld   de, $2ff1                                   ; $4a31: $11 $f1 $2f
	rst  $38                                         ; $4a34: $ff
	ld   a, a                                        ; $4a35: $7f
	ei                                               ; $4a36: $fb
	jr   @-$07                                       ; $4a37: $18 $f7

	ld   d, $f2                                      ; $4a39: $16 $f2
	ld   de, $b11e                                   ; $4a3b: $11 $1e $b1
	rst  $38                                         ; $4a3e: $ff
	ld   hl, sp-$11                                  ; $4a3f: $f8 $ef
	pop  af                                          ; $4a41: $f1
	rra                                              ; $4a42: $1f
	pop  bc                                          ; $4a43: $c1
	inc  e                                           ; $4a44: $1c
	sub  c                                           ; $4a45: $91
	ld   de, $1a9f                                   ; $4a46: $11 $9f $1a
	rst  $38                                         ; $4a49: $ff
	call z, Call_0d5_41ff                            ; $4a4a: $cc $ff $41
	call z, $9a11                                    ; $4a4d: $cc $11 $9a
	ld   de, $f118                                   ; $4a50: $11 $18 $f1
	adc  a                                           ; $4a53: $8f
	cp   $bf                                         ; $4a54: $fe $bf
	rst  $30                                         ; $4a56: $f7
	add  hl, de                                      ; $4a57: $19
	jp   nz, $9117                                   ; $4a58: $c2 $17 $91

	ld   de, $1bcf                                   ; $4a5b: $11 $cf $1b
	rst  $38                                         ; $4a5e: $ff
	db   $fd                                         ; $4a5f: $fd
	rst  $38                                         ; $4a60: $ff
	add  c                                           ; $4a61: $81
	adc  l                                           ; $4a62: $8d
	ld   de, $1166                                   ; $4a63: $11 $66 $11
	rra                                              ; $4a66: $1f
	pop  hl                                          ; $4a67: $e1
	rst  $28                                         ; $4a68: $ef
	rst  $38                                         ; $4a69: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a6a: $cf
	or   $17                                         ; $4a6b: $f6 $17
	jp   nz, $4114                                   ; $4a6d: $c2 $14 $41

	ld   de, $5ff6                                   ; $4a70: $11 $f6 $5f
	rst  $38                                         ; $4a73: $ff
	rst  $38                                         ; $4a74: $ff
	rst  $38                                         ; $4a75: $ff
	ld   hl, $1178                                   ; $4a76: $21 $78 $11
	ld   sp, $3d11                                   ; $4a79: $31 $11 $3d
	ld   e, h                                        ; $4a7c: $5c
	rst  $38                                         ; $4a7d: $ff
	rst  $38                                         ; $4a7e: $ff
	rst  $38                                         ; $4a7f: $ff
	pop  af                                          ; $4a80: $f1
	ld   h, $61                                      ; $4a81: $26 $61
	ld   de, $1711                                   ; $4a83: $11 $11 $17
	adc  b                                           ; $4a86: $88
	rst  $38                                         ; $4a87: $ff
	rst  $38                                         ; $4a88: $ff
	rst  $38                                         ; $4a89: $ff
	ld   a, [$6435]                                  ; $4a8a: $fa $35 $64
	ld   de, $1111                                   ; $4a8d: $11 $11 $11
	add  [hl]                                        ; $4a90: $86
	xor  a                                           ; $4a91: $af
	rst  $38                                         ; $4a92: $ff
	rst  $38                                         ; $4a93: $ff
	rst  $38                                         ; $4a94: $ff
	ld   h, h                                        ; $4a95: $64
	ld   h, [hl]                                     ; $4a96: $66
	inc  sp                                          ; $4a97: $33
	ld   sp, $2611                                   ; $4a98: $31 $11 $26
	ld   c, e                                        ; $4a9b: $4b
	rst  $38                                         ; $4a9c: $ff
	rst  $38                                         ; $4a9d: $ff
	rst  $38                                         ; $4a9e: $ff
	rst  $20                                         ; $4a9f: $e7
	ld   d, [hl]                                     ; $4aa0: $56
	ld   d, h                                        ; $4aa1: $54
	ld   d, l                                        ; $4aa2: $55
	ld   de, $6412                                   ; $4aa3: $11 $12 $64
	ld   l, h                                        ; $4aa6: $6c
	rst  $38                                         ; $4aa7: $ff
	rst  $28                                         ; $4aa8: $ef
	rst  $38                                         ; $4aa9: $ff
	ld   [hl], l                                     ; $4aaa: $75
	ld   [hl], a                                     ; $4aab: $77
	ld   h, [hl]                                     ; $4aac: $66
	ld   [hl], l                                     ; $4aad: $75
	ld   de, $5515                                   ; $4aae: $11 $15 $55
	sbc  [hl]                                        ; $4ab1: $9e
	db   $fc                                         ; $4ab2: $fc
	rst  $38                                         ; $4ab3: $ff
	ld   [$7767], a                                  ; $4ab4: $ea $67 $77
	sbc  c                                           ; $4ab7: $99
	ld   [hl], e                                     ; $4ab8: $73
	ld   de, $8637                                   ; $4ab9: $11 $37 $86
	adc  e                                           ; $4abc: $8b
	jp   z, $b8cc                                    ; $4abd: $ca $cc $b8

	ld   h, a                                        ; $4ac0: $67
	xor  c                                           ; $4ac1: $a9
	adc  d                                           ; $4ac2: $8a
	and  a                                           ; $4ac3: $a7
	ld   b, h                                        ; $4ac4: $44
	ld   h, l                                        ; $4ac5: $65
	ld   d, l                                        ; $4ac6: $55
	ld   h, a                                        ; $4ac7: $67
	adc  b                                           ; $4ac8: $88
	sbc  d                                           ; $4ac9: $9a
	and  a                                           ; $4aca: $a7
	ld   a, b                                        ; $4acb: $78
	sbc  c                                           ; $4acc: $99
	xor  e                                           ; $4acd: $ab
	jp   z, Jump_0d5_6697                            ; $4ace: $ca $97 $66

	ld   d, [hl]                                     ; $4ad1: $56
	ld   b, l                                        ; $4ad2: $45
	ld   h, a                                        ; $4ad3: $67
	ld   [hl], a                                     ; $4ad4: $77
	sbc  b                                           ; $4ad5: $98
	ld   [hl], a                                     ; $4ad6: $77
	adc  b                                           ; $4ad7: $88
	xor  d                                           ; $4ad8: $aa
	cp   h                                           ; $4ad9: $bc
	cp   d                                           ; $4ada: $ba
	sbc  b                                           ; $4adb: $98
	halt                                             ; $4adc: $76
	ld   d, [hl]                                     ; $4add: $56
	halt                                             ; $4ade: $76
	ld   d, a                                        ; $4adf: $57
	add  [hl]                                        ; $4ae0: $86
	ld   h, a                                        ; $4ae1: $67
	adc  b                                           ; $4ae2: $88
	adc  d                                           ; $4ae3: $8a
	cp   d                                           ; $4ae4: $ba
	xor  e                                           ; $4ae5: $ab
	cp   d                                           ; $4ae6: $ba
	sbc  c                                           ; $4ae7: $99
	ld   a, c                                        ; $4ae8: $79
	ld   [hl], a                                     ; $4ae9: $77
	add  a                                           ; $4aea: $87
	ld   [hl], a                                     ; $4aeb: $77
	ld   d, [hl]                                     ; $4aec: $56
	ld   h, a                                        ; $4aed: $67
	ld   a, b                                        ; $4aee: $78
	xor  c                                           ; $4aef: $a9
	sbc  c                                           ; $4af0: $99
	sbc  c                                           ; $4af1: $99
	sbc  c                                           ; $4af2: $99
	sbc  b                                           ; $4af3: $98
	sbc  d                                           ; $4af4: $9a
	sbc  c                                           ; $4af5: $99
	ld   [hl], a                                     ; $4af6: $77
	ld   [hl], a                                     ; $4af7: $77
	ld   [hl], a                                     ; $4af8: $77
	ld   a, b                                        ; $4af9: $78
	adc  b                                           ; $4afa: $88
	adc  b                                           ; $4afb: $88
	sbc  b                                           ; $4afc: $98
	sbc  b                                           ; $4afd: $98
	adc  d                                           ; $4afe: $8a
	adc  d                                           ; $4aff: $8a
	add  a                                           ; $4b00: $87
	sbc  b                                           ; $4b01: $98
	ld   a, c                                        ; $4b02: $79
	xor  b                                           ; $4b03: $a8
	ld   a, b                                        ; $4b04: $78
	sub  a                                           ; $4b05: $97
	sbc  c                                           ; $4b06: $99
	sbc  b                                           ; $4b07: $98
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	add  a                                           ; $4b0a: $87
	adc  b                                           ; $4b0b: $88
	ld   [hl], a                                     ; $4b0c: $77
	adc  b                                           ; $4b0d: $88
	adc  b                                           ; $4b0e: $88
	adc  b                                           ; $4b0f: $88
	adc  c                                           ; $4b10: $89
	adc  b                                           ; $4b11: $88
	sbc  c                                           ; $4b12: $99
	adc  c                                           ; $4b13: $89
	adc  c                                           ; $4b14: $89
	add  a                                           ; $4b15: $87
	ld   a, b                                        ; $4b16: $78
	ld   [hl], a                                     ; $4b17: $77
	adc  b                                           ; $4b18: $88
	adc  c                                           ; $4b19: $89
	adc  b                                           ; $4b1a: $88
	sbc  c                                           ; $4b1b: $99
	adc  b                                           ; $4b1c: $88
	ld   [hl], a                                     ; $4b1d: $77
	ld   l, b                                        ; $4b1e: $68
	sbc  b                                           ; $4b1f: $98
	ld   [hl], a                                     ; $4b20: $77
	sub  a                                           ; $4b21: $97
	ld   a, c                                        ; $4b22: $79
	sbc  b                                           ; $4b23: $98
	ld   [hl], a                                     ; $4b24: $77
	adc  c                                           ; $4b25: $89
	adc  c                                           ; $4b26: $89
	sbc  b                                           ; $4b27: $98
	add  a                                           ; $4b28: $87
	add  a                                           ; $4b29: $87
	adc  b                                           ; $4b2a: $88
	adc  c                                           ; $4b2b: $89
	add  a                                           ; $4b2c: $87
	adc  b                                           ; $4b2d: $88
	adc  c                                           ; $4b2e: $89
	adc  b                                           ; $4b2f: $88
	add  a                                           ; $4b30: $87
	adc  b                                           ; $4b31: $88
	add  a                                           ; $4b32: $87
	adc  b                                           ; $4b33: $88
	adc  b                                           ; $4b34: $88
	sbc  c                                           ; $4b35: $99
	sbc  b                                           ; $4b36: $98
	add  a                                           ; $4b37: $87
	ld   a, c                                        ; $4b38: $79
	adc  b                                           ; $4b39: $88
	adc  b                                           ; $4b3a: $88
	add  a                                           ; $4b3b: $87
	adc  b                                           ; $4b3c: $88
	ld   a, b                                        ; $4b3d: $78
	adc  b                                           ; $4b3e: $88
	adc  b                                           ; $4b3f: $88
	adc  b                                           ; $4b40: $88
	adc  b                                           ; $4b41: $88
	adc  b                                           ; $4b42: $88
	adc  b                                           ; $4b43: $88
	adc  b                                           ; $4b44: $88
	adc  b                                           ; $4b45: $88
	ld   [hl], a                                     ; $4b46: $77
	adc  b                                           ; $4b47: $88
	adc  b                                           ; $4b48: $88
	adc  b                                           ; $4b49: $88
	add  a                                           ; $4b4a: $87
	adc  c                                           ; $4b4b: $89
	adc  b                                           ; $4b4c: $88
	sbc  b                                           ; $4b4d: $98
	adc  b                                           ; $4b4e: $88
	ld   a, b                                        ; $4b4f: $78
	adc  b                                           ; $4b50: $88
	ld   a, b                                        ; $4b51: $78
	add  a                                           ; $4b52: $87
	adc  b                                           ; $4b53: $88
	add  a                                           ; $4b54: $87
	ld   a, b                                        ; $4b55: $78
	adc  b                                           ; $4b56: $88
	adc  b                                           ; $4b57: $88
	sub  a                                           ; $4b58: $97
	adc  c                                           ; $4b59: $89
	adc  b                                           ; $4b5a: $88
	add  a                                           ; $4b5b: $87
	adc  b                                           ; $4b5c: $88
	ld   a, b                                        ; $4b5d: $78
	adc  b                                           ; $4b5e: $88
	ld   [hl], a                                     ; $4b5f: $77
	adc  b                                           ; $4b60: $88
	adc  b                                           ; $4b61: $88
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	adc  b                                           ; $4b65: $88
	adc  b                                           ; $4b66: $88
	sbc  b                                           ; $4b67: $98
	ld   a, b                                        ; $4b68: $78
	adc  b                                           ; $4b69: $88
	adc  b                                           ; $4b6a: $88
	sbc  b                                           ; $4b6b: $98
	ld   a, b                                        ; $4b6c: $78
	sub  a                                           ; $4b6d: $97
	ld   a, b                                        ; $4b6e: $78
	adc  b                                           ; $4b6f: $88
	add  a                                           ; $4b70: $87
	sbc  c                                           ; $4b71: $99
	ld   [hl], a                                     ; $4b72: $77
	adc  b                                           ; $4b73: $88
	adc  b                                           ; $4b74: $88
	adc  b                                           ; $4b75: $88
	adc  b                                           ; $4b76: $88
	adc  b                                           ; $4b77: $88
	ld   [hl], a                                     ; $4b78: $77
	adc  b                                           ; $4b79: $88
	ld   a, b                                        ; $4b7a: $78
	sbc  b                                           ; $4b7b: $98
	ld   [hl], a                                     ; $4b7c: $77
	adc  b                                           ; $4b7d: $88
	ld   a, c                                        ; $4b7e: $79
	adc  b                                           ; $4b7f: $88
	adc  b                                           ; $4b80: $88
	add  a                                           ; $4b81: $87
	adc  b                                           ; $4b82: $88
	ld   [hl], a                                     ; $4b83: $77
	sbc  b                                           ; $4b84: $98
	ld   a, b                                        ; $4b85: $78
	adc  b                                           ; $4b86: $88
	adc  c                                           ; $4b87: $89
	add  a                                           ; $4b88: $87
	adc  b                                           ; $4b89: $88
	adc  b                                           ; $4b8a: $88
	adc  b                                           ; $4b8b: $88
	adc  b                                           ; $4b8c: $88
	ld   a, c                                        ; $4b8d: $79
	sub  a                                           ; $4b8e: $97
	adc  b                                           ; $4b8f: $88
	adc  b                                           ; $4b90: $88
	adc  c                                           ; $4b91: $89
	sbc  b                                           ; $4b92: $98
	ld   [hl], a                                     ; $4b93: $77
	adc  c                                           ; $4b94: $89
	adc  b                                           ; $4b95: $88
	adc  b                                           ; $4b96: $88
	ld   a, b                                        ; $4b97: $78
	adc  b                                           ; $4b98: $88
	adc  b                                           ; $4b99: $88
	add  a                                           ; $4b9a: $87
	adc  b                                           ; $4b9b: $88
	adc  b                                           ; $4b9c: $88
	adc  b                                           ; $4b9d: $88
	ld   a, b                                        ; $4b9e: $78
	adc  b                                           ; $4b9f: $88
	ld   a, c                                        ; $4ba0: $79
	ld   a, b                                        ; $4ba1: $78
	adc  b                                           ; $4ba2: $88
	sub  a                                           ; $4ba3: $97
	adc  c                                           ; $4ba4: $89
	sbc  b                                           ; $4ba5: $98
	ld   a, b                                        ; $4ba6: $78
	adc  b                                           ; $4ba7: $88
	adc  b                                           ; $4ba8: $88
	adc  b                                           ; $4ba9: $88
	adc  b                                           ; $4baa: $88
	add  a                                           ; $4bab: $87
	ld   a, b                                        ; $4bac: $78
	adc  c                                           ; $4bad: $89
	add  a                                           ; $4bae: $87
	adc  c                                           ; $4baf: $89
	sbc  c                                           ; $4bb0: $99
	ld   [hl], a                                     ; $4bb1: $77
	adc  c                                           ; $4bb2: $89
	adc  b                                           ; $4bb3: $88
	adc  b                                           ; $4bb4: $88
	ld   [hl], a                                     ; $4bb5: $77
	adc  b                                           ; $4bb6: $88
	ld   [hl], a                                     ; $4bb7: $77
	adc  c                                           ; $4bb8: $89
	add  a                                           ; $4bb9: $87
	adc  b                                           ; $4bba: $88
	adc  c                                           ; $4bbb: $89
	sbc  b                                           ; $4bbc: $98
	ld   [hl], a                                     ; $4bbd: $77
	sbc  b                                           ; $4bbe: $98
	ld   a, b                                        ; $4bbf: $78
	sbc  b                                           ; $4bc0: $98
	adc  b                                           ; $4bc1: $88
	adc  b                                           ; $4bc2: $88
	sbc  c                                           ; $4bc3: $99
	adc  b                                           ; $4bc4: $88
	adc  b                                           ; $4bc5: $88
	sbc  b                                           ; $4bc6: $98
	adc  b                                           ; $4bc7: $88
	add  a                                           ; $4bc8: $87
	adc  b                                           ; $4bc9: $88
	adc  b                                           ; $4bca: $88
	adc  b                                           ; $4bcb: $88
	adc  b                                           ; $4bcc: $88
	adc  c                                           ; $4bcd: $89
	ld   a, c                                        ; $4bce: $79
	sbc  b                                           ; $4bcf: $98
	adc  b                                           ; $4bd0: $88
	adc  b                                           ; $4bd1: $88
	add  a                                           ; $4bd2: $87
	adc  c                                           ; $4bd3: $89
	adc  b                                           ; $4bd4: $88
	adc  b                                           ; $4bd5: $88
	adc  b                                           ; $4bd6: $88
	sub  a                                           ; $4bd7: $97
	adc  c                                           ; $4bd8: $89
	adc  c                                           ; $4bd9: $89
	ld   a, b                                        ; $4bda: $78
	adc  b                                           ; $4bdb: $88
	adc  b                                           ; $4bdc: $88
	adc  b                                           ; $4bdd: $88
	ld   a, b                                        ; $4bde: $78
	adc  b                                           ; $4bdf: $88
	adc  b                                           ; $4be0: $88
	sbc  b                                           ; $4be1: $98
	adc  b                                           ; $4be2: $88
	sbc  b                                           ; $4be3: $98
	ld   a, b                                        ; $4be4: $78
	sbc  c                                           ; $4be5: $99
	add  a                                           ; $4be6: $87
	adc  c                                           ; $4be7: $89
	ld   a, b                                        ; $4be8: $78
	sbc  b                                           ; $4be9: $98
	ld   a, b                                        ; $4bea: $78
	sub  a                                           ; $4beb: $97
	ld   a, c                                        ; $4bec: $79
	xor  c                                           ; $4bed: $a9
	ld   [hl], a                                     ; $4bee: $77
	add  a                                           ; $4bef: $87
	adc  c                                           ; $4bf0: $89
	adc  c                                           ; $4bf1: $89
	add  a                                           ; $4bf2: $87
	ld   a, b                                        ; $4bf3: $78
	adc  b                                           ; $4bf4: $88
	ld   a, b                                        ; $4bf5: $78
	adc  c                                           ; $4bf6: $89
	ld   [hl], a                                     ; $4bf7: $77
	xor  d                                           ; $4bf8: $aa
	ld   [hl], a                                     ; $4bf9: $77
	add  a                                           ; $4bfa: $87
	ld   a, c                                        ; $4bfb: $79
	adc  b                                           ; $4bfc: $88
	cp   b                                           ; $4bfd: $b8
	ld   d, [hl]                                     ; $4bfe: $56
	sub  a                                           ; $4bff: $97
	ld   a, b                                        ; $4c00: $78
	ld   a, c                                        ; $4c01: $79
	adc  b                                           ; $4c02: $88
	xor  c                                           ; $4c03: $a9
	ld   a, b                                        ; $4c04: $78
	ld   l, b                                        ; $4c05: $68
	sbc  b                                           ; $4c06: $98
	xor  c                                           ; $4c07: $a9
	adc  b                                           ; $4c08: $88
	adc  c                                           ; $4c09: $89
	ld   a, c                                        ; $4c0a: $79
	xor  b                                           ; $4c0b: $a8
	adc  c                                           ; $4c0c: $89
	add  a                                           ; $4c0d: $87
	ld   d, a                                        ; $4c0e: $57
	ld   [hl], a                                     ; $4c0f: $77
	adc  b                                           ; $4c10: $88
	sub  a                                           ; $4c11: $97
	ld   [hl], a                                     ; $4c12: $77
	ld   a, c                                        ; $4c13: $79
	adc  c                                           ; $4c14: $89
	adc  c                                           ; $4c15: $89
	adc  b                                           ; $4c16: $88
	ld   [hl], a                                     ; $4c17: $77
	and  [hl]                                        ; $4c18: $a6
	ld   [hl], a                                     ; $4c19: $77
	ld   a, c                                        ; $4c1a: $79
	ld   a, c                                        ; $4c1b: $79
	adc  b                                           ; $4c1c: $88
	ld   [hl], a                                     ; $4c1d: $77
	add  a                                           ; $4c1e: $87
	ld   a, b                                        ; $4c1f: $78
	sub  a                                           ; $4c20: $97
	sub  a                                           ; $4c21: $97
	add  a                                           ; $4c22: $87
	ld   h, a                                        ; $4c23: $67
	adc  c                                           ; $4c24: $89
	ld   a, c                                        ; $4c25: $79
	sbc  c                                           ; $4c26: $99
	sub  a                                           ; $4c27: $97
	ld   a, b                                        ; $4c28: $78
	ld   [hl], a                                     ; $4c29: $77
	ld   a, b                                        ; $4c2a: $78
	ld   [hl], a                                     ; $4c2b: $77
	sub  a                                           ; $4c2c: $97
	ld   [hl], a                                     ; $4c2d: $77
	sbc  b                                           ; $4c2e: $98
	add  a                                           ; $4c2f: $87
	adc  b                                           ; $4c30: $88
	adc  c                                           ; $4c31: $89
	ld   a, c                                        ; $4c32: $79
	sbc  c                                           ; $4c33: $99
	adc  c                                           ; $4c34: $89
	add  a                                           ; $4c35: $87
	add  [hl]                                        ; $4c36: $86
	ld   [hl], a                                     ; $4c37: $77
	ld   [hl], a                                     ; $4c38: $77
	ld   [hl], a                                     ; $4c39: $77
	ld   a, c                                        ; $4c3a: $79
	add  a                                           ; $4c3b: $87
	adc  b                                           ; $4c3c: $88
	add  a                                           ; $4c3d: $87
	ld   [hl], a                                     ; $4c3e: $77
	adc  c                                           ; $4c3f: $89
	xor  e                                           ; $4c40: $ab
	cp   d                                           ; $4c41: $ba
	cp   b                                           ; $4c42: $b8
	halt                                             ; $4c43: $76
	ld   h, h                                        ; $4c44: $64
	ld   hl, $1211                                   ; $4c45: $21 $11 $12
	ld   a, d                                        ; $4c48: $7a
	cp   e                                           ; $4c49: $bb
	rst  $38                                         ; $4c4a: $ff
	rst  $38                                         ; $4c4b: $ff
	call c, Call_0d5_54c9                            ; $4c4c: $dc $c9 $54
	ld   h, h                                        ; $4c4f: $64
	ld   de, $1d11                                   ; $4c50: $11 $11 $1d
	rst  $38                                         ; $4c53: $ff
	rst  $38                                         ; $4c54: $ff
	rst  $38                                         ; $4c55: $ff
	and  $44                                         ; $4c56: $e6 $44
	ld   b, [hl]                                     ; $4c58: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c59: $cf
	jp   $1111                                       ; $4c5a: $c3 $11 $11


	rst  $38                                         ; $4c5d: $ff
	rst  $38                                         ; $4c5e: $ff
	rst  $38                                         ; $4c5f: $ff
	cp   $61                                         ; $4c60: $fe $61
	inc  de                                          ; $4c62: $13
	adc  h                                           ; $4c63: $8c
	rst  $38                                         ; $4c64: $ff
	and  c                                           ; $4c65: $a1
	ld   de, $df11                                   ; $4c66: $11 $11 $df
	rst  $38                                         ; $4c69: $ff
	rst  $38                                         ; $4c6a: $ff
	rst  $38                                         ; $4c6b: $ff
	ld   sp, $bf12                                   ; $4c6c: $31 $12 $bf
	rst  $38                                         ; $4c6f: $ff
	pop  hl                                          ; $4c70: $e1
	ld   de, $cf11                                   ; $4c71: $11 $11 $cf
	rst  $38                                         ; $4c74: $ff
	rst  $38                                         ; $4c75: $ff
	db   $fd                                         ; $4c76: $fd
	ld   de, $cf12                                   ; $4c77: $11 $12 $cf
	rst  $38                                         ; $4c7a: $ff
	pop  de                                          ; $4c7b: $d1
	ld   de, rAUD1LEN                                   ; $4c7c: $11 $11 $ff
	rst  $38                                         ; $4c7f: $ff
	rst  $38                                         ; $4c80: $ff
	db   $f4                                         ; $4c81: $f4
	ld   de, $ff15                                   ; $4c82: $11 $15 $ff
	rst  $38                                         ; $4c85: $ff
	ld   h, c                                        ; $4c86: $61
	ld   de, rAUD1LEN                                   ; $4c87: $11 $11 $ff
	rst  $38                                         ; $4c8a: $ff
	rst  $38                                         ; $4c8b: $ff
	or   c                                           ; $4c8c: $b1
	ld   de, $ff1a                                   ; $4c8d: $11 $1a $ff
	rst  $38                                         ; $4c90: $ff
	ld   de, $1c11                                   ; $4c91: $11 $11 $1c
	rst  $38                                         ; $4c94: $ff
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	ld   hl, $5f11                                   ; $4c97: $21 $11 $5f
	rst  $38                                         ; $4c9a: $ff
	push af                                          ; $4c9b: $f5
	ld   de, $1f11                                   ; $4c9c: $11 $11 $1f
	rst  $38                                         ; $4c9f: $ff
	rst  $38                                         ; $4ca0: $ff
	ld   sp, hl                                      ; $4ca1: $f9
	ld   de, $ef12                                   ; $4ca2: $11 $12 $ef
	rst  $38                                         ; $4ca5: $ff
	pop  bc                                          ; $4ca6: $c1
	ld   de, rAUD1LEN                                   ; $4ca7: $11 $11 $ff
	rst  $38                                         ; $4caa: $ff
	rst  $38                                         ; $4cab: $ff
	pop  af                                          ; $4cac: $f1
	ld   de, $ff1a                                   ; $4cad: $11 $1a $ff
	rst  $38                                         ; $4cb0: $ff
	ld   de, $1611                                   ; $4cb1: $11 $11 $16
	rst  $38                                         ; $4cb4: $ff
	rst  $38                                         ; $4cb5: $ff
	rst  $38                                         ; $4cb6: $ff
	ld   de, $9f11                                   ; $4cb7: $11 $11 $9f
	rst  $38                                         ; $4cba: $ff
	pop  af                                          ; $4cbb: $f1
	ld   de, $1f11                                   ; $4cbc: $11 $11 $1f
	rst  $38                                         ; $4cbf: $ff
	rst  $38                                         ; $4cc0: $ff
	ldh  a, [c]                                      ; $4cc1: $f2
	ld   de, $ff1c                                   ; $4cc2: $11 $1c $ff
	rst  $38                                         ; $4cc5: $ff
	ld   sp, $1111                                   ; $4cc6: $31 $11 $11
	rst  $38                                         ; $4cc9: $ff
	rst  $38                                         ; $4cca: $ff
	rst  $38                                         ; $4ccb: $ff
	ld   h, c                                        ; $4ccc: $61
	ld   de, $ffdf                                   ; $4ccd: $11 $df $ff
	call nz, $1111                                   ; $4cd0: $c4 $11 $11
	ld   [de], a                                     ; $4cd3: $12
	rst  $38                                         ; $4cd4: $ff
	cp   $98                                         ; $4cd5: $fe $98
	ld   de, $ff2f                                   ; $4cd7: $11 $2f $ff
	ld   a, [$1131]                                  ; $4cda: $fa $31 $11
	ld   de, $ff1f                                   ; $4cdd: $11 $1f $ff
	db   $f4                                         ; $4ce0: $f4
	ld   h, h                                        ; $4ce1: $64
	ld   de, $ffbf                                   ; $4ce2: $11 $bf $ff
	or   e                                           ; $4ce5: $b3
	ld   sp, $1111                                   ; $4ce6: $31 $11 $11
	ld   e, a                                        ; $4ce9: $5f
	rst  $38                                         ; $4cea: $ff
	ld   h, c                                        ; $4ceb: $61
	ld   d, c                                        ; $4cec: $51
	jr   @+$01                                       ; $4ced: $18 $ff

	db   $fc                                         ; $4cef: $fc
	ld   b, h                                        ; $4cf0: $44
	ld   [hl-], a                                    ; $4cf1: $32
	ld   de, rAUD1LEN                                   ; $4cf2: $11 $11 $ff
	rst  $38                                         ; $4cf5: $ff
	ld   [de], a                                     ; $4cf6: $12
	ld   de, $ff7e                                   ; $4cf7: $11 $7e $ff
	rst  $10                                         ; $4cfa: $d7
	dec  [hl]                                        ; $4cfb: $35
	inc  sp                                          ; $4cfc: $33
	ld   de, rAUD1LEN                                   ; $4cfd: $11 $11 $ff
	or   $12                                         ; $4d00: $f6 $12
	ld   de, $ffaf                                   ; $4d02: $11 $af $ff
	and  h                                           ; $4d05: $a4
	ld   b, l                                        ; $4d06: $45
	ld   h, c                                        ; $4d07: $61
	ld   de, $ff1f                                   ; $4d08: $11 $1f $ff
	pop  af                                          ; $4d0b: $f1
	inc  de                                          ; $4d0c: $13
	dec  d                                           ; $4d0d: $15
	rst  JumpTable                                         ; $4d0e: $df
	cp   $95                                         ; $4d0f: $fe $95
	ld   d, l                                        ; $4d11: $55
	ld   d, c                                        ; $4d12: $51
	ld   de, $ff1f                                   ; $4d13: $11 $1f $ff
	or   c                                           ; $4d16: $b1
	inc  d                                           ; $4d17: $14
	add  hl, de                                      ; $4d18: $19
	rst  $38                                         ; $4d19: $ff
	ei                                               ; $4d1a: $fb
	halt                                             ; $4d1b: $76
	adc  c                                           ; $4d1c: $89
	ld   b, c                                        ; $4d1d: $41
	ld   de, $ff1f                                   ; $4d1e: $11 $1f $ff
	ld   h, c                                        ; $4d21: $61
	inc  de                                          ; $4d22: $13
	dec  hl                                          ; $4d23: $2b
	rst  $38                                         ; $4d24: $ff
	ld   a, [$8897]                                  ; $4d25: $fa $97 $88
	ld   de, $5f11                                   ; $4d28: $11 $11 $5f
	rst  $38                                         ; $4d2b: $ff
	ld   de, $5c23                                   ; $4d2c: $11 $23 $5c
	rst  $38                                         ; $4d2f: $ff
	ld   sp, hl                                      ; $4d30: $f9
	add  a                                           ; $4d31: $87
	adc  b                                           ; $4d32: $88
	ld   de, rAUD1LEN                                   ; $4d33: $11 $11 $ff
	rst  $38                                         ; $4d36: $ff
	ld   de, $7d43                                   ; $4d37: $11 $43 $7d
	rst  $28                                         ; $4d3a: $ef
	ld   a, [$97b8]                                  ; $4d3b: $fa $b8 $97
	ld   de, rAUD1LEN                                   ; $4d3e: $11 $11 $ff
	rst  $38                                         ; $4d41: $ff
	ld   de, $ad34                                   ; $4d42: $11 $34 $ad
	rst  $38                                         ; $4d45: $ff
	ei                                               ; $4d46: $fb
	rst  ToBoot                                         ; $4d47: $c7
	ld   [hl], l                                     ; $4d48: $75
	ld   de, rAUD1LEN                                   ; $4d49: $11 $11 $ff
	rst  $38                                         ; $4d4c: $ff
	ld   de, $dd56                                   ; $4d4d: $11 $56 $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d50: $cf
	db   $fd                                         ; $4d51: $fd
	call nz, $1165                                   ; $4d52: $c4 $65 $11
	ld   de, $feff                                   ; $4d55: $11 $ff $fe
	ld   de, $fe49                                   ; $4d58: $11 $49 $fe
	cp   a                                           ; $4d5b: $bf
	rst  $38                                         ; $4d5c: $ff
	or   e                                           ; $4d5d: $b3
	ld   b, l                                        ; $4d5e: $45
	ld   de, rAUD1LEN                                   ; $4d5f: $11 $11 $ff
	ei                                               ; $4d62: $fb
	ld   de, $fc3c                                   ; $4d63: $11 $3c $fc
	adc  [hl]                                        ; $4d66: $8e
	rst  $38                                         ; $4d67: $ff
	or   d                                           ; $4d68: $b2
	inc  [hl]                                        ; $4d69: $34
	ld   de, rAUD1LEN                                   ; $4d6a: $11 $11 $ff
	ei                                               ; $4d6d: $fb
	ld   de, $fc2b                                   ; $4d6e: $11 $2b $fc
	adc  [hl]                                        ; $4d71: $8e
	rst  $38                                         ; $4d72: $ff
	or   c                                           ; $4d73: $b1
	inc  h                                           ; $4d74: $24
	ld   de, rAUD1LEN                                   ; $4d75: $11 $11 $ff
	db   $fd                                         ; $4d78: $fd
	ld   de, $fd1a                                   ; $4d79: $11 $1a $fd
	sbc  l                                           ; $4d7c: $9d
	rst  $38                                         ; $4d7d: $ff
	or   c                                           ; $4d7e: $b1
	dec  h                                           ; $4d7f: $25
	ld   de, rAUD1LEN                                   ; $4d80: $11 $11 $ff
	rst  $38                                         ; $4d83: $ff
	ld   de, $fc17                                   ; $4d84: $11 $17 $fc
	ld   a, e                                        ; $4d87: $7b
	rst  $38                                         ; $4d88: $ff
	db   $d3                                         ; $4d89: $d3
	ld   b, a                                        ; $4d8a: $47
	ld   b, c                                        ; $4d8b: $41
	ld   de, $ffcf                                   ; $4d8c: $11 $cf $ff
	ld   b, c                                        ; $4d8f: $41
	dec  d                                           ; $4d90: $15
	cp   e                                           ; $4d91: $bb
	ld   a, c                                        ; $4d92: $79
	rst  $38                                         ; $4d93: $ff
	add  sp, $68                                     ; $4d94: $e8 $68
	ld   [hl], d                                     ; $4d96: $72
	ld   de, $ff4f                                   ; $4d97: $11 $4f $ff
	ld   [hl], e                                     ; $4d9a: $73
	ld   b, [hl]                                     ; $4d9b: $46
	sbc  c                                           ; $4d9c: $99
	ld   a, b                                        ; $4d9d: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d9e: $cf
	db   $fc                                         ; $4d9f: $fc
	adc  d                                           ; $4da0: $8a
	sub  [hl]                                        ; $4da1: $96
	ld   de, $ef18                                   ; $4da2: $11 $18 $ef
	and  d                                           ; $4da5: $a2
	ld   [hl], $8a                                   ; $4da6: $36 $8a
	ld   h, [hl]                                     ; $4da8: $66
	sbc  [hl]                                        ; $4da9: $9e
	db   $ed                                         ; $4daa: $ed
	cp   e                                           ; $4dab: $bb
	ret                                              ; $4dac: $c9


	ld   h, c                                        ; $4dad: $61
	inc  de                                          ; $4dae: $13
	cp   [hl]                                        ; $4daf: $be
	push de                                          ; $4db0: $d5
	inc  de                                          ; $4db1: $13
	ld   a, d                                        ; $4db2: $7a
	add  [hl]                                        ; $4db3: $86
	ld   a, d                                        ; $4db4: $7a
	db   $ed                                         ; $4db5: $ed
	call z, $96cc                                    ; $4db6: $cc $cc $96
	ld   de, $da4b                                   ; $4db9: $11 $4b $da
	ld   sp, $8836                                   ; $4dbc: $31 $36 $88
	ld   [hl], a                                     ; $4dbf: $77
	xor  h                                           ; $4dc0: $ac
	db   $dd                                         ; $4dc1: $dd
	db   $dd                                         ; $4dc2: $dd
	cp   c                                           ; $4dc3: $b9
	ld   h, c                                        ; $4dc4: $61
	ld   d, $cd                                      ; $4dc5: $16 $cd
	add  c                                           ; $4dc7: $81
	ld   [de], a                                     ; $4dc8: $12
	ld   a, c                                        ; $4dc9: $79
	add  [hl]                                        ; $4dca: $86
	ld   a, d                                        ; $4dcb: $7a
	db   $dd                                         ; $4dcc: $dd
	db   $ed                                         ; $4dcd: $ed
	db   $db                                         ; $4dce: $db
	and  [hl]                                        ; $4dcf: $a6
	ld   de, $b59d                                   ; $4dd0: $11 $9d $b5
	ld   de, $9738                                   ; $4dd3: $11 $38 $97
	ld   d, a                                        ; $4dd6: $57
	cp   [hl]                                        ; $4dd7: $be
	db   $ed                                         ; $4dd8: $ed
	db   $ed                                         ; $4dd9: $ed
	ret                                              ; $4dda: $c9


	ld   d, c                                        ; $4ddb: $51
	ld   a, [hl-]                                    ; $4ddc: $3a
	jp   c, $1431                                    ; $4ddd: $da $31 $14

	adc  b                                           ; $4de0: $88
	ld   d, l                                        ; $4de1: $55
	sbc  h                                           ; $4de2: $9c
	xor  $ed                                         ; $4de3: $ee $ed
	db   $db                                         ; $4de5: $db
	and  l                                           ; $4de6: $a5
	dec  h                                           ; $4de7: $25
	cp   l                                           ; $4de8: $bd
	add  c                                           ; $4de9: $81
	ld   de, $7657                                   ; $4dea: $11 $57 $76
	ld   a, d                                        ; $4ded: $7a
	call $dced                                       ; $4dee: $cd $ed $dc
	cp   d                                           ; $4df1: $ba
	ld   d, d                                        ; $4df2: $52
	ld   l, e                                        ; $4df3: $6b
	add  $11                                         ; $4df4: $c6 $11
	inc  d                                           ; $4df6: $14
	ld   [hl], a                                     ; $4df7: $77
	ld   h, a                                        ; $4df8: $67
	sbc  e                                           ; $4df9: $9b
	rst  $28                                         ; $4dfa: $ef
	xor  $dc                                         ; $4dfb: $ee $dc
	and  h                                           ; $4dfd: $a4
	scf                                              ; $4dfe: $37
	cp   e                                           ; $4dff: $bb
	ld   b, c                                        ; $4e00: $41
	ld   de, $7657                                   ; $4e01: $11 $57 $76
	ld   a, d                                        ; $4e04: $7a
	call $edef                                       ; $4e05: $cd $ef $ed
	rst  ToBoot                                         ; $4e08: $c7
	inc  h                                           ; $4e09: $24
	sbc  l                                           ; $4e0a: $9d
	sub  c                                           ; $4e0b: $91
	ld   de, $7627                                   ; $4e0c: $11 $27 $76
	ld   h, a                                        ; $4e0f: $67
	cp   h                                           ; $4e10: $bc
	rst  $28                                         ; $4e11: $ef
	rst  $38                                         ; $4e12: $ff
	db   $ec                                         ; $4e13: $ec
	ld   d, d                                        ; $4e14: $52
	ld   l, e                                        ; $4e15: $6b
	add  $11                                         ; $4e16: $c6 $11
	inc  d                                           ; $4e18: $14
	ld   h, [hl]                                     ; $4e19: $66
	ld   d, [hl]                                     ; $4e1a: $56
	adc  e                                           ; $4e1b: $8b
	rst  JumpTable                                         ; $4e1c: $df
	rst  $38                                         ; $4e1d: $ff
	db   $fc                                         ; $4e1e: $fc
	and  h                                           ; $4e1f: $a4
	jr   c, @-$24                                    ; $4e20: $38 $da

	ld   sp, $5611                                   ; $4e22: $31 $11 $56
	ld   d, l                                        ; $4e25: $55
	ld   a, c                                        ; $4e26: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e27: $cf
	rst  $38                                         ; $4e28: $ff
	cp   $d7                                         ; $4e29: $fe $d7
	dec  h                                           ; $4e2b: $25
	cp   l                                           ; $4e2c: $bd
	sub  c                                           ; $4e2d: $91
	ld   de, $6526                                   ; $4e2e: $11 $26 $65
	ld   d, a                                        ; $4e31: $57
	cp   [hl]                                        ; $4e32: $be
	rst  $28                                         ; $4e33: $ef
	rst  $38                                         ; $4e34: $ff
	db   $eb                                         ; $4e35: $eb
	ld   d, e                                        ; $4e36: $53
	ld   a, l                                        ; $4e37: $7d
	push bc                                          ; $4e38: $c5
	ld   de, $6514                                   ; $4e39: $11 $14 $65
	ld   d, [hl]                                     ; $4e3c: $56
	xor  h                                           ; $4e3d: $ac
	rst  JumpTable                                         ; $4e3e: $df
	rst  $38                                         ; $4e3f: $ff
	db   $fd                                         ; $4e40: $fd
	sub  e                                           ; $4e41: $93
	ld   c, d                                        ; $4e42: $4a
	jp   hl                                          ; $4e43: $e9


	ld   hl, $5511                                   ; $4e44: $21 $11 $55
	ld   d, [hl]                                     ; $4e47: $56
	ld   a, d                                        ; $4e48: $7a
	sbc  $ff                                         ; $4e49: $de $ff
	cp   $b6                                         ; $4e4b: $fe $b6
	ld   h, $dd                                      ; $4e4d: $26 $dd
	ld   [hl], c                                     ; $4e4f: $71
	ld   de, $5535                                   ; $4e50: $11 $35 $55
	ld   l, c                                        ; $4e53: $69
	cp   l                                           ; $4e54: $bd
	rst  $38                                         ; $4e55: $ff
	rst  $38                                         ; $4e56: $ff
	jp   c, $ae43                                    ; $4e57: $da $43 $ae

	call nz, $1411                                   ; $4e5a: $c4 $11 $14
	ld   h, l                                        ; $4e5d: $65
	ld   h, a                                        ; $4e5e: $67
	sbc  h                                           ; $4e5f: $9c
	rst  $28                                         ; $4e60: $ef
	rst  $38                                         ; $4e61: $ff
	db   $ed                                         ; $4e62: $ed
	ld   [hl], d                                     ; $4e63: $72
	ld   e, h                                        ; $4e64: $5c
	add  sp, $11                                     ; $4e65: $e8 $11
	ld   [de], a                                     ; $4e67: $12
	ld   h, [hl]                                     ; $4e68: $66
	ld   d, [hl]                                     ; $4e69: $56
	ld   a, e                                        ; $4e6a: $7b
	rst  JumpTable                                         ; $4e6b: $df
	rst  $38                                         ; $4e6c: $ff
	db   $fd                                         ; $4e6d: $fd
	or   h                                           ; $4e6e: $b4
	add  hl, hl                                      ; $4e6f: $29
	db   $fc                                         ; $4e70: $fc
	ld   d, c                                        ; $4e71: $51
	ld   de, $5546                                   ; $4e72: $11 $46 $55
	ld   l, c                                        ; $4e75: $69
	sbc  $ff                                         ; $4e76: $de $ff
	cp   $d7                                         ; $4e78: $fe $d7
	dec  h                                           ; $4e7a: $25
	cp   a                                           ; $4e7b: $bf
	and  c                                           ; $4e7c: $a1
	ld   de, $6526                                   ; $4e7d: $11 $26 $65
	ld   h, a                                        ; $4e80: $67
	cp   l                                           ; $4e81: $bd
	rst  $28                                         ; $4e82: $ef
	rst  $38                                         ; $4e83: $ff
	jp   c, Jump_0d5_7e42                            ; $4e84: $da $42 $7e

	and  $11                                         ; $4e87: $e6 $11
	inc  d                                           ; $4e89: $14
	ld   h, [hl]                                     ; $4e8a: $66
	ld   h, [hl]                                     ; $4e8b: $66
	sbc  h                                           ; $4e8c: $9c
	rst  $28                                         ; $4e8d: $ef
	rst  $28                                         ; $4e8e: $ef
	db   $ec                                         ; $4e8f: $ec
	add  d                                           ; $4e90: $82
	ld   a, [hl-]                                    ; $4e91: $3a
	ei                                               ; $4e92: $fb
	ld   sp, $6712                                   ; $4e93: $31 $12 $67
	ld   h, a                                        ; $4e96: $67
	ld   a, e                                        ; $4e97: $7b
	sbc  $ee                                         ; $4e98: $de $ee
	db   $ed                                         ; $4e9a: $ed
	or   h                                           ; $4e9b: $b4
	dec  d                                           ; $4e9c: $15
	sbc  $91                                         ; $4e9d: $de $91
	ld   de, $7747                                   ; $4e9f: $11 $47 $77
	ld   a, b                                        ; $4ea2: $78
	call $fdee                                       ; $4ea3: $cd $ee $fd
	cp   b                                           ; $4ea6: $b8
	ld   de, $e68d                                   ; $4ea7: $11 $8d $e6
	ld   de, $9827                                   ; $4eaa: $11 $27 $98
	add  a                                           ; $4ead: $87
	sbc  h                                           ; $4eae: $9c
	db   $ed                                         ; $4eaf: $ed
	xor  $c9                                         ; $4eb0: $ee $c9
	ld   sp, $fd3b                                   ; $4eb2: $31 $3b $fd
	ld   sp, $9a15                                   ; $4eb5: $31 $15 $9a
	adc  b                                           ; $4eb8: $88
	adc  e                                           ; $4eb9: $8b
	sbc  $cd                                         ; $4eba: $de $cd
	jp   c, $1651                                    ; $4ebc: $da $51 $16

	rst  JumpTable                                         ; $4ebf: $df
	and  c                                           ; $4ec0: $a1
	inc  d                                           ; $4ec1: $14
	sbc  h                                           ; $4ec2: $9c
	sbc  b                                           ; $4ec3: $98
	adc  e                                           ; $4ec4: $8b
	rst  JumpTable                                         ; $4ec5: $df
	db   $db                                         ; $4ec6: $db
	cp   b                                           ; $4ec7: $b8
	ld   d, c                                        ; $4ec8: $51
	ld   de, $f6bf                                   ; $4ec9: $11 $bf $f6
	dec  d                                           ; $4ecc: $15
	sbc  l                                           ; $4ecd: $9d
	rst  ToBoot                                         ; $4ece: $c7
	ld   a, c                                        ; $4ecf: $79
	rst  JumpTable                                         ; $4ed0: $df
	ld   a, [$41a7]                                  ; $4ed1: $fa $a7 $41
	ld   de, $fd7f                                   ; $4ed4: $11 $7f $fd
	ld   b, l                                        ; $4ed7: $45
	adc  h                                           ; $4ed8: $8c
	ret  c                                           ; $4ed9: $d8

	ld   a, c                                        ; $4eda: $79
	rst  JumpTable                                         ; $4edb: $df
	ei                                               ; $4edc: $fb
	ld   [hl], l                                     ; $4edd: $75
	ld   hl, $4f11                                   ; $4ede: $21 $11 $4f
	rst  $38                                         ; $4ee1: $ff
	sub  l                                           ; $4ee2: $95
	ld   l, c                                        ; $4ee3: $69
	jp   c, $cf79                                    ; $4ee4: $da $79 $cf

	rst  $38                                         ; $4ee7: $ff
	ld   h, e                                        ; $4ee8: $63
	ld   de, $1f11                                   ; $4ee9: $11 $11 $1f
	rst  $38                                         ; $4eec: $ff
	db   $f4                                         ; $4eed: $f4
	ld   [hl+], a                                    ; $4eee: $22
	xor  d                                           ; $4eef: $aa
	sbc  h                                           ; $4ef0: $9c
	rst  $28                                         ; $4ef1: $ef
	rst  $38                                         ; $4ef2: $ff
	ld   sp, $1111                                   ; $4ef3: $31 $11 $11
	rra                                              ; $4ef6: $1f
	rst  $38                                         ; $4ef7: $ff
	pop  af                                          ; $4ef8: $f1
	ld   de, $ff9f                                   ; $4ef9: $11 $9f $ff
	rst  $38                                         ; $4efc: $ff
	ld   a, [$1111]                                  ; $4efd: $fa $11 $11
	ld   de, $ff1f                                   ; $4f00: $11 $1f $ff
	pop  af                                          ; $4f03: $f1
	ld   de, $ffcf                                   ; $4f04: $11 $cf $ff
	db   $ed                                         ; $4f07: $ed
	add  sp, $11                                     ; $4f08: $e8 $11
	ld   de, $1f11                                   ; $4f0a: $11 $11 $1f
	rst  $38                                         ; $4f0d: $ff
	and  c                                           ; $4f0e: $a1
	ld   de, $ffff                                   ; $4f0f: $11 $ff $ff
	xor  d                                           ; $4f12: $aa
	ret                                              ; $4f13: $c9


	inc  sp                                          ; $4f14: $33
	ld   sp, $1f11                                   ; $4f15: $31 $11 $1f
	rst  $38                                         ; $4f18: $ff
	add  c                                           ; $4f19: $81
	ld   de, $feff                                   ; $4f1a: $11 $ff $fe
	adc  c                                           ; $4f1d: $89
	jp   c, $3154                                    ; $4f1e: $da $54 $31

	ld   de, $ff1f                                   ; $4f21: $11 $1f $ff
	ld   d, c                                        ; $4f24: $51
	ld   de, $fcff                                   ; $4f25: $11 $ff $fc
	adc  c                                           ; $4f28: $89
	bit  2, l                                        ; $4f29: $cb $55
	ld   b, c                                        ; $4f2b: $41
	ld   de, $ff1f                                   ; $4f2c: $11 $1f $ff
	ld   hl, rAUD1LEN                                   ; $4f2f: $21 $11 $ff
	ld   a, [$db9a]                                  ; $4f32: $fa $9a $db
	ld   h, [hl]                                     ; $4f35: $66
	ld   sp, $1f11                                   ; $4f36: $31 $11 $1f
	rst  $38                                         ; $4f39: $ff
	ld   de, rAUD1HIGH                                   ; $4f3a: $11 $14 $ff
	cp   e                                           ; $4f3d: $bb
	call z, Call_0d5_56c9                            ; $4f3e: $cc $c9 $56
	ld   sp, $1f11                                   ; $4f41: $31 $11 $1f
	rst  $38                                         ; $4f44: $ff
	ld   de, $ff18                                   ; $4f45: $11 $18 $ff
	adc  e                                           ; $4f48: $8b
	ld   [$69a7], a                                  ; $4f49: $ea $a7 $69
	ld   sp, $4f11                                   ; $4f4c: $31 $11 $4f
	rst  $38                                         ; $4f4f: $ff
	ld   de, $ff1c                                   ; $4f50: $11 $1c $ff
	sbc  l                                           ; $4f53: $9d
	ld   a, [$9a68]                                  ; $4f54: $fa $68 $9a
	ld   bc, $cf11                                   ; $4f57: $01 $11 $cf
	rst  $38                                         ; $4f5a: $ff
	ld   de, $ff3c                                   ; $4f5b: $11 $3c $ff
	xor  a                                           ; $4f5e: $af
	or   $48                                         ; $4f5f: $f6 $48
	cp   d                                           ; $4f61: $ba
	ld   de, rAUD1LEN                                   ; $4f62: $11 $11 $ff
	db   $fc                                         ; $4f65: $fc
	ld   de, $ff7a                                   ; $4f66: $11 $7a $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f69: $cf
	di                                               ; $4f6a: $f3
	ld   a, [hl-]                                    ; $4f6b: $3a
	reti                                             ; $4f6c: $d9


	ld   de, rAUD1LEN                                   ; $4f6d: $11 $11 $ff
	ld   sp, hl                                      ; $4f70: $f9
	ld   de, $dfa6                                   ; $4f71: $11 $a6 $df
	rst  JumpTable                                         ; $4f74: $df
	ldh  a, [c]                                      ; $4f75: $f2
	ld   c, e                                        ; $4f76: $4b
	add  $11                                         ; $4f77: $c6 $11
	ld   de, $fbff                                   ; $4f79: $11 $ff $fb
	ld   de, $bf82                                   ; $4f7c: $11 $82 $bf
	rst  $38                                         ; $4f7f: $ff
	pop  af                                          ; $4f80: $f1
	ld   c, e                                        ; $4f81: $4b
	or   [hl]                                        ; $4f82: $b6
	ld   de, rAUD1LEN                                   ; $4f83: $11 $11 $ff
	rst  $30                                         ; $4f86: $f7
	ld   de, $9f91                                   ; $4f87: $11 $91 $9f
	rst  $38                                         ; $4f8a: $ff
	pop  hl                                          ; $4f8b: $e1
	ld   l, e                                        ; $4f8c: $6b
	and  e                                           ; $4f8d: $a3
	ld   de, rAUD1LEN                                   ; $4f8e: $11 $11 $ff
	ld   sp, hl                                      ; $4f91: $f9
	ld   de, $6f91                                   ; $4f92: $11 $91 $6f
	rst  $38                                         ; $4f95: $ff
	pop  hl                                          ; $4f96: $e1
	ld   a, h                                        ; $4f97: $7c
	add  c                                           ; $4f98: $81
	ld   de, rAUD1LEN                                   ; $4f99: $11 $11 $ff
	db   $fc                                         ; $4f9c: $fc
	ld   de, $5da1                                   ; $4f9d: $11 $a1 $5d
	rst  $38                                         ; $4fa0: $ff
	ldh  [c], a                                      ; $4fa1: $e2
	sbc  e                                           ; $4fa2: $9b
	ld   h, c                                        ; $4fa3: $61
	ld   de, rAUD1LEN                                   ; $4fa4: $11 $11 $ff
	db   $fc                                         ; $4fa7: $fc
	ld   de, $2da1                                   ; $4fa8: $11 $a1 $2d
	rst  $38                                         ; $4fab: $ff
	db   $f4                                         ; $4fac: $f4
	cp   e                                           ; $4fad: $bb
	ld   d, c                                        ; $4fae: $51
	ld   de, rAUD1LEN                                   ; $4faf: $11 $11 $ff
	rst  $38                                         ; $4fb2: $ff
	inc  de                                          ; $4fb3: $13
	and  c                                           ; $4fb4: $a1
	add  hl, de                                      ; $4fb5: $19
	rst  $38                                         ; $4fb6: $ff
	or   $db                                         ; $4fb7: $f6 $db
	ld   b, c                                        ; $4fb9: $41
	ld   de, rAUD1LEN                                   ; $4fba: $11 $11 $ff
	rst  $38                                         ; $4fbd: $ff
	ld   d, $d1                                      ; $4fbe: $16 $d1
	rla                                              ; $4fc0: $17
	rst  $38                                         ; $4fc1: $ff
	ld   hl, sp-$04                                  ; $4fc2: $f8 $fc
	ld   b, c                                        ; $4fc4: $41
	ld   de, rAUD1LEN                                   ; $4fc5: $11 $11 $ff
	rst  $38                                         ; $4fc8: $ff
	ld   c, d                                        ; $4fc9: $4a
	pop  de                                          ; $4fca: $d1
	dec  d                                           ; $4fcb: $15
	rst  JumpTable                                         ; $4fcc: $df
	ld   a, [$41fd]                                  ; $4fcd: $fa $fd $41
	ld   de, rAUD1LEN                                   ; $4fd0: $11 $11 $ff
	rst  $38                                         ; $4fd3: $ff
	adc  a                                           ; $4fd4: $8f
	pop  bc                                          ; $4fd5: $c1
	inc  d                                           ; $4fd6: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fd7: $cf
	db   $ec                                         ; $4fd8: $ec
	db   $fd                                         ; $4fd9: $fd
	ld   d, c                                        ; $4fda: $51
	ld   de, rAUD1LEN                                   ; $4fdb: $11 $11 $ff
	rst  $38                                         ; $4fde: $ff
	xor  a                                           ; $4fdf: $af
	pop  bc                                          ; $4fe0: $c1
	inc  hl                                          ; $4fe1: $23
	xor  a                                           ; $4fe2: $af
	sbc  $fd                                         ; $4fe3: $de $fd
	ld   [hl], c                                     ; $4fe5: $71
	ld   de, rAUD1LEN                                   ; $4fe6: $11 $11 $ff
	db   $fd                                         ; $4fe9: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fea: $cf
	push hl                                          ; $4feb: $e5
	ld   b, h                                        ; $4fec: $44
	cp   a                                           ; $4fed: $bf
	sbc  l                                           ; $4fee: $9d
	db   $fd                                         ; $4fef: $fd
	add  c                                           ; $4ff0: $81
	ld   de, rAUD1LEN                                   ; $4ff1: $11 $11 $ff
	db   $db                                         ; $4ff4: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ff5: $cf
	jp   hl                                          ; $4ff6: $e9


	ld   h, [hl]                                     ; $4ff7: $66
	xor  [hl]                                        ; $4ff8: $ae
	sbc  h                                           ; $4ff9: $9c
	db   $fc                                         ; $4ffa: $fc
	sub  c                                           ; $4ffb: $91
	ld   de, $fd11                                   ; $4ffc: $11 $11 $fd
	sbc  c                                           ; $4fff: $99
	ld   a, l                                        ; $5000: $7d
	jp   hl                                          ; $5001: $e9


	halt                                             ; $5002: $76
	xor  [hl]                                        ; $5003: $ae
	xor  c                                           ; $5004: $a9
	db   $db                                         ; $5005: $db
	and  [hl]                                        ; $5006: $a6
	ld   b, [hl]                                     ; $5007: $46
	ld   b, h                                        ; $5008: $44
	cp   l                                           ; $5009: $bd
	add  [hl]                                        ; $500a: $86
	ld   d, l                                        ; $500b: $55
	ld   h, l                                        ; $500c: $65
	ld   b, e                                        ; $500d: $43
	ld   e, c                                        ; $500e: $59
	sbc  c                                           ; $500f: $99
	xor  e                                           ; $5010: $ab
	xor  $cb                                         ; $5011: $ee $cb
	xor  e                                           ; $5013: $ab
	cp   c                                           ; $5014: $b9
	sbc  c                                           ; $5015: $99
	ld   [hl], l                                     ; $5016: $75
	ld   [hl-], a                                    ; $5017: $32
	ld   de, $5624                                   ; $5018: $11 $24 $56
	adc  c                                           ; $501b: $89
	call $cbee                                       ; $501c: $cd $ee $cb
	call z, $99ba                                    ; $501f: $cc $ba $99
	ld   [hl], l                                     ; $5022: $75
	ld   hl, $3224                                   ; $5023: $21 $24 $32
	ld   b, [hl]                                     ; $5026: $46
	adc  b                                           ; $5027: $88
	sbc  d                                           ; $5028: $9a
	cp   h                                           ; $5029: $bc
	set  1, l                                        ; $502a: $cb $cd
	res  5, d                                        ; $502c: $cb $aa
	sub  a                                           ; $502e: $97
	ld   d, l                                        ; $502f: $55
	ld   d, h                                        ; $5030: $54
	inc  sp                                          ; $5031: $33
	ld   b, l                                        ; $5032: $45
	ld   d, [hl]                                     ; $5033: $56
	ld   a, c                                        ; $5034: $79
	cp   l                                           ; $5035: $bd
	cp   h                                           ; $5036: $bc
	call z, $99ba                                    ; $5037: $cc $ba $99
	xor  d                                           ; $503a: $aa
	ld   [hl], l                                     ; $503b: $75
	ld   b, l                                        ; $503c: $45
	ld   b, e                                        ; $503d: $43
	inc  h                                           ; $503e: $24
	ld   d, [hl]                                     ; $503f: $56
	ld   h, a                                        ; $5040: $67
	adc  e                                           ; $5041: $8b
	call z, $cbbc                                    ; $5042: $cc $bc $cb
	xor  e                                           ; $5045: $ab
	cp   d                                           ; $5046: $ba
	xor  b                                           ; $5047: $a8
	halt                                             ; $5048: $76
	ld   d, h                                        ; $5049: $54
	inc  sp                                          ; $504a: $33
	ld   b, l                                        ; $504b: $45
	ld   d, [hl]                                     ; $504c: $56
	ld   a, b                                        ; $504d: $78
	sbc  d                                           ; $504e: $9a
	cp   e                                           ; $504f: $bb
	xor  e                                           ; $5050: $ab
	cp   d                                           ; $5051: $ba
	xor  e                                           ; $5052: $ab
	cp   c                                           ; $5053: $b9
	halt                                             ; $5054: $76
	ld   d, l                                        ; $5055: $55
	ld   d, h                                        ; $5056: $54
	inc  [hl]                                        ; $5057: $34
	ld   d, l                                        ; $5058: $55
	ld   h, [hl]                                     ; $5059: $66
	adc  d                                           ; $505a: $8a
	cp   d                                           ; $505b: $ba
	cp   h                                           ; $505c: $bc
	call $aaba                                       ; $505d: $cd $ba $aa
	sbc  c                                           ; $5060: $99
	halt                                             ; $5061: $76
	ld   h, l                                        ; $5062: $65
	ld   d, h                                        ; $5063: $54
	ld   b, l                                        ; $5064: $45
	ld   b, l                                        ; $5065: $45
	ld   h, a                                        ; $5066: $67
	adc  b                                           ; $5067: $88
	sbc  e                                           ; $5068: $9b
	cp   d                                           ; $5069: $ba
	cp   d                                           ; $506a: $ba
	xor  d                                           ; $506b: $aa
	xor  c                                           ; $506c: $a9
	adc  c                                           ; $506d: $89
	add  a                                           ; $506e: $87
	ld   h, l                                        ; $506f: $65
	ld   b, h                                        ; $5070: $44
	ld   d, l                                        ; $5071: $55
	ld   d, [hl]                                     ; $5072: $56
	ld   a, c                                        ; $5073: $79
	sbc  d                                           ; $5074: $9a
	xor  e                                           ; $5075: $ab
	cp   e                                           ; $5076: $bb
	xor  d                                           ; $5077: $aa
	cp   d                                           ; $5078: $ba
	xor  c                                           ; $5079: $a9
	sbc  b                                           ; $507a: $98
	ld   h, [hl]                                     ; $507b: $66
	ld   d, l                                        ; $507c: $55
	ld   b, h                                        ; $507d: $44
	ld   d, [hl]                                     ; $507e: $56
	ld   h, [hl]                                     ; $507f: $66
	ld   h, a                                        ; $5080: $67
	adc  c                                           ; $5081: $89
	sbc  d                                           ; $5082: $9a
	cp   e                                           ; $5083: $bb
	call z, $88ba                                    ; $5084: $cc $ba $88
	sbc  b                                           ; $5087: $98
	ld   [hl], a                                     ; $5088: $77
	ld   [hl], a                                     ; $5089: $77
	ld   h, l                                        ; $508a: $65
	ld   d, l                                        ; $508b: $55
	ld   d, [hl]                                     ; $508c: $56
	ld   h, a                                        ; $508d: $67
	adc  c                                           ; $508e: $89
	sbc  d                                           ; $508f: $9a
	cp   d                                           ; $5090: $ba
	xor  d                                           ; $5091: $aa
	xor  c                                           ; $5092: $a9
	sbc  c                                           ; $5093: $99
	sbc  d                                           ; $5094: $9a
	adc  b                                           ; $5095: $88
	halt                                             ; $5096: $76
	ld   h, l                                        ; $5097: $65
	ld   d, l                                        ; $5098: $55
	ld   h, [hl]                                     ; $5099: $66
	ld   [hl], a                                     ; $509a: $77
	ld   [hl], a                                     ; $509b: $77
	adc  c                                           ; $509c: $89
	adc  c                                           ; $509d: $89
	xor  c                                           ; $509e: $a9
	cp   e                                           ; $509f: $bb
	xor  d                                           ; $50a0: $aa
	sbc  c                                           ; $50a1: $99
	adc  b                                           ; $50a2: $88
	ld   a, b                                        ; $50a3: $78
	ld   [hl], a                                     ; $50a4: $77
	ld   [hl], a                                     ; $50a5: $77
	halt                                             ; $50a6: $76
	ld   h, [hl]                                     ; $50a7: $66
	ld   h, [hl]                                     ; $50a8: $66
	ld   h, a                                        ; $50a9: $67
	adc  c                                           ; $50aa: $89
	adc  c                                           ; $50ab: $89
	sbc  c                                           ; $50ac: $99
	sbc  c                                           ; $50ad: $99
	sbc  d                                           ; $50ae: $9a
	xor  d                                           ; $50af: $aa
	xor  c                                           ; $50b0: $a9
	adc  b                                           ; $50b1: $88
	ld   [hl], a                                     ; $50b2: $77
	halt                                             ; $50b3: $76
	ld   h, [hl]                                     ; $50b4: $66
	ld   [hl], a                                     ; $50b5: $77
	ld   [hl], a                                     ; $50b6: $77
	ld   [hl], a                                     ; $50b7: $77
	sbc  b                                           ; $50b8: $98
	adc  b                                           ; $50b9: $88
	adc  c                                           ; $50ba: $89
	xor  d                                           ; $50bb: $aa
	adc  c                                           ; $50bc: $89
	xor  d                                           ; $50bd: $aa
	add  a                                           ; $50be: $87
	ld   a, b                                        ; $50bf: $78
	add  a                                           ; $50c0: $87
	adc  b                                           ; $50c1: $88
	add  a                                           ; $50c2: $87
	ld   l, b                                        ; $50c3: $68
	halt                                             ; $50c4: $76
	ld   a, b                                        ; $50c5: $78
	sbc  c                                           ; $50c6: $99
	adc  d                                           ; $50c7: $8a
	xor  c                                           ; $50c8: $a9
	xor  c                                           ; $50c9: $a9
	sbc  d                                           ; $50ca: $9a
	sub  a                                           ; $50cb: $97
	ld   h, l                                        ; $50cc: $65
	ld   h, l                                        ; $50cd: $65
	ld   d, h                                        ; $50ce: $54
	ld   b, l                                        ; $50cf: $45
	ld   h, [hl]                                     ; $50d0: $66
	ld   a, c                                        ; $50d1: $79
	xor  h                                           ; $50d2: $ac
	xor  e                                           ; $50d3: $ab
	res  5, d                                        ; $50d4: $cb $aa
	sub  a                                           ; $50d6: $97
	ld   b, d                                        ; $50d7: $42
	ld   e, c                                        ; $50d8: $59
	ld   d, d                                        ; $50d9: $52
	ld   b, l                                        ; $50da: $45
	halt                                             ; $50db: $76
	ld   l, h                                        ; $50dc: $6c
	call c, $ffcc                                    ; $50dd: $dc $cc $ff
	res  7, c                                        ; $50e0: $cb $b9
	ld   d, c                                        ; $50e2: $51
	ld   de, $1273                                   ; $50e3: $11 $73 $12
	ld   c, d                                        ; $50e6: $4a
	sub  a                                           ; $50e7: $97
	rst  $38                                         ; $50e8: $ff
	rst  $38                                         ; $50e9: $ff
	rst  $38                                         ; $50ea: $ff
	ld   sp, hl                                      ; $50eb: $f9
	ld   a, b                                        ; $50ec: $78
	ld   sp, $8511                                   ; $50ed: $31 $11 $85
	ld   de, $f98f                                   ; $50f0: $11 $8f $f9
	rst  $38                                         ; $50f3: $ff
	rst  $38                                         ; $50f4: $ff
	rst  $38                                         ; $50f5: $ff
	db   $f4                                         ; $50f6: $f4
	add  hl, de                                      ; $50f7: $19
	ld   de, $c911                                   ; $50f8: $11 $11 $c9
	inc  de                                          ; $50fb: $13
	rst  $38                                         ; $50fc: $ff
	ld   hl, sp-$01                                  ; $50fd: $f8 $ff
	ld   hl, sp-$01                                  ; $50ff: $f8 $ff
	pop  af                                          ; $5101: $f1
	dec  de                                          ; $5102: $1b
	ld   de, $f611                                   ; $5103: $11 $11 $f6
	dec  e                                           ; $5106: $1d
	rst  $38                                         ; $5107: $ff
	db   $fc                                         ; $5108: $fc
	rst  $38                                         ; $5109: $ff
	sub  e                                           ; $510a: $93
	rst  $38                                         ; $510b: $ff
	and  c                                           ; $510c: $a1
	inc  a                                           ; $510d: $3c
	ld   de, $f111                                   ; $510e: $11 $11 $f1
	rra                                              ; $5111: $1f
	rst  $38                                         ; $5112: $ff
	adc  a                                           ; $5113: $8f
	rst  $38                                         ; $5114: $ff
	ld   a, [de]                                     ; $5115: $1a
	cp   $11                                         ; $5116: $fe $11
	and  $11                                         ; $5118: $e6 $11
	inc  de                                          ; $511a: $13
	pop  af                                          ; $511b: $f1
	rra                                              ; $511c: $1f
	cp   $af                                         ; $511d: $fe $af
	ld   sp, hl                                      ; $511f: $f9
	rra                                              ; $5120: $1f
	di                                               ; $5121: $f3
	dec  d                                           ; $5122: $15
	pop  af                                          ; $5123: $f1
	ld   de, $d11b                                   ; $5124: $11 $1b $d1
	rst  $38                                         ; $5127: $ff
	db   $ec                                         ; $5128: $ec
	rst  $38                                         ; $5129: $ff
	pop  af                                          ; $512a: $f1
	adc  a                                           ; $512b: $8f
	add  c                                           ; $512c: $81
	ld   e, [hl]                                     ; $512d: $5e
	add  c                                           ; $512e: $81
	ld   de, $111f                                   ; $512f: $11 $1f $11
	rst  $38                                         ; $5132: $ff
	call $91ff                                       ; $5133: $cd $ff $91
	rst  $38                                         ; $5136: $ff
	dec  d                                           ; $5137: $15
	xor  l                                           ; $5138: $ad
	ld   de, $5f11                                   ; $5139: $11 $11 $5f
	rra                                              ; $513c: $1f
	rst  $38                                         ; $513d: $ff
	rst  $38                                         ; $513e: $ff
	rst  $38                                         ; $513f: $ff
	ld   a, [de]                                     ; $5140: $1a
	or   $18                                         ; $5141: $f6 $18
	push bc                                          ; $5143: $c5
	ld   de, $f111                                   ; $5144: $11 $11 $f1
	rra                                              ; $5147: $1f
	cp   $ff                                         ; $5148: $fe $ff
	or   $2f                                         ; $514a: $f6 $2f
	pop  af                                          ; $514c: $f1
	ld   l, e                                        ; $514d: $6b
	and  c                                           ; $514e: $a1
	ld   de, $f11a                                   ; $514f: $11 $1a $f1
	rst  $38                                         ; $5152: $ff
	rst  JumpTable                                         ; $5153: $df
	rst  $38                                         ; $5154: $ff
	pop  af                                          ; $5155: $f1
	rst  $28                                         ; $5156: $ef
	ld   de, $11aa                                   ; $5157: $11 $aa $11
	ld   de, $171f                                   ; $515a: $11 $1f $17
	rst  $38                                         ; $515d: $ff
	rst  $28                                         ; $515e: $ef
	rst  $38                                         ; $515f: $ff
	jr   @-$08                                       ; $5160: $18 $f6

	ld   a, [de]                                     ; $5162: $1a
	or   h                                           ; $5163: $b4
	ld   de, $f111                                   ; $5164: $11 $11 $f1
	rra                                              ; $5167: $1f
	db   $fd                                         ; $5168: $fd
	rst  $38                                         ; $5169: $ff
	ldh  a, [c]                                      ; $516a: $f2
	ccf                                              ; $516b: $3f
	and  c                                           ; $516c: $a1
	adc  e                                           ; $516d: $8b
	ld   d, c                                        ; $516e: $51
	ld   de, $c11f                                   ; $516f: $11 $1f $c1
	rst  $38                                         ; $5172: $ff
	adc  $ff                                         ; $5173: $ce $ff
	add  c                                           ; $5175: $81
	cp   $16                                         ; $5176: $fe $16
	or   [hl]                                        ; $5178: $b6
	ld   de, $ef11                                   ; $5179: $11 $11 $ef
	rra                                              ; $517c: $1f
	db   $fc                                         ; $517d: $fc
	rst  $28                                         ; $517e: $ef
	ld   a, [$f11f]                                  ; $517f: $fa $1f $f1
	ld   c, l                                        ; $5182: $4d
	ld   h, c                                        ; $5183: $61
	ld   de, $f11c                                   ; $5184: $11 $1c $f1
	rst  $38                                         ; $5187: $ff
	adc  $ff                                         ; $5188: $ce $ff
	or   c                                           ; $518a: $b1
	rst  $38                                         ; $518b: $ff
	inc  d                                           ; $518c: $14
	push bc                                          ; $518d: $c5
	ld   de, $df11                                   ; $518e: $11 $11 $df
	rra                                              ; $5191: $1f
	db   $fc                                         ; $5192: $fc
	rst  $28                                         ; $5193: $ef
	ld   a, [$e11f]                                  ; $5194: $fa $1f $e1
	ld   e, e                                        ; $5197: $5b
	ld   sp, $1f11                                   ; $5198: $31 $11 $1f
	pop  bc                                          ; $519b: $c1
	rst  $38                                         ; $519c: $ff
	rst  JumpTable                                         ; $519d: $df
	rst  $38                                         ; $519e: $ff
	ld   [hl], e                                     ; $519f: $73
	ld   a, [$9116]                                  ; $51a0: $fa $16 $91
	ld   de, $f211                                   ; $51a3: $11 $11 $f2
	rra                                              ; $51a6: $1f
	db   $fd                                         ; $51a7: $fd
	rst  $38                                         ; $51a8: $ff
	di                                               ; $51a9: $f3
	sbc  a                                           ; $51aa: $9f
	ld   b, c                                        ; $51ab: $41
	add  [hl]                                        ; $51ac: $86
	ld   de, $1f11                                   ; $51ad: $11 $11 $1f
	ld   a, [de]                                     ; $51b0: $1a
	rst  $38                                         ; $51b1: $ff
	rst  JumpTable                                         ; $51b2: $df
	rst  $38                                         ; $51b3: $ff
	cpl                                              ; $51b4: $2f
	pop  af                                          ; $51b5: $f1
	rla                                              ; $51b6: $17
	ld   sp, $1d11                                   ; $51b7: $31 $11 $1d
	pop  af                                          ; $51ba: $f1
	rst  $38                                         ; $51bb: $ff
	cp   $ff                                         ; $51bc: $fe $ff
	sbc  b                                           ; $51be: $98
	ld   hl, sp+$14                                  ; $51bf: $f8 $14
	ld   [hl], c                                     ; $51c1: $71
	ld   de, $f111                                   ; $51c2: $11 $11 $f1
	adc  a                                           ; $51c5: $8f
	rst  $38                                         ; $51c6: $ff
	rst  $38                                         ; $51c7: $ff
	push af                                          ; $51c8: $f5
	rst  $38                                         ; $51c9: $ff
	ld   de, $1173                                   ; $51ca: $11 $73 $11
	ld   de, $1ff6                                   ; $51cd: $11 $f6 $1f
	rst  $38                                         ; $51d0: $ff
	rst  $38                                         ; $51d1: $ff
	or   $cf                                         ; $51d2: $f6 $cf
	ld   [hl], c                                     ; $51d4: $71
	ld   h, $11                                      ; $51d5: $26 $11
	ld   de, $1f9a                                   ; $51d7: $11 $9a $1f
	rst  $38                                         ; $51da: $ff
	rst  $38                                         ; $51db: $ff
	ld   a, [$a1af]                                  ; $51dc: $fa $af $a1
	dec  h                                           ; $51df: $25
	ld   de, $5911                                   ; $51e0: $11 $11 $59
	rra                                              ; $51e3: $1f
	rst  $38                                         ; $51e4: $ff
	rst  $38                                         ; $51e5: $ff
	ld   sp, hl                                      ; $51e6: $f9
	ld   a, a                                        ; $51e7: $7f
	or   c                                           ; $51e8: $b1
	rla                                              ; $51e9: $17
	ld   de, $5211                                   ; $51ea: $11 $11 $52
	rra                                              ; $51ed: $1f
	rst  $38                                         ; $51ee: $ff
	rst  $38                                         ; $51ef: $ff
	push af                                          ; $51f0: $f5
	adc  a                                           ; $51f1: $8f
	ld   b, c                                        ; $51f2: $41
	ld   b, h                                        ; $51f3: $44
	ld   de, $3111                                   ; $51f4: $11 $11 $31
	ld   e, a                                        ; $51f7: $5f
	rst  $38                                         ; $51f8: $ff
	rst  $38                                         ; $51f9: $ff
	ldh  a, [c]                                      ; $51fa: $f2
	rst  JumpTable                                         ; $51fb: $df
	ld   de, $1121                                   ; $51fc: $11 $21 $11
	ld   de, $ff31                                   ; $51ff: $11 $31 $ff
	rst  $38                                         ; $5202: $ff
	rst  $38                                         ; $5203: $ff
	db   $f4                                         ; $5204: $f4
	ld   a, [$3111]                                  ; $5205: $fa $11 $31
	ld   de, $1211                                   ; $5208: $11 $11 $12
	rst  $38                                         ; $520b: $ff
	rst  $38                                         ; $520c: $ff
	rst  $38                                         ; $520d: $ff
	call $15f1                                       ; $520e: $cd $f1 $15
	ld   de, $1111                                   ; $5211: $11 $11 $11
	dec  e                                           ; $5214: $1d
	rst  $38                                         ; $5215: $ff
	rst  $38                                         ; $5216: $ff
	rst  $38                                         ; $5217: $ff
	xor  a                                           ; $5218: $af
	and  c                                           ; $5219: $a1
	inc  sp                                          ; $521a: $33
	ld   de, $1111                                   ; $521b: $11 $11 $11
	rra                                              ; $521e: $1f
	rst  $38                                         ; $521f: $ff
	rst  $38                                         ; $5220: $ff
	cp   $ff                                         ; $5221: $fe $ff
	ld   de, $1161                                   ; $5223: $11 $61 $11
	ld   de, $cf11                                   ; $5226: $11 $11 $cf
	rst  $38                                         ; $5229: $ff
	rst  $38                                         ; $522a: $ff
	rst  $38                                         ; $522b: $ff
	push af                                          ; $522c: $f5
	ld   h, $11                                      ; $522d: $26 $11
	ld   de, $1411                                   ; $522f: $11 $11 $14
	rst  $38                                         ; $5232: $ff
	rst  $38                                         ; $5233: $ff
	rst  $38                                         ; $5234: $ff
	rst  $38                                         ; $5235: $ff
	and  d                                           ; $5236: $a2
	ld   h, h                                        ; $5237: $64
	ld   de, $1111                                   ; $5238: $11 $11 $11
	ld   e, $ff                                      ; $523b: $1e $ff
	rst  $38                                         ; $523d: $ff
	rst  $38                                         ; $523e: $ff
	db   $fd                                         ; $523f: $fd
	ld   b, a                                        ; $5240: $47
	ld   d, c                                        ; $5241: $51
	ld   de, $1111                                   ; $5242: $11 $11 $11
	adc  a                                           ; $5245: $8f
	rst  $38                                         ; $5246: $ff
	rst  $38                                         ; $5247: $ff
	rst  $38                                         ; $5248: $ff
	ld   sp, hl                                      ; $5249: $f9
	add  l                                           ; $524a: $85
	ld   de, $1111                                   ; $524b: $11 $11 $11
	inc  de                                          ; $524e: $13
	rst  JumpTable                                         ; $524f: $df
	rst  $38                                         ; $5250: $ff
	rst  $38                                         ; $5251: $ff
	rst  $38                                         ; $5252: $ff
	cp   c                                           ; $5253: $b9
	ld   h, c                                        ; $5254: $61
	ld   de, $1111                                   ; $5255: $11 $11 $11
	add  hl, sp                                      ; $5258: $39
	rst  $38                                         ; $5259: $ff
	rst  $38                                         ; $525a: $ff
	rst  $38                                         ; $525b: $ff
	ei                                               ; $525c: $fb
	rst  ToBoot                                         ; $525d: $c7
	ld   de, $1111                                   ; $525e: $11 $11 $11
	ld   de, $ff9f                                   ; $5261: $11 $9f $ff
	rst  $38                                         ; $5264: $ff
	rst  $38                                         ; $5265: $ff
	db   $eb                                         ; $5266: $eb
	sub  h                                           ; $5267: $94
	ld   de, $1111                                   ; $5268: $11 $11 $11
	rla                                              ; $526b: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $526c: $cf
	rst  $38                                         ; $526d: $ff
	rst  $38                                         ; $526e: $ff
	cp   $d8                                         ; $526f: $fe $d8
	ld   b, e                                        ; $5271: $43
	ld   de, $1111                                   ; $5272: $11 $11 $11
	ld   l, h                                        ; $5275: $6c
	rst  $38                                         ; $5276: $ff
	rst  $38                                         ; $5277: $ff
	rst  $38                                         ; $5278: $ff
	db   $eb                                         ; $5279: $eb
	sub  [hl]                                        ; $527a: $96
	ld   [hl+], a                                    ; $527b: $22
	ld   de, $2311                                   ; $527c: $11 $11 $23
	xor  [hl]                                        ; $527f: $ae
	rst  $38                                         ; $5280: $ff
	rst  $38                                         ; $5281: $ff
	db   $fd                                         ; $5282: $fd
	xor  c                                           ; $5283: $a9
	add  h                                           ; $5284: $84
	ld   hl, $1311                                   ; $5285: $21 $11 $13
	ld   c, b                                        ; $5288: $48
	sbc  $ff                                         ; $5289: $de $ff
	db   $fd                                         ; $528b: $fd
	call z, Call_0d5_6387                            ; $528c: $cc $87 $63
	ld   hl, $3511                                   ; $528f: $21 $11 $35
	ld   a, e                                        ; $5292: $7b
	cp   l                                           ; $5293: $bd
	xor  $da                                         ; $5294: $ee $da
	cp   c                                           ; $5296: $b9

Call_0d5_5297:
	ld   a, b                                        ; $5297: $78
	ld   b, l                                        ; $5298: $45
	ld   h, d                                        ; $5299: $62
	ld   b, h                                        ; $529a: $44
	ld   c, b                                        ; $529b: $48
	ld   l, d                                        ; $529c: $6a
	set  1, h                                        ; $529d: $cb $cc
	db   $db                                         ; $529f: $db
	sbc  e                                           ; $52a0: $9b
	add  [hl]                                        ; $52a1: $86
	ld   [hl], a                                     ; $52a2: $77
	ld   d, l                                        ; $52a3: $55
	ld   h, [hl]                                     ; $52a4: $66
	ld   d, a                                        ; $52a5: $57
	and  [hl]                                        ; $52a6: $a6
	xor  d                                           ; $52a7: $aa
	xor  e                                           ; $52a8: $ab
	sbc  h                                           ; $52a9: $9c
	sbc  e                                           ; $52aa: $9b
	ld   [hl], a                                     ; $52ab: $77
	and  l                                           ; $52ac: $a5
	ld   d, [hl]                                     ; $52ad: $56
	ld   h, a                                        ; $52ae: $67
	ld   [hl], a                                     ; $52af: $77
	sbc  c                                           ; $52b0: $99
	ld   a, b                                        ; $52b1: $78
	cp   b                                           ; $52b2: $b8
	adc  e                                           ; $52b3: $8b
	adc  b                                           ; $52b4: $88
	sbc  c                                           ; $52b5: $99
	ld   a, c                                        ; $52b6: $79
	add  [hl]                                        ; $52b7: $86
	ld   a, b                                        ; $52b8: $78
	add  a                                           ; $52b9: $87
	xor  c                                           ; $52ba: $a9
	ld   a, d                                        ; $52bb: $7a
	sub  a                                           ; $52bc: $97
	ld   l, d                                        ; $52bd: $6a
	add  [hl]                                        ; $52be: $86
	ld   a, d                                        ; $52bf: $7a
	sub  [hl]                                        ; $52c0: $96
	sbc  b                                           ; $52c1: $98
	ld   l, b                                        ; $52c2: $68
	xor  b                                           ; $52c3: $a8
	ld   a, d                                        ; $52c4: $7a
	xor  d                                           ; $52c5: $aa
	ld   a, c                                        ; $52c6: $79
	add  [hl]                                        ; $52c7: $86
	halt                                             ; $52c8: $76
	ld   a, b                                        ; $52c9: $78
	add  a                                           ; $52ca: $87
	ld   l, d                                        ; $52cb: $6a
	add  a                                           ; $52cc: $87
	xor  d                                           ; $52cd: $aa
	ld   a, b                                        ; $52ce: $78
	or   [hl]                                        ; $52cf: $b6
	xor  e                                           ; $52d0: $ab
	ld   a, b                                        ; $52d1: $78
	ld   a, b                                        ; $52d2: $78
	ld   d, [hl]                                     ; $52d3: $56
	add  [hl]                                        ; $52d4: $86
	add  a                                           ; $52d5: $87
	adc  d                                           ; $52d6: $8a
	ld   l, d                                        ; $52d7: $6a
	or   a                                           ; $52d8: $b7
	xor  b                                           ; $52d9: $a8
	sbc  c                                           ; $52da: $99
	adc  c                                           ; $52db: $89
	ld   l, b                                        ; $52dc: $68
	halt                                             ; $52dd: $76
	adc  b                                           ; $52de: $88
	ld   h, a                                        ; $52df: $67
	ld   [hl], a                                     ; $52e0: $77
	sbc  b                                           ; $52e1: $98
	xor  c                                           ; $52e2: $a9
	and  a                                           ; $52e3: $a7
	adc  d                                           ; $52e4: $8a
	ld   [hl], a                                     ; $52e5: $77
	add  a                                           ; $52e6: $87
	adc  b                                           ; $52e7: $88
	ld   [hl], a                                     ; $52e8: $77
	adc  c                                           ; $52e9: $89
	ld   a, b                                        ; $52ea: $78
	add  [hl]                                        ; $52eb: $86
	adc  c                                           ; $52ec: $89
	sbc  e                                           ; $52ed: $9b
	ld   [hl], a                                     ; $52ee: $77
	add  a                                           ; $52ef: $87
	add  [hl]                                        ; $52f0: $86
	and  a                                           ; $52f1: $a7
	sbc  c                                           ; $52f2: $99
	ld   l, c                                        ; $52f3: $69
	add  a                                           ; $52f4: $87
	sbc  b                                           ; $52f5: $98
	sbc  c                                           ; $52f6: $99
	ld   a, c                                        ; $52f7: $79
	ld   l, b                                        ; $52f8: $68
	add  a                                           ; $52f9: $87
	and  l                                           ; $52fa: $a5
	ld   a, b                                        ; $52fb: $78
	sub  a                                           ; $52fc: $97
	sbc  c                                           ; $52fd: $99
	ld   [hl], a                                     ; $52fe: $77
	ld   a, c                                        ; $52ff: $79
	adc  b                                           ; $5300: $88
	sbc  b                                           ; $5301: $98
	adc  b                                           ; $5302: $88
	ld   a, b                                        ; $5303: $78
	adc  b                                           ; $5304: $88
	ld   a, b                                        ; $5305: $78
	sub  a                                           ; $5306: $97
	adc  c                                           ; $5307: $89
	halt                                             ; $5308: $76
	sbc  b                                           ; $5309: $98
	ld   a, d                                        ; $530a: $7a
	sub  a                                           ; $530b: $97
	adc  c                                           ; $530c: $89
	ld   [hl], a                                     ; $530d: $77
	adc  c                                           ; $530e: $89
	ld   a, c                                        ; $530f: $79
	sub  a                                           ; $5310: $97
	ld   [hl], a                                     ; $5311: $77
	sbc  b                                           ; $5312: $98
	ld   a, b                                        ; $5313: $78
	sub  a                                           ; $5314: $97
	ld   a, d                                        ; $5315: $7a
	ld   a, b                                        ; $5316: $78
	sub  a                                           ; $5317: $97
	ld   a, b                                        ; $5318: $78
	ld   a, c                                        ; $5319: $79
	sub  [hl]                                        ; $531a: $96
	adc  d                                           ; $531b: $8a
	ld   [hl], a                                     ; $531c: $77
	sbc  c                                           ; $531d: $99
	adc  b                                           ; $531e: $88
	adc  b                                           ; $531f: $88
	ld   l, b                                        ; $5320: $68
	sbc  b                                           ; $5321: $98
	sub  a                                           ; $5322: $97
	adc  b                                           ; $5323: $88
	add  a                                           ; $5324: $87
	adc  c                                           ; $5325: $89
	ld   a, b                                        ; $5326: $78
	sbc  c                                           ; $5327: $99
	ld   a, b                                        ; $5328: $78
	and  a                                           ; $5329: $a7
	ld   l, c                                        ; $532a: $69
	sub  a                                           ; $532b: $97
	ld   a, d                                        ; $532c: $7a
	ld   [hl], a                                     ; $532d: $77
	sub  a                                           ; $532e: $97
	sub  [hl]                                        ; $532f: $96
	adc  c                                           ; $5330: $89
	ld   a, c                                        ; $5331: $79
	ld   a, b                                        ; $5332: $78
	ld   a, b                                        ; $5333: $78
	ld   [hl], a                                     ; $5334: $77
	sbc  c                                           ; $5335: $99
	ld   h, a                                        ; $5336: $67
	sub  a                                           ; $5337: $97
	ld   a, b                                        ; $5338: $78
	xor  b                                           ; $5339: $a8
	ld   l, d                                        ; $533a: $6a
	add  [hl]                                        ; $533b: $86
	add  a                                           ; $533c: $87
	ld   [hl], a                                     ; $533d: $77
	sub  a                                           ; $533e: $97
	adc  b                                           ; $533f: $88
	adc  b                                           ; $5340: $88
	ld   a, d                                        ; $5341: $7a
	adc  b                                           ; $5342: $88
	sub  a                                           ; $5343: $97
	adc  b                                           ; $5344: $88
	ld   [hl], a                                     ; $5345: $77
	sbc  c                                           ; $5346: $99
	ld   e, c                                        ; $5347: $59
	sub  l                                           ; $5348: $95
	adc  b                                           ; $5349: $88
	and  a                                           ; $534a: $a7
	sbc  d                                           ; $534b: $9a
	ld   l, b                                        ; $534c: $68
	ld   a, d                                        ; $534d: $7a
	ld   h, a                                        ; $534e: $67
	and  a                                           ; $534f: $a7
	add  a                                           ; $5350: $87
	sub  a                                           ; $5351: $97
	ld   h, a                                        ; $5352: $67
	add  a                                           ; $5353: $87
	ld   a, c                                        ; $5354: $79
	adc  b                                           ; $5355: $88
	add  a                                           ; $5356: $87
	and  a                                           ; $5357: $a7
	ld   a, d                                        ; $5358: $7a
	ld   a, b                                        ; $5359: $78
	ld   l, c                                        ; $535a: $69
	ld   [hl], a                                     ; $535b: $77
	add  a                                           ; $535c: $87
	add  a                                           ; $535d: $87
	adc  d                                           ; $535e: $8a
	ld   [hl], a                                     ; $535f: $77
	sub  [hl]                                        ; $5360: $96
	sub  a                                           ; $5361: $97
	adc  c                                           ; $5362: $89
	ld   l, b                                        ; $5363: $68
	ld   a, b                                        ; $5364: $78
	adc  b                                           ; $5365: $88
	adc  b                                           ; $5366: $88
	add  a                                           ; $5367: $87
	adc  c                                           ; $5368: $89
	ld   a, b                                        ; $5369: $78
	adc  b                                           ; $536a: $88
	ld   a, b                                        ; $536b: $78
	sub  a                                           ; $536c: $97
	ld   [hl], a                                     ; $536d: $77
	sub  a                                           ; $536e: $97
	ld   a, b                                        ; $536f: $78
	add  a                                           ; $5370: $87
	adc  c                                           ; $5371: $89
	adc  c                                           ; $5372: $89
	sbc  b                                           ; $5373: $98
	add  a                                           ; $5374: $87
	adc  c                                           ; $5375: $89
	ld   a, b                                        ; $5376: $78
	ld   a, d                                        ; $5377: $7a
	ld   l, b                                        ; $5378: $68
	sub  a                                           ; $5379: $97
	sub  [hl]                                        ; $537a: $96
	sub  a                                           ; $537b: $97
	sbc  b                                           ; $537c: $98
	ld   a, d                                        ; $537d: $7a
	ld   a, b                                        ; $537e: $78
	ld   a, d                                        ; $537f: $7a
	add  a                                           ; $5380: $87
	sbc  b                                           ; $5381: $98
	ld   [hl], a                                     ; $5382: $77
	adc  e                                           ; $5383: $8b
	halt                                             ; $5384: $76
	or   a                                           ; $5385: $b7
	ld   a, c                                        ; $5386: $79
	ld   a, c                                        ; $5387: $79
	ld   a, b                                        ; $5388: $78
	sub  a                                           ; $5389: $97
	add  a                                           ; $538a: $87
	sub  a                                           ; $538b: $97
	ld   a, d                                        ; $538c: $7a
	adc  b                                           ; $538d: $88
	ld   l, d                                        ; $538e: $6a
	adc  b                                           ; $538f: $88
	adc  b                                           ; $5390: $88
	sub  [hl]                                        ; $5391: $96
	sbc  c                                           ; $5392: $99
	adc  b                                           ; $5393: $88
	add  a                                           ; $5394: $87
	adc  b                                           ; $5395: $88
	sbc  c                                           ; $5396: $99
	ld   a, c                                        ; $5397: $79
	add  a                                           ; $5398: $87
	sbc  b                                           ; $5399: $98
	adc  b                                           ; $539a: $88
	ld   a, c                                        ; $539b: $79
	adc  b                                           ; $539c: $88
	ld   a, c                                        ; $539d: $79
	add  a                                           ; $539e: $87
	sub  [hl]                                        ; $539f: $96
	sub  a                                           ; $53a0: $97
	adc  d                                           ; $53a1: $8a
	ld   a, d                                        ; $53a2: $7a
	ld   a, b                                        ; $53a3: $78
	adc  b                                           ; $53a4: $88
	adc  b                                           ; $53a5: $88
	sub  a                                           ; $53a6: $97
	adc  b                                           ; $53a7: $88
	add  a                                           ; $53a8: $87
	sbc  b                                           ; $53a9: $98
	add  a                                           ; $53aa: $87
	sbc  c                                           ; $53ab: $99
	ld   l, d                                        ; $53ac: $6a
	ld   a, b                                        ; $53ad: $78
	add  a                                           ; $53ae: $87
	and  a                                           ; $53af: $a7
	add  a                                           ; $53b0: $87
	and  a                                           ; $53b1: $a7
	adc  b                                           ; $53b2: $88
	add  a                                           ; $53b3: $87
	adc  c                                           ; $53b4: $89
	ld   a, c                                        ; $53b5: $79
	ld   l, d                                        ; $53b6: $6a
	ld   a, b                                        ; $53b7: $78
	adc  b                                           ; $53b8: $88
	ld   [hl], a                                     ; $53b9: $77
	sub  [hl]                                        ; $53ba: $96
	sub  a                                           ; $53bb: $97
	sub  [hl]                                        ; $53bc: $96
	adc  b                                           ; $53bd: $88
	sbc  c                                           ; $53be: $99
	ld   a, d                                        ; $53bf: $7a
	ld   a, b                                        ; $53c0: $78
	adc  b                                           ; $53c1: $88
	adc  b                                           ; $53c2: $88
	ld   a, d                                        ; $53c3: $7a
	ld   a, c                                        ; $53c4: $79
	sub  [hl]                                        ; $53c5: $96
	sub  a                                           ; $53c6: $97
	sub  a                                           ; $53c7: $97
	sub  a                                           ; $53c8: $97
	adc  c                                           ; $53c9: $89
	ld   l, d                                        ; $53ca: $6a
	ld   l, b                                        ; $53cb: $68
	add  a                                           ; $53cc: $87
	adc  b                                           ; $53cd: $88
	add  a                                           ; $53ce: $87
	adc  c                                           ; $53cf: $89
	add  a                                           ; $53d0: $87
	add  a                                           ; $53d1: $87
	add  a                                           ; $53d2: $87
	sbc  b                                           ; $53d3: $98
	ld   a, c                                        ; $53d4: $79
	ld   a, c                                        ; $53d5: $79
	add  a                                           ; $53d6: $87
	sbc  b                                           ; $53d7: $98
	adc  b                                           ; $53d8: $88
	adc  b                                           ; $53d9: $88
	ld   [hl], a                                     ; $53da: $77
	xor  b                                           ; $53db: $a8
	ld   a, b                                        ; $53dc: $78
	sub  a                                           ; $53dd: $97
	ld   a, d                                        ; $53de: $7a
	ld   a, c                                        ; $53df: $79
	ld   a, b                                        ; $53e0: $78
	sub  a                                           ; $53e1: $97
	sub  a                                           ; $53e2: $97
	sub  a                                           ; $53e3: $97
	adc  b                                           ; $53e4: $88
	add  a                                           ; $53e5: $87
	sbc  b                                           ; $53e6: $98
	adc  b                                           ; $53e7: $88
	adc  c                                           ; $53e8: $89
	ld   a, b                                        ; $53e9: $78
	ld   a, b                                        ; $53ea: $78
	ld   a, c                                        ; $53eb: $79
	adc  b                                           ; $53ec: $88
	sub  a                                           ; $53ed: $97
	sub  a                                           ; $53ee: $97
	adc  b                                           ; $53ef: $88
	adc  b                                           ; $53f0: $88
	adc  b                                           ; $53f1: $88
	adc  b                                           ; $53f2: $88
	add  a                                           ; $53f3: $87
	adc  b                                           ; $53f4: $88
	adc  c                                           ; $53f5: $89
	add  a                                           ; $53f6: $87
	ld   a, b                                        ; $53f7: $78
	ld   a, b                                        ; $53f8: $78
	adc  c                                           ; $53f9: $89
	add  a                                           ; $53fa: $87
	sub  a                                           ; $53fb: $97
	adc  b                                           ; $53fc: $88
	sbc  b                                           ; $53fd: $98
	ld   a, c                                        ; $53fe: $79
	ld   a, b                                        ; $53ff: $78
	ld   a, b                                        ; $5400: $78
	add  a                                           ; $5401: $87
	add  a                                           ; $5402: $87
	adc  b                                           ; $5403: $88
	ld   a, c                                        ; $5404: $79
	sbc  b                                           ; $5405: $98
	ld   a, c                                        ; $5406: $79
	ld   a, b                                        ; $5407: $78
	adc  b                                           ; $5408: $88
	add  a                                           ; $5409: $87
	add  a                                           ; $540a: $87
	adc  b                                           ; $540b: $88
	adc  b                                           ; $540c: $88
	adc  c                                           ; $540d: $89
	adc  c                                           ; $540e: $89
	adc  b                                           ; $540f: $88
	adc  b                                           ; $5410: $88
	add  a                                           ; $5411: $87
	sbc  b                                           ; $5412: $98
	add  a                                           ; $5413: $87
	adc  b                                           ; $5414: $88
	ld   a, c                                        ; $5415: $79
	ld   a, b                                        ; $5416: $78
	adc  b                                           ; $5417: $88
	add  a                                           ; $5418: $87
	sub  a                                           ; $5419: $97
	sbc  b                                           ; $541a: $98
	adc  b                                           ; $541b: $88
	adc  b                                           ; $541c: $88
	add  a                                           ; $541d: $87
	add  a                                           ; $541e: $87
	adc  c                                           ; $541f: $89
	adc  c                                           ; $5420: $89
	ld   a, b                                        ; $5421: $78
	adc  b                                           ; $5422: $88
	adc  b                                           ; $5423: $88
	adc  b                                           ; $5424: $88
	sub  a                                           ; $5425: $97
	sbc  b                                           ; $5426: $98
	ld   a, c                                        ; $5427: $79
	adc  b                                           ; $5428: $88
	adc  b                                           ; $5429: $88
	adc  b                                           ; $542a: $88
	adc  c                                           ; $542b: $89
	ld   a, b                                        ; $542c: $78
	adc  b                                           ; $542d: $88
	adc  b                                           ; $542e: $88
	adc  b                                           ; $542f: $88
	add  a                                           ; $5430: $87
	adc  b                                           ; $5431: $88
	adc  b                                           ; $5432: $88
	ld   a, b                                        ; $5433: $78
	adc  b                                           ; $5434: $88
	ld   a, b                                        ; $5435: $78
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
	adc  c                                           ; $5441: $89
	adc  b                                           ; $5442: $88
	adc  b                                           ; $5443: $88
	adc  b                                           ; $5444: $88
	adc  b                                           ; $5445: $88
	adc  b                                           ; $5446: $88
	adc  b                                           ; $5447: $88
	adc  b                                           ; $5448: $88
	sbc  b                                           ; $5449: $98
	adc  b                                           ; $544a: $88
	adc  b                                           ; $544b: $88
	adc  b                                           ; $544c: $88
	adc  b                                           ; $544d: $88
	adc  b                                           ; $544e: $88
	add  a                                           ; $544f: $87
	adc  b                                           ; $5450: $88
	adc  c                                           ; $5451: $89
	adc  b                                           ; $5452: $88
	adc  b                                           ; $5453: $88
	adc  c                                           ; $5454: $89
	adc  b                                           ; $5455: $88
	adc  b                                           ; $5456: $88
	adc  b                                           ; $5457: $88
	adc  b                                           ; $5458: $88
	sbc  b                                           ; $5459: $98
	adc  b                                           ; $545a: $88
	adc  b                                           ; $545b: $88
	adc  c                                           ; $545c: $89
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

Call_0d5_5475:
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
	sbc  b                                           ; $548b: $98
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
	sbc  b                                           ; $549d: $98
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

Call_0d5_54c9:
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
	sbc  b                                           ; $5543: $98
	adc  b                                           ; $5544: $88
	sbc  c                                           ; $5545: $99
	sbc  c                                           ; $5546: $99
	sbc  c                                           ; $5547: $99
	sbc  b                                           ; $5548: $98
	adc  b                                           ; $5549: $88
	adc  c                                           ; $554a: $89
	sub  a                                           ; $554b: $97
	ld   [hl], a                                     ; $554c: $77
	ld   h, a                                        ; $554d: $67
	ld   [hl], a                                     ; $554e: $77
	adc  b                                           ; $554f: $88
	adc  c                                           ; $5550: $89
	adc  b                                           ; $5551: $88
	ld   a, b                                        ; $5552: $78
	adc  b                                           ; $5553: $88
	ld   [hl], a                                     ; $5554: $77
	add  a                                           ; $5555: $87
	ld   a, b                                        ; $5556: $78
	ld   [hl], a                                     ; $5557: $77
	ld   [hl], a                                     ; $5558: $77
	adc  c                                           ; $5559: $89
	add  a                                           ; $555a: $87
	add  a                                           ; $555b: $87
	ld   h, a                                        ; $555c: $67
	ld   h, [hl]                                     ; $555d: $66
	ld   h, [hl]                                     ; $555e: $66
	ld   a, b                                        ; $555f: $78
	adc  b                                           ; $5560: $88
	sbc  d                                           ; $5561: $9a
	xor  c                                           ; $5562: $a9
	adc  d                                           ; $5563: $8a
	xor  c                                           ; $5564: $a9
	adc  d                                           ; $5565: $8a
	sbc  c                                           ; $5566: $99
	halt                                             ; $5567: $76
	ld   d, h                                        ; $5568: $54
	ld   hl, $3711                                   ; $5569: $21 $11 $37
	adc  h                                           ; $556c: $8c
	rst  $28                                         ; $556d: $ef
	rst  $38                                         ; $556e: $ff
	db   $fc                                         ; $556f: $fc
	xor  c                                           ; $5570: $a9
	xor  d                                           ; $5571: $aa
	xor  d                                           ; $5572: $aa
	sub  [hl]                                        ; $5573: $96
	ld   sp, $1111                                   ; $5574: $31 $11 $11
	cp   a                                           ; $5577: $bf
	rst  $38                                         ; $5578: $ff
	rst  $38                                         ; $5579: $ff
	ld   sp, hl                                      ; $557a: $f9
	sub  [hl]                                        ; $557b: $96
	ld   a, c                                        ; $557c: $79
	rst  JumpTable                                         ; $557d: $df
	reti                                             ; $557e: $d9


	ld   b, d                                        ; $557f: $42
	ld   de, $1611                                   ; $5580: $11 $11 $16
	rst  $38                                         ; $5583: $ff
	rst  $38                                         ; $5584: $ff
	rst  $38                                         ; $5585: $ff
	and  [hl]                                        ; $5586: $a6
	add  hl, sp                                      ; $5587: $39
	cp   a                                           ; $5588: $bf
	rst  $38                                         ; $5589: $ff
	call nc, $1111                                   ; $558a: $d4 $11 $11
	jr   @+$01                                       ; $558d: $18 $ff

	rst  $38                                         ; $558f: $ff
	rst  $38                                         ; $5590: $ff
	or   d                                           ; $5591: $b2
	inc  de                                          ; $5592: $13
	sbc  l                                           ; $5593: $9d
	rst  $38                                         ; $5594: $ff
	push af                                          ; $5595: $f5
	ld   de, $1111                                   ; $5596: $11 $11 $11
	rst  $38                                         ; $5599: $ff
	rst  $38                                         ; $559a: $ff
	rst  $38                                         ; $559b: $ff
	ld   h, c                                        ; $559c: $61
	ld   de, $ff9c                                   ; $559d: $11 $9c $ff
	pop  af                                          ; $55a0: $f1
	ld   de, $1411                                   ; $55a1: $11 $11 $14
	rst  $38                                         ; $55a4: $ff
	rst  $38                                         ; $55a5: $ff
	rst  $38                                         ; $55a6: $ff
	ld   de, rAUD1LEN                                   ; $55a7: $11 $11 $ff
	rst  $38                                         ; $55aa: $ff
	pop  de                                          ; $55ab: $d1
	ld   de, $1611                                   ; $55ac: $11 $11 $16
	rst  $38                                         ; $55af: $ff
	rst  $38                                         ; $55b0: $ff
	db   $fc                                         ; $55b1: $fc
	ld   de, $ff15                                   ; $55b2: $11 $15 $ff
	rst  $38                                         ; $55b5: $ff
	pop  bc                                          ; $55b6: $c1
	ld   de, $1b11                                   ; $55b7: $11 $11 $1b
	rst  $38                                         ; $55ba: $ff
	rst  $38                                         ; $55bb: $ff
	ld   sp, hl                                      ; $55bc: $f9
	ld   de, $ff19                                   ; $55bd: $11 $19 $ff
	rst  $38                                         ; $55c0: $ff
	ld   b, c                                        ; $55c1: $41
	ld   de, $1d11                                   ; $55c2: $11 $11 $1d
	rst  $38                                         ; $55c5: $ff
	rst  $38                                         ; $55c6: $ff
	pop  hl                                          ; $55c7: $e1
	ld   de, $ff1d                                   ; $55c8: $11 $1d $ff
	rst  $38                                         ; $55cb: $ff
	ld   de, $1111                                   ; $55cc: $11 $11 $11
	rra                                              ; $55cf: $1f
	rst  $38                                         ; $55d0: $ff
	rst  $38                                         ; $55d1: $ff
	and  c                                           ; $55d2: $a1
	ld   de, $ff4f                                   ; $55d3: $11 $4f $ff
	ei                                               ; $55d6: $fb
	ld   de, $1111                                   ; $55d7: $11 $11 $11
	rrca                                             ; $55da: $0f
	rst  $38                                         ; $55db: $ff
	rst  $38                                         ; $55dc: $ff
	ld   h, c                                        ; $55dd: $61
	ld   de, $ff6f                                   ; $55de: $11 $6f $ff
	rst  $30                                         ; $55e1: $f7
	ld   de, $1111                                   ; $55e2: $11 $11 $11
	rra                                              ; $55e5: $1f
	rst  $38                                         ; $55e6: $ff
	rst  $38                                         ; $55e7: $ff
	ld   de, $cf13                                   ; $55e8: $11 $13 $cf
	rst  $38                                         ; $55eb: $ff
	pop  af                                          ; $55ec: $f1
	ld   de, $1111                                   ; $55ed: $11 $11 $11
	rra                                              ; $55f0: $1f
	rst  $38                                         ; $55f1: $ff
	rst  $38                                         ; $55f2: $ff
	ld   de, rAUD1HIGH                                   ; $55f3: $11 $14 $ff
	rst  $38                                         ; $55f6: $ff
	ldh  a, [c]                                      ; $55f7: $f2
	ld   de, $1111                                   ; $55f8: $11 $11 $11
	rla                                              ; $55fb: $17
	rst  $38                                         ; $55fc: $ff
	rst  $38                                         ; $55fd: $ff
	ld   d, c                                        ; $55fe: $51
	rla                                              ; $55ff: $17
	rst  $38                                         ; $5600: $ff
	rst  $38                                         ; $5601: $ff
	rst  $20                                         ; $5602: $e7
	ld   de, $1111                                   ; $5603: $11 $11 $11
	ld   de, $ffff                                   ; $5606: $11 $ff $ff
	and  c                                           ; $5609: $a1
	ld   de, $ffef                                   ; $560a: $11 $ef $ff
	ld   hl, sp+$11                                  ; $560d: $f8 $11
	ld   de, $2123                                   ; $560f: $11 $23 $21
	rra                                              ; $5612: $1f
	rst  $38                                         ; $5613: $ff
	pop  hl                                          ; $5614: $e1
	ld   de, $ff8f                                   ; $5615: $11 $8f $ff
	ei                                               ; $5618: $fb
	ld   de, $5511                                   ; $5619: $11 $11 $55
	ld   de, rAUD1HIGH                                   ; $561c: $11 $14 $ff
	push af                                          ; $561f: $f5
	ld   de, $ff1f                                   ; $5620: $11 $1f $ff
	db   $fc                                         ; $5623: $fc
	ld   hl, $7f11                                   ; $5624: $21 $11 $7f
	ld   [hl], c                                     ; $5627: $71
	ld   de, $ff1f                                   ; $5628: $11 $1f $ff
	ld   [hl], c                                     ; $562b: $71
	ld   de, $ffcf                                   ; $562c: $11 $cf $ff
	pop  bc                                          ; $562f: $c1
	ld   de, $ff1a                                   ; $5630: $11 $1a $ff
	ld   hl, rAUD1LEN                                   ; $5633: $21 $11 $ff
	or   $11                                         ; $5636: $f6 $11
	jr   @+$01                                       ; $5638: $18 $ff

	ld   a, [$1111]                                  ; $563a: $fa $11 $11
	rst  $38                                         ; $563d: $ff
	di                                               ; $563e: $f3
	ld   de, $ff1f                                   ; $563f: $11 $1f $ff
	sub  c                                           ; $5642: $91
	ld   de, $ff4f                                   ; $5643: $11 $4f $ff
	pop  af                                          ; $5646: $f1
	ld   de, $ff1b                                   ; $5647: $11 $1b $ff
	pop  de                                          ; $564a: $d1
	ld   de, $ff1f                                   ; $564b: $11 $1f $ff
	ld   de, $cf11                                   ; $564e: $11 $11 $cf
	rst  $38                                         ; $5651: $ff
	and  c                                           ; $5652: $a1

jr_0d5_5653:
	ld   de, $ff2f                                   ; $5653: $11 $2f $ff
	ld   h, c                                        ; $5656: $61
	ld   de, $feff                                   ; $5657: $11 $ff $fe
	ld   de, rAUD1LEN                                   ; $565a: $11 $11 $ff
	rst  $38                                         ; $565d: $ff
	ld   de, $bf11                                   ; $565e: $11 $11 $bf
	rst  $38                                         ; $5661: $ff
	ld   b, c                                        ; $5662: $41
	ld   de, $ff1f                                   ; $5663: $11 $1f $ff
	ld   sp, $2f11                                   ; $5666: $31 $11 $2f
	rst  $38                                         ; $5669: $ff
	pop  af                                          ; $566a: $f1
	ld   de, $ff1f                                   ; $566b: $11 $1f $ff
	pop  af                                          ; $566e: $f1
	ld   de, $ff1f                                   ; $566f: $11 $1f $ff
	ld   [hl], c                                     ; $5672: $71
	ld   de, $ff1f                                   ; $5673: $11 $1f $ff
	pop  af                                          ; $5676: $f1
	ld   de, $ff19                                   ; $5677: $11 $19 $ff
	db   $f4                                         ; $567a: $f4
	ld   de, $cf11                                   ; $567b: $11 $11 $cf
	rst  $38                                         ; $567e: $ff
	pop  af                                          ; $567f: $f1
	ld   de, $ff5f                                   ; $5680: $11 $5f $ff
	db   $f4                                         ; $5683: $f4
	ld   de, $ff19                                   ; $5684: $11 $19 $ff
	db   $e3                                         ; $5687: $e3
	ld   de, rAUD1LEN                                   ; $5688: $11 $11 $ff
	pop  af                                          ; $568b: $f1
	ld   de, $ff1f                                   ; $568c: $11 $1f $ff
	cp   $11                                         ; $568f: $fe $11
	inc  de                                          ; $5691: $13
	rst  $38                                         ; $5692: $ff
	db   $fc                                         ; $5693: $fc
	ld   de, $4d11                                   ; $5694: $11 $11 $4d
	or   h                                           ; $5697: $b4
	ld   de, $21ff                                   ; $5698: $11 $ff $21
	ld   de, $fdff                                   ; $569b: $11 $ff $fd
	add  e                                           ; $569e: $83
	ld   de, $ff7f                                   ; $569f: $11 $7f $ff
	sub  l                                           ; $56a2: $95
	dec  [hl]                                        ; $56a3: $35
	ld   de, rAUD1LEN                                   ; $56a4: $11 $11 $ff
	add  c                                           ; $56a7: $81
	ld   de, $ff8f                                   ; $56a8: $11 $8f $ff
	db   $fc                                         ; $56ab: $fc
	ld   de, $ff19                                   ; $56ac: $11 $19 $ff
	or   $11                                         ; $56af: $f6 $11
	ld   de, $f7ef                                   ; $56b1: $11 $ef $f7
	ld   de, $7f11                                   ; $56b4: $11 $11 $7f
	db   $fd                                         ; $56b7: $fd
	ld   h, c                                        ; $56b8: $61
	inc  d                                           ; $56b9: $14
	rst  JumpTable                                         ; $56ba: $df
	rst  $38                                         ; $56bb: $ff
	ld   sp, $af12                                   ; $56bc: $31 $12 $af
	rst  $38                                         ; $56bf: $ff
	ld   h, c                                        ; $56c0: $61
	ld   de, $81ae                                   ; $56c1: $11 $ae $81
	rra                                              ; $56c4: $1f
	db   $f4                                         ; $56c5: $f4
	ld   de, $ff1f                                   ; $56c6: $11 $1f $ff

Call_0d5_56c9:
	db   $fd                                         ; $56c9: $fd
	ld   d, c                                        ; $56ca: $51
	ld   de, $f9cf                                   ; $56cb: $11 $cf $f9
	ld   b, c                                        ; $56ce: $41
	ld   b, c                                        ; $56cf: $41
	jr   z, jr_0d5_5653                              ; $56d0: $28 $81

	ld   a, a                                        ; $56d2: $7f
	push af                                          ; $56d3: $f5
	ld   de, $ff18                                   ; $56d4: $11 $18 $ff
	call nz, $1911                                   ; $56d7: $c4 $11 $19
	rst  $38                                         ; $56da: $ff
	ld   sp, hl                                      ; $56db: $f9
	ld   de, rAUD1HIGH                                   ; $56dc: $11 $14 $ff
	rst  $38                                         ; $56df: $ff
	ld   de, $cf12                                   ; $56e0: $11 $12 $cf
	rst  $30                                         ; $56e3: $f7
	ei                                               ; $56e4: $fb
	ld   de, $ff1a                                   ; $56e5: $11 $1a $ff
	push af                                          ; $56e8: $f5
	ld   de, rAUD1ENV                                   ; $56e9: $11 $12 $ff
	rst  $38                                         ; $56ec: $ff
	ld   hl, $9e14                                   ; $56ed: $21 $14 $9e
	xor  b                                           ; $56f0: $a8
	sbc  d                                           ; $56f1: $9a
	adc  c                                           ; $56f2: $89
	and  l                                           ; $56f3: $a5
	ld   d, h                                        ; $56f4: $54
	ld   b, c                                        ; $56f5: $41
	rra                                              ; $56f6: $1f
	db   $fc                                         ; $56f7: $fc
	ld   de, $ff1b                                   ; $56f8: $11 $1b $ff
	db   $fc                                         ; $56fb: $fc
	add  c                                           ; $56fc: $81
	ld   de, $ff6f                                   ; $56fd: $11 $6f $ff
	ld   [hl], d                                     ; $5700: $72
	ld   [bc], a                                     ; $5701: $02
	ld   e, c                                        ; $5702: $59
	rst  $38                                         ; $5703: $ff
	pop  de                                          ; $5704: $d1
	ld   a, [de]                                     ; $5705: $1a
	ld   a, [hl+]                                    ; $5706: $2a
	ld   d, e                                        ; $5707: $53
	xor  d                                           ; $5708: $aa
	ld   a, [$1821]                                  ; $5709: $fa $21 $18
	adc  $ed                                         ; $570c: $ce $ed
	ld   h, h                                        ; $570e: $64
	inc  de                                          ; $570f: $13
	ld   a, e                                        ; $5710: $7b
	ret  c                                           ; $5711: $d8

	cp   a                                           ; $5712: $bf
	sub  c                                           ; $5713: $91
	ld   de, $feac                                   ; $5714: $11 $ac $fe
	ld   h, h                                        ; $5717: $64
	ld   d, e                                        ; $5718: $53
	daa                                              ; $5719: $27
	xor  a                                           ; $571a: $af
	add  sp, $21                                     ; $571b: $e8 $21
	ld   a, b                                        ; $571d: $78
	xor  e                                           ; $571e: $ab
	cp   e                                           ; $571f: $bb
	rst  $30                                         ; $5720: $f7
	ld   de, $ff1f                                   ; $5721: $11 $1f $ff
	ld   b, c                                        ; $5724: $41
	inc  de                                          ; $5725: $13
	call z, $c7fe                                    ; $5726: $cc $fe $c7
	ld   de, $ff2c                                   ; $5729: $11 $2c $ff
	or   a                                           ; $572c: $b7
	ld   d, e                                        ; $572d: $53
	dec  [hl]                                        ; $572e: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $572f: $cf
	ld   sp, hl                                      ; $5730: $f9
	ld   b, d                                        ; $5731: $42
	ld   h, $9c                                      ; $5732: $26 $9c
	db   $dd                                         ; $5734: $dd
	and  h                                           ; $5735: $a4
	inc  sp                                          ; $5736: $33
	ld   l, c                                        ; $5737: $69
	cp   h                                           ; $5738: $bc
	cp   b                                           ; $5739: $b8
	ld   h, e                                        ; $573a: $63
	ld   l, d                                        ; $573b: $6a
	sbc  d                                           ; $573c: $9a
	sbc  b                                           ; $573d: $98
	add  [hl]                                        ; $573e: $86
	ld   h, a                                        ; $573f: $67
	ld   a, d                                        ; $5740: $7a
	xor  c                                           ; $5741: $a9
	add  [hl]                                        ; $5742: $86
	ld   h, a                                        ; $5743: $67
	adc  c                                           ; $5744: $89
	sbc  b                                           ; $5745: $98
	sbc  b                                           ; $5746: $98
	halt                                             ; $5747: $76
	ld   a, c                                        ; $5748: $79
	sbc  c                                           ; $5749: $99
	sbc  c                                           ; $574a: $99
	add  a                                           ; $574b: $87
	ld   [hl], a                                     ; $574c: $77
	adc  d                                           ; $574d: $8a
	add  a                                           ; $574e: $87
	ld   h, a                                        ; $574f: $67
	adc  b                                           ; $5750: $88
	sbc  c                                           ; $5751: $99
	adc  b                                           ; $5752: $88
	add  [hl]                                        ; $5753: $86
	ld   l, b                                        ; $5754: $68
	sbc  d                                           ; $5755: $9a
	sbc  b                                           ; $5756: $98
	sub  a                                           ; $5757: $97
	ld   [hl], a                                     ; $5758: $77
	adc  c                                           ; $5759: $89
	adc  b                                           ; $575a: $88
	add  a                                           ; $575b: $87
	ld   [hl], a                                     ; $575c: $77
	adc  c                                           ; $575d: $89
	adc  b                                           ; $575e: $88
	add  a                                           ; $575f: $87
	ld   [hl], a                                     ; $5760: $77
	ld   a, c                                        ; $5761: $79
	xor  d                                           ; $5762: $aa
	add  a                                           ; $5763: $87
	ld   [hl], a                                     ; $5764: $77
	ld   a, b                                        ; $5765: $78
	adc  c                                           ; $5766: $89
	sbc  c                                           ; $5767: $99
	ld   [hl], a                                     ; $5768: $77
	ld   a, b                                        ; $5769: $78
	adc  c                                           ; $576a: $89
	sbc  c                                           ; $576b: $99
	add  a                                           ; $576c: $87
	ld   [hl], a                                     ; $576d: $77
	adc  b                                           ; $576e: $88
	sub  a                                           ; $576f: $97
	ld   a, b                                        ; $5770: $78
	adc  b                                           ; $5771: $88
	ld   [hl], a                                     ; $5772: $77
	adc  c                                           ; $5773: $89
	sub  a                                           ; $5774: $97
	ld   [hl], a                                     ; $5775: $77
	sbc  c                                           ; $5776: $99
	adc  b                                           ; $5777: $88
	adc  c                                           ; $5778: $89
	sbc  b                                           ; $5779: $98
	add  a                                           ; $577a: $87
	ld   a, b                                        ; $577b: $78
	sbc  b                                           ; $577c: $98
	sbc  c                                           ; $577d: $99
	adc  b                                           ; $577e: $88
	ld   [hl], a                                     ; $577f: $77
	ld   a, b                                        ; $5780: $78
	adc  c                                           ; $5781: $89
	adc  b                                           ; $5782: $88
	adc  c                                           ; $5783: $89
	adc  b                                           ; $5784: $88
	add  a                                           ; $5785: $87
	ld   a, c                                        ; $5786: $79
	add  a                                           ; $5787: $87
	adc  b                                           ; $5788: $88
	adc  c                                           ; $5789: $89
	adc  b                                           ; $578a: $88
	ld   [hl], a                                     ; $578b: $77
	ld   a, b                                        ; $578c: $78
	adc  c                                           ; $578d: $89
	sbc  c                                           ; $578e: $99
	add  a                                           ; $578f: $87
	ld   [hl], a                                     ; $5790: $77
	adc  c                                           ; $5791: $89
	sbc  b                                           ; $5792: $98
	add  a                                           ; $5793: $87
	ld   [hl], a                                     ; $5794: $77
	adc  b                                           ; $5795: $88
	adc  c                                           ; $5796: $89

Jump_0d5_5797:
	ld   [hl], a                                     ; $5797: $77
	ld   a, b                                        ; $5798: $78
	adc  b                                           ; $5799: $88
	sbc  b                                           ; $579a: $98
	add  a                                           ; $579b: $87
	ld   [hl], a                                     ; $579c: $77
	adc  b                                           ; $579d: $88
	sbc  c                                           ; $579e: $99
	adc  c                                           ; $579f: $89
	ld   [hl], a                                     ; $57a0: $77
	ld   a, b                                        ; $57a1: $78
	sbc  c                                           ; $57a2: $99
	sbc  b                                           ; $57a3: $98
	ld   [hl], a                                     ; $57a4: $77
	ld   a, b                                        ; $57a5: $78
	sbc  b                                           ; $57a6: $98
	adc  b                                           ; $57a7: $88
	add  a                                           ; $57a8: $87
	ld   [hl], a                                     ; $57a9: $77
	adc  c                                           ; $57aa: $89
	sbc  c                                           ; $57ab: $99
	ld   [hl], a                                     ; $57ac: $77
	ld   a, b                                        ; $57ad: $78
	add  a                                           ; $57ae: $87
	adc  b                                           ; $57af: $88
	adc  b                                           ; $57b0: $88
	ld   [hl], a                                     ; $57b1: $77
	ld   a, b                                        ; $57b2: $78
	sbc  c                                           ; $57b3: $99
	sbc  b                                           ; $57b4: $98
	ld   [hl], a                                     ; $57b5: $77
	ld   a, b                                        ; $57b6: $78
	adc  b                                           ; $57b7: $88
	adc  b                                           ; $57b8: $88
	adc  b                                           ; $57b9: $88
	add  a                                           ; $57ba: $87
	adc  c                                           ; $57bb: $89
	adc  b                                           ; $57bc: $88
	ld   [hl], a                                     ; $57bd: $77
	adc  b                                           ; $57be: $88
	adc  b                                           ; $57bf: $88
	ld   a, b                                        ; $57c0: $78
	adc  b                                           ; $57c1: $88
	add  a                                           ; $57c2: $87
	adc  b                                           ; $57c3: $88
	sbc  c                                           ; $57c4: $99
	add  a                                           ; $57c5: $87
	ld   [hl], a                                     ; $57c6: $77
	sbc  b                                           ; $57c7: $98
	sbc  b                                           ; $57c8: $98
	add  a                                           ; $57c9: $87
	ld   a, b                                        ; $57ca: $78
	adc  b                                           ; $57cb: $88
	adc  b                                           ; $57cc: $88
	add  a                                           ; $57cd: $87
	adc  b                                           ; $57ce: $88
	adc  b                                           ; $57cf: $88
	adc  b                                           ; $57d0: $88
	adc  b                                           ; $57d1: $88
	adc  b                                           ; $57d2: $88
	sbc  b                                           ; $57d3: $98
	add  a                                           ; $57d4: $87
	ld   a, b                                        ; $57d5: $78
	adc  b                                           ; $57d6: $88
	adc  b                                           ; $57d7: $88
	ld   [hl], a                                     ; $57d8: $77
	adc  b                                           ; $57d9: $88
	adc  b                                           ; $57da: $88
	adc  b                                           ; $57db: $88
	adc  b                                           ; $57dc: $88
	adc  b                                           ; $57dd: $88
	adc  b                                           ; $57de: $88
	adc  c                                           ; $57df: $89
	adc  b                                           ; $57e0: $88
	adc  b                                           ; $57e1: $88
	adc  c                                           ; $57e2: $89
	adc  b                                           ; $57e3: $88
	adc  b                                           ; $57e4: $88
	adc  b                                           ; $57e5: $88
	adc  b                                           ; $57e6: $88
	adc  b                                           ; $57e7: $88
	adc  b                                           ; $57e8: $88
	adc  b                                           ; $57e9: $88
	ld   a, b                                        ; $57ea: $78
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
	ld   de, $1111                                   ; $57f6: $11 $11 $11
	ld   de, $1111                                   ; $57f9: $11 $11 $11
	ld   de, $1111                                   ; $57fc: $11 $11 $11
	ld   de, $1111                                   ; $57ff: $11 $11 $11
	ld   de, $1111                                   ; $5802: $11 $11 $11
	ld   de, $1111                                   ; $5805: $11 $11 $11
	ld   de, $1111                                   ; $5808: $11 $11 $11
	ld   de, $1111                                   ; $580b: $11 $11 $11
	ld   de, $1111                                   ; $580e: $11 $11 $11
	ld   de, $1111                                   ; $5811: $11 $11 $11
	ld   de, $1111                                   ; $5814: $11 $11 $11
	ld   de, $1111                                   ; $5817: $11 $11 $11
	ld   de, $1111                                   ; $581a: $11 $11 $11
	ld   de, $1111                                   ; $581d: $11 $11 $11
	ld   de, $1111                                   ; $5820: $11 $11 $11
	ld   de, $1111                                   ; $5823: $11 $11 $11
	ld   de, $1111                                   ; $5826: $11 $11 $11
	ld   de, $4800                                   ; $5829: $11 $00 $48
	ld   de, $1111                                   ; $582c: $11 $11 $11
	ld   de, $1111                                   ; $582f: $11 $11 $11
	ld   de, $1111                                   ; $5832: $11 $11 $11
	ld   de, $5413                                   ; $5835: $11 $13 $54
	ld   d, h                                        ; $5838: $54
	ld   d, h                                        ; $5839: $54
	ld   b, c                                        ; $583a: $41
	rra                                              ; $583b: $1f
	rst  $38                                         ; $583c: $ff
	pop  af                                          ; $583d: $f1
	ld   de, $1411                                   ; $583e: $11 $11 $14
	ld   d, c                                        ; $5841: $51
	ld   de, $df1c                                   ; $5842: $11 $1c $df
	adc  h                                           ; $5845: $8c
	rst  JumpTable                                         ; $5846: $df
	add  c                                           ; $5847: $81
	ld   de, $1111                                   ; $5848: $11 $11 $11
	ld   de, $1111                                   ; $584b: $11 $11 $11
	ld   de, $1111                                   ; $584e: $11 $11 $11
	ld   de, $1111                                   ; $5851: $11 $11 $11
	ld   de, $5411                                   ; $5854: $11 $11 $54
	ld   b, h                                        ; $5857: $44
	ld   b, h                                        ; $5858: $44
	ld   de, $5454                                   ; $5859: $11 $54 $54
	ld   h, a                                        ; $585c: $67
	ld   [hl], d                                     ; $585d: $72
	ld   de, $1111                                   ; $585e: $11 $11 $11
	ld   de, $1112                                   ; $5861: $11 $12 $11
	ld   [de], a                                     ; $5864: $12
	ld   de, $1111                                   ; $5865: $11 $11 $11
	ld   h, [hl]                                     ; $5868: $66
	halt                                             ; $5869: $76
	inc  h                                           ; $586a: $24
	ld   de, $8888                                   ; $586b: $11 $88 $88
	adc  b                                           ; $586e: $88
	adc  b                                           ; $586f: $88
	adc  b                                           ; $5870: $88
	adc  b                                           ; $5871: $88
	adc  b                                           ; $5872: $88
	adc  b                                           ; $5873: $88
	adc  b                                           ; $5874: $88
	adc  b                                           ; $5875: $88
	adc  b                                           ; $5876: $88
	adc  b                                           ; $5877: $88
	adc  b                                           ; $5878: $88
	adc  b                                           ; $5879: $88
	adc  b                                           ; $587a: $88
	adc  b                                           ; $587b: $88
	adc  b                                           ; $587c: $88
	adc  b                                           ; $587d: $88
	adc  b                                           ; $587e: $88
	adc  b                                           ; $587f: $88
	adc  b                                           ; $5880: $88
	adc  b                                           ; $5881: $88
	adc  b                                           ; $5882: $88
	adc  b                                           ; $5883: $88
	adc  b                                           ; $5884: $88
	adc  b                                           ; $5885: $88
	adc  b                                           ; $5886: $88
	adc  b                                           ; $5887: $88
	adc  b                                           ; $5888: $88
	adc  b                                           ; $5889: $88
	adc  b                                           ; $588a: $88
	adc  b                                           ; $588b: $88
	adc  c                                           ; $588c: $89
	adc  b                                           ; $588d: $88
	adc  b                                           ; $588e: $88
	adc  b                                           ; $588f: $88
	adc  b                                           ; $5890: $88
	adc  b                                           ; $5891: $88
	adc  b                                           ; $5892: $88
	adc  b                                           ; $5893: $88
	adc  b                                           ; $5894: $88
	adc  b                                           ; $5895: $88
	adc  b                                           ; $5896: $88
	adc  b                                           ; $5897: $88
	adc  b                                           ; $5898: $88
	adc  b                                           ; $5899: $88
	adc  b                                           ; $589a: $88
	adc  b                                           ; $589b: $88
	adc  b                                           ; $589c: $88
	adc  b                                           ; $589d: $88
	adc  b                                           ; $589e: $88
	adc  b                                           ; $589f: $88
	sbc  b                                           ; $58a0: $98
	adc  b                                           ; $58a1: $88
	adc  b                                           ; $58a2: $88
	adc  b                                           ; $58a3: $88
	adc  b                                           ; $58a4: $88
	adc  b                                           ; $58a5: $88
	adc  b                                           ; $58a6: $88
	adc  b                                           ; $58a7: $88
	adc  b                                           ; $58a8: $88
	sbc  b                                           ; $58a9: $98
	adc  b                                           ; $58aa: $88
	adc  b                                           ; $58ab: $88
	adc  b                                           ; $58ac: $88
	adc  b                                           ; $58ad: $88
	adc  b                                           ; $58ae: $88
	sbc  b                                           ; $58af: $98
	adc  b                                           ; $58b0: $88
	adc  b                                           ; $58b1: $88
	adc  c                                           ; $58b2: $89
	adc  b                                           ; $58b3: $88
	adc  b                                           ; $58b4: $88
	sub  a                                           ; $58b5: $97
	adc  b                                           ; $58b6: $88
	adc  b                                           ; $58b7: $88
	adc  b                                           ; $58b8: $88
	adc  b                                           ; $58b9: $88
	adc  b                                           ; $58ba: $88
	ld   a, b                                        ; $58bb: $78
	add  a                                           ; $58bc: $87
	adc  c                                           ; $58bd: $89
	adc  b                                           ; $58be: $88
	sbc  b                                           ; $58bf: $98
	ld   a, c                                        ; $58c0: $79
	ld   a, c                                        ; $58c1: $79
	add  a                                           ; $58c2: $87
	sub  a                                           ; $58c3: $97
	adc  b                                           ; $58c4: $88
	add  a                                           ; $58c5: $87
	adc  b                                           ; $58c6: $88
	ld   a, b                                        ; $58c7: $78
	adc  b                                           ; $58c8: $88
	adc  b                                           ; $58c9: $88
	add  a                                           ; $58ca: $87
	sub  a                                           ; $58cb: $97
	sbc  b                                           ; $58cc: $98
	ld   a, b                                        ; $58cd: $78
	add  a                                           ; $58ce: $87
	add  a                                           ; $58cf: $87
	adc  c                                           ; $58d0: $89
	ld   a, c                                        ; $58d1: $79
	adc  b                                           ; $58d2: $88
	ld   a, c                                        ; $58d3: $79
	adc  b                                           ; $58d4: $88
	sub  a                                           ; $58d5: $97
	add  a                                           ; $58d6: $87
	adc  b                                           ; $58d7: $88
	ld   a, c                                        ; $58d8: $79
	ld   a, b                                        ; $58d9: $78
	adc  b                                           ; $58da: $88
	adc  b                                           ; $58db: $88
	ld   a, b                                        ; $58dc: $78
	add  a                                           ; $58dd: $87
	adc  b                                           ; $58de: $88
	add  a                                           ; $58df: $87
	adc  b                                           ; $58e0: $88
	ld   a, b                                        ; $58e1: $78
	adc  b                                           ; $58e2: $88
	adc  b                                           ; $58e3: $88
	ld   a, b                                        ; $58e4: $78
	adc  b                                           ; $58e5: $88
	adc  b                                           ; $58e6: $88
	add  a                                           ; $58e7: $87
	add  a                                           ; $58e8: $87
	add  a                                           ; $58e9: $87
	adc  b                                           ; $58ea: $88
	adc  b                                           ; $58eb: $88
	ld   a, c                                        ; $58ec: $79
	ld   l, c                                        ; $58ed: $69
	ld   a, b                                        ; $58ee: $78
	sub  a                                           ; $58ef: $97
	and  [hl]                                        ; $58f0: $a6
	sub  a                                           ; $58f1: $97
	add  a                                           ; $58f2: $87
	adc  c                                           ; $58f3: $89
	adc  b                                           ; $58f4: $88
	ld   a, c                                        ; $58f5: $79
	ld   a, d                                        ; $58f6: $7a
	ld   a, b                                        ; $58f7: $78
	sub  [hl]                                        ; $58f8: $96
	and  [hl]                                        ; $58f9: $a6
	sub  a                                           ; $58fa: $97
	adc  c                                           ; $58fb: $89
	ld   l, c                                        ; $58fc: $69
	ld   [hl], a                                     ; $58fd: $77
	sub  a                                           ; $58fe: $97
	sub  a                                           ; $58ff: $97
	sub  a                                           ; $5900: $97
	ld   a, d                                        ; $5901: $7a
	ld   l, c                                        ; $5902: $69
	ld   l, d                                        ; $5903: $6a
	ld   a, b                                        ; $5904: $78
	add  a                                           ; $5905: $87
	sub  [hl]                                        ; $5906: $96
	and  l                                           ; $5907: $a5
	and  a                                           ; $5908: $a7
	ld   a, b                                        ; $5909: $78
	adc  b                                           ; $590a: $88
	ld   l, d                                        ; $590b: $6a
	ld   l, c                                        ; $590c: $69
	ld   a, b                                        ; $590d: $78
	ld   a, b                                        ; $590e: $78
	sub  a                                           ; $590f: $97
	sub  [hl]                                        ; $5910: $96
	sub  [hl]                                        ; $5911: $96
	adc  b                                           ; $5912: $88
	ld   a, c                                        ; $5913: $79
	ld   l, c                                        ; $5914: $69
	ld   a, c                                        ; $5915: $79
	ld   a, b                                        ; $5916: $78
	ld   a, c                                        ; $5917: $79
	add  a                                           ; $5918: $87
	sub  a                                           ; $5919: $97
	sub  a                                           ; $591a: $97
	sub  a                                           ; $591b: $97
	adc  b                                           ; $591c: $88
	adc  c                                           ; $591d: $89
	ld   a, c                                        ; $591e: $79
	adc  b                                           ; $591f: $88
	ld   a, c                                        ; $5920: $79
	ld   a, c                                        ; $5921: $79
	add  a                                           ; $5922: $87
	sub  a                                           ; $5923: $97
	add  a                                           ; $5924: $87
	sub  [hl]                                        ; $5925: $96
	adc  b                                           ; $5926: $88
	adc  b                                           ; $5927: $88
	ld   l, c                                        ; $5928: $69
	ld   a, c                                        ; $5929: $79
	ld   [hl], a                                     ; $592a: $77
	ld   a, c                                        ; $592b: $79
	ld   [hl], a                                     ; $592c: $77
	sub  [hl]                                        ; $592d: $96
	and  [hl]                                        ; $592e: $a6
	sbc  b                                           ; $592f: $98
	ld   a, b                                        ; $5930: $78
	ld   a, c                                        ; $5931: $79
	ld   l, c                                        ; $5932: $69
	sub  a                                           ; $5933: $97
	ld   a, b                                        ; $5934: $78
	ld   a, b                                        ; $5935: $78
	sbc  b                                           ; $5936: $98
	ld   a, b                                        ; $5937: $78
	add  a                                           ; $5938: $87
	and  [hl]                                        ; $5939: $a6
	or   [hl]                                        ; $593a: $b6
	sbc  b                                           ; $593b: $98
	ld   l, e                                        ; $593c: $6b
	ld   l, d                                        ; $593d: $6a
	ld   l, c                                        ; $593e: $69
	ld   [hl], a                                     ; $593f: $77
	and  l                                           ; $5940: $a5
	or   [hl]                                        ; $5941: $b6
	sub  a                                           ; $5942: $97
	and  a                                           ; $5943: $a7
	ld   a, d                                        ; $5944: $7a
	ld   e, d                                        ; $5945: $5a
	ld   l, c                                        ; $5946: $69
	ld   [hl], a                                     ; $5947: $77
	sub  a                                           ; $5948: $97
	and  a                                           ; $5949: $a7
	sbc  b                                           ; $594a: $98
	sub  a                                           ; $594b: $97
	adc  b                                           ; $594c: $88
	adc  b                                           ; $594d: $88
	ld   a, b                                        ; $594e: $78
	adc  c                                           ; $594f: $89
	ld   l, d                                        ; $5950: $6a
	ld   a, b                                        ; $5951: $78
	add  a                                           ; $5952: $87
	and  l                                           ; $5953: $a5
	or   [hl]                                        ; $5954: $b6
	adc  b                                           ; $5955: $88
	ld   a, d                                        ; $5956: $7a
	ld   l, d                                        ; $5957: $6a
	ld   a, c                                        ; $5958: $79
	ld   a, b                                        ; $5959: $78
	adc  c                                           ; $595a: $89
	adc  c                                           ; $595b: $89
	sub  [hl]                                        ; $595c: $96
	sub  a                                           ; $595d: $97
	sbc  b                                           ; $595e: $98
	ld   a, c                                        ; $595f: $79
	add  a                                           ; $5960: $87
	sub  a                                           ; $5961: $97
	sub  a                                           ; $5962: $97
	sbc  b                                           ; $5963: $98
	ld   a, c                                        ; $5964: $79
	ld   l, d                                        ; $5965: $6a
	ld   l, c                                        ; $5966: $69
	ld   a, b                                        ; $5967: $78
	sub  l                                           ; $5968: $95
	and  [hl]                                        ; $5969: $a6
	adc  b                                           ; $596a: $88
	adc  c                                           ; $596b: $89
	ld   a, c                                        ; $596c: $79
	ld   a, c                                        ; $596d: $79
	ld   a, c                                        ; $596e: $79
	ld   a, b                                        ; $596f: $78
	sub  [hl]                                        ; $5970: $96
	or   l                                           ; $5971: $b5
	and  a                                           ; $5972: $a7
	ld   a, d                                        ; $5973: $7a
	ld   e, e                                        ; $5974: $5b
	ld   l, b                                        ; $5975: $68
	sub  a                                           ; $5976: $97
	sub  a                                           ; $5977: $97
	and  [hl]                                        ; $5978: $a6
	sub  a                                           ; $5979: $97
	sub  a                                           ; $597a: $97
	adc  b                                           ; $597b: $88
	adc  c                                           ; $597c: $89
	ld   a, e                                        ; $597d: $7b
	ld   e, e                                        ; $597e: $5b
	ld   [hl], a                                     ; $597f: $77
	or   l                                           ; $5980: $b5
	and  a                                           ; $5981: $a7
	adc  b                                           ; $5982: $88
	ld   l, e                                        ; $5983: $6b
	ld   l, b                                        ; $5984: $68
	sub  a                                           ; $5985: $97
	and  l                                           ; $5986: $a5
	and  a                                           ; $5987: $a7
	ld   a, b                                        ; $5988: $78
	sbc  c                                           ; $5989: $99
	ld   l, e                                        ; $598a: $6b
	ld   e, c                                        ; $598b: $59
	ld   [hl], a                                     ; $598c: $77
	sub  a                                           ; $598d: $97
	sub  a                                           ; $598e: $97
	sub  a                                           ; $598f: $97
	sub  a                                           ; $5990: $97
	adc  b                                           ; $5991: $88
	ld   a, c                                        ; $5992: $79
	ld   [hl], a                                     ; $5993: $77
	and  a                                           ; $5994: $a7
	adc  c                                           ; $5995: $89
	ld   a, d                                        ; $5996: $7a
	ld   e, h                                        ; $5997: $5c
	ld   l, c                                        ; $5998: $69
	add  a                                           ; $5999: $87
	and  h                                           ; $599a: $a4
	or   [hl]                                        ; $599b: $b6
	sub  a                                           ; $599c: $97
	sub  a                                           ; $599d: $97
	adc  b                                           ; $599e: $88
	ld   a, d                                        ; $599f: $7a
	ld   e, e                                        ; $59a0: $5b
	ld   l, b                                        ; $59a1: $68
	sbc  b                                           ; $59a2: $98
	ld   a, c                                        ; $59a3: $79
	sub  a                                           ; $59a4: $97
	sbc  c                                           ; $59a5: $99
	add  a                                           ; $59a6: $87
	add  a                                           ; $59a7: $87
	and  [hl]                                        ; $59a8: $a6
	and  a                                           ; $59a9: $a7
	sbc  b                                           ; $59aa: $98
	ld   a, c                                        ; $59ab: $79
	ld   l, c                                        ; $59ac: $69
	adc  b                                           ; $59ad: $88
	sub  a                                           ; $59ae: $97
	ld   a, d                                        ; $59af: $7a
	ld   a, b                                        ; $59b0: $78
	ld   a, b                                        ; $59b1: $78
	ld   a, b                                        ; $59b2: $78
	sub  a                                           ; $59b3: $97
	sub  a                                           ; $59b4: $97
	sub  [hl]                                        ; $59b5: $96
	and  a                                           ; $59b6: $a7
	ld   a, c                                        ; $59b7: $79
	ld   a, c                                        ; $59b8: $79
	ld   l, c                                        ; $59b9: $69
	adc  b                                           ; $59ba: $88
	sub  a                                           ; $59bb: $97
	adc  b                                           ; $59bc: $88
	ld   l, d                                        ; $59bd: $6a
	add  a                                           ; $59be: $87
	sub  a                                           ; $59bf: $97
	sub  [hl]                                        ; $59c0: $96
	sub  a                                           ; $59c1: $97
	sub  a                                           ; $59c2: $97
	adc  c                                           ; $59c3: $89
	ld   a, e                                        ; $59c4: $7b
	ld   c, e                                        ; $59c5: $4b
	ld   [hl], a                                     ; $59c6: $77
	sbc  b                                           ; $59c7: $98
	and  [hl]                                        ; $59c8: $a6
	and  [hl]                                        ; $59c9: $a6
	xor  b                                           ; $59ca: $a8
	adc  c                                           ; $59cb: $89
	ld   a, b                                        ; $59cc: $78
	sub  a                                           ; $59cd: $97
	adc  d                                           ; $59ce: $8a
	ld   e, e                                        ; $59cf: $5b
	ld   l, c                                        ; $59d0: $69
	sub  a                                           ; $59d1: $97
	and  [hl]                                        ; $59d2: $a6
	and  [hl]                                        ; $59d3: $a6
	sub  a                                           ; $59d4: $97
	sub  a                                           ; $59d5: $97
	sbc  c                                           ; $59d6: $99
	ld   l, c                                        ; $59d7: $69
	ld   l, b                                        ; $59d8: $68
	ld   a, d                                        ; $59d9: $7a
	ld   a, b                                        ; $59da: $78
	add  a                                           ; $59db: $87
	and  [hl]                                        ; $59dc: $a6
	xor  b                                           ; $59dd: $a8
	add  a                                           ; $59de: $87
	sbc  c                                           ; $59df: $99
	ld   l, d                                        ; $59e0: $6a
	ld   [hl], a                                     ; $59e1: $77
	sbc  b                                           ; $59e2: $98
	sbc  b                                           ; $59e3: $98
	sbc  b                                           ; $59e4: $98
	ld   [hl], a                                     ; $59e5: $77
	sub  a                                           ; $59e6: $97
	sbc  b                                           ; $59e7: $98
	ld   a, d                                        ; $59e8: $7a
	ld   a, b                                        ; $59e9: $78
	sbc  b                                           ; $59ea: $98
	ld   a, c                                        ; $59eb: $79
	add  [hl]                                        ; $59ec: $86
	and  [hl]                                        ; $59ed: $a6
	adc  c                                           ; $59ee: $89
	ld   e, d                                        ; $59ef: $5a
	ld   l, b                                        ; $59f0: $68
	sub  a                                           ; $59f1: $97
	sub  a                                           ; $59f2: $97
	and  [hl]                                        ; $59f3: $a6
	and  a                                           ; $59f4: $a7
	ld   l, d                                        ; $59f5: $6a
	ld   l, d                                        ; $59f6: $6a
	ld   [hl], a                                     ; $59f7: $77
	sub  a                                           ; $59f8: $97
	and  [hl]                                        ; $59f9: $a6
	sbc  c                                           ; $59fa: $99
	ld   a, b                                        ; $59fb: $78
	adc  b                                           ; $59fc: $88
	ld   a, c                                        ; $59fd: $79
	ld   a, c                                        ; $59fe: $79
	ld   a, b                                        ; $59ff: $78
	sub  a                                           ; $5a00: $97
	and  [hl]                                        ; $5a01: $a6
	sub  a                                           ; $5a02: $97
	sbc  b                                           ; $5a03: $98
	ld   a, d                                        ; $5a04: $7a
	ld   a, c                                        ; $5a05: $79
	ld   l, c                                        ; $5a06: $69
	adc  b                                           ; $5a07: $88
	add  a                                           ; $5a08: $87
	sub  a                                           ; $5a09: $97
	and  [hl]                                        ; $5a0a: $a6
	and  [hl]                                        ; $5a0b: $a6
	adc  c                                           ; $5a0c: $89
	ld   a, c                                        ; $5a0d: $79
	ld   a, d                                        ; $5a0e: $7a
	ld   l, d                                        ; $5a0f: $6a
	ld   a, b                                        ; $5a10: $78
	adc  b                                           ; $5a11: $88
	add  a                                           ; $5a12: $87
	sub  a                                           ; $5a13: $97
	sub  a                                           ; $5a14: $97
	sub  [hl]                                        ; $5a15: $96
	adc  c                                           ; $5a16: $89
	ld   a, c                                        ; $5a17: $79
	ld   a, c                                        ; $5a18: $79
	adc  b                                           ; $5a19: $88
	ld   a, c                                        ; $5a1a: $79
	adc  c                                           ; $5a1b: $89
	ld   l, c                                        ; $5a1c: $69
	ld   [hl], a                                     ; $5a1d: $77
	sub  a                                           ; $5a1e: $97
	sub  a                                           ; $5a1f: $97
	sub  a                                           ; $5a20: $97
	ld   a, d                                        ; $5a21: $7a
	ld   a, c                                        ; $5a22: $79
	ld   a, b                                        ; $5a23: $78
	add  a                                           ; $5a24: $87
	add  a                                           ; $5a25: $87
	add  a                                           ; $5a26: $87
	sub  a                                           ; $5a27: $97
	adc  c                                           ; $5a28: $89
	ld   a, d                                        ; $5a29: $7a
	ld   l, c                                        ; $5a2a: $69
	add  a                                           ; $5a2b: $87
	sbc  b                                           ; $5a2c: $98
	ld   a, c                                        ; $5a2d: $79
	adc  b                                           ; $5a2e: $88
	sub  a                                           ; $5a2f: $97
	adc  b                                           ; $5a30: $88
	adc  b                                           ; $5a31: $88
	add  a                                           ; $5a32: $87
	sub  [hl]                                        ; $5a33: $96
	sub  a                                           ; $5a34: $97
	sbc  c                                           ; $5a35: $99
	ld   a, c                                        ; $5a36: $79
	ld   l, c                                        ; $5a37: $69
	ld   l, c                                        ; $5a38: $69
	ld   a, b                                        ; $5a39: $78
	sbc  b                                           ; $5a3a: $98
	add  a                                           ; $5a3b: $87
	sub  [hl]                                        ; $5a3c: $96
	and  [hl]                                        ; $5a3d: $a6
	sub  a                                           ; $5a3e: $97
	adc  c                                           ; $5a3f: $89
	ld   a, d                                        ; $5a40: $7a
	ld   l, c                                        ; $5a41: $69
	ld   a, b                                        ; $5a42: $78
	ld   a, c                                        ; $5a43: $79
	ld   l, c                                        ; $5a44: $69
	and  [hl]                                        ; $5a45: $a6
	or   [hl]                                        ; $5a46: $b6
	adc  c                                           ; $5a47: $89
	adc  b                                           ; $5a48: $88
	sbc  b                                           ; $5a49: $98
	ld   a, b                                        ; $5a4a: $78
	sub  a                                           ; $5a4b: $97
	adc  d                                           ; $5a4c: $8a
	ld   l, d                                        ; $5a4d: $6a
	ld   e, e                                        ; $5a4e: $5b
	ld   [hl], a                                     ; $5a4f: $77
	and  l                                           ; $5a50: $a5
	or   a                                           ; $5a51: $b7
	adc  b                                           ; $5a52: $88
	adc  b                                           ; $5a53: $88
	ld   a, c                                        ; $5a54: $79
	ld   a, c                                        ; $5a55: $79
	ld   a, b                                        ; $5a56: $78
	add  a                                           ; $5a57: $87
	sub  a                                           ; $5a58: $97
	add  a                                           ; $5a59: $87
	adc  c                                           ; $5a5a: $89
	ld   a, d                                        ; $5a5b: $7a
	ld   a, b                                        ; $5a5c: $78
	sub  a                                           ; $5a5d: $97
	sub  a                                           ; $5a5e: $97
	adc  c                                           ; $5a5f: $89
	ld   a, c                                        ; $5a60: $79
	add  a                                           ; $5a61: $87
	sub  a                                           ; $5a62: $97
	sub  a                                           ; $5a63: $97
	adc  b                                           ; $5a64: $88
	adc  b                                           ; $5a65: $88
	adc  c                                           ; $5a66: $89
	ld   l, d                                        ; $5a67: $6a
	add  a                                           ; $5a68: $87
	sub  a                                           ; $5a69: $97
	and  [hl]                                        ; $5a6a: $a6
	sbc  b                                           ; $5a6b: $98
	ld   a, c                                        ; $5a6c: $79
	ld   l, d                                        ; $5a6d: $6a
	ld   l, c                                        ; $5a6e: $69
	add  a                                           ; $5a6f: $87
	sbc  b                                           ; $5a70: $98
	and  l                                           ; $5a71: $a5
	sub  a                                           ; $5a72: $97
	adc  c                                           ; $5a73: $89
	ld   a, c                                        ; $5a74: $79
	ld   l, d                                        ; $5a75: $6a
	ld   e, d                                        ; $5a76: $5a
	add  [hl]                                        ; $5a77: $86
	and  a                                           ; $5a78: $a7
	adc  c                                           ; $5a79: $89
	ld   [hl], a                                     ; $5a7a: $77
	and  l                                           ; $5a7b: $a5
	and  a                                           ; $5a7c: $a7
	ld   a, d                                        ; $5a7d: $7a
	ld   l, e                                        ; $5a7e: $6b
	ld   l, b                                        ; $5a7f: $68
	adc  b                                           ; $5a80: $88
	ld   a, c                                        ; $5a81: $79
	ld   a, c                                        ; $5a82: $79
	ld   [hl], a                                     ; $5a83: $77
	and  [hl]                                        ; $5a84: $a6
	sub  [hl]                                        ; $5a85: $96
	adc  b                                           ; $5a86: $88
	ld   a, b                                        ; $5a87: $78
	adc  d                                           ; $5a88: $8a
	ld   l, c                                        ; $5a89: $69
	ld   l, c                                        ; $5a8a: $69
	add  [hl]                                        ; $5a8b: $86
	and  [hl]                                        ; $5a8c: $a6
	adc  b                                           ; $5a8d: $88
	adc  b                                           ; $5a8e: $88
	sub  a                                           ; $5a8f: $97
	sub  a                                           ; $5a90: $97
	ld   a, c                                        ; $5a91: $79
	ld   a, d                                        ; $5a92: $7a
	ld   l, b                                        ; $5a93: $68
	sub  a                                           ; $5a94: $97
	sub  a                                           ; $5a95: $97
	sbc  b                                           ; $5a96: $98
	add  a                                           ; $5a97: $87
	sub  a                                           ; $5a98: $97
	ld   a, b                                        ; $5a99: $78
	ld   a, d                                        ; $5a9a: $7a
	ld   l, b                                        ; $5a9b: $68
	sub  [hl]                                        ; $5a9c: $96
	and  a                                           ; $5a9d: $a7
	and  [hl]                                        ; $5a9e: $a6
	ld   a, h                                        ; $5a9f: $7c
	inc  a                                           ; $5aa0: $3c
	halt                                             ; $5aa1: $76
	or   l                                           ; $5aa2: $b5
	and  l                                           ; $5aa3: $a5
	sbc  c                                           ; $5aa4: $99
	ld   l, e                                        ; $5aa5: $6b
	ld   l, c                                        ; $5aa6: $69
	adc  b                                           ; $5aa7: $88
	ld   l, c                                        ; $5aa8: $69
	add  a                                           ; $5aa9: $87
	sub  a                                           ; $5aaa: $97
	and  l                                           ; $5aab: $a5
	and  a                                           ; $5aac: $a7
	ld   a, c                                        ; $5aad: $79
	ld   e, d                                        ; $5aae: $5a
	ld   a, b                                        ; $5aaf: $78
	sub  a                                           ; $5ab0: $97
	sub  [hl]                                        ; $5ab1: $96
	sbc  b                                           ; $5ab2: $98
	ld   a, e                                        ; $5ab3: $7b
	ld   h, a                                        ; $5ab4: $67
	and  l                                           ; $5ab5: $a5
	or   [hl]                                        ; $5ab6: $b6
	sbc  b                                           ; $5ab7: $98
	ld   a, c                                        ; $5ab8: $79
	ld   a, c                                        ; $5ab9: $79
	ld   l, d                                        ; $5aba: $6a
	ld   e, b                                        ; $5abb: $58
	sub  a                                           ; $5abc: $97
	and  [hl]                                        ; $5abd: $a6
	sub  a                                           ; $5abe: $97
	sub  a                                           ; $5abf: $97
	sbc  b                                           ; $5ac0: $98
	ld   a, c                                        ; $5ac1: $79
	ld   a, d                                        ; $5ac2: $7a
	ld   l, b                                        ; $5ac3: $68
	adc  c                                           ; $5ac4: $89
	add  [hl]                                        ; $5ac5: $86
	and  [hl]                                        ; $5ac6: $a6
	sbc  c                                           ; $5ac7: $99
	adc  c                                           ; $5ac8: $89
	ld   e, c                                        ; $5ac9: $59
	ld   a, c                                        ; $5aca: $79
	sub  a                                           ; $5acb: $97
	sub  [hl]                                        ; $5acc: $96
	or   a                                           ; $5acd: $b7
	sbc  b                                           ; $5ace: $98
	ld   [hl], a                                     ; $5acf: $77
	ld   a, d                                        ; $5ad0: $7a
	ld   a, d                                        ; $5ad1: $7a
	ld   a, b                                        ; $5ad2: $78
	ld   [hl], a                                     ; $5ad3: $77
	and  a                                           ; $5ad4: $a7
	adc  b                                           ; $5ad5: $88
	sub  a                                           ; $5ad6: $97
	adc  c                                           ; $5ad7: $89
	ld   a, c                                        ; $5ad8: $79
	ld   l, c                                        ; $5ad9: $69
	sub  a                                           ; $5ada: $97
	and  [hl]                                        ; $5adb: $a6
	sub  [hl]                                        ; $5adc: $96
	ld   a, d                                        ; $5add: $7a
	ld   l, d                                        ; $5ade: $6a
	ld   a, c                                        ; $5adf: $79
	ld   h, a                                        ; $5ae0: $67
	sub  a                                           ; $5ae1: $97
	sbc  c                                           ; $5ae2: $99
	ld   l, d                                        ; $5ae3: $6a
	ld   e, b                                        ; $5ae4: $58
	sub  a                                           ; $5ae5: $97
	and  [hl]                                        ; $5ae6: $a6
	and  a                                           ; $5ae7: $a7
	adc  b                                           ; $5ae8: $88
	adc  b                                           ; $5ae9: $88
	add  a                                           ; $5aea: $87
	sbc  b                                           ; $5aeb: $98
	adc  d                                           ; $5aec: $8a
	ld   e, d                                        ; $5aed: $5a
	halt                                             ; $5aee: $76
	xor  b                                           ; $5aef: $a8
	add  a                                           ; $5af0: $87
	sub  [hl]                                        ; $5af1: $96
	sub  a                                           ; $5af2: $97
	adc  c                                           ; $5af3: $89
	ld   l, c                                        ; $5af4: $69
	ld   a, c                                        ; $5af5: $79
	ld   a, e                                        ; $5af6: $7b
	halt                                             ; $5af7: $76
	sub  l                                           ; $5af8: $95
	sbc  b                                           ; $5af9: $98
	and  [hl]                                        ; $5afa: $a6
	sbc  b                                           ; $5afb: $98
	adc  c                                           ; $5afc: $89
	ld   a, d                                        ; $5afd: $7a
	ld   a, b                                        ; $5afe: $78
	ld   l, e                                        ; $5aff: $6b
	ld   a, c                                        ; $5b00: $79
	ld   [hl], a                                     ; $5b01: $77
	sub  l                                           ; $5b02: $95
	or   [hl]                                        ; $5b03: $b6
	or   h                                           ; $5b04: $b4
	and  a                                           ; $5b05: $a7
	ld   l, h                                        ; $5b06: $6c
	ld   c, e                                        ; $5b07: $4b
	ld   e, d                                        ; $5b08: $5a
	ld   l, c                                        ; $5b09: $69
	and  a                                           ; $5b0a: $a7
	and  l                                           ; $5b0b: $a5
	sub  [hl]                                        ; $5b0c: $96
	sbc  c                                           ; $5b0d: $99
	sbc  b                                           ; $5b0e: $98
	add  a                                           ; $5b0f: $87
	adc  b                                           ; $5b10: $88
	ld   l, e                                        ; $5b11: $6b
	ld   e, c                                        ; $5b12: $59
	ld   a, b                                        ; $5b13: $78
	sub  a                                           ; $5b14: $97
	or   l                                           ; $5b15: $b5
	or   h                                           ; $5b16: $b4
	and  a                                           ; $5b17: $a7
	adc  e                                           ; $5b18: $8b
	ld   l, h                                        ; $5b19: $6c
	ld   c, e                                        ; $5b1a: $4b
	ld   e, c                                        ; $5b1b: $59
	add  a                                           ; $5b1c: $87
	or   [hl]                                        ; $5b1d: $b6
	and  l                                           ; $5b1e: $a5
	and  a                                           ; $5b1f: $a7
	ld   a, c                                        ; $5b20: $79
	sbc  b                                           ; $5b21: $98
	ld   a, c                                        ; $5b22: $79
	ld   e, d                                        ; $5b23: $5a
	ld   a, b                                        ; $5b24: $78
	sub  [hl]                                        ; $5b25: $96
	sub  [hl]                                        ; $5b26: $96
	sub  a                                           ; $5b27: $97
	sbc  c                                           ; $5b28: $99
	ld   a, b                                        ; $5b29: $78
	sub  a                                           ; $5b2a: $97
	sbc  b                                           ; $5b2b: $98
	ld   a, c                                        ; $5b2c: $79
	ld   l, b                                        ; $5b2d: $68
	add  a                                           ; $5b2e: $87
	sbc  c                                           ; $5b2f: $99
	add  a                                           ; $5b30: $87
	sub  a                                           ; $5b31: $97
	add  a                                           ; $5b32: $87
	sub  [hl]                                        ; $5b33: $96
	sbc  d                                           ; $5b34: $9a
	adc  d                                           ; $5b35: $8a
	ld   e, c                                        ; $5b36: $59
	ld   l, c                                        ; $5b37: $69
	sub  a                                           ; $5b38: $97
	sub  [hl]                                        ; $5b39: $96
	sbc  d                                           ; $5b3a: $9a
	ld   h, a                                        ; $5b3b: $67
	sub  a                                           ; $5b3c: $97
	sbc  b                                           ; $5b3d: $98
	ld   l, d                                        ; $5b3e: $6a
	ld   a, c                                        ; $5b3f: $79
	ld   l, c                                        ; $5b40: $69
	ld   a, b                                        ; $5b41: $78
	and  h                                           ; $5b42: $a4
	call nz, Call_0d5_7a89                           ; $5b43: $c4 $89 $7a
	ld   a, c                                        ; $5b46: $79
	ld   e, c                                        ; $5b47: $59
	ld   a, c                                        ; $5b48: $79
	add  a                                           ; $5b49: $87
	and  a                                           ; $5b4a: $a7
	sbc  b                                           ; $5b4b: $98
	adc  b                                           ; $5b4c: $88
	ld   a, c                                        ; $5b4d: $79
	and  a                                           ; $5b4e: $a7
	ld   l, d                                        ; $5b4f: $6a
	ld   h, a                                        ; $5b50: $67
	sbc  c                                           ; $5b51: $99
	and  l                                           ; $5b52: $a5
	and  [hl]                                        ; $5b53: $a6
	add  a                                           ; $5b54: $87
	adc  e                                           ; $5b55: $8b
	ld   e, c                                        ; $5b56: $59
	ld   [hl], a                                     ; $5b57: $77
	and  l                                           ; $5b58: $a5
	and  a                                           ; $5b59: $a7
	adc  c                                           ; $5b5a: $89
	ld   a, b                                        ; $5b5b: $78
	adc  b                                           ; $5b5c: $88
	ld   a, d                                        ; $5b5d: $7a
	sub  a                                           ; $5b5e: $97
	adc  c                                           ; $5b5f: $89
	ld   l, b                                        ; $5b60: $68
	sub  [hl]                                        ; $5b61: $96
	and  [hl]                                        ; $5b62: $a6
	add  a                                           ; $5b63: $87
	sub  a                                           ; $5b64: $97
	ld   a, d                                        ; $5b65: $7a
	ld   l, c                                        ; $5b66: $69
	adc  b                                           ; $5b67: $88
	ld   [hl], a                                     ; $5b68: $77
	sub  a                                           ; $5b69: $97
	add  a                                           ; $5b6a: $87
	sub  [hl]                                        ; $5b6b: $96
	ld   a, c                                        ; $5b6c: $79
	ld   a, c                                        ; $5b6d: $79
	adc  b                                           ; $5b6e: $88
	sub  a                                           ; $5b6f: $97
	ld   a, b                                        ; $5b70: $78
	adc  b                                           ; $5b71: $88
	adc  c                                           ; $5b72: $89
	ld   a, b                                        ; $5b73: $78
	ld   a, b                                        ; $5b74: $78
	add  a                                           ; $5b75: $87
	sbc  c                                           ; $5b76: $99
	ld   a, b                                        ; $5b77: $78
	ld   [hl], a                                     ; $5b78: $77
	ld   [hl], a                                     ; $5b79: $77
	or   [hl]                                        ; $5b7a: $b6
	and  a                                           ; $5b7b: $a7
	ld   a, d                                        ; $5b7c: $7a
	ld   c, e                                        ; $5b7d: $4b
	ld   a, c                                        ; $5b7e: $79
	adc  c                                           ; $5b7f: $89
	sub  l                                           ; $5b80: $95
	and  [hl]                                        ; $5b81: $a6
	and  a                                           ; $5b82: $a7
	sbc  e                                           ; $5b83: $9b
	inc  a                                           ; $5b84: $3c
	ld   h, a                                        ; $5b85: $67
	and  a                                           ; $5b86: $a7
	sub  l                                           ; $5b87: $95
	or   a                                           ; $5b88: $b7
	ld   a, d                                        ; $5b89: $7a
	ld   l, e                                        ; $5b8a: $6b
	ld   l, d                                        ; $5b8b: $6a
	add  a                                           ; $5b8c: $87
	and  l                                           ; $5b8d: $a5
	and  a                                           ; $5b8e: $a7
	ld   a, b                                        ; $5b8f: $78
	adc  d                                           ; $5b90: $8a
	ld   e, c                                        ; $5b91: $59
	add  a                                           ; $5b92: $87
	sbc  c                                           ; $5b93: $99
	add  [hl]                                        ; $5b94: $86
	or   l                                           ; $5b95: $b5
	sbc  b                                           ; $5b96: $98
	sub  [hl]                                        ; $5b97: $96
	ld   a, h                                        ; $5b98: $7c
	ld   e, b                                        ; $5b99: $58
	sub  a                                           ; $5b9a: $97
	ld   l, d                                        ; $5b9b: $6a
	halt                                             ; $5b9c: $76
	xor  b                                           ; $5b9d: $a8
	ld   l, b                                        ; $5b9e: $68
	sub  a                                           ; $5b9f: $97
	sub  l                                           ; $5ba0: $95
	xor  c                                           ; $5ba1: $a9
	ld   e, e                                        ; $5ba2: $5b
	ld   a, b                                        ; $5ba3: $78
	ld   l, b                                        ; $5ba4: $68
	or   e                                           ; $5ba5: $b3
	cp   c                                           ; $5ba6: $b9
	ld   l, b                                        ; $5ba7: $68
	adc  c                                           ; $5ba8: $89
	ld   e, d                                        ; $5ba9: $5a
	add  a                                           ; $5baa: $87
	adc  c                                           ; $5bab: $89
	add  l                                           ; $5bac: $85
	cp   b                                           ; $5bad: $b8
	ld   h, [hl]                                     ; $5bae: $66
	cp   d                                           ; $5baf: $ba
	ld   a, [hl-]                                    ; $5bb0: $3a
	sub  a                                           ; $5bb1: $97
	ld   [hl], a                                     ; $5bb2: $77
	call nz, Call_0d5_6a7b                           ; $5bb3: $c4 $7b $6a
	ld   e, e                                        ; $5bb6: $5b
	halt                                             ; $5bb7: $76
	call nz, Call_0d5_78a8                           ; $5bb8: $c4 $a8 $78
	adc  b                                           ; $5bbb: $88
	sbc  c                                           ; $5bbc: $99
	ld   l, c                                        ; $5bbd: $69
	adc  b                                           ; $5bbe: $88
	ld   a, b                                        ; $5bbf: $78
	ld   a, c                                        ; $5bc0: $79
	sub  a                                           ; $5bc1: $97
	sbc  c                                           ; $5bc2: $99
	add  [hl]                                        ; $5bc3: $86
	adc  b                                           ; $5bc4: $88
	sub  a                                           ; $5bc5: $97
	adc  b                                           ; $5bc6: $88
	ld   a, d                                        ; $5bc7: $7a
	ld   l, c                                        ; $5bc8: $69
	add  [hl]                                        ; $5bc9: $86
	adc  c                                           ; $5bca: $89
	ld   a, b                                        ; $5bcb: $78
	add  a                                           ; $5bcc: $87
	and  a                                           ; $5bcd: $a7
	ld   a, c                                        ; $5bce: $79
	sbc  b                                           ; $5bcf: $98
	ld   l, c                                        ; $5bd0: $69
	add  a                                           ; $5bd1: $87
	sub  a                                           ; $5bd2: $97
	adc  b                                           ; $5bd3: $88
	add  a                                           ; $5bd4: $87
	adc  c                                           ; $5bd5: $89
	add  a                                           ; $5bd6: $87
	adc  b                                           ; $5bd7: $88
	and  a                                           ; $5bd8: $a7
	ld   a, e                                        ; $5bd9: $7b
	ld   e, b                                        ; $5bda: $58
	adc  c                                           ; $5bdb: $89
	ld   h, a                                        ; $5bdc: $67
	or   h                                           ; $5bdd: $b4
	xor  c                                           ; $5bde: $a9
	ld   l, b                                        ; $5bdf: $68
	sub  a                                           ; $5be0: $97
	ld   l, d                                        ; $5be1: $6a
	sub  a                                           ; $5be2: $97
	ld   a, e                                        ; $5be3: $7b
	ld   [hl], l                                     ; $5be4: $75
	xor  d                                           ; $5be5: $aa
	ld   h, [hl]                                     ; $5be6: $66
	and  a                                           ; $5be7: $a7
	adc  b                                           ; $5be8: $88
	adc  c                                           ; $5be9: $89
	ld   a, b                                        ; $5bea: $78
	adc  b                                           ; $5beb: $88
	ld   a, c                                        ; $5bec: $79
	ld   a, c                                        ; $5bed: $79
	add  [hl]                                        ; $5bee: $86
	sub  a                                           ; $5bef: $97
	sub  a                                           ; $5bf0: $97
	adc  b                                           ; $5bf1: $88
	ld   a, c                                        ; $5bf2: $79
	adc  b                                           ; $5bf3: $88
	ld   a, c                                        ; $5bf4: $79
	ld   a, d                                        ; $5bf5: $7a
	sub  a                                           ; $5bf6: $97
	ld   a, b                                        ; $5bf7: $78
	sub  a                                           ; $5bf8: $97
	ld   a, c                                        ; $5bf9: $79
	sub  [hl]                                        ; $5bfa: $96
	sbc  c                                           ; $5bfb: $99
	adc  b                                           ; $5bfc: $88
	adc  b                                           ; $5bfd: $88
	adc  c                                           ; $5bfe: $89
	ld   a, c                                        ; $5bff: $79
	adc  b                                           ; $5c00: $88
	ld   [hl], a                                     ; $5c01: $77
	sbc  b                                           ; $5c02: $98
	adc  b                                           ; $5c03: $88
	sub  a                                           ; $5c04: $97
	sbc  b                                           ; $5c05: $98
	sbc  b                                           ; $5c06: $98
	ld   l, b                                        ; $5c07: $68
	adc  b                                           ; $5c08: $88
	add  a                                           ; $5c09: $87
	adc  b                                           ; $5c0a: $88
	ld   a, b                                        ; $5c0b: $78
	add  a                                           ; $5c0c: $87
	adc  b                                           ; $5c0d: $88
	sbc  c                                           ; $5c0e: $99
	sbc  b                                           ; $5c0f: $98
	ld   [hl], a                                     ; $5c10: $77
	adc  b                                           ; $5c11: $88
	adc  c                                           ; $5c12: $89
	adc  b                                           ; $5c13: $88
	ld   a, b                                        ; $5c14: $78
	ld   a, b                                        ; $5c15: $78
	sub  a                                           ; $5c16: $97
	ld   a, b                                        ; $5c17: $78
	sbc  c                                           ; $5c18: $99
	adc  b                                           ; $5c19: $88
	sub  a                                           ; $5c1a: $97
	ld   a, b                                        ; $5c1b: $78
	add  a                                           ; $5c1c: $87
	ld   l, b                                        ; $5c1d: $68
	sbc  b                                           ; $5c1e: $98
	ld   l, b                                        ; $5c1f: $68
	xor  c                                           ; $5c20: $a9
	ld   a, b                                        ; $5c21: $78
	add  a                                           ; $5c22: $87
	adc  c                                           ; $5c23: $89
	ld   [hl], a                                     ; $5c24: $77
	cp   c                                           ; $5c25: $b9
	ld   d, a                                        ; $5c26: $57
	sbc  c                                           ; $5c27: $99
	sub  a                                           ; $5c28: $97
	ld   a, c                                        ; $5c29: $79
	sub  a                                           ; $5c2a: $97
	ld   a, c                                        ; $5c2b: $79
	sub  a                                           ; $5c2c: $97
	ld   l, c                                        ; $5c2d: $69
	or   [hl]                                        ; $5c2e: $b6
	ld   l, b                                        ; $5c2f: $68
	sbc  b                                           ; $5c30: $98
	ld   [hl], a                                     ; $5c31: $77
	ld   a, b                                        ; $5c32: $78
	ld   [hl], a                                     ; $5c33: $77
	sbc  c                                           ; $5c34: $99
	ld   a, b                                        ; $5c35: $78
	add  [hl]                                        ; $5c36: $86
	adc  d                                           ; $5c37: $8a
	sub  [hl]                                        ; $5c38: $96
	ld   l, b                                        ; $5c39: $68
	sbc  d                                           ; $5c3a: $9a
	ld   h, l                                        ; $5c3b: $65
	sbc  b                                           ; $5c3c: $98
	ld   l, b                                        ; $5c3d: $68
	or   a                                           ; $5c3e: $b7
	ld   d, a                                        ; $5c3f: $57
	sbc  c                                           ; $5c40: $99
	ld   a, b                                        ; $5c41: $78
	sbc  c                                           ; $5c42: $99
	ld   h, a                                        ; $5c43: $67
	ld   [hl], l                                     ; $5c44: $75
	xor  h                                           ; $5c45: $ac
	ld   h, [hl]                                     ; $5c46: $66
	adc  c                                           ; $5c47: $89
	add  a                                           ; $5c48: $87
	adc  c                                           ; $5c49: $89
	ld   [hl], a                                     ; $5c4a: $77
	adc  b                                           ; $5c4b: $88
	add  a                                           ; $5c4c: $87
	ld   a, c                                        ; $5c4d: $79
	add  a                                           ; $5c4e: $87
	ld   a, e                                        ; $5c4f: $7b
	add  l                                           ; $5c50: $85
	ld   a, e                                        ; $5c51: $7b
	sub  [hl]                                        ; $5c52: $96
	ld   a, b                                        ; $5c53: $78
	adc  b                                           ; $5c54: $88
	sbc  b                                           ; $5c55: $98
	sub  a                                           ; $5c56: $97
	ld   h, [hl]                                     ; $5c57: $66
	sbc  e                                           ; $5c58: $9b
	halt                                             ; $5c59: $76
	sbc  c                                           ; $5c5a: $99
	halt                                             ; $5c5b: $76
	ld   a, c                                        ; $5c5c: $79
	and  [hl]                                        ; $5c5d: $a6
	ld   a, b                                        ; $5c5e: $78
	add  a                                           ; $5c5f: $87
	ld   a, d                                        ; $5c60: $7a
	and  [hl]                                        ; $5c61: $a6
	ld   l, c                                        ; $5c62: $69
	sbc  b                                           ; $5c63: $98
	add  a                                           ; $5c64: $87
	adc  b                                           ; $5c65: $88
	adc  b                                           ; $5c66: $88
	sbc  b                                           ; $5c67: $98
	ld   l, b                                        ; $5c68: $68
	adc  c                                           ; $5c69: $89
	ld   [hl], a                                     ; $5c6a: $77
	sbc  b                                           ; $5c6b: $98
	ld   a, b                                        ; $5c6c: $78
	adc  b                                           ; $5c6d: $88
	ld   h, a                                        ; $5c6e: $67
	sbc  b                                           ; $5c6f: $98
	ld   a, b                                        ; $5c70: $78
	sbc  b                                           ; $5c71: $98
	ld   a, b                                        ; $5c72: $78
	adc  b                                           ; $5c73: $88
	ld   a, b                                        ; $5c74: $78
	sbc  b                                           ; $5c75: $98
	ld   a, b                                        ; $5c76: $78
	sbc  b                                           ; $5c77: $98
	ld   [hl], a                                     ; $5c78: $77
	adc  b                                           ; $5c79: $88
	adc  b                                           ; $5c7a: $88
	adc  b                                           ; $5c7b: $88
	adc  b                                           ; $5c7c: $88
	adc  b                                           ; $5c7d: $88
	adc  b                                           ; $5c7e: $88
	adc  b                                           ; $5c7f: $88
	adc  b                                           ; $5c80: $88
	adc  b                                           ; $5c81: $88
	adc  b                                           ; $5c82: $88
	adc  b                                           ; $5c83: $88
	adc  b                                           ; $5c84: $88
	adc  b                                           ; $5c85: $88
	adc  b                                           ; $5c86: $88
	adc  b                                           ; $5c87: $88
	adc  b                                           ; $5c88: $88
	adc  b                                           ; $5c89: $88
	adc  b                                           ; $5c8a: $88
	adc  b                                           ; $5c8b: $88
	adc  b                                           ; $5c8c: $88
	adc  b                                           ; $5c8d: $88
	adc  b                                           ; $5c8e: $88
	adc  b                                           ; $5c8f: $88
	adc  b                                           ; $5c90: $88
	adc  b                                           ; $5c91: $88
	adc  b                                           ; $5c92: $88
	adc  b                                           ; $5c93: $88
	adc  b                                           ; $5c94: $88
	adc  b                                           ; $5c95: $88
	adc  b                                           ; $5c96: $88
	adc  b                                           ; $5c97: $88
	adc  b                                           ; $5c98: $88
	adc  b                                           ; $5c99: $88
	adc  b                                           ; $5c9a: $88
	adc  b                                           ; $5c9b: $88
	adc  b                                           ; $5c9c: $88
	adc  b                                           ; $5c9d: $88
	adc  b                                           ; $5c9e: $88
	adc  b                                           ; $5c9f: $88
	adc  b                                           ; $5ca0: $88
	adc  b                                           ; $5ca1: $88
	adc  b                                           ; $5ca2: $88
	adc  b                                           ; $5ca3: $88
	adc  b                                           ; $5ca4: $88
	adc  b                                           ; $5ca5: $88
	adc  b                                           ; $5ca6: $88
	adc  b                                           ; $5ca7: $88
	adc  b                                           ; $5ca8: $88
	adc  b                                           ; $5ca9: $88
	adc  b                                           ; $5caa: $88
	adc  b                                           ; $5cab: $88
	adc  b                                           ; $5cac: $88
	adc  b                                           ; $5cad: $88
	adc  b                                           ; $5cae: $88
	adc  b                                           ; $5caf: $88
	adc  b                                           ; $5cb0: $88
	adc  b                                           ; $5cb1: $88
	adc  b                                           ; $5cb2: $88
	adc  b                                           ; $5cb3: $88
	adc  b                                           ; $5cb4: $88
	adc  b                                           ; $5cb5: $88
	adc  b                                           ; $5cb6: $88
	adc  b                                           ; $5cb7: $88
	adc  b                                           ; $5cb8: $88
	adc  b                                           ; $5cb9: $88
	adc  b                                           ; $5cba: $88
	adc  b                                           ; $5cbb: $88
	adc  b                                           ; $5cbc: $88
	adc  b                                           ; $5cbd: $88
	adc  b                                           ; $5cbe: $88
	adc  b                                           ; $5cbf: $88
	adc  b                                           ; $5cc0: $88
	adc  b                                           ; $5cc1: $88
	adc  b                                           ; $5cc2: $88
	adc  b                                           ; $5cc3: $88
	adc  b                                           ; $5cc4: $88
	adc  b                                           ; $5cc5: $88
	adc  b                                           ; $5cc6: $88
	adc  b                                           ; $5cc7: $88
	adc  b                                           ; $5cc8: $88
	adc  b                                           ; $5cc9: $88
	adc  b                                           ; $5cca: $88
	adc  b                                           ; $5ccb: $88
	adc  b                                           ; $5ccc: $88
	adc  b                                           ; $5ccd: $88
	adc  b                                           ; $5cce: $88
	adc  b                                           ; $5ccf: $88
	adc  b                                           ; $5cd0: $88
	adc  b                                           ; $5cd1: $88
	adc  b                                           ; $5cd2: $88
	adc  b                                           ; $5cd3: $88
	adc  b                                           ; $5cd4: $88
	adc  b                                           ; $5cd5: $88
	adc  b                                           ; $5cd6: $88
	adc  b                                           ; $5cd7: $88
	adc  b                                           ; $5cd8: $88
	adc  b                                           ; $5cd9: $88
	adc  b                                           ; $5cda: $88
	adc  b                                           ; $5cdb: $88
	adc  b                                           ; $5cdc: $88
	adc  b                                           ; $5cdd: $88
	adc  b                                           ; $5cde: $88
	adc  b                                           ; $5cdf: $88
	adc  b                                           ; $5ce0: $88
	adc  b                                           ; $5ce1: $88
	adc  b                                           ; $5ce2: $88
	adc  b                                           ; $5ce3: $88
	adc  b                                           ; $5ce4: $88
	adc  b                                           ; $5ce5: $88
	adc  b                                           ; $5ce6: $88
	adc  b                                           ; $5ce7: $88
	adc  b                                           ; $5ce8: $88
	adc  b                                           ; $5ce9: $88
	adc  b                                           ; $5cea: $88
	adc  b                                           ; $5ceb: $88
	adc  b                                           ; $5cec: $88
	adc  b                                           ; $5ced: $88
	adc  b                                           ; $5cee: $88
	adc  b                                           ; $5cef: $88
	adc  b                                           ; $5cf0: $88
	adc  b                                           ; $5cf1: $88
	adc  b                                           ; $5cf2: $88
	adc  b                                           ; $5cf3: $88
	adc  b                                           ; $5cf4: $88
	adc  b                                           ; $5cf5: $88
	adc  b                                           ; $5cf6: $88
	adc  b                                           ; $5cf7: $88
	adc  b                                           ; $5cf8: $88
	adc  b                                           ; $5cf9: $88
	adc  b                                           ; $5cfa: $88
	adc  b                                           ; $5cfb: $88
	adc  b                                           ; $5cfc: $88
	adc  b                                           ; $5cfd: $88
	adc  b                                           ; $5cfe: $88
	adc  b                                           ; $5cff: $88
	adc  b                                           ; $5d00: $88
	adc  b                                           ; $5d01: $88
	adc  b                                           ; $5d02: $88
	adc  b                                           ; $5d03: $88
	adc  b                                           ; $5d04: $88
	adc  b                                           ; $5d05: $88
	adc  b                                           ; $5d06: $88
	adc  b                                           ; $5d07: $88
	adc  b                                           ; $5d08: $88
	adc  b                                           ; $5d09: $88
	adc  b                                           ; $5d0a: $88
	adc  b                                           ; $5d0b: $88
	adc  b                                           ; $5d0c: $88
	adc  b                                           ; $5d0d: $88
	adc  b                                           ; $5d0e: $88
	adc  b                                           ; $5d0f: $88
	adc  b                                           ; $5d10: $88
	adc  b                                           ; $5d11: $88
	adc  b                                           ; $5d12: $88
	adc  b                                           ; $5d13: $88
	adc  b                                           ; $5d14: $88
	adc  b                                           ; $5d15: $88
	adc  b                                           ; $5d16: $88
	adc  b                                           ; $5d17: $88
	adc  b                                           ; $5d18: $88
	adc  b                                           ; $5d19: $88
	adc  b                                           ; $5d1a: $88
	adc  b                                           ; $5d1b: $88
	adc  b                                           ; $5d1c: $88
	adc  b                                           ; $5d1d: $88
	adc  b                                           ; $5d1e: $88
	adc  b                                           ; $5d1f: $88
	adc  b                                           ; $5d20: $88
	adc  b                                           ; $5d21: $88
	adc  b                                           ; $5d22: $88
	adc  b                                           ; $5d23: $88
	adc  b                                           ; $5d24: $88
	adc  b                                           ; $5d25: $88
	adc  b                                           ; $5d26: $88
	adc  b                                           ; $5d27: $88
	adc  b                                           ; $5d28: $88
	adc  b                                           ; $5d29: $88
	adc  b                                           ; $5d2a: $88
	adc  b                                           ; $5d2b: $88
	adc  b                                           ; $5d2c: $88
	adc  b                                           ; $5d2d: $88
	adc  b                                           ; $5d2e: $88
	adc  b                                           ; $5d2f: $88
	adc  b                                           ; $5d30: $88
	adc  b                                           ; $5d31: $88
	adc  b                                           ; $5d32: $88
	adc  b                                           ; $5d33: $88
	adc  b                                           ; $5d34: $88
	adc  b                                           ; $5d35: $88
	adc  b                                           ; $5d36: $88
	adc  b                                           ; $5d37: $88
	adc  b                                           ; $5d38: $88
	adc  b                                           ; $5d39: $88
	adc  b                                           ; $5d3a: $88
	adc  b                                           ; $5d3b: $88
	adc  b                                           ; $5d3c: $88
	adc  b                                           ; $5d3d: $88
	adc  b                                           ; $5d3e: $88
	adc  b                                           ; $5d3f: $88
	adc  b                                           ; $5d40: $88
	adc  b                                           ; $5d41: $88
	adc  b                                           ; $5d42: $88
	adc  b                                           ; $5d43: $88
	adc  b                                           ; $5d44: $88
	adc  b                                           ; $5d45: $88
	adc  b                                           ; $5d46: $88
	adc  b                                           ; $5d47: $88
	adc  b                                           ; $5d48: $88
	adc  b                                           ; $5d49: $88
	adc  b                                           ; $5d4a: $88
	adc  b                                           ; $5d4b: $88
	adc  b                                           ; $5d4c: $88
	adc  b                                           ; $5d4d: $88
	adc  b                                           ; $5d4e: $88
	adc  b                                           ; $5d4f: $88
	adc  b                                           ; $5d50: $88
	adc  b                                           ; $5d51: $88
	adc  b                                           ; $5d52: $88
	adc  b                                           ; $5d53: $88
	adc  b                                           ; $5d54: $88
	adc  b                                           ; $5d55: $88
	adc  b                                           ; $5d56: $88
	adc  b                                           ; $5d57: $88
	adc  b                                           ; $5d58: $88
	adc  b                                           ; $5d59: $88
	adc  b                                           ; $5d5a: $88
	adc  b                                           ; $5d5b: $88
	adc  b                                           ; $5d5c: $88
	adc  b                                           ; $5d5d: $88
	adc  b                                           ; $5d5e: $88
	adc  b                                           ; $5d5f: $88
	adc  b                                           ; $5d60: $88
	adc  b                                           ; $5d61: $88
	adc  b                                           ; $5d62: $88
	adc  b                                           ; $5d63: $88
	adc  b                                           ; $5d64: $88
	adc  b                                           ; $5d65: $88
	adc  b                                           ; $5d66: $88
	adc  b                                           ; $5d67: $88
	adc  b                                           ; $5d68: $88
	adc  b                                           ; $5d69: $88
	adc  b                                           ; $5d6a: $88
	adc  b                                           ; $5d6b: $88
	adc  b                                           ; $5d6c: $88
	adc  b                                           ; $5d6d: $88
	adc  b                                           ; $5d6e: $88
	adc  b                                           ; $5d6f: $88
	adc  b                                           ; $5d70: $88
	adc  b                                           ; $5d71: $88
	adc  b                                           ; $5d72: $88
	adc  b                                           ; $5d73: $88
	adc  b                                           ; $5d74: $88
	adc  b                                           ; $5d75: $88
	adc  b                                           ; $5d76: $88
	adc  b                                           ; $5d77: $88
	adc  b                                           ; $5d78: $88
	adc  b                                           ; $5d79: $88
	adc  b                                           ; $5d7a: $88
	adc  b                                           ; $5d7b: $88
	adc  b                                           ; $5d7c: $88
	adc  b                                           ; $5d7d: $88
	adc  b                                           ; $5d7e: $88
	adc  b                                           ; $5d7f: $88
	adc  b                                           ; $5d80: $88
	adc  b                                           ; $5d81: $88
	adc  b                                           ; $5d82: $88
	adc  b                                           ; $5d83: $88
	adc  b                                           ; $5d84: $88
	adc  b                                           ; $5d85: $88
	adc  b                                           ; $5d86: $88
	adc  b                                           ; $5d87: $88
	adc  b                                           ; $5d88: $88
	adc  b                                           ; $5d89: $88
	adc  b                                           ; $5d8a: $88
	adc  b                                           ; $5d8b: $88
	adc  b                                           ; $5d8c: $88
	adc  b                                           ; $5d8d: $88
	adc  b                                           ; $5d8e: $88
	adc  b                                           ; $5d8f: $88
	adc  b                                           ; $5d90: $88
	adc  b                                           ; $5d91: $88
	adc  b                                           ; $5d92: $88
	adc  b                                           ; $5d93: $88
	adc  b                                           ; $5d94: $88
	adc  b                                           ; $5d95: $88
	adc  b                                           ; $5d96: $88
	adc  b                                           ; $5d97: $88
	adc  b                                           ; $5d98: $88
	adc  b                                           ; $5d99: $88
	adc  b                                           ; $5d9a: $88
	adc  b                                           ; $5d9b: $88
	adc  b                                           ; $5d9c: $88
	adc  b                                           ; $5d9d: $88
	adc  b                                           ; $5d9e: $88
	adc  b                                           ; $5d9f: $88
	adc  b                                           ; $5da0: $88
	adc  b                                           ; $5da1: $88
	adc  b                                           ; $5da2: $88
	adc  b                                           ; $5da3: $88
	adc  b                                           ; $5da4: $88
	adc  b                                           ; $5da5: $88
	adc  b                                           ; $5da6: $88
	adc  b                                           ; $5da7: $88
	adc  b                                           ; $5da8: $88
	adc  b                                           ; $5da9: $88
	adc  b                                           ; $5daa: $88
	adc  b                                           ; $5dab: $88
	adc  b                                           ; $5dac: $88
	adc  b                                           ; $5dad: $88
	adc  b                                           ; $5dae: $88
	adc  b                                           ; $5daf: $88
	adc  b                                           ; $5db0: $88
	adc  b                                           ; $5db1: $88
	adc  b                                           ; $5db2: $88
	adc  b                                           ; $5db3: $88
	adc  b                                           ; $5db4: $88
	adc  b                                           ; $5db5: $88
	adc  b                                           ; $5db6: $88
	adc  b                                           ; $5db7: $88
	adc  b                                           ; $5db8: $88
	adc  b                                           ; $5db9: $88
	adc  b                                           ; $5dba: $88
	adc  b                                           ; $5dbb: $88
	adc  b                                           ; $5dbc: $88
	adc  b                                           ; $5dbd: $88
	adc  b                                           ; $5dbe: $88
	adc  b                                           ; $5dbf: $88
	adc  b                                           ; $5dc0: $88
	adc  b                                           ; $5dc1: $88
	adc  b                                           ; $5dc2: $88
	adc  b                                           ; $5dc3: $88
	adc  b                                           ; $5dc4: $88
	adc  b                                           ; $5dc5: $88
	adc  b                                           ; $5dc6: $88
	adc  b                                           ; $5dc7: $88
	adc  b                                           ; $5dc8: $88
	adc  b                                           ; $5dc9: $88
	adc  b                                           ; $5dca: $88
	adc  b                                           ; $5dcb: $88
	adc  b                                           ; $5dcc: $88
	adc  b                                           ; $5dcd: $88
	adc  b                                           ; $5dce: $88
	adc  b                                           ; $5dcf: $88
	adc  b                                           ; $5dd0: $88
	adc  b                                           ; $5dd1: $88
	adc  b                                           ; $5dd2: $88
	adc  b                                           ; $5dd3: $88
	adc  b                                           ; $5dd4: $88
	adc  b                                           ; $5dd5: $88
	adc  b                                           ; $5dd6: $88
	adc  b                                           ; $5dd7: $88
	adc  b                                           ; $5dd8: $88
	adc  b                                           ; $5dd9: $88
	adc  b                                           ; $5dda: $88
	adc  b                                           ; $5ddb: $88
	adc  b                                           ; $5ddc: $88
	adc  b                                           ; $5ddd: $88
	adc  b                                           ; $5dde: $88
	adc  b                                           ; $5ddf: $88
	adc  b                                           ; $5de0: $88
	adc  b                                           ; $5de1: $88
	adc  b                                           ; $5de2: $88
	adc  b                                           ; $5de3: $88
	adc  b                                           ; $5de4: $88
	adc  b                                           ; $5de5: $88
	adc  b                                           ; $5de6: $88
	adc  b                                           ; $5de7: $88
	adc  b                                           ; $5de8: $88
	adc  b                                           ; $5de9: $88
	adc  b                                           ; $5dea: $88
	adc  b                                           ; $5deb: $88
	adc  b                                           ; $5dec: $88
	adc  b                                           ; $5ded: $88
	adc  b                                           ; $5dee: $88
	adc  b                                           ; $5def: $88
	adc  b                                           ; $5df0: $88
	adc  b                                           ; $5df1: $88
	adc  b                                           ; $5df2: $88
	adc  b                                           ; $5df3: $88
	adc  b                                           ; $5df4: $88
	adc  b                                           ; $5df5: $88
	adc  b                                           ; $5df6: $88
	adc  b                                           ; $5df7: $88
	adc  b                                           ; $5df8: $88
	adc  b                                           ; $5df9: $88
	adc  b                                           ; $5dfa: $88
	adc  b                                           ; $5dfb: $88
	adc  b                                           ; $5dfc: $88
	adc  b                                           ; $5dfd: $88
	adc  b                                           ; $5dfe: $88
	adc  b                                           ; $5dff: $88
	adc  b                                           ; $5e00: $88
	adc  b                                           ; $5e01: $88
	adc  b                                           ; $5e02: $88
	adc  b                                           ; $5e03: $88
	adc  b                                           ; $5e04: $88
	adc  b                                           ; $5e05: $88
	adc  b                                           ; $5e06: $88
	adc  b                                           ; $5e07: $88
	adc  b                                           ; $5e08: $88
	adc  b                                           ; $5e09: $88
	adc  b                                           ; $5e0a: $88
	adc  b                                           ; $5e0b: $88
	adc  b                                           ; $5e0c: $88
	adc  b                                           ; $5e0d: $88
	adc  b                                           ; $5e0e: $88
	adc  b                                           ; $5e0f: $88
	adc  b                                           ; $5e10: $88
	adc  b                                           ; $5e11: $88
	adc  b                                           ; $5e12: $88
	adc  b                                           ; $5e13: $88
	adc  b                                           ; $5e14: $88
	adc  b                                           ; $5e15: $88
	adc  b                                           ; $5e16: $88
	adc  b                                           ; $5e17: $88
	adc  b                                           ; $5e18: $88
	adc  b                                           ; $5e19: $88
	adc  b                                           ; $5e1a: $88
	adc  b                                           ; $5e1b: $88
	adc  b                                           ; $5e1c: $88
	adc  b                                           ; $5e1d: $88
	adc  b                                           ; $5e1e: $88
	adc  b                                           ; $5e1f: $88
	adc  b                                           ; $5e20: $88
	adc  b                                           ; $5e21: $88
	adc  b                                           ; $5e22: $88
	adc  b                                           ; $5e23: $88
	adc  b                                           ; $5e24: $88
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
	adc  b                                           ; $5e34: $88
	adc  b                                           ; $5e35: $88
	adc  b                                           ; $5e36: $88
	adc  b                                           ; $5e37: $88
	adc  b                                           ; $5e38: $88
	adc  b                                           ; $5e39: $88
	adc  b                                           ; $5e3a: $88
	adc  b                                           ; $5e3b: $88
	adc  b                                           ; $5e3c: $88
	adc  b                                           ; $5e3d: $88
	adc  b                                           ; $5e3e: $88
	adc  b                                           ; $5e3f: $88
	adc  b                                           ; $5e40: $88
	adc  b                                           ; $5e41: $88
	adc  b                                           ; $5e42: $88
	adc  b                                           ; $5e43: $88
	adc  b                                           ; $5e44: $88
	adc  b                                           ; $5e45: $88
	adc  b                                           ; $5e46: $88
	adc  b                                           ; $5e47: $88
	adc  b                                           ; $5e48: $88
	adc  b                                           ; $5e49: $88
	adc  b                                           ; $5e4a: $88
	adc  b                                           ; $5e4b: $88
	adc  b                                           ; $5e4c: $88
	adc  b                                           ; $5e4d: $88
	adc  b                                           ; $5e4e: $88
	adc  b                                           ; $5e4f: $88
	adc  b                                           ; $5e50: $88
	adc  b                                           ; $5e51: $88
	adc  b                                           ; $5e52: $88
	adc  b                                           ; $5e53: $88
	adc  b                                           ; $5e54: $88
	adc  b                                           ; $5e55: $88
	adc  b                                           ; $5e56: $88
	adc  b                                           ; $5e57: $88
	adc  b                                           ; $5e58: $88
	adc  b                                           ; $5e59: $88
	adc  b                                           ; $5e5a: $88
	adc  b                                           ; $5e5b: $88
	adc  b                                           ; $5e5c: $88
	adc  b                                           ; $5e5d: $88
	adc  b                                           ; $5e5e: $88
	adc  b                                           ; $5e5f: $88
	adc  b                                           ; $5e60: $88
	adc  b                                           ; $5e61: $88
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
	adc  b                                           ; $5e76: $88
	adc  b                                           ; $5e77: $88
	adc  b                                           ; $5e78: $88
	adc  b                                           ; $5e79: $88
	adc  b                                           ; $5e7a: $88
	adc  b                                           ; $5e7b: $88
	adc  b                                           ; $5e7c: $88
	adc  b                                           ; $5e7d: $88
	adc  b                                           ; $5e7e: $88
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
	adc  b                                           ; $5e8a: $88
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
	adc  b                                           ; $5eca: $88
	adc  b                                           ; $5ecb: $88
	adc  b                                           ; $5ecc: $88
	adc  b                                           ; $5ecd: $88
	adc  b                                           ; $5ece: $88
	adc  b                                           ; $5ecf: $88
	adc  b                                           ; $5ed0: $88
	adc  b                                           ; $5ed1: $88
	adc  b                                           ; $5ed2: $88
	adc  b                                           ; $5ed3: $88
	adc  b                                           ; $5ed4: $88
	adc  b                                           ; $5ed5: $88
	adc  b                                           ; $5ed6: $88
	adc  b                                           ; $5ed7: $88
	adc  b                                           ; $5ed8: $88
	adc  b                                           ; $5ed9: $88
	adc  b                                           ; $5eda: $88
	adc  b                                           ; $5edb: $88
	adc  b                                           ; $5edc: $88
	adc  b                                           ; $5edd: $88
	adc  b                                           ; $5ede: $88
	adc  b                                           ; $5edf: $88
	adc  b                                           ; $5ee0: $88
	adc  b                                           ; $5ee1: $88
	adc  b                                           ; $5ee2: $88
	adc  b                                           ; $5ee3: $88
	adc  b                                           ; $5ee4: $88
	adc  b                                           ; $5ee5: $88
	adc  b                                           ; $5ee6: $88
	adc  b                                           ; $5ee7: $88
	adc  b                                           ; $5ee8: $88
	adc  b                                           ; $5ee9: $88
	adc  b                                           ; $5eea: $88
	adc  b                                           ; $5eeb: $88
	adc  b                                           ; $5eec: $88
	adc  b                                           ; $5eed: $88
	adc  b                                           ; $5eee: $88
	adc  b                                           ; $5eef: $88
	adc  b                                           ; $5ef0: $88
	adc  b                                           ; $5ef1: $88
	adc  b                                           ; $5ef2: $88
	adc  b                                           ; $5ef3: $88
	adc  b                                           ; $5ef4: $88
	adc  b                                           ; $5ef5: $88
	adc  b                                           ; $5ef6: $88
	adc  b                                           ; $5ef7: $88
	adc  b                                           ; $5ef8: $88
	adc  b                                           ; $5ef9: $88
	adc  b                                           ; $5efa: $88
	adc  b                                           ; $5efb: $88
	adc  b                                           ; $5efc: $88
	adc  b                                           ; $5efd: $88
	adc  b                                           ; $5efe: $88
	adc  b                                           ; $5eff: $88
	adc  b                                           ; $5f00: $88
	adc  b                                           ; $5f01: $88
	adc  b                                           ; $5f02: $88
	adc  b                                           ; $5f03: $88
	adc  b                                           ; $5f04: $88
	adc  b                                           ; $5f05: $88
	adc  b                                           ; $5f06: $88
	adc  b                                           ; $5f07: $88
	adc  b                                           ; $5f08: $88
	adc  b                                           ; $5f09: $88
	adc  b                                           ; $5f0a: $88
	adc  b                                           ; $5f0b: $88
	adc  b                                           ; $5f0c: $88
	adc  b                                           ; $5f0d: $88
	adc  b                                           ; $5f0e: $88
	adc  b                                           ; $5f0f: $88
	adc  b                                           ; $5f10: $88
	adc  b                                           ; $5f11: $88
	adc  b                                           ; $5f12: $88
	adc  b                                           ; $5f13: $88
	adc  b                                           ; $5f14: $88
	adc  b                                           ; $5f15: $88
	adc  b                                           ; $5f16: $88
	adc  b                                           ; $5f17: $88
	adc  b                                           ; $5f18: $88
	adc  b                                           ; $5f19: $88
	adc  b                                           ; $5f1a: $88
	adc  b                                           ; $5f1b: $88
	adc  b                                           ; $5f1c: $88
	adc  b                                           ; $5f1d: $88
	adc  b                                           ; $5f1e: $88
	adc  b                                           ; $5f1f: $88
	adc  b                                           ; $5f20: $88
	adc  b                                           ; $5f21: $88
	adc  b                                           ; $5f22: $88
	adc  b                                           ; $5f23: $88
	adc  b                                           ; $5f24: $88
	adc  b                                           ; $5f25: $88
	adc  b                                           ; $5f26: $88
	adc  b                                           ; $5f27: $88
	adc  b                                           ; $5f28: $88
	adc  b                                           ; $5f29: $88
	adc  b                                           ; $5f2a: $88
	adc  b                                           ; $5f2b: $88
	adc  b                                           ; $5f2c: $88
	adc  b                                           ; $5f2d: $88
	adc  b                                           ; $5f2e: $88
	adc  b                                           ; $5f2f: $88
	adc  b                                           ; $5f30: $88
	adc  b                                           ; $5f31: $88
	adc  b                                           ; $5f32: $88
	adc  b                                           ; $5f33: $88
	adc  b                                           ; $5f34: $88
	adc  b                                           ; $5f35: $88
	adc  b                                           ; $5f36: $88
	adc  b                                           ; $5f37: $88
	adc  b                                           ; $5f38: $88
	adc  b                                           ; $5f39: $88
	adc  b                                           ; $5f3a: $88
	adc  b                                           ; $5f3b: $88
	adc  b                                           ; $5f3c: $88
	adc  b                                           ; $5f3d: $88
	adc  b                                           ; $5f3e: $88
	adc  b                                           ; $5f3f: $88
	adc  b                                           ; $5f40: $88
	adc  b                                           ; $5f41: $88
	adc  b                                           ; $5f42: $88
	adc  b                                           ; $5f43: $88
	adc  b                                           ; $5f44: $88
	adc  b                                           ; $5f45: $88
	adc  b                                           ; $5f46: $88
	adc  b                                           ; $5f47: $88
	adc  b                                           ; $5f48: $88
	adc  b                                           ; $5f49: $88
	adc  b                                           ; $5f4a: $88
	adc  b                                           ; $5f4b: $88
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
	adc  b                                           ; $5f66: $88
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
	adc  b                                           ; $5f8e: $88
	adc  b                                           ; $5f8f: $88
	adc  b                                           ; $5f90: $88
	adc  b                                           ; $5f91: $88
	adc  b                                           ; $5f92: $88
	adc  b                                           ; $5f93: $88
	adc  b                                           ; $5f94: $88
	adc  b                                           ; $5f95: $88
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
	adc  b                                           ; $5fa2: $88
	adc  b                                           ; $5fa3: $88
	adc  b                                           ; $5fa4: $88
	adc  b                                           ; $5fa5: $88
	adc  b                                           ; $5fa6: $88
	adc  b                                           ; $5fa7: $88
	adc  b                                           ; $5fa8: $88
	adc  b                                           ; $5fa9: $88
	adc  b                                           ; $5faa: $88
	adc  b                                           ; $5fab: $88
	adc  b                                           ; $5fac: $88
	adc  b                                           ; $5fad: $88
	adc  b                                           ; $5fae: $88
	adc  b                                           ; $5faf: $88
	adc  b                                           ; $5fb0: $88
	adc  b                                           ; $5fb1: $88
	adc  b                                           ; $5fb2: $88
	adc  b                                           ; $5fb3: $88
	adc  b                                           ; $5fb4: $88
	adc  b                                           ; $5fb5: $88
	adc  b                                           ; $5fb6: $88
	adc  b                                           ; $5fb7: $88
	adc  b                                           ; $5fb8: $88
	adc  b                                           ; $5fb9: $88
	adc  b                                           ; $5fba: $88
	adc  b                                           ; $5fbb: $88
	adc  b                                           ; $5fbc: $88
	adc  b                                           ; $5fbd: $88
	adc  b                                           ; $5fbe: $88
	adc  b                                           ; $5fbf: $88
	adc  b                                           ; $5fc0: $88
	adc  b                                           ; $5fc1: $88
	adc  b                                           ; $5fc2: $88
	adc  b                                           ; $5fc3: $88
	adc  b                                           ; $5fc4: $88
	adc  b                                           ; $5fc5: $88
	adc  b                                           ; $5fc6: $88
	adc  b                                           ; $5fc7: $88
	adc  b                                           ; $5fc8: $88
	adc  b                                           ; $5fc9: $88
	adc  b                                           ; $5fca: $88
	adc  b                                           ; $5fcb: $88
	adc  b                                           ; $5fcc: $88
	adc  b                                           ; $5fcd: $88
	adc  b                                           ; $5fce: $88
	adc  b                                           ; $5fcf: $88
	adc  b                                           ; $5fd0: $88
	adc  b                                           ; $5fd1: $88
	adc  b                                           ; $5fd2: $88
	adc  b                                           ; $5fd3: $88
	adc  b                                           ; $5fd4: $88
	adc  b                                           ; $5fd5: $88
	adc  b                                           ; $5fd6: $88
	adc  b                                           ; $5fd7: $88
	adc  b                                           ; $5fd8: $88
	adc  b                                           ; $5fd9: $88
	adc  b                                           ; $5fda: $88
	adc  b                                           ; $5fdb: $88
	adc  b                                           ; $5fdc: $88
	adc  b                                           ; $5fdd: $88
	adc  b                                           ; $5fde: $88
	adc  b                                           ; $5fdf: $88
	adc  b                                           ; $5fe0: $88
	adc  b                                           ; $5fe1: $88
	adc  b                                           ; $5fe2: $88
	adc  b                                           ; $5fe3: $88
	adc  b                                           ; $5fe4: $88
	adc  b                                           ; $5fe5: $88
	adc  b                                           ; $5fe6: $88
	adc  b                                           ; $5fe7: $88
	adc  b                                           ; $5fe8: $88
	adc  b                                           ; $5fe9: $88
	adc  b                                           ; $5fea: $88
	adc  b                                           ; $5feb: $88
	adc  b                                           ; $5fec: $88
	adc  b                                           ; $5fed: $88
	adc  b                                           ; $5fee: $88
	adc  b                                           ; $5fef: $88
	adc  b                                           ; $5ff0: $88
	adc  b                                           ; $5ff1: $88
	adc  b                                           ; $5ff2: $88
	adc  b                                           ; $5ff3: $88
	adc  b                                           ; $5ff4: $88
	adc  b                                           ; $5ff5: $88
	adc  b                                           ; $5ff6: $88
	adc  b                                           ; $5ff7: $88
	adc  b                                           ; $5ff8: $88
	adc  b                                           ; $5ff9: $88
	adc  b                                           ; $5ffa: $88
	adc  b                                           ; $5ffb: $88
	adc  b                                           ; $5ffc: $88
	adc  b                                           ; $5ffd: $88
	adc  b                                           ; $5ffe: $88
	adc  b                                           ; $5fff: $88
	adc  b                                           ; $6000: $88
	adc  b                                           ; $6001: $88
	adc  b                                           ; $6002: $88
	adc  b                                           ; $6003: $88
	adc  b                                           ; $6004: $88
	adc  b                                           ; $6005: $88
	adc  b                                           ; $6006: $88
	adc  b                                           ; $6007: $88
	adc  b                                           ; $6008: $88
	adc  b                                           ; $6009: $88
	adc  b                                           ; $600a: $88
	adc  b                                           ; $600b: $88
	adc  b                                           ; $600c: $88
	adc  b                                           ; $600d: $88
	adc  b                                           ; $600e: $88
	adc  b                                           ; $600f: $88
	adc  b                                           ; $6010: $88
	adc  b                                           ; $6011: $88
	adc  b                                           ; $6012: $88
	adc  b                                           ; $6013: $88
	adc  b                                           ; $6014: $88
	adc  b                                           ; $6015: $88
	adc  b                                           ; $6016: $88
	adc  b                                           ; $6017: $88
	adc  b                                           ; $6018: $88
	adc  b                                           ; $6019: $88
	adc  b                                           ; $601a: $88
	adc  b                                           ; $601b: $88
	adc  b                                           ; $601c: $88
	adc  b                                           ; $601d: $88
	adc  b                                           ; $601e: $88
	adc  b                                           ; $601f: $88
	adc  b                                           ; $6020: $88
	adc  b                                           ; $6021: $88
	adc  b                                           ; $6022: $88
	adc  b                                           ; $6023: $88
	adc  b                                           ; $6024: $88
	adc  b                                           ; $6025: $88
	adc  b                                           ; $6026: $88
	adc  b                                           ; $6027: $88
	adc  b                                           ; $6028: $88
	adc  b                                           ; $6029: $88
	adc  b                                           ; $602a: $88
	adc  b                                           ; $602b: $88
	adc  b                                           ; $602c: $88
	adc  b                                           ; $602d: $88
	adc  b                                           ; $602e: $88
	adc  b                                           ; $602f: $88
	adc  b                                           ; $6030: $88
	adc  b                                           ; $6031: $88
	adc  b                                           ; $6032: $88
	adc  b                                           ; $6033: $88
	adc  b                                           ; $6034: $88
	adc  b                                           ; $6035: $88
	adc  b                                           ; $6036: $88
	adc  b                                           ; $6037: $88
	adc  b                                           ; $6038: $88
	adc  b                                           ; $6039: $88
	adc  b                                           ; $603a: $88
	adc  b                                           ; $603b: $88
	adc  b                                           ; $603c: $88
	adc  b                                           ; $603d: $88
	adc  b                                           ; $603e: $88
	adc  b                                           ; $603f: $88
	adc  b                                           ; $6040: $88
	adc  b                                           ; $6041: $88
	adc  b                                           ; $6042: $88
	adc  b                                           ; $6043: $88
	adc  b                                           ; $6044: $88
	adc  b                                           ; $6045: $88
	adc  b                                           ; $6046: $88
	adc  b                                           ; $6047: $88
	adc  b                                           ; $6048: $88
	adc  b                                           ; $6049: $88
	adc  b                                           ; $604a: $88
	adc  b                                           ; $604b: $88
	adc  b                                           ; $604c: $88
	adc  b                                           ; $604d: $88
	adc  b                                           ; $604e: $88
	adc  b                                           ; $604f: $88
	adc  b                                           ; $6050: $88
	adc  b                                           ; $6051: $88
	adc  b                                           ; $6052: $88
	adc  b                                           ; $6053: $88
	adc  b                                           ; $6054: $88
	adc  b                                           ; $6055: $88
	adc  b                                           ; $6056: $88
	adc  b                                           ; $6057: $88
	adc  b                                           ; $6058: $88
	adc  b                                           ; $6059: $88
	adc  b                                           ; $605a: $88
	adc  b                                           ; $605b: $88
	adc  b                                           ; $605c: $88
	adc  b                                           ; $605d: $88
	adc  b                                           ; $605e: $88
	adc  b                                           ; $605f: $88
	adc  b                                           ; $6060: $88
	adc  b                                           ; $6061: $88
	adc  b                                           ; $6062: $88
	adc  b                                           ; $6063: $88
	adc  b                                           ; $6064: $88
	adc  b                                           ; $6065: $88
	adc  b                                           ; $6066: $88
	adc  b                                           ; $6067: $88
	adc  b                                           ; $6068: $88
	adc  b                                           ; $6069: $88
	adc  b                                           ; $606a: $88
	adc  b                                           ; $606b: $88
	adc  b                                           ; $606c: $88
	adc  b                                           ; $606d: $88
	adc  b                                           ; $606e: $88
	adc  b                                           ; $606f: $88
	adc  b                                           ; $6070: $88
	adc  b                                           ; $6071: $88
	adc  b                                           ; $6072: $88
	adc  b                                           ; $6073: $88
	adc  b                                           ; $6074: $88
	adc  b                                           ; $6075: $88
	adc  b                                           ; $6076: $88
	adc  b                                           ; $6077: $88
	adc  b                                           ; $6078: $88
	adc  b                                           ; $6079: $88
	adc  b                                           ; $607a: $88
	adc  b                                           ; $607b: $88
	adc  b                                           ; $607c: $88
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	adc  b                                           ; $607f: $88
	adc  b                                           ; $6080: $88
	adc  b                                           ; $6081: $88
	adc  b                                           ; $6082: $88
	adc  b                                           ; $6083: $88
	adc  b                                           ; $6084: $88
	adc  b                                           ; $6085: $88
	adc  b                                           ; $6086: $88
	adc  b                                           ; $6087: $88
	adc  b                                           ; $6088: $88
	adc  b                                           ; $6089: $88
	adc  b                                           ; $608a: $88
	adc  b                                           ; $608b: $88
	adc  b                                           ; $608c: $88
	adc  b                                           ; $608d: $88
	adc  b                                           ; $608e: $88
	adc  b                                           ; $608f: $88
	adc  b                                           ; $6090: $88
	adc  b                                           ; $6091: $88
	adc  b                                           ; $6092: $88
	adc  b                                           ; $6093: $88
	adc  b                                           ; $6094: $88
	adc  b                                           ; $6095: $88
	adc  b                                           ; $6096: $88
	adc  b                                           ; $6097: $88
	adc  b                                           ; $6098: $88
	adc  b                                           ; $6099: $88
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	adc  b                                           ; $609c: $88
	adc  b                                           ; $609d: $88
	adc  b                                           ; $609e: $88
	adc  b                                           ; $609f: $88
	adc  b                                           ; $60a0: $88
	adc  b                                           ; $60a1: $88
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	adc  b                                           ; $60a4: $88
	adc  b                                           ; $60a5: $88
	adc  b                                           ; $60a6: $88
	adc  b                                           ; $60a7: $88
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  b                                           ; $60ab: $88
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	adc  b                                           ; $60b2: $88
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	adc  b                                           ; $60b5: $88
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	adc  b                                           ; $60b8: $88
	adc  b                                           ; $60b9: $88
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	adc  b                                           ; $60bd: $88
	adc  b                                           ; $60be: $88
	adc  b                                           ; $60bf: $88
	adc  b                                           ; $60c0: $88
	adc  b                                           ; $60c1: $88
	adc  b                                           ; $60c2: $88
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	adc  b                                           ; $60c6: $88
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	adc  b                                           ; $60ca: $88
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	adc  b                                           ; $60ce: $88
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	adc  b                                           ; $60d6: $88
	adc  b                                           ; $60d7: $88
	adc  b                                           ; $60d8: $88
	adc  b                                           ; $60d9: $88
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	adc  b                                           ; $60dc: $88
	adc  b                                           ; $60dd: $88
	adc  b                                           ; $60de: $88
	adc  b                                           ; $60df: $88
	adc  b                                           ; $60e0: $88
	adc  b                                           ; $60e1: $88
	adc  b                                           ; $60e2: $88
	adc  b                                           ; $60e3: $88
	adc  b                                           ; $60e4: $88
	adc  b                                           ; $60e5: $88
	adc  b                                           ; $60e6: $88
	adc  b                                           ; $60e7: $88
	adc  b                                           ; $60e8: $88
	adc  b                                           ; $60e9: $88
	adc  b                                           ; $60ea: $88
	adc  b                                           ; $60eb: $88
	adc  b                                           ; $60ec: $88
	adc  b                                           ; $60ed: $88
	adc  b                                           ; $60ee: $88
	adc  b                                           ; $60ef: $88
	adc  b                                           ; $60f0: $88
	adc  b                                           ; $60f1: $88
	adc  b                                           ; $60f2: $88
	adc  b                                           ; $60f3: $88
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	adc  b                                           ; $60f9: $88
	adc  b                                           ; $60fa: $88
	adc  b                                           ; $60fb: $88
	adc  b                                           ; $60fc: $88
	adc  b                                           ; $60fd: $88
	adc  b                                           ; $60fe: $88
	adc  b                                           ; $60ff: $88
	adc  b                                           ; $6100: $88
	adc  b                                           ; $6101: $88
	adc  b                                           ; $6102: $88
	adc  b                                           ; $6103: $88
	adc  b                                           ; $6104: $88
	adc  b                                           ; $6105: $88
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	adc  b                                           ; $6108: $88
	adc  b                                           ; $6109: $88
	adc  b                                           ; $610a: $88
	adc  b                                           ; $610b: $88
	adc  b                                           ; $610c: $88
	adc  b                                           ; $610d: $88
	adc  b                                           ; $610e: $88
	adc  b                                           ; $610f: $88
	adc  b                                           ; $6110: $88
	adc  b                                           ; $6111: $88
	adc  b                                           ; $6112: $88
	adc  b                                           ; $6113: $88
	adc  b                                           ; $6114: $88
	adc  b                                           ; $6115: $88
	adc  b                                           ; $6116: $88
	adc  b                                           ; $6117: $88
	adc  b                                           ; $6118: $88
	adc  b                                           ; $6119: $88
	adc  b                                           ; $611a: $88
	adc  b                                           ; $611b: $88
	adc  b                                           ; $611c: $88
	adc  b                                           ; $611d: $88
	adc  b                                           ; $611e: $88
	adc  b                                           ; $611f: $88
	adc  b                                           ; $6120: $88
	adc  b                                           ; $6121: $88
	adc  b                                           ; $6122: $88
	adc  b                                           ; $6123: $88
	adc  b                                           ; $6124: $88
	adc  b                                           ; $6125: $88
	adc  b                                           ; $6126: $88
	adc  b                                           ; $6127: $88
	adc  b                                           ; $6128: $88
	adc  b                                           ; $6129: $88
	adc  b                                           ; $612a: $88
	adc  b                                           ; $612b: $88
	adc  b                                           ; $612c: $88
	adc  b                                           ; $612d: $88
	adc  b                                           ; $612e: $88
	adc  b                                           ; $612f: $88
	adc  b                                           ; $6130: $88
	adc  b                                           ; $6131: $88
	adc  b                                           ; $6132: $88
	adc  b                                           ; $6133: $88
	adc  b                                           ; $6134: $88
	adc  b                                           ; $6135: $88
	adc  b                                           ; $6136: $88
	adc  b                                           ; $6137: $88
	adc  b                                           ; $6138: $88
	adc  b                                           ; $6139: $88
	adc  b                                           ; $613a: $88
	adc  b                                           ; $613b: $88
	adc  b                                           ; $613c: $88
	adc  b                                           ; $613d: $88
	adc  b                                           ; $613e: $88
	adc  b                                           ; $613f: $88
	adc  b                                           ; $6140: $88
	adc  b                                           ; $6141: $88
	adc  b                                           ; $6142: $88
	adc  b                                           ; $6143: $88
	adc  b                                           ; $6144: $88
	adc  b                                           ; $6145: $88
	adc  b                                           ; $6146: $88
	adc  b                                           ; $6147: $88
	adc  b                                           ; $6148: $88
	adc  b                                           ; $6149: $88
	adc  b                                           ; $614a: $88
	adc  b                                           ; $614b: $88
	adc  b                                           ; $614c: $88
	adc  b                                           ; $614d: $88
	adc  b                                           ; $614e: $88
	adc  b                                           ; $614f: $88
	adc  b                                           ; $6150: $88
	adc  b                                           ; $6151: $88
	adc  b                                           ; $6152: $88
	adc  b                                           ; $6153: $88
	adc  b                                           ; $6154: $88
	adc  b                                           ; $6155: $88
	adc  b                                           ; $6156: $88
	adc  b                                           ; $6157: $88
	adc  b                                           ; $6158: $88
	adc  b                                           ; $6159: $88
	adc  b                                           ; $615a: $88
	adc  b                                           ; $615b: $88
	adc  b                                           ; $615c: $88
	adc  b                                           ; $615d: $88
	adc  b                                           ; $615e: $88
	adc  b                                           ; $615f: $88
	adc  b                                           ; $6160: $88
	adc  b                                           ; $6161: $88
	adc  b                                           ; $6162: $88
	adc  b                                           ; $6163: $88
	adc  b                                           ; $6164: $88
	adc  b                                           ; $6165: $88
	adc  b                                           ; $6166: $88
	adc  b                                           ; $6167: $88
	adc  b                                           ; $6168: $88
	adc  b                                           ; $6169: $88
	adc  b                                           ; $616a: $88
	adc  b                                           ; $616b: $88
	adc  b                                           ; $616c: $88
	adc  b                                           ; $616d: $88
	adc  b                                           ; $616e: $88
	adc  b                                           ; $616f: $88
	adc  b                                           ; $6170: $88
	adc  b                                           ; $6171: $88
	adc  b                                           ; $6172: $88
	adc  b                                           ; $6173: $88
	adc  b                                           ; $6174: $88
	adc  b                                           ; $6175: $88
	adc  b                                           ; $6176: $88
	adc  b                                           ; $6177: $88
	adc  b                                           ; $6178: $88
	adc  b                                           ; $6179: $88
	adc  b                                           ; $617a: $88
	adc  b                                           ; $617b: $88
	adc  b                                           ; $617c: $88
	adc  b                                           ; $617d: $88
	adc  b                                           ; $617e: $88
	adc  b                                           ; $617f: $88
	adc  b                                           ; $6180: $88
	adc  b                                           ; $6181: $88
	adc  b                                           ; $6182: $88
	adc  b                                           ; $6183: $88
	adc  b                                           ; $6184: $88
	adc  b                                           ; $6185: $88
	adc  b                                           ; $6186: $88
	adc  b                                           ; $6187: $88
	adc  b                                           ; $6188: $88
	adc  b                                           ; $6189: $88
	adc  b                                           ; $618a: $88
	adc  b                                           ; $618b: $88
	adc  b                                           ; $618c: $88
	adc  b                                           ; $618d: $88
	adc  b                                           ; $618e: $88
	adc  b                                           ; $618f: $88
	adc  b                                           ; $6190: $88
	adc  b                                           ; $6191: $88
	adc  b                                           ; $6192: $88
	adc  b                                           ; $6193: $88
	adc  b                                           ; $6194: $88
	adc  b                                           ; $6195: $88
	adc  b                                           ; $6196: $88
	adc  b                                           ; $6197: $88
	adc  b                                           ; $6198: $88
	adc  b                                           ; $6199: $88
	adc  b                                           ; $619a: $88
	adc  b                                           ; $619b: $88
	adc  b                                           ; $619c: $88
	adc  b                                           ; $619d: $88
	adc  b                                           ; $619e: $88
	adc  b                                           ; $619f: $88
	adc  b                                           ; $61a0: $88
	adc  b                                           ; $61a1: $88
	adc  b                                           ; $61a2: $88
	adc  b                                           ; $61a3: $88
	adc  b                                           ; $61a4: $88
	adc  b                                           ; $61a5: $88
	adc  b                                           ; $61a6: $88
	adc  b                                           ; $61a7: $88
	adc  b                                           ; $61a8: $88
	adc  b                                           ; $61a9: $88
	adc  b                                           ; $61aa: $88
	adc  b                                           ; $61ab: $88
	adc  b                                           ; $61ac: $88
	adc  b                                           ; $61ad: $88
	adc  b                                           ; $61ae: $88
	adc  b                                           ; $61af: $88
	adc  b                                           ; $61b0: $88
	adc  b                                           ; $61b1: $88
	adc  b                                           ; $61b2: $88
	adc  b                                           ; $61b3: $88
	adc  b                                           ; $61b4: $88
	adc  b                                           ; $61b5: $88
	adc  b                                           ; $61b6: $88
	adc  b                                           ; $61b7: $88
	adc  b                                           ; $61b8: $88
	adc  b                                           ; $61b9: $88
	adc  b                                           ; $61ba: $88
	adc  b                                           ; $61bb: $88
	adc  b                                           ; $61bc: $88
	adc  b                                           ; $61bd: $88
	adc  b                                           ; $61be: $88
	adc  b                                           ; $61bf: $88
	adc  b                                           ; $61c0: $88
	adc  b                                           ; $61c1: $88
	adc  b                                           ; $61c2: $88
	adc  b                                           ; $61c3: $88
	adc  b                                           ; $61c4: $88
	adc  b                                           ; $61c5: $88
	adc  b                                           ; $61c6: $88
	adc  b                                           ; $61c7: $88
	adc  b                                           ; $61c8: $88
	adc  b                                           ; $61c9: $88
	adc  b                                           ; $61ca: $88
	adc  b                                           ; $61cb: $88
	adc  b                                           ; $61cc: $88
	adc  b                                           ; $61cd: $88
	adc  b                                           ; $61ce: $88
	adc  b                                           ; $61cf: $88
	adc  b                                           ; $61d0: $88
	adc  b                                           ; $61d1: $88
	adc  b                                           ; $61d2: $88
	adc  b                                           ; $61d3: $88
	adc  b                                           ; $61d4: $88
	adc  b                                           ; $61d5: $88
	adc  b                                           ; $61d6: $88
	adc  b                                           ; $61d7: $88
	adc  b                                           ; $61d8: $88
	adc  b                                           ; $61d9: $88
	adc  b                                           ; $61da: $88
	adc  b                                           ; $61db: $88
	adc  b                                           ; $61dc: $88
	adc  b                                           ; $61dd: $88
	adc  b                                           ; $61de: $88
	adc  b                                           ; $61df: $88
	adc  b                                           ; $61e0: $88
	adc  b                                           ; $61e1: $88
	adc  b                                           ; $61e2: $88
	adc  b                                           ; $61e3: $88
	adc  b                                           ; $61e4: $88
	adc  b                                           ; $61e5: $88
	adc  b                                           ; $61e6: $88
	adc  b                                           ; $61e7: $88
	adc  b                                           ; $61e8: $88
	adc  b                                           ; $61e9: $88
	adc  b                                           ; $61ea: $88
	adc  b                                           ; $61eb: $88
	adc  b                                           ; $61ec: $88
	adc  b                                           ; $61ed: $88
	adc  b                                           ; $61ee: $88
	adc  b                                           ; $61ef: $88
	adc  b                                           ; $61f0: $88
	adc  b                                           ; $61f1: $88
	adc  b                                           ; $61f2: $88
	adc  b                                           ; $61f3: $88
	adc  b                                           ; $61f4: $88
	adc  b                                           ; $61f5: $88
	adc  b                                           ; $61f6: $88
	adc  b                                           ; $61f7: $88
	adc  b                                           ; $61f8: $88
	adc  b                                           ; $61f9: $88
	adc  b                                           ; $61fa: $88
	adc  b                                           ; $61fb: $88
	adc  b                                           ; $61fc: $88
	adc  b                                           ; $61fd: $88
	adc  b                                           ; $61fe: $88
	adc  b                                           ; $61ff: $88
	adc  b                                           ; $6200: $88
	adc  b                                           ; $6201: $88
	adc  b                                           ; $6202: $88
	adc  b                                           ; $6203: $88
	adc  b                                           ; $6204: $88
	adc  b                                           ; $6205: $88
	sbc  c                                           ; $6206: $99
	sub  [hl]                                        ; $6207: $96
	ld   a, d                                        ; $6208: $7a
	and  [hl]                                        ; $6209: $a6
	ld   e, b                                        ; $620a: $58
	cp   c                                           ; $620b: $b9
	ld   d, a                                        ; $620c: $57
	xor  b                                           ; $620d: $a8
	ld   d, a                                        ; $620e: $57
	cp   c                                           ; $620f: $b9
	ld   h, l                                        ; $6210: $65
	adc  e                                           ; $6211: $8b
	and  [hl]                                        ; $6212: $a6
	adc  e                                           ; $6213: $8b
	sub  a                                           ; $6214: $97
	ld   a, c                                        ; $6215: $79
	adc  b                                           ; $6216: $88
	ld   a, b                                        ; $6217: $78
	ld   a, b                                        ; $6218: $78
	halt                                             ; $6219: $76
	adc  b                                           ; $621a: $88
	halt                                             ; $621b: $76
	ld   a, b                                        ; $621c: $78
	adc  c                                           ; $621d: $89
	adc  c                                           ; $621e: $89
	adc  b                                           ; $621f: $88
	add  a                                           ; $6220: $87
	sbc  c                                           ; $6221: $99
	add  a                                           ; $6222: $87
	add  a                                           ; $6223: $87
	ld   [hl], a                                     ; $6224: $77
	ld   [hl], a                                     ; $6225: $77
	ld   a, b                                        ; $6226: $78
	ld   a, b                                        ; $6227: $78
	adc  c                                           ; $6228: $89
	sbc  c                                           ; $6229: $99
	sbc  b                                           ; $622a: $98
	add  a                                           ; $622b: $87
	add  a                                           ; $622c: $87
	ld   [hl], a                                     ; $622d: $77
	ld   h, a                                        ; $622e: $67
	ld   h, l                                        ; $622f: $65
	ld   d, [hl]                                     ; $6230: $56
	ld   d, h                                        ; $6231: $54
	ld   h, a                                        ; $6232: $67
	ld   h, [hl]                                     ; $6233: $66
	adc  b                                           ; $6234: $88
	ld   a, b                                        ; $6235: $78
	cp   d                                           ; $6236: $ba
	cp   h                                           ; $6237: $bc
	res  7, l                                        ; $6238: $cb $bd
	cp   c                                           ; $623a: $b9
	cp   e                                           ; $623b: $bb
	sub  a                                           ; $623c: $97
	add  a                                           ; $623d: $87
	ld   [hl], a                                     ; $623e: $77
	ld   h, l                                        ; $623f: $65
	ld   d, l                                        ; $6240: $55
	ld   d, h                                        ; $6241: $54
	ld   b, h                                        ; $6242: $44
	ld   hl, $326a                                   ; $6243: $21 $6a $32
	xor  l                                           ; $6246: $ad
	ld   l, b                                        ; $6247: $68
	rst  $38                                         ; $6248: $ff
	cp   l                                           ; $6249: $bd
	cp   $bd                                         ; $624a: $fe $bd
	or   a                                           ; $624c: $b7
	sbc  c                                           ; $624d: $99
	ld   h, l                                        ; $624e: $65
	adc  b                                           ; $624f: $88
	ld   h, a                                        ; $6250: $67
	xor  c                                           ; $6251: $a9
	adc  b                                           ; $6252: $88
	ld   h, l                                        ; $6253: $65
	ld   h, e                                        ; $6254: $63
	ld   de, $1a11                                   ; $6255: $11 $11 $1a
	ld   de, $bacf                                   ; $6258: $11 $cf $ba
	rst  $38                                         ; $625b: $ff
	rst  $38                                         ; $625c: $ff
	rst  $38                                         ; $625d: $ff
	rst  $28                                         ; $625e: $ef
	add  h                                           ; $625f: $84
	ld   [hl], h                                     ; $6260: $74
	ld   de, $4866                                   ; $6261: $11 $66 $48
	xor  d                                           ; $6264: $aa
	adc  d                                           ; $6265: $8a
	add  a                                           ; $6266: $87
	ld   sp, $1111                                   ; $6267: $31 $11 $11
	pop  de                                          ; $626a: $d1
	rra                                              ; $626b: $1f
	rst  $38                                         ; $626c: $ff
	rst  $38                                         ; $626d: $ff
	rst  $38                                         ; $626e: $ff
	rst  $38                                         ; $626f: $ff
	ei                                               ; $6270: $fb
	jp   nc, $1113                                   ; $6271: $d2 $13 $11

	add  hl, hl                                      ; $6274: $29
	xor  d                                           ; $6275: $aa
	rst  $38                                         ; $6276: $ff
	cp   $c6                                         ; $6277: $fe $c6
	ld   d, c                                        ; $6279: $51
	ld   de, $1511                                   ; $627a: $11 $11 $15
	pop  af                                          ; $627d: $f1
	ld   a, a                                        ; $627e: $7f
	rst  $38                                         ; $627f: $ff
	rst  $38                                         ; $6280: $ff
	rst  $38                                         ; $6281: $ff
	ld   a, [$3131]                                  ; $6282: $fa $31 $31
	inc  de                                          ; $6285: $13
	add  hl, sp                                      ; $6286: $39
	rst  $38                                         ; $6287: $ff
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	db   $fc                                         ; $628a: $fc
	ld   b, c                                        ; $628b: $41
	ld   de, $1111                                   ; $628c: $11 $11 $11
	rra                                              ; $628f: $1f
	push af                                          ; $6290: $f5
	rst  $38                                         ; $6291: $ff
	rst  $38                                         ; $6292: $ff
	rst  $38                                         ; $6293: $ff
	daa                                              ; $6294: $27
	ld   sp, $1111                                   ; $6295: $31 $11 $11
	adc  a                                           ; $6298: $8f
	rst  $38                                         ; $6299: $ff
	rst  $38                                         ; $629a: $ff
	rst  $38                                         ; $629b: $ff
	db   $fc                                         ; $629c: $fc
	ld   h, c                                        ; $629d: $61
	ld   de, $1111                                   ; $629e: $11 $11 $11
	ld   de, $ff1f                                   ; $62a1: $11 $1f $ff
	rst  $38                                         ; $62a4: $ff
	rst  $38                                         ; $62a5: $ff
	db   $f4                                         ; $62a6: $f4
	ld   de, $1111                                   ; $62a7: $11 $11 $11
	add  hl, sp                                      ; $62aa: $39
	rst  $38                                         ; $62ab: $ff
	rst  $38                                         ; $62ac: $ff
	rst  $38                                         ; $62ad: $ff
	rst  $38                                         ; $62ae: $ff
	add  e                                           ; $62af: $83
	ld   de, $1111                                   ; $62b0: $11 $11 $11
	ld   de, $8f11                                   ; $62b3: $11 $11 $8f
	rst  $38                                         ; $62b6: $ff
	rst  $38                                         ; $62b7: $ff
	rst  $38                                         ; $62b8: $ff
	add  c                                           ; $62b9: $81
	ld   de, $4711                                   ; $62ba: $11 $11 $47
	ld   a, a                                        ; $62bd: $7f
	rst  $38                                         ; $62be: $ff
	rst  $38                                         ; $62bf: $ff
	rst  $38                                         ; $62c0: $ff
	ld   a, [$1131]                                  ; $62c1: $fa $31 $11
	ld   de, $1111                                   ; $62c4: $11 $11 $11
	ld   de, $ffff                                   ; $62c7: $11 $ff $ff
	rst  $38                                         ; $62ca: $ff
	rst  $30                                         ; $62cb: $f7
	ld   hl, $3811                                   ; $62cc: $21 $11 $38
	cp   c                                           ; $62cf: $b9
	cp   a                                           ; $62d0: $bf
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	rst  $38                                         ; $62d3: $ff
	rst  ToBoot                                         ; $62d4: $c7
	ld   de, $1111                                   ; $62d5: $11 $11 $11
	ld   de, $1111                                   ; $62d8: $11 $11 $11
	rst  $38                                         ; $62db: $ff
	rst  $38                                         ; $62dc: $ff
	rst  $38                                         ; $62dd: $ff
	sub  c                                           ; $62de: $91
	ld   de, $af18                                   ; $62df: $11 $18 $af
	call $fedf                                       ; $62e2: $cd $df $fe
	rst  $38                                         ; $62e5: $ff
	rst  $38                                         ; $62e6: $ff
	or   e                                           ; $62e7: $b3
	ld   de, $1111                                   ; $62e8: $11 $11 $11
	ld   de, $1f11                                   ; $62eb: $11 $11 $1f
	rst  $38                                         ; $62ee: $ff
	rst  $38                                         ; $62ef: $ff
	or   $11                                         ; $62f0: $f6 $11
	ld   de, $fd8e                                   ; $62f2: $11 $8e $fd
	db   $fc                                         ; $62f5: $fc
	rst  JumpTable                                         ; $62f6: $df
	xor  $ff                                         ; $62f7: $ee $ff
	ld   sp, hl                                      ; $62f9: $f9
	ld   h, c                                        ; $62fa: $61
	ld   de, $1111                                   ; $62fb: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $62fe: $11 $14 $ff
	rst  $38                                         ; $6301: $ff
	cp   $31                                         ; $6302: $fe $31
	ld   de, $ff1b                                   ; $6304: $11 $1b $ff
	db   $eb                                         ; $6307: $eb
	sbc  [hl]                                        ; $6308: $9e
	db   $fc                                         ; $6309: $fc
	cp   a                                           ; $630a: $bf
	db   $ed                                         ; $630b: $ed
	and  e                                           ; $630c: $a3
	ld   de, $1111                                   ; $630d: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6310: $11 $11 $ff
	rst  $38                                         ; $6313: $ff
	ei                                               ; $6314: $fb
	ld   b, d                                        ; $6315: $42
	ld   de, $ff1b                                   ; $6316: $11 $1b $ff
	db   $fc                                         ; $6319: $fc
	adc  h                                           ; $631a: $8c
	call z, $fdac                                    ; $631b: $cc $ac $fd
	or   d                                           ; $631e: $b2
	ld   de, $1111                                   ; $631f: $11 $11 $11
	ld   de, $ef11                                   ; $6322: $11 $11 $ef
	rst  $38                                         ; $6325: $ff
	rst  $38                                         ; $6326: $ff
	ld   d, c                                        ; $6327: $51
	ld   de, $ff17                                   ; $6328: $11 $17 $ff
	cp   $97                                         ; $632b: $fe $97
	xor  h                                           ; $632d: $ac
	xor  d                                           ; $632e: $aa
	db   $ed                                         ; $632f: $ed
	sub  h                                           ; $6330: $94
	ld   de, $1111                                   ; $6331: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6334: $11 $11 $ff
	rst  $38                                         ; $6337: $ff
	ld   sp, hl                                      ; $6338: $f9
	ld   de, $1a11                                   ; $6339: $11 $11 $1a
	rst  $38                                         ; $633c: $ff
	db   $fd                                         ; $633d: $fd
	ld   [hl], a                                     ; $633e: $77
	cp   e                                           ; $633f: $bb
	cp   [hl]                                        ; $6340: $be
	db   $dd                                         ; $6341: $dd
	ld   h, c                                        ; $6342: $61
	ld   de, $3711                                   ; $6343: $11 $11 $37
	ld   de, $ff16                                   ; $6346: $11 $16 $ff
	rst  $38                                         ; $6349: $ff
	or   d                                           ; $634a: $b2
	ld   de, $4f11                                   ; $634b: $11 $11 $4f
	rst  $38                                         ; $634e: $ff
	ei                                               ; $634f: $fb
	ld   e, c                                        ; $6350: $59
	xor  h                                           ; $6351: $ac
	db   $ed                                         ; $6352: $ed
	ei                                               ; $6353: $fb
	ld   sp, $1111                                   ; $6354: $31 $11 $11
	ld   de, $2f11                                   ; $6357: $11 $11 $2f
	rst  $38                                         ; $635a: $ff
	ld   hl, sp+$11                                  ; $635b: $f8 $11
	ld   de, $af14                                   ; $635d: $11 $14 $af
	rst  $38                                         ; $6360: $ff
	and  [hl]                                        ; $6361: $a6
	sbc  e                                           ; $6362: $9b
	rst  $38                                         ; $6363: $ff
	db   $dd                                         ; $6364: $dd
	or   l                                           ; $6365: $b5
	ld   de, $1111                                   ; $6366: $11 $11 $11
	ld   sp, rAUD1LEN                                   ; $6369: $31 $11 $ff
	rst  $38                                         ; $636c: $ff
	and  c                                           ; $636d: $a1
	rla                                              ; $636e: $17
	ld   de, $ff9b                                   ; $636f: $11 $9b $ff
	ld   sp, hl                                      ; $6372: $f9
	rla                                              ; $6373: $17
	sbc  $ff                                         ; $6374: $de $ff
	db   $dd                                         ; $6376: $dd
	ld   [hl], c                                     ; $6377: $71
	ld   de, $1111                                   ; $6378: $11 $11 $11
	ld   de, $ff1f                                   ; $637b: $11 $1f $ff
	ld   sp, hl                                      ; $637e: $f9
	ld   de, $1b41                                   ; $637f: $11 $41 $1b
	rst  $28                                         ; $6382: $ef
	rst  $38                                         ; $6383: $ff
	add  c                                           ; $6384: $81
	ld   l, h                                        ; $6385: $6c
	rst  $38                                         ; $6386: $ff

Call_0d5_6387:
	rst  $38                                         ; $6387: $ff
	add  $11                                         ; $6388: $c6 $11
	ld   de, $1111                                   ; $638a: $11 $11 $11
	ld   de, $ffff                                   ; $638d: $11 $ff $ff
	add  c                                           ; $6390: $81
	inc  de                                          ; $6391: $13
	ld   de, $fffd                                   ; $6392: $11 $fd $ff
	ld   hl, sp+$16                                  ; $6395: $f8 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6397: $cf
	rst  $38                                         ; $6398: $ff
	ei                                               ; $6399: $fb
	ld   b, c                                        ; $639a: $41
	ld   de, $1111                                   ; $639b: $11 $11 $11
	ld   de, $ff7f                                   ; $639e: $11 $7f $ff
	ldh  a, [c]                                      ; $63a1: $f2
	ld   de, $4f91                                   ; $63a2: $11 $91 $4f
	rst  JumpTable                                         ; $63a5: $df
	rst  $38                                         ; $63a6: $ff
	ld   sp, $ffaf                                   ; $63a7: $31 $af $ff
	ld   a, [$1183]                                  ; $63aa: $fa $83 $11
	ld   de, $1111                                   ; $63ad: $11 $11 $11
	rra                                              ; $63b0: $1f
	rst  $38                                         ; $63b1: $ff
	ld   sp, hl                                      ; $63b2: $f9
	ld   de, $1f41                                   ; $63b3: $11 $41 $1f
	rst  $38                                         ; $63b6: $ff
	rst  $38                                         ; $63b7: $ff
	ld   d, c                                        ; $63b8: $51
	ld   l, [hl]                                     ; $63b9: $6e
	rst  $38                                         ; $63ba: $ff
	ei                                               ; $63bb: $fb
	and  h                                           ; $63bc: $a4
	ld   de, $1111                                   ; $63bd: $11 $11 $11
	ld   de, $ff5f                                   ; $63c0: $11 $5f $ff
	ldh  a, [c]                                      ; $63c3: $f2
	ld   de, $2f91                                   ; $63c4: $11 $91 $2f
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	ld   hl, $ff9f                                   ; $63c9: $21 $9f $ff
	rst  $30                                         ; $63cc: $f7
	ld   h, c                                        ; $63cd: $61
	ld   de, $1111                                   ; $63ce: $11 $11 $11
	ld   a, [de]                                     ; $63d1: $1a
	rst  $38                                         ; $63d2: $ff
	cp   $11                                         ; $63d3: $fe $11
	add  hl, de                                      ; $63d5: $19
	rla                                              ; $63d6: $17
	cp   [hl]                                        ; $63d7: $be
	rst  $38                                         ; $63d8: $ff
	pop  af                                          ; $63d9: $f1
	dec  hl                                          ; $63da: $2b
	rst  $38                                         ; $63db: $ff
	db   $fd                                         ; $63dc: $fd
	ld   [hl], l                                     ; $63dd: $75
	ld   de, $1111                                   ; $63de: $11 $11 $11
	ld   de, $ffff                                   ; $63e1: $11 $ff $ff
	ld   b, c                                        ; $63e4: $41
	inc  de                                          ; $63e5: $13
	inc  [hl]                                        ; $63e6: $34
	jp   z, $f9ff                                    ; $63e7: $ca $ff $f9

	ld   a, [hl+]                                    ; $63ea: $2a
	rst  $38                                         ; $63eb: $ff
	rst  $38                                         ; $63ec: $ff
	sub  e                                           ; $63ed: $93
	ld   de, $1111                                   ; $63ee: $11 $11 $11
	jr   @+$01                                       ; $63f1: $18 $ff

	rst  $38                                         ; $63f3: $ff
	sub  c                                           ; $63f4: $91
	inc  d                                           ; $63f5: $14
	dec  d                                           ; $63f6: $15
	db   $fc                                         ; $63f7: $fc
	db   $ed                                         ; $63f8: $ed
	rst  $30                                         ; $63f9: $f7
	ld   l, e                                        ; $63fa: $6b
	rst  $38                                         ; $63fb: $ff
	rst  $38                                         ; $63fc: $ff
	ld   [hl], c                                     ; $63fd: $71
	ld   de, $1111                                   ; $63fe: $11 $11 $11
	rra                                              ; $6401: $1f
	rst  $38                                         ; $6402: $ff
	push af                                          ; $6403: $f5
	ld   de, $4d25                                   ; $6404: $11 $25 $4d
	rst  JumpTable                                         ; $6407: $df
	db   $db                                         ; $6408: $db
	ld   d, d                                        ; $6409: $52
	sbc  a                                           ; $640a: $9f
	rst  $38                                         ; $640b: $ff
	ld   a, [$1111]                                  ; $640c: $fa $11 $11
	ld   de, rAUD1HIGH                                   ; $640f: $11 $14 $ff
	rst  $38                                         ; $6412: $ff
	ld   d, c                                        ; $6413: $51
	ld   de, $ff05                                   ; $6414: $11 $05 $ff
	rst  $38                                         ; $6417: $ff
	db   $d3                                         ; $6418: $d3
	ld   d, $bf                                      ; $6419: $16 $bf
	rst  $38                                         ; $641b: $ff
	or   c                                           ; $641c: $b1
	ld   de, $1111                                   ; $641d: $11 $11 $11
	rst  $38                                         ; $6420: $ff
	rst  $38                                         ; $6421: $ff
	call nz, $2111                                   ; $6422: $c4 $11 $21
	cp   l                                           ; $6425: $bd
	rst  $38                                         ; $6426: $ff
	ld   [$af24], a                                  ; $6427: $ea $24 $af
	rst  $38                                         ; $642a: $ff
	pop  hl                                          ; $642b: $e1
	ld   de, $1111                                   ; $642c: $11 $11 $11
	rst  $38                                         ; $642f: $ff
	rst  $38                                         ; $6430: $ff
	or   $11                                         ; $6431: $f6 $11
	ld   de, $fd9d                                   ; $6433: $11 $9d $fd
	ld   a, [$6f23]                                  ; $6436: $fa $23 $6f
	rst  $38                                         ; $6439: $ff
	pop  af                                          ; $643a: $f1
	ld   de, $1f11                                   ; $643b: $11 $11 $1f
	rst  $38                                         ; $643e: $ff
	rst  $38                                         ; $643f: $ff
	ldh  [c], a                                      ; $6440: $e2
	inc  d                                           ; $6441: $14
	dec  d                                           ; $6442: $15
	cp   [hl]                                        ; $6443: $be
	rst  $38                                         ; $6444: $ff
	push af                                          ; $6445: $f5
	ld   [de], a                                     ; $6446: $12
	cp   a                                           ; $6447: $bf
	rst  $38                                         ; $6448: $ff
	sub  c                                           ; $6449: $91
	ld   de, rAUD1LEN                                   ; $644a: $11 $11 $ff
	rst  $38                                         ; $644d: $ff
	cp   $21                                         ; $644e: $fe $21
	ld   de, $efcd                                   ; $6450: $11 $cd $ef
	rst  $38                                         ; $6453: $ff
	ld   d, c                                        ; $6454: $51
	jr   @+$01                                       ; $6455: $18 $ff

	or   $11                                         ; $6457: $f6 $11
	ld   de, $ff1f                                   ; $6459: $11 $1f $ff
	rst  $38                                         ; $645c: $ff
	pop  bc                                          ; $645d: $c1
	ld   hl, $cf0b                                   ; $645e: $21 $0b $cf
	rst  $38                                         ; $6461: $ff
	or   e                                           ; $6462: $b3
	inc  de                                          ; $6463: $13
	sbc  h                                           ; $6464: $9c
	add  sp, $11                                     ; $6465: $e8 $11
	ld   de, $ff1f                                   ; $6467: $11 $1f $ff
	rst  $38                                         ; $646a: $ff
	db   $e3                                         ; $646b: $e3
	ld   b, c                                        ; $646c: $41
	ld   d, $9f                                      ; $646d: $16 $9f
	rst  $38                                         ; $646f: $ff
	ldh  a, [c]                                      ; $6470: $f2
	ld   [de], a                                     ; $6471: $12
	ld   l, b                                        ; $6472: $68
	and  [hl]                                        ; $6473: $a6
	ld   de, $7f11                                   ; $6474: $11 $11 $7f
	rst  $38                                         ; $6477: $ff
	rst  $38                                         ; $6478: $ff
	or   e                                           ; $6479: $b3
	ld   h, c                                        ; $647a: $61
	inc  [hl]                                        ; $647b: $34
	ld   a, a                                        ; $647c: $7f
	rst  $38                                         ; $647d: $ff
	sub  [hl]                                        ; $647e: $96
	ld   h, l                                        ; $647f: $65
	ld   [hl], a                                     ; $6480: $77
	ld   b, c                                        ; $6481: $41
	ld   de, rAUD1LEN                                   ; $6482: $11 $11 $ff
	rst  $38                                         ; $6485: $ff
	rst  $38                                         ; $6486: $ff
	ld   [hl], a                                     ; $6487: $77
	ld   [de], a                                     ; $6488: $12
	ld   h, l                                        ; $6489: $65
	cp   a                                           ; $648a: $bf
	ld   a, [$7735]                                  ; $648b: $fa $35 $77
	ld   h, e                                        ; $648e: $63
	ld   de, $6f11                                   ; $648f: $11 $11 $6f
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	or   $31                                         ; $6494: $f6 $31
	ld   b, l                                        ; $6496: $45
	ccf                                              ; $6497: $3f
	rst  $38                                         ; $6498: $ff
	ld   [hl], h                                     ; $6499: $74
	ld   b, h                                        ; $649a: $44
	ld   [hl-], a                                    ; $649b: $32
	ld   de, $1f11                                   ; $649c: $11 $11 $1f
	rst  $38                                         ; $649f: $ff
	rst  $38                                         ; $64a0: $ff
	cp   $73                                         ; $64a1: $fe $73
	ld   [hl], d                                     ; $64a3: $72
	dec  de                                          ; $64a4: $1b
	rst  $38                                         ; $64a5: $ff
	sub  a                                           ; $64a6: $97
	ld   h, h                                        ; $64a7: $64
	ld   de, $1111                                   ; $64a8: $11 $11 $11
	rst  $38                                         ; $64ab: $ff
	rst  $38                                         ; $64ac: $ff
	rst  $38                                         ; $64ad: $ff
	ld   sp, hl                                      ; $64ae: $f9
	ld   d, [hl]                                     ; $64af: $56
	sub  c                                           ; $64b0: $91
	ld   a, [hl]                                     ; $64b1: $7e
	db   $fd                                         ; $64b2: $fd
	adc  b                                           ; $64b3: $88
	ld   d, c                                        ; $64b4: $51
	ld   de, $1f11                                   ; $64b5: $11 $11 $1f
	ei                                               ; $64b8: $fb
	rst  $38                                         ; $64b9: $ff
	cp   $eb                                         ; $64ba: $fe $eb
	ld   [hl], h                                     ; $64bc: $74
	daa                                              ; $64bd: $27
	db   $ec                                         ; $64be: $ec
	ld   e, b                                        ; $64bf: $58
	or   a                                           ; $64c0: $b7
	ld   de, $1611                                   ; $64c1: $11 $11 $16
	db   $eb                                         ; $64c4: $eb
	rst  $38                                         ; $64c5: $ff
	rst  $38                                         ; $64c6: $ff
	db   $fc                                         ; $64c7: $fc
	cp   e                                           ; $64c8: $bb
	ld   b, [hl]                                     ; $64c9: $46
	call c, Call_0d5_5475                            ; $64ca: $dc $75 $54
	ld   de, $1411                                   ; $64cd: $11 $11 $14
	jp   z, $ffdf                                    ; $64d0: $ca $df $ff

	rst  $38                                         ; $64d3: $ff
	xor  e                                           ; $64d4: $ab
	xor  d                                           ; $64d5: $aa
	cp   e                                           ; $64d6: $bb
	and  [hl]                                        ; $64d7: $a6
	ld   sp, $1111                                   ; $64d8: $31 $11 $11
	dec  e                                           ; $64db: $1d
	and  $ef                                         ; $64dc: $e6 $ef
	cp   $ff                                         ; $64de: $fe $ff
	cp   b                                           ; $64e0: $b8
	cp   [hl]                                        ; $64e1: $be
	cp   e                                           ; $64e2: $bb
	halt                                             ; $64e3: $76
	ld   b, c                                        ; $64e4: $41
	ld   de, $1f11                                   ; $64e5: $11 $11 $1f
	adc  c                                           ; $64e8: $89
	rst  $38                                         ; $64e9: $ff
	rst  $38                                         ; $64ea: $ff
	rst  $38                                         ; $64eb: $ff
	jp   z, $e8ae                                    ; $64ec: $ca $ae $e8

	ld   l, b                                        ; $64ef: $68
	ld   hl, $1111                                   ; $64f0: $21 $11 $11
	sub  a                                           ; $64f3: $97
	ld   c, [hl]                                     ; $64f4: $4e
	rst  $38                                         ; $64f5: $ff
	rst  $28                                         ; $64f6: $ef
	db   $fc                                         ; $64f7: $fc
	rst  JumpTable                                         ; $64f8: $df
	cp   d                                           ; $64f9: $ba
	and  h                                           ; $64fa: $a4
	ld   d, e                                        ; $64fb: $53
	ld   de, $1611                                   ; $64fc: $11 $11 $16
	sub  d                                           ; $64ff: $92
	xor  a                                           ; $6500: $af
	call c, $fcdf                                    ; $6501: $dc $df $fc
	cp   l                                           ; $6504: $bd
	reti                                             ; $6505: $d9


	ld   [hl], a                                     ; $6506: $77
	ld   h, e                                        ; $6507: $63
	ld   de, $2811                                   ; $6508: $11 $11 $28
	ld   h, [hl]                                     ; $650b: $66
	res  3, b                                        ; $650c: $cb $98
	cp   h                                           ; $650e: $bc
	cp   h                                           ; $650f: $bc
	cp   l                                           ; $6510: $bd
	db   $fc                                         ; $6511: $fc
	sbc  c                                           ; $6512: $99
	add  h                                           ; $6513: $84
	inc  [hl]                                        ; $6514: $34
	ld   d, h                                        ; $6515: $54
	ld   e, b                                        ; $6516: $58
	ld   a, b                                        ; $6517: $78
	ld   d, [hl]                                     ; $6518: $56
	sub  h                                           ; $6519: $94
	sbc  b                                           ; $651a: $98
	sbc  d                                           ; $651b: $9a
	adc  e                                           ; $651c: $8b
	cp   d                                           ; $651d: $ba
	xor  h                                           ; $651e: $ac
	cp   b                                           ; $651f: $b8
	xor  c                                           ; $6520: $a9
	ld   h, a                                        ; $6521: $67
	add  h                                           ; $6522: $84
	adc  b                                           ; $6523: $88
	ld   l, c                                        ; $6524: $69
	halt                                             ; $6525: $76
	add  a                                           ; $6526: $87
	halt                                             ; $6527: $76
	sbc  b                                           ; $6528: $98
	ld   h, [hl]                                     ; $6529: $66
	adc  c                                           ; $652a: $89
	sbc  d                                           ; $652b: $9a
	xor  e                                           ; $652c: $ab
	cp   c                                           ; $652d: $b9
	cp   d                                           ; $652e: $ba
	xor  c                                           ; $652f: $a9
	adc  b                                           ; $6530: $88
	adc  b                                           ; $6531: $88
	sbc  c                                           ; $6532: $99
	sbc  b                                           ; $6533: $98
	add  a                                           ; $6534: $87
	ld   h, [hl]                                     ; $6535: $66
	ld   d, [hl]                                     ; $6536: $56
	ld   h, [hl]                                     ; $6537: $66
	ld   a, c                                        ; $6538: $79
	adc  d                                           ; $6539: $8a
	xor  d                                           ; $653a: $aa
	xor  c                                           ; $653b: $a9
	xor  c                                           ; $653c: $a9
	sbc  b                                           ; $653d: $98
	adc  b                                           ; $653e: $88
	sbc  b                                           ; $653f: $98
	ld   a, c                                        ; $6540: $79
	ld   [hl], a                                     ; $6541: $77
	adc  c                                           ; $6542: $89
	halt                                             ; $6543: $76
	ld   a, b                                        ; $6544: $78
	ld   h, a                                        ; $6545: $67
	sbc  b                                           ; $6546: $98
	sbc  c                                           ; $6547: $99
	adc  c                                           ; $6548: $89
	add  a                                           ; $6549: $87
	adc  c                                           ; $654a: $89
	add  a                                           ; $654b: $87
	sbc  c                                           ; $654c: $99
	add  a                                           ; $654d: $87
	ld   [hl], a                                     ; $654e: $77
	ld   [hl], a                                     ; $654f: $77
	adc  b                                           ; $6550: $88
	adc  b                                           ; $6551: $88
	xor  b                                           ; $6552: $a8
	adc  c                                           ; $6553: $89
	sbc  d                                           ; $6554: $9a
	add  a                                           ; $6555: $87
	add  a                                           ; $6556: $87
	add  a                                           ; $6557: $87
	ld   h, a                                        ; $6558: $67
	add  a                                           ; $6559: $87
	ld   a, b                                        ; $655a: $78
	ld   [hl], a                                     ; $655b: $77
	ld   [hl], a                                     ; $655c: $77
	adc  b                                           ; $655d: $88
	adc  b                                           ; $655e: $88
	adc  c                                           ; $655f: $89
	sbc  b                                           ; $6560: $98
	sbc  b                                           ; $6561: $98
	halt                                             ; $6562: $76
	ld   l, b                                        ; $6563: $68
	adc  c                                           ; $6564: $89
	sub  a                                           ; $6565: $97
	ld   [hl], a                                     ; $6566: $77
	ld   [hl], a                                     ; $6567: $77
	ld   a, c                                        ; $6568: $79
	sub  a                                           ; $6569: $97
	sbc  c                                           ; $656a: $99
	sbc  b                                           ; $656b: $98
	xor  c                                           ; $656c: $a9
	adc  b                                           ; $656d: $88
	ld   a, c                                        ; $656e: $79
	add  a                                           ; $656f: $87
	ld   a, b                                        ; $6570: $78
	add  a                                           ; $6571: $87
	ld   h, a                                        ; $6572: $67
	add  [hl]                                        ; $6573: $86
	ld   l, c                                        ; $6574: $69
	add  a                                           ; $6575: $87
	adc  c                                           ; $6576: $89
	sbc  b                                           ; $6577: $98
	sbc  b                                           ; $6578: $98
	adc  c                                           ; $6579: $89
	ld   a, c                                        ; $657a: $79
	sbc  b                                           ; $657b: $98
	add  a                                           ; $657c: $87
	adc  b                                           ; $657d: $88
	ld   h, [hl]                                     ; $657e: $66
	ld   h, [hl]                                     ; $657f: $66
	ld   h, l                                        ; $6580: $65
	ld   a, b                                        ; $6581: $78
	ld   a, c                                        ; $6582: $79
	sbc  c                                           ; $6583: $99
	sbc  b                                           ; $6584: $98
	sbc  c                                           ; $6585: $99
	sbc  b                                           ; $6586: $98
	sbc  c                                           ; $6587: $99
	ld   [hl], a                                     ; $6588: $77
	sub  a                                           ; $6589: $97
	ld   [hl], a                                     ; $658a: $77
	ld   [hl], a                                     ; $658b: $77
	ld   l, b                                        ; $658c: $68
	add  [hl]                                        ; $658d: $86
	sbc  c                                           ; $658e: $99
	adc  b                                           ; $658f: $88
	adc  c                                           ; $6590: $89
	sbc  b                                           ; $6591: $98
	sbc  c                                           ; $6592: $99
	adc  b                                           ; $6593: $88
	sub  a                                           ; $6594: $97
	adc  d                                           ; $6595: $8a
	add  [hl]                                        ; $6596: $86
	sbc  c                                           ; $6597: $99
	ld   h, a                                        ; $6598: $67
	ld   a, b                                        ; $6599: $78
	add  a                                           ; $659a: $87
	sub  a                                           ; $659b: $97
	sbc  d                                           ; $659c: $9a
	ld   a, c                                        ; $659d: $79
	adc  b                                           ; $659e: $88
	adc  c                                           ; $659f: $89
	adc  b                                           ; $65a0: $88
	sbc  b                                           ; $65a1: $98
	add  a                                           ; $65a2: $87
	adc  b                                           ; $65a3: $88
	ld   a, c                                        ; $65a4: $79
	ld   h, a                                        ; $65a5: $67
	add  a                                           ; $65a6: $87
	adc  c                                           ; $65a7: $89

Jump_0d5_65a8:
	sbc  b                                           ; $65a8: $98
	adc  c                                           ; $65a9: $89
	adc  c                                           ; $65aa: $89
	adc  c                                           ; $65ab: $89
	ld   a, b                                        ; $65ac: $78
	sbc  b                                           ; $65ad: $98
	adc  b                                           ; $65ae: $88
	adc  b                                           ; $65af: $88
	ld   a, b                                        ; $65b0: $78
	ld   a, c                                        ; $65b1: $79
	ld   [hl], a                                     ; $65b2: $77
	sbc  b                                           ; $65b3: $98
	add  a                                           ; $65b4: $87
	adc  b                                           ; $65b5: $88
	adc  b                                           ; $65b6: $88
	adc  b                                           ; $65b7: $88
	add  a                                           ; $65b8: $87
	adc  b                                           ; $65b9: $88
	adc  b                                           ; $65ba: $88
	ld   a, c                                        ; $65bb: $79
	adc  b                                           ; $65bc: $88
	sbc  b                                           ; $65bd: $98
	add  a                                           ; $65be: $87
	sbc  b                                           ; $65bf: $98
	ld   [hl], a                                     ; $65c0: $77
	add  a                                           ; $65c1: $87
	add  a                                           ; $65c2: $87
	adc  b                                           ; $65c3: $88
	adc  b                                           ; $65c4: $88
	adc  c                                           ; $65c5: $89
	adc  b                                           ; $65c6: $88
	ld   a, c                                        ; $65c7: $79
	sub  a                                           ; $65c8: $97
	add  a                                           ; $65c9: $87
	ld   a, b                                        ; $65ca: $78
	adc  b                                           ; $65cb: $88
	sbc  c                                           ; $65cc: $99
	ld   l, b                                        ; $65cd: $68
	sub  a                                           ; $65ce: $97
	ld   a, c                                        ; $65cf: $79
	sub  a                                           ; $65d0: $97
	ld   a, b                                        ; $65d1: $78
	xor  b                                           ; $65d2: $a8
	ld   a, c                                        ; $65d3: $79
	sbc  b                                           ; $65d4: $98
	ld   a, b                                        ; $65d5: $78
	adc  b                                           ; $65d6: $88
	ld   a, b                                        ; $65d7: $78
	add  a                                           ; $65d8: $87
	ld   a, b                                        ; $65d9: $78
	add  a                                           ; $65da: $87
	ld   a, b                                        ; $65db: $78
	add  a                                           ; $65dc: $87
	adc  b                                           ; $65dd: $88
	sbc  b                                           ; $65de: $98
	ld   a, b                                        ; $65df: $78
	sbc  b                                           ; $65e0: $98
	ld   a, b                                        ; $65e1: $78
	sub  a                                           ; $65e2: $97
	sbc  b                                           ; $65e3: $98
	ld   a, d                                        ; $65e4: $7a
	ld   [hl], l                                     ; $65e5: $75
	sbc  d                                           ; $65e6: $9a
	ld   l, b                                        ; $65e7: $68
	sbc  b                                           ; $65e8: $98
	adc  b                                           ; $65e9: $88
	sbc  c                                           ; $65ea: $99
	add  a                                           ; $65eb: $87
	adc  d                                           ; $65ec: $8a
	sbc  b                                           ; $65ed: $98
	sbc  c                                           ; $65ee: $99
	add  [hl]                                        ; $65ef: $86
	sbc  c                                           ; $65f0: $99
	ld   [hl], a                                     ; $65f1: $77
	sbc  c                                           ; $65f2: $99
	add  a                                           ; $65f3: $87
	ld   a, d                                        ; $65f4: $7a
	xor  c                                           ; $65f5: $a9
	sbc  c                                           ; $65f6: $99
	xor  d                                           ; $65f7: $aa
	ld   [hl], a                                     ; $65f8: $77
	cp   c                                           ; $65f9: $b9
	ld   h, a                                        ; $65fa: $67
	xor  b                                           ; $65fb: $a8
	ld   [hl], a                                     ; $65fc: $77
	ld   a, c                                        ; $65fd: $79
	add  [hl]                                        ; $65fe: $86
	adc  c                                           ; $65ff: $89
	ld   l, b                                        ; $6600: $68
	cp   b                                           ; $6601: $b8
	xor  c                                           ; $6602: $a9
	adc  h                                           ; $6603: $8c
	and  [hl]                                        ; $6604: $a6
	xor  d                                           ; $6605: $aa
	ld   [hl], l                                     ; $6606: $75
	adc  b                                           ; $6607: $88
	ld   h, [hl]                                     ; $6608: $66
	ld   [hl], a                                     ; $6609: $77
	adc  b                                           ; $660a: $88
	ld   e, b                                        ; $660b: $58
	xor  b                                           ; $660c: $a8
	ld   a, l                                        ; $660d: $7d
	cp   c                                           ; $660e: $b9
	xor  d                                           ; $660f: $aa
	xor  c                                           ; $6610: $a9
	sbc  b                                           ; $6611: $98
	add  a                                           ; $6612: $87
	ld   h, a                                        ; $6613: $67
	ld   h, l                                        ; $6614: $65
	ld   h, l                                        ; $6615: $65
	ld   l, b                                        ; $6616: $68
	ld   [hl], a                                     ; $6617: $77
	xor  d                                           ; $6618: $aa
	adc  e                                           ; $6619: $8b
	res  5, l                                        ; $661a: $cb $ad
	ret                                              ; $661c: $c9


	xor  c                                           ; $661d: $a9
	add  [hl]                                        ; $661e: $86
	ld   h, [hl]                                     ; $661f: $66
	dec  [hl]                                        ; $6620: $35
	ld   b, e                                        ; $6621: $43
	ld   b, h                                        ; $6622: $44
	ld   b, a                                        ; $6623: $47
	ld   a, c                                        ; $6624: $79
	sbc  $cc                                         ; $6625: $de $cc
	cp   $cd                                         ; $6627: $fe $cd
	ld   [$5388], a                                  ; $6629: $ea $88 $53
	ld   de, $1111                                   ; $662c: $11 $11 $11
	ld   b, e                                        ; $662f: $43
	ld   e, b                                        ; $6630: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6631: $cf
	rst  $28                                         ; $6632: $ef
	rst  $38                                         ; $6633: $ff
	rst  $38                                         ; $6634: $ff
	cp   $a6                                         ; $6635: $fe $a6
	ld   hl, $1111                                   ; $6637: $21 $11 $11
	ld   de, $6b11                                   ; $663a: $11 $11 $6b
	rst  $28                                         ; $663d: $ef
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	rst  $38                                         ; $6641: $ff
	and  l                                           ; $6642: $a5
	ld   de, $1111                                   ; $6643: $11 $11 $11
	ld   de, $6914                                   ; $6646: $11 $14 $69
	rst  $38                                         ; $6649: $ff
	rst  $38                                         ; $664a: $ff
	rst  $38                                         ; $664b: $ff
	rst  $38                                         ; $664c: $ff
	rst  $38                                         ; $664d: $ff
	and  c                                           ; $664e: $a1
	ld   de, $1111                                   ; $664f: $11 $11 $11
	ld   de, $4913                                   ; $6652: $11 $13 $49
	rst  $38                                         ; $6655: $ff
	rst  $38                                         ; $6656: $ff
	rst  $38                                         ; $6657: $ff
	rst  $38                                         ; $6658: $ff
	cp   $72                                         ; $6659: $fe $72
	ld   de, $1111                                   ; $665b: $11 $11 $11
	ld   de, $4c14                                   ; $665e: $11 $14 $4c
	rst  $38                                         ; $6661: $ff
	rst  $38                                         ; $6662: $ff
	rst  $38                                         ; $6663: $ff
	rst  $38                                         ; $6664: $ff
	cp   $61                                         ; $6665: $fe $61
	ld   de, $1111                                   ; $6667: $11 $11 $11
	ld   de, $4f12                                   ; $666a: $11 $12 $4f
	rst  $38                                         ; $666d: $ff
	rst  $38                                         ; $666e: $ff
	rst  $38                                         ; $666f: $ff
	rst  $38                                         ; $6670: $ff
	cp   $41                                         ; $6671: $fe $41
	ld   de, $1111                                   ; $6673: $11 $11 $11
	ld   de, $6d13                                   ; $6676: $11 $13 $6d
	rst  $38                                         ; $6679: $ff
	rst  $38                                         ; $667a: $ff
	rst  $38                                         ; $667b: $ff
	rst  $38                                         ; $667c: $ff
	cp   $61                                         ; $667d: $fe $61
	ld   de, $1111                                   ; $667f: $11 $11 $11
	ld   de, $7c12                                   ; $6682: $11 $12 $7c
	rst  $38                                         ; $6685: $ff
	rst  $38                                         ; $6686: $ff
	rst  $38                                         ; $6687: $ff
	rst  $38                                         ; $6688: $ff
	rst  $38                                         ; $6689: $ff
	and  c                                           ; $668a: $a1
	ld   de, $1111                                   ; $668b: $11 $11 $11
	ld   de, $8911                                   ; $668e: $11 $11 $89
	rst  $38                                         ; $6691: $ff
	rst  $38                                         ; $6692: $ff
	rst  $38                                         ; $6693: $ff
	rst  $38                                         ; $6694: $ff
	rst  $38                                         ; $6695: $ff
	and  d                                           ; $6696: $a2

Jump_0d5_6697:
	ld   de, $1111                                   ; $6697: $11 $11 $11
	ld   de, $8611                                   ; $669a: $11 $11 $86
	rst  $38                                         ; $669d: $ff
	rst  $38                                         ; $669e: $ff
	rst  $38                                         ; $669f: $ff
	rst  $38                                         ; $66a0: $ff
	rst  $38                                         ; $66a1: $ff
	or   $11                                         ; $66a2: $f6 $11
	ld   de, $1111                                   ; $66a4: $11 $11 $11
	ld   de, $af2a                                   ; $66a7: $11 $2a $af
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	rst  $38                                         ; $66ac: $ff
	rst  $38                                         ; $66ad: $ff
	db   $fd                                         ; $66ae: $fd
	ld   de, $1111                                   ; $66af: $11 $11 $11
	ld   de, $1611                                   ; $66b2: $11 $11 $16
	cp   d                                           ; $66b5: $ba
	rst  $38                                         ; $66b6: $ff
	rst  $38                                         ; $66b7: $ff
	rst  $38                                         ; $66b8: $ff
	rst  $38                                         ; $66b9: $ff
	rst  $38                                         ; $66ba: $ff
	sub  c                                           ; $66bb: $91
	ld   de, $1111                                   ; $66bc: $11 $11 $11
	ld   de, $9911                                   ; $66bf: $11 $11 $99
	rst  $38                                         ; $66c2: $ff
	rst  $38                                         ; $66c3: $ff
	rst  $38                                         ; $66c4: $ff
	rst  $38                                         ; $66c5: $ff
	rst  $38                                         ; $66c6: $ff
	ld   a, [$1111]                                  ; $66c7: $fa $11 $11
	ld   de, $1111                                   ; $66ca: $11 $11 $11
	rla                                              ; $66cd: $17
	rst  $38                                         ; $66ce: $ff
	rst  $38                                         ; $66cf: $ff
	rst  $38                                         ; $66d0: $ff
	rst  $38                                         ; $66d1: $ff
	rst  $38                                         ; $66d2: $ff
	rst  $38                                         ; $66d3: $ff
	and  c                                           ; $66d4: $a1
	ld   de, $1111                                   ; $66d5: $11 $11 $11
	ld   de, $4b11                                   ; $66d8: $11 $11 $4b
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
	db   $fc                                         ; $66e0: $fc
	ld   d, c                                        ; $66e1: $51
	ld   de, $1111                                   ; $66e2: $11 $11 $11
	ld   de, wTitleScreenGirlHairAnimIdx                                   ; $66e5: $11 $12 $cc
	rst  $38                                         ; $66e8: $ff
	rst  $38                                         ; $66e9: $ff
	rst  $38                                         ; $66ea: $ff
	rst  $38                                         ; $66eb: $ff
	rst  $38                                         ; $66ec: $ff
	sub  $11                                         ; $66ed: $d6 $11
	ld   de, $1111                                   ; $66ef: $11 $11 $11
	ld   de, $ff17                                   ; $66f2: $11 $17 $ff
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	rst  $38                                         ; $66f8: $ff
	rst  $38                                         ; $66f9: $ff
	or   d                                           ; $66fa: $b2
	ld   de, $1111                                   ; $66fb: $11 $11 $11
	ld   de, $1b11                                   ; $66fe: $11 $11 $1b
	rst  $28                                         ; $6701: $ef
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	rst  $38                                         ; $6704: $ff
	rst  $38                                         ; $6705: $ff
	db   $fd                                         ; $6706: $fd
	add  d                                           ; $6707: $82
	ld   de, $1111                                   ; $6708: $11 $11 $11
	ld   de, $1a11                                   ; $670b: $11 $11 $1a
	rst  $38                                         ; $670e: $ff
	rst  $38                                         ; $670f: $ff
	rst  $38                                         ; $6710: $ff
	rst  $38                                         ; $6711: $ff
	rst  $38                                         ; $6712: $ff
	rst  $38                                         ; $6713: $ff
	ld   [hl], c                                     ; $6714: $71
	ld   de, $1111                                   ; $6715: $11 $11 $11
	ld   de, $3a11                                   ; $6718: $11 $11 $3a
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	rst  $38                                         ; $671d: $ff
	rst  $38                                         ; $671e: $ff
	rst  $38                                         ; $671f: $ff
	cp   $91                                         ; $6720: $fe $91
	ld   de, $1111                                   ; $6722: $11 $11 $11
	ld   de, $1c11                                   ; $6725: $11 $11 $1c
	rst  $38                                         ; $6728: $ff
	rst  $38                                         ; $6729: $ff
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	rst  $38                                         ; $672c: $ff
	cp   $81                                         ; $672d: $fe $81
	ld   de, $1111                                   ; $672f: $11 $11 $11
	ld   de, $1511                                   ; $6732: $11 $11 $15
	rst  $38                                         ; $6735: $ff
	rst  $38                                         ; $6736: $ff
	rst  $38                                         ; $6737: $ff
	rst  $38                                         ; $6738: $ff
	rst  $38                                         ; $6739: $ff
	rst  $38                                         ; $673a: $ff
	add  h                                           ; $673b: $84
	ld   de, $1111                                   ; $673c: $11 $11 $11
	ld   de, $1311                                   ; $673f: $11 $11 $13
	rst  JumpTable                                         ; $6742: $df
	rst  $38                                         ; $6743: $ff
	rst  $38                                         ; $6744: $ff
	rst  $38                                         ; $6745: $ff
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	or   h                                           ; $6748: $b4
	ld   de, $1111                                   ; $6749: $11 $11 $11
	ld   de, $1211                                   ; $674c: $11 $11 $12
	ld   c, a                                        ; $674f: $4f
	rst  $38                                         ; $6750: $ff
	rst  $38                                         ; $6751: $ff
	rst  $38                                         ; $6752: $ff
	rst  $38                                         ; $6753: $ff
	rst  $38                                         ; $6754: $ff
	ld   hl, sp+$21                                  ; $6755: $f8 $21
	ld   de, $1111                                   ; $6757: $11 $11 $11
	ld   de, $5a12                                   ; $675a: $11 $12 $5a
	rst  $38                                         ; $675d: $ff
	rst  $38                                         ; $675e: $ff
	rst  $38                                         ; $675f: $ff
	rst  $38                                         ; $6760: $ff
	rst  $38                                         ; $6761: $ff
	cp   $51                                         ; $6762: $fe $51
	ld   de, $1111                                   ; $6764: $11 $11 $11
	ld   de, $4811                                   ; $6767: $11 $11 $48
	rst  JumpTable                                         ; $676a: $df
	rst  $38                                         ; $676b: $ff
	rst  $38                                         ; $676c: $ff
	rst  $38                                         ; $676d: $ff
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	db   $f4                                         ; $6770: $f4
	ld   de, $1111                                   ; $6771: $11 $11 $11
	ld   de, $1511                                   ; $6774: $11 $11 $15
	sbc  [hl]                                        ; $6777: $9e
	rst  $38                                         ; $6778: $ff
	rst  $38                                         ; $6779: $ff
	rst  $38                                         ; $677a: $ff
	rst  $38                                         ; $677b: $ff
	rst  $38                                         ; $677c: $ff
	cp   $61                                         ; $677d: $fe $61
	ld   de, $1111                                   ; $677f: $11 $11 $11
	ld   de, $1811                                   ; $6782: $11 $11 $18
	rst  $28                                         ; $6785: $ef
	rst  $38                                         ; $6786: $ff
	rst  $38                                         ; $6787: $ff
	rst  $38                                         ; $6788: $ff
	rst  $38                                         ; $6789: $ff
	rst  $38                                         ; $678a: $ff
	db   $eb                                         ; $678b: $eb
	ld   d, c                                        ; $678c: $51
	ld   de, $1111                                   ; $678d: $11 $11 $11
	ld   de, $5f11                                   ; $6790: $11 $11 $5f
	rst  $38                                         ; $6793: $ff
	rst  $38                                         ; $6794: $ff
	rst  $38                                         ; $6795: $ff
	rst  $38                                         ; $6796: $ff
	rst  $38                                         ; $6797: $ff
	cp   $e9                                         ; $6798: $fe $e9
	ld   de, $1111                                   ; $679a: $11 $11 $11
	ld   de, $1111                                   ; $679d: $11 $11 $11
	ld   c, [hl]                                     ; $67a0: $4e
	rst  $38                                         ; $67a1: $ff
	rst  $38                                         ; $67a2: $ff
	rst  $38                                         ; $67a3: $ff
	rst  $38                                         ; $67a4: $ff
	rst  $38                                         ; $67a5: $ff
	db   $fc                                         ; $67a6: $fc
	or   a                                           ; $67a7: $b7
	ld   bc, $1111                                   ; $67a8: $01 $11 $11
	ld   de, $1111                                   ; $67ab: $11 $11 $11
	ccf                                              ; $67ae: $3f
	rst  $38                                         ; $67af: $ff
	rst  $38                                         ; $67b0: $ff
	rst  $38                                         ; $67b1: $ff
	rst  $38                                         ; $67b2: $ff
	rst  $38                                         ; $67b3: $ff
	db   $fc                                         ; $67b4: $fc
	and  a                                           ; $67b5: $a7
	ld   b, c                                        ; $67b6: $41
	ld   de, $1111                                   ; $67b7: $11 $11 $11
	ld   de, $1911                                   ; $67ba: $11 $11 $19
	rst  $38                                         ; $67bd: $ff
	rst  $38                                         ; $67be: $ff
	rst  $38                                         ; $67bf: $ff
	rst  $38                                         ; $67c0: $ff
	rst  $38                                         ; $67c1: $ff
	rst  $38                                         ; $67c2: $ff
	jp   z, $1173                                    ; $67c3: $ca $73 $11

	ld   de, $1111                                   ; $67c6: $11 $11 $11
	ld   de, $8b32                                   ; $67c9: $11 $32 $8b
	rst  $38                                         ; $67cc: $ff
	rst  $38                                         ; $67cd: $ff
	rst  $38                                         ; $67ce: $ff
	rst  $38                                         ; $67cf: $ff
	rst  $38                                         ; $67d0: $ff
	db   $fc                                         ; $67d1: $fc
	add  l                                           ; $67d2: $85
	ld   hl, $1111                                   ; $67d3: $21 $11 $11
	ld   de, $1711                                   ; $67d6: $11 $11 $17
	daa                                              ; $67d9: $27
	rst  JumpTable                                         ; $67da: $df
	rst  $38                                         ; $67db: $ff
	rst  $38                                         ; $67dc: $ff
	rst  $38                                         ; $67dd: $ff
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
	db   $eb                                         ; $67e0: $eb
	ld   [hl], e                                     ; $67e1: $73
	ld   de, $1111                                   ; $67e2: $11 $11 $11
	ld   de, $3511                                   ; $67e5: $11 $11 $35
	ld   [hl], $9f                                   ; $67e8: $36 $9f
	rst  $38                                         ; $67ea: $ff
	rst  $38                                         ; $67eb: $ff
	rst  $38                                         ; $67ec: $ff
	rst  $38                                         ; $67ed: $ff
	rst  $38                                         ; $67ee: $ff
	db   $db                                         ; $67ef: $db
	ld   h, d                                        ; $67f0: $62
	ld   de, $1111                                   ; $67f1: $11 $11 $11
	ld   de, $1511                                   ; $67f4: $11 $11 $15
	ld   l, c                                        ; $67f7: $69
	cp   a                                           ; $67f8: $bf
	rst  $38                                         ; $67f9: $ff
	rst  $38                                         ; $67fa: $ff
	rst  $38                                         ; $67fb: $ff
	rst  $38                                         ; $67fc: $ff
	cp   $b9                                         ; $67fd: $fe $b9
	ld   [hl], l                                     ; $67ff: $75
	ld   hl, $1111                                   ; $6800: $21 $11 $11
	ld   de, $1611                                   ; $6803: $11 $11 $16
	ld   h, a                                        ; $6806: $67
	sbc  l                                           ; $6807: $9d
	rst  $38                                         ; $6808: $ff
	rst  $38                                         ; $6809: $ff
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	rst  $38                                         ; $680c: $ff
	xor  e                                           ; $680d: $ab
	or   [hl]                                        ; $680e: $b6
	ld   b, c                                        ; $680f: $41
	ld   de, $1111                                   ; $6810: $11 $11 $11
	ld   de, $5611                                   ; $6813: $11 $11 $56
	xor  e                                           ; $6816: $ab
	rst  JumpTable                                         ; $6817: $df
	rst  $38                                         ; $6818: $ff
	rst  $38                                         ; $6819: $ff
	rst  $38                                         ; $681a: $ff
	rst  $38                                         ; $681b: $ff
	ld   [$6597], a                                  ; $681c: $ea $97 $65
	ld   hl, $1111                                   ; $681f: $21 $11 $11
	ld   de, $1311                                   ; $6822: $11 $11 $13
	ld   b, a                                        ; $6825: $47
	sbc  e                                           ; $6826: $9b
	rst  $38                                         ; $6827: $ff
	rst  $38                                         ; $6828: $ff
	rst  $38                                         ; $6829: $ff
	rst  $38                                         ; $682a: $ff
	rst  $38                                         ; $682b: $ff
	cp   b                                           ; $682c: $b8
	ld   [hl], a                                     ; $682d: $77
	ld   h, e                                        ; $682e: $63
	ld   de, $3212                                   ; $682f: $11 $12 $32
	ld   de, $1411                                   ; $6832: $11 $11 $14
	ld   d, a                                        ; $6835: $57
	xor  a                                           ; $6836: $af
	rst  $38                                         ; $6837: $ff
	rst  $38                                         ; $6838: $ff
	rst  $38                                         ; $6839: $ff
	rst  $38                                         ; $683a: $ff
	rst  $38                                         ; $683b: $ff
	or   a                                           ; $683c: $b7
	ld   d, h                                        ; $683d: $54
	ld   d, l                                        ; $683e: $55
	inc  sp                                          ; $683f: $33
	inc  hl                                          ; $6840: $23
	inc  h                                           ; $6841: $24
	ld   hl, $1311                                   ; $6842: $21 $11 $13
	ld   c, b                                        ; $6845: $48
	cp   d                                           ; $6846: $ba
	rst  $38                                         ; $6847: $ff
	rst  $38                                         ; $6848: $ff
	rst  $38                                         ; $6849: $ff
	adc  $ff                                         ; $684a: $ce $ff
	rst  $20                                         ; $684c: $e7
	ld   b, d                                        ; $684d: $42
	ld   c, b                                        ; $684e: $48
	ld   h, [hl]                                     ; $684f: $66
	ld   b, e                                        ; $6850: $43
	ld   b, h                                        ; $6851: $44
	ld   d, e                                        ; $6852: $53
	ld   de, $2511                                   ; $6853: $11 $11 $25
	cp   e                                           ; $6856: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6857: $cf
	rst  $38                                         ; $6858: $ff
	rst  $38                                         ; $6859: $ff
	jp   c, $fecf                                    ; $685a: $da $cf $fe

	and  e                                           ; $685d: $a3
	scf                                              ; $685e: $37
	adc  e                                           ; $685f: $8b
	sub  h                                           ; $6860: $94
	ld   hl, $3144                                   ; $6861: $21 $44 $31
	ld   de, $9f12                                   ; $6864: $11 $12 $9f
	db   $db                                         ; $6867: $db
	rst  JumpTable                                         ; $6868: $df
	rst  $38                                         ; $6869: $ff
	cp   $bc                                         ; $686a: $fe $bc
	rst  $38                                         ; $686c: $ff
	ei                                               ; $686d: $fb
	ld   b, d                                        ; $686e: $42
	ld   l, c                                        ; $686f: $69
	jp   z, $1151                                    ; $6870: $ca $51 $11

	ld   hl, $1111                                   ; $6873: $21 $11 $11
	ld   a, [hl+]                                    ; $6876: $2a
	cp   $ff                                         ; $6877: $fe $ff
	rst  $38                                         ; $6879: $ff
	rst  $38                                         ; $687a: $ff
	ld   [$ffbe], a                                  ; $687b: $ea $be $ff
	sub  h                                           ; $687e: $94
	inc  de                                          ; $687f: $13
	adc  h                                           ; $6880: $8c
	or   [hl]                                        ; $6881: $b6
	ld   hl, $0112                                   ; $6882: $21 $12 $01
	ld   de, $af11                                   ; $6885: $11 $11 $af
	rst  $38                                         ; $6888: $ff
	rst  $38                                         ; $6889: $ff
	rst  $38                                         ; $688a: $ff
	db   $fd                                         ; $688b: $fd
	halt                                             ; $688c: $76
	cp   a                                           ; $688d: $bf
	db   $fd                                         ; $688e: $fd
	ld   sp, $df14                                   ; $688f: $31 $14 $df
	or   [hl]                                        ; $6892: $b6
	ld   de, $1111                                   ; $6893: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $6896: $11 $13 $ff
	rst  $38                                         ; $6899: $ff
	rst  $38                                         ; $689a: $ff
	rst  $38                                         ; $689b: $ff
	cp   $ab                                         ; $689c: $fe $ab
	cp   e                                           ; $689e: $bb
	sub  [hl]                                        ; $689f: $96
	ld   b, d                                        ; $68a0: $42
	ld   e, c                                        ; $68a1: $59
	call z, $11a5                                    ; $68a2: $cc $a5 $11
	ld   de, $1111                                   ; $68a5: $11 $11 $11
	dec  d                                           ; $68a8: $15
	rst  $38                                         ; $68a9: $ff
	rst  $38                                         ; $68aa: $ff
	rst  $38                                         ; $68ab: $ff
	rst  $38                                         ; $68ac: $ff
	jp   c, $aabc                                    ; $68ad: $da $bc $aa

	ld   h, l                                        ; $68b0: $65
	ld   h, a                                        ; $68b1: $67
	xor  d                                           ; $68b2: $aa
	xor  b                                           ; $68b3: $a8
	ld   h, l                                        ; $68b4: $65
	ld   sp, $1111                                   ; $68b5: $31 $11 $11
	ld   de, $ff2e                                   ; $68b8: $11 $2e $ff
	rst  $38                                         ; $68bb: $ff
	rst  $38                                         ; $68bc: $ff
	rst  $38                                         ; $68bd: $ff
	ret  c                                           ; $68be: $d8

	ld   a, d                                        ; $68bf: $7a
	cp   e                                           ; $68c0: $bb
	and  [hl]                                        ; $68c1: $a6
	inc  [hl]                                        ; $68c2: $34
	ld   a, h                                        ; $68c3: $7c
	db   $ed                                         ; $68c4: $ed
	add  d                                           ; $68c5: $82
	ld   de, $1111                                   ; $68c6: $11 $11 $11
	ld   de, $ff2e                                   ; $68c9: $11 $2e $ff
	rst  $38                                         ; $68cc: $ff
	rst  $38                                         ; $68cd: $ff
	rst  $38                                         ; $68ce: $ff
	db   $eb                                         ; $68cf: $eb
	adc  c                                           ; $68d0: $89
	sbc  b                                           ; $68d1: $98
	add  [hl]                                        ; $68d2: $86
	ld   d, l                                        ; $68d3: $55
	xor  d                                           ; $68d4: $aa
	call $1194                                       ; $68d5: $cd $94 $11
	ld   de, $1111                                   ; $68d8: $11 $11 $11
	ld   a, [de]                                     ; $68db: $1a
	rst  $38                                         ; $68dc: $ff
	rst  $38                                         ; $68dd: $ff
	rst  $38                                         ; $68de: $ff
	rst  $38                                         ; $68df: $ff
	ret                                              ; $68e0: $c9


	add  a                                           ; $68e1: $87
	xor  d                                           ; $68e2: $aa
	ld   [hl], a                                     ; $68e3: $77
	ld   d, [hl]                                     ; $68e4: $56
	adc  e                                           ; $68e5: $8b
	call c, $11b6                                    ; $68e6: $dc $b6 $11
	ld   de, $1111                                   ; $68e9: $11 $11 $11
	dec  d                                           ; $68ec: $15
	rst  $38                                         ; $68ed: $ff
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	rst  $38                                         ; $68f0: $ff
	jp   z, $9888                                    ; $68f1: $ca $88 $98

	add  [hl]                                        ; $68f4: $86
	ld   h, [hl]                                     ; $68f5: $66
	adc  h                                           ; $68f6: $8c
	sbc  $c8                                         ; $68f7: $de $c8
	ld   sp, $1111                                   ; $68f9: $31 $11 $11
	ld   de, $cf11                                   ; $68fc: $11 $11 $cf
	rst  $38                                         ; $68ff: $ff
	rst  $38                                         ; $6900: $ff
	cp   $ca                                         ; $6901: $fe $ca
	ret                                              ; $6903: $c9


	ld   [hl], a                                     ; $6904: $77
	ld   d, l                                        ; $6905: $55
	ld   a, b                                        ; $6906: $78
	xor  h                                           ; $6907: $ac
	db   $dd                                         ; $6908: $dd
	cp   d                                           ; $6909: $ba
	ld   b, c                                        ; $690a: $41
	ld   de, $1111                                   ; $690b: $11 $11 $11
	ld   de, $ff7f                                   ; $690e: $11 $7f $ff
	rst  $38                                         ; $6911: $ff
	rst  $38                                         ; $6912: $ff
	ret  z                                           ; $6913: $c8

	ld   d, a                                        ; $6914: $57
	xor  e                                           ; $6915: $ab
	cp   c                                           ; $6916: $b9
	ld   h, l                                        ; $6917: $65
	ld   a, c                                        ; $6918: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6919: $cf
	db   $fd                                         ; $691a: $fd
	sub  e                                           ; $691b: $93
	ld   de, $1111                                   ; $691c: $11 $11 $11
	ld   de, $ff18                                   ; $691f: $11 $18 $ff
	rst  $38                                         ; $6922: $ff
	rst  $38                                         ; $6923: $ff
	db   $db                                         ; $6924: $db
	xor  c                                           ; $6925: $a9
	sbc  b                                           ; $6926: $98
	ld   a, b                                        ; $6927: $78
	add  a                                           ; $6928: $87
	adc  b                                           ; $6929: $88
	cp   l                                           ; $692a: $bd
	rst  $38                                         ; $692b: $ff
	rst  ToBoot                                         ; $692c: $c7
	ld   de, $1111                                   ; $692d: $11 $11 $11
	ld   de, $df12                                   ; $6930: $11 $12 $df
	rst  $38                                         ; $6933: $ff
	rst  $38                                         ; $6934: $ff
	cp   $da                                         ; $6935: $fe $da
	xor  c                                           ; $6937: $a9
	ld   a, b                                        ; $6938: $78
	ld   [hl], a                                     ; $6939: $77
	adc  c                                           ; $693a: $89
	xor  e                                           ; $693b: $ab
	rst  $28                                         ; $693c: $ef
	db   $db                                         ; $693d: $db
	ld   h, c                                        ; $693e: $61
	ld   de, $1111                                   ; $693f: $11 $11 $11
	ld   de, $ff5f                                   ; $6942: $11 $5f $ff
	rst  $38                                         ; $6945: $ff
	rst  $38                                         ; $6946: $ff
	db   $dd                                         ; $6947: $dd
	add  a                                           ; $6948: $87
	ld   [hl], a                                     ; $6949: $77
	sbc  c                                           ; $694a: $99
	add  a                                           ; $694b: $87
	ld   a, b                                        ; $694c: $78
	xor  a                                           ; $694d: $af
	rst  $38                                         ; $694e: $ff
	sub  $11                                         ; $694f: $d6 $11
	ld   de, $1111                                   ; $6951: $11 $11 $11
	ld   d, $df                                      ; $6954: $16 $df
	rst  $38                                         ; $6956: $ff
	rst  $38                                         ; $6957: $ff
	db   $fd                                         ; $6958: $fd
	or   a                                           ; $6959: $b7
	ld   a, c                                        ; $695a: $79
	halt                                             ; $695b: $76
	add  [hl]                                        ; $695c: $86
	ld   a, d                                        ; $695d: $7a
	xor  e                                           ; $695e: $ab
	xor  $db                                         ; $695f: $ee $db
	add  d                                           ; $6961: $82
	ld   de, $1111                                   ; $6962: $11 $11 $11
	ld   de, $ff7a                                   ; $6965: $11 $7a $ff
	rst  $38                                         ; $6968: $ff
	rst  $38                                         ; $6969: $ff
	call c, Call_0d5_7985                            ; $696a: $dc $85 $79
	sbc  d                                           ; $696d: $9a
	sub  [hl]                                        ; $696e: $96
	ld   a, b                                        ; $696f: $78
	xor  [hl]                                        ; $6970: $ae
	rst  $38                                         ; $6971: $ff
	reti                                             ; $6972: $d9


	ld   de, $1111                                   ; $6973: $11 $11 $11
	ld   de, $8f11                                   ; $6976: $11 $11 $8f
	rst  $38                                         ; $6979: $ff
	rst  $38                                         ; $697a: $ff
	cp   $da                                         ; $697b: $fe $da
	ld   [hl], a                                     ; $697d: $77
	ld   h, l                                        ; $697e: $65
	adc  c                                           ; $697f: $89
	adc  d                                           ; $6980: $8a
	xor  e                                           ; $6981: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6982: $cf
	db   $fd                                         ; $6983: $fd
	or   [hl]                                        ; $6984: $b6
	ld   de, $1111                                   ; $6985: $11 $11 $11
	ld   de, $ff15                                   ; $6988: $11 $15 $ff
	rst  $38                                         ; $698b: $ff
	rst  $38                                         ; $698c: $ff
	db   $fd                                         ; $698d: $fd
	or   a                                           ; $698e: $b7
	add  a                                           ; $698f: $87
	ld   a, c                                        ; $6990: $79
	sbc  b                                           ; $6991: $98
	ld   a, b                                        ; $6992: $78
	xor  h                                           ; $6993: $ac
	rst  $38                                         ; $6994: $ff
	db   $fd                                         ; $6995: $fd
	ld   h, c                                        ; $6996: $61
	ld   de, $1111                                   ; $6997: $11 $11 $11
	ld   de, $ff2c                                   ; $699a: $11 $2c $ff
	rst  $38                                         ; $699d: $ff
	rst  $38                                         ; $699e: $ff
	cp   $b8                                         ; $699f: $fe $b8
	ld   h, l                                        ; $69a1: $65
	ld   h, a                                        ; $69a2: $67
	sbc  c                                           ; $69a3: $99
	sbc  c                                           ; $69a4: $99
	xor  h                                           ; $69a5: $ac
	rst  $38                                         ; $69a6: $ff
	ld   hl, sp+$31                                  ; $69a7: $f8 $31
	ld   de, $1111                                   ; $69a9: $11 $11 $11
	ld   [de], a                                     ; $69ac: $12
	xor  a                                           ; $69ad: $af
	rst  $38                                         ; $69ae: $ff
	rst  $38                                         ; $69af: $ff
	rst  $38                                         ; $69b0: $ff
	ei                                               ; $69b1: $fb
	ld   a, b                                        ; $69b2: $78
	ld   h, a                                        ; $69b3: $67
	ld   a, c                                        ; $69b4: $79
	ld   [hl], a                                     ; $69b5: $77
	sbc  c                                           ; $69b6: $99
	rst  JumpTable                                         ; $69b7: $df
	cp   $b5                                         ; $69b8: $fe $b5
	ld   de, $1111                                   ; $69ba: $11 $11 $11
	ld   de, $ff16                                   ; $69bd: $11 $16 $ff
	rst  $38                                         ; $69c0: $ff
	rst  $38                                         ; $69c1: $ff
	rst  $38                                         ; $69c2: $ff
	ld   hl, sp+$76                                  ; $69c3: $f8 $76
	ld   e, b                                        ; $69c5: $58
	add  a                                           ; $69c6: $87
	ld   h, [hl]                                     ; $69c7: $66
	ld   a, e                                        ; $69c8: $7b
	rst  $38                                         ; $69c9: $ff
	db   $fd                                         ; $69ca: $fd
	ld   d, c                                        ; $69cb: $51
	ld   de, $1111                                   ; $69cc: $11 $11 $11
	ld   de, $ff5f                                   ; $69cf: $11 $5f $ff
	rst  $38                                         ; $69d2: $ff
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	or   [hl]                                        ; $69d5: $b6
	ld   d, l                                        ; $69d6: $55
	adc  c                                           ; $69d7: $89
	ld   [hl], l                                     ; $69d8: $75
	dec  [hl]                                        ; $69d9: $35
	sbc  [hl]                                        ; $69da: $9e
	rst  $38                                         ; $69db: $ff
	rst  $10                                         ; $69dc: $d7
	ld   hl, $1111                                   ; $69dd: $21 $11 $11
	ld   de, $df11                                   ; $69e0: $11 $11 $df
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	rst  $38                                         ; $69e5: $ff
	db   $fd                                         ; $69e6: $fd
	add  l                                           ; $69e7: $85
	ld   d, a                                        ; $69e8: $57
	add  a                                           ; $69e9: $87
	ld   b, e                                        ; $69ea: $43
	ld   b, a                                        ; $69eb: $47
	rst  JumpTable                                         ; $69ec: $df
	cp   $94                                         ; $69ed: $fe $94
	ld   de, $1111                                   ; $69ef: $11 $11 $11
	ld   de, $ff1b                                   ; $69f2: $11 $1b $ff
	rst  $38                                         ; $69f5: $ff
	rst  $38                                         ; $69f6: $ff
	rst  $38                                         ; $69f7: $ff
	jp   hl                                          ; $69f8: $e9


	ld   a, b                                        ; $69f9: $78
	ld   [hl], a                                     ; $69fa: $77
	ld   d, c                                        ; $69fb: $51
	inc  de                                          ; $69fc: $13
	adc  l                                           ; $69fd: $8d
	rst  $38                                         ; $69fe: $ff
	jp   z, $1162                                    ; $69ff: $ca $62 $11

	ld   de, $1111                                   ; $6a02: $11 $11 $11
	ld   a, a                                        ; $6a05: $7f
	rst  $38                                         ; $6a06: $ff
	rst  $38                                         ; $6a07: $ff
	rst  $38                                         ; $6a08: $ff
	db   $fd                                         ; $6a09: $fd
	cp   d                                           ; $6a0a: $ba
	sbc  e                                           ; $6a0b: $9b
	ld   [hl], e                                     ; $6a0c: $73
	ld   de, $de27                                   ; $6a0d: $11 $27 $de
	call c, Call_0d5_5297                            ; $6a10: $dc $97 $52
	ld   de, $1111                                   ; $6a13: $11 $11 $11
	rla                                              ; $6a16: $17
	rst  $38                                         ; $6a17: $ff
	rst  $38                                         ; $6a18: $ff
	rst  $38                                         ; $6a19: $ff
	rst  $38                                         ; $6a1a: $ff
	ld   [$c8bc], a                                  ; $6a1b: $ea $bc $c8
	ld   de, $7c12                                   ; $6a1e: $11 $12 $7c
	ret                                              ; $6a21: $c9


	xor  d                                           ; $6a22: $aa
	xor  b                                           ; $6a23: $a8
	ld   b, c                                        ; $6a24: $41
	ld   de, $1111                                   ; $6a25: $11 $11 $11
	ld   c, e                                        ; $6a28: $4b
	rst  $38                                         ; $6a29: $ff
	rst  $38                                         ; $6a2a: $ff
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	xor  $dc                                         ; $6a2d: $ee $dc
	ld   d, c                                        ; $6a2f: $51
	ld   de, $9a25                                   ; $6a30: $11 $25 $9a
	xor  e                                           ; $6a33: $ab
	xor  d                                           ; $6a34: $aa
	ld   [hl], d                                     ; $6a35: $72
	ld   de, $1111                                   ; $6a36: $11 $11 $11
	ld   [de], a                                     ; $6a39: $12
	rst  JumpTable                                         ; $6a3a: $df
	rst  $38                                         ; $6a3b: $ff
	rst  $38                                         ; $6a3c: $ff
	rst  $38                                         ; $6a3d: $ff
	rst  $38                                         ; $6a3e: $ff
	cp   $c7                                         ; $6a3f: $fe $c7
	ld   de, $3612                                   ; $6a41: $11 $12 $36
	ld   h, a                                        ; $6a44: $67
	xor  h                                           ; $6a45: $ac
	ret  c                                           ; $6a46: $d8

	ld   hl, $1111                                   ; $6a47: $21 $11 $11
	ld   de, $ff1a                                   ; $6a4a: $11 $1a $ff
	rst  $38                                         ; $6a4d: $ff
	rst  $38                                         ; $6a4e: $ff
	rst  $38                                         ; $6a4f: $ff
	rst  $38                                         ; $6a50: $ff
	db   $fd                                         ; $6a51: $fd
	ld   h, e                                        ; $6a52: $63
	ld   de, $4411                                   ; $6a53: $11 $11 $44
	ld   a, c                                        ; $6a56: $79
	call z, $1184                                    ; $6a57: $cc $84 $11
	ld   de, $1111                                   ; $6a5a: $11 $11 $11
	adc  h                                           ; $6a5d: $8c
	rst  $28                                         ; $6a5e: $ef
	rst  $38                                         ; $6a5f: $ff
	rst  $38                                         ; $6a60: $ff
	rst  $38                                         ; $6a61: $ff
	rst  $38                                         ; $6a62: $ff
	ld   sp, hl                                      ; $6a63: $f9
	ld   b, c                                        ; $6a64: $41
	ld   de, $1411                                   ; $6a65: $11 $11 $14
	ld   a, d                                        ; $6a68: $7a
	or   a                                           ; $6a69: $b7
	ld   b, d                                        ; $6a6a: $42
	ld   de, $1111                                   ; $6a6b: $11 $11 $11
	dec  d                                           ; $6a6e: $15
	sbc  e                                           ; $6a6f: $9b
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	rst  $38                                         ; $6a73: $ff
	rst  $38                                         ; $6a74: $ff
	and  l                                           ; $6a75: $a5
	ld   b, c                                        ; $6a76: $41
	ld   de, $3711                                   ; $6a77: $11 $11 $37
	ld   d, a                                        ; $6a7a: $57

Call_0d5_6a7b:
	ld   [hl], l                                     ; $6a7b: $75
	ld   d, d                                        ; $6a7c: $52
	ld   de, $1111                                   ; $6a7d: $11 $11 $11
	dec  d                                           ; $6a80: $15
	xor  a                                           ; $6a81: $af
	rst  $38                                         ; $6a82: $ff
	rst  $38                                         ; $6a83: $ff
	rst  $38                                         ; $6a84: $ff
	rst  $38                                         ; $6a85: $ff
	cp   $a8                                         ; $6a86: $fe $a8
	ld   hl, $1111                                   ; $6a88: $21 $11 $11
	inc  sp                                          ; $6a8b: $33
	ld   d, a                                        ; $6a8c: $57
	ld   b, e                                        ; $6a8d: $43
	ld   de, $1311                                   ; $6a8e: $11 $11 $13
	ld   de, $cf6a                                   ; $6a91: $11 $6a $cf
	rst  $38                                         ; $6a94: $ff
	rst  $38                                         ; $6a95: $ff
	rst  $38                                         ; $6a96: $ff
	rst  $38                                         ; $6a97: $ff
	ei                                               ; $6a98: $fb
	or   l                                           ; $6a99: $b5
	ld   hl, $1111                                   ; $6a9a: $21 $11 $11
	inc  hl                                          ; $6a9d: $23
	ld   b, d                                        ; $6a9e: $42
	ld   [de], a                                     ; $6a9f: $12
	ld   de, $5311                                   ; $6aa0: $11 $11 $53
	dec  d                                           ; $6aa3: $15
	xor  [hl]                                        ; $6aa4: $ae
	rst  $28                                         ; $6aa5: $ef
	rst  $38                                         ; $6aa6: $ff
	rst  $38                                         ; $6aa7: $ff
	rst  $38                                         ; $6aa8: $ff
	rst  $38                                         ; $6aa9: $ff
	db   $db                                         ; $6aaa: $db
	add  h                                           ; $6aab: $84
	ld   de, $1111                                   ; $6aac: $11 $11 $11
	inc  de                                          ; $6aaf: $13
	ld   b, c                                        ; $6ab0: $41
	ld   de, $1311                                   ; $6ab1: $11 $11 $13
	ld   [hl], c                                     ; $6ab4: $71
	inc  l                                           ; $6ab5: $2c
	cp   d                                           ; $6ab6: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ab7: $cf
	rst  $38                                         ; $6ab8: $ff
	rst  $38                                         ; $6ab9: $ff
	rst  $38                                         ; $6aba: $ff
	rst  $38                                         ; $6abb: $ff
	db   $ed                                         ; $6abc: $ed
	ld   h, c                                        ; $6abd: $61
	ld   de, $1111                                   ; $6abe: $11 $11 $11
	ld   [hl+], a                                    ; $6ac1: $22
	ld   de, $1121                                   ; $6ac2: $11 $21 $11
	inc  l                                           ; $6ac5: $2c
	ld   de, $78de                                   ; $6ac6: $11 $de $78
	rst  $38                                         ; $6ac9: $ff
	rst  $38                                         ; $6aca: $ff
	rst  $38                                         ; $6acb: $ff
	rst  $38                                         ; $6acc: $ff
	rst  $38                                         ; $6acd: $ff
	ld   hl, sp+$33                                  ; $6ace: $f8 $33
	ld   b, c                                        ; $6ad0: $41
	ld   de, $1111                                   ; $6ad1: $11 $11 $11
	ld   de, $1111                                   ; $6ad4: $11 $11 $11
	ld   [hl], d                                     ; $6ad7: $72
	add  hl, de                                      ; $6ad8: $19
	and  $6f                                         ; $6ad9: $e6 $6f
	rst  $38                                         ; $6adb: $ff
	rst  $38                                         ; $6adc: $ff
	rst  $38                                         ; $6add: $ff
	rst  $38                                         ; $6ade: $ff
	rst  $38                                         ; $6adf: $ff
	rst  ToBoot                                         ; $6ae0: $c7
	ld   h, h                                        ; $6ae1: $64
	ld   bc, $1111                                   ; $6ae2: $01 $11 $11
	ld   de, $1111                                   ; $6ae5: $11 $11 $11
	ld   de, $1fa1                                   ; $6ae8: $11 $a1 $1f
	or   h                                           ; $6aeb: $b4
	adc  a                                           ; $6aec: $8f
	cp   $ff                                         ; $6aed: $fe $ff
	rst  $38                                         ; $6aef: $ff
	rst  $38                                         ; $6af0: $ff
	rst  $38                                         ; $6af1: $ff
	cp   d                                           ; $6af2: $ba
	ld   [hl], d                                     ; $6af3: $72
	ld   de, $1111                                   ; $6af4: $11 $11 $11
	ld   de, $1111                                   ; $6af7: $11 $11 $11
	add  hl, de                                      ; $6afa: $19
	ld   sp, $659f                                   ; $6afb: $31 $9f $65
	rst  $38                                         ; $6afe: $ff
	rst  $28                                         ; $6aff: $ef
	rst  $38                                         ; $6b00: $ff
	rst  $38                                         ; $6b01: $ff
	rst  $38                                         ; $6b02: $ff
	ei                                               ; $6b03: $fb
	cp   b                                           ; $6b04: $b8
	ld   hl, $1111                                   ; $6b05: $21 $11 $11
	ld   de, $1111                                   ; $6b08: $11 $11 $11
	ld   de, $1139                                   ; $6b0b: $11 $39 $11
	ld   sp, hl                                      ; $6b0e: $f9
	dec  sp                                          ; $6b0f: $3b
	rst  $38                                         ; $6b10: $ff
	rst  $38                                         ; $6b11: $ff
	rst  $38                                         ; $6b12: $ff
	rst  $38                                         ; $6b13: $ff
	rst  $38                                         ; $6b14: $ff
	ei                                               ; $6b15: $fb
	add  $11                                         ; $6b16: $c6 $11
	ld   de, $1111                                   ; $6b18: $11 $11 $11
	ld   de, $1111                                   ; $6b1b: $11 $11 $11
	ld   l, b                                        ; $6b1e: $68
	dec  d                                           ; $6b1f: $15
	ld   hl, sp+$5e                                  ; $6b20: $f8 $5e
	rst  $38                                         ; $6b22: $ff
	rst  $38                                         ; $6b23: $ff
	rst  $38                                         ; $6b24: $ff
	rst  $38                                         ; $6b25: $ff
	rst  $38                                         ; $6b26: $ff
	call z, $11c3                                    ; $6b27: $cc $c3 $11
	ld   de, $1111                                   ; $6b2a: $11 $11 $11
	ld   de, $1111                                   ; $6b2d: $11 $11 $11
	and  h                                           ; $6b30: $a4
	ld   a, [de]                                     ; $6b31: $1a
	rst  $30                                         ; $6b32: $f7
	ld   c, a                                        ; $6b33: $4f
	rst  $38                                         ; $6b34: $ff
	rst  $38                                         ; $6b35: $ff
	rst  $38                                         ; $6b36: $ff
	rst  $38                                         ; $6b37: $ff
	rst  $38                                         ; $6b38: $ff
	xor  h                                           ; $6b39: $ac
	and  c                                           ; $6b3a: $a1
	ld   de, $1111                                   ; $6b3b: $11 $11 $11
	ld   de, $1111                                   ; $6b3e: $11 $11 $11
	ld   [de], a                                     ; $6b41: $12
	pop  hl                                          ; $6b42: $e1
	rra                                              ; $6b43: $1f
	db   $e3                                         ; $6b44: $e3
	sbc  a                                           ; $6b45: $9f
	cp   $ff                                         ; $6b46: $fe $ff
	rst  $38                                         ; $6b48: $ff
	rst  $38                                         ; $6b49: $ff
	ei                                               ; $6b4a: $fb
	sbc  l                                           ; $6b4b: $9d
	ld   d, c                                        ; $6b4c: $51
	ld   de, $1111                                   ; $6b4d: $11 $11 $11
	ld   de, $1111                                   ; $6b50: $11 $11 $11
	ld   de, $1fd1                                   ; $6b53: $11 $d1 $1f
	db   $e4                                         ; $6b56: $e4
	adc  a                                           ; $6b57: $8f
	rst  $38                                         ; $6b58: $ff
	rst  $38                                         ; $6b59: $ff
	rst  $38                                         ; $6b5a: $ff
	rst  $38                                         ; $6b5b: $ff
	db   $fd                                         ; $6b5c: $fd
	sbc  e                                           ; $6b5d: $9b
	ld   [hl], c                                     ; $6b5e: $71
	ld   de, $1111                                   ; $6b5f: $11 $11 $11
	ld   de, $1112                                   ; $6b62: $11 $12 $11
	ld   de, $18a6                                   ; $6b65: $11 $a6 $18
	or   $7f                                         ; $6b68: $f6 $7f
	rst  $38                                         ; $6b6a: $ff
	rst  $38                                         ; $6b6b: $ff
	rst  $38                                         ; $6b6c: $ff
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	adc  c                                           ; $6b6f: $89
	sub  c                                           ; $6b70: $91
	ld   de, $1111                                   ; $6b71: $11 $11 $11
	ld   [hl+], a                                    ; $6b74: $22
	ld   de, $1142                                   ; $6b75: $11 $42 $11
	dec  de                                          ; $6b78: $1b
	ld   sp, $48cf                                   ; $6b79: $31 $cf $48
	rst  $38                                         ; $6b7c: $ff
	rst  $38                                         ; $6b7d: $ff
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	rst  $38                                         ; $6b80: $ff
	sub  $87                                         ; $6b81: $d6 $87
	ld   de, $1111                                   ; $6b83: $11 $11 $11
	inc  h                                           ; $6b86: $24
	inc  sp                                          ; $6b87: $33
	inc  h                                           ; $6b88: $24
	ld   b, c                                        ; $6b89: $41
	ld   de, $1ba1                                   ; $6b8a: $11 $a1 $1b
	push de                                          ; $6b8d: $d5
	adc  a                                           ; $6b8e: $8f
	rst  $38                                         ; $6b8f: $ff
	rst  $38                                         ; $6b90: $ff
	rst  $38                                         ; $6b91: $ff
	rst  $38                                         ; $6b92: $ff
	ei                                               ; $6b93: $fb
	ld   b, a                                        ; $6b94: $47
	ld   d, c                                        ; $6b95: $51
	ld   de, $1311                                   ; $6b96: $11 $11 $13
	ld   [hl], a                                     ; $6b99: $77
	ld   b, h                                        ; $6b9a: $44
	ld   d, l                                        ; $6b9b: $55
	ld   de, $2119                                   ; $6b9c: $11 $19 $21
	ld   l, a                                        ; $6b9f: $6f
	ld   h, l                                        ; $6ba0: $65
	rst  $38                                         ; $6ba1: $ff
	rst  $38                                         ; $6ba2: $ff
	rst  $38                                         ; $6ba3: $ff
	rst  $38                                         ; $6ba4: $ff
	rst  $38                                         ; $6ba5: $ff
	or   c                                           ; $6ba6: $b1
	inc  [hl]                                        ; $6ba7: $34
	ld   de, $1111                                   ; $6ba8: $11 $11 $11
	ld   e, d                                        ; $6bab: $5a
	xor  b                                           ; $6bac: $a8
	ld   d, [hl]                                     ; $6bad: $56
	ld   h, c                                        ; $6bae: $61
	ld   de, $1164                                   ; $6baf: $11 $64 $11
	ei                                               ; $6bb2: $fb
	ld   a, a                                        ; $6bb3: $7f
	rst  $38                                         ; $6bb4: $ff
	rst  $38                                         ; $6bb5: $ff
	rst  $38                                         ; $6bb6: $ff
	xor  $fa                                         ; $6bb7: $ee $fa
	ld   de, $1121                                   ; $6bb9: $11 $21 $11
	inc  h                                           ; $6bbc: $24
	ld   b, a                                        ; $6bbd: $47
	db   $dd                                         ; $6bbe: $dd
	or   a                                           ; $6bbf: $b7
	ld   h, h                                        ; $6bc0: $64
	ld   de, $5111                                   ; $6bc1: $11 $11 $51
	rra                                              ; $6bc4: $1f
	ei                                               ; $6bc5: $fb
	rst  $38                                         ; $6bc6: $ff
	rst  $38                                         ; $6bc7: $ff
	rst  $38                                         ; $6bc8: $ff
	rst  $38                                         ; $6bc9: $ff
	sbc  h                                           ; $6bca: $9c
	add  c                                           ; $6bcb: $81
	ld   de, $1211                                   ; $6bcc: $11 $11 $12
	ld   a, d                                        ; $6bcf: $7a
	cp   a                                           ; $6bd0: $bf
	rst  $38                                         ; $6bd1: $ff
	sub  l                                           ; $6bd2: $95
	ld   b, c                                        ; $6bd3: $41
	ld   de, $1112                                   ; $6bd4: $11 $12 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bd7: $cf
	rst  $38                                         ; $6bd8: $ff
	rst  $38                                         ; $6bd9: $ff
	rst  $38                                         ; $6bda: $ff
	rst  $38                                         ; $6bdb: $ff
	or   $44                                         ; $6bdc: $f6 $44
	ld   de, $1111                                   ; $6bde: $11 $11 $11
	ld   e, c                                        ; $6be1: $59
	rst  $38                                         ; $6be2: $ff
	rst  $38                                         ; $6be3: $ff
	db   $fd                                         ; $6be4: $fd
	ld   d, c                                        ; $6be5: $51
	ld   de, $1211                                   ; $6be6: $11 $11 $12
	ld   de, $ffff                                   ; $6be9: $11 $ff $ff
	rst  $38                                         ; $6bec: $ff
	rst  $38                                         ; $6bed: $ff
	rst  $38                                         ; $6bee: $ff
	ld   h, c                                        ; $6bef: $61
	ld   de, $1211                                   ; $6bf0: $11 $11 $12
	adc  d                                           ; $6bf3: $8a
	rst  JumpTable                                         ; $6bf4: $df
	rst  $38                                         ; $6bf5: $ff
	rst  $38                                         ; $6bf6: $ff
	and  $11                                         ; $6bf7: $e6 $11
	ld   de, $1411                                   ; $6bf9: $11 $11 $14
	rla                                              ; $6bfc: $17
	rst  $38                                         ; $6bfd: $ff
	rst  $38                                         ; $6bfe: $ff
	rst  $38                                         ; $6bff: $ff
	ei                                               ; $6c00: $fb
	ld   h, a                                        ; $6c01: $67
	ld   de, $1111                                   ; $6c02: $11 $11 $11
	ld   c, c                                        ; $6c05: $49
	rst  $38                                         ; $6c06: $ff
	rst  $38                                         ; $6c07: $ff
	rst  $38                                         ; $6c08: $ff
	db   $fd                                         ; $6c09: $fd
	add  c                                           ; $6c0a: $81
	ld   de, $1111                                   ; $6c0b: $11 $11 $11
	rla                                              ; $6c0e: $17
	ret                                              ; $6c0f: $c9


	rst  $38                                         ; $6c10: $ff
	rst  $38                                         ; $6c11: $ff
	rst  $38                                         ; $6c12: $ff
	ld   hl, sp+$11                                  ; $6c13: $f8 $11
	ld   de, $2611                                   ; $6c15: $11 $11 $26
	cp   a                                           ; $6c18: $bf
	rst  $38                                         ; $6c19: $ff
	rst  $38                                         ; $6c1a: $ff
	cp   $c9                                         ; $6c1b: $fe $c9
	ld   b, c                                        ; $6c1d: $41
	ld   de, $1111                                   ; $6c1e: $11 $11 $11
	ld   de, $afff                                   ; $6c21: $11 $ff $af
	rst  $38                                         ; $6c24: $ff
	rst  $38                                         ; $6c25: $ff
	db   $fc                                         ; $6c26: $fc
	ld   d, c                                        ; $6c27: $51
	ld   [de], a                                     ; $6c28: $12
	ld   hl, $ce3a                                   ; $6c29: $21 $3a $ce
	rst  $38                                         ; $6c2c: $ff
	rst  $38                                         ; $6c2d: $ff
	db   $eb                                         ; $6c2e: $eb
	cp   b                                           ; $6c2f: $b8
	ld   b, e                                        ; $6c30: $43
	ld   hl, $1111                                   ; $6c31: $21 $11 $11
	ld   de, $e81f                                   ; $6c34: $11 $1f $e8
	rst  $38                                         ; $6c37: $ff
	rst  $38                                         ; $6c38: $ff
	rst  $38                                         ; $6c39: $ff
	or   h                                           ; $6c3a: $b4
	ld   de, $2645                                   ; $6c3b: $11 $45 $26
	db   $dd                                         ; $6c3e: $dd
	rst  $28                                         ; $6c3f: $ef
	rst  $38                                         ; $6c40: $ff
	db   $fd                                         ; $6c41: $fd
	xor  c                                           ; $6c42: $a9
	sub  [hl]                                        ; $6c43: $96
	ld   b, e                                        ; $6c44: $43
	ld   de, $1111                                   ; $6c45: $11 $11 $11
	ld   de, $affd                                   ; $6c48: $11 $fd $af
	rst  $38                                         ; $6c4b: $ff
	rst  $38                                         ; $6c4c: $ff
	jp   c, $1541                                    ; $6c4d: $da $41 $15

	ld   [hl], e                                     ; $6c50: $73
	adc  [hl]                                        ; $6c51: $8e
	rst  $28                                         ; $6c52: $ef
	rst  $38                                         ; $6c53: $ff
	rst  $38                                         ; $6c54: $ff
	cp   c                                           ; $6c55: $b9
	add  a                                           ; $6c56: $87
	ld   h, e                                        ; $6c57: $63
	ld   de, $1111                                   ; $6c58: $11 $11 $11
	ld   de, $bf0f                                   ; $6c5b: $11 $0f $bf
	rst  $38                                         ; $6c5e: $ff
	rst  $38                                         ; $6c5f: $ff
	ld   sp, hl                                      ; $6c60: $f9
	ld   [hl], d                                     ; $6c61: $72
	ld   de, $5b68                                   ; $6c62: $11 $68 $5b
	rst  $28                                         ; $6c65: $ef
	rst  $38                                         ; $6c66: $ff
	rst  $38                                         ; $6c67: $ff
	ei                                               ; $6c68: $fb
	sub  [hl]                                        ; $6c69: $96
	ld   [hl], l                                     ; $6c6a: $75
	ld   [hl-], a                                    ; $6c6b: $32
	ld   de, $1111                                   ; $6c6c: $11 $11 $11
	inc  de                                          ; $6c6f: $13
	ei                                               ; $6c70: $fb
	rst  $38                                         ; $6c71: $ff
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	ld   h, l                                        ; $6c74: $65
	ld   de, $9809                                   ; $6c75: $11 $09 $98
	db   $dd                                         ; $6c78: $dd
	rst  $38                                         ; $6c79: $ff
	cp   $fd                                         ; $6c7a: $fe $fd
	and  a                                           ; $6c7c: $a7
	ld   d, a                                        ; $6c7d: $57
	ld   b, e                                        ; $6c7e: $43
	ld   de, $1111                                   ; $6c7f: $11 $11 $11
	ld   de, $7fff                                   ; $6c82: $11 $ff $7f
	rst  $38                                         ; $6c85: $ff
	rst  $38                                         ; $6c86: $ff
	or   h                                           ; $6c87: $b4
	ld   b, c                                        ; $6c88: $41
	dec  d                                           ; $6c89: $15
	rst  ToBoot                                         ; $6c8a: $c7
	xor  [hl]                                        ; $6c8b: $ae
	rst  $38                                         ; $6c8c: $ff
	rst  $38                                         ; $6c8d: $ff
	db   $ed                                         ; $6c8e: $ed
	cp   b                                           ; $6c8f: $b8
	ld   h, l                                        ; $6c90: $65
	ld   b, e                                        ; $6c91: $43
	ld   sp, $1111                                   ; $6c92: $31 $11 $11
	ld   de, $ce4f                                   ; $6c95: $11 $4f $ce
	rst  $38                                         ; $6c98: $ff
	rst  $38                                         ; $6c99: $ff
	rst  $20                                         ; $6c9a: $e7
	ld   d, d                                        ; $6c9b: $52
	ld   de, $8cca                                   ; $6c9c: $11 $ca $8c
	rst  $28                                         ; $6c9f: $ef
	rst  $38                                         ; $6ca0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ca1: $cf
	rst  $20                                         ; $6ca2: $e7
	ld   h, a                                        ; $6ca3: $67
	ld   [hl], e                                     ; $6ca4: $73
	ld   hl, $1111                                   ; $6ca5: $21 $11 $11
	ld   de, $f71f                                   ; $6ca8: $11 $1f $f7
	rst  $38                                         ; $6cab: $ff
	rst  $38                                         ; $6cac: $ff
	ei                                               ; $6cad: $fb
	ld   d, e                                        ; $6cae: $53
	ld   de, $7a7c                                   ; $6caf: $11 $7c $7a
	rst  $28                                         ; $6cb2: $ef
	rst  $38                                         ; $6cb3: $ff
	xor  $fa                                         ; $6cb4: $ee $fa
	halt                                             ; $6cb6: $76
	ld   h, h                                        ; $6cb7: $64
	ld   hl, $1111                                   ; $6cb8: $21 $11 $11
	ld   de, $f81f                                   ; $6cbb: $11 $1f $f8
	rst  $38                                         ; $6cbe: $ff
	rst  $38                                         ; $6cbf: $ff
	db   $fc                                         ; $6cc0: $fc
	ld   h, [hl]                                     ; $6cc1: $66
	ld   de, $795a                                   ; $6cc2: $11 $5a $79
	sbc  $ff                                         ; $6cc5: $de $ff
	xor  $fa                                         ; $6cc7: $ee $fa
	ld   [hl], a                                     ; $6cc9: $77
	ld   [hl], h                                     ; $6cca: $74
	ld   [hl+], a                                    ; $6ccb: $22
	ld   de, $1111                                   ; $6ccc: $11 $11 $11
	ld   a, [de]                                     ; $6ccf: $1a
	rst  $30                                         ; $6cd0: $f7
	rst  $38                                         ; $6cd1: $ff
	rst  $38                                         ; $6cd2: $ff
	rst  $38                                         ; $6cd3: $ff
	ld   a, b                                        ; $6cd4: $78
	ld   sp, $6749                                   ; $6cd5: $31 $49 $67
	adc  $ef                                         ; $6cd8: $ce $ef
	cp   $fc                                         ; $6cda: $fe $fc
	add  a                                           ; $6cdc: $87
	ld   [hl], l                                     ; $6cdd: $75
	ld   [de], a                                     ; $6cde: $12
	ld   de, $1111                                   ; $6cdf: $11 $11 $11
	inc  e                                           ; $6ce2: $1c
	rst  $30                                         ; $6ce3: $f7
	rst  $38                                         ; $6ce4: $ff
	rst  $38                                         ; $6ce5: $ff
	rst  $38                                         ; $6ce6: $ff
	sub  a                                           ; $6ce7: $97
	ld   hl, $5647                                   ; $6ce8: $21 $47 $56
	cp   l                                           ; $6ceb: $bd
	xor  $ff                                         ; $6cec: $ee $ff
	db   $fc                                         ; $6cee: $fc
	xor  c                                           ; $6cef: $a9
	ld   [hl], h                                     ; $6cf0: $74
	ld   de, $1111                                   ; $6cf1: $11 $11 $11
	ld   de, $e61f                                   ; $6cf4: $11 $1f $e6
	rst  $38                                         ; $6cf7: $ff
	rst  $38                                         ; $6cf8: $ff
	rst  $38                                         ; $6cf9: $ff
	and  a                                           ; $6cfa: $a7
	ld   de, $2677                                   ; $6cfb: $11 $77 $26
	cp   e                                           ; $6cfe: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cff: $cf
	rst  $38                                         ; $6d00: $ff
	db   $fc                                         ; $6d01: $fc
	xor  c                                           ; $6d02: $a9
	ld   [hl], h                                     ; $6d03: $74
	ld   de, $1111                                   ; $6d04: $11 $11 $11
	ld   de, $b91f                                   ; $6d07: $11 $1f $b9
	rst  $38                                         ; $6d0a: $ff
	rst  $38                                         ; $6d0b: $ff
	rst  $38                                         ; $6d0c: $ff
	cp   b                                           ; $6d0d: $b8
	ld   [hl+], a                                    ; $6d0e: $22
	ld   [hl], h                                     ; $6d0f: $74
	ld   h, $9b                                      ; $6d10: $26 $9b
	cp   [hl]                                        ; $6d12: $be
	rst  $38                                         ; $6d13: $ff
	ei                                               ; $6d14: $fb
	cp   e                                           ; $6d15: $bb
	add  h                                           ; $6d16: $84
	ld   de, $1111                                   ; $6d17: $11 $11 $11
	ld   de, $5f4d                                   ; $6d1a: $11 $4d $5f
	rst  $38                                         ; $6d1d: $ff
	rst  $38                                         ; $6d1e: $ff
	rst  $38                                         ; $6d1f: $ff
	ret  z                                           ; $6d20: $c8

	ld   [hl], $62                                   ; $6d21: $36 $62
	ld   h, $77                                      ; $6d23: $26 $77
	xor  [hl]                                        ; $6d25: $ae
	rst  $28                                         ; $6d26: $ef
	db   $fd                                         ; $6d27: $fd
	db   $db                                         ; $6d28: $db
	add  h                                           ; $6d29: $84
	ld   sp, $1111                                   ; $6d2a: $31 $11 $11
	ld   de, $1fb9                                   ; $6d2d: $11 $b9 $1f
	rst  $38                                         ; $6d30: $ff
	rst  $38                                         ; $6d31: $ff
	rst  $38                                         ; $6d32: $ff
	rst  $20                                         ; $6d33: $e7
	ld   a, b                                        ; $6d34: $78
	ld   h, c                                        ; $6d35: $61
	dec  h                                           ; $6d36: $25
	ld   [hl], $ac                                   ; $6d37: $36 $ac
	rst  JumpTable                                         ; $6d39: $df
	rst  $28                                         ; $6d3a: $ef
	call c, $21a5                                    ; $6d3b: $dc $a5 $21
	ld   de, $1111                                   ; $6d3e: $11 $11 $11
	add  c                                           ; $6d41: $81
	cp   a                                           ; $6d42: $bf
	rst  $38                                         ; $6d43: $ff
	rst  $38                                         ; $6d44: $ff
	rst  $38                                         ; $6d45: $ff
	ei                                               ; $6d46: $fb
	cp   b                                           ; $6d47: $b8
	ld   hl, $1541                                   ; $6d48: $21 $41 $15
	adc  c                                           ; $6d4b: $89
	cp   a                                           ; $6d4c: $bf
	rst  $28                                         ; $6d4d: $ef
	db   $ed                                         ; $6d4e: $ed
	and  a                                           ; $6d4f: $a7
	ld   hl, $1111                                   ; $6d50: $21 $11 $11
	dec  d                                           ; $6d53: $15
	ld   de, $ffff                                   ; $6d54: $11 $ff $ff
	rst  $38                                         ; $6d57: $ff
	rst  $38                                         ; $6d58: $ff
	rst  $38                                         ; $6d59: $ff
	ld   hl, sp+$36                                  ; $6d5a: $f8 $36
	ld   sp, $4513                                   ; $6d5c: $31 $13 $45
	adc  d                                           ; $6d5f: $8a
	adc  $cb                                         ; $6d60: $ce $cb
	cp   d                                           ; $6d62: $ba
	ld   sp, $1111                                   ; $6d63: $31 $11 $11
	ld   sp, $9819                                   ; $6d66: $31 $19 $98
	rst  $38                                         ; $6d69: $ff
	rst  $38                                         ; $6d6a: $ff
	rst  $38                                         ; $6d6b: $ff
	rst  $38                                         ; $6d6c: $ff
	ld   a, [$32a8]                                  ; $6d6d: $fa $a8 $32
	ld   [hl+], a                                    ; $6d70: $22
	inc  hl                                          ; $6d71: $23
	ld   [hl], $98                                   ; $6d72: $36 $98
	adc  d                                           ; $6d74: $8a
	and  [hl]                                        ; $6d75: $a6
	inc  [hl]                                        ; $6d76: $34
	ld   de, $1127                                   ; $6d77: $11 $27 $11
	add  e                                           ; $6d7a: $83
	dec  hl                                          ; $6d7b: $2b
	call c, $ffff                                    ; $6d7c: $dc $ff $ff
	rst  $38                                         ; $6d7f: $ff
	rst  $38                                         ; $6d80: $ff
	ret                                              ; $6d81: $c9


	add  a                                           ; $6d82: $87
	ld   b, l                                        ; $6d83: $45
	ld   d, e                                        ; $6d84: $53
	ld   d, [hl]                                     ; $6d85: $56
	halt                                             ; $6d86: $76
	ld   a, d                                        ; $6d87: $7a
	add  [hl]                                        ; $6d88: $86
	add  [hl]                                        ; $6d89: $86
	ld   b, e                                        ; $6d8a: $43
	ld   b, [hl]                                     ; $6d8b: $46
	ld   de, $2333                                   ; $6d8c: $11 $33 $23
	ld   l, b                                        ; $6d8f: $68
	sbc  l                                           ; $6d90: $9d
	rst  $28                                         ; $6d91: $ef
	rst  $38                                         ; $6d92: $ff
	rst  $28                                         ; $6d93: $ef
	db   $fd                                         ; $6d94: $fd
	jp   z, $86ba                                    ; $6d95: $ca $ba $86

	ld   l, c                                        ; $6d98: $69
	halt                                             ; $6d99: $76
	adc  b                                           ; $6d9a: $88
	sbc  b                                           ; $6d9b: $98
	adc  c                                           ; $6d9c: $89
	ld   a, b                                        ; $6d9d: $78
	ld   [hl], e                                     ; $6d9e: $73
	ld   b, l                                        ; $6d9f: $45
	ld   b, d                                        ; $6da0: $42
	ld   de, $2322                                   ; $6da1: $11 $22 $23
	ld   b, [hl]                                     ; $6da4: $46
	adc  b                                           ; $6da5: $88
	xor  h                                           ; $6da6: $ac
	db   $dd                                         ; $6da7: $dd
	db   $dd                                         ; $6da8: $dd
	db   $ec                                         ; $6da9: $ec
	call $bacc                                       ; $6daa: $cd $cc $ba
	cp   d                                           ; $6dad: $ba
	xor  d                                           ; $6dae: $aa
	cp   d                                           ; $6daf: $ba
	xor  d                                           ; $6db0: $aa
	sbc  b                                           ; $6db1: $98
	ld   [hl], a                                     ; $6db2: $77
	ld   h, l                                        ; $6db3: $65
	ld   d, e                                        ; $6db4: $53
	inc  [hl]                                        ; $6db5: $34
	ld   b, e                                        ; $6db6: $43
	inc  hl                                          ; $6db7: $23
	ld   [hl+], a                                    ; $6db8: $22
	ld   [hl+], a                                    ; $6db9: $22
	inc  [hl]                                        ; $6dba: $34
	ld   h, [hl]                                     ; $6dbb: $66
	adc  d                                           ; $6dbc: $8a
	xor  e                                           ; $6dbd: $ab
	call z, $decd                                    ; $6dbe: $cc $cd $de
	db   $ed                                         ; $6dc1: $ed
	db   $ed                                         ; $6dc2: $ed
	call z, $b9cb                                    ; $6dc3: $cc $cb $b9
	sbc  b                                           ; $6dc6: $98
	ld   [hl], a                                     ; $6dc7: $77
	ld   h, [hl]                                     ; $6dc8: $66
	ld   d, h                                        ; $6dc9: $54
	ld   d, l                                        ; $6dca: $55
	ld   d, h                                        ; $6dcb: $54
	ld   b, e                                        ; $6dcc: $43
	ld   b, h                                        ; $6dcd: $44
	inc  sp                                          ; $6dce: $33
	ld   [hl-], a                                    ; $6dcf: $32
	inc  sp                                          ; $6dd0: $33
	inc  [hl]                                        ; $6dd1: $34
	ld   h, [hl]                                     ; $6dd2: $66
	adc  c                                           ; $6dd3: $89
	call z, $efde                                    ; $6dd4: $cc $de $ef
	sbc  $ff                                         ; $6dd7: $de $ff
	jp   c, $bbcb                                    ; $6dd9: $da $cb $bb

	jp   z, Jump_0d5_5797                            ; $6ddc: $ca $97 $57

	ld   h, [hl]                                     ; $6ddf: $66
	ld   d, h                                        ; $6de0: $54
	ld   b, h                                        ; $6de1: $44
	ld   d, e                                        ; $6de2: $53
	ld   [hl-], a                                    ; $6de3: $32
	ld   b, e                                        ; $6de4: $43
	ld   [de], a                                     ; $6de5: $12
	inc  sp                                          ; $6de6: $33
	inc  hl                                          ; $6de7: $23
	ld   d, [hl]                                     ; $6de8: $56
	adc  c                                           ; $6de9: $89
	cp   [hl]                                        ; $6dea: $be
	rst  $38                                         ; $6deb: $ff
	rst  $38                                         ; $6dec: $ff
	rst  $38                                         ; $6ded: $ff
	db   $ed                                         ; $6dee: $ed
	jp   z, $7799                                    ; $6def: $ca $99 $77

	ld   h, [hl]                                     ; $6df2: $66
	ld   h, a                                        ; $6df3: $67
	ld   [hl], a                                     ; $6df4: $77
	adc  b                                           ; $6df5: $88
	sub  [hl]                                        ; $6df6: $96
	ld   h, l                                        ; $6df7: $65
	ld   d, h                                        ; $6df8: $54

Call_0d5_6df9:
	ld   de, $1114                                   ; $6df9: $11 $14 $11
	ld   [hl+], a                                    ; $6dfc: $22
	ld   hl, $8a47                                   ; $6dfd: $21 $47 $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e00: $cf
	rst  $38                                         ; $6e01: $ff
	rst  $38                                         ; $6e02: $ff
	rst  $38                                         ; $6e03: $ff
	cp   $db                                         ; $6e04: $fe $db
	sub  a                                           ; $6e06: $97
	ld   h, a                                        ; $6e07: $67
	ld   h, h                                        ; $6e08: $64
	ld   d, [hl]                                     ; $6e09: $56
	ld   d, l                                        ; $6e0a: $55
	ld   h, [hl]                                     ; $6e0b: $66
	ld   h, l                                        ; $6e0c: $65
	ld   d, l                                        ; $6e0d: $55
	ld   b, e                                        ; $6e0e: $43
	ld   de, $1151                                   ; $6e0f: $11 $51 $11
	ld   b, d                                        ; $6e12: $42
	dec  d                                           ; $6e13: $15
	adc  c                                           ; $6e14: $89
	call $ffff                                       ; $6e15: $cd $ff $ff
	rst  $38                                         ; $6e18: $ff
	rst  $38                                         ; $6e19: $ff
	db   $fd                                         ; $6e1a: $fd
	cp   b                                           ; $6e1b: $b8
	halt                                             ; $6e1c: $76
	ld   d, e                                        ; $6e1d: $53
	dec  [hl]                                        ; $6e1e: $35
	ld   b, h                                        ; $6e1f: $44
	ld   d, [hl]                                     ; $6e20: $56
	ld   d, h                                        ; $6e21: $54
	ld   b, l                                        ; $6e22: $45
	ld   b, c                                        ; $6e23: $41
	inc  d                                           ; $6e24: $14
	ld   b, c                                        ; $6e25: $41
	inc  d                                           ; $6e26: $14
	ld   hl, $8b38                                   ; $6e27: $21 $38 $8b
	rst  JumpTable                                         ; $6e2a: $df
	rst  $38                                         ; $6e2b: $ff
	rst  $38                                         ; $6e2c: $ff
	rst  $38                                         ; $6e2d: $ff
	rst  $38                                         ; $6e2e: $ff
	db   $fc                                         ; $6e2f: $fc
	sub  a                                           ; $6e30: $97
	halt                                             ; $6e31: $76
	ld   [hl-], a                                    ; $6e32: $32
	ld   b, l                                        ; $6e33: $45
	ld   b, e                                        ; $6e34: $43
	ld   d, l                                        ; $6e35: $55
	inc  sp                                          ; $6e36: $33
	ld   [hl-], a                                    ; $6e37: $32
	ld   de, $1141                                   ; $6e38: $11 $41 $11
	ld   sp, $9a15                                   ; $6e3b: $31 $15 $9a
	adc  $ff                                         ; $6e3e: $ce $ff
	rst  $38                                         ; $6e40: $ff
	rst  $38                                         ; $6e41: $ff
	rst  $38                                         ; $6e42: $ff
	rst  $38                                         ; $6e43: $ff
	ret                                              ; $6e44: $c9


	add  [hl]                                        ; $6e45: $86
	ld   b, e                                        ; $6e46: $43
	inc  sp                                          ; $6e47: $33
	ld   [hl-], a                                    ; $6e48: $32
	inc  sp                                          ; $6e49: $33
	ld   hl, $1121                                   ; $6e4a: $21 $21 $11
	ld   sp, $4112                                   ; $6e4d: $31 $12 $41
	ld   d, $99                                      ; $6e50: $16 $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e52: $cf
	rst  $38                                         ; $6e53: $ff
	rst  $38                                         ; $6e54: $ff
	rst  $38                                         ; $6e55: $ff
	rst  $38                                         ; $6e56: $ff
	rst  $38                                         ; $6e57: $ff
	cp   d                                           ; $6e58: $ba
	sub  l                                           ; $6e59: $95
	inc  sp                                          ; $6e5a: $33
	ld   [hl-], a                                    ; $6e5b: $32
	ld   de, $1111                                   ; $6e5c: $11 $11 $11
	ld   de, $1112                                   ; $6e5f: $11 $12 $11
	inc  d                                           ; $6e62: $14
	ld   de, $8d6b                                   ; $6e63: $11 $6b $8d
	rst  $38                                         ; $6e66: $ff
	rst  $38                                         ; $6e67: $ff
	rst  $38                                         ; $6e68: $ff
	rst  $38                                         ; $6e69: $ff
	rst  $38                                         ; $6e6a: $ff
	db   $fc                                         ; $6e6b: $fc
	ret                                              ; $6e6c: $c9


	ld   d, h                                        ; $6e6d: $54
	ld   [hl-], a                                    ; $6e6e: $32
	ld   hl, $1111                                   ; $6e6f: $21 $11 $11
	ld   de, $3111                                   ; $6e72: $11 $11 $31
	inc  d                                           ; $6e75: $14
	ld   hl, $9a4a                                   ; $6e76: $21 $4a $9a
	rst  $38                                         ; $6e79: $ff
	rst  $38                                         ; $6e7a: $ff
	rst  $38                                         ; $6e7b: $ff
	rst  $38                                         ; $6e7c: $ff
	rst  $38                                         ; $6e7d: $ff
	cp   $da                                         ; $6e7e: $fe $da
	ld   [hl], h                                     ; $6e80: $74
	ld   b, e                                        ; $6e81: $43
	ld   hl, $1111                                   ; $6e82: $21 $11 $11
	ld   de, $4111                                   ; $6e85: $11 $11 $41
	dec  d                                           ; $6e88: $15
	ld   sp, $972a                                   ; $6e89: $31 $2a $97
	rst  $38                                         ; $6e8c: $ff
	rst  $38                                         ; $6e8d: $ff
	rst  $38                                         ; $6e8e: $ff
	rst  $38                                         ; $6e8f: $ff
	rst  $38                                         ; $6e90: $ff
	db   $fd                                         ; $6e91: $fd
	db   $ec                                         ; $6e92: $ec
	add  h                                           ; $6e93: $84
	ld   d, h                                        ; $6e94: $54
	ld   hl, $1111                                   ; $6e95: $21 $11 $11
	ld   de, $3111                                   ; $6e98: $11 $11 $31
	inc  d                                           ; $6e9b: $14
	ld   sp, $9728                                   ; $6e9c: $31 $28 $97
	rst  $28                                         ; $6e9f: $ef
	rst  $38                                         ; $6ea0: $ff
	rst  $38                                         ; $6ea1: $ff
	rst  $38                                         ; $6ea2: $ff
	rst  $38                                         ; $6ea3: $ff
	cp   $eb                                         ; $6ea4: $fe $eb
	add  [hl]                                        ; $6ea6: $86
	ld   d, h                                        ; $6ea7: $54
	ld   [hl+], a                                    ; $6ea8: $22
	ld   de, $1111                                   ; $6ea9: $11 $11 $11
	ld   de, $1431                                   ; $6eac: $11 $31 $14
	ld   b, c                                        ; $6eaf: $41
	rla                                              ; $6eb0: $17
	sub  [hl]                                        ; $6eb1: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eb2: $cf
	rst  $38                                         ; $6eb3: $ff
	rst  $38                                         ; $6eb4: $ff
	rst  $38                                         ; $6eb5: $ff
	rst  $38                                         ; $6eb6: $ff
	rst  $38                                         ; $6eb7: $ff
	db   $ed                                         ; $6eb8: $ed
	sub  [hl]                                        ; $6eb9: $96
	ld   d, l                                        ; $6eba: $55
	ld   hl, $1111                                   ; $6ebb: $21 $11 $11
	ld   de, $1211                                   ; $6ebe: $11 $11 $12
	ld   [de], a                                     ; $6ec1: $12
	ld   d, c                                        ; $6ec2: $51
	dec  b                                           ; $6ec3: $05
	sub  [hl]                                        ; $6ec4: $96
	sbc  a                                           ; $6ec5: $9f
	rst  $38                                         ; $6ec6: $ff
	rst  $38                                         ; $6ec7: $ff
	rst  $38                                         ; $6ec8: $ff
	rst  $38                                         ; $6ec9: $ff
	rst  $38                                         ; $6eca: $ff
	cp   $a7                                         ; $6ecb: $fe $a7
	ld   h, [hl]                                     ; $6ecd: $66
	ld   [hl-], a                                    ; $6ece: $32
	ld   hl, $1111                                   ; $6ecf: $21 $11 $11
	ld   de, $1113                                   ; $6ed2: $11 $13 $11
	ld   b, e                                        ; $6ed5: $43
	ld   de, $5b67                                   ; $6ed6: $11 $67 $5b
	rst  $28                                         ; $6ed9: $ef
	rst  $38                                         ; $6eda: $ff
	rst  $38                                         ; $6edb: $ff
	rst  $38                                         ; $6edc: $ff
	rst  $38                                         ; $6edd: $ff
	rst  $38                                         ; $6ede: $ff
	jp   hl                                          ; $6edf: $e9


	ld   [hl], a                                     ; $6ee0: $77
	ld   h, e                                        ; $6ee1: $63
	ld   [hl-], a                                    ; $6ee2: $32
	ld   de, $1111                                   ; $6ee3: $11 $11 $11
	ld   de, $1321                                   ; $6ee6: $11 $21 $13
	ld   hl, $6416                                   ; $6ee9: $21 $16 $64
	cp   a                                           ; $6eec: $bf
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	rst  $38                                         ; $6eef: $ff
	rst  $38                                         ; $6ef0: $ff
	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	cp   b                                           ; $6ef3: $b8
	add  [hl]                                        ; $6ef4: $86
	inc  sp                                          ; $6ef5: $33
	ld   sp, $1101                                   ; $6ef6: $31 $01 $11
	ld   de, $1111                                   ; $6ef9: $11 $11 $11
	inc  de                                          ; $6efc: $13
	ld   de, $4846                                   ; $6efd: $11 $46 $48
	db   $ed                                         ; $6f00: $ed
	rst  $38                                         ; $6f01: $ff
	rst  $38                                         ; $6f02: $ff
	rst  $38                                         ; $6f03: $ff
	rst  $38                                         ; $6f04: $ff
	rst  $38                                         ; $6f05: $ff
	db   $fd                                         ; $6f06: $fd
	xor  b                                           ; $6f07: $a8
	ld   [hl], l                                     ; $6f08: $75
	inc  sp                                          ; $6f09: $33
	ld   [hl-], a                                    ; $6f0a: $32
	ld   de, $1111                                   ; $6f0b: $11 $11 $11
	ld   [de], a                                     ; $6f0e: $12
	ld   de, $1122                                   ; $6f0f: $11 $22 $11
	ld   d, l                                        ; $6f12: $55
	add  hl, sp                                      ; $6f13: $39
	db   $ec                                         ; $6f14: $ec
	rst  $38                                         ; $6f15: $ff
	rst  $38                                         ; $6f16: $ff
	rst  $38                                         ; $6f17: $ff
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	db   $fc                                         ; $6f1a: $fc
	cp   d                                           ; $6f1b: $ba
	add  l                                           ; $6f1c: $85
	ld   b, h                                        ; $6f1d: $44
	ld   hl, $1111                                   ; $6f1e: $21 $11 $11
	ld   de, $1111                                   ; $6f21: $11 $11 $11
	ld   hl, $3511                                   ; $6f24: $21 $11 $35
	ld   c, b                                        ; $6f27: $48
	call z, $ffef                                    ; $6f28: $cc $ef $ff
	rst  $38                                         ; $6f2b: $ff
	rst  $38                                         ; $6f2c: $ff
	rst  $38                                         ; $6f2d: $ff
	db   $fd                                         ; $6f2e: $fd
	cp   d                                           ; $6f2f: $ba
	add  l                                           ; $6f30: $85
	ld   d, l                                        ; $6f31: $55
	ld   hl, $1122                                   ; $6f32: $21 $22 $11
	ld   de, $0111                                   ; $6f35: $11 $11 $01
	ld   de, $2511                                   ; $6f38: $11 $11 $25
	ld   b, a                                        ; $6f3b: $47
	cp   [hl]                                        ; $6f3c: $be
	rst  $38                                         ; $6f3d: $ff
	rst  $38                                         ; $6f3e: $ff
	rst  $38                                         ; $6f3f: $ff
	rst  $38                                         ; $6f40: $ff
	rst  $38                                         ; $6f41: $ff
	cp   $ca                                         ; $6f42: $fe $ca
	and  a                                           ; $6f44: $a7
	ld   d, h                                        ; $6f45: $54
	ld   [hl-], a                                    ; $6f46: $32
	ld   [de], a                                     ; $6f47: $12
	ld   de, $1111                                   ; $6f48: $11 $11 $11
	ld   de, $1112                                   ; $6f4b: $11 $12 $11
	dec  d                                           ; $6f4e: $15
	ld   d, [hl]                                     ; $6f4f: $56
	xor  l                                           ; $6f50: $ad
	rst  $38                                         ; $6f51: $ff
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	rst  $38                                         ; $6f54: $ff
	rst  $38                                         ; $6f55: $ff
	rst  $38                                         ; $6f56: $ff
	db   $db                                         ; $6f57: $db
	sbc  b                                           ; $6f58: $98
	ld   h, h                                        ; $6f59: $64
	inc  [hl]                                        ; $6f5a: $34
	ld   hl, $1111                                   ; $6f5b: $21 $11 $11
	ld   de, $1111                                   ; $6f5e: $11 $11 $11
	ld   de, $7614                                   ; $6f61: $11 $14 $76
	cp   a                                           ; $6f64: $bf
	rst  $38                                         ; $6f65: $ff
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	rst  $38                                         ; $6f68: $ff
	rst  $38                                         ; $6f69: $ff
	cp   $ca                                         ; $6f6a: $fe $ca
	ld   a, c                                        ; $6f6c: $79
	ld   h, h                                        ; $6f6d: $64
	inc  sp                                          ; $6f6e: $33
	ld   sp, $1111                                   ; $6f6f: $31 $11 $11
	ld   de, $1111                                   ; $6f72: $11 $11 $11
	ld   de, $8815                                   ; $6f75: $11 $15 $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f78: $cf
	rst  $38                                         ; $6f79: $ff
	rst  $38                                         ; $6f7a: $ff
	rst  $38                                         ; $6f7b: $ff
	rst  $38                                         ; $6f7c: $ff
	rst  $38                                         ; $6f7d: $ff
	db   $fd                                         ; $6f7e: $fd
	ret                                              ; $6f7f: $c9


	halt                                             ; $6f80: $76
	ld   h, l                                        ; $6f81: $65
	ld   [hl-], a                                    ; $6f82: $32
	ld   hl, $1111                                   ; $6f83: $21 $11 $11
	ld   de, $1111                                   ; $6f86: $11 $11 $11
	ld   de, $6936                                   ; $6f89: $11 $36 $69
	rst  JumpTable                                         ; $6f8c: $df
	rst  $38                                         ; $6f8d: $ff
	rst  $38                                         ; $6f8e: $ff
	rst  $38                                         ; $6f8f: $ff
	rst  $38                                         ; $6f90: $ff
	rst  $38                                         ; $6f91: $ff
	db   $ec                                         ; $6f92: $ec
	ret                                              ; $6f93: $c9


	sub  a                                           ; $6f94: $97
	halt                                             ; $6f95: $76
	ld   d, l                                        ; $6f96: $55
	ld   b, e                                        ; $6f97: $43
	ld   [hl+], a                                    ; $6f98: $22
	ld   de, $1111                                   ; $6f99: $11 $11 $11
	ld   de, $1311                                   ; $6f9c: $11 $11 $13
	ld   d, a                                        ; $6f9f: $57
	sbc  h                                           ; $6fa0: $9c
	rst  $28                                         ; $6fa1: $ef
	rst  $38                                         ; $6fa2: $ff
	rst  $38                                         ; $6fa3: $ff
	rst  $38                                         ; $6fa4: $ff
	rst  $38                                         ; $6fa5: $ff
	rst  $38                                         ; $6fa6: $ff
	xor  $cb                                         ; $6fa7: $ee $cb
	xor  d                                           ; $6fa9: $aa
	add  a                                           ; $6faa: $87
	ld   h, h                                        ; $6fab: $64
	ld   b, d                                        ; $6fac: $42
	ld   de, $1111                                   ; $6fad: $11 $11 $11
	ld   de, $1111                                   ; $6fb0: $11 $11 $11
	inc  de                                          ; $6fb3: $13
	ld   d, a                                        ; $6fb4: $57
	sbc  h                                           ; $6fb5: $9c
	rst  $28                                         ; $6fb6: $ef
	rst  $38                                         ; $6fb7: $ff
	rst  $38                                         ; $6fb8: $ff
	rst  $38                                         ; $6fb9: $ff
	rst  $38                                         ; $6fba: $ff
	rst  $38                                         ; $6fbb: $ff
	cp   $db                                         ; $6fbc: $fe $db
	sbc  b                                           ; $6fbe: $98
	ld   h, l                                        ; $6fbf: $65
	ld   [hl-], a                                    ; $6fc0: $32
	ld   de, $1111                                   ; $6fc1: $11 $11 $11
	ld   de, $1111                                   ; $6fc4: $11 $11 $11
	ld   de, $6824                                   ; $6fc7: $11 $24 $68
	adc  $ff                                         ; $6fca: $ce $ff
	rst  $38                                         ; $6fcc: $ff
	rst  $38                                         ; $6fcd: $ff
	rst  $38                                         ; $6fce: $ff
	rst  $38                                         ; $6fcf: $ff
	rst  $38                                         ; $6fd0: $ff
	cp   $bb                                         ; $6fd1: $fe $bb
	add  a                                           ; $6fd3: $87
	ld   d, h                                        ; $6fd4: $54
	ld   hl, $1101                                   ; $6fd5: $21 $01 $11
	ld   de, $1111                                   ; $6fd8: $11 $11 $11
	ld   de, $2511                                   ; $6fdb: $11 $11 $25
	ld   a, c                                        ; $6fde: $79
	adc  $ff                                         ; $6fdf: $ce $ff
	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	rst  $38                                         ; $6fe3: $ff
	rst  $38                                         ; $6fe4: $ff
	rst  $38                                         ; $6fe5: $ff
	cp   $cb                                         ; $6fe6: $fe $cb
	add  a                                           ; $6fe8: $87
	ld   d, h                                        ; $6fe9: $54
	ld   hl, $1111                                   ; $6fea: $21 $11 $11
	ld   de, $1111                                   ; $6fed: $11 $11 $11
	ld   de, $2411                                   ; $6ff0: $11 $11 $24
	ld   l, c                                        ; $6ff3: $69
	cp   [hl]                                        ; $6ff4: $be
	rst  $38                                         ; $6ff5: $ff
	rst  $38                                         ; $6ff6: $ff
	rst  $38                                         ; $6ff7: $ff
	rst  $38                                         ; $6ff8: $ff
	rst  $38                                         ; $6ff9: $ff
	rst  $38                                         ; $6ffa: $ff
	db   $fd                                         ; $6ffb: $fd
	res  2, a                                        ; $6ffc: $cb $97
	ld   d, h                                        ; $6ffe: $54
	ld   sp, $1111                                   ; $6fff: $31 $11 $11
	ld   de, $1111                                   ; $7002: $11 $11 $11
	ld   de, $1311                                   ; $7005: $11 $11 $13
	ld   d, a                                        ; $7008: $57
	sbc  h                                           ; $7009: $9c
	rst  $28                                         ; $700a: $ef
	rst  $38                                         ; $700b: $ff
	rst  $38                                         ; $700c: $ff
	rst  $38                                         ; $700d: $ff
	rst  $38                                         ; $700e: $ff
	rst  $38                                         ; $700f: $ff
	cp   $dc                                         ; $7010: $fe $dc
	sbc  b                                           ; $7012: $98
	ld   h, h                                        ; $7013: $64
	ld   [hl-], a                                    ; $7014: $32
	ld   de, $1111                                   ; $7015: $11 $11 $11
	ld   de, $1111                                   ; $7018: $11 $11 $11
	ld   de, $4602                                   ; $701b: $11 $02 $46
	adc  c                                           ; $701e: $89
	adc  $ff                                         ; $701f: $ce $ff
	rst  $38                                         ; $7021: $ff
	rst  $38                                         ; $7022: $ff
	rst  $38                                         ; $7023: $ff
	rst  $38                                         ; $7024: $ff
	rst  $38                                         ; $7025: $ff
	db   $ec                                         ; $7026: $ec
	cp   c                                           ; $7027: $b9
	add  [hl]                                        ; $7028: $86
	ld   b, e                                        ; $7029: $43
	ld   hl, $1111                                   ; $702a: $21 $11 $11
	ld   de, $1111                                   ; $702d: $11 $11 $11
	ld   de, $2311                                   ; $7030: $11 $11 $23
	ld   d, a                                        ; $7033: $57
	sbc  e                                           ; $7034: $9b
	rst  $28                                         ; $7035: $ef
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	rst  $38                                         ; $7039: $ff
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	call c, Call_0d5_75a9                            ; $703c: $dc $a9 $75
	ld   b, e                                        ; $703f: $43
	ld   hl, $1111                                   ; $7040: $21 $11 $11
	ld   de, $1111                                   ; $7043: $11 $11 $11
	ld   de, $2412                                   ; $7046: $11 $12 $24
	ld   l, b                                        ; $7049: $68
	sbc  h                                           ; $704a: $9c
	rst  $28                                         ; $704b: $ef
	rst  $38                                         ; $704c: $ff
	rst  $38                                         ; $704d: $ff
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	rst  $38                                         ; $7050: $ff
	db   $fd                                         ; $7051: $fd
	jp   z, Jump_0d5_65a8                            ; $7052: $ca $a8 $65

	ld   b, e                                        ; $7055: $43
	ld   [hl+], a                                    ; $7056: $22
	ld   de, $1111                                   ; $7057: $11 $11 $11
	ld   de, $1111                                   ; $705a: $11 $11 $11
	ld   [de], a                                     ; $705d: $12
	inc  [hl]                                        ; $705e: $34
	ld   l, b                                        ; $705f: $68
	xor  e                                           ; $7060: $ab
	sbc  $ff                                         ; $7061: $de $ff
	rst  $38                                         ; $7063: $ff
	rst  $38                                         ; $7064: $ff
	rst  $38                                         ; $7065: $ff
	rst  $38                                         ; $7066: $ff
	cp   $cb                                         ; $7067: $fe $cb
	sbc  b                                           ; $7069: $98
	ld   [hl], l                                     ; $706a: $75
	ld   b, e                                        ; $706b: $43
	ld   [hl+], a                                    ; $706c: $22
	ld   [hl+], a                                    ; $706d: $22
	ld   de, $1111                                   ; $706e: $11 $11 $11
	ld   de, $2311                                   ; $7071: $11 $11 $23
	inc  [hl]                                        ; $7074: $34
	ld   d, a                                        ; $7075: $57
	adc  d                                           ; $7076: $8a
	adc  $ff                                         ; $7077: $ce $ff
	rst  $38                                         ; $7079: $ff
	rst  $38                                         ; $707a: $ff
	rst  $38                                         ; $707b: $ff
	rst  $38                                         ; $707c: $ff
	xor  $cb                                         ; $707d: $ee $cb
	xor  c                                           ; $707f: $a9
	halt                                             ; $7080: $76
	ld   d, h                                        ; $7081: $54
	ld   b, e                                        ; $7082: $43
	ld   [hl-], a                                    ; $7083: $32
	ld   [hl+], a                                    ; $7084: $22
	ld   [hl+], a                                    ; $7085: $22
	ld   de, $2212                                   ; $7086: $11 $12 $22
	ld   [hl+], a                                    ; $7089: $22
	inc  sp                                          ; $708a: $33
	ld   b, [hl]                                     ; $708b: $46
	ld   a, c                                        ; $708c: $79
	xor  h                                           ; $708d: $ac
	sbc  $ff                                         ; $708e: $de $ff
	rst  $38                                         ; $7090: $ff
	rst  $38                                         ; $7091: $ff
	rst  $38                                         ; $7092: $ff
	cp   $dc                                         ; $7093: $fe $dc
	xor  c                                           ; $7095: $a9
	ld   d, h                                        ; $7096: $54
	inc  sp                                          ; $7097: $33
	ld   hl, $2111                                   ; $7098: $21 $11 $21
	ld   de, $1111                                   ; $709b: $11 $11 $11
	ld   de, $4634                                   ; $709e: $11 $34 $46
	adc  d                                           ; $70a1: $8a
	adc  $ff                                         ; $70a2: $ce $ff
	rst  $38                                         ; $70a4: $ff
	rst  $38                                         ; $70a5: $ff
	rst  $38                                         ; $70a6: $ff
	rst  $38                                         ; $70a7: $ff
	db   $ec                                         ; $70a8: $ec
	cp   d                                           ; $70a9: $ba
	halt                                             ; $70aa: $76
	ld   d, h                                        ; $70ab: $54
	ld   b, e                                        ; $70ac: $43
	ld   de, $1111                                   ; $70ad: $11 $11 $11
	ld   de, $1111                                   ; $70b0: $11 $11 $11
	ld   de, $7b13                                   ; $70b3: $11 $13 $7b
	cp   l                                           ; $70b6: $bd
	rst  $38                                         ; $70b7: $ff
	rst  $38                                         ; $70b8: $ff
	rst  $38                                         ; $70b9: $ff
	rst  $38                                         ; $70ba: $ff
	rst  $38                                         ; $70bb: $ff
	cp   $a8                                         ; $70bc: $fe $a8
	add  a                                           ; $70be: $87
	ld   b, d                                        ; $70bf: $42
	inc  [hl]                                        ; $70c0: $34
	ld   [hl-], a                                    ; $70c1: $32
	ld   [de], a                                     ; $70c2: $12
	ld   hl, $1111                                   ; $70c3: $21 $11 $11
	ld   de, $2112                                   ; $70c6: $11 $12 $21
	ld   e, d                                        ; $70c9: $5a
	call $ffff                                       ; $70ca: $cd $ff $ff
	rst  $38                                         ; $70cd: $ff
	rst  $38                                         ; $70ce: $ff
	rst  $38                                         ; $70cf: $ff
	cp   $ca                                         ; $70d0: $fe $ca
	halt                                             ; $70d2: $76
	ld   h, l                                        ; $70d3: $65
	ld   b, h                                        ; $70d4: $44
	inc  sp                                          ; $70d5: $33
	ld   hl, $1121                                   ; $70d6: $21 $21 $11
	ld   de, $1111                                   ; $70d9: $11 $11 $11
	ld   [de], a                                     ; $70dc: $12
	ld   a, e                                        ; $70dd: $7b
	rst  $28                                         ; $70de: $ef
	rst  $38                                         ; $70df: $ff
	rst  $38                                         ; $70e0: $ff
	rst  $38                                         ; $70e1: $ff
	rst  $38                                         ; $70e2: $ff
	rst  $38                                         ; $70e3: $ff
	db   $fd                                         ; $70e4: $fd
	jp   z, Jump_0d5_7588                            ; $70e5: $ca $88 $75

	ld   d, l                                        ; $70e8: $55
	ld   d, e                                        ; $70e9: $53
	ld   hl, $1111                                   ; $70ea: $21 $11 $11
	ld   de, $1111                                   ; $70ed: $11 $11 $11
	dec  d                                           ; $70f0: $15
	xor  h                                           ; $70f1: $ac
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	rst  $38                                         ; $70f4: $ff
	rst  $38                                         ; $70f5: $ff
	rst  $38                                         ; $70f6: $ff
	rst  $38                                         ; $70f7: $ff
	db   $fc                                         ; $70f8: $fc
	ret  z                                           ; $70f9: $c8

	sbc  b                                           ; $70fa: $98
	ld   [hl], a                                     ; $70fb: $77
	ld   h, a                                        ; $70fc: $67
	ld   d, h                                        ; $70fd: $54
	ld   [hl-], a                                    ; $70fe: $32
	ld   hl, $1111                                   ; $70ff: $21 $11 $11
	ld   de, $1611                                   ; $7102: $11 $11 $16
	adc  $ef                                         ; $7105: $ce $ef
	rst  $38                                         ; $7107: $ff
	rst  $38                                         ; $7108: $ff
	rst  $38                                         ; $7109: $ff
	rst  $38                                         ; $710a: $ff
	rst  $28                                         ; $710b: $ef
	db   $dd                                         ; $710c: $dd
	cp   c                                           ; $710d: $b9
	xor  c                                           ; $710e: $a9
	add  a                                           ; $710f: $87
	halt                                             ; $7110: $76
	ld   d, h                                        ; $7111: $54
	ld   [hl+], a                                    ; $7112: $22
	ld   hl, $1111                                   ; $7113: $21 $11 $11
	ld   de, $4821                                   ; $7116: $11 $21 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7119: $cf
	cp   $ff                                         ; $711a: $fe $ff
	rst  $38                                         ; $711c: $ff
	rst  $38                                         ; $711d: $ff
	rst  $38                                         ; $711e: $ff
	db   $dd                                         ; $711f: $dd
	db   $ed                                         ; $7120: $ed
	sbc  c                                           ; $7121: $99
	xor  c                                           ; $7122: $a9
	add  a                                           ; $7123: $87
	sub  a                                           ; $7124: $97
	ld   b, d                                        ; $7125: $42
	ld   [hl+], a                                    ; $7126: $22
	ld   hl, $1111                                   ; $7127: $21 $11 $11
	ld   [de], a                                     ; $712a: $12
	ld   [de], a                                     ; $712b: $12
	xor  e                                           ; $712c: $ab
	rst  $28                                         ; $712d: $ef
	xor  $ff                                         ; $712e: $ee $ff
	sbc  $ff                                         ; $7130: $de $ff
	cp   $ee                                         ; $7132: $fe $ee
	res  3, c                                        ; $7134: $cb $99
	sbc  d                                           ; $7136: $9a
	add  a                                           ; $7137: $87
	ld   h, [hl]                                     ; $7138: $66
	ld   b, d                                        ; $7139: $42
	inc  sp                                          ; $713a: $33
	ld   de, $1111                                   ; $713b: $11 $11 $11
	ld   [de], a                                     ; $713e: $12
	add  hl, hl                                      ; $713f: $29
	cp   a                                           ; $7140: $bf
	cp   $df                                         ; $7141: $fe $df
	db   $fd                                         ; $7143: $fd
	rst  $38                                         ; $7144: $ff
	rst  $38                                         ; $7145: $ff
	db   $dd                                         ; $7146: $dd
	db   $ec                                         ; $7147: $ec
	cp   e                                           ; $7148: $bb
	sbc  c                                           ; $7149: $99
	adc  c                                           ; $714a: $89
	ld   [hl], a                                     ; $714b: $77
	ld   d, e                                        ; $714c: $53
	ld   b, h                                        ; $714d: $44
	ld   hl, $1111                                   ; $714e: $21 $11 $11
	ld   [de], a                                     ; $7151: $12
	ld   b, l                                        ; $7152: $45
	sbc  d                                           ; $7153: $9a
	rst  JumpTable                                         ; $7154: $df
	rst  $38                                         ; $7155: $ff
	call z, $efde                                    ; $7156: $cc $de $ef
	db   $fd                                         ; $7159: $fd
	db   $ed                                         ; $715a: $ed
	call c, $89ba                                    ; $715b: $dc $ba $89
	add  [hl]                                        ; $715e: $86
	ld   h, e                                        ; $715f: $63
	inc  hl                                          ; $7160: $23
	ld   b, d                                        ; $7161: $42
	ld   [de], a                                     ; $7162: $12
	ld   de, $5111                                   ; $7163: $11 $11 $51
	ld   a, e                                        ; $7166: $7b
	xor  a                                           ; $7167: $af
	db   $fc                                         ; $7168: $fc
	cp   l                                           ; $7169: $bd
	sbc  h                                           ; $716a: $9c
	rst  $38                                         ; $716b: $ff
	rst  $38                                         ; $716c: $ff
	db   $ed                                         ; $716d: $ed
	res  3, e                                        ; $716e: $cb $9b
	ret                                              ; $7170: $c9


	ld   [hl], a                                     ; $7171: $77
	add  l                                           ; $7172: $85
	ld   sp, $3124                                   ; $7173: $31 $24 $31
	ld   de, $4711                                   ; $7176: $11 $11 $47
	ld   h, a                                        ; $7179: $67
	cp   l                                           ; $717a: $bd
	rst  $38                                         ; $717b: $ff
	xor  b                                           ; $717c: $a8
	xor  h                                           ; $717d: $ac
	rst  $28                                         ; $717e: $ef
	cp   $ee                                         ; $717f: $fe $ee
	jp   z, $99bb                                    ; $7181: $ca $bb $99

	ld   a, b                                        ; $7184: $78
	ld   h, l                                        ; $7185: $65
	ld   hl, $3145                                   ; $7186: $21 $45 $31
	ld   de, $9411                                   ; $7189: $11 $11 $94
	dec  sp                                          ; $718c: $3b
	call c, Call_0d5_6df9                            ; $718d: $dc $f9 $6d
	jp   hl                                          ; $7190: $e9


	rst  JumpTable                                         ; $7191: $df
	rst  $38                                         ; $7192: $ff
	call c, $b7cc                                    ; $7193: $dc $cc $b7
	xor  c                                           ; $7196: $a9
	add  [hl]                                        ; $7197: $86
	ld   b, d                                        ; $7198: $42
	inc  de                                          ; $7199: $13
	ld   b, h                                        ; $719a: $44
	ld   de, $1311                                   ; $719b: $11 $11 $13
	ld   l, c                                        ; $719e: $69
	xor  c                                           ; $719f: $a9
	res  5, d                                        ; $71a0: $cb $aa
	ld   a, d                                        ; $71a2: $7a
	rst  $38                                         ; $71a3: $ff
	rst  $28                                         ; $71a4: $ef
	db   $dd                                         ; $71a5: $dd
	call z, $a7cd                                    ; $71a6: $cc $cd $a7
	sub  [hl]                                        ; $71a9: $96
	ld   h, h                                        ; $71aa: $64
	ld   b, d                                        ; $71ab: $42
	inc  h                                           ; $71ac: $24
	inc  [hl]                                        ; $71ad: $34
	ld   [hl+], a                                    ; $71ae: $22
	ld   de, $6748                                   ; $71af: $11 $48 $67
	xor  [hl]                                        ; $71b2: $ae
	rst  $20                                         ; $71b3: $e7
	ld   a, b                                        ; $71b4: $78
	cp   a                                           ; $71b5: $bf
	set  7, l                                        ; $71b6: $cb $fd
	cp   $6a                                         ; $71b8: $fe $6a
	db   $dd                                         ; $71ba: $dd
	sub  [hl]                                        ; $71bb: $96
	ld   a, b                                        ; $71bc: $78
	ld   d, c                                        ; $71bd: $51
	ld   [de], a                                     ; $71be: $12
	add  [hl]                                        ; $71bf: $86
	ld   sp, $8a11                                   ; $71c0: $31 $11 $8a
	ld   b, l                                        ; $71c3: $45
	xor  h                                           ; $71c4: $ac
	xor  c                                           ; $71c5: $a9
	xor  a                                           ; $71c6: $af
	or   [hl]                                        ; $71c7: $b6
	xor  l                                           ; $71c8: $ad
	rst  $38                                         ; $71c9: $ff
	add  sp, -$55                                    ; $71ca: $e8 $ab
	jp   z, $9669                                    ; $71cc: $ca $69 $96

	inc  [hl]                                        ; $71cf: $34
	inc  [hl]                                        ; $71d0: $34
	inc  sp                                          ; $71d1: $33
	ld   [hl+], a                                    ; $71d2: $22
	ld   sp, $534b                                   ; $71d3: $31 $4b $53
	jp   c, $be3a                                    ; $71d6: $da $3a $be

	rst  $30                                         ; $71d9: $f7
	ld   l, a                                        ; $71da: $6f
	rst  $38                                         ; $71db: $ff
	cp   c                                           ; $71dc: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71dd: $cf
	add  sp, $57                                     ; $71de: $e8 $57
	sub  a                                           ; $71e0: $97
	ld   h, d                                        ; $71e1: $62
	ld   [de], a                                     ; $71e2: $12
	ld   b, e                                        ; $71e3: $43
	ld   [hl-], a                                    ; $71e4: $32
	ld   [de], a                                     ; $71e5: $12
	ld   b, l                                        ; $71e6: $45
	ld   d, [hl]                                     ; $71e7: $56
	xor  a                                           ; $71e8: $af
	sub  e                                           ; $71e9: $93
	cp   a                                           ; $71ea: $bf
	sub  h                                           ; $71eb: $94
	rst  $38                                         ; $71ec: $ff
	call z, $fb9c                                    ; $71ed: $cc $9c $fb
	ld   a, c                                        ; $71f0: $79
	sbc  e                                           ; $71f1: $9b
	add  h                                           ; $71f2: $84
	ld   [de], a                                     ; $71f3: $12
	ld   b, l                                        ; $71f4: $45
	ld   d, d                                        ; $71f5: $52
	ld   [de], a                                     ; $71f6: $12
	ld   b, d                                        ; $71f7: $42
	ld   l, b                                        ; $71f8: $68
	ld   c, d                                        ; $71f9: $4a
	add  $4a                                         ; $71fa: $c6 $4a
	db   $fd                                         ; $71fc: $fd
	ld   l, h                                        ; $71fd: $6c
	xor  l                                           ; $71fe: $ad
	db   $fc                                         ; $71ff: $fc
	sbc  h                                           ; $7200: $9c
	call z, Call_0d5_46c7                            ; $7201: $cc $c7 $46
	ld   [hl], l                                     ; $7204: $75
	ld   d, l                                        ; $7205: $55
	ld   [hl], $75                                   ; $7206: $36 $75
	ld   hl, $8736                                   ; $7208: $21 $36 $87
	ld   [hl], a                                     ; $720b: $77
	cp   d                                           ; $720c: $ba
	ld   [hl], a                                     ; $720d: $77
	adc  a                                           ; $720e: $8f
	rst  $30                                         ; $720f: $f7
	cp   a                                           ; $7210: $bf
	cp   e                                           ; $7211: $bb
	call nc, Call_0d5_749f                           ; $7212: $d4 $9f $74
	ld   h, e                                        ; $7215: $63
	ld   b, l                                        ; $7216: $45
	ld   l, b                                        ; $7217: $68
	ld   [hl-], a                                    ; $7218: $32
	ld   b, h                                        ; $7219: $44
	ld   b, l                                        ; $721a: $45
	ld   d, [hl]                                     ; $721b: $56
	ld   l, b                                        ; $721c: $68
	xor  d                                           ; $721d: $aa
	xor  b                                           ; $721e: $a8
	cp   a                                           ; $721f: $bf
	call nz, $f7ef                                   ; $7220: $c4 $ef $f7
	ld   c, e                                        ; $7223: $4b
	call c, Call_0d5_7966                            ; $7224: $dc $66 $79
	ld   [hl], d                                     ; $7227: $72
	ld   d, [hl]                                     ; $7228: $56
	ld   d, h                                        ; $7229: $54
	ld   [hl-], a                                    ; $722a: $32
	ld   c, c                                        ; $722b: $49
	ld   h, d                                        ; $722c: $62
	ld   l, e                                        ; $722d: $6b
	sbc  b                                           ; $722e: $98
	adc  c                                           ; $722f: $89
	sbc  a                                           ; $7230: $9f
	jp   hl                                          ; $7231: $e9


	set  1, h                                        ; $7232: $cb $cc
	ld   a, d                                        ; $7234: $7a
	reti                                             ; $7235: $d9


	add  [hl]                                        ; $7236: $86

jr_0d5_7237:
	dec  [hl]                                        ; $7237: $35
	halt                                             ; $7238: $76
	ld   a, b                                        ; $7239: $78
	ld   d, h                                        ; $723a: $54
	ld   sp, $735a                                   ; $723b: $31 $5a $73
	ld   d, a                                        ; $723e: $57
	sbc  l                                           ; $723f: $9d
	or   h                                           ; $7240: $b4
	sbc  l                                           ; $7241: $9d
	call c, $dd8b                                    ; $7242: $dc $8b $dd
	or   [hl]                                        ; $7245: $b6
	ld   a, e                                        ; $7246: $7b
	push bc                                          ; $7247: $c5
	ld   b, l                                        ; $7248: $45
	ld   a, e                                        ; $7249: $7b
	add  c                                           ; $724a: $81
	ld   h, $a7                                      ; $724b: $26 $a7
	dec  h                                           ; $724d: $25
	ld   b, [hl]                                     ; $724e: $46
	sbc  b                                           ; $724f: $98
	xor  d                                           ; $7250: $aa
	xor  b                                           ; $7251: $a8
	ld   e, d                                        ; $7252: $5a
	rst  $38                                         ; $7253: $ff
	or   e                                           ; $7254: $b3
	ld   l, l                                        ; $7255: $6d
	ld   a, [$6836]                                  ; $7256: $fa $36 $68
	ld   [hl], h                                     ; $7259: $74
	ld   l, c                                        ; $725a: $69
	add  h                                           ; $725b: $84
	jr   c, jr_0d5_7237                              ; $725c: $38 $d9

	ld   hl, $a47c                                   ; $725e: $21 $7c $a4
	scf                                              ; $7261: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7262: $cf
	or   a                                           ; $7263: $b7
	xor  [hl]                                        ; $7264: $ae
	or   $4b                                         ; $7265: $f6 $4b
	cp   c                                           ; $7267: $b9
	ld   d, d                                        ; $7268: $52
	daa                                              ; $7269: $27
	jp   hl                                          ; $726a: $e9


	ld   b, a                                        ; $726b: $47
	sbc  c                                           ; $726c: $99
	ld   [hl], h                                     ; $726d: $74
	ld   l, b                                        ; $726e: $68
	ld   h, [hl]                                     ; $726f: $66
	ld   h, a                                        ; $7270: $67
	cp   e                                           ; $7271: $bb
	sub  h                                           ; $7272: $94
	ld   l, a                                        ; $7273: $6f
	db   $fc                                         ; $7274: $fc
	ld   d, h                                        ; $7275: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7276: $cf
	add  c                                           ; $7277: $81
	ld   d, l                                        ; $7278: $55
	sbc  b                                           ; $7279: $98
	ld   l, b                                        ; $727a: $68
	ld   [hl], a                                     ; $727b: $77
	add  a                                           ; $727c: $87
	sbc  e                                           ; $727d: $9b
	ld   [hl], e                                     ; $727e: $73
	ld   c, h                                        ; $727f: $4c
	or   l                                           ; $7280: $b5
	ld   d, h                                        ; $7281: $54
	adc  e                                           ; $7282: $8b
	xor  c                                           ; $7283: $a9
	sbc  e                                           ; $7284: $9b
	xor  b                                           ; $7285: $a8
	ld   a, d                                        ; $7286: $7a
	sbc  c                                           ; $7287: $99
	ld   d, d                                        ; $7288: $52
	sbc  d                                           ; $7289: $9a
	sub  a                                           ; $728a: $97
	ld   d, [hl]                                     ; $728b: $56
	jp   z, $8957                                    ; $728c: $ca $57 $89

	sub  l                                           ; $728f: $95
	ld   e, b                                        ; $7290: $58
	adc  d                                           ; $7291: $8a
	adc  b                                           ; $7292: $88
	ret                                              ; $7293: $c9


	ld   a, h                                        ; $7294: $7c
	cp   c                                           ; $7295: $b9
	ld   [hl], h                                     ; $7296: $74
	sbc  d                                           ; $7297: $9a
	ld   [hl], a                                     ; $7298: $77
	ld   d, a                                        ; $7299: $57
	ld   h, l                                        ; $729a: $65
	sbc  h                                           ; $729b: $9c
	sub  [hl]                                        ; $729c: $96
	ld   a, c                                        ; $729d: $79
	xor  b                                           ; $729e: $a8
	ld   h, a                                        ; $729f: $67
	and  [hl]                                        ; $72a0: $a6
	ld   l, c                                        ; $72a1: $69
	xor  c                                           ; $72a2: $a9
	sbc  d                                           ; $72a3: $9a
	sbc  b                                           ; $72a4: $98
	ld   l, e                                        ; $72a5: $6b
	ret  z                                           ; $72a6: $c8

	add  [hl]                                        ; $72a7: $86
	ld   h, [hl]                                     ; $72a8: $66
	halt                                             ; $72a9: $76
	ld   a, c                                        ; $72aa: $79
	ld   a, b                                        ; $72ab: $78
	ld   h, a                                        ; $72ac: $67
	ld   a, h                                        ; $72ad: $7c
	or   [hl]                                        ; $72ae: $b6
	sub  a                                           ; $72af: $97
	add  a                                           ; $72b0: $87
	ld   a, c                                        ; $72b1: $79
	db   $db                                         ; $72b2: $db
	ld   l, b                                        ; $72b3: $68
	ld   a, b                                        ; $72b4: $78
	adc  b                                           ; $72b5: $88
	and  a                                           ; $72b6: $a7
	sub  a                                           ; $72b7: $97
	ld   h, a                                        ; $72b8: $67
	ld   l, b                                        ; $72b9: $68
	cp   c                                           ; $72ba: $b9
	ld   d, [hl]                                     ; $72bb: $56
	ld   a, c                                        ; $72bc: $79
	sub  a                                           ; $72bd: $97
	ld   l, b                                        ; $72be: $68
	add  a                                           ; $72bf: $87
	add  a                                           ; $72c0: $87
	sbc  b                                           ; $72c1: $98
	add  a                                           ; $72c2: $87
	ld   l, e                                        ; $72c3: $6b
	sbc  b                                           ; $72c4: $98
	and  a                                           ; $72c5: $a7
	ld   a, b                                        ; $72c6: $78
	ld   l, d                                        ; $72c7: $6a
	and  [hl]                                        ; $72c8: $a6
	adc  b                                           ; $72c9: $88
	ld   a, b                                        ; $72ca: $78
	adc  c                                           ; $72cb: $89
	add  [hl]                                        ; $72cc: $86
	ld   a, b                                        ; $72cd: $78
	ld   a, c                                        ; $72ce: $79
	halt                                             ; $72cf: $76
	sbc  b                                           ; $72d0: $98
	ld   a, b                                        ; $72d1: $78
	sbc  c                                           ; $72d2: $99
	cp   b                                           ; $72d3: $b8
	add  a                                           ; $72d4: $87
	ld   l, b                                        ; $72d5: $68
	ld   a, d                                        ; $72d6: $7a
	ld   a, b                                        ; $72d7: $78
	xor  b                                           ; $72d8: $a8
	halt                                             ; $72d9: $76
	ld   a, c                                        ; $72da: $79
	sub  a                                           ; $72db: $97
	ld   a, b                                        ; $72dc: $78
	adc  b                                           ; $72dd: $88
	ld   l, c                                        ; $72de: $69
	add  a                                           ; $72df: $87
	ld   [hl], a                                     ; $72e0: $77
	add  a                                           ; $72e1: $87
	and  a                                           ; $72e2: $a7
	adc  c                                           ; $72e3: $89
	adc  b                                           ; $72e4: $88
	ld   a, c                                        ; $72e5: $79
	ld   l, b                                        ; $72e6: $68
	sbc  c                                           ; $72e7: $99
	adc  c                                           ; $72e8: $89
	add  [hl]                                        ; $72e9: $86
	sub  [hl]                                        ; $72ea: $96
	sbc  c                                           ; $72eb: $99
	add  a                                           ; $72ec: $87
	sub  a                                           ; $72ed: $97
	ld   l, d                                        ; $72ee: $6a
	ld   l, c                                        ; $72ef: $69
	adc  c                                           ; $72f0: $89
	sub  a                                           ; $72f1: $97
	xor  b                                           ; $72f2: $a8
	xor  c                                           ; $72f3: $a9
	adc  c                                           ; $72f4: $89
	sbc  c                                           ; $72f5: $99
	sbc  d                                           ; $72f6: $9a
	adc  b                                           ; $72f7: $88
	xor  c                                           ; $72f8: $a9
	sbc  c                                           ; $72f9: $99
	add  a                                           ; $72fa: $87
	ld   a, c                                        ; $72fb: $79
	sbc  c                                           ; $72fc: $99
	sbc  c                                           ; $72fd: $99
	sbc  b                                           ; $72fe: $98
	xor  b                                           ; $72ff: $a8
	adc  c                                           ; $7300: $89
	sbc  c                                           ; $7301: $99
	adc  c                                           ; $7302: $89
	sbc  c                                           ; $7303: $99
	adc  c                                           ; $7304: $89
	ld   [hl], a                                     ; $7305: $77
	sbc  c                                           ; $7306: $99
	adc  d                                           ; $7307: $8a
	sbc  b                                           ; $7308: $98
	adc  c                                           ; $7309: $89
	ld   a, b                                        ; $730a: $78
	sbc  c                                           ; $730b: $99
	xor  c                                           ; $730c: $a9
	adc  b                                           ; $730d: $88
	sbc  b                                           ; $730e: $98
	adc  c                                           ; $730f: $89
	sbc  c                                           ; $7310: $99
	adc  c                                           ; $7311: $89
	adc  c                                           ; $7312: $89
	sbc  b                                           ; $7313: $98
	adc  b                                           ; $7314: $88
	sbc  c                                           ; $7315: $99
	adc  b                                           ; $7316: $88
	adc  c                                           ; $7317: $89
	sbc  c                                           ; $7318: $99
	sbc  c                                           ; $7319: $99
	sbc  b                                           ; $731a: $98
	sbc  c                                           ; $731b: $99
	adc  c                                           ; $731c: $89
	sbc  b                                           ; $731d: $98
	adc  b                                           ; $731e: $88
	adc  c                                           ; $731f: $89
	adc  b                                           ; $7320: $88
	adc  b                                           ; $7321: $88
	ld   [hl], a                                     ; $7322: $77
	ld   [hl], a                                     ; $7323: $77
	ld   a, b                                        ; $7324: $78
	sbc  b                                           ; $7325: $98
	adc  b                                           ; $7326: $88
	sbc  b                                           ; $7327: $98
	adc  b                                           ; $7328: $88
	adc  b                                           ; $7329: $88
	adc  b                                           ; $732a: $88
	adc  b                                           ; $732b: $88
	adc  b                                           ; $732c: $88
	add  a                                           ; $732d: $87
	ld   a, b                                        ; $732e: $78
	ld   [hl], a                                     ; $732f: $77
	ld   [hl], a                                     ; $7330: $77
	ld   a, b                                        ; $7331: $78
	adc  b                                           ; $7332: $88
	adc  b                                           ; $7333: $88
	adc  b                                           ; $7334: $88
	ld   a, b                                        ; $7335: $78
	adc  b                                           ; $7336: $88
	add  a                                           ; $7337: $87
	ld   a, b                                        ; $7338: $78
	ld   [hl], a                                     ; $7339: $77
	ld   [hl], a                                     ; $733a: $77
	ld   a, b                                        ; $733b: $78
	add  a                                           ; $733c: $87
	ld   [hl], a                                     ; $733d: $77
	add  a                                           ; $733e: $87
	ld   [hl], a                                     ; $733f: $77
	adc  b                                           ; $7340: $88
	ld   [hl], a                                     ; $7341: $77
	ld   [hl], a                                     ; $7342: $77
	ld   a, b                                        ; $7343: $78
	adc  b                                           ; $7344: $88
	adc  b                                           ; $7345: $88
	ld   [hl], a                                     ; $7346: $77
	ld   a, b                                        ; $7347: $78
	adc  b                                           ; $7348: $88
	ld   [hl], a                                     ; $7349: $77
	add  a                                           ; $734a: $87
	ld   [hl], a                                     ; $734b: $77
	ld   a, b                                        ; $734c: $78
	ld   a, b                                        ; $734d: $78
	adc  b                                           ; $734e: $88
	ld   [hl], a                                     ; $734f: $77
	adc  b                                           ; $7350: $88
	ld   [hl], a                                     ; $7351: $77
	adc  b                                           ; $7352: $88
	add  a                                           ; $7353: $87
	ld   [hl], a                                     ; $7354: $77
	ld   [hl], a                                     ; $7355: $77
	adc  b                                           ; $7356: $88
	adc  b                                           ; $7357: $88
	ld   [hl], a                                     ; $7358: $77
	ld   [hl], a                                     ; $7359: $77
	add  a                                           ; $735a: $87
	ld   a, b                                        ; $735b: $78
	ld   a, b                                        ; $735c: $78
	add  a                                           ; $735d: $87
	ld   [hl], a                                     ; $735e: $77
	adc  b                                           ; $735f: $88
	adc  b                                           ; $7360: $88
	adc  b                                           ; $7361: $88
	adc  b                                           ; $7362: $88
	ld   a, b                                        ; $7363: $78
	adc  b                                           ; $7364: $88
	adc  b                                           ; $7365: $88
	ld   [hl], a                                     ; $7366: $77
	add  a                                           ; $7367: $87
	ld   a, b                                        ; $7368: $78
	add  a                                           ; $7369: $87
	adc  b                                           ; $736a: $88
	adc  b                                           ; $736b: $88
	adc  b                                           ; $736c: $88
	adc  b                                           ; $736d: $88
	adc  b                                           ; $736e: $88
	adc  c                                           ; $736f: $89
	add  a                                           ; $7370: $87
	ld   a, b                                        ; $7371: $78
	add  a                                           ; $7372: $87
	ld   [hl], a                                     ; $7373: $77
	adc  b                                           ; $7374: $88
	add  a                                           ; $7375: $87
	adc  b                                           ; $7376: $88
	adc  b                                           ; $7377: $88
	adc  b                                           ; $7378: $88
	adc  b                                           ; $7379: $88
	adc  b                                           ; $737a: $88
	adc  b                                           ; $737b: $88
	adc  b                                           ; $737c: $88
	ld   [hl], a                                     ; $737d: $77
	add  a                                           ; $737e: $87
	adc  b                                           ; $737f: $88
	adc  b                                           ; $7380: $88
	ld   [hl], a                                     ; $7381: $77
	ld   a, b                                        ; $7382: $78
	adc  b                                           ; $7383: $88
	adc  b                                           ; $7384: $88
	adc  b                                           ; $7385: $88
	ld   a, b                                        ; $7386: $78
	adc  b                                           ; $7387: $88
	adc  b                                           ; $7388: $88
	adc  b                                           ; $7389: $88
	ld   [hl], a                                     ; $738a: $77
	adc  b                                           ; $738b: $88
	add  a                                           ; $738c: $87
	ld   a, b                                        ; $738d: $78
	add  a                                           ; $738e: $87
	adc  c                                           ; $738f: $89
	adc  b                                           ; $7390: $88
	ld   [hl], a                                     ; $7391: $77
	adc  b                                           ; $7392: $88
	add  a                                           ; $7393: $87
	adc  b                                           ; $7394: $88
	add  a                                           ; $7395: $87
	ld   [hl], a                                     ; $7396: $77
	ld   a, b                                        ; $7397: $78
	adc  b                                           ; $7398: $88
	ld   a, b                                        ; $7399: $78
	adc  b                                           ; $739a: $88
	adc  b                                           ; $739b: $88
	adc  b                                           ; $739c: $88
	adc  b                                           ; $739d: $88
	adc  b                                           ; $739e: $88
	adc  b                                           ; $739f: $88
	adc  b                                           ; $73a0: $88
	adc  b                                           ; $73a1: $88
	add  a                                           ; $73a2: $87
	ld   a, b                                        ; $73a3: $78
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
	add  a                                           ; $73b0: $87
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
	sbc  b                                           ; $73de: $98
	adc  b                                           ; $73df: $88
	adc  b                                           ; $73e0: $88
	adc  b                                           ; $73e1: $88
	adc  b                                           ; $73e2: $88
	adc  b                                           ; $73e3: $88
	adc  b                                           ; $73e4: $88
	sbc  b                                           ; $73e5: $98
	adc  b                                           ; $73e6: $88
	adc  b                                           ; $73e7: $88
	adc  b                                           ; $73e8: $88
	sbc  b                                           ; $73e9: $98
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
	sbc  b                                           ; $73fd: $98
	adc  b                                           ; $73fe: $88
	adc  b                                           ; $73ff: $88
	adc  b                                           ; $7400: $88
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	adc  b                                           ; $7403: $88
	adc  b                                           ; $7404: $88
	adc  b                                           ; $7405: $88
	adc  b                                           ; $7406: $88
	sbc  b                                           ; $7407: $98
	adc  b                                           ; $7408: $88
	adc  b                                           ; $7409: $88
	adc  b                                           ; $740a: $88
	adc  b                                           ; $740b: $88
	adc  b                                           ; $740c: $88
	adc  b                                           ; $740d: $88
	adc  b                                           ; $740e: $88
	adc  b                                           ; $740f: $88
	adc  c                                           ; $7410: $89
	sbc  b                                           ; $7411: $98
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
	sbc  b                                           ; $741f: $98
	adc  b                                           ; $7420: $88
	sbc  b                                           ; $7421: $98
	adc  c                                           ; $7422: $89
	sbc  b                                           ; $7423: $98
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	adc  c                                           ; $7426: $89
	sbc  c                                           ; $7427: $99
	adc  b                                           ; $7428: $88
	adc  b                                           ; $7429: $88
	adc  b                                           ; $742a: $88
	adc  b                                           ; $742b: $88
	adc  b                                           ; $742c: $88
	sbc  c                                           ; $742d: $99
	adc  b                                           ; $742e: $88
	adc  b                                           ; $742f: $88
	adc  b                                           ; $7430: $88
	adc  b                                           ; $7431: $88
	sbc  c                                           ; $7432: $99
	adc  b                                           ; $7433: $88
	sbc  b                                           ; $7434: $98
	adc  b                                           ; $7435: $88
	adc  b                                           ; $7436: $88
	adc  b                                           ; $7437: $88
	adc  c                                           ; $7438: $89
	adc  b                                           ; $7439: $88
	adc  b                                           ; $743a: $88
	adc  c                                           ; $743b: $89
	sbc  b                                           ; $743c: $98
	adc  b                                           ; $743d: $88
	adc  b                                           ; $743e: $88
	adc  c                                           ; $743f: $89
	adc  b                                           ; $7440: $88
	adc  b                                           ; $7441: $88
	adc  b                                           ; $7442: $88
	adc  b                                           ; $7443: $88
	adc  b                                           ; $7444: $88
	adc  b                                           ; $7445: $88
	adc  c                                           ; $7446: $89
	sbc  b                                           ; $7447: $98
	adc  c                                           ; $7448: $89
	adc  b                                           ; $7449: $88
	adc  b                                           ; $744a: $88
	sbc  c                                           ; $744b: $99
	adc  b                                           ; $744c: $88
	adc  b                                           ; $744d: $88
	adc  b                                           ; $744e: $88
	adc  b                                           ; $744f: $88
	adc  b                                           ; $7450: $88
	adc  c                                           ; $7451: $89
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
	add  a                                           ; $745f: $87
	adc  c                                           ; $7460: $89
	adc  b                                           ; $7461: $88
	adc  b                                           ; $7462: $88
	sbc  b                                           ; $7463: $98
	ld   a, b                                        ; $7464: $78
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
	ld   a, b                                        ; $7474: $78
	adc  b                                           ; $7475: $88
	adc  b                                           ; $7476: $88
	adc  c                                           ; $7477: $89
	adc  b                                           ; $7478: $88
	adc  b                                           ; $7479: $88
	adc  b                                           ; $747a: $88
	add  a                                           ; $747b: $87
	sbc  c                                           ; $747c: $99
	adc  b                                           ; $747d: $88
	adc  b                                           ; $747e: $88
	sbc  b                                           ; $747f: $98
	adc  b                                           ; $7480: $88
	adc  b                                           ; $7481: $88
	adc  b                                           ; $7482: $88
	adc  b                                           ; $7483: $88
	adc  b                                           ; $7484: $88
	adc  c                                           ; $7485: $89
	sbc  b                                           ; $7486: $98
	adc  b                                           ; $7487: $88
	ld   a, b                                        ; $7488: $78
	adc  b                                           ; $7489: $88
	adc  b                                           ; $748a: $88
	adc  c                                           ; $748b: $89
	adc  b                                           ; $748c: $88
	add  a                                           ; $748d: $87
	ld   a, b                                        ; $748e: $78
	adc  b                                           ; $748f: $88
	adc  c                                           ; $7490: $89
	adc  b                                           ; $7491: $88
	adc  b                                           ; $7492: $88
	adc  b                                           ; $7493: $88
	add  a                                           ; $7494: $87
	adc  b                                           ; $7495: $88
	sbc  c                                           ; $7496: $99
	add  a                                           ; $7497: $87
	adc  b                                           ; $7498: $88
	adc  b                                           ; $7499: $88
	adc  c                                           ; $749a: $89
	ld   a, b                                        ; $749b: $78
	add  a                                           ; $749c: $87
	ld   a, c                                        ; $749d: $79
	sbc  c                                           ; $749e: $99

Call_0d5_749f:
	add  a                                           ; $749f: $87
	adc  b                                           ; $74a0: $88
	adc  b                                           ; $74a1: $88
	add  a                                           ; $74a2: $87
	adc  b                                           ; $74a3: $88
	ld   a, b                                        ; $74a4: $78
	adc  b                                           ; $74a5: $88
	add  a                                           ; $74a6: $87
	add  a                                           ; $74a7: $87
	adc  b                                           ; $74a8: $88
	ld   a, b                                        ; $74a9: $78
	sbc  b                                           ; $74aa: $98
	adc  b                                           ; $74ab: $88
	ld   a, b                                        ; $74ac: $78
	adc  b                                           ; $74ad: $88
	ld   a, c                                        ; $74ae: $79
	ld   [hl], a                                     ; $74af: $77
	sbc  b                                           ; $74b0: $98
	adc  b                                           ; $74b1: $88
	ld   a, b                                        ; $74b2: $78
	adc  b                                           ; $74b3: $88
	adc  b                                           ; $74b4: $88
	add  a                                           ; $74b5: $87
	adc  c                                           ; $74b6: $89
	adc  b                                           ; $74b7: $88
	adc  b                                           ; $74b8: $88
	ld   [hl], a                                     ; $74b9: $77
	adc  b                                           ; $74ba: $88
	sbc  c                                           ; $74bb: $99
	ld   [hl], a                                     ; $74bc: $77
	sbc  c                                           ; $74bd: $99
	adc  c                                           ; $74be: $89
	adc  b                                           ; $74bf: $88
	adc  b                                           ; $74c0: $88
	adc  c                                           ; $74c1: $89
	add  a                                           ; $74c2: $87
	add  a                                           ; $74c3: $87
	adc  b                                           ; $74c4: $88
	add  a                                           ; $74c5: $87
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	sbc  c                                           ; $74c8: $99
	add  a                                           ; $74c9: $87
	ld   a, b                                        ; $74ca: $78
	sbc  c                                           ; $74cb: $99
	add  a                                           ; $74cc: $87
	adc  b                                           ; $74cd: $88
	ld   a, b                                        ; $74ce: $78
	ld   [hl], a                                     ; $74cf: $77
	ld   a, b                                        ; $74d0: $78
	adc  b                                           ; $74d1: $88
	add  a                                           ; $74d2: $87
	sbc  b                                           ; $74d3: $98
	sbc  c                                           ; $74d4: $99
	sbc  b                                           ; $74d5: $98
	add  a                                           ; $74d6: $87
	ld   [hl], a                                     ; $74d7: $77
	adc  b                                           ; $74d8: $88
	ld   a, b                                        ; $74d9: $78
	add  a                                           ; $74da: $87
	ld   a, b                                        ; $74db: $78
	adc  b                                           ; $74dc: $88
	adc  b                                           ; $74dd: $88
	add  a                                           ; $74de: $87
	sbc  b                                           ; $74df: $98
	adc  c                                           ; $74e0: $89
	add  [hl]                                        ; $74e1: $86
	adc  c                                           ; $74e2: $89
	ld   a, b                                        ; $74e3: $78
	ld   [hl], a                                     ; $74e4: $77
	sub  a                                           ; $74e5: $97
	adc  c                                           ; $74e6: $89
	adc  b                                           ; $74e7: $88
	ld   [hl], a                                     ; $74e8: $77
	adc  c                                           ; $74e9: $89
	sbc  b                                           ; $74ea: $98
	add  a                                           ; $74eb: $87
	adc  c                                           ; $74ec: $89
	ld   a, b                                        ; $74ed: $78
	add  a                                           ; $74ee: $87
	add  a                                           ; $74ef: $87
	ld   a, c                                        ; $74f0: $79
	sub  a                                           ; $74f1: $97
	sbc  b                                           ; $74f2: $98
	adc  c                                           ; $74f3: $89
	adc  b                                           ; $74f4: $88
	ld   a, b                                        ; $74f5: $78
	adc  b                                           ; $74f6: $88
	ld   [hl], a                                     ; $74f7: $77
	add  a                                           ; $74f8: $87
	adc  c                                           ; $74f9: $89
	xor  b                                           ; $74fa: $a8
	adc  b                                           ; $74fb: $88
	adc  b                                           ; $74fc: $88
	ld   a, c                                        ; $74fd: $79
	halt                                             ; $74fe: $76
	ld   a, c                                        ; $74ff: $79
	ld   h, a                                        ; $7500: $67
	sbc  b                                           ; $7501: $98
	xor  c                                           ; $7502: $a9
	adc  b                                           ; $7503: $88
	xor  b                                           ; $7504: $a8
	halt                                             ; $7505: $76
	ld   l, d                                        ; $7506: $6a
	add  a                                           ; $7507: $87
	ld   a, b                                        ; $7508: $78
	sub  a                                           ; $7509: $97
	sbc  c                                           ; $750a: $99
	xor  c                                           ; $750b: $a9
	sbc  b                                           ; $750c: $98
	sub  a                                           ; $750d: $97
	ld   l, b                                        ; $750e: $68
	ld   [hl], a                                     ; $750f: $77
	adc  b                                           ; $7510: $88
	sbc  b                                           ; $7511: $98
	adc  b                                           ; $7512: $88
	sbc  b                                           ; $7513: $98
	sbc  c                                           ; $7514: $99
	sbc  d                                           ; $7515: $9a
	ld   a, b                                        ; $7516: $78
	ld   a, b                                        ; $7517: $78
	add  a                                           ; $7518: $87
	ld   a, b                                        ; $7519: $78
	sbc  c                                           ; $751a: $99
	add  a                                           ; $751b: $87
	sbc  c                                           ; $751c: $99
	adc  c                                           ; $751d: $89
	cp   e                                           ; $751e: $bb
	xor  c                                           ; $751f: $a9
	sbc  b                                           ; $7520: $98
	sbc  d                                           ; $7521: $9a
	and  a                                           ; $7522: $a7
	ld   a, b                                        ; $7523: $78
	ld   a, b                                        ; $7524: $78
	ld   [hl], a                                     ; $7525: $77
	ld   l, b                                        ; $7526: $68
	sub  [hl]                                        ; $7527: $96
	ld   a, c                                        ; $7528: $79
	add  [hl]                                        ; $7529: $86
	adc  b                                           ; $752a: $88
	adc  b                                           ; $752b: $88
	ld   a, c                                        ; $752c: $79
	sbc  b                                           ; $752d: $98
	sbc  c                                           ; $752e: $99
	ld   [hl], a                                     ; $752f: $77
	ld   [hl], a                                     ; $7530: $77
	adc  c                                           ; $7531: $89
	add  a                                           ; $7532: $87
	adc  b                                           ; $7533: $88
	ld   [hl], a                                     ; $7534: $77
	ld   h, a                                        ; $7535: $67
	sbc  b                                           ; $7536: $98
	adc  b                                           ; $7537: $88
	adc  d                                           ; $7538: $8a
	add  a                                           ; $7539: $87
	adc  c                                           ; $753a: $89
	sbc  b                                           ; $753b: $98
	add  a                                           ; $753c: $87
	ld   a, c                                        ; $753d: $79
	ld   a, b                                        ; $753e: $78
	ld   [hl], a                                     ; $753f: $77
	ld   a, c                                        ; $7540: $79
	adc  b                                           ; $7541: $88
	adc  b                                           ; $7542: $88
	sbc  c                                           ; $7543: $99
	sbc  b                                           ; $7544: $98
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	adc  c                                           ; $7547: $89
	sbc  b                                           ; $7548: $98
	add  a                                           ; $7549: $87
	ld   a, b                                        ; $754a: $78
	adc  b                                           ; $754b: $88
	adc  b                                           ; $754c: $88
	ld   a, b                                        ; $754d: $78
	ld   [hl], a                                     ; $754e: $77
	add  a                                           ; $754f: $87
	xor  b                                           ; $7550: $a8
	xor  c                                           ; $7551: $a9
	adc  e                                           ; $7552: $8b
	xor  c                                           ; $7553: $a9
	ld   [hl], a                                     ; $7554: $77
	ld   l, b                                        ; $7555: $68
	halt                                             ; $7556: $76
	adc  b                                           ; $7557: $88
	adc  b                                           ; $7558: $88
	ld   [hl], a                                     ; $7559: $77
	sbc  b                                           ; $755a: $98
	add  a                                           ; $755b: $87
	sbc  c                                           ; $755c: $99
	add  a                                           ; $755d: $87
	ld   a, c                                        ; $755e: $79
	adc  d                                           ; $755f: $8a
	ld   [hl], a                                     ; $7560: $77
	adc  c                                           ; $7561: $89
	ld   a, b                                        ; $7562: $78
	adc  b                                           ; $7563: $88
	adc  c                                           ; $7564: $89
	sub  a                                           ; $7565: $97
	ld   a, b                                        ; $7566: $78
	ld   [hl], a                                     ; $7567: $77
	sbc  c                                           ; $7568: $99
	adc  b                                           ; $7569: $88
	sbc  b                                           ; $756a: $98
	ld   [hl], a                                     ; $756b: $77
	ld   a, c                                        ; $756c: $79
	adc  b                                           ; $756d: $88
	adc  b                                           ; $756e: $88
	sbc  b                                           ; $756f: $98
	adc  b                                           ; $7570: $88
	adc  b                                           ; $7571: $88
	adc  c                                           ; $7572: $89
	sbc  c                                           ; $7573: $99
	halt                                             ; $7574: $76
	ld   h, [hl]                                     ; $7575: $66
	ld   d, [hl]                                     ; $7576: $56
	ld   a, b                                        ; $7577: $78
	sbc  b                                           ; $7578: $98
	adc  c                                           ; $7579: $89
	xor  d                                           ; $757a: $aa
	xor  c                                           ; $757b: $a9
	sbc  c                                           ; $757c: $99
	sbc  c                                           ; $757d: $99
	sub  a                                           ; $757e: $97
	ld   a, b                                        ; $757f: $78
	ld   h, [hl]                                     ; $7580: $66
	ld   [hl], a                                     ; $7581: $77
	adc  b                                           ; $7582: $88
	ld   [hl], a                                     ; $7583: $77
	xor  c                                           ; $7584: $a9
	adc  b                                           ; $7585: $88
	ld   [hl], a                                     ; $7586: $77

jr_0d5_7587:
	ld   a, b                                        ; $7587: $78

Jump_0d5_7588:
	adc  b                                           ; $7588: $88
	ld   h, a                                        ; $7589: $67
	ld   a, b                                        ; $758a: $78
	sub  a                                           ; $758b: $97
	ld   a, c                                        ; $758c: $79
	sbc  c                                           ; $758d: $99
	adc  b                                           ; $758e: $88
	ld   a, c                                        ; $758f: $79
	sbc  b                                           ; $7590: $98
	adc  c                                           ; $7591: $89
	add  a                                           ; $7592: $87
	adc  b                                           ; $7593: $88
	sbc  d                                           ; $7594: $9a
	add  a                                           ; $7595: $87
	ld   a, c                                        ; $7596: $79
	sbc  c                                           ; $7597: $99
	ld   h, [hl]                                     ; $7598: $66
	ld   a, b                                        ; $7599: $78
	ld   [hl], l                                     ; $759a: $75
	ld   a, b                                        ; $759b: $78
	add  a                                           ; $759c: $87
	ld   h, l                                        ; $759d: $65
	ld   l, d                                        ; $759e: $6a
	add  a                                           ; $759f: $87
	ld   [hl], a                                     ; $75a0: $77
	ld   a, c                                        ; $75a1: $79
	sub  a                                           ; $75a2: $97
	adc  b                                           ; $75a3: $88
	adc  c                                           ; $75a4: $89
	cp   d                                           ; $75a5: $ba
	xor  e                                           ; $75a6: $ab
	sbc  c                                           ; $75a7: $99
	sbc  c                                           ; $75a8: $99

Call_0d5_75a9:
	xor  e                                           ; $75a9: $ab
	add  [hl]                                        ; $75aa: $86
	ld   [hl], a                                     ; $75ab: $77
	sbc  d                                           ; $75ac: $9a
	ld   [hl], l                                     ; $75ad: $75
	ld   d, [hl]                                     ; $75ae: $56
	add  [hl]                                        ; $75af: $86
	ld   b, e                                        ; $75b0: $43
	inc  sp                                          ; $75b1: $33
	inc  sp                                          ; $75b2: $33
	ld   [de], a                                     ; $75b3: $12
	dec  h                                           ; $75b4: $25
	sbc  b                                           ; $75b5: $98
	adc  $ff                                         ; $75b6: $ce $ff
	db   $dd                                         ; $75b8: $dd
	cp   $db                                         ; $75b9: $fe $db

Call_0d5_75bb:
	xor  l                                           ; $75bb: $ad
	call $aa9b                                       ; $75bc: $cd $9b $aa
	sub  l                                           ; $75bf: $95
	ld   [hl], l                                     ; $75c0: $75
	ld   b, c                                        ; $75c1: $41
	ld   de, $1111                                   ; $75c2: $11 $11 $11
	ld   c, b                                        ; $75c5: $48
	xor  l                                           ; $75c6: $ad
	rst  $38                                         ; $75c7: $ff
	rst  $38                                         ; $75c8: $ff
	rst  $38                                         ; $75c9: $ff
	db   $ec                                         ; $75ca: $ec
	xor  c                                           ; $75cb: $a9
	cp   e                                           ; $75cc: $bb
	xor  e                                           ; $75cd: $ab
	cp   h                                           ; $75ce: $bc
	db   $dd                                         ; $75cf: $dd
	cp   d                                           ; $75d0: $ba
	xor  b                                           ; $75d1: $a8
	ld   h, c                                        ; $75d2: $61
	ld   de, $1111                                   ; $75d3: $11 $11 $11
	jr   c, jr_0d5_7587                              ; $75d6: $38 $af

	rst  $38                                         ; $75d8: $ff
	rst  $38                                         ; $75d9: $ff
	cp   e                                           ; $75da: $bb
	xor  c                                           ; $75db: $a9
	adc  c                                           ; $75dc: $89
	adc  b                                           ; $75dd: $88
	ld   [$dded], a                                  ; $75de: $ea $ed $dd
	db   $fd                                         ; $75e1: $fd
	sbc  c                                           ; $75e2: $99
	ld   d, e                                        ; $75e3: $53
	ld   de, $1111                                   ; $75e4: $11 $11 $11
	ld   [de], a                                     ; $75e7: $12
	cp   e                                           ; $75e8: $bb
	rst  $38                                         ; $75e9: $ff
	rst  $38                                         ; $75ea: $ff
	ei                                               ; $75eb: $fb
	ld   a, c                                        ; $75ec: $79
	ld   l, c                                        ; $75ed: $69
	sbc  e                                           ; $75ee: $9b
	sbc  [hl]                                        ; $75ef: $9e
	rst  JumpTable                                         ; $75f0: $df
	cp   $ec                                         ; $75f1: $fe $ec
	rst  $10                                         ; $75f3: $d7
	ld   h, e                                        ; $75f4: $63
	ld   de, $1111                                   ; $75f5: $11 $11 $11
	ld   de, $cf6e                                   ; $75f8: $11 $6e $cf
	cp   $ef                                         ; $75fb: $fe $ef
	xor  b                                           ; $75fd: $a8
	and  [hl]                                        ; $75fe: $a6
	ld   a, d                                        ; $75ff: $7a
	set  7, l                                        ; $7600: $cb $fd
	rst  $28                                         ; $7602: $ef
	call c, Call_0d5_75bb                            ; $7603: $dc $bb $75
	ld   hl, $1111                                   ; $7606: $21 $11 $11
	ld   de, $d91c                                   ; $7609: $11 $1c $d9
	rst  $38                                         ; $760c: $ff
	rst  $38                                         ; $760d: $ff
	push af                                          ; $760e: $f5
	adc  d                                           ; $760f: $8a
	ld   a, c                                        ; $7610: $79
	cp   e                                           ; $7611: $bb
	cp   a                                           ; $7612: $bf
	rst  $28                                         ; $7613: $ef
	ei                                               ; $7614: $fb
	sbc  d                                           ; $7615: $9a
	sbc  b                                           ; $7616: $98
	ld   d, c                                        ; $7617: $51
	ld   de, $1111                                   ; $7618: $11 $11 $11
	inc  de                                          ; $761b: $13
	db   $ec                                         ; $761c: $ec
	rst  $38                                         ; $761d: $ff
	db   $ec                                         ; $761e: $ec
	db   $fd                                         ; $761f: $fd
	ld   c, d                                        ; $7620: $4a
	add  [hl]                                        ; $7621: $86
	cp   h                                           ; $7622: $bc
	xor  $fe                                         ; $7623: $ee $fe
	db   $ed                                         ; $7625: $ed
	xor  h                                           ; $7626: $ac
	and  a                                           ; $7627: $a7
	ld   h, c                                        ; $7628: $61
	ld   de, $1111                                   ; $7629: $11 $11 $11
	ld   de, $ffae                                   ; $762c: $11 $ae $ff
	db   $fc                                         ; $762f: $fc
	cp   l                                           ; $7630: $bd
	adc  b                                           ; $7631: $88
	xor  b                                           ; $7632: $a8
	ld   a, e                                        ; $7633: $7b
	cp   $fe                                         ; $7634: $fe $fe
	db   $fc                                         ; $7636: $fc
	cp   h                                           ; $7637: $bc
	sbc  d                                           ; $7638: $9a
	inc  [hl]                                        ; $7639: $34
	ld   de, $1111                                   ; $763a: $11 $11 $11
	ld   de, $dd8f                                   ; $763d: $11 $8f $dd
	db   $fc                                         ; $7640: $fc
	db   $dd                                         ; $7641: $dd
	sub  [hl]                                        ; $7642: $96
	sbc  b                                           ; $7643: $98
	adc  h                                           ; $7644: $8c
	rst  JumpTable                                         ; $7645: $df
	cp   $df                                         ; $7646: $fe $df
	ei                                               ; $7648: $fb
	sub  [hl]                                        ; $7649: $96
	ld   b, h                                        ; $764a: $44
	ld   hl, $1111                                   ; $764b: $21 $11 $11
	ld   de, $df4f                                   ; $764e: $11 $4f $df
	db   $fc                                         ; $7651: $fc
	ld   l, a                                        ; $7652: $6f
	or   d                                           ; $7653: $b2
	or   h                                           ; $7654: $b4
	ld   a, l                                        ; $7655: $7d
	rst  $38                                         ; $7656: $ff
	rst  $38                                         ; $7657: $ff
	rst  JumpTable                                         ; $7658: $df
	ret  c                                           ; $7659: $d8

	xor  c                                           ; $765a: $a9
	ld   h, e                                        ; $765b: $63
	ld   de, $1111                                   ; $765c: $11 $11 $11
	ld   de, $ef6f                                   ; $765f: $11 $6f $ef
	db   $fd                                         ; $7662: $fd
	ld   e, l                                        ; $7663: $5d
	jp   $9c99                                       ; $7664: $c3 $99 $9c


	cp   $ff                                         ; $7667: $fe $ff
	db   $ed                                         ; $7669: $ed
	cp   d                                           ; $766a: $ba
	xor  h                                           ; $766b: $ac
	ld   d, c                                        ; $766c: $51
	ld   de, $1111                                   ; $766d: $11 $11 $11
	ld   de, $dfef                                   ; $7670: $11 $ef $df
	db   $fd                                         ; $7673: $fd
	xor  h                                           ; $7674: $ac
	ld   b, [hl]                                     ; $7675: $46
	or   a                                           ; $7676: $b7
	cp   h                                           ; $7677: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7678: $cf
	rst  $38                                         ; $7679: $ff
	db   $fd                                         ; $767a: $fd
	sbc  d                                           ; $767b: $9a
	rst  ToBoot                                         ; $767c: $c7
	ld   hl, $1111                                   ; $767d: $21 $11 $11
	ld   de, $fe12                                   ; $7680: $11 $12 $fe
	rst  $38                                         ; $7683: $ff
	cp   b                                           ; $7684: $b8
	cp   c                                           ; $7685: $b9
	ld   e, h                                        ; $7686: $5c
	ld   [hl], l                                     ; $7687: $75
	rst  JumpTable                                         ; $7688: $df
	rst  JumpTable                                         ; $7689: $df
	db   $fc                                         ; $768a: $fc
	db   $fd                                         ; $768b: $fd
	adc  b                                           ; $768c: $88
	and  e                                           ; $768d: $a3
	ld   b, c                                        ; $768e: $41
	ld   de, $1111                                   ; $768f: $11 $11 $11
	rra                                              ; $7692: $1f
	db   $fc                                         ; $7693: $fc
	rst  $38                                         ; $7694: $ff
	cp   [hl]                                        ; $7695: $be
	and  c                                           ; $7696: $a1
	ld   a, d                                        ; $7697: $7a
	ld   a, a                                        ; $7698: $7f
	db   $ed                                         ; $7699: $ed
	cp   $ff                                         ; $769a: $fe $ff
	ld   hl, sp-$68                                  ; $769c: $f8 $98
	ld   b, h                                        ; $769e: $44
	ld   de, $1111                                   ; $769f: $11 $11 $11
	ld   de, $dffd                                   ; $76a2: $11 $fd $df
	db   $db                                         ; $76a5: $db
	ld   sp, hl                                      ; $76a6: $f9
	dec  de                                          ; $76a7: $1b
	and  l                                           ; $76a8: $a5
	rst  $28                                         ; $76a9: $ef
	rst  $28                                         ; $76aa: $ef
	db   $fc                                         ; $76ab: $fc
	rst  $28                                         ; $76ac: $ef
	cp   c                                           ; $76ad: $b9
	add  l                                           ; $76ae: $85
	ld   de, $1111                                   ; $76af: $11 $11 $11
	ld   de, $ff4f                                   ; $76b2: $11 $4f $ff
	db   $fc                                         ; $76b5: $fc
	sbc  h                                           ; $76b6: $9c
	and  l                                           ; $76b7: $a5
	and  a                                           ; $76b8: $a7
	ld   a, l                                        ; $76b9: $7d
	rst  $38                                         ; $76ba: $ff
	xor  $bf                                         ; $76bb: $ee $bf
	call c, Call_0d5_4175                            ; $76bd: $dc $75 $41
	ld   de, $1111                                   ; $76c0: $11 $11 $11
	dec  e                                           ; $76c3: $1d
	cp   $ef                                         ; $76c4: $fe $ef
	add  sp, $66                                     ; $76c6: $e8 $66
	sbc  l                                           ; $76c8: $9d
	xor  h                                           ; $76c9: $ac
	ld   a, a                                        ; $76ca: $7f
	rst  $38                                         ; $76cb: $ff
	cp   $d9                                         ; $76cc: $fe $d9
	or   l                                           ; $76ce: $b5
	ld   d, e                                        ; $76cf: $53
	ld   de, $1111                                   ; $76d0: $11 $11 $11
	ld   a, [de]                                     ; $76d3: $1a
	cp   $ff                                         ; $76d4: $fe $ff
	cp   d                                           ; $76d6: $ba
	or   a                                           ; $76d7: $b7
	ld   l, d                                        ; $76d8: $6a
	sbc  d                                           ; $76d9: $9a
	rst  $28                                         ; $76da: $ef
	cp   $ee                                         ; $76db: $fe $ee
	db   $ed                                         ; $76dd: $ed
	or   a                                           ; $76de: $b7
	ld   d, c                                        ; $76df: $51
	ld   de, $1111                                   ; $76e0: $11 $11 $11
	dec  de                                          ; $76e3: $1b
	db   $fc                                         ; $76e4: $fc
	rst  $38                                         ; $76e5: $ff
	rst  $10                                         ; $76e6: $d7
	adc  c                                           ; $76e7: $89
	ld   a, d                                        ; $76e8: $7a
	xor  c                                           ; $76e9: $a9
	adc  a                                           ; $76ea: $8f
	db   $fc                                         ; $76eb: $fc
	db   $fd                                         ; $76ec: $fd
	rst  $38                                         ; $76ed: $ff
	add  $41                                         ; $76ee: $c6 $41
	ld   de, $1111                                   ; $76f0: $11 $11 $11
	dec  de                                          ; $76f3: $1b
	rst  $38                                         ; $76f4: $ff
	rst  $38                                         ; $76f5: $ff
	add  h                                           ; $76f6: $84
	reti                                             ; $76f7: $d9


	ld   e, d                                        ; $76f8: $5a
	adc  d                                           ; $76f9: $8a
	rst  $38                                         ; $76fa: $ff
	xor  e                                           ; $76fb: $ab
	rst  JumpTable                                         ; $76fc: $df
	cp   $a5                                         ; $76fd: $fe $a5
	ld   de, $1111                                   ; $76ff: $11 $11 $11
	ld   de, $ff6f                                   ; $7702: $11 $6f $ff
	ld   [$6aba], a                                  ; $7705: $ea $ba $6a
	add  d                                           ; $7708: $82
	rst  JumpTable                                         ; $7709: $df
	rst  $28                                         ; $770a: $ef
	call z, $faff                                    ; $770b: $cc $ff $fa
	ld   d, a                                        ; $770e: $57
	ld   de, $1111                                   ; $770f: $11 $11 $11
	ld   de, $ffff                                   ; $7712: $11 $ff $ff
	db   $e3                                         ; $7715: $e3
	adc  a                                           ; $7716: $8f
	ld   l, h                                        ; $7717: $6c
	sub  c                                           ; $7718: $91
	adc  a                                           ; $7719: $8f
	rst  $38                                         ; $771a: $ff
	db   $eb                                         ; $771b: $eb
	rst  $28                                         ; $771c: $ef
	rst  $20                                         ; $771d: $e7
	ld   sp, $1111                                   ; $771e: $31 $11 $11
	ld   de, $ff5f                                   ; $7721: $11 $5f $ff
	cp   $89                                         ; $7724: $fe $89
	ld   h, a                                        ; $7726: $67
	or   h                                           ; $7727: $b4
	adc  l                                           ; $7728: $8d
	rst  $38                                         ; $7729: $ff
	ld   sp, hl                                      ; $772a: $f9
	xor  a                                           ; $772b: $af
	rst  $38                                         ; $772c: $ff
	ld   [hl], c                                     ; $772d: $71
	ld   de, $1111                                   ; $772e: $11 $11 $11
	dec  de                                          ; $7731: $1b
	rst  $38                                         ; $7732: $ff
	db   $fd                                         ; $7733: $fd
	ret  c                                           ; $7734: $d8

	sbc  h                                           ; $7735: $9c
	ld   c, b                                        ; $7736: $48
	ld   a, h                                        ; $7737: $7c
	db   $ec                                         ; $7738: $ec
	call z, $fddf                                    ; $7739: $cc $df $fd
	or   d                                           ; $773c: $b2
	ld   de, $1111                                   ; $773d: $11 $11 $11
	dec  d                                           ; $7740: $15
	rst  $38                                         ; $7741: $ff
	rst  $38                                         ; $7742: $ff
	rst  $20                                         ; $7743: $e7
	cp   d                                           ; $7744: $ba
	sbc  c                                           ; $7745: $99
	ld   a, e                                        ; $7746: $7b
	cp   c                                           ; $7747: $b9
	sbc  d                                           ; $7748: $9a
	rst  $28                                         ; $7749: $ef
	ei                                               ; $774a: $fb
	jp   $1111                                       ; $774b: $c3 $11 $11


	ld   de, $ff16                                   ; $774e: $11 $16 $ff
	rst  $38                                         ; $7751: $ff
	ld   a, b                                        ; $7752: $78
	ei                                               ; $7753: $fb
	adc  e                                           ; $7754: $8b
	sub  [hl]                                        ; $7755: $96
	cp   l                                           ; $7756: $bd
	adc  d                                           ; $7757: $8a
	rst  $28                                         ; $7758: $ef
	db   $eb                                         ; $7759: $eb
	ld   [hl], e                                     ; $775a: $73
	inc  de                                          ; $775b: $13
	ld   de, $1c11                                   ; $775c: $11 $11 $1c
	rst  $38                                         ; $775f: $ff
	db   $dd                                         ; $7760: $dd
	res  7, d                                        ; $7761: $cb $ba
	cp   h                                           ; $7763: $bc
	sbc  h                                           ; $7764: $9c
	or   [hl]                                        ; $7765: $b6
	cp   h                                           ; $7766: $bc
	adc  $a7                                         ; $7767: $ce $a7
	ld   b, h                                        ; $7769: $44
	ld   hl, $1111                                   ; $776a: $21 $11 $11
	adc  a                                           ; $776d: $8f
	db   $fd                                         ; $776e: $fd
	ld   a, [$ff4a]                                  ; $776f: $fa $4a $ff
	and  a                                           ; $7772: $a7
	jp   z, $88ae                                    ; $7773: $ca $ae $88

	ld   a, [$1165]                                  ; $7776: $fa $65 $11
	ld   de, $1a11                                   ; $7779: $11 $11 $1a
	rst  $38                                         ; $777c: $ff
	or   [hl]                                        ; $777d: $b6
	ret                                              ; $777e: $c9


	sbc  a                                           ; $777f: $9f
	and  a                                           ; $7780: $a7
	db   $dd                                         ; $7781: $dd
	ld   sp, hl                                      ; $7782: $f9
	ld   a, l                                        ; $7783: $7d
	adc  e                                           ; $7784: $8b
	pop  hl                                          ; $7785: $e1
	dec  d                                           ; $7786: $15
	ld   sp, $1511                                   ; $7787: $31 $11 $15
	rst  $38                                         ; $778a: $ff
	xor  l                                           ; $778b: $ad
	and  h                                           ; $778c: $a4
	ld   l, [hl]                                     ; $778d: $6e
	ei                                               ; $778e: $fb
	call z, $aacc                                    ; $778f: $cc $cc $aa
	cp   d                                           ; $7792: $ba
	db   $e4                                         ; $7793: $e4
	ld   de, $1174                                   ; $7794: $11 $74 $11
	ld   de, $c6ff                                   ; $7797: $11 $ff $c6
	cp   d                                           ; $779a: $ba
	xor  [hl]                                        ; $779b: $ae
	ld   [hl], h                                     ; $779c: $74
	rst  $28                                         ; $779d: $ef
	ld   hl, sp-$56                                  ; $779e: $f8 $aa
	sbc  $51                                         ; $77a0: $de $51
	ld   [de], a                                     ; $77a2: $12
	ld   a, b                                        ; $77a3: $78

jr_0d5_77a4:
	ld   de, $ff16                                   ; $77a4: $11 $16 $ff
	and  h                                           ; $77a7: $a4
	ld   c, [hl]                                     ; $77a8: $4e
	db   $dd                                         ; $77a9: $dd
	ret  c                                           ; $77aa: $d8

	call nc, $f35f                                   ; $77ab: $d4 $5f $f3
	db   $d3                                         ; $77ae: $d3
	dec  d                                           ; $77af: $15
	ld   b, a                                        ; $77b0: $47
	ld   [hl-], a                                    ; $77b1: $32
	ld   de, $ff1d                                   ; $77b2: $11 $1d $ff
	ld   [hl], c                                     ; $77b5: $71
	sbc  a                                           ; $77b6: $9f
	ret                                              ; $77b7: $c9


	xor  e                                           ; $77b8: $ab
	rst  $38                                         ; $77b9: $ff
	add  l                                           ; $77ba: $85
	xor  [hl]                                        ; $77bb: $ae
	db   $f4                                         ; $77bc: $f4
	ld   de, $5159                                   ; $77bd: $11 $59 $51
	ld   de, $7aaf                                   ; $77c0: $11 $af $7a
	or   e                                           ; $77c3: $b3
	ld   a, a                                        ; $77c4: $7f
	db   $db                                         ; $77c5: $db
	ei                                               ; $77c6: $fb
	adc  l                                           ; $77c7: $8d
	ld   [$41a8], a                                  ; $77c8: $ea $a8 $41
	dec  h                                           ; $77cb: $25
	ld   [hl], e                                     ; $77cc: $73
	ld   de, $f94b                                   ; $77cd: $11 $4b $f9
	ld   l, b                                        ; $77d0: $68
	adc  c                                           ; $77d1: $89
	db   $dd                                         ; $77d2: $dd
	cp   a                                           ; $77d3: $bf
	push bc                                          ; $77d4: $c5
	rst  $38                                         ; $77d5: $ff
	xor  d                                           ; $77d6: $aa
	ld   sp, $9129                                   ; $77d7: $31 $29 $91
	ld   [de], a                                     ; $77da: $12
	jr   jr_0d5_77a4                                 ; $77db: $18 $c7

	db   $db                                         ; $77dd: $db
	ld   l, d                                        ; $77de: $6a
	ld   l, l                                        ; $77df: $6d
	rst  $30                                         ; $77e0: $f7
	ld   a, a                                        ; $77e1: $7f
	ld   e, a                                        ; $77e2: $5f
	push af                                          ; $77e3: $f5
	ld   hl, $ba15                                   ; $77e4: $21 $15 $ba
	ld   de, $ee33                                   ; $77e7: $11 $33 $ee
	ld   b, [hl]                                     ; $77ea: $46
	sbc  b                                           ; $77eb: $98
	sbc  $da                                         ; $77ec: $de $da
	ld   l, l                                        ; $77ee: $6d
	ld   a, [$21df]                                  ; $77ef: $fa $df $21
	inc  de                                          ; $77f2: $13
	ld   [hl], e                                     ; $77f3: $73
	ld   b, e                                        ; $77f4: $43
	ld   a, [hl-]                                    ; $77f5: $3a
	ret  z                                           ; $77f6: $c8

	xor  d                                           ; $77f7: $aa
	ld   h, l                                        ; $77f8: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77f9: $cf
	rst  $28                                         ; $77fa: $ef
	ld   [hl], d                                     ; $77fb: $72
	adc  $fb                                         ; $77fc: $ce $fb
	ld   de, $c13e                                   ; $77fe: $11 $3e $c1
	ld   de, $929f                                   ; $7801: $11 $9f $92
	ld   sp, hl                                      ; $7804: $f9
	ld   l, l                                        ; $7805: $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7806: $cf
	jp   z, $efa5                                    ; $7807: $ca $a5 $ef

	ld   d, h                                        ; $780a: $54
	ld   de, $41a8                                   ; $780b: $11 $a8 $41
	add  hl, sp                                      ; $780e: $39
	xor  b                                           ; $780f: $a8
	adc  h                                           ; $7810: $8c
	and  l                                           ; $7811: $a5
	cp   a                                           ; $7812: $bf
	ei                                               ; $7813: $fb
	sbc  l                                           ; $7814: $9d
	xor  c                                           ; $7815: $a9
	call nz, $b811                                   ; $7816: $c4 $11 $b8
	ld   b, d                                        ; $7819: $42
	ld   d, $9a                                      ; $781a: $16 $9a
	jp   c, rAUD1LEN                                    ; $781c: $da $11 $ff

	rst  ToBoot                                         ; $781f: $c7
	ld   l, a                                        ; $7820: $6f
	call z, $15e1                                    ; $7821: $cc $e1 $15
	ld   [hl], $64                                   ; $7824: $36 $64
	sub  c                                           ; $7826: $91
	ld   e, $f7                                      ; $7827: $1e $f7
	ld   b, a                                        ; $7829: $47
	cp   a                                           ; $782a: $bf
	rst  $28                                         ; $782b: $ef
	ld   a, d                                        ; $782c: $7a
	rst  $30                                         ; $782d: $f7
	sbc  c                                           ; $782e: $99
	ld   de, $717c                                   ; $782f: $11 $7c $71
	ld   c, b                                        ; $7832: $48
	sbc  [hl]                                        ; $7833: $9e
	ld   sp, $a9df                                   ; $7834: $31 $df $a9
	call z, $a1df                                    ; $7837: $cc $df $a1
	sbc  b                                           ; $783a: $98
	daa                                              ; $783b: $27
	ld   h, c                                        ; $783c: $61
	ld   h, h                                        ; $783d: $64
	ld   e, c                                        ; $783e: $59
	add  a                                           ; $783f: $87
	ld   e, l                                        ; $7840: $5d
	sub  l                                           ; $7841: $95
	rst  $38                                         ; $7842: $ff
	daa                                              ; $7843: $27
	ld   hl, sp-$33                                  ; $7844: $f8 $cd
	ld   de, $44b9                                   ; $7846: $11 $b9 $44
	inc  d                                           ; $7849: $14
	rst  $38                                         ; $784a: $ff
	ld   de, $c7af                                   ; $784b: $11 $af $c7
	reti                                             ; $784e: $d9


	sbc  a                                           ; $784f: $9f
	or   e                                           ; $7850: $b3
	ld   [hl], e                                     ; $7851: $73
	dec  d                                           ; $7852: $15
	sbc  c                                           ; $7853: $99
	halt                                             ; $7854: $76
	inc  [hl]                                        ; $7855: $34
	cp   h                                           ; $7856: $bc
	jp   nz, $fb4f                                   ; $7857: $c2 $4f $fb

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $785a: $cf
	ld   b, h                                        ; $785b: $44
	db   $f4                                         ; $785c: $f4
	rla                                              ; $785d: $17
	and  c                                           ; $785e: $a1
	ld   d, h                                        ; $785f: $54
	ld   a, c                                        ; $7860: $79
	cp   d                                           ; $7861: $ba
	dec  de                                          ; $7862: $1b
	ld   hl, sp-$51                                  ; $7863: $f8 $af
	or   d                                           ; $7865: $b2
	cp   a                                           ; $7866: $bf
	ld   sp, $1fc1                                   ; $7867: $31 $c1 $1f
	and  c                                           ; $786a: $a1
	adc  l                                           ; $786b: $8d
	dec  h                                           ; $786c: $25
	xor  l                                           ; $786d: $ad
	ld   d, a                                        ; $786e: $57
	ei                                               ; $786f: $fb
	sbc  [hl]                                        ; $7870: $9e
	cp   h                                           ; $7871: $bc
	ld   [hl], c                                     ; $7872: $71
	ld   [hl], h                                     ; $7873: $74
	ld   c, h                                        ; $7874: $4c
	ld   de, $18d9                                   ; $7875: $11 $d9 $18
	add  a                                           ; $7878: $87
	ld   a, [$c47f]                                  ; $7879: $fa $7f $c4
	ld   a, [hl]                                     ; $787c: $7e
	or   d                                           ; $787d: $b2
	dec  d                                           ; $787e: $15
	ld   e, l                                        ; $787f: $5d
	or   c                                           ; $7880: $b1
	dec  l                                           ; $7881: $2d
	or   a                                           ; $7882: $b7
	ld   h, a                                        ; $7883: $67
	cp   e                                           ; $7884: $bb

jr_0d5_7885:
	sbc  a                                           ; $7885: $9f
	push de                                          ; $7886: $d5
	and  [hl]                                        ; $7887: $a6
	add  hl, de                                      ; $7888: $19
	ld   [hl], d                                     ; $7889: $72
	ld   b, [hl]                                     ; $788a: $46
	ld   b, l                                        ; $788b: $45
	cp   d                                           ; $788c: $ba
	jr   z, jr_0d5_7885                              ; $788d: $28 $f6

	ld   e, l                                        ; $788f: $5d
	ei                                               ; $7890: $fb
	ccf                                              ; $7891: $3f
	ld   h, d                                        ; $7892: $62
	ld   h, c                                        ; $7893: $61
	dec  sp                                          ; $7894: $3b
	adc  b                                           ; $7895: $88
	pop  bc                                          ; $7896: $c1
	ld   e, h                                        ; $7897: $5c
	sbc  b                                           ; $7898: $98
	sbc  [hl]                                        ; $7899: $9e
	sub  c                                           ; $789a: $91
	rst  $38                                         ; $789b: $ff
	inc  l                                           ; $789c: $2c
	add  c                                           ; $789d: $81
	inc  l                                           ; $789e: $2c
	scf                                              ; $789f: $37
	or   l                                           ; $78a0: $b5
	ld   d, l                                        ; $78a1: $55
	xor  e                                           ; $78a2: $ab
	sub  $6b                                         ; $78a3: $d6 $6b
	cp   c                                           ; $78a5: $b9
	db   $fd                                         ; $78a6: $fd
	inc  hl                                          ; $78a7: $23

Call_0d5_78a8:
	inc  d                                           ; $78a8: $14
	xor  h                                           ; $78a9: $ac
	ld   b, l                                        ; $78aa: $45
	adc  e                                           ; $78ab: $8b
	ld   b, h                                        ; $78ac: $44
	ld   hl, sp+$17                                  ; $78ad: $f8 $17
	ei                                               ; $78af: $fb
	adc  a                                           ; $78b0: $8f
	ld   [hl], l                                     ; $78b1: $75
	ld   sp, $f11f                                   ; $78b2: $31 $1f $f1
	jr   jr_0d5_792e                                 ; $78b5: $18 $77

	rst  $30                                         ; $78b7: $f7
	ld   a, a                                        ; $78b8: $7f
	sub  a                                           ; $78b9: $97
	ld   sp, hl                                      ; $78ba: $f9
	ld   c, e                                        ; $78bb: $4b
	ld   hl, $677c                                   ; $78bc: $21 $7c $67
	ld   [hl], h                                     ; $78bf: $74
	ld   l, [hl]                                     ; $78c0: $6e
	sub  c                                           ; $78c1: $91
	xor  a                                           ; $78c2: $af
	cp   d                                           ; $78c3: $ba
	ld   l, b                                        ; $78c4: $68
	rst  $20                                         ; $78c5: $e7
	ld   [hl+], a                                    ; $78c6: $22
	ld   c, c                                        ; $78c7: $49
	add  [hl]                                        ; $78c8: $86
	ld   h, a                                        ; $78c9: $67
	sub  [hl]                                        ; $78ca: $96
	ld   l, c                                        ; $78cb: $69
	xor  h                                           ; $78cc: $ac
	xor  d                                           ; $78cd: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78ce: $cf
	adc  b                                           ; $78cf: $88
	ld   sp, $31da                                   ; $78d0: $31 $da $31
	sbc  [hl]                                        ; $78d3: $9e
	ld   h, h                                        ; $78d4: $64
	ld   c, e                                        ; $78d5: $4b
	db   $ec                                         ; $78d6: $ec
	add  hl, sp                                      ; $78d7: $39
	or   $7a                                         ; $78d8: $f6 $7a
	dec  [hl]                                        ; $78da: $35
	ld   h, l                                        ; $78db: $65
	ld   c, b                                        ; $78dc: $48
	or   [hl]                                        ; $78dd: $b6
	ld   a, a                                        ; $78de: $7f
	sub  e                                           ; $78df: $93
	ld   a, c                                        ; $78e0: $79
	cp   $45                                         ; $78e1: $fe $45
	sbc  d                                           ; $78e3: $9a
	add  d                                           ; $78e4: $82
	ld   c, c                                        ; $78e5: $49
	ld   b, l                                        ; $78e6: $45
	sbc  c                                           ; $78e7: $99
	sub  l                                           ; $78e8: $95
	xor  c                                           ; $78e9: $a9
	ld   l, c                                        ; $78ea: $69
	ld   e, a                                        ; $78eb: $5f
	di                                               ; $78ec: $f3
	inc  a                                           ; $78ed: $3c
	pop  af                                          ; $78ee: $f1
	rla                                              ; $78ef: $17
	call c, $2d52                                    ; $78f0: $dc $52 $2d
	sbc  c                                           ; $78f3: $99
	adc  e                                           ; $78f4: $8b
	res  7, c                                        ; $78f5: $cb $b9
	ld   b, [hl]                                     ; $78f7: $46
	pop  af                                          ; $78f8: $f1
	dec  d                                           ; $78f9: $15
	ld   hl, sp+$1f                                  ; $78fa: $f8 $1f
	sub  l                                           ; $78fc: $95
	or   h                                           ; $78fd: $b4
	ccf                                              ; $78fe: $3f
	pop  af                                          ; $78ff: $f1
	ld   a, l                                        ; $7900: $7d
	ld   sp, $19d7                                   ; $7901: $31 $d7 $19
	or   $3a                                         ; $7904: $f6 $3a
	adc  e                                           ; $7906: $8b
	sub  l                                           ; $7907: $95
	adc  e                                           ; $7908: $8b
	sbc  d                                           ; $7909: $9a
	push bc                                          ; $790a: $c5
	ld   c, c                                        ; $790b: $49
	and  d                                           ; $790c: $a2
	ld   c, d                                        ; $790d: $4a
	and  a                                           ; $790e: $a7
	ld   [hl], h                                     ; $790f: $74
	ld   a, [hl]                                     ; $7910: $7e
	add  d                                           ; $7911: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7912: $cf
	ld   d, e                                        ; $7913: $53
	ld   l, h                                        ; $7914: $6c
	and  e                                           ; $7915: $a3
	ld   [hl], e                                     ; $7916: $73
	sbc  c                                           ; $7917: $99
	ld   h, a                                        ; $7918: $67
	add  $1b                                         ; $7919: $c6 $1b
	db   $eb                                         ; $791b: $eb
	ld   c, l                                        ; $791c: $4d
	or   h                                           ; $791d: $b4
	sub  a                                           ; $791e: $97
	ld   b, a                                        ; $791f: $47
	add  h                                           ; $7920: $84
	cp   b                                           ; $7921: $b8
	ld   h, l                                        ; $7922: $65
	adc  e                                           ; $7923: $8b
	sbc  h                                           ; $7924: $9c
	ld   h, a                                        ; $7925: $67
	ei                                               ; $7926: $fb
	add  hl, de                                      ; $7927: $19
	and  l                                           ; $7928: $a5
	sub  e                                           ; $7929: $93
	ld   a, c                                        ; $792a: $79
	adc  e                                           ; $792b: $8b
	ld   e, d                                        ; $792c: $5a
	and  d                                           ; $792d: $a2

jr_0d5_792e:
	xor  h                                           ; $792e: $ac
	cp   b                                           ; $792f: $b8
	add  l                                           ; $7930: $85
	ld   e, h                                        ; $7931: $5c
	halt                                             ; $7932: $76
	ld   [hl], l                                     ; $7933: $75
	adc  d                                           ; $7934: $8a
	sbc  c                                           ; $7935: $99
	sub  l                                           ; $7936: $95
	ld   l, h                                        ; $7937: $6c
	sbc  h                                           ; $7938: $9c
	sub  h                                           ; $7939: $94
	sub  [hl]                                        ; $793a: $96
	sub  a                                           ; $793b: $97
	dec  de                                          ; $793c: $1b
	xor  b                                           ; $793d: $a8
	ld   [hl], c                                     ; $793e: $71
	ei                                               ; $793f: $fb
	ld   h, a                                        ; $7940: $67
	ld   e, [hl]                                     ; $7941: $5e
	sub  [hl]                                        ; $7942: $96
	ld   a, b                                        ; $7943: $78
	add  l                                           ; $7944: $85
	adc  [hl]                                        ; $7945: $8e
	ld   b, h                                        ; $7946: $44
	ld   a, c                                        ; $7947: $79
	db   $f4                                         ; $7948: $f4
	ld   l, d                                        ; $7949: $6a
	ld   l, e                                        ; $794a: $6b
	sub  $2b                                         ; $794b: $d6 $2b
	halt                                             ; $794d: $76
	sbc  d                                           ; $794e: $9a
	scf                                              ; $794f: $37
	sub  a                                           ; $7950: $97
	di                                               ; $7951: $f3
	ld   l, l                                        ; $7952: $6d
	halt                                             ; $7953: $76
	xor  d                                           ; $7954: $aa
	scf                                              ; $7955: $37
	ld   l, c                                        ; $7956: $69
	cp   c                                           ; $7957: $b9
	ld   d, l                                        ; $7958: $55
	or   l                                           ; $7959: $b5
	adc  d                                           ; $795a: $8a
	ld   l, d                                        ; $795b: $6a
	xor  c                                           ; $795c: $a9
	and  d                                           ; $795d: $a2
	ld   a, a                                        ; $795e: $7f
	ld   d, a                                        ; $795f: $57
	ld   h, [hl]                                     ; $7960: $66
	xor  b                                           ; $7961: $a8
	ld   a, d                                        ; $7962: $7a
	sub  l                                           ; $7963: $95
	ld   a, c                                        ; $7964: $79
	ld   a, c                                        ; $7965: $79

Call_0d5_7966:
	sub  $67                                         ; $7966: $d6 $67
	ld   l, c                                        ; $7968: $69
	ld   a, e                                        ; $7969: $7b
	add  a                                           ; $796a: $87
	and  [hl]                                        ; $796b: $a6
	ld   l, h                                        ; $796c: $6c
	ld   [hl], a                                     ; $796d: $77
	add  l                                           ; $796e: $85
	push bc                                          ; $796f: $c5
	ld   a, e                                        ; $7970: $7b
	ld   h, l                                        ; $7971: $65
	xor  b                                           ; $7972: $a8
	ld   [hl], a                                     ; $7973: $77
	ld   l, e                                        ; $7974: $6b
	ld   l, b                                        ; $7975: $68
	ld   a, b                                        ; $7976: $78
	sub  [hl]                                        ; $7977: $96
	sub  a                                           ; $7978: $97
	sbc  b                                           ; $7979: $98
	ld   e, c                                        ; $797a: $59
	add  a                                           ; $797b: $87
	and  a                                           ; $797c: $a7
	ld   c, b                                        ; $797d: $48
	adc  e                                           ; $797e: $8b
	add  l                                           ; $797f: $85
	adc  b                                           ; $7980: $88
	xor  c                                           ; $7981: $a9
	ld   l, b                                        ; $7982: $68
	xor  b                                           ; $7983: $a8
	ld   h, [hl]                                     ; $7984: $66

Call_0d5_7985:
	rst  $20                                         ; $7985: $e7
	inc  a                                           ; $7986: $3c
	ld   [hl], a                                     ; $7987: $77
	jp   nz, Jump_0d5_455f                           ; $7988: $c2 $5f $45

	ret  z                                           ; $798b: $c8

	sub  l                                           ; $798c: $95
	ld   e, d                                        ; $798d: $5a
	ld   a, c                                        ; $798e: $79
	add  l                                           ; $798f: $85
	cp   c                                           ; $7990: $b9
	halt                                             ; $7991: $76
	ld   a, c                                        ; $7992: $79
	ld   a, c                                        ; $7993: $79
	xor  b                                           ; $7994: $a8
	ld   [hl], a                                     ; $7995: $77
	sub  a                                           ; $7996: $97
	ld   c, d                                        ; $7997: $4a
	add  $77                                         ; $7998: $c6 $77
	xor  d                                           ; $799a: $aa
	scf                                              ; $799b: $37
	rst  ToBoot                                         ; $799c: $c7
	ld   l, b                                        ; $799d: $68
	adc  c                                           ; $799e: $89
	ld   b, a                                        ; $799f: $47
	and  a                                           ; $79a0: $a7
	ld   [hl], a                                     ; $79a1: $77
	adc  c                                           ; $79a2: $89
	ld   h, a                                        ; $79a3: $67
	ret  z                                           ; $79a4: $c8

	ld   a, c                                        ; $79a5: $79
	ld   a, c                                        ; $79a6: $79
	ld   [hl], a                                     ; $79a7: $77
	ld   [hl], a                                     ; $79a8: $77
	add  [hl]                                        ; $79a9: $86
	sbc  c                                           ; $79aa: $99
	sbc  d                                           ; $79ab: $9a
	ld   h, l                                        ; $79ac: $65
	and  a                                           ; $79ad: $a7
	ld   l, c                                        ; $79ae: $69
	xor  c                                           ; $79af: $a9
	ld   h, a                                        ; $79b0: $67
	adc  c                                           ; $79b1: $89
	ld   h, [hl]                                     ; $79b2: $66
	sbc  b                                           ; $79b3: $98
	sub  a                                           ; $79b4: $97
	sbc  c                                           ; $79b5: $99
	halt                                             ; $79b6: $76
	sub  a                                           ; $79b7: $97
	ld   a, b                                        ; $79b8: $78
	adc  c                                           ; $79b9: $89
	ld   a, b                                        ; $79ba: $78
	ld   a, e                                        ; $79bb: $7b
	add  [hl]                                        ; $79bc: $86
	adc  c                                           ; $79bd: $89
	halt                                             ; $79be: $76
	or   a                                           ; $79bf: $b7
	adc  b                                           ; $79c0: $88
	ld   l, b                                        ; $79c1: $68
	add  l                                           ; $79c2: $85
	cp   c                                           ; $79c3: $b9
	ld   e, e                                        ; $79c4: $5b
	add  [hl]                                        ; $79c5: $86
	sub  a                                           ; $79c6: $97
	ld   a, c                                        ; $79c7: $79
	add  [hl]                                        ; $79c8: $86
	adc  c                                           ; $79c9: $89
	ld   a, c                                        ; $79ca: $79
	add  a                                           ; $79cb: $87
	sbc  b                                           ; $79cc: $98
	adc  c                                           ; $79cd: $89
	add  a                                           ; $79ce: $87
	sbc  b                                           ; $79cf: $98
	ld   a, b                                        ; $79d0: $78
	add  a                                           ; $79d1: $87
	add  a                                           ; $79d2: $87
	sbc  c                                           ; $79d3: $99
	ld   l, b                                        ; $79d4: $68
	sbc  b                                           ; $79d5: $98
	ld   a, b                                        ; $79d6: $78
	add  [hl]                                        ; $79d7: $86
	adc  c                                           ; $79d8: $89
	ld   h, a                                        ; $79d9: $67
	add  [hl]                                        ; $79da: $86
	sbc  b                                           ; $79db: $98
	ld   a, b                                        ; $79dc: $78
	adc  b                                           ; $79dd: $88
	add  a                                           ; $79de: $87
	xor  c                                           ; $79df: $a9
	ld   c, b                                        ; $79e0: $48
	cp   b                                           ; $79e1: $b8
	ld   e, c                                        ; $79e2: $59
	and  [hl]                                        ; $79e3: $a6
	adc  b                                           ; $79e4: $88
	sub  a                                           ; $79e5: $97
	ld   l, c                                        ; $79e6: $69
	sub  a                                           ; $79e7: $97
	ld   a, c                                        ; $79e8: $79
	sbc  b                                           ; $79e9: $98
	ld   l, c                                        ; $79ea: $69
	xor  b                                           ; $79eb: $a8
	ld   a, b                                        ; $79ec: $78
	sub  a                                           ; $79ed: $97
	ld   h, a                                        ; $79ee: $67
	sbc  d                                           ; $79ef: $9a
	ld   a, b                                        ; $79f0: $78
	adc  b                                           ; $79f1: $88
	add  [hl]                                        ; $79f2: $86
	sbc  d                                           ; $79f3: $9a
	ld   [hl], a                                     ; $79f4: $77
	sub  a                                           ; $79f5: $97
	sbc  c                                           ; $79f6: $99
	ld   a, b                                        ; $79f7: $78
	sbc  b                                           ; $79f8: $98
	ld   [hl], a                                     ; $79f9: $77
	sbc  b                                           ; $79fa: $98
	ld   [hl], a                                     ; $79fb: $77
	sbc  c                                           ; $79fc: $99
	ld   l, c                                        ; $79fd: $69
	add  a                                           ; $79fe: $87
	sbc  b                                           ; $79ff: $98
	ld   a, c                                        ; $7a00: $79
	add  [hl]                                        ; $7a01: $86
	adc  d                                           ; $7a02: $8a
	ld   h, a                                        ; $7a03: $67
	sbc  b                                           ; $7a04: $98
	sub  a                                           ; $7a05: $97
	adc  b                                           ; $7a06: $88
	add  a                                           ; $7a07: $87
	ld   l, d                                        ; $7a08: $6a
	add  [hl]                                        ; $7a09: $86
	sbc  d                                           ; $7a0a: $9a
	ld   h, a                                        ; $7a0b: $67
	xor  b                                           ; $7a0c: $a8
	ld   [hl], a                                     ; $7a0d: $77
	sbc  c                                           ; $7a0e: $99
	ld   a, b                                        ; $7a0f: $78
	adc  c                                           ; $7a10: $89
	add  a                                           ; $7a11: $87
	ld   a, d                                        ; $7a12: $7a
	halt                                             ; $7a13: $76
	adc  c                                           ; $7a14: $89
	add  a                                           ; $7a15: $87
	adc  c                                           ; $7a16: $89
	ld   a, c                                        ; $7a17: $79
	sbc  b                                           ; $7a18: $98
	ld   a, c                                        ; $7a19: $79
	ld   [hl], a                                     ; $7a1a: $77
	adc  b                                           ; $7a1b: $88
	sub  a                                           ; $7a1c: $97
	ld   l, c                                        ; $7a1d: $69
	ld   a, b                                        ; $7a1e: $78
	xor  b                                           ; $7a1f: $a8
	ld   a, b                                        ; $7a20: $78
	sub  a                                           ; $7a21: $97
	adc  b                                           ; $7a22: $88
	ld   a, b                                        ; $7a23: $78
	sub  a                                           ; $7a24: $97
	ld   a, b                                        ; $7a25: $78
	adc  b                                           ; $7a26: $88
	adc  c                                           ; $7a27: $89
	sbc  b                                           ; $7a28: $98
	ld   a, c                                        ; $7a29: $79
	add  a                                           ; $7a2a: $87
	adc  c                                           ; $7a2b: $89
	add  a                                           ; $7a2c: $87
	adc  b                                           ; $7a2d: $88
	ld   [hl], a                                     ; $7a2e: $77
	sbc  b                                           ; $7a2f: $98
	ld   a, b                                        ; $7a30: $78
	sbc  b                                           ; $7a31: $98
	ld   a, c                                        ; $7a32: $79
	add  a                                           ; $7a33: $87
	adc  b                                           ; $7a34: $88
	sbc  b                                           ; $7a35: $98
	ld   a, b                                        ; $7a36: $78
	sub  a                                           ; $7a37: $97
	adc  c                                           ; $7a38: $89
	ld   [hl], a                                     ; $7a39: $77
	sbc  c                                           ; $7a3a: $99
	ld   a, b                                        ; $7a3b: $78
	sbc  c                                           ; $7a3c: $99
	ld   [hl], a                                     ; $7a3d: $77
	xor  b                                           ; $7a3e: $a8
	ld   a, b                                        ; $7a3f: $78
	sbc  c                                           ; $7a40: $99
	ld   a, b                                        ; $7a41: $78
	sbc  b                                           ; $7a42: $98
	ld   a, c                                        ; $7a43: $79
	adc  c                                           ; $7a44: $89
	ld   [hl], a                                     ; $7a45: $77
	add  a                                           ; $7a46: $87
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	sbc  c                                           ; $7a49: $99
	sub  a                                           ; $7a4a: $97
	sbc  c                                           ; $7a4b: $99
	add  a                                           ; $7a4c: $87
	adc  c                                           ; $7a4d: $89
	ld   [hl], a                                     ; $7a4e: $77
	adc  b                                           ; $7a4f: $88
	add  a                                           ; $7a50: $87
	sbc  c                                           ; $7a51: $99
	ld   a, b                                        ; $7a52: $78
	xor  b                                           ; $7a53: $a8
	ld   a, b                                        ; $7a54: $78
	sub  a                                           ; $7a55: $97
	ld   a, b                                        ; $7a56: $78
	adc  b                                           ; $7a57: $88
	ld   a, b                                        ; $7a58: $78
	adc  b                                           ; $7a59: $88
	adc  c                                           ; $7a5a: $89
	sbc  b                                           ; $7a5b: $98
	ld   a, b                                        ; $7a5c: $78
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	adc  b                                           ; $7a5f: $88
	adc  b                                           ; $7a60: $88
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	adc  b                                           ; $7a64: $88
	adc  c                                           ; $7a65: $89
	add  a                                           ; $7a66: $87
	sbc  b                                           ; $7a67: $98
	ld   a, b                                        ; $7a68: $78
	add  a                                           ; $7a69: $87
	adc  b                                           ; $7a6a: $88
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	adc  b                                           ; $7a6d: $88
	ld   a, b                                        ; $7a6e: $78
	sub  a                                           ; $7a6f: $97
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	add  a                                           ; $7a72: $87
	sub  a                                           ; $7a73: $97
	ld   a, b                                        ; $7a74: $78
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	adc  c                                           ; $7a77: $89
	adc  b                                           ; $7a78: $88
	adc  b                                           ; $7a79: $88
	adc  c                                           ; $7a7a: $89
	adc  b                                           ; $7a7b: $88
	adc  b                                           ; $7a7c: $88
	adc  b                                           ; $7a7d: $88
	adc  c                                           ; $7a7e: $89
	adc  c                                           ; $7a7f: $89
	sub  a                                           ; $7a80: $97
	adc  c                                           ; $7a81: $89
	ld   a, b                                        ; $7a82: $78
	sub  a                                           ; $7a83: $97
	adc  c                                           ; $7a84: $89
	sbc  b                                           ; $7a85: $98
	adc  b                                           ; $7a86: $88
	sbc  b                                           ; $7a87: $98
	adc  b                                           ; $7a88: $88

Call_0d5_7a89:
	add  a                                           ; $7a89: $87
	sbc  b                                           ; $7a8a: $98
	adc  b                                           ; $7a8b: $88
	adc  b                                           ; $7a8c: $88
	adc  b                                           ; $7a8d: $88
	adc  c                                           ; $7a8e: $89
	adc  b                                           ; $7a8f: $88
	sbc  c                                           ; $7a90: $99
	adc  b                                           ; $7a91: $88
	adc  b                                           ; $7a92: $88
	adc  b                                           ; $7a93: $88
	adc  b                                           ; $7a94: $88
	adc  b                                           ; $7a95: $88
	adc  b                                           ; $7a96: $88
	adc  b                                           ; $7a97: $88
	sbc  b                                           ; $7a98: $98
	adc  c                                           ; $7a99: $89
	sub  a                                           ; $7a9a: $97
	adc  b                                           ; $7a9b: $88
	adc  b                                           ; $7a9c: $88
	adc  b                                           ; $7a9d: $88
	adc  b                                           ; $7a9e: $88
	adc  c                                           ; $7a9f: $89
	add  a                                           ; $7aa0: $87
	adc  b                                           ; $7aa1: $88
	adc  b                                           ; $7aa2: $88
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	sbc  b                                           ; $7aa5: $98
	adc  b                                           ; $7aa6: $88
	adc  b                                           ; $7aa7: $88
	adc  b                                           ; $7aa8: $88
	adc  b                                           ; $7aa9: $88
	adc  c                                           ; $7aaa: $89
	adc  b                                           ; $7aab: $88
	adc  b                                           ; $7aac: $88
	adc  b                                           ; $7aad: $88
	sbc  b                                           ; $7aae: $98
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	adc  b                                           ; $7ab1: $88
	adc  b                                           ; $7ab2: $88
	sbc  b                                           ; $7ab3: $98
	adc  c                                           ; $7ab4: $89
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	adc  b                                           ; $7ab7: $88
	adc  c                                           ; $7ab8: $89
	adc  b                                           ; $7ab9: $88
	adc  b                                           ; $7aba: $88
	adc  b                                           ; $7abb: $88
	adc  c                                           ; $7abc: $89
	adc  b                                           ; $7abd: $88
	adc  c                                           ; $7abe: $89
	ld   a, b                                        ; $7abf: $78
	sbc  b                                           ; $7ac0: $98
	adc  b                                           ; $7ac1: $88
	sbc  b                                           ; $7ac2: $98
	adc  b                                           ; $7ac3: $88
	adc  b                                           ; $7ac4: $88
	adc  b                                           ; $7ac5: $88
	adc  b                                           ; $7ac6: $88
	adc  b                                           ; $7ac7: $88
	adc  b                                           ; $7ac8: $88
	adc  b                                           ; $7ac9: $88
	adc  b                                           ; $7aca: $88
	adc  b                                           ; $7acb: $88
	adc  b                                           ; $7acc: $88
	adc  b                                           ; $7acd: $88
	adc  b                                           ; $7ace: $88
	adc  b                                           ; $7acf: $88
	adc  b                                           ; $7ad0: $88
	adc  b                                           ; $7ad1: $88
	adc  b                                           ; $7ad2: $88
	adc  b                                           ; $7ad3: $88
	adc  b                                           ; $7ad4: $88
	adc  b                                           ; $7ad5: $88
	adc  b                                           ; $7ad6: $88
	adc  b                                           ; $7ad7: $88
	adc  b                                           ; $7ad8: $88
	adc  b                                           ; $7ad9: $88
	adc  b                                           ; $7ada: $88
	adc  b                                           ; $7adb: $88
	adc  b                                           ; $7adc: $88
	adc  b                                           ; $7add: $88
	adc  b                                           ; $7ade: $88
	adc  b                                           ; $7adf: $88
	adc  b                                           ; $7ae0: $88
	adc  b                                           ; $7ae1: $88
	adc  b                                           ; $7ae2: $88
	adc  b                                           ; $7ae3: $88
	adc  b                                           ; $7ae4: $88
	adc  b                                           ; $7ae5: $88
	adc  b                                           ; $7ae6: $88
	adc  b                                           ; $7ae7: $88
	adc  b                                           ; $7ae8: $88
	adc  b                                           ; $7ae9: $88
	adc  b                                           ; $7aea: $88
	adc  b                                           ; $7aeb: $88
	adc  b                                           ; $7aec: $88
	adc  b                                           ; $7aed: $88
	adc  b                                           ; $7aee: $88
	adc  b                                           ; $7aef: $88
	adc  b                                           ; $7af0: $88
	adc  b                                           ; $7af1: $88
	adc  b                                           ; $7af2: $88
	adc  b                                           ; $7af3: $88
	adc  b                                           ; $7af4: $88
	adc  b                                           ; $7af5: $88
	adc  b                                           ; $7af6: $88
	adc  b                                           ; $7af7: $88
	adc  b                                           ; $7af8: $88
	adc  b                                           ; $7af9: $88
	adc  b                                           ; $7afa: $88
	adc  b                                           ; $7afb: $88
	ld   de, $1111                                   ; $7afc: $11 $11 $11
	ld   de, $1111                                   ; $7aff: $11 $11 $11
	ld   de, $1111                                   ; $7b02: $11 $11 $11
	ld   de, $1111                                   ; $7b05: $11 $11 $11
	ld   de, $1111                                   ; $7b08: $11 $11 $11
	ld   de, $1111                                   ; $7b0b: $11 $11 $11
	ld   de, $1111                                   ; $7b0e: $11 $11 $11
	ld   de, $1111                                   ; $7b11: $11 $11 $11
	ld   de, $0011                                   ; $7b14: $11 $11 $00
	ld   c, b                                        ; $7b17: $48
	ld   de, $1111                                   ; $7b18: $11 $11 $11
	ld   de, $1111                                   ; $7b1b: $11 $11 $11
	ld   de, $1111                                   ; $7b1e: $11 $11 $11
	ld   de, $5413                                   ; $7b21: $11 $13 $54
	ld   d, h                                        ; $7b24: $54
	ld   d, h                                        ; $7b25: $54
	ld   b, c                                        ; $7b26: $41
	rra                                              ; $7b27: $1f
	rst  $38                                         ; $7b28: $ff
	pop  af                                          ; $7b29: $f1
	ld   de, $1411                                   ; $7b2a: $11 $11 $14
	sub  c                                           ; $7b2d: $91
	ld   de, $df1c                                   ; $7b2e: $11 $1c $df
	adc  h                                           ; $7b31: $8c
	rst  JumpTable                                         ; $7b32: $df
	add  c                                           ; $7b33: $81
	ld   de, $1111                                   ; $7b34: $11 $11 $11
	ld   de, $1111                                   ; $7b37: $11 $11 $11
	ld   de, $1111                                   ; $7b3a: $11 $11 $11
	ld   de, $1111                                   ; $7b3d: $11 $11 $11
	ld   de, $5411                                   ; $7b40: $11 $11 $54
	ld   b, h                                        ; $7b43: $44
	add  h                                           ; $7b44: $84
	ld   de, $5454                                   ; $7b45: $11 $54 $54
	ld   h, a                                        ; $7b48: $67
	ld   [hl], d                                     ; $7b49: $72
	ld   de, $1111                                   ; $7b4a: $11 $11 $11
	ld   de, $1112                                   ; $7b4d: $11 $12 $11
	ld   [de], a                                     ; $7b50: $12
	ld   de, $1111                                   ; $7b51: $11 $11 $11
	ld   h, [hl]                                     ; $7b54: $66
	halt                                             ; $7b55: $76
	ld   h, h                                        ; $7b56: $64
	ld   de, $8888                                   ; $7b57: $11 $88 $88
	adc  b                                           ; $7b5a: $88
	adc  b                                           ; $7b5b: $88
	adc  b                                           ; $7b5c: $88
	adc  b                                           ; $7b5d: $88
	adc  b                                           ; $7b5e: $88
	adc  b                                           ; $7b5f: $88
	adc  b                                           ; $7b60: $88
	adc  b                                           ; $7b61: $88
	adc  b                                           ; $7b62: $88
	adc  b                                           ; $7b63: $88
	adc  b                                           ; $7b64: $88
	adc  b                                           ; $7b65: $88
	adc  b                                           ; $7b66: $88
	adc  b                                           ; $7b67: $88
	adc  b                                           ; $7b68: $88
	adc  b                                           ; $7b69: $88
	adc  b                                           ; $7b6a: $88
	adc  b                                           ; $7b6b: $88
	adc  b                                           ; $7b6c: $88
	adc  b                                           ; $7b6d: $88
	adc  b                                           ; $7b6e: $88
	adc  b                                           ; $7b6f: $88
	adc  b                                           ; $7b70: $88
	adc  b                                           ; $7b71: $88
	adc  b                                           ; $7b72: $88
	adc  b                                           ; $7b73: $88
	adc  b                                           ; $7b74: $88
	adc  b                                           ; $7b75: $88
	adc  b                                           ; $7b76: $88
	adc  b                                           ; $7b77: $88
	adc  b                                           ; $7b78: $88
	adc  b                                           ; $7b79: $88
	adc  b                                           ; $7b7a: $88
	adc  b                                           ; $7b7b: $88
	adc  b                                           ; $7b7c: $88
	adc  b                                           ; $7b7d: $88
	adc  b                                           ; $7b7e: $88
	adc  b                                           ; $7b7f: $88
	adc  b                                           ; $7b80: $88
	adc  b                                           ; $7b81: $88
	adc  b                                           ; $7b82: $88
	adc  b                                           ; $7b83: $88
	adc  b                                           ; $7b84: $88
	adc  b                                           ; $7b85: $88
	adc  b                                           ; $7b86: $88
	adc  b                                           ; $7b87: $88
	adc  b                                           ; $7b88: $88
	adc  b                                           ; $7b89: $88
	adc  b                                           ; $7b8a: $88
	adc  b                                           ; $7b8b: $88
	adc  b                                           ; $7b8c: $88
	adc  b                                           ; $7b8d: $88
	adc  b                                           ; $7b8e: $88
	adc  b                                           ; $7b8f: $88
	adc  b                                           ; $7b90: $88
	adc  b                                           ; $7b91: $88
	adc  b                                           ; $7b92: $88
	adc  b                                           ; $7b93: $88
	adc  b                                           ; $7b94: $88
	adc  b                                           ; $7b95: $88
	adc  b                                           ; $7b96: $88
	adc  b                                           ; $7b97: $88
	adc  b                                           ; $7b98: $88
	adc  b                                           ; $7b99: $88
	adc  b                                           ; $7b9a: $88
	adc  b                                           ; $7b9b: $88
	adc  b                                           ; $7b9c: $88
	adc  b                                           ; $7b9d: $88
	adc  b                                           ; $7b9e: $88
	adc  b                                           ; $7b9f: $88
	adc  b                                           ; $7ba0: $88
	adc  b                                           ; $7ba1: $88
	adc  b                                           ; $7ba2: $88
	adc  b                                           ; $7ba3: $88
	adc  b                                           ; $7ba4: $88
	adc  b                                           ; $7ba5: $88
	adc  b                                           ; $7ba6: $88
	adc  b                                           ; $7ba7: $88
	adc  b                                           ; $7ba8: $88
	adc  b                                           ; $7ba9: $88
	adc  b                                           ; $7baa: $88
	adc  b                                           ; $7bab: $88
	adc  b                                           ; $7bac: $88
	adc  b                                           ; $7bad: $88
	adc  b                                           ; $7bae: $88
	adc  b                                           ; $7baf: $88
	adc  b                                           ; $7bb0: $88
	adc  b                                           ; $7bb1: $88
	adc  b                                           ; $7bb2: $88
	adc  b                                           ; $7bb3: $88
	adc  b                                           ; $7bb4: $88
	adc  b                                           ; $7bb5: $88
	adc  b                                           ; $7bb6: $88
	adc  b                                           ; $7bb7: $88
	adc  b                                           ; $7bb8: $88
	adc  b                                           ; $7bb9: $88
	adc  b                                           ; $7bba: $88
	adc  b                                           ; $7bbb: $88
	adc  c                                           ; $7bbc: $89
	adc  b                                           ; $7bbd: $88
	adc  b                                           ; $7bbe: $88
	adc  b                                           ; $7bbf: $88
	adc  b                                           ; $7bc0: $88
	adc  b                                           ; $7bc1: $88
	adc  b                                           ; $7bc2: $88
	adc  b                                           ; $7bc3: $88
	adc  b                                           ; $7bc4: $88
	adc  b                                           ; $7bc5: $88
	adc  b                                           ; $7bc6: $88
	adc  b                                           ; $7bc7: $88
	adc  b                                           ; $7bc8: $88
	adc  b                                           ; $7bc9: $88
	adc  b                                           ; $7bca: $88
	adc  b                                           ; $7bcb: $88
	adc  b                                           ; $7bcc: $88
	adc  b                                           ; $7bcd: $88
	adc  b                                           ; $7bce: $88
	adc  b                                           ; $7bcf: $88
	adc  b                                           ; $7bd0: $88
	adc  b                                           ; $7bd1: $88
	adc  c                                           ; $7bd2: $89
	adc  b                                           ; $7bd3: $88
	adc  b                                           ; $7bd4: $88
	adc  b                                           ; $7bd5: $88
	adc  b                                           ; $7bd6: $88
	adc  b                                           ; $7bd7: $88
	adc  b                                           ; $7bd8: $88
	adc  b                                           ; $7bd9: $88
	adc  b                                           ; $7bda: $88
	adc  c                                           ; $7bdb: $89
	adc  b                                           ; $7bdc: $88
	sbc  b                                           ; $7bdd: $98
	adc  b                                           ; $7bde: $88
	adc  b                                           ; $7bdf: $88
	adc  b                                           ; $7be0: $88
	adc  b                                           ; $7be1: $88
	adc  c                                           ; $7be2: $89
	adc  b                                           ; $7be3: $88
	adc  b                                           ; $7be4: $88
	adc  b                                           ; $7be5: $88
	adc  b                                           ; $7be6: $88
	adc  b                                           ; $7be7: $88
	sbc  b                                           ; $7be8: $98
	adc  b                                           ; $7be9: $88
	adc  b                                           ; $7bea: $88
	sbc  b                                           ; $7beb: $98
	adc  b                                           ; $7bec: $88
	adc  b                                           ; $7bed: $88
	sbc  b                                           ; $7bee: $98
	adc  b                                           ; $7bef: $88
	sbc  b                                           ; $7bf0: $98
	adc  b                                           ; $7bf1: $88
	sbc  b                                           ; $7bf2: $98
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	adc  c                                           ; $7bf5: $89
	adc  b                                           ; $7bf6: $88
	adc  b                                           ; $7bf7: $88
	adc  c                                           ; $7bf8: $89
	adc  b                                           ; $7bf9: $88
	sbc  b                                           ; $7bfa: $98
	adc  b                                           ; $7bfb: $88
	adc  c                                           ; $7bfc: $89
	adc  b                                           ; $7bfd: $88
	adc  b                                           ; $7bfe: $88
	adc  b                                           ; $7bff: $88
	adc  b                                           ; $7c00: $88
	adc  b                                           ; $7c01: $88
	adc  b                                           ; $7c02: $88
	sbc  b                                           ; $7c03: $98
	adc  b                                           ; $7c04: $88
	adc  b                                           ; $7c05: $88
	adc  b                                           ; $7c06: $88
	adc  b                                           ; $7c07: $88
	adc  c                                           ; $7c08: $89
	sbc  b                                           ; $7c09: $98
	adc  b                                           ; $7c0a: $88
	adc  b                                           ; $7c0b: $88
	adc  b                                           ; $7c0c: $88
	adc  b                                           ; $7c0d: $88
	adc  b                                           ; $7c0e: $88
	adc  b                                           ; $7c0f: $88
	adc  b                                           ; $7c10: $88
	adc  b                                           ; $7c11: $88
	adc  b                                           ; $7c12: $88
	sbc  b                                           ; $7c13: $98
	adc  b                                           ; $7c14: $88
	adc  b                                           ; $7c15: $88
	adc  b                                           ; $7c16: $88
	adc  b                                           ; $7c17: $88
	adc  b                                           ; $7c18: $88
	adc  b                                           ; $7c19: $88
	adc  c                                           ; $7c1a: $89
	adc  b                                           ; $7c1b: $88
	adc  b                                           ; $7c1c: $88
	adc  b                                           ; $7c1d: $88
	adc  b                                           ; $7c1e: $88
	adc  b                                           ; $7c1f: $88
	adc  b                                           ; $7c20: $88
	adc  b                                           ; $7c21: $88
	adc  b                                           ; $7c22: $88
	adc  b                                           ; $7c23: $88
	adc  b                                           ; $7c24: $88
	adc  b                                           ; $7c25: $88
	adc  b                                           ; $7c26: $88
	adc  b                                           ; $7c27: $88
	sbc  b                                           ; $7c28: $98
	adc  b                                           ; $7c29: $88
	adc  b                                           ; $7c2a: $88
	adc  b                                           ; $7c2b: $88
	adc  b                                           ; $7c2c: $88
	adc  b                                           ; $7c2d: $88
	adc  b                                           ; $7c2e: $88
	adc  b                                           ; $7c2f: $88
	adc  b                                           ; $7c30: $88
	adc  b                                           ; $7c31: $88
	adc  b                                           ; $7c32: $88
	adc  b                                           ; $7c33: $88
	adc  b                                           ; $7c34: $88
	adc  b                                           ; $7c35: $88
	adc  b                                           ; $7c36: $88
	adc  b                                           ; $7c37: $88
	adc  b                                           ; $7c38: $88
	adc  b                                           ; $7c39: $88
	sbc  b                                           ; $7c3a: $98
	adc  b                                           ; $7c3b: $88
	adc  b                                           ; $7c3c: $88
	add  a                                           ; $7c3d: $87
	adc  b                                           ; $7c3e: $88
	adc  b                                           ; $7c3f: $88
	adc  b                                           ; $7c40: $88
	adc  b                                           ; $7c41: $88
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	adc  b                                           ; $7c45: $88
	adc  b                                           ; $7c46: $88
	adc  b                                           ; $7c47: $88
	adc  b                                           ; $7c48: $88
	adc  b                                           ; $7c49: $88
	add  a                                           ; $7c4a: $87
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	add  a                                           ; $7c51: $87
	ld   a, b                                        ; $7c52: $78
	adc  b                                           ; $7c53: $88
	adc  b                                           ; $7c54: $88
	adc  b                                           ; $7c55: $88
	add  a                                           ; $7c56: $87
	adc  c                                           ; $7c57: $89
	adc  b                                           ; $7c58: $88
	adc  b                                           ; $7c59: $88
	adc  b                                           ; $7c5a: $88
	adc  b                                           ; $7c5b: $88
	adc  b                                           ; $7c5c: $88
	adc  b                                           ; $7c5d: $88
	ld   a, b                                        ; $7c5e: $78
	add  a                                           ; $7c5f: $87
	adc  b                                           ; $7c60: $88
	adc  b                                           ; $7c61: $88
	adc  b                                           ; $7c62: $88
	add  a                                           ; $7c63: $87
	ld   a, c                                        ; $7c64: $79
	adc  b                                           ; $7c65: $88
	adc  b                                           ; $7c66: $88
	ld   a, b                                        ; $7c67: $78
	add  a                                           ; $7c68: $87
	adc  b                                           ; $7c69: $88
	ld   a, c                                        ; $7c6a: $79
	sub  a                                           ; $7c6b: $97
	adc  b                                           ; $7c6c: $88
	adc  b                                           ; $7c6d: $88
	adc  b                                           ; $7c6e: $88
	adc  b                                           ; $7c6f: $88
	ld   a, b                                        ; $7c70: $78
	adc  b                                           ; $7c71: $88
	adc  b                                           ; $7c72: $88
	adc  b                                           ; $7c73: $88
	adc  b                                           ; $7c74: $88
	adc  b                                           ; $7c75: $88
	adc  b                                           ; $7c76: $88
	adc  b                                           ; $7c77: $88
	adc  b                                           ; $7c78: $88
	adc  b                                           ; $7c79: $88
	adc  b                                           ; $7c7a: $88
	add  a                                           ; $7c7b: $87
	adc  b                                           ; $7c7c: $88
	ld   a, c                                        ; $7c7d: $79
	adc  b                                           ; $7c7e: $88
	adc  b                                           ; $7c7f: $88
	adc  b                                           ; $7c80: $88
	adc  b                                           ; $7c81: $88
	adc  b                                           ; $7c82: $88
	adc  c                                           ; $7c83: $89
	add  a                                           ; $7c84: $87
	adc  b                                           ; $7c85: $88
	add  a                                           ; $7c86: $87
	adc  b                                           ; $7c87: $88
	adc  b                                           ; $7c88: $88
	adc  b                                           ; $7c89: $88
	adc  b                                           ; $7c8a: $88
	adc  b                                           ; $7c8b: $88
	add  a                                           ; $7c8c: $87
	sbc  c                                           ; $7c8d: $99
	ld   a, b                                        ; $7c8e: $78
	adc  b                                           ; $7c8f: $88
	adc  b                                           ; $7c90: $88
	ld   a, b                                        ; $7c91: $78
	adc  b                                           ; $7c92: $88
	adc  b                                           ; $7c93: $88
	adc  b                                           ; $7c94: $88
	sbc  b                                           ; $7c95: $98
	adc  b                                           ; $7c96: $88
	add  a                                           ; $7c97: $87
	adc  c                                           ; $7c98: $89
	adc  b                                           ; $7c99: $88
	adc  b                                           ; $7c9a: $88
	adc  b                                           ; $7c9b: $88
	adc  c                                           ; $7c9c: $89
	adc  b                                           ; $7c9d: $88
	sbc  b                                           ; $7c9e: $98
	ld   a, b                                        ; $7c9f: $78
	adc  b                                           ; $7ca0: $88
	adc  c                                           ; $7ca1: $89
	adc  b                                           ; $7ca2: $88
	adc  b                                           ; $7ca3: $88
	adc  b                                           ; $7ca4: $88
	adc  b                                           ; $7ca5: $88
	sbc  b                                           ; $7ca6: $98
	adc  b                                           ; $7ca7: $88
	add  a                                           ; $7ca8: $87
	adc  c                                           ; $7ca9: $89
	adc  b                                           ; $7caa: $88
	adc  b                                           ; $7cab: $88
	adc  b                                           ; $7cac: $88
	adc  c                                           ; $7cad: $89
	adc  b                                           ; $7cae: $88
	adc  b                                           ; $7caf: $88
	add  a                                           ; $7cb0: $87
	sbc  b                                           ; $7cb1: $98
	adc  b                                           ; $7cb2: $88
	adc  b                                           ; $7cb3: $88
	adc  b                                           ; $7cb4: $88
	adc  c                                           ; $7cb5: $89
	adc  b                                           ; $7cb6: $88
	adc  b                                           ; $7cb7: $88
	adc  b                                           ; $7cb8: $88
	adc  b                                           ; $7cb9: $88
	adc  b                                           ; $7cba: $88
	sub  a                                           ; $7cbb: $97
	adc  b                                           ; $7cbc: $88
	adc  b                                           ; $7cbd: $88
	sbc  b                                           ; $7cbe: $98
	adc  b                                           ; $7cbf: $88
	ld   a, b                                        ; $7cc0: $78
	adc  b                                           ; $7cc1: $88
	adc  b                                           ; $7cc2: $88
	adc  b                                           ; $7cc3: $88
	adc  b                                           ; $7cc4: $88
	ld   a, c                                        ; $7cc5: $79
	adc  b                                           ; $7cc6: $88
	sbc  b                                           ; $7cc7: $98
	adc  b                                           ; $7cc8: $88
	adc  b                                           ; $7cc9: $88
	adc  c                                           ; $7cca: $89
	sbc  c                                           ; $7ccb: $99
	add  a                                           ; $7ccc: $87
	adc  c                                           ; $7ccd: $89
	adc  b                                           ; $7cce: $88
	adc  b                                           ; $7ccf: $88
	add  a                                           ; $7cd0: $87
	adc  b                                           ; $7cd1: $88
	sbc  b                                           ; $7cd2: $98
	adc  c                                           ; $7cd3: $89
	ld   a, b                                        ; $7cd4: $78
	add  a                                           ; $7cd5: $87
	adc  b                                           ; $7cd6: $88
	adc  b                                           ; $7cd7: $88
	add  a                                           ; $7cd8: $87
	sbc  b                                           ; $7cd9: $98
	adc  c                                           ; $7cda: $89
	ld   a, b                                        ; $7cdb: $78
	sbc  b                                           ; $7cdc: $98
	ld   a, c                                        ; $7cdd: $79
	adc  b                                           ; $7cde: $88
	adc  b                                           ; $7cdf: $88
	ld   a, c                                        ; $7ce0: $79
	adc  b                                           ; $7ce1: $88
	adc  b                                           ; $7ce2: $88
	sbc  b                                           ; $7ce3: $98
	adc  b                                           ; $7ce4: $88
	adc  b                                           ; $7ce5: $88
	sbc  b                                           ; $7ce6: $98
	ld   a, c                                        ; $7ce7: $79
	adc  b                                           ; $7ce8: $88
	adc  b                                           ; $7ce9: $88
	adc  b                                           ; $7cea: $88
	add  a                                           ; $7ceb: $87
	adc  b                                           ; $7cec: $88
	adc  b                                           ; $7ced: $88
	adc  b                                           ; $7cee: $88
	adc  c                                           ; $7cef: $89
	add  a                                           ; $7cf0: $87
	adc  c                                           ; $7cf1: $89
	adc  b                                           ; $7cf2: $88
	adc  b                                           ; $7cf3: $88
	sub  a                                           ; $7cf4: $97
	adc  b                                           ; $7cf5: $88
	adc  c                                           ; $7cf6: $89
	adc  b                                           ; $7cf7: $88
	add  a                                           ; $7cf8: $87
	adc  c                                           ; $7cf9: $89
	adc  c                                           ; $7cfa: $89
	ld   a, b                                        ; $7cfb: $78
	adc  b                                           ; $7cfc: $88
	adc  b                                           ; $7cfd: $88
	adc  b                                           ; $7cfe: $88
	adc  b                                           ; $7cff: $88
	adc  b                                           ; $7d00: $88
	adc  b                                           ; $7d01: $88
	adc  b                                           ; $7d02: $88
	sbc  b                                           ; $7d03: $98
	adc  b                                           ; $7d04: $88
	adc  b                                           ; $7d05: $88
	ld   a, b                                        ; $7d06: $78
	add  a                                           ; $7d07: $87
	adc  b                                           ; $7d08: $88
	sbc  b                                           ; $7d09: $98
	ld   a, b                                        ; $7d0a: $78
	adc  b                                           ; $7d0b: $88
	sbc  b                                           ; $7d0c: $98
	adc  b                                           ; $7d0d: $88
	adc  b                                           ; $7d0e: $88
	adc  b                                           ; $7d0f: $88
	adc  b                                           ; $7d10: $88
	adc  b                                           ; $7d11: $88
	adc  b                                           ; $7d12: $88
	adc  c                                           ; $7d13: $89
	add  a                                           ; $7d14: $87
	sbc  c                                           ; $7d15: $99
	adc  c                                           ; $7d16: $89
	adc  b                                           ; $7d17: $88
	adc  b                                           ; $7d18: $88
	adc  b                                           ; $7d19: $88
	adc  b                                           ; $7d1a: $88
	adc  b                                           ; $7d1b: $88
	adc  b                                           ; $7d1c: $88
	sbc  b                                           ; $7d1d: $98
	ld   a, b                                        ; $7d1e: $78
	adc  b                                           ; $7d1f: $88
	adc  b                                           ; $7d20: $88
	adc  b                                           ; $7d21: $88
	adc  c                                           ; $7d22: $89
	adc  b                                           ; $7d23: $88
	adc  b                                           ; $7d24: $88
	sub  a                                           ; $7d25: $97
	ld   a, b                                        ; $7d26: $78
	sbc  c                                           ; $7d27: $99
	adc  b                                           ; $7d28: $88
	adc  c                                           ; $7d29: $89
	adc  b                                           ; $7d2a: $88
	adc  b                                           ; $7d2b: $88
	adc  b                                           ; $7d2c: $88
	adc  b                                           ; $7d2d: $88
	ld   [hl], a                                     ; $7d2e: $77
	adc  c                                           ; $7d2f: $89
	ld   a, b                                        ; $7d30: $78
	adc  c                                           ; $7d31: $89
	adc  b                                           ; $7d32: $88
	adc  b                                           ; $7d33: $88
	ld   a, b                                        ; $7d34: $78
	adc  b                                           ; $7d35: $88
	sbc  b                                           ; $7d36: $98
	adc  b                                           ; $7d37: $88
	adc  b                                           ; $7d38: $88
	adc  b                                           ; $7d39: $88
	ld   a, b                                        ; $7d3a: $78
	adc  b                                           ; $7d3b: $88
	adc  b                                           ; $7d3c: $88
	adc  b                                           ; $7d3d: $88
	sbc  b                                           ; $7d3e: $98
	ld   a, b                                        ; $7d3f: $78
	adc  b                                           ; $7d40: $88
	add  a                                           ; $7d41: $87
	adc  b                                           ; $7d42: $88
	add  a                                           ; $7d43: $87
	adc  b                                           ; $7d44: $88
	sub  a                                           ; $7d45: $97
	adc  b                                           ; $7d46: $88
	adc  b                                           ; $7d47: $88
	adc  b                                           ; $7d48: $88
	ld   a, b                                        ; $7d49: $78
	adc  c                                           ; $7d4a: $89
	sbc  b                                           ; $7d4b: $98
	add  a                                           ; $7d4c: $87
	adc  c                                           ; $7d4d: $89
	adc  b                                           ; $7d4e: $88
	add  a                                           ; $7d4f: $87
	adc  b                                           ; $7d50: $88
	ld   a, c                                        ; $7d51: $79
	sub  a                                           ; $7d52: $97
	adc  b                                           ; $7d53: $88
	sbc  b                                           ; $7d54: $98
	adc  b                                           ; $7d55: $88
	adc  b                                           ; $7d56: $88
	adc  b                                           ; $7d57: $88
	sbc  b                                           ; $7d58: $98
	adc  b                                           ; $7d59: $88
	adc  c                                           ; $7d5a: $89
	sub  a                                           ; $7d5b: $97
	add  a                                           ; $7d5c: $87
	sbc  b                                           ; $7d5d: $98
	ld   [hl], a                                     ; $7d5e: $77
	sbc  b                                           ; $7d5f: $98
	ld   a, c                                        ; $7d60: $79
	sbc  b                                           ; $7d61: $98
	add  a                                           ; $7d62: $87
	sbc  b                                           ; $7d63: $98
	adc  b                                           ; $7d64: $88
	ld   a, b                                        ; $7d65: $78
	add  a                                           ; $7d66: $87
	adc  b                                           ; $7d67: $88
	ld   a, b                                        ; $7d68: $78
	sub  a                                           ; $7d69: $97
	adc  c                                           ; $7d6a: $89
	add  a                                           ; $7d6b: $87
	adc  b                                           ; $7d6c: $88
	adc  b                                           ; $7d6d: $88
	sub  a                                           ; $7d6e: $97
	adc  c                                           ; $7d6f: $89
	adc  b                                           ; $7d70: $88
	adc  b                                           ; $7d71: $88
	adc  b                                           ; $7d72: $88
	add  a                                           ; $7d73: $87
	sbc  b                                           ; $7d74: $98
	ld   a, b                                        ; $7d75: $78
	sbc  b                                           ; $7d76: $98
	add  a                                           ; $7d77: $87
	adc  c                                           ; $7d78: $89
	adc  b                                           ; $7d79: $88
	sbc  b                                           ; $7d7a: $98
	ld   a, b                                        ; $7d7b: $78
	sbc  b                                           ; $7d7c: $98
	adc  b                                           ; $7d7d: $88
	adc  b                                           ; $7d7e: $88
	adc  b                                           ; $7d7f: $88
	adc  b                                           ; $7d80: $88
	sbc  b                                           ; $7d81: $98
	ld   a, c                                        ; $7d82: $79
	adc  b                                           ; $7d83: $88
	ld   a, b                                        ; $7d84: $78
	sbc  b                                           ; $7d85: $98
	ld   a, b                                        ; $7d86: $78
	adc  c                                           ; $7d87: $89
	ld   a, b                                        ; $7d88: $78
	sub  a                                           ; $7d89: $97
	adc  b                                           ; $7d8a: $88
	ld   a, c                                        ; $7d8b: $79
	sbc  b                                           ; $7d8c: $98
	ld   a, c                                        ; $7d8d: $79
	add  a                                           ; $7d8e: $87
	sbc  b                                           ; $7d8f: $98
	ld   a, c                                        ; $7d90: $79
	adc  c                                           ; $7d91: $89
	add  a                                           ; $7d92: $87
	adc  b                                           ; $7d93: $88
	adc  c                                           ; $7d94: $89
	adc  b                                           ; $7d95: $88
	sbc  b                                           ; $7d96: $98
	adc  b                                           ; $7d97: $88
	ld   a, b                                        ; $7d98: $78
	adc  c                                           ; $7d99: $89
	sbc  b                                           ; $7d9a: $98
	add  a                                           ; $7d9b: $87
	adc  b                                           ; $7d9c: $88
	ld   a, c                                        ; $7d9d: $79
	adc  b                                           ; $7d9e: $88
	adc  b                                           ; $7d9f: $88
	ld   a, b                                        ; $7da0: $78
	adc  b                                           ; $7da1: $88
	add  a                                           ; $7da2: $87
	adc  b                                           ; $7da3: $88
	adc  b                                           ; $7da4: $88
	adc  b                                           ; $7da5: $88
	ld   a, c                                        ; $7da6: $79
	xor  b                                           ; $7da7: $a8
	ld   [hl], a                                     ; $7da8: $77
	adc  c                                           ; $7da9: $89
	adc  b                                           ; $7daa: $88
	adc  c                                           ; $7dab: $89
	add  a                                           ; $7dac: $87
	adc  c                                           ; $7dad: $89
	add  a                                           ; $7dae: $87
	ld   a, b                                        ; $7daf: $78
	sub  a                                           ; $7db0: $97
	adc  b                                           ; $7db1: $88
	sbc  b                                           ; $7db2: $98
	ld   a, b                                        ; $7db3: $78
	adc  b                                           ; $7db4: $88
	adc  b                                           ; $7db5: $88
	ld   a, b                                        ; $7db6: $78
	sbc  b                                           ; $7db7: $98
	adc  b                                           ; $7db8: $88
	ld   [hl], a                                     ; $7db9: $77
	adc  b                                           ; $7dba: $88
	xor  b                                           ; $7dbb: $a8
	ld   a, b                                        ; $7dbc: $78
	add  a                                           ; $7dbd: $87
	adc  b                                           ; $7dbe: $88
	sbc  b                                           ; $7dbf: $98
	adc  b                                           ; $7dc0: $88
	adc  b                                           ; $7dc1: $88
	ld   a, b                                        ; $7dc2: $78
	sbc  b                                           ; $7dc3: $98
	ld   a, b                                        ; $7dc4: $78
	adc  b                                           ; $7dc5: $88
	ld   a, b                                        ; $7dc6: $78
	sbc  b                                           ; $7dc7: $98
	ld   a, b                                        ; $7dc8: $78
	adc  b                                           ; $7dc9: $88
	sub  a                                           ; $7dca: $97
	adc  c                                           ; $7dcb: $89
	ld   [hl], a                                     ; $7dcc: $77
	sbc  b                                           ; $7dcd: $98
	ld   a, b                                        ; $7dce: $78
	adc  b                                           ; $7dcf: $88
	sbc  c                                           ; $7dd0: $99
	adc  b                                           ; $7dd1: $88
	ld   [hl], a                                     ; $7dd2: $77
	adc  c                                           ; $7dd3: $89
	adc  b                                           ; $7dd4: $88
	ld   [hl], a                                     ; $7dd5: $77
	ld   a, b                                        ; $7dd6: $78
	sbc  b                                           ; $7dd7: $98
	sbc  c                                           ; $7dd8: $99
	ld   [hl], a                                     ; $7dd9: $77
	adc  c                                           ; $7dda: $89
	sub  a                                           ; $7ddb: $97
	adc  b                                           ; $7ddc: $88
	adc  b                                           ; $7ddd: $88
	adc  b                                           ; $7dde: $88
	add  a                                           ; $7ddf: $87
	adc  b                                           ; $7de0: $88
	adc  c                                           ; $7de1: $89
	ld   a, b                                        ; $7de2: $78
	sbc  b                                           ; $7de3: $98
	adc  b                                           ; $7de4: $88
	adc  b                                           ; $7de5: $88
	adc  b                                           ; $7de6: $88
	adc  b                                           ; $7de7: $88
	add  a                                           ; $7de8: $87
	ld   a, b                                        ; $7de9: $78
	ld   a, b                                        ; $7dea: $78
	adc  b                                           ; $7deb: $88
	add  a                                           ; $7dec: $87
	adc  b                                           ; $7ded: $88
	adc  b                                           ; $7dee: $88
	adc  b                                           ; $7def: $88
	ld   a, b                                        ; $7df0: $78
	adc  b                                           ; $7df1: $88
	add  a                                           ; $7df2: $87
	adc  b                                           ; $7df3: $88
	adc  b                                           ; $7df4: $88
	adc  b                                           ; $7df5: $88
	sbc  b                                           ; $7df6: $98
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
	sbc  c                                           ; $7e05: $99
	sbc  b                                           ; $7e06: $98
	adc  b                                           ; $7e07: $88
	adc  b                                           ; $7e08: $88
	adc  b                                           ; $7e09: $88
	sbc  b                                           ; $7e0a: $98
	adc  b                                           ; $7e0b: $88
	adc  b                                           ; $7e0c: $88
	adc  b                                           ; $7e0d: $88
	adc  b                                           ; $7e0e: $88
	adc  c                                           ; $7e0f: $89
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

Jump_0d5_7e42:
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
	sbc  d                                           ; $7f15: $9a
	sub  l                                           ; $7f16: $95
	ld   a, b                                        ; $7f17: $78
	adc  d                                           ; $7f18: $8a
	adc  c                                           ; $7f19: $89
	sbc  b                                           ; $7f1a: $98
	ld   d, [hl]                                     ; $7f1b: $56
	xor  h                                           ; $7f1c: $ac
	xor  c                                           ; $7f1d: $a9
	halt                                             ; $7f1e: $76
	adc  b                                           ; $7f1f: $88
	sbc  b                                           ; $7f20: $98
	ld   [hl], a                                     ; $7f21: $77
	xor  h                                           ; $7f22: $ac
	rst  ToBoot                                         ; $7f23: $c7
	inc  sp                                          ; $7f24: $33
	ld   a, l                                        ; $7f25: $7d
	db   $ec                                         ; $7f26: $ec
	ld   h, d                                        ; $7f27: $62
	scf                                              ; $7f28: $37
	cp   [hl]                                        ; $7f29: $be
	or   [hl]                                        ; $7f2a: $b6
	ld   b, h                                        ; $7f2b: $44
	ld   a, c                                        ; $7f2c: $79
	xor  c                                           ; $7f2d: $a9
	halt                                             ; $7f2e: $76
	ld   l, c                                        ; $7f2f: $69
	xor  d                                           ; $7f30: $aa
	halt                                             ; $7f31: $76
	ld   l, b                                        ; $7f32: $68
	xor  e                                           ; $7f33: $ab
	sub  [hl]                                        ; $7f34: $96
	ld   d, l                                        ; $7f35: $55
	adc  e                                           ; $7f36: $8b
	cp   e                                           ; $7f37: $bb
	sbc  c                                           ; $7f38: $99
	ld   d, l                                        ; $7f39: $55
	ld   a, d                                        ; $7f3a: $7a
	res  0, l                                        ; $7f3b: $cb $85
	ld   d, l                                        ; $7f3d: $55
	ld   [hl], a                                     ; $7f3e: $77
	adc  b                                           ; $7f3f: $88
	ld   [hl], a                                     ; $7f40: $77
	ld   a, b                                        ; $7f41: $78
	add  a                                           ; $7f42: $87
	ld   a, b                                        ; $7f43: $78
	sbc  d                                           ; $7f44: $9a
	and  a                                           ; $7f45: $a7
	ld   [hl], a                                     ; $7f46: $77
	adc  c                                           ; $7f47: $89
	sub  a                                           ; $7f48: $97
	ld   a, b                                        ; $7f49: $78
	adc  b                                           ; $7f4a: $88
	ld   [hl], a                                     ; $7f4b: $77
	ld   a, b                                        ; $7f4c: $78
	sbc  c                                           ; $7f4d: $99
	sbc  c                                           ; $7f4e: $99
	sbc  d                                           ; $7f4f: $9a
	call $89a9                                       ; $7f50: $cd $a9 $89
	xor  c                                           ; $7f53: $a9
	ld   h, h                                        ; $7f54: $64
	ld   b, h                                        ; $7f55: $44
	ld   l, b                                        ; $7f56: $68
	adc  $ea                                         ; $7f57: $ce $ea
	ld   b, h                                        ; $7f59: $44
	ld   a, e                                        ; $7f5a: $7b
	ret                                              ; $7f5b: $c9


	ld   sp, $5602                                   ; $7f5c: $31 $02 $56
	ld   h, h                                        ; $7f5f: $64
	ld   b, l                                        ; $7f60: $45
	ld   a, d                                        ; $7f61: $7a
	cp   h                                           ; $7f62: $bc
	xor  c                                           ; $7f63: $a9
	sbc  e                                           ; $7f64: $9b
	cp   h                                           ; $7f65: $bc
	cp   d                                           ; $7f66: $ba
	adc  b                                           ; $7f67: $88
	sbc  d                                           ; $7f68: $9a
	xor  c                                           ; $7f69: $a9
	ld   [hl], a                                     ; $7f6a: $77
	ld   h, a                                        ; $7f6b: $67
	halt                                             ; $7f6c: $76
	ld   d, h                                        ; $7f6d: $54
	ld   [hl-], a                                    ; $7f6e: $32
	ld   hl, $1111                                   ; $7f6f: $21 $11 $11
	ld   b, e                                        ; $7f72: $43
	ld   d, l                                        ; $7f73: $55
	ld   c, b                                        ; $7f74: $48
	sbc  a                                           ; $7f75: $9f
	rst  $38                                         ; $7f76: $ff
	rst  $38                                         ; $7f77: $ff
	rst  $38                                         ; $7f78: $ff
	rst  $38                                         ; $7f79: $ff
	rst  $38                                         ; $7f7a: $ff
	cp   e                                           ; $7f7b: $bb
	sbc  d                                           ; $7f7c: $9a
	sub  a                                           ; $7f7d: $97
	ld   h, l                                        ; $7f7e: $65
	halt                                             ; $7f7f: $76
	add  h                                           ; $7f80: $84
	ld   de, $1111                                   ; $7f81: $11 $11 $11
	ld   de, $5211                                   ; $7f84: $11 $11 $52
	ld   l, c                                        ; $7f87: $69
	cp   a                                           ; $7f88: $bf
	rst  $38                                         ; $7f89: $ff
	rst  $38                                         ; $7f8a: $ff
	rst  $38                                         ; $7f8b: $ff
	db   $fd                                         ; $7f8c: $fd
	cp   $6a                                         ; $7f8d: $fe $6a
	ld   c, d                                        ; $7f8f: $4a
	ld   l, b                                        ; $7f90: $68
	sub  l                                           ; $7f91: $95
	and  a                                           ; $7f92: $a7
	and  a                                           ; $7f93: $a7
	ld   d, h                                        ; $7f94: $54
	ld   de, $1111                                   ; $7f95: $11 $11 $11
	ld   de, $5615                                   ; $7f98: $11 $15 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f9b: $cf
	rst  $38                                         ; $7f9c: $ff
	rst  $38                                         ; $7f9d: $ff
	rst  $38                                         ; $7f9e: $ff
	rst  $38                                         ; $7f9f: $ff
	jp   hl                                          ; $7fa0: $e9


	ld   [hl], c                                     ; $7fa1: $71
	ld   de, $6a14                                   ; $7fa2: $11 $14 $6a
	ld   l, e                                        ; $7fa5: $6b
	rst  JumpTable                                         ; $7fa6: $df
	db   $fd                                         ; $7fa7: $fd
	sub  c                                           ; $7fa8: $91
	ld   de, $1111                                   ; $7fa9: $11 $11 $11
	ld   de, $7f64                                   ; $7fac: $11 $64 $7f
	rst  $38                                         ; $7faf: $ff
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	ld   a, [$1151]                                  ; $7fb3: $fa $51 $11
	ld   de, $ed9b                                   ; $7fb6: $11 $9b $ed
	rst  $38                                         ; $7fb9: $ff
	rst  $38                                         ; $7fba: $ff
	ld   sp, hl                                      ; $7fbb: $f9
	ld   de, $1111                                   ; $7fbc: $11 $11 $11
	ld   de, $5e1b                                   ; $7fbf: $11 $1b $5e
	rst  $38                                         ; $7fc2: $ff
	rst  $38                                         ; $7fc3: $ff
	rst  $38                                         ; $7fc4: $ff
	rst  $38                                         ; $7fc5: $ff
	ld   d, a                                        ; $7fc6: $57
	ld   de, $1111                                   ; $7fc7: $11 $11 $11
	ld   a, a                                        ; $7fca: $7f
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	rst  $38                                         ; $7fcd: $ff
	rst  $38                                         ; $7fce: $ff
	and  c                                           ; $7fcf: $a1
	ld   de, $1111                                   ; $7fd0: $11 $11 $11
	inc  de                                          ; $7fd3: $13
	rst  $38                                         ; $7fd4: $ff
	rst  $38                                         ; $7fd5: $ff
	rst  $38                                         ; $7fd6: $ff
	rst  $38                                         ; $7fd7: $ff
	rst  $38                                         ; $7fd8: $ff
	and  c                                           ; $7fd9: $a1
	ld   de, $1111                                   ; $7fda: $11 $11 $11
	ld   c, l                                        ; $7fdd: $4d
	rst  $38                                         ; $7fde: $ff
	rst  $38                                         ; $7fdf: $ff
	rst  $38                                         ; $7fe0: $ff
	rst  $38                                         ; $7fe1: $ff
	ei                                               ; $7fe2: $fb
	ld   sp, $1111                                   ; $7fe3: $31 $11 $11
	ld   de, $ffbf                                   ; $7fe6: $11 $bf $ff
	rst  $38                                         ; $7fe9: $ff
	rst  $38                                         ; $7fea: $ff
	rst  $38                                         ; $7feb: $ff
	pop  af                                          ; $7fec: $f1
	ld   de, $1111                                   ; $7fed: $11 $11 $11
	dec  de                                          ; $7ff0: $1b
	rst  $38                                         ; $7ff1: $ff
	rst  $38                                         ; $7ff2: $ff
	rst  $38                                         ; $7ff3: $ff
	xor  $ef                                         ; $7ff4: $ee $ef
	push de                                          ; $7ff6: $d5
	ld   de, $1111                                   ; $7ff7: $11 $11 $11
	rra                                              ; $7ffa: $1f
	rst  $38                                         ; $7ffb: $ff
	rst  $38                                         ; $7ffc: $ff
	rst  $38                                         ; $7ffd: $ff
	rst  $38                                         ; $7ffe: $ff
	rst  $38                                         ; $7fff: $ff
