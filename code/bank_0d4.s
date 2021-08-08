; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d4", ROMX[$4000], BANK[$d4]

	adc  b                                           ; $4000: $88
	adc  b                                           ; $4001: $88
	adc  b                                           ; $4002: $88
	adc  b                                           ; $4003: $88
	adc  b                                           ; $4004: $88
	adc  b                                           ; $4005: $88
	adc  b                                           ; $4006: $88
	adc  b                                           ; $4007: $88
	adc  b                                           ; $4008: $88
	adc  b                                           ; $4009: $88
	adc  b                                           ; $400a: $88
	adc  b                                           ; $400b: $88
	adc  b                                           ; $400c: $88
	adc  b                                           ; $400d: $88
	adc  b                                           ; $400e: $88
	adc  b                                           ; $400f: $88
	adc  b                                           ; $4010: $88
	adc  b                                           ; $4011: $88
	adc  b                                           ; $4012: $88
	adc  b                                           ; $4013: $88
	adc  b                                           ; $4014: $88
	adc  b                                           ; $4015: $88
	adc  b                                           ; $4016: $88
	adc  b                                           ; $4017: $88
	adc  b                                           ; $4018: $88
	adc  b                                           ; $4019: $88
	adc  b                                           ; $401a: $88
	adc  b                                           ; $401b: $88
	adc  b                                           ; $401c: $88
	adc  b                                           ; $401d: $88
	adc  b                                           ; $401e: $88
	adc  b                                           ; $401f: $88
	adc  b                                           ; $4020: $88
	adc  b                                           ; $4021: $88
	adc  b                                           ; $4022: $88
	adc  b                                           ; $4023: $88
	adc  b                                           ; $4024: $88
	adc  b                                           ; $4025: $88
	adc  b                                           ; $4026: $88
	adc  b                                           ; $4027: $88
	adc  b                                           ; $4028: $88
	adc  b                                           ; $4029: $88
	adc  b                                           ; $402a: $88
	adc  b                                           ; $402b: $88
	adc  b                                           ; $402c: $88
	adc  b                                           ; $402d: $88
	adc  b                                           ; $402e: $88
	adc  b                                           ; $402f: $88
	adc  c                                           ; $4030: $89
	adc  b                                           ; $4031: $88
	adc  b                                           ; $4032: $88
	adc  b                                           ; $4033: $88
	adc  b                                           ; $4034: $88
	sbc  b                                           ; $4035: $98
	adc  c                                           ; $4036: $89
	adc  b                                           ; $4037: $88
	adc  b                                           ; $4038: $88
	adc  b                                           ; $4039: $88
	adc  b                                           ; $403a: $88
	adc  b                                           ; $403b: $88
	adc  b                                           ; $403c: $88
	sbc  b                                           ; $403d: $98
	adc  b                                           ; $403e: $88
	adc  b                                           ; $403f: $88
	sbc  c                                           ; $4040: $99
	ld   a, b                                        ; $4041: $78
	adc  b                                           ; $4042: $88
	adc  b                                           ; $4043: $88
	sbc  b                                           ; $4044: $98
	adc  b                                           ; $4045: $88
	adc  b                                           ; $4046: $88
	add  a                                           ; $4047: $87
	adc  c                                           ; $4048: $89
	adc  b                                           ; $4049: $88
	adc  b                                           ; $404a: $88
	adc  c                                           ; $404b: $89
	sbc  b                                           ; $404c: $98
	adc  b                                           ; $404d: $88
	adc  b                                           ; $404e: $88
	add  a                                           ; $404f: $87
	adc  b                                           ; $4050: $88
	adc  b                                           ; $4051: $88
	adc  b                                           ; $4052: $88
	adc  b                                           ; $4053: $88
	adc  b                                           ; $4054: $88
	adc  c                                           ; $4055: $89
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	adc  b                                           ; $4058: $88
	adc  b                                           ; $4059: $88
	adc  b                                           ; $405a: $88
	sub  a                                           ; $405b: $97
	adc  b                                           ; $405c: $88
	ld   a, b                                        ; $405d: $78
	sbc  b                                           ; $405e: $98
	sbc  b                                           ; $405f: $98
	adc  c                                           ; $4060: $89
	ld   a, b                                        ; $4061: $78
	add  a                                           ; $4062: $87
	adc  c                                           ; $4063: $89
	adc  b                                           ; $4064: $88
	ld   a, b                                        ; $4065: $78
	adc  b                                           ; $4066: $88
	ld   [hl], a                                     ; $4067: $77
	adc  b                                           ; $4068: $88
	adc  c                                           ; $4069: $89
	add  a                                           ; $406a: $87
	adc  c                                           ; $406b: $89
	ld   a, c                                        ; $406c: $79
	and  a                                           ; $406d: $a7
	ld   a, d                                        ; $406e: $7a
	add  l                                           ; $406f: $85
	adc  c                                           ; $4070: $89
	ld   a, b                                        ; $4071: $78
	add  a                                           ; $4072: $87
	ld   [hl], a                                     ; $4073: $77
	sbc  b                                           ; $4074: $98
	ld   a, c                                        ; $4075: $79
	add  a                                           ; $4076: $87
	add  a                                           ; $4077: $87
	sub  a                                           ; $4078: $97
	ld   a, c                                        ; $4079: $79
	ld   l, c                                        ; $407a: $69
	sbc  b                                           ; $407b: $98
	adc  b                                           ; $407c: $88
	add  a                                           ; $407d: $87
	add  [hl]                                        ; $407e: $86
	ld   a, c                                        ; $407f: $79
	ld   [hl], a                                     ; $4080: $77
	sub  a                                           ; $4081: $97
	ld   a, c                                        ; $4082: $79
	sub  a                                           ; $4083: $97
	ld   a, c                                        ; $4084: $79
	sbc  b                                           ; $4085: $98
	ld   a, c                                        ; $4086: $79
	ld   a, b                                        ; $4087: $78
	sub  a                                           ; $4088: $97
	sbc  b                                           ; $4089: $98
	add  a                                           ; $408a: $87
	ld   l, b                                        ; $408b: $68
	add  a                                           ; $408c: $87
	and  a                                           ; $408d: $a7
	add  a                                           ; $408e: $87
	ld   a, b                                        ; $408f: $78
	adc  b                                           ; $4090: $88
	sbc  c                                           ; $4091: $99
	sub  a                                           ; $4092: $97
	ld   h, a                                        ; $4093: $67
	ld   a, c                                        ; $4094: $79
	sub  a                                           ; $4095: $97
	add  [hl]                                        ; $4096: $86
	adc  c                                           ; $4097: $89
	ld   a, c                                        ; $4098: $79
	sbc  c                                           ; $4099: $99
	sub  a                                           ; $409a: $97
	ld   [hl], a                                     ; $409b: $77
	ld   a, b                                        ; $409c: $78
	ld   a, b                                        ; $409d: $78
	sub  [hl]                                        ; $409e: $96
	adc  b                                           ; $409f: $88
	ld   [hl], a                                     ; $40a0: $77
	ld   l, c                                        ; $40a1: $69
	and  a                                           ; $40a2: $a7
	ld   a, c                                        ; $40a3: $79
	add  a                                           ; $40a4: $87
	ld   [hl], a                                     ; $40a5: $77
	adc  b                                           ; $40a6: $88
	add  [hl]                                        ; $40a7: $86
	add  a                                           ; $40a8: $87
	adc  c                                           ; $40a9: $89
	ld   [hl], a                                     ; $40aa: $77
	ld   a, b                                        ; $40ab: $78
	ld   a, b                                        ; $40ac: $78
	sbc  c                                           ; $40ad: $99
	ld   [hl], a                                     ; $40ae: $77
	adc  b                                           ; $40af: $88
	sub  a                                           ; $40b0: $97
	sbc  b                                           ; $40b1: $98
	ld   l, c                                        ; $40b2: $69
	ld   h, a                                        ; $40b3: $67
	and  a                                           ; $40b4: $a7
	adc  b                                           ; $40b5: $88
	ld   a, c                                        ; $40b6: $79
	ld   a, b                                        ; $40b7: $78
	add  [hl]                                        ; $40b8: $86
	or   a                                           ; $40b9: $b7
	ld   a, c                                        ; $40ba: $79
	ld   a, b                                        ; $40bb: $78
	adc  c                                           ; $40bc: $89
	ld   a, b                                        ; $40bd: $78
	ld   h, a                                        ; $40be: $67
	xor  b                                           ; $40bf: $a8
	ld   [hl], a                                     ; $40c0: $77
	sub  a                                           ; $40c1: $97
	adc  c                                           ; $40c2: $89
	adc  b                                           ; $40c3: $88
	sbc  c                                           ; $40c4: $99
	ld   [hl], a                                     ; $40c5: $77
	add  a                                           ; $40c6: $87
	ld   [hl], a                                     ; $40c7: $77
	add  a                                           ; $40c8: $87
	adc  b                                           ; $40c9: $88
	adc  c                                           ; $40ca: $89
	ld   [hl], a                                     ; $40cb: $77
	sbc  d                                           ; $40cc: $9a
	sbc  c                                           ; $40cd: $99
	xor  b                                           ; $40ce: $a8
	adc  c                                           ; $40cf: $89
	ld   a, b                                        ; $40d0: $78
	adc  b                                           ; $40d1: $88
	ld   a, b                                        ; $40d2: $78
	add  [hl]                                        ; $40d3: $86
	ld   l, b                                        ; $40d4: $68
	ld   a, b                                        ; $40d5: $78
	ld   [hl], a                                     ; $40d6: $77
	add  a                                           ; $40d7: $87
	sub  a                                           ; $40d8: $97
	ld   a, b                                        ; $40d9: $78
	ld   a, c                                        ; $40da: $79
	adc  c                                           ; $40db: $89
	xor  b                                           ; $40dc: $a8
	add  a                                           ; $40dd: $87
	sbc  d                                           ; $40de: $9a
	ld   l, c                                        ; $40df: $69
	add  a                                           ; $40e0: $87
	sub  a                                           ; $40e1: $97
	add  a                                           ; $40e2: $87
	ld   [hl], a                                     ; $40e3: $77
	ld   [hl], a                                     ; $40e4: $77
	adc  b                                           ; $40e5: $88
	ld   [hl], a                                     ; $40e6: $77
	halt                                             ; $40e7: $76
	ld   h, [hl]                                     ; $40e8: $66
	ld   h, [hl]                                     ; $40e9: $66
	ld   [hl], a                                     ; $40ea: $77
	adc  b                                           ; $40eb: $88
	ld   a, c                                        ; $40ec: $79
	sbc  d                                           ; $40ed: $9a
	sbc  e                                           ; $40ee: $9b
	cp   h                                           ; $40ef: $bc
	cp   e                                           ; $40f0: $bb
	jp   z, $a9ba                                    ; $40f1: $ca $ba $a9

	xor  c                                           ; $40f4: $a9
	ld   [hl], a                                     ; $40f5: $77
	ld   d, l                                        ; $40f6: $55
	inc  sp                                          ; $40f7: $33
	inc  hl                                          ; $40f8: $23
	ld   d, c                                        ; $40f9: $51
	ld   [hl+], a                                    ; $40fa: $22
	inc  [hl]                                        ; $40fb: $34
	ld   d, [hl]                                     ; $40fc: $56
	ld   e, b                                        ; $40fd: $58
	xor  d                                           ; $40fe: $aa
	xor  h                                           ; $40ff: $ac
	db   $dd                                         ; $4100: $dd
	db   $dd                                         ; $4101: $dd
	xor  $dc                                         ; $4102: $ee $dc
	call z, $bbcb                                    ; $4104: $cc $cb $bb
	cp   d                                           ; $4107: $ba
	sbc  c                                           ; $4108: $99
	add  [hl]                                        ; $4109: $86
	ld   d, e                                        ; $410a: $53
	ld   de, $1124                                   ; $410b: $11 $24 $11
	ld   de, $4313                                   ; $410e: $11 $13 $43
	ld   c, c                                        ; $4111: $49
	sbc  h                                           ; $4112: $9c
	db   $db                                         ; $4113: $db
	rst  JumpTable                                         ; $4114: $df
	cp   $ee                                         ; $4115: $fe $ee
	rst  $28                                         ; $4117: $ef
	call c, $ddcc                                    ; $4118: $dc $cc $dd
	cp   b                                           ; $411b: $b8
	xor  c                                           ; $411c: $a9
	ld   [hl], a                                     ; $411d: $77
	ld   h, e                                        ; $411e: $63
	ld   [de], a                                     ; $411f: $12
	ld   h, e                                        ; $4120: $63
	ld   de, $4411                                   ; $4121: $11 $11 $44
	ld   d, e                                        ; $4124: $53
	sbc  d                                           ; $4125: $9a
	xor  h                                           ; $4126: $ac
	xor  h                                           ; $4127: $ac
	db   $dd                                         ; $4128: $dd
	db   $db                                         ; $4129: $db
	xor  $dc                                         ; $412a: $ee $dc
	cp   h                                           ; $412c: $bc
	cp   h                                           ; $412d: $bc
	cp   d                                           ; $412e: $ba
	jp   z, Jump_0d4_65a7                            ; $412f: $ca $a7 $65

	ld   hl, $1116                                   ; $4132: $21 $16 $11
	ld   de, $5424                                   ; $4135: $11 $24 $54
	ld   c, h                                        ; $4138: $4c
	sbc  e                                           ; $4139: $9b
	jp   z, $ecdd                                    ; $413a: $ca $dd $ec

	cp   [hl]                                        ; $413d: $be
	sbc  $ca                                         ; $413e: $de $ca
	cp   h                                           ; $4140: $bc
	db   $eb                                         ; $4141: $eb
	xor  e                                           ; $4142: $ab
	xor  c                                           ; $4143: $a9
	ld   h, l                                        ; $4144: $65
	ld   sp, $3116                                   ; $4145: $31 $16 $31
	ld   de, $5414                                   ; $4148: $11 $14 $54
	inc  a                                           ; $414b: $3c
	cp   l                                           ; $414c: $bd
	db   $eb                                         ; $414d: $eb
	rst  JumpTable                                         ; $414e: $df
	db   $ec                                         ; $414f: $ec
	cp   h                                           ; $4150: $bc
	db   $ed                                         ; $4151: $ed
	ret                                              ; $4152: $c9


	cp   l                                           ; $4153: $bd
	call z, $cbba                                    ; $4154: $cc $ba $cb
	ld   h, h                                        ; $4157: $64
	ld   de, $1115                                   ; $4158: $11 $15 $11
	ld   de, $4413                                   ; $415b: $11 $13 $44
	ld   e, a                                        ; $415e: $5f
	call $effd                                       ; $415f: $cd $fd $ef
	db   $eb                                         ; $4162: $eb
	call $cadc                                       ; $4163: $cd $dc $ca
	cp   l                                           ; $4166: $bd
	res  5, e                                        ; $4167: $cb $ab
	cp   d                                           ; $4169: $ba
	ld   h, h                                        ; $416a: $64
	ld   de, $1115                                   ; $416b: $11 $15 $11
	ld   de, $5324                                   ; $416e: $11 $24 $53
	ld   a, a                                        ; $4171: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4172: $cf
	db   $ed                                         ; $4173: $ed
	rst  $38                                         ; $4174: $ff
	reti                                             ; $4175: $d9


	call z, $b9cc                                    ; $4176: $cc $cc $b9
	call $bcab                                       ; $4179: $cd $ab $bc
	xor  c                                           ; $417c: $a9
	ld   d, d                                        ; $417d: $52
	ld   de, $1122                                   ; $417e: $11 $22 $11
	ld   de, $5334                                   ; $4181: $11 $34 $53
	rst  JumpTable                                         ; $4184: $df
	rst  JumpTable                                         ; $4185: $df
	rst  $28                                         ; $4186: $ef
	rst  $38                                         ; $4187: $ff
	cp   h                                           ; $4188: $bc
	db   $dd                                         ; $4189: $dd
	res  5, e                                        ; $418a: $cb $ab
	call c, $baab                                    ; $418c: $dc $ab $ba
	sub  [hl]                                        ; $418f: $96
	ld   sp, $3111                                   ; $4190: $31 $11 $31
	ld   de, $2512                                   ; $4193: $11 $12 $25

Call_0d4_4196:
	ld   c, d                                        ; $4196: $4a
	db   $fc                                         ; $4197: $fc

Call_0d4_4198:
	xor  $ff                                         ; $4198: $ee $ff
	db   $fd                                         ; $419a: $fd
	xor  [hl]                                        ; $419b: $ae
	db   $ec                                         ; $419c: $ec
	cp   d                                           ; $419d: $ba
	cp   [hl]                                        ; $419e: $be
	ret                                              ; $419f: $c9


	cp   e                                           ; $41a0: $bb
	xor  b                                           ; $41a1: $a8
	ld   [hl], e                                     ; $41a2: $73
	ld   de, $1113                                   ; $41a3: $11 $13 $11
	ld   de, $4512                                   ; $41a6: $11 $12 $45
	adc  a                                           ; $41a9: $8f
	sbc  $ff                                         ; $41aa: $de $ff
	rst  $38                                         ; $41ac: $ff
	db   $eb                                         ; $41ad: $eb
	xor  $db                                         ; $41ae: $ee $db
	cp   e                                           ; $41b0: $bb
	db   $dd                                         ; $41b1: $dd
	xor  e                                           ; $41b2: $ab
	call c, Call_0d4_4198                            ; $41b3: $dc $98 $41
	ld   de, $1111                                   ; $41b6: $11 $11 $11
	ld   de, $7612                                   ; $41b9: $11 $12 $76
	rst  $38                                         ; $41bc: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41bd: $cf
	rst  $38                                         ; $41be: $ff
	rst  $38                                         ; $41bf: $ff
	call $ccfd                                       ; $41c0: $cd $fd $cc
	db   $db                                         ; $41c3: $db
	db   $db                                         ; $41c4: $db
	xor  l                                           ; $41c5: $ad
	ret                                              ; $41c6: $c9


	add  l                                           ; $41c7: $85
	ld   de, $1111                                   ; $41c8: $11 $11 $11
	ld   de, $1611                                   ; $41cb: $11 $11 $16
	ld   l, e                                        ; $41ce: $6b
	db   $fc                                         ; $41cf: $fc
	rst  $38                                         ; $41d0: $ff
	rst  $38                                         ; $41d1: $ff
	cp   $df                                         ; $41d2: $fe $df
	call c, $cccd                                    ; $41d4: $dc $cd $cc
	cp   e                                           ; $41d7: $bb
	call z, Call_0d4_62a8                            ; $41d8: $cc $a8 $62
	ld   de, $1111                                   ; $41db: $11 $11 $11
	ld   de, $5611                                   ; $41de: $11 $11 $56
	cp   a                                           ; $41e1: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41e2: $cf
	rst  $38                                         ; $41e3: $ff
	rst  $38                                         ; $41e4: $ff
	rst  $38                                         ; $41e5: $ff
	cp   $dc                                         ; $41e6: $fe $dc
	db   $fc                                         ; $41e8: $fc
	call z, $b9bc                                    ; $41e9: $cc $bc $b9
	add  [hl]                                        ; $41ec: $86
	ld   hl, $1111                                   ; $41ed: $21 $11 $11
	ld   de, $1411                                   ; $41f0: $11 $11 $14
	ld   e, e                                        ; $41f3: $5b
	db   $db                                         ; $41f4: $db
	rst  $38                                         ; $41f5: $ff
	rst  $38                                         ; $41f6: $ff
	rst  $38                                         ; $41f7: $ff
	rst  $38                                         ; $41f8: $ff
	db   $dd                                         ; $41f9: $dd
	rst  $28                                         ; $41fa: $ef
	set  1, h                                        ; $41fb: $cb $cc
	res  3, c                                        ; $41fd: $cb $99
	ld   [hl], e                                     ; $41ff: $73
	ld   de, $1111                                   ; $4200: $11 $11 $11
	ld   de, $3511                                   ; $4203: $11 $11 $35
	adc  h                                           ; $4206: $8c
	xor  a                                           ; $4207: $af
	rst  $38                                         ; $4208: $ff
	rst  $38                                         ; $4209: $ff
	rst  $38                                         ; $420a: $ff
	db   $fd                                         ; $420b: $fd
	xor  $fc                                         ; $420c: $ee $fc
	call z, $bacc                                    ; $420e: $cc $cc $ba
	xor  c                                           ; $4211: $a9
	ld   d, c                                        ; $4212: $51
	ld   de, $1111                                   ; $4213: $11 $11 $11
	ld   de, $4511                                   ; $4216: $11 $11 $45
	sbc  c                                           ; $4219: $99
	sbc  $ef                                         ; $421a: $de $ef
	rst  $38                                         ; $421c: $ff
	cp   $ef                                         ; $421d: $fe $ef
	xor  $dd                                         ; $421f: $ee $dd
	db   $ec                                         ; $4221: $ec
	call $a8cb                                       ; $4222: $cd $cb $a8
	ld   d, e                                        ; $4225: $53
	ld   de, $1111                                   ; $4226: $11 $11 $11
	ld   de, $2611                                   ; $4229: $11 $11 $26
	adc  c                                           ; $422c: $89
	call $ffee                                       ; $422d: $cd $ee $ff
	cp   $ff                                         ; $4230: $fe $ff
	rst  $38                                         ; $4232: $ff
	rst  $28                                         ; $4233: $ef
	xor  $de                                         ; $4234: $ee $de
	call c, Call_0d4_52b7                            ; $4236: $dc $b7 $52
	ld   de, $1111                                   ; $4239: $11 $11 $11
	ld   de, $2611                                   ; $423c: $11 $11 $26
	ld   a, d                                        ; $423f: $7a
	call $fffe                                       ; $4240: $cd $fe $ff
	rst  $38                                         ; $4243: $ff
	rst  $38                                         ; $4244: $ff
	rst  $38                                         ; $4245: $ff
	rst  $38                                         ; $4246: $ff
	rst  $28                                         ; $4247: $ef
	db   $dd                                         ; $4248: $dd
	call z, Call_0d4_4196                            ; $4249: $cc $96 $41
	ld   de, $1111                                   ; $424c: $11 $11 $11
	ld   de, $4711                                   ; $424f: $11 $11 $47
	sbc  e                                           ; $4252: $9b
	adc  $ff                                         ; $4253: $ce $ff
	rst  $38                                         ; $4255: $ff
	rst  $38                                         ; $4256: $ff
	rst  $38                                         ; $4257: $ff
	rst  $38                                         ; $4258: $ff
	cp   $ee                                         ; $4259: $fe $ee
	sbc  $ca                                         ; $425b: $de $ca
	ld   [hl], l                                     ; $425d: $75
	ld   hl, $1111                                   ; $425e: $21 $11 $11
	ld   de, $1211                                   ; $4261: $11 $11 $12
	ld   l, c                                        ; $4264: $69
	xor  h                                           ; $4265: $ac
	sbc  $ff                                         ; $4266: $de $ff
	rst  $38                                         ; $4268: $ff
	rst  $38                                         ; $4269: $ff
	rst  $38                                         ; $426a: $ff
	rst  $38                                         ; $426b: $ff
	cp   $fd                                         ; $426c: $fe $fd
	db   $dd                                         ; $426e: $dd
	cp   c                                           ; $426f: $b9
	ld   h, e                                        ; $4270: $63
	ld   de, $1111                                   ; $4271: $11 $11 $11
	ld   de, $2511                                   ; $4274: $11 $11 $25
	adc  c                                           ; $4277: $89
	cp   h                                           ; $4278: $bc
	xor  $ff                                         ; $4279: $ee $ff
	rst  $38                                         ; $427b: $ff
	rst  $38                                         ; $427c: $ff
	rst  $38                                         ; $427d: $ff
	rst  $28                                         ; $427e: $ef
	xor  $de                                         ; $427f: $ee $de
	db   $db                                         ; $4281: $db
	and  [hl]                                        ; $4282: $a6
	ld   sp, $1111                                   ; $4283: $31 $11 $11
	ld   de, $1211                                   ; $4286: $11 $11 $12
	ld   e, b                                        ; $4289: $58
	sbc  h                                           ; $428a: $9c
	sbc  $ef                                         ; $428b: $de $ef
	rst  $38                                         ; $428d: $ff
	rst  $38                                         ; $428e: $ff
	rst  $38                                         ; $428f: $ff
	cp   $fe                                         ; $4290: $fe $fe
	db   $ed                                         ; $4292: $ed
	db   $dd                                         ; $4293: $dd
	cp   c                                           ; $4294: $b9
	ld   d, e                                        ; $4295: $53
	ld   de, $1111                                   ; $4296: $11 $11 $11
	ld   de, $2611                                   ; $4299: $11 $11 $26
	adc  e                                           ; $429c: $8b
	adc  $ff                                         ; $429d: $ce $ff
	rst  $38                                         ; $429f: $ff
	rst  $38                                         ; $42a0: $ff
	rst  $38                                         ; $42a1: $ff
	rst  $38                                         ; $42a2: $ff
	rst  $38                                         ; $42a3: $ff
	db   $dd                                         ; $42a4: $dd
	call z, Call_0d4_73b9                            ; $42a5: $cc $b9 $73
	ld   de, $1111                                   ; $42a8: $11 $11 $11
	ld   de, $1511                                   ; $42ab: $11 $11 $15
	adc  d                                           ; $42ae: $8a
	cp   l                                           ; $42af: $bd
	rst  $28                                         ; $42b0: $ef
	rst  $38                                         ; $42b1: $ff
	rst  $38                                         ; $42b2: $ff
	rst  $38                                         ; $42b3: $ff
	rst  $38                                         ; $42b4: $ff
	rst  $38                                         ; $42b5: $ff
	db   $dd                                         ; $42b6: $dd
	call z, Call_0d4_74c9                            ; $42b7: $cc $c9 $74
	ld   de, $1111                                   ; $42ba: $11 $11 $11
	ld   de, $1411                                   ; $42bd: $11 $11 $14
	adc  c                                           ; $42c0: $89
	cp   l                                           ; $42c1: $bd
	xor  $ff                                         ; $42c2: $ee $ff
	rst  $38                                         ; $42c4: $ff
	rst  $38                                         ; $42c5: $ff
	rst  $38                                         ; $42c6: $ff
	cp   $ec                                         ; $42c7: $fe $ec
	call c, Call_0d4_74b9                            ; $42c9: $dc $b9 $74
	ld   de, $1111                                   ; $42cc: $11 $11 $11
	ld   de, $1511                                   ; $42cf: $11 $11 $15
	adc  c                                           ; $42d2: $89
	adc  $ef                                         ; $42d3: $ce $ef
	rst  $38                                         ; $42d5: $ff
	rst  $38                                         ; $42d6: $ff
	rst  $38                                         ; $42d7: $ff
	rst  $38                                         ; $42d8: $ff
	xor  $ed                                         ; $42d9: $ee $ed
	cp   d                                           ; $42db: $ba
	and  a                                           ; $42dc: $a7
	ld   d, d                                        ; $42dd: $52
	ld   de, $1111                                   ; $42de: $11 $11 $11
	ld   de, $3711                                   ; $42e1: $11 $11 $37
	sbc  e                                           ; $42e4: $9b
	sbc  $ef                                         ; $42e5: $de $ef
	rst  $38                                         ; $42e7: $ff
	rst  $38                                         ; $42e8: $ff
	rst  $38                                         ; $42e9: $ff
	rst  $38                                         ; $42ea: $ff
	cp   $dc                                         ; $42eb: $fe $dc
	xor  d                                           ; $42ed: $aa
	add  l                                           ; $42ee: $85
	ld   sp, $1111                                   ; $42ef: $31 $11 $11
	ld   de, $1211                                   ; $42f2: $11 $11 $12
	ld   l, c                                        ; $42f5: $69
	cp   l                                           ; $42f6: $bd
	rst  $28                                         ; $42f7: $ef
	rst  $38                                         ; $42f8: $ff
	rst  $38                                         ; $42f9: $ff
	rst  $38                                         ; $42fa: $ff
	rst  $38                                         ; $42fb: $ff
	rst  $38                                         ; $42fc: $ff
	db   $fc                                         ; $42fd: $fc
	cp   e                                           ; $42fe: $bb
	and  a                                           ; $42ff: $a7
	ld   b, d                                        ; $4300: $42
	ld   de, $1111                                   ; $4301: $11 $11 $11
	ld   de, $4611                                   ; $4304: $11 $11 $46
	sbc  e                                           ; $4307: $9b
	sbc  $ff                                         ; $4308: $de $ff
	rst  $38                                         ; $430a: $ff
	rst  $38                                         ; $430b: $ff
	rst  $38                                         ; $430c: $ff
	rst  $38                                         ; $430d: $ff
	cp   $db                                         ; $430e: $fe $db
	xor  c                                           ; $4310: $a9
	ld   d, e                                        ; $4311: $53
	ld   de, $1111                                   ; $4312: $11 $11 $11
	ld   de, $3511                                   ; $4315: $11 $11 $35
	ld   a, e                                        ; $4318: $7b
	sbc  $ff                                         ; $4319: $de $ff
	rst  $38                                         ; $431b: $ff
	rst  $38                                         ; $431c: $ff
	rst  $38                                         ; $431d: $ff
	rst  $38                                         ; $431e: $ff
	sbc  $cc                                         ; $431f: $de $cc
	cp   b                                           ; $4321: $b8
	ld   h, e                                        ; $4322: $63
	ld   de, $1111                                   ; $4323: $11 $11 $11
	ld   de, $4511                                   ; $4326: $11 $11 $45
	ld   l, l                                        ; $4329: $6d
	call $ffff                                       ; $432a: $cd $ff $ff
	rst  $38                                         ; $432d: $ff
	rst  $38                                         ; $432e: $ff
	rst  $38                                         ; $432f: $ff
	cp   $bb                                         ; $4330: $fe $bb
	sub  [hl]                                        ; $4332: $96
	ld   d, e                                        ; $4333: $53
	ld   de, $1111                                   ; $4334: $11 $11 $11
	ld   de, $4413                                   ; $4337: $11 $13 $44
	call $ffbf                                       ; $433a: $cd $bf $ff
	rst  $38                                         ; $433d: $ff
	rst  $38                                         ; $433e: $ff
	rst  $38                                         ; $433f: $ff
	rst  $38                                         ; $4340: $ff
	db   $eb                                         ; $4341: $eb
	cp   c                                           ; $4342: $b9
	ld   h, l                                        ; $4343: $65
	ld   b, c                                        ; $4344: $41
	ld   de, $1111                                   ; $4345: $11 $11 $11
	ld   de, $4b34                                   ; $4348: $11 $34 $4b
	cp   d                                           ; $434b: $ba
	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	cp   $ff                                         ; $434e: $fe $ff
	rst  $38                                         ; $4350: $ff
	db   $ed                                         ; $4351: $ed
	xor  c                                           ; $4352: $a9
	sub  e                                           ; $4353: $93
	ld   b, h                                        ; $4354: $44
	ld   de, $1121                                   ; $4355: $11 $21 $11
	ld   de, $3926                                   ; $4358: $11 $26 $39
	db   $eb                                         ; $435b: $eb
	rst  $38                                         ; $435c: $ff
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	rst  $38                                         ; $435f: $ff
	cp   $ee                                         ; $4360: $fe $ee
	adc  c                                           ; $4362: $89
	ld   [hl], d                                     ; $4363: $72
	ld   b, e                                        ; $4364: $43
	ld   de, $1111                                   ; $4365: $11 $11 $11
	ld   de, $4a36                                   ; $4368: $11 $36 $4a
	db   $db                                         ; $436b: $db
	rst  $38                                         ; $436c: $ff
	rst  $38                                         ; $436d: $ff
	rst  $38                                         ; $436e: $ff
	rst  $38                                         ; $436f: $ff
	db   $fd                                         ; $4370: $fd
	db   $eb                                         ; $4371: $eb
	ld   a, b                                        ; $4372: $78
	ld   b, d                                        ; $4373: $42

Call_0d4_4374:
	ld   b, c                                        ; $4374: $41
	ld   de, $1111                                   ; $4375: $11 $11 $11
	ld   [de], a                                     ; $4378: $12
	ld   d, l                                        ; $4379: $55
	sbc  h                                           ; $437a: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $437b: $cf
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	rst  $38                                         ; $437e: $ff
	rst  $38                                         ; $437f: $ff
	db   $ed                                         ; $4380: $ed
	rst  ToBoot                                         ; $4381: $c7
	ld   h, e                                        ; $4382: $63
	inc  hl                                          ; $4383: $23
	ld   de, $1111                                   ; $4384: $11 $11 $11
	ld   de, $5b25                                   ; $4387: $11 $25 $5b
	cp   h                                           ; $438a: $bc
	rst  $38                                         ; $438b: $ff
	rst  $38                                         ; $438c: $ff
	rst  $38                                         ; $438d: $ff
	rst  $38                                         ; $438e: $ff
	rst  $38                                         ; $438f: $ff
	jp   c, $2376                                    ; $4390: $da $76 $23

	ld   hl, $1111                                   ; $4393: $21 $11 $11
	ld   de, $5714                                   ; $4396: $11 $14 $57
	cp   h                                           ; $4399: $bc
	rst  $28                                         ; $439a: $ef
	rst  $38                                         ; $439b: $ff
	rst  $38                                         ; $439c: $ff
	rst  $38                                         ; $439d: $ff
	rst  $38                                         ; $439e: $ff
	call c, $4297                                    ; $439f: $dc $97 $42
	ld   b, c                                        ; $43a2: $41
	ld   [de], a                                     ; $43a3: $12
	ld   de, $1211                                   ; $43a4: $11 $11 $12
	ld   d, l                                        ; $43a7: $55
	xor  e                                           ; $43a8: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43a9: $cf
	rst  $38                                         ; $43aa: $ff
	rst  $38                                         ; $43ab: $ff
	rst  $38                                         ; $43ac: $ff
	rst  $38                                         ; $43ad: $ff
	db   $ec                                         ; $43ae: $ec
	sub  a                                           ; $43af: $97
	ld   b, d                                        ; $43b0: $42
	ld   b, c                                        ; $43b1: $41
	ld   [de], a                                     ; $43b2: $12
	ld   de, $1211                                   ; $43b3: $11 $11 $12
	ld   b, l                                        ; $43b6: $45
	xor  d                                           ; $43b7: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43b8: $cf
	rst  $38                                         ; $43b9: $ff
	rst  $38                                         ; $43ba: $ff
	rst  $38                                         ; $43bb: $ff
	rst  $38                                         ; $43bc: $ff
	db   $ed                                         ; $43bd: $ed
	add  [hl]                                        ; $43be: $86
	ld   b, e                                        ; $43bf: $43
	ld   b, c                                        ; $43c0: $41
	ld   sp, $1111                                   ; $43c1: $31 $11 $11
	inc  de                                          ; $43c4: $13
	ld   b, [hl]                                     ; $43c5: $46
	cp   d                                           ; $43c6: $ba
	rst  JumpTable                                         ; $43c7: $df
	rst  $38                                         ; $43c8: $ff
	rst  $38                                         ; $43c9: $ff
	rst  $38                                         ; $43ca: $ff
	cp   $eb                                         ; $43cb: $fe $eb
	ld   h, l                                        ; $43cd: $65
	inc  h                                           ; $43ce: $24
	ld   de, $1251                                   ; $43cf: $11 $51 $12
	ld   de, $4a34                                   ; $43d2: $11 $34 $4a
	cp   d                                           ; $43d5: $ba
	rst  $38                                         ; $43d6: $ff
	rst  $38                                         ; $43d7: $ff
	rst  $38                                         ; $43d8: $ff
	rst  $38                                         ; $43d9: $ff
	xor  $c7                                         ; $43da: $ee $c7
	ld   d, e                                        ; $43dc: $53
	ld   b, c                                        ; $43dd: $41
	ld   d, $11                                      ; $43de: $16 $11
	ld   sp, $4313                                   ; $43e0: $31 $13 $43
	sbc  e                                           ; $43e3: $9b
	sbc  [hl]                                        ; $43e4: $9e
	rst  $38                                         ; $43e5: $ff
	rst  $38                                         ; $43e6: $ff
	rst  $38                                         ; $43e7: $ff
	rst  $38                                         ; $43e8: $ff
	call c, Call_0d4_4374                            ; $43e9: $dc $74 $43
	ld   de, $1461                                   ; $43ec: $11 $61 $14
	ld   de, $3925                                   ; $43ef: $11 $25 $39
	jp   c, $ffdf                                    ; $43f2: $da $df $ff

	rst  $38                                         ; $43f5: $ff
	rst  $38                                         ; $43f6: $ff
	db   $ed                                         ; $43f7: $ed
	rst  ToBoot                                         ; $43f8: $c7
	inc  [hl]                                        ; $43f9: $34
	ld   b, c                                        ; $43fa: $41
	ld   d, $11                                      ; $43fb: $16 $11
	ld   sp, $5313                                   ; $43fd: $31 $13 $53
	cp   l                                           ; $4400: $bd
	sbc  [hl]                                        ; $4401: $9e
	rst  $38                                         ; $4402: $ff
	rst  $38                                         ; $4403: $ff
	rst  $38                                         ; $4404: $ff
	cp   $cc                                         ; $4405: $fe $cc
	ld   d, e                                        ; $4407: $53
	ld   d, e                                        ; $4408: $53
	ld   [de], a                                     ; $4409: $12
	ld   b, c                                        ; $440a: $41
	ld   de, $4411                                   ; $440b: $11 $11 $44
	ld   c, l                                        ; $440e: $4d
	jp   z, $ffff                                    ; $440f: $ca $ff $ff

	rst  $38                                         ; $4412: $ff
	rst  $38                                         ; $4413: $ff
	res  4, d                                        ; $4414: $cb $a2
	dec  [hl]                                        ; $4416: $35
	ld   de, $1371                                   ; $4417: $11 $71 $13
	ld   de, $3a16                                   ; $441a: $11 $16 $3a
	db   $db                                         ; $441d: $db
	rst  $28                                         ; $441e: $ef
	rst  $38                                         ; $441f: $ff
	rst  $38                                         ; $4420: $ff
	rst  $38                                         ; $4421: $ff
	ld   sp, hl                                      ; $4422: $f9
	call nz, $1116                                   ; $4423: $c4 $16 $11
	ld   h, c                                        ; $4426: $61
	inc  d                                           ; $4427: $14
	ld   de, $5714                                   ; $4428: $11 $14 $57
	db   $ec                                         ; $442b: $ec
	rst  JumpTable                                         ; $442c: $df
	rst  $38                                         ; $442d: $ff
	rst  $38                                         ; $442e: $ff
	rst  $38                                         ; $442f: $ff
	ei                                               ; $4430: $fb
	and  [hl]                                        ; $4431: $a6
	ld   d, $11                                      ; $4432: $16 $11
	ld   h, c                                        ; $4434: $61
	ld   d, $11                                      ; $4435: $16 $11
	inc  sp                                          ; $4437: $33
	ld   b, a                                        ; $4438: $47
	db   $eb                                         ; $4439: $eb
	rst  $28                                         ; $443a: $ef
	rst  $38                                         ; $443b: $ff
	rst  $38                                         ; $443c: $ff
	rst  $38                                         ; $443d: $ff
	ei                                               ; $443e: $fb
	sub  l                                           ; $443f: $95
	rla                                              ; $4440: $17
	ld   de, $1681                                   ; $4441: $11 $81 $16
	ld   de, $4932                                   ; $4444: $11 $32 $49
	ld   [$ffff], a                                  ; $4447: $ea $ff $ff
	rst  $38                                         ; $444a: $ff
	rst  $38                                         ; $444b: $ff
	ei                                               ; $444c: $fb
	sub  d                                           ; $444d: $92
	rla                                              ; $444e: $17
	ld   de, $1271                                   ; $444f: $11 $71 $12
	inc  de                                          ; $4452: $13
	ld   [hl-], a                                    ; $4453: $32
	ld   l, l                                        ; $4454: $6d
	set  7, a                                        ; $4455: $cb $ff
	rst  $38                                         ; $4457: $ff
	rst  $38                                         ; $4458: $ff
	rst  $38                                         ; $4459: $ff
	ret  z                                           ; $445a: $c8

	ld   [hl], c                                     ; $445b: $71
	ld   h, c                                        ; $445c: $61
	dec  de                                          ; $445d: $1b
	ld   de, $1791                                   ; $445e: $11 $91 $17
	inc  de                                          ; $4461: $13
	cp   l                                           ; $4462: $bd
	xor  a                                           ; $4463: $af
	rst  $38                                         ; $4464: $ff
	rst  $38                                         ; $4465: $ff
	rst  $38                                         ; $4466: $ff
	rst  $38                                         ; $4467: $ff
	add  [hl]                                        ; $4468: $86
	dec  d                                           ; $4469: $15
	ld   de, $1bc1                                   ; $446a: $11 $c1 $1b
	ld   de, $1c82                                   ; $446d: $11 $82 $1c
	ld   hl, sp-$01                                  ; $4470: $f8 $ff
	rst  $38                                         ; $4472: $ff
	rst  $38                                         ; $4473: $ff
	rst  $38                                         ; $4474: $ff
	or   $61                                         ; $4475: $f6 $61
	ld   d, c                                        ; $4477: $51
	ld   e, $11                                      ; $4478: $1e $11
	pop  af                                          ; $447a: $f1
	dec  de                                          ; $447b: $1b
	ld   sp, $7fff                                   ; $447c: $31 $ff $7f
	rst  $38                                         ; $447f: $ff
	rst  $38                                         ; $4480: $ff
	rst  $38                                         ; $4481: $ff
	rst  $38                                         ; $4482: $ff
	inc  sp                                          ; $4483: $33
	ld   h, $11                                      ; $4484: $26 $11
	pop  af                                          ; $4486: $f1
	rra                                              ; $4487: $1f
	ld   de, $1fe2                                   ; $4488: $11 $e2 $1f
	rst  $30                                         ; $448b: $f7
	rst  $38                                         ; $448c: $ff
	rst  $38                                         ; $448d: $ff
	rst  $38                                         ; $448e: $ff
	rst  JumpTable                                         ; $448f: $df
	or   c                                           ; $4490: $b1
	jr   jr_0d4_44a4                                 ; $4491: $18 $11

	pop  hl                                          ; $4493: $e1
	rra                                              ; $4494: $1f
	ld   de, $199d                                   ; $4495: $11 $9d $19
	ld   sp, hl                                      ; $4498: $f9
	rst  $38                                         ; $4499: $ff
	rst  $38                                         ; $449a: $ff
	rst  $38                                         ; $449b: $ff
	sbc  $f2                                         ; $449c: $de $f2
	add  hl, de                                      ; $449e: $19
	add  c                                           ; $449f: $81
	cpl                                              ; $44a0: $2f
	ld   [de], a                                     ; $44a1: $12
	pop  bc                                          ; $44a2: $c1
	rra                                              ; $44a3: $1f

jr_0d4_44a4:
	ld   b, c                                        ; $44a4: $41
	rst  $38                                         ; $44a5: $ff
	rst  $38                                         ; $44a6: $ff
	rst  $38                                         ; $44a7: $ff
	rst  $38                                         ; $44a8: $ff
	ld   sp, hl                                      ; $44a9: $f9
	db   $fc                                         ; $44aa: $fc
	ld   de, $1ff1                                   ; $44ab: $11 $f1 $1f
	ld   de, $1ff1                                   ; $44ae: $11 $f1 $1f
	and  c                                           ; $44b1: $a1
	rst  $38                                         ; $44b2: $ff
	rst  $38                                         ; $44b3: $ff
	rst  $38                                         ; $44b4: $ff
	rst  $38                                         ; $44b5: $ff
	ld   a, [$119c]                                  ; $44b6: $fa $9c $11
	pop  af                                          ; $44b9: $f1
	rra                                              ; $44ba: $1f
	ld   de, $1fe1                                   ; $44bb: $11 $e1 $1f
	add  h                                           ; $44be: $84
	cp   $ff                                         ; $44bf: $fe $ff
	rst  $38                                         ; $44c1: $ff
	rst  $38                                         ; $44c2: $ff
	db   $fc                                         ; $44c3: $fc
	ld   b, a                                        ; $44c4: $47
	ld   [de], a                                     ; $44c5: $12
	ld   d, c                                        ; $44c6: $51
	or   e                                           ; $44c7: $b3
	dec  de                                          ; $44c8: $1b
	ld   b, c                                        ; $44c9: $41
	ld   c, a                                        ; $44ca: $4f
	dec  a                                           ; $44cb: $3d
	db   $fd                                         ; $44cc: $fd
	rst  $38                                         ; $44cd: $ff
	rst  $38                                         ; $44ce: $ff
	rst  $38                                         ; $44cf: $ff
	ld   a, [$1b11]                                  ; $44d0: $fa $11 $1b
	ld   de, $1ef1                                   ; $44d3: $11 $f1 $1e
	ld   de, $3fef                                   ; $44d6: $11 $ef $3f
	rst  $38                                         ; $44d9: $ff
	rst  $38                                         ; $44da: $ff
	rst  $38                                         ; $44db: $ff
	rst  $38                                         ; $44dc: $ff
	pop  af                                          ; $44dd: $f1
	ld   de, $1f71                                   ; $44de: $11 $71 $1f
	ld   de, $13c3                                   ; $44e1: $11 $c3 $13
	ld   hl, sp-$01                                  ; $44e4: $f8 $ff
	rst  $38                                         ; $44e6: $ff
	rst  $38                                         ; $44e7: $ff
	rst  $38                                         ; $44e8: $ff
	cp   a                                           ; $44e9: $bf
	add  c                                           ; $44ea: $81
	dec  d                                           ; $44eb: $15
	ld   de, $15b1                                   ; $44ec: $11 $b1 $15
	ld   [hl-], a                                    ; $44ef: $32
	ld   a, $cf                                      ; $44f0: $3e $cf
	cp   $ff                                         ; $44f2: $fe $ff
	rst  $38                                         ; $44f4: $ff
	ei                                               ; $44f5: $fb
	ret  z                                           ; $44f6: $c8

	ld   de, $1d51                                   ; $44f7: $11 $51 $1d
	ld   de, $3a71                                   ; $44fa: $11 $71 $3a
	and  $ff                                         ; $44fd: $e6 $ff
	cp   a                                           ; $44ff: $bf
	rst  $38                                         ; $4500: $ff
	rst  $38                                         ; $4501: $ff
	xor  [hl]                                        ; $4502: $ae
	ld   de, $1117                                   ; $4503: $11 $17 $11
	pop  af                                          ; $4506: $f1
	add  hl, de                                      ; $4507: $19
	scf                                              ; $4508: $37
	sbc  $8f                                         ; $4509: $de $8f
	rst  JumpTable                                         ; $450b: $df
	rst  $38                                         ; $450c: $ff
	rst  $38                                         ; $450d: $ff
	ld   a, [$11e1]                                  ; $450e: $fa $e1 $11
	add  c                                           ; $4511: $81
	rra                                              ; $4512: $1f
	ld   de, $ff47                                   ; $4513: $11 $47 $ff
	ld   a, a                                        ; $4516: $7f
	db   $f4                                         ; $4517: $f4
	rst  $38                                         ; $4518: $ff
	rst  $38                                         ; $4519: $ff
	db   $fc                                         ; $451a: $fc
	rl   c                                           ; $451b: $cb $11
	and  c                                           ; $451d: $a1
	inc  d                                           ; $451e: $14
	sub  c                                           ; $451f: $91
	and  c                                           ; $4520: $a1
	rst  JumpTable                                         ; $4521: $df
	pop  af                                          ; $4522: $f1
	rst  $38                                         ; $4523: $ff
	ld   a, a                                        ; $4524: $7f
	rst  $38                                         ; $4525: $ff
	cp   $1f                                         ; $4526: $fe $1f
	ld   de, $111c                                   ; $4528: $11 $1c $11
	pop  bc                                          ; $452b: $c1
	db   $db                                         ; $452c: $db
	rra                                              ; $452d: $1f
	db   $fd                                         ; $452e: $fd
	ld   a, a                                        ; $452f: $7f
	rst  $28                                         ; $4530: $ef
	ld   sp, hl                                      ; $4531: $f9
	rst  $38                                         ; $4532: $ff
	ld   d, c                                        ; $4533: $51
	ld   d, c                                        ; $4534: $51
	ld   a, [de]                                     ; $4535: $1a
	ld   de, $1fe1                                   ; $4536: $11 $e1 $1f
	jr   @+$01                                       ; $4539: $18 $ff

	ccf                                              ; $453b: $3f
	rst  $38                                         ; $453c: $ff
	db   $fd                                         ; $453d: $fd
	rst  $28                                         ; $453e: $ef
	pop  bc                                          ; $453f: $c1
	ld   [hl], c                                     ; $4540: $71
	dec  d                                           ; $4541: $15
	ld   hl, $1f42                                   ; $4542: $21 $42 $1f
	add  c                                           ; $4545: $81
	rst  $38                                         ; $4546: $ff
	xor  a                                           ; $4547: $af
	rst  $30                                         ; $4548: $f7
	rst  $38                                         ; $4549: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $454a: $cf
	pop  af                                          ; $454b: $f1
	sub  c                                           ; $454c: $91
	ld   de, $1581                                   ; $454d: $11 $81 $15
	rra                                              ; $4550: $1f
	db   $f4                                         ; $4551: $f4
	sbc  a                                           ; $4552: $9f
	rst  JumpTable                                         ; $4553: $df
	db   $f4                                         ; $4554: $f4
	rst  $38                                         ; $4555: $ff
	rst  $38                                         ; $4556: $ff
	pop  af                                          ; $4557: $f1
	inc  [hl]                                        ; $4558: $34

jr_0d4_4559:
	ld   de, $1e21                                   ; $4559: $11 $21 $1e
	inc  de                                          ; $455c: $13
	ld   sp, hl                                      ; $455d: $f9
	cp   a                                           ; $455e: $bf
	call c, $effd                                    ; $455f: $dc $fd $ef
	rst  $28                                         ; $4562: $ef
	rst  $30                                         ; $4563: $f7
	ld   d, $11                                      ; $4564: $16 $11
	ld   de, $311d                                   ; $4566: $11 $1d $31
	ld   hl, sp-$61                                  ; $4569: $f8 $9f
	ld   sp, hl                                      ; $456b: $f9
	rst  $38                                         ; $456c: $ff
	xor  a                                           ; $456d: $af
	rst  $38                                         ; $456e: $ff
	db   $fd                                         ; $456f: $fd
	scf                                              ; $4570: $37
	ld   de, $1711                                   ; $4571: $11 $11 $17
	pop  hl                                          ; $4574: $e1
	ld   l, b                                        ; $4575: $68
	ld   c, a                                        ; $4576: $4f
	ld   a, [$bfcf]                                  ; $4577: $fa $cf $bf
	db   $fd                                         ; $457a: $fd
	rst  $38                                         ; $457b: $ff
	ld   h, a                                        ; $457c: $67
	ld   d, c                                        ; $457d: $51
	ld   de, $d722                                   ; $457e: $11 $22 $d7
	add  hl, de                                      ; $4581: $19
	rlca                                             ; $4582: $07
	cp   $9e                                         ; $4583: $fe $9e

Call_0d4_4585:
	ld   [$ffff], a                                  ; $4585: $ea $ff $ff
	rst  ToBoot                                         ; $4588: $c7
	add  c                                           ; $4589: $81
	ld   de, $6f12                                   ; $458a: $11 $12 $6f
	inc  hl                                          ; $458d: $23
	ld   d, c                                        ; $458e: $51
	sbc  l                                           ; $458f: $9d
	db   $db                                         ; $4590: $db
	jp   c, $ffbf                                    ; $4591: $da $bf $ff

	ld   a, [$1197]                                  ; $4594: $fa $97 $11
	inc  de                                          ; $4597: $13
	ld   c, b                                        ; $4598: $48
	db   $d3                                         ; $4599: $d3
	ld   [hl-], a                                    ; $459a: $32
	jr   jr_0d4_4559                                 ; $459b: $18 $bc

	cp   l                                           ; $459d: $bd
	xor  l                                           ; $459e: $ad
	rst  $38                                         ; $459f: $ff
	cp   $b9                                         ; $45a0: $fe $b9
	ld   [hl], c                                     ; $45a2: $71
	ld   de, $9c34                                   ; $45a3: $11 $34 $9c
	inc  [hl]                                        ; $45a6: $34
	ld   [hl+], a                                    ; $45a7: $22
	ld   a, e                                        ; $45a8: $7b
	set  7, e                                        ; $45a9: $cb $fb
	rst  $28                                         ; $45ab: $ef
	rst  $38                                         ; $45ac: $ff
	ld   a, [$1196]                                  ; $45ad: $fa $96 $11
	inc  de                                          ; $45b0: $13
	ld   c, e                                        ; $45b1: $4b
	or   c                                           ; $45b2: $b1
	ld   b, c                                        ; $45b3: $41
	jr   z, @-$42                                    ; $45b4: $28 $bc

	sbc  $9e                                         ; $45b6: $de $9e
	rst  $38                                         ; $45b8: $ff
	rst  $38                                         ; $45b9: $ff
	sbc  b                                           ; $45ba: $98
	ld   b, c                                        ; $45bb: $41
	ld   de, $d735                                   ; $45bc: $11 $35 $d7
	inc  h                                           ; $45bf: $24
	inc  de                                          ; $45c0: $13
	sbc  e                                           ; $45c1: $9b
	rst  JumpTable                                         ; $45c2: $df
	ld   [$fffe], a                                  ; $45c3: $ea $fe $ff
	jp   c, $1171                                    ; $45c6: $da $71 $11

	ld   [de], a                                     ; $45c9: $12
	adc  a                                           ; $45ca: $8f
	ld   d, e                                        ; $45cb: $53
	ld   de, $ef5b                                   ; $45cc: $11 $5b $ef
	ld   a, [$ffbe]                                  ; $45cf: $fa $be $ff
	db   $fc                                         ; $45d2: $fc
	add  e                                           ; $45d3: $83
	ld   de, $3d11                                   ; $45d4: $11 $11 $3d
	ldh  [c], a                                      ; $45d7: $e2
	ld   b, c                                        ; $45d8: $41
	ld   a, [de]                                     ; $45d9: $1a
	rst  JumpTable                                         ; $45da: $df
	cp   $8e                                         ; $45db: $fe $8e
	rst  $38                                         ; $45dd: $ff
	rst  $38                                         ; $45de: $ff
	sub  h                                           ; $45df: $94
	ld   de, $1911                                   ; $45e0: $11 $11 $19
	rst  $30                                         ; $45e3: $f7
	ld   b, e                                        ; $45e4: $43
	rla                                              ; $45e5: $17
	rst  JumpTable                                         ; $45e6: $df
	rst  $38                                         ; $45e7: $ff
	adc  h                                           ; $45e8: $8c
	rst  $38                                         ; $45e9: $ff
	rst  $38                                         ; $45ea: $ff
	and  l                                           ; $45eb: $a5
	ld   de, $1411                                   ; $45ec: $11 $11 $14
	db   $fd                                         ; $45ef: $fd
	ld   [hl], $15                                   ; $45f0: $36 $15
	rst  $28                                         ; $45f2: $ef
	rst  $38                                         ; $45f3: $ff
	cp   c                                           ; $45f4: $b9
	rst  $38                                         ; $45f5: $ff
	rst  $38                                         ; $45f6: $ff
	and  l                                           ; $45f7: $a5
	ld   de, $1311                                   ; $45f8: $11 $11 $13
	rst  $38                                         ; $45fb: $ff
	ld   e, c                                        ; $45fc: $59
	inc  d                                           ; $45fd: $14
	rst  $38                                         ; $45fe: $ff
	rst  $38                                         ; $45ff: $ff
	xor  b                                           ; $4600: $a8
	rst  $38                                         ; $4601: $ff
	rst  $38                                         ; $4602: $ff
	sub  h                                           ; $4603: $94
	ld   de, $1311                                   ; $4604: $11 $11 $13
	rst  $38                                         ; $4607: $ff
	ld   l, h                                        ; $4608: $6c
	daa                                              ; $4609: $27
	rst  $38                                         ; $460a: $ff
	rst  $38                                         ; $460b: $ff
	ld   [hl], a                                     ; $460c: $77
	rst  $38                                         ; $460d: $ff
	rst  $38                                         ; $460e: $ff
	sub  d                                           ; $460f: $92
	ld   de, $1411                                   ; $4610: $11 $11 $14
	rst  $38                                         ; $4613: $ff
	xor  a                                           ; $4614: $af
	dec  a                                           ; $4615: $3d
	rst  $38                                         ; $4616: $ff
	db   $fc                                         ; $4617: $fc
	daa                                              ; $4618: $27
	rst  $38                                         ; $4619: $ff
	rst  $38                                         ; $461a: $ff
	ld   [hl], c                                     ; $461b: $71
	ld   de, $1e11                                   ; $461c: $11 $11 $1e
	rst  $38                                         ; $461f: $ff
	rst  $38                                         ; $4620: $ff
	ld   c, a                                        ; $4621: $4f
	db   $fc                                         ; $4622: $fc
	and  c                                           ; $4623: $a1
	ld   a, [de]                                     ; $4624: $1a
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	sub  c                                           ; $4627: $91
	ld   de, $1f11                                   ; $4628: $11 $11 $1f
	rst  $38                                         ; $462b: $ff
	rst  $38                                         ; $462c: $ff
	ld   a, a                                        ; $462d: $7f
	push af                                          ; $462e: $f5
	ld   hl, $ff1f                                   ; $462f: $21 $1f $ff
	rst  $38                                         ; $4632: $ff
	ld   [hl], c                                     ; $4633: $71
	ld   de, $4f11                                   ; $4634: $11 $11 $4f
	rst  $38                                         ; $4637: $ff
	rst  $38                                         ; $4638: $ff
	cp   a                                           ; $4639: $bf
	ld   d, c                                        ; $463a: $51
	ld   de, $ff2f                                   ; $463b: $11 $2f $ff
	db   $fd                                         ; $463e: $fd
	ld   de, $1111                                   ; $463f: $11 $11 $11
	sbc  a                                           ; $4642: $9f
	rst  $38                                         ; $4643: $ff
	db   $fd                                         ; $4644: $fd
	sbc  a                                           ; $4645: $9f
	ld   de, $9f11                                   ; $4646: $11 $11 $9f
	rst  $38                                         ; $4649: $ff
	ld   a, [$1111]                                  ; $464a: $fa $11 $11
	ld   de, $ffff                                   ; $464d: $11 $ff $ff
	ei                                               ; $4650: $fb
	ld   d, [hl]                                     ; $4651: $56
	ld   de, rAUD1LEN                                   ; $4652: $11 $11 $ff
	rst  $38                                         ; $4655: $ff
	rst  $30                                         ; $4656: $f7
	ld   de, $1111                                   ; $4657: $11 $11 $11
	rst  $38                                         ; $465a: $ff
	rst  $38                                         ; $465b: $ff
	db   $fd                                         ; $465c: $fd
	ld   de, $1111                                   ; $465d: $11 $11 $11
	rst  $38                                         ; $4660: $ff
	rst  $38                                         ; $4661: $ff
	ldh  a, [c]                                      ; $4662: $f2
	ld   de, $1111                                   ; $4663: $11 $11 $11
	rst  $38                                         ; $4666: $ff
	rst  $38                                         ; $4667: $ff
	rst  $38                                         ; $4668: $ff
	ld   de, $1111                                   ; $4669: $11 $11 $11
	rst  $38                                         ; $466c: $ff
	rst  $38                                         ; $466d: $ff
	pop  af                                          ; $466e: $f1
	ld   de, $1111                                   ; $466f: $11 $11 $11
	rst  $38                                         ; $4672: $ff
	rst  $38                                         ; $4673: $ff
	rst  $38                                         ; $4674: $ff
	ld   de, $1411                                   ; $4675: $11 $11 $14
	rst  $38                                         ; $4678: $ff
	rst  $38                                         ; $4679: $ff
	pop  af                                          ; $467a: $f1
	ld   de, $1111                                   ; $467b: $11 $11 $11
	rra                                              ; $467e: $1f
	rst  $38                                         ; $467f: $ff
	ld   a, [$1111]                                  ; $4680: $fa $11 $11
	rla                                              ; $4683: $17
	rst  $38                                         ; $4684: $ff
	rst  $38                                         ; $4685: $ff
	di                                               ; $4686: $f3
	ld   de, $1111                                   ; $4687: $11 $11 $11
	add  hl, de                                      ; $468a: $19
	rst  $38                                         ; $468b: $ff
	rst  $38                                         ; $468c: $ff
	ld   de, $1511                                   ; $468d: $11 $11 $15
	rst  $38                                         ; $4690: $ff
	rst  $38                                         ; $4691: $ff
	rst  $38                                         ; $4692: $ff
	ld   de, $6411                                   ; $4693: $11 $11 $64
	ld   de, $ffef                                   ; $4696: $11 $ef $ff
	add  c                                           ; $4699: $81
	ld   de, $bf16                                   ; $469a: $11 $16 $bf
	rst  $38                                         ; $469d: $ff
	rst  $38                                         ; $469e: $ff
	ld   de, $1e11                                   ; $469f: $11 $11 $1e
	ld   sp, $ff1f                                   ; $46a2: $31 $1f $ff
	pop  af                                          ; $46a5: $f1
	ld   de, $af1b                                   ; $46a6: $11 $1b $af
	rst  $38                                         ; $46a9: $ff
	rst  $38                                         ; $46aa: $ff
	pop  af                                          ; $46ab: $f1
	ld   de, $f21a                                   ; $46ac: $11 $1a $f2
	ld   de, $ffdf                                   ; $46af: $11 $df $ff
	ld   de, $da11                                   ; $46b2: $11 $11 $da
	sbc  l                                           ; $46b5: $9d
	rst  $38                                         ; $46b6: $ff
	rst  $38                                         ; $46b7: $ff
	ld   de, $af11                                   ; $46b8: $11 $11 $af
	ld   de, rAUD1HIGH                                   ; $46bb: $11 $14 $ff
	or   $11                                         ; $46be: $f6 $11
	jr   @-$56                                       ; $46c0: $18 $a8

	rst  $38                                         ; $46c2: $ff
	rst  $38                                         ; $46c3: $ff
	pop  af                                          ; $46c4: $f1
	ld   de, $f31a                                   ; $46c5: $11 $1a $f3
	ld   de, $ff1f                                   ; $46c8: $11 $1f $ff
	pop  af                                          ; $46cb: $f1
	ld   de, $af6a                                   ; $46cc: $11 $6a $af
	rst  $38                                         ; $46cf: $ff
	db   $fd                                         ; $46d0: $fd
	ld   de, $9f13                                   ; $46d1: $11 $13 $9f
	ld   de, rAUD1LEN                                   ; $46d4: $11 $11 $ff
	rst  $38                                         ; $46d7: $ff
	ld   de, $5611                                   ; $46d8: $11 $11 $56
	rst  $38                                         ; $46db: $ff
	rst  $38                                         ; $46dc: $ff
	pop  af                                          ; $46dd: $f1
	ld   de, $f519                                   ; $46de: $11 $19 $f5
	ld   de, $ff1f                                   ; $46e1: $11 $1f $ff
	pop  af                                          ; $46e4: $f1
	ld   de, $7f1a                                   ; $46e5: $11 $1a $7f
	rst  $38                                         ; $46e8: $ff
	rst  $38                                         ; $46e9: $ff
	ld   de, $bf12                                   ; $46ea: $11 $12 $bf
	sub  c                                           ; $46ed: $91
	ld   de, $ff1f                                   ; $46ee: $11 $1f $ff
	pop  af                                          ; $46f1: $f1
	ld   de, $af24                                   ; $46f2: $11 $24 $af
	rst  $38                                         ; $46f5: $ff
	ld   hl, sp+$11                                  ; $46f6: $f8 $11
	inc  de                                          ; $46f8: $13
	rst  JumpTable                                         ; $46f9: $df
	ld   sp, rAUD1LEN                                   ; $46fa: $31 $11 $ff
	rst  $38                                         ; $46fd: $ff
	ld   h, c                                        ; $46fe: $61
	ld   de, $ff44                                   ; $46ff: $11 $44 $ff
	rst  $38                                         ; $4702: $ff
	di                                               ; $4703: $f3
	ld   de, $fb18                                   ; $4704: $11 $18 $fb
	ld   de, rAUD1LEN                                   ; $4707: $11 $11 $ff
	rst  $38                                         ; $470a: $ff
	add  c                                           ; $470b: $81
	ld   de, $ff17                                   ; $470c: $11 $17 $ff
	rst  $38                                         ; $470f: $ff
	pop  af                                          ; $4710: $f1
	ld   de, $fc1c                                   ; $4711: $11 $1c $fc
	ld   de, $cf11                                   ; $4714: $11 $11 $cf
	rst  $38                                         ; $4717: $ff
	pop  hl                                          ; $4718: $e1
	ld   de, $ff17                                   ; $4719: $11 $17 $ff
	rst  $38                                         ; $471c: $ff
	pop  af                                          ; $471d: $f1
	ld   de, $fc1c                                   ; $471e: $11 $1c $fc
	ld   hl, $2f11                                   ; $4721: $21 $11 $2f
	rst  $38                                         ; $4724: $ff
	pop  af                                          ; $4725: $f1
	ld   de, $ff15                                   ; $4726: $11 $15 $ff
	rst  $38                                         ; $4729: $ff
	ld   hl, sp+$11                                  ; $472a: $f8 $11
	rla                                              ; $472c: $17
	rst  $38                                         ; $472d: $ff
	ld   h, c                                        ; $472e: $61
	ld   de, $ff1f                                   ; $472f: $11 $1f $ff
	cp   $11                                         ; $4732: $fe $11
	ld   de, $ffcf                                   ; $4734: $11 $cf $ff
	rst  $38                                         ; $4737: $ff
	ld   de, $df11                                   ; $4738: $11 $11 $df
	ldh  a, [c]                                      ; $473b: $f2
	ld   de, rAUD1LEN                                   ; $473c: $11 $11 $ff
	rst  $38                                         ; $473f: $ff
	ld   [hl], c                                     ; $4740: $71
	ld   de, $ff2e                                   ; $4741: $11 $2e $ff
	rst  $38                                         ; $4744: $ff
	pop  de                                          ; $4745: $d1
	ld   de, $fd3f                                   ; $4746: $11 $3f $fd
	ld   de, $1f11                                   ; $4749: $11 $11 $1f
	rst  $38                                         ; $474c: $ff
	ld   sp, hl                                      ; $474d: $f9
	ld   de, rAUD1HIGH                                   ; $474e: $11 $14 $ff
	rst  $38                                         ; $4751: $ff
	db   $fd                                         ; $4752: $fd
	ld   de, rAUD1ENV                                   ; $4753: $11 $12 $ff
	db   $f4                                         ; $4756: $f4
	ld   de, $cf11                                   ; $4757: $11 $11 $cf
	rst  $38                                         ; $475a: $ff
	pop  af                                          ; $475b: $f1
	ld   de, $ff1b                                   ; $475c: $11 $1b $ff
	rst  $38                                         ; $475f: $ff
	rst  $30                                         ; $4760: $f7
	ld   de, $ff1a                                   ; $4761: $11 $1a $ff
	and  c                                           ; $4764: $a1
	ld   de, rAUD1LEN                                   ; $4765: $11 $11 $ff
	rst  $38                                         ; $4768: $ff
	pop  af                                          ; $4769: $f1
	ld   de, $ff1a                                   ; $476a: $11 $1a $ff
	rst  $38                                         ; $476d: $ff
	di                                               ; $476e: $f3
	ld   de, $ff1c                                   ; $476f: $11 $1c $ff
	sub  c                                           ; $4772: $91
	ld   de, rAUD1LEN                                   ; $4773: $11 $11 $ff
	rst  $38                                         ; $4776: $ff
	ldh  a, [c]                                      ; $4777: $f2
	ld   de, $ff1a                                   ; $4778: $11 $1a $ff
	rst  $38                                         ; $477b: $ff
	db   $f4                                         ; $477c: $f4
	ld   de, $ff1c                                   ; $477d: $11 $1c $ff
	and  c                                           ; $4780: $a1
	ld   de, $6f11                                   ; $4781: $11 $11 $6f
	rst  $38                                         ; $4784: $ff
	ei                                               ; $4785: $fb
	ld   de, $af16                                   ; $4786: $11 $16 $af
	rst  $38                                         ; $4789: $ff
	cp   $41                                         ; $478a: $fe $41
	ld   de, $f9cf                                   ; $478c: $11 $cf $f9
	ld   de, $1911                                   ; $478f: $11 $11 $19
	rst  $38                                         ; $4792: $ff
	rst  $38                                         ; $4793: $ff
	pop  bc                                          ; $4794: $c1
	ld   de, $ff5a                                   ; $4795: $11 $5a $ff
	rst  $38                                         ; $4798: $ff
	pop  de                                          ; $4799: $d1
	ld   de, $ff2f                                   ; $479a: $11 $2f $ff
	or   c                                           ; $479d: $b1
	ld   de, $3f11                                   ; $479e: $11 $11 $3f
	rst  $38                                         ; $47a1: $ff
	rst  $38                                         ; $47a2: $ff
	ld   de, $ae15                                   ; $47a3: $11 $15 $ae
	rst  $38                                         ; $47a6: $ff
	rst  $38                                         ; $47a7: $ff
	ld   h, c                                        ; $47a8: $61
	ld   [de], a                                     ; $47a9: $12
	rst  JumpTable                                         ; $47aa: $df
	rst  $38                                         ; $47ab: $ff
	ld   hl, $1111                                   ; $47ac: $21 $11 $11
	ld   a, a                                        ; $47af: $7f
	rst  $38                                         ; $47b0: $ff
	cp   $11                                         ; $47b1: $fe $11
	inc  d                                           ; $47b3: $14
	adc  [hl]                                        ; $47b4: $8e
	rst  $38                                         ; $47b5: $ff
	rst  $38                                         ; $47b6: $ff
	ld   h, c                                        ; $47b7: $61
	ld   [de], a                                     ; $47b8: $12
	rst  $28                                         ; $47b9: $ef
	cp   $11                                         ; $47ba: $fe $11
	ld   de, $7f11                                   ; $47bc: $11 $11 $7f
	rst  $38                                         ; $47bf: $ff
	db   $fc                                         ; $47c0: $fc
	ld   hl, $cf47                                   ; $47c1: $21 $47 $cf
	rst  $38                                         ; $47c4: $ff
	cp   $71                                         ; $47c5: $fe $71
	inc  d                                           ; $47c7: $14
	cp   a                                           ; $47c8: $bf
	rst  $38                                         ; $47c9: $ff
	ld   b, c                                        ; $47ca: $41
	ld   de, $1e11                                   ; $47cb: $11 $11 $1e
	rst  $38                                         ; $47ce: $ff
	rst  $38                                         ; $47cf: $ff
	sub  d                                           ; $47d0: $92
	ld   de, $ff6b                                   ; $47d1: $11 $6b $ff
	rst  $38                                         ; $47d4: $ff
	jp   nz, Jump_0d4_5f11                           ; $47d5: $c2 $11 $5f

	rst  $38                                         ; $47d8: $ff
	jp   nz, $1111                                   ; $47d9: $c2 $11 $11

	ld   de, $ffff                                   ; $47dc: $11 $ff $ff
	push af                                          ; $47df: $f5
	ld   b, d                                        ; $47e0: $42
	ld   a, e                                        ; $47e1: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47e2: $cf
	rst  $38                                         ; $47e3: $ff
	ld   [$2821], a                                  ; $47e4: $ea $21 $28
	rst  $38                                         ; $47e7: $ff
	db   $fc                                         ; $47e8: $fc
	ld   sp, $1111                                   ; $47e9: $31 $11 $11
	dec  de                                          ; $47ec: $1b
	rst  $38                                         ; $47ed: $ff
	rst  $38                                         ; $47ee: $ff
	ret                                              ; $47ef: $c9


	ld   [hl], a                                     ; $47f0: $77
	ld   h, [hl]                                     ; $47f1: $66
	xor  l                                           ; $47f2: $ad
	rst  $38                                         ; $47f3: $ff
	or   $22                                         ; $47f4: $f6 $22
	adc  a                                           ; $47f6: $8f
	rst  $38                                         ; $47f7: $ff
	add  $11                                         ; $47f8: $c6 $11
	ld   de, $3e11                                   ; $47fa: $11 $11 $3e
	rst  $38                                         ; $47fd: $ff
	rst  $38                                         ; $47fe: $ff
	call c, Call_0d4_5697                            ; $47ff: $dc $97 $56
	sbc  h                                           ; $4802: $9c
	rst  $38                                         ; $4803: $ff
	ret  c                                           ; $4804: $d8

	ld   d, l                                        ; $4805: $55
	sbc  l                                           ; $4806: $9d
	rst  $38                                         ; $4807: $ff
	add  sp, $11                                     ; $4808: $e8 $11
	ld   de, $1c11                                   ; $480a: $11 $11 $1c
	rst  $38                                         ; $480d: $ff
	rst  $38                                         ; $480e: $ff
	rst  $38                                         ; $480f: $ff
	sub  l                                           ; $4810: $95
	inc  h                                           ; $4811: $24
	sbc  h                                           ; $4812: $9c
	rst  $38                                         ; $4813: $ff
	reti                                             ; $4814: $d9


	halt                                             ; $4815: $76
	adc  d                                           ; $4816: $8a
	rst  JumpTable                                         ; $4817: $df
	rst  $38                                         ; $4818: $ff
	ld   h, c                                        ; $4819: $61
	ld   de, $1211                                   ; $481a: $11 $11 $12
	rst  $28                                         ; $481d: $ef
	rst  $38                                         ; $481e: $ff
	rst  $38                                         ; $481f: $ff
	ei                                               ; $4820: $fb
	ld   [hl], h                                     ; $4821: $74
	ld   b, a                                        ; $4822: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4823: $cf
	db   $ed                                         ; $4824: $ed
	xor  b                                           ; $4825: $a8
	xor  e                                           ; $4826: $ab
	sbc  $ed                                         ; $4827: $de $ed
	or   [hl]                                        ; $4829: $b6
	ld   de, $1111                                   ; $482a: $11 $11 $11
	ld   a, [de]                                     ; $482d: $1a
	rst  $38                                         ; $482e: $ff
	rst  $38                                         ; $482f: $ff
	rst  $38                                         ; $4830: $ff
	ld   [$7a53], a                                  ; $4831: $ea $53 $7a
	xor  $db                                         ; $4834: $ee $db
	xor  d                                           ; $4836: $aa
	cp   e                                           ; $4837: $bb
	cp   h                                           ; $4838: $bc
	cp   e                                           ; $4839: $bb
	sub  h                                           ; $483a: $94
	ld   de, $1111                                   ; $483b: $11 $11 $11
	jr   @+$01                                       ; $483e: $18 $ff

	rst  $38                                         ; $4840: $ff
	rst  $38                                         ; $4841: $ff
	ld   sp, hl                                      ; $4842: $f9
	ld   d, l                                        ; $4843: $55
	ld   a, l                                        ; $4844: $7d
	rst  $38                                         ; $4845: $ff
	db   $eb                                         ; $4846: $eb
	add  a                                           ; $4847: $87
	add  a                                           ; $4848: $87
	adc  b                                           ; $4849: $88
	cp   h                                           ; $484a: $bc
	ret  z                                           ; $484b: $c8

	ld   hl, $1111                                   ; $484c: $21 $11 $11
	inc  d                                           ; $484f: $14
	cp   a                                           ; $4850: $bf
	rst  $38                                         ; $4851: $ff
	rst  $38                                         ; $4852: $ff
	rst  $38                                         ; $4853: $ff
	cp   e                                           ; $4854: $bb
	xor  h                                           ; $4855: $ac
	cp   $e9                                         ; $4856: $fe $e9
	sub  [hl]                                        ; $4858: $96
	ld   a, b                                        ; $4859: $78
	adc  c                                           ; $485a: $89
	adc  d                                           ; $485b: $8a
	xor  e                                           ; $485c: $ab
	ld   [hl], h                                     ; $485d: $74
	ld   de, $1111                                   ; $485e: $11 $11 $11
	ld   d, $9a                                      ; $4861: $16 $9a
	adc  $ff                                         ; $4863: $ce $ff
	rst  $38                                         ; $4865: $ff
	db   $db                                         ; $4866: $db
	call $98dc                                       ; $4867: $cd $dc $98
	ld   [hl], a                                     ; $486a: $77
	adc  b                                           ; $486b: $88
	add  [hl]                                        ; $486c: $86
	adc  c                                           ; $486d: $89
	cp   d                                           ; $486e: $ba
	sub  [hl]                                        ; $486f: $96
	ld   sp, $1111                                   ; $4870: $31 $11 $11
	dec  d                                           ; $4873: $15
	ld   a, b                                        ; $4874: $78
	xor  d                                           ; $4875: $aa
	rst  JumpTable                                         ; $4876: $df
	rst  $38                                         ; $4877: $ff
	xor  $ee                                         ; $4878: $ee $ee
	db   $fd                                         ; $487a: $fd
	cp   c                                           ; $487b: $b9
	ld   [hl], a                                     ; $487c: $77
	ld   a, c                                        ; $487d: $79
	add  a                                           ; $487e: $87
	ld   a, b                                        ; $487f: $78
	sbc  c                                           ; $4880: $99
	add  a                                           ; $4881: $87
	ld   d, h                                        ; $4882: $54
	ld   b, e                                        ; $4883: $43
	ld   de, $3511                                   ; $4884: $11 $11 $35
	ld   d, l                                        ; $4887: $55
	ld   l, b                                        ; $4888: $68
	cp   l                                           ; $4889: $bd
	xor  $cc                                         ; $488a: $ee $cc
	sbc  $fd                                         ; $488c: $de $fd
	cp   d                                           ; $488e: $ba
	sbc  c                                           ; $488f: $99
	adc  b                                           ; $4890: $88
	halt                                             ; $4891: $76
	ld   h, a                                        ; $4892: $67
	adc  c                                           ; $4893: $89
	sbc  b                                           ; $4894: $98
	ld   [hl], a                                     ; $4895: $77
	halt                                             ; $4896: $76
	ld   d, e                                        ; $4897: $53
	ld   [de], a                                     ; $4898: $12
	inc  h                                           ; $4899: $24
	ld   b, e                                        ; $489a: $43
	dec  [hl]                                        ; $489b: $35
	ld   l, c                                        ; $489c: $69
	cp   e                                           ; $489d: $bb
	set  5, [hl]                                     ; $489e: $cb $ee
	cp   $bb                                         ; $48a0: $fe $bb
	xor  c                                           ; $48a2: $a9
	xor  c                                           ; $48a3: $a9
	sbc  b                                           ; $48a4: $98
	ld   a, b                                        ; $48a5: $78
	sbc  c                                           ; $48a6: $99
	sbc  c                                           ; $48a7: $99
	sbc  b                                           ; $48a8: $98
	adc  b                                           ; $48a9: $88
	halt                                             ; $48aa: $76
	ld   h, h                                        ; $48ab: $64
	ld   b, h                                        ; $48ac: $44
	ld   b, l                                        ; $48ad: $45
	ld   b, e                                        ; $48ae: $43
	ld   b, h                                        ; $48af: $44
	ld   d, a                                        ; $48b0: $57
	ld   a, b                                        ; $48b1: $78
	adc  c                                           ; $48b2: $89
	cp   h                                           ; $48b3: $bc
	db   $dd                                         ; $48b4: $dd
	call z, $a9a9                                    ; $48b5: $cc $a9 $a9
	sbc  d                                           ; $48b8: $9a
	sbc  c                                           ; $48b9: $99
	sbc  c                                           ; $48ba: $99
	sbc  b                                           ; $48bb: $98
	sbc  c                                           ; $48bc: $99
	xor  c                                           ; $48bd: $a9
	sbc  b                                           ; $48be: $98
	add  a                                           ; $48bf: $87
	ld   h, l                                        ; $48c0: $65
	ld   b, h                                        ; $48c1: $44
	ld   b, h                                        ; $48c2: $44
	ld   b, h                                        ; $48c3: $44
	ld   b, h                                        ; $48c4: $44
	ld   d, [hl]                                     ; $48c5: $56
	ld   h, [hl]                                     ; $48c6: $66
	ld   [hl], a                                     ; $48c7: $77
	adc  c                                           ; $48c8: $89
	cp   e                                           ; $48c9: $bb
	xor  e                                           ; $48ca: $ab
	xor  c                                           ; $48cb: $a9
	xor  d                                           ; $48cc: $aa
	cp   d                                           ; $48cd: $ba
	cp   e                                           ; $48ce: $bb
	xor  d                                           ; $48cf: $aa
	xor  e                                           ; $48d0: $ab
	xor  d                                           ; $48d1: $aa
	sbc  c                                           ; $48d2: $99
	sbc  b                                           ; $48d3: $98
	add  a                                           ; $48d4: $87
	halt                                             ; $48d5: $76
	ld   h, [hl]                                     ; $48d6: $66
	ld   d, l                                        ; $48d7: $55
	ld   d, l                                        ; $48d8: $55
	ld   d, l                                        ; $48d9: $55
	ld   d, l                                        ; $48da: $55
	ld   d, l                                        ; $48db: $55
	ld   d, [hl]                                     ; $48dc: $56
	ld   h, a                                        ; $48dd: $67
	ld   a, c                                        ; $48de: $79
	sbc  c                                           ; $48df: $99
	xor  d                                           ; $48e0: $aa
	xor  d                                           ; $48e1: $aa
	xor  e                                           ; $48e2: $ab
	res  5, d                                        ; $48e3: $cb $aa
	xor  d                                           ; $48e5: $aa
	cp   d                                           ; $48e6: $ba
	sbc  d                                           ; $48e7: $9a
	sbc  b                                           ; $48e8: $98
	adc  b                                           ; $48e9: $88
	add  a                                           ; $48ea: $87
	ld   [hl], a                                     ; $48eb: $77
	ld   [hl], a                                     ; $48ec: $77
	ld   h, [hl]                                     ; $48ed: $66
	ld   h, [hl]                                     ; $48ee: $66
	ld   h, [hl]                                     ; $48ef: $66
	ld   d, l                                        ; $48f0: $55
	ld   d, l                                        ; $48f1: $55
	ld   d, [hl]                                     ; $48f2: $56
	ld   h, [hl]                                     ; $48f3: $66
	ld   [hl], a                                     ; $48f4: $77
	adc  b                                           ; $48f5: $88
	sbc  c                                           ; $48f6: $99
	xor  c                                           ; $48f7: $a9
	xor  d                                           ; $48f8: $aa
	cp   e                                           ; $48f9: $bb
	xor  d                                           ; $48fa: $aa
	xor  d                                           ; $48fb: $aa
	xor  d                                           ; $48fc: $aa
	xor  c                                           ; $48fd: $a9
	xor  c                                           ; $48fe: $a9
	sbc  b                                           ; $48ff: $98
	sbc  b                                           ; $4900: $98
	adc  b                                           ; $4901: $88
	ld   [hl], a                                     ; $4902: $77
	ld   [hl], a                                     ; $4903: $77
	ld   [hl], a                                     ; $4904: $77
	ld   h, [hl]                                     ; $4905: $66
	ld   h, [hl]                                     ; $4906: $66
	ld   h, [hl]                                     ; $4907: $66
	ld   h, [hl]                                     ; $4908: $66
	ld   h, [hl]                                     ; $4909: $66
	ld   h, [hl]                                     ; $490a: $66
	ld   [hl], a                                     ; $490b: $77
	ld   a, b                                        ; $490c: $78
	adc  b                                           ; $490d: $88
	sbc  c                                           ; $490e: $99
	xor  c                                           ; $490f: $a9
	sbc  c                                           ; $4910: $99
	sbc  c                                           ; $4911: $99
	sbc  c                                           ; $4912: $99
	xor  d                                           ; $4913: $aa
	sbc  c                                           ; $4914: $99
	sbc  c                                           ; $4915: $99
	sbc  c                                           ; $4916: $99
	adc  b                                           ; $4917: $88
	sbc  b                                           ; $4918: $98
	adc  b                                           ; $4919: $88
	add  a                                           ; $491a: $87
	ld   [hl], a                                     ; $491b: $77
	ld   [hl], a                                     ; $491c: $77
	ld   [hl], a                                     ; $491d: $77
	ld   [hl], a                                     ; $491e: $77
	halt                                             ; $491f: $76
	ld   h, [hl]                                     ; $4920: $66
	ld   h, [hl]                                     ; $4921: $66
	ld   h, a                                        ; $4922: $67
	ld   [hl], a                                     ; $4923: $77
	ld   [hl], a                                     ; $4924: $77
	adc  b                                           ; $4925: $88
	sbc  b                                           ; $4926: $98
	sbc  c                                           ; $4927: $99
	sbc  c                                           ; $4928: $99
	sbc  c                                           ; $4929: $99
	sbc  c                                           ; $492a: $99
	sbc  c                                           ; $492b: $99
	sbc  c                                           ; $492c: $99
	sbc  c                                           ; $492d: $99
	sbc  b                                           ; $492e: $98
	adc  b                                           ; $492f: $88
	sbc  c                                           ; $4930: $99
	adc  b                                           ; $4931: $88
	adc  b                                           ; $4932: $88
	adc  b                                           ; $4933: $88
	ld   [hl], a                                     ; $4934: $77
	ld   [hl], a                                     ; $4935: $77
	ld   [hl], a                                     ; $4936: $77
	ld   [hl], a                                     ; $4937: $77
	ld   [hl], a                                     ; $4938: $77
	ld   [hl], a                                     ; $4939: $77
	ld   [hl], a                                     ; $493a: $77
	ld   [hl], a                                     ; $493b: $77
	ld   [hl], a                                     ; $493c: $77
	adc  b                                           ; $493d: $88
	adc  c                                           ; $493e: $89
	sbc  b                                           ; $493f: $98
	adc  b                                           ; $4940: $88
	sbc  c                                           ; $4941: $99
	sbc  c                                           ; $4942: $99
	sbc  b                                           ; $4943: $98
	adc  b                                           ; $4944: $88
	adc  b                                           ; $4945: $88
	adc  c                                           ; $4946: $89
	sbc  c                                           ; $4947: $99
	sbc  c                                           ; $4948: $99
	adc  b                                           ; $4949: $88
	adc  b                                           ; $494a: $88
	adc  b                                           ; $494b: $88
	adc  b                                           ; $494c: $88
	adc  b                                           ; $494d: $88
	ld   [hl], a                                     ; $494e: $77
	ld   [hl], a                                     ; $494f: $77
	ld   [hl], a                                     ; $4950: $77
	ld   [hl], a                                     ; $4951: $77
	ld   [hl], a                                     ; $4952: $77
	ld   [hl], a                                     ; $4953: $77
	ld   [hl], a                                     ; $4954: $77
	ld   a, b                                        ; $4955: $78
	adc  b                                           ; $4956: $88
	adc  b                                           ; $4957: $88
	adc  b                                           ; $4958: $88
	sbc  c                                           ; $4959: $99
	sbc  c                                           ; $495a: $99
	sbc  c                                           ; $495b: $99
	sbc  c                                           ; $495c: $99
	sbc  c                                           ; $495d: $99
	sbc  c                                           ; $495e: $99
	sbc  c                                           ; $495f: $99
	sbc  b                                           ; $4960: $98
	adc  b                                           ; $4961: $88
	adc  b                                           ; $4962: $88
	adc  b                                           ; $4963: $88
	adc  b                                           ; $4964: $88
	adc  b                                           ; $4965: $88
	adc  b                                           ; $4966: $88
	adc  b                                           ; $4967: $88
	adc  b                                           ; $4968: $88
	adc  b                                           ; $4969: $88
	adc  b                                           ; $496a: $88
	add  a                                           ; $496b: $87
	adc  b                                           ; $496c: $88
	adc  b                                           ; $496d: $88
	adc  b                                           ; $496e: $88
	adc  b                                           ; $496f: $88
	adc  b                                           ; $4970: $88
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	adc  b                                           ; $4974: $88
	adc  b                                           ; $4975: $88
	adc  b                                           ; $4976: $88
	adc  b                                           ; $4977: $88
	adc  b                                           ; $4978: $88
	adc  b                                           ; $4979: $88
	adc  b                                           ; $497a: $88
	adc  b                                           ; $497b: $88
	adc  b                                           ; $497c: $88
	adc  b                                           ; $497d: $88
	adc  b                                           ; $497e: $88
	adc  b                                           ; $497f: $88
	adc  b                                           ; $4980: $88
	adc  b                                           ; $4981: $88
	adc  b                                           ; $4982: $88
	adc  b                                           ; $4983: $88
	adc  b                                           ; $4984: $88
	adc  b                                           ; $4985: $88
	ld   [hl], a                                     ; $4986: $77
	ld   [hl], a                                     ; $4987: $77
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	adc  b                                           ; $498a: $88
	adc  b                                           ; $498b: $88
	adc  c                                           ; $498c: $89
	sbc  c                                           ; $498d: $99
	adc  c                                           ; $498e: $89
	adc  b                                           ; $498f: $88
	adc  b                                           ; $4990: $88
	sbc  c                                           ; $4991: $99
	sbc  c                                           ; $4992: $99
	sbc  c                                           ; $4993: $99
	adc  b                                           ; $4994: $88
	adc  b                                           ; $4995: $88
	adc  b                                           ; $4996: $88
	adc  b                                           ; $4997: $88
	adc  b                                           ; $4998: $88
	adc  b                                           ; $4999: $88
	adc  b                                           ; $499a: $88
	add  a                                           ; $499b: $87
	ld   [hl], a                                     ; $499c: $77
	ld   [hl], a                                     ; $499d: $77
	ld   [hl], a                                     ; $499e: $77
	ld   [hl], a                                     ; $499f: $77
	ld   [hl], a                                     ; $49a0: $77
	ld   [hl], a                                     ; $49a1: $77
	ld   [hl], a                                     ; $49a2: $77
	adc  b                                           ; $49a3: $88
	adc  c                                           ; $49a4: $89
	adc  c                                           ; $49a5: $89
	sbc  c                                           ; $49a6: $99
	sbc  b                                           ; $49a7: $98
	sbc  c                                           ; $49a8: $99
	sbc  c                                           ; $49a9: $99
	adc  b                                           ; $49aa: $88
	adc  b                                           ; $49ab: $88
	adc  c                                           ; $49ac: $89
	sbc  b                                           ; $49ad: $98
	adc  b                                           ; $49ae: $88
	sbc  c                                           ; $49af: $99
	sbc  b                                           ; $49b0: $98
	ld   a, b                                        ; $49b1: $78
	add  a                                           ; $49b2: $87
	add  a                                           ; $49b3: $87
	ld   [hl], a                                     ; $49b4: $77
	ld   h, l                                        ; $49b5: $65
	ld   d, l                                        ; $49b6: $55
	ld   h, [hl]                                     ; $49b7: $66
	ld   h, [hl]                                     ; $49b8: $66
	ld   h, [hl]                                     ; $49b9: $66
	ld   a, b                                        ; $49ba: $78
	adc  b                                           ; $49bb: $88
	adc  c                                           ; $49bc: $89
	sbc  d                                           ; $49bd: $9a
	sbc  d                                           ; $49be: $9a
	xor  d                                           ; $49bf: $aa
	xor  c                                           ; $49c0: $a9
	sbc  d                                           ; $49c1: $9a
	sbc  c                                           ; $49c2: $99
	sbc  c                                           ; $49c3: $99
	adc  c                                           ; $49c4: $89
	adc  c                                           ; $49c5: $89
	sbc  c                                           ; $49c6: $99
	sbc  c                                           ; $49c7: $99
	adc  b                                           ; $49c8: $88
	adc  b                                           ; $49c9: $88
	ld   [hl], a                                     ; $49ca: $77
	halt                                             ; $49cb: $76
	ld   h, h                                        ; $49cc: $64
	ld   [hl+], a                                    ; $49cd: $22
	inc  de                                          ; $49ce: $13
	ld   b, h                                        ; $49cf: $44
	ld   d, l                                        ; $49d0: $55
	ld   l, b                                        ; $49d1: $68
	sbc  d                                           ; $49d2: $9a
	cp   h                                           ; $49d3: $bc
	db   $dd                                         ; $49d4: $dd
	db   $dd                                         ; $49d5: $dd
	db   $db                                         ; $49d6: $db
	xor  d                                           ; $49d7: $aa
	sbc  c                                           ; $49d8: $99
	xor  b                                           ; $49d9: $a8
	adc  c                                           ; $49da: $89
	adc  c                                           ; $49db: $89
	xor  c                                           ; $49dc: $a9
	xor  e                                           ; $49dd: $ab
	xor  c                                           ; $49de: $a9
	sub  a                                           ; $49df: $97
	ld   h, l                                        ; $49e0: $65
	ld   [hl-], a                                    ; $49e1: $32
	ld   de, $1211                                   ; $49e2: $11 $11 $12
	ld   c, b                                        ; $49e5: $48
	ld   h, a                                        ; $49e6: $67
	db   $dd                                         ; $49e7: $dd
	rst  $38                                         ; $49e8: $ff
	xor  $fd                                         ; $49e9: $ee $fd
	db   $dd                                         ; $49eb: $dd
	adc  b                                           ; $49ec: $88
	add  a                                           ; $49ed: $87
	sbc  d                                           ; $49ee: $9a
	adc  d                                           ; $49ef: $8a
	xor  c                                           ; $49f0: $a9
	xor  h                                           ; $49f1: $ac
	cp   h                                           ; $49f2: $bc
	cp   c                                           ; $49f3: $b9
	add  l                                           ; $49f4: $85
	ld   b, d                                        ; $49f5: $42
	ld   de, $1111                                   ; $49f6: $11 $11 $11
	inc  d                                           ; $49f9: $14
	adc  h                                           ; $49fa: $8c
	xor  a                                           ; $49fb: $af
	rst  $38                                         ; $49fc: $ff
	rst  $38                                         ; $49fd: $ff
	adc  $ea                                         ; $49fe: $ce $ea
	jp   z, Jump_0d4_7657                            ; $4a00: $ca $57 $76

	call z, $ccbd                                    ; $4a03: $cc $bd $cc
	xor  $dc                                         ; $4a06: $ee $dc
	ld   [hl], h                                     ; $4a08: $74
	ld   hl, $1111                                   ; $4a09: $21 $11 $11
	ld   de, $9f14                                   ; $4a0c: $11 $14 $9f
	rst  $38                                         ; $4a0f: $ff
	rst  $38                                         ; $4a10: $ff
	rst  $38                                         ; $4a11: $ff
	ret  c                                           ; $4a12: $d8

	and  [hl]                                        ; $4a13: $a6
	adc  e                                           ; $4a14: $8b
	ld   h, l                                        ; $4a15: $65
	ld   a, b                                        ; $4a16: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a17: $cf
	rst  $38                                         ; $4a18: $ff
	cp   $ff                                         ; $4a19: $fe $ff
	reti                                             ; $4a1b: $d9


	ld   h, c                                        ; $4a1c: $61
	ld   de, $1111                                   ; $4a1d: $11 $11 $11
	ld   de, $df18                                   ; $4a20: $11 $18 $df
	rst  $38                                         ; $4a23: $ff
	rst  $38                                         ; $4a24: $ff
	rst  $38                                         ; $4a25: $ff
	or   d                                           ; $4a26: $b2
	ld   d, e                                        ; $4a27: $53
	ld   l, [hl]                                     ; $4a28: $6e
	xor  d                                           ; $4a29: $aa
	cp   h                                           ; $4a2a: $bc
	rst  $38                                         ; $4a2b: $ff
	rst  $38                                         ; $4a2c: $ff
	db   $fd                                         ; $4a2d: $fd
	db   $ed                                         ; $4a2e: $ed
	or   a                                           ; $4a2f: $b7
	ld   hl, $1111                                   ; $4a30: $21 $11 $11
	ld   de, $1f11                                   ; $4a33: $11 $11 $1f
	rst  $38                                         ; $4a36: $ff
	rst  $38                                         ; $4a37: $ff
	rst  $38                                         ; $4a38: $ff
	db   $fc                                         ; $4a39: $fc
	ld   de, $ff33                                   ; $4a3a: $11 $33 $ff
	rst  $28                                         ; $4a3d: $ef
	rst  $28                                         ; $4a3e: $ef
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	db   $ed                                         ; $4a41: $ed
	jp   z, $1182                                    ; $4a42: $ca $82 $11

	ld   de, $1111                                   ; $4a45: $11 $11 $11
	ld   de, $ffff                                   ; $4a48: $11 $ff $ff
	rst  $38                                         ; $4a4b: $ff
	ld   a, [$13e1]                                  ; $4a4c: $fa $e1 $13
	ld   l, $ff                                      ; $4a4f: $2e $ff
	rst  $38                                         ; $4a51: $ff
	cp   a                                           ; $4a52: $bf
	rst  $38                                         ; $4a53: $ff
	rst  $38                                         ; $4a54: $ff
	cp   [hl]                                        ; $4a55: $be
	cp   c                                           ; $4a56: $b9
	ld   d, c                                        ; $4a57: $51
	ld   de, $1111                                   ; $4a58: $11 $11 $11
	ld   de, $ff1b                                   ; $4a5b: $11 $1b $ff
	rst  $38                                         ; $4a5e: $ff
	ei                                               ; $4a5f: $fb
	ld   e, d                                        ; $4a60: $5a
	ld   hl, $df42                                   ; $4a61: $21 $42 $df
	rst  $38                                         ; $4a64: $ff
	ld   sp, hl                                      ; $4a65: $f9
	cp   [hl]                                        ; $4a66: $be
	rst  $28                                         ; $4a67: $ef
	ei                                               ; $4a68: $fb
	ret                                              ; $4a69: $c9


	add  h                                           ; $4a6a: $84
	ld   de, $1111                                   ; $4a6b: $11 $11 $11
	ld   de, $bf11                                   ; $4a6e: $11 $11 $bf
	rst  $38                                         ; $4a71: $ff
	rst  $38                                         ; $4a72: $ff
	ld   de, $1461                                   ; $4a73: $11 $61 $14
	ld   l, a                                        ; $4a76: $6f
	rst  $38                                         ; $4a77: $ff
	ei                                               ; $4a78: $fb
	ld   [hl], $df                                   ; $4a79: $36 $df
	rst  $38                                         ; $4a7b: $ff
	call c, $2196                                    ; $4a7c: $dc $96 $21
	ld   de, $1111                                   ; $4a7f: $11 $11 $11
	ld   de, $ff1d                                   ; $4a82: $11 $1d $ff
	rst  $38                                         ; $4a85: $ff
	sub  c                                           ; $4a86: $91
	ld   de, $8d12                                   ; $4a87: $11 $12 $8d
	rst  $38                                         ; $4a8a: $ff
	rst  $38                                         ; $4a8b: $ff
	add  e                                           ; $4a8c: $83
	ld   l, e                                        ; $4a8d: $6b
	rst  $38                                         ; $4a8e: $ff
	ei                                               ; $4a8f: $fb
	add  h                                           ; $4a90: $84
	ld   de, $1111                                   ; $4a91: $11 $11 $11
	ld   de, $1b11                                   ; $4a94: $11 $11 $1b
	rst  $38                                         ; $4a97: $ff
	rst  $38                                         ; $4a98: $ff
	sub  l                                           ; $4a99: $95
	ld   hl, $5f11                                   ; $4a9a: $21 $11 $5f
	rst  $38                                         ; $4a9d: $ff
	rst  $38                                         ; $4a9e: $ff
	add  [hl]                                        ; $4a9f: $86
	ld   e, d                                        ; $4aa0: $5a
	rst  $28                                         ; $4aa1: $ef
	ei                                               ; $4aa2: $fb
	halt                                             ; $4aa3: $76
	ld   sp, $1101                                   ; $4aa4: $31 $01 $11
	ld   de, $1111                                   ; $4aa7: $11 $11 $11
	rst  $38                                         ; $4aaa: $ff
	rst  $38                                         ; $4aab: $ff
	rst  $30                                         ; $4aac: $f7
	ld   hl, $4c24                                   ; $4aad: $21 $24 $4c
	rst  $38                                         ; $4ab0: $ff
	rst  $38                                         ; $4ab1: $ff
	add  $57                                         ; $4ab2: $c6 $57
	rst  $28                                         ; $4ab4: $ef
	cp   $b7                                         ; $4ab5: $fe $b7
	ld   b, d                                        ; $4ab7: $42
	ld   de, $1111                                   ; $4ab8: $11 $11 $11
	ld   de, $1d11                                   ; $4abb: $11 $11 $1d
	rst  $38                                         ; $4abe: $ff
	rst  $38                                         ; $4abf: $ff
	sub  d                                           ; $4ac0: $92
	inc  d                                           ; $4ac1: $14
	ld   hl, $ffae                                   ; $4ac2: $21 $ae $ff
	rst  $38                                         ; $4ac5: $ff
	add  d                                           ; $4ac6: $82
	inc  a                                           ; $4ac7: $3c
	rst  $28                                         ; $4ac8: $ef
	ei                                               ; $4ac9: $fb
	add  l                                           ; $4aca: $85
	ld   bc, $2411                                   ; $4acb: $01 $11 $24
	ld   de, $1811                                   ; $4ace: $11 $11 $18
	rst  $38                                         ; $4ad1: $ff
	rst  $38                                         ; $4ad2: $ff
	ret                                              ; $4ad3: $c9


	ld   de, $4f11                                   ; $4ad4: $11 $11 $4f
	rst  $38                                         ; $4ad7: $ff
	cp   $61                                         ; $4ad8: $fe $61
	ld   e, d                                        ; $4ada: $5a
	rst  $38                                         ; $4adb: $ff
	cp   $96                                         ; $4adc: $fe $96
	ld   de, $1611                                   ; $4ade: $11 $11 $16
	ld   sp, $1111                                   ; $4ae1: $31 $11 $11
	ld   c, a                                        ; $4ae4: $4f
	rst  $38                                         ; $4ae5: $ff
	db   $fd                                         ; $4ae6: $fd
	ld   b, d                                        ; $4ae7: $42
	ld   de, $ff28                                   ; $4ae8: $11 $28 $ff
	rst  $38                                         ; $4aeb: $ff
	or   $45                                         ; $4aec: $f6 $45
	xor  [hl]                                        ; $4aee: $ae
	rst  $38                                         ; $4aef: $ff
	jp   hl                                          ; $4af0: $e9


	ld   h, e                                        ; $4af1: $63
	ld   de, $4111                                   ; $4af2: $11 $11 $41
	ld   de, $1511                                   ; $4af5: $11 $11 $15
	rst  $38                                         ; $4af8: $ff
	rst  $38                                         ; $4af9: $ff
	ld   d, c                                        ; $4afa: $51
	ld   de, $9f39                                   ; $4afb: $11 $39 $9f
	rst  $38                                         ; $4afe: $ff
	db   $fd                                         ; $4aff: $fd
	ld   h, d                                        ; $4b00: $62
	ld   a, h                                        ; $4b01: $7c
	rst  $38                                         ; $4b02: $ff
	db   $fc                                         ; $4b03: $fc
	ld   d, d                                        ; $4b04: $52
	ld   de, $4614                                   ; $4b05: $11 $14 $46
	ld   hl, $1111                                   ; $4b08: $21 $11 $11
	adc  a                                           ; $4b0b: $8f
	rst  $38                                         ; $4b0c: $ff
	rst  $38                                         ; $4b0d: $ff
	ld   de, $3c11                                   ; $4b0e: $11 $11 $3c
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	rst  $20                                         ; $4b13: $e7
	inc  de                                          ; $4b14: $13
	sbc  a                                           ; $4b15: $9f
	rst  $38                                         ; $4b16: $ff
	ld   a, [$1141]                                  ; $4b17: $fa $41 $11
	inc  [hl]                                        ; $4b1a: $34
	ld   hl, $1111                                   ; $4b1b: $21 $11 $11
	ld   [de], a                                     ; $4b1e: $12
	rst  $38                                         ; $4b1f: $ff
	rst  $38                                         ; $4b20: $ff
	pop  de                                          ; $4b21: $d1
	ld   de, $cf16                                   ; $4b22: $11 $16 $cf
	rst  $38                                         ; $4b25: $ff
	rst  $38                                         ; $4b26: $ff
	add  c                                           ; $4b27: $81
	add  hl, hl                                      ; $4b28: $29
	rst  $38                                         ; $4b29: $ff
	rst  $38                                         ; $4b2a: $ff
	sub  e                                           ; $4b2b: $93
	ld   de, $1111                                   ; $4b2c: $11 $11 $11
	ld   [hl+], a                                    ; $4b2f: $22
	ld   de, $1f11                                   ; $4b30: $11 $11 $1f
	rst  $38                                         ; $4b33: $ff
	cp   $11                                         ; $4b34: $fe $11
	ld   de, $ff8d                                   ; $4b36: $11 $8d $ff
	rst  $38                                         ; $4b39: $ff
	ld   hl, sp+$33                                  ; $4b3a: $f8 $33
	cp   a                                           ; $4b3c: $bf
	rst  $38                                         ; $4b3d: $ff
	ld   a, [$1161]                                  ; $4b3e: $fa $61 $11
	ld   de, $1131                                   ; $4b41: $11 $31 $11
	ld   de, $af11                                   ; $4b44: $11 $11 $af
	rst  $38                                         ; $4b47: $ff
	rst  $30                                         ; $4b48: $f7
	ld   de, $ff18                                   ; $4b49: $11 $18 $ff
	rst  $38                                         ; $4b4c: $ff
	cp   $e8                                         ; $4b4d: $fe $e8
	ld   l, e                                        ; $4b4f: $6b
	rst  $38                                         ; $4b50: $ff
	rst  $38                                         ; $4b51: $ff
	add  l                                           ; $4b52: $85
	ld   de, $6534                                   ; $4b53: $11 $34 $65
	ld   de, $1111                                   ; $4b56: $11 $11 $11
	ld   de, $ffff                                   ; $4b59: $11 $ff $ff
	sub  c                                           ; $4b5c: $91
	ld   de, $ff2c                                   ; $4b5d: $11 $2c $ff
	rst  $38                                         ; $4b60: $ff
	db   $fd                                         ; $4b61: $fd
	reti                                             ; $4b62: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b63: $cf
	rst  $38                                         ; $4b64: $ff
	db   $fd                                         ; $4b65: $fd
	ld   [hl], l                                     ; $4b66: $75
	dec  d                                           ; $4b67: $15
	inc  [hl]                                        ; $4b68: $34
	ld   b, d                                        ; $4b69: $42
	ld   de, $1111                                   ; $4b6a: $11 $11 $11
	rla                                              ; $4b6d: $17
	rst  $38                                         ; $4b6e: $ff
	cp   $11                                         ; $4b6f: $fe $11
	ld   de, $ff9f                                   ; $4b71: $11 $9f $ff
	rst  $38                                         ; $4b74: $ff
	db   $fd                                         ; $4b75: $fd
	sbc  d                                           ; $4b76: $9a
	rst  $38                                         ; $4b77: $ff
	rst  $38                                         ; $4b78: $ff
	ld   a, [$1542]                                  ; $4b79: $fa $42 $15
	ld   [hl], a                                     ; $4b7c: $77
	ld   d, d                                        ; $4b7d: $52
	ld   de, $1111                                   ; $4b7e: $11 $11 $11
	inc  e                                           ; $4b81: $1c
	rst  $38                                         ; $4b82: $ff
	ld   a, [$1311]                                  ; $4b83: $fa $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b86: $cf
	rst  $38                                         ; $4b87: $ff
	rst  $38                                         ; $4b88: $ff
	db   $fc                                         ; $4b89: $fc
	sbc  [hl]                                        ; $4b8a: $9e
	rst  $38                                         ; $4b8b: $ff
	rst  $38                                         ; $4b8c: $ff
	ld   sp, hl                                      ; $4b8d: $f9
	ld   [hl+], a                                    ; $4b8e: $22
	ld   b, l                                        ; $4b8f: $45
	ld   [hl], l                                     ; $4b90: $75
	ld   hl, $1111                                   ; $4b91: $21 $11 $11
	ld   de, $ff8f                                   ; $4b94: $11 $8f $ff
	and  c                                           ; $4b97: $a1
	ld   de, $ff2d                                   ; $4b98: $11 $2d $ff
	rst  $38                                         ; $4b9b: $ff
	rst  $38                                         ; $4b9c: $ff
	db   $fc                                         ; $4b9d: $fc
	rst  $28                                         ; $4b9e: $ef
	rst  $38                                         ; $4b9f: $ff
	rst  $38                                         ; $4ba0: $ff
	and  h                                           ; $4ba1: $a4
	ld   [de], a                                     ; $4ba2: $12
	ld   d, [hl]                                     ; $4ba3: $56
	add  l                                           ; $4ba4: $85
	ld   de, $1111                                   ; $4ba5: $11 $11 $11
	add  hl, de                                      ; $4ba8: $19
	rst  $38                                         ; $4ba9: $ff
	ld   sp, hl                                      ; $4baa: $f9
	ld   de, $9f12                                   ; $4bab: $11 $12 $9f
	rst  $38                                         ; $4bae: $ff
	rst  $38                                         ; $4baf: $ff
	rst  $38                                         ; $4bb0: $ff
	cp   h                                           ; $4bb1: $bc
	rst  $38                                         ; $4bb2: $ff
	rst  $38                                         ; $4bb3: $ff
	ld   a, [$5654]                                  ; $4bb4: $fa $54 $56
	ld   h, l                                        ; $4bb7: $65
	ld   hl, $1111                                   ; $4bb8: $21 $11 $11
	ld   de, $ff8f                                   ; $4bbb: $11 $8f $ff
	sub  c                                           ; $4bbe: $91
	ld   de, $ff38                                   ; $4bbf: $11 $38 $ff
	rst  $38                                         ; $4bc2: $ff
	rst  $38                                         ; $4bc3: $ff
	call c, $ffef                                    ; $4bc4: $dc $ef $ff
	rst  $38                                         ; $4bc7: $ff
	or   [hl]                                        ; $4bc8: $b6
	ld   d, l                                        ; $4bc9: $55
	ld   [hl], a                                     ; $4bca: $77
	ld   d, e                                        ; $4bcb: $53
	ld   de, $1111                                   ; $4bcc: $11 $11 $11
	inc  e                                           ; $4bcf: $1c
	rst  $38                                         ; $4bd0: $ff
	or   $11                                         ; $4bd1: $f6 $11
	inc  d                                           ; $4bd3: $14
	adc  a                                           ; $4bd4: $8f
	rst  $38                                         ; $4bd5: $ff
	rst  $38                                         ; $4bd6: $ff
	cp   $bd                                         ; $4bd7: $fe $bd
	rst  $38                                         ; $4bd9: $ff
	rst  $38                                         ; $4bda: $ff
	ei                                               ; $4bdb: $fb
	ld   [hl], l                                     ; $4bdc: $75
	ld   d, l                                        ; $4bdd: $55
	ld   b, h                                        ; $4bde: $44
	ld   de, $1111                                   ; $4bdf: $11 $11 $11
	ld   d, $ff                                      ; $4be2: $16 $ff
	db   $fd                                         ; $4be4: $fd
	ld   de, $7f11                                   ; $4be5: $11 $11 $7f
	rst  $38                                         ; $4be8: $ff
	rst  $38                                         ; $4be9: $ff
	rst  $38                                         ; $4bea: $ff
	call c, $ffff                                    ; $4beb: $dc $ff $ff
	db   $fd                                         ; $4bee: $fd
	add  h                                           ; $4bef: $84
	dec  [hl]                                        ; $4bf0: $35
	ld   d, l                                        ; $4bf1: $55
	ld   sp, $1111                                   ; $4bf2: $31 $11 $11
	ld   d, $ff                                      ; $4bf5: $16 $ff
	rst  $38                                         ; $4bf7: $ff
	ld   hl, $5b11                                   ; $4bf8: $21 $11 $5b
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	rst  $38                                         ; $4bfd: $ff
	call c, $ffff                                    ; $4bfe: $dc $ff $ff
	db   $fc                                         ; $4c01: $fc
	add  l                                           ; $4c02: $85
	ld   b, l                                        ; $4c03: $45
	ld   b, h                                        ; $4c04: $44
	ld   hl, $1111                                   ; $4c05: $21 $11 $11
	inc  d                                           ; $4c08: $14
	rst  $38                                         ; $4c09: $ff
	rst  $38                                         ; $4c0a: $ff
	ld   b, c                                        ; $4c0b: $41
	ld   de, $ff4b                                   ; $4c0c: $11 $4b $ff
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	xor  $ff                                         ; $4c11: $ee $ff
	rst  $38                                         ; $4c13: $ff
	db   $fc                                         ; $4c14: $fc
	add  l                                           ; $4c15: $85
	ld   d, l                                        ; $4c16: $55
	ld   b, e                                        ; $4c17: $43
	ld   de, $1111                                   ; $4c18: $11 $11 $11
	rla                                              ; $4c1b: $17
	rst  $38                                         ; $4c1c: $ff
	rst  $38                                         ; $4c1d: $ff
	ld   de, $6c11                                   ; $4c1e: $11 $11 $6c
	rst  $28                                         ; $4c21: $ef
	rst  $38                                         ; $4c22: $ff
	rst  $38                                         ; $4c23: $ff
	xor  $ff                                         ; $4c24: $ee $ff
	rst  $38                                         ; $4c26: $ff
	db   $ec                                         ; $4c27: $ec
	ld   [hl], l                                     ; $4c28: $75
	ld   h, h                                        ; $4c29: $64
	ld   [hl-], a                                    ; $4c2a: $32
	ld   de, $1111                                   ; $4c2b: $11 $11 $11
	ld   e, $ff                                      ; $4c2e: $1e $ff
	ld   a, [$1111]                                  ; $4c30: $fa $11 $11
	ld   l, d                                        ; $4c33: $6a
	rst  $28                                         ; $4c34: $ef
	rst  $38                                         ; $4c35: $ff
	rst  $38                                         ; $4c36: $ff
	rst  $38                                         ; $4c37: $ff
	rst  $28                                         ; $4c38: $ef
	cp   $d9                                         ; $4c39: $fe $d9
	add  a                                           ; $4c3b: $87
	ld   h, h                                        ; $4c3c: $64
	ld   sp, $1111                                   ; $4c3d: $31 $11 $11
	ld   de, $ff5f                                   ; $4c40: $11 $5f $ff
	rst  $10                                         ; $4c43: $d7
	ld   b, e                                        ; $4c44: $43
	dec  [hl]                                        ; $4c45: $35
	ld   l, c                                        ; $4c46: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c47: $cf
	rst  $38                                         ; $4c48: $ff
	rst  $38                                         ; $4c49: $ff
	rst  $28                                         ; $4c4a: $ef
	rst  $28                                         ; $4c4b: $ef
	db   $ec                                         ; $4c4c: $ec
	xor  d                                           ; $4c4d: $aa
	sbc  d                                           ; $4c4e: $9a
	sub  a                                           ; $4c4f: $97
	ld   b, d                                        ; $4c50: $42
	ld   de, $1111                                   ; $4c51: $11 $11 $11
	add  hl, sp                                      ; $4c54: $39
	cp   c                                           ; $4c55: $b9
	add  [hl]                                        ; $4c56: $86
	ld   d, [hl]                                     ; $4c57: $56
	ld   d, a                                        ; $4c58: $57
	adc  c                                           ; $4c59: $89
	cp   l                                           ; $4c5a: $bd
	rst  $28                                         ; $4c5b: $ef
	db   $ed                                         ; $4c5c: $ed
	xor  $ef                                         ; $4c5d: $ee $ef
	db   $dd                                         ; $4c5f: $dd
	res  5, e                                        ; $4c60: $cb $ab
	cp   d                                           ; $4c62: $ba
	xor  b                                           ; $4c63: $a8
	halt                                             ; $4c64: $76
	ld   sp, $2311                                   ; $4c65: $31 $11 $23
	ld   sp, $1111                                   ; $4c68: $31 $11 $11
	inc  [hl]                                        ; $4c6b: $34
	ld   d, [hl]                                     ; $4c6c: $56
	ld   a, b                                        ; $4c6d: $78
	cp   h                                           ; $4c6e: $bc
	xor  $ff                                         ; $4c6f: $ee $ff
	rst  $38                                         ; $4c71: $ff
	rst  $38                                         ; $4c72: $ff
	rst  $38                                         ; $4c73: $ff
	xor  $fd                                         ; $4c74: $ee $fd
	res  5, b                                        ; $4c76: $cb $a8
	ld   [hl], l                                     ; $4c78: $75
	ld   hl, $1111                                   ; $4c79: $21 $11 $11
	ld   de, $1111                                   ; $4c7c: $11 $11 $11
	inc  de                                          ; $4c7f: $13
	ld   b, l                                        ; $4c80: $45
	ld   l, b                                        ; $4c81: $68
	cp   l                                           ; $4c82: $bd
	rst  $38                                         ; $4c83: $ff
	rst  $38                                         ; $4c84: $ff
	rst  $38                                         ; $4c85: $ff
	rst  $38                                         ; $4c86: $ff
	rst  $38                                         ; $4c87: $ff
	rst  $38                                         ; $4c88: $ff
	cp   $cb                                         ; $4c89: $fe $cb
	sub  a                                           ; $4c8b: $97
	ld   h, h                                        ; $4c8c: $64
	ld   de, $1111                                   ; $4c8d: $11 $11 $11
	ld   de, $1111                                   ; $4c90: $11 $11 $11
	inc  de                                          ; $4c93: $13
	ld   b, l                                        ; $4c94: $45
	ld   l, c                                        ; $4c95: $69
	adc  $ff                                         ; $4c96: $ce $ff
	rst  $38                                         ; $4c98: $ff
	rst  $38                                         ; $4c99: $ff
	rst  $38                                         ; $4c9a: $ff
	rst  $38                                         ; $4c9b: $ff
	rst  $38                                         ; $4c9c: $ff
	cp   $cb                                         ; $4c9d: $fe $cb
	sub  a                                           ; $4c9f: $97
	ld   h, e                                        ; $4ca0: $63
	ld   de, $1111                                   ; $4ca1: $11 $11 $11
	ld   de, $1111                                   ; $4ca4: $11 $11 $11
	inc  hl                                          ; $4ca7: $23
	ld   b, l                                        ; $4ca8: $45
	ld   l, c                                        ; $4ca9: $69
	cp   a                                           ; $4caa: $bf
	rst  $38                                         ; $4cab: $ff
	rst  $38                                         ; $4cac: $ff
	rst  $38                                         ; $4cad: $ff
	rst  $38                                         ; $4cae: $ff
	rst  $38                                         ; $4caf: $ff
	rst  $38                                         ; $4cb0: $ff
	cp   $ca                                         ; $4cb1: $fe $ca
	add  a                                           ; $4cb3: $87
	ld   d, d                                        ; $4cb4: $52
	ld   de, $1111                                   ; $4cb5: $11 $11 $11
	ld   de, $1111                                   ; $4cb8: $11 $11 $11
	inc  hl                                          ; $4cbb: $23
	ld   b, l                                        ; $4cbc: $45
	ld   a, d                                        ; $4cbd: $7a
	rst  JumpTable                                         ; $4cbe: $df
	rst  $38                                         ; $4cbf: $ff
	rst  $38                                         ; $4cc0: $ff
	rst  $38                                         ; $4cc1: $ff
	rst  $38                                         ; $4cc2: $ff
	rst  $38                                         ; $4cc3: $ff
	rst  $38                                         ; $4cc4: $ff
	db   $fd                                         ; $4cc5: $fd
	cp   d                                           ; $4cc6: $ba
	sub  a                                           ; $4cc7: $97
	ld   d, d                                        ; $4cc8: $52
	ld   de, $1111                                   ; $4cc9: $11 $11 $11
	ld   de, $1111                                   ; $4ccc: $11 $11 $11
	inc  sp                                          ; $4ccf: $33
	ld   b, l                                        ; $4cd0: $45
	ld   a, e                                        ; $4cd1: $7b
	rst  $28                                         ; $4cd2: $ef
	rst  $38                                         ; $4cd3: $ff
	rst  $38                                         ; $4cd4: $ff
	rst  $38                                         ; $4cd5: $ff
	rst  $38                                         ; $4cd6: $ff
	rst  $38                                         ; $4cd7: $ff
	rst  $38                                         ; $4cd8: $ff
	db   $fd                                         ; $4cd9: $fd
	jp   z, $3186                                    ; $4cda: $ca $86 $31

	ld   de, $1101                                   ; $4cdd: $11 $01 $11
	ld   de, $1211                                   ; $4ce0: $11 $11 $12
	inc  hl                                          ; $4ce3: $23
	ld   b, [hl]                                     ; $4ce4: $46
	xor  h                                           ; $4ce5: $ac
	rst  $38                                         ; $4ce6: $ff
	rst  $38                                         ; $4ce7: $ff
	rst  $38                                         ; $4ce8: $ff
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	rst  $38                                         ; $4ceb: $ff
	rst  $38                                         ; $4cec: $ff
	db   $ec                                         ; $4ced: $ec
	cp   c                                           ; $4cee: $b9
	ld   [hl], h                                     ; $4cef: $74
	ld   de, $1111                                   ; $4cf0: $11 $11 $11
	ld   de, $1111                                   ; $4cf3: $11 $11 $11
	ld   [hl+], a                                    ; $4cf6: $22
	inc  sp                                          ; $4cf7: $33
	ld   e, c                                        ; $4cf8: $59
	rst  JumpTable                                         ; $4cf9: $df
	rst  $38                                         ; $4cfa: $ff
	rst  $38                                         ; $4cfb: $ff
	rst  $38                                         ; $4cfc: $ff
	rst  $38                                         ; $4cfd: $ff
	rst  $38                                         ; $4cfe: $ff
	rst  $38                                         ; $4cff: $ff
	cp   $cb                                         ; $4d00: $fe $cb
	sub  a                                           ; $4d02: $97
	ld   b, d                                        ; $4d03: $42
	ld   [de], a                                     ; $4d04: $12
	ld   de, $1111                                   ; $4d05: $11 $11 $11
	ld   de, $2312                                   ; $4d08: $11 $12 $23
	dec  [hl]                                        ; $4d0b: $35
	sbc  l                                           ; $4d0c: $9d
	rst  $38                                         ; $4d0d: $ff
	rst  $38                                         ; $4d0e: $ff
	rst  $38                                         ; $4d0f: $ff
	rst  $38                                         ; $4d10: $ff
	rst  $38                                         ; $4d11: $ff
	rst  $38                                         ; $4d12: $ff
	rst  $38                                         ; $4d13: $ff
	db   $ec                                         ; $4d14: $ec
	cp   c                                           ; $4d15: $b9
	ld   [hl], h                                     ; $4d16: $74
	ld   [de], a                                     ; $4d17: $12
	ld   [hl-], a                                    ; $4d18: $32
	ld   de, $1111                                   ; $4d19: $11 $11 $11
	ld   de, $3312                                   ; $4d1c: $11 $12 $33
	ld   a, e                                        ; $4d1f: $7b
	rst  $28                                         ; $4d20: $ef
	rst  $38                                         ; $4d21: $ff
	rst  $38                                         ; $4d22: $ff
	rst  $38                                         ; $4d23: $ff
	rst  $38                                         ; $4d24: $ff
	rst  $38                                         ; $4d25: $ff
	rst  $38                                         ; $4d26: $ff
	cp   $db                                         ; $4d27: $fe $db
	add  l                                           ; $4d29: $85
	inc  sp                                          ; $4d2a: $33
	ld   d, e                                        ; $4d2b: $53
	ld   de, $1111                                   ; $4d2c: $11 $11 $11
	ld   de, $2211                                   ; $4d2f: $11 $11 $22
	ld   l, d                                        ; $4d32: $6a
	sbc  $ee                                         ; $4d33: $de $ee
	rst  $28                                         ; $4d35: $ef
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	rst  $38                                         ; $4d38: $ff
	rst  $38                                         ; $4d39: $ff
	cp   $db                                         ; $4d3a: $fe $db
	sub  [hl]                                        ; $4d3c: $96
	ld   b, h                                        ; $4d3d: $44
	ld   d, h                                        ; $4d3e: $54
	ld   hl, $1111                                   ; $4d3f: $21 $11 $11
	ld   de, $2211                                   ; $4d42: $11 $11 $22
	ld   e, c                                        ; $4d45: $59
	call $dfee                                       ; $4d46: $cd $ee $df
	rst  $38                                         ; $4d49: $ff
	rst  $38                                         ; $4d4a: $ff
	rst  $38                                         ; $4d4b: $ff
	rst  $38                                         ; $4d4c: $ff
	cp   $dc                                         ; $4d4d: $fe $dc
	sub  [hl]                                        ; $4d4f: $96
	ld   b, l                                        ; $4d50: $45
	ld   [hl], l                                     ; $4d51: $75
	ld   sp, $1111                                   ; $4d52: $31 $11 $11
	ld   de, $2212                                   ; $4d55: $11 $12 $22
	ld   l, b                                        ; $4d58: $68
	db   $dd                                         ; $4d59: $dd
	db   $ed                                         ; $4d5a: $ed
	adc  $df                                         ; $4d5b: $ce $df
	rst  $38                                         ; $4d5d: $ff
	rst  $38                                         ; $4d5e: $ff
	xor  $fe                                         ; $4d5f: $ee $fe
	db   $eb                                         ; $4d61: $eb
	and  a                                           ; $4d62: $a7
	ld   d, [hl]                                     ; $4d63: $56
	halt                                             ; $4d64: $76
	ld   sp, $1111                                   ; $4d65: $31 $11 $11
	ld   [de], a                                     ; $4d68: $12
	ld   [de], a                                     ; $4d69: $12
	ld   [de], a                                     ; $4d6a: $12
	ld   l, b                                        ; $4d6b: $68
	call $bdec                                       ; $4d6c: $cd $ec $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d6f: $cf
	rst  $38                                         ; $4d70: $ff
	cp   $ee                                         ; $4d71: $fe $ee
	cp   $dc                                         ; $4d73: $fe $dc
	xor  b                                           ; $4d75: $a8
	ld   a, b                                        ; $4d76: $78
	add  [hl]                                        ; $4d77: $86
	ld   b, c                                        ; $4d78: $41
	ld   de, $1211                                   ; $4d79: $11 $11 $12
	ld   [de], a                                     ; $4d7c: $12
	ld   [de], a                                     ; $4d7d: $12
	ld   e, b                                        ; $4d7e: $58
	cp   h                                           ; $4d7f: $bc
	res  7, e                                        ; $4d80: $cb $bb
	adc  $ff                                         ; $4d82: $ce $ff
	cp   $ee                                         ; $4d84: $fe $ee
	cp   $ed                                         ; $4d86: $fe $ed
	cp   d                                           ; $4d88: $ba
	adc  c                                           ; $4d89: $89
	and  a                                           ; $4d8a: $a7
	ld   d, d                                        ; $4d8b: $52
	ld   de, $1211                                   ; $4d8c: $11 $11 $12
	ld   [de], a                                     ; $4d8f: $12
	ld   [de], a                                     ; $4d90: $12
	ld   b, a                                        ; $4d91: $47
	sbc  d                                           ; $4d92: $9a
	cp   d                                           ; $4d93: $ba
	sbc  d                                           ; $4d94: $9a
	xor  h                                           ; $4d95: $ac
	sbc  $ed                                         ; $4d96: $de $ed
	db   $dd                                         ; $4d98: $dd
	rst  $38                                         ; $4d99: $ff
	xor  $cc                                         ; $4d9a: $ee $cc
	cp   d                                           ; $4d9c: $ba
	cp   d                                           ; $4d9d: $ba
	ld   [hl], l                                     ; $4d9e: $75
	ld   hl, $1111                                   ; $4d9f: $21 $11 $11
	ld   hl, $2421                                   ; $4da2: $21 $21 $24
	ld   l, b                                        ; $4da5: $68
	sbc  d                                           ; $4da6: $9a
	adc  b                                           ; $4da7: $88
	adc  d                                           ; $4da8: $8a
	cp   h                                           ; $4da9: $bc
	call $eecc                                       ; $4daa: $cd $cc $ee
	rst  $38                                         ; $4dad: $ff
	cp   $dc                                         ; $4dae: $fe $dc
	cp   e                                           ; $4db0: $bb
	xor  b                                           ; $4db1: $a8
	ld   h, e                                        ; $4db2: $63
	ld   de, $1211                                   ; $4db3: $11 $11 $12
	ld   [hl+], a                                    ; $4db6: $22
	ld   [de], a                                     ; $4db7: $12
	ld   b, l                                        ; $4db8: $45
	ld   a, b                                        ; $4db9: $78
	add  a                                           ; $4dba: $87
	ld   [hl], a                                     ; $4dbb: $77
	adc  d                                           ; $4dbc: $8a
	xor  h                                           ; $4dbd: $ac
	call z, $dfcd                                    ; $4dbe: $cc $cd $df
	rst  $38                                         ; $4dc1: $ff
	cp   $ec                                         ; $4dc2: $fe $ec
	db   $db                                         ; $4dc4: $db
	xor  c                                           ; $4dc5: $a9
	ld   h, e                                        ; $4dc6: $63
	ld   hl, $2211                                   ; $4dc7: $21 $11 $22
	ld   [hl+], a                                    ; $4dca: $22
	ld   [de], a                                     ; $4dcb: $12
	dec  [hl]                                        ; $4dcc: $35
	ld   h, a                                        ; $4dcd: $67
	halt                                             ; $4dce: $76
	ld   h, [hl]                                     ; $4dcf: $66
	ld   a, b                                        ; $4dd0: $78
	xor  e                                           ; $4dd1: $ab
	xor  d                                           ; $4dd2: $aa
	call $ffee                                       ; $4dd3: $cd $ee $ff
	rst  $38                                         ; $4dd6: $ff
	xor  $cd                                         ; $4dd7: $ee $cd
	jp   z, $3275                                    ; $4dd9: $ca $75 $32

	ld   de, $2222                                   ; $4ddc: $11 $22 $22
	ld   [hl+], a                                    ; $4ddf: $22
	inc  [hl]                                        ; $4de0: $34
	ld   d, [hl]                                     ; $4de1: $56
	halt                                             ; $4de2: $76
	ld   h, [hl]                                     ; $4de3: $66
	ld   h, a                                        ; $4de4: $67
	sbc  d                                           ; $4de5: $9a
	cp   e                                           ; $4de6: $bb
	cp   e                                           ; $4de7: $bb
	adc  $ef                                         ; $4de8: $ce $ef
	rst  $38                                         ; $4dea: $ff
	cp   $dd                                         ; $4deb: $fe $dd
	res  2, a                                        ; $4ded: $cb $97
	ld   d, e                                        ; $4def: $53
	ld   hl, $2212                                   ; $4df0: $21 $12 $22
	ld   [hl+], a                                    ; $4df3: $22
	inc  [hl]                                        ; $4df4: $34
	ld   d, [hl]                                     ; $4df5: $56
	ld   [hl], a                                     ; $4df6: $77
	ld   h, [hl]                                     ; $4df7: $66
	ld   h, a                                        ; $4df8: $67
	sbc  c                                           ; $4df9: $99
	cp   d                                           ; $4dfa: $ba
	cp   h                                           ; $4dfb: $bc
	call z, $ffef                                    ; $4dfc: $cc $ef $ff
	db   $ed                                         ; $4dff: $ed
	call z, $a7bb                                    ; $4e00: $cc $bb $a7
	ld   d, e                                        ; $4e03: $53
	ld   de, $2312                                   ; $4e04: $11 $12 $23
	ld   [hl+], a                                    ; $4e07: $22
	inc  sp                                          ; $4e08: $33
	ld   e, c                                        ; $4e09: $59
	xor  e                                           ; $4e0a: $ab
	xor  b                                           ; $4e0b: $a8
	adc  d                                           ; $4e0c: $8a
	rst  $28                                         ; $4e0d: $ef
	rst  $38                                         ; $4e0e: $ff
	rst  $38                                         ; $4e0f: $ff
	db   $dd                                         ; $4e10: $dd
	jp   c, $1141                                    ; $4e11: $da $41 $11

	ld   de, $efaf                                   ; $4e14: $11 $af $ef
	add  d                                           ; $4e17: $82
	rst  JumpTable                                         ; $4e18: $df
	rst  $38                                         ; $4e19: $ff
	ldh  a, [c]                                      ; $4e1a: $f2
	ld   de, $ec1b                                   ; $4e1b: $11 $1b $ec
	rst  ToBoot                                         ; $4e1e: $c7
	ld   e, [hl]                                     ; $4e1f: $5e
	rst  $38                                         ; $4e20: $ff
	ldh  a, [c]                                      ; $4e21: $f2
	ld   de, $1111                                   ; $4e22: $11 $11 $11
	rst  $28                                         ; $4e25: $ef
	rst  $38                                         ; $4e26: $ff
	rst  $38                                         ; $4e27: $ff
	rst  $38                                         ; $4e28: $ff
	rst  $20                                         ; $4e29: $e7
	ld   b, c                                        ; $4e2a: $41
	ld   de, $ff3e                                   ; $4e2b: $11 $3e $ff
	rst  $38                                         ; $4e2e: $ff
	rst  $38                                         ; $4e2f: $ff
	pop  af                                          ; $4e30: $f1
	ld   de, $1111                                   ; $4e31: $11 $11 $11
	xor  a                                           ; $4e34: $af
	rst  $38                                         ; $4e35: $ff
	rst  $38                                         ; $4e36: $ff
	ld   l, a                                        ; $4e37: $6f
	add  e                                           ; $4e38: $83
	ld   de, $6f11                                   ; $4e39: $11 $11 $6f
	rst  $38                                         ; $4e3c: $ff
	rst  $38                                         ; $4e3d: $ff
	or   $91                                         ; $4e3e: $f6 $91
	ld   de, $1111                                   ; $4e40: $11 $11 $11
	rst  $38                                         ; $4e43: $ff
	rst  $38                                         ; $4e44: $ff
	rst  $38                                         ; $4e45: $ff
	ld   de, $1111                                   ; $4e46: $11 $11 $11
	ld   de, $ffff                                   ; $4e49: $11 $ff $ff
	db   $fd                                         ; $4e4c: $fd
	ld   sp, $1111                                   ; $4e4d: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $4e50: $11 $11 $ff
	rst  $38                                         ; $4e53: $ff
	sbc  [hl]                                        ; $4e54: $9e
	ld   de, $5911                                   ; $4e55: $11 $11 $59
	ld   de, $ffff                                   ; $4e58: $11 $ff $ff
	add  c                                           ; $4e5b: $81
	ld   de, $892f                                   ; $4e5c: $11 $2f $89
	ld   de, $ff1f                                   ; $4e5f: $11 $1f $ff
	rst  $30                                         ; $4e62: $f7
	ld   de, $da12                                   ; $4e63: $11 $12 $da
	ret  c                                           ; $4e66: $d8

	rra                                              ; $4e67: $1f
	rst  $38                                         ; $4e68: $ff
	db   $fc                                         ; $4e69: $fc
	ld   de, rAUD1LEN                                   ; $4e6a: $11 $11 $ff
	add  c                                           ; $4e6d: $81
	ld   de, $ff6f                                   ; $4e6e: $11 $6f $ff
	pop  af                                          ; $4e71: $f1
	ld   de, $b71f                                   ; $4e72: $11 $1f $b7
	and  c                                           ; $4e75: $a1
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	pop  bc                                          ; $4e78: $c1
	ld   de, $f41f                                   ; $4e79: $11 $1f $f4
	ld   de, $ff1f                                   ; $4e7c: $11 $1f $ff
	db   $f4                                         ; $4e7f: $f4
	ld   de, $f914                                   ; $4e80: $11 $14 $f9
	ld   [hl], a                                     ; $4e83: $77
	rra                                              ; $4e84: $1f
	rst  $38                                         ; $4e85: $ff
	pop  af                                          ; $4e86: $f1
	ld   de, $fc18                                   ; $4e87: $11 $18 $fc
	ld   de, rAUD1LEN                                   ; $4e8a: $11 $11 $ff
	rst  $38                                         ; $4e8d: $ff
	ld   de, $ef11                                   ; $4e8e: $11 $11 $ef
	ld   a, e                                        ; $4e91: $7b
	inc  l                                           ; $4e92: $2c
	rst  $38                                         ; $4e93: $ff
	ei                                               ; $4e94: $fb
	ld   de, rAUD1LOW                                   ; $4e95: $11 $13 $ff
	ld   hl, rAUD1LEN                                   ; $4e98: $21 $11 $ff
	rst  $38                                         ; $4e9b: $ff
	ld   de, $ef11                                   ; $4e9c: $11 $11 $ef
	xor  b                                           ; $4e9f: $a8
	ld   c, e                                        ; $4ea0: $4b
	rst  $38                                         ; $4ea1: $ff
	ld   sp, hl                                      ; $4ea2: $f9
	ld   de, $ff15                                   ; $4ea3: $11 $15 $ff
	ld   de, rAUD1LEN                                   ; $4ea6: $11 $11 $ff
	rst  $38                                         ; $4ea9: $ff
	ld   de, $fe11                                   ; $4eaa: $11 $11 $fe
	ld   a, b                                        ; $4ead: $78
	ld   e, a                                        ; $4eae: $5f
	rst  $38                                         ; $4eaf: $ff
	pop  af                                          ; $4eb0: $f1
	ld   de, $ff1a                                   ; $4eb1: $11 $1a $ff
	ld   de, rAUD1LEN                                   ; $4eb4: $11 $11 $ff
	rst  $38                                         ; $4eb7: $ff
	ld   de, $fa11                                   ; $4eb8: $11 $11 $fa
	ld   e, h                                        ; $4ebb: $5c
	cp   a                                           ; $4ebc: $bf
	rst  $38                                         ; $4ebd: $ff
	pop  hl                                          ; $4ebe: $e1
	ld   de, $f83e                                   ; $4ebf: $11 $3e $f8
	ld   de, $ff1f                                   ; $4ec2: $11 $1f $ff
	pop  af                                          ; $4ec5: $f1
	ld   de, $b31f                                   ; $4ec6: $11 $1f $b3
	adc  a                                           ; $4ec9: $8f
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	ld   de, $cf11                                   ; $4ecc: $11 $11 $cf
	pop  de                                          ; $4ecf: $d1
	ld   de, $ffff                                   ; $4ed0: $11 $ff $ff
	ld   de, $dc11                                   ; $4ed3: $11 $11 $dc
	rla                                              ; $4ed6: $17
	rst  $38                                         ; $4ed7: $ff
	rst  $38                                         ; $4ed8: $ff
	pop  de                                          ; $4ed9: $d1
	ld   de, $fe2a                                   ; $4eda: $11 $2a $fe
	ld   de, $ff1f                                   ; $4edd: $11 $1f $ff
	pop  af                                          ; $4ee0: $f1
	ld   de, $b11c                                   ; $4ee1: $11 $1c $b1
	sbc  a                                           ; $4ee4: $9f
	rst  $38                                         ; $4ee5: $ff
	ld   sp, hl                                      ; $4ee6: $f9
	ld   de, $ae14                                   ; $4ee7: $11 $14 $ae
	pop  bc                                          ; $4eea: $c1
	ld   de, $ffff                                   ; $4eeb: $11 $ff $ff
	ld   de, $f611                                   ; $4eee: $11 $11 $f6
	rra                                              ; $4ef1: $1f
	rst  $38                                         ; $4ef2: $ff
	rst  $38                                         ; $4ef3: $ff
	ld   de, $9a11                                   ; $4ef4: $11 $11 $9a
	rst  ToBoot                                         ; $4ef7: $c7
	ld   de, $ff1f                                   ; $4ef8: $11 $1f $ff
	pop  af                                          ; $4efb: $f1
	ld   sp, $121d                                   ; $4efc: $31 $1d $12
	rst  $38                                         ; $4eff: $ff
	rst  $38                                         ; $4f00: $ff
	ld   de, $4a11                                   ; $4f01: $11 $11 $4a
	ld   a, l                                        ; $4f04: $7d
	ld   de, $ff1f                                   ; $4f05: $11 $1f $ff
	pop  af                                          ; $4f08: $f1
	ld   de, $2119                                   ; $4f09: $11 $19 $21
	rst  $38                                         ; $4f0c: $ff
	rst  $38                                         ; $4f0d: $ff
	or   c                                           ; $4f0e: $b1
	ld   de, $5718                                   ; $4f0f: $11 $18 $57
	ld   [hl], c                                     ; $4f12: $71
	rra                                              ; $4f13: $1f
	rst  $38                                         ; $4f14: $ff
	pop  af                                          ; $4f15: $f1
	ld   [de], a                                     ; $4f16: $12
	ld   de, $6f71                                   ; $4f17: $11 $71 $6f
	rst  $38                                         ; $4f1a: $ff
	pop  af                                          ; $4f1b: $f1
	ld   de, $5311                                   ; $4f1c: $11 $11 $53
	and  c                                           ; $4f1f: $a1
	rra                                              ; $4f20: $1f
	rst  $38                                         ; $4f21: $ff
	rst  $30                                         ; $4f22: $f7
	dec  d                                           ; $4f23: $15
	ld   de, $1f41                                   ; $4f24: $11 $41 $1f
	rst  $38                                         ; $4f27: $ff
	pop  af                                          ; $4f28: $f1
	ld   de, $2111                                   ; $4f29: $11 $11 $21
	pop  bc                                          ; $4f2c: $c1
	rra                                              ; $4f2d: $1f
	rst  $38                                         ; $4f2e: $ff
	ld   hl, sp+$1a                                  ; $4f2f: $f8 $1a
	ld   de, $1f11                                   ; $4f31: $11 $11 $1f
	rst  $38                                         ; $4f34: $ff
	pop  af                                          ; $4f35: $f1
	ld   de, $1111                                   ; $4f36: $11 $11 $11
	or   c                                           ; $4f39: $b1
	rra                                              ; $4f3a: $1f
	rst  $38                                         ; $4f3b: $ff
	pop  af                                          ; $4f3c: $f1
	jr   jr_0d4_4f50                                 ; $4f3d: $18 $11

	ld   de, $ff6f                                   ; $4f3f: $11 $6f $ff
	pop  af                                          ; $4f42: $f1
	ld   de, $1111                                   ; $4f43: $11 $11 $11
	add  c                                           ; $4f46: $81
	rra                                              ; $4f47: $1f
	rst  $38                                         ; $4f48: $ff
	pop  af                                          ; $4f49: $f1
	ld   de, $1111                                   ; $4f4a: $11 $11 $11
	rst  $38                                         ; $4f4d: $ff
	rst  $38                                         ; $4f4e: $ff
	ldh  a, [c]                                      ; $4f4f: $f2

jr_0d4_4f50:
	ld   de, $1211                                   ; $4f50: $11 $11 $12
	ld   de, $ffff                                   ; $4f53: $11 $ff $ff
	ld   h, c                                        ; $4f56: $61
	ld   b, c                                        ; $4f57: $41
	ld   de, rAUD1ENV                                   ; $4f58: $11 $12 $ff
	rst  $38                                         ; $4f5b: $ff
	ldh  a, [c]                                      ; $4f5c: $f2
	ld   de, $1111                                   ; $4f5d: $11 $11 $11
	ld   de, $ffff                                   ; $4f60: $11 $ff $ff
	rla                                              ; $4f63: $17
	ld   de, $1f11                                   ; $4f64: $11 $11 $1f
	rst  $38                                         ; $4f67: $ff
	rst  $38                                         ; $4f68: $ff
	pop  af                                          ; $4f69: $f1
	ld   de, $1111                                   ; $4f6a: $11 $11 $11
	rra                                              ; $4f6d: $1f
	rst  $38                                         ; $4f6e: $ff
	pop  af                                          ; $4f6f: $f1
	pop  bc                                          ; $4f70: $c1
	ld   de, rAUD1LEN                                   ; $4f71: $11 $11 $ff
	rst  $38                                         ; $4f74: $ff
	rst  $38                                         ; $4f75: $ff
	and  c                                           ; $4f76: $a1
	ld   de, $1111                                   ; $4f77: $11 $11 $11
	rst  $38                                         ; $4f7a: $ff
	rst  $38                                         ; $4f7b: $ff
	ld   a, a                                        ; $4f7c: $7f
	ld   hl, $1a11                                   ; $4f7d: $21 $11 $1a
	rst  $38                                         ; $4f80: $ff
	rst  $38                                         ; $4f81: $ff
	rst  $38                                         ; $4f82: $ff
	ld   sp, $1111                                   ; $4f83: $31 $11 $11
	inc  e                                           ; $4f86: $1c
	rst  $38                                         ; $4f87: $ff
	cp   $ff                                         ; $4f88: $fe $ff
	add  c                                           ; $4f8a: $81
	ld   de, $ff3e                                   ; $4f8b: $11 $3e $ff
	rst  $38                                         ; $4f8e: $ff
	rst  $38                                         ; $4f8f: $ff
	ld   de, $1111                                   ; $4f90: $11 $11 $11
	rra                                              ; $4f93: $1f
	rst  $38                                         ; $4f94: $ff
	rst  $38                                         ; $4f95: $ff
	rst  $38                                         ; $4f96: $ff
	or   c                                           ; $4f97: $b1
	ld   de, $ec38                                   ; $4f98: $11 $38 $ec
	rst  $38                                         ; $4f9b: $ff
	ld   hl, sp+$11                                  ; $4f9c: $f8 $11
	ld   de, $3f12                                   ; $4f9e: $11 $12 $3f
	rst  $38                                         ; $4fa1: $ff
	rst  $38                                         ; $4fa2: $ff
	cp   $74                                         ; $4fa3: $fe $74
	ld   sp, $ef98                                   ; $4fa5: $31 $98 $ef
	rst  $38                                         ; $4fa8: $ff
	call nz, $1911                                   ; $4fa9: $c4 $11 $19
	adc  d                                           ; $4fac: $8a
	add  d                                           ; $4fad: $82
	rst  $38                                         ; $4fae: $ff
	db   $fc                                         ; $4faf: $fc
	cp   e                                           ; $4fb0: $bb
	ld   hl, sp+$26                                  ; $4fb1: $f8 $26
	ld   l, a                                        ; $4fb3: $6f
	xor  b                                           ; $4fb4: $a8
	sub  a                                           ; $4fb5: $97
	and  d                                           ; $4fb6: $a2
	ld   de, $caac                                   ; $4fb7: $11 $ac $ca
	rla                                              ; $4fba: $17
	sbc  b                                           ; $4fbb: $98
	add  [hl]                                        ; $4fbc: $86
	adc  e                                           ; $4fbd: $8b
	sub  l                                           ; $4fbe: $95
	halt                                             ; $4fbf: $76
	jp   z, $ae89                                    ; $4fc0: $ca $89 $ae

	db   $dd                                         ; $4fc3: $dd
	cp   e                                           ; $4fc4: $bb
	sbc  c                                           ; $4fc5: $99
	ld   a, b                                        ; $4fc6: $78
	ld   [hl], l                                     ; $4fc7: $75
	ld   h, [hl]                                     ; $4fc8: $66
	add  [hl]                                        ; $4fc9: $86
	halt                                             ; $4fca: $76
	ld   d, l                                        ; $4fcb: $55
	ld   b, l                                        ; $4fcc: $45
	ld   l, c                                        ; $4fcd: $69
	adc  c                                           ; $4fce: $89
	xor  d                                           ; $4fcf: $aa
	res  5, d                                        ; $4fd0: $cb $aa
	sbc  b                                           ; $4fd2: $98
	sub  a                                           ; $4fd3: $97
	adc  c                                           ; $4fd4: $89
	sbc  c                                           ; $4fd5: $99
	sbc  d                                           ; $4fd6: $9a
	sbc  c                                           ; $4fd7: $99
	halt                                             ; $4fd8: $76
	ld   b, l                                        ; $4fd9: $45
	ld   d, [hl]                                     ; $4fda: $56
	ld   h, [hl]                                     ; $4fdb: $66
	adc  b                                           ; $4fdc: $88
	adc  c                                           ; $4fdd: $89
	sbc  c                                           ; $4fde: $99
	sbc  b                                           ; $4fdf: $98
	ld   a, c                                        ; $4fe0: $79
	xor  c                                           ; $4fe1: $a9
	sbc  c                                           ; $4fe2: $99
	xor  c                                           ; $4fe3: $a9
	xor  c                                           ; $4fe4: $a9
	sub  a                                           ; $4fe5: $97
	ld   a, b                                        ; $4fe6: $78
	ld   a, b                                        ; $4fe7: $78
	sbc  b                                           ; $4fe8: $98
	ld   a, b                                        ; $4fe9: $78
	ld   [hl], a                                     ; $4fea: $77
	halt                                             ; $4feb: $76
	ld   h, [hl]                                     ; $4fec: $66
	ld   d, a                                        ; $4fed: $57
	add  a                                           ; $4fee: $87
	sbc  c                                           ; $4fef: $99
	sbc  d                                           ; $4ff0: $9a
	sbc  b                                           ; $4ff1: $98
	sbc  c                                           ; $4ff2: $99
	adc  b                                           ; $4ff3: $88
	sbc  c                                           ; $4ff4: $99
	sbc  c                                           ; $4ff5: $99
	adc  b                                           ; $4ff6: $88
	sbc  c                                           ; $4ff7: $99
	add  a                                           ; $4ff8: $87
	ld   h, [hl]                                     ; $4ff9: $66
	ld   [hl], a                                     ; $4ffa: $77
	halt                                             ; $4ffb: $76
	ld   a, b                                        ; $4ffc: $78
	ld   [hl], a                                     ; $4ffd: $77
	ld   [hl], a                                     ; $4ffe: $77
	ld   a, b                                        ; $4fff: $78
	ld   a, b                                        ; $5000: $78
	sbc  c                                           ; $5001: $99
	xor  b                                           ; $5002: $a8
	adc  b                                           ; $5003: $88
	sbc  d                                           ; $5004: $9a
	sub  a                                           ; $5005: $97
	ld   a, b                                        ; $5006: $78
	sbc  b                                           ; $5007: $98
	add  a                                           ; $5008: $87
	sbc  b                                           ; $5009: $98
	ld   [hl], a                                     ; $500a: $77
	ld   [hl], a                                     ; $500b: $77
	adc  b                                           ; $500c: $88
	ld   a, b                                        ; $500d: $78
	sbc  c                                           ; $500e: $99
	add  a                                           ; $500f: $87
	ld   a, b                                        ; $5010: $78
	sbc  b                                           ; $5011: $98
	ld   [hl], a                                     ; $5012: $77
	adc  c                                           ; $5013: $89
	sbc  c                                           ; $5014: $99
	adc  c                                           ; $5015: $89
	sbc  c                                           ; $5016: $99
	adc  b                                           ; $5017: $88
	sbc  b                                           ; $5018: $98
	adc  c                                           ; $5019: $89
	adc  b                                           ; $501a: $88
	sbc  b                                           ; $501b: $98
	halt                                             ; $501c: $76
	ld   l, b                                        ; $501d: $68
	add  a                                           ; $501e: $87
	ld   [hl], a                                     ; $501f: $77
	adc  b                                           ; $5020: $88
	add  a                                           ; $5021: $87
	adc  b                                           ; $5022: $88
	sbc  c                                           ; $5023: $99
	adc  b                                           ; $5024: $88
	adc  c                                           ; $5025: $89
	sbc  b                                           ; $5026: $98
	adc  c                                           ; $5027: $89
	sbc  b                                           ; $5028: $98
	ld   [hl], a                                     ; $5029: $77
	ld   a, c                                        ; $502a: $79
	add  a                                           ; $502b: $87
	ld   a, b                                        ; $502c: $78
	adc  b                                           ; $502d: $88
	ld   [hl], a                                     ; $502e: $77
	add  a                                           ; $502f: $87
	ld   [hl], a                                     ; $5030: $77
	ld   a, c                                        ; $5031: $79
	sbc  c                                           ; $5032: $99
	adc  b                                           ; $5033: $88
	sbc  c                                           ; $5034: $99
	sbc  b                                           ; $5035: $98
	ld   [hl], a                                     ; $5036: $77
	adc  c                                           ; $5037: $89
	adc  b                                           ; $5038: $88
	adc  b                                           ; $5039: $88
	sbc  b                                           ; $503a: $98
	adc  b                                           ; $503b: $88
	ld   [hl], a                                     ; $503c: $77
	ld   [hl], a                                     ; $503d: $77
	adc  b                                           ; $503e: $88
	adc  b                                           ; $503f: $88
	sbc  c                                           ; $5040: $99
	sbc  b                                           ; $5041: $98
	adc  b                                           ; $5042: $88
	ld   [hl], a                                     ; $5043: $77
	adc  c                                           ; $5044: $89
	adc  b                                           ; $5045: $88
	adc  c                                           ; $5046: $89
	adc  c                                           ; $5047: $89
	add  a                                           ; $5048: $87
	ld   [hl], a                                     ; $5049: $77
	ld   [hl], a                                     ; $504a: $77
	adc  b                                           ; $504b: $88
	adc  b                                           ; $504c: $88
	adc  c                                           ; $504d: $89
	adc  c                                           ; $504e: $89
	add  a                                           ; $504f: $87
	ld   [hl], a                                     ; $5050: $77
	adc  b                                           ; $5051: $88
	adc  c                                           ; $5052: $89
	sbc  b                                           ; $5053: $98
	sbc  b                                           ; $5054: $98
	add  a                                           ; $5055: $87
	ld   [hl], a                                     ; $5056: $77
	ld   a, b                                        ; $5057: $78
	adc  c                                           ; $5058: $89
	sbc  b                                           ; $5059: $98
	adc  c                                           ; $505a: $89
	adc  b                                           ; $505b: $88
	ld   [hl], a                                     ; $505c: $77
	adc  b                                           ; $505d: $88
	ld   a, b                                        ; $505e: $78
	adc  c                                           ; $505f: $89
	adc  c                                           ; $5060: $89
	adc  b                                           ; $5061: $88
	ld   a, b                                        ; $5062: $78
	ld   [hl], a                                     ; $5063: $77
	adc  b                                           ; $5064: $88
	sbc  c                                           ; $5065: $99
	adc  b                                           ; $5066: $88
	adc  c                                           ; $5067: $89
	add  a                                           ; $5068: $87
	ld   a, b                                        ; $5069: $78
	adc  b                                           ; $506a: $88
	ld   a, b                                        ; $506b: $78
	adc  b                                           ; $506c: $88
	sbc  c                                           ; $506d: $99
	adc  b                                           ; $506e: $88
	add  a                                           ; $506f: $87
	ld   [hl], a                                     ; $5070: $77
	adc  b                                           ; $5071: $88
	adc  b                                           ; $5072: $88
	adc  c                                           ; $5073: $89
	sbc  c                                           ; $5074: $99
	adc  b                                           ; $5075: $88
	add  a                                           ; $5076: $87
	add  a                                           ; $5077: $87
	ld   [hl], a                                     ; $5078: $77
	adc  b                                           ; $5079: $88
	adc  c                                           ; $507a: $89
	adc  b                                           ; $507b: $88
	add  a                                           ; $507c: $87
	add  a                                           ; $507d: $87
	adc  b                                           ; $507e: $88
	adc  c                                           ; $507f: $89
	sbc  b                                           ; $5080: $98
	sbc  b                                           ; $5081: $98
	adc  b                                           ; $5082: $88
	adc  b                                           ; $5083: $88
	adc  b                                           ; $5084: $88
	ld   a, b                                        ; $5085: $78
	adc  c                                           ; $5086: $89
	adc  c                                           ; $5087: $89
	adc  b                                           ; $5088: $88
	ld   [hl], a                                     ; $5089: $77
	adc  b                                           ; $508a: $88
	adc  b                                           ; $508b: $88
	sbc  c                                           ; $508c: $99
	adc  b                                           ; $508d: $88
	adc  b                                           ; $508e: $88
	adc  b                                           ; $508f: $88
	adc  b                                           ; $5090: $88
	adc  b                                           ; $5091: $88
	adc  b                                           ; $5092: $88
	adc  c                                           ; $5093: $89
	sbc  b                                           ; $5094: $98
	adc  b                                           ; $5095: $88
	ld   a, b                                        ; $5096: $78
	adc  b                                           ; $5097: $88
	adc  c                                           ; $5098: $89
	sbc  c                                           ; $5099: $99
	adc  b                                           ; $509a: $88
	adc  b                                           ; $509b: $88
	adc  b                                           ; $509c: $88
	adc  b                                           ; $509d: $88
	adc  b                                           ; $509e: $88
	adc  b                                           ; $509f: $88
	adc  b                                           ; $50a0: $88
	adc  b                                           ; $50a1: $88
	adc  b                                           ; $50a2: $88
	adc  b                                           ; $50a3: $88
	adc  b                                           ; $50a4: $88
	sbc  c                                           ; $50a5: $99
	sbc  b                                           ; $50a6: $98
	adc  b                                           ; $50a7: $88
	adc  b                                           ; $50a8: $88
	adc  b                                           ; $50a9: $88
	adc  b                                           ; $50aa: $88
	adc  b                                           ; $50ab: $88
	adc  b                                           ; $50ac: $88
	adc  b                                           ; $50ad: $88
	adc  b                                           ; $50ae: $88
	adc  b                                           ; $50af: $88
	adc  b                                           ; $50b0: $88
	adc  b                                           ; $50b1: $88
	adc  c                                           ; $50b2: $89
	sbc  b                                           ; $50b3: $98
	adc  b                                           ; $50b4: $88
	adc  b                                           ; $50b5: $88
	adc  b                                           ; $50b6: $88
	adc  b                                           ; $50b7: $88
	adc  b                                           ; $50b8: $88
	adc  b                                           ; $50b9: $88
	adc  b                                           ; $50ba: $88
	adc  b                                           ; $50bb: $88
	adc  b                                           ; $50bc: $88
	adc  b                                           ; $50bd: $88
	adc  b                                           ; $50be: $88
	adc  c                                           ; $50bf: $89
	adc  b                                           ; $50c0: $88
	adc  b                                           ; $50c1: $88
	adc  b                                           ; $50c2: $88
	adc  b                                           ; $50c3: $88
	adc  b                                           ; $50c4: $88
	adc  b                                           ; $50c5: $88
	adc  b                                           ; $50c6: $88
	adc  b                                           ; $50c7: $88
	adc  b                                           ; $50c8: $88
	adc  b                                           ; $50c9: $88
	adc  b                                           ; $50ca: $88
	adc  b                                           ; $50cb: $88
	adc  b                                           ; $50cc: $88
	adc  b                                           ; $50cd: $88
	adc  b                                           ; $50ce: $88
	adc  b                                           ; $50cf: $88
	adc  c                                           ; $50d0: $89
	sbc  b                                           ; $50d1: $98
	adc  b                                           ; $50d2: $88
	adc  b                                           ; $50d3: $88
	adc  b                                           ; $50d4: $88
	adc  b                                           ; $50d5: $88
	adc  b                                           ; $50d6: $88
	adc  b                                           ; $50d7: $88
	adc  b                                           ; $50d8: $88
	adc  b                                           ; $50d9: $88
	adc  b                                           ; $50da: $88
	adc  b                                           ; $50db: $88
	adc  b                                           ; $50dc: $88
	adc  c                                           ; $50dd: $89
	adc  b                                           ; $50de: $88
	adc  b                                           ; $50df: $88
	adc  b                                           ; $50e0: $88
	adc  b                                           ; $50e1: $88
	adc  b                                           ; $50e2: $88
	adc  b                                           ; $50e3: $88
	adc  b                                           ; $50e4: $88
	adc  b                                           ; $50e5: $88
	adc  b                                           ; $50e6: $88
	adc  b                                           ; $50e7: $88
	adc  b                                           ; $50e8: $88
	adc  b                                           ; $50e9: $88
	adc  b                                           ; $50ea: $88
	adc  b                                           ; $50eb: $88
	adc  b                                           ; $50ec: $88
	adc  b                                           ; $50ed: $88
	adc  b                                           ; $50ee: $88
	adc  b                                           ; $50ef: $88
	adc  b                                           ; $50f0: $88
	adc  b                                           ; $50f1: $88
	adc  b                                           ; $50f2: $88
	adc  b                                           ; $50f3: $88
	adc  b                                           ; $50f4: $88
	adc  b                                           ; $50f5: $88
	adc  b                                           ; $50f6: $88
	adc  b                                           ; $50f7: $88
	adc  b                                           ; $50f8: $88
	adc  b                                           ; $50f9: $88
	adc  b                                           ; $50fa: $88
	adc  b                                           ; $50fb: $88
	adc  b                                           ; $50fc: $88
	adc  b                                           ; $50fd: $88
	adc  b                                           ; $50fe: $88
	adc  b                                           ; $50ff: $88
	adc  b                                           ; $5100: $88
	adc  b                                           ; $5101: $88
	adc  b                                           ; $5102: $88
	adc  b                                           ; $5103: $88
	adc  b                                           ; $5104: $88
	adc  b                                           ; $5105: $88
	adc  b                                           ; $5106: $88
	adc  b                                           ; $5107: $88
	adc  b                                           ; $5108: $88
	adc  b                                           ; $5109: $88
	adc  b                                           ; $510a: $88
	adc  b                                           ; $510b: $88
	adc  b                                           ; $510c: $88
	adc  b                                           ; $510d: $88
	adc  b                                           ; $510e: $88
	adc  b                                           ; $510f: $88
	adc  b                                           ; $5110: $88
	adc  b                                           ; $5111: $88
	adc  b                                           ; $5112: $88
	adc  b                                           ; $5113: $88
	adc  b                                           ; $5114: $88
	adc  b                                           ; $5115: $88
	adc  b                                           ; $5116: $88
	adc  b                                           ; $5117: $88
	adc  b                                           ; $5118: $88
	adc  b                                           ; $5119: $88
	adc  b                                           ; $511a: $88
	adc  b                                           ; $511b: $88
	adc  b                                           ; $511c: $88
	adc  b                                           ; $511d: $88
	adc  b                                           ; $511e: $88
	adc  b                                           ; $511f: $88
	adc  b                                           ; $5120: $88
	adc  b                                           ; $5121: $88
	adc  b                                           ; $5122: $88
	adc  b                                           ; $5123: $88
	adc  b                                           ; $5124: $88
	adc  b                                           ; $5125: $88
	adc  b                                           ; $5126: $88
	adc  b                                           ; $5127: $88
	adc  b                                           ; $5128: $88
	adc  b                                           ; $5129: $88
	adc  b                                           ; $512a: $88
	adc  b                                           ; $512b: $88
	adc  b                                           ; $512c: $88
	adc  b                                           ; $512d: $88
	adc  b                                           ; $512e: $88
	adc  b                                           ; $512f: $88
	adc  b                                           ; $5130: $88
	adc  b                                           ; $5131: $88
	adc  b                                           ; $5132: $88
	adc  b                                           ; $5133: $88
	adc  b                                           ; $5134: $88
	adc  b                                           ; $5135: $88
	adc  b                                           ; $5136: $88
	adc  b                                           ; $5137: $88
	adc  b                                           ; $5138: $88
	adc  b                                           ; $5139: $88
	adc  b                                           ; $513a: $88
	adc  b                                           ; $513b: $88
	adc  b                                           ; $513c: $88
	adc  b                                           ; $513d: $88
	adc  b                                           ; $513e: $88
	adc  b                                           ; $513f: $88
	adc  b                                           ; $5140: $88
	adc  b                                           ; $5141: $88
	adc  b                                           ; $5142: $88
	adc  b                                           ; $5143: $88
	adc  b                                           ; $5144: $88
	adc  b                                           ; $5145: $88
	adc  b                                           ; $5146: $88
	adc  b                                           ; $5147: $88
	adc  b                                           ; $5148: $88
	adc  b                                           ; $5149: $88
	adc  b                                           ; $514a: $88
	adc  b                                           ; $514b: $88
	adc  b                                           ; $514c: $88
	adc  b                                           ; $514d: $88
	adc  b                                           ; $514e: $88
	adc  b                                           ; $514f: $88
	adc  b                                           ; $5150: $88
	adc  b                                           ; $5151: $88
	adc  b                                           ; $5152: $88
	adc  b                                           ; $5153: $88
	adc  b                                           ; $5154: $88
	adc  b                                           ; $5155: $88
	adc  b                                           ; $5156: $88
	adc  b                                           ; $5157: $88
	adc  b                                           ; $5158: $88
	adc  b                                           ; $5159: $88
	adc  b                                           ; $515a: $88
	adc  b                                           ; $515b: $88
	adc  b                                           ; $515c: $88
	adc  b                                           ; $515d: $88
	adc  b                                           ; $515e: $88
	adc  b                                           ; $515f: $88
	adc  b                                           ; $5160: $88
	adc  b                                           ; $5161: $88
	adc  b                                           ; $5162: $88
	adc  b                                           ; $5163: $88
	adc  b                                           ; $5164: $88
	adc  b                                           ; $5165: $88
	adc  b                                           ; $5166: $88
	adc  b                                           ; $5167: $88
	adc  b                                           ; $5168: $88
	adc  b                                           ; $5169: $88
	sbc  c                                           ; $516a: $99
	sbc  b                                           ; $516b: $98
	adc  b                                           ; $516c: $88
	ld   a, b                                        ; $516d: $78
	adc  c                                           ; $516e: $89
	adc  b                                           ; $516f: $88
	adc  b                                           ; $5170: $88
	ld   [hl], a                                     ; $5171: $77
	sub  a                                           ; $5172: $97
	adc  b                                           ; $5173: $88
	sbc  b                                           ; $5174: $98
	adc  b                                           ; $5175: $88
	ld   a, b                                        ; $5176: $78
	adc  b                                           ; $5177: $88
	ld   a, b                                        ; $5178: $78
	add  a                                           ; $5179: $87
	adc  b                                           ; $517a: $88
	sbc  b                                           ; $517b: $98
	adc  b                                           ; $517c: $88
	add  a                                           ; $517d: $87
	ld   a, b                                        ; $517e: $78
	ld   a, b                                        ; $517f: $78
	ld   [hl], a                                     ; $5180: $77
	ld   [hl], a                                     ; $5181: $77
	add  a                                           ; $5182: $87
	ld   [hl], a                                     ; $5183: $77
	add  a                                           ; $5184: $87
	ld   [hl], a                                     ; $5185: $77
	ld   a, b                                        ; $5186: $78
	adc  c                                           ; $5187: $89
	sbc  d                                           ; $5188: $9a
	xor  d                                           ; $5189: $aa
	xor  c                                           ; $518a: $a9
	adc  b                                           ; $518b: $88
	halt                                             ; $518c: $76
	ld   d, h                                        ; $518d: $54
	ld   b, d                                        ; $518e: $42
	dec  h                                           ; $518f: $25
	ld   d, h                                        ; $5190: $54
	ld   h, a                                        ; $5191: $67
	cp   l                                           ; $5192: $bd
	sbc  $ff                                         ; $5193: $de $ff
	res  5, e                                        ; $5195: $cb $ab
	jp   z, Jump_0d4_51a8                            ; $5197: $ca $a8 $51

	ld   de, $1318                                   ; $519a: $11 $18 $13
	ld   l, h                                        ; $519d: $6c
	rst  $38                                         ; $519e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $519f: $cf
	rst  $38                                         ; $51a0: $ff
	rst  $30                                         ; $51a1: $f7
	rst  $38                                         ; $51a2: $ff
	rst  ToBoot                                         ; $51a3: $c7
	ld   b, l                                        ; $51a4: $45
	ld   de, $1b11                                   ; $51a5: $11 $11 $1b

Jump_0d4_51a8:
	ld   [de], a                                     ; $51a8: $12
	rst  $38                                         ; $51a9: $ff
	rst  $38                                         ; $51aa: $ff
	rst  $38                                         ; $51ab: $ff
	db   $fc                                         ; $51ac: $fc
	ld   b, h                                        ; $51ad: $44
	rst  $38                                         ; $51ae: $ff
	ld   [de], a                                     ; $51af: $12
	ld   h, h                                        ; $51b0: $64
	ld   de, $9b11                                   ; $51b1: $11 $11 $9b
	rra                                              ; $51b4: $1f
	rst  $38                                         ; $51b5: $ff
	rst  $38                                         ; $51b6: $ff
	rst  $38                                         ; $51b7: $ff
	pop  af                                          ; $51b8: $f1
	ld   [de], a                                     ; $51b9: $12
	ld   hl, sp+$1a                                  ; $51ba: $f8 $1a
	ld   h, c                                        ; $51bc: $61
	ld   de, $f111                                   ; $51bd: $11 $11 $f1
	rra                                              ; $51c0: $1f
	rst  $38                                         ; $51c1: $ff
	rst  $38                                         ; $51c2: $ff
	rst  $38                                         ; $51c3: $ff
	ld   de, $f13c                                   ; $51c4: $11 $3c $f1
	adc  l                                           ; $51c7: $8d
	ld   sp, $1111                                   ; $51c8: $31 $11 $11
	pop  de                                          ; $51cb: $d1
	rst  $38                                         ; $51cc: $ff
	rst  $38                                         ; $51cd: $ff
	rst  $38                                         ; $51ce: $ff
	rst  $38                                         ; $51cf: $ff
	inc  de                                          ; $51d0: $13

jr_0d4_51d1:
	cpl                                              ; $51d1: $2f
	ldh  a, [c]                                      ; $51d2: $f2
	ld   hl, sp+$11                                  ; $51d3: $f8 $11
	ld   de, $6114                                   ; $51d5: $11 $14 $61
	rst  $38                                         ; $51d8: $ff
	rst  $38                                         ; $51d9: $ff
	rst  $38                                         ; $51da: $ff
	ldh  a, [c]                                      ; $51db: $f2
	ld   d, $4f                                      ; $51dc: $16 $4f
	adc  c                                           ; $51de: $89
	pop  hl                                          ; $51df: $e1
	ld   de, $1d11                                   ; $51e0: $11 $11 $1d
	inc  de                                          ; $51e3: $13
	rst  $38                                         ; $51e4: $ff
	rst  $38                                         ; $51e5: $ff
	rst  $38                                         ; $51e6: $ff
	pop  af                                          ; $51e7: $f1
	inc  de                                          ; $51e8: $13
	xor  a                                           ; $51e9: $af
	ld   l, e                                        ; $51ea: $6b
	ld   h, c                                        ; $51eb: $61
	ld   de, $1e11                                   ; $51ec: $11 $11 $1e
	rra                                              ; $51ef: $1f
	rst  $38                                         ; $51f0: $ff
	rst  $38                                         ; $51f1: $ff
	rst  $38                                         ; $51f2: $ff
	ld   h, c                                        ; $51f3: $61
	ld   b, e                                        ; $51f4: $43
	rst  $28                                         ; $51f5: $ef
	ld   c, d                                        ; $51f6: $4a
	ld   de, $1111                                   ; $51f7: $11 $11 $11
	call nz, $ff8f                                   ; $51fa: $c4 $8f $ff
	rst  $38                                         ; $51fd: $ff
	rst  $38                                         ; $51fe: $ff
	inc  de                                          ; $51ff: $13
	ld   e, c                                        ; $5200: $59
	push af                                          ; $5201: $f5
	ld   hl, $1111                                   ; $5202: $21 $11 $11
	jr   jr_0d4_51d1                                 ; $5205: $18 $ca

	rst  $38                                         ; $5207: $ff
	rst  $38                                         ; $5208: $ff
	rst  $38                                         ; $5209: $ff
	pop  af                                          ; $520a: $f1
	ld   b, [hl]                                     ; $520b: $46
	sbc  a                                           ; $520c: $9f
	ld   h, c                                        ; $520d: $61
	ld   de, $1111                                   ; $520e: $11 $11 $11
	set  7, a                                        ; $5211: $cb $ff
	rst  $38                                         ; $5213: $ff
	rst  $38                                         ; $5214: $ff
	db   $fc                                         ; $5215: $fc
	ld   h, $6f                                      ; $5216: $26 $6f
	push af                                          ; $5218: $f5
	ld   de, $1111                                   ; $5219: $11 $11 $11
	dec  de                                          ; $521c: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $521d: $cf
	rst  $38                                         ; $521e: $ff
	rst  $38                                         ; $521f: $ff
	rst  $28                                         ; $5220: $ef
	ld   [hl], a                                     ; $5221: $77
	ld   a, d                                        ; $5222: $7a
	rst  $38                                         ; $5223: $ff
	ld   sp, $1111                                   ; $5224: $31 $11 $11
	ld   de, $ff6c                                   ; $5227: $11 $6c $ff
	rst  $38                                         ; $522a: $ff
	rst  $38                                         ; $522b: $ff
	reti                                             ; $522c: $d9


	cp   c                                           ; $522d: $b9
	cp   a                                           ; $522e: $bf
	rst  $20                                         ; $522f: $e7
	ld   de, $1111                                   ; $5230: $11 $11 $11
	inc  de                                          ; $5233: $13
	adc  a                                           ; $5234: $8f
	rst  $38                                         ; $5235: $ff
	rst  $38                                         ; $5236: $ff
	rst  $38                                         ; $5237: $ff
	adc  $cb                                         ; $5238: $ce $cb
	rst  $38                                         ; $523a: $ff
	or   c                                           ; $523b: $b1
	ld   de, $1111                                   ; $523c: $11 $11 $11
	ld   b, d                                        ; $523f: $42
	adc  a                                           ; $5240: $8f
	rst  $38                                         ; $5241: $ff
	rst  $38                                         ; $5242: $ff
	rst  $38                                         ; $5243: $ff
	rst  $28                                         ; $5244: $ef
	call $c1ff                                       ; $5245: $cd $ff $c1
	ld   de, $1111                                   ; $5248: $11 $11 $11
	ld   [de], a                                     ; $524b: $12
	ld   e, a                                        ; $524c: $5f
	rst  $38                                         ; $524d: $ff
	rst  $38                                         ; $524e: $ff
	rst  $38                                         ; $524f: $ff
	rst  $38                                         ; $5250: $ff
	db   $eb                                         ; $5251: $eb
	rst  $38                                         ; $5252: $ff
	or   $11                                         ; $5253: $f6 $11
	ld   de, $1111                                   ; $5255: $11 $11 $11
	ld   [hl-], a                                    ; $5258: $32
	ld   l, h                                        ; $5259: $6c
	rst  JumpTable                                         ; $525a: $df
	rst  $38                                         ; $525b: $ff
	rst  $38                                         ; $525c: $ff
	db   $fc                                         ; $525d: $fc
	cp   l                                           ; $525e: $bd
	ei                                               ; $525f: $fb
	rst  ToBoot                                         ; $5260: $c7
	ld   b, h                                        ; $5261: $44
	ld   de, $2211                                   ; $5262: $11 $11 $22
	dec  d                                           ; $5265: $15
	ld   h, a                                        ; $5266: $67
	sbc  c                                           ; $5267: $99
	xor  e                                           ; $5268: $ab
	res  5, c                                        ; $5269: $cb $a9
	ld   [hl], a                                     ; $526b: $77
	adc  e                                           ; $526c: $8b
	cp   e                                           ; $526d: $bb
	db   $dd                                         ; $526e: $dd
	adc  c                                           ; $526f: $89
	sbc  e                                           ; $5270: $9b
	xor  h                                           ; $5271: $ac
	ld   a, [$a997]                                  ; $5272: $fa $97 $a9
	ld   [hl], h                                     ; $5275: $74
	dec  [hl]                                        ; $5276: $35
	ld   b, e                                        ; $5277: $43
	inc  de                                          ; $5278: $13
	ld   b, [hl]                                     ; $5279: $46
	ld   h, l                                        ; $527a: $65
	ld   a, c                                        ; $527b: $79
	cp   d                                           ; $527c: $ba
	cp   e                                           ; $527d: $bb
	rst  $28                                         ; $527e: $ef
	cp   $dd                                         ; $527f: $fe $dd
	cp   d                                           ; $5281: $ba
	cp   d                                           ; $5282: $ba
	sbc  b                                           ; $5283: $98
	ld   a, b                                        ; $5284: $78
	halt                                             ; $5285: $76
	ld   d, l                                        ; $5286: $55
	ld   h, a                                        ; $5287: $67
	ld   h, l                                        ; $5288: $65
	ld   h, a                                        ; $5289: $67
	adc  b                                           ; $528a: $88
	halt                                             ; $528b: $76
	halt                                             ; $528c: $76
	ld   h, l                                        ; $528d: $65
	ld   d, [hl]                                     ; $528e: $56
	adc  b                                           ; $528f: $88
	adc  c                                           ; $5290: $89
	xor  d                                           ; $5291: $aa
	cp   d                                           ; $5292: $ba
	xor  d                                           ; $5293: $aa
	cp   h                                           ; $5294: $bc
	jp   c, $aaa9                                    ; $5295: $da $a9 $aa

	add  [hl]                                        ; $5298: $86
	ld   d, l                                        ; $5299: $55
	ld   d, [hl]                                     ; $529a: $56
	ld   d, l                                        ; $529b: $55
	ld   d, a                                        ; $529c: $57
	halt                                             ; $529d: $76
	ld   h, [hl]                                     ; $529e: $66
	ld   [hl], a                                     ; $529f: $77
	adc  b                                           ; $52a0: $88
	sbc  d                                           ; $52a1: $9a
	xor  d                                           ; $52a2: $aa
	xor  c                                           ; $52a3: $a9
	sbc  c                                           ; $52a4: $99
	sbc  b                                           ; $52a5: $98
	adc  b                                           ; $52a6: $88
	adc  b                                           ; $52a7: $88
	sbc  b                                           ; $52a8: $98
	add  a                                           ; $52a9: $87
	ld   a, b                                        ; $52aa: $78
	adc  b                                           ; $52ab: $88
	sbc  b                                           ; $52ac: $98
	xor  c                                           ; $52ad: $a9
	sbc  b                                           ; $52ae: $98
	sbc  b                                           ; $52af: $98
	ld   [hl], a                                     ; $52b0: $77
	ld   h, [hl]                                     ; $52b1: $66
	ld   h, a                                        ; $52b2: $67
	ld   h, [hl]                                     ; $52b3: $66
	ld   [hl], a                                     ; $52b4: $77
	ld   [hl], a                                     ; $52b5: $77
	ld   [hl], a                                     ; $52b6: $77

Call_0d4_52b7:
	adc  c                                           ; $52b7: $89
	sbc  c                                           ; $52b8: $99
	sbc  d                                           ; $52b9: $9a
	sbc  c                                           ; $52ba: $99
	sbc  c                                           ; $52bb: $99
	adc  b                                           ; $52bc: $88
	adc  b                                           ; $52bd: $88
	adc  b                                           ; $52be: $88
	ld   [hl], a                                     ; $52bf: $77
	ld   [hl], a                                     ; $52c0: $77
	ld   [hl], a                                     ; $52c1: $77
	ld   a, b                                        ; $52c2: $78
	adc  c                                           ; $52c3: $89
	sbc  c                                           ; $52c4: $99
	adc  c                                           ; $52c5: $89
	adc  b                                           ; $52c6: $88
	adc  b                                           ; $52c7: $88
	adc  b                                           ; $52c8: $88
	ld   [hl], a                                     ; $52c9: $77
	ld   [hl], a                                     ; $52ca: $77
	ld   [hl], a                                     ; $52cb: $77
	ld   [hl], a                                     ; $52cc: $77
	ld   [hl], a                                     ; $52cd: $77
	ld   a, b                                        ; $52ce: $78
	adc  b                                           ; $52cf: $88
	sbc  c                                           ; $52d0: $99
	sbc  b                                           ; $52d1: $98
	adc  b                                           ; $52d2: $88
	sbc  b                                           ; $52d3: $98
	sbc  c                                           ; $52d4: $99
	adc  c                                           ; $52d5: $89
	adc  b                                           ; $52d6: $88
	add  a                                           ; $52d7: $87
	ld   [hl], a                                     ; $52d8: $77
	ld   [hl], a                                     ; $52d9: $77
	ld   [hl], a                                     ; $52da: $77
	ld   a, b                                        ; $52db: $78
	ld   a, b                                        ; $52dc: $78
	adc  b                                           ; $52dd: $88
	adc  b                                           ; $52de: $88
	adc  c                                           ; $52df: $89
	adc  c                                           ; $52e0: $89
	sbc  c                                           ; $52e1: $99
	sbc  c                                           ; $52e2: $99
	sbc  b                                           ; $52e3: $98
	adc  b                                           ; $52e4: $88
	add  a                                           ; $52e5: $87
	ld   [hl], a                                     ; $52e6: $77
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	adc  b                                           ; $52ea: $88
	adc  b                                           ; $52eb: $88
	adc  b                                           ; $52ec: $88
	adc  b                                           ; $52ed: $88
	sbc  c                                           ; $52ee: $99
	adc  b                                           ; $52ef: $88
	adc  b                                           ; $52f0: $88
	add  a                                           ; $52f1: $87
	adc  b                                           ; $52f2: $88
	ld   [hl], a                                     ; $52f3: $77
	adc  b                                           ; $52f4: $88
	adc  b                                           ; $52f5: $88
	adc  b                                           ; $52f6: $88
	adc  b                                           ; $52f7: $88
	adc  b                                           ; $52f8: $88
	adc  c                                           ; $52f9: $89
	sbc  c                                           ; $52fa: $99
	sbc  b                                           ; $52fb: $98
	adc  b                                           ; $52fc: $88
	adc  b                                           ; $52fd: $88
	adc  b                                           ; $52fe: $88
	adc  c                                           ; $52ff: $89
	adc  b                                           ; $5300: $88
	adc  b                                           ; $5301: $88
	add  a                                           ; $5302: $87
	ld   a, b                                        ; $5303: $78
	ld   a, b                                        ; $5304: $78
	adc  b                                           ; $5305: $88
	adc  b                                           ; $5306: $88
	adc  b                                           ; $5307: $88
	ld   [hl], a                                     ; $5308: $77
	ld   a, b                                        ; $5309: $78
	adc  b                                           ; $530a: $88
	adc  c                                           ; $530b: $89
	sbc  c                                           ; $530c: $99
	sbc  c                                           ; $530d: $99
	adc  b                                           ; $530e: $88
	adc  b                                           ; $530f: $88
	adc  b                                           ; $5310: $88
	adc  b                                           ; $5311: $88
	adc  b                                           ; $5312: $88
	add  a                                           ; $5313: $87
	ld   [hl], a                                     ; $5314: $77
	ld   [hl], a                                     ; $5315: $77
	adc  b                                           ; $5316: $88
	adc  b                                           ; $5317: $88
	adc  b                                           ; $5318: $88
	adc  b                                           ; $5319: $88
	adc  b                                           ; $531a: $88
	adc  b                                           ; $531b: $88
	adc  b                                           ; $531c: $88
	sbc  b                                           ; $531d: $98
	adc  b                                           ; $531e: $88
	add  a                                           ; $531f: $87
	ld   [hl], a                                     ; $5320: $77
	adc  b                                           ; $5321: $88
	adc  b                                           ; $5322: $88
	adc  c                                           ; $5323: $89
	adc  b                                           ; $5324: $88
	adc  b                                           ; $5325: $88
	adc  b                                           ; $5326: $88
	adc  b                                           ; $5327: $88
	adc  c                                           ; $5328: $89
	adc  b                                           ; $5329: $88
	adc  b                                           ; $532a: $88
	ld   [hl], a                                     ; $532b: $77
	ld   [hl], a                                     ; $532c: $77
	adc  b                                           ; $532d: $88
	adc  b                                           ; $532e: $88
	adc  b                                           ; $532f: $88
	adc  b                                           ; $5330: $88
	adc  b                                           ; $5331: $88
	adc  b                                           ; $5332: $88
	adc  b                                           ; $5333: $88
	adc  c                                           ; $5334: $89
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
	sbc  c                                           ; $5347: $99
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
	sbc  b                                           ; $5353: $98
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
	adc  c                                           ; $5378: $89
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
	adc  b                                           ; $5397: $88
	adc  b                                           ; $5398: $88
	adc  b                                           ; $5399: $88
	adc  c                                           ; $539a: $89
	adc  d                                           ; $539b: $8a
	and  a                                           ; $539c: $a7
	halt                                             ; $539d: $76
	adc  c                                           ; $539e: $89
	sbc  c                                           ; $539f: $99
	ld   [hl], a                                     ; $53a0: $77
	adc  c                                           ; $53a1: $89
	adc  b                                           ; $53a2: $88
	ld   h, [hl]                                     ; $53a3: $66
	sbc  c                                           ; $53a4: $99
	xor  b                                           ; $53a5: $a8
	halt                                             ; $53a6: $76
	adc  c                                           ; $53a7: $89
	adc  b                                           ; $53a8: $88
	ld   a, b                                        ; $53a9: $78
	adc  c                                           ; $53aa: $89
	adc  b                                           ; $53ab: $88
	ld   [hl], a                                     ; $53ac: $77
	adc  c                                           ; $53ad: $89
	cp   b                                           ; $53ae: $b8
	ld   [hl], a                                     ; $53af: $77
	sbc  d                                           ; $53b0: $9a
	xor  c                                           ; $53b1: $a9
	ld   a, b                                        ; $53b2: $78
	adc  e                                           ; $53b3: $8b
	sub  a                                           ; $53b4: $97
	ld   d, [hl]                                     ; $53b5: $56
	xor  d                                           ; $53b6: $aa
	sub  [hl]                                        ; $53b7: $96
	ld   [hl], a                                     ; $53b8: $77
	sbc  c                                           ; $53b9: $99
	ld   [hl], l                                     ; $53ba: $75
	ld   l, c                                        ; $53bb: $69
	xor  d                                           ; $53bc: $aa
	call z, Call_0d4_4585                            ; $53bd: $cc $85 $45
	sbc  c                                           ; $53c0: $99
	sub  [hl]                                        ; $53c1: $96
	halt                                             ; $53c2: $76
	ld   h, [hl]                                     ; $53c3: $66
	ld   h, a                                        ; $53c4: $67
	adc  c                                           ; $53c5: $89
	sbc  d                                           ; $53c6: $9a
	sbc  b                                           ; $53c7: $98
	ld   h, [hl]                                     ; $53c8: $66
	ld   a, d                                        ; $53c9: $7a
	sbc  b                                           ; $53ca: $98
	add  a                                           ; $53cb: $87
	ld   a, c                                        ; $53cc: $79
	sbc  d                                           ; $53cd: $9a
	sub  a                                           ; $53ce: $97
	ld   d, [hl]                                     ; $53cf: $56
	xor  h                                           ; $53d0: $ac
	and  a                                           ; $53d1: $a7
	ld   d, a                                        ; $53d2: $57
	sbc  b                                           ; $53d3: $98
	ld   [hl], a                                     ; $53d4: $77
	ld   a, c                                        ; $53d5: $79
	ld   a, b                                        ; $53d6: $78
	adc  b                                           ; $53d7: $88
	halt                                             ; $53d8: $76
	ld   [hl], a                                     ; $53d9: $77
	ld   [hl], a                                     ; $53da: $77
	adc  c                                           ; $53db: $89
	sub  [hl]                                        ; $53dc: $96
	add  a                                           ; $53dd: $87
	adc  b                                           ; $53de: $88
	ld   a, d                                        ; $53df: $7a
	xor  b                                           ; $53e0: $a8
	adc  c                                           ; $53e1: $89
	sbc  c                                           ; $53e2: $99
	ld   h, a                                        ; $53e3: $67
	ld   a, c                                        ; $53e4: $79
	cp   c                                           ; $53e5: $b9
	ld   h, [hl]                                     ; $53e6: $66
	xor  c                                           ; $53e7: $a9
	ld   h, h                                        ; $53e8: $64
	ld   a, b                                        ; $53e9: $78
	add  l                                           ; $53ea: $85
	ld   [hl], $58                                   ; $53eb: $36 $58
	ld   [hl], l                                     ; $53ed: $75
	ld   d, h                                        ; $53ee: $54
	ld   l, b                                        ; $53ef: $68
	sbc  b                                           ; $53f0: $98
	ld   a, c                                        ; $53f1: $79
	cp   l                                           ; $53f2: $bd
	cp   d                                           ; $53f3: $ba
	call z, $dbef                                    ; $53f4: $cc $ef $db
	xor  e                                           ; $53f7: $ab
	jp   z, $2463                                    ; $53f8: $ca $63 $24

	ld   hl, $1111                                   ; $53fb: $21 $11 $11
	ld   de, $7911                                   ; $53fe: $11 $11 $79
	cp   [hl]                                        ; $5401: $be
	rst  $38                                         ; $5402: $ff
	rst  $38                                         ; $5403: $ff
	rst  $38                                         ; $5404: $ff
	rst  $38                                         ; $5405: $ff
	rst  $38                                         ; $5406: $ff
	rst  $38                                         ; $5407: $ff
	or   [hl]                                        ; $5408: $b6
	ld   hl, $1111                                   ; $5409: $21 $11 $11
	ld   de, $1111                                   ; $540c: $11 $11 $11
	ld   h, $ad                                      ; $540f: $26 $ad
	rst  $38                                         ; $5411: $ff

jr_0d4_5412:
	rst  $38                                         ; $5412: $ff
	rst  $38                                         ; $5413: $ff
	rst  $38                                         ; $5414: $ff
	rst  $38                                         ; $5415: $ff
	rst  $38                                         ; $5416: $ff
	ld   sp, hl                                      ; $5417: $f9
	ld   b, h                                        ; $5418: $44
	ld   de, $1111                                   ; $5419: $11 $11 $11
	ld   de, $1111                                   ; $541c: $11 $11 $11
	ld   b, d                                        ; $541f: $42
	ccf                                              ; $5420: $3f
	rst  $38                                         ; $5421: $ff
	rst  $38                                         ; $5422: $ff
	rst  $38                                         ; $5423: $ff
	rst  $38                                         ; $5424: $ff
	rst  $38                                         ; $5425: $ff
	rst  $38                                         ; $5426: $ff
	ei                                               ; $5427: $fb
	halt                                             ; $5428: $76
	ld   hl, $1111                                   ; $5429: $21 $11 $11
	ld   de, $1311                                   ; $542c: $11 $11 $13
	dec  d                                           ; $542f: $15
	ld   d, a                                        ; $5430: $57
	rst  $38                                         ; $5431: $ff
	rst  $38                                         ; $5432: $ff
	rst  $38                                         ; $5433: $ff
	rst  $38                                         ; $5434: $ff
	rst  $38                                         ; $5435: $ff
	rst  $38                                         ; $5436: $ff
	rst  $38                                         ; $5437: $ff
	adc  c                                           ; $5438: $89
	ld   h, c                                        ; $5439: $61
	ld   de, $1111                                   ; $543a: $11 $11 $11
	ld   de, $4111                                   ; $543d: $11 $11 $41
	scf                                              ; $5440: $37
	xor  a                                           ; $5441: $af
	rst  $38                                         ; $5442: $ff
	rst  $38                                         ; $5443: $ff
	rst  $38                                         ; $5444: $ff
	rst  $38                                         ; $5445: $ff
	rst  $38                                         ; $5446: $ff
	rst  $38                                         ; $5447: $ff
	jp   hl                                          ; $5448: $e9


	and  [hl]                                        ; $5449: $a6
	ld   de, $1111                                   ; $544a: $11 $11 $11
	ld   de, $1111                                   ; $544d: $11 $11 $11
	ld   [de], a                                     ; $5450: $12
	ld   [hl], a                                     ; $5451: $77
	rst  $38                                         ; $5452: $ff
	rst  $38                                         ; $5453: $ff
	rst  $38                                         ; $5454: $ff
	rst  $38                                         ; $5455: $ff
	rst  $38                                         ; $5456: $ff
	rst  $38                                         ; $5457: $ff
	rst  $38                                         ; $5458: $ff
	sbc  c                                           ; $5459: $99
	ld   h, d                                        ; $545a: $62
	ld   de, $1111                                   ; $545b: $11 $11 $11
	ld   de, $1611                                   ; $545e: $11 $11 $16
	jr   jr_0d4_5412                                 ; $5461: $18 $af

	rst  $38                                         ; $5463: $ff
	rst  $38                                         ; $5464: $ff
	rst  $38                                         ; $5465: $ff
	rst  $38                                         ; $5466: $ff
	rst  $38                                         ; $5467: $ff
	rst  $38                                         ; $5468: $ff
	ei                                               ; $5469: $fb
	ret                                              ; $546a: $c9


	ld   de, $1111                                   ; $546b: $11 $11 $11
	ld   de, $1111                                   ; $546e: $11 $11 $11
	ld   b, h                                        ; $5471: $44
	add  hl, hl                                      ; $5472: $29
	ld   a, a                                        ; $5473: $7f
	rst  $38                                         ; $5474: $ff
	rst  $38                                         ; $5475: $ff
	rst  $38                                         ; $5476: $ff
	rst  $38                                         ; $5477: $ff
	rst  $38                                         ; $5478: $ff
	rst  $38                                         ; $5479: $ff
	ret  c                                           ; $547a: $d8

	sub  a                                           ; $547b: $97
	ld   hl, $3111                                   ; $547c: $21 $11 $31
	ld   de, $1111                                   ; $547f: $11 $11 $11
	ld   sp, $7f6c                                   ; $5482: $31 $6c $7f
	rst  $38                                         ; $5485: $ff

Jump_0d4_5486:
	rst  $38                                         ; $5486: $ff
	rst  JumpTable                                         ; $5487: $df
	rst  $38                                         ; $5488: $ff
	rst  $38                                         ; $5489: $ff
	rst  $38                                         ; $548a: $ff
	reti                                             ; $548b: $d9


	sub  h                                           ; $548c: $94
	ld   hl, $3514                                   ; $548d: $21 $14 $35
	ld   h, c                                        ; $5490: $61
	ld   de, $2411                                   ; $5491: $11 $11 $24
	ld   [hl], $57                                   ; $5494: $36 $57
	cp   h                                           ; $5496: $bc
	cp   h                                           ; $5497: $bc
	cp   e                                           ; $5498: $bb
	db   $dd                                         ; $5499: $dd
	rst  $38                                         ; $549a: $ff
	rst  $38                                         ; $549b: $ff
	db   $fd                                         ; $549c: $fd
	cp   b                                           ; $549d: $b8
	ld   h, a                                        ; $549e: $67
	ld   d, l                                        ; $549f: $55
	adc  b                                           ; $54a0: $88
	sbc  c                                           ; $54a1: $99
	and  a                                           ; $54a2: $a7
	halt                                             ; $54a3: $76
	ld   h, h                                        ; $54a4: $64
	ld   b, a                                        ; $54a5: $47
	ld   d, l                                        ; $54a6: $55
	ld   sp, $3322                                   ; $54a7: $31 $22 $33
	inc  [hl]                                        ; $54aa: $34
	ld   h, a                                        ; $54ab: $67
	adc  b                                           ; $54ac: $88
	adc  e                                           ; $54ad: $8b
	xor  h                                           ; $54ae: $ac
	db   $dd                                         ; $54af: $dd
	rst  $38                                         ; $54b0: $ff
	rst  $38                                         ; $54b1: $ff
	rst  $38                                         ; $54b2: $ff
	rst  $38                                         ; $54b3: $ff
	cp   $dc                                         ; $54b4: $fe $dc
	cp   c                                           ; $54b6: $b9
	sbc  b                                           ; $54b7: $98
	ld   h, l                                        ; $54b8: $65
	ld   b, h                                        ; $54b9: $44

Call_0d4_54ba:
	inc  sp                                          ; $54ba: $33
	inc  hl                                          ; $54bb: $23
	ld   [hl+], a                                    ; $54bc: $22
	ld   [hl+], a                                    ; $54bd: $22
	ld   [hl-], a                                    ; $54be: $32
	inc  sp                                          ; $54bf: $33
	ld   b, l                                        ; $54c0: $45
	ld   h, a                                        ; $54c1: $67
	adc  c                                           ; $54c2: $89
	xor  e                                           ; $54c3: $ab
	cp   h                                           ; $54c4: $bc
	db   $dd                                         ; $54c5: $dd
	sbc  $ff                                         ; $54c6: $de $ff
	rst  $38                                         ; $54c8: $ff
	cp   $ec                                         ; $54c9: $fe $ec
	res  5, c                                        ; $54cb: $cb $a9
	ld   [hl], a                                     ; $54cd: $77
	ld   d, l                                        ; $54ce: $55
	ld   b, e                                        ; $54cf: $43
	inc  sp                                          ; $54d0: $33
	inc  sp                                          ; $54d1: $33
	inc  sp                                          ; $54d2: $33
	inc  sp                                          ; $54d3: $33
	inc  [hl]                                        ; $54d4: $34
	ld   b, h                                        ; $54d5: $44
	ld   b, l                                        ; $54d6: $45
	ld   d, [hl]                                     ; $54d7: $56
	ld   h, a                                        ; $54d8: $67
	adc  c                                           ; $54d9: $89
	xor  e                                           ; $54da: $ab
	call z, $cdcd                                    ; $54db: $cc $cd $cd
	call c, $cdbc                                    ; $54de: $dc $bc $cd
	db   $db                                         ; $54e1: $db
	xor  d                                           ; $54e2: $aa
	and  a                                           ; $54e3: $a7
	add  a                                           ; $54e4: $87
	ld   h, [hl]                                     ; $54e5: $66
	ld   h, a                                        ; $54e6: $67
	ld   b, l                                        ; $54e7: $45
	ld   b, h                                        ; $54e8: $44
	ld   h, h                                        ; $54e9: $64
	ld   b, l                                        ; $54ea: $45
	ld   d, h                                        ; $54eb: $54
	ld   b, h                                        ; $54ec: $44
	ld   [hl], h                                     ; $54ed: $74
	ld   d, [hl]                                     ; $54ee: $56
	ld   d, a                                        ; $54ef: $57
	ld   h, a                                        ; $54f0: $67
	adc  b                                           ; $54f1: $88
	xor  c                                           ; $54f2: $a9
	cp   h                                           ; $54f3: $bc
	call c, $cdcb                                    ; $54f4: $dc $cb $cd
	sbc  $bb                                         ; $54f7: $de $bb
	cp   d                                           ; $54f9: $ba
	xor  c                                           ; $54fa: $a9
	sbc  b                                           ; $54fb: $98
	ld   [hl], l                                     ; $54fc: $75
	ld   b, a                                        ; $54fd: $47
	inc  sp                                          ; $54fe: $33
	ld   de, $2111                                   ; $54ff: $11 $11 $21
	inc  sp                                          ; $5502: $33
	inc  sp                                          ; $5503: $33
	ld   b, l                                        ; $5504: $45
	ld   l, b                                        ; $5505: $68
	ld   a, c                                        ; $5506: $79
	xor  l                                           ; $5507: $ad
	sbc  $fe                                         ; $5508: $de $fe
	rst  $38                                         ; $550a: $ff
	xor  $cd                                         ; $550b: $ee $cd
	cp   c                                           ; $550d: $b9
	adc  c                                           ; $550e: $89
	sbc  c                                           ; $550f: $99
	sub  a                                           ; $5510: $97
	ld   d, h                                        ; $5511: $54
	inc  sp                                          ; $5512: $33
	ld   de, $1111                                   ; $5513: $11 $11 $11
	ld   de, $5a21                                   ; $5516: $11 $21 $5a
	cp   h                                           ; $5519: $bc
	rst  $38                                         ; $551a: $ff
	rst  $38                                         ; $551b: $ff
	rst  $38                                         ; $551c: $ff
	rst  $38                                         ; $551d: $ff
	rst  $38                                         ; $551e: $ff
	rst  $38                                         ; $551f: $ff
	db   $fc                                         ; $5520: $fc
	add  l                                           ; $5521: $85
	ld   [hl-], a                                    ; $5522: $32
	inc  hl                                          ; $5523: $23
	ld   de, $1111                                   ; $5524: $11 $11 $11
	ld   de, $5a11                                   ; $5527: $11 $11 $5a
	xor  $ff                                         ; $552a: $ee $ff
	rst  $38                                         ; $552c: $ff
	db   $fd                                         ; $552d: $fd
	db   $fd                                         ; $552e: $fd
	xor  [hl]                                        ; $552f: $ae
	rst  $28                                         ; $5530: $ef
	rst  $38                                         ; $5531: $ff
	call c, $3196                                    ; $5532: $dc $96 $31
	dec  h                                           ; $5535: $25
	ld   sp, $1111                                   ; $5536: $31 $11 $11
	ld   de, $ff1d                                   ; $5539: $11 $1d $ff
	rst  $38                                         ; $553c: $ff
	rst  $38                                         ; $553d: $ff
	db   $fd                                         ; $553e: $fd
	ld   a, e                                        ; $553f: $7b
	sub  a                                           ; $5540: $97
	sbc  $ff                                         ; $5541: $de $ff
	db   $fc                                         ; $5543: $fc
	xor  c                                           ; $5544: $a9
	sub  a                                           ; $5545: $97
	inc  hl                                          ; $5546: $23
	ld   b, e                                        ; $5547: $43
	ld   de, $1111                                   ; $5548: $11 $11 $11
	rra                                              ; $554b: $1f
	rst  $38                                         ; $554c: $ff
	rst  $38                                         ; $554d: $ff
	rst  $38                                         ; $554e: $ff
	ld   sp, hl                                      ; $554f: $f9
	ld   sp, $7f43                                   ; $5550: $31 $43 $7f
	rst  $38                                         ; $5553: $ff
	ld   sp, hl                                      ; $5554: $f9
	ld   l, b                                        ; $5555: $68
	ld   [hl], a                                     ; $5556: $77
	ld   d, e                                        ; $5557: $53
	ld   b, c                                        ; $5558: $41
	ld   de, $1111                                   ; $5559: $11 $11 $11
	rra                                              ; $555c: $1f
	rst  $38                                         ; $555d: $ff
	rst  $38                                         ; $555e: $ff
	rst  $38                                         ; $555f: $ff
	ld   h, c                                        ; $5560: $61
	ld   de, $cf69                                   ; $5561: $11 $69 $cf
	rst  $38                                         ; $5564: $ff
	and  [hl]                                        ; $5565: $a6
	ld   h, $67                                      ; $5566: $26 $67
	ld   b, c                                        ; $5568: $41
	ld   de, $1111                                   ; $5569: $11 $11 $11
	dec  de                                          ; $556c: $1b
	rst  $38                                         ; $556d: $ff
	rst  $38                                         ; $556e: $ff
	rst  $38                                         ; $556f: $ff
	pop  af                                          ; $5570: $f1
	ld   de, $ff07                                   ; $5571: $11 $07 $ff
	rst  $38                                         ; $5574: $ff
	add  $11                                         ; $5575: $c6 $11
	ld   h, a                                        ; $5577: $67
	ld   h, d                                        ; $5578: $62
	ld   de, $1111                                   ; $5579: $11 $11 $11
	dec  de                                          ; $557c: $1b
	rst  $38                                         ; $557d: $ff
	rst  $38                                         ; $557e: $ff
	rst  $38                                         ; $557f: $ff
	pop  hl                                          ; $5580: $e1
	ld   de, $ef3a                                   ; $5581: $11 $3a $ef
	rst  $38                                         ; $5584: $ff
	and  $03                                         ; $5585: $e6 $03
	ld   h, l                                        ; $5587: $65
	ld   b, c                                        ; $5588: $41
	ld   de, $1111                                   ; $5589: $11 $11 $11
	rra                                              ; $558c: $1f
	rst  $38                                         ; $558d: $ff
	rst  $38                                         ; $558e: $ff
	rst  $38                                         ; $558f: $ff
	ld   b, c                                        ; $5590: $41
	ld   de, $ff9f                                   ; $5591: $11 $9f $ff
	db   $fd                                         ; $5594: $fd
	sub  h                                           ; $5595: $94
	inc  de                                          ; $5596: $13
	ld   d, [hl]                                     ; $5597: $56
	ld   sp, $1111                                   ; $5598: $31 $11 $11
	ld   de, $ffff                                   ; $559b: $11 $ff $ff
	rst  $38                                         ; $559e: $ff
	db   $f4                                         ; $559f: $f4
	ld   de, $ff17                                   ; $55a0: $11 $17 $ff
	rst  $38                                         ; $55a3: $ff
	ret  z                                           ; $55a4: $c8

	ld   sp, $a959                                   ; $55a5: $31 $59 $a9
	ld   de, $1111                                   ; $55a8: $11 $11 $11
	inc  de                                          ; $55ab: $13
	rst  $38                                         ; $55ac: $ff
	rst  $38                                         ; $55ad: $ff
	rst  $38                                         ; $55ae: $ff
	pop  de                                          ; $55af: $d1
	ld   de, $ff18                                   ; $55b0: $11 $18 $ff
	rst  $38                                         ; $55b3: $ff
	ret                                              ; $55b4: $c9


	ld   d, c                                        ; $55b5: $51
	ld   h, $61                                      ; $55b6: $26 $61
	ld   de, $1111                                   ; $55b8: $11 $11 $11
	rra                                              ; $55bb: $1f
	rst  $38                                         ; $55bc: $ff
	rst  $38                                         ; $55bd: $ff
	db   $fc                                         ; $55be: $fc
	ld   d, c                                        ; $55bf: $51
	ld   de, $ff4f                                   ; $55c0: $11 $4f $ff
	cp   $b6                                         ; $55c3: $fe $b6
	ld   b, h                                        ; $55c5: $44
	sbc  d                                           ; $55c6: $9a
	add  d                                           ; $55c7: $82
	ld   de, $1111                                   ; $55c8: $11 $11 $11
	rra                                              ; $55cb: $1f
	rst  $38                                         ; $55cc: $ff
	rst  $38                                         ; $55cd: $ff
	rst  $38                                         ; $55ce: $ff
	ld   [hl], c                                     ; $55cf: $71
	ld   de, $ff6f                                   ; $55d0: $11 $6f $ff
	rst  $38                                         ; $55d3: $ff
	ld   a, [$6942]                                  ; $55d4: $fa $42 $69
	ld   sp, $1111                                   ; $55d7: $31 $11 $11
	ld   de, $ff3f                                   ; $55da: $11 $3f $ff
	rst  $38                                         ; $55dd: $ff
	db   $fd                                         ; $55de: $fd
	ld   sp, $4f11                                   ; $55df: $31 $11 $4f
	rst  $38                                         ; $55e2: $ff
	rst  $38                                         ; $55e3: $ff
	bit  5, b                                        ; $55e4: $cb $68
	cp   d                                           ; $55e6: $ba
	ld   h, c                                        ; $55e7: $61
	ld   de, $1111                                   ; $55e8: $11 $11 $11
	ld   a, [de]                                     ; $55eb: $1a
	rst  $38                                         ; $55ec: $ff
	rst  $38                                         ; $55ed: $ff
	rst  $38                                         ; $55ee: $ff
	add  c                                           ; $55ef: $81
	ld   de, $ff1b                                   ; $55f0: $11 $1b $ff
	rst  $38                                         ; $55f3: $ff
	db   $fc                                         ; $55f4: $fc
	ld   b, h                                        ; $55f5: $44
	ld   e, b                                        ; $55f6: $58
	sub  d                                           ; $55f7: $92
	ld   de, $1111                                   ; $55f8: $11 $11 $11
	dec  d                                           ; $55fb: $15
	rst  $38                                         ; $55fc: $ff
	rst  $38                                         ; $55fd: $ff
	rst  $38                                         ; $55fe: $ff
	add  c                                           ; $55ff: $81
	ld   de, $ff15                                   ; $5600: $11 $15 $ff
	rst  $38                                         ; $5603: $ff
	cp   $97                                         ; $5604: $fe $97
	ld   h, a                                        ; $5606: $67
	adc  b                                           ; $5607: $88
	ld   sp, $1111                                   ; $5608: $31 $11 $11
	ld   de, $ffff                                   ; $560b: $11 $ff $ff
	rst  $38                                         ; $560e: $ff
	pop  af                                          ; $560f: $f1
	ld   de, $cf11                                   ; $5610: $11 $11 $cf
	rst  $38                                         ; $5613: $ff
	rst  $38                                         ; $5614: $ff
	and  h                                           ; $5615: $a4
	ld   b, d                                        ; $5616: $42
	ld   h, a                                        ; $5617: $67
	ld   b, c                                        ; $5618: $41
	ld   de, $1111                                   ; $5619: $11 $11 $11
	ld   a, a                                        ; $561c: $7f
	rst  $38                                         ; $561d: $ff
	rst  $38                                         ; $561e: $ff
	xor  d                                           ; $561f: $aa
	ld   sp, $7f11                                   ; $5620: $31 $11 $7f
	rst  $38                                         ; $5623: $ff
	rst  $38                                         ; $5624: $ff
	jp   c, Jump_0d4_5966                            ; $5625: $da $66 $59

	sub  e                                           ; $5628: $93
	ld   de, $1111                                   ; $5629: $11 $11 $11
	rla                                              ; $562c: $17
	rst  $38                                         ; $562d: $ff
	rst  $38                                         ; $562e: $ff
	rst  $38                                         ; $562f: $ff
	ld   h, c                                        ; $5630: $61
	ld   de, $ff1a                                   ; $5631: $11 $1a $ff
	rst  $38                                         ; $5634: $ff
	ld   a, [$2951]                                  ; $5635: $fa $51 $29
	and  h                                           ; $5638: $a4
	ld   de, $1111                                   ; $5639: $11 $11 $11
	ld   de, $ffdf                                   ; $563c: $11 $df $ff
	rst  $38                                         ; $563f: $ff
	db   $f4                                         ; $5640: $f4
	ld   de, $cf14                                   ; $5641: $11 $14 $cf
	rst  $38                                         ; $5644: $ff
	db   $fc                                         ; $5645: $fc
	ld   d, h                                        ; $5646: $54
	ld   b, [hl]                                     ; $5647: $46
	ld   d, a                                        ; $5648: $57
	ld   d, d                                        ; $5649: $52
	ld   de, $1111                                   ; $564a: $11 $11 $11
	inc  e                                           ; $564d: $1c
	rst  $38                                         ; $564e: $ff
	rst  $38                                         ; $564f: $ff
	ld   hl, sp+$21                                  ; $5650: $f8 $21
	ld   de, $ff3b                                   ; $5652: $11 $3b $ff
	rst  $38                                         ; $5655: $ff
	and  l                                           ; $5656: $a5
	inc  sp                                          ; $5657: $33
	ld   b, h                                        ; $5658: $44
	scf                                              ; $5659: $37
	ld   [hl], c                                     ; $565a: $71
	ld   de, $1511                                   ; $565b: $11 $11 $15
	rst  $38                                         ; $565e: $ff
	rst  $38                                         ; $565f: $ff
	ld   hl, sp-$3c                                  ; $5660: $f8 $c4
	ld   de, $ff5b                                   ; $5662: $11 $5b $ff
	rst  $38                                         ; $5665: $ff
	rst  $20                                         ; $5666: $e7
	ld   e, b                                        ; $5667: $58
	ld   e, c                                        ; $5668: $59
	ld   b, d                                        ; $5669: $42
	ld   hl, $1111                                   ; $566a: $21 $11 $11
	ld   de, $ffff                                   ; $566d: $11 $ff $ff
	rst  $38                                         ; $5670: $ff
	pop  af                                          ; $5671: $f1
	ld   [de], a                                     ; $5672: $12
	ld   l, h                                        ; $5673: $6c
	cp   [hl]                                        ; $5674: $be
	rst  $38                                         ; $5675: $ff
	ld   a, [$7826]                                  ; $5676: $fa $26 $78
	and  [hl]                                        ; $5679: $a6
	ld   b, h                                        ; $567a: $44
	ld   de, $1111                                   ; $567b: $11 $11 $11
	ccf                                              ; $567e: $3f
	rst  $38                                         ; $567f: $ff
	rst  $38                                         ; $5680: $ff
	cp   $31                                         ; $5681: $fe $31
	dec  [hl]                                        ; $5683: $35
	sub  [hl]                                        ; $5684: $96
	rst  $38                                         ; $5685: $ff
	rst  $38                                         ; $5686: $ff
	ld   [hl], h                                     ; $5687: $74
	ld   h, a                                        ; $5688: $67
	inc  [hl]                                        ; $5689: $34
	ld   d, [hl]                                     ; $568a: $56
	add  d                                           ; $568b: $82
	ld   de, $1111                                   ; $568c: $11 $11 $11
	cp   a                                           ; $568f: $bf

jr_0d4_5690:
	rst  $38                                         ; $5690: $ff
	rst  $38                                         ; $5691: $ff
	push af                                          ; $5692: $f5
	inc  hl                                          ; $5693: $23
	ld   e, b                                        ; $5694: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5695: $cf
	rst  $38                                         ; $5696: $ff

Call_0d4_5697:
	ld   sp, hl                                      ; $5697: $f9
	ld   d, l                                        ; $5698: $55
	inc  [hl]                                        ; $5699: $34
	ld   h, [hl]                                     ; $569a: $66
	ld   d, h                                        ; $569b: $54
	ld   hl, $1111                                   ; $569c: $21 $11 $11
	jr   jr_0d4_5690                                 ; $569f: $18 $ef

	rst  $38                                         ; $56a1: $ff
	rst  $38                                         ; $56a2: $ff
	and  [hl]                                        ; $56a3: $a6
	inc  d                                           ; $56a4: $14
	adc  e                                           ; $56a5: $8b
	rst  JumpTable                                         ; $56a6: $df
	rst  $38                                         ; $56a7: $ff
	or   [hl]                                        ; $56a8: $b6
	ld   d, d                                        ; $56a9: $52
	ld   b, l                                        ; $56aa: $45
	adc  b                                           ; $56ab: $88
	ld   [hl], h                                     ; $56ac: $74
	ld   hl, $1111                                   ; $56ad: $21 $11 $11
	add  hl, de                                      ; $56b0: $19
	rst  $38                                         ; $56b1: $ff
	rst  $38                                         ; $56b2: $ff
	db   $fd                                         ; $56b3: $fd
	or   e                                           ; $56b4: $b3
	ld   [hl], $bd                                   ; $56b5: $36 $bd
	cp   a                                           ; $56b7: $bf
	rst  $38                                         ; $56b8: $ff
	sub  a                                           ; $56b9: $97
	ld   d, a                                        ; $56ba: $57
	ld   d, l                                        ; $56bb: $55
	add  a                                           ; $56bc: $87
	add  l                                           ; $56bd: $85
	ld   d, c                                        ; $56be: $51
	ld   de, $1313                                   ; $56bf: $11 $13 $13
	sbc  e                                           ; $56c2: $9b
	sbc  $ce                                         ; $56c3: $de $ce
	db   $ec                                         ; $56c5: $ec
	ld   [hl], l                                     ; $56c6: $75
	adc  d                                           ; $56c7: $8a
	call z, $eaef                                    ; $56c8: $cc $ef $ea
	ld   [hl], l                                     ; $56cb: $75
	ld   e, b                                        ; $56cc: $58
	ld   e, b                                        ; $56cd: $58
	adc  b                                           ; $56ce: $88
	add  h                                           ; $56cf: $84
	ld   b, c                                        ; $56d0: $41
	ld   de, $2621                                   ; $56d1: $11 $21 $26
	cp   e                                           ; $56d4: $bb
	adc  d                                           ; $56d5: $8a
	cp   l                                           ; $56d6: $bd
	cp   b                                           ; $56d7: $b8
	adc  c                                           ; $56d8: $89
	cp   e                                           ; $56d9: $bb
	cp   h                                           ; $56da: $bc
	res  7, c                                        ; $56db: $cb $b9
	ld   a, d                                        ; $56dd: $7a
	xor  d                                           ; $56de: $aa
	sbc  b                                           ; $56df: $98
	adc  c                                           ; $56e0: $89
	add  a                                           ; $56e1: $87
	ld   h, e                                        ; $56e2: $63
	inc  h                                           ; $56e3: $24
	ld   h, [hl]                                     ; $56e4: $66
	ld   h, [hl]                                     ; $56e5: $66
	or   a                                           ; $56e6: $b7
	ld   h, a                                        ; $56e7: $67
	ld   a, b                                        ; $56e8: $78
	ld   l, c                                        ; $56e9: $69
	xor  e                                           ; $56ea: $ab
	xor  d                                           ; $56eb: $aa
	sbc  c                                           ; $56ec: $99
	sub  a                                           ; $56ed: $97
	cp   [hl]                                        ; $56ee: $be
	or   [hl]                                        ; $56ef: $b6
	cp   h                                           ; $56f0: $bc
	sub  a                                           ; $56f1: $97
	ld   l, d                                        ; $56f2: $6a
	sbc  b                                           ; $56f3: $98
	sbc  b                                           ; $56f4: $98
	sbc  c                                           ; $56f5: $99
	adc  b                                           ; $56f6: $88
	sub  a                                           ; $56f7: $97
	ld   l, b                                        ; $56f8: $68
	add  a                                           ; $56f9: $87
	adc  c                                           ; $56fa: $89
	ld   h, a                                        ; $56fb: $67
	ld   h, a                                        ; $56fc: $67
	ld   h, a                                        ; $56fd: $67
	and  a                                           ; $56fe: $a7
	ld   h, a                                        ; $56ff: $67
	cp   e                                           ; $5700: $bb
	add  a                                           ; $5701: $87
	adc  c                                           ; $5702: $89
	sbc  c                                           ; $5703: $99
	adc  c                                           ; $5704: $89
	xor  b                                           ; $5705: $a8
	ld   a, d                                        ; $5706: $7a
	cp   h                                           ; $5707: $bc
	adc  d                                           ; $5708: $8a
	and  a                                           ; $5709: $a7
	adc  c                                           ; $570a: $89
	halt                                             ; $570b: $76
	xor  c                                           ; $570c: $a9
	or   l                                           ; $570d: $b5
	ld   l, b                                        ; $570e: $68
	adc  b                                           ; $570f: $88
	ld   l, b                                        ; $5710: $68
	sbc  c                                           ; $5711: $99
	ld   a, b                                        ; $5712: $78
	ld   l, c                                        ; $5713: $69
	add  [hl]                                        ; $5714: $86
	add  a                                           ; $5715: $87
	sub  a                                           ; $5716: $97
	sbc  e                                           ; $5717: $9b
	adc  b                                           ; $5718: $88
	adc  c                                           ; $5719: $89
	sbc  b                                           ; $571a: $98
	adc  c                                           ; $571b: $89
	xor  b                                           ; $571c: $a8
	add  a                                           ; $571d: $87
	sbc  c                                           ; $571e: $99
	xor  b                                           ; $571f: $a8
	adc  c                                           ; $5720: $89
	adc  b                                           ; $5721: $88
	ld   a, b                                        ; $5722: $78
	ld   a, b                                        ; $5723: $78
	add  a                                           ; $5724: $87
	sbc  b                                           ; $5725: $98
	ld   a, b                                        ; $5726: $78
	ld   a, b                                        ; $5727: $78
	add  a                                           ; $5728: $87
	sbc  b                                           ; $5729: $98
	adc  b                                           ; $572a: $88
	ld   a, b                                        ; $572b: $78
	ld   a, b                                        ; $572c: $78
	ld   a, b                                        ; $572d: $78
	add  a                                           ; $572e: $87
	ld   a, b                                        ; $572f: $78
	xor  b                                           ; $5730: $a8
	add  a                                           ; $5731: $87
	adc  c                                           ; $5732: $89
	add  a                                           ; $5733: $87
	ld   a, b                                        ; $5734: $78
	ld   [hl], a                                     ; $5735: $77
	ld   a, b                                        ; $5736: $78
	sub  a                                           ; $5737: $97
	adc  b                                           ; $5738: $88
	ld   l, b                                        ; $5739: $68
	ld   a, b                                        ; $573a: $78
	add  a                                           ; $573b: $87
	add  [hl]                                        ; $573c: $86
	ld   a, b                                        ; $573d: $78
	add  a                                           ; $573e: $87
	ld   [hl], a                                     ; $573f: $77
	ld   a, b                                        ; $5740: $78
	adc  b                                           ; $5741: $88
	sbc  c                                           ; $5742: $99
	ld   [hl], a                                     ; $5743: $77
	ld   a, b                                        ; $5744: $78
	add  a                                           ; $5745: $87
	ld   a, b                                        ; $5746: $78
	add  a                                           ; $5747: $87
	sbc  b                                           ; $5748: $98
	adc  b                                           ; $5749: $88
	ld   [hl], a                                     ; $574a: $77
	add  a                                           ; $574b: $87
	ld   a, b                                        ; $574c: $78
	ld   [hl], a                                     ; $574d: $77
	ld   a, b                                        ; $574e: $78
	ld   [hl], a                                     ; $574f: $77
	ld   [hl], a                                     ; $5750: $77
	adc  b                                           ; $5751: $88
	adc  b                                           ; $5752: $88
	ld   a, b                                        ; $5753: $78
	add  a                                           ; $5754: $87
	add  a                                           ; $5755: $87
	ld   a, b                                        ; $5756: $78
	ld   a, b                                        ; $5757: $78
	sbc  b                                           ; $5758: $98
	adc  c                                           ; $5759: $89
	sub  a                                           ; $575a: $97
	sbc  b                                           ; $575b: $98
	ld   [hl], a                                     ; $575c: $77
	ld   [hl], a                                     ; $575d: $77
	add  a                                           ; $575e: $87
	ld   a, b                                        ; $575f: $78
	ld   [hl], a                                     ; $5760: $77
	ld   [hl], a                                     ; $5761: $77
	ld   a, b                                        ; $5762: $78
	add  a                                           ; $5763: $87
	adc  b                                           ; $5764: $88
	ld   [hl], a                                     ; $5765: $77
	ld   [hl], a                                     ; $5766: $77
	ld   a, c                                        ; $5767: $79
	ld   a, b                                        ; $5768: $78
	sbc  b                                           ; $5769: $98
	ld   [hl], a                                     ; $576a: $77
	sbc  b                                           ; $576b: $98
	adc  c                                           ; $576c: $89
	add  a                                           ; $576d: $87
	add  a                                           ; $576e: $87
	ld   a, c                                        ; $576f: $79
	ld   a, b                                        ; $5770: $78
	ld   [hl], a                                     ; $5771: $77
	add  a                                           ; $5772: $87
	ld   [hl], a                                     ; $5773: $77
	add  a                                           ; $5774: $87
	add  a                                           ; $5775: $87
	ld   [hl], a                                     ; $5776: $77
	ld   [hl], a                                     ; $5777: $77
	ld   a, b                                        ; $5778: $78
	ld   a, b                                        ; $5779: $78
	sbc  b                                           ; $577a: $98
	add  a                                           ; $577b: $87
	adc  b                                           ; $577c: $88
	ld   [hl], a                                     ; $577d: $77
	adc  c                                           ; $577e: $89
	add  a                                           ; $577f: $87
	adc  b                                           ; $5780: $88
	adc  b                                           ; $5781: $88
	ld   a, b                                        ; $5782: $78
	adc  b                                           ; $5783: $88
	adc  b                                           ; $5784: $88
	adc  b                                           ; $5785: $88
	add  a                                           ; $5786: $87
	ld   [hl], a                                     ; $5787: $77
	adc  b                                           ; $5788: $88
	adc  b                                           ; $5789: $88
	adc  b                                           ; $578a: $88
	adc  b                                           ; $578b: $88
	adc  b                                           ; $578c: $88
	adc  b                                           ; $578d: $88
	ld   a, b                                        ; $578e: $78
	adc  b                                           ; $578f: $88
	add  a                                           ; $5790: $87
	add  a                                           ; $5791: $87
	adc  b                                           ; $5792: $88
	adc  b                                           ; $5793: $88
	adc  b                                           ; $5794: $88
	adc  b                                           ; $5795: $88
	add  a                                           ; $5796: $87
	adc  b                                           ; $5797: $88
	ld   a, b                                        ; $5798: $78
	adc  b                                           ; $5799: $88
	sbc  b                                           ; $579a: $98
	adc  b                                           ; $579b: $88
	adc  b                                           ; $579c: $88
	add  a                                           ; $579d: $87
	adc  b                                           ; $579e: $88
	adc  b                                           ; $579f: $88
	adc  b                                           ; $57a0: $88
	ld   a, c                                        ; $57a1: $79
	add  a                                           ; $57a2: $87
	add  a                                           ; $57a3: $87
	adc  c                                           ; $57a4: $89
	ld   a, b                                        ; $57a5: $78
	adc  b                                           ; $57a6: $88
	adc  b                                           ; $57a7: $88
	add  a                                           ; $57a8: $87
	adc  b                                           ; $57a9: $88
	sbc  b                                           ; $57aa: $98
	adc  b                                           ; $57ab: $88
	adc  c                                           ; $57ac: $89
	adc  b                                           ; $57ad: $88
	adc  c                                           ; $57ae: $89
	ld   a, b                                        ; $57af: $78
	adc  b                                           ; $57b0: $88
	adc  b                                           ; $57b1: $88
	add  a                                           ; $57b2: $87
	sbc  b                                           ; $57b3: $98
	sbc  b                                           ; $57b4: $98
	adc  c                                           ; $57b5: $89
	sbc  b                                           ; $57b6: $98
	ld   a, b                                        ; $57b7: $78
	adc  b                                           ; $57b8: $88
	ld   [hl], a                                     ; $57b9: $77
	adc  b                                           ; $57ba: $88
	adc  b                                           ; $57bb: $88
	adc  b                                           ; $57bc: $88
	sbc  b                                           ; $57bd: $98
	sbc  b                                           ; $57be: $98
	adc  b                                           ; $57bf: $88
	adc  c                                           ; $57c0: $89
	adc  b                                           ; $57c1: $88
	add  a                                           ; $57c2: $87
	add  a                                           ; $57c3: $87
	sbc  b                                           ; $57c4: $98
	adc  b                                           ; $57c5: $88
	sbc  c                                           ; $57c6: $99
	sbc  b                                           ; $57c7: $98
	adc  c                                           ; $57c8: $89
	add  a                                           ; $57c9: $87
	adc  c                                           ; $57ca: $89
	adc  b                                           ; $57cb: $88
	adc  b                                           ; $57cc: $88
	sbc  b                                           ; $57cd: $98
	adc  b                                           ; $57ce: $88
	adc  b                                           ; $57cf: $88
	adc  b                                           ; $57d0: $88
	adc  c                                           ; $57d1: $89
	adc  b                                           ; $57d2: $88
	adc  b                                           ; $57d3: $88
	adc  b                                           ; $57d4: $88
	sbc  b                                           ; $57d5: $98
	adc  b                                           ; $57d6: $88
	adc  c                                           ; $57d7: $89
	adc  c                                           ; $57d8: $89
	sub  a                                           ; $57d9: $97
	adc  b                                           ; $57da: $88
	adc  c                                           ; $57db: $89
	ld   a, c                                        ; $57dc: $79
	sbc  b                                           ; $57dd: $98
	adc  b                                           ; $57de: $88
	adc  b                                           ; $57df: $88
	adc  c                                           ; $57e0: $89
	adc  b                                           ; $57e1: $88
	adc  b                                           ; $57e2: $88
	add  a                                           ; $57e3: $87
	adc  b                                           ; $57e4: $88
	adc  b                                           ; $57e5: $88
	adc  b                                           ; $57e6: $88
	adc  b                                           ; $57e7: $88
	adc  b                                           ; $57e8: $88
	adc  b                                           ; $57e9: $88
	adc  b                                           ; $57ea: $88
	adc  b                                           ; $57eb: $88
	adc  b                                           ; $57ec: $88
	sub  a                                           ; $57ed: $97
	ld   a, b                                        ; $57ee: $78
	xor  e                                           ; $57ef: $ab
	ld   [hl], a                                     ; $57f0: $77
	adc  b                                           ; $57f1: $88
	add  a                                           ; $57f2: $87
	adc  b                                           ; $57f3: $88
	sbc  b                                           ; $57f4: $98
	ld   [hl], a                                     ; $57f5: $77
	sbc  b                                           ; $57f6: $98
	sbc  c                                           ; $57f7: $99
	ld   a, b                                        ; $57f8: $78
	adc  c                                           ; $57f9: $89
	adc  c                                           ; $57fa: $89
	adc  c                                           ; $57fb: $89
	adc  b                                           ; $57fc: $88
	sub  a                                           ; $57fd: $97
	adc  b                                           ; $57fe: $88
	sub  a                                           ; $57ff: $97
	ld   a, d                                        ; $5800: $7a
	adc  c                                           ; $5801: $89
	ld   a, c                                        ; $5802: $79
	adc  b                                           ; $5803: $88
	sbc  b                                           ; $5804: $98
	adc  b                                           ; $5805: $88
	adc  b                                           ; $5806: $88
	sbc  c                                           ; $5807: $99
	adc  c                                           ; $5808: $89
	adc  b                                           ; $5809: $88
	add  a                                           ; $580a: $87
	adc  b                                           ; $580b: $88
	sbc  b                                           ; $580c: $98
	adc  b                                           ; $580d: $88
	adc  c                                           ; $580e: $89
	ld   a, c                                        ; $580f: $79
	sbc  b                                           ; $5810: $98
	adc  d                                           ; $5811: $8a
	add  a                                           ; $5812: $87
	add  a                                           ; $5813: $87
	adc  c                                           ; $5814: $89
	sub  a                                           ; $5815: $97
	adc  b                                           ; $5816: $88
	adc  c                                           ; $5817: $89
	adc  c                                           ; $5818: $89
	sbc  b                                           ; $5819: $98
	ld   l, b                                        ; $581a: $68
	adc  c                                           ; $581b: $89
	ld   [hl], a                                     ; $581c: $77
	sbc  b                                           ; $581d: $98
	ld   a, b                                        ; $581e: $78
	adc  b                                           ; $581f: $88
	adc  b                                           ; $5820: $88
	sub  a                                           ; $5821: $97
	sbc  c                                           ; $5822: $99
	add  a                                           ; $5823: $87
	ld   a, c                                        ; $5824: $79
	add  a                                           ; $5825: $87
	ld   a, c                                        ; $5826: $79
	add  [hl]                                        ; $5827: $86
	sbc  b                                           ; $5828: $98
	sbc  c                                           ; $5829: $99
	ld   a, b                                        ; $582a: $78
	ld   a, b                                        ; $582b: $78
	adc  b                                           ; $582c: $88
	cp   d                                           ; $582d: $ba
	and  [hl]                                        ; $582e: $a6
	ld   a, c                                        ; $582f: $79
	adc  b                                           ; $5830: $88
	sub  a                                           ; $5831: $97
	ld   [hl], a                                     ; $5832: $77
	ld   e, d                                        ; $5833: $5a
	sbc  c                                           ; $5834: $99
	sub  a                                           ; $5835: $97
	adc  c                                           ; $5836: $89
	cp   h                                           ; $5837: $bc
	sbc  c                                           ; $5838: $99
	ld   [hl], a                                     ; $5839: $77
	add  [hl]                                        ; $583a: $86
	xor  c                                           ; $583b: $a9
	ld   a, b                                        ; $583c: $78
	ld   b, [hl]                                     ; $583d: $46
	ld   [hl], a                                     ; $583e: $77
	and  a                                           ; $583f: $a7
	ld   a, b                                        ; $5840: $78
	ld   [hl], a                                     ; $5841: $77
	ld   a, c                                        ; $5842: $79
	sub  a                                           ; $5843: $97
	sbc  b                                           ; $5844: $98
	ld   a, c                                        ; $5845: $79
	add  [hl]                                        ; $5846: $86
	halt                                             ; $5847: $76
	ld   a, c                                        ; $5848: $79
	ld   l, b                                        ; $5849: $68
	add  a                                           ; $584a: $87
	add  a                                           ; $584b: $87
	ld   a, b                                        ; $584c: $78
	adc  c                                           ; $584d: $89
	sbc  b                                           ; $584e: $98
	sbc  c                                           ; $584f: $99
	add  a                                           ; $5850: $87
	ld   h, [hl]                                     ; $5851: $66
	adc  b                                           ; $5852: $88
	ld   [hl], a                                     ; $5853: $77
	ld   h, a                                        ; $5854: $67
	adc  b                                           ; $5855: $88
	ld   a, c                                        ; $5856: $79
	add  a                                           ; $5857: $87
	add  a                                           ; $5858: $87
	adc  b                                           ; $5859: $88
	adc  b                                           ; $585a: $88
	adc  b                                           ; $585b: $88
	add  l                                           ; $585c: $85
	ld   l, b                                        ; $585d: $68
	sbc  b                                           ; $585e: $98
	ld   a, c                                        ; $585f: $79
	adc  c                                           ; $5860: $89
	ld   [hl], a                                     ; $5861: $77
	adc  d                                           ; $5862: $8a
	cp   d                                           ; $5863: $ba
	sub  a                                           ; $5864: $97
	ld   [hl], l                                     ; $5865: $75
	ld   d, l                                        ; $5866: $55
	ld   b, a                                        ; $5867: $47
	sbc  b                                           ; $5868: $98
	ld   l, b                                        ; $5869: $68
	ld   a, b                                        ; $586a: $78
	halt                                             ; $586b: $76
	ld   a, c                                        ; $586c: $79
	xor  b                                           ; $586d: $a8
	adc  b                                           ; $586e: $88
	add  a                                           ; $586f: $87
	ld   [hl], a                                     ; $5870: $77
	adc  d                                           ; $5871: $8a
	xor  e                                           ; $5872: $ab
	cp   d                                           ; $5873: $ba
	sbc  c                                           ; $5874: $99
	sbc  b                                           ; $5875: $98
	ld   h, l                                        ; $5876: $65
	ld   b, d                                        ; $5877: $42
	inc  [hl]                                        ; $5878: $34
	ld   b, h                                        ; $5879: $44
	ld   de, $2611                                   ; $587a: $11 $11 $26
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $587d: $cf
	rst  $38                                         ; $587e: $ff
	rst  $38                                         ; $587f: $ff
	ld   [$8987], a                                  ; $5880: $ea $87 $89
	rst  $28                                         ; $5883: $ef
	db   $fc                                         ; $5884: $fc
	add  l                                           ; $5885: $85
	ld   de, $1111                                   ; $5886: $11 $11 $11
	ld   de, $ff9e                                   ; $5889: $11 $9e $ff
	rst  $38                                         ; $588c: $ff
	rst  $38                                         ; $588d: $ff
	or   h                                           ; $588e: $b4
	ld   l, b                                        ; $588f: $68
	rst  $38                                         ; $5890: $ff
	rst  $38                                         ; $5891: $ff
	db   $fd                                         ; $5892: $fd
	and  [hl]                                        ; $5893: $a6
	inc  [hl]                                        ; $5894: $34
	ld   sp, $1111                                   ; $5895: $31 $11 $11
	ld   de, $ffbf                                   ; $5898: $11 $bf $ff
	rst  $38                                         ; $589b: $ff
	jp   c, $9313                                    ; $589c: $da $13 $93

	rst  $38                                         ; $589f: $ff
	rst  $38                                         ; $58a0: $ff
	and  $41                                         ; $58a1: $e6 $41
	daa                                              ; $58a3: $27
	adc  e                                           ; $58a4: $8b
	ld   h, d                                        ; $58a5: $62
	ld   de, $1711                                   ; $58a6: $11 $11 $17
	rst  $38                                         ; $58a9: $ff
	rst  $38                                         ; $58aa: $ff
	rst  $38                                         ; $58ab: $ff
	ld   sp, $af11                                   ; $58ac: $31 $11 $af
	rst  $38                                         ; $58af: $ff
	db   $fd                                         ; $58b0: $fd
	ld   h, c                                        ; $58b1: $61
	ld   d, $ad                                      ; $58b2: $16 $ad
	ret                                              ; $58b4: $c9


	ld   sp, $1111                                   ; $58b5: $31 $11 $11
	xor  a                                           ; $58b8: $af
	rst  $38                                         ; $58b9: $ff
	rst  $38                                         ; $58ba: $ff
	ldh  a, [c]                                      ; $58bb: $f2
	ld   [de], a                                     ; $58bc: $12
	ld   b, a                                        ; $58bd: $47
	rst  $38                                         ; $58be: $ff
	rst  $38                                         ; $58bf: $ff
	sub  [hl]                                        ; $58c0: $96
	ld   de, $ff6b                                   ; $58c1: $11 $6b $ff
	ld   d, c                                        ; $58c4: $51
	ld   de, $1c11                                   ; $58c5: $11 $11 $1c
	rst  $38                                         ; $58c8: $ff
	rst  $38                                         ; $58c9: $ff
	rst  $30                                         ; $58ca: $f7
	ld   h, d                                        ; $58cb: $62
	inc  h                                           ; $58cc: $24
	xor  a                                           ; $58cd: $af
	rst  $38                                         ; $58ce: $ff
	ld   hl, sp-$6c                                  ; $58cf: $f8 $94
	ld   c, h                                        ; $58d1: $4c
	rst  $38                                         ; $58d2: $ff
	rst  $30                                         ; $58d3: $f7
	ld   de, $1111                                   ; $58d4: $11 $11 $11
	cpl                                              ; $58d7: $2f
	rst  $38                                         ; $58d8: $ff
	rst  $38                                         ; $58d9: $ff
	rst  $20                                         ; $58da: $e7
	ld   hl, $df7e                                   ; $58db: $21 $7e $df
	rst  $38                                         ; $58de: $ff
	pop  hl                                          ; $58df: $e1
	ld   d, h                                        ; $58e0: $54
	rst  $28                                         ; $58e1: $ef
	rst  $38                                         ; $58e2: $ff
	pop  af                                          ; $58e3: $f1
	ld   de, $1111                                   ; $58e4: $11 $11 $11
	ld   l, a                                        ; $58e7: $6f
	rst  $38                                         ; $58e8: $ff
	ld   a, [$1b9b]                                  ; $58e9: $fa $9b $1b
	ld   l, a                                        ; $58ec: $6f
	cp   $b7                                         ; $58ed: $fe $b7
	add  a                                           ; $58ef: $87
	ld   a, d                                        ; $58f0: $7a
	rst  $38                                         ; $58f1: $ff
	db   $fd                                         ; $58f2: $fd
	sub  c                                           ; $58f3: $91
	ld   de, $1111                                   ; $58f4: $11 $11 $11
	rst  $38                                         ; $58f7: $ff
	rst  $38                                         ; $58f8: $ff
	db   $fd                                         ; $58f9: $fd
	add  [hl]                                        ; $58fa: $86
	ld   a, [hl]                                     ; $58fb: $7e
	db   $ed                                         ; $58fc: $ed
	cp   e                                           ; $58fd: $bb
	xor  c                                           ; $58fe: $a9
	ld   l, b                                        ; $58ff: $68
	rst  JumpTable                                         ; $5900: $df
	rst  $38                                         ; $5901: $ff
	ei                                               ; $5902: $fb
	ld   h, c                                        ; $5903: $61
	ld   de, $1111                                   ; $5904: $11 $11 $11
	rst  $38                                         ; $5907: $ff
	rst  $38                                         ; $5908: $ff
	rst  $38                                         ; $5909: $ff
	ld   h, a                                        ; $590a: $67
	jp   z, $acb8                                    ; $590b: $ca $b8 $ac

	jp   c, $cec7                                    ; $590e: $da $c7 $ce

	rst  $38                                         ; $5911: $ff
	xor  $31                                         ; $5912: $ee $31
	ld   de, $1d11                                   ; $5914: $11 $11 $1d
	rst  $38                                         ; $5917: $ff
	rst  $38                                         ; $5918: $ff
	ld   a, [$6fa7]                                  ; $5919: $fa $a7 $6f
	adc  l                                           ; $591c: $8d
	sub  a                                           ; $591d: $97
	ld   a, l                                        ; $591e: $7d
	sbc  [hl]                                        ; $591f: $9e
	rst  $28                                         ; $5920: $ef
	rst  $38                                         ; $5921: $ff
	db   $e4                                         ; $5922: $e4
	ld   de, $1111                                   ; $5923: $11 $11 $11
	ld   d, $ff                                      ; $5926: $16 $ff
	rst  $38                                         ; $5928: $ff
	rst  $30                                         ; $5929: $f7
	ld   d, e                                        ; $592a: $53
	sbc  a                                           ; $592b: $9f
	rst  $38                                         ; $592c: $ff
	add  d                                           ; $592d: $82
	ld   d, h                                        ; $592e: $54
	xor  a                                           ; $592f: $af
	rst  $38                                         ; $5930: $ff
	rst  $38                                         ; $5931: $ff
	ld   [hl], c                                     ; $5932: $71
	ld   de, $1111                                   ; $5933: $11 $11 $11
	rra                                              ; $5936: $1f
	rst  $38                                         ; $5937: $ff
	rst  $38                                         ; $5938: $ff
	ei                                               ; $5939: $fb
	sbc  a                                           ; $593a: $9f
	db   $fc                                         ; $593b: $fc
	adc  c                                           ; $593c: $89
	ld   a, c                                        ; $593d: $79
	call $ffcd                                       ; $593e: $cd $cd $ff
	db   $fd                                         ; $5941: $fd
	push bc                                          ; $5942: $c5
	ld   de, $1111                                   ; $5943: $11 $11 $11
	dec  d                                           ; $5946: $15
	rst  $38                                         ; $5947: $ff
	rst  $38                                         ; $5948: $ff
	ei                                               ; $5949: $fb
	add  a                                           ; $594a: $87
	adc  l                                           ; $594b: $8d
	call c, $ee88                                    ; $594c: $dc $88 $ee
	xor  d                                           ; $594f: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5950: $cf
	rst  $38                                         ; $5951: $ff
	or   $11                                         ; $5952: $f6 $11
	ld   de, $1f11                                   ; $5954: $11 $11 $1f
	rst  $38                                         ; $5957: $ff
	rst  $38                                         ; $5958: $ff
	pop  af                                          ; $5959: $f1
	inc  d                                           ; $595a: $14
	rst  $28                                         ; $595b: $ef
	db   $fc                                         ; $595c: $fc
	sbc  d                                           ; $595d: $9a
	ld   a, b                                        ; $595e: $78
	adc  h                                           ; $595f: $8c
	rst  $38                                         ; $5960: $ff
	rst  $38                                         ; $5961: $ff
	sub  h                                           ; $5962: $94
	ld   de, $1111                                   ; $5963: $11 $11 $11

Jump_0d4_5966:
	rra                                              ; $5966: $1f
	rst  $38                                         ; $5967: $ff
	rst  $38                                         ; $5968: $ff
	pop  af                                          ; $5969: $f1
	inc  hl                                          ; $596a: $23
	rst  JumpTable                                         ; $596b: $df
	ei                                               ; $596c: $fb
	and  h                                           ; $596d: $a4
	sbc  d                                           ; $596e: $9a
	ld   a, a                                        ; $596f: $7f
	rst  $38                                         ; $5970: $ff
	rst  $38                                         ; $5971: $ff
	db   $d3                                         ; $5972: $d3
	ld   de, $1111                                   ; $5973: $11 $11 $11
	rra                                              ; $5976: $1f
	rst  $28                                         ; $5977: $ef
	rst  $38                                         ; $5978: $ff
	pop  af                                          ; $5979: $f1
	ld   de, $feff                                   ; $597a: $11 $ff $fe
	sbc  c                                           ; $597d: $99
	ld   h, a                                        ; $597e: $67
	ld   a, a                                        ; $597f: $7f
	rst  $38                                         ; $5980: $ff
	rst  $38                                         ; $5981: $ff
	or   e                                           ; $5982: $b3
	ld   de, $1111                                   ; $5983: $11 $11 $11
	cp   a                                           ; $5986: $bf
	rst  $38                                         ; $5987: $ff
	rst  $38                                         ; $5988: $ff
	sub  c                                           ; $5989: $91
	ld   d, $ff                                      ; $598a: $16 $ff
	ei                                               ; $598c: $fb
	ret  z                                           ; $598d: $c8

	or   d                                           ; $598e: $b2
	ld   l, a                                        ; $598f: $6f
	rst  $38                                         ; $5990: $ff
	rst  $38                                         ; $5991: $ff
	or   c                                           ; $5992: $b1
	ld   de, $1111                                   ; $5993: $11 $11 $11
	rst  $38                                         ; $5996: $ff
	rst  $38                                         ; $5997: $ff
	rst  $38                                         ; $5998: $ff
	and  c                                           ; $5999: $a1
	ld   de, $feff                                   ; $599a: $11 $ff $fe
	cp   h                                           ; $599d: $bc
	and  h                                           ; $599e: $a4
	ld   c, h                                        ; $599f: $4c
	rst  $38                                         ; $59a0: $ff
	rst  $38                                         ; $59a1: $ff
	and  c                                           ; $59a2: $a1
	ld   de, $1111                                   ; $59a3: $11 $11 $11
	rst  $38                                         ; $59a6: $ff
	rst  $38                                         ; $59a7: $ff
	rst  $38                                         ; $59a8: $ff
	ld   de, $ff1e                                   ; $59a9: $11 $1e $ff
	db   $fd                                         ; $59ac: $fd
	jp   nz, $bf41                                   ; $59ad: $c2 $41 $bf

	rst  $38                                         ; $59b0: $ff
	rst  $38                                         ; $59b1: $ff
	ld   d, c                                        ; $59b2: $51
	ld   de, $1111                                   ; $59b3: $11 $11 $11
	rst  $38                                         ; $59b6: $ff
	rst  $38                                         ; $59b7: $ff
	rst  $38                                         ; $59b8: $ff
	ld   de, $ff4b                                   ; $59b9: $11 $4b $ff
	db   $eb                                         ; $59bc: $eb
	and  a                                           ; $59bd: $a7
	sub  d                                           ; $59be: $92
	sbc  a                                           ; $59bf: $9f
	rst  $38                                         ; $59c0: $ff
	rst  $38                                         ; $59c1: $ff
	ld   h, c                                        ; $59c2: $61
	ld   de, $1111                                   ; $59c3: $11 $11 $11
	rst  $38                                         ; $59c6: $ff
	rst  $38                                         ; $59c7: $ff
	rst  $38                                         ; $59c8: $ff
	inc  [hl]                                        ; $59c9: $34
	ld   a, [hl-]                                    ; $59ca: $3a
	sbc  $ed                                         ; $59cb: $de $ed
	jp   hl                                          ; $59cd: $e9


	add  h                                           ; $59ce: $84
	sbc  a                                           ; $59cf: $9f
	rst  $38                                         ; $59d0: $ff
	rst  $38                                         ; $59d1: $ff
	ld   [hl], c                                     ; $59d2: $71
	ld   de, $1111                                   ; $59d3: $11 $11 $11
	rst  JumpTable                                         ; $59d6: $df
	rst  $38                                         ; $59d7: $ff
	rst  $38                                         ; $59d8: $ff
	scf                                              ; $59d9: $37
	add  hl, hl                                      ; $59da: $29
	db   $fd                                         ; $59db: $fd
	rst  JumpTable                                         ; $59dc: $df
	xor  d                                           ; $59dd: $aa
	push hl                                          ; $59de: $e5
	xor  e                                           ; $59df: $ab
	rst  $38                                         ; $59e0: $ff
	rst  $38                                         ; $59e1: $ff
	sub  c                                           ; $59e2: $91
	ld   de, $1111                                   ; $59e3: $11 $11 $11
	cp   a                                           ; $59e6: $bf
	rst  $38                                         ; $59e7: $ff
	rst  $38                                         ; $59e8: $ff
	sub  h                                           ; $59e9: $94
	ld   a, h                                        ; $59ea: $7c
	db   $fc                                         ; $59eb: $fc
	db   $db                                         ; $59ec: $db
	cp   b                                           ; $59ed: $b8
	xor  e                                           ; $59ee: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59ef: $cf
	rst  $38                                         ; $59f0: $ff
	rst  $38                                         ; $59f1: $ff
	ld   [hl], c                                     ; $59f2: $71
	ld   de, $1111                                   ; $59f3: $11 $11 $11
	inc  a                                           ; $59f6: $3c
	rst  JumpTable                                         ; $59f7: $df
	rst  $38                                         ; $59f8: $ff
	db   $f4                                         ; $59f9: $f4
	call nc, $bbcd                                   ; $59fa: $d4 $cd $bb
	ei                                               ; $59fd: $fb
	db   $fc                                         ; $59fe: $fc
	adc  a                                           ; $59ff: $8f
	cp   a                                           ; $5a00: $bf
	rst  $38                                         ; $5a01: $ff
	db   $d3                                         ; $5a02: $d3
	ld   de, $1111                                   ; $5a03: $11 $11 $11
	ld   b, a                                        ; $5a06: $47
	rst  $38                                         ; $5a07: $ff
	rst  $38                                         ; $5a08: $ff
	or   $86                                         ; $5a09: $f6 $86
	cp   [hl]                                        ; $5a0b: $be
	cp   e                                           ; $5a0c: $bb
	call z, $bdfe                                    ; $5a0d: $cc $fe $bd
	rst  $38                                         ; $5a10: $ff
	rst  $38                                         ; $5a11: $ff
	jp   hl                                          ; $5a12: $e9


	ld   sp, $1111                                   ; $5a13: $31 $11 $11
	ld   e, $6f                                      ; $5a16: $1e $6f
	rst  $38                                         ; $5a18: $ff
	ld   sp, hl                                      ; $5a19: $f9
	ld   a, d                                        ; $5a1a: $7a
	ld   a, c                                        ; $5a1b: $79
	xor  e                                           ; $5a1c: $ab
	rst  $28                                         ; $5a1d: $ef
	cp   [hl]                                        ; $5a1e: $be
	set  7, a                                        ; $5a1f: $cb $ff
	rst  $38                                         ; $5a21: $ff
	db   $fc                                         ; $5a22: $fc
	ld   h, c                                        ; $5a23: $61
	ld   de, $1111                                   ; $5a24: $11 $11 $11
	and  h                                           ; $5a27: $a4
	rst  $38                                         ; $5a28: $ff
	rst  $38                                         ; $5a29: $ff
	inc  a                                           ; $5a2a: $3c
	ld   [hl], l                                     ; $5a2b: $75
	add  sp, -$31                                    ; $5a2c: $e8 $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a2e: $cf
	db   $fc                                         ; $5a2f: $fc
	adc  $ff                                         ; $5a30: $ce $ff
	rst  $38                                         ; $5a32: $ff
	ld   hl, sp+$11                                  ; $5a33: $f8 $11
	ld   de, $1b11                                   ; $5a35: $11 $11 $1b
	ld   a, a                                        ; $5a38: $7f
	rst  $38                                         ; $5a39: $ff
	rst  $30                                         ; $5a3a: $f7
	ld   l, d                                        ; $5a3b: $6a
	res  7, l                                        ; $5a3c: $cb $bd
	cp   l                                           ; $5a3e: $bd
	cp   [hl]                                        ; $5a3f: $be
	cp   $ff                                         ; $5a40: $fe $ff
	rst  $38                                         ; $5a42: $ff
	db   $fc                                         ; $5a43: $fc
	and  c                                           ; $5a44: $a1
	ld   de, $1111                                   ; $5a45: $11 $11 $11
	ld   d, [hl]                                     ; $5a48: $56
	call $3cff                                       ; $5a49: $cd $ff $3c
	xor  e                                           ; $5a4c: $ab
	ret  c                                           ; $5a4d: $d8

	rst  $38                                         ; $5a4e: $ff
	sbc  e                                           ; $5a4f: $9b
	db   $fd                                         ; $5a50: $fd
	rst  $38                                         ; $5a51: $ff
	rst  $38                                         ; $5a52: $ff
	rst  $38                                         ; $5a53: $ff
	ei                                               ; $5a54: $fb
	ld   de, $1111                                   ; $5a55: $11 $11 $11
	ld   [de], a                                     ; $5a58: $12
	add  l                                           ; $5a59: $85
	call z, $6bff                                    ; $5a5a: $cc $ff $6b
	cp   l                                           ; $5a5d: $bd
	sbc  c                                           ; $5a5e: $99
	db   $dd                                         ; $5a5f: $dd
	adc  l                                           ; $5a60: $8d
	rst  $38                                         ; $5a61: $ff
	rst  $38                                         ; $5a62: $ff
	rst  $38                                         ; $5a63: $ff
	cp   $d9                                         ; $5a64: $fe $d9
	ld   de, $1111                                   ; $5a66: $11 $11 $11
	inc  d                                           ; $5a69: $14
	jr   @-$1f                                       ; $5a6a: $18 $df

	ld   sp, hl                                      ; $5a6c: $f9
	db   $dd                                         ; $5a6d: $dd
	xor  e                                           ; $5a6e: $ab
	adc  e                                           ; $5a6f: $8b
	ld   sp, hl                                      ; $5a70: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a71: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a72: $cf
	rst  $28                                         ; $5a73: $ef
	rst  $38                                         ; $5a74: $ff
	db   $fd                                         ; $5a75: $fd
	add  $11                                         ; $5a76: $c6 $11
	ld   de, $1211                                   ; $5a78: $11 $11 $12
	ld   e, $ef                                      ; $5a7b: $1e $ef
	add  sp, -$08                                    ; $5a7d: $e8 $f8
	xor  l                                           ; $5a7f: $ad
	sbc  [hl]                                        ; $5a80: $9e
	cp   e                                           ; $5a81: $bb
	rst  $38                                         ; $5a82: $ff
	rst  $28                                         ; $5a83: $ef
	rst  $38                                         ; $5a84: $ff
	rst  $38                                         ; $5a85: $ff
	db   $fc                                         ; $5a86: $fc
	sub  h                                           ; $5a87: $94
	ld   de, $1111                                   ; $5a88: $11 $11 $11
	ld   de, $bd7c                                   ; $5a8b: $11 $7c $bd
	sbc  $a8                                         ; $5a8e: $de $a8
	adc  $8c                                         ; $5a90: $ce $8c
	db   $fc                                         ; $5a92: $fc
	cp   $ff                                         ; $5a93: $fe $ff
	rst  $38                                         ; $5a95: $ff
	rst  $38                                         ; $5a96: $ff
	cp   $97                                         ; $5a97: $fe $97
	ld   de, $1111                                   ; $5a99: $11 $11 $11
	ld   de, $da1a                                   ; $5a9c: $11 $1a $da
	cp   b                                           ; $5a9f: $b8
	ld   [$bc7d], a                                  ; $5aa0: $ea $7d $bc
	rst  $28                                         ; $5aa3: $ef
	cp   [hl]                                        ; $5aa4: $be
	rst  $38                                         ; $5aa5: $ff
	rst  $38                                         ; $5aa6: $ff
	rst  $38                                         ; $5aa7: $ff
	db   $fd                                         ; $5aa8: $fd
	reti                                             ; $5aa9: $d9


	ld   b, c                                        ; $5aaa: $41
	ld   de, $1111                                   ; $5aab: $11 $11 $11
	ld   [de], a                                     ; $5aae: $12
	sub  l                                           ; $5aaf: $95
	cp   l                                           ; $5ab0: $bd
	cp   d                                           ; $5ab1: $ba
	sbc  d                                           ; $5ab2: $9a
	ret                                              ; $5ab3: $c9


	cp   a                                           ; $5ab4: $bf
	call $ffff                                       ; $5ab5: $cd $ff $ff
	rst  $38                                         ; $5ab8: $ff
	db   $fd                                         ; $5ab9: $fd
	ei                                               ; $5aba: $fb
	and  l                                           ; $5abb: $a5
	ld   de, $1111                                   ; $5abc: $11 $11 $11
	ld   hl, $491b                                   ; $5abf: $21 $1b $49
	xor  c                                           ; $5ac2: $a9
	ret  c                                           ; $5ac3: $d8

	adc  l                                           ; $5ac4: $8d
	or   a                                           ; $5ac5: $b7
	db   $fc                                         ; $5ac6: $fc
	adc  $ff                                         ; $5ac7: $ce $ff
	rst  $38                                         ; $5ac9: $ff
	rst  $38                                         ; $5aca: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5acb: $cf
	ret                                              ; $5acc: $c9


	sub  l                                           ; $5acd: $95
	ld   de, $1111                                   ; $5ace: $11 $11 $11
	ld   de, $281a                                   ; $5ad1: $11 $1a $28
	cp   c                                           ; $5ad4: $b9
	cp   b                                           ; $5ad5: $b8
	adc  l                                           ; $5ad6: $8d
	xor  c                                           ; $5ad7: $a9
	ei                                               ; $5ad8: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ad9: $cf
	rst  $38                                         ; $5ada: $ff
	rst  $38                                         ; $5adb: $ff
	rst  $38                                         ; $5adc: $ff
	rst  JumpTable                                         ; $5add: $df
	ret  z                                           ; $5ade: $c8

	add  l                                           ; $5adf: $85
	ld   de, $1111                                   ; $5ae0: $11 $11 $11
	ld   de, $2515                                   ; $5ae3: $11 $15 $25
	adc  d                                           ; $5ae6: $8a
	ld   a, d                                        ; $5ae7: $7a
	cp   d                                           ; $5ae8: $ba
	cp   e                                           ; $5ae9: $bb
	call c, $fedf                                    ; $5aea: $dc $df $fe
	rst  $38                                         ; $5aed: $ff
	rst  $28                                         ; $5aee: $ef
	db   $fd                                         ; $5aef: $fd
	jp   z, $2397                                    ; $5af0: $ca $97 $23

	ld   hl, $1111                                   ; $5af3: $21 $11 $11
	inc  de                                          ; $5af6: $13
	ld   b, c                                        ; $5af7: $41
	sub  a                                           ; $5af8: $97
	adc  d                                           ; $5af9: $8a
	xor  d                                           ; $5afa: $aa
	xor  h                                           ; $5afb: $ac
	xor  h                                           ; $5afc: $ac
	sbc  $ef                                         ; $5afd: $de $ef
	rst  $38                                         ; $5aff: $ff
	rst  $38                                         ; $5b00: $ff
	db   $fd                                         ; $5b01: $fd
	db   $ec                                         ; $5b02: $ec
	cp   c                                           ; $5b03: $b9
	sub  [hl]                                        ; $5b04: $96
	ld   b, e                                        ; $5b05: $43
	ld   de, $1111                                   ; $5b06: $11 $11 $11
	rla                                              ; $5b09: $17
	ld   de, $5bb6                                   ; $5b0a: $11 $b6 $5b
	sbc  b                                           ; $5b0d: $98
	sbc  h                                           ; $5b0e: $9c
	jp   z, $dffe                                    ; $5b0f: $ca $fe $df

	rst  $38                                         ; $5b12: $ff
	rst  $38                                         ; $5b13: $ff
	db   $fd                                         ; $5b14: $fd
	rst  $38                                         ; $5b15: $ff
	sbc  e                                           ; $5b16: $9b
	and  [hl]                                        ; $5b17: $a6
	ld   b, e                                        ; $5b18: $43
	ld   sp, $1111                                   ; $5b19: $31 $11 $11
	ld   de, $4511                                   ; $5b1c: $11 $11 $45
	ld   e, b                                        ; $5b1f: $58
	adc  b                                           ; $5b20: $88
	xor  e                                           ; $5b21: $ab
	cp   e                                           ; $5b22: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b23: $cf
	rst  JumpTable                                         ; $5b24: $df
	rst  $38                                         ; $5b25: $ff
	rst  $38                                         ; $5b26: $ff
	rst  $38                                         ; $5b27: $ff
	db   $ed                                         ; $5b28: $ed
	res  5, b                                        ; $5b29: $cb $a8
	halt                                             ; $5b2b: $76
	ld   b, e                                        ; $5b2c: $43
	ld   hl, $1111                                   ; $5b2d: $21 $11 $11
	ld   [de], a                                     ; $5b30: $12
	inc  de                                          ; $5b31: $13
	ld   d, l                                        ; $5b32: $55
	ld   [hl], a                                     ; $5b33: $77
	sbc  c                                           ; $5b34: $99
	sbc  h                                           ; $5b35: $9c
	jp   z, $cfef                                    ; $5b36: $ca $ef $cf

	rst  $38                                         ; $5b39: $ff
	rst  $28                                         ; $5b3a: $ef
	db   $fc                                         ; $5b3b: $fc
	db   $ed                                         ; $5b3c: $ed
	cp   e                                           ; $5b3d: $bb
	xor  c                                           ; $5b3e: $a9
	halt                                             ; $5b3f: $76
	ld   d, e                                        ; $5b40: $53
	ld   [hl+], a                                    ; $5b41: $22
	ld   de, $1111                                   ; $5b42: $11 $11 $11
	ld   de, $7545                                   ; $5b45: $11 $45 $75
	adc  c                                           ; $5b48: $89
	adc  c                                           ; $5b49: $89
	call z, $edce                                    ; $5b4a: $cc $ce $ed
	rst  $38                                         ; $5b4d: $ff
	rst  $38                                         ; $5b4e: $ff
	rst  $38                                         ; $5b4f: $ff
	call c, $badb                                    ; $5b50: $dc $db $ba
	sbc  b                                           ; $5b53: $98
	ld   [hl], l                                     ; $5b54: $75
	ld   b, h                                        ; $5b55: $44
	ld   hl, $1111                                   ; $5b56: $21 $11 $11
	ld   [de], a                                     ; $5b59: $12
	inc  de                                          ; $5b5a: $13
	dec  [hl]                                        ; $5b5b: $35
	ld   h, [hl]                                     ; $5b5c: $66
	sbc  b                                           ; $5b5d: $98
	xor  d                                           ; $5b5e: $aa
	xor  h                                           ; $5b5f: $ac
	call $ffef                                       ; $5b60: $cd $ef $ff
	rst  $38                                         ; $5b63: $ff
	cp   $fd                                         ; $5b64: $fe $fd
	call z, $a8bb                                    ; $5b66: $cc $bb $a8
	halt                                             ; $5b69: $76
	ld   d, h                                        ; $5b6a: $54
	ld   b, e                                        ; $5b6b: $43
	ld   de, $1111                                   ; $5b6c: $11 $11 $11
	ld   hl, $3423                                   ; $5b6f: $21 $23 $34
	ld   d, a                                        ; $5b72: $57
	ld   a, b                                        ; $5b73: $78
	xor  d                                           ; $5b74: $aa
	cp   l                                           ; $5b75: $bd
	db   $ed                                         ; $5b76: $ed
	rst  $38                                         ; $5b77: $ff
	rst  $38                                         ; $5b78: $ff
	rst  $38                                         ; $5b79: $ff
	xor  $ec                                         ; $5b7a: $ee $ec
	cp   e                                           ; $5b7c: $bb
	xor  d                                           ; $5b7d: $aa
	sbc  c                                           ; $5b7e: $99
	ld   [hl], a                                     ; $5b7f: $77
	ld   h, h                                        ; $5b80: $64
	ld   b, e                                        ; $5b81: $43
	ld   hl, $0111                                   ; $5b82: $21 $11 $01
	ld   [de], a                                     ; $5b85: $12
	ld   [de], a                                     ; $5b86: $12
	ld   b, h                                        ; $5b87: $44
	ld   h, [hl]                                     ; $5b88: $66
	ld   a, b                                        ; $5b89: $78
	sbc  d                                           ; $5b8a: $9a
	cp   h                                           ; $5b8b: $bc
	call $efee                                       ; $5b8c: $cd $ee $ef
	cp   $ee                                         ; $5b8f: $fe $ee
	db   $dd                                         ; $5b91: $dd
	cp   e                                           ; $5b92: $bb
	xor  d                                           ; $5b93: $aa
	sbc  b                                           ; $5b94: $98
	ld   [hl], a                                     ; $5b95: $77
	ld   h, l                                        ; $5b96: $65
	ld   d, h                                        ; $5b97: $54
	ld   b, e                                        ; $5b98: $43
	inc  sp                                          ; $5b99: $33
	ld   [hl+], a                                    ; $5b9a: $22
	ld   [hl+], a                                    ; $5b9b: $22
	ld   [hl+], a                                    ; $5b9c: $22
	inc  sp                                          ; $5b9d: $33
	ld   b, l                                        ; $5b9e: $45
	ld   h, a                                        ; $5b9f: $67
	ld   a, b                                        ; $5ba0: $78
	sbc  c                                           ; $5ba1: $99
	cp   e                                           ; $5ba2: $bb
	cp   h                                           ; $5ba3: $bc
	call z, $cccd                                    ; $5ba4: $cc $cd $cc
	call z, $bacb                                    ; $5ba7: $cc $cb $ba
	xor  c                                           ; $5baa: $a9
	sbc  c                                           ; $5bab: $99
	add  a                                           ; $5bac: $87
	halt                                             ; $5bad: $76
	ld   h, [hl]                                     ; $5bae: $66
	ld   d, l                                        ; $5baf: $55
	ld   d, l                                        ; $5bb0: $55
	ld   d, l                                        ; $5bb1: $55
	ld   b, h                                        ; $5bb2: $44
	ld   b, h                                        ; $5bb3: $44
	ld   b, h                                        ; $5bb4: $44
	ld   b, h                                        ; $5bb5: $44
	ld   b, l                                        ; $5bb6: $45
	ld   d, [hl]                                     ; $5bb7: $56
	ld   h, a                                        ; $5bb8: $67
	adc  b                                           ; $5bb9: $88
	sbc  d                                           ; $5bba: $9a
	xor  d                                           ; $5bbb: $aa
	cp   e                                           ; $5bbc: $bb
	cp   h                                           ; $5bbd: $bc
	cp   e                                           ; $5bbe: $bb
	call z, $abcb                                    ; $5bbf: $cc $cb $ab
	xor  d                                           ; $5bc2: $aa
	sbc  c                                           ; $5bc3: $99
	adc  c                                           ; $5bc4: $89
	sbc  b                                           ; $5bc5: $98
	add  a                                           ; $5bc6: $87
	ld   [hl], a                                     ; $5bc7: $77
	ld   h, [hl]                                     ; $5bc8: $66
	ld   d, l                                        ; $5bc9: $55
	ld   d, l                                        ; $5bca: $55
	ld   d, h                                        ; $5bcb: $54
	ld   b, h                                        ; $5bcc: $44
	ld   b, h                                        ; $5bcd: $44
	ld   b, h                                        ; $5bce: $44
	ld   b, l                                        ; $5bcf: $45
	ld   d, [hl]                                     ; $5bd0: $56
	ld   h, a                                        ; $5bd1: $67
	adc  b                                           ; $5bd2: $88
	sbc  d                                           ; $5bd3: $9a
	xor  d                                           ; $5bd4: $aa
	xor  d                                           ; $5bd5: $aa
	cp   e                                           ; $5bd6: $bb
	cp   h                                           ; $5bd7: $bc
	cp   e                                           ; $5bd8: $bb
	cp   e                                           ; $5bd9: $bb
	xor  e                                           ; $5bda: $ab
	cp   d                                           ; $5bdb: $ba
	xor  c                                           ; $5bdc: $a9
	xor  c                                           ; $5bdd: $a9
	sbc  c                                           ; $5bde: $99
	adc  b                                           ; $5bdf: $88
	ld   [hl], a                                     ; $5be0: $77
	halt                                             ; $5be1: $76
	ld   h, l                                        ; $5be2: $65
	ld   d, l                                        ; $5be3: $55
	ld   b, h                                        ; $5be4: $44
	ld   b, h                                        ; $5be5: $44
	inc  [hl]                                        ; $5be6: $34
	ld   b, h                                        ; $5be7: $44
	ld   b, l                                        ; $5be8: $45
	ld   d, l                                        ; $5be9: $55
	ld   h, a                                        ; $5bea: $67
	ld   a, b                                        ; $5beb: $78
	sbc  c                                           ; $5bec: $99
	xor  d                                           ; $5bed: $aa
	xor  d                                           ; $5bee: $aa
	cp   e                                           ; $5bef: $bb
	call z, $bbcb                                    ; $5bf0: $cc $cb $bb
	cp   e                                           ; $5bf3: $bb
	xor  d                                           ; $5bf4: $aa
	cp   d                                           ; $5bf5: $ba
	xor  d                                           ; $5bf6: $aa
	sbc  c                                           ; $5bf7: $99
	adc  b                                           ; $5bf8: $88
	add  a                                           ; $5bf9: $87
	halt                                             ; $5bfa: $76
	ld   h, l                                        ; $5bfb: $65
	ld   d, l                                        ; $5bfc: $55
	ld   b, h                                        ; $5bfd: $44
	ld   b, h                                        ; $5bfe: $44
	inc  sp                                          ; $5bff: $33
	ld   b, h                                        ; $5c00: $44
	ld   b, h                                        ; $5c01: $44
	ld   d, l                                        ; $5c02: $55
	ld   h, a                                        ; $5c03: $67
	ld   a, b                                        ; $5c04: $78
	sbc  c                                           ; $5c05: $99
	xor  d                                           ; $5c06: $aa
	xor  e                                           ; $5c07: $ab
	call z, $cccc                                    ; $5c08: $cc $cc $cc
	set  1, h                                        ; $5c0b: $cb $cc
	cp   e                                           ; $5c0d: $bb
	cp   d                                           ; $5c0e: $ba
	xor  d                                           ; $5c0f: $aa
	sbc  c                                           ; $5c10: $99
	sbc  b                                           ; $5c11: $98
	add  a                                           ; $5c12: $87
	halt                                             ; $5c13: $76
	ld   h, l                                        ; $5c14: $65
	ld   d, l                                        ; $5c15: $55
	ld   b, h                                        ; $5c16: $44
	ld   b, h                                        ; $5c17: $44
	ld   b, h                                        ; $5c18: $44
	ld   b, h                                        ; $5c19: $44
	ld   b, h                                        ; $5c1a: $44
	ld   d, l                                        ; $5c1b: $55
	ld   h, [hl]                                     ; $5c1c: $66
	ld   [hl], a                                     ; $5c1d: $77
	sbc  c                                           ; $5c1e: $99
	xor  d                                           ; $5c1f: $aa
	cp   d                                           ; $5c20: $ba
	cp   h                                           ; $5c21: $bc
	cp   e                                           ; $5c22: $bb
	call z, $bccb                                    ; $5c23: $cc $cb $bc
	cp   d                                           ; $5c26: $ba
	cp   d                                           ; $5c27: $ba
	sbc  d                                           ; $5c28: $9a
	sbc  c                                           ; $5c29: $99
	adc  b                                           ; $5c2a: $88
	add  a                                           ; $5c2b: $87
	ld   [hl], a                                     ; $5c2c: $77
	ld   h, [hl]                                     ; $5c2d: $66
	ld   h, l                                        ; $5c2e: $65
	ld   d, l                                        ; $5c2f: $55
	ld   d, l                                        ; $5c30: $55
	ld   d, h                                        ; $5c31: $54
	ld   b, h                                        ; $5c32: $44
	ld   b, l                                        ; $5c33: $45
	ld   d, l                                        ; $5c34: $55
	ld   d, [hl]                                     ; $5c35: $56
	ld   h, a                                        ; $5c36: $67
	ld   a, b                                        ; $5c37: $78
	adc  c                                           ; $5c38: $89
	xor  d                                           ; $5c39: $aa
	xor  e                                           ; $5c3a: $ab
	cp   e                                           ; $5c3b: $bb
	cp   h                                           ; $5c3c: $bc
	cp   h                                           ; $5c3d: $bc
	call z, $abbb                                    ; $5c3e: $cc $bb $ab
	xor  d                                           ; $5c41: $aa
	sbc  d                                           ; $5c42: $9a
	sbc  c                                           ; $5c43: $99
	adc  c                                           ; $5c44: $89
	adc  b                                           ; $5c45: $88
	ld   [hl], a                                     ; $5c46: $77
	ld   [hl], a                                     ; $5c47: $77
	ld   h, [hl]                                     ; $5c48: $66
	ld   d, l                                        ; $5c49: $55
	ld   d, l                                        ; $5c4a: $55
	ld   d, l                                        ; $5c4b: $55
	ld   d, l                                        ; $5c4c: $55
	ld   d, l                                        ; $5c4d: $55
	ld   d, l                                        ; $5c4e: $55
	ld   d, [hl]                                     ; $5c4f: $56
	ld   h, a                                        ; $5c50: $67
	ld   a, b                                        ; $5c51: $78
	sbc  c                                           ; $5c52: $99
	sbc  c                                           ; $5c53: $99
	xor  e                                           ; $5c54: $ab
	cp   e                                           ; $5c55: $bb
	cp   h                                           ; $5c56: $bc
	call z, $bbbc                                    ; $5c57: $cc $bc $bb
	cp   d                                           ; $5c5a: $ba
	xor  c                                           ; $5c5b: $a9
	sbc  d                                           ; $5c5c: $9a
	sbc  c                                           ; $5c5d: $99
	adc  c                                           ; $5c5e: $89
	adc  b                                           ; $5c5f: $88
	ld   [hl], a                                     ; $5c60: $77
	ld   [hl], a                                     ; $5c61: $77
	ld   h, [hl]                                     ; $5c62: $66
	ld   h, l                                        ; $5c63: $65
	ld   d, l                                        ; $5c64: $55
	ld   d, l                                        ; $5c65: $55
	ld   d, h                                        ; $5c66: $54
	ld   b, l                                        ; $5c67: $45
	ld   d, l                                        ; $5c68: $55
	ld   d, [hl]                                     ; $5c69: $56
	ld   h, a                                        ; $5c6a: $67
	ld   a, b                                        ; $5c6b: $78
	adc  b                                           ; $5c6c: $88
	xor  c                                           ; $5c6d: $a9
	xor  e                                           ; $5c6e: $ab
	xor  e                                           ; $5c6f: $ab
	cp   h                                           ; $5c70: $bc
	call z, $bacb                                    ; $5c71: $cc $cb $ba
	xor  e                                           ; $5c74: $ab
	xor  d                                           ; $5c75: $aa
	sbc  d                                           ; $5c76: $9a
	sbc  c                                           ; $5c77: $99
	adc  c                                           ; $5c78: $89
	adc  b                                           ; $5c79: $88
	ld   [hl], a                                     ; $5c7a: $77
	halt                                             ; $5c7b: $76
	ld   h, [hl]                                     ; $5c7c: $66
	ld   d, l                                        ; $5c7d: $55
	ld   d, l                                        ; $5c7e: $55
	ld   d, h                                        ; $5c7f: $54
	ld   b, h                                        ; $5c80: $44
	ld   b, h                                        ; $5c81: $44
	ld   d, l                                        ; $5c82: $55
	ld   d, [hl]                                     ; $5c83: $56
	ld   h, a                                        ; $5c84: $67
	ld   a, b                                        ; $5c85: $78
	adc  c                                           ; $5c86: $89
	sbc  d                                           ; $5c87: $9a
	cp   d                                           ; $5c88: $ba
	cp   e                                           ; $5c89: $bb
	call z, $cbbb                                    ; $5c8a: $cc $bb $cb
	xor  e                                           ; $5c8d: $ab
	cp   d                                           ; $5c8e: $ba
	xor  c                                           ; $5c8f: $a9
	xor  c                                           ; $5c90: $a9
	sbc  b                                           ; $5c91: $98
	sbc  b                                           ; $5c92: $98
	add  a                                           ; $5c93: $87
	ld   [hl], a                                     ; $5c94: $77
	halt                                             ; $5c95: $76
	ld   h, [hl]                                     ; $5c96: $66
	ld   d, l                                        ; $5c97: $55
	ld   d, l                                        ; $5c98: $55
	ld   d, h                                        ; $5c99: $54
	ld   b, h                                        ; $5c9a: $44
	ld   b, h                                        ; $5c9b: $44
	ld   d, l                                        ; $5c9c: $55
	ld   h, [hl]                                     ; $5c9d: $66
	ld   [hl], a                                     ; $5c9e: $77
	adc  c                                           ; $5c9f: $89
	adc  c                                           ; $5ca0: $89
	xor  d                                           ; $5ca1: $aa
	cp   d                                           ; $5ca2: $ba
	cp   e                                           ; $5ca3: $bb
	set  1, e                                        ; $5ca4: $cb $cb
	cp   e                                           ; $5ca6: $bb
	cp   d                                           ; $5ca7: $ba
	cp   d                                           ; $5ca8: $ba
	xor  d                                           ; $5ca9: $aa
	sbc  c                                           ; $5caa: $99
	sbc  c                                           ; $5cab: $99
	adc  b                                           ; $5cac: $88
	add  a                                           ; $5cad: $87
	ld   [hl], a                                     ; $5cae: $77
	ld   h, [hl]                                     ; $5caf: $66
	ld   d, l                                        ; $5cb0: $55
	ld   d, l                                        ; $5cb1: $55
	ld   b, h                                        ; $5cb2: $44
	ld   b, h                                        ; $5cb3: $44
	ld   b, h                                        ; $5cb4: $44
	ld   b, h                                        ; $5cb5: $44
	ld   d, l                                        ; $5cb6: $55
	ld   h, [hl]                                     ; $5cb7: $66
	ld   [hl], a                                     ; $5cb8: $77
	adc  b                                           ; $5cb9: $88
	sbc  c                                           ; $5cba: $99
	xor  e                                           ; $5cbb: $ab
	cp   e                                           ; $5cbc: $bb
	call z, $cdbb                                    ; $5cbd: $cc $bb $cd
	call z, $a9cb                                    ; $5cc0: $cc $cb $a9
	xor  c                                           ; $5cc3: $a9
	adc  b                                           ; $5cc4: $88
	add  a                                           ; $5cc5: $87
	ld   [hl], a                                     ; $5cc6: $77
	ld   h, l                                        ; $5cc7: $65
	ld   d, l                                        ; $5cc8: $55
	ld   d, h                                        ; $5cc9: $54
	ld   b, h                                        ; $5cca: $44
	ld   b, e                                        ; $5ccb: $43
	inc  sp                                          ; $5ccc: $33
	inc  sp                                          ; $5ccd: $33
	ld   b, l                                        ; $5cce: $45
	ld   d, [hl]                                     ; $5ccf: $56
	ld   a, b                                        ; $5cd0: $78
	adc  c                                           ; $5cd1: $89
	sbc  d                                           ; $5cd2: $9a
	xor  e                                           ; $5cd3: $ab
	cp   e                                           ; $5cd4: $bb
	call z, $cccd                                    ; $5cd5: $cc $cd $cc
	res  7, e                                        ; $5cd8: $cb $bb
	xor  e                                           ; $5cda: $ab
	xor  d                                           ; $5cdb: $aa
	xor  c                                           ; $5cdc: $a9
	adc  b                                           ; $5cdd: $88
	add  a                                           ; $5cde: $87
	halt                                             ; $5cdf: $76
	ld   h, l                                        ; $5ce0: $65
	ld   b, h                                        ; $5ce1: $44
	ld   [hl-], a                                    ; $5ce2: $32
	ld   hl, $1321                                   ; $5ce3: $21 $21 $13
	inc  sp                                          ; $5ce6: $33
	ld   h, [hl]                                     ; $5ce7: $66
	adc  b                                           ; $5ce8: $88
	adc  d                                           ; $5ce9: $8a
	sbc  d                                           ; $5cea: $9a
	cp   d                                           ; $5ceb: $ba
	call z, $eede                                    ; $5cec: $cc $de $ee
	db   $dd                                         ; $5cef: $dd
	db   $ec                                         ; $5cf0: $ec
	call z, $bbcb                                    ; $5cf1: $cc $cb $bb
	xor  c                                           ; $5cf4: $a9
	adc  b                                           ; $5cf5: $88
	halt                                             ; $5cf6: $76
	ld   d, l                                        ; $5cf7: $55
	ld   b, d                                        ; $5cf8: $42
	ld   [hl+], a                                    ; $5cf9: $22
	ld   de, $1111                                   ; $5cfa: $11 $11 $11
	inc  sp                                          ; $5cfd: $33
	ld   d, [hl]                                     ; $5cfe: $56
	sbc  b                                           ; $5cff: $98
	adc  d                                           ; $5d00: $8a
	xor  d                                           ; $5d01: $aa
	xor  h                                           ; $5d02: $ac
	adc  $ce                                         ; $5d03: $ce $ce
	cp   $ff                                         ; $5d05: $fe $ff
	cp   $de                                         ; $5d07: $fe $de
	call c, $98bb                                    ; $5d09: $dc $bb $98
	halt                                             ; $5d0c: $76
	ld   d, h                                        ; $5d0d: $54
	ld   b, e                                        ; $5d0e: $43
	ld   hl, $1111                                   ; $5d0f: $21 $11 $11
	ld   de, $4413                                   ; $5d12: $11 $13 $44
	adc  c                                           ; $5d15: $89
	sbc  d                                           ; $5d16: $9a
	cp   e                                           ; $5d17: $bb
	xor  h                                           ; $5d18: $ac
	db   $dd                                         ; $5d19: $dd
	cp   $ff                                         ; $5d1a: $fe $ff
	rst  $38                                         ; $5d1c: $ff
	rst  $38                                         ; $5d1d: $ff
	rst  $28                                         ; $5d1e: $ef
	db   $ed                                         ; $5d1f: $ed
	db   $db                                         ; $5d20: $db
	xor  c                                           ; $5d21: $a9
	halt                                             ; $5d22: $76
	ld   d, e                                        ; $5d23: $53
	ld   sp, $1111                                   ; $5d24: $31 $11 $11
	ld   de, $2311                                   ; $5d27: $11 $11 $23
	ld   h, [hl]                                     ; $5d2a: $66
	sbc  b                                           ; $5d2b: $98
	ld   a, d                                        ; $5d2c: $7a
	sbc  d                                           ; $5d2d: $9a
	cp   h                                           ; $5d2e: $bc
	rst  $38                                         ; $5d2f: $ff
	rst  $38                                         ; $5d30: $ff
	rst  $38                                         ; $5d31: $ff
	rst  $38                                         ; $5d32: $ff
	rst  $38                                         ; $5d33: $ff
	rst  $38                                         ; $5d34: $ff
	call c, $86ba                                    ; $5d35: $dc $ba $86
	ld   [hl], l                                     ; $5d38: $75
	ld   sp, $1111                                   ; $5d39: $31 $11 $11
	ld   de, $1311                                   ; $5d3c: $11 $11 $13
	ld   d, a                                        ; $5d3f: $57
	adc  b                                           ; $5d40: $88
	adc  c                                           ; $5d41: $89
	sbc  c                                           ; $5d42: $99
	cp   [hl]                                        ; $5d43: $be
	rst  $28                                         ; $5d44: $ef
	rst  $38                                         ; $5d45: $ff
	rst  $38                                         ; $5d46: $ff
	rst  $38                                         ; $5d47: $ff
	rst  $38                                         ; $5d48: $ff
	rst  $38                                         ; $5d49: $ff
	db   $ec                                         ; $5d4a: $ec
	cp   b                                           ; $5d4b: $b8
	halt                                             ; $5d4c: $76
	ld   sp, $1111                                   ; $5d4d: $31 $11 $11
	ld   de, $1311                                   ; $5d50: $11 $11 $13
	ld   [hl], a                                     ; $5d53: $77
	ld   a, d                                        ; $5d54: $7a
	add  [hl]                                        ; $5d55: $86
	adc  c                                           ; $5d56: $89
	xor  e                                           ; $5d57: $ab
	rst  $38                                         ; $5d58: $ff
	rst  $38                                         ; $5d59: $ff
	rst  $38                                         ; $5d5a: $ff
	rst  $38                                         ; $5d5b: $ff
	rst  $38                                         ; $5d5c: $ff
	rst  $38                                         ; $5d5d: $ff
	db   $dd                                         ; $5d5e: $dd
	xor  b                                           ; $5d5f: $a8
	ld   h, h                                        ; $5d60: $64
	ld   b, c                                        ; $5d61: $41
	ld   de, $1111                                   ; $5d62: $11 $11 $11
	ld   hl, $3919                                   ; $5d65: $21 $19 $39
	ld   a, d                                        ; $5d68: $7a
	sub  l                                           ; $5d69: $95
	sbc  c                                           ; $5d6a: $99
	adc  $ff                                         ; $5d6b: $ce $ff
	rst  $38                                         ; $5d6d: $ff
	rst  $38                                         ; $5d6e: $ff
	rst  $38                                         ; $5d6f: $ff
	rst  $38                                         ; $5d70: $ff
	cp   $ed                                         ; $5d71: $fe $ed
	sub  [hl]                                        ; $5d73: $96
	ld   [hl-], a                                    ; $5d74: $32
	ld   de, $1111                                   ; $5d75: $11 $11 $11
	ld   de, $4816                                   ; $5d78: $11 $16 $48
	ld   e, b                                        ; $5d7b: $58
	and  h                                           ; $5d7c: $a4
	adc  c                                           ; $5d7d: $89
	xor  e                                           ; $5d7e: $ab
	rst  $38                                         ; $5d7f: $ff
	rst  $38                                         ; $5d80: $ff
	rst  $38                                         ; $5d81: $ff
	rst  $38                                         ; $5d82: $ff
	rst  $38                                         ; $5d83: $ff
	rst  $38                                         ; $5d84: $ff
	db   $fd                                         ; $5d85: $fd
	add  [hl]                                        ; $5d86: $86
	ld   b, c                                        ; $5d87: $41
	ld   de, $1111                                   ; $5d88: $11 $11 $11
	ld   de, $5a37                                   ; $5d8b: $11 $37 $5a
	ld   l, b                                        ; $5d8e: $68
	inc  h                                           ; $5d8f: $24
	add  [hl]                                        ; $5d90: $86
	cp   [hl]                                        ; $5d91: $be
	rst  $28                                         ; $5d92: $ef
	rst  $38                                         ; $5d93: $ff
	rst  $38                                         ; $5d94: $ff
	rst  $38                                         ; $5d95: $ff
	rst  $38                                         ; $5d96: $ff
	rst  $38                                         ; $5d97: $ff
	reti                                             ; $5d98: $d9


	ld   h, e                                        ; $5d99: $63
	ld   de, $1111                                   ; $5d9a: $11 $11 $11
	ld   de, $9a14                                   ; $5d9d: $11 $14 $9a
	ld   a, c                                        ; $5da0: $79
	ld   h, d                                        ; $5da1: $62
	ld   d, [hl]                                     ; $5da2: $56
	ld   a, d                                        ; $5da3: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da4: $cf
	rst  $38                                         ; $5da5: $ff
	rst  $38                                         ; $5da6: $ff
	rst  $38                                         ; $5da7: $ff
	rst  $38                                         ; $5da8: $ff
	rst  $38                                         ; $5da9: $ff
	sub  $53                                         ; $5daa: $d6 $53
	ld   de, $1111                                   ; $5dac: $11 $11 $11
	ld   sp, $be9c                                   ; $5daf: $31 $9c $be
	ld   e, c                                        ; $5db2: $59
	ld   [hl], h                                     ; $5db3: $74
	ld   a, b                                        ; $5db4: $78
	jp   z, $ffcf                                    ; $5db5: $ca $cf $ff

	rst  $38                                         ; $5db8: $ff
	rst  $38                                         ; $5db9: $ff
	rst  $38                                         ; $5dba: $ff
	call z, $1172                                    ; $5dbb: $cc $72 $11
	ld   de, $5111                                   ; $5dbe: $11 $11 $51
	ccf                                              ; $5dc1: $3f
	rst  $38                                         ; $5dc2: $ff
	ld   e, d                                        ; $5dc3: $5a
	di                                               ; $5dc4: $f3
	ld   c, c                                        ; $5dc5: $49
	reti                                             ; $5dc6: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dc7: $cf
	rst  $38                                         ; $5dc8: $ff
	rst  $38                                         ; $5dc9: $ff
	rst  $38                                         ; $5dca: $ff
	rst  $38                                         ; $5dcb: $ff
	jp   hl                                          ; $5dcc: $e9


	ld   b, c                                        ; $5dcd: $41
	ld   de, $1111                                   ; $5dce: $11 $11 $11
	ld   [de], a                                     ; $5dd1: $12
	xor  $fe                                         ; $5dd2: $ee $fe
	xor  [hl]                                        ; $5dd4: $ae
	sub  [hl]                                        ; $5dd5: $96
	sbc  h                                           ; $5dd6: $9c
	xor  l                                           ; $5dd7: $ad
	rst  $38                                         ; $5dd8: $ff
	rst  $38                                         ; $5dd9: $ff
	rst  $38                                         ; $5dda: $ff
	rst  $38                                         ; $5ddb: $ff
	rst  $38                                         ; $5ddc: $ff
	add  e                                           ; $5ddd: $83
	ld   de, $1111                                   ; $5dde: $11 $11 $11
	dec  d                                           ; $5de1: $15
	rra                                              ; $5de2: $1f
	rst  $38                                         ; $5de3: $ff
	and  $f6                                         ; $5de4: $e6 $f6
	ld   c, c                                        ; $5de6: $49
	call z, $ffff                                    ; $5de7: $cc $ff $ff
	rst  $38                                         ; $5dea: $ff
	rst  $38                                         ; $5deb: $ff
	rst  $38                                         ; $5dec: $ff
	or   $11                                         ; $5ded: $f6 $11
	ld   de, $1911                                   ; $5def: $11 $11 $19
	ld   l, a                                        ; $5df2: $6f
	rst  $38                                         ; $5df3: $ff
	or   d                                           ; $5df4: $b2
	and  $89                                         ; $5df5: $e6 $89
	cp   a                                           ; $5df7: $bf
	cp   l                                           ; $5df8: $bd
	rst  $38                                         ; $5df9: $ff
	rst  $38                                         ; $5dfa: $ff
	rst  $38                                         ; $5dfb: $ff
	rst  $38                                         ; $5dfc: $ff
	jp   $1111                                       ; $5dfd: $c3 $11 $11


	ld   de, $ff84                                   ; $5e00: $11 $84 $ff
	rst  $38                                         ; $5e03: $ff
	ld   c, [hl]                                     ; $5e04: $4e
	sub  [hl]                                        ; $5e05: $96
	adc  b                                           ; $5e06: $88
	db   $fc                                         ; $5e07: $fc
	xor  a                                           ; $5e08: $af
	cp   $ff                                         ; $5e09: $fe $ff
	rst  $38                                         ; $5e0b: $ff
	cp   $31                                         ; $5e0c: $fe $31
	ld   de, $8611                                   ; $5e0e: $11 $11 $86
	adc  a                                           ; $5e11: $8f
	rst  $38                                         ; $5e12: $ff
	dec  sp                                          ; $5e13: $3b
	db   $e4                                         ; $5e14: $e4
	halt                                             ; $5e15: $76
	rst  $38                                         ; $5e16: $ff
	cp   a                                           ; $5e17: $bf
	db   $fc                                         ; $5e18: $fc
	rst  JumpTable                                         ; $5e19: $df
	rst  $38                                         ; $5e1a: $ff
	rst  $38                                         ; $5e1b: $ff
	sub  c                                           ; $5e1c: $91
	ld   de, $1f11                                   ; $5e1d: $11 $11 $1f
	cp   a                                           ; $5e20: $bf
	rst  $38                                         ; $5e21: $ff
	add  d                                           ; $5e22: $82
	rst  $28                                         ; $5e23: $ef
	add  hl, hl                                      ; $5e24: $29
	rst  $38                                         ; $5e25: $ff
	adc  $fb                                         ; $5e26: $ce $fb
	ld   l, l                                        ; $5e28: $6d
	rst  $38                                         ; $5e29: $ff
	rst  $38                                         ; $5e2a: $ff
	ld   [hl], c                                     ; $5e2b: $71
	ld   de, $8a11                                   ; $5e2c: $11 $11 $8a
	rst  $38                                         ; $5e2f: $ff
	rst  $38                                         ; $5e30: $ff
	ld   c, [hl]                                     ; $5e31: $4e
	xor  b                                           ; $5e32: $a8
	adc  a                                           ; $5e33: $8f
	rst  $38                                         ; $5e34: $ff
	rst  $38                                         ; $5e35: $ff
	and  h                                           ; $5e36: $a4
	ld   l, a                                        ; $5e37: $6f
	rst  $38                                         ; $5e38: $ff
	ld   sp, hl                                      ; $5e39: $f9
	ld   de, $1d11                                   ; $5e3a: $11 $11 $1d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e3d: $cf
	rst  $38                                         ; $5e3e: $ff
	and  e                                           ; $5e3f: $a3
	reti                                             ; $5e40: $d9


	ld   [hl], a                                     ; $5e41: $77
	rst  $38                                         ; $5e42: $ff
	rst  $38                                         ; $5e43: $ff
	ld   a, [$bf14]                                  ; $5e44: $fa $14 $bf
	rst  $38                                         ; $5e47: $ff
	ld   sp, $1a11                                   ; $5e48: $31 $11 $1a
	ld   c, a                                        ; $5e4b: $4f
	rst  $38                                         ; $5e4c: $ff
	pop  af                                          ; $5e4d: $f1
	db   $fd                                         ; $5e4e: $fd
	inc  de                                          ; $5e4f: $13
	rst  $38                                         ; $5e50: $ff
	rst  $38                                         ; $5e51: $ff
	rst  $38                                         ; $5e52: $ff
	inc  d                                           ; $5e53: $14
	ld   a, b                                        ; $5e54: $78
	cp   [hl]                                        ; $5e55: $be
	ld   [hl], c                                     ; $5e56: $71
	ld   de, $9f1f                                   ; $5e57: $11 $1f $9f
	rst  $38                                         ; $5e5a: $ff
	pop  af                                          ; $5e5b: $f1
	rst  JumpTable                                         ; $5e5c: $df
	ld   [hl+], a                                    ; $5e5d: $22
	rst  $38                                         ; $5e5e: $ff
	rst  $38                                         ; $5e5f: $ff
	rst  $38                                         ; $5e60: $ff
	inc  de                                          ; $5e61: $13
	ld   h, [hl]                                     ; $5e62: $66
	adc  h                                           ; $5e63: $8c
	ld   d, c                                        ; $5e64: $51
	ld   de, $8f1c                                   ; $5e65: $11 $1c $8f
	rst  $38                                         ; $5e68: $ff
	ld   h, a                                        ; $5e69: $67
	ld   hl, sp+$4a                                  ; $5e6a: $f8 $4a
	rst  $38                                         ; $5e6c: $ff
	rst  $38                                         ; $5e6d: $ff
	ld   sp, hl                                      ; $5e6e: $f9
	dec  d                                           ; $5e6f: $15
	ld   d, e                                        ; $5e70: $53
	add  e                                           ; $5e71: $83
	ld   de, $f311                                   ; $5e72: $11 $11 $f3
	rst  $38                                         ; $5e75: $ff
	db   $fc                                         ; $5e76: $fc
	ld   e, $f7                                      ; $5e77: $1e $f7
	ld   a, a                                        ; $5e79: $7f
	rst  $38                                         ; $5e7a: $ff
	rst  $38                                         ; $5e7b: $ff
	pop  af                                          ; $5e7c: $f1
	dec  d                                           ; $5e7d: $15
	ld   [hl], l                                     ; $5e7e: $75
	ld   de, $1f11                                   ; $5e7f: $11 $11 $1f
	rra                                              ; $5e82: $1f
	rst  $38                                         ; $5e83: $ff
	ld   hl, $1df9                                   ; $5e84: $21 $f9 $1d
	rst  $38                                         ; $5e87: $ff
	rst  $38                                         ; $5e88: $ff
	ld   hl, sp+$13                                  ; $5e89: $f8 $13
	ld   h, d                                        ; $5e8b: $62
	ld   de, $1f11                                   ; $5e8c: $11 $11 $1f
	sbc  a                                           ; $5e8f: $9f
	rst  $38                                         ; $5e90: $ff
	pop  af                                          ; $5e91: $f1
	cp   a                                           ; $5e92: $bf
	inc  h                                           ; $5e93: $24
	rst  $38                                         ; $5e94: $ff
	cp   $ff                                         ; $5e95: $fe $ff
	ld   de, $1158                                   ; $5e97: $11 $58 $11
	ld   de, $8f1f                                   ; $5e9a: $11 $1f $8f
	rst  $38                                         ; $5e9d: $ff
	pop  af                                          ; $5e9e: $f1
	ld   c, a                                        ; $5e9f: $4f
	ld   c, b                                        ; $5ea0: $48
	rst  $38                                         ; $5ea1: $ff
	rst  $38                                         ; $5ea2: $ff
	rst  $38                                         ; $5ea3: $ff
	ld   de, $1115                                   ; $5ea4: $11 $15 $11
	ld   de, $6f1f                                   ; $5ea7: $11 $1f $6f
	rst  $38                                         ; $5eaa: $ff
	and  c                                           ; $5eab: $a1
	sbc  h                                           ; $5eac: $9c
	inc  e                                           ; $5ead: $1c
	rst  $38                                         ; $5eae: $ff
	rst  $38                                         ; $5eaf: $ff
	ld   hl, sp+$11                                  ; $5eb0: $f8 $11
	ld   sp, $1111                                   ; $5eb2: $31 $11 $11
	ei                                               ; $5eb5: $fb
	rst  $28                                         ; $5eb6: $ef
	rst  $38                                         ; $5eb7: $ff
	ld   d, $f1                                      ; $5eb8: $16 $f1
	cpl                                              ; $5eba: $2f
	rst  $38                                         ; $5ebb: $ff
	rst  $38                                         ; $5ebc: $ff
	pop  af                                          ; $5ebd: $f1
	ld   de, $1111                                   ; $5ebe: $11 $11 $11
	rra                                              ; $5ec1: $1f
	ei                                               ; $5ec2: $fb
	rst  $38                                         ; $5ec3: $ff
	di                                               ; $5ec4: $f3
	rra                                              ; $5ec5: $1f
	ld   sp, $ffff                                   ; $5ec6: $31 $ff $ff
	rst  $38                                         ; $5ec9: $ff
	ld   de, $1111                                   ; $5eca: $11 $11 $11
	ld   de, $fffc                                   ; $5ecd: $11 $fc $ff
	rst  $38                                         ; $5ed0: $ff
	jr   @-$4c                                       ; $5ed1: $18 $b2

	cpl                                              ; $5ed3: $2f
	rst  $38                                         ; $5ed4: $ff
	rst  $38                                         ; $5ed5: $ff
	pop  af                                          ; $5ed6: $f1
	ld   de, $1111                                   ; $5ed7: $11 $11 $11
	rra                                              ; $5eda: $1f
	ld   c, a                                        ; $5edb: $4f
	rst  $38                                         ; $5edc: $ff
	ld   d, c                                        ; $5edd: $51
	rst  $30                                         ; $5ede: $f7
	ld   e, $ff                                      ; $5edf: $1e $ff
	rst  $38                                         ; $5ee1: $ff
	db   $f4                                         ; $5ee2: $f4
	ld   de, $1111                                   ; $5ee3: $11 $11 $11
	rra                                              ; $5ee6: $1f
	sbc  a                                           ; $5ee7: $9f
	rst  $38                                         ; $5ee8: $ff
	pop  hl                                          ; $5ee9: $e1
	sbc  d                                           ; $5eea: $9a
	ld   [de], a                                     ; $5eeb: $12
	rst  $38                                         ; $5eec: $ff
	rst  $38                                         ; $5eed: $ff
	cp   $11                                         ; $5eee: $fe $11
	ld   de, $1f11                                   ; $5ef0: $11 $11 $1f
	xor  a                                           ; $5ef3: $af
	rst  $38                                         ; $5ef4: $ff
	pop  af                                          ; $5ef5: $f1
	add  sp, $15                                     ; $5ef6: $e8 $15
	rst  $38                                         ; $5ef8: $ff
	rst  $38                                         ; $5ef9: $ff
	ld   a, [$1111]                                  ; $5efa: $fa $11 $11
	ld   de, $cf4f                                   ; $5efd: $11 $4f $cf
	rst  $38                                         ; $5f00: $ff
	pop  bc                                          ; $5f01: $c1
	and  c                                           ; $5f02: $a1
	rra                                              ; $5f03: $1f
	rst  $38                                         ; $5f04: $ff
	rst  $38                                         ; $5f05: $ff
	di                                               ; $5f06: $f3
	ld   de, $1111                                   ; $5f07: $11 $11 $11
	cp   a                                           ; $5f0a: $bf
	rst  $38                                         ; $5f0b: $ff
	rst  $38                                         ; $5f0c: $ff
	ld   h, [hl]                                     ; $5f0d: $66
	ld   h, c                                        ; $5f0e: $61
	add  hl, de                                      ; $5f0f: $19
	rst  $38                                         ; $5f10: $ff

Jump_0d4_5f11:
	rst  $38                                         ; $5f11: $ff
	pop  af                                          ; $5f12: $f1
	ld   de, $1111                                   ; $5f13: $11 $11 $11
	rst  $38                                         ; $5f16: $ff
	rst  $38                                         ; $5f17: $ff
	rst  $38                                         ; $5f18: $ff
	or   a                                           ; $5f19: $b7
	ld   de, $ff3f                                   ; $5f1a: $11 $3f $ff
	rst  $38                                         ; $5f1d: $ff
	ld   d, c                                        ; $5f1e: $51
	ld   de, $1f11                                   ; $5f1f: $11 $11 $1f
	rst  $38                                         ; $5f22: $ff
	rst  $38                                         ; $5f23: $ff
	ld   sp, hl                                      ; $5f24: $f9
	sub  c                                           ; $5f25: $91
	ld   de, $ffff                                   ; $5f26: $11 $ff $ff
	ld   sp, hl                                      ; $5f29: $f9
	ld   de, $1111                                   ; $5f2a: $11 $11 $11
	rst  $28                                         ; $5f2d: $ef
	rst  $38                                         ; $5f2e: $ff
	rst  $38                                         ; $5f2f: $ff
	adc  $41                                         ; $5f30: $ce $41
	ld   a, [de]                                     ; $5f32: $1a
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	add  c                                           ; $5f35: $81
	ld   de, $1911                                   ; $5f36: $11 $11 $19
	rst  $38                                         ; $5f39: $ff
	rst  $38                                         ; $5f3a: $ff
	or   $c1                                         ; $5f3b: $f6 $c1
	ld   de, $ff9f                                   ; $5f3d: $11 $9f $ff
	rst  $30                                         ; $5f40: $f7
	ld   de, $1811                                   ; $5f41: $11 $11 $18
	ld   a, a                                        ; $5f44: $7f
	rst  $38                                         ; $5f45: $ff
	rst  $38                                         ; $5f46: $ff
	or   h                                           ; $5f47: $b4
	ld   de, $ff19                                   ; $5f48: $11 $19 $ff
	rst  $38                                         ; $5f4b: $ff
	ld   b, c                                        ; $5f4c: $41
	ld   de, $bc11                                   ; $5f4d: $11 $11 $bc
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	or   $11                                         ; $5f52: $f6 $11
	jr   @+$01                                       ; $5f54: $18 $ff

	rst  $38                                         ; $5f56: $ff
	ld   d, c                                        ; $5f57: $51
	ld   de, $7711                                   ; $5f58: $11 $11 $77
	rst  $38                                         ; $5f5b: $ff
	rst  $38                                         ; $5f5c: $ff
	ld   hl, sp+$11                                  ; $5f5d: $f8 $11
	inc  d                                           ; $5f5f: $14
	rst  $38                                         ; $5f60: $ff
	rst  $38                                         ; $5f61: $ff
	ld   h, c                                        ; $5f62: $61
	ld   de, $2611                                   ; $5f63: $11 $11 $26
	rst  $38                                         ; $5f66: $ff
	rst  $38                                         ; $5f67: $ff
	ldh  a, [c]                                      ; $5f68: $f2
	ld   de, $df12                                   ; $5f69: $11 $12 $df
	db   $fd                                         ; $5f6c: $fd
	sub  c                                           ; $5f6d: $91
	ld   de, $1414                                   ; $5f6e: $11 $14 $14
	rst  $38                                         ; $5f71: $ff
	rst  $38                                         ; $5f72: $ff
	pop  af                                          ; $5f73: $f1
	ld   de, $9f21                                   ; $5f74: $11 $21 $9f
	ld   sp, hl                                      ; $5f77: $f9
	ld   de, $1611                                   ; $5f78: $11 $11 $16
	ccf                                              ; $5f7b: $3f
	rst  $38                                         ; $5f7c: $ff
	rst  $38                                         ; $5f7d: $ff
	ld   h, c                                        ; $5f7e: $61
	ld   de, $ff1d                                   ; $5f7f: $11 $1d $ff
	or   l                                           ; $5f82: $b5
	ld   de, $1411                                   ; $5f83: $11 $11 $14
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	or   $11                                         ; $5f88: $f6 $11
	ld   de, $e9ef                                   ; $5f8a: $11 $ef $e9
	ld   de, $2611                                   ; $5f8d: $11 $11 $26
	ld   c, a                                        ; $5f90: $4f
	rst  $38                                         ; $5f91: $ff
	rst  $38                                         ; $5f92: $ff
	and  c                                           ; $5f93: $a1
	ld   de, $e61e                                   ; $5f94: $11 $1e $e6
	ld   h, d                                        ; $5f97: $62
	ld   bc, $6d17                                   ; $5f98: $01 $17 $6d
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	ld   d, a                                        ; $5f9d: $57
	ld   de, $fc11                                   ; $5f9e: $11 $11 $fc
	sub  e                                           ; $5fa1: $93
	ld   [de], a                                     ; $5fa2: $12
	ld   de, $ffc7                                   ; $5fa3: $11 $c7 $ff
	rst  $38                                         ; $5fa6: $ff
	cp   d                                           ; $5fa7: $ba
	ld   de, $fe11                                   ; $5fa8: $11 $11 $fe
	ld   l, h                                        ; $5fab: $6c
	ld   sp, $7311                                   ; $5fac: $31 $11 $73
	ld   a, a                                        ; $5faf: $7f
	rst  $38                                         ; $5fb0: $ff
	ei                                               ; $5fb1: $fb
	sub  c                                           ; $5fb2: $91
	ld   de, $b87f                                   ; $5fb3: $11 $7f $b8
	add  c                                           ; $5fb6: $81
	ld   de, $4f13                                   ; $5fb7: $11 $13 $4f
	rst  $38                                         ; $5fba: $ff
	db   $fc                                         ; $5fbb: $fc
	add  c                                           ; $5fbc: $81
	ld   de, $d73f                                   ; $5fbd: $11 $3f $d7
	ld   d, d                                        ; $5fc0: $52
	ld   de, $7f1c                                   ; $5fc1: $11 $1c $7f
	rst  $38                                         ; $5fc4: $ff
	cp   $41                                         ; $5fc5: $fe $41
	ld   de, $fa1d                                   ; $5fc7: $11 $1d $fa
	ld   b, l                                        ; $5fca: $45
	ld   de, $9d1a                                   ; $5fcb: $11 $1a $9d
	rst  $38                                         ; $5fce: $ff
	rst  $38                                         ; $5fcf: $ff
	add  h                                           ; $5fd0: $84
	ld   de, $d91f                                   ; $5fd1: $11 $1f $d9
	sbc  d                                           ; $5fd4: $9a
	ld   sp, $6616                                   ; $5fd5: $31 $16 $66
	rst  $38                                         ; $5fd8: $ff
	rst  $38                                         ; $5fd9: $ff
	db   $e3                                         ; $5fda: $e3
	ld   de, $8e14                                   ; $5fdb: $11 $14 $8e
	xor  d                                           ; $5fde: $aa
	ld   d, c                                        ; $5fdf: $51
	ld   [de], a                                     ; $5fe0: $12
	ld   l, c                                        ; $5fe1: $69
	rst  $38                                         ; $5fe2: $ff
	rst  $38                                         ; $5fe3: $ff
	rst  $30                                         ; $5fe4: $f7
	ld   de, $cb17                                   ; $5fe5: $11 $17 $cb
	jp   z, $1131                                    ; $5fe8: $ca $31 $11

	ld   d, l                                        ; $5feb: $55
	rst  $38                                         ; $5fec: $ff
	rst  $38                                         ; $5fed: $ff
	ld   sp, hl                                      ; $5fee: $f9
	ld   de, $cd11                                   ; $5fef: $11 $11 $cd
	db   $fd                                         ; $5ff2: $fd
	ld   d, c                                        ; $5ff3: $51
	ld   de, $cf25                                   ; $5ff4: $11 $25 $cf
	rst  $38                                         ; $5ff7: $ff
	ei                                               ; $5ff8: $fb
	ld   de, $5c11                                   ; $5ff9: $11 $11 $5c
	cp   b                                           ; $5ffc: $b8
	ld   h, l                                        ; $5ffd: $65
	ld   de, $bf18                                   ; $5ffe: $11 $18 $bf
	rst  $38                                         ; $6001: $ff
	ld   hl, sp+$51                                  ; $6002: $f8 $51
	ld   de, $aa4d                                   ; $6004: $11 $4d $aa
	or   a                                           ; $6007: $b7
	ld   de, $be15                                   ; $6008: $11 $15 $be
	rst  $38                                         ; $600b: $ff
	rst  $38                                         ; $600c: $ff
	ld   h, c                                        ; $600d: $61
	ld   de, $aa15                                   ; $600e: $11 $15 $aa
	db   $db                                         ; $6011: $db
	ld   de, $4f43                                   ; $6012: $11 $43 $4f
	rst  $38                                         ; $6015: $ff
	rst  $38                                         ; $6016: $ff
	add  $11                                         ; $6017: $c6 $11
	ld   h, $69                                      ; $6019: $26 $69
	reti                                             ; $601b: $d9


	ld   sp, $7a11                                   ; $601c: $31 $11 $7a
	rst  $28                                         ; $601f: $ef
	rst  $38                                         ; $6020: $ff
	and  h                                           ; $6021: $a4
	ld   b, c                                        ; $6022: $41
	inc  d                                           ; $6023: $14
	ld   a, l                                        ; $6024: $7d
	sub  a                                           ; $6025: $97
	ld   d, h                                        ; $6026: $54
	ld   hl, $bf5d                                   ; $6027: $21 $5d $bf
	rst  $38                                         ; $602a: $ff
	push de                                          ; $602b: $d5
	ld   hl, $ed17                                   ; $602c: $21 $17 $ed
	rst  $10                                         ; $602f: $d7
	add  c                                           ; $6030: $81
	ld   de, $8f29                                   ; $6031: $11 $29 $8f
	db   $fd                                         ; $6034: $fd
	cp   $63                                         ; $6035: $fe $63
	inc  de                                          ; $6037: $13
	ld   a, b                                        ; $6038: $78
	db   $db                                         ; $6039: $db
	sub  a                                           ; $603a: $97
	ld   sp, $9911                                   ; $603b: $31 $11 $99
	adc  $ff                                         ; $603e: $ce $ff
	add  a                                           ; $6040: $87
	ld   d, e                                        ; $6041: $53
	inc  bc                                          ; $6042: $03
	call c, Call_0d4_54ba                            ; $6043: $dc $ba $54
	ld   d, c                                        ; $6046: $51
	dec  d                                           ; $6047: $15
	xor  b                                           ; $6048: $a8
	adc  h                                           ; $6049: $8c
	rst  $38                                         ; $604a: $ff
	ld   a, h                                        ; $604b: $7c
	ld   [hl-], a                                    ; $604c: $32
	ld   a, c                                        ; $604d: $79
	db   $ec                                         ; $604e: $ec
	db   $db                                         ; $604f: $db
	ld   b, [hl]                                     ; $6050: $46
	ld   b, c                                        ; $6051: $41
	ld   [hl-], a                                    ; $6052: $32
	ld   d, l                                        ; $6053: $55
	sbc  [hl]                                        ; $6054: $9e
	rst  JumpTable                                         ; $6055: $df
	cp   d                                           ; $6056: $ba
	ld   [hl-], a                                    ; $6057: $32
	sbc  d                                           ; $6058: $9a
	cp   d                                           ; $6059: $ba
	rst  $20                                         ; $605a: $e7
	inc  de                                          ; $605b: $13
	inc  sp                                          ; $605c: $33
	inc  de                                          ; $605d: $13
	adc  b                                           ; $605e: $88
	sbc  h                                           ; $605f: $9c
	rst  $38                                         ; $6060: $ff
	sbc  c                                           ; $6061: $99
	ld   [hl], e                                     ; $6062: $73
	sbc  d                                           ; $6063: $9a
	set  3, d                                        ; $6064: $cb $da
	ld   c, b                                        ; $6066: $48
	ld   [hl+], a                                    ; $6067: $22
	inc  de                                          ; $6068: $13
	jp   z, $b9aa                                    ; $6069: $ca $aa $b9

	ld   [hl], a                                     ; $606c: $77
	ld   l, c                                        ; $606d: $69
	cp   e                                           ; $606e: $bb
	xor  e                                           ; $606f: $ab
	adc  b                                           ; $6070: $88
	ld   h, h                                        ; $6071: $64
	add  l                                           ; $6072: $85
	ld   b, h                                        ; $6073: $44
	ld   a, c                                        ; $6074: $79
	ld   e, b                                        ; $6075: $58
	xor  e                                           ; $6076: $ab
	xor  e                                           ; $6077: $ab
	jp   z, Jump_0d4_77ba                            ; $6078: $ca $ba $77

	ld   a, e                                        ; $607b: $7b
	ld   [hl], l                                     ; $607c: $75
	sbc  d                                           ; $607d: $9a
	ld   d, d                                        ; $607e: $52
	ld   e, b                                        ; $607f: $58
	ld   h, l                                        ; $6080: $65
	ld   l, d                                        ; $6081: $6a
	sub  a                                           ; $6082: $97
	xor  d                                           ; $6083: $aa
	or   [hl]                                        ; $6084: $b6
	ld   a, e                                        ; $6085: $7b
	sbc  c                                           ; $6086: $99
	cp   h                                           ; $6087: $bc
	ld   [hl], l                                     ; $6088: $75
	halt                                             ; $6089: $76
	ld   b, d                                        ; $608a: $42
	ld   l, c                                        ; $608b: $69
	ld   h, [hl]                                     ; $608c: $66
	sbc  c                                           ; $608d: $99
	ld   [hl], a                                     ; $608e: $77
	sbc  h                                           ; $608f: $9c
	sbc  e                                           ; $6090: $9b
	jp   z, $aaa8                                    ; $6091: $ca $a8 $aa

	ld   h, [hl]                                     ; $6094: $66
	ld   h, [hl]                                     ; $6095: $66
	halt                                             ; $6096: $76
	ld   e, b                                        ; $6097: $58
	ld   h, [hl]                                     ; $6098: $66
	sub  a                                           ; $6099: $97
	add  a                                           ; $609a: $87
	ld   a, c                                        ; $609b: $79
	sbc  e                                           ; $609c: $9b
	db   $ed                                         ; $609d: $ed
	or   a                                           ; $609e: $b7
	adc  c                                           ; $609f: $89
	ld   d, a                                        ; $60a0: $57
	xor  b                                           ; $60a1: $a8
	add  l                                           ; $60a2: $85
	ld   d, [hl]                                     ; $60a3: $56
	ld   d, [hl]                                     ; $60a4: $56
	ld   [hl], a                                     ; $60a5: $77
	ld   a, c                                        ; $60a6: $79
	sbc  c                                           ; $60a7: $99
	cp   h                                           ; $60a8: $bc
	add  a                                           ; $60a9: $87
	sbc  d                                           ; $60aa: $9a
	cp   c                                           ; $60ab: $b9
	sbc  b                                           ; $60ac: $98
	ld   d, [hl]                                     ; $60ad: $56
	ld   d, l                                        ; $60ae: $55
	sbc  b                                           ; $60af: $98
	add  [hl]                                        ; $60b0: $86
	ld   c, c                                        ; $60b1: $49
	add  l                                           ; $60b2: $85
	adc  d                                           ; $60b3: $8a
	sbc  c                                           ; $60b4: $99
	cp   h                                           ; $60b5: $bc
	cp   d                                           ; $60b6: $ba
	sbc  c                                           ; $60b7: $99
	add  l                                           ; $60b8: $85
	ld   d, a                                        ; $60b9: $57
	add  [hl]                                        ; $60ba: $86
	ld   e, d                                        ; $60bb: $5a
	add  [hl]                                        ; $60bc: $86
	ld   [hl], a                                     ; $60bd: $77
	ld   h, a                                        ; $60be: $67
	adc  d                                           ; $60bf: $8a
	xor  c                                           ; $60c0: $a9
	sbc  c                                           ; $60c1: $99
	sub  [hl]                                        ; $60c2: $96
	sbc  c                                           ; $60c3: $99
	sbc  e                                           ; $60c4: $9b
	xor  d                                           ; $60c5: $aa
	ld   [hl], l                                     ; $60c6: $75
	ld   h, a                                        ; $60c7: $67
	halt                                             ; $60c8: $76
	ld   l, c                                        ; $60c9: $69
	halt                                             ; $60ca: $76
	adc  c                                           ; $60cb: $89
	ld   a, c                                        ; $60cc: $79
	sbc  c                                           ; $60cd: $99
	cp   d                                           ; $60ce: $ba
	sbc  b                                           ; $60cf: $98
	xor  d                                           ; $60d0: $aa
	xor  b                                           ; $60d1: $a8
	adc  b                                           ; $60d2: $88
	ld   d, a                                        ; $60d3: $57
	ld   [hl], a                                     ; $60d4: $77
	add  a                                           ; $60d5: $87
	halt                                             ; $60d6: $76
	ld   [hl], a                                     ; $60d7: $77
	adc  b                                           ; $60d8: $88
	ld   a, c                                        ; $60d9: $79
	sbc  c                                           ; $60da: $99
	xor  c                                           ; $60db: $a9
	xor  c                                           ; $60dc: $a9
	ld   l, b                                        ; $60dd: $68
	sbc  c                                           ; $60de: $99
	adc  b                                           ; $60df: $88
	and  a                                           ; $60e0: $a7
	ld   d, a                                        ; $60e1: $57
	ld   [hl], a                                     ; $60e2: $77
	adc  c                                           ; $60e3: $89
	sub  a                                           ; $60e4: $97
	adc  b                                           ; $60e5: $88
	ld   h, a                                        ; $60e6: $67
	ld   a, c                                        ; $60e7: $79
	sbc  b                                           ; $60e8: $98
	sbc  c                                           ; $60e9: $99
	adc  b                                           ; $60ea: $88
	sbc  b                                           ; $60eb: $98
	add  a                                           ; $60ec: $87
	adc  b                                           ; $60ed: $88
	ld   a, b                                        ; $60ee: $78
	adc  b                                           ; $60ef: $88
	add  a                                           ; $60f0: $87
	ld   [hl], a                                     ; $60f1: $77
	adc  b                                           ; $60f2: $88
	adc  c                                           ; $60f3: $89
	add  a                                           ; $60f4: $87
	adc  b                                           ; $60f5: $88
	sbc  c                                           ; $60f6: $99
	adc  c                                           ; $60f7: $89
	adc  b                                           ; $60f8: $88
	adc  b                                           ; $60f9: $88
	sbc  b                                           ; $60fa: $98
	ld   a, b                                        ; $60fb: $78
	add  a                                           ; $60fc: $87
	ld   [hl], a                                     ; $60fd: $77
	ld   [hl], a                                     ; $60fe: $77
	ld   a, b                                        ; $60ff: $78
	adc  c                                           ; $6100: $89
	sbc  b                                           ; $6101: $98
	sbc  b                                           ; $6102: $98
	ld   [hl], a                                     ; $6103: $77
	ld   a, b                                        ; $6104: $78
	adc  b                                           ; $6105: $88
	sbc  c                                           ; $6106: $99
	adc  c                                           ; $6107: $89
	add  a                                           ; $6108: $87
	ld   a, b                                        ; $6109: $78
	adc  c                                           ; $610a: $89
	adc  b                                           ; $610b: $88
	sbc  b                                           ; $610c: $98
	ld   a, b                                        ; $610d: $78
	ld   a, b                                        ; $610e: $78
	ld   a, c                                        ; $610f: $79
	sbc  b                                           ; $6110: $98
	adc  b                                           ; $6111: $88
	add  a                                           ; $6112: $87
	ld   a, b                                        ; $6113: $78
	adc  b                                           ; $6114: $88
	sbc  c                                           ; $6115: $99
	adc  b                                           ; $6116: $88
	add  a                                           ; $6117: $87
	ld   [hl], a                                     ; $6118: $77
	ld   a, b                                        ; $6119: $78
	sbc  b                                           ; $611a: $98
	sbc  b                                           ; $611b: $98
	sbc  b                                           ; $611c: $98
	adc  c                                           ; $611d: $89
	adc  b                                           ; $611e: $88
	adc  c                                           ; $611f: $89
	adc  b                                           ; $6120: $88
	adc  b                                           ; $6121: $88
	adc  b                                           ; $6122: $88
	ld   a, b                                        ; $6123: $78
	adc  b                                           ; $6124: $88
	adc  b                                           ; $6125: $88
	adc  b                                           ; $6126: $88
	add  a                                           ; $6127: $87
	ld   a, b                                        ; $6128: $78
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
	add  c                                           ; $6142: $81
	ld   de, $1111                                   ; $6143: $11 $11 $11
	ld   de, $1111                                   ; $6146: $11 $11 $11
	ld   de, $1111                                   ; $6149: $11 $11 $11
	ld   de, $1111                                   ; $614c: $11 $11 $11
	ld   de, $1111                                   ; $614f: $11 $11 $11
	nop                                              ; $6152: $00
	ld   c, b                                        ; $6153: $48
	ld   de, $1111                                   ; $6154: $11 $11 $11
	ld   de, $1111                                   ; $6157: $11 $11 $11
	ld   de, $1111                                   ; $615a: $11 $11 $11
	ld   de, $5413                                   ; $615d: $11 $13 $54
	ld   d, h                                        ; $6160: $54
	ld   d, h                                        ; $6161: $54
	ld   b, c                                        ; $6162: $41
	rra                                              ; $6163: $1f
	rst  $38                                         ; $6164: $ff
	pop  af                                          ; $6165: $f1
	ld   de, $1411                                   ; $6166: $11 $11 $14
	ld   d, c                                        ; $6169: $51
	ld   de, $d11c                                   ; $616a: $11 $1c $d1
	db   $ec                                         ; $616d: $ec
	pop  de                                          ; $616e: $d1
	pop  hl                                          ; $616f: $e1
	ld   de, $1111                                   ; $6170: $11 $11 $11
	ld   de, $1111                                   ; $6173: $11 $11 $11
	ld   de, $1111                                   ; $6176: $11 $11 $11
	ld   de, $1111                                   ; $6179: $11 $11 $11
	ld   de, $5411                                   ; $617c: $11 $11 $54
	ld   b, h                                        ; $617f: $44
	ld   d, h                                        ; $6180: $54
	ld   de, $5454                                   ; $6181: $11 $54 $54
	ld   h, a                                        ; $6184: $67
	ld   [hl], d                                     ; $6185: $72
	ld   de, $1111                                   ; $6186: $11 $11 $11
	ld   de, $1112                                   ; $6189: $11 $12 $11
	ld   [de], a                                     ; $618c: $12
	ld   de, $1111                                   ; $618d: $11 $11 $11
	ld   h, [hl]                                     ; $6190: $66
	halt                                             ; $6191: $76
	inc  [hl]                                        ; $6192: $34
	ld   de, $8888                                   ; $6193: $11 $88 $88
	adc  b                                           ; $6196: $88
	adc  b                                           ; $6197: $88
	adc  b                                           ; $6198: $88
	add  a                                           ; $6199: $87
	ld   a, b                                        ; $619a: $78
	adc  b                                           ; $619b: $88
	adc  b                                           ; $619c: $88
	adc  b                                           ; $619d: $88
	sbc  c                                           ; $619e: $99
	sbc  b                                           ; $619f: $98
	adc  b                                           ; $61a0: $88
	sbc  c                                           ; $61a1: $99
	adc  b                                           ; $61a2: $88
	add  a                                           ; $61a3: $87
	ld   [hl], a                                     ; $61a4: $77
	ld   [hl], a                                     ; $61a5: $77
	halt                                             ; $61a6: $76
	ld   h, a                                        ; $61a7: $67
	ld   [hl], a                                     ; $61a8: $77
	ld   a, b                                        ; $61a9: $78
	adc  b                                           ; $61aa: $88
	sbc  d                                           ; $61ab: $9a
	sbc  d                                           ; $61ac: $9a
	xor  d                                           ; $61ad: $aa
	xor  c                                           ; $61ae: $a9
	xor  b                                           ; $61af: $a8
	add  a                                           ; $61b0: $87
	halt                                             ; $61b1: $76
	ld   h, l                                        ; $61b2: $65
	ld   d, h                                        ; $61b3: $54
	ld   b, h                                        ; $61b4: $44
	ld   b, l                                        ; $61b5: $45
	ld   h, a                                        ; $61b6: $67
	ld   a, b                                        ; $61b7: $78
	xor  e                                           ; $61b8: $ab
	call z, $dccd                                    ; $61b9: $cc $cd $dc
	res  3, c                                        ; $61bc: $cb $99
	ld   [hl], l                                     ; $61be: $75
	ld   b, e                                        ; $61bf: $43
	ld   hl, $1111                                   ; $61c0: $21 $11 $11
	inc  [hl]                                        ; $61c3: $34
	ld   h, a                                        ; $61c4: $67
	sbc  e                                           ; $61c5: $9b
	rst  $28                                         ; $61c6: $ef
	rst  $38                                         ; $61c7: $ff
	rst  $38                                         ; $61c8: $ff
	rst  $38                                         ; $61c9: $ff
	db   $db                                         ; $61ca: $db
	sub  a                                           ; $61cb: $97
	ld   d, e                                        ; $61cc: $53
	ld   [hl-], a                                    ; $61cd: $32
	ld   de, $1111                                   ; $61ce: $11 $11 $11
	inc  h                                           ; $61d1: $24
	ld   l, c                                        ; $61d2: $69
	cp   l                                           ; $61d3: $bd
	rst  $38                                         ; $61d4: $ff
	rst  $38                                         ; $61d5: $ff
	rst  $38                                         ; $61d6: $ff
	db   $fd                                         ; $61d7: $fd
	jp   c, Jump_0d4_5486                            ; $61d8: $da $86 $54

	ld   [hl-], a                                    ; $61db: $32
	ld   de, $1111                                   ; $61dc: $11 $11 $11
	inc  h                                           ; $61df: $24
	ld   a, b                                        ; $61e0: $78
	xor  h                                           ; $61e1: $ac
	rst  $28                                         ; $61e2: $ef
	rst  $38                                         ; $61e3: $ff
	rst  $38                                         ; $61e4: $ff
	rst  $38                                         ; $61e5: $ff
	db   $eb                                         ; $61e6: $eb
	and  a                                           ; $61e7: $a7
	ld   b, e                                        ; $61e8: $43
	ld   [hl-], a                                    ; $61e9: $32
	ld   de, $1111                                   ; $61ea: $11 $11 $11
	ld   [de], a                                     ; $61ed: $12
	ld   d, a                                        ; $61ee: $57
	sbc  h                                           ; $61ef: $9c
	rst  $28                                         ; $61f0: $ef
	rst  $38                                         ; $61f1: $ff
	rst  $38                                         ; $61f2: $ff
	rst  $38                                         ; $61f3: $ff
	db   $fc                                         ; $61f4: $fc
	xor  b                                           ; $61f5: $a8
	ld   d, h                                        ; $61f6: $54
	ld   [hl-], a                                    ; $61f7: $32
	ld   de, $1111                                   ; $61f8: $11 $11 $11
	ld   de, $ac47                                   ; $61fb: $11 $47 $ac
	rst  $38                                         ; $61fe: $ff
	rst  $38                                         ; $61ff: $ff
	rst  $38                                         ; $6200: $ff
	rst  $38                                         ; $6201: $ff
	cp   $b9                                         ; $6202: $fe $b9
	ld   h, h                                        ; $6204: $64
	ld   [hl-], a                                    ; $6205: $32
	ld   de, $1111                                   ; $6206: $11 $11 $11
	ld   de, $9b36                                   ; $6209: $11 $36 $9b
	rst  $38                                         ; $620c: $ff
	rst  $38                                         ; $620d: $ff
	rst  $38                                         ; $620e: $ff
	rst  $38                                         ; $620f: $ff
	db   $fd                                         ; $6210: $fd
	ret  z                                           ; $6211: $c8

	ld   h, h                                        ; $6212: $64
	ld   [hl-], a                                    ; $6213: $32
	ld   de, $1111                                   ; $6214: $11 $11 $11
	ld   de, $ac36                                   ; $6217: $11 $36 $ac
	rst  $38                                         ; $621a: $ff
	rst  $38                                         ; $621b: $ff
	rst  $38                                         ; $621c: $ff
	rst  $38                                         ; $621d: $ff
	cp   $c8                                         ; $621e: $fe $c8
	ld   d, h                                        ; $6220: $54
	ld   [hl-], a                                    ; $6221: $32
	ld   de, $1111                                   ; $6222: $11 $11 $11
	ld   de, $9c37                                   ; $6225: $11 $37 $9c
	rst  $38                                         ; $6228: $ff
	rst  $38                                         ; $6229: $ff
	rst  $38                                         ; $622a: $ff
	rst  $38                                         ; $622b: $ff
	cp   $c9                                         ; $622c: $fe $c9
	ld   d, h                                        ; $622e: $54
	ld   [hl-], a                                    ; $622f: $32
	ld   de, $1111                                   ; $6230: $11 $11 $11
	ld   de, $ad37                                   ; $6233: $11 $37 $ad
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	rst  $38                                         ; $6238: $ff
	rst  $38                                         ; $6239: $ff
	db   $fd                                         ; $623a: $fd
	cp   b                                           ; $623b: $b8
	ld   h, l                                        ; $623c: $65
	ld   b, d                                        ; $623d: $42
	ld   de, $1111                                   ; $623e: $11 $11 $11
	ld   de, $bf48                                   ; $6241: $11 $48 $bf
	rst  $38                                         ; $6244: $ff
	rst  $38                                         ; $6245: $ff
	rst  $38                                         ; $6246: $ff
	rst  $38                                         ; $6247: $ff
	cp   $a7                                         ; $6248: $fe $a7
	ld   h, l                                        ; $624a: $65
	ld   sp, $1111                                   ; $624b: $31 $11 $11
	ld   de, $5811                                   ; $624e: $11 $11 $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6251: $cf
	rst  $38                                         ; $6252: $ff
	rst  $38                                         ; $6253: $ff
	rst  $38                                         ; $6254: $ff
	rst  $38                                         ; $6255: $ff
	db   $fc                                         ; $6256: $fc
	and  a                                           ; $6257: $a7
	ld   h, l                                        ; $6258: $65
	ld   sp, $1111                                   ; $6259: $31 $11 $11
	ld   de, $6912                                   ; $625c: $11 $12 $69
	rst  JumpTable                                         ; $625f: $df
	rst  $38                                         ; $6260: $ff
	rst  $38                                         ; $6261: $ff
	rst  $38                                         ; $6262: $ff
	rst  $38                                         ; $6263: $ff
	db   $eb                                         ; $6264: $eb
	add  a                                           ; $6265: $87
	ld   [hl], l                                     ; $6266: $75
	ld   sp, $1111                                   ; $6267: $31 $11 $11
	ld   de, $7b13                                   ; $626a: $11 $13 $7b
	rst  $38                                         ; $626d: $ff
	rst  $38                                         ; $626e: $ff
	rst  $38                                         ; $626f: $ff
	rst  $38                                         ; $6270: $ff
	rst  $38                                         ; $6271: $ff
	ei                                               ; $6272: $fb
	sub  a                                           ; $6273: $97
	ld   [hl], l                                     ; $6274: $75
	ld   hl, $1111                                   ; $6275: $21 $11 $11
	ld   de, $7b14                                   ; $6278: $11 $14 $7b
	rst  $38                                         ; $627b: $ff
	rst  $38                                         ; $627c: $ff
	rst  $38                                         ; $627d: $ff
	rst  $38                                         ; $627e: $ff
	rst  $38                                         ; $627f: $ff
	db   $ec                                         ; $6280: $ec
	adc  b                                           ; $6281: $88
	ld   [hl], l                                     ; $6282: $75
	ld   hl, $1111                                   ; $6283: $21 $11 $11
	ld   de, $7a13                                   ; $6286: $11 $13 $7a
	rst  $28                                         ; $6289: $ef
	rst  $38                                         ; $628a: $ff
	rst  $38                                         ; $628b: $ff
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	db   $fc                                         ; $628e: $fc
	sbc  c                                           ; $628f: $99
	add  l                                           ; $6290: $85
	ld   sp, $1111                                   ; $6291: $31 $11 $11
	ld   de, $6b13                                   ; $6294: $11 $13 $6b
	rst  $28                                         ; $6297: $ef
	rst  $38                                         ; $6298: $ff
	rst  $38                                         ; $6299: $ff
	rst  $38                                         ; $629a: $ff
	rst  $38                                         ; $629b: $ff
	db   $fc                                         ; $629c: $fc
	sbc  c                                           ; $629d: $99
	sub  [hl]                                        ; $629e: $96
	ld   b, c                                        ; $629f: $41
	ld   de, $1111                                   ; $62a0: $11 $11 $11
	ld   de, $ef59                                   ; $62a3: $11 $59 $ef
	rst  $38                                         ; $62a6: $ff
	rst  $38                                         ; $62a7: $ff

Call_0d4_62a8:
	rst  $38                                         ; $62a8: $ff
	rst  $38                                         ; $62a9: $ff
	db   $fd                                         ; $62aa: $fd
	xor  d                                           ; $62ab: $aa
	sub  a                                           ; $62ac: $97
	ld   b, c                                        ; $62ad: $41
	ld   de, $1111                                   ; $62ae: $11 $11 $11
	ld   de, $df49                                   ; $62b1: $11 $49 $df
	rst  $38                                         ; $62b4: $ff
	rst  $38                                         ; $62b5: $ff
	rst  $38                                         ; $62b6: $ff
	rst  $38                                         ; $62b7: $ff
	rst  $38                                         ; $62b8: $ff
	xor  d                                           ; $62b9: $aa
	cp   b                                           ; $62ba: $b8
	ld   h, d                                        ; $62bb: $62
	ld   de, $1111                                   ; $62bc: $11 $11 $11
	ld   de, $bf26                                   ; $62bf: $11 $26 $bf
	rst  $38                                         ; $62c2: $ff
	rst  $38                                         ; $62c3: $ff
	rst  $38                                         ; $62c4: $ff
	rst  $38                                         ; $62c5: $ff
	rst  $38                                         ; $62c6: $ff
	jp   z, Jump_0d4_73b9                            ; $62c7: $ca $b9 $73

	ld   de, $1111                                   ; $62ca: $11 $11 $11
	ld   de, $af15                                   ; $62cd: $11 $15 $af
	rst  $38                                         ; $62d0: $ff
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	rst  $38                                         ; $62d3: $ff
	rst  $38                                         ; $62d4: $ff
	db   $db                                         ; $62d5: $db
	xor  e                                           ; $62d6: $ab
	sub  l                                           ; $62d7: $95
	ld   de, $1111                                   ; $62d8: $11 $11 $11
	ld   de, $7d12                                   ; $62db: $11 $12 $7d
	rst  $38                                         ; $62de: $ff
	rst  $38                                         ; $62df: $ff
	rst  $38                                         ; $62e0: $ff
	rst  $38                                         ; $62e1: $ff
	rst  $38                                         ; $62e2: $ff
	db   $fc                                         ; $62e3: $fc
	cp   e                                           ; $62e4: $bb
	sub  a                                           ; $62e5: $97
	ld   sp, $1111                                   ; $62e6: $31 $11 $11
	ld   de, $4b11                                   ; $62e9: $11 $11 $4b
	rst  $38                                         ; $62ec: $ff
	rst  $38                                         ; $62ed: $ff
	rst  $38                                         ; $62ee: $ff
	rst  $38                                         ; $62ef: $ff
	rst  $38                                         ; $62f0: $ff
	db   $fd                                         ; $62f1: $fd
	xor  e                                           ; $62f2: $ab
	xor  b                                           ; $62f3: $a8
	ld   h, c                                        ; $62f4: $61
	ld   de, $1111                                   ; $62f5: $11 $11 $11
	ld   de, $df27                                   ; $62f8: $11 $27 $df
	rst  $38                                         ; $62fb: $ff
	rst  $38                                         ; $62fc: $ff
	rst  $38                                         ; $62fd: $ff
	rst  $38                                         ; $62fe: $ff
	rst  $38                                         ; $62ff: $ff
	cp   e                                           ; $6300: $bb
	jp   z, $1184                                    ; $6301: $ca $84 $11

	ld   de, $1111                                   ; $6304: $11 $11 $11
	inc  d                                           ; $6307: $14
	xor  a                                           ; $6308: $af
	rst  $38                                         ; $6309: $ff
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	rst  $38                                         ; $630d: $ff
	jp   c, $96bb                                    ; $630e: $da $bb $96

	ld   de, $1111                                   ; $6311: $11 $11 $11
	ld   de, $6c11                                   ; $6314: $11 $11 $6c
	rst  $38                                         ; $6317: $ff
	rst  $38                                         ; $6318: $ff
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	rst  $38                                         ; $631b: $ff
	ei                                               ; $631c: $fb
	sbc  d                                           ; $631d: $9a
	and  a                                           ; $631e: $a7
	ld   sp, $1111                                   ; $631f: $31 $11 $11
	ld   de, $5d11                                   ; $6322: $11 $11 $5d
	rst  $38                                         ; $6325: $ff
	rst  $38                                         ; $6326: $ff
	rst  $38                                         ; $6327: $ff
	rst  $38                                         ; $6328: $ff
	rst  $38                                         ; $6329: $ff
	and  c                                           ; $632a: $a1
	ld   de, $1511                                   ; $632b: $11 $11 $15
	sub  h                                           ; $632e: $94
	ld   hl, $1b11                                   ; $632f: $21 $11 $1b
	rst  $38                                         ; $6332: $ff
	rst  $38                                         ; $6333: $ff
	rst  $38                                         ; $6334: $ff
	rst  $38                                         ; $6335: $ff
	db   $fc                                         ; $6336: $fc
	ld   b, c                                        ; $6337: $41
	ld   de, $1111                                   ; $6338: $11 $11 $11
	jr   @+$01                                       ; $633b: $18 $ff

	rst  $38                                         ; $633d: $ff
	rst  JumpTable                                         ; $633e: $df
	rst  JumpTable                                         ; $633f: $df
	rst  $38                                         ; $6340: $ff
	rst  $38                                         ; $6341: $ff
	rst  $38                                         ; $6342: $ff
	rst  $38                                         ; $6343: $ff
	call nc, $1111                                   ; $6344: $d4 $11 $11
	ld   de, $ef15                                   ; $6347: $11 $15 $ef
	rst  $38                                         ; $634a: $ff
	push af                                          ; $634b: $f5
	ld   d, l                                        ; $634c: $55
	adc  a                                           ; $634d: $8f
	rst  $38                                         ; $634e: $ff
	rst  $38                                         ; $634f: $ff
	rst  $38                                         ; $6350: $ff
	cp   $b2                                         ; $6351: $fe $b2
	ld   de, $1111                                   ; $6353: $11 $11 $11
	rla                                              ; $6356: $17
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	push af                                          ; $6359: $f5
	ld   d, c                                        ; $635a: $51
	ld   a, a                                        ; $635b: $7f
	rst  $38                                         ; $635c: $ff
	rst  $38                                         ; $635d: $ff
	rst  $38                                         ; $635e: $ff
	db   $ec                                         ; $635f: $ec
	ld   b, c                                        ; $6360: $41
	ld   de, $1111                                   ; $6361: $11 $11 $11
	dec  e                                           ; $6364: $1d
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	db   $d3                                         ; $6367: $d3
	ld   de, $ffaf                                   ; $6368: $11 $af $ff
	rst  $38                                         ; $636b: $ff
	rst  $38                                         ; $636c: $ff
	cp   c                                           ; $636d: $b9
	ld   [de], a                                     ; $636e: $12
	ld   de, $1111                                   ; $636f: $11 $11 $11
	rra                                              ; $6372: $1f
	rst  $38                                         ; $6373: $ff
	rst  $38                                         ; $6374: $ff
	sub  d                                           ; $6375: $92
	ld   de, $ffaf                                   ; $6376: $11 $af $ff
	rst  $38                                         ; $6379: $ff
	cp   $96                                         ; $637a: $fe $96
	ld   de, $1111                                   ; $637c: $11 $11 $11
	ld   de, $ff4f                                   ; $637f: $11 $4f $ff
	rst  $38                                         ; $6382: $ff
	ld   [hl], e                                     ; $6383: $73
	ld   de, $ffbf                                   ; $6384: $11 $bf $ff
	rst  $38                                         ; $6387: $ff
	ei                                               ; $6388: $fb
	ld   h, h                                        ; $6389: $64
	inc  de                                          ; $638a: $13
	ld   de, $1111                                   ; $638b: $11 $11 $11
	ccf                                              ; $638e: $3f
	rst  $38                                         ; $638f: $ff
	rst  $38                                         ; $6390: $ff
	add  c                                           ; $6391: $81
	ld   de, $ff9f                                   ; $6392: $11 $9f $ff
	rst  $38                                         ; $6395: $ff
	ld   a, [$1343]                                  ; $6396: $fa $43 $13
	ld   de, $1111                                   ; $6399: $11 $11 $11
	ld   e, $ff                                      ; $639c: $1e $ff
	rst  $38                                         ; $639e: $ff
	sub  c                                           ; $639f: $91
	ld   de, $ff7e                                   ; $63a0: $11 $7e $ff
	rst  $38                                         ; $63a3: $ff
	ld   a, [$1443]                                  ; $63a4: $fa $43 $14
	ld   de, $1111                                   ; $63a7: $11 $11 $11
	inc  e                                           ; $63aa: $1c
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	pop  hl                                          ; $63ad: $e1
	ld   de, $ff4c                                   ; $63ae: $11 $4c $ff
	rst  $38                                         ; $63b1: $ff
	ei                                               ; $63b2: $fb
	inc  [hl]                                        ; $63b3: $34
	ld   d, $41                                      ; $63b4: $16 $41
	ld   de, $1811                                   ; $63b6: $11 $11 $18
	rst  $38                                         ; $63b9: $ff
	rst  $38                                         ; $63ba: $ff
	pop  af                                          ; $63bb: $f1
	ld   de, $ff1b                                   ; $63bc: $11 $1b $ff
	rst  $38                                         ; $63bf: $ff
	cp   $32                                         ; $63c0: $fe $32
	inc  d                                           ; $63c2: $14
	add  c                                           ; $63c3: $81
	ld   de, $1111                                   ; $63c4: $11 $11 $11
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	rst  $30                                         ; $63c9: $f7
	ld   de, $ff17                                   ; $63ca: $11 $17 $ff
	rst  $38                                         ; $63cd: $ff
	rst  $38                                         ; $63ce: $ff
	ld   h, c                                        ; $63cf: $61
	inc  hl                                          ; $63d0: $23
	and  [hl]                                        ; $63d1: $a6
	ld   de, $1111                                   ; $63d2: $11 $11 $11
	sbc  a                                           ; $63d5: $9f
	rst  $38                                         ; $63d6: $ff
	rst  $38                                         ; $63d7: $ff
	ld   de, $bf11                                   ; $63d8: $11 $11 $bf
	rst  $38                                         ; $63db: $ff
	rst  $38                                         ; $63dc: $ff
	pop  bc                                          ; $63dd: $c1
	ld   de, $1159                                   ; $63de: $11 $59 $11
	ld   de, $1f11                                   ; $63e1: $11 $11 $1f
	rst  $38                                         ; $63e4: $ff
	rst  $38                                         ; $63e5: $ff
	ld   [hl], c                                     ; $63e6: $71
	ld   de, $ff4e                                   ; $63e7: $11 $4e $ff
	rst  $38                                         ; $63ea: $ff
	rst  $30                                         ; $63eb: $f7
	ld   [de], a                                     ; $63ec: $12
	inc  a                                           ; $63ed: $3c
	ld   h, c                                        ; $63ee: $61
	ld   de, $1511                                   ; $63ef: $11 $11 $15
	rst  $38                                         ; $63f2: $ff
	rst  $38                                         ; $63f3: $ff
	pop  af                                          ; $63f4: $f1
	ld   de, $ff17                                   ; $63f5: $11 $17 $ff
	rst  $38                                         ; $63f8: $ff
	rst  $38                                         ; $63f9: $ff
	ld   [hl+], a                                    ; $63fa: $22
	inc  d                                           ; $63fb: $14
	jp   $1111                                       ; $63fc: $c3 $11 $11


	ld   de, $ff9f                                   ; $63ff: $11 $9f $ff
	rst  $38                                         ; $6402: $ff
	ld   de, $8f11                                   ; $6403: $11 $11 $8f
	rst  $38                                         ; $6406: $ff
	rst  $38                                         ; $6407: $ff
	or   c                                           ; $6408: $b1
	ld   hl, $51bd                                   ; $6409: $21 $bd $51
	ld   de, $1b11                                   ; $640c: $11 $11 $1b
	rst  $38                                         ; $640f: $ff
	rst  $38                                         ; $6410: $ff
	pop  af                                          ; $6411: $f1
	ld   de, $ff1a                                   ; $6412: $11 $1a $ff
	rst  $38                                         ; $6415: $ff
	ld   a, [$1a11]                                  ; $6416: $fa $11 $1a
	sub  $11                                         ; $6419: $d6 $11
	ld   de, $af11                                   ; $641b: $11 $11 $af
	rst  $38                                         ; $641e: $ff
	rst  $38                                         ; $641f: $ff
	ld   de, $9f11                                   ; $6420: $11 $11 $9f
	rst  $38                                         ; $6423: $ff
	rst  $38                                         ; $6424: $ff
	sub  c                                           ; $6425: $91
	ld   de, $a1cf                                   ; $6426: $11 $cf $a1
	ld   de, $1711                                   ; $6429: $11 $11 $17
	rst  $38                                         ; $642c: $ff
	rst  $38                                         ; $642d: $ff
	pop  af                                          ; $642e: $f1
	ld   de, $ff17                                   ; $642f: $11 $17 $ff
	rst  $38                                         ; $6432: $ff
	ld   a, [$1b11]                                  ; $6433: $fa $11 $1b
	cp   $81                                         ; $6436: $fe $81
	ld   de, $1f11                                   ; $6438: $11 $11 $1f
	rst  $38                                         ; $643b: $ff
	rst  $38                                         ; $643c: $ff
	ld   de, $3f11                                   ; $643d: $11 $11 $3f
	rst  $38                                         ; $6440: $ff
	rst  $38                                         ; $6441: $ff
	pop  af                                          ; $6442: $f1
	ld   de, $ff6f                                   ; $6443: $11 $6f $ff
	ld   de, $1111                                   ; $6446: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6449: $cf
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	ld   de, $7f11                                   ; $644c: $11 $11 $7f
	rst  $38                                         ; $644f: $ff
	rst  $38                                         ; $6450: $ff
	ld   h, c                                        ; $6451: $61
	ld   de, $fdef                                   ; $6452: $11 $ef $fd
	ld   de, $1111                                   ; $6455: $11 $11 $11
	rst  $38                                         ; $6458: $ff
	rst  $38                                         ; $6459: $ff
	ld   sp, hl                                      ; $645a: $f9
	ld   de, $bf11                                   ; $645b: $11 $11 $bf
	rst  $38                                         ; $645e: $ff
	rst  $38                                         ; $645f: $ff
	ld   de, rAUD1LEN                                   ; $6460: $11 $11 $ff
	ld   sp, hl                                      ; $6463: $f9
	ld   de, $1211                                   ; $6464: $11 $11 $12
	rst  $38                                         ; $6467: $ff
	rst  $38                                         ; $6468: $ff
	pop  af                                          ; $6469: $f1
	ld   de, $df11                                   ; $646a: $11 $11 $df
	rst  $38                                         ; $646d: $ff
	db   $fc                                         ; $646e: $fc
	ld   de, $ff17                                   ; $646f: $11 $17 $ff
	or   $11                                         ; $6472: $f6 $11
	ld   de, rAUD1HIGH                                   ; $6474: $11 $14 $ff
	rst  $38                                         ; $6477: $ff
	pop  af                                          ; $6478: $f1
	ld   de, $cf11                                   ; $6479: $11 $11 $cf
	rst  $38                                         ; $647c: $ff
	ld   a, [$1911]                                  ; $647d: $fa $11 $19
	rst  $38                                         ; $6480: $ff
	ld   a, [$1111]                                  ; $6481: $fa $11 $11
	inc  de                                          ; $6484: $13
	rst  $38                                         ; $6485: $ff
	rst  $38                                         ; $6486: $ff
	pop  af                                          ; $6487: $f1
	ld   de, $bf11                                   ; $6488: $11 $11 $bf
	rst  $38                                         ; $648b: $ff
	ld   a, [$1811]                                  ; $648c: $fa $11 $18
	rst  $38                                         ; $648f: $ff
	rst  $38                                         ; $6490: $ff
	ld   de, $1111                                   ; $6491: $11 $11 $11
	rst  $38                                         ; $6494: $ff
	rst  $38                                         ; $6495: $ff
	db   $fc                                         ; $6496: $fc
	ld   de, $8f11                                   ; $6497: $11 $11 $8f
	rst  $38                                         ; $649a: $ff
	db   $fd                                         ; $649b: $fd
	ld   de, $ff15                                   ; $649c: $11 $15 $ff
	rst  $38                                         ; $649f: $ff
	ld   de, $1111                                   ; $64a0: $11 $11 $11
	rst  $38                                         ; $64a3: $ff
	rst  $38                                         ; $64a4: $ff
	rst  $38                                         ; $64a5: $ff
	ld   de, $4f11                                   ; $64a6: $11 $11 $4f
	rst  $38                                         ; $64a9: $ff
	rst  $38                                         ; $64aa: $ff
	ld   b, c                                        ; $64ab: $41
	inc  d                                           ; $64ac: $14
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	ld   [hl], c                                     ; $64af: $71
	ld   de, $3f11                                   ; $64b0: $11 $11 $3f
	rst  $38                                         ; $64b3: $ff
	rst  $38                                         ; $64b4: $ff
	ld   d, c                                        ; $64b5: $51
	ld   de, $ff1b                                   ; $64b6: $11 $1b $ff
	rst  $38                                         ; $64b9: $ff
	sub  c                                           ; $64ba: $91
	inc  d                                           ; $64bb: $14
	xor  a                                           ; $64bc: $af
	rst  $38                                         ; $64bd: $ff
	pop  af                                          ; $64be: $f1
	ld   de, $1f11                                   ; $64bf: $11 $11 $1f
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	pop  af                                          ; $64c4: $f1
	ld   de, rAUD1LOW                                   ; $64c5: $11 $13 $ff
	rst  $38                                         ; $64c8: $ff
	push af                                          ; $64c9: $f5
	ld   de, $ff9f                                   ; $64ca: $11 $9f $ff
	rst  $38                                         ; $64cd: $ff
	ld   de, $1111                                   ; $64ce: $11 $11 $11
	rst  $38                                         ; $64d1: $ff
	rst  $38                                         ; $64d2: $ff
	rst  $38                                         ; $64d3: $ff
	ld   de, $7f11                                   ; $64d4: $11 $11 $7f
	rst  $38                                         ; $64d7: $ff
	cp   $31                                         ; $64d8: $fe $31
	dec  e                                           ; $64da: $1d
	rst  $38                                         ; $64db: $ff
	rst  $38                                         ; $64dc: $ff
	pop  af                                          ; $64dd: $f1
	ld   de, $1f11                                   ; $64de: $11 $11 $1f
	rst  $38                                         ; $64e1: $ff
	rst  $38                                         ; $64e2: $ff
	pop  af                                          ; $64e3: $f1
	ld   de, $ff18                                   ; $64e4: $11 $18 $ff
	rst  $38                                         ; $64e7: $ff
	and  e                                           ; $64e8: $a3
	ld   de, $ffff                                   ; $64e9: $11 $ff $ff
	rst  $38                                         ; $64ec: $ff
	ld   de, $1111                                   ; $64ed: $11 $11 $11
	rst  $38                                         ; $64f0: $ff
	rst  $38                                         ; $64f1: $ff
	rst  $38                                         ; $64f2: $ff
	ld   de, $6f11                                   ; $64f3: $11 $11 $6f
	rst  $38                                         ; $64f6: $ff
	ld   a, [$1f21]                                  ; $64f7: $fa $21 $1f
	rst  $38                                         ; $64fa: $ff
	rst  $38                                         ; $64fb: $ff
	pop  af                                          ; $64fc: $f1
	ld   de, $1f11                                   ; $64fd: $11 $11 $1f
	rst  $38                                         ; $6500: $ff
	rst  $38                                         ; $6501: $ff
	pop  af                                          ; $6502: $f1
	ld   de, rAUD1ENV                                   ; $6503: $11 $12 $ff
	rst  $38                                         ; $6506: $ff
	pop  bc                                          ; $6507: $c1
	ld   de, $ffff                                   ; $6508: $11 $ff $ff
	rst  $38                                         ; $650b: $ff
	ld   de, $1111                                   ; $650c: $11 $11 $11
	rra                                              ; $650f: $1f
	rst  $38                                         ; $6510: $ff
	rst  $38                                         ; $6511: $ff
	pop  af                                          ; $6512: $f1
	ld   de, $ff1c                                   ; $6513: $11 $1c $ff
	rst  $38                                         ; $6516: $ff
	inc  d                                           ; $6517: $14
	dec  e                                           ; $6518: $1d
	rst  $38                                         ; $6519: $ff
	rst  $38                                         ; $651a: $ff
	push af                                          ; $651b: $f5
	ld   de, $1111                                   ; $651c: $11 $11 $11
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	rst  $38                                         ; $6521: $ff
	ld   de, $5d11                                   ; $6522: $11 $11 $5d
	rst  $38                                         ; $6525: $ff
	push af                                          ; $6526: $f5
	ld   [hl-], a                                    ; $6527: $32
	rra                                              ; $6528: $1f
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	pop  af                                          ; $652b: $f1
	ld   de, $1211                                   ; $652c: $11 $11 $12
	rst  $38                                         ; $652f: $ff
	rst  $38                                         ; $6530: $ff
	rst  $38                                         ; $6531: $ff
	ld   de, $af11                                   ; $6532: $11 $11 $af
	rst  $38                                         ; $6535: $ff
	pop  af                                          ; $6536: $f1
	add  c                                           ; $6537: $81
	rst  $38                                         ; $6538: $ff
	rst  $38                                         ; $6539: $ff
	rst  $38                                         ; $653a: $ff
	ld   de, $1111                                   ; $653b: $11 $11 $11
	rra                                              ; $653e: $1f
	rst  $38                                         ; $653f: $ff
	rst  $38                                         ; $6540: $ff
	pop  af                                          ; $6541: $f1
	ld   de, $cf12                                   ; $6542: $11 $12 $cf
	rst  $38                                         ; $6545: $ff
	ld   h, h                                        ; $6546: $64
	ld   d, h                                        ; $6547: $54
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	ld   de, $1111                                   ; $654b: $11 $11 $11
	rra                                              ; $654e: $1f
	rst  $38                                         ; $654f: $ff
	rst  $38                                         ; $6550: $ff
	pop  af                                          ; $6551: $f1
	ld   de, $df19                                   ; $6552: $11 $19 $df
	rst  $38                                         ; $6555: $ff
	jr   jr_0d4_6597                                 ; $6556: $18 $3f

	rst  $38                                         ; $6558: $ff
	rst  $38                                         ; $6559: $ff
	db   $f4                                         ; $655a: $f4
	ld   de, $1111                                   ; $655b: $11 $11 $11
	ld   a, a                                        ; $655e: $7f
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	pop  af                                          ; $6561: $f1
	ld   de, $df18                                   ; $6562: $11 $18 $df
	ld   a, [$4f1c]                                  ; $6565: $fa $1c $4f
	rst  $38                                         ; $6568: $ff
	rst  $38                                         ; $6569: $ff
	pop  af                                          ; $656a: $f1
	ld   de, $1111                                   ; $656b: $11 $11 $11
	rst  $38                                         ; $656e: $ff
	rst  $38                                         ; $656f: $ff
	rst  $38                                         ; $6570: $ff
	and  c                                           ; $6571: $a1
	ld   de, $ee16                                   ; $6572: $11 $16 $ee
	or   $5c                                         ; $6575: $f6 $5c
	xor  a                                           ; $6577: $af
	rst  $38                                         ; $6578: $ff
	rst  $38                                         ; $6579: $ff
	pop  af                                          ; $657a: $f1
	ld   de, $1111                                   ; $657b: $11 $11 $11
	rst  $38                                         ; $657e: $ff
	rst  $38                                         ; $657f: $ff
	rst  $38                                         ; $6580: $ff
	ld   b, c                                        ; $6581: $41
	ld   de, $ce15                                   ; $6582: $11 $15 $ce
	push af                                          ; $6585: $f5
	cp   h                                           ; $6586: $bc
	rst  $38                                         ; $6587: $ff
	rst  $38                                         ; $6588: $ff
	rst  $38                                         ; $6589: $ff
	pop  de                                          ; $658a: $d1
	ld   de, $1111                                   ; $658b: $11 $11 $11
	rst  $38                                         ; $658e: $ff
	rst  $38                                         ; $658f: $ff
	rst  $38                                         ; $6590: $ff
	ld   de, $1411                                   ; $6591: $11 $11 $14
	xor  h                                           ; $6594: $ac
	push af                                          ; $6595: $f5
	db   $ed                                         ; $6596: $ed

jr_0d4_6597:
	rst  $38                                         ; $6597: $ff
	rst  $38                                         ; $6598: $ff
	rst  $38                                         ; $6599: $ff
	and  c                                           ; $659a: $a1
	ld   de, $1111                                   ; $659b: $11 $11 $11
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	rst  $38                                         ; $65a0: $ff
	ld   de, $1211                                   ; $65a1: $11 $11 $12
	ld   a, e                                        ; $65a4: $7b
	push af                                          ; $65a5: $f5
	rst  $38                                         ; $65a6: $ff

Jump_0d4_65a7:
	rst  $38                                         ; $65a7: $ff
	rst  $38                                         ; $65a8: $ff
	rst  $38                                         ; $65a9: $ff
	ld   [hl], c                                     ; $65aa: $71
	ld   de, $1111                                   ; $65ab: $11 $11 $11
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	ld   de, $1111                                   ; $65b1: $11 $11 $11
	ld   e, d                                        ; $65b4: $5a
	push de                                          ; $65b5: $d5
	rst  $38                                         ; $65b6: $ff
	rst  $38                                         ; $65b7: $ff
	rst  $38                                         ; $65b8: $ff
	rst  $38                                         ; $65b9: $ff
	ld   d, c                                        ; $65ba: $51
	ld   de, $1111                                   ; $65bb: $11 $11 $11
	rst  $38                                         ; $65be: $ff
	rst  $38                                         ; $65bf: $ff
	rst  $38                                         ; $65c0: $ff
	ld   b, c                                        ; $65c1: $41
	ld   de, $3a11                                   ; $65c2: $11 $11 $3a
	or   $ff                                         ; $65c5: $f6 $ff
	rst  $38                                         ; $65c7: $ff
	rst  $38                                         ; $65c8: $ff
	rst  $38                                         ; $65c9: $ff
	ld   [hl], c                                     ; $65ca: $71
	ld   de, $1111                                   ; $65cb: $11 $11 $11
	rst  $38                                         ; $65ce: $ff
	rst  $38                                         ; $65cf: $ff
	rst  $38                                         ; $65d0: $ff
	ld   h, c                                        ; $65d1: $61
	ld   de, $2911                                   ; $65d2: $11 $11 $29
	rst  $20                                         ; $65d5: $e7
	rst  $38                                         ; $65d6: $ff
	rst  $38                                         ; $65d7: $ff
	rst  $38                                         ; $65d8: $ff
	rst  $38                                         ; $65d9: $ff
	ld   h, c                                        ; $65da: $61
	ld   de, $1111                                   ; $65db: $11 $11 $11
	rst  $38                                         ; $65de: $ff
	rst  $38                                         ; $65df: $ff
	rst  $38                                         ; $65e0: $ff
	pop  bc                                          ; $65e1: $c1
	ld   de, $0711                                   ; $65e2: $11 $11 $07
	add  sp, -$01                                    ; $65e5: $e8 $ff
	rst  $38                                         ; $65e7: $ff
	rst  $38                                         ; $65e8: $ff
	rst  $38                                         ; $65e9: $ff
	ld   [hl], c                                     ; $65ea: $71
	ld   de, $1111                                   ; $65eb: $11 $11 $11
	rst  $38                                         ; $65ee: $ff
	rst  $38                                         ; $65ef: $ff
	rst  $38                                         ; $65f0: $ff
	pop  af                                          ; $65f1: $f1
	ld   de, $1611                                   ; $65f2: $11 $11 $16
	ld   sp, hl                                      ; $65f5: $f9
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	rst  $38                                         ; $65f9: $ff
	sub  c                                           ; $65fa: $91
	ld   de, $1111                                   ; $65fb: $11 $11 $11
	rst  $38                                         ; $65fe: $ff
	rst  $38                                         ; $65ff: $ff
	rst  $38                                         ; $6600: $ff
	pop  af                                          ; $6601: $f1
	ld   de, $1611                                   ; $6602: $11 $11 $16
	ld   sp, hl                                      ; $6605: $f9
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	sub  c                                           ; $660a: $91
	ld   de, $1111                                   ; $660b: $11 $11 $11
	rst  $28                                         ; $660e: $ef
	rst  $38                                         ; $660f: $ff
	rst  $38                                         ; $6610: $ff
	pop  af                                          ; $6611: $f1
	ld   de, $1511                                   ; $6612: $11 $11 $15
	reti                                             ; $6615: $d9


	rst  JumpTable                                         ; $6616: $df
	rst  $38                                         ; $6617: $ff
	rst  $38                                         ; $6618: $ff
	rst  $38                                         ; $6619: $ff
	or   c                                           ; $661a: $b1
	ld   de, $1111                                   ; $661b: $11 $11 $11
	sbc  a                                           ; $661e: $9f
	rst  $38                                         ; $661f: $ff
	rst  $38                                         ; $6620: $ff
	pop  af                                          ; $6621: $f1
	ld   de, $1411                                   ; $6622: $11 $11 $14
	xor  c                                           ; $6625: $a9
	cp   a                                           ; $6626: $bf
	rst  $38                                         ; $6627: $ff
	rst  $38                                         ; $6628: $ff
	rst  $38                                         ; $6629: $ff
	pop  de                                          ; $662a: $d1
	ld   de, $1111                                   ; $662b: $11 $11 $11
	ccf                                              ; $662e: $3f
	rst  $38                                         ; $662f: $ff
	rst  $38                                         ; $6630: $ff
	pop  af                                          ; $6631: $f1
	ld   de, $1211                                   ; $6632: $11 $11 $12
	sub  a                                           ; $6635: $97
	sbc  a                                           ; $6636: $9f
	rst  $38                                         ; $6637: $ff
	rst  $38                                         ; $6638: $ff
	rst  $38                                         ; $6639: $ff
	pop  hl                                          ; $663a: $e1
	ld   de, $1111                                   ; $663b: $11 $11 $11
	rra                                              ; $663e: $1f
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	pop  af                                          ; $6641: $f1
	ld   de, $1111                                   ; $6642: $11 $11 $11
	ld   l, b                                        ; $6645: $68
	ld   l, a                                        ; $6646: $6f
	rst  $38                                         ; $6647: $ff
	rst  $38                                         ; $6648: $ff
	rst  $38                                         ; $6649: $ff
	pop  af                                          ; $664a: $f1
	ld   de, $1111                                   ; $664b: $11 $11 $11
	rra                                              ; $664e: $1f
	rst  $38                                         ; $664f: $ff
	rst  $38                                         ; $6650: $ff
	pop  af                                          ; $6651: $f1
	ld   de, $1111                                   ; $6652: $11 $11 $11
	ld   d, a                                        ; $6655: $57
	ccf                                              ; $6656: $3f
	rst  $38                                         ; $6657: $ff
	rst  $38                                         ; $6658: $ff
	rst  $38                                         ; $6659: $ff
	pop  af                                          ; $665a: $f1
	ld   de, $1111                                   ; $665b: $11 $11 $11
	rra                                              ; $665e: $1f
	rst  $38                                         ; $665f: $ff
	rst  $38                                         ; $6660: $ff
	db   $f4                                         ; $6661: $f4
	ld   de, $1111                                   ; $6662: $11 $11 $11
	dec  h                                           ; $6665: $25
	cpl                                              ; $6666: $2f
	rst  $38                                         ; $6667: $ff
	rst  $38                                         ; $6668: $ff
	rst  $38                                         ; $6669: $ff
	pop  af                                          ; $666a: $f1
	ld   de, $1111                                   ; $666b: $11 $11 $11
	rra                                              ; $666e: $1f
	rst  $38                                         ; $666f: $ff
	rst  $38                                         ; $6670: $ff
	rst  $38                                         ; $6671: $ff
	ld   de, $1111                                   ; $6672: $11 $11 $11
	ld   h, $2f                                      ; $6675: $26 $2f
	rst  $38                                         ; $6677: $ff
	rst  $38                                         ; $6678: $ff
	rst  $38                                         ; $6679: $ff
	pop  af                                          ; $667a: $f1
	ld   de, $1111                                   ; $667b: $11 $11 $11
	rra                                              ; $667e: $1f
	rst  $38                                         ; $667f: $ff
	rst  $38                                         ; $6680: $ff
	ld   a, [$1111]                                  ; $6681: $fa $11 $11
	ld   de, $1f13                                   ; $6684: $11 $13 $1f
	rst  $38                                         ; $6687: $ff
	rst  $38                                         ; $6688: $ff
	rst  $38                                         ; $6689: $ff
	pop  af                                          ; $668a: $f1
	ld   de, $1111                                   ; $668b: $11 $11 $11
	rra                                              ; $668e: $1f
	rst  $38                                         ; $668f: $ff
	rst  $38                                         ; $6690: $ff
	ld   hl, sp+$71                                  ; $6691: $f8 $71
	ld   de, $1111                                   ; $6693: $11 $11 $11
	rra                                              ; $6696: $1f
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	and  c                                           ; $669a: $a1
	ld   de, $1111                                   ; $669b: $11 $11 $11
	rra                                              ; $669e: $1f
	rst  $38                                         ; $669f: $ff
	rst  $38                                         ; $66a0: $ff
	db   $f4                                         ; $66a1: $f4
	pop  bc                                          ; $66a2: $c1
	ld   de, $1111                                   ; $66a3: $11 $11 $11
	ccf                                              ; $66a6: $3f
	rst  $38                                         ; $66a7: $ff
	rst  $38                                         ; $66a8: $ff
	rst  $38                                         ; $66a9: $ff
	ld   hl, $1111                                   ; $66aa: $21 $11 $11
	ld   de, $ffff                                   ; $66ad: $11 $ff $ff
	rst  $38                                         ; $66b0: $ff
	ei                                               ; $66b1: $fb
	add  c                                           ; $66b2: $81
	ld   de, $1111                                   ; $66b3: $11 $11 $11
	rst  $38                                         ; $66b6: $ff
	rst  $38                                         ; $66b7: $ff
	rst  $38                                         ; $66b8: $ff
	push af                                          ; $66b9: $f5
	ld   de, $1111                                   ; $66ba: $11 $11 $11
	jr   @+$01                                       ; $66bd: $18 $ff

	rst  $38                                         ; $66bf: $ff
	rst  $38                                         ; $66c0: $ff
	rst  $38                                         ; $66c1: $ff
	inc  de                                          ; $66c2: $13
	ld   de, $1a11                                   ; $66c3: $11 $11 $1a
	rst  $38                                         ; $66c6: $ff
	rst  $38                                         ; $66c7: $ff
	rst  $38                                         ; $66c8: $ff
	ld   sp, $1111                                   ; $66c9: $31 $11 $11
	ld   de, $ff9f                                   ; $66cc: $11 $9f $ff
	rst  $38                                         ; $66cf: $ff
	rst  $38                                         ; $66d0: $ff
	db   $f4                                         ; $66d1: $f4
	ld   [hl], c                                     ; $66d2: $71
	ld   de, $cf11                                   ; $66d3: $11 $11 $cf
	rst  $38                                         ; $66d6: $ff
	rst  $38                                         ; $66d7: $ff
	pop  af                                          ; $66d8: $f1
	ld   de, $1111                                   ; $66d9: $11 $11 $11
	dec  e                                           ; $66dc: $1d
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
	rst  $38                                         ; $66e0: $ff
	or   a                                           ; $66e1: $b7
	ld   de, $1f11                                   ; $66e2: $11 $11 $1f
	rst  $38                                         ; $66e5: $ff
	rst  $38                                         ; $66e6: $ff
	ld   hl, sp+$11                                  ; $66e7: $f8 $11
	ld   de, $1211                                   ; $66e9: $11 $11 $12
	rst  JumpTable                                         ; $66ec: $df
	rst  $38                                         ; $66ed: $ff
	rst  $38                                         ; $66ee: $ff
	rst  $38                                         ; $66ef: $ff
	xor  $41                                         ; $66f0: $ee $41
	ld   de, rAUD1HIGH                                   ; $66f2: $11 $14 $ff
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	ld   de, $1111                                   ; $66f7: $11 $11 $11
	ld   de, $ffdd                                   ; $66fa: $11 $dd $ff
	rst  $38                                         ; $66fd: $ff
	rst  $38                                         ; $66fe: $ff
	rst  $38                                         ; $66ff: $ff
	pop  hl                                          ; $6700: $e1
	ld   de, rAUD1LEN                                   ; $6701: $11 $11 $ff
	rst  $38                                         ; $6704: $ff
	rst  $38                                         ; $6705: $ff
	ld   de, $1111                                   ; $6706: $11 $11 $11
	ld   de, $fffb                                   ; $6709: $11 $fb $ff
	rst  $38                                         ; $670c: $ff
	rst  $38                                         ; $670d: $ff
	rst  $38                                         ; $670e: $ff
	di                                               ; $670f: $f3
	ld   de, rAUD1LEN                                   ; $6710: $11 $11 $ff
	rst  $38                                         ; $6713: $ff
	rst  $38                                         ; $6714: $ff
	ld   de, $1111                                   ; $6715: $11 $11 $11
	ld   de, $fffa                                   ; $6718: $11 $fa $ff
	rst  $28                                         ; $671b: $ef
	rst  $38                                         ; $671c: $ff
	rst  $38                                         ; $671d: $ff
	db   $f4                                         ; $671e: $f4
	ld   de, rAUD1LEN                                   ; $671f: $11 $11 $ff
	rst  $38                                         ; $6722: $ff
	rst  $38                                         ; $6723: $ff
	ld   de, $1111                                   ; $6724: $11 $11 $11
	ld   de, $fffd                                   ; $6727: $11 $fd $ff
	rst  JumpTable                                         ; $672a: $df
	rst  $38                                         ; $672b: $ff
	rst  $38                                         ; $672c: $ff
	di                                               ; $672d: $f3
	ld   de, rAUD1LEN                                   ; $672e: $11 $11 $ff
	rst  $38                                         ; $6731: $ff
	rst  $38                                         ; $6732: $ff
	ld   de, $1111                                   ; $6733: $11 $11 $11
	ld   e, $ff                                      ; $6736: $1e $ff
	cp   $ff                                         ; $6738: $fe $ff
	rst  $38                                         ; $673a: $ff
	rst  $38                                         ; $673b: $ff
	pop  hl                                          ; $673c: $e1
	ld   de, $ff1c                                   ; $673d: $11 $1c $ff
	rst  $38                                         ; $6740: $ff
	db   $f4                                         ; $6741: $f4
	ld   de, $1111                                   ; $6742: $11 $11 $11
	rra                                              ; $6745: $1f
	rst  $38                                         ; $6746: $ff
	ld   a, [$ffff]                                  ; $6747: $fa $ff $ff
	db   $fd                                         ; $674a: $fd
	ld   h, c                                        ; $674b: $61
	ld   de, $ff1f                                   ; $674c: $11 $1f $ff
	rst  $38                                         ; $674f: $ff
	add  c                                           ; $6750: $81
	ld   de, $1111                                   ; $6751: $11 $11 $11
	rst  $38                                         ; $6754: $ff
	rst  $38                                         ; $6755: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6756: $cf
	rst  $38                                         ; $6757: $ff
	rst  $38                                         ; $6758: $ff
	ld   hl, sp+$11                                  ; $6759: $f8 $11
	ld   de, $ffff                                   ; $675b: $11 $ff $ff
	ld   a, [$1111]                                  ; $675e: $fa $11 $11
	ld   de, $ff1f                                   ; $6761: $11 $1f $ff
	db   $fc                                         ; $6764: $fc
	rst  $38                                         ; $6765: $ff
	rst  $38                                         ; $6766: $ff
	rst  $38                                         ; $6767: $ff
	add  c                                           ; $6768: $81
	ld   de, $ff0f                                   ; $6769: $11 $0f $ff
	rst  $38                                         ; $676c: $ff
	ld   [hl], c                                     ; $676d: $71
	ld   de, $1111                                   ; $676e: $11 $11 $11
	rst  $38                                         ; $6771: $ff
	rst  $38                                         ; $6772: $ff
	cp   a                                           ; $6773: $bf
	rst  $38                                         ; $6774: $ff
	rst  $38                                         ; $6775: $ff
	ld   sp, hl                                      ; $6776: $f9
	ld   de, $ff15                                   ; $6777: $11 $15 $ff
	rst  $38                                         ; $677a: $ff
	jp   nz, $1111                                   ; $677b: $c2 $11 $11

	ld   de, $ffaf                                   ; $677e: $11 $af $ff
	ld   sp, hl                                      ; $6781: $f9
	rst  $28                                         ; $6782: $ef
	rst  $38                                         ; $6783: $ff
	rst  $38                                         ; $6784: $ff
	ld   sp, $ff15                                   ; $6785: $31 $15 $ff
	rst  $38                                         ; $6788: $ff
	db   $d3                                         ; $6789: $d3
	ld   de, $1111                                   ; $678a: $11 $11 $11
	rra                                              ; $678d: $1f
	rst  $38                                         ; $678e: $ff
	rst  $30                                         ; $678f: $f7
	sbc  $ff                                         ; $6790: $de $ff
	rst  $38                                         ; $6792: $ff
	ld   [hl], c                                     ; $6793: $71
	ld   a, [de]                                     ; $6794: $1a
	rst  $38                                         ; $6795: $ff
	rst  $38                                         ; $6796: $ff
	db   $d3                                         ; $6797: $d3
	ld   de, $1111                                   ; $6798: $11 $11 $11
	rra                                              ; $679b: $1f
	rst  $38                                         ; $679c: $ff
	or   $bf                                         ; $679d: $f6 $bf
	rst  $38                                         ; $679f: $ff
	rst  $38                                         ; $67a0: $ff
	ld   [hl], c                                     ; $67a1: $71
	rra                                              ; $67a2: $1f
	rst  $38                                         ; $67a3: $ff
	rst  $38                                         ; $67a4: $ff
	sub  h                                           ; $67a5: $94
	ld   de, $1111                                   ; $67a6: $11 $11 $11
	rra                                              ; $67a9: $1f
	rst  $38                                         ; $67aa: $ff
	db   $f4                                         ; $67ab: $f4
	ld   l, a                                        ; $67ac: $6f
	rst  $38                                         ; $67ad: $ff
	db   $fc                                         ; $67ae: $fc
	ld   h, c                                        ; $67af: $61
	rra                                              ; $67b0: $1f
	rst  $38                                         ; $67b1: $ff
	db   $fc                                         ; $67b2: $fc
	inc  [hl]                                        ; $67b3: $34
	ld   de, $1111                                   ; $67b4: $11 $11 $11
	cp   a                                           ; $67b7: $bf
	rst  $38                                         ; $67b8: $ff
	and  c                                           ; $67b9: $a1
	adc  a                                           ; $67ba: $8f
	rst  $38                                         ; $67bb: $ff
	pop  af                                          ; $67bc: $f1
	ld   b, c                                        ; $67bd: $41
	rst  JumpTable                                         ; $67be: $df
	rst  $38                                         ; $67bf: $ff
	call nz, $1114                                   ; $67c0: $c4 $14 $11
	ld   de, rAUD1LEN                                   ; $67c3: $11 $11 $ff
	rst  $38                                         ; $67c6: $ff
	add  hl, de                                      ; $67c7: $19
	rst  $38                                         ; $67c8: $ff
	rst  $38                                         ; $67c9: $ff
	ld   sp, $ff17                                   ; $67ca: $31 $17 $ff
	ld   sp, hl                                      ; $67cd: $f9
	add  e                                           ; $67ce: $83
	sub  c                                           ; $67cf: $91
	ld   de, $1f11                                   ; $67d0: $11 $11 $1f
	rst  $38                                         ; $67d3: $ff
	pop  af                                          ; $67d4: $f1
	rst  $28                                         ; $67d5: $ef
	rst  $38                                         ; $67d6: $ff
	or   $1a                                         ; $67d7: $f6 $1a
	sbc  a                                           ; $67d9: $9f
	rst  $38                                         ; $67da: $ff
	ld   b, a                                        ; $67db: $47
	sbc  e                                           ; $67dc: $9b
	ld   hl, $1111                                   ; $67dd: $21 $11 $11
	rst  $38                                         ; $67e0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67e1: $cf
	rra                                              ; $67e2: $1f
	rst  $38                                         ; $67e3: $ff
	rst  $38                                         ; $67e4: $ff
	ld   sp, $ffff                                   ; $67e5: $31 $ff $ff
	ld   h, c                                        ; $67e8: $61
	cp   [hl]                                        ; $67e9: $be
	or   c                                           ; $67ea: $b1
	ld   de, $7f11                                   ; $67eb: $11 $11 $7f
	pop  af                                          ; $67ee: $f1
	and  l                                           ; $67ef: $a5
	rst  $38                                         ; $67f0: $ff
	rst  $38                                         ; $67f1: $ff
	pop  af                                          ; $67f2: $f1
	rst  $28                                         ; $67f3: $ef
	rst  $38                                         ; $67f4: $ff
	ld   hl, $a17f                                   ; $67f5: $21 $7f $a1
	ld   de, $7f11                                   ; $67f8: $11 $11 $7f
	pop  af                                          ; $67fb: $f1
	sbc  a                                           ; $67fc: $9f
	rst  $38                                         ; $67fd: $ff
	rst  $38                                         ; $67fe: $ff
	rst  JumpTable                                         ; $67ff: $df
	cp   a                                           ; $6800: $bf
	push af                                          ; $6801: $f5
	or   c                                           ; $6802: $b1
	cp   a                                           ; $6803: $bf
	pop  bc                                          ; $6804: $c1
	ld   de, $1311                                   ; $6805: $11 $11 $13
	db   $f4                                         ; $6808: $f4
	ld   c, a                                        ; $6809: $4f
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	rst  $38                                         ; $680c: $ff
	rst  $38                                         ; $680d: $ff
	ld   a, [$f5ac]                                  ; $680e: $fa $ac $f5
	pop  de                                          ; $6811: $d1
	ld   de, $1111                                   ; $6812: $11 $11 $11
	db   $fd                                         ; $6815: $fd
	ld   l, a                                        ; $6816: $6f
	rst  $38                                         ; $6817: $ff
	rst  $38                                         ; $6818: $ff
	rst  $38                                         ; $6819: $ff
	db   $fc                                         ; $681a: $fc
	db   $fc                                         ; $681b: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $681c: $cf
	pop  af                                          ; $681d: $f1
	ld   de, $1111                                   ; $681e: $11 $11 $11
	ld   de, $fffa                                   ; $6821: $11 $fa $ff
	rst  $38                                         ; $6824: $ff
	rst  $38                                         ; $6825: $ff
	rst  $38                                         ; $6826: $ff
	cp   $fb                                         ; $6827: $fe $fb
	adc  a                                           ; $6829: $8f
	ld   d, c                                        ; $682a: $51
	ld   de, $1111                                   ; $682b: $11 $11 $11
	add  hl, de                                      ; $682e: $19
	or   $ff                                         ; $682f: $f6 $ff
	rst  $38                                         ; $6831: $ff
	rst  $38                                         ; $6832: $ff
	rst  $38                                         ; $6833: $ff
	rst  $38                                         ; $6834: $ff
	db   $ed                                         ; $6835: $ed
	cp   [hl]                                        ; $6836: $be
	ld   de, $1111                                   ; $6837: $11 $11 $11
	ld   de, $3f1f                                   ; $683a: $11 $1f $3f
	rst  $38                                         ; $683d: $ff
	rst  $38                                         ; $683e: $ff
	rst  $38                                         ; $683f: $ff
	rst  $38                                         ; $6840: $ff
	rst  $38                                         ; $6841: $ff
	db   $db                                         ; $6842: $db
	pop  af                                          ; $6843: $f1
	ld   de, $1111                                   ; $6844: $11 $11 $11
	ld   de, $ffd5                                   ; $6847: $11 $d5 $ff
	rst  $38                                         ; $684a: $ff
	rst  $38                                         ; $684b: $ff
	rst  $38                                         ; $684c: $ff
	rst  $38                                         ; $684d: $ff
	rst  $38                                         ; $684e: $ff
	rst  JumpTable                                         ; $684f: $df
	ld   d, c                                        ; $6850: $51
	ld   de, $1111                                   ; $6851: $11 $11 $11
	ld   de, $ffa9                                   ; $6854: $11 $a9 $ff
	rst  $38                                         ; $6857: $ff
	rst  $38                                         ; $6858: $ff
	rst  $38                                         ; $6859: $ff
	rst  $38                                         ; $685a: $ff
	rst  $38                                         ; $685b: $ff
	rst  $38                                         ; $685c: $ff
	ld   de, $1111                                   ; $685d: $11 $11 $11
	ld   de, $8f14                                   ; $6860: $11 $14 $8f
	rst  $38                                         ; $6863: $ff
	rst  $38                                         ; $6864: $ff
	rst  $38                                         ; $6865: $ff
	rst  $38                                         ; $6866: $ff
	rst  $38                                         ; $6867: $ff
	rst  $38                                         ; $6868: $ff
	db   $f4                                         ; $6869: $f4
	ld   de, $1111                                   ; $686a: $11 $11 $11
	ld   de, $3f14                                   ; $686d: $11 $14 $3f
	rst  $38                                         ; $6870: $ff
	rst  $38                                         ; $6871: $ff
	rst  $38                                         ; $6872: $ff
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	pop  af                                          ; $6876: $f1
	ld   de, $1111                                   ; $6877: $11 $11 $11
	ld   de, $9f12                                   ; $687a: $11 $12 $9f
	rst  $38                                         ; $687d: $ff
	rst  $38                                         ; $687e: $ff
	rst  $38                                         ; $687f: $ff
	rst  $38                                         ; $6880: $ff
	rst  $38                                         ; $6881: $ff
	rst  $38                                         ; $6882: $ff
	pop  de                                          ; $6883: $d1
	ld   de, $1111                                   ; $6884: $11 $11 $11
	ld   de, $3c11                                   ; $6887: $11 $11 $3c
	rst  $38                                         ; $688a: $ff
	rst  $38                                         ; $688b: $ff
	rst  $38                                         ; $688c: $ff
	rst  $38                                         ; $688d: $ff
	rst  $38                                         ; $688e: $ff
	rst  $38                                         ; $688f: $ff
	or   [hl]                                        ; $6890: $b6
	ld   de, $1111                                   ; $6891: $11 $11 $11
	ld   de, $1b11                                   ; $6894: $11 $11 $1b
	rst  $38                                         ; $6897: $ff
	rst  $38                                         ; $6898: $ff
	rst  $38                                         ; $6899: $ff
	rst  $38                                         ; $689a: $ff
	rst  $38                                         ; $689b: $ff
	rst  $38                                         ; $689c: $ff
	rst  $30                                         ; $689d: $f7
	ld   de, $1111                                   ; $689e: $11 $11 $11
	ld   de, $1411                                   ; $68a1: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68a4: $cf
	rst  $38                                         ; $68a5: $ff
	rst  $38                                         ; $68a6: $ff
	rst  $38                                         ; $68a7: $ff
	rst  $38                                         ; $68a8: $ff
	rst  $38                                         ; $68a9: $ff
	ei                                               ; $68aa: $fb
	ld   hl, $1111                                   ; $68ab: $21 $11 $11
	ld   de, $1111                                   ; $68ae: $11 $11 $11
	ld   e, [hl]                                     ; $68b1: $5e
	rst  $38                                         ; $68b2: $ff
	rst  $38                                         ; $68b3: $ff
	rst  $38                                         ; $68b4: $ff
	rst  $38                                         ; $68b5: $ff
	rst  $38                                         ; $68b6: $ff
	rst  $38                                         ; $68b7: $ff
	or   h                                           ; $68b8: $b4
	ld   de, $1111                                   ; $68b9: $11 $11 $11
	ld   de, $1411                                   ; $68bc: $11 $11 $14
	rst  $28                                         ; $68bf: $ef
	rst  $38                                         ; $68c0: $ff
	rst  $38                                         ; $68c1: $ff
	rst  $38                                         ; $68c2: $ff
	rst  $38                                         ; $68c3: $ff
	rst  $38                                         ; $68c4: $ff
	or   $74                                         ; $68c5: $f6 $74
	ld   de, $1111                                   ; $68c7: $11 $11 $11
	ld   de, $7312                                   ; $68ca: $11 $12 $73
	rst  $38                                         ; $68cd: $ff
	rst  $38                                         ; $68ce: $ff
	rst  $38                                         ; $68cf: $ff
	rst  $38                                         ; $68d0: $ff
	rst  $38                                         ; $68d1: $ff
	rst  JumpTable                                         ; $68d2: $df
	cp   d                                           ; $68d3: $ba
	ld   [hl], $11                                   ; $68d4: $36 $11
	ld   hl, $1111                                   ; $68d6: $21 $11 $11
	dec  [hl]                                        ; $68d9: $35
	ld   l, d                                        ; $68da: $6a
	db   $ed                                         ; $68db: $ed
	rst  JumpTable                                         ; $68dc: $df
	rst  $38                                         ; $68dd: $ff
	rst  $38                                         ; $68de: $ff
	adc  $fa                                         ; $68df: $ce $fa
	or   [hl]                                        ; $68e1: $b6
	ld   h, e                                        ; $68e2: $63
	ld   de, $1213                                   ; $68e3: $11 $13 $12
	ld   h, c                                        ; $68e6: $61
	ld   a, e                                        ; $68e7: $7b
	sub  a                                           ; $68e8: $97
	adc  $ba                                         ; $68e9: $ce $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68eb: $cf
	ld   e, e                                        ; $68ec: $5b
	rst  $20                                         ; $68ed: $e7
	ld   e, b                                        ; $68ee: $58
	or   c                                           ; $68ef: $b1
	ld   h, h                                        ; $68f0: $64
	sub  l                                           ; $68f1: $95
	jr   c, jr_0d4_695c                              ; $68f2: $38 $68

	rra                                              ; $68f4: $1f
	ld   b, h                                        ; $68f5: $44

jr_0d4_68f6:
	rst  $30                                         ; $68f6: $f7
	ld   a, c                                        ; $68f7: $79
	pop  af                                          ; $68f8: $f1
	ld   a, [hl]                                     ; $68f9: $7e
	ld   h, [hl]                                     ; $68fa: $66
	xor  e                                           ; $68fb: $ab
	ld   c, d                                        ; $68fc: $4a
	add  a                                           ; $68fd: $87
	ld   l, c                                        ; $68fe: $69
	ld   d, [hl]                                     ; $68ff: $56
	or   e                                           ; $6900: $b3
	xor  h                                           ; $6901: $ac
	dec  sp                                          ; $6902: $3b
	and  l                                           ; $6903: $a5
	reti                                             ; $6904: $d9


	ld   l, e                                        ; $6905: $6b
	ld   l, c                                        ; $6906: $69
	sub  [hl]                                        ; $6907: $96
	and  l                                           ; $6908: $a5
	adc  b                                           ; $6909: $88
	ld   c, b                                        ; $690a: $48
	and  a                                           ; $690b: $a7
	dec  sp                                          ; $690c: $3b
	and  h                                           ; $690d: $a4
	adc  e                                           ; $690e: $8b
	ld   h, [hl]                                     ; $690f: $66
	ret  c                                           ; $6910: $d8

	ld   c, c                                        ; $6911: $49

jr_0d4_6912:
	sub  a                                           ; $6912: $97
	ld   a, d                                        ; $6913: $7a
	add  d                                           ; $6914: $82
	or   $2f                                         ; $6915: $f6 $2f
	add  hl, sp                                      ; $6917: $39
	ld   d, l                                        ; $6918: $55
	db   $e4                                         ; $6919: $e4
	ld   c, l                                        ; $691a: $4d
	ld   h, e                                        ; $691b: $63
	db   $f4                                         ; $691c: $f4
	ld   a, a                                        ; $691d: $7f
	jr   jr_0d4_6912                                 ; $691e: $18 $f2

	ld   e, a                                        ; $6920: $5f
	ld   b, e                                        ; $6921: $43
	ret  z                                           ; $6922: $c8

	jr   jr_0d4_68f6                                 ; $6923: $18 $d1

	ld   l, e                                        ; $6925: $6b
	add  a                                           ; $6926: $87
	ld   l, b                                        ; $6927: $68
	reti                                             ; $6928: $d9


	ld   c, h                                        ; $6929: $4c

jr_0d4_692a:
	adc  c                                           ; $692a: $89
	xor  b                                           ; $692b: $a8
	ld   l, e                                        ; $692c: $6b
	add  c                                           ; $692d: $81
	push de                                          ; $692e: $d5
	ld   e, c                                        ; $692f: $59
	add  l                                           ; $6930: $85
	ld   l, d                                        ; $6931: $6a
	dec  sp                                          ; $6932: $3b
	ld   e, c                                        ; $6933: $59
	sub  e                                           ; $6934: $93
	ret  c                                           ; $6935: $d8

	ld   l, [hl]                                     ; $6936: $6e
	ld   a, b                                        ; $6937: $78
	and  [hl]                                        ; $6938: $a6
	ret  z                                           ; $6939: $c8

	ld   e, c                                        ; $693a: $59
	and  d                                           ; $693b: $a2
	cp   c                                           ; $693c: $b9
	ld   e, $62                                      ; $693d: $1e $62
	or   [hl]                                        ; $693f: $b6
	and  l                                           ; $6940: $a5
	ld   l, d                                        ; $6941: $6a
	inc  a                                           ; $6942: $3c
	sub  d                                           ; $6943: $92
	ld   hl, sp+$5c                                  ; $6944: $f8 $5c
	ld   c, l                                        ; $6946: $4d
	sub  l                                           ; $6947: $95
	push hl                                          ; $6948: $e5
	ld   l, e                                        ; $6949: $6b
	add  h                                           ; $694a: $84
	sub  a                                           ; $694b: $97
	sub  h                                           ; $694c: $94
	ld   l, l                                        ; $694d: $6d
	ld   a, [de]                                     ; $694e: $1a
	and  d                                           ; $694f: $a2
	add  $8f                                         ; $6950: $c6 $8f
	ld   a, [de]                                     ; $6952: $1a
	pop  af                                          ; $6953: $f1
	cp   h                                           ; $6954: $bc
	ld   c, e                                        ; $6955: $4b
	adc  e                                           ; $6956: $8b
	jr   c, jr_0d4_692a                              ; $6957: $38 $d1

	and  $59                                         ; $6959: $e6 $59
	ld   c, l                                        ; $695b: $4d

jr_0d4_695c:
	ld   a, [de]                                     ; $695c: $1a
	or   c                                           ; $695d: $b1
	cp   e                                           ; $695e: $bb
	ld   [hl], d                                     ; $695f: $72
	db   $fd                                         ; $6960: $fd
	rra                                              ; $6961: $1f
	or   c                                           ; $6962: $b1
	ld   a, [$411f]                                  ; $6963: $fa $1f $41
	pop  af                                          ; $6966: $f1
	sbc  l                                           ; $6967: $9d
	rra                                              ; $6968: $1f
	ld   b, c                                        ; $6969: $41
	db   $f4                                         ; $696a: $f4
	rra                                              ; $696b: $1f
	inc  hl                                          ; $696c: $23
	ldh  a, [c]                                      ; $696d: $f2
	ld   l, $83                                      ; $696e: $2e $83
	or   $58                                         ; $6970: $f6 $58
	pop  de                                          ; $6972: $d1
	ccf                                              ; $6973: $3f
	ld   e, $83                                      ; $6974: $1e $83
	pop  hl                                          ; $6976: $e1
	rst  ToBoot                                         ; $6977: $c7
	ld   e, d                                        ; $6978: $5a
	ld   l, b                                        ; $6979: $68
	ld   c, l                                        ; $697a: $4d
	ld   d, [hl]                                     ; $697b: $56
	pop  af                                          ; $697c: $f1
	ret                                              ; $697d: $c9


	adc  d                                           ; $697e: $8a
	ld   a, c                                        ; $697f: $79
	and  a                                           ; $6980: $a7
	ld   l, a                                        ; $6981: $6f
	rra                                              ; $6982: $1f
	ld   b, d                                        ; $6983: $42
	pop  af                                          ; $6984: $f1
	pop  af                                          ; $6985: $f1
	xor  h                                           ; $6986: $ac
	ld   e, $69                                      ; $6987: $1e $69
	ld   l, d                                        ; $6989: $6a
	adc  c                                           ; $698a: $89
	ld   a, b                                        ; $698b: $78
	jp   $b6a7                                       ; $698c: $c3 $a7 $b6


	ld   a, h                                        ; $698f: $7c
	ld   l, d                                        ; $6990: $6a
	ld   a, $27                                      ; $6991: $3e $27
	pop  bc                                          ; $6993: $c1
	pop  de                                          ; $6994: $d1
	rst  $10                                         ; $6995: $d7
	rra                                              ; $6996: $1f
	ld   [de], a                                     ; $6997: $12
	pop  af                                          ; $6998: $f1
	ld   e, [hl]                                     ; $6999: $5e
	ld   c, d                                        ; $699a: $4a
	ld   c, l                                        ; $699b: $4d
	add  l                                           ; $699c: $85
	xor  c                                           ; $699d: $a9
	ld   e, d                                        ; $699e: $5a
	and  c                                           ; $699f: $a1
	pop  af                                          ; $69a0: $f1
	adc  h                                           ; $69a1: $8c
	dec  e                                           ; $69a2: $1d
	ld   b, a                                        ; $69a3: $47
	or   [hl]                                        ; $69a4: $b6
	ld   e, l                                        ; $69a5: $5d
	add  hl, sp                                      ; $69a6: $39
	or   h                                           ; $69a7: $b4
	sub  $5e                                         ; $69a8: $d6 $5e
	and  c                                           ; $69aa: $a1
	call z, $9657                                    ; $69ab: $cc $57 $96
	sub  a                                           ; $69ae: $97
	ld   l, d                                        ; $69af: $6a
	rra                                              ; $69b0: $1f
	ld   d, c                                        ; $69b1: $51
	ldh  a, [c]                                      ; $69b2: $f2
	ld   e, a                                        ; $69b3: $5f
	ld   [hl], $d6                                   ; $69b4: $36 $d6
	and  a                                           ; $69b6: $a7
	ld   a, d                                        ; $69b7: $7a
	ld   l, b                                        ; $69b8: $68
	add  [hl]                                        ; $69b9: $86
	adc  h                                           ; $69ba: $8c
	ld   b, a                                        ; $69bb: $47
	jp   nc, $547d                                   ; $69bc: $d2 $7d $54

	sub  $2f                                         ; $69bf: $d6 $2f
	ld   h, $f1                                      ; $69c1: $26 $f1
	and  $7a                                         ; $69c3: $e6 $7a
	ld   a, [hl-]                                    ; $69c5: $3a
	and  e                                           ; $69c6: $a3
	sbc  d                                           ; $69c7: $9a
	ld   c, d                                        ; $69c8: $4a
	ld   h, a                                        ; $69c9: $67
	add  h                                           ; $69ca: $84
	rst  ToBoot                                         ; $69cb: $c7
	ld   l, h                                        ; $69cc: $6c
	ld   d, a                                        ; $69cd: $57
	or   l                                           ; $69ce: $b5
	sbc  b                                           ; $69cf: $98
	ld   a, b                                        ; $69d0: $78
	sbc  e                                           ; $69d1: $9b
	ld   c, c                                        ; $69d2: $49
	jp   $3a9b                                       ; $69d3: $c3 $9b $3a


	sub  [hl]                                        ; $69d6: $96
	sub  [hl]                                        ; $69d7: $96
	ld   a, b                                        ; $69d8: $78
	ld   [hl], a                                     ; $69d9: $77
	and  h                                           ; $69da: $a4
	xor  c                                           ; $69db: $a9
	ld   a, c                                        ; $69dc: $79
	ld   a, d                                        ; $69dd: $7a
	ld   l, e                                        ; $69de: $6b
	ld   l, b                                        ; $69df: $68
	and  l                                           ; $69e0: $a5
	jp   nc, $198c                                   ; $69e1: $d2 $8c $19

	pop  de                                          ; $69e4: $d1
	adc  h                                           ; $69e5: $8c
	inc  l                                           ; $69e6: $2c
	halt                                             ; $69e7: $76
	xor  b                                           ; $69e8: $a8
	ld   l, c                                        ; $69e9: $69
	sub  [hl]                                        ; $69ea: $96
	or   a                                           ; $69eb: $b7
	sub  [hl]                                        ; $69ec: $96
	adc  c                                           ; $69ed: $89
	halt                                             ; $69ee: $76
	sbc  c                                           ; $69ef: $99
	ld   c, l                                        ; $69f0: $4d
	add  hl, hl                                      ; $69f1: $29
	or   h                                           ; $69f2: $b4
	xor  b                                           ; $69f3: $a8
	ld   h, a                                        ; $69f4: $67
	and  l                                           ; $69f5: $a5
	xor  b                                           ; $69f6: $a8
	ld   a, c                                        ; $69f7: $79
	ld   [hl], a                                     ; $69f8: $77
	adc  d                                           ; $69f9: $8a
	ld   l, d                                        ; $69fa: $6a
	add  a                                           ; $69fb: $87
	adc  b                                           ; $69fc: $88
	ld   l, d                                        ; $69fd: $6a
	add  a                                           ; $69fe: $87
	sub  a                                           ; $69ff: $97
	adc  b                                           ; $6a00: $88
	add  [hl]                                        ; $6a01: $86
	and  a                                           ; $6a02: $a7
	adc  c                                           ; $6a03: $89
	ld   [hl], a                                     ; $6a04: $77
	adc  c                                           ; $6a05: $89
	ld   l, c                                        ; $6a06: $69
	ld   a, c                                        ; $6a07: $79
	halt                                             ; $6a08: $76
	and  [hl]                                        ; $6a09: $a6
	sbc  c                                           ; $6a0a: $99
	ld   a, b                                        ; $6a0b: $78
	adc  b                                           ; $6a0c: $88
	add  a                                           ; $6a0d: $87
	adc  c                                           ; $6a0e: $89
	ld   [hl], a                                     ; $6a0f: $77
	or   [hl]                                        ; $6a10: $b6
	ld   a, c                                        ; $6a11: $79
	ld   [hl], a                                     ; $6a12: $77
	adc  c                                           ; $6a13: $89
	ld   a, c                                        ; $6a14: $79
	adc  c                                           ; $6a15: $89
	ld   [hl], a                                     ; $6a16: $77
	or   l                                           ; $6a17: $b5
	sbc  d                                           ; $6a18: $9a
	ld   e, h                                        ; $6a19: $5c
	ld   e, d                                        ; $6a1a: $5a
	add  [hl]                                        ; $6a1b: $86
	call nz, Call_0d4_79b7                           ; $6a1c: $c4 $b7 $79
	ld   a, d                                        ; $6a1f: $7a
	ld   l, e                                        ; $6a20: $6b
	ld   l, b                                        ; $6a21: $68
	sub  a                                           ; $6a22: $97
	sbc  b                                           ; $6a23: $98
	adc  b                                           ; $6a24: $88
	sbc  b                                           ; $6a25: $98
	ld   [hl], a                                     ; $6a26: $77
	and  a                                           ; $6a27: $a7
	sub  a                                           ; $6a28: $97
	and  a                                           ; $6a29: $a7
	ld   l, e                                        ; $6a2a: $6b
	ld   e, c                                        ; $6a2b: $59
	adc  b                                           ; $6a2c: $88
	sub  a                                           ; $6a2d: $97
	and  [hl]                                        ; $6a2e: $a6
	sbc  c                                           ; $6a2f: $99
	ld   a, b                                        ; $6a30: $78
	ld   a, c                                        ; $6a31: $79
	ld   a, b                                        ; $6a32: $78
	add  a                                           ; $6a33: $87
	ld   a, c                                        ; $6a34: $79
	sub  [hl]                                        ; $6a35: $96
	sbc  c                                           ; $6a36: $99
	adc  b                                           ; $6a37: $88
	sbc  b                                           ; $6a38: $98
	ld   a, b                                        ; $6a39: $78
	adc  b                                           ; $6a3a: $88
	ld   a, c                                        ; $6a3b: $79
	add  a                                           ; $6a3c: $87
	sbc  b                                           ; $6a3d: $98
	sbc  b                                           ; $6a3e: $98
	sbc  b                                           ; $6a3f: $98
	ld   a, c                                        ; $6a40: $79
	ld   a, b                                        ; $6a41: $78
	adc  b                                           ; $6a42: $88
	adc  b                                           ; $6a43: $88
	sub  a                                           ; $6a44: $97
	sub  a                                           ; $6a45: $97
	adc  b                                           ; $6a46: $88
	adc  c                                           ; $6a47: $89
	ld   a, b                                        ; $6a48: $78
	adc  b                                           ; $6a49: $88
	adc  b                                           ; $6a4a: $88
	sbc  c                                           ; $6a4b: $99
	adc  b                                           ; $6a4c: $88
	adc  c                                           ; $6a4d: $89
	adc  b                                           ; $6a4e: $88
	sub  a                                           ; $6a4f: $97
	sbc  b                                           ; $6a50: $98
	adc  c                                           ; $6a51: $89
	ld   a, b                                        ; $6a52: $78
	ld   a, b                                        ; $6a53: $78
	sbc  b                                           ; $6a54: $98
	adc  b                                           ; $6a55: $88
	adc  b                                           ; $6a56: $88
	sbc  b                                           ; $6a57: $98
	sbc  b                                           ; $6a58: $98
	adc  c                                           ; $6a59: $89
	adc  b                                           ; $6a5a: $88
	adc  c                                           ; $6a5b: $89
	adc  c                                           ; $6a5c: $89
	adc  b                                           ; $6a5d: $88
	adc  c                                           ; $6a5e: $89
	adc  b                                           ; $6a5f: $88
	adc  b                                           ; $6a60: $88
	adc  b                                           ; $6a61: $88
	adc  b                                           ; $6a62: $88
	sbc  b                                           ; $6a63: $98
	sbc  b                                           ; $6a64: $98
	adc  c                                           ; $6a65: $89
	adc  c                                           ; $6a66: $89
	adc  c                                           ; $6a67: $89
	sbc  b                                           ; $6a68: $98
	adc  c                                           ; $6a69: $89
	sbc  b                                           ; $6a6a: $98
	adc  c                                           ; $6a6b: $89
	adc  c                                           ; $6a6c: $89
	sbc  b                                           ; $6a6d: $98
	adc  b                                           ; $6a6e: $88
	adc  b                                           ; $6a6f: $88
	adc  c                                           ; $6a70: $89
	adc  b                                           ; $6a71: $88
	adc  b                                           ; $6a72: $88
	adc  c                                           ; $6a73: $89
	adc  b                                           ; $6a74: $88
	adc  b                                           ; $6a75: $88
	adc  b                                           ; $6a76: $88
	adc  b                                           ; $6a77: $88
	adc  b                                           ; $6a78: $88
	adc  b                                           ; $6a79: $88
	adc  b                                           ; $6a7a: $88
	adc  b                                           ; $6a7b: $88
	adc  b                                           ; $6a7c: $88
	adc  b                                           ; $6a7d: $88
	adc  b                                           ; $6a7e: $88
	adc  b                                           ; $6a7f: $88
	adc  b                                           ; $6a80: $88
	adc  b                                           ; $6a81: $88
	adc  b                                           ; $6a82: $88
	adc  b                                           ; $6a83: $88
	adc  b                                           ; $6a84: $88
	adc  b                                           ; $6a85: $88
	adc  b                                           ; $6a86: $88
	adc  b                                           ; $6a87: $88
	adc  b                                           ; $6a88: $88
	adc  b                                           ; $6a89: $88
	adc  b                                           ; $6a8a: $88
	adc  b                                           ; $6a8b: $88
	adc  b                                           ; $6a8c: $88
	adc  b                                           ; $6a8d: $88
	adc  b                                           ; $6a8e: $88
	adc  b                                           ; $6a8f: $88
	adc  b                                           ; $6a90: $88
	adc  b                                           ; $6a91: $88
	adc  b                                           ; $6a92: $88
	adc  b                                           ; $6a93: $88
	adc  b                                           ; $6a94: $88
	adc  b                                           ; $6a95: $88
	adc  b                                           ; $6a96: $88
	adc  b                                           ; $6a97: $88
	adc  b                                           ; $6a98: $88
	adc  b                                           ; $6a99: $88
	adc  b                                           ; $6a9a: $88
	adc  b                                           ; $6a9b: $88
	adc  b                                           ; $6a9c: $88
	adc  b                                           ; $6a9d: $88
	adc  b                                           ; $6a9e: $88
	adc  b                                           ; $6a9f: $88
	adc  b                                           ; $6aa0: $88
	adc  b                                           ; $6aa1: $88
	adc  b                                           ; $6aa2: $88
	adc  b                                           ; $6aa3: $88
	adc  b                                           ; $6aa4: $88
	adc  b                                           ; $6aa5: $88
	adc  b                                           ; $6aa6: $88
	adc  b                                           ; $6aa7: $88
	adc  b                                           ; $6aa8: $88
	adc  b                                           ; $6aa9: $88
	adc  b                                           ; $6aaa: $88
	adc  b                                           ; $6aab: $88
	adc  b                                           ; $6aac: $88
	adc  b                                           ; $6aad: $88
	adc  b                                           ; $6aae: $88
	adc  b                                           ; $6aaf: $88
	adc  b                                           ; $6ab0: $88
	adc  b                                           ; $6ab1: $88
	adc  b                                           ; $6ab2: $88
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	adc  b                                           ; $6ab5: $88
	adc  b                                           ; $6ab6: $88
	adc  b                                           ; $6ab7: $88
	adc  b                                           ; $6ab8: $88
	adc  b                                           ; $6ab9: $88
	adc  b                                           ; $6aba: $88
	adc  b                                           ; $6abb: $88
	adc  b                                           ; $6abc: $88
	adc  b                                           ; $6abd: $88
	adc  b                                           ; $6abe: $88
	adc  b                                           ; $6abf: $88
	adc  b                                           ; $6ac0: $88
	adc  b                                           ; $6ac1: $88
	adc  b                                           ; $6ac2: $88
	adc  b                                           ; $6ac3: $88
	adc  b                                           ; $6ac4: $88
	adc  b                                           ; $6ac5: $88
	adc  b                                           ; $6ac6: $88
	adc  b                                           ; $6ac7: $88
	adc  b                                           ; $6ac8: $88
	adc  b                                           ; $6ac9: $88
	adc  b                                           ; $6aca: $88
	adc  b                                           ; $6acb: $88
	adc  b                                           ; $6acc: $88
	adc  b                                           ; $6acd: $88
	adc  b                                           ; $6ace: $88
	adc  b                                           ; $6acf: $88
	adc  b                                           ; $6ad0: $88
	adc  b                                           ; $6ad1: $88
	adc  b                                           ; $6ad2: $88
	adc  b                                           ; $6ad3: $88
	adc  b                                           ; $6ad4: $88
	adc  b                                           ; $6ad5: $88
	adc  b                                           ; $6ad6: $88
	adc  b                                           ; $6ad7: $88
	adc  b                                           ; $6ad8: $88
	adc  b                                           ; $6ad9: $88
	adc  b                                           ; $6ada: $88
	adc  b                                           ; $6adb: $88
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	adc  b                                           ; $6ade: $88
	adc  b                                           ; $6adf: $88
	adc  b                                           ; $6ae0: $88
	adc  b                                           ; $6ae1: $88
	adc  b                                           ; $6ae2: $88
	adc  b                                           ; $6ae3: $88
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	adc  b                                           ; $6ae6: $88
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	adc  b                                           ; $6ae9: $88
	adc  b                                           ; $6aea: $88
	adc  b                                           ; $6aeb: $88
	adc  b                                           ; $6aec: $88
	adc  b                                           ; $6aed: $88
	adc  b                                           ; $6aee: $88
	adc  b                                           ; $6aef: $88
	adc  b                                           ; $6af0: $88
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	adc  b                                           ; $6af3: $88
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	adc  b                                           ; $6af6: $88
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	adc  b                                           ; $6af9: $88
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	adc  b                                           ; $6afd: $88
	adc  b                                           ; $6afe: $88
	adc  b                                           ; $6aff: $88
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
	adc  b                                           ; $6b03: $88
	adc  b                                           ; $6b04: $88
	adc  b                                           ; $6b05: $88
	adc  b                                           ; $6b06: $88
	adc  b                                           ; $6b07: $88
	adc  b                                           ; $6b08: $88
	adc  b                                           ; $6b09: $88
	adc  b                                           ; $6b0a: $88
	adc  b                                           ; $6b0b: $88
	adc  b                                           ; $6b0c: $88
	adc  b                                           ; $6b0d: $88
	adc  b                                           ; $6b0e: $88
	adc  b                                           ; $6b0f: $88
	adc  b                                           ; $6b10: $88
	adc  b                                           ; $6b11: $88
	adc  b                                           ; $6b12: $88
	adc  b                                           ; $6b13: $88
	adc  b                                           ; $6b14: $88
	adc  b                                           ; $6b15: $88
	adc  b                                           ; $6b16: $88
	adc  b                                           ; $6b17: $88
	adc  b                                           ; $6b18: $88
	adc  b                                           ; $6b19: $88
	adc  b                                           ; $6b1a: $88
	adc  b                                           ; $6b1b: $88
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	adc  b                                           ; $6b20: $88
	adc  b                                           ; $6b21: $88
	adc  b                                           ; $6b22: $88
	adc  b                                           ; $6b23: $88
	adc  b                                           ; $6b24: $88
	adc  b                                           ; $6b25: $88
	adc  b                                           ; $6b26: $88
	adc  b                                           ; $6b27: $88
	adc  b                                           ; $6b28: $88
	adc  b                                           ; $6b29: $88
	adc  b                                           ; $6b2a: $88
	adc  b                                           ; $6b2b: $88
	adc  b                                           ; $6b2c: $88
	adc  b                                           ; $6b2d: $88
	adc  b                                           ; $6b2e: $88
	adc  b                                           ; $6b2f: $88
	adc  b                                           ; $6b30: $88
	adc  b                                           ; $6b31: $88
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  b                                           ; $6b35: $88
	adc  b                                           ; $6b36: $88
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	adc  b                                           ; $6b39: $88
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	adc  b                                           ; $6b3d: $88
	adc  b                                           ; $6b3e: $88
	adc  b                                           ; $6b3f: $88
	adc  b                                           ; $6b40: $88
	adc  b                                           ; $6b41: $88
	adc  b                                           ; $6b42: $88
	adc  b                                           ; $6b43: $88
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  b                                           ; $6b46: $88
	adc  b                                           ; $6b47: $88
	adc  b                                           ; $6b48: $88
	adc  b                                           ; $6b49: $88
	adc  b                                           ; $6b4a: $88
	adc  b                                           ; $6b4b: $88
	adc  b                                           ; $6b4c: $88
	adc  b                                           ; $6b4d: $88
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	adc  b                                           ; $6b50: $88
	adc  b                                           ; $6b51: $88
	adc  b                                           ; $6b52: $88
	adc  b                                           ; $6b53: $88
	adc  b                                           ; $6b54: $88
	adc  b                                           ; $6b55: $88
	adc  b                                           ; $6b56: $88
	adc  b                                           ; $6b57: $88
	adc  b                                           ; $6b58: $88
	adc  b                                           ; $6b59: $88
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	adc  b                                           ; $6b5c: $88
	adc  b                                           ; $6b5d: $88
	adc  b                                           ; $6b5e: $88
	adc  b                                           ; $6b5f: $88
	adc  b                                           ; $6b60: $88
	adc  b                                           ; $6b61: $88
	adc  b                                           ; $6b62: $88
	adc  b                                           ; $6b63: $88
	adc  b                                           ; $6b64: $88
	adc  b                                           ; $6b65: $88
	adc  b                                           ; $6b66: $88
	adc  b                                           ; $6b67: $88
	adc  b                                           ; $6b68: $88
	adc  b                                           ; $6b69: $88
	adc  b                                           ; $6b6a: $88
	adc  b                                           ; $6b6b: $88
	adc  b                                           ; $6b6c: $88
	adc  b                                           ; $6b6d: $88
	adc  b                                           ; $6b6e: $88
	adc  b                                           ; $6b6f: $88
	adc  b                                           ; $6b70: $88
	adc  b                                           ; $6b71: $88
	adc  b                                           ; $6b72: $88
	adc  b                                           ; $6b73: $88
	adc  b                                           ; $6b74: $88
	adc  b                                           ; $6b75: $88
	adc  b                                           ; $6b76: $88
	adc  b                                           ; $6b77: $88
	adc  b                                           ; $6b78: $88
	adc  b                                           ; $6b79: $88
	adc  b                                           ; $6b7a: $88
	adc  b                                           ; $6b7b: $88
	adc  b                                           ; $6b7c: $88
	adc  b                                           ; $6b7d: $88
	adc  b                                           ; $6b7e: $88
	adc  b                                           ; $6b7f: $88
	adc  b                                           ; $6b80: $88
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  b                                           ; $6b83: $88
	adc  b                                           ; $6b84: $88
	adc  b                                           ; $6b85: $88
	adc  b                                           ; $6b86: $88
	adc  b                                           ; $6b87: $88
	adc  b                                           ; $6b88: $88
	adc  b                                           ; $6b89: $88
	adc  b                                           ; $6b8a: $88
	adc  b                                           ; $6b8b: $88
	adc  b                                           ; $6b8c: $88
	adc  b                                           ; $6b8d: $88
	adc  b                                           ; $6b8e: $88
	adc  b                                           ; $6b8f: $88
	adc  b                                           ; $6b90: $88
	adc  b                                           ; $6b91: $88
	adc  b                                           ; $6b92: $88
	adc  b                                           ; $6b93: $88
	adc  b                                           ; $6b94: $88
	adc  b                                           ; $6b95: $88
	adc  b                                           ; $6b96: $88
	adc  b                                           ; $6b97: $88
	adc  b                                           ; $6b98: $88
	adc  b                                           ; $6b99: $88
	adc  b                                           ; $6b9a: $88
	adc  b                                           ; $6b9b: $88
	adc  b                                           ; $6b9c: $88
	adc  b                                           ; $6b9d: $88
	adc  b                                           ; $6b9e: $88
	adc  b                                           ; $6b9f: $88
	adc  b                                           ; $6ba0: $88
	adc  b                                           ; $6ba1: $88
	adc  b                                           ; $6ba2: $88
	adc  b                                           ; $6ba3: $88
	adc  b                                           ; $6ba4: $88
	adc  b                                           ; $6ba5: $88
	adc  b                                           ; $6ba6: $88
	adc  b                                           ; $6ba7: $88
	adc  b                                           ; $6ba8: $88
	adc  b                                           ; $6ba9: $88
	adc  b                                           ; $6baa: $88
	adc  b                                           ; $6bab: $88
	adc  b                                           ; $6bac: $88
	adc  b                                           ; $6bad: $88
	adc  b                                           ; $6bae: $88
	adc  b                                           ; $6baf: $88
	adc  b                                           ; $6bb0: $88
	adc  b                                           ; $6bb1: $88
	adc  b                                           ; $6bb2: $88
	adc  b                                           ; $6bb3: $88
	adc  b                                           ; $6bb4: $88
	adc  b                                           ; $6bb5: $88
	adc  b                                           ; $6bb6: $88
	adc  b                                           ; $6bb7: $88
	adc  b                                           ; $6bb8: $88
	adc  b                                           ; $6bb9: $88
	adc  b                                           ; $6bba: $88
	adc  b                                           ; $6bbb: $88
	adc  b                                           ; $6bbc: $88
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	adc  b                                           ; $6bbf: $88
	adc  b                                           ; $6bc0: $88
	adc  b                                           ; $6bc1: $88
	adc  b                                           ; $6bc2: $88
	adc  b                                           ; $6bc3: $88
	adc  b                                           ; $6bc4: $88
	adc  b                                           ; $6bc5: $88
	adc  b                                           ; $6bc6: $88
	adc  b                                           ; $6bc7: $88
	adc  b                                           ; $6bc8: $88
	adc  b                                           ; $6bc9: $88
	adc  b                                           ; $6bca: $88
	adc  b                                           ; $6bcb: $88
	adc  b                                           ; $6bcc: $88
	adc  b                                           ; $6bcd: $88
	adc  b                                           ; $6bce: $88
	adc  b                                           ; $6bcf: $88
	adc  b                                           ; $6bd0: $88
	adc  b                                           ; $6bd1: $88
	adc  b                                           ; $6bd2: $88
	adc  b                                           ; $6bd3: $88
	adc  b                                           ; $6bd4: $88
	adc  b                                           ; $6bd5: $88
	adc  b                                           ; $6bd6: $88
	adc  b                                           ; $6bd7: $88
	adc  b                                           ; $6bd8: $88
	adc  b                                           ; $6bd9: $88
	adc  b                                           ; $6bda: $88
	adc  b                                           ; $6bdb: $88
	adc  b                                           ; $6bdc: $88
	adc  b                                           ; $6bdd: $88
	adc  b                                           ; $6bde: $88
	adc  b                                           ; $6bdf: $88
	adc  b                                           ; $6be0: $88
	adc  b                                           ; $6be1: $88
	adc  b                                           ; $6be2: $88
	adc  b                                           ; $6be3: $88
	adc  c                                           ; $6be4: $89
	ld   a, c                                        ; $6be5: $79
	add  a                                           ; $6be6: $87
	sbc  b                                           ; $6be7: $98
	sbc  b                                           ; $6be8: $98
	ld   l, b                                        ; $6be9: $68
	add  a                                           ; $6bea: $87
	adc  c                                           ; $6beb: $89
	ld   a, c                                        ; $6bec: $79
	xor  b                                           ; $6bed: $a8
	add  a                                           ; $6bee: $87
	ld   h, a                                        ; $6bef: $67
	sbc  d                                           ; $6bf0: $9a
	or   [hl]                                        ; $6bf1: $b6
	ld   a, b                                        ; $6bf2: $78
	ld   h, [hl]                                     ; $6bf3: $66
	ld   h, a                                        ; $6bf4: $67
	xor  c                                           ; $6bf5: $a9
	ld   d, [hl]                                     ; $6bf6: $56
	halt                                             ; $6bf7: $76
	add  l                                           ; $6bf8: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bf9: $cf
	ld   h, l                                        ; $6bfa: $65
	sub  a                                           ; $6bfb: $97
	halt                                             ; $6bfc: $76
	ld   a, c                                        ; $6bfd: $79
	adc  $96                                         ; $6bfe: $ce $96
	xor  b                                           ; $6c00: $a8
	add  a                                           ; $6c01: $87
	jr   c, jr_0d4_6c7d                              ; $6c02: $38 $79

	ld   h, h                                        ; $6c04: $64
	ld   d, h                                        ; $6c05: $54
	ld   b, [hl]                                     ; $6c06: $46
	add  l                                           ; $6c07: $85
	sub  a                                           ; $6c08: $97
	sbc  c                                           ; $6c09: $99
	sbc  e                                           ; $6c0a: $9b
	sbc  e                                           ; $6c0b: $9b
	sbc  h                                           ; $6c0c: $9c
	cp   c                                           ; $6c0d: $b9
	add  [hl]                                        ; $6c0e: $86
	ld   [hl], h                                     ; $6c0f: $74
	ld   sp, $3311                                   ; $6c10: $31 $11 $33
	ld   [de], a                                     ; $6c13: $12
	ld   h, $8e                                      ; $6c14: $26 $8e
	rst  $38                                         ; $6c16: $ff
	rst  $38                                         ; $6c17: $ff
	rst  $38                                         ; $6c18: $ff
	db   $fd                                         ; $6c19: $fd
	add  h                                           ; $6c1a: $84
	ld   hl, $1111                                   ; $6c1b: $21 $11 $11
	ld   de, $1f11                                   ; $6c1e: $11 $11 $1f
	rst  $38                                         ; $6c21: $ff
	rst  $38                                         ; $6c22: $ff
	rst  $38                                         ; $6c23: $ff
	rst  $38                                         ; $6c24: $ff
	rst  $38                                         ; $6c25: $ff
	rst  $38                                         ; $6c26: $ff
	ld   de, $1111                                   ; $6c27: $11 $11 $11
	ld   de, $af11                                   ; $6c2a: $11 $11 $af
	rst  $38                                         ; $6c2d: $ff
	rst  $38                                         ; $6c2e: $ff
	rst  $38                                         ; $6c2f: $ff
	rst  $38                                         ; $6c30: $ff
	rst  $38                                         ; $6c31: $ff
	rst  $38                                         ; $6c32: $ff
	sub  c                                           ; $6c33: $91
	ld   de, $1111                                   ; $6c34: $11 $11 $11
	inc  e                                           ; $6c37: $1c
	rla                                              ; $6c38: $17
	rst  $38                                         ; $6c39: $ff
	rst  $38                                         ; $6c3a: $ff
	rst  $38                                         ; $6c3b: $ff
	rst  $38                                         ; $6c3c: $ff
	rst  $38                                         ; $6c3d: $ff
	xor  $dc                                         ; $6c3e: $ee $dc
	ld   de, $1111                                   ; $6c40: $11 $11 $11
	ld   de, $1fda                                   ; $6c43: $11 $da $1f
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	rst  $38                                         ; $6c49: $ff
	db   $fd                                         ; $6c4a: $fd
	cp   c                                           ; $6c4b: $b9
	ei                                               ; $6c4c: $fb
	ld   h, c                                        ; $6c4d: $61
	ld   de, $1111                                   ; $6c4e: $11 $11 $11
	pop  af                                          ; $6c51: $f1
	ld   a, a                                        ; $6c52: $7f
	rst  $38                                         ; $6c53: $ff
	rst  $38                                         ; $6c54: $ff
	rst  $28                                         ; $6c55: $ef
	rst  $38                                         ; $6c56: $ff
	ld   sp, hl                                      ; $6c57: $f9
	sbc  b                                           ; $6c58: $98
	db   $fc                                         ; $6c59: $fc
	sub  c                                           ; $6c5a: $91
	ld   de, $1b11                                   ; $6c5b: $11 $11 $1b
	pop  af                                          ; $6c5e: $f1
	cp   a                                           ; $6c5f: $bf
	rst  $38                                         ; $6c60: $ff
	rst  $38                                         ; $6c61: $ff
	rst  JumpTable                                         ; $6c62: $df
	rst  $38                                         ; $6c63: $ff
	or   $57                                         ; $6c64: $f6 $57
	cp   $81                                         ; $6c66: $fe $81
	ld   de, $1f11                                   ; $6c68: $11 $11 $1f
	pop  de                                          ; $6c6b: $d1
	rst  JumpTable                                         ; $6c6c: $df
	rst  $38                                         ; $6c6d: $ff
	cp   $ff                                         ; $6c6e: $fe $ff
	rst  $38                                         ; $6c70: $ff
	rst  $30                                         ; $6c71: $f7
	rla                                              ; $6c72: $17
	rst  JumpTable                                         ; $6c73: $df
	ld   b, c                                        ; $6c74: $41
	ld   de, $ef11                                   ; $6c75: $11 $11 $ef
	ld   [hl], d                                     ; $6c78: $72
	cp   a                                           ; $6c79: $bf
	rst  $38                                         ; $6c7a: $ff
	ld   hl, sp-$13                                  ; $6c7b: $f8 $ed

jr_0d4_6c7d:
	rst  $38                                         ; $6c7d: $ff
	ld   sp, hl                                      ; $6c7e: $f9
	rla                                              ; $6c7f: $17
	rst  JumpTable                                         ; $6c80: $df
	ld   bc, $1111                                   ; $6c81: $01 $11 $11
	rst  $38                                         ; $6c84: $ff
	ld   b, h                                        ; $6c85: $44
	ld   l, a                                        ; $6c86: $6f
	rst  $38                                         ; $6c87: $ff
	ld   sp, hl                                      ; $6c88: $f9
	and  h                                           ; $6c89: $a4
	rst  $38                                         ; $6c8a: $ff
	ei                                               ; $6c8b: $fb
	dec  d                                           ; $6c8c: $15
	cp   a                                           ; $6c8d: $bf
	ld   de, $1211                                   ; $6c8e: $11 $11 $12
	rst  $38                                         ; $6c91: $ff
	and  e                                           ; $6c92: $a3
	ccf                                              ; $6c93: $3f
	rst  $38                                         ; $6c94: $ff
	rst  $38                                         ; $6c95: $ff
	ld   de, $feff                                   ; $6c96: $11 $ff $fe
	ld   sp, $1155                                   ; $6c99: $31 $55 $11
	ld   de, $ff1f                                   ; $6c9c: $11 $1f $ff
	di                                               ; $6c9f: $f3
	ld   c, a                                        ; $6ca0: $4f
	rst  $38                                         ; $6ca1: $ff
	rst  $38                                         ; $6ca2: $ff
	ld   de, $ffef                                   ; $6ca3: $11 $ef $ff
	sub  c                                           ; $6ca6: $91
	ld   de, $1111                                   ; $6ca7: $11 $11 $11
	rra                                              ; $6caa: $1f
	rst  $38                                         ; $6cab: $ff
	or   $cf                                         ; $6cac: $f6 $cf
	rst  $38                                         ; $6cae: $ff
	rst  $38                                         ; $6caf: $ff
	ld   d, $7f                                      ; $6cb0: $16 $7f
	rst  $38                                         ; $6cb2: $ff
	jp   nz, $1111                                   ; $6cb3: $c2 $11 $11

	ld   de, $ffaf                                   ; $6cb6: $11 $af $ff
	cp   $ff                                         ; $6cb9: $fe $ff
	rst  $38                                         ; $6cbb: $ff
	di                                               ; $6cbc: $f3
	add  a                                           ; $6cbd: $87
	rst  JumpTable                                         ; $6cbe: $df
	rst  $38                                         ; $6cbf: $ff
	and  c                                           ; $6cc0: $a1
	ld   de, $1111                                   ; $6cc1: $11 $11 $11
	rst  $38                                         ; $6cc4: $ff
	rst  $38                                         ; $6cc5: $ff
	xor  a                                           ; $6cc6: $af
	rst  $38                                         ; $6cc7: $ff
	rst  $38                                         ; $6cc8: $ff
	and  c                                           ; $6cc9: $a1
	add  a                                           ; $6cca: $87
	rst  $38                                         ; $6ccb: $ff
	cp   $31                                         ; $6ccc: $fe $31
	ld   de, $1f11                                   ; $6cce: $11 $11 $1f
	rst  $38                                         ; $6cd1: $ff
	ld   a, [$ffff]                                  ; $6cd2: $fa $ff $ff
	rst  $38                                         ; $6cd5: $ff
	rla                                              ; $6cd6: $17
	ccf                                              ; $6cd7: $3f
	rst  $38                                         ; $6cd8: $ff
	rst  $30                                         ; $6cd9: $f7
	ld   de, $1111                                   ; $6cda: $11 $11 $11
	rst  $38                                         ; $6cdd: $ff
	rst  $38                                         ; $6cde: $ff
	call $ffff                                       ; $6cdf: $cd $ff $ff
	pop  af                                          ; $6ce2: $f1
	ld   d, h                                        ; $6ce3: $54
	rst  JumpTable                                         ; $6ce4: $df
	rst  $38                                         ; $6ce5: $ff
	sub  c                                           ; $6ce6: $91
	ld   de, $1f11                                   ; $6ce7: $11 $11 $1f
	rst  $38                                         ; $6cea: $ff
	db   $fc                                         ; $6ceb: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cec: $cf
	rst  $38                                         ; $6ced: $ff
	rst  $38                                         ; $6cee: $ff
	inc  de                                          ; $6cef: $13
	inc  a                                           ; $6cf0: $3c
	rst  $38                                         ; $6cf1: $ff
	ld   sp, hl                                      ; $6cf2: $f9
	ld   de, $1111                                   ; $6cf3: $11 $11 $11
	rst  $38                                         ; $6cf6: $ff
	rst  $38                                         ; $6cf7: $ff
	call z, $ffff                                    ; $6cf8: $cc $ff $ff
	pop  af                                          ; $6cfb: $f1
	inc  sp                                          ; $6cfc: $33
	rst  $28                                         ; $6cfd: $ef
	rst  $38                                         ; $6cfe: $ff
	ld   [hl], c                                     ; $6cff: $71
	ld   de, $1f11                                   ; $6d00: $11 $11 $1f
	rst  $38                                         ; $6d03: $ff
	ld   hl, sp-$31                                  ; $6d04: $f8 $cf
	rst  $38                                         ; $6d06: $ff
	rst  $38                                         ; $6d07: $ff
	inc  de                                          ; $6d08: $13
	ccf                                              ; $6d09: $3f
	rst  $38                                         ; $6d0a: $ff
	di                                               ; $6d0b: $f3
	ld   de, $1111                                   ; $6d0c: $11 $11 $11
	rst  $38                                         ; $6d0f: $ff
	rst  $38                                         ; $6d10: $ff
	ld   l, a                                        ; $6d11: $6f
	rst  $38                                         ; $6d12: $ff
	rst  $38                                         ; $6d13: $ff
	pop  de                                          ; $6d14: $d1
	ld   d, e                                        ; $6d15: $53
	rst  $38                                         ; $6d16: $ff
	rst  $38                                         ; $6d17: $ff
	ld   de, $1111                                   ; $6d18: $11 $11 $11
	rst  $38                                         ; $6d1b: $ff
	rst  $38                                         ; $6d1c: $ff
	rst  $30                                         ; $6d1d: $f7
	rst  $38                                         ; $6d1e: $ff
	rst  $38                                         ; $6d1f: $ff
	pop  af                                          ; $6d20: $f1
	dec  d                                           ; $6d21: $15
	adc  a                                           ; $6d22: $8f
	rst  $38                                         ; $6d23: $ff
	add  c                                           ; $6d24: $81
	ld   de, $1f11                                   ; $6d25: $11 $11 $1f
	rst  $38                                         ; $6d28: $ff
	db   $f4                                         ; $6d29: $f4
	rst  $38                                         ; $6d2a: $ff
	rst  $38                                         ; $6d2b: $ff
	cp   $15                                         ; $6d2c: $fe $15
	ld   c, a                                        ; $6d2e: $4f
	rst  $38                                         ; $6d2f: $ff
	pop  af                                          ; $6d30: $f1
	ld   de, $1f11                                   ; $6d31: $11 $11 $1f
	rst  $38                                         ; $6d34: $ff
	db   $fd                                         ; $6d35: $fd
	ld   a, a                                        ; $6d36: $7f
	rst  $38                                         ; $6d37: $ff
	rst  $38                                         ; $6d38: $ff
	ld   de, $ff7d                                   ; $6d39: $11 $7d $ff
	pop  af                                          ; $6d3c: $f1
	ld   de, $1f11                                   ; $6d3d: $11 $11 $1f
	rst  $38                                         ; $6d40: $ff
	rst  $38                                         ; $6d41: $ff
	ccf                                              ; $6d42: $3f
	rst  $38                                         ; $6d43: $ff
	rst  $38                                         ; $6d44: $ff
	ld   de, $ff8b                                   ; $6d45: $11 $8b $ff
	ldh  a, [c]                                      ; $6d48: $f2
	ld   de, $1a11                                   ; $6d49: $11 $11 $1a
	rst  $38                                         ; $6d4c: $ff
	rst  $38                                         ; $6d4d: $ff
	ld   e, a                                        ; $6d4e: $5f
	rst  $38                                         ; $6d4f: $ff
	rst  $38                                         ; $6d50: $ff
	ld   de, $ff9b                                   ; $6d51: $11 $9b $ff
	pop  af                                          ; $6d54: $f1
	ld   de, $1f11                                   ; $6d55: $11 $11 $1f
	rst  $38                                         ; $6d58: $ff
	rst  $38                                         ; $6d59: $ff
	adc  a                                           ; $6d5a: $8f
	rst  $38                                         ; $6d5b: $ff
	db   $fc                                         ; $6d5c: $fc
	ld   de, $ffce                                   ; $6d5d: $11 $ce $ff
	pop  bc                                          ; $6d60: $c1
	ld   de, $1f11                                   ; $6d61: $11 $11 $1f
	rst  $38                                         ; $6d64: $ff
	rst  $38                                         ; $6d65: $ff
	xor  a                                           ; $6d66: $af
	rst  $38                                         ; $6d67: $ff
	ei                                               ; $6d68: $fb
	ld   [de], a                                     ; $6d69: $12
	rst  $28                                         ; $6d6a: $ef
	rst  $38                                         ; $6d6b: $ff
	sub  c                                           ; $6d6c: $91
	ld   de, $1f11                                   ; $6d6d: $11 $11 $1f
	cp   $ff                                         ; $6d70: $fe $ff
	rst  $38                                         ; $6d72: $ff
	rst  $38                                         ; $6d73: $ff
	push bc                                          ; $6d74: $c5
	dec  de                                          ; $6d75: $1b
	rst  $38                                         ; $6d76: $ff
	db   $fc                                         ; $6d77: $fc
	ld   sp, $1111                                   ; $6d78: $31 $11 $11
	rra                                              ; $6d7b: $1f
	rst  $38                                         ; $6d7c: $ff
	db   $fc                                         ; $6d7d: $fc
	rst  $38                                         ; $6d7e: $ff
	rst  $38                                         ; $6d7f: $ff
	pop  bc                                          ; $6d80: $c1
	rra                                              ; $6d81: $1f
	rst  $28                                         ; $6d82: $ef
	or   $11                                         ; $6d83: $f6 $11
	ld   de, rAUD1LEN                                   ; $6d85: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d88: $cf
	cp   $ff                                         ; $6d89: $fe $ff
	ei                                               ; $6d8b: $fb
	ld   [hl], c                                     ; $6d8c: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d8d: $cf
	rst  $38                                         ; $6d8e: $ff
	or   c                                           ; $6d8f: $b1
	ld   de, $1711                                   ; $6d90: $11 $11 $17
	rst  $38                                         ; $6d93: $ff
	rst  JumpTable                                         ; $6d94: $df
	rst  $38                                         ; $6d95: $ff
	rst  $38                                         ; $6d96: $ff
	sbc  d                                           ; $6d97: $9a
	dec  d                                           ; $6d98: $15
	rst  $38                                         ; $6d99: $ff
	rst  $38                                         ; $6d9a: $ff
	ld   de, $1111                                   ; $6d9b: $11 $11 $11
	rra                                              ; $6d9e: $1f
	ld   sp, hl                                      ; $6d9f: $f9
	rst  $38                                         ; $6da0: $ff
	rst  $38                                         ; $6da1: $ff
	rst  $30                                         ; $6da2: $f7
	or   d                                           ; $6da3: $b2
	rra                                              ; $6da4: $1f
	rst  $38                                         ; $6da5: $ff
	pop  af                                          ; $6da6: $f1
	ld   de, $1211                                   ; $6da7: $11 $11 $12
	rst  $38                                         ; $6daa: $ff
	cp   a                                           ; $6dab: $bf
	rst  $38                                         ; $6dac: $ff
	rst  $38                                         ; $6dad: $ff
	ld   l, b                                        ; $6dae: $68
	ld   h, e                                        ; $6daf: $63
	rst  $38                                         ; $6db0: $ff
	rst  $38                                         ; $6db1: $ff
	ld   b, c                                        ; $6db2: $41
	ld   de, $4f13                                   ; $6db3: $11 $13 $4f
	ei                                               ; $6db6: $fb
	rst  $38                                         ; $6db7: $ff
	rst  $38                                         ; $6db8: $ff
	db   $f4                                         ; $6db9: $f4
	ld   l, c                                        ; $6dba: $69
	ld   a, a                                        ; $6dbb: $7f
	rst  $38                                         ; $6dbc: $ff
	ldh  [c], a                                      ; $6dbd: $e2
	ld   de, $6511                                   ; $6dbe: $11 $11 $65
	rst  $38                                         ; $6dc1: $ff
	xor  a                                           ; $6dc2: $af
	rst  $38                                         ; $6dc3: $ff
	rst  $38                                         ; $6dc4: $ff
	jr   @-$72                                       ; $6dc5: $18 $8c

	rst  $38                                         ; $6dc7: $ff
	db   $fd                                         ; $6dc8: $fd
	ld   de, $1811                                   ; $6dc9: $11 $11 $18
	rst  $28                                         ; $6dcc: $ef
	xor  $ff                                         ; $6dcd: $ee $ff
	rst  $38                                         ; $6dcf: $ff
	pop  de                                          ; $6dd0: $d1
	ret                                              ; $6dd1: $c9


	rst  $38                                         ; $6dd2: $ff
	rst  $38                                         ; $6dd3: $ff
	sub  c                                           ; $6dd4: $91
	ld   de, $9f17                                   ; $6dd5: $11 $17 $9f
	push af                                          ; $6dd8: $f5
	rst  $38                                         ; $6dd9: $ff
	rst  $38                                         ; $6dda: $ff
	ldh  a, [c]                                      ; $6ddb: $f2
	ccf                                              ; $6ddc: $3f
	xor  a                                           ; $6ddd: $af
	rst  $38                                         ; $6dde: $ff
	pop  af                                          ; $6ddf: $f1
	ld   de, rAUD1LEN                                   ; $6de0: $11 $11 $ff
	db   $fd                                         ; $6de3: $fd
	rst  $28                                         ; $6de4: $ef
	rst  $38                                         ; $6de5: $ff
	ld   sp, hl                                      ; $6de6: $f9
	rra                                              ; $6de7: $1f
	sbc  $ff                                         ; $6de8: $de $ff
	db   $fc                                         ; $6dea: $fc
	ld   de, $fc11                                   ; $6deb: $11 $11 $fc
	rst  $38                                         ; $6dee: $ff
	adc  a                                           ; $6def: $8f
	rst  $38                                         ; $6df0: $ff
	db   $fd                                         ; $6df1: $fd
	dec  de                                          ; $6df2: $1b
	ld   sp, hl                                      ; $6df3: $f9
	rst  $38                                         ; $6df4: $ff
	rst  $38                                         ; $6df5: $ff
	ld   de, $fd11                                   ; $6df6: $11 $11 $fd
	rst  $38                                         ; $6df9: $ff
	ld   l, a                                        ; $6dfa: $6f
	rst  $38                                         ; $6dfb: $ff
	jp   hl                                          ; $6dfc: $e9


	ld   e, d                                        ; $6dfd: $5a
	push af                                          ; $6dfe: $f5
	rst  $38                                         ; $6dff: $ff
	rst  $38                                         ; $6e00: $ff
	ld   de, $fe11                                   ; $6e01: $11 $11 $fe
	rst  $38                                         ; $6e04: $ff
	ld   l, a                                        ; $6e05: $6f
	rst  $38                                         ; $6e06: $ff
	xor  c                                           ; $6e07: $a9
	cp   b                                           ; $6e08: $b8
	pop  af                                          ; $6e09: $f1
	rst  $28                                         ; $6e0a: $ef
	rst  $38                                         ; $6e0b: $ff
	ld   de, $fb11                                   ; $6e0c: $11 $11 $fb
	rst  $38                                         ; $6e0f: $ff
	adc  a                                           ; $6e10: $8f
	rst  $38                                         ; $6e11: $ff
	sbc  h                                           ; $6e12: $9c
	jp   hl                                          ; $6e13: $e9


	pop  af                                          ; $6e14: $f1
	rst  $38                                         ; $6e15: $ff
	rst  $38                                         ; $6e16: $ff
	ld   de, $f111                                   ; $6e17: $11 $11 $f1
	rst  $38                                         ; $6e1a: $ff
	rst  $38                                         ; $6e1b: $ff
	rst  $38                                         ; $6e1c: $ff
	sbc  a                                           ; $6e1d: $9f
	sub  $b1                                         ; $6e1e: $d6 $b1
	rst  $38                                         ; $6e20: $ff
	or   [hl]                                        ; $6e21: $b6
	ld   de, $f215                                   ; $6e22: $11 $15 $f2
	ei                                               ; $6e25: $fb
	rst  $38                                         ; $6e26: $ff
	rst  $38                                         ; $6e27: $ff
	rst  $38                                         ; $6e28: $ff
	ld   d, l                                        ; $6e29: $55
	ld   hl, $51f9                                   ; $6e2a: $21 $f9 $51
	ld   de, $1f1f                                   ; $6e2d: $11 $1f $1f
	db   $fd                                         ; $6e30: $fd
	rst  $38                                         ; $6e31: $ff
	rst  JumpTable                                         ; $6e32: $df
	rst  $38                                         ; $6e33: $ff
	rla                                              ; $6e34: $17
	rra                                              ; $6e35: $1f
	pop  af                                          ; $6e36: $f1
	ld   de, $1911                                   ; $6e37: $11 $11 $19
	rra                                              ; $6e3a: $1f
	rst  $38                                         ; $6e3b: $ff
	rst  $38                                         ; $6e3c: $ff
	rst  $38                                         ; $6e3d: $ff
	pop  af                                          ; $6e3e: $f1
	inc  de                                          ; $6e3f: $13
	xor  a                                           ; $6e40: $af
	ld   de, $1111                                   ; $6e41: $11 $11 $11
	pop  af                                          ; $6e44: $f1
	rst  $38                                         ; $6e45: $ff
	rst  $38                                         ; $6e46: $ff
	db   $fc                                         ; $6e47: $fc
	rst  $38                                         ; $6e48: $ff
	ld   sp, $f771                                   ; $6e49: $31 $71 $f7
	ld   de, $1f11                                   ; $6e4c: $11 $11 $1f
	rra                                              ; $6e4f: $1f
	ld   a, [$cfff]                                  ; $6e50: $fa $ff $cf
	rst  $30                                         ; $6e53: $f7
	inc  e                                           ; $6e54: $1c
	rra                                              ; $6e55: $1f
	and  c                                           ; $6e56: $a1
	ld   de, $f111                                   ; $6e57: $11 $11 $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e5a: $cf
	xor  a                                           ; $6e5b: $af
	ld   sp, hl                                      ; $6e5c: $f9
	rst  $38                                         ; $6e5d: $ff
	ld   d, c                                        ; $6e5e: $51
	and  c                                           ; $6e5f: $a1
	ld   hl, sp+$11                                  ; $6e60: $f8 $11
	ld   de, $1f1f                                   ; $6e62: $11 $1f $1f
	db   $fd                                         ; $6e65: $fd
	rst  $38                                         ; $6e66: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e67: $cf
	pop  af                                          ; $6e68: $f1
	inc  e                                           ; $6e69: $1c
	ccf                                              ; $6e6a: $3f
	ld   de, $1311                                   ; $6e6b: $11 $11 $13
	ld   d, c                                        ; $6e6e: $51
	rst  $38                                         ; $6e6f: $ff
	rst  $38                                         ; $6e70: $ff
	rst  $38                                         ; $6e71: $ff
	rst  $38                                         ; $6e72: $ff
	dec  e                                           ; $6e73: $1d
	add  l                                           ; $6e74: $85
	pop  de                                          ; $6e75: $d1
	ld   de, $f111                                   ; $6e76: $11 $11 $f1
	rst  $38                                         ; $6e79: $ff
	rst  $38                                         ; $6e7a: $ff
	rst  $38                                         ; $6e7b: $ff
	rst  $38                                         ; $6e7c: $ff
	ld   de, wNumStructBytesForCurrAnimSpriteSpec                                   ; $6e7d: $11 $f1 $c1
	ld   de, $6111                                   ; $6e80: $11 $11 $61
	rra                                              ; $6e83: $1f
	rst  $38                                         ; $6e84: $ff
	rst  $38                                         ; $6e85: $ff
	rst  $38                                         ; $6e86: $ff
	pop  af                                          ; $6e87: $f1
	db   $f4                                         ; $6e88: $f4
	ld   bc, $1111                                   ; $6e89: $01 $11 $11
	ld   [hl], c                                     ; $6e8c: $71
	rra                                              ; $6e8d: $1f
	rst  $38                                         ; $6e8e: $ff
	rst  $38                                         ; $6e8f: $ff
	rst  $38                                         ; $6e90: $ff
	pop  af                                          ; $6e91: $f1
	ldh  a, [c]                                      ; $6e92: $f2
	ld   sp, $1111                                   ; $6e93: $31 $11 $11
	ld   hl, $ffbf                                   ; $6e96: $21 $bf $ff
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	rst  $30                                         ; $6e9b: $f7
	pop  af                                          ; $6e9c: $f1
	ld   h, c                                        ; $6e9d: $61
	ld   de, $1111                                   ; $6e9e: $11 $11 $11
	rst  $38                                         ; $6ea1: $ff
	rst  $38                                         ; $6ea2: $ff
	rst  $38                                         ; $6ea3: $ff
	rst  $38                                         ; $6ea4: $ff
	cp   a                                           ; $6ea5: $bf
	pop  af                                          ; $6ea6: $f1
	ld   sp, $1111                                   ; $6ea7: $31 $11 $11
	ld   de, $ffff                                   ; $6eaa: $11 $ff $ff
	rst  $38                                         ; $6ead: $ff
	rst  $38                                         ; $6eae: $ff
	rst  $28                                         ; $6eaf: $ef
	ld   de, $1111                                   ; $6eb0: $11 $11 $11
	ld   de, $ff1f                                   ; $6eb3: $11 $1f $ff
	rst  $38                                         ; $6eb6: $ff
	rst  $38                                         ; $6eb7: $ff
	rst  $38                                         ; $6eb8: $ff
	cp   $11                                         ; $6eb9: $fe $11
	ld   de, $1111                                   ; $6ebb: $11 $11 $11
	rra                                              ; $6ebe: $1f
	rst  $38                                         ; $6ebf: $ff
	rst  $38                                         ; $6ec0: $ff
	rst  $38                                         ; $6ec1: $ff
	rst  $38                                         ; $6ec2: $ff
	pop  af                                          ; $6ec3: $f1
	ld   hl, $1111                                   ; $6ec4: $21 $11 $11
	ld   de, $ffff                                   ; $6ec7: $11 $ff $ff
	rst  $38                                         ; $6eca: $ff
	rst  $38                                         ; $6ecb: $ff
	rst  $38                                         ; $6ecc: $ff
	ld   h, c                                        ; $6ecd: $61
	ld   de, $1111                                   ; $6ece: $11 $11 $11
	rra                                              ; $6ed1: $1f
	rst  $38                                         ; $6ed2: $ff
	rst  $38                                         ; $6ed3: $ff
	rst  $38                                         ; $6ed4: $ff
	rst  $38                                         ; $6ed5: $ff
	rst  $38                                         ; $6ed6: $ff
	ld   [hl-], a                                    ; $6ed7: $32
	ld   de, $1111                                   ; $6ed8: $11 $11 $11
	rra                                              ; $6edb: $1f
	rst  $38                                         ; $6edc: $ff
	rst  $38                                         ; $6edd: $ff
	rst  $38                                         ; $6ede: $ff
	rst  $38                                         ; $6edf: $ff
	db   $f4                                         ; $6ee0: $f4
	sub  c                                           ; $6ee1: $91
	ld   de, $1111                                   ; $6ee2: $11 $11 $11
	push hl                                          ; $6ee5: $e5
	rst  $38                                         ; $6ee6: $ff
	rst  $38                                         ; $6ee7: $ff
	rst  $38                                         ; $6ee8: $ff
	rst  $38                                         ; $6ee9: $ff
	ld   e, [hl]                                     ; $6eea: $5e
	ld   de, $1111                                   ; $6eeb: $11 $11 $11
	ld   a, [de]                                     ; $6eee: $1a
	rra                                              ; $6eef: $1f
	rst  $38                                         ; $6ef0: $ff
	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	ld   a, [$11f1]                                  ; $6ef3: $fa $f1 $11
	ld   de, $1111                                   ; $6ef6: $11 $11 $11
	rst  $38                                         ; $6ef9: $ff
	rst  $38                                         ; $6efa: $ff
	rst  $38                                         ; $6efb: $ff
	rst  $38                                         ; $6efc: $ff
	rst  JumpTable                                         ; $6efd: $df
	ld   hl, $1111                                   ; $6efe: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $6f01: $11 $11 $ff
	rst  $38                                         ; $6f04: $ff
	rst  $38                                         ; $6f05: $ff
	rst  $38                                         ; $6f06: $ff
	cp   $11                                         ; $6f07: $fe $11
	ld   de, $1111                                   ; $6f09: $11 $11 $11
	rra                                              ; $6f0c: $1f
	rst  $38                                         ; $6f0d: $ff
	rst  $38                                         ; $6f0e: $ff
	rst  $38                                         ; $6f0f: $ff
	rst  $38                                         ; $6f10: $ff
	pop  af                                          ; $6f11: $f1
	ld   de, $1111                                   ; $6f12: $11 $11 $11
	ld   de, $ff7f                                   ; $6f15: $11 $7f $ff
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	rst  $38                                         ; $6f1a: $ff
	ld   d, c                                        ; $6f1b: $51
	ld   de, $1111                                   ; $6f1c: $11 $11 $11
	ld   de, $ffff                                   ; $6f1f: $11 $ff $ff
	rst  $38                                         ; $6f22: $ff
	rst  $38                                         ; $6f23: $ff
	rst  $38                                         ; $6f24: $ff
	ld   de, $1111                                   ; $6f25: $11 $11 $11
	ld   de, $ff1a                                   ; $6f28: $11 $1a $ff
	rst  $38                                         ; $6f2b: $ff
	rst  $38                                         ; $6f2c: $ff
	rst  $38                                         ; $6f2d: $ff
	di                                               ; $6f2e: $f3
	ld   de, $1111                                   ; $6f2f: $11 $11 $11
	ld   de, $df1e                                   ; $6f32: $11 $1e $df
	rst  $38                                         ; $6f35: $ff
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	di                                               ; $6f38: $f3
	ld   de, $1111                                   ; $6f39: $11 $11 $11
	ld   de, $ff93                                   ; $6f3c: $11 $93 $ff
	rst  $38                                         ; $6f3f: $ff
	rst  $38                                         ; $6f40: $ff
	rst  $38                                         ; $6f41: $ff
	add  a                                           ; $6f42: $87
	ld   de, $1111                                   ; $6f43: $11 $11 $11
	ld   de, $ff31                                   ; $6f46: $11 $31 $ff
	rst  $38                                         ; $6f49: $ff
	rst  $38                                         ; $6f4a: $ff
	rst  $38                                         ; $6f4b: $ff
	pop  de                                          ; $6f4c: $d1
	ld   de, $1111                                   ; $6f4d: $11 $11 $11
	inc  de                                          ; $6f50: $13
	ld   a, [de]                                     ; $6f51: $1a
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	rst  $38                                         ; $6f54: $ff
	rst  $38                                         ; $6f55: $ff
	pop  af                                          ; $6f56: $f1
	ld   de, $1111                                   ; $6f57: $11 $11 $11
	ld   de, $ff1f                                   ; $6f5a: $11 $1f $ff
	rst  $38                                         ; $6f5d: $ff
	rst  $38                                         ; $6f5e: $ff
	rst  $38                                         ; $6f5f: $ff
	and  c                                           ; $6f60: $a1
	ld   de, $1111                                   ; $6f61: $11 $11 $11
	ld   de, $ff1f                                   ; $6f64: $11 $1f $ff
	rst  $38                                         ; $6f67: $ff
	rst  $38                                         ; $6f68: $ff
	rst  $38                                         ; $6f69: $ff
	ld   [hl], h                                     ; $6f6a: $74
	ld   de, $1111                                   ; $6f6b: $11 $11 $11
	ld   de, $ff3f                                   ; $6f6e: $11 $3f $ff
	rst  $38                                         ; $6f71: $ff
	rst  $38                                         ; $6f72: $ff
	rst  $38                                         ; $6f73: $ff
	ld   l, c                                        ; $6f74: $69
	ld   de, $1111                                   ; $6f75: $11 $11 $11
	ld   de, $ff9f                                   ; $6f78: $11 $9f $ff
	rst  $38                                         ; $6f7b: $ff
	rst  $38                                         ; $6f7c: $ff
	rst  $38                                         ; $6f7d: $ff
	jp   z, $1111                                    ; $6f7e: $ca $11 $11

	ld   de, $af11                                   ; $6f81: $11 $11 $af
	rst  $38                                         ; $6f84: $ff
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	cp   $f9                                         ; $6f87: $fe $f9
	ld   de, $1111                                   ; $6f89: $11 $11 $11
	ld   de, $ffdf                                   ; $6f8c: $11 $df $ff
	rst  $38                                         ; $6f8f: $ff
	rst  $38                                         ; $6f90: $ff
	rst  $38                                         ; $6f91: $ff
	push af                                          ; $6f92: $f5
	ld   de, $1111                                   ; $6f93: $11 $11 $11
	ld   de, $ffcf                                   ; $6f96: $11 $cf $ff
	rst  $38                                         ; $6f99: $ff
	rst  $38                                         ; $6f9a: $ff
	rst  $38                                         ; $6f9b: $ff
	pop  af                                          ; $6f9c: $f1
	ld   de, $1111                                   ; $6f9d: $11 $11 $11
	ld   [de], a                                     ; $6fa0: $12
	sbc  d                                           ; $6fa1: $9a
	rst  $38                                         ; $6fa2: $ff
	rst  $38                                         ; $6fa3: $ff
	rst  $38                                         ; $6fa4: $ff
	rst  $38                                         ; $6fa5: $ff
	pop  hl                                          ; $6fa6: $e1
	inc  de                                          ; $6fa7: $13
	ld   de, $1311                                   ; $6fa8: $11 $11 $13
	ld   l, c                                        ; $6fab: $69
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	rst  $38                                         ; $6fae: $ff
	rst  $38                                         ; $6faf: $ff
	and  a                                           ; $6fb0: $a7
	ld   [hl+], a                                    ; $6fb1: $22
	ld   de, $1211                                   ; $6fb2: $11 $11 $12
	ld   c, c                                        ; $6fb5: $49
	rst  $38                                         ; $6fb6: $ff
	rst  $38                                         ; $6fb7: $ff
	rst  $38                                         ; $6fb8: $ff
	rst  $38                                         ; $6fb9: $ff
	ret                                              ; $6fba: $c9


	dec  h                                           ; $6fbb: $25
	ld   de, $1531                                   ; $6fbc: $11 $31 $15
	scf                                              ; $6fbf: $37
	db   $fd                                         ; $6fc0: $fd
	rst  $28                                         ; $6fc1: $ef
	rst  JumpTable                                         ; $6fc2: $df
	cp   $ca                                         ; $6fc3: $fe $ca
	ld   d, [hl]                                     ; $6fc5: $56
	ld   hl, $1631                                   ; $6fc6: $21 $31 $16
	ld   h, $fb                                      ; $6fc9: $26 $fb
	cp   a                                           ; $6fcb: $bf
	adc  $fd                                         ; $6fcc: $ce $fd
	call $8166                                       ; $6fce: $cd $66 $81
	inc  h                                           ; $6fd1: $24
	ld   [de], a                                     ; $6fd2: $12
	ld   h, l                                        ; $6fd3: $65
	ld   a, e                                        ; $6fd4: $7b
	adc  e                                           ; $6fd5: $8b
	cp   h                                           ; $6fd6: $bc
	cp   l                                           ; $6fd7: $bd
	call c, $87ca                                    ; $6fd8: $dc $ca $87
	ld   d, e                                        ; $6fdb: $53
	ld   d, d                                        ; $6fdc: $52
	scf                                              ; $6fdd: $37
	ld   d, l                                        ; $6fde: $55
	xor  b                                           ; $6fdf: $a8
	ld   l, l                                        ; $6fe0: $6d
	xor  e                                           ; $6fe1: $ab
	db   $fc                                         ; $6fe2: $fc
	xor  [hl]                                        ; $6fe3: $ae
	sub  a                                           ; $6fe4: $97
	or   h                                           ; $6fe5: $b4
	ld   b, a                                        ; $6fe6: $47
	inc  [hl]                                        ; $6fe7: $34
	ld   h, h                                        ; $6fe8: $64
	ld   d, a                                        ; $6fe9: $57
	ld   e, b                                        ; $6fea: $58
	cp   c                                           ; $6feb: $b9
	call $c9bb                                       ; $6fec: $cd $bb $c9
	sbc  b                                           ; $6fef: $98
	ld   h, [hl]                                     ; $6ff0: $66
	ld   h, h                                        ; $6ff1: $64
	ld   d, l                                        ; $6ff2: $55
	ld   b, l                                        ; $6ff3: $45
	ld   h, a                                        ; $6ff4: $67
	adc  d                                           ; $6ff5: $8a
	xor  d                                           ; $6ff6: $aa
	cp   d                                           ; $6ff7: $ba
	xor  e                                           ; $6ff8: $ab
	adc  b                                           ; $6ff9: $88
	ld   [hl], a                                     ; $6ffa: $77
	ld   h, l                                        ; $6ffb: $65
	ld   d, l                                        ; $6ffc: $55
	ld   d, [hl]                                     ; $6ffd: $56
	ld   [hl], a                                     ; $6ffe: $77
	adc  b                                           ; $6fff: $88
	sbc  d                                           ; $7000: $9a
	xor  d                                           ; $7001: $aa
	xor  d                                           ; $7002: $aa
	sbc  c                                           ; $7003: $99
	adc  b                                           ; $7004: $88
	ld   [hl], a                                     ; $7005: $77
	halt                                             ; $7006: $76
	ld   [hl], a                                     ; $7007: $77
	ld   [hl], a                                     ; $7008: $77
	ld   a, b                                        ; $7009: $78
	adc  b                                           ; $700a: $88
	sbc  b                                           ; $700b: $98
	adc  c                                           ; $700c: $89
	adc  b                                           ; $700d: $88
	adc  c                                           ; $700e: $89
	ld   a, b                                        ; $700f: $78
	add  a                                           ; $7010: $87
	ld   [hl], a                                     ; $7011: $77
	ld   [hl], a                                     ; $7012: $77
	add  a                                           ; $7013: $87
	ld   [hl], a                                     ; $7014: $77
	ld   [hl], a                                     ; $7015: $77
	ld   a, b                                        ; $7016: $78
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	ld   [hl], a                                     ; $701e: $77
	ld   [hl], a                                     ; $701f: $77
	ld   [hl], a                                     ; $7020: $77
	ld   a, b                                        ; $7021: $78
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  b                                           ; $7024: $88
	adc  b                                           ; $7025: $88
	adc  b                                           ; $7026: $88
	adc  b                                           ; $7027: $88
	adc  b                                           ; $7028: $88
	adc  b                                           ; $7029: $88
	adc  b                                           ; $702a: $88
	adc  b                                           ; $702b: $88
	adc  b                                           ; $702c: $88
	adc  b                                           ; $702d: $88
	adc  b                                           ; $702e: $88
	adc  b                                           ; $702f: $88
	adc  b                                           ; $7030: $88
	adc  b                                           ; $7031: $88
	adc  b                                           ; $7032: $88
	adc  b                                           ; $7033: $88
	adc  b                                           ; $7034: $88
	adc  b                                           ; $7035: $88
	adc  b                                           ; $7036: $88
	adc  b                                           ; $7037: $88
	adc  b                                           ; $7038: $88
	adc  b                                           ; $7039: $88
	adc  b                                           ; $703a: $88
	adc  b                                           ; $703b: $88
	adc  b                                           ; $703c: $88
	adc  b                                           ; $703d: $88
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
	adc  b                                           ; $7049: $88
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
	adc  b                                           ; $7056: $88
	adc  b                                           ; $7057: $88
	adc  b                                           ; $7058: $88
	adc  b                                           ; $7059: $88
	adc  b                                           ; $705a: $88
	adc  b                                           ; $705b: $88
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
	adc  b                                           ; $7066: $88
	adc  b                                           ; $7067: $88
	adc  b                                           ; $7068: $88
	adc  b                                           ; $7069: $88
	adc  b                                           ; $706a: $88
	adc  b                                           ; $706b: $88
	adc  b                                           ; $706c: $88
	adc  b                                           ; $706d: $88
	adc  b                                           ; $706e: $88
	adc  b                                           ; $706f: $88
	adc  b                                           ; $7070: $88
	adc  b                                           ; $7071: $88
	adc  b                                           ; $7072: $88
	adc  b                                           ; $7073: $88
	adc  b                                           ; $7074: $88
	adc  b                                           ; $7075: $88
	adc  b                                           ; $7076: $88
	adc  b                                           ; $7077: $88
	adc  b                                           ; $7078: $88
	adc  b                                           ; $7079: $88
	adc  b                                           ; $707a: $88
	adc  b                                           ; $707b: $88
	adc  b                                           ; $707c: $88
	adc  b                                           ; $707d: $88
	adc  b                                           ; $707e: $88
	adc  b                                           ; $707f: $88
	adc  b                                           ; $7080: $88
	adc  b                                           ; $7081: $88
	adc  b                                           ; $7082: $88
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
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	adc  b                                           ; $70bd: $88
	adc  b                                           ; $70be: $88
	adc  b                                           ; $70bf: $88
	adc  b                                           ; $70c0: $88
	adc  b                                           ; $70c1: $88
	adc  b                                           ; $70c2: $88
	adc  b                                           ; $70c3: $88
	adc  b                                           ; $70c4: $88
	adc  b                                           ; $70c5: $88
	adc  b                                           ; $70c6: $88
	adc  b                                           ; $70c7: $88
	adc  b                                           ; $70c8: $88
	adc  b                                           ; $70c9: $88
	adc  b                                           ; $70ca: $88
	adc  b                                           ; $70cb: $88
	adc  b                                           ; $70cc: $88
	adc  b                                           ; $70cd: $88
	adc  b                                           ; $70ce: $88
	adc  b                                           ; $70cf: $88
	adc  b                                           ; $70d0: $88
	adc  b                                           ; $70d1: $88
	adc  b                                           ; $70d2: $88
	adc  b                                           ; $70d3: $88
	adc  b                                           ; $70d4: $88
	adc  b                                           ; $70d5: $88
	adc  b                                           ; $70d6: $88
	adc  b                                           ; $70d7: $88
	adc  b                                           ; $70d8: $88
	adc  b                                           ; $70d9: $88
	adc  b                                           ; $70da: $88
	adc  b                                           ; $70db: $88
	adc  b                                           ; $70dc: $88
	adc  b                                           ; $70dd: $88
	adc  b                                           ; $70de: $88
	adc  b                                           ; $70df: $88
	adc  b                                           ; $70e0: $88
	adc  b                                           ; $70e1: $88
	adc  b                                           ; $70e2: $88
	adc  b                                           ; $70e3: $88
	adc  b                                           ; $70e4: $88
	adc  b                                           ; $70e5: $88
	adc  b                                           ; $70e6: $88
	adc  b                                           ; $70e7: $88
	adc  b                                           ; $70e8: $88
	adc  b                                           ; $70e9: $88
	adc  b                                           ; $70ea: $88
	adc  b                                           ; $70eb: $88
	adc  b                                           ; $70ec: $88
	adc  b                                           ; $70ed: $88
	adc  b                                           ; $70ee: $88
	adc  b                                           ; $70ef: $88
	adc  b                                           ; $70f0: $88
	adc  b                                           ; $70f1: $88
	adc  b                                           ; $70f2: $88
	adc  b                                           ; $70f3: $88
	adc  b                                           ; $70f4: $88
	adc  b                                           ; $70f5: $88
	adc  b                                           ; $70f6: $88
	adc  b                                           ; $70f7: $88
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	adc  b                                           ; $70fa: $88
	adc  b                                           ; $70fb: $88
	adc  b                                           ; $70fc: $88
	adc  b                                           ; $70fd: $88
	adc  b                                           ; $70fe: $88
	adc  b                                           ; $70ff: $88
	adc  b                                           ; $7100: $88
	adc  b                                           ; $7101: $88
	adc  b                                           ; $7102: $88
	adc  b                                           ; $7103: $88
	adc  b                                           ; $7104: $88
	adc  b                                           ; $7105: $88
	adc  b                                           ; $7106: $88
	adc  b                                           ; $7107: $88
	adc  b                                           ; $7108: $88
	adc  b                                           ; $7109: $88
	adc  b                                           ; $710a: $88
	adc  b                                           ; $710b: $88
	adc  b                                           ; $710c: $88
	adc  b                                           ; $710d: $88
	adc  b                                           ; $710e: $88
	adc  b                                           ; $710f: $88
	adc  b                                           ; $7110: $88
	adc  b                                           ; $7111: $88
	adc  b                                           ; $7112: $88
	adc  b                                           ; $7113: $88
	adc  b                                           ; $7114: $88
	adc  b                                           ; $7115: $88
	adc  b                                           ; $7116: $88
	adc  b                                           ; $7117: $88
	adc  b                                           ; $7118: $88
	adc  b                                           ; $7119: $88
	adc  b                                           ; $711a: $88
	adc  b                                           ; $711b: $88
	adc  b                                           ; $711c: $88
	adc  b                                           ; $711d: $88
	adc  b                                           ; $711e: $88
	adc  b                                           ; $711f: $88
	adc  b                                           ; $7120: $88
	adc  b                                           ; $7121: $88
	adc  b                                           ; $7122: $88
	adc  b                                           ; $7123: $88
	adc  b                                           ; $7124: $88
	add  a                                           ; $7125: $87
	sbc  b                                           ; $7126: $98
	ld   a, b                                        ; $7127: $78
	adc  b                                           ; $7128: $88
	sbc  b                                           ; $7129: $98
	ld   a, c                                        ; $712a: $79
	ld   a, b                                        ; $712b: $78
	sub  a                                           ; $712c: $97
	adc  b                                           ; $712d: $88
	adc  c                                           ; $712e: $89
	ld   a, b                                        ; $712f: $78
	adc  c                                           ; $7130: $89
	add  a                                           ; $7131: $87
	adc  b                                           ; $7132: $88
	adc  b                                           ; $7133: $88
	adc  c                                           ; $7134: $89
	add  a                                           ; $7135: $87
	sbc  b                                           ; $7136: $98
	adc  b                                           ; $7137: $88
	ld   a, b                                        ; $7138: $78
	sub  a                                           ; $7139: $97
	adc  c                                           ; $713a: $89
	ld   a, c                                        ; $713b: $79
	adc  b                                           ; $713c: $88
	ld   a, c                                        ; $713d: $79
	sub  a                                           ; $713e: $97
	sbc  c                                           ; $713f: $99
	ld   a, b                                        ; $7140: $78
	adc  b                                           ; $7141: $88
	sbc  c                                           ; $7142: $99
	ld   a, b                                        ; $7143: $78
	adc  b                                           ; $7144: $88
	add  a                                           ; $7145: $87
	sub  a                                           ; $7146: $97
	add  a                                           ; $7147: $87
	ld   a, d                                        ; $7148: $7a
	ld   a, c                                        ; $7149: $79
	xor  b                                           ; $714a: $a8
	add  a                                           ; $714b: $87
	add  a                                           ; $714c: $87
	sbc  b                                           ; $714d: $98
	add  a                                           ; $714e: $87
	ld   [hl], a                                     ; $714f: $77
	ld   [hl], a                                     ; $7150: $77
	ld   [hl], a                                     ; $7151: $77
	adc  b                                           ; $7152: $88
	ld   l, c                                        ; $7153: $69
	sbc  b                                           ; $7154: $98
	xor  e                                           ; $7155: $ab
	sub  a                                           ; $7156: $97
	xor  b                                           ; $7157: $a8
	sub  a                                           ; $7158: $97
	ld   a, b                                        ; $7159: $78
	add  a                                           ; $715a: $87
	halt                                             ; $715b: $76
	ld   l, b                                        ; $715c: $68
	ld   h, a                                        ; $715d: $67
	add  a                                           ; $715e: $87
	sbc  b                                           ; $715f: $98
	adc  c                                           ; $7160: $89
	xor  c                                           ; $7161: $a9
	sub  a                                           ; $7162: $97
	adc  b                                           ; $7163: $88
	adc  b                                           ; $7164: $88
	adc  b                                           ; $7165: $88
	ld   l, b                                        ; $7166: $68
	ld   h, a                                        ; $7167: $67
	sbc  b                                           ; $7168: $98
	ld   a, c                                        ; $7169: $79
	sub  a                                           ; $716a: $97
	sub  a                                           ; $716b: $97
	adc  d                                           ; $716c: $8a
	ld   [hl], a                                     ; $716d: $77
	add  [hl]                                        ; $716e: $86
	adc  b                                           ; $716f: $88
	ld   a, b                                        ; $7170: $78
	sub  a                                           ; $7171: $97
	sub  a                                           ; $7172: $97
	ld   a, b                                        ; $7173: $78
	ld   a, b                                        ; $7174: $78
	sub  a                                           ; $7175: $97
	adc  c                                           ; $7176: $89
	add  a                                           ; $7177: $87
	ld   a, c                                        ; $7178: $79
	ld   a, c                                        ; $7179: $79
	add  a                                           ; $717a: $87
	sub  a                                           ; $717b: $97
	sbc  c                                           ; $717c: $99
	add  a                                           ; $717d: $87
	sbc  b                                           ; $717e: $98
	ld   a, c                                        ; $717f: $79
	ld   l, b                                        ; $7180: $68
	add  a                                           ; $7181: $87
	adc  b                                           ; $7182: $88
	add  [hl]                                        ; $7183: $86
	sbc  b                                           ; $7184: $98
	ld   a, d                                        ; $7185: $7a
	ld   a, b                                        ; $7186: $78
	adc  c                                           ; $7187: $89
	ld   a, c                                        ; $7188: $79
	ld   [hl], a                                     ; $7189: $77
	sub  l                                           ; $718a: $95
	sbc  b                                           ; $718b: $98
	ld   e, b                                        ; $718c: $58
	add  a                                           ; $718d: $87
	add  a                                           ; $718e: $87
	ld   a, d                                        ; $718f: $7a
	sub  a                                           ; $7190: $97
	adc  b                                           ; $7191: $88
	adc  c                                           ; $7192: $89
	xor  b                                           ; $7193: $a8
	adc  h                                           ; $7194: $8c
	ld   a, c                                        ; $7195: $79
	add  l                                           ; $7196: $85
	and  [hl]                                        ; $7197: $a6
	ld   a, b                                        ; $7198: $78
	ld   a, b                                        ; $7199: $78
	ld   [hl], a                                     ; $719a: $77
	ld   l, c                                        ; $719b: $69
	ld   a, c                                        ; $719c: $79
	ld   [hl], a                                     ; $719d: $77
	or   [hl]                                        ; $719e: $b6
	sbc  c                                           ; $719f: $99
	ld   a, c                                        ; $71a0: $79
	ld   [hl], a                                     ; $71a1: $77
	add  a                                           ; $71a2: $87
	ld   a, c                                        ; $71a3: $79
	ld   a, b                                        ; $71a4: $78
	or   a                                           ; $71a5: $b7
	adc  e                                           ; $71a6: $8b
	ld   l, b                                        ; $71a7: $68
	and  a                                           ; $71a8: $a7
	sbc  c                                           ; $71a9: $99
	sbc  b                                           ; $71aa: $98
	sub  a                                           ; $71ab: $97
	sbc  b                                           ; $71ac: $98
	ld   a, d                                        ; $71ad: $7a
	ld   a, c                                        ; $71ae: $79
	sub  a                                           ; $71af: $97
	ld   a, b                                        ; $71b0: $78
	ld   l, b                                        ; $71b1: $68
	ld   [hl], a                                     ; $71b2: $77
	halt                                             ; $71b3: $76
	add  [hl]                                        ; $71b4: $86
	sub  a                                           ; $71b5: $97
	sub  a                                           ; $71b6: $97
	sbc  b                                           ; $71b7: $98
	ld   a, d                                        ; $71b8: $7a
	ld   a, c                                        ; $71b9: $79
	adc  b                                           ; $71ba: $88
	sub  a                                           ; $71bb: $97
	sbc  b                                           ; $71bc: $98
	add  a                                           ; $71bd: $87
	add  a                                           ; $71be: $87
	adc  c                                           ; $71bf: $89
	ld   a, c                                        ; $71c0: $79
	adc  b                                           ; $71c1: $88
	ld   a, d                                        ; $71c2: $7a
	sub  [hl]                                        ; $71c3: $96
	ret  z                                           ; $71c4: $c8

	ld   a, c                                        ; $71c5: $79
	ld   a, b                                        ; $71c6: $78
	add  [hl]                                        ; $71c7: $86
	ld   [hl], a                                     ; $71c8: $77
	ld   b, a                                        ; $71c9: $47
	ld   [hl], l                                     ; $71ca: $75
	sbc  b                                           ; $71cb: $98
	ld   a, d                                        ; $71cc: $7a
	adc  d                                           ; $71cd: $8a
	xor  c                                           ; $71ce: $a9
	xor  h                                           ; $71cf: $ac
	sbc  b                                           ; $71d0: $98
	and  l                                           ; $71d1: $a5
	ld   h, [hl]                                     ; $71d2: $66
	inc  [hl]                                        ; $71d3: $34
	ld   h, [hl]                                     ; $71d4: $66
	ld   c, e                                        ; $71d5: $4b
	ld   a, c                                        ; $71d6: $79
	xor  b                                           ; $71d7: $a8
	db   $db                                         ; $71d8: $db
	db   $dd                                         ; $71d9: $dd
	jp   z, $138b                                    ; $71da: $ca $8b $13

	ld   b, c                                        ; $71dd: $41
	ld   [hl+], a                                    ; $71de: $22
	ld   d, $99                                      ; $71df: $16 $99
	xor  a                                           ; $71e1: $af
	rst  JumpTable                                         ; $71e2: $df
	rst  $38                                         ; $71e3: $ff
	rst  $38                                         ; $71e4: $ff
	rst  ToBoot                                         ; $71e5: $c7
	ld   b, h                                        ; $71e6: $44
	ld   de, $1411                                   ; $71e7: $11 $11 $14
	ld   e, c                                        ; $71ea: $59
	cp   $ff                                         ; $71eb: $fe $ff
	rst  $38                                         ; $71ed: $ff
	rst  $38                                         ; $71ee: $ff
	cp   c                                           ; $71ef: $b9
	ld   de, $1111                                   ; $71f0: $11 $11 $11
	inc  d                                           ; $71f3: $14
	dec  e                                           ; $71f4: $1d
	ei                                               ; $71f5: $fb
	rst  $38                                         ; $71f6: $ff
	rst  $38                                         ; $71f7: $ff
	cp   $da                                         ; $71f8: $fe $da
	ld   de, $1111                                   ; $71fa: $11 $11 $11
	inc  de                                          ; $71fd: $13
	ld   l, $fb                                      ; $71fe: $2e $fb
	rst  $38                                         ; $7200: $ff
	rst  $28                                         ; $7201: $ef
	db   $fd                                         ; $7202: $fd
	call c, $1111                                    ; $7203: $dc $11 $11
	ld   de, $2f14                                   ; $7206: $11 $14 $2f
	db   $fc                                         ; $7209: $fc
	rst  $38                                         ; $720a: $ff
	rst  $38                                         ; $720b: $ff
	ei                                               ; $720c: $fb
	ld   [$1112], a                                  ; $720d: $ea $12 $11
	ld   de, $3f13                                   ; $7210: $11 $13 $3f
	cp   $ff                                         ; $7213: $fe $ff
	rst  $38                                         ; $7215: $ff
	db   $fc                                         ; $7216: $fc
	sub  $11                                         ; $7217: $d6 $11
	ld   de, $6111                                   ; $7219: $11 $11 $61
	ld   a, a                                        ; $721c: $7f
	rst  $28                                         ; $721d: $ef
	rst  $38                                         ; $721e: $ff
	rst  $38                                         ; $721f: $ff
	ei                                               ; $7220: $fb
	jp   $1111                                       ; $7221: $c3 $11 $11


	ld   de, $ef61                                   ; $7224: $11 $61 $ef
	rst  $28                                         ; $7227: $ef
	rst  $38                                         ; $7228: $ff
	rst  $38                                         ; $7229: $ff
	ld   a, [$1191]                                  ; $722a: $fa $91 $11
	ld   de, $1415                                   ; $722d: $11 $15 $14
	rst  $38                                         ; $7230: $ff
	rst  $38                                         ; $7231: $ff
	rst  $38                                         ; $7232: $ff
	rst  $38                                         ; $7233: $ff
	ld   hl, sp+$51                                  ; $7234: $f8 $51
	ld   de, $1511                                   ; $7236: $11 $11 $15
	rra                                              ; $7239: $1f
	rst  $38                                         ; $723a: $ff
	rst  $38                                         ; $723b: $ff
	rst  $38                                         ; $723c: $ff
	rst  $38                                         ; $723d: $ff
	and  a                                           ; $723e: $a7
	ld   de, $1111                                   ; $723f: $11 $11 $11
	ld   d, c                                        ; $7242: $51
	adc  a                                           ; $7243: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7244: $cf
	rst  $38                                         ; $7245: $ff
	rst  $38                                         ; $7246: $ff
	rst  $38                                         ; $7247: $ff
	add  e                                           ; $7248: $83
	ld   de, $1111                                   ; $7249: $11 $11 $11
	ld   b, c                                        ; $724c: $41
	db   $fd                                         ; $724d: $fd
	rst  $38                                         ; $724e: $ff
	rst  $38                                         ; $724f: $ff
	rst  $38                                         ; $7250: $ff
	ld   a, [$1121]                                  ; $7251: $fa $21 $11
	ld   de, $1d16                                   ; $7254: $11 $16 $1d
	ei                                               ; $7257: $fb
	rst  $38                                         ; $7258: $ff
	rst  $38                                         ; $7259: $ff
	rst  $38                                         ; $725a: $ff
	db   $e4                                         ; $725b: $e4
	ld   de, $1111                                   ; $725c: $11 $11 $11
	ld   de, $cf5f                                   ; $725f: $11 $5f $cf
	rst  $38                                         ; $7262: $ff
	rst  $38                                         ; $7263: $ff
	rst  $38                                         ; $7264: $ff
	ld   d, c                                        ; $7265: $51
	ld   de, $1111                                   ; $7266: $11 $11 $11
	ld   h, c                                        ; $7269: $61
	rst  $38                                         ; $726a: $ff
	rst  $38                                         ; $726b: $ff
	rst  $38                                         ; $726c: $ff
	rst  $38                                         ; $726d: $ff
	ei                                               ; $726e: $fb
	ld   de, $1111                                   ; $726f: $11 $11 $11
	inc  d                                           ; $7272: $14
	ld   a, [de]                                     ; $7273: $1a
	rst  $38                                         ; $7274: $ff
	rst  $38                                         ; $7275: $ff
	rst  $38                                         ; $7276: $ff
	rst  $38                                         ; $7277: $ff
	ldh  a, [c]                                      ; $7278: $f2
	ld   de, $1111                                   ; $7279: $11 $11 $11
	inc  de                                          ; $727c: $13
	ccf                                              ; $727d: $3f
	rst  $38                                         ; $727e: $ff
	rst  $38                                         ; $727f: $ff
	rst  $38                                         ; $7280: $ff
	rst  $38                                         ; $7281: $ff
	ld   d, c                                        ; $7282: $51
	ld   de, $1111                                   ; $7283: $11 $11 $11
	ld   [hl], c                                     ; $7286: $71
	rst  $38                                         ; $7287: $ff
	rst  $28                                         ; $7288: $ef
	rst  $38                                         ; $7289: $ff
	rst  $38                                         ; $728a: $ff
	db   $fc                                         ; $728b: $fc
	ld   de, $1111                                   ; $728c: $11 $11 $11
	ld   de, $ff46                                   ; $728f: $11 $46 $ff
	rst  $38                                         ; $7292: $ff
	rst  $38                                         ; $7293: $ff
	rst  $38                                         ; $7294: $ff
	ldh  a, [c]                                      ; $7295: $f2
	ld   de, $1111                                   ; $7296: $11 $11 $11
	dec  d                                           ; $7299: $15
	rra                                              ; $729a: $1f
	rst  $38                                         ; $729b: $ff
	rst  $38                                         ; $729c: $ff
	rst  $38                                         ; $729d: $ff
	rst  $38                                         ; $729e: $ff
	pop  de                                          ; $729f: $d1
	ld   de, $1111                                   ; $72a0: $11 $11 $11
	inc  d                                           ; $72a3: $14
	sbc  a                                           ; $72a4: $9f
	rst  $38                                         ; $72a5: $ff
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	rst  $38                                         ; $72a8: $ff
	ld   d, c                                        ; $72a9: $51
	ld   de, $1111                                   ; $72aa: $11 $11 $11
	inc  h                                           ; $72ad: $24
	rst  JumpTable                                         ; $72ae: $df
	rst  $38                                         ; $72af: $ff
	rst  $38                                         ; $72b0: $ff
	rst  $38                                         ; $72b1: $ff
	rst  $28                                         ; $72b2: $ef
	ld   b, c                                        ; $72b3: $41
	ld   de, $1111                                   ; $72b4: $11 $11 $11
	ld   b, e                                        ; $72b7: $43
	rst  $38                                         ; $72b8: $ff
	rst  $38                                         ; $72b9: $ff
	rst  $38                                         ; $72ba: $ff
	rst  $38                                         ; $72bb: $ff
	call $1121                                       ; $72bc: $cd $21 $11
	ld   de, $2811                                   ; $72bf: $11 $11 $28
	rst  $38                                         ; $72c2: $ff
	rst  $38                                         ; $72c3: $ff
	rst  $38                                         ; $72c4: $ff
	rst  $38                                         ; $72c5: $ff
	sbc  [hl]                                        ; $72c6: $9e
	ld   [hl], c                                     ; $72c7: $71
	ld   de, $1111                                   ; $72c8: $11 $11 $11
	ld   b, [hl]                                     ; $72cb: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72cc: $cf
	rst  $38                                         ; $72cd: $ff
	rst  $38                                         ; $72ce: $ff
	rst  $38                                         ; $72cf: $ff
	cp   l                                           ; $72d0: $bd
	pop  hl                                          ; $72d1: $e1
	ld   de, $1111                                   ; $72d2: $11 $11 $11
	dec  d                                           ; $72d5: $15
	ld   a, a                                        ; $72d6: $7f

jr_0d4_72d7:
	rst  $38                                         ; $72d7: $ff
	rst  $38                                         ; $72d8: $ff
	rst  $38                                         ; $72d9: $ff
	db   $ec                                         ; $72da: $ec
	db   $fc                                         ; $72db: $fc
	ld   [de], a                                     ; $72dc: $12
	ld   de, $1211                                   ; $72dd: $11 $11 $12
	ld   h, a                                        ; $72e0: $67
	rst  $38                                         ; $72e1: $ff
	db   $fd                                         ; $72e2: $fd
	rst  $38                                         ; $72e3: $ff
	cp   a                                           ; $72e4: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72e5: $cf
	and  $74                                         ; $72e6: $e6 $74
	ld   de, $1311                                   ; $72e8: $11 $11 $13
	ld   b, a                                        ; $72eb: $47
	adc  d                                           ; $72ec: $8a
	ld   a, c                                        ; $72ed: $79
	db   $eb                                         ; $72ee: $eb
	rst  $38                                         ; $72ef: $ff
	rst  $38                                         ; $72f0: $ff
	ei                                               ; $72f1: $fb
	rst  ToBoot                                         ; $72f2: $c7
	ld   d, c                                        ; $72f3: $51
	ld   de, $1211                                   ; $72f4: $11 $11 $12
	dec  d                                           ; $72f7: $15
	jr   c, jr_0d4_72d7                              ; $72f8: $38 $dd

	rst  $38                                         ; $72fa: $ff
	rst  $38                                         ; $72fb: $ff
	rst  $38                                         ; $72fc: $ff
	ld   a, [$1173]                                  ; $72fd: $fa $73 $11
	ld   de, $1211                                   ; $7300: $11 $11 $12
	scf                                              ; $7303: $37
	rst  JumpTable                                         ; $7304: $df
	rst  $38                                         ; $7305: $ff
	rst  $38                                         ; $7306: $ff
	rst  $38                                         ; $7307: $ff
	cp   $84                                         ; $7308: $fe $84
	ld   de, $1111                                   ; $730a: $11 $11 $11
	ld   de, $be35                                   ; $730d: $11 $35 $be
	rst  $38                                         ; $7310: $ff
	rst  $38                                         ; $7311: $ff
	rst  $38                                         ; $7312: $ff
	rst  $38                                         ; $7313: $ff
	rst  ToBoot                                         ; $7314: $c7
	ld   sp, $1111                                   ; $7315: $31 $11 $11
	ld   de, $6a13                                   ; $7318: $11 $13 $6a
	rst  $38                                         ; $731b: $ff
	rst  $38                                         ; $731c: $ff
	rst  $38                                         ; $731d: $ff
	rst  $38                                         ; $731e: $ff
	db   $fd                                         ; $731f: $fd
	sub  l                                           ; $7320: $95
	ld   hl, $1111                                   ; $7321: $21 $11 $11
	ld   de, $8c24                                   ; $7324: $11 $24 $8c
	rst  $38                                         ; $7327: $ff
	rst  $38                                         ; $7328: $ff
	rst  $38                                         ; $7329: $ff
	rst  $38                                         ; $732a: $ff
	db   $fd                                         ; $732b: $fd
	and  [hl]                                        ; $732c: $a6
	ld   sp, $1111                                   ; $732d: $31 $11 $11
	ld   de, $6913                                   ; $7330: $11 $13 $69
	rst  JumpTable                                         ; $7333: $df
	rst  $38                                         ; $7334: $ff
	rst  $38                                         ; $7335: $ff
	rst  $38                                         ; $7336: $ff
	cp   $b8                                         ; $7337: $fe $b8
	ld   d, d                                        ; $7339: $52
	ld   de, $1111                                   ; $733a: $11 $11 $11
	ld   de, $be57                                   ; $733d: $11 $57 $be
	rst  $38                                         ; $7340: $ff
	rst  $38                                         ; $7341: $ff
	rst  $38                                         ; $7342: $ff
	rst  $38                                         ; $7343: $ff
	db   $eb                                         ; $7344: $eb
	ld   [hl], h                                     ; $7345: $74
	ld   de, $1111                                   ; $7346: $11 $11 $11
	ld   de, $8c25                                   ; $7349: $11 $25 $8c
	rst  $28                                         ; $734c: $ef
	rst  $38                                         ; $734d: $ff
	rst  $38                                         ; $734e: $ff
	rst  $38                                         ; $734f: $ff
	db   $fd                                         ; $7350: $fd
	cp   b                                           ; $7351: $b8
	ld   d, e                                        ; $7352: $53
	ld   de, $1111                                   ; $7353: $11 $11 $11
	ld   [de], a                                     ; $7356: $12
	ld   b, a                                        ; $7357: $47
	xor  h                                           ; $7358: $ac
	rst  $28                                         ; $7359: $ef
	rst  $38                                         ; $735a: $ff
	rst  $38                                         ; $735b: $ff
	rst  $38                                         ; $735c: $ff
	db   $dd                                         ; $735d: $dd
	and  a                                           ; $735e: $a7
	ld   h, h                                        ; $735f: $64
	ld   hl, $1111                                   ; $7360: $21 $11 $11
	inc  de                                          ; $7363: $13
	ld   e, b                                        ; $7364: $58
	cp   a                                           ; $7365: $bf
	rst  $38                                         ; $7366: $ff
	db   $dd                                         ; $7367: $dd
	rst  $38                                         ; $7368: $ff
	db   $fd                                         ; $7369: $fd
	db   $eb                                         ; $736a: $eb
	sub  [hl]                                        ; $736b: $96
	ld   b, e                                        ; $736c: $43
	ld   [hl-], a                                    ; $736d: $32
	ld   de, $1211                                   ; $736e: $11 $11 $12
	ld   d, [hl]                                     ; $7371: $56
	sbc  d                                           ; $7372: $9a
	sbc  $de                                         ; $7373: $de $de
	rst  $38                                         ; $7375: $ff
	rst  $38                                         ; $7376: $ff
	ld   [$6887], a                                  ; $7377: $ea $87 $68
	ld   b, e                                        ; $737a: $43
	ld   sp, $1211                                   ; $737b: $31 $11 $12
	ld   b, l                                        ; $737e: $45
	ld   a, c                                        ; $737f: $79
	cp   a                                           ; $7380: $bf
	rst  JumpTable                                         ; $7381: $df
	rst  $38                                         ; $7382: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7383: $cf
	db   $fd                                         ; $7384: $fd
	db   $fc                                         ; $7385: $fc
	ld   [hl], e                                     ; $7386: $73
	ld   de, $1111                                   ; $7387: $11 $11 $11
	ld   de, $8a27                                   ; $738a: $11 $27 $8a
	rst  JumpTable                                         ; $738d: $df
	cp   $ff                                         ; $738e: $fe $ff
	db   $fd                                         ; $7390: $fd
	xor  d                                           ; $7391: $aa
	xor  a                                           ; $7392: $af
	push de                                          ; $7393: $d5
	ld   d, d                                        ; $7394: $52
	ld   de, $5411                                   ; $7395: $11 $11 $54
	ld   e, h                                        ; $7398: $5c
	rst  $28                                         ; $7399: $ef
	db   $ed                                         ; $739a: $ed
	cp   $de                                         ; $739b: $fe $de
	rst  $38                                         ; $739d: $ff
	ld   h, $81                                      ; $739e: $26 $81
	ld   de, $1111                                   ; $73a0: $11 $11 $11
	ld   l, a                                        ; $73a3: $6f
	rst  $38                                         ; $73a4: $ff
	rst  $38                                         ; $73a5: $ff
	rst  $38                                         ; $73a6: $ff
	db   $ed                                         ; $73a7: $ed
	add  c                                           ; $73a8: $81
	ld   de, $1111                                   ; $73a9: $11 $11 $11
	ld   de, $ffff                                   ; $73ac: $11 $ff $ff
	rst  $38                                         ; $73af: $ff
	rst  $38                                         ; $73b0: $ff
	rst  $38                                         ; $73b1: $ff
	cp   c                                           ; $73b2: $b9
	ld   de, $1111                                   ; $73b3: $11 $11 $11
	ld   de, $ff1b                                   ; $73b6: $11 $1b $ff

Call_0d4_73b9:
Jump_0d4_73b9:
	rst  $38                                         ; $73b9: $ff
	rst  $38                                         ; $73ba: $ff
	rst  $38                                         ; $73bb: $ff
	rst  $28                                         ; $73bc: $ef
	ld   [hl], c                                     ; $73bd: $71
	ld   de, $1111                                   ; $73be: $11 $11 $11
	inc  d                                           ; $73c1: $14
	rst  $38                                         ; $73c2: $ff
	rst  $38                                         ; $73c3: $ff
	rst  $38                                         ; $73c4: $ff
	rst  $38                                         ; $73c5: $ff
	and  c                                           ; $73c6: $a1
	sbc  c                                           ; $73c7: $99
	ld   de, $1111                                   ; $73c8: $11 $11 $11
	ld   [de], a                                     ; $73cb: $12
	rst  $38                                         ; $73cc: $ff
	rst  $38                                         ; $73cd: $ff
	rst  $38                                         ; $73ce: $ff
	rst  $38                                         ; $73cf: $ff
	pop  af                                          ; $73d0: $f1
	ld   de, $1111                                   ; $73d1: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $73d4: $11 $13 $ff
	rst  $38                                         ; $73d7: $ff
	rst  $38                                         ; $73d8: $ff
	rst  $38                                         ; $73d9: $ff
	db   $f4                                         ; $73da: $f4
	ld   de, $1111                                   ; $73db: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $73de: $11 $11 $ff
	rst  $38                                         ; $73e1: $ff
	rst  $38                                         ; $73e2: $ff
	rst  $38                                         ; $73e3: $ff
	ei                                               ; $73e4: $fb
	ld   de, $1111                                   ; $73e5: $11 $11 $11
	ld   de, $1f11                                   ; $73e8: $11 $11 $1f
	rst  $38                                         ; $73eb: $ff
	rst  $38                                         ; $73ec: $ff
	rst  $38                                         ; $73ed: $ff
	db   $fc                                         ; $73ee: $fc
	ld   de, $1111                                   ; $73ef: $11 $11 $11
	ld   de, $1d11                                   ; $73f2: $11 $11 $1d
	rst  $38                                         ; $73f5: $ff
	rst  $38                                         ; $73f6: $ff
	rst  $38                                         ; $73f7: $ff
	rst  $38                                         ; $73f8: $ff
	ld   de, $1111                                   ; $73f9: $11 $11 $11
	ld   de, $1111                                   ; $73fc: $11 $11 $11
	rst  $38                                         ; $73ff: $ff
	rst  $38                                         ; $7400: $ff
	rst  $38                                         ; $7401: $ff
	rst  $38                                         ; $7402: $ff
	pop  af                                          ; $7403: $f1
	ld   de, $1111                                   ; $7404: $11 $11 $11
	ld   de, $1f11                                   ; $7407: $11 $11 $1f
	rst  $38                                         ; $740a: $ff
	rst  $38                                         ; $740b: $ff
	rst  $38                                         ; $740c: $ff
	ei                                               ; $740d: $fb
	ld   de, $1111                                   ; $740e: $11 $11 $11
	ld   [hl], c                                     ; $7411: $71
	ld   de, rAUD1LEN                                   ; $7412: $11 $11 $ff
	rst  $38                                         ; $7415: $ff
	rst  $38                                         ; $7416: $ff
	rst  $38                                         ; $7417: $ff
	ld   [hl], c                                     ; $7418: $71
	ld   de, $4c11                                   ; $7419: $11 $11 $4c
	ld   de, $1f11                                   ; $741c: $11 $11 $1f
	rst  $38                                         ; $741f: $ff
	rst  $38                                         ; $7420: $ff
	rst  $38                                         ; $7421: $ff
	ld   sp, hl                                      ; $7422: $f9
	ld   de, $1511                                   ; $7423: $11 $11 $15
	db   $e3                                         ; $7426: $e3
	ld   de, $5f11                                   ; $7427: $11 $11 $5f
	rst  $38                                         ; $742a: $ff
	rst  $38                                         ; $742b: $ff
	rst  $38                                         ; $742c: $ff
	pop  hl                                          ; $742d: $e1
	ld   de, $9f11                                   ; $742e: $11 $11 $9f
	sub  c                                           ; $7431: $91
	ld   de, rAUD1LEN                                   ; $7432: $11 $11 $ff
	rst  $38                                         ; $7435: $ff
	rst  $38                                         ; $7436: $ff
	rst  $38                                         ; $7437: $ff
	ld   de, $1611                                   ; $7438: $11 $11 $16
	rst  $38                                         ; $743b: $ff
	ld   de, $1d11                                   ; $743c: $11 $11 $1d
	rst  $38                                         ; $743f: $ff
	rst  $38                                         ; $7440: $ff
	rst  $38                                         ; $7441: $ff
	pop  af                                          ; $7442: $f1
	ld   de, $7f12                                   ; $7443: $11 $12 $7f
	rst  $30                                         ; $7446: $f7
	ld   de, $1f11                                   ; $7447: $11 $11 $1f
	rst  $38                                         ; $744a: $ff
	rst  $38                                         ; $744b: $ff
	rst  $38                                         ; $744c: $ff
	pop  de                                          ; $744d: $d1
	ld   de, $ff18                                   ; $744e: $11 $18 $ff
	pop  af                                          ; $7451: $f1
	ld   de, $bf11                                   ; $7452: $11 $11 $bf
	rst  $38                                         ; $7455: $ff
	rst  $38                                         ; $7456: $ff
	rst  $38                                         ; $7457: $ff
	ld   de, $df11                                   ; $7458: $11 $11 $df
	rst  $38                                         ; $745b: $ff
	or   c                                           ; $745c: $b1
	ld   de, rAUD1LEN                                   ; $745d: $11 $11 $ff
	rst  $38                                         ; $7460: $ff
	rst  $38                                         ; $7461: $ff
	ei                                               ; $7462: $fb
	ld   de, rAUD1LEN                                   ; $7463: $11 $11 $ff
	rst  $38                                         ; $7466: $ff
	ld   h, c                                        ; $7467: $61
	ld   de, $ff15                                   ; $7468: $11 $15 $ff
	rst  $38                                         ; $746b: $ff
	rst  $38                                         ; $746c: $ff
	pop  af                                          ; $746d: $f1
	ld   de, $ff1f                                   ; $746e: $11 $1f $ff
	rst  $38                                         ; $7471: $ff
	ld   de, $1b11                                   ; $7472: $11 $11 $1b
	rst  $38                                         ; $7475: $ff
	rst  $38                                         ; $7476: $ff
	rst  $38                                         ; $7477: $ff
	pop  af                                          ; $7478: $f1
	ld   de, $ff1f                                   ; $7479: $11 $1f $ff
	rst  $38                                         ; $747c: $ff
	ld   de, $1f11                                   ; $747d: $11 $11 $1f
	rst  $38                                         ; $7480: $ff
	rst  $38                                         ; $7481: $ff
	rst  $38                                         ; $7482: $ff
	add  c                                           ; $7483: $81
	ld   de, $ff4f                                   ; $7484: $11 $4f $ff
	db   $fd                                         ; $7487: $fd
	ld   de, $1f11                                   ; $7488: $11 $11 $1f
	rst  $38                                         ; $748b: $ff
	rst  $38                                         ; $748c: $ff
	rst  $38                                         ; $748d: $ff
	ld   de, $df11                                   ; $748e: $11 $11 $df
	rst  $38                                         ; $7491: $ff
	db   $fc                                         ; $7492: $fc
	ld   de, $1f11                                   ; $7493: $11 $11 $1f
	rst  $38                                         ; $7496: $ff
	rst  $38                                         ; $7497: $ff
	rst  $38                                         ; $7498: $ff
	ld   de, rAUD1LEN                                   ; $7499: $11 $11 $ff
	rst  $38                                         ; $749c: $ff
	db   $fc                                         ; $749d: $fc
	ld   de, $1f11                                   ; $749e: $11 $11 $1f
	rst  $38                                         ; $74a1: $ff
	rst  $38                                         ; $74a2: $ff
	rst  $38                                         ; $74a3: $ff
	ld   de, rAUD1LEN                                   ; $74a4: $11 $11 $ff
	rst  $38                                         ; $74a7: $ff
	ei                                               ; $74a8: $fb
	ld   de, $1f11                                   ; $74a9: $11 $11 $1f
	rst  $38                                         ; $74ac: $ff
	rst  $38                                         ; $74ad: $ff
	rst  $38                                         ; $74ae: $ff
	ld   de, rAUD1LEN                                   ; $74af: $11 $11 $ff
	rst  $38                                         ; $74b2: $ff
	db   $fc                                         ; $74b3: $fc
	ld   de, $1f11                                   ; $74b4: $11 $11 $1f
	rst  $38                                         ; $74b7: $ff
	rst  $38                                         ; $74b8: $ff

Call_0d4_74b9:
	rst  $38                                         ; $74b9: $ff
	ld   de, rAUD1LEN                                   ; $74ba: $11 $11 $ff
	rst  $38                                         ; $74bd: $ff
	rst  $38                                         ; $74be: $ff
	ld   de, $1f11                                   ; $74bf: $11 $11 $1f
	rst  $38                                         ; $74c2: $ff
	rst  $38                                         ; $74c3: $ff
	rst  $38                                         ; $74c4: $ff
	ld   de, $ef11                                   ; $74c5: $11 $11 $ef
	rst  $38                                         ; $74c8: $ff

Call_0d4_74c9:
	rst  $38                                         ; $74c9: $ff
	ld   de, $1611                                   ; $74ca: $11 $11 $16
	rst  $38                                         ; $74cd: $ff
	rst  $38                                         ; $74ce: $ff
	rst  $38                                         ; $74cf: $ff
	ld   d, c                                        ; $74d0: $51
	ld   de, $ff3f                                   ; $74d1: $11 $3f $ff
	rst  $38                                         ; $74d4: $ff
	ld   de, $1111                                   ; $74d5: $11 $11 $11
	rst  $38                                         ; $74d8: $ff
	rst  $38                                         ; $74d9: $ff
	rst  $38                                         ; $74da: $ff
	pop  af                                          ; $74db: $f1
	ld   de, $ff1f                                   ; $74dc: $11 $1f $ff
	rst  $38                                         ; $74df: $ff
	ld   de, $1111                                   ; $74e0: $11 $11 $11
	rst  $38                                         ; $74e3: $ff
	rst  $38                                         ; $74e4: $ff
	rst  $38                                         ; $74e5: $ff
	pop  af                                          ; $74e6: $f1
	ld   de, $ff1f                                   ; $74e7: $11 $1f $ff
	rst  $38                                         ; $74ea: $ff
	ld   b, c                                        ; $74eb: $41
	ld   de, rAUD1LEN                                   ; $74ec: $11 $11 $ff
	rst  $38                                         ; $74ef: $ff
	rst  $38                                         ; $74f0: $ff
	pop  af                                          ; $74f1: $f1
	ld   de, $ff1f                                   ; $74f2: $11 $1f $ff
	rst  $38                                         ; $74f5: $ff
	pop  af                                          ; $74f6: $f1
	ld   de, $5f11                                   ; $74f7: $11 $11 $5f
	rst  $38                                         ; $74fa: $ff
	rst  $38                                         ; $74fb: $ff
	db   $fd                                         ; $74fc: $fd
	ld   de, rAUD1LEN                                   ; $74fd: $11 $11 $ff
	rst  $38                                         ; $7500: $ff
	pop  af                                          ; $7501: $f1
	ld   de, $1f11                                   ; $7502: $11 $11 $1f
	rst  $38                                         ; $7505: $ff
	rst  $38                                         ; $7506: $ff
	rst  $38                                         ; $7507: $ff
	ld   de, rAUD1LEN                                   ; $7508: $11 $11 $ff
	rst  $38                                         ; $750b: $ff
	pop  af                                          ; $750c: $f1
	ld   de, $1e11                                   ; $750d: $11 $11 $1e
	rst  $38                                         ; $7510: $ff
	rst  $38                                         ; $7511: $ff
	rst  $38                                         ; $7512: $ff
	ld   de, rAUD1LEN                                   ; $7513: $11 $11 $ff
	rst  $38                                         ; $7516: $ff
	cp   $11                                         ; $7517: $fe $11
	ld   de, rAUD1HIGH                                   ; $7519: $11 $14 $ff
	rst  $38                                         ; $751c: $ff
	rst  $38                                         ; $751d: $ff
	or   c                                           ; $751e: $b1
	ld   de, $ff1f                                   ; $751f: $11 $1f $ff
	rst  $38                                         ; $7522: $ff
	ld   de, $1111                                   ; $7523: $11 $11 $11
	rst  $38                                         ; $7526: $ff
	rst  $38                                         ; $7527: $ff
	rst  $38                                         ; $7528: $ff
	pop  af                                          ; $7529: $f1
	ld   de, $ff1f                                   ; $752a: $11 $1f $ff
	rst  $38                                         ; $752d: $ff
	add  c                                           ; $752e: $81
	ld   de, $5f11                                   ; $752f: $11 $11 $5f
	rst  $38                                         ; $7532: $ff
	rst  $38                                         ; $7533: $ff
	ei                                               ; $7534: $fb
	ld   de, rAUD1LOW                                   ; $7535: $11 $13 $ff
	rst  $38                                         ; $7538: $ff
	pop  af                                          ; $7539: $f1
	ld   de, $1d11                                   ; $753a: $11 $11 $1d
	rst  $38                                         ; $753d: $ff
	rst  $38                                         ; $753e: $ff
	rst  $38                                         ; $753f: $ff
	ld   de, rAUD1LEN                                   ; $7540: $11 $11 $ff
	rst  $38                                         ; $7543: $ff
	cp   $11                                         ; $7544: $fe $11
	ld   de, rAUD1LOW                                   ; $7546: $11 $13 $ff
	rst  $38                                         ; $7549: $ff
	rst  $38                                         ; $754a: $ff
	pop  af                                          ; $754b: $f1
	ld   de, $ff1f                                   ; $754c: $11 $1f $ff
	rst  $38                                         ; $754f: $ff
	ld   de, $1111                                   ; $7550: $11 $11 $11
	cp   a                                           ; $7553: $bf
	rst  $38                                         ; $7554: $ff
	rst  $38                                         ; $7555: $ff
	rst  $38                                         ; $7556: $ff
	ld   de, rAUD1ENV                                   ; $7557: $11 $12 $ff
	rst  $38                                         ; $755a: $ff
	pop  af                                          ; $755b: $f1
	ld   de, $1f11                                   ; $755c: $11 $11 $1f
	rst  $38                                         ; $755f: $ff
	rst  $38                                         ; $7560: $ff
	rst  $38                                         ; $7561: $ff
	ld   de, $af11                                   ; $7562: $11 $11 $af
	rst  $38                                         ; $7565: $ff
	rst  $38                                         ; $7566: $ff
	ld   de, $1111                                   ; $7567: $11 $11 $11
	rst  $38                                         ; $756a: $ff
	rst  $38                                         ; $756b: $ff
	rst  $38                                         ; $756c: $ff
	pop  af                                          ; $756d: $f1
	ld   de, $ff1c                                   ; $756e: $11 $1c $ff
	rst  $38                                         ; $7571: $ff
	and  c                                           ; $7572: $a1
	ld   de, $5f11                                   ; $7573: $11 $11 $5f
	rst  $38                                         ; $7576: $ff
	rst  $38                                         ; $7577: $ff
	rst  $38                                         ; $7578: $ff
	ld   de, $9f11                                   ; $7579: $11 $11 $9f
	rst  $38                                         ; $757c: $ff
	or   $11                                         ; $757d: $f6 $11
	ld   de, rAUD1LEN                                   ; $757f: $11 $11 $ff
	rst  $38                                         ; $7582: $ff
	rst  $38                                         ; $7583: $ff
	pop  af                                          ; $7584: $f1
	ld   de, $ff1e                                   ; $7585: $11 $1e $ff
	rst  $38                                         ; $7588: $ff
	ld   h, c                                        ; $7589: $61
	ld   de, $1811                                   ; $758a: $11 $11 $18
	rst  $38                                         ; $758d: $ff
	rst  $38                                         ; $758e: $ff
	rst  $38                                         ; $758f: $ff
	ld   h, c                                        ; $7590: $61
	ld   de, $ff9f                                   ; $7591: $11 $9f $ff
	or   $11                                         ; $7594: $f6 $11
	ld   de, $8f11                                   ; $7596: $11 $11 $8f
	rst  $38                                         ; $7599: $ff
	rst  $38                                         ; $759a: $ff
	db   $fd                                         ; $759b: $fd
	ld   de, $ef16                                   ; $759c: $11 $16 $ef
	rst  $38                                         ; $759f: $ff
	sub  c                                           ; $75a0: $91
	ld   de, $1311                                   ; $75a1: $11 $11 $13
	rst  $38                                         ; $75a4: $ff
	rst  $38                                         ; $75a5: $ff
	rst  $38                                         ; $75a6: $ff
	ld   hl, sp+$11                                  ; $75a7: $f8 $11
	ld   c, [hl]                                     ; $75a9: $4e
	rst  $38                                         ; $75aa: $ff
	rst  $38                                         ; $75ab: $ff
	ld   b, c                                        ; $75ac: $41
	ld   de, $4711                                   ; $75ad: $11 $11 $47
	rst  $38                                         ; $75b0: $ff
	rst  $38                                         ; $75b1: $ff
	cp   $b5                                         ; $75b2: $fe $b5
	inc  d                                           ; $75b4: $14
	sbc  a                                           ; $75b5: $9f
	rst  $38                                         ; $75b6: $ff
	sub  $11                                         ; $75b7: $d6 $11
	ld   de, $cb24                                   ; $75b9: $11 $24 $cb
	xor  d                                           ; $75bc: $aa
	ld   d, l                                        ; $75bd: $55
	ld   d, l                                        ; $75be: $55
	ld   d, a                                        ; $75bf: $57
	xor  h                                           ; $75c0: $ac
	call z, $dcee                                    ; $75c1: $cc $ee $dc
	cp   h                                           ; $75c4: $bc
	cp   h                                           ; $75c5: $bc
	db   $dd                                         ; $75c6: $dd
	db   $db                                         ; $75c7: $db
	res  0, a                                        ; $75c8: $cb $87
	ld   [hl], l                                     ; $75ca: $75
	ld   h, a                                        ; $75cb: $67
	ld   a, c                                        ; $75cc: $79
	sub  a                                           ; $75cd: $97
	add  l                                           ; $75ce: $85
	ld   b, e                                        ; $75cf: $43
	inc  [hl]                                        ; $75d0: $34
	ld   l, c                                        ; $75d1: $69
	cp   e                                           ; $75d2: $bb
	db   $dd                                         ; $75d3: $dd
	call z, $bbaa                                    ; $75d4: $cc $aa $bb
	call c, $96bb                                    ; $75d7: $dc $bb $96
	ld   b, d                                        ; $75da: $42
	ld   [hl+], a                                    ; $75db: $22
	dec  [hl]                                        ; $75dc: $35
	ld   h, a                                        ; $75dd: $67
	adc  b                                           ; $75de: $88
	xor  b                                           ; $75df: $a8
	adc  c                                           ; $75e0: $89
	sbc  e                                           ; $75e1: $9b
	call $c9dd                                       ; $75e2: $cd $dd $c9
	ld   [hl], l                                     ; $75e5: $75
	ld   d, h                                        ; $75e6: $54
	ld   b, l                                        ; $75e7: $45
	ld   h, a                                        ; $75e8: $67
	ld   [hl], a                                     ; $75e9: $77
	ld   [hl], a                                     ; $75ea: $77
	ld   [hl], a                                     ; $75eb: $77
	ld   a, c                                        ; $75ec: $79
	xor  e                                           ; $75ed: $ab
	call z, $a8ca                                    ; $75ee: $cc $ca $a8
	ld   h, [hl]                                     ; $75f1: $66
	ld   d, [hl]                                     ; $75f2: $56
	ld   a, b                                        ; $75f3: $78
	adc  b                                           ; $75f4: $88
	add  a                                           ; $75f5: $87
	halt                                             ; $75f6: $76
	ld   [hl], a                                     ; $75f7: $77
	adc  b                                           ; $75f8: $88
	sbc  d                                           ; $75f9: $9a
	cp   d                                           ; $75fa: $ba
	sbc  c                                           ; $75fb: $99
	halt                                             ; $75fc: $76
	ld   d, [hl]                                     ; $75fd: $56
	ld   h, a                                        ; $75fe: $67
	ld   [hl], a                                     ; $75ff: $77
	adc  b                                           ; $7600: $88
	ld   [hl], a                                     ; $7601: $77
	ld   [hl], a                                     ; $7602: $77
	ld   a, b                                        ; $7603: $78
	sbc  c                                           ; $7604: $99
	sbc  d                                           ; $7605: $9a
	xor  d                                           ; $7606: $aa
	sub  a                                           ; $7607: $97
	ld   h, [hl]                                     ; $7608: $66
	ld   h, a                                        ; $7609: $67
	ld   [hl], a                                     ; $760a: $77
	ld   a, b                                        ; $760b: $78
	add  a                                           ; $760c: $87
	ld   [hl], a                                     ; $760d: $77
	ld   [hl], a                                     ; $760e: $77
	adc  c                                           ; $760f: $89
	adc  b                                           ; $7610: $88
	sbc  c                                           ; $7611: $99
	sbc  c                                           ; $7612: $99
	ld   [hl], a                                     ; $7613: $77
	ld   [hl], a                                     ; $7614: $77
	ld   [hl], a                                     ; $7615: $77
	ld   a, b                                        ; $7616: $78
	sbc  b                                           ; $7617: $98
	add  a                                           ; $7618: $87
	ld   [hl], a                                     ; $7619: $77
	adc  c                                           ; $761a: $89
	sbc  c                                           ; $761b: $99
	adc  b                                           ; $761c: $88
	sbc  c                                           ; $761d: $99
	adc  b                                           ; $761e: $88
	ld   [hl], a                                     ; $761f: $77
	ld   [hl], a                                     ; $7620: $77
	ld   a, b                                        ; $7621: $78
	adc  c                                           ; $7622: $89
	add  a                                           ; $7623: $87
	ld   [hl], a                                     ; $7624: $77
	ld   [hl], a                                     ; $7625: $77
	adc  b                                           ; $7626: $88
	adc  c                                           ; $7627: $89
	adc  c                                           ; $7628: $89
	adc  b                                           ; $7629: $88
	adc  b                                           ; $762a: $88
	adc  b                                           ; $762b: $88
	adc  b                                           ; $762c: $88
	sbc  b                                           ; $762d: $98
	adc  b                                           ; $762e: $88
	add  a                                           ; $762f: $87
	adc  b                                           ; $7630: $88
	adc  b                                           ; $7631: $88
	adc  b                                           ; $7632: $88
	adc  b                                           ; $7633: $88
	adc  b                                           ; $7634: $88
	adc  b                                           ; $7635: $88
	adc  b                                           ; $7636: $88
	adc  b                                           ; $7637: $88
	sbc  b                                           ; $7638: $98
	sbc  b                                           ; $7639: $98
	sbc  b                                           ; $763a: $98
	adc  b                                           ; $763b: $88
	adc  b                                           ; $763c: $88
	adc  b                                           ; $763d: $88
	adc  b                                           ; $763e: $88
	adc  b                                           ; $763f: $88
	adc  b                                           ; $7640: $88
	adc  b                                           ; $7641: $88
	adc  b                                           ; $7642: $88
	adc  b                                           ; $7643: $88
	adc  b                                           ; $7644: $88
	adc  b                                           ; $7645: $88
	adc  b                                           ; $7646: $88
	adc  b                                           ; $7647: $88
	adc  b                                           ; $7648: $88
	adc  b                                           ; $7649: $88
	adc  b                                           ; $764a: $88
	adc  b                                           ; $764b: $88
	adc  b                                           ; $764c: $88
	adc  b                                           ; $764d: $88
	adc  b                                           ; $764e: $88
	adc  b                                           ; $764f: $88
	adc  b                                           ; $7650: $88
	adc  b                                           ; $7651: $88
	adc  b                                           ; $7652: $88
	adc  b                                           ; $7653: $88
	adc  b                                           ; $7654: $88
	adc  b                                           ; $7655: $88
	adc  b                                           ; $7656: $88

Jump_0d4_7657:
	adc  b                                           ; $7657: $88
	adc  b                                           ; $7658: $88
	adc  b                                           ; $7659: $88
	adc  b                                           ; $765a: $88
	adc  b                                           ; $765b: $88
	adc  b                                           ; $765c: $88
	adc  b                                           ; $765d: $88
	adc  b                                           ; $765e: $88
	adc  b                                           ; $765f: $88
	adc  b                                           ; $7660: $88
	adc  b                                           ; $7661: $88
	adc  b                                           ; $7662: $88
	adc  b                                           ; $7663: $88
	adc  b                                           ; $7664: $88
	adc  b                                           ; $7665: $88
	adc  b                                           ; $7666: $88
	adc  b                                           ; $7667: $88
	adc  b                                           ; $7668: $88
	adc  b                                           ; $7669: $88
	adc  b                                           ; $766a: $88
	adc  b                                           ; $766b: $88
	adc  b                                           ; $766c: $88
	adc  b                                           ; $766d: $88
	adc  b                                           ; $766e: $88
	adc  b                                           ; $766f: $88
	adc  b                                           ; $7670: $88
	adc  b                                           ; $7671: $88
	adc  b                                           ; $7672: $88
	adc  b                                           ; $7673: $88
	adc  b                                           ; $7674: $88
	adc  b                                           ; $7675: $88
	adc  b                                           ; $7676: $88
	adc  b                                           ; $7677: $88
	adc  b                                           ; $7678: $88
	adc  b                                           ; $7679: $88
	adc  b                                           ; $767a: $88
	adc  b                                           ; $767b: $88
	adc  b                                           ; $767c: $88
	adc  b                                           ; $767d: $88
	adc  b                                           ; $767e: $88
	adc  b                                           ; $767f: $88
	adc  b                                           ; $7680: $88
	adc  b                                           ; $7681: $88
	adc  b                                           ; $7682: $88
	adc  b                                           ; $7683: $88
	adc  b                                           ; $7684: $88
	adc  b                                           ; $7685: $88
	adc  b                                           ; $7686: $88
	adc  b                                           ; $7687: $88
	adc  b                                           ; $7688: $88
	adc  b                                           ; $7689: $88
	adc  b                                           ; $768a: $88
	adc  b                                           ; $768b: $88
	adc  b                                           ; $768c: $88
	adc  b                                           ; $768d: $88
	adc  b                                           ; $768e: $88
	adc  b                                           ; $768f: $88
	adc  b                                           ; $7690: $88
	adc  b                                           ; $7691: $88
	adc  b                                           ; $7692: $88
	adc  b                                           ; $7693: $88
	adc  b                                           ; $7694: $88
	adc  b                                           ; $7695: $88
	adc  b                                           ; $7696: $88
	adc  b                                           ; $7697: $88
	adc  b                                           ; $7698: $88
	adc  b                                           ; $7699: $88
	adc  b                                           ; $769a: $88
	adc  b                                           ; $769b: $88
	adc  b                                           ; $769c: $88
	adc  b                                           ; $769d: $88
	adc  b                                           ; $769e: $88
	adc  b                                           ; $769f: $88
	adc  b                                           ; $76a0: $88
	adc  b                                           ; $76a1: $88
	adc  b                                           ; $76a2: $88
	adc  b                                           ; $76a3: $88
	adc  b                                           ; $76a4: $88
	adc  b                                           ; $76a5: $88
	adc  b                                           ; $76a6: $88
	adc  b                                           ; $76a7: $88
	adc  b                                           ; $76a8: $88
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  b                                           ; $76ab: $88
	adc  b                                           ; $76ac: $88
	adc  b                                           ; $76ad: $88
	adc  b                                           ; $76ae: $88
	adc  b                                           ; $76af: $88
	adc  b                                           ; $76b0: $88
	adc  b                                           ; $76b1: $88
	adc  b                                           ; $76b2: $88
	adc  b                                           ; $76b3: $88
	adc  b                                           ; $76b4: $88
	adc  b                                           ; $76b5: $88
	adc  b                                           ; $76b6: $88
	adc  b                                           ; $76b7: $88
	adc  b                                           ; $76b8: $88
	adc  b                                           ; $76b9: $88
	adc  b                                           ; $76ba: $88
	adc  b                                           ; $76bb: $88
	adc  b                                           ; $76bc: $88
	adc  b                                           ; $76bd: $88
	adc  b                                           ; $76be: $88
	adc  b                                           ; $76bf: $88
	adc  b                                           ; $76c0: $88
	adc  b                                           ; $76c1: $88
	adc  b                                           ; $76c2: $88
	adc  b                                           ; $76c3: $88
	adc  b                                           ; $76c4: $88
	adc  b                                           ; $76c5: $88
	adc  b                                           ; $76c6: $88
	adc  b                                           ; $76c7: $88
	adc  b                                           ; $76c8: $88
	adc  b                                           ; $76c9: $88
	adc  b                                           ; $76ca: $88
	adc  b                                           ; $76cb: $88
	adc  b                                           ; $76cc: $88
	adc  b                                           ; $76cd: $88
	adc  b                                           ; $76ce: $88
	adc  b                                           ; $76cf: $88
	adc  b                                           ; $76d0: $88
	adc  b                                           ; $76d1: $88
	adc  b                                           ; $76d2: $88
	adc  b                                           ; $76d3: $88
	adc  b                                           ; $76d4: $88
	adc  b                                           ; $76d5: $88
	adc  b                                           ; $76d6: $88
	adc  b                                           ; $76d7: $88
	adc  b                                           ; $76d8: $88
	adc  b                                           ; $76d9: $88
	adc  b                                           ; $76da: $88
	adc  b                                           ; $76db: $88
	adc  b                                           ; $76dc: $88
	adc  b                                           ; $76dd: $88
	adc  b                                           ; $76de: $88
	adc  b                                           ; $76df: $88
	adc  b                                           ; $76e0: $88
	adc  b                                           ; $76e1: $88
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	adc  b                                           ; $76e4: $88
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
	adc  b                                           ; $76e9: $88
	adc  b                                           ; $76ea: $88
	adc  b                                           ; $76eb: $88
	adc  b                                           ; $76ec: $88
	adc  b                                           ; $76ed: $88
	adc  b                                           ; $76ee: $88
	adc  b                                           ; $76ef: $88
	adc  b                                           ; $76f0: $88
	adc  b                                           ; $76f1: $88
	adc  b                                           ; $76f2: $88
	adc  b                                           ; $76f3: $88
	adc  b                                           ; $76f4: $88
	adc  b                                           ; $76f5: $88
	adc  b                                           ; $76f6: $88
	adc  b                                           ; $76f7: $88
	adc  b                                           ; $76f8: $88
	adc  b                                           ; $76f9: $88
	adc  b                                           ; $76fa: $88
	adc  b                                           ; $76fb: $88
	adc  b                                           ; $76fc: $88
	adc  b                                           ; $76fd: $88
	adc  b                                           ; $76fe: $88
	adc  b                                           ; $76ff: $88
	adc  b                                           ; $7700: $88
	adc  b                                           ; $7701: $88
	adc  b                                           ; $7702: $88
	adc  b                                           ; $7703: $88
	adc  b                                           ; $7704: $88
	adc  b                                           ; $7705: $88
	adc  b                                           ; $7706: $88
	adc  b                                           ; $7707: $88
	adc  b                                           ; $7708: $88
	adc  b                                           ; $7709: $88
	adc  b                                           ; $770a: $88
	adc  b                                           ; $770b: $88
	adc  b                                           ; $770c: $88
	adc  b                                           ; $770d: $88
	adc  b                                           ; $770e: $88
	adc  b                                           ; $770f: $88
	adc  b                                           ; $7710: $88
	adc  b                                           ; $7711: $88
	adc  b                                           ; $7712: $88
	adc  b                                           ; $7713: $88
	adc  b                                           ; $7714: $88
	adc  b                                           ; $7715: $88
	adc  b                                           ; $7716: $88
	adc  b                                           ; $7717: $88
	adc  b                                           ; $7718: $88
	adc  b                                           ; $7719: $88
	adc  b                                           ; $771a: $88
	adc  b                                           ; $771b: $88
	adc  b                                           ; $771c: $88
	adc  b                                           ; $771d: $88
	adc  b                                           ; $771e: $88
	adc  b                                           ; $771f: $88
	adc  b                                           ; $7720: $88
	adc  b                                           ; $7721: $88
	adc  b                                           ; $7722: $88
	adc  b                                           ; $7723: $88
	adc  b                                           ; $7724: $88
	adc  b                                           ; $7725: $88
	adc  b                                           ; $7726: $88
	adc  b                                           ; $7727: $88
	adc  b                                           ; $7728: $88
	adc  b                                           ; $7729: $88
	adc  b                                           ; $772a: $88
	adc  b                                           ; $772b: $88
	adc  b                                           ; $772c: $88
	adc  b                                           ; $772d: $88
	adc  b                                           ; $772e: $88
	adc  b                                           ; $772f: $88
	adc  b                                           ; $7730: $88
	adc  b                                           ; $7731: $88
	adc  b                                           ; $7732: $88
	adc  b                                           ; $7733: $88
	adc  b                                           ; $7734: $88
	adc  b                                           ; $7735: $88
	adc  b                                           ; $7736: $88
	adc  b                                           ; $7737: $88
	adc  b                                           ; $7738: $88
	adc  b                                           ; $7739: $88
	adc  b                                           ; $773a: $88
	adc  b                                           ; $773b: $88
	adc  b                                           ; $773c: $88
	adc  b                                           ; $773d: $88
	adc  b                                           ; $773e: $88
	adc  b                                           ; $773f: $88
	adc  b                                           ; $7740: $88
	adc  b                                           ; $7741: $88
	adc  b                                           ; $7742: $88
	adc  b                                           ; $7743: $88
	adc  b                                           ; $7744: $88
	adc  b                                           ; $7745: $88
	adc  b                                           ; $7746: $88
	adc  b                                           ; $7747: $88
	adc  b                                           ; $7748: $88
	adc  b                                           ; $7749: $88
	adc  b                                           ; $774a: $88
	adc  b                                           ; $774b: $88
	adc  b                                           ; $774c: $88
	adc  b                                           ; $774d: $88
	adc  b                                           ; $774e: $88
	adc  b                                           ; $774f: $88
	adc  b                                           ; $7750: $88
	adc  b                                           ; $7751: $88
	adc  b                                           ; $7752: $88
	adc  b                                           ; $7753: $88
	adc  b                                           ; $7754: $88
	adc  b                                           ; $7755: $88
	adc  b                                           ; $7756: $88
	adc  b                                           ; $7757: $88
	adc  b                                           ; $7758: $88
	adc  b                                           ; $7759: $88
	adc  b                                           ; $775a: $88
	adc  b                                           ; $775b: $88
	adc  b                                           ; $775c: $88
	adc  b                                           ; $775d: $88
	adc  b                                           ; $775e: $88
	adc  b                                           ; $775f: $88
	adc  b                                           ; $7760: $88
	adc  b                                           ; $7761: $88
	adc  b                                           ; $7762: $88
	adc  b                                           ; $7763: $88
	adc  b                                           ; $7764: $88
	adc  b                                           ; $7765: $88
	adc  b                                           ; $7766: $88
	adc  b                                           ; $7767: $88
	adc  b                                           ; $7768: $88
	adc  b                                           ; $7769: $88
	adc  b                                           ; $776a: $88
	adc  b                                           ; $776b: $88
	adc  b                                           ; $776c: $88
	adc  b                                           ; $776d: $88
	adc  b                                           ; $776e: $88
	adc  b                                           ; $776f: $88
	adc  b                                           ; $7770: $88
	adc  b                                           ; $7771: $88
	adc  b                                           ; $7772: $88
	adc  b                                           ; $7773: $88
	adc  b                                           ; $7774: $88
	adc  b                                           ; $7775: $88
	adc  b                                           ; $7776: $88
	adc  b                                           ; $7777: $88
	adc  b                                           ; $7778: $88
	adc  b                                           ; $7779: $88
	adc  b                                           ; $777a: $88
	adc  b                                           ; $777b: $88
	adc  b                                           ; $777c: $88
	adc  b                                           ; $777d: $88
	adc  b                                           ; $777e: $88
	adc  b                                           ; $777f: $88
	adc  b                                           ; $7780: $88
	adc  b                                           ; $7781: $88
	adc  b                                           ; $7782: $88
	adc  b                                           ; $7783: $88
	adc  b                                           ; $7784: $88
	adc  b                                           ; $7785: $88
	adc  b                                           ; $7786: $88
	adc  b                                           ; $7787: $88
	adc  b                                           ; $7788: $88
	adc  b                                           ; $7789: $88
	adc  b                                           ; $778a: $88
	adc  b                                           ; $778b: $88
	adc  b                                           ; $778c: $88
	adc  b                                           ; $778d: $88
	adc  b                                           ; $778e: $88
	adc  b                                           ; $778f: $88
	adc  b                                           ; $7790: $88
	adc  b                                           ; $7791: $88
	adc  b                                           ; $7792: $88
	adc  b                                           ; $7793: $88
	adc  b                                           ; $7794: $88
	adc  b                                           ; $7795: $88
	adc  b                                           ; $7796: $88
	adc  b                                           ; $7797: $88
	adc  b                                           ; $7798: $88
	adc  b                                           ; $7799: $88
	adc  b                                           ; $779a: $88
	adc  b                                           ; $779b: $88
	adc  b                                           ; $779c: $88
	adc  b                                           ; $779d: $88
	adc  b                                           ; $779e: $88
	adc  b                                           ; $779f: $88
	adc  b                                           ; $77a0: $88
	adc  b                                           ; $77a1: $88
	adc  b                                           ; $77a2: $88
	adc  b                                           ; $77a3: $88
	adc  b                                           ; $77a4: $88
	adc  b                                           ; $77a5: $88
	adc  b                                           ; $77a6: $88
	adc  b                                           ; $77a7: $88
	adc  b                                           ; $77a8: $88
	adc  b                                           ; $77a9: $88
	adc  b                                           ; $77aa: $88
	adc  b                                           ; $77ab: $88
	adc  b                                           ; $77ac: $88
	adc  b                                           ; $77ad: $88
	adc  b                                           ; $77ae: $88
	adc  b                                           ; $77af: $88
	adc  b                                           ; $77b0: $88
	adc  b                                           ; $77b1: $88
	adc  b                                           ; $77b2: $88
	adc  b                                           ; $77b3: $88
	adc  b                                           ; $77b4: $88
	adc  b                                           ; $77b5: $88
	adc  b                                           ; $77b6: $88
	adc  b                                           ; $77b7: $88
	adc  b                                           ; $77b8: $88
	adc  b                                           ; $77b9: $88

Jump_0d4_77ba:
	adc  b                                           ; $77ba: $88
	adc  b                                           ; $77bb: $88
	adc  b                                           ; $77bc: $88
	adc  b                                           ; $77bd: $88
	adc  b                                           ; $77be: $88
	adc  b                                           ; $77bf: $88
	adc  b                                           ; $77c0: $88
	adc  b                                           ; $77c1: $88
	adc  b                                           ; $77c2: $88
	adc  b                                           ; $77c3: $88
	adc  b                                           ; $77c4: $88
	adc  b                                           ; $77c5: $88
	adc  b                                           ; $77c6: $88
	adc  b                                           ; $77c7: $88
	adc  b                                           ; $77c8: $88
	adc  b                                           ; $77c9: $88
	adc  b                                           ; $77ca: $88
	adc  b                                           ; $77cb: $88
	adc  b                                           ; $77cc: $88
	adc  b                                           ; $77cd: $88
	adc  b                                           ; $77ce: $88
	adc  b                                           ; $77cf: $88
	adc  b                                           ; $77d0: $88
	adc  b                                           ; $77d1: $88
	adc  b                                           ; $77d2: $88
	adc  b                                           ; $77d3: $88
	adc  b                                           ; $77d4: $88
	adc  b                                           ; $77d5: $88
	adc  b                                           ; $77d6: $88
	adc  b                                           ; $77d7: $88
	adc  b                                           ; $77d8: $88
	adc  b                                           ; $77d9: $88
	adc  b                                           ; $77da: $88
	adc  b                                           ; $77db: $88
	adc  b                                           ; $77dc: $88
	adc  b                                           ; $77dd: $88
	adc  b                                           ; $77de: $88
	adc  b                                           ; $77df: $88
	adc  b                                           ; $77e0: $88
	adc  b                                           ; $77e1: $88
	adc  b                                           ; $77e2: $88
	adc  b                                           ; $77e3: $88
	adc  b                                           ; $77e4: $88
	adc  b                                           ; $77e5: $88
	adc  b                                           ; $77e6: $88
	adc  b                                           ; $77e7: $88
	adc  b                                           ; $77e8: $88
	adc  b                                           ; $77e9: $88
	adc  b                                           ; $77ea: $88
	adc  b                                           ; $77eb: $88
	adc  b                                           ; $77ec: $88
	adc  b                                           ; $77ed: $88
	adc  b                                           ; $77ee: $88
	adc  b                                           ; $77ef: $88
	adc  b                                           ; $77f0: $88
	adc  b                                           ; $77f1: $88
	adc  b                                           ; $77f2: $88
	adc  b                                           ; $77f3: $88
	adc  b                                           ; $77f4: $88
	adc  b                                           ; $77f5: $88
	adc  b                                           ; $77f6: $88
	adc  b                                           ; $77f7: $88
	adc  b                                           ; $77f8: $88
	adc  b                                           ; $77f9: $88
	adc  b                                           ; $77fa: $88
	adc  b                                           ; $77fb: $88
	adc  b                                           ; $77fc: $88
	adc  b                                           ; $77fd: $88
	adc  b                                           ; $77fe: $88
	adc  b                                           ; $77ff: $88
	adc  b                                           ; $7800: $88
	adc  b                                           ; $7801: $88
	adc  b                                           ; $7802: $88
	adc  b                                           ; $7803: $88
	adc  b                                           ; $7804: $88
	adc  b                                           ; $7805: $88
	adc  b                                           ; $7806: $88
	adc  b                                           ; $7807: $88
	adc  b                                           ; $7808: $88
	adc  b                                           ; $7809: $88
	adc  b                                           ; $780a: $88
	adc  b                                           ; $780b: $88
	adc  b                                           ; $780c: $88
	adc  b                                           ; $780d: $88
	adc  b                                           ; $780e: $88
	adc  b                                           ; $780f: $88
	adc  b                                           ; $7810: $88
	adc  b                                           ; $7811: $88
	adc  b                                           ; $7812: $88
	adc  b                                           ; $7813: $88
	adc  b                                           ; $7814: $88
	adc  b                                           ; $7815: $88
	adc  b                                           ; $7816: $88
	adc  b                                           ; $7817: $88
	adc  b                                           ; $7818: $88
	adc  b                                           ; $7819: $88
	adc  c                                           ; $781a: $89
	sbc  c                                           ; $781b: $99
	db   $ed                                         ; $781c: $ed
	xor  e                                           ; $781d: $ab
	adc  c                                           ; $781e: $89
	db   $db                                         ; $781f: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7820: $cf
	ld   [hl], h                                     ; $7821: $74
	and  [hl]                                        ; $7822: $a6
	sbc  c                                           ; $7823: $99
	sbc  l                                           ; $7824: $9d
	ld   a, b                                        ; $7825: $78
	ld   a, c                                        ; $7826: $79
	sub  c                                           ; $7827: $91
	rla                                              ; $7828: $17
	halt                                             ; $7829: $76
	ld   [hl-], a                                    ; $782a: $32
	sbc  d                                           ; $782b: $9a
	add  l                                           ; $782c: $85
	ld   a, d                                        ; $782d: $7a
	and  h                                           ; $782e: $a4
	ld   e, c                                        ; $782f: $59
	sbc  c                                           ; $7830: $99
	ld   d, h                                        ; $7831: $54
	ld   b, l                                        ; $7832: $45
	ld   d, e                                        ; $7833: $53
	inc  de                                          ; $7834: $13
	ld   b, h                                        ; $7835: $44
	inc  sp                                          ; $7836: $33
	ld   hl, $3a21                                   ; $7837: $21 $21 $3a
	rst  $38                                         ; $783a: $ff
	rst  $38                                         ; $783b: $ff
	rst  $38                                         ; $783c: $ff
	cp   $71                                         ; $783d: $fe $71
	ld   de, $1111                                   ; $783f: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7842: $11 $11 $ff
	rst  $38                                         ; $7845: $ff
	rst  $38                                         ; $7846: $ff
	rst  $38                                         ; $7847: $ff
	sub  c                                           ; $7848: $91
	inc  de                                          ; $7849: $13
	ld   sp, $1111                                   ; $784a: $31 $11 $11
	ld   de, $ffff                                   ; $784d: $11 $ff $ff
	rst  $38                                         ; $7850: $ff
	rst  $38                                         ; $7851: $ff
	ld   sp, hl                                      ; $7852: $f9
	ld   de, $ff15                                   ; $7853: $11 $15 $ff
	ld   [hl], c                                     ; $7856: $71
	ld   de, $1f11                                   ; $7857: $11 $11 $1f
	rst  $38                                         ; $785a: $ff
	rst  $38                                         ; $785b: $ff
	rst  $38                                         ; $785c: $ff
	rst  $38                                         ; $785d: $ff
	ld   b, c                                        ; $785e: $41
	ld   de, $ffaf                                   ; $785f: $11 $af $ff
	and  c                                           ; $7862: $a1
	ld   de, $1f11                                   ; $7863: $11 $11 $1f
	rst  $38                                         ; $7866: $ff
	rst  $38                                         ; $7867: $ff
	rst  $38                                         ; $7868: $ff
	db   $f4                                         ; $7869: $f4
	ld   de, rAUD1ENV                                   ; $786a: $11 $12 $ff
	rst  $38                                         ; $786d: $ff
	ld   de, $1111                                   ; $786e: $11 $11 $11
	rst  $28                                         ; $7871: $ef
	rst  $38                                         ; $7872: $ff
	rst  $38                                         ; $7873: $ff
	rst  $38                                         ; $7874: $ff
	ld   d, c                                        ; $7875: $51
	ld   de, $ff5f                                   ; $7876: $11 $5f $ff
	or   $11                                         ; $7879: $f6 $11
	ld   de, rAUD1LEN                                   ; $787b: $11 $11 $ff
	rst  $38                                         ; $787e: $ff
	rst  $38                                         ; $787f: $ff
	ei                                               ; $7880: $fb
	ld   de, $df14                                   ; $7881: $11 $14 $df
	rst  $38                                         ; $7884: $ff
	pop  af                                          ; $7885: $f1
	ld   de, $1f11                                   ; $7886: $11 $11 $1f
	rst  $38                                         ; $7889: $ff
	rst  $38                                         ; $788a: $ff
	rst  $38                                         ; $788b: $ff
	pop  af                                          ; $788c: $f1
	ld   de, $ff16                                   ; $788d: $11 $16 $ff
	rst  $38                                         ; $7890: $ff
	ld   hl, $1111                                   ; $7891: $21 $11 $11
	rra                                              ; $7894: $1f
	rst  $38                                         ; $7895: $ff
	rst  $38                                         ; $7896: $ff
	rst  $38                                         ; $7897: $ff
	ld   d, c                                        ; $7898: $51
	ld   de, $ff3f                                   ; $7899: $11 $3f $ff
	rst  $38                                         ; $789c: $ff
	ld   de, $1111                                   ; $789d: $11 $11 $11
	rst  $28                                         ; $78a0: $ef
	rst  $38                                         ; $78a1: $ff
	rst  $38                                         ; $78a2: $ff
	rst  $38                                         ; $78a3: $ff
	ld   de, $df11                                   ; $78a4: $11 $11 $df
	rst  $38                                         ; $78a7: $ff
	ldh  a, [c]                                      ; $78a8: $f2
	ld   de, $1111                                   ; $78a9: $11 $11 $11
	rst  $38                                         ; $78ac: $ff
	rst  $38                                         ; $78ad: $ff
	rst  $38                                         ; $78ae: $ff
	pop  af                                          ; $78af: $f1
	ld   de, $ff19                                   ; $78b0: $11 $19 $ff
	rst  $38                                         ; $78b3: $ff
	pop  hl                                          ; $78b4: $e1
	ld   de, $1f11                                   ; $78b5: $11 $11 $1f
	rst  $38                                         ; $78b8: $ff
	rst  $38                                         ; $78b9: $ff
	rst  $38                                         ; $78ba: $ff
	pop  de                                          ; $78bb: $d1
	ld   de, $ff1f                                   ; $78bc: $11 $1f $ff
	rst  $38                                         ; $78bf: $ff
	ld   de, $1111                                   ; $78c0: $11 $11 $11
	ld   a, a                                        ; $78c3: $7f
	rst  $38                                         ; $78c4: $ff
	rst  $38                                         ; $78c5: $ff
	rst  $38                                         ; $78c6: $ff
	ld   de, $ef11                                   ; $78c7: $11 $11 $ef
	rst  $38                                         ; $78ca: $ff
	push af                                          ; $78cb: $f5
	ld   de, $1111                                   ; $78cc: $11 $11 $11
	rst  $38                                         ; $78cf: $ff
	rst  $38                                         ; $78d0: $ff
	rst  $38                                         ; $78d1: $ff
	pop  af                                          ; $78d2: $f1
	ld   de, $ff1c                                   ; $78d3: $11 $1c $ff
	rst  $38                                         ; $78d6: $ff
	pop  af                                          ; $78d7: $f1
	ld   de, $1d11                                   ; $78d8: $11 $11 $1d
	rst  $38                                         ; $78db: $ff
	rst  $38                                         ; $78dc: $ff
	rst  $38                                         ; $78dd: $ff
	and  c                                           ; $78de: $a1
	ld   de, $ff2f                                   ; $78df: $11 $2f $ff
	rst  $38                                         ; $78e2: $ff
	ld   de, $1111                                   ; $78e3: $11 $11 $11
	rra                                              ; $78e6: $1f
	rst  $38                                         ; $78e7: $ff
	rst  $38                                         ; $78e8: $ff
	rst  $38                                         ; $78e9: $ff
	ld   de, rAUD1LEN                                   ; $78ea: $11 $11 $ff
	rst  $38                                         ; $78ed: $ff
	push af                                          ; $78ee: $f5
	ld   de, $1111                                   ; $78ef: $11 $11 $11
	rst  $38                                         ; $78f2: $ff
	rst  $38                                         ; $78f3: $ff
	rst  $38                                         ; $78f4: $ff
	db   $f4                                         ; $78f5: $f4
	ld   de, $ff1a                                   ; $78f6: $11 $1a $ff
	rst  $38                                         ; $78f9: $ff
	or   c                                           ; $78fa: $b1
	ld   de, $1b11                                   ; $78fb: $11 $11 $1b
	rst  $38                                         ; $78fe: $ff
	rst  $38                                         ; $78ff: $ff
	rst  $38                                         ; $7900: $ff
	pop  af                                          ; $7901: $f1
	ld   de, $ff1f                                   ; $7902: $11 $1f $ff
	rst  $38                                         ; $7905: $ff
	ld   de, $1111                                   ; $7906: $11 $11 $11
	ld   a, a                                        ; $7909: $7f
	rst  $38                                         ; $790a: $ff
	rst  $38                                         ; $790b: $ff
	rst  $38                                         ; $790c: $ff
	ld   de, rAUD1LEN                                   ; $790d: $11 $11 $ff
	rst  $38                                         ; $7910: $ff
	pop  af                                          ; $7911: $f1
	ld   de, $1111                                   ; $7912: $11 $11 $11
	rst  $38                                         ; $7915: $ff
	rst  $38                                         ; $7916: $ff
	rst  $38                                         ; $7917: $ff
	pop  af                                          ; $7918: $f1
	ld   de, $ff1f                                   ; $7919: $11 $1f $ff
	rst  $38                                         ; $791c: $ff
	ld   sp, $1111                                   ; $791d: $31 $11 $11
	rra                                              ; $7920: $1f
	rst  $38                                         ; $7921: $ff
	rst  $38                                         ; $7922: $ff
	rst  $38                                         ; $7923: $ff
	sub  c                                           ; $7924: $91
	ld   de, $ffdf                                   ; $7925: $11 $df $ff
	or   $11                                         ; $7928: $f6 $11
	ld   de, rAUD1LEN                                   ; $792a: $11 $11 $ff
	rst  $38                                         ; $792d: $ff
	rst  $38                                         ; $792e: $ff
	rst  $38                                         ; $792f: $ff
	ld   de, $ff1a                                   ; $7930: $11 $1a $ff
	rst  $38                                         ; $7933: $ff
	pop  hl                                          ; $7934: $e1
	ld   de, $1511                                   ; $7935: $11 $11 $15
	rst  $38                                         ; $7938: $ff
	rst  $38                                         ; $7939: $ff
	rst  $38                                         ; $793a: $ff
	pop  af                                          ; $793b: $f1
	ld   de, $ff1f                                   ; $793c: $11 $1f $ff
	rst  $38                                         ; $793f: $ff
	ld   de, $1111                                   ; $7940: $11 $11 $11
	rra                                              ; $7943: $1f
	rst  $38                                         ; $7944: $ff
	rst  $38                                         ; $7945: $ff
	rst  $38                                         ; $7946: $ff
	ld   h, c                                        ; $7947: $61
	ld   de, $ffff                                   ; $7948: $11 $ff $ff
	db   $f4                                         ; $794b: $f4
	ld   de, $1111                                   ; $794c: $11 $11 $11
	rst  $38                                         ; $794f: $ff
	rst  $38                                         ; $7950: $ff
	rst  $38                                         ; $7951: $ff
	cp   $11                                         ; $7952: $fe $11
	ld   e, $ff                                      ; $7954: $1e $ff
	rst  $38                                         ; $7956: $ff
	pop  de                                          ; $7957: $d1
	ld   de, $1111                                   ; $7958: $11 $11 $11
	rst  $38                                         ; $795b: $ff
	rst  $38                                         ; $795c: $ff
	rst  $38                                         ; $795d: $ff
	ld   sp, hl                                      ; $795e: $f9
	ld   de, $ff4f                                   ; $795f: $11 $4f $ff
	rst  $38                                         ; $7962: $ff
	ld   sp, $1111                                   ; $7963: $31 $11 $11
	add  hl, de                                      ; $7966: $19
	rst  $38                                         ; $7967: $ff
	rst  $38                                         ; $7968: $ff
	rst  $38                                         ; $7969: $ff
	ldh  a, [c]                                      ; $796a: $f2
	ld   de, $ffef                                   ; $796b: $11 $ef $ff
	ld   [$1111], a                                  ; $796e: $ea $11 $11
	ld   de, $ff1c                                   ; $7971: $11 $1c $ff
	rst  $38                                         ; $7974: $ff
	rst  $38                                         ; $7975: $ff
	pop  hl                                          ; $7976: $e1
	inc  d                                           ; $7977: $14
	rst  $38                                         ; $7978: $ff
	rst  $38                                         ; $7979: $ff
	rst  $10                                         ; $797a: $d7
	ld   de, $1111                                   ; $797b: $11 $11 $11
	cpl                                              ; $797e: $2f
	rst  $38                                         ; $797f: $ff
	rst  $38                                         ; $7980: $ff
	rst  $38                                         ; $7981: $ff
	and  c                                           ; $7982: $a1
	add  hl, de                                      ; $7983: $19
	rst  $38                                         ; $7984: $ff
	rst  $38                                         ; $7985: $ff
	di                                               ; $7986: $f3
	ld   de, $1111                                   ; $7987: $11 $11 $11
	ld   a, [hl]                                     ; $798a: $7e
	rst  $38                                         ; $798b: $ff
	rst  $38                                         ; $798c: $ff
	rst  $38                                         ; $798d: $ff
	ld   h, c                                        ; $798e: $61
	inc  e                                           ; $798f: $1c
	rst  $38                                         ; $7990: $ff
	rst  $38                                         ; $7991: $ff
	pop  bc                                          ; $7992: $c1
	ld   de, $1111                                   ; $7993: $11 $11 $11
	ld   e, l                                        ; $7996: $5d
	rst  $38                                         ; $7997: $ff
	rst  $38                                         ; $7998: $ff
	rst  $38                                         ; $7999: $ff
	add  c                                           ; $799a: $81
	ld   c, l                                        ; $799b: $4d
	rst  $38                                         ; $799c: $ff
	rst  $38                                         ; $799d: $ff
	pop  af                                          ; $799e: $f1
	ld   de, $1111                                   ; $799f: $11 $11 $11
	ld   a, a                                        ; $79a2: $7f
	rst  $38                                         ; $79a3: $ff
	rst  $38                                         ; $79a4: $ff
	rst  $38                                         ; $79a5: $ff
	add  c                                           ; $79a6: $81
	ccf                                              ; $79a7: $3f
	rst  $38                                         ; $79a8: $ff
	rst  $38                                         ; $79a9: $ff
	pop  bc                                          ; $79aa: $c1
	ld   de, $1111                                   ; $79ab: $11 $11 $11
	inc  e                                           ; $79ae: $1c
	rst  $38                                         ; $79af: $ff
	rst  $38                                         ; $79b0: $ff
	rst  $38                                         ; $79b1: $ff
	add  [hl]                                        ; $79b2: $86
	ld   e, l                                        ; $79b3: $5d
	rst  $38                                         ; $79b4: $ff
	rst  $38                                         ; $79b5: $ff
	db   $d3                                         ; $79b6: $d3

Call_0d4_79b7:
	ld   de, $1111                                   ; $79b7: $11 $11 $11
	rla                                              ; $79ba: $17
	rst  $38                                         ; $79bb: $ff
	rst  $38                                         ; $79bc: $ff
	rst  $38                                         ; $79bd: $ff
	jp   $ef48                                       ; $79be: $c3 $48 $ef


	rst  $38                                         ; $79c1: $ff
	push af                                          ; $79c2: $f5
	ld   de, $1111                                   ; $79c3: $11 $11 $11
	dec  d                                           ; $79c6: $15
	rst  $38                                         ; $79c7: $ff
	rst  $38                                         ; $79c8: $ff
	rst  $38                                         ; $79c9: $ff
	or   $75                                         ; $79ca: $f6 $75
	rst  JumpTable                                         ; $79cc: $df
	rst  $38                                         ; $79cd: $ff
	db   $fd                                         ; $79ce: $fd
	ld   h, c                                        ; $79cf: $61
	ld   de, $1111                                   ; $79d0: $11 $11 $11
	adc  l                                           ; $79d3: $8d
	xor  a                                           ; $79d4: $af
	rst  $38                                         ; $79d5: $ff
	ld   a, [$6e66]                                  ; $79d6: $fa $66 $6e
	rst  $38                                         ; $79d9: $ff
	rst  $38                                         ; $79da: $ff
	ret                                              ; $79db: $c9


	ld   de, $1411                                   ; $79dc: $11 $11 $14
	ld   [hl], a                                     ; $79df: $77
	ld   h, e                                        ; $79e0: $63
	ld   e, b                                        ; $79e1: $58
	xor  h                                           ; $79e2: $ac
	add  a                                           ; $79e3: $87
	ld   a, c                                        ; $79e4: $79
	adc  $ff                                         ; $79e5: $ce $ff
	rst  $38                                         ; $79e7: $ff
	db   $fd                                         ; $79e8: $fd
	cp   e                                           ; $79e9: $bb
	xor  b                                           ; $79ea: $a8
	ld   d, e                                        ; $79eb: $53
	ld   hl, $1111                                   ; $79ec: $21 $11 $11
	dec  d                                           ; $79ef: $15
	ld   d, [hl]                                     ; $79f0: $56
	ld   a, c                                        ; $79f1: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f2: $cf
	rst  $38                                         ; $79f3: $ff
	rst  $38                                         ; $79f4: $ff
	rst  $38                                         ; $79f5: $ff
	rst  $38                                         ; $79f6: $ff
	jp   z, $1161                                    ; $79f7: $ca $61 $11

	ld   de, $1111                                   ; $79fa: $11 $11 $11
	ld   [hl+], a                                    ; $79fd: $22
	ld   e, b                                        ; $79fe: $58
	xor  h                                           ; $79ff: $ac
	rst  $38                                         ; $7a00: $ff
	rst  $38                                         ; $7a01: $ff
	rst  $38                                         ; $7a02: $ff
	rst  $38                                         ; $7a03: $ff
	ld   a, [$1161]                                  ; $7a04: $fa $61 $11
	ld   de, $1111                                   ; $7a07: $11 $11 $11
	ld   de, $7d14                                   ; $7a0a: $11 $14 $7d
	rst  $38                                         ; $7a0d: $ff
	rst  $38                                         ; $7a0e: $ff
	rst  $38                                         ; $7a0f: $ff
	rst  $38                                         ; $7a10: $ff
	db   $fc                                         ; $7a11: $fc
	ld   [hl], d                                     ; $7a12: $72
	ld   de, $1111                                   ; $7a13: $11 $11 $11
	ld   de, $1311                                   ; $7a16: $11 $11 $13
	sbc  [hl]                                        ; $7a19: $9e
	rst  $38                                         ; $7a1a: $ff
	rst  $38                                         ; $7a1b: $ff
	rst  $38                                         ; $7a1c: $ff
	rst  $38                                         ; $7a1d: $ff
	rst  $38                                         ; $7a1e: $ff
	and  [hl]                                        ; $7a1f: $a6
	ld   de, $1111                                   ; $7a20: $11 $11 $11
	ld   de, $1311                                   ; $7a23: $11 $11 $13
	adc  l                                           ; $7a26: $8d
	rst  $38                                         ; $7a27: $ff
	rst  $38                                         ; $7a28: $ff
	rst  $38                                         ; $7a29: $ff
	rst  $38                                         ; $7a2a: $ff
	rst  $38                                         ; $7a2b: $ff
	jp   hl                                          ; $7a2c: $e9


	ld   sp, $1111                                   ; $7a2d: $31 $11 $11
	ld   de, $2411                                   ; $7a30: $11 $11 $24
	ld   l, c                                        ; $7a33: $69
	rst  JumpTable                                         ; $7a34: $df
	rst  $38                                         ; $7a35: $ff
	rst  $38                                         ; $7a36: $ff
	rst  $38                                         ; $7a37: $ff
	rst  $38                                         ; $7a38: $ff
	ld   a, [$1151]                                  ; $7a39: $fa $51 $11
	ld   de, $1111                                   ; $7a3c: $11 $11 $11
	ld   [de], a                                     ; $7a3f: $12
	ld   h, $af                                      ; $7a40: $26 $af
	rst  $38                                         ; $7a42: $ff
	rst  $38                                         ; $7a43: $ff
	rst  $38                                         ; $7a44: $ff
	rst  $38                                         ; $7a45: $ff
	db   $fc                                         ; $7a46: $fc
	add  e                                           ; $7a47: $83
	ld   de, $1111                                   ; $7a48: $11 $11 $11
	ld   de, $2411                                   ; $7a4b: $11 $11 $24
	adc  h                                           ; $7a4e: $8c
	rst  $38                                         ; $7a4f: $ff
	rst  $38                                         ; $7a50: $ff
	rst  $38                                         ; $7a51: $ff
	rst  $38                                         ; $7a52: $ff
	rst  $38                                         ; $7a53: $ff
	rst  ToBoot                                         ; $7a54: $c7
	ld   de, $1111                                   ; $7a55: $11 $11 $11
	ld   de, $3311                                   ; $7a58: $11 $11 $33
	ld   l, d                                        ; $7a5b: $6a
	rst  $38                                         ; $7a5c: $ff
	rst  $38                                         ; $7a5d: $ff
	rst  $38                                         ; $7a5e: $ff
	rst  $38                                         ; $7a5f: $ff
	rst  $38                                         ; $7a60: $ff
	ld   a, [$1151]                                  ; $7a61: $fa $51 $11
	ld   de, $1111                                   ; $7a64: $11 $11 $11
	ld   [de], a                                     ; $7a67: $12
	ld   c, b                                        ; $7a68: $48
	cp   a                                           ; $7a69: $bf
	rst  $38                                         ; $7a6a: $ff
	rst  $38                                         ; $7a6b: $ff
	rst  $38                                         ; $7a6c: $ff
	rst  $38                                         ; $7a6d: $ff
	cp   $72                                         ; $7a6e: $fe $72
	ld   de, $1111                                   ; $7a70: $11 $11 $11
	ld   de, $1411                                   ; $7a73: $11 $11 $14
	sbc  l                                           ; $7a76: $9d
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	rst  $38                                         ; $7a79: $ff
	rst  $38                                         ; $7a7a: $ff
	rst  $38                                         ; $7a7b: $ff
	rst  ToBoot                                         ; $7a7c: $c7
	ld   de, $1111                                   ; $7a7d: $11 $11 $11
	ld   de, $2311                                   ; $7a80: $11 $11 $23
	ld   e, c                                        ; $7a83: $59
	rst  $28                                         ; $7a84: $ef
	rst  $38                                         ; $7a85: $ff
	rst  $38                                         ; $7a86: $ff
	rst  $38                                         ; $7a87: $ff
	rst  $38                                         ; $7a88: $ff
	ld   a, [$1151]                                  ; $7a89: $fa $51 $11
	ld   de, $1111                                   ; $7a8c: $11 $11 $11
	ld   [de], a                                     ; $7a8f: $12
	scf                                              ; $7a90: $37
	xor  a                                           ; $7a91: $af
	rst  $38                                         ; $7a92: $ff
	rst  $38                                         ; $7a93: $ff
	rst  $38                                         ; $7a94: $ff
	rst  $38                                         ; $7a95: $ff
	rst  $38                                         ; $7a96: $ff
	or   h                                           ; $7a97: $b4
	ld   de, $1111                                   ; $7a98: $11 $11 $11
	ld   de, $3311                                   ; $7a9b: $11 $11 $33
	ld   a, e                                        ; $7a9e: $7b
	rst  $38                                         ; $7a9f: $ff
	rst  $38                                         ; $7aa0: $ff
	rst  $38                                         ; $7aa1: $ff
	rst  $38                                         ; $7aa2: $ff
	rst  $38                                         ; $7aa3: $ff
	ld   a, [$1141]                                  ; $7aa4: $fa $41 $11
	ld   de, $1111                                   ; $7aa7: $11 $11 $11
	inc  de                                          ; $7aaa: $13
	scf                                              ; $7aab: $37
	xor  a                                           ; $7aac: $af
	rst  $38                                         ; $7aad: $ff
	rst  $38                                         ; $7aae: $ff
	rst  $38                                         ; $7aaf: $ff
	rst  $38                                         ; $7ab0: $ff
	rst  $38                                         ; $7ab1: $ff
	and  l                                           ; $7ab2: $a5
	ld   de, $1111                                   ; $7ab3: $11 $11 $11
	ld   de, $3311                                   ; $7ab6: $11 $11 $33
	ld   l, c                                        ; $7ab9: $69
	rst  $28                                         ; $7aba: $ef
	rst  $38                                         ; $7abb: $ff
	rst  $38                                         ; $7abc: $ff
	rst  $38                                         ; $7abd: $ff
	rst  $38                                         ; $7abe: $ff
	db   $fc                                         ; $7abf: $fc
	ld   h, c                                        ; $7ac0: $61
	ld   de, $1111                                   ; $7ac1: $11 $11 $11
	ld   de, $2512                                   ; $7ac4: $11 $12 $25
	sbc  [hl]                                        ; $7ac7: $9e
	rst  $38                                         ; $7ac8: $ff
	rst  $38                                         ; $7ac9: $ff
	rst  $38                                         ; $7aca: $ff
	rst  $38                                         ; $7acb: $ff
	rst  $38                                         ; $7acc: $ff
	rst  $10                                         ; $7acd: $d7
	ld   de, $1111                                   ; $7ace: $11 $11 $11
	ld   de, $1311                                   ; $7ad1: $11 $11 $13
	ld   b, a                                        ; $7ad4: $47
	xor  a                                           ; $7ad5: $af
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	rst  $38                                         ; $7ad8: $ff
	rst  $38                                         ; $7ad9: $ff
	rst  $38                                         ; $7ada: $ff
	and  h                                           ; $7adb: $a4
	ld   de, $1111                                   ; $7adc: $11 $11 $11
	ld   de, $2411                                   ; $7adf: $11 $11 $24
	ld   l, d                                        ; $7ae2: $6a
	rst  $28                                         ; $7ae3: $ef
	rst  $38                                         ; $7ae4: $ff
	rst  $38                                         ; $7ae5: $ff
	rst  $38                                         ; $7ae6: $ff
	rst  $38                                         ; $7ae7: $ff
	db   $fc                                         ; $7ae8: $fc
	ld   [hl], c                                     ; $7ae9: $71
	ld   de, $1111                                   ; $7aea: $11 $11 $11
	ld   de, $4511                                   ; $7aed: $11 $11 $45
	ld   a, d                                        ; $7af0: $7a
	rst  $38                                         ; $7af1: $ff
	rst  $38                                         ; $7af2: $ff
	rst  $38                                         ; $7af3: $ff
	rst  $38                                         ; $7af4: $ff
	rst  $38                                         ; $7af5: $ff
	rst  $30                                         ; $7af6: $f7
	ld   de, $1111                                   ; $7af7: $11 $11 $11
	ld   de, $7c11                                   ; $7afa: $11 $11 $7c
	rst  $38                                         ; $7afd: $ff
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	rst  $38                                         ; $7b00: $ff
	rst  $38                                         ; $7b01: $ff
	rst  $38                                         ; $7b02: $ff
	ei                                               ; $7b03: $fb
	ld   h, c                                        ; $7b04: $61
	ld   de, $1111                                   ; $7b05: $11 $11 $11
	ld   de, $ff1b                                   ; $7b08: $11 $1b $ff
	rst  $38                                         ; $7b0b: $ff
	rst  $38                                         ; $7b0c: $ff
	rst  JumpTable                                         ; $7b0d: $df
	rst  $38                                         ; $7b0e: $ff
	rst  $38                                         ; $7b0f: $ff
	rst  $38                                         ; $7b10: $ff
	ld   d, c                                        ; $7b11: $51
	ld   de, $1111                                   ; $7b12: $11 $11 $11
	ld   [de], a                                     ; $7b15: $12
	ld   h, a                                        ; $7b16: $67
	rst  $38                                         ; $7b17: $ff
	rst  $38                                         ; $7b18: $ff
	db   $fc                                         ; $7b19: $fc
	db   $fc                                         ; $7b1a: $fc
	rst  $38                                         ; $7b1b: $ff
	rst  $38                                         ; $7b1c: $ff
	rst  $38                                         ; $7b1d: $ff
	push de                                          ; $7b1e: $d5
	ld   de, $1111                                   ; $7b1f: $11 $11 $11
	ld   de, $bf68                                   ; $7b22: $11 $68 $bf
	rst  $38                                         ; $7b25: $ff
	rst  $38                                         ; $7b26: $ff
	call c, $ffff                                    ; $7b27: $dc $ff $ff
	rst  $38                                         ; $7b2a: $ff
	ld   sp, hl                                      ; $7b2b: $f9
	ld   hl, $1111                                   ; $7b2c: $21 $11 $11
	ld   de, $ad19                                   ; $7b2f: $11 $19 $ad
	rst  $38                                         ; $7b32: $ff
	rst  $38                                         ; $7b33: $ff
	db   $fc                                         ; $7b34: $fc
	xor  a                                           ; $7b35: $af
	rst  $38                                         ; $7b36: $ff
	rst  $38                                         ; $7b37: $ff
	cp   $91                                         ; $7b38: $fe $91
	ld   de, $1111                                   ; $7b3a: $11 $11 $11
	inc  d                                           ; $7b3d: $14
	adc  $ff                                         ; $7b3e: $ce $ff
	rst  $38                                         ; $7b40: $ff
	db   $fc                                         ; $7b41: $fc
	sbc  [hl]                                        ; $7b42: $9e
	rst  $38                                         ; $7b43: $ff
	rst  $38                                         ; $7b44: $ff
	cp   $91                                         ; $7b45: $fe $91
	ld   de, $1111                                   ; $7b47: $11 $11 $11
	ld   d, $de                                      ; $7b4a: $16 $de
	rst  $38                                         ; $7b4c: $ff
	rst  $38                                         ; $7b4d: $ff
	db   $fd                                         ; $7b4e: $fd
	adc  d                                           ; $7b4f: $8a
	rst  $38                                         ; $7b50: $ff
	rst  $38                                         ; $7b51: $ff
	cp   $92                                         ; $7b52: $fe $92
	ld   de, $1111                                   ; $7b54: $11 $11 $11
	inc  d                                           ; $7b57: $14
	rst  JumpTable                                         ; $7b58: $df
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	rst  $38                                         ; $7b5b: $ff
	xor  e                                           ; $7b5c: $ab
	rst  $38                                         ; $7b5d: $ff
	rst  $38                                         ; $7b5e: $ff
	rst  $38                                         ; $7b5f: $ff
	add  d                                           ; $7b60: $82
	ld   de, $1111                                   ; $7b61: $11 $11 $11
	ld   de, $ffef                                   ; $7b64: $11 $ef $ff
	rst  $38                                         ; $7b67: $ff
	rst  $38                                         ; $7b68: $ff
	adc  b                                           ; $7b69: $88
	rst  $38                                         ; $7b6a: $ff
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	sub  d                                           ; $7b6d: $92
	ld   de, $1111                                   ; $7b6e: $11 $11 $11
	ld   [de], a                                     ; $7b71: $12
	rst  $38                                         ; $7b72: $ff
	rst  $38                                         ; $7b73: $ff
	rst  $38                                         ; $7b74: $ff
	db   $fd                                         ; $7b75: $fd
	sbc  c                                           ; $7b76: $99
	rst  $38                                         ; $7b77: $ff
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	sub  d                                           ; $7b7a: $92
	ld   de, $1111                                   ; $7b7b: $11 $11 $11
	ld   de, $ffcf                                   ; $7b7e: $11 $cf $ff
	rst  $38                                         ; $7b81: $ff
	db   $fd                                         ; $7b82: $fd
	ld   a, h                                        ; $7b83: $7c
	rst  $38                                         ; $7b84: $ff
	rst  $38                                         ; $7b85: $ff
	rst  $38                                         ; $7b86: $ff
	ld   [hl], c                                     ; $7b87: $71
	ld   de, $1111                                   ; $7b88: $11 $11 $11
	ld   de, $ffff                                   ; $7b8b: $11 $ff $ff
	rst  $38                                         ; $7b8e: $ff
	db   $fd                                         ; $7b8f: $fd
	or   a                                           ; $7b90: $b7
	rst  $38                                         ; $7b91: $ff
	rst  $38                                         ; $7b92: $ff
	rst  $38                                         ; $7b93: $ff
	add  c                                           ; $7b94: $81
	ld   de, $1111                                   ; $7b95: $11 $11 $11
	ld   de, $ffff                                   ; $7b98: $11 $ff $ff
	rst  $38                                         ; $7b9b: $ff
	db   $fc                                         ; $7b9c: $fc
	xor  c                                           ; $7b9d: $a9
	rst  $38                                         ; $7b9e: $ff
	rst  $38                                         ; $7b9f: $ff
	rst  $38                                         ; $7ba0: $ff
	ld   h, c                                        ; $7ba1: $61
	ld   de, $1111                                   ; $7ba2: $11 $11 $11
	ld   de, $ffdf                                   ; $7ba5: $11 $df $ff
	rst  $38                                         ; $7ba8: $ff
	db   $fc                                         ; $7ba9: $fc
	ld   a, c                                        ; $7baa: $79
	rst  $28                                         ; $7bab: $ef
	rst  $38                                         ; $7bac: $ff
	rst  $38                                         ; $7bad: $ff
	ld   h, c                                        ; $7bae: $61
	ld   de, $1111                                   ; $7baf: $11 $11 $11
	ld   de, $ffdf                                   ; $7bb2: $11 $df $ff
	rst  $38                                         ; $7bb5: $ff
	rst  $38                                         ; $7bb6: $ff
	ld   a, c                                        ; $7bb7: $79
	rst  $28                                         ; $7bb8: $ef
	rst  $38                                         ; $7bb9: $ff
	rst  $38                                         ; $7bba: $ff
	add  d                                           ; $7bbb: $82
	ld   de, $1111                                   ; $7bbc: $11 $11 $11
	ld   de, $ffcf                                   ; $7bbf: $11 $cf $ff
	rst  $38                                         ; $7bc2: $ff
	db   $fd                                         ; $7bc3: $fd
	sub  a                                           ; $7bc4: $97
	rst  JumpTable                                         ; $7bc5: $df
	rst  $38                                         ; $7bc6: $ff
	rst  $38                                         ; $7bc7: $ff
	sub  h                                           ; $7bc8: $94
	ld   de, $1111                                   ; $7bc9: $11 $11 $11
	ld   de, $ff9f                                   ; $7bcc: $11 $9f $ff
	rst  $38                                         ; $7bcf: $ff
	rst  $38                                         ; $7bd0: $ff
	ret  z                                           ; $7bd1: $c8

	rst  JumpTable                                         ; $7bd2: $df
	rst  $38                                         ; $7bd3: $ff
	rst  $38                                         ; $7bd4: $ff
	call nc, $1111                                   ; $7bd5: $d4 $11 $11
	ld   de, $1f11                                   ; $7bd8: $11 $11 $1f
	rst  $38                                         ; $7bdb: $ff
	rst  $38                                         ; $7bdc: $ff
	rst  $38                                         ; $7bdd: $ff
	rst  $10                                         ; $7bde: $d7
	sbc  [hl]                                        ; $7bdf: $9e
	rst  $38                                         ; $7be0: $ff
	rst  $38                                         ; $7be1: $ff
	rst  $30                                         ; $7be2: $f7
	ld   de, $1111                                   ; $7be3: $11 $11 $11
	ld   de, $ff1a                                   ; $7be6: $11 $1a $ff
	rst  $38                                         ; $7be9: $ff
	rst  $38                                         ; $7bea: $ff
	ld   a, [$ff8b]                                  ; $7beb: $fa $8b $ff
	rst  $38                                         ; $7bee: $ff
	db   $fc                                         ; $7bef: $fc
	ld   b, c                                        ; $7bf0: $41
	ld   de, $1111                                   ; $7bf1: $11 $11 $11
	ld   [de], a                                     ; $7bf4: $12
	rst  $38                                         ; $7bf5: $ff
	rst  $38                                         ; $7bf6: $ff
	rst  $38                                         ; $7bf7: $ff
	ld   sp, hl                                      ; $7bf8: $f9
	adc  c                                           ; $7bf9: $89
	rst  $38                                         ; $7bfa: $ff
	rst  $38                                         ; $7bfb: $ff
	rst  $38                                         ; $7bfc: $ff
	ld   h, c                                        ; $7bfd: $61
	ld   de, $1111                                   ; $7bfe: $11 $11 $11
	ld   de, $ffaf                                   ; $7c01: $11 $af $ff
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	adc  b                                           ; $7c06: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c07: $cf
	rst  $38                                         ; $7c08: $ff
	rst  $38                                         ; $7c09: $ff
	jp   nz, $1111                                   ; $7c0a: $c2 $11 $11

	ld   de, $1d11                                   ; $7c0d: $11 $11 $1d
	rst  $38                                         ; $7c10: $ff
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	ld   a, [$ffaf]                                  ; $7c13: $fa $af $ff
	rst  $38                                         ; $7c16: $ff
	ld   sp, hl                                      ; $7c17: $f9
	ld   de, $1111                                   ; $7c18: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $7c1b: $11 $13 $ff
	rst  $38                                         ; $7c1e: $ff
	rst  $38                                         ; $7c1f: $ff
	ei                                               ; $7c20: $fb
	ld   a, e                                        ; $7c21: $7b
	rst  $28                                         ; $7c22: $ef
	rst  $38                                         ; $7c23: $ff
	rst  $38                                         ; $7c24: $ff
	ld   h, d                                        ; $7c25: $62
	ld   de, $1111                                   ; $7c26: $11 $11 $11
	ld   de, $ff6f                                   ; $7c29: $11 $6f $ff
	rst  $38                                         ; $7c2c: $ff
	rst  $38                                         ; $7c2d: $ff
	ret  z                                           ; $7c2e: $c8

	xor  a                                           ; $7c2f: $af
	rst  $38                                         ; $7c30: $ff
	rst  $38                                         ; $7c31: $ff
	db   $e3                                         ; $7c32: $e3
	ld   de, $1111                                   ; $7c33: $11 $11 $11
	ld   de, $ff1a                                   ; $7c36: $11 $1a $ff
	rst  $38                                         ; $7c39: $ff
	rst  $38                                         ; $7c3a: $ff
	db   $fc                                         ; $7c3b: $fc
	ld   l, h                                        ; $7c3c: $6c
	rst  $38                                         ; $7c3d: $ff
	rst  $38                                         ; $7c3e: $ff
	db   $fc                                         ; $7c3f: $fc
	ld   sp, $1111                                   ; $7c40: $31 $11 $11
	ld   de, $cf11                                   ; $7c43: $11 $11 $cf
	rst  $38                                         ; $7c46: $ff
	rst  $38                                         ; $7c47: $ff
	rst  $38                                         ; $7c48: $ff
	db   $db                                         ; $7c49: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c4a: $cf
	rst  $38                                         ; $7c4b: $ff
	rst  $38                                         ; $7c4c: $ff
	call nz, $1111                                   ; $7c4d: $c4 $11 $11
	ld   de, $1711                                   ; $7c50: $11 $11 $17
	rst  $38                                         ; $7c53: $ff
	rst  $38                                         ; $7c54: $ff
	rst  $38                                         ; $7c55: $ff
	ei                                               ; $7c56: $fb
	xor  l                                           ; $7c57: $ad
	rst  $38                                         ; $7c58: $ff
	rst  $38                                         ; $7c59: $ff
	cp   $51                                         ; $7c5a: $fe $51
	ld   de, $1111                                   ; $7c5c: $11 $11 $11
	ld   de, $ff5f                                   ; $7c5f: $11 $5f $ff
	rst  $38                                         ; $7c62: $ff
	rst  $38                                         ; $7c63: $ff
	ret  c                                           ; $7c64: $d8

	cp   a                                           ; $7c65: $bf
	rst  $38                                         ; $7c66: $ff
	rst  $38                                         ; $7c67: $ff
	rst  $30                                         ; $7c68: $f7
	ld   b, c                                        ; $7c69: $41
	ld   de, $1111                                   ; $7c6a: $11 $11 $11
	inc  d                                           ; $7c6d: $14
	rst  $38                                         ; $7c6e: $ff
	rst  $38                                         ; $7c6f: $ff
	rst  $38                                         ; $7c70: $ff
	rst  $38                                         ; $7c71: $ff
	xor  d                                           ; $7c72: $aa
	rst  $28                                         ; $7c73: $ef
	rst  $38                                         ; $7c74: $ff
	rst  $38                                         ; $7c75: $ff
	add  l                                           ; $7c76: $85
	ld   de, $1111                                   ; $7c77: $11 $11 $11
	ld   de, $ff1b                                   ; $7c7a: $11 $1b $ff
	rst  $38                                         ; $7c7d: $ff
	rst  $38                                         ; $7c7e: $ff
	db   $fd                                         ; $7c7f: $fd
	adc  l                                           ; $7c80: $8d
	rst  $38                                         ; $7c81: $ff
	rst  $38                                         ; $7c82: $ff
	db   $fc                                         ; $7c83: $fc
	ld   d, d                                        ; $7c84: $52
	ld   de, $1111                                   ; $7c85: $11 $11 $11
	ld   de, $ff4c                                   ; $7c88: $11 $4c $ff
	rst  $38                                         ; $7c8b: $ff
	rst  $38                                         ; $7c8c: $ff
	rst  $20                                         ; $7c8d: $e7
	xor  a                                           ; $7c8e: $af
	rst  $38                                         ; $7c8f: $ff
	rst  $38                                         ; $7c90: $ff
	ld   a, [$1152]                                  ; $7c91: $fa $52 $11
	ld   de, $1111                                   ; $7c94: $11 $11 $11
	ld   c, [hl]                                     ; $7c97: $4e
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	rst  $38                                         ; $7c9a: $ff
	ret  c                                           ; $7c9b: $d8

	rst  JumpTable                                         ; $7c9c: $df
	rst  $38                                         ; $7c9d: $ff
	rst  $38                                         ; $7c9e: $ff
	ld   sp, hl                                      ; $7c9f: $f9
	ld   d, c                                        ; $7ca0: $51
	ld   de, $1111                                   ; $7ca1: $11 $11 $11
	ld   de, $ef4f                                   ; $7ca4: $11 $4f $ef
	rst  $38                                         ; $7ca7: $ff
	rst  $38                                         ; $7ca8: $ff
	ld   [$ffef], a                                  ; $7ca9: $ea $ef $ff
	rst  $38                                         ; $7cac: $ff
	ld   [$1163], a                                  ; $7cad: $ea $63 $11
	ld   de, $1111                                   ; $7cb0: $11 $11 $11
	dec  de                                          ; $7cb3: $1b
	rst  $28                                         ; $7cb4: $ef
	rst  $38                                         ; $7cb5: $ff
	rst  $38                                         ; $7cb6: $ff
	set  7, a                                        ; $7cb7: $cb $ff
	rst  $38                                         ; $7cb9: $ff
	rst  $38                                         ; $7cba: $ff
	ld   a, [$1184]                                  ; $7cbb: $fa $84 $11
	ld   de, $1111                                   ; $7cbe: $11 $11 $11
	add  hl, de                                      ; $7cc1: $19
	cp   e                                           ; $7cc2: $bb
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff
	ld   a, [$ffdf]                                  ; $7cc5: $fa $df $ff
	rst  $38                                         ; $7cc8: $ff
	db   $fd                                         ; $7cc9: $fd
	sub  a                                           ; $7cca: $97
	ld   de, $1111                                   ; $7ccb: $11 $11 $11
	ld   de, $9a12                                   ; $7cce: $11 $12 $9a
	rst  $38                                         ; $7cd1: $ff
	rst  $38                                         ; $7cd2: $ff
	cp   $ff                                         ; $7cd3: $fe $ff
	rst  $38                                         ; $7cd5: $ff
	rst  $38                                         ; $7cd6: $ff
	rst  $38                                         ; $7cd7: $ff
	ret                                              ; $7cd8: $c9


	ld   d, c                                        ; $7cd9: $51
	ld   de, $1111                                   ; $7cda: $11 $11 $11
	ld   de, $bf36                                   ; $7cdd: $11 $36 $bf
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	rst  $38                                         ; $7ce2: $ff
	rst  $38                                         ; $7ce3: $ff
	rst  $38                                         ; $7ce4: $ff
	rst  $38                                         ; $7ce5: $ff
	db   $fd                                         ; $7ce6: $fd
	sub  l                                           ; $7ce7: $95
	ld   de, $1111                                   ; $7ce8: $11 $11 $11
	ld   de, $3812                                   ; $7ceb: $11 $12 $38
	rst  $38                                         ; $7cee: $ff
	rst  $38                                         ; $7cef: $ff
	rst  $38                                         ; $7cf0: $ff
	rst  $38                                         ; $7cf1: $ff
	rst  $38                                         ; $7cf2: $ff
	rst  $38                                         ; $7cf3: $ff
	rst  $38                                         ; $7cf4: $ff
	add  sp, -$7d                                    ; $7cf5: $e8 $83
	ld   de, $1111                                   ; $7cf7: $11 $11 $11
	ld   de, $2712                                   ; $7cfa: $11 $12 $27
	cp   e                                           ; $7cfd: $bb
	call c, $efbe                                    ; $7cfe: $dc $be $ef
	rst  $38                                         ; $7d01: $ff
	rst  $38                                         ; $7d02: $ff
	rst  $38                                         ; $7d03: $ff
	rst  $38                                         ; $7d04: $ff
	db   $fd                                         ; $7d05: $fd
	add  l                                           ; $7d06: $85
	ld   de, $1111                                   ; $7d07: $11 $11 $11
	ld   de, $1111                                   ; $7d0a: $11 $11 $11
	dec  [hl]                                        ; $7d0d: $35
	sbc  l                                           ; $7d0e: $9d
	rst  $38                                         ; $7d0f: $ff
	rst  $38                                         ; $7d10: $ff
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	rst  $38                                         ; $7d13: $ff
	rst  $38                                         ; $7d14: $ff
	or   l                                           ; $7d15: $b5
	ld   de, $1111                                   ; $7d16: $11 $11 $11
	ld   de, $1111                                   ; $7d19: $11 $11 $11
	ld   [de], a                                     ; $7d1c: $12
	ld   l, h                                        ; $7d1d: $6c
	rst  $38                                         ; $7d1e: $ff
	rst  $38                                         ; $7d1f: $ff
	rst  $38                                         ; $7d20: $ff
	rst  $38                                         ; $7d21: $ff
	rst  $38                                         ; $7d22: $ff
	rst  $38                                         ; $7d23: $ff
	ld   sp, hl                                      ; $7d24: $f9
	ld   b, c                                        ; $7d25: $41
	ld   de, $1111                                   ; $7d26: $11 $11 $11
	ld   de, $1111                                   ; $7d29: $11 $11 $11
	ld   c, b                                        ; $7d2c: $48
	rst  JumpTable                                         ; $7d2d: $df
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	rst  $38                                         ; $7d30: $ff
	rst  $38                                         ; $7d31: $ff
	rst  $38                                         ; $7d32: $ff
	rst  $38                                         ; $7d33: $ff
	sub  e                                           ; $7d34: $93
	ld   de, $1111                                   ; $7d35: $11 $11 $11
	ld   de, $1111                                   ; $7d38: $11 $11 $11
	inc  de                                          ; $7d3b: $13

jr_0d4_7d3c:
	ld   a, l                                        ; $7d3c: $7d
	rst  $38                                         ; $7d3d: $ff
	rst  $38                                         ; $7d3e: $ff
	rst  $38                                         ; $7d3f: $ff
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	ld   hl, sp+$52                                  ; $7d43: $f8 $52
	ld   de, $1111                                   ; $7d45: $11 $11 $11
	ld   de, $1111                                   ; $7d48: $11 $11 $11
	dec  d                                           ; $7d4b: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d4c: $cf
	rst  $38                                         ; $7d4d: $ff
	rst  $38                                         ; $7d4e: $ff
	rst  $38                                         ; $7d4f: $ff
	rst  $38                                         ; $7d50: $ff
	rst  $38                                         ; $7d51: $ff
	rst  $38                                         ; $7d52: $ff
	or   a                                           ; $7d53: $b7
	ld   b, c                                        ; $7d54: $41
	ld   de, $1111                                   ; $7d55: $11 $11 $11
	ld   de, $1111                                   ; $7d58: $11 $11 $11
	jr   z, jr_0d4_7d3c                              ; $7d5b: $28 $df

	rst  $38                                         ; $7d5d: $ff
	rst  $38                                         ; $7d5e: $ff
	rst  $38                                         ; $7d5f: $ff
	rst  $38                                         ; $7d60: $ff
	rst  $38                                         ; $7d61: $ff
	cp   $a7                                         ; $7d62: $fe $a7
	ld   sp, $1111                                   ; $7d64: $31 $11 $11
	ld   de, $1111                                   ; $7d67: $11 $11 $11
	ld   de, $ff5c                                   ; $7d6a: $11 $5c $ff
	rst  $38                                         ; $7d6d: $ff
	rst  $38                                         ; $7d6e: $ff
	rst  $38                                         ; $7d6f: $ff
	rst  $38                                         ; $7d70: $ff
	rst  $38                                         ; $7d71: $ff
	db   $fd                                         ; $7d72: $fd
	sub  l                                           ; $7d73: $95
	ld   de, $1111                                   ; $7d74: $11 $11 $11
	ld   de, $1111                                   ; $7d77: $11 $11 $11
	inc  de                                          ; $7d7a: $13
	sbc  [hl]                                        ; $7d7b: $9e
	rst  $38                                         ; $7d7c: $ff
	rst  $38                                         ; $7d7d: $ff
	rst  $38                                         ; $7d7e: $ff
	rst  $38                                         ; $7d7f: $ff
	rst  $38                                         ; $7d80: $ff
	rst  $38                                         ; $7d81: $ff
	db   $fd                                         ; $7d82: $fd
	add  d                                           ; $7d83: $82
	ld   de, $1111                                   ; $7d84: $11 $11 $11
	ld   de, $1111                                   ; $7d87: $11 $11 $11
	dec  d                                           ; $7d8a: $15
	xor  a                                           ; $7d8b: $af
	rst  $38                                         ; $7d8c: $ff
	rst  $38                                         ; $7d8d: $ff
	rst  $38                                         ; $7d8e: $ff
	rst  $38                                         ; $7d8f: $ff
	rst  $38                                         ; $7d90: $ff
	rst  $38                                         ; $7d91: $ff
	ld   a, [$1151]                                  ; $7d92: $fa $51 $11
	ld   de, $1111                                   ; $7d95: $11 $11 $11
	ld   de, $2711                                   ; $7d98: $11 $11 $27
	rst  JumpTable                                         ; $7d9b: $df
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	rst  $38                                         ; $7d9f: $ff
	rst  $38                                         ; $7da0: $ff
	rst  $38                                         ; $7da1: $ff
	reti                                             ; $7da2: $d9


	ld   sp, $1111                                   ; $7da3: $31 $11 $11
	ld   de, $1111                                   ; $7da6: $11 $11 $11
	ld   de, $ef39                                   ; $7da9: $11 $39 $ef
	rst  $38                                         ; $7dac: $ff
	rst  $38                                         ; $7dad: $ff
	rst  $38                                         ; $7dae: $ff
	rst  $38                                         ; $7daf: $ff
	rst  $38                                         ; $7db0: $ff
	rst  $38                                         ; $7db1: $ff
	ret  z                                           ; $7db2: $c8

	ld   sp, $1111                                   ; $7db3: $31 $11 $11
	ld   de, $1111                                   ; $7db6: $11 $11 $11
	ld   de, $df39                                   ; $7db9: $11 $39 $df
	rst  $38                                         ; $7dbc: $ff
	rst  $38                                         ; $7dbd: $ff
	rst  $38                                         ; $7dbe: $ff
	rst  $38                                         ; $7dbf: $ff
	rst  $38                                         ; $7dc0: $ff
	rst  $38                                         ; $7dc1: $ff
	ret  c                                           ; $7dc2: $d8

	ld   sp, $1111                                   ; $7dc3: $31 $11 $11
	ld   de, $1111                                   ; $7dc6: $11 $11 $11
	ld   de, $ef39                                   ; $7dc9: $11 $39 $ef
	rst  $38                                         ; $7dcc: $ff
	rst  $38                                         ; $7dcd: $ff
	rst  $38                                         ; $7dce: $ff
	rst  $38                                         ; $7dcf: $ff
	rst  $38                                         ; $7dd0: $ff
	rst  $38                                         ; $7dd1: $ff
	ret  c                                           ; $7dd2: $d8

	ld   sp, $1111                                   ; $7dd3: $31 $11 $11
	ld   de, $1111                                   ; $7dd6: $11 $11 $11
	ld   de, $ef39                                   ; $7dd9: $11 $39 $ef
	rst  $38                                         ; $7ddc: $ff
	rst  $38                                         ; $7ddd: $ff
	rst  $38                                         ; $7dde: $ff
	rst  $38                                         ; $7ddf: $ff
	rst  $38                                         ; $7de0: $ff
	rst  $38                                         ; $7de1: $ff
	rst  $10                                         ; $7de2: $d7
	ld   hl, $1111                                   ; $7de3: $21 $11 $11
	ld   de, $1111                                   ; $7de6: $11 $11 $11
	ld   de, $ef3a                                   ; $7de9: $11 $3a $ef
	rst  $38                                         ; $7dec: $ff
	rst  $38                                         ; $7ded: $ff
	rst  $38                                         ; $7dee: $ff
	rst  $38                                         ; $7def: $ff
	rst  $38                                         ; $7df0: $ff
	rst  $38                                         ; $7df1: $ff
	ret  c                                           ; $7df2: $d8

	ld   sp, $1111                                   ; $7df3: $31 $11 $11
	ld   de, $1111                                   ; $7df6: $11 $11 $11
	ld   de, $df39                                   ; $7df9: $11 $39 $df
	rst  $38                                         ; $7dfc: $ff
	rst  $38                                         ; $7dfd: $ff
	rst  $38                                         ; $7dfe: $ff
	rst  $38                                         ; $7dff: $ff
	rst  $38                                         ; $7e00: $ff
	rst  $38                                         ; $7e01: $ff
	cp   b                                           ; $7e02: $b8
	ld   de, $1111                                   ; $7e03: $11 $11 $11
	ld   de, $1111                                   ; $7e06: $11 $11 $11
	inc  d                                           ; $7e09: $14
	sbc  h                                           ; $7e0a: $9c
	rst  $38                                         ; $7e0b: $ff
	rst  $38                                         ; $7e0c: $ff
	rst  $38                                         ; $7e0d: $ff
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	rst  $38                                         ; $7e10: $ff
	db   $fd                                         ; $7e11: $fd
	and  h                                           ; $7e12: $a4
	ld   de, $1111                                   ; $7e13: $11 $11 $11
	ld   de, $1111                                   ; $7e16: $11 $11 $11
	ld   a, [de]                                     ; $7e19: $1a
	xor  $ff                                         ; $7e1a: $ee $ff
	rst  $38                                         ; $7e1c: $ff
	rst  $38                                         ; $7e1d: $ff
	rst  $38                                         ; $7e1e: $ff
	rst  $38                                         ; $7e1f: $ff
	rst  $38                                         ; $7e20: $ff
	ei                                               ; $7e21: $fb
	ld   b, c                                        ; $7e22: $41
	ld   de, $1111                                   ; $7e23: $11 $11 $11
	ld   de, $1111                                   ; $7e26: $11 $11 $11
	ld   a, l                                        ; $7e29: $7d
	rst  $38                                         ; $7e2a: $ff
	rst  $38                                         ; $7e2b: $ff
	rst  $38                                         ; $7e2c: $ff
	rst  $38                                         ; $7e2d: $ff
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	ld   sp, hl                                      ; $7e31: $f9
	ld   de, $1111                                   ; $7e32: $11 $11 $11
	ld   de, $1111                                   ; $7e35: $11 $11 $11
	ld   d, $be                                      ; $7e38: $16 $be
	rst  $38                                         ; $7e3a: $ff
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	rst  $38                                         ; $7e3d: $ff
	rst  $38                                         ; $7e3e: $ff
	rst  $38                                         ; $7e3f: $ff
	rst  $38                                         ; $7e40: $ff
	or   e                                           ; $7e41: $b3
	ld   de, $1111                                   ; $7e42: $11 $11 $11
	ld   de, $1111                                   ; $7e45: $11 $11 $11
	dec  de                                          ; $7e48: $1b
	cp   a                                           ; $7e49: $bf
	rst  $38                                         ; $7e4a: $ff
	rst  $38                                         ; $7e4b: $ff
	rst  $38                                         ; $7e4c: $ff
	rst  $38                                         ; $7e4d: $ff
	rst  $38                                         ; $7e4e: $ff
	rst  $38                                         ; $7e4f: $ff
	cp   $71                                         ; $7e50: $fe $71
	ld   de, $1111                                   ; $7e52: $11 $11 $11
	ld   de, $1111                                   ; $7e55: $11 $11 $11
	adc  e                                           ; $7e58: $8b
	rst  JumpTable                                         ; $7e59: $df
	rst  $38                                         ; $7e5a: $ff
	rst  $38                                         ; $7e5b: $ff
	rst  $38                                         ; $7e5c: $ff
	rst  $38                                         ; $7e5d: $ff
	rst  $38                                         ; $7e5e: $ff
	rst  $38                                         ; $7e5f: $ff
	ld   sp, hl                                      ; $7e60: $f9
	ld   b, c                                        ; $7e61: $41
	ld   de, $1111                                   ; $7e62: $11 $11 $11
	ld   de, $1111                                   ; $7e65: $11 $11 $11
	cp   h                                           ; $7e68: $bc
	rst  $38                                         ; $7e69: $ff
	rst  $38                                         ; $7e6a: $ff
	rst  $38                                         ; $7e6b: $ff
	rst  $38                                         ; $7e6c: $ff
	rst  $38                                         ; $7e6d: $ff
	rst  $38                                         ; $7e6e: $ff
	rst  $38                                         ; $7e6f: $ff
	ret  z                                           ; $7e70: $c8

	ld   de, $1111                                   ; $7e71: $11 $11 $11
	ld   de, $1111                                   ; $7e74: $11 $11 $11
	dec  d                                           ; $7e77: $15
	adc  $ff                                         ; $7e78: $ce $ff
	rst  $38                                         ; $7e7a: $ff
	rst  $38                                         ; $7e7b: $ff
	rst  $38                                         ; $7e7c: $ff
	rst  $38                                         ; $7e7d: $ff
	rst  $38                                         ; $7e7e: $ff
	rst  $38                                         ; $7e7f: $ff
	sub  h                                           ; $7e80: $94
	ld   de, $1111                                   ; $7e81: $11 $11 $11
	ld   de, $1111                                   ; $7e84: $11 $11 $11
	ld   c, b                                        ; $7e87: $48
	rst  JumpTable                                         ; $7e88: $df
	rst  $38                                         ; $7e89: $ff
	rst  $38                                         ; $7e8a: $ff
	rst  $38                                         ; $7e8b: $ff
	rst  $38                                         ; $7e8c: $ff
	rst  $38                                         ; $7e8d: $ff
	rst  $38                                         ; $7e8e: $ff
	cp   $61                                         ; $7e8f: $fe $61
	ld   de, $1111                                   ; $7e91: $11 $11 $11
	ld   de, $1111                                   ; $7e94: $11 $11 $11
	ld   l, h                                        ; $7e97: $6c
	rst  $38                                         ; $7e98: $ff
	rst  $38                                         ; $7e99: $ff
	rst  $38                                         ; $7e9a: $ff
	rst  $38                                         ; $7e9b: $ff
	rst  $38                                         ; $7e9c: $ff
	rst  $38                                         ; $7e9d: $ff
	rst  $38                                         ; $7e9e: $ff
	ld   hl, sp+$41                                  ; $7e9f: $f8 $41
	ld   de, $1111                                   ; $7ea1: $11 $11 $11
	ld   de, $1511                                   ; $7ea4: $11 $11 $15
	cp   e                                           ; $7ea7: $bb
	rst  $38                                         ; $7ea8: $ff
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	rst  $38                                         ; $7eab: $ff
	rst  $38                                         ; $7eac: $ff
	rst  $38                                         ; $7ead: $ff
	rst  $38                                         ; $7eae: $ff
	or   a                                           ; $7eaf: $b7
	ld   de, $1111                                   ; $7eb0: $11 $11 $11
	ld   de, $1111                                   ; $7eb3: $11 $11 $11
	rla                                              ; $7eb6: $17
	xor  a                                           ; $7eb7: $af
	rst  $38                                         ; $7eb8: $ff
	rst  $38                                         ; $7eb9: $ff
	rst  $38                                         ; $7eba: $ff
	rst  $38                                         ; $7ebb: $ff
	rst  $38                                         ; $7ebc: $ff
	rst  $38                                         ; $7ebd: $ff
	rst  $38                                         ; $7ebe: $ff
	add  h                                           ; $7ebf: $84
	ld   de, $1111                                   ; $7ec0: $11 $11 $11
	ld   de, $1111                                   ; $7ec3: $11 $11 $11
	adc  d                                           ; $7ec6: $8a
	cp   a                                           ; $7ec7: $bf
	rst  $38                                         ; $7ec8: $ff
	rst  $38                                         ; $7ec9: $ff
	rst  $38                                         ; $7eca: $ff
	rst  $38                                         ; $7ecb: $ff
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	ei                                               ; $7ece: $fb
	ld   h, c                                        ; $7ecf: $61
	ld   de, $1111                                   ; $7ed0: $11 $11 $11
	ld   de, $1511                                   ; $7ed3: $11 $11 $15
	ret  z                                           ; $7ed6: $c8

	rst  $38                                         ; $7ed7: $ff
	rst  $38                                         ; $7ed8: $ff
	rst  $38                                         ; $7ed9: $ff
	rst  $38                                         ; $7eda: $ff
	rst  $38                                         ; $7edb: $ff
	rst  $38                                         ; $7edc: $ff
	rst  $38                                         ; $7edd: $ff
	jp   hl                                          ; $7ede: $e9


	ld   sp, $1111                                   ; $7edf: $31 $11 $11
	ld   de, $1111                                   ; $7ee2: $11 $11 $11
	ld   d, $cd                                      ; $7ee5: $16 $cd
	rst  $38                                         ; $7ee7: $ff
	rst  $38                                         ; $7ee8: $ff
	rst  $38                                         ; $7ee9: $ff
	rst  $38                                         ; $7eea: $ff
	rst  $38                                         ; $7eeb: $ff
	rst  $38                                         ; $7eec: $ff
	rst  $38                                         ; $7eed: $ff
	or   l                                           ; $7eee: $b5
	ld   de, $1111                                   ; $7eef: $11 $11 $11
	ld   de, $1111                                   ; $7ef2: $11 $11 $11
	dec  hl                                          ; $7ef5: $2b
	cp   a                                           ; $7ef6: $bf
	rst  $38                                         ; $7ef7: $ff
	rst  $38                                         ; $7ef8: $ff
	rst  $38                                         ; $7ef9: $ff
	rst  $38                                         ; $7efa: $ff
	rst  $38                                         ; $7efb: $ff
	rst  $38                                         ; $7efc: $ff
	cp   $82                                         ; $7efd: $fe $82
	ld   de, $1111                                   ; $7eff: $11 $11 $11
	ld   de, $1111                                   ; $7f02: $11 $11 $11
	adc  h                                           ; $7f05: $8c
	rst  JumpTable                                         ; $7f06: $df
	rst  $38                                         ; $7f07: $ff
	rst  $38                                         ; $7f08: $ff
	rst  $38                                         ; $7f09: $ff
	rst  $38                                         ; $7f0a: $ff
	rst  $38                                         ; $7f0b: $ff
	rst  $38                                         ; $7f0c: $ff
	ld   sp, hl                                      ; $7f0d: $f9
	ld   d, c                                        ; $7f0e: $51
	ld   de, $1111                                   ; $7f0f: $11 $11 $11
	ld   de, $1611                                   ; $7f12: $11 $11 $16
	sbc  e                                           ; $7f15: $9b
	rst  $38                                         ; $7f16: $ff
	rst  $38                                         ; $7f17: $ff
	rst  $38                                         ; $7f18: $ff
	rst  $38                                         ; $7f19: $ff
	rst  $38                                         ; $7f1a: $ff
	rst  $38                                         ; $7f1b: $ff
	rst  $38                                         ; $7f1c: $ff
	ret  c                                           ; $7f1d: $d8

	ld   de, $1111                                   ; $7f1e: $11 $11 $11
	ld   de, $1111                                   ; $7f21: $11 $11 $11
	dec  de                                          ; $7f24: $1b
	sbc  l                                           ; $7f25: $9d
	rst  $38                                         ; $7f26: $ff
	rst  $38                                         ; $7f27: $ff
	rst  $38                                         ; $7f28: $ff
	rst  $38                                         ; $7f29: $ff
	rst  $38                                         ; $7f2a: $ff
	rst  $38                                         ; $7f2b: $ff
	rst  $38                                         ; $7f2c: $ff
	call nz, $1111                                   ; $7f2d: $c4 $11 $11
	ld   de, $1111                                   ; $7f30: $11 $11 $11
	ld   de, $bf4a                                   ; $7f33: $11 $4a $bf
	rst  $38                                         ; $7f36: $ff
	rst  $38                                         ; $7f37: $ff
	rst  $38                                         ; $7f38: $ff
	rst  $38                                         ; $7f39: $ff
	rst  $38                                         ; $7f3a: $ff
	rst  $38                                         ; $7f3b: $ff
	rst  $38                                         ; $7f3c: $ff
	add  d                                           ; $7f3d: $82
	ld   de, $1111                                   ; $7f3e: $11 $11 $11
	ld   de, $1111                                   ; $7f41: $11 $11 $11
	adc  b                                           ; $7f44: $88
	rst  $28                                         ; $7f45: $ef
	rst  $38                                         ; $7f46: $ff
	rst  $38                                         ; $7f47: $ff
	rst  $38                                         ; $7f48: $ff
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	rst  $38                                         ; $7f4b: $ff
	db   $fc                                         ; $7f4c: $fc
	ld   d, c                                        ; $7f4d: $51
	ld   de, $1111                                   ; $7f4e: $11 $11 $11
	ld   de, $1311                                   ; $7f51: $11 $11 $13
	ret                                              ; $7f54: $c9


	rst  $38                                         ; $7f55: $ff
	rst  $38                                         ; $7f56: $ff
	rst  $38                                         ; $7f57: $ff
	rst  $38                                         ; $7f58: $ff
	rst  $38                                         ; $7f59: $ff
	rst  $38                                         ; $7f5a: $ff
	rst  $38                                         ; $7f5b: $ff
	jp   hl                                          ; $7f5c: $e9


	ld   hl, $1111                                   ; $7f5d: $21 $11 $11
	ld   de, $1111                                   ; $7f60: $11 $11 $11
	dec  de                                          ; $7f63: $1b
	jp   z, $ffff                                    ; $7f64: $ca $ff $ff

	rst  $38                                         ; $7f67: $ff
	rst  $38                                         ; $7f68: $ff
	rst  $38                                         ; $7f69: $ff
	rst  $38                                         ; $7f6a: $ff
	rst  $38                                         ; $7f6b: $ff
	add  $11                                         ; $7f6c: $c6 $11
	ld   de, $1111                                   ; $7f6e: $11 $11 $11
	ld   de, $1c11                                   ; $7f71: $11 $11 $1c
	ld   l, a                                        ; $7f74: $6f
	rst  $38                                         ; $7f75: $ff
	rst  $38                                         ; $7f76: $ff
	rst  $38                                         ; $7f77: $ff
	rst  $38                                         ; $7f78: $ff
	rst  $38                                         ; $7f79: $ff
	rst  $38                                         ; $7f7a: $ff
	rst  $38                                         ; $7f7b: $ff
	or   l                                           ; $7f7c: $b5
	ld   de, $1111                                   ; $7f7d: $11 $11 $11
	ld   de, $1111                                   ; $7f80: $11 $11 $11
	ld   e, d                                        ; $7f83: $5a
	xor  a                                           ; $7f84: $af
	rst  $38                                         ; $7f85: $ff
	rst  $38                                         ; $7f86: $ff
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	rst  $38                                         ; $7f89: $ff
	rst  $38                                         ; $7f8a: $ff
	db   $fd                                         ; $7f8b: $fd
	sub  c                                           ; $7f8c: $91
	ld   de, $1111                                   ; $7f8d: $11 $11 $11
	ld   de, $1111                                   ; $7f90: $11 $11 $11
	or   a                                           ; $7f93: $b7
	rst  $28                                         ; $7f94: $ef
	rst  $38                                         ; $7f95: $ff
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	rst  $38                                         ; $7f98: $ff
	rst  $38                                         ; $7f99: $ff
	rst  $38                                         ; $7f9a: $ff
	db   $fc                                         ; $7f9b: $fc
	ld   h, c                                        ; $7f9c: $61
	ld   de, $1111                                   ; $7f9d: $11 $11 $11
	ld   de, $1211                                   ; $7fa0: $11 $11 $12
	adc  d                                           ; $7fa3: $8a
	rst  $38                                         ; $7fa4: $ff
	rst  $38                                         ; $7fa5: $ff
	rst  $38                                         ; $7fa6: $ff
	rst  $38                                         ; $7fa7: $ff
	rst  $38                                         ; $7fa8: $ff
	rst  $38                                         ; $7fa9: $ff
	rst  $38                                         ; $7faa: $ff
	ld   sp, hl                                      ; $7fab: $f9
	ld   b, c                                        ; $7fac: $41
	ld   de, $1111                                   ; $7fad: $11 $11 $11
	ld   de, $1611                                   ; $7fb0: $11 $11 $16
	sbc  l                                           ; $7fb3: $9d
	rst  $38                                         ; $7fb4: $ff
	rst  $38                                         ; $7fb5: $ff
	rst  $38                                         ; $7fb6: $ff
	rst  $38                                         ; $7fb7: $ff
	rst  $38                                         ; $7fb8: $ff
	rst  $38                                         ; $7fb9: $ff
	rst  $38                                         ; $7fba: $ff
	jp   hl                                          ; $7fbb: $e9


	ld   de, $1111                                   ; $7fbc: $11 $11 $11
	ld   de, $1111                                   ; $7fbf: $11 $11 $11
	dec  e                                           ; $7fc2: $1d
	ld   l, [hl]                                     ; $7fc3: $6e
	rst  $38                                         ; $7fc4: $ff
	rst  $38                                         ; $7fc5: $ff
	rst  $38                                         ; $7fc6: $ff
	rst  $38                                         ; $7fc7: $ff
	rst  $38                                         ; $7fc8: $ff
	rst  $38                                         ; $7fc9: $ff
	rst  $38                                         ; $7fca: $ff
	or   a                                           ; $7fcb: $b7
	ld   de, $1111                                   ; $7fcc: $11 $11 $11
	ld   de, $1111                                   ; $7fcf: $11 $11 $11
	ld   a, [hl-]                                    ; $7fd2: $3a
	adc  a                                           ; $7fd3: $8f
	rst  $38                                         ; $7fd4: $ff
	rst  $38                                         ; $7fd5: $ff
	rst  $38                                         ; $7fd6: $ff
	rst  $38                                         ; $7fd7: $ff
	rst  $38                                         ; $7fd8: $ff
	rst  $38                                         ; $7fd9: $ff
	rst  $38                                         ; $7fda: $ff
	or   h                                           ; $7fdb: $b4
	ld   de, $1111                                   ; $7fdc: $11 $11 $11
	ld   de, $1111                                   ; $7fdf: $11 $11 $11
	ld   e, [hl]                                     ; $7fe2: $5e
	sbc  a                                           ; $7fe3: $9f
	rst  $38                                         ; $7fe4: $ff
	rst  $38                                         ; $7fe5: $ff
	rst  $38                                         ; $7fe6: $ff
	rst  $38                                         ; $7fe7: $ff
	rst  $38                                         ; $7fe8: $ff
	rst  $38                                         ; $7fe9: $ff
	cp   $b3                                         ; $7fea: $fe $b3
	ld   de, $1111                                   ; $7fec: $11 $11 $11
	ld   de, $1111                                   ; $7fef: $11 $11 $11
	adc  d                                           ; $7ff2: $8a
	rst  $28                                         ; $7ff3: $ef
	rst  $38                                         ; $7ff4: $ff
	rst  $38                                         ; $7ff5: $ff
	rst  $38                                         ; $7ff6: $ff
	rst  $38                                         ; $7ff7: $ff
	rst  $38                                         ; $7ff8: $ff
	rst  $38                                         ; $7ff9: $ff
	db   $fc                                         ; $7ffa: $fc
	ld   [hl], c                                     ; $7ffb: $71
	ld   de, $1111                                   ; $7ffc: $11 $11 $11
	db   $11                                         ; $7fff: $11
