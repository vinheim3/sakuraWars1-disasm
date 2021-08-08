; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d7", ROMX[$4000], BANK[$d7]

	adc  c                                           ; $4000: $89
	adc  b                                           ; $4001: $88
	adc  b                                           ; $4002: $88
	adc  b                                           ; $4003: $88
	ld   a, b                                        ; $4004: $78
	adc  c                                           ; $4005: $89
	adc  b                                           ; $4006: $88
	ld   a, b                                        ; $4007: $78
	add  a                                           ; $4008: $87
	add  a                                           ; $4009: $87
	adc  b                                           ; $400a: $88
	ld   [hl], a                                     ; $400b: $77
	ld   [hl], a                                     ; $400c: $77
	ld   a, b                                        ; $400d: $78
	adc  b                                           ; $400e: $88
	adc  b                                           ; $400f: $88
	adc  c                                           ; $4010: $89
	adc  b                                           ; $4011: $88
	adc  b                                           ; $4012: $88
	sbc  c                                           ; $4013: $99
	adc  b                                           ; $4014: $88
	adc  b                                           ; $4015: $88
	adc  b                                           ; $4016: $88
	sbc  c                                           ; $4017: $99
	adc  b                                           ; $4018: $88
	add  a                                           ; $4019: $87
	ld   [hl], a                                     ; $401a: $77
	ld   [hl], a                                     ; $401b: $77
	ld   [hl], a                                     ; $401c: $77
	ld   h, [hl]                                     ; $401d: $66
	ld   [hl], a                                     ; $401e: $77
	ld   [hl], a                                     ; $401f: $77
	ld   [hl], a                                     ; $4020: $77
	ld   a, b                                        ; $4021: $78
	sbc  c                                           ; $4022: $99
	sbc  c                                           ; $4023: $99
	sbc  c                                           ; $4024: $99
	sbc  d                                           ; $4025: $9a
	xor  d                                           ; $4026: $aa
	xor  d                                           ; $4027: $aa
	xor  d                                           ; $4028: $aa
	sbc  c                                           ; $4029: $99
	adc  c                                           ; $402a: $89
	adc  b                                           ; $402b: $88
	add  a                                           ; $402c: $87
	ld   [hl], a                                     ; $402d: $77
	ld   h, [hl]                                     ; $402e: $66
	ld   h, l                                        ; $402f: $65
	ld   d, l                                        ; $4030: $55
	ld   d, l                                        ; $4031: $55
	ld   d, l                                        ; $4032: $55
	ld   h, [hl]                                     ; $4033: $66
	ld   [hl], a                                     ; $4034: $77
	adc  c                                           ; $4035: $89
	xor  d                                           ; $4036: $aa
	xor  e                                           ; $4037: $ab
	cp   h                                           ; $4038: $bc
	cp   h                                           ; $4039: $bc
	call z, $babb                                    ; $403a: $cc $bb $ba
	sbc  b                                           ; $403d: $98
	add  a                                           ; $403e: $87
	ld   h, [hl]                                     ; $403f: $66
	ld   d, l                                        ; $4040: $55
	ld   b, e                                        ; $4041: $43
	ld   [hl+], a                                    ; $4042: $22
	ld   hl, $1211                                   ; $4043: $21 $11 $12
	ld   b, [hl]                                     ; $4046: $46
	ld   a, c                                        ; $4047: $79
	xor  l                                           ; $4048: $ad
	rst  $28                                         ; $4049: $ef
	rst  $28                                         ; $404a: $ef
	rst  $38                                         ; $404b: $ff
	rst  $38                                         ; $404c: $ff
	rst  $38                                         ; $404d: $ff
	call c, Call_0d7_76a9                            ; $404e: $dc $a9 $76
	ld   d, h                                        ; $4051: $54
	inc  sp                                          ; $4052: $33
	ld   hl, $1111                                   ; $4053: $21 $11 $11
	inc  de                                          ; $4056: $13
	inc  [hl]                                        ; $4057: $34
	ld   l, b                                        ; $4058: $68
	cp   h                                           ; $4059: $bc
	call $ffef                                       ; $405a: $cd $ef $ff
	rst  $38                                         ; $405d: $ff
	rst  $38                                         ; $405e: $ff
	db   $eb                                         ; $405f: $eb
	sbc  b                                           ; $4060: $98
	adc  b                                           ; $4061: $88
	ld   [hl], l                                     ; $4062: $75
	ld   d, [hl]                                     ; $4063: $56
	ld   h, l                                        ; $4064: $65
	ld   b, d                                        ; $4065: $42
	ld   [hl+], a                                    ; $4066: $22
	ld   de, $4311                                   ; $4067: $11 $11 $43
	ld   b, l                                        ; $406a: $45
	ld   l, b                                        ; $406b: $68
	xor  e                                           ; $406c: $ab
	cp   l                                           ; $406d: $bd
	rst  $28                                         ; $406e: $ef
	rst  $38                                         ; $406f: $ff
	rst  $38                                         ; $4070: $ff
	db   $ed                                         ; $4071: $ed
	res  3, b                                        ; $4072: $cb $98
	add  a                                           ; $4074: $87
	ld   h, [hl]                                     ; $4075: $66
	ld   h, [hl]                                     ; $4076: $66
	ld   h, l                                        ; $4077: $65
	ld   [hl-], a                                    ; $4078: $32
	ld   sp, $1311                                   ; $4079: $31 $11 $13
	inc  sp                                          ; $407c: $33
	ld   b, l                                        ; $407d: $45
	ld   a, c                                        ; $407e: $79
	cp   e                                           ; $407f: $bb
	call $ffff                                       ; $4080: $cd $ff $ff
	cp   $ed                                         ; $4083: $fe $ed
	cp   c                                           ; $4085: $b9
	sbc  c                                           ; $4086: $99
	add  a                                           ; $4087: $87
	ld   h, a                                        ; $4088: $67
	ld   [hl], a                                     ; $4089: $77
	ld   h, h                                        ; $408a: $64
	inc  sp                                          ; $408b: $33
	ld   sp, $1311                                   ; $408c: $31 $11 $13
	inc  sp                                          ; $408f: $33
	ld   b, [hl]                                     ; $4090: $46
	ld   a, d                                        ; $4091: $7a
	cp   e                                           ; $4092: $bb
	adc  $ff                                         ; $4093: $ce $ff
	rst  $38                                         ; $4095: $ff
	xor  $ec                                         ; $4096: $ee $ec
	cp   d                                           ; $4098: $ba
	adc  b                                           ; $4099: $88
	add  a                                           ; $409a: $87
	ld   [hl], a                                     ; $409b: $77
	ld   [hl], a                                     ; $409c: $77
	ld   h, l                                        ; $409d: $65
	inc  sp                                          ; $409e: $33
	ld   sp, $1311                                   ; $409f: $31 $11 $13
	inc  [hl]                                        ; $40a2: $34
	ld   b, [hl]                                     ; $40a3: $46
	ld   a, c                                        ; $40a4: $79
	xor  e                                           ; $40a5: $ab
	call z, $ffef                                    ; $40a6: $cc $ef $ff
	db   $dd                                         ; $40a9: $dd
	call $99ba                                       ; $40aa: $cd $ba $99
	adc  b                                           ; $40ad: $88
	adc  b                                           ; $40ae: $88
	ld   [hl], a                                     ; $40af: $77
	ld   [hl], l                                     ; $40b0: $75
	ld   b, h                                        ; $40b1: $44
	ld   [hl-], a                                    ; $40b2: $32
	ld   de, $4413                                   ; $40b3: $11 $13 $44
	ld   b, h                                        ; $40b6: $44
	ld   h, a                                        ; $40b7: $67
	xor  e                                           ; $40b8: $ab
	xor  h                                           ; $40b9: $ac
	sbc  $ff                                         ; $40ba: $de $ff
	call c, $cbdc                                    ; $40bc: $dc $dc $cb
	xor  d                                           ; $40bf: $aa
	sbc  b                                           ; $40c0: $98
	adc  b                                           ; $40c1: $88
	sbc  b                                           ; $40c2: $98
	halt                                             ; $40c3: $76
	ld   d, l                                        ; $40c4: $55
	ld   d, h                                        ; $40c5: $54
	ld   hl, $4312                                   ; $40c6: $21 $12 $43
	ld   b, h                                        ; $40c9: $44
	ld   d, l                                        ; $40ca: $55
	ld   a, d                                        ; $40cb: $7a
	xor  d                                           ; $40cc: $aa
	cp   h                                           ; $40cd: $bc
	xor  $ed                                         ; $40ce: $ee $ed
	db   $dd                                         ; $40d0: $dd
	call c, $99ca                                    ; $40d1: $dc $ca $99
	adc  c                                           ; $40d4: $89
	adc  b                                           ; $40d5: $88
	add  a                                           ; $40d6: $87
	halt                                             ; $40d7: $76
	ld   d, l                                        ; $40d8: $55
	ld   b, e                                        ; $40d9: $43
	ld   hl, $4424                                   ; $40da: $21 $24 $44
	ld   d, l                                        ; $40dd: $55
	ld   d, [hl]                                     ; $40de: $56
	adc  c                                           ; $40df: $89
	sbc  e                                           ; $40e0: $9b
	call z, $dcdd                                    ; $40e1: $cc $dd $dc
	call $bbcc                                       ; $40e4: $cd $cc $bb
	sbc  c                                           ; $40e7: $99
	sbc  c                                           ; $40e8: $99
	sbc  b                                           ; $40e9: $98
	sub  a                                           ; $40ea: $97
	halt                                             ; $40eb: $76
	ld   h, l                                        ; $40ec: $65
	ld   b, e                                        ; $40ed: $43
	ld   [hl+], a                                    ; $40ee: $22
	inc  [hl]                                        ; $40ef: $34
	ld   b, h                                        ; $40f0: $44
	ld   b, h                                        ; $40f1: $44
	ld   d, a                                        ; $40f2: $57
	adc  b                                           ; $40f3: $88
	xor  d                                           ; $40f4: $aa
	call z, $dcee                                    ; $40f5: $cc $ee $dc
	call $bacb                                       ; $40f8: $cd $cb $ba
	sbc  c                                           ; $40fb: $99
	sbc  c                                           ; $40fc: $99
	xor  c                                           ; $40fd: $a9
	sub  a                                           ; $40fe: $97
	halt                                             ; $40ff: $76
	ld   h, l                                        ; $4100: $65
	ld   b, e                                        ; $4101: $43
	ld   [hl+], a                                    ; $4102: $22
	inc  sp                                          ; $4103: $33
	ld   b, h                                        ; $4104: $44
	ld   b, h                                        ; $4105: $44
	ld   d, [hl]                                     ; $4106: $56
	adc  b                                           ; $4107: $88
	xor  d                                           ; $4108: $aa
	call $cced                                       ; $4109: $cd $ed $cc
	call $bacb                                       ; $410c: $cd $cb $ba
	xor  c                                           ; $410f: $a9
	xor  c                                           ; $4110: $a9
	sbc  c                                           ; $4111: $99
	adc  b                                           ; $4112: $88
	halt                                             ; $4113: $76

Jump_0d7_4114:
	ld   h, l                                        ; $4114: $65
	ld   b, e                                        ; $4115: $43
	ld   de, $3433                                   ; $4116: $11 $33 $34
	ld   b, l                                        ; $4119: $45
	ld   d, [hl]                                     ; $411a: $56
	ld   a, c                                        ; $411b: $79
	xor  e                                           ; $411c: $ab
	call z, $dded                                    ; $411d: $cc $ed $dd
	call z, $bbdc                                    ; $4120: $cc $dc $bb
	xor  d                                           ; $4123: $aa
	xor  d                                           ; $4124: $aa
	xor  c                                           ; $4125: $a9
	sub  a                                           ; $4126: $97
	ld   h, [hl]                                     ; $4127: $66
	ld   d, h                                        ; $4128: $54
	ld   [hl-], a                                    ; $4129: $32
	ld   bc, $4423                                   ; $412a: $01 $23 $44
	ld   b, l                                        ; $412d: $45
	ld   h, a                                        ; $412e: $67
	sbc  c                                           ; $412f: $99
	cp   e                                           ; $4130: $bb
	cp   l                                           ; $4131: $bd
	xor  $ed                                         ; $4132: $ee $ed
	db   $dd                                         ; $4134: $dd
	call z, $a9cb                                    ; $4135: $cc $cb $a9
	sbc  d                                           ; $4138: $9a
	sbc  b                                           ; $4139: $98
	halt                                             ; $413a: $76
	ld   d, l                                        ; $413b: $55
	ld   b, e                                        ; $413c: $43
	ld   hl, $3411                                   ; $413d: $21 $11 $34
	ld   b, l                                        ; $4140: $45
	ld   d, a                                        ; $4141: $57
	sbc  c                                           ; $4142: $99
	cp   e                                           ; $4143: $bb
	cp   e                                           ; $4144: $bb
	adc  $fd                                         ; $4145: $ce $fd
	db   $dd                                         ; $4147: $dd
	call z, $b9dc                                    ; $4148: $cc $dc $b9
	sbc  c                                           ; $414b: $99
	sbc  d                                           ; $414c: $9a
	add  a                                           ; $414d: $87
	ld   h, h                                        ; $414e: $64
	inc  sp                                          ; $414f: $33
	ld   [hl+], a                                    ; $4150: $22
	ld   de, $4512                                   ; $4151: $11 $12 $45
	ld   h, [hl]                                     ; $4154: $66
	ld   l, b                                        ; $4155: $68
	xor  h                                           ; $4156: $ac
	call z, $debc                                    ; $4157: $cc $bc $de
	xor  $dd                                         ; $415a: $ee $dd
	call c, $99bb                                    ; $415c: $dc $bb $99
	sbc  b                                           ; $415f: $98
	adc  b                                           ; $4160: $88
	ld   [hl], l                                     ; $4161: $75
	ld   [hl-], a                                    ; $4162: $32
	ld   hl, $1111                                   ; $4163: $21 $11 $11
	dec  [hl]                                        ; $4166: $35
	ld   a, c                                        ; $4167: $79
	adc  c                                           ; $4168: $89
	xor  e                                           ; $4169: $ab
	call c, $bebb                                    ; $416a: $dc $bb $be
	xor  $ed                                         ; $416d: $ee $ed
	set  1, e                                        ; $416f: $cb $cb
	xor  c                                           ; $4171: $a9
	sbc  c                                           ; $4172: $99
	adc  b                                           ; $4173: $88
	ld   [hl], l                                     ; $4174: $75
	ld   [hl-], a                                    ; $4175: $32
	ld   hl, $1111                                   ; $4176: $21 $11 $11
	dec  d                                           ; $4179: $15
	adc  d                                           ; $417a: $8a
	cp   d                                           ; $417b: $ba
	sbc  e                                           ; $417c: $9b
	call z, $acca                                    ; $417d: $cc $ca $ac
	rst  JumpTable                                         ; $4180: $df
	db   $fd                                         ; $4181: $fd
	cp   e                                           ; $4182: $bb
	cp   e                                           ; $4183: $bb
	cp   c                                           ; $4184: $b9
	add  a                                           ; $4185: $87
	ld   a, b                                        ; $4186: $78
	ld   [hl], l                                     ; $4187: $75
	ld   hl, $1111                                   ; $4188: $21 $11 $11
	ld   de, $ab38                                   ; $418b: $11 $38 $ab
	cp   d                                           ; $418e: $ba
	xor  e                                           ; $418f: $ab
	cp   d                                           ; $4190: $ba
	sbc  c                                           ; $4191: $99
	sbc  h                                           ; $4192: $9c
	rst  $28                                         ; $4193: $ef
	db   $ec                                         ; $4194: $ec
	cp   e                                           ; $4195: $bb
	res  5, c                                        ; $4196: $cb $a9
	sbc  b                                           ; $4198: $98
	sub  a                                           ; $4199: $97
	ld   d, d                                        ; $419a: $52
	ld   de, $1111                                   ; $419b: $11 $11 $11
	ld   de, $bb59                                   ; $419e: $11 $59 $bb
	xor  d                                           ; $41a1: $aa
	cp   h                                           ; $41a2: $bc
	jp   z, $ad87                                    ; $41a3: $ca $87 $ad

	rst  $38                                         ; $41a6: $ff
	call c, $ccbc                                    ; $41a7: $dc $bc $cc
	and  a                                           ; $41aa: $a7
	ld   [hl], a                                     ; $41ab: $77
	add  a                                           ; $41ac: $87
	ld   b, c                                        ; $41ad: $41
	ld   de, $1111                                   ; $41ae: $11 $11 $11
	ld   [de], a                                     ; $41b1: $12
	adc  e                                           ; $41b2: $8b
	cp   e                                           ; $41b3: $bb
	xor  d                                           ; $41b4: $aa
	cp   h                                           ; $41b5: $bc
	cp   c                                           ; $41b6: $b9
	adc  b                                           ; $41b7: $88
	xor  a                                           ; $41b8: $af
	cp   $cc                                         ; $41b9: $fe $cc
	call $96ec                                       ; $41bb: $cd $ec $96
	ld   d, [hl]                                     ; $41be: $56
	ld   h, l                                        ; $41bf: $65
	ld   sp, $1111                                   ; $41c0: $31 $11 $11
	ld   de, $ac15                                   ; $41c3: $11 $15 $ac
	cp   d                                           ; $41c6: $ba
	xor  e                                           ; $41c7: $ab
	call z, Call_0d7_69a7                            ; $41c8: $cc $a7 $69
	rst  JumpTable                                         ; $41cb: $df
	cp   $dc                                         ; $41cc: $fe $dc
	db   $dd                                         ; $41ce: $dd
	cp   c                                           ; $41cf: $b9
	ld   [hl], a                                     ; $41d0: $77
	halt                                             ; $41d1: $76
	ld   h, h                                        ; $41d2: $64
	ld   de, $1111                                   ; $41d3: $11 $11 $11
	ld   de, $ab28                                   ; $41d6: $11 $28 $ab
	cp   e                                           ; $41d9: $bb
	xor  h                                           ; $41da: $ac
	jp   z, $9d77                                    ; $41db: $ca $77 $9d

	rst  $38                                         ; $41de: $ff
	db   $ed                                         ; $41df: $ed
	call $98db                                       ; $41e0: $cd $db $98
	ld   [hl], a                                     ; $41e3: $77
	halt                                             ; $41e4: $76
	ld   sp, $1111                                   ; $41e5: $31 $11 $11
	ld   de, $5b11                                   ; $41e8: $11 $11 $5b
	call c, $abc9                                    ; $41eb: $dc $c9 $ab
	xor  c                                           ; $41ee: $a9
	ld   h, a                                        ; $41ef: $67
	xor  a                                           ; $41f0: $af
	rst  $38                                         ; $41f1: $ff
	db   $fc                                         ; $41f2: $fc
	call z, $88ca                                    ; $41f3: $cc $ca $88
	ld   [hl], a                                     ; $41f6: $77
	ld   h, h                                        ; $41f7: $64
	ld   hl, $2111                                   ; $41f8: $21 $11 $21
	ld   de, $bc15                                   ; $41fb: $11 $15 $bc
	sbc  d                                           ; $41fe: $9a
	sbc  d                                           ; $41ff: $9a
	call c, $8a86                                    ; $4200: $dc $86 $8a
	rst  $38                                         ; $4203: $ff
	cp   $dd                                         ; $4204: $fe $dd
	db   $ed                                         ; $4206: $ed
	or   a                                           ; $4207: $b7
	ld   a, b                                        ; $4208: $78
	ld   [hl], a                                     ; $4209: $77
	ld   h, d                                        ; $420a: $62
	ld   de, $2113                                   ; $420b: $11 $13 $21
	ld   de, $b92a                                   ; $420e: $11 $2a $b9
	set  1, l                                        ; $4211: $cb $cd
	or   a                                           ; $4213: $b7
	ld   h, [hl]                                     ; $4214: $66
	xor  a                                           ; $4215: $af
	rst  $38                                         ; $4216: $ff
	db   $fd                                         ; $4217: $fd
	call c, $a8cb                                    ; $4218: $dc $cb $a8
	add  a                                           ; $421b: $87
	ld   h, [hl]                                     ; $421c: $66
	ld   sp, $2211                                   ; $421d: $31 $11 $22
	ld   de, $8b12                                   ; $4220: $11 $12 $8b
	cp   h                                           ; $4223: $bc
	sbc  c                                           ; $4224: $99
	cp   d                                           ; $4225: $ba
	and  a                                           ; $4226: $a7
	ld   a, d                                        ; $4227: $7a
	rst  JumpTable                                         ; $4228: $df
	rst  $38                                         ; $4229: $ff
	cp   $dc                                         ; $422a: $fe $dc
	cp   b                                           ; $422c: $b8
	add  [hl]                                        ; $422d: $86
	ld   h, a                                        ; $422e: $67
	ld   [hl], h                                     ; $422f: $74
	ld   hl, $3212                                   ; $4230: $21 $12 $32
	ld   de, $be15                                   ; $4233: $11 $15 $be
	rst  $10                                         ; $4236: $d7
	adc  h                                           ; $4237: $8c
	xor  c                                           ; $4238: $a9
	ld   h, [hl]                                     ; $4239: $66
	cp   [hl]                                        ; $423a: $be
	rst  $38                                         ; $423b: $ff
	db   $fd                                         ; $423c: $fd
	cp   d                                           ; $423d: $ba
	xor  d                                           ; $423e: $aa
	sbc  e                                           ; $423f: $9b
	xor  d                                           ; $4240: $aa
	add  l                                           ; $4241: $85
	ld   [hl-], a                                    ; $4242: $32
	ld   de, $1133                                   ; $4243: $11 $33 $11
	ld   de, $7c6a                                   ; $4246: $11 $6a $7c
	ret                                              ; $4249: $c9


	xor  h                                           ; $424a: $ac
	or   a                                           ; $424b: $b7
	ld   h, [hl]                                     ; $424c: $66
	xor  a                                           ; $424d: $af
	rst  $38                                         ; $424e: $ff
	ld   a, [$cbab]                                  ; $424f: $fa $ab $cb
	xor  b                                           ; $4252: $a8
	ld   [hl], a                                     ; $4253: $77
	halt                                             ; $4254: $76
	ld   sp, $4312                                   ; $4255: $31 $12 $43
	ld   de, $7913                                   ; $4258: $11 $13 $79
	cp   e                                           ; $425b: $bb
	xor  e                                           ; $425c: $ab
	sbc  b                                           ; $425d: $98
	sbc  b                                           ; $425e: $98
	sbc  e                                           ; $425f: $9b
	rst  $28                                         ; $4260: $ef
	db   $fd                                         ; $4261: $fd
	call $98ca                                       ; $4262: $cd $ca $98
	xor  d                                           ; $4265: $aa
	add  [hl]                                        ; $4266: $86
	ld   d, h                                        ; $4267: $54
	ld   hl, $3334                                   ; $4268: $21 $34 $33
	ld   de, $ca27                                   ; $426b: $11 $27 $ca
	adc  b                                           ; $426e: $88
	ld   l, b                                        ; $426f: $68
	cp   l                                           ; $4270: $bd
	reti                                             ; $4271: $d9


	ld   l, d                                        ; $4272: $6a
	rst  $28                                         ; $4273: $ef
	db   $fd                                         ; $4274: $fd
	call z, $99ec                                    ; $4275: $cc $ec $99
	ld   l, b                                        ; $4278: $68
	sub  [hl]                                        ; $4279: $96
	ld   b, d                                        ; $427a: $42
	inc  [hl]                                        ; $427b: $34
	ld   d, d                                        ; $427c: $52
	ld   de, $4732                                   ; $427d: $11 $32 $47
	ld   a, d                                        ; $4280: $7a
	jp   z, $8b97                                    ; $4281: $ca $97 $8b

	xor  c                                           ; $4284: $a9
	sbc  l                                           ; $4285: $9d

Jump_0d7_4286:
	rst  $38                                         ; $4286: $ff
	db   $fc                                         ; $4287: $fc
	xor  l                                           ; $4288: $ad
	jp   z, $8987                                    ; $4289: $ca $87 $89

	add  l                                           ; $428c: $85
	ld   sp, $4224                                   ; $428d: $31 $24 $42
	inc  h                                           ; $4290: $24
	ld   b, h                                        ; $4291: $44
	ld   l, c                                        ; $4292: $69
	add  l                                           ; $4293: $85
	ld   l, c                                        ; $4294: $69
	cp   l                                           ; $4295: $bd
	and  [hl]                                        ; $4296: $a6
	adc  d                                           ; $4297: $8a
	xor  a                                           ; $4298: $af
	rst  $38                                         ; $4299: $ff
	ld   a, [$c88b]                                  ; $429a: $fa $8b $c8
	ld   a, c                                        ; $429d: $79
	xor  b                                           ; $429e: $a8
	ld   b, c                                        ; $429f: $41
	inc  h                                           ; $42a0: $24
	ld   b, h                                        ; $42a1: $44
	ld   [hl+], a                                    ; $42a2: $22
	inc  sp                                          ; $42a3: $33
	ld   b, [hl]                                     ; $42a4: $46
	ld   h, l                                        ; $42a5: $65
	ld   a, c                                        ; $42a6: $79
	call c, Call_0d7_5796                            ; $42a7: $dc $96 $57
	sbc  [hl]                                        ; $42aa: $9e
	rst  $38                                         ; $42ab: $ff
	jp   c, $c79d                                    ; $42ac: $da $9d $c7

	ld   a, d                                        ; $42af: $7a
	db   $db                                         ; $42b0: $db
	ld   [hl], h                                     ; $42b1: $74
	ld   b, e                                        ; $42b2: $43
	inc  [hl]                                        ; $42b3: $34
	inc  sp                                          ; $42b4: $33
	inc  sp                                          ; $42b5: $33
	inc  hl                                          ; $42b6: $23
	ld   d, a                                        ; $42b7: $57
	sbc  c                                           ; $42b8: $99
	ld   h, a                                        ; $42b9: $67
	cp   c                                           ; $42ba: $b9
	sbc  d                                           ; $42bb: $9a
	add  [hl]                                        ; $42bc: $86
	cp   a                                           ; $42bd: $bf
	xor  $c8                                         ; $42be: $ee $c8
	xor  l                                           ; $42c0: $ad
	res  2, a                                        ; $42c1: $cb $97
	adc  b                                           ; $42c3: $88
	ld   [hl], e                                     ; $42c4: $73
	inc  [hl]                                        ; $42c5: $34
	ld   h, a                                        ; $42c6: $67
	ld   b, d                                        ; $42c7: $42
	inc  hl                                          ; $42c8: $23
	ld   [hl+], a                                    ; $42c9: $22
	ld   c, c                                        ; $42ca: $49
	xor  b                                           ; $42cb: $a8
	ld   [hl], a                                     ; $42cc: $77
	jp   z, $9d56                                    ; $42cd: $ca $56 $9d

	rst  $38                                         ; $42d0: $ff
	cp   e                                           ; $42d1: $bb
	cp   e                                           ; $42d2: $bb
	jp   z, $db9b                                    ; $42d3: $ca $9b $db

	ld   [hl], h                                     ; $42d6: $74
	inc  [hl]                                        ; $42d7: $34
	ld   b, l                                        ; $42d8: $45
	ld   d, l                                        ; $42d9: $55
	ld   h, [hl]                                     ; $42da: $66
	ld   sp, $8a12                                   ; $42db: $31 $12 $8a
	ld   [hl], a                                     ; $42de: $77
	ld   a, b                                        ; $42df: $78
	bit  6, a                                        ; $42e0: $cb $77
	xor  l                                           ; $42e2: $ad
	db   $ed                                         ; $42e3: $ed
	rst  $28                                         ; $42e4: $ef
	cp   e                                           ; $42e5: $bb
	sbc  c                                           ; $42e6: $99
	call z, $64a8                                    ; $42e7: $cc $a8 $64
	ld   b, h                                        ; $42ea: $44
	ld   d, l                                        ; $42eb: $55
	ld   [hl], l                                     ; $42ec: $75
	ld   b, h                                        ; $42ed: $44
	ld   [de], a                                     ; $42ee: $12
	dec  [hl]                                        ; $42ef: $35
	halt                                             ; $42f0: $76
	ld   a, d                                        ; $42f1: $7a
	sbc  c                                           ; $42f2: $99
	sbc  c                                           ; $42f3: $99
	sbc  b                                           ; $42f4: $98
	xor  l                                           ; $42f5: $ad
	rst  $38                                         ; $42f6: $ff
	db   $eb                                         ; $42f7: $eb
	xor  d                                           ; $42f8: $aa
	xor  d                                           ; $42f9: $aa
	xor  b                                           ; $42fa: $a8
	xor  e                                           ; $42fb: $ab
	add  l                                           ; $42fc: $85
	ld   d, l                                        ; $42fd: $55
	ld   b, l                                        ; $42fe: $45
	ld   b, d                                        ; $42ff: $42
	ld   b, [hl]                                     ; $4300: $46
	ld   d, e                                        ; $4301: $53
	inc  h                                           ; $4302: $24
	ld   [hl], a                                     ; $4303: $77
	sub  a                                           ; $4304: $97
	ld   e, h                                        ; $4305: $5c
	cp   d                                           ; $4306: $ba
	or   a                                           ; $4307: $b7
	sbc  e                                           ; $4308: $9b
	db   $dd                                         ; $4309: $dd
	db   $ec                                         ; $430a: $ec
	xor  l                                           ; $430b: $ad
	xor  c                                           ; $430c: $a9
	cp   c                                           ; $430d: $b9
	sbc  b                                           ; $430e: $98
	ld   h, l                                        ; $430f: $65
	ld   d, h                                        ; $4310: $54
	ld   h, a                                        ; $4311: $67
	ld   d, d                                        ; $4312: $52
	inc  [hl]                                        ; $4313: $34
	ld   d, h                                        ; $4314: $54
	ld   [hl], $77                                   ; $4315: $36 $77
	ld   h, l                                        ; $4317: $65
	adc  h                                           ; $4318: $8c
	sub  a                                           ; $4319: $97
	adc  h                                           ; $431a: $8c
	ei                                               ; $431b: $fb
	db   $db                                         ; $431c: $db
	cp   l                                           ; $431d: $bd
	sbc  e                                           ; $431e: $9b
	db   $db                                         ; $431f: $db
	cp   c                                           ; $4320: $b9
	ld   [hl], a                                     ; $4321: $77
	ld   h, l                                        ; $4322: $65
	ld   b, l                                        ; $4323: $45
	halt                                             ; $4324: $76
	ld   d, e                                        ; $4325: $53
	ld   b, h                                        ; $4326: $44
	inc  hl                                          ; $4327: $23
	ld   d, [hl]                                     ; $4328: $56
	ld   h, a                                        ; $4329: $67
	sbc  d                                           ; $432a: $9a
	xor  d                                           ; $432b: $aa
	adc  c                                           ; $432c: $89
	sub  a                                           ; $432d: $97
	xor  a                                           ; $432e: $af
	db   $fd                                         ; $432f: $fd
	adc  d                                           ; $4330: $8a
	xor  d                                           ; $4331: $aa
	ret                                              ; $4332: $c9


	xor  h                                           ; $4333: $ac
	sub  a                                           ; $4334: $97
	ld   h, h                                        ; $4335: $64
	ld   d, l                                        ; $4336: $55
	ld   d, h                                        ; $4337: $54
	ld   b, [hl]                                     ; $4338: $46
	ld   h, l                                        ; $4339: $65
	ld   sp, $a828                                   ; $433a: $31 $28 $a8
	ld   d, [hl]                                     ; $433d: $56
	xor  h                                           ; $433e: $ac
	and  [hl]                                        ; $433f: $a6
	ld   a, h                                        ; $4340: $7c
	cp   l                                           ; $4341: $bd
	db   $ec                                         ; $4342: $ec
	db   $ed                                         ; $4343: $ed
	sbc  d                                           ; $4344: $9a
	sbc  l                                           ; $4345: $9d
	ret                                              ; $4346: $c9


	ld   [hl], h                                     ; $4347: $74
	ld   h, l                                        ; $4348: $65
	ld   b, a                                        ; $4349: $47
	ld   h, l                                        ; $434a: $65
	ld   d, l                                        ; $434b: $55
	ld   b, e                                        ; $434c: $43
	ld   b, h                                        ; $434d: $44
	ld   d, l                                        ; $434e: $55
	ld   e, b                                        ; $434f: $58
	sbc  b                                           ; $4350: $98
	xor  b                                           ; $4351: $a8
	adc  d                                           ; $4352: $8a
	sbc  d                                           ; $4353: $9a
	sbc  $ec                                         ; $4354: $de $ec
	xor  e                                           ; $4356: $ab
	res  3, c                                        ; $4357: $cb $99
	xor  h                                           ; $4359: $ac
	sub  [hl]                                        ; $435a: $96
	ld   d, [hl]                                     ; $435b: $56
	ld   d, h                                        ; $435c: $54
	ld   b, l                                        ; $435d: $45
	ld   h, l                                        ; $435e: $65
	ld   b, d                                        ; $435f: $42
	dec  h                                           ; $4360: $25
	halt                                             ; $4361: $76
	ld   h, [hl]                                     ; $4362: $66
	sbc  h                                           ; $4363: $9c
	add  a                                           ; $4364: $87
	sbc  h                                           ; $4365: $9c
	xor  d                                           ; $4366: $aa
	cp   l                                           ; $4367: $bd
	xor  $cb                                         ; $4368: $ee $cb
	res  7, d                                        ; $436a: $cb $ba
	sbc  b                                           ; $436c: $98
	halt                                             ; $436d: $76
	ld   h, a                                        ; $436e: $67
	ld   d, l                                        ; $436f: $55
	ld   [hl], h                                     ; $4370: $74
	ld   b, h                                        ; $4371: $44
	inc  [hl]                                        ; $4372: $34
	ld   d, h                                        ; $4373: $54
	ld   d, h                                        ; $4374: $54

Jump_0d7_4375:
	ld   a, b                                        ; $4375: $78
	adc  d                                           ; $4376: $8a
	sbc  c                                           ; $4377: $99
	adc  c                                           ; $4378: $89
	xor  h                                           ; $4379: $ac
	xor  $cb                                         ; $437a: $ee $cb
	xor  h                                           ; $437c: $ac
	db   $eb                                         ; $437d: $eb
	xor  c                                           ; $437e: $a9
	xor  d                                           ; $437f: $aa
	halt                                             ; $4380: $76
	ld   d, l                                        ; $4381: $55
	ld   h, l                                        ; $4382: $65
	ld   b, h                                        ; $4383: $44
	ld   b, l                                        ; $4384: $45
	inc  sp                                          ; $4385: $33
	inc  [hl]                                        ; $4386: $34
	ld   h, a                                        ; $4387: $67
	ld   [hl], a                                     ; $4388: $77
	adc  c                                           ; $4389: $89
	sbc  c                                           ; $438a: $99
	sbc  c                                           ; $438b: $99
	xor  e                                           ; $438c: $ab
	call $bbdd                                       ; $438d: $cd $dd $bb
	cp   e                                           ; $4390: $bb
	cp   d                                           ; $4391: $ba
	sbc  c                                           ; $4392: $99
	adc  b                                           ; $4393: $88
	ld   h, l                                        ; $4394: $65
	ld   d, h                                        ; $4395: $54

Call_0d7_4396:
	ld   b, h                                        ; $4396: $44
	ld   b, l                                        ; $4397: $45
	ld   b, e                                        ; $4398: $43
	ld   b, h                                        ; $4399: $44
	ld   d, l                                        ; $439a: $55
	ld   l, b                                        ; $439b: $68
	adc  c                                           ; $439c: $89
	xor  c                                           ; $439d: $a9
	sbc  c                                           ; $439e: $99
	xor  e                                           ; $439f: $ab
	cp   h                                           ; $43a0: $bc
	call z, $aadb                                    ; $43a1: $cc $db $aa
	xor  d                                           ; $43a4: $aa
	xor  c                                           ; $43a5: $a9
	ld   a, c                                        ; $43a6: $79
	add  [hl]                                        ; $43a7: $86
	ld   d, h                                        ; $43a8: $54
	ld   d, h                                        ; $43a9: $54
	ld   b, e                                        ; $43aa: $43
	inc  [hl]                                        ; $43ab: $34
	ld   d, l                                        ; $43ac: $55
	ld   d, l                                        ; $43ad: $55
	ld   h, [hl]                                     ; $43ae: $66
	ld   a, c                                        ; $43af: $79
	xor  e                                           ; $43b0: $ab
	cp   d                                           ; $43b1: $ba
	sbc  e                                           ; $43b2: $9b
	cp   e                                           ; $43b3: $bb
	cp   h                                           ; $43b4: $bc
	res  7, d                                        ; $43b5: $cb $ba
	cp   d                                           ; $43b7: $ba

Call_0d7_43b8:
	sbc  b                                           ; $43b8: $98
	add  a                                           ; $43b9: $87
	ld   [hl], a                                     ; $43ba: $77
	ld   h, [hl]                                     ; $43bb: $66
	ld   h, l                                        ; $43bc: $65
	ld   d, h                                        ; $43bd: $54
	ld   b, h                                        ; $43be: $44
	ld   b, h                                        ; $43bf: $44
	ld   d, l                                        ; $43c0: $55
	ld   h, [hl]                                     ; $43c1: $66
	ld   [hl], a                                     ; $43c2: $77
	adc  b                                           ; $43c3: $88
	sbc  b                                           ; $43c4: $98
	sbc  c                                           ; $43c5: $99
	xor  d                                           ; $43c6: $aa
	xor  d                                           ; $43c7: $aa
	cp   e                                           ; $43c8: $bb
	cp   d                                           ; $43c9: $ba
	sbc  d                                           ; $43ca: $9a
	sbc  d                                           ; $43cb: $9a
	sbc  c                                           ; $43cc: $99
	xor  c                                           ; $43cd: $a9
	sbc  c                                           ; $43ce: $99
	adc  b                                           ; $43cf: $88
	ld   [hl], a                                     ; $43d0: $77
	halt                                             ; $43d1: $76
	ld   h, l                                        ; $43d2: $65
	ld   d, [hl]                                     ; $43d3: $56
	ld   h, [hl]                                     ; $43d4: $66
	ld   d, [hl]                                     ; $43d5: $56
	ld   h, [hl]                                     ; $43d6: $66
	ld   h, [hl]                                     ; $43d7: $66
	ld   [hl], a                                     ; $43d8: $77
	adc  b                                           ; $43d9: $88
	sbc  c                                           ; $43da: $99
	xor  c                                           ; $43db: $a9
	sbc  e                                           ; $43dc: $9b
	cp   d                                           ; $43dd: $ba
	cp   e                                           ; $43de: $bb
	cp   h                                           ; $43df: $bc
	cp   e                                           ; $43e0: $bb
	cp   e                                           ; $43e1: $bb
	cp   d                                           ; $43e2: $ba
	xor  c                                           ; $43e3: $a9
	sbc  b                                           ; $43e4: $98
	add  a                                           ; $43e5: $87
	ld   [hl], a                                     ; $43e6: $77
	ld   h, [hl]                                     ; $43e7: $66
	ld   h, l                                        ; $43e8: $65
	ld   d, l                                        ; $43e9: $55
	ld   d, [hl]                                     ; $43ea: $56
	ld   h, [hl]                                     ; $43eb: $66
	ld   h, [hl]                                     ; $43ec: $66
	ld   h, a                                        ; $43ed: $67
	ld   a, b                                        ; $43ee: $78
	adc  c                                           ; $43ef: $89
	adc  c                                           ; $43f0: $89
	xor  c                                           ; $43f1: $a9
	xor  d                                           ; $43f2: $aa
	cp   e                                           ; $43f3: $bb
	xor  d                                           ; $43f4: $aa
	xor  d                                           ; $43f5: $aa
	cp   d                                           ; $43f6: $ba
	xor  d                                           ; $43f7: $aa
	sbc  c                                           ; $43f8: $99
	sbc  c                                           ; $43f9: $99
	add  a                                           ; $43fa: $87
	ld   [hl], a                                     ; $43fb: $77
	ld   h, [hl]                                     ; $43fc: $66
	ld   h, [hl]                                     ; $43fd: $66
	ld   h, l                                        ; $43fe: $65
	ld   d, l                                        ; $43ff: $55
	ld   d, l                                        ; $4400: $55
	ld   d, [hl]                                     ; $4401: $56
	ld   h, [hl]                                     ; $4402: $66
	ld   h, [hl]                                     ; $4403: $66
	ld   [hl], a                                     ; $4404: $77
	adc  b                                           ; $4405: $88
	adc  b                                           ; $4406: $88
	sbc  c                                           ; $4407: $99
	sbc  d                                           ; $4408: $9a
	xor  d                                           ; $4409: $aa
	cp   e                                           ; $440a: $bb
	cp   d                                           ; $440b: $ba
	xor  d                                           ; $440c: $aa
	xor  d                                           ; $440d: $aa
	sbc  c                                           ; $440e: $99
	adc  b                                           ; $440f: $88
	add  a                                           ; $4410: $87
	ld   [hl], a                                     ; $4411: $77
	ld   h, [hl]                                     ; $4412: $66
	ld   h, [hl]                                     ; $4413: $66
	ld   h, l                                        ; $4414: $65
	ld   d, l                                        ; $4415: $55
	ld   d, l                                        ; $4416: $55
	ld   d, [hl]                                     ; $4417: $56
	ld   h, [hl]                                     ; $4418: $66
	ld   h, a                                        ; $4419: $67
	ld   [hl], a                                     ; $441a: $77
	ld   [hl], a                                     ; $441b: $77
	adc  c                                           ; $441c: $89
	adc  c                                           ; $441d: $89
	sbc  d                                           ; $441e: $9a
	sbc  d                                           ; $441f: $9a
	xor  c                                           ; $4420: $a9
	xor  d                                           ; $4421: $aa
	xor  d                                           ; $4422: $aa
	sbc  c                                           ; $4423: $99
	xor  c                                           ; $4424: $a9
	adc  c                                           ; $4425: $89
	adc  b                                           ; $4426: $88
	ld   [hl], a                                     ; $4427: $77
	ld   [hl], a                                     ; $4428: $77
	ld   h, [hl]                                     ; $4429: $66
	ld   h, [hl]                                     ; $442a: $66
	ld   h, [hl]                                     ; $442b: $66
	ld   h, [hl]                                     ; $442c: $66
	ld   h, [hl]                                     ; $442d: $66
	ld   h, [hl]                                     ; $442e: $66
	ld   h, a                                        ; $442f: $67
	ld   [hl], a                                     ; $4430: $77
	ld   [hl], a                                     ; $4431: $77
	ld   a, b                                        ; $4432: $78
	adc  c                                           ; $4433: $89
	sbc  c                                           ; $4434: $99
	sbc  c                                           ; $4435: $99
	sbc  c                                           ; $4436: $99
	sbc  d                                           ; $4437: $9a
	xor  c                                           ; $4438: $a9
	sbc  c                                           ; $4439: $99
	sbc  d                                           ; $443a: $9a
	sbc  c                                           ; $443b: $99
	adc  c                                           ; $443c: $89
	adc  b                                           ; $443d: $88
	ld   [hl], a                                     ; $443e: $77
	ld   [hl], a                                     ; $443f: $77
	ld   [hl], a                                     ; $4440: $77
	halt                                             ; $4441: $76
	ld   h, [hl]                                     ; $4442: $66
	ld   h, [hl]                                     ; $4443: $66
	ld   h, [hl]                                     ; $4444: $66
	ld   h, [hl]                                     ; $4445: $66
	ld   [hl], a                                     ; $4446: $77
	ld   [hl], a                                     ; $4447: $77
	ld   [hl], a                                     ; $4448: $77
	ld   a, b                                        ; $4449: $78
	sbc  b                                           ; $444a: $98
	sbc  c                                           ; $444b: $99
	sbc  c                                           ; $444c: $99
	xor  c                                           ; $444d: $a9
	sbc  d                                           ; $444e: $9a
	xor  c                                           ; $444f: $a9
	sbc  d                                           ; $4450: $9a
	sbc  d                                           ; $4451: $9a
	xor  c                                           ; $4452: $a9
	sbc  c                                           ; $4453: $99
	sbc  b                                           ; $4454: $98
	add  a                                           ; $4455: $87
	ld   [hl], a                                     ; $4456: $77
	ld   [hl], a                                     ; $4457: $77
	halt                                             ; $4458: $76
	ld   h, [hl]                                     ; $4459: $66
	ld   h, [hl]                                     ; $445a: $66
	ld   h, [hl]                                     ; $445b: $66
	ld   h, [hl]                                     ; $445c: $66
	ld   h, [hl]                                     ; $445d: $66
	ld   [hl], a                                     ; $445e: $77
	ld   [hl], a                                     ; $445f: $77
	ld   a, b                                        ; $4460: $78
	adc  c                                           ; $4461: $89
	adc  c                                           ; $4462: $89
	sbc  d                                           ; $4463: $9a
	sbc  c                                           ; $4464: $99
	xor  d                                           ; $4465: $aa
	xor  d                                           ; $4466: $aa
	xor  d                                           ; $4467: $aa
	xor  c                                           ; $4468: $a9
	xor  c                                           ; $4469: $a9
	sbc  b                                           ; $446a: $98
	sbc  b                                           ; $446b: $98
	add  a                                           ; $446c: $87
	ld   [hl], a                                     ; $446d: $77
	ld   [hl], a                                     ; $446e: $77
	ld   h, [hl]                                     ; $446f: $66
	ld   h, [hl]                                     ; $4470: $66
	ld   h, [hl]                                     ; $4471: $66
	ld   h, [hl]                                     ; $4472: $66
	ld   h, [hl]                                     ; $4473: $66
	ld   h, [hl]                                     ; $4474: $66
	ld   [hl], a                                     ; $4475: $77
	ld   [hl], a                                     ; $4476: $77
	ld   a, b                                        ; $4477: $78
	adc  c                                           ; $4478: $89
	adc  c                                           ; $4479: $89
	xor  c                                           ; $447a: $a9
	sbc  d                                           ; $447b: $9a
	xor  d                                           ; $447c: $aa
	xor  d                                           ; $447d: $aa
	xor  d                                           ; $447e: $aa
	xor  c                                           ; $447f: $a9
	xor  d                                           ; $4480: $aa
	sbc  b                                           ; $4481: $98
	sbc  b                                           ; $4482: $98
	add  a                                           ; $4483: $87
	ld   [hl], a                                     ; $4484: $77
	ld   [hl], a                                     ; $4485: $77

Jump_0d7_4486:
	ld   h, [hl]                                     ; $4486: $66
	ld   h, [hl]                                     ; $4487: $66
	ld   h, [hl]                                     ; $4488: $66
	ld   h, [hl]                                     ; $4489: $66
	ld   h, [hl]                                     ; $448a: $66
	ld   h, [hl]                                     ; $448b: $66
	ld   h, a                                        ; $448c: $67
	ld   [hl], a                                     ; $448d: $77
	ld   a, b                                        ; $448e: $78
	sbc  b                                           ; $448f: $98
	sbc  c                                           ; $4490: $99
	xor  c                                           ; $4491: $a9
	xor  d                                           ; $4492: $aa
	xor  d                                           ; $4493: $aa
	xor  d                                           ; $4494: $aa
	xor  d                                           ; $4495: $aa
	xor  d                                           ; $4496: $aa
	xor  c                                           ; $4497: $a9
	sbc  b                                           ; $4498: $98
	sbc  b                                           ; $4499: $98
	add  a                                           ; $449a: $87
	ld   [hl], a                                     ; $449b: $77
	ld   h, [hl]                                     ; $449c: $66
	ld   h, [hl]                                     ; $449d: $66
	ld   h, [hl]                                     ; $449e: $66
	ld   h, [hl]                                     ; $449f: $66
	ld   h, [hl]                                     ; $44a0: $66
	ld   h, [hl]                                     ; $44a1: $66
	ld   h, [hl]                                     ; $44a2: $66
	ld   h, a                                        ; $44a3: $67
	ld   [hl], a                                     ; $44a4: $77
	ld   a, b                                        ; $44a5: $78
	sbc  b                                           ; $44a6: $98
	sbc  c                                           ; $44a7: $99
	sbc  d                                           ; $44a8: $9a
	xor  e                                           ; $44a9: $ab
	cp   e                                           ; $44aa: $bb
	cp   e                                           ; $44ab: $bb
	cp   e                                           ; $44ac: $bb
	xor  d                                           ; $44ad: $aa
	xor  c                                           ; $44ae: $a9
	sbc  b                                           ; $44af: $98
	adc  b                                           ; $44b0: $88
	ld   [hl], a                                     ; $44b1: $77
	halt                                             ; $44b2: $76
	ld   h, [hl]                                     ; $44b3: $66
	ld   h, [hl]                                     ; $44b4: $66
	ld   d, [hl]                                     ; $44b5: $56
	ld   h, l                                        ; $44b6: $65
	ld   h, [hl]                                     ; $44b7: $66
	ld   h, [hl]                                     ; $44b8: $66
	ld   h, [hl]                                     ; $44b9: $66
	ld   [hl], a                                     ; $44ba: $77
	ld   [hl], a                                     ; $44bb: $77
	adc  c                                           ; $44bc: $89
	adc  c                                           ; $44bd: $89
	sbc  c                                           ; $44be: $99
	xor  d                                           ; $44bf: $aa
	cp   e                                           ; $44c0: $bb
	cp   e                                           ; $44c1: $bb
	cp   e                                           ; $44c2: $bb
	xor  d                                           ; $44c3: $aa
	xor  c                                           ; $44c4: $a9
	xor  c                                           ; $44c5: $a9
	adc  c                                           ; $44c6: $89
	add  a                                           ; $44c7: $87
	ld   [hl], a                                     ; $44c8: $77
	ld   h, [hl]                                     ; $44c9: $66
	ld   h, [hl]                                     ; $44ca: $66
	ld   h, [hl]                                     ; $44cb: $66
	ld   h, [hl]                                     ; $44cc: $66
	ld   d, l                                        ; $44cd: $55
	ld   h, [hl]                                     ; $44ce: $66
	ld   h, [hl]                                     ; $44cf: $66
	ld   h, [hl]                                     ; $44d0: $66
	ld   [hl], a                                     ; $44d1: $77
	ld   a, b                                        ; $44d2: $78
	adc  b                                           ; $44d3: $88
	sbc  c                                           ; $44d4: $99
	sbc  d                                           ; $44d5: $9a
	xor  d                                           ; $44d6: $aa
	cp   e                                           ; $44d7: $bb
	xor  d                                           ; $44d8: $aa
	xor  e                                           ; $44d9: $ab
	xor  d                                           ; $44da: $aa
	xor  d                                           ; $44db: $aa
	sbc  c                                           ; $44dc: $99
	sbc  b                                           ; $44dd: $98
	add  a                                           ; $44de: $87
	ld   [hl], a                                     ; $44df: $77
	ld   h, [hl]                                     ; $44e0: $66
	ld   h, [hl]                                     ; $44e1: $66
	ld   h, l                                        ; $44e2: $65
	ld   d, l                                        ; $44e3: $55
	ld   h, l                                        ; $44e4: $65
	ld   d, [hl]                                     ; $44e5: $56
	ld   h, [hl]                                     ; $44e6: $66
	ld   h, [hl]                                     ; $44e7: $66
	ld   [hl], a                                     ; $44e8: $77
	ld   a, b                                        ; $44e9: $78
	sbc  c                                           ; $44ea: $99
	xor  d                                           ; $44eb: $aa
	sbc  d                                           ; $44ec: $9a
	xor  d                                           ; $44ed: $aa
	cp   e                                           ; $44ee: $bb
	cp   e                                           ; $44ef: $bb
	cp   e                                           ; $44f0: $bb
	xor  d                                           ; $44f1: $aa
	sbc  d                                           ; $44f2: $9a
	sbc  b                                           ; $44f3: $98
	adc  b                                           ; $44f4: $88
	ld   [hl], a                                     ; $44f5: $77
	ld   [hl], a                                     ; $44f6: $77
	ld   h, [hl]                                     ; $44f7: $66
	ld   h, [hl]                                     ; $44f8: $66
	ld   h, [hl]                                     ; $44f9: $66
	ld   h, [hl]                                     ; $44fa: $66
	ld   h, [hl]                                     ; $44fb: $66
	ld   h, [hl]                                     ; $44fc: $66
	ld   h, [hl]                                     ; $44fd: $66
	ld   [hl], a                                     ; $44fe: $77
	ld   [hl], a                                     ; $44ff: $77
	adc  b                                           ; $4500: $88
	adc  c                                           ; $4501: $89
	sbc  c                                           ; $4502: $99
	xor  d                                           ; $4503: $aa
	cp   e                                           ; $4504: $bb
	cp   e                                           ; $4505: $bb
	cp   e                                           ; $4506: $bb
	xor  d                                           ; $4507: $aa
	xor  c                                           ; $4508: $a9
	sbc  c                                           ; $4509: $99
	adc  c                                           ; $450a: $89
	add  a                                           ; $450b: $87
	ld   [hl], a                                     ; $450c: $77
	ld   [hl], a                                     ; $450d: $77
	halt                                             ; $450e: $76
	ld   h, [hl]                                     ; $450f: $66
	ld   h, l                                        ; $4510: $65
	ld   d, [hl]                                     ; $4511: $56
	ld   h, [hl]                                     ; $4512: $66
	ld   h, [hl]                                     ; $4513: $66
	ld   h, [hl]                                     ; $4514: $66
	ld   [hl], a                                     ; $4515: $77
	ld   a, b                                        ; $4516: $78
	sbc  c                                           ; $4517: $99
	sbc  c                                           ; $4518: $99
	xor  d                                           ; $4519: $aa
	xor  e                                           ; $451a: $ab
	cp   d                                           ; $451b: $ba
	xor  e                                           ; $451c: $ab
	call $dbbb                                       ; $451d: $cd $bb $db
	sbc  b                                           ; $4520: $98
	add  a                                           ; $4521: $87
	ld   [hl], a                                     ; $4522: $77
	ld   a, c                                        ; $4523: $79
	add  a                                           ; $4524: $87
	ld   h, [hl]                                     ; $4525: $66
	ld   h, [hl]                                     ; $4526: $66
	ld   d, h                                        ; $4527: $54
	ld   b, h                                        ; $4528: $44
	ld   d, l                                        ; $4529: $55
	ld   d, h                                        ; $452a: $54
	ld   d, [hl]                                     ; $452b: $56
	ld   [hl], a                                     ; $452c: $77
	ld   a, c                                        ; $452d: $79
	xor  e                                           ; $452e: $ab
	cp   h                                           ; $452f: $bc
	call z, $bbcc                                    ; $4530: $cc $cc $bb
	call c, $99aa                                    ; $4533: $dc $aa $99
	add  a                                           ; $4536: $87
	ld   h, [hl]                                     ; $4537: $66
	ld   h, l                                        ; $4538: $65
	ld   d, e                                        ; $4539: $53
	inc  sp                                          ; $453a: $33
	inc  sp                                          ; $453b: $33
	inc  sp                                          ; $453c: $33
	ld   b, l                                        ; $453d: $45
	ld   d, l                                        ; $453e: $55
	ld   b, [hl]                                     ; $453f: $46
	ld   a, b                                        ; $4540: $78
	sbc  c                                           ; $4541: $99
	xor  e                                           ; $4542: $ab
	call z, $efde                                    ; $4543: $cc $de $ef
	db   $ed                                         ; $4546: $ed
	db   $dd                                         ; $4547: $dd
	jp   z, Jump_0d7_7699                            ; $4548: $ca $99 $76

	ld   d, e                                        ; $454b: $53
	ld   [hl+], a                                    ; $454c: $22
	ld   de, $1111                                   ; $454d: $11 $11 $11
	ld   [de], a                                     ; $4550: $12
	dec  [hl]                                        ; $4551: $35
	ld   h, [hl]                                     ; $4552: $66
	adc  c                                           ; $4553: $89
	xor  e                                           ; $4554: $ab
	call $ffef                                       ; $4555: $cd $ef $ff
	rst  $38                                         ; $4558: $ff
	cp   $db                                         ; $4559: $fe $db
	cp   c                                           ; $455b: $b9
	add  a                                           ; $455c: $87
	ld   h, l                                        ; $455d: $65
	ld   b, e                                        ; $455e: $43
	ld   hl, $1111                                   ; $455f: $21 $11 $11
	ld   de, $5633                                   ; $4562: $11 $33 $56
	ld   a, b                                        ; $4565: $78
	xor  e                                           ; $4566: $ab
	call z, $ffff                                    ; $4567: $cc $ff $ff
	rst  $38                                         ; $456a: $ff
	rst  $38                                         ; $456b: $ff
	call c, $a7cb                                    ; $456c: $dc $cb $a7
	ld   h, [hl]                                     ; $456f: $66
	ld   d, e                                        ; $4570: $53
	ld   hl, $1111                                   ; $4571: $21 $11 $11
	ld   de, $4724                                   ; $4574: $11 $24 $47
	adc  b                                           ; $4577: $88
	xor  e                                           ; $4578: $ab
	call $ffee                                       ; $4579: $cd $ee $ff
	rst  $38                                         ; $457c: $ff
	rst  $38                                         ; $457d: $ff
	db   $ed                                         ; $457e: $ed
	cp   e                                           ; $457f: $bb
	xor  c                                           ; $4580: $a9
	ld   [hl], h                                     ; $4581: $74
	ld   b, e                                        ; $4582: $43
	ld   hl, $1111                                   ; $4583: $21 $11 $11
	ld   de, $6835                                   ; $4586: $11 $35 $68
	adc  d                                           ; $4589: $8a
	call z, $efdd                                    ; $458a: $cc $dd $ef
	rst  $38                                         ; $458d: $ff
	rst  $38                                         ; $458e: $ff
	db   $fd                                         ; $458f: $fd
	res  3, d                                        ; $4590: $cb $9a
	add  a                                           ; $4592: $87
	ld   d, h                                        ; $4593: $54
	inc  sp                                          ; $4594: $33
	ld   de, $1111                                   ; $4595: $11 $11 $11
	inc  de                                          ; $4598: $13
	ld   d, [hl]                                     ; $4599: $56
	sbc  d                                           ; $459a: $9a
	cp   h                                           ; $459b: $bc
	db   $dd                                         ; $459c: $dd
	call $ffdf                                       ; $459d: $cd $df $ff
	rst  $38                                         ; $45a0: $ff
	db   $ed                                         ; $45a1: $ed
	cp   c                                           ; $45a2: $b9
	sub  a                                           ; $45a3: $97
	ld   h, h                                        ; $45a4: $64
	inc  sp                                          ; $45a5: $33
	ld   hl, $1111                                   ; $45a6: $21 $11 $11
	ld   de, $9937                                   ; $45a9: $11 $37 $99
	xor  d                                           ; $45ac: $aa
	sbc  $cc                                         ; $45ad: $de $cc
	rst  $38                                         ; $45af: $ff
	rst  $38                                         ; $45b0: $ff
	rst  JumpTable                                         ; $45b1: $df
	db   $fc                                         ; $45b2: $fc
	xor  d                                           ; $45b3: $aa
	xor  c                                           ; $45b4: $a9
	ld   [hl], l                                     ; $45b5: $75
	ld   b, e                                        ; $45b6: $43
	ld   hl, $1111                                   ; $45b7: $21 $11 $11
	ld   de, $7815                                   ; $45ba: $11 $15 $78
	xor  d                                           ; $45bd: $aa
	cp   l                                           ; $45be: $bd
	db   $ec                                         ; $45bf: $ec
	rst  JumpTable                                         ; $45c0: $df
	rst  $28                                         ; $45c1: $ef
	cp   $fe                                         ; $45c2: $fe $fe
	jp   z, $8699                                    ; $45c4: $ca $99 $86

	ld   b, h                                        ; $45c7: $44
	ld   b, d                                        ; $45c8: $42
	ld   de, $1111                                   ; $45c9: $11 $11 $11
	dec  d                                           ; $45cc: $15
	ld   [hl], a                                     ; $45cd: $77
	adc  c                                           ; $45ce: $89
	adc  $ca                                         ; $45cf: $ce $ca
	sbc  $df                                         ; $45d1: $de $df
	cp   $ff                                         ; $45d3: $fe $ff
	call $a6a9                                       ; $45d5: $cd $a9 $a6
	ld   d, l                                        ; $45d8: $55
	ld   [hl-], a                                    ; $45d9: $32
	ld   de, $1111                                   ; $45da: $11 $11 $11
	ld   [de], a                                     ; $45dd: $12
	ld   h, a                                        ; $45de: $67
	sbc  c                                           ; $45df: $99
	cp   [hl]                                        ; $45e0: $be
	jp   z, $efcd                                    ; $45e1: $ca $cd $ef

	xor  $ff                                         ; $45e4: $ee $ff
	set  1, c                                        ; $45e6: $cb $c9
	and  a                                           ; $45e8: $a7
	ld   b, [hl]                                     ; $45e9: $46
	ld   b, d                                        ; $45ea: $42
	ld   de, $1111                                   ; $45eb: $11 $11 $11
	inc  d                                           ; $45ee: $14
	halt                                             ; $45ef: $76
	sbc  c                                           ; $45f0: $99
	cp   l                                           ; $45f1: $bd
	cp   h                                           ; $45f2: $bc
	db   $ec                                         ; $45f3: $ec
	call $feef                                       ; $45f4: $cd $ef $fe
	call $96c9                                       ; $45f7: $cd $c9 $96
	ld   d, l                                        ; $45fa: $55
	ld   hl, $1121                                   ; $45fb: $21 $21 $11
	ld   de, $7715                                   ; $45fe: $11 $15 $77
	adc  e                                           ; $4601: $8b
	db   $db                                         ; $4602: $db
	xor  d                                           ; $4603: $aa
	adc  $cd                                         ; $4604: $ce $cd
	rst  $38                                         ; $4606: $ff
	db   $fd                                         ; $4607: $fd
	cp   h                                           ; $4608: $bc
	ret  z                                           ; $4609: $c8

	ld   h, [hl]                                     ; $460a: $66
	ld   h, l                                        ; $460b: $65
	ld   hl, $1121                                   ; $460c: $21 $21 $11
	ld   de, $7736                                   ; $460f: $11 $36 $77
	sbc  h                                           ; $4612: $9c
	jp   z, $deac                                    ; $4613: $ca $ac $de

	cp   $ff                                         ; $4616: $fe $ff
	db   $ec                                         ; $4618: $ec
	cp   h                                           ; $4619: $bc
	cp   b                                           ; $461a: $b8
	ld   h, l                                        ; $461b: $65
	ld   b, h                                        ; $461c: $44
	ld   de, $1111                                   ; $461d: $11 $11 $11
	ld   [de], a                                     ; $4620: $12
	ld   h, a                                        ; $4621: $67
	ld   l, c                                        ; $4622: $69
	call z, $bccb                                    ; $4623: $cc $cb $bc
	call $effd                                       ; $4626: $cd $fd $ef
	call c, $a7ba                                    ; $4629: $dc $ba $a7
	ld   d, h                                        ; $462c: $54
	ld   [hl-], a                                    ; $462d: $32
	ld   hl, $1111                                   ; $462e: $21 $11 $11
	ld   [hl], $68                                   ; $4631: $36 $68
	xor  d                                           ; $4633: $aa
	cp   h                                           ; $4634: $bc
	cp   e                                           ; $4635: $bb
	ld   [$dfef], a                                  ; $4636: $ea $ef $df
	db   $dd                                         ; $4639: $dd
	call c, Call_0d7_76a8                            ; $463a: $dc $a8 $76
	ld   b, e                                        ; $463d: $43
	ld   de, $1111                                   ; $463e: $11 $11 $11
	inc  d                                           ; $4641: $14
	ld   [hl], a                                     ; $4642: $77
	ld   a, e                                        ; $4643: $7b
	db   $db                                         ; $4644: $db
	cp   h                                           ; $4645: $bc
	cp   e                                           ; $4646: $bb
	set  5, [hl]                                     ; $4647: $cb $ee
	rst  JumpTable                                         ; $4649: $df
	jp   c, Jump_0d7_76a9                            ; $464a: $da $a9 $76

	ld   d, h                                        ; $464d: $54
	ld   hl, $1111                                   ; $464e: $21 $11 $11
	inc  de                                          ; $4651: $13
	ld   l, b                                        ; $4652: $68
	adc  c                                           ; $4653: $89
	xor  e                                           ; $4654: $ab
	db   $dd                                         ; $4655: $dd
	xor  e                                           ; $4656: $ab
	db   $dd                                         ; $4657: $dd
	db   $dd                                         ; $4658: $dd
	sbc  $ec                                         ; $4659: $de $ec
	cp   d                                           ; $465b: $ba
	sub  a                                           ; $465c: $97
	ld   b, e                                        ; $465d: $43
	ld   de, $1111                                   ; $465e: $11 $11 $11
	ld   [de], a                                     ; $4661: $12
	ld   d, [hl]                                     ; $4662: $56
	ld   l, h                                        ; $4663: $6c
	jp   hl                                          ; $4664: $e9


	call z, $cacc                                    ; $4665: $cc $cc $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4668: $cf
	rst  $38                                         ; $4669: $ff
	db   $db                                         ; $466a: $db
	db   $db                                         ; $466b: $db
	ld   [hl], l                                     ; $466c: $75
	ld   d, h                                        ; $466d: $54
	ld   hl, $1111                                   ; $466e: $21 $11 $11
	ld   de, $7959                                   ; $4671: $11 $59 $79
	cp   h                                           ; $4674: $bc
	db   $dd                                         ; $4675: $dd
	xor  c                                           ; $4676: $a9
	adc  $de                                         ; $4677: $ce $de
	cp   $dd                                         ; $4679: $fe $dd
	xor  d                                           ; $467b: $aa
	and  [hl]                                        ; $467c: $a6
	ld   b, h                                        ; $467d: $44
	ld   de, $1121                                   ; $467e: $11 $21 $11
	inc  de                                          ; $4681: $13
	ld   l, b                                        ; $4682: $68
	adc  e                                           ; $4683: $8b
	set  1, e                                        ; $4684: $cb $cb
	sbc  h                                           ; $4686: $9c
	cp   $dd                                         ; $4687: $fe $dd
	rst  $38                                         ; $4689: $ff
	jp   z, $94ba                                    ; $468a: $ca $ba $94

	ld   [hl-], a                                    ; $468d: $32
	ld   de, $1111                                   ; $468e: $11 $11 $11
	ld   d, [hl]                                     ; $4691: $56
	ld   d, a                                        ; $4692: $57
	cp   l                                           ; $4693: $bd
	jp   z, $ccac                                    ; $4694: $ca $ac $cc

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4697: $cf
	rst  $38                                         ; $4698: $ff
	db   $fc                                         ; $4699: $fc
	cp   h                                           ; $469a: $bc
	xor  c                                           ; $469b: $a9
	ld   b, e                                        ; $469c: $43
	ld   [hl-], a                                    ; $469d: $32
	ld   hl, $1211                                   ; $469e: $21 $11 $12
	ld   d, a                                        ; $46a1: $57
	cp   e                                           ; $46a2: $bb
	xor  h                                           ; $46a3: $ac
	db   $db                                         ; $46a4: $db
	sbc  e                                           ; $46a5: $9b
	sbc  d                                           ; $46a6: $9a
	rst  $38                                         ; $46a7: $ff
	rst  $38                                         ; $46a8: $ff
	xor  [hl]                                        ; $46a9: $ae
	rst  $10                                         ; $46aa: $d7
	add  l                                           ; $46ab: $85
	ld   d, h                                        ; $46ac: $54
	ld   de, $1111                                   ; $46ad: $11 $11 $11
	scf                                              ; $46b0: $37
	sbc  e                                           ; $46b1: $9b
	cp   h                                           ; $46b2: $bc
	db   $dd                                         ; $46b3: $dd
	cp   e                                           ; $46b4: $bb
	ret                                              ; $46b5: $c9


	cp   a                                           ; $46b6: $bf

Jump_0d7_46b7:
	adc  $fb                                         ; $46b7: $ce $fb
	res  3, c                                        ; $46b9: $cb $99
	ld   d, h                                        ; $46bb: $54
	ld   sp, $1111                                   ; $46bc: $31 $11 $11
	ld   d, $86                                      ; $46bf: $16 $86
	cp   l                                           ; $46c1: $bd
	db   $ec                                         ; $46c2: $ec
	xor  e                                           ; $46c3: $ab
	cp   h                                           ; $46c4: $bc
	sbc  d                                           ; $46c5: $9a
	db   $fd                                         ; $46c6: $fd
	db   $fd                                         ; $46c7: $fd
	adc  a                                           ; $46c8: $8f
	or   a                                           ; $46c9: $b7
	ld   h, d                                        ; $46ca: $62
	ld   b, h                                        ; $46cb: $44
	ld   de, $1111                                   ; $46cc: $11 $11 $11
	adc  b                                           ; $46cf: $88
	sbc  h                                           ; $46d0: $9c
	cp   l                                           ; $46d1: $bd
	db   $fc                                         ; $46d2: $fc
	and  [hl]                                        ; $46d3: $a6
	adc  $bf                                         ; $46d4: $ce $bf
	rst  $38                                         ; $46d6: $ff
	ret                                              ; $46d7: $c9


	xor  b                                           ; $46d8: $a8
	add  l                                           ; $46d9: $85
	inc  h                                           ; $46da: $24
	ld   de, $1201                                   ; $46db: $11 $01 $12
	ld   h, a                                        ; $46de: $67
	adc  [hl]                                        ; $46df: $8e
	call c, $befc                                    ; $46e0: $dc $fc $be
	ld   a, e                                        ; $46e3: $7b
	db   $ed                                         ; $46e4: $ed
	db   $fc                                         ; $46e5: $fc
	db   $dd                                         ; $46e6: $dd
	adc  d                                           ; $46e7: $8a
	ld   h, l                                        ; $46e8: $65
	ld   sp, $1121                                   ; $46e9: $31 $21 $11
	ld   de, $bd88                                   ; $46ec: $11 $88 $bd
	rst  JumpTable                                         ; $46ef: $df
	call z, $b9bd                                    ; $46f0: $cc $bd $b9
	adc  $fe                                         ; $46f3: $ce $fe
	jp   z, $84ab                                    ; $46f5: $ca $ab $84

	ld   [hl+], a                                    ; $46f8: $22
	ld   de, $1111                                   ; $46f9: $11 $11 $11
	ld   l, c                                        ; $46fc: $69
	rst  JumpTable                                         ; $46fd: $df
	db   $ed                                         ; $46fe: $ed
	cp   e                                           ; $46ff: $bb
	db   $db                                         ; $4700: $db
	cp   e                                           ; $4701: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4702: $cf
	xor  $c9                                         ; $4703: $ee $c9
	xor  c                                           ; $4705: $a9
	add  [hl]                                        ; $4706: $86
	ld   [hl-], a                                    ; $4707: $32
	ld   de, $1111                                   ; $4708: $11 $11 $11
	adc  d                                           ; $470b: $8a
	xor  [hl]                                        ; $470c: $ae
	rst  $28                                         ; $470d: $ef
	db   $eb                                         ; $470e: $eb
	cp   e                                           ; $470f: $bb
	jp   hl                                          ; $4710: $e9


	cp   a                                           ; $4711: $bf
	call c, $99ca                                    ; $4712: $dc $ca $99
	add  h                                           ; $4715: $84
	ld   sp, $1111                                   ; $4716: $31 $11 $11
	ld   [de], a                                     ; $4719: $12
	ld   a, d                                        ; $471a: $7a
	cp   $ef                                         ; $471b: $fe $ef
	call c, $bcab                                    ; $471d: $dc $ab $bc
	adc  $fe                                         ; $4720: $ce $fe
	and  a                                           ; $4722: $a7
	sbc  d                                           ; $4723: $9a
	ld   [hl], h                                     ; $4724: $74
	ld   de, $1111                                   ; $4725: $11 $11 $11
	rla                                              ; $4728: $17
	xor  c                                           ; $4729: $a9
	rst  $28                                         ; $472a: $ef
	db   $fc                                         ; $472b: $fc
	cp   h                                           ; $472c: $bc
	xor  e                                           ; $472d: $ab
	xor  e                                           ; $472e: $ab
	rst  $38                                         ; $472f: $ff
	call c, $96b9                                    ; $4730: $dc $b9 $96
	ld   d, e                                        ; $4733: $53
	ld   de, $1111                                   ; $4734: $11 $11 $11
	dec  de                                          ; $4737: $1b
	jp   z, $ffff                                    ; $4738: $ca $ff $ff

	res  7, d                                        ; $473b: $cb $ba
	sbc  l                                           ; $473d: $9d
	rst  $38                                         ; $473e: $ff
	ld   sp, hl                                      ; $473f: $f9
	sbc  d                                           ; $4740: $9a
	add  [hl]                                        ; $4741: $86
	ld   b, c                                        ; $4742: $41
	ld   de, $1111                                   ; $4743: $11 $11 $11
	ld   l, e                                        ; $4746: $6b
	cp   a                                           ; $4747: $bf
	rst  $38                                         ; $4748: $ff
	ld   a, [$caab]                                  ; $4749: $fa $ab $ca
	adc  $ff                                         ; $474c: $ce $ff
	xor  h                                           ; $474e: $ac
	sbc  c                                           ; $474f: $99
	ld   [hl], l                                     ; $4750: $75
	ld   d, c                                        ; $4751: $51
	ld   de, $1311                                   ; $4752: $11 $11 $13
	add  sp, -$11                                    ; $4755: $e8 $ef
	rst  $38                                         ; $4757: $ff
	db   $dd                                         ; $4758: $dd
	xor  e                                           ; $4759: $ab
	xor  b                                           ; $475a: $a8
	rst  $38                                         ; $475b: $ff
	db   $fd                                         ; $475c: $fd
	xor  e                                           ; $475d: $ab
	adc  b                                           ; $475e: $88
	halt                                             ; $475f: $76
	ld   d, c                                        ; $4760: $51
	ld   de, $1811                                   ; $4761: $11 $11 $18
	cp   d                                           ; $4764: $ba
	rst  $38                                         ; $4765: $ff
	rst  $38                                         ; $4766: $ff
	jp   c, $6add                                    ; $4767: $da $dd $6a

	rst  $38                                         ; $476a: $ff
	jp   hl                                          ; $476b: $e9


	xor  h                                           ; $476c: $ac
	cp   c                                           ; $476d: $b9
	ld   d, h                                        ; $476e: $54
	ld   hl, $1111                                   ; $476f: $21 $11 $11
	inc  e                                           ; $4772: $1c
	adc  l                                           ; $4773: $8d
	rst  $38                                         ; $4774: $ff
	rst  $38                                         ; $4775: $ff
	call c, Call_0d7_7bcb                            ; $4776: $dc $cb $7b
	rst  $38                                         ; $4779: $ff
	ret                                              ; $477a: $c9


	cp   h                                           ; $477b: $bc
	cp   b                                           ; $477c: $b8
	ld   [hl], h                                     ; $477d: $74
	ld   de, $1111                                   ; $477e: $11 $11 $11
	inc  a                                           ; $4781: $3c
	ld   a, a                                        ; $4782: $7f
	rst  $38                                         ; $4783: $ff
	db   $fd                                         ; $4784: $fd
	db   $db                                         ; $4785: $db
	jp   z, $ffaf                                    ; $4786: $ca $af $ff

	xor  b                                           ; $4789: $a8
	call $87b9                                       ; $478a: $cd $b9 $87
	ld   de, $1111                                   ; $478d: $11 $11 $11
	ld   c, l                                        ; $4790: $4d
	ld   l, a                                        ; $4791: $6f
	rst  $38                                         ; $4792: $ff
	cp   $ac                                         ; $4793: $fe $ac
	rst  $20                                         ; $4795: $e7
	sbc  a                                           ; $4796: $9f
	rst  $38                                         ; $4797: $ff
	adc  c                                           ; $4798: $89
	cp   h                                           ; $4799: $bc
	cp   b                                           ; $479a: $b8
	or   a                                           ; $479b: $b7
	ld   de, $1111                                   ; $479c: $11 $11 $11
	rra                                              ; $479f: $1f
	xor  a                                           ; $47a0: $af
	rst  $38                                         ; $47a1: $ff
	rst  $38                                         ; $47a2: $ff
	cp   c                                           ; $47a3: $b9
	ret  c                                           ; $47a4: $d8

	sbc  h                                           ; $47a5: $9c
	xor  $db                                         ; $47a6: $ee $db
	sbc  [hl]                                        ; $47a8: $9e
	db   $db                                         ; $47a9: $db
	xor  b                                           ; $47aa: $a8
	ld   b, c                                        ; $47ab: $41
	ld   de, $1d11                                   ; $47ac: $11 $11 $1d
	sbc  d                                           ; $47af: $9a
	rst  $38                                         ; $47b0: $ff
	rst  $38                                         ; $47b1: $ff
	xor  c                                           ; $47b2: $a9
	ld   [$ff4d], a                                  ; $47b3: $ea $4d $ff
	cp   c                                           ; $47b6: $b9
	cp   e                                           ; $47b7: $bb
	ld   a, [$949e]                                  ; $47b8: $fa $9e $94
	ld   de, $1111                                   ; $47bb: $11 $11 $11
	cp   $ff                                         ; $47be: $fe $ff
	rst  $38                                         ; $47c0: $ff
	db   $fc                                         ; $47c1: $fc
	ld   a, d                                        ; $47c2: $7a
	add  [hl]                                        ; $47c3: $86
	cp   h                                           ; $47c4: $bc
	ei                                               ; $47c5: $fb
	xor  d                                           ; $47c6: $aa
	rst  JumpTable                                         ; $47c7: $df
	cp   l                                           ; $47c8: $bd
	cp   d                                           ; $47c9: $ba
	ld   d, c                                        ; $47ca: $51
	ld   de, $1f11                                   ; $47cb: $11 $11 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47ce: $cf
	rst  $38                                         ; $47cf: $ff
	rst  $38                                         ; $47d0: $ff
	or   l                                           ; $47d1: $b5
	push bc                                          ; $47d2: $c5
	ld   c, d                                        ; $47d3: $4a
	xor  a                                           ; $47d4: $af
	xor  d                                           ; $47d5: $aa
	cp   a                                           ; $47d6: $bf
	db   $fd                                         ; $47d7: $fd
	db   $fc                                         ; $47d8: $fc
	and  l                                           ; $47d9: $a5
	ld   de, $1111                                   ; $47da: $11 $11 $11
	rst  $38                                         ; $47dd: $ff
	rst  JumpTable                                         ; $47de: $df
	rst  $38                                         ; $47df: $ff
	db   $fc                                         ; $47e0: $fc
	ld   l, b                                        ; $47e1: $68
	add  c                                           ; $47e2: $81
	ld   a, c                                        ; $47e3: $79
	ld   a, [$ef8c]                                  ; $47e4: $fa $8c $ef
	cp   $ec                                         ; $47e7: $fe $ec
	add  c                                           ; $47e9: $81
	ld   de, $1a11                                   ; $47ea: $11 $11 $1a
	ld   a, [$ffff]                                  ; $47ed: $fa $ff $ff
	ld   hl, sp+$59                                  ; $47f0: $f8 $59
	inc  d                                           ; $47f2: $14
	ld   a, e                                        ; $47f3: $7b
	add  $dc                                         ; $47f4: $c6 $dc
	rst  $38                                         ; $47f6: $ff
	rst  $38                                         ; $47f7: $ff
	jp   c, $1131                                    ; $47f8: $da $31 $11

	ld   de, $fe1f                                   ; $47fb: $11 $1f $fe
	rst  $38                                         ; $47fe: $ff
	rst  $38                                         ; $47ff: $ff
	jp   nc, $1587                                   ; $4800: $d2 $87 $15

	ld   c, [hl]                                     ; $4803: $4e
	xor  d                                           ; $4804: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4805: $cf
	rst  $38                                         ; $4806: $ff
	rst  $38                                         ; $4807: $ff
	ret  z                                           ; $4808: $c8

	ld   de, $1111                                   ; $4809: $11 $11 $11
	rra                                              ; $480c: $1f
	cp   $ff                                         ; $480d: $fe $ff
	rst  $38                                         ; $480f: $ff
	or   c                                           ; $4810: $b1
	ld   c, b                                        ; $4811: $48
	ld   de, $cb3c                                   ; $4812: $11 $3c $cb
	xor  $ff                                         ; $4815: $ee $ff
	cp   $b8                                         ; $4817: $fe $b8
	ld   de, $1111                                   ; $4819: $11 $11 $11
	dec  de                                          ; $481c: $1b
	cp   $ff                                         ; $481d: $fe $ff
	rst  $38                                         ; $481f: $ff
	sub  c                                           ; $4820: $91
	dec  de                                          ; $4821: $1b
	ld   de, $fb18                                   ; $4822: $11 $18 $fb
	db   $fc                                         ; $4825: $fc
	rst  $38                                         ; $4826: $ff
	rst  $28                                         ; $4827: $ef
	sbc  e                                           ; $4828: $9b
	ld   de, $1111                                   ; $4829: $11 $11 $11
	ld   de, $febf                                   ; $482c: $11 $bf $fe
	rst  $38                                         ; $482f: $ff
	rst  $30                                         ; $4830: $f7
	ld   de, $12b5                                   ; $4831: $11 $b5 $12
	ld   l, a                                        ; $4834: $6f
	rst  $28                                         ; $4835: $ef
	rst  $28                                         ; $4836: $ef
	db   $fc                                         ; $4837: $fc
	push bc                                          ; $4838: $c5
	sub  d                                           ; $4839: $92
	ld   de, $1114                                   ; $483a: $11 $14 $11
	ld   de, $3eff                                   ; $483d: $11 $ff $3e
	rst  $38                                         ; $4840: $ff
	ldh  a, [c]                                      ; $4841: $f2
	ld   de, $16f1                                   ; $4842: $11 $f1 $16
	rst  JumpTable                                         ; $4845: $df
	rst  JumpTable                                         ; $4846: $df
	ld   a, a                                        ; $4847: $7f
	rst  $30                                         ; $4848: $f7
	add  e                                           ; $4849: $83
	or   c                                           ; $484a: $b1
	ld   hl, $312b                                   ; $484b: $21 $2b $31
	ld   de, $f11f                                   ; $484e: $11 $1f $f1
	rst  $28                                         ; $4851: $ef
	db   $fd                                         ; $4852: $fd
	ld   hl, $311f                                   ; $4853: $21 $1f $31
	sbc  a                                           ; $4856: $9f
	ei                                               ; $4857: $fb
	push af                                          ; $4858: $f5
	rst  $38                                         ; $4859: $ff
	sub  [hl]                                        ; $485a: $96
	ld   e, e                                        ; $485b: $5b
	ld   h, $17                                      ; $485c: $26 $17
	and  l                                           ; $485e: $a5
	ld   sp, $1b31                                   ; $485f: $31 $31 $1b
	rst  $30                                         ; $4862: $f7
	rst  JumpTable                                         ; $4863: $df
	rst  JumpTable                                         ; $4864: $df
	ld   h, d                                        ; $4865: $62
	rra                                              ; $4866: $1f
	ld   h, e                                        ; $4867: $63
	ld   l, c                                        ; $4868: $69
	ei                                               ; $4869: $fb
	and  $ff                                         ; $486a: $e6 $ff
	xor  b                                           ; $486c: $a8
	ld   a, d                                        ; $486d: $7a
	ld   l, b                                        ; $486e: $68
	inc  h                                           ; $486f: $24
	halt                                             ; $4870: $76
	halt                                             ; $4871: $76
	sbc  b                                           ; $4872: $98
	ld   [hl], e                                     ; $4873: $73
	ld   de, $868f                                   ; $4874: $11 $8f $86
	rst  JumpTable                                         ; $4877: $df
	jp   hl                                          ; $4878: $e9


	ld   b, h                                        ; $4879: $44
	jp   z, $8c33                                    ; $487a: $ca $33 $8c

	cp   c                                           ; $487d: $b9
	adc  l                                           ; $487e: $8d
	ei                                               ; $487f: $fb
	ld   [hl], a                                     ; $4880: $77
	xor  b                                           ; $4881: $a8
	ld   h, e                                        ; $4882: $63
	ld   e, b                                        ; $4883: $58
	adc  c                                           ; $4884: $89
	ld   a, b                                        ; $4885: $78
	xor  e                                           ; $4886: $ab
	add  l                                           ; $4887: $85
	ld   hl, $f713                                   ; $4888: $21 $13 $f7
	ld   a, h                                        ; $488b: $7c
	sbc  $b7                                         ; $488c: $de $b7
	ld   e, h                                        ; $488e: $5c
	and  l                                           ; $488f: $a5
	ld   e, b                                        ; $4890: $58
	xor  d                                           ; $4891: $aa
	and  [hl]                                        ; $4892: $a6
	xor  l                                           ; $4893: $ad
	cp   c                                           ; $4894: $b9
	sbc  d                                           ; $4895: $9a
	sbc  d                                           ; $4896: $9a
	ld   d, [hl]                                     ; $4897: $56
	adc  b                                           ; $4898: $88
	ld   h, [hl]                                     ; $4899: $66
	sbc  c                                           ; $489a: $99
	xor  c                                           ; $489b: $a9
	ld   a, b                                        ; $489c: $78
	sub  [hl]                                        ; $489d: $96
	ld   hl, $b518                                   ; $489e: $21 $18 $b5
	ld   a, b                                        ; $48a1: $78
	sub  [hl]                                        ; $48a2: $96
	ld   e, d                                        ; $48a3: $5a
	sbc  d                                           ; $48a4: $9a
	xor  b                                           ; $48a5: $a8
	sbc  d                                           ; $48a6: $9a
	xor  d                                           ; $48a7: $aa
	cp   c                                           ; $48a8: $b9
	sbc  $9a                                         ; $48a9: $de $9a
	sbc  b                                           ; $48ab: $98
	halt                                             ; $48ac: $76
	ld   b, l                                        ; $48ad: $45
	add  [hl]                                        ; $48ae: $86
	ld   h, [hl]                                     ; $48af: $66
	adc  b                                           ; $48b0: $88
	cp   c                                           ; $48b1: $b9
	ld   [hl], a                                     ; $48b2: $77
	ld   de, $974b                                   ; $48b3: $11 $4b $97
	sbc  e                                           ; $48b6: $9b
	cp   e                                           ; $48b7: $bb
	ld   [hl], l                                     ; $48b8: $75
	sbc  c                                           ; $48b9: $99
	ld   h, a                                        ; $48ba: $67
	adc  c                                           ; $48bb: $89
	jp   z, $ec69                                    ; $48bc: $ca $69 $ec

	ld   a, c                                        ; $48bf: $79
	ld   a, c                                        ; $48c0: $79
	sub  [hl]                                        ; $48c1: $96
	ld   b, [hl]                                     ; $48c2: $46
	sub  a                                           ; $48c3: $97
	ld   [hl], a                                     ; $48c4: $77
	xor  d                                           ; $48c5: $aa
	or   a                                           ; $48c6: $b7
	ld   a, c                                        ; $48c7: $79
	sbc  b                                           ; $48c8: $98
	ld   a, c                                        ; $48c9: $79
	adc  c                                           ; $48ca: $89
	ld   [hl], a                                     ; $48cb: $77
	adc  b                                           ; $48cc: $88
	sub  a                                           ; $48cd: $97
	halt                                             ; $48ce: $76
	ld   [hl], a                                     ; $48cf: $77
	ld   h, [hl]                                     ; $48d0: $66
	ld   [hl], a                                     ; $48d1: $77
	halt                                             ; $48d2: $76
	ld   b, c                                        ; $48d3: $41
	ld   e, d                                        ; $48d4: $5a
	xor  d                                           ; $48d5: $aa
	sbc  h                                           ; $48d6: $9c
	cp   d                                           ; $48d7: $ba
	halt                                             ; $48d8: $76
	add  a                                           ; $48d9: $87
	ld   [hl], l                                     ; $48da: $75
	ld   [hl], a                                     ; $48db: $77
	xor  b                                           ; $48dc: $a8
	ld   a, c                                        ; $48dd: $79
	sbc  d                                           ; $48de: $9a
	sbc  c                                           ; $48df: $99
	ld   a, b                                        ; $48e0: $78
	add  a                                           ; $48e1: $87
	ld   a, b                                        ; $48e2: $78
	sbc  b                                           ; $48e3: $98
	xor  b                                           ; $48e4: $a8
	sbc  d                                           ; $48e5: $9a
	sbc  b                                           ; $48e6: $98
	ld   a, c                                        ; $48e7: $79
	sbc  b                                           ; $48e8: $98
	adc  e                                           ; $48e9: $8b
	sbc  b                                           ; $48ea: $98
	xor  b                                           ; $48eb: $a8
	ld   [hl], a                                     ; $48ec: $77
	add  a                                           ; $48ed: $87
	ld   [hl], a                                     ; $48ee: $77
	ld   h, a                                        ; $48ef: $67
	add  a                                           ; $48f0: $87
	ld   [hl], a                                     ; $48f1: $77
	ld   [hl], a                                     ; $48f2: $77
	sbc  b                                           ; $48f3: $98
	adc  c                                           ; $48f4: $89
	sbc  c                                           ; $48f5: $99
	adc  b                                           ; $48f6: $88
	sbc  b                                           ; $48f7: $98
	adc  b                                           ; $48f8: $88
	sbc  c                                           ; $48f9: $99
	add  a                                           ; $48fa: $87
	halt                                             ; $48fb: $76
	ld   h, a                                        ; $48fc: $67
	ld   l, b                                        ; $48fd: $68
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	ld   [hl], a                                     ; $4900: $77
	ld   [hl], a                                     ; $4901: $77
	ld   a, b                                        ; $4902: $78
	sbc  b                                           ; $4903: $98
	sbc  c                                           ; $4904: $99
	sbc  c                                           ; $4905: $99
	add  a                                           ; $4906: $87
	ld   [hl], a                                     ; $4907: $77
	ld   h, [hl]                                     ; $4908: $66
	ld   h, [hl]                                     ; $4909: $66
	ld   a, b                                        ; $490a: $78
	sbc  c                                           ; $490b: $99
	sbc  d                                           ; $490c: $9a
	sbc  c                                           ; $490d: $99
	add  a                                           ; $490e: $87
	halt                                             ; $490f: $76
	ld   b, e                                        ; $4910: $43
	sbc  d                                           ; $4911: $9a
	ld   a, c                                        ; $4912: $79
	xor  d                                           ; $4913: $aa
	xor  c                                           ; $4914: $a9
	ld   [hl], a                                     ; $4915: $77
	sub  a                                           ; $4916: $97
	ld   h, [hl]                                     ; $4917: $66
	ld   a, b                                        ; $4918: $78
	cp   e                                           ; $4919: $bb
	cp   d                                           ; $491a: $ba
	adc  c                                           ; $491b: $89
	add  [hl]                                        ; $491c: $86
	ld   h, a                                        ; $491d: $67
	ld   h, a                                        ; $491e: $67
	ld   [hl], a                                     ; $491f: $77
	adc  b                                           ; $4920: $88
	sbc  b                                           ; $4921: $98
	xor  d                                           ; $4922: $aa
	sbc  b                                           ; $4923: $98
	sbc  b                                           ; $4924: $98
	ld   a, b                                        ; $4925: $78
	ld   [hl], a                                     ; $4926: $77
	ld   a, b                                        ; $4927: $78
	adc  b                                           ; $4928: $88
	adc  d                                           ; $4929: $8a
	cp   d                                           ; $492a: $ba
	adc  b                                           ; $492b: $88
	halt                                             ; $492c: $76
	ld   h, l                                        ; $492d: $65
	ld   h, a                                        ; $492e: $67
	ld   [hl], a                                     ; $492f: $77
	ld   a, b                                        ; $4930: $78
	sbc  b                                           ; $4931: $98
	xor  c                                           ; $4932: $a9
	sbc  c                                           ; $4933: $99
	add  a                                           ; $4934: $87
	ld   [hl], a                                     ; $4935: $77
	ld   [hl], a                                     ; $4936: $77
	ld   a, b                                        ; $4937: $78
	adc  c                                           ; $4938: $89
	adc  b                                           ; $4939: $88
	sbc  c                                           ; $493a: $99
	adc  c                                           ; $493b: $89
	sbc  d                                           ; $493c: $9a
	sub  a                                           ; $493d: $97
	add  a                                           ; $493e: $87
	ld   [hl], a                                     ; $493f: $77
	ld   h, a                                        ; $4940: $67
	adc  c                                           ; $4941: $89
	adc  c                                           ; $4942: $89
	sbc  c                                           ; $4943: $99
	add  a                                           ; $4944: $87
	ld   a, b                                        ; $4945: $78
	add  a                                           ; $4946: $87
	ld   [hl], a                                     ; $4947: $77
	ld   a, b                                        ; $4948: $78
	add  a                                           ; $4949: $87
	sbc  b                                           ; $494a: $98
	sbc  b                                           ; $494b: $98
	sbc  b                                           ; $494c: $98
	sbc  c                                           ; $494d: $99
	sbc  b                                           ; $494e: $98
	add  a                                           ; $494f: $87
	ld   [hl], a                                     ; $4950: $77
	ld   h, a                                        ; $4951: $67
	add  a                                           ; $4952: $87
	adc  b                                           ; $4953: $88
	sbc  b                                           ; $4954: $98
	add  a                                           ; $4955: $87
	adc  b                                           ; $4956: $88
	add  a                                           ; $4957: $87
	ld   a, b                                        ; $4958: $78
	adc  b                                           ; $4959: $88
	ld   [hl], a                                     ; $495a: $77
	adc  c                                           ; $495b: $89
	adc  b                                           ; $495c: $88
	adc  b                                           ; $495d: $88
	sbc  b                                           ; $495e: $98
	add  a                                           ; $495f: $87
	adc  b                                           ; $4960: $88
	ld   [hl], a                                     ; $4961: $77
	adc  b                                           ; $4962: $88
	sbc  b                                           ; $4963: $98
	adc  b                                           ; $4964: $88
	add  a                                           ; $4965: $87
	ld   [hl], a                                     ; $4966: $77
	ld   [hl], a                                     ; $4967: $77
	add  a                                           ; $4968: $87
	ld   a, b                                        ; $4969: $78
	adc  c                                           ; $496a: $89
	adc  b                                           ; $496b: $88
	adc  b                                           ; $496c: $88
	adc  b                                           ; $496d: $88
	adc  b                                           ; $496e: $88
	adc  b                                           ; $496f: $88
	add  a                                           ; $4970: $87
	adc  b                                           ; $4971: $88
	sbc  b                                           ; $4972: $98
	adc  b                                           ; $4973: $88
	sbc  b                                           ; $4974: $98
	add  a                                           ; $4975: $87
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
	sbc  c                                           ; $4980: $99
	adc  b                                           ; $4981: $88
	adc  b                                           ; $4982: $88
	adc  b                                           ; $4983: $88
	adc  b                                           ; $4984: $88
	adc  b                                           ; $4985: $88
	add  a                                           ; $4986: $87
	adc  b                                           ; $4987: $88
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	adc  b                                           ; $498a: $88
	adc  b                                           ; $498b: $88
	adc  b                                           ; $498c: $88
	adc  c                                           ; $498d: $89
	adc  b                                           ; $498e: $88
	sbc  c                                           ; $498f: $99
	adc  b                                           ; $4990: $88
	adc  b                                           ; $4991: $88
	adc  b                                           ; $4992: $88
	adc  b                                           ; $4993: $88
	adc  b                                           ; $4994: $88
	adc  b                                           ; $4995: $88
	adc  b                                           ; $4996: $88
	adc  b                                           ; $4997: $88
	adc  b                                           ; $4998: $88
	adc  b                                           ; $4999: $88
	adc  b                                           ; $499a: $88
	adc  b                                           ; $499b: $88
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	adc  b                                           ; $499e: $88
	adc  b                                           ; $499f: $88
	adc  b                                           ; $49a0: $88
	adc  b                                           ; $49a1: $88
	adc  b                                           ; $49a2: $88
	adc  b                                           ; $49a3: $88
	adc  b                                           ; $49a4: $88
	adc  b                                           ; $49a5: $88
	adc  b                                           ; $49a6: $88
	adc  b                                           ; $49a7: $88
	adc  b                                           ; $49a8: $88
	adc  b                                           ; $49a9: $88
	adc  b                                           ; $49aa: $88
	adc  b                                           ; $49ab: $88
	adc  b                                           ; $49ac: $88
	adc  b                                           ; $49ad: $88
	adc  b                                           ; $49ae: $88
	adc  b                                           ; $49af: $88
	adc  b                                           ; $49b0: $88
	adc  b                                           ; $49b1: $88
	adc  b                                           ; $49b2: $88
	adc  b                                           ; $49b3: $88
	adc  b                                           ; $49b4: $88
	adc  b                                           ; $49b5: $88
	adc  b                                           ; $49b6: $88
	ld   de, $1111                                   ; $49b7: $11 $11 $11
	ld   de, $1111                                   ; $49ba: $11 $11 $11
	ld   de, $1111                                   ; $49bd: $11 $11 $11
	ld   de, $1111                                   ; $49c0: $11 $11 $11
	ld   de, $1111                                   ; $49c3: $11 $11 $11
	ld   de, $1111                                   ; $49c6: $11 $11 $11
	ld   de, $1111                                   ; $49c9: $11 $11 $11
	ld   de, $1111                                   ; $49cc: $11 $11 $11
	ld   de, $1111                                   ; $49cf: $11 $11 $11
	ld   de, $1111                                   ; $49d2: $11 $11 $11
	ld   de, $1111                                   ; $49d5: $11 $11 $11
	ld   de, $1111                                   ; $49d8: $11 $11 $11
	ld   de, $1111                                   ; $49db: $11 $11 $11
	ld   de, $1111                                   ; $49de: $11 $11 $11
	ld   de, $1111                                   ; $49e1: $11 $11 $11
	ld   de, $1111                                   ; $49e4: $11 $11 $11
	ld   de, $1111                                   ; $49e7: $11 $11 $11
	ld   de, $1111                                   ; $49ea: $11 $11 $11
	ld   de, $4800                                   ; $49ed: $11 $00 $48
	ld   de, $1111                                   ; $49f0: $11 $11 $11
	ld   de, $1111                                   ; $49f3: $11 $11 $11
	ld   de, $1111                                   ; $49f6: $11 $11 $11
	ld   de, $5413                                   ; $49f9: $11 $13 $54
	ld   d, h                                        ; $49fc: $54
	ld   d, h                                        ; $49fd: $54
	ld   b, c                                        ; $49fe: $41
	rra                                              ; $49ff: $1f
	rst  $38                                         ; $4a00: $ff
	pop  af                                          ; $4a01: $f1
	ld   de, $1611                                   ; $4a02: $11 $11 $16
	ld   [hl], c                                     ; $4a05: $71
	ld   de, $df1c                                   ; $4a06: $11 $1c $df
	adc  h                                           ; $4a09: $8c
	rst  JumpTable                                         ; $4a0a: $df
	sub  c                                           ; $4a0b: $91
	ld   de, $1111                                   ; $4a0c: $11 $11 $11
	ld   de, $1111                                   ; $4a0f: $11 $11 $11
	ld   de, $1111                                   ; $4a12: $11 $11 $11
	ld   de, $1111                                   ; $4a15: $11 $11 $11
	ld   de, $5411                                   ; $4a18: $11 $11 $54
	ld   b, h                                        ; $4a1b: $44
	ld   h, [hl]                                     ; $4a1c: $66
	ld   de, $5454                                   ; $4a1d: $11 $54 $54
	ld   h, a                                        ; $4a20: $67
	ld   [hl], d                                     ; $4a21: $72
	ld   de, $1111                                   ; $4a22: $11 $11 $11
	ld   de, $1112                                   ; $4a25: $11 $12 $11
	ld   [de], a                                     ; $4a28: $12
	ld   de, $1111                                   ; $4a29: $11 $11 $11
	ld   h, [hl]                                     ; $4a2c: $66
	halt                                             ; $4a2d: $76
	ld   b, [hl]                                     ; $4a2e: $46
	ld   de, $8888                                   ; $4a2f: $11 $88 $88
	adc  b                                           ; $4a32: $88
	adc  b                                           ; $4a33: $88
	adc  b                                           ; $4a34: $88
	adc  b                                           ; $4a35: $88
	adc  b                                           ; $4a36: $88
	adc  b                                           ; $4a37: $88
	sbc  c                                           ; $4a38: $99
	sbc  b                                           ; $4a39: $98
	adc  b                                           ; $4a3a: $88
	ld   [hl], a                                     ; $4a3b: $77
	ld   a, b                                        ; $4a3c: $78
	adc  c                                           ; $4a3d: $89
	sbc  b                                           ; $4a3e: $98
	add  a                                           ; $4a3f: $87
	ld   a, b                                        ; $4a40: $78
	adc  b                                           ; $4a41: $88
	add  a                                           ; $4a42: $87
	ld   a, b                                        ; $4a43: $78
	adc  d                                           ; $4a44: $8a
	xor  c                                           ; $4a45: $a9
	sbc  b                                           ; $4a46: $98
	add  a                                           ; $4a47: $87
	adc  b                                           ; $4a48: $88
	adc  b                                           ; $4a49: $88
	ld   [hl], a                                     ; $4a4a: $77
	halt                                             ; $4a4b: $76
	ld   h, [hl]                                     ; $4a4c: $66
	adc  d                                           ; $4a4d: $8a
	cp   l                                           ; $4a4e: $bd
	res  0, a                                        ; $4a4f: $cb $87
	ld   d, [hl]                                     ; $4a51: $56
	ld   a, c                                        ; $4a52: $79
	sbc  c                                           ; $4a53: $99
	add  [hl]                                        ; $4a54: $86
	ld   h, [hl]                                     ; $4a55: $66
	ld   h, a                                        ; $4a56: $67
	ld   [hl], a                                     ; $4a57: $77
	adc  b                                           ; $4a58: $88
	sbc  c                                           ; $4a59: $99
	adc  b                                           ; $4a5a: $88
	adc  c                                           ; $4a5b: $89
	adc  c                                           ; $4a5c: $89
	adc  b                                           ; $4a5d: $88
	ld   a, b                                        ; $4a5e: $78
	sbc  b                                           ; $4a5f: $98
	sub  a                                           ; $4a60: $97
	halt                                             ; $4a61: $76
	ld   h, [hl]                                     ; $4a62: $66
	ld   [hl], a                                     ; $4a63: $77
	ld   h, [hl]                                     ; $4a64: $66
	ld   d, a                                        ; $4a65: $57
	sbc  d                                           ; $4a66: $9a
	cp   c                                           ; $4a67: $b9
	add  [hl]                                        ; $4a68: $86
	ld   h, a                                        ; $4a69: $67
	sbc  h                                           ; $4a6a: $9c
	sub  a                                           ; $4a6b: $97
	ld   d, l                                        ; $4a6c: $55
	ld   h, a                                        ; $4a6d: $67
	adc  c                                           ; $4a6e: $89
	adc  b                                           ; $4a6f: $88
	ld   h, [hl]                                     ; $4a70: $66
	ld   a, d                                        ; $4a71: $7a
	cp   c                                           ; $4a72: $b9
	ld   d, l                                        ; $4a73: $55
	ld   d, a                                        ; $4a74: $57
	adc  e                                           ; $4a75: $8b
	cp   c                                           ; $4a76: $b9
	halt                                             ; $4a77: $76
	ld   l, c                                        ; $4a78: $69
	xor  d                                           ; $4a79: $aa
	sbc  c                                           ; $4a7a: $99
	ld   h, e                                        ; $4a7b: $63
	ld   e, b                                        ; $4a7c: $58
	xor  c                                           ; $4a7d: $a9
	sub  a                                           ; $4a7e: $97
	ld   d, [hl]                                     ; $4a7f: $56
	adc  e                                           ; $4a80: $8b
	and  a                                           ; $4a81: $a7
	adc  d                                           ; $4a82: $8a
	call z, $01a4                                    ; $4a83: $cc $a4 $01
	ld   c, c                                        ; $4a86: $49
	call z, Call_0d7_43b8                            ; $4a87: $cc $b8 $43
	ld   c, b                                        ; $4a8a: $48
	call z, Call_0d7_55a7                            ; $4a8b: $cc $a7 $55
	adc  h                                           ; $4a8e: $8c
	ret                                              ; $4a8f: $c9


	ld   sp, $cf14                                   ; $4a90: $31 $14 $cf
	db   $fd                                         ; $4a93: $fd
	ld   [hl], e                                     ; $4a94: $73
	scf                                              ; $4a95: $37
	rst  $28                                         ; $4a96: $ef
	ld   a, [$4731]                                  ; $4a97: $fa $31 $47
	ld   d, [hl]                                     ; $4a9a: $56
	add  [hl]                                        ; $4a9b: $86
	ld   l, b                                        ; $4a9c: $68
	cp   e                                           ; $4a9d: $bb
	rst  $28                                         ; $4a9e: $ef
	ld   sp, hl                                      ; $4a9f: $f9
	ld   d, e                                        ; $4aa0: $53
	ld   [hl], $9b                                   ; $4aa1: $36 $9b
	and  l                                           ; $4aa3: $a5
	ld   de, $ed4b                                   ; $4aa4: $11 $4b $ed
	and  a                                           ; $4aa7: $a7
	ld   b, a                                        ; $4aa8: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aa9: $cf
	push hl                                          ; $4aaa: $e5
	ld   de, $ec16                                   ; $4aab: $11 $16 $ec
	add  l                                           ; $4aae: $85
	ld   e, c                                        ; $4aaf: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ab0: $cf
	db   $fc                                         ; $4ab1: $fc
	ld   h, c                                        ; $4ab2: $61
	ld   de, $5614                                   ; $4ab3: $11 $14 $56
	xor  h                                           ; $4ab6: $ac
	and  a                                           ; $4ab7: $a7
	sbc  h                                           ; $4ab8: $9c
	rst  $38                                         ; $4ab9: $ff
	db   $fd                                         ; $4aba: $fd
	ld   h, h                                        ; $4abb: $64
	ld   hl, $aa14                                   ; $4abc: $21 $14 $aa
	adc  c                                           ; $4abf: $89
	ld   b, e                                        ; $4ac0: $43
	adc  h                                           ; $4ac1: $8c
	db   $ed                                         ; $4ac2: $ed
	push de                                          ; $4ac3: $d5
	ld   de, $5642                                   ; $4ac4: $11 $42 $56
	ld   b, d                                        ; $4ac7: $42
	ld   de, $cf35                                   ; $4ac8: $11 $35 $cf
	cp   $67                                         ; $4acb: $fe $67
	ld   [hl], l                                     ; $4acd: $75
	rst  $28                                         ; $4ace: $ef
	rst  $38                                         ; $4acf: $ff
	cp   d                                           ; $4ad0: $ba
	add  [hl]                                        ; $4ad1: $86
	rst  JumpTable                                         ; $4ad2: $df
	rst  $38                                         ; $4ad3: $ff
	call z, $a787                                    ; $4ad4: $cc $87 $a7
	xor  d                                           ; $4ad7: $aa
	ld   h, e                                        ; $4ad8: $63
	ld   de, $3411                                   ; $4ad9: $11 $11 $34
	ld   d, c                                        ; $4adc: $51
	ld   de, $1411                                   ; $4add: $11 $11 $14
	sbc  d                                           ; $4ae0: $9a
	rst  $38                                         ; $4ae1: $ff
	cp   a                                           ; $4ae2: $bf
	rst  $38                                         ; $4ae3: $ff
	rst  $38                                         ; $4ae4: $ff
	rst  $38                                         ; $4ae5: $ff
	rst  $38                                         ; $4ae6: $ff
	cp   c                                           ; $4ae7: $b9
	and  [hl]                                        ; $4ae8: $a6
	xor  e                                           ; $4ae9: $ab
	xor  h                                           ; $4aea: $ac
	ld   a, c                                        ; $4aeb: $79
	xor  e                                           ; $4aec: $ab
	db   $fc                                         ; $4aed: $fc
	call c, $1141                                    ; $4aee: $dc $41 $11
	ld   de, $1111                                   ; $4af1: $11 $11 $11
	ld   de, $8d13                                   ; $4af4: $11 $13 $8d
	rst  $38                                         ; $4af7: $ff
	rst  $38                                         ; $4af8: $ff
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	sbc  d                                           ; $4afd: $9a
	sbc  c                                           ; $4afe: $99
	reti                                             ; $4aff: $d9


	call $a87a                                       ; $4b00: $cd $7a $a8
	reti                                             ; $4b03: $d9


	xor  d                                           ; $4b04: $aa
	ld   [de], a                                     ; $4b05: $12
	ld   de, $1111                                   ; $4b06: $11 $11 $11
	ld   de, $1111                                   ; $4b09: $11 $11 $11
	ld   a, a                                        ; $4b0c: $7f
	rst  $38                                         ; $4b0d: $ff
	rst  $38                                         ; $4b0e: $ff
	rst  $38                                         ; $4b0f: $ff
	rst  $38                                         ; $4b10: $ff
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	ld   sp, hl                                      ; $4b13: $f9
	ld   [hl+], a                                    ; $4b14: $22
	ld   d, a                                        ; $4b15: $57
	rst  JumpTable                                         ; $4b16: $df
	xor  $62                                         ; $4b17: $ee $62
	ld   hl, $4346                                   ; $4b19: $21 $46 $43
	ld   de, $1111                                   ; $4b1c: $11 $11 $11
	ld   de, $ff6c                                   ; $4b1f: $11 $6c $ff
	rst  $38                                         ; $4b22: $ff
	rst  $38                                         ; $4b23: $ff
	rst  $38                                         ; $4b24: $ff
	rst  $38                                         ; $4b25: $ff
	rst  $38                                         ; $4b26: $ff
	db   $dd                                         ; $4b27: $dd
	ret                                              ; $4b28: $c9


	sub  [hl]                                        ; $4b29: $96
	ld   d, [hl]                                     ; $4b2a: $56
	ld   a, c                                        ; $4b2b: $79
	xor  e                                           ; $4b2c: $ab
	or   a                                           ; $4b2d: $b7
	ld   d, c                                        ; $4b2e: $51
	ld   de, $1111                                   ; $4b2f: $11 $11 $11
	ld   de, $8e11                                   ; $4b32: $11 $11 $8e
	rst  $38                                         ; $4b35: $ff
	rst  $38                                         ; $4b36: $ff
	rst  $38                                         ; $4b37: $ff
	rst  $38                                         ; $4b38: $ff
	rst  $38                                         ; $4b39: $ff
	rst  $38                                         ; $4b3a: $ff
	ld   sp, hl                                      ; $4b3b: $f9
	ld   h, e                                        ; $4b3c: $63
	dec  d                                           ; $4b3d: $15
	ld   a, h                                        ; $4b3e: $7c
	cp   $da                                         ; $4b3f: $fe $da
	ld   d, h                                        ; $4b41: $54
	ld   de, $1111                                   ; $4b42: $11 $11 $11
	ld   de, $3b11                                   ; $4b45: $11 $11 $3b
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	rst  $38                                         ; $4b4b: $ff
	rst  $38                                         ; $4b4c: $ff
	rst  $38                                         ; $4b4d: $ff
	ei                                               ; $4b4e: $fb
	sub  h                                           ; $4b4f: $94
	inc  de                                          ; $4b50: $13
	ld   c, b                                        ; $4b51: $48
	rst  $38                                         ; $4b52: $ff
	cp   $72                                         ; $4b53: $fe $72
	ld   de, $1111                                   ; $4b55: $11 $11 $11
	ld   de, $1f11                                   ; $4b58: $11 $11 $1f
	rst  $38                                         ; $4b5b: $ff
	rst  $38                                         ; $4b5c: $ff
	rst  $38                                         ; $4b5d: $ff
	db   $fc                                         ; $4b5e: $fc
	xor  l                                           ; $4b5f: $ad
	rst  $28                                         ; $4b60: $ef
	ld   [$1151], a                                  ; $4b61: $ea $51 $11
	ld   l, h                                        ; $4b64: $6c
	rst  $38                                         ; $4b65: $ff
	rst  $38                                         ; $4b66: $ff
	add  c                                           ; $4b67: $81
	ld   de, $1111                                   ; $4b68: $11 $11 $11
	ld   de, $bf11                                   ; $4b6b: $11 $11 $bf
	rst  $38                                         ; $4b6e: $ff
	rst  $38                                         ; $4b6f: $ff
	rst  $38                                         ; $4b70: $ff
	cp   b                                           ; $4b71: $b8
	ld   l, c                                        ; $4b72: $69
	call c, $1195                                    ; $4b73: $dc $95 $11
	inc  de                                          ; $4b76: $13
	rst  JumpTable                                         ; $4b77: $df
	rst  $38                                         ; $4b78: $ff
	db   $fc                                         ; $4b79: $fc
	ld   sp, $1111                                   ; $4b7a: $31 $11 $11
	ld   de, $1f11                                   ; $4b7d: $11 $11 $1f
	rst  $38                                         ; $4b80: $ff
	rst  $38                                         ; $4b81: $ff
	rst  $38                                         ; $4b82: $ff
	ld   sp, hl                                      ; $4b83: $f9
	ld   d, l                                        ; $4b84: $55
	sbc  e                                           ; $4b85: $9b
	and  l                                           ; $4b86: $a5
	ld   de, $6f11                                   ; $4b87: $11 $11 $6f
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	pop  de                                          ; $4b8c: $d1
	ld   de, $1111                                   ; $4b8d: $11 $11 $11
	ld   de, $4f11                                   ; $4b90: $11 $11 $4f
	rst  $38                                         ; $4b93: $ff
	rst  $38                                         ; $4b94: $ff
	rst  $38                                         ; $4b95: $ff
	and  c                                           ; $4b96: $a1
	inc  d                                           ; $4b97: $14
	ld   a, h                                        ; $4b98: $7c
	sub  c                                           ; $4b99: $91
	ld   de, $9f11                                   ; $4b9a: $11 $11 $9f
	rst  $38                                         ; $4b9d: $ff
	rst  $38                                         ; $4b9e: $ff
	pop  bc                                          ; $4b9f: $c1
	ld   de, $1111                                   ; $4ba0: $11 $11 $11
	ld   de, $1b11                                   ; $4ba3: $11 $11 $1b
	rst  $38                                         ; $4ba6: $ff
	rst  $38                                         ; $4ba7: $ff
	rst  $38                                         ; $4ba8: $ff
	db   $e3                                         ; $4ba9: $e3
	ld   de, $a537                                   ; $4baa: $11 $37 $a5
	ld   de, $1f11                                   ; $4bad: $11 $11 $1f
	rst  $38                                         ; $4bb0: $ff
	rst  $38                                         ; $4bb1: $ff
	ei                                               ; $4bb2: $fb
	ld   de, $1111                                   ; $4bb3: $11 $11 $11
	ld   de, $1111                                   ; $4bb6: $11 $11 $11
	cpl                                              ; $4bb9: $2f
	rst  $38                                         ; $4bba: $ff
	rst  $38                                         ; $4bbb: $ff
	rst  $38                                         ; $4bbc: $ff
	or   h                                           ; $4bbd: $b4
	ld   h, $68                                      ; $4bbe: $26 $68
	ld   [hl], c                                     ; $4bc0: $71
	ld   de, $8f11                                   ; $4bc1: $11 $11 $8f
	rst  $38                                         ; $4bc4: $ff
	rst  $38                                         ; $4bc5: $ff
	db   $fc                                         ; $4bc6: $fc
	ld   hl, $1111                                   ; $4bc7: $21 $11 $11
	ld   de, $1111                                   ; $4bca: $11 $11 $11
	rra                                              ; $4bcd: $1f
	rst  $38                                         ; $4bce: $ff
	rst  $38                                         ; $4bcf: $ff
	rst  $38                                         ; $4bd0: $ff
	ei                                               ; $4bd1: $fb
	ld   a, h                                        ; $4bd2: $7c
	jp   z, $1191                                    ; $4bd3: $ca $91 $11

	ld   de, $ff4f                                   ; $4bd6: $11 $4f $ff
	rst  $38                                         ; $4bd9: $ff
	cp   $72                                         ; $4bda: $fe $72
	inc  sp                                          ; $4bdc: $33
	ld   hl, $1111                                   ; $4bdd: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $4be0: $11 $11 $ff
	rst  $38                                         ; $4be3: $ff
	rst  $38                                         ; $4be4: $ff
	rst  $38                                         ; $4be5: $ff
	db   $fd                                         ; $4be6: $fd
	rst  $38                                         ; $4be7: $ff
	ret                                              ; $4be8: $c9


	ld   de, $1111                                   ; $4be9: $11 $11 $11
	rst  $38                                         ; $4bec: $ff
	rst  $38                                         ; $4bed: $ff
	rst  $38                                         ; $4bee: $ff
	ld   sp, hl                                      ; $4bef: $f9
	ld   b, [hl]                                     ; $4bf0: $46
	ld   d, [hl]                                     ; $4bf1: $56
	ld   sp, $1111                                   ; $4bf2: $31 $11 $11
	ld   de, rAUD1HIGH                                   ; $4bf5: $11 $14 $ff
	rst  $38                                         ; $4bf8: $ff
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	jp   hl                                          ; $4bfd: $e9


	ld   de, $1211                                   ; $4bfe: $11 $11 $12
	rst  $28                                         ; $4c01: $ef
	rst  $38                                         ; $4c02: $ff
	rst  $38                                         ; $4c03: $ff
	ld   sp, hl                                      ; $4c04: $f9
	ld   d, [hl]                                     ; $4c05: $56
	adc  c                                           ; $4c06: $89
	ld   d, c                                        ; $4c07: $51
	ld   de, $1111                                   ; $4c08: $11 $11 $11
	ld   de, $ffef                                   ; $4c0b: $11 $ef $ff
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	rst  $38                                         ; $4c12: $ff
	ld   b, c                                        ; $4c13: $41
	ld   de, $4f11                                   ; $4c14: $11 $11 $4f
	rst  $38                                         ; $4c17: $ff
	rst  $38                                         ; $4c18: $ff
	cp   $99                                         ; $4c19: $fe $99
	sbc  d                                           ; $4c1b: $9a
	add  h                                           ; $4c1c: $84
	ld   de, $1111                                   ; $4c1d: $11 $11 $11
	ld   de, $ef17                                   ; $4c20: $11 $17 $ef
	rst  $38                                         ; $4c23: $ff
	rst  $38                                         ; $4c24: $ff
	rst  $38                                         ; $4c25: $ff
	rst  $38                                         ; $4c26: $ff
	rst  $38                                         ; $4c27: $ff
	ld   hl, sp+$11                                  ; $4c28: $f8 $11
	ld   de, $7c11                                   ; $4c2a: $11 $11 $7c
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	db   $fd                                         ; $4c2f: $fd
	cp   d                                           ; $4c30: $ba
	bit  6, l                                        ; $4c31: $cb $75
	ld   de, $1111                                   ; $4c33: $11 $11 $11
	ld   de, $8d13                                   ; $4c36: $11 $13 $8d
	rst  $38                                         ; $4c39: $ff
	rst  $38                                         ; $4c3a: $ff
	rst  $38                                         ; $4c3b: $ff
	rst  $38                                         ; $4c3c: $ff
	rst  $38                                         ; $4c3d: $ff
	ei                                               ; $4c3e: $fb
	ld   d, c                                        ; $4c3f: $51
	ld   de, $1411                                   ; $4c40: $11 $11 $14
	xor  l                                           ; $4c43: $ad
	rst  $38                                         ; $4c44: $ff
	rst  $38                                         ; $4c45: $ff
	db   $ed                                         ; $4c46: $ed
	jp   c, $1186                                    ; $4c47: $da $86 $11

	ld   de, $1111                                   ; $4c4a: $11 $11 $11
	ld   de, $ff15                                   ; $4c4d: $11 $15 $ff
	rst  $38                                         ; $4c50: $ff
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	rst  $38                                         ; $4c53: $ff
	rst  $38                                         ; $4c54: $ff
	db   $fc                                         ; $4c55: $fc
	ld   sp, $1111                                   ; $4c56: $31 $11 $11
	ld   c, c                                        ; $4c59: $49
	xor  h                                           ; $4c5a: $ac
	call z, $cbc9                                    ; $4c5b: $cc $c9 $cb
	sbc  e                                           ; $4c5e: $9b
	add  [hl]                                        ; $4c5f: $86
	ld   b, c                                        ; $4c60: $41
	ld   de, $1111                                   ; $4c61: $11 $11 $11
	ld   de, $9b16                                   ; $4c64: $11 $16 $9b
	rst  $38                                         ; $4c67: $ff
	rst  $38                                         ; $4c68: $ff
	rst  $38                                         ; $4c69: $ff
	rst  $38                                         ; $4c6a: $ff
	rst  $38                                         ; $4c6b: $ff
	ld   sp, hl                                      ; $4c6c: $f9
	ld   [hl], c                                     ; $4c6d: $71
	ld   de, $5613                                   ; $4c6e: $11 $13 $56
	ld   [hl], a                                     ; $4c71: $77
	ld   [hl], a                                     ; $4c72: $77
	ld   a, c                                        ; $4c73: $79
	xor  e                                           ; $4c74: $ab
	db   $db                                         ; $4c75: $db
	and  a                                           ; $4c76: $a7
	ld   d, h                                        ; $4c77: $54
	inc  h                                           ; $4c78: $24
	inc  sp                                          ; $4c79: $33
	ld   hl, $1111                                   ; $4c7a: $21 $11 $11
	dec  [hl]                                        ; $4c7d: $35
	xor  e                                           ; $4c7e: $ab
	sbc  $ef                                         ; $4c7f: $de $ef
	rst  $38                                         ; $4c81: $ff
	rst  $38                                         ; $4c82: $ff
	db   $fc                                         ; $4c83: $fc
	rst  ToBoot                                         ; $4c84: $c7
	dec  [hl]                                        ; $4c85: $35
	dec  h                                           ; $4c86: $25
	ld   h, a                                        ; $4c87: $67
	and  a                                           ; $4c88: $a7
	sub  a                                           ; $4c89: $97
	ld   l, b                                        ; $4c8a: $68
	ld   a, c                                        ; $4c8b: $79
	cp   e                                           ; $4c8c: $bb
	res  7, b                                        ; $4c8d: $cb $b8
	halt                                             ; $4c8f: $76
	ld   d, l                                        ; $4c90: $55
	ld   d, l                                        ; $4c91: $55
	ld   d, h                                        ; $4c92: $54
	ld   b, h                                        ; $4c93: $44
	ld   [hl+], a                                    ; $4c94: $22
	ld   [hl+], a                                    ; $4c95: $22
	ld   b, l                                        ; $4c96: $45
	ld   l, d                                        ; $4c97: $6a
	sbc  h                                           ; $4c98: $9c
	db   $db                                         ; $4c99: $db
	db   $db                                         ; $4c9a: $db
	cp   d                                           ; $4c9b: $ba
	xor  e                                           ; $4c9c: $ab
	cp   e                                           ; $4c9d: $bb
	cp   c                                           ; $4c9e: $b9
	xor  b                                           ; $4c9f: $a8
	sbc  c                                           ; $4ca0: $99
	sbc  d                                           ; $4ca1: $9a
	sbc  d                                           ; $4ca2: $9a
	cp   d                                           ; $4ca3: $ba
	xor  c                                           ; $4ca4: $a9
	add  a                                           ; $4ca5: $87
	ld   a, b                                        ; $4ca6: $78
	ld   a, c                                        ; $4ca7: $79
	adc  c                                           ; $4ca8: $89
	sub  a                                           ; $4ca9: $97
	halt                                             ; $4caa: $76
	ld   d, l                                        ; $4cab: $55
	ld   b, h                                        ; $4cac: $44
	ld   b, l                                        ; $4cad: $45
	ld   b, h                                        ; $4cae: $44
	ld   b, h                                        ; $4caf: $44
	ld   b, e                                        ; $4cb0: $43
	ld   b, h                                        ; $4cb1: $44
	ld   d, a                                        ; $4cb2: $57
	adc  c                                           ; $4cb3: $89
	cp   h                                           ; $4cb4: $bc
	call c, $cbcc                                    ; $4cb5: $dc $cc $cb
	cp   e                                           ; $4cb8: $bb
	cp   h                                           ; $4cb9: $bc
	jp   z, $8798                                    ; $4cba: $ca $98 $87

	ld   [hl], a                                     ; $4cbd: $77
	ld   a, c                                        ; $4cbe: $79
	sbc  b                                           ; $4cbf: $98
	sbc  b                                           ; $4cc0: $98
	add  a                                           ; $4cc1: $87
	ld   [hl], a                                     ; $4cc2: $77
	ld   [hl], a                                     ; $4cc3: $77
	ld   [hl], a                                     ; $4cc4: $77
	ld   [hl], a                                     ; $4cc5: $77
	ld   h, [hl]                                     ; $4cc6: $66
	ld   h, l                                        ; $4cc7: $65
	ld   d, [hl]                                     ; $4cc8: $56
	ld   h, [hl]                                     ; $4cc9: $66
	ld   h, [hl]                                     ; $4cca: $66
	ld   h, l                                        ; $4ccb: $65
	ld   d, l                                        ; $4ccc: $55
	ld   h, [hl]                                     ; $4ccd: $66
	ld   a, c                                        ; $4cce: $79
	sbc  d                                           ; $4ccf: $9a
	xor  e                                           ; $4cd0: $ab
	cp   e                                           ; $4cd1: $bb
	cp   d                                           ; $4cd2: $ba
	xor  d                                           ; $4cd3: $aa
	xor  e                                           ; $4cd4: $ab
	xor  c                                           ; $4cd5: $a9
	sbc  c                                           ; $4cd6: $99
	add  a                                           ; $4cd7: $87
	ld   [hl], a                                     ; $4cd8: $77
	ld   [hl], a                                     ; $4cd9: $77
	ld   [hl], a                                     ; $4cda: $77
	halt                                             ; $4cdb: $76
	ld   [hl], a                                     ; $4cdc: $77
	ld   a, b                                        ; $4cdd: $78
	adc  c                                           ; $4cde: $89
	sbc  c                                           ; $4cdf: $99
	sbc  b                                           ; $4ce0: $98
	adc  b                                           ; $4ce1: $88
	adc  b                                           ; $4ce2: $88
	adc  b                                           ; $4ce3: $88
	adc  b                                           ; $4ce4: $88
	adc  b                                           ; $4ce5: $88
	adc  b                                           ; $4ce6: $88
	adc  b                                           ; $4ce7: $88
	adc  b                                           ; $4ce8: $88
	add  a                                           ; $4ce9: $87
	ld   [hl], a                                     ; $4cea: $77
	ld   [hl], a                                     ; $4ceb: $77
	ld   [hl], a                                     ; $4cec: $77
	ld   [hl], a                                     ; $4ced: $77
	adc  b                                           ; $4cee: $88
	adc  c                                           ; $4cef: $89
	adc  b                                           ; $4cf0: $88
	adc  c                                           ; $4cf1: $89
	sbc  b                                           ; $4cf2: $98
	adc  b                                           ; $4cf3: $88
	adc  b                                           ; $4cf4: $88
	adc  b                                           ; $4cf5: $88
	adc  b                                           ; $4cf6: $88
	adc  b                                           ; $4cf7: $88
	adc  b                                           ; $4cf8: $88
	sbc  c                                           ; $4cf9: $99
	adc  b                                           ; $4cfa: $88
	sbc  c                                           ; $4cfb: $99
	sbc  c                                           ; $4cfc: $99
	adc  b                                           ; $4cfd: $88
	sbc  c                                           ; $4cfe: $99
	adc  b                                           ; $4cff: $88
	adc  b                                           ; $4d00: $88
	adc  b                                           ; $4d01: $88
	adc  b                                           ; $4d02: $88
	adc  b                                           ; $4d03: $88
	adc  b                                           ; $4d04: $88
	adc  b                                           ; $4d05: $88
	adc  b                                           ; $4d06: $88
	ld   [hl], a                                     ; $4d07: $77
	ld   [hl], a                                     ; $4d08: $77
	ld   [hl], a                                     ; $4d09: $77
	ld   [hl], a                                     ; $4d0a: $77
	ld   [hl], a                                     ; $4d0b: $77
	ld   [hl], a                                     ; $4d0c: $77
	ld   a, b                                        ; $4d0d: $78
	adc  b                                           ; $4d0e: $88
	sbc  c                                           ; $4d0f: $99
	sbc  c                                           ; $4d10: $99
	adc  b                                           ; $4d11: $88
	sbc  c                                           ; $4d12: $99
	adc  b                                           ; $4d13: $88
	sbc  b                                           ; $4d14: $98
	add  a                                           ; $4d15: $87
	ld   [hl], a                                     ; $4d16: $77
	ld   a, b                                        ; $4d17: $78
	adc  b                                           ; $4d18: $88
	adc  b                                           ; $4d19: $88
	adc  b                                           ; $4d1a: $88
	sbc  c                                           ; $4d1b: $99
	sbc  b                                           ; $4d1c: $98
	adc  b                                           ; $4d1d: $88
	sbc  b                                           ; $4d1e: $98
	add  a                                           ; $4d1f: $87
	ld   [hl], a                                     ; $4d20: $77
	ld   [hl], a                                     ; $4d21: $77
	ld   [hl], a                                     ; $4d22: $77
	ld   [hl], a                                     ; $4d23: $77
	ld   [hl], a                                     ; $4d24: $77
	ld   a, b                                        ; $4d25: $78
	adc  b                                           ; $4d26: $88
	adc  c                                           ; $4d27: $89
	sbc  b                                           ; $4d28: $98
	adc  b                                           ; $4d29: $88
	adc  b                                           ; $4d2a: $88
	adc  b                                           ; $4d2b: $88
	adc  b                                           ; $4d2c: $88
	adc  b                                           ; $4d2d: $88
	adc  b                                           ; $4d2e: $88
	adc  b                                           ; $4d2f: $88
	adc  b                                           ; $4d30: $88
	sbc  c                                           ; $4d31: $99
	sbc  c                                           ; $4d32: $99
	sbc  c                                           ; $4d33: $99
	sbc  b                                           ; $4d34: $98
	adc  b                                           ; $4d35: $88
	adc  b                                           ; $4d36: $88
	adc  b                                           ; $4d37: $88
	adc  b                                           ; $4d38: $88
	ld   [hl], a                                     ; $4d39: $77
	ld   [hl], a                                     ; $4d3a: $77
	ld   [hl], a                                     ; $4d3b: $77
	adc  b                                           ; $4d3c: $88
	adc  b                                           ; $4d3d: $88
	adc  b                                           ; $4d3e: $88
	adc  b                                           ; $4d3f: $88
	adc  b                                           ; $4d40: $88
	adc  b                                           ; $4d41: $88
	adc  b                                           ; $4d42: $88
	adc  b                                           ; $4d43: $88
	adc  b                                           ; $4d44: $88
	adc  b                                           ; $4d45: $88
	sbc  c                                           ; $4d46: $99
	adc  b                                           ; $4d47: $88
	adc  b                                           ; $4d48: $88
	adc  c                                           ; $4d49: $89
	sbc  c                                           ; $4d4a: $99
	sbc  b                                           ; $4d4b: $98
	adc  b                                           ; $4d4c: $88
	adc  b                                           ; $4d4d: $88
	adc  b                                           ; $4d4e: $88
	adc  b                                           ; $4d4f: $88
	adc  b                                           ; $4d50: $88
	adc  b                                           ; $4d51: $88
	adc  b                                           ; $4d52: $88
	adc  b                                           ; $4d53: $88
	adc  b                                           ; $4d54: $88
	adc  b                                           ; $4d55: $88
	adc  b                                           ; $4d56: $88
	adc  b                                           ; $4d57: $88
	adc  b                                           ; $4d58: $88
	ld   a, b                                        ; $4d59: $78
	ld   a, b                                        ; $4d5a: $78
	adc  b                                           ; $4d5b: $88
	adc  b                                           ; $4d5c: $88
	adc  b                                           ; $4d5d: $88
	adc  b                                           ; $4d5e: $88
	adc  c                                           ; $4d5f: $89
	sbc  c                                           ; $4d60: $99
	sbc  b                                           ; $4d61: $98
	adc  b                                           ; $4d62: $88
	adc  b                                           ; $4d63: $88
	adc  b                                           ; $4d64: $88
	adc  b                                           ; $4d65: $88
	adc  b                                           ; $4d66: $88
	adc  b                                           ; $4d67: $88
	adc  b                                           ; $4d68: $88
	adc  b                                           ; $4d69: $88
	adc  b                                           ; $4d6a: $88
	adc  b                                           ; $4d6b: $88
	adc  b                                           ; $4d6c: $88
	adc  b                                           ; $4d6d: $88
	adc  b                                           ; $4d6e: $88
	adc  b                                           ; $4d6f: $88
	adc  b                                           ; $4d70: $88
	adc  b                                           ; $4d71: $88
	adc  b                                           ; $4d72: $88
	adc  b                                           ; $4d73: $88
	adc  b                                           ; $4d74: $88
	adc  b                                           ; $4d75: $88
	adc  b                                           ; $4d76: $88
	adc  b                                           ; $4d77: $88
	adc  b                                           ; $4d78: $88
	adc  b                                           ; $4d79: $88
	adc  b                                           ; $4d7a: $88
	adc  b                                           ; $4d7b: $88
	adc  b                                           ; $4d7c: $88
	adc  b                                           ; $4d7d: $88
	adc  b                                           ; $4d7e: $88
	adc  b                                           ; $4d7f: $88
	adc  b                                           ; $4d80: $88
	adc  b                                           ; $4d81: $88
	adc  b                                           ; $4d82: $88
	adc  b                                           ; $4d83: $88
	adc  b                                           ; $4d84: $88
	adc  b                                           ; $4d85: $88
	adc  b                                           ; $4d86: $88
	adc  b                                           ; $4d87: $88
	adc  b                                           ; $4d88: $88
	adc  b                                           ; $4d89: $88
	adc  b                                           ; $4d8a: $88
	adc  b                                           ; $4d8b: $88
	adc  b                                           ; $4d8c: $88
	adc  b                                           ; $4d8d: $88
	adc  b                                           ; $4d8e: $88
	adc  b                                           ; $4d8f: $88
	adc  b                                           ; $4d90: $88
	adc  b                                           ; $4d91: $88
	adc  b                                           ; $4d92: $88
	adc  b                                           ; $4d93: $88
	adc  b                                           ; $4d94: $88
	adc  b                                           ; $4d95: $88
	adc  b                                           ; $4d96: $88
	adc  b                                           ; $4d97: $88
	adc  b                                           ; $4d98: $88
	adc  c                                           ; $4d99: $89
	sbc  b                                           ; $4d9a: $98
	adc  b                                           ; $4d9b: $88
	adc  b                                           ; $4d9c: $88
	adc  b                                           ; $4d9d: $88
	adc  c                                           ; $4d9e: $89
	sbc  c                                           ; $4d9f: $99
	adc  b                                           ; $4da0: $88
	adc  b                                           ; $4da1: $88
	sbc  c                                           ; $4da2: $99
	sbc  c                                           ; $4da3: $99
	sbc  b                                           ; $4da4: $98
	ld   [hl], a                                     ; $4da5: $77
	ld   [hl], a                                     ; $4da6: $77
	sbc  c                                           ; $4da7: $99
	sbc  c                                           ; $4da8: $99
	sbc  b                                           ; $4da9: $98
	ld   [hl], a                                     ; $4daa: $77
	ld   a, b                                        ; $4dab: $78
	sbc  c                                           ; $4dac: $99
	xor  c                                           ; $4dad: $a9
	add  a                                           ; $4dae: $87
	ld   [hl], a                                     ; $4daf: $77
	ld   a, b                                        ; $4db0: $78
	sbc  c                                           ; $4db1: $99
	sbc  c                                           ; $4db2: $99
	sbc  b                                           ; $4db3: $98
	ld   [hl], a                                     ; $4db4: $77
	ld   a, b                                        ; $4db5: $78
	sbc  b                                           ; $4db6: $98
	sbc  c                                           ; $4db7: $99
	sbc  b                                           ; $4db8: $98
	ld   [hl], a                                     ; $4db9: $77
	ld   a, b                                        ; $4dba: $78
	sbc  c                                           ; $4dbb: $99
	sbc  b                                           ; $4dbc: $98
	add  a                                           ; $4dbd: $87
	ld   [hl], a                                     ; $4dbe: $77
	ld   a, c                                        ; $4dbf: $79
	xor  d                                           ; $4dc0: $aa
	sbc  b                                           ; $4dc1: $98
	ld   h, l                                        ; $4dc2: $65
	ld   l, b                                        ; $4dc3: $68
	xor  h                                           ; $4dc4: $ac
	jp   z, $3273                                    ; $4dc5: $ca $73 $32

	ld   l, b                                        ; $4dc8: $68
	xor  h                                           ; $4dc9: $ac
	xor  d                                           ; $4dca: $aa
	ld   h, [hl]                                     ; $4dcb: $66
	ld   b, [hl]                                     ; $4dcc: $46
	ld   a, c                                        ; $4dcd: $79
	call c, $96c9                                    ; $4dce: $dc $c9 $96
	ld   h, [hl]                                     ; $4dd1: $66
	ld   l, c                                        ; $4dd2: $69
	xor  e                                           ; $4dd3: $ab
	xor  c                                           ; $4dd4: $a9
	add  l                                           ; $4dd5: $85
	ld   b, e                                        ; $4dd6: $43
	ld   b, [hl]                                     ; $4dd7: $46
	adc  d                                           ; $4dd8: $8a
	xor  d                                           ; $4dd9: $aa
	add  [hl]                                        ; $4dda: $86
	ld   d, [hl]                                     ; $4ddb: $56
	adc  e                                           ; $4ddc: $8b
	rst  $38                                         ; $4ddd: $ff
	ld   [$1262], a                                  ; $4dde: $ea $62 $12
	ld   c, b                                        ; $4de1: $48
	sbc  d                                           ; $4de2: $9a
	add  [hl]                                        ; $4de3: $86
	ld   b, e                                        ; $4de4: $43
	ld   d, [hl]                                     ; $4de5: $56
	xor  h                                           ; $4de6: $ac
	db   $ed                                         ; $4de7: $ed
	jp   z, Jump_0d7_7987                            ; $4de8: $ca $87 $79

	sbc  d                                           ; $4deb: $9a
	xor  c                                           ; $4dec: $a9
	add  a                                           ; $4ded: $87
	ld   h, [hl]                                     ; $4dee: $66
	ld   h, [hl]                                     ; $4def: $66
	ld   [hl], a                                     ; $4df0: $77
	halt                                             ; $4df1: $76
	ld   d, h                                        ; $4df2: $54
	inc  sp                                          ; $4df3: $33
	ld   [hl+], a                                    ; $4df4: $22
	ld   [de], a                                     ; $4df5: $12
	inc  [hl]                                        ; $4df6: $34
	ld   d, a                                        ; $4df7: $57
	adc  c                                           ; $4df8: $89
	sbc  c                                           ; $4df9: $99
	call z, $ffff                                    ; $4dfa: $cc $ff $ff
	rst  $38                                         ; $4dfd: $ff
	res  7, c                                        ; $4dfe: $cb $b9
	sbc  c                                           ; $4e00: $99
	sbc  b                                           ; $4e01: $98
	add  a                                           ; $4e02: $87
	ld   h, [hl]                                     ; $4e03: $66
	ld   [hl], a                                     ; $4e04: $77
	adc  b                                           ; $4e05: $88
	ld   [hl], l                                     ; $4e06: $75
	ld   sp, $1111                                   ; $4e07: $31 $11 $11
	ld   de, $9916                                   ; $4e0a: $11 $16 $99
	set  5, l                                        ; $4e0d: $cb $ed
	rst  $38                                         ; $4e0f: $ff
	rst  $38                                         ; $4e10: $ff
	rst  $38                                         ; $4e11: $ff
	add  sp, $72                                     ; $4e12: $e8 $72
	ld   b, l                                        ; $4e14: $45
	ld   l, b                                        ; $4e15: $68
	ld   a, c                                        ; $4e16: $79
	ld   a, b                                        ; $4e17: $78
	cp   h                                           ; $4e18: $bc
	rst  $38                                         ; $4e19: $ff
	rst  $38                                         ; $4e1a: $ff
	and  [hl]                                        ; $4e1b: $a6
	ld   bc, $1111                                   ; $4e1c: $01 $11 $11
	ld   de, $1811                                   ; $4e1f: $11 $11 $18
	rst  $28                                         ; $4e22: $ef
	rst  $38                                         ; $4e23: $ff
	rst  $38                                         ; $4e24: $ff
	rst  $38                                         ; $4e25: $ff
	rst  $38                                         ; $4e26: $ff
	rst  $38                                         ; $4e27: $ff
	ld   h, c                                        ; $4e28: $61
	ld   de, $1411                                   ; $4e29: $11 $11 $14
	sbc  l                                           ; $4e2c: $9d
	rst  $38                                         ; $4e2d: $ff
	rst  $38                                         ; $4e2e: $ff
	rst  $38                                         ; $4e2f: $ff
	rst  $38                                         ; $4e30: $ff
	ret                                              ; $4e31: $c9


	ld   hl, $1111                                   ; $4e32: $21 $11 $11
	ld   de, $1a11                                   ; $4e35: $11 $11 $1a
	rst  $38                                         ; $4e38: $ff
	rst  $38                                         ; $4e39: $ff
	rst  $38                                         ; $4e3a: $ff
	rst  $38                                         ; $4e3b: $ff
	rst  $38                                         ; $4e3c: $ff
	rst  $30                                         ; $4e3d: $f7
	ld   de, $1111                                   ; $4e3e: $11 $11 $11
	ld   d, $ff                                      ; $4e41: $16 $ff
	rst  $38                                         ; $4e43: $ff
	rst  $38                                         ; $4e44: $ff
	rst  $38                                         ; $4e45: $ff
	rst  $38                                         ; $4e46: $ff
	ld   sp, hl                                      ; $4e47: $f9
	ld   b, c                                        ; $4e48: $41
	ld   de, $1111                                   ; $4e49: $11 $11 $11
	ld   de, $ff8f                                   ; $4e4c: $11 $8f $ff
	rst  $38                                         ; $4e4f: $ff
	rst  $38                                         ; $4e50: $ff
	rst  $38                                         ; $4e51: $ff
	rst  $38                                         ; $4e52: $ff
	ldh  a, [c]                                      ; $4e53: $f2
	ld   de, $1111                                   ; $4e54: $11 $11 $11
	add  hl, de                                      ; $4e57: $19
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	rst  $38                                         ; $4e5b: $ff
	db   $fd                                         ; $4e5c: $fd
	db   $db                                         ; $4e5d: $db
	ld   d, c                                        ; $4e5e: $51
	ld   de, $1111                                   ; $4e5f: $11 $11 $11
	ld   de, $ffff                                   ; $4e62: $11 $ff $ff
	rst  $38                                         ; $4e65: $ff
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff
	db   $fd                                         ; $4e68: $fd
	ld   d, c                                        ; $4e69: $51
	ld   de, $1111                                   ; $4e6a: $11 $11 $11
	dec  sp                                          ; $4e6d: $3b
	rst  $38                                         ; $4e6e: $ff
	rst  $38                                         ; $4e6f: $ff
	rst  $38                                         ; $4e70: $ff
	ei                                               ; $4e71: $fb
	call z, $51dd                                    ; $4e72: $cc $dd $51
	ld   de, $1111                                   ; $4e75: $11 $11 $11
	inc  d                                           ; $4e78: $14
	rst  $38                                         ; $4e79: $ff
	rst  $38                                         ; $4e7a: $ff
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	rst  $38                                         ; $4e7d: $ff
	or   $11                                         ; $4e7e: $f6 $11
	ld   de, $1111                                   ; $4e80: $11 $11 $11
	cpl                                              ; $4e83: $2f
	rst  $38                                         ; $4e84: $ff
	rst  $38                                         ; $4e85: $ff
	rst  $38                                         ; $4e86: $ff
	or   a                                           ; $4e87: $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e88: $cf
	db   $fd                                         ; $4e89: $fd
	ld   sp, $1111                                   ; $4e8a: $31 $11 $11
	ld   de, $9a11                                   ; $4e8d: $11 $11 $9a
	rst  $38                                         ; $4e90: $ff
	rst  $38                                         ; $4e91: $ff
	rst  $38                                         ; $4e92: $ff
	db   $fc                                         ; $4e93: $fc
	add  sp, $46                                     ; $4e94: $e8 $46
	ld   de, $1111                                   ; $4e96: $11 $11 $11
	ld   l, a                                        ; $4e99: $6f
	rst  $38                                         ; $4e9a: $ff
	rst  $38                                         ; $4e9b: $ff
	db   $fd                                         ; $4e9c: $fd
	sbc  $ff                                         ; $4e9d: $de $ff
	rst  $30                                         ; $4e9f: $f7
	ld   de, $1111                                   ; $4ea0: $11 $11 $11
	ld   de, $4e11                                   ; $4ea3: $11 $11 $4e
	rst  $38                                         ; $4ea6: $ff
	rst  $38                                         ; $4ea7: $ff
	rst  $38                                         ; $4ea8: $ff
	rst  $38                                         ; $4ea9: $ff
	rst  $38                                         ; $4eaa: $ff
	sub  [hl]                                        ; $4eab: $96
	ld   de, $1111                                   ; $4eac: $11 $11 $11
	cp   a                                           ; $4eaf: $bf
	rst  $38                                         ; $4eb0: $ff
	rst  $38                                         ; $4eb1: $ff
	rst  $38                                         ; $4eb2: $ff
	rst  $38                                         ; $4eb3: $ff
	rst  $28                                         ; $4eb4: $ef
	and  l                                           ; $4eb5: $a5
	ld   de, $1111                                   ; $4eb6: $11 $11 $11
	ld   de, $4f11                                   ; $4eb9: $11 $11 $4f
	rst  $38                                         ; $4ebc: $ff
	rst  $38                                         ; $4ebd: $ff
	rst  $38                                         ; $4ebe: $ff
	rst  $38                                         ; $4ebf: $ff
	rst  $38                                         ; $4ec0: $ff
	ld   [hl], e                                     ; $4ec1: $73
	ld   de, $1111                                   ; $4ec2: $11 $11 $11
	ccf                                              ; $4ec5: $3f
	rst  $38                                         ; $4ec6: $ff
	rst  $38                                         ; $4ec7: $ff
	rst  $38                                         ; $4ec8: $ff
	rst  $38                                         ; $4ec9: $ff
	rst  JumpTable                                         ; $4eca: $df
	ld   sp, hl                                      ; $4ecb: $f9
	ld   sp, $1111                                   ; $4ecc: $31 $11 $11
	ld   de, $1d11                                   ; $4ecf: $11 $11 $1d
	rst  $38                                         ; $4ed2: $ff
	rst  $38                                         ; $4ed3: $ff
	rst  $38                                         ; $4ed4: $ff
	rst  $38                                         ; $4ed5: $ff
	rst  $38                                         ; $4ed6: $ff
	pop  de                                          ; $4ed7: $d1
	ld   de, $1111                                   ; $4ed8: $11 $11 $11
	inc  d                                           ; $4edb: $14
	rst  $38                                         ; $4edc: $ff
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	rst  $38                                         ; $4edf: $ff
	rst  $38                                         ; $4ee0: $ff
	db   $fd                                         ; $4ee1: $fd
	ld   sp, $1111                                   ; $4ee2: $31 $11 $11
	ld   de, $1a11                                   ; $4ee5: $11 $11 $1a
	rst  $38                                         ; $4ee8: $ff
	rst  $38                                         ; $4ee9: $ff
	rst  $38                                         ; $4eea: $ff
	rst  $38                                         ; $4eeb: $ff
	rst  $38                                         ; $4eec: $ff
	pop  af                                          ; $4eed: $f1
	ld   de, $1111                                   ; $4eee: $11 $11 $11
	ld   de, $ffdf                                   ; $4ef1: $11 $df $ff
	rst  $38                                         ; $4ef4: $ff
	rst  $38                                         ; $4ef5: $ff
	rst  $38                                         ; $4ef6: $ff
	ei                                               ; $4ef7: $fb
	ld   de, $1111                                   ; $4ef8: $11 $11 $11
	ld   de, $1411                                   ; $4efb: $11 $11 $14
	rst  $38                                         ; $4efe: $ff
	rst  $38                                         ; $4eff: $ff
	rst  $38                                         ; $4f00: $ff
	rst  $38                                         ; $4f01: $ff
	rst  $38                                         ; $4f02: $ff
	push af                                          ; $4f03: $f5
	ld   [hl+], a                                    ; $4f04: $22
	ld   de, $1111                                   ; $4f05: $11 $11 $11
	adc  a                                           ; $4f08: $8f
	rst  $38                                         ; $4f09: $ff
	rst  $38                                         ; $4f0a: $ff
	rst  $38                                         ; $4f0b: $ff
	rst  $38                                         ; $4f0c: $ff
	cp   $83                                         ; $4f0d: $fe $83
	ld   de, $1111                                   ; $4f0f: $11 $11 $11
	ld   de, $cf11                                   ; $4f12: $11 $11 $cf
	rst  $38                                         ; $4f15: $ff
	rst  $38                                         ; $4f16: $ff
	rst  $38                                         ; $4f17: $ff
	rst  $38                                         ; $4f18: $ff
	db   $fd                                         ; $4f19: $fd
	ld   [hl], $11                                   ; $4f1a: $36 $11
	ld   de, $4e11                                   ; $4f1c: $11 $11 $4e
	rst  $38                                         ; $4f1f: $ff
	rst  $38                                         ; $4f20: $ff
	rst  $38                                         ; $4f21: $ff
	rst  $38                                         ; $4f22: $ff
	rst  $38                                         ; $4f23: $ff
	jp   hl                                          ; $4f24: $e9


	ld   de, $1111                                   ; $4f25: $11 $11 $11
	ld   de, $1f11                                   ; $4f28: $11 $11 $1f
	rst  $38                                         ; $4f2b: $ff
	rst  $38                                         ; $4f2c: $ff
	rst  $38                                         ; $4f2d: $ff
	rst  $38                                         ; $4f2e: $ff
	rst  $38                                         ; $4f2f: $ff
	jp   z, $1161                                    ; $4f30: $ca $61 $11

	ld   de, $9f13                                   ; $4f33: $11 $13 $9f
	rst  $38                                         ; $4f36: $ff
	rst  $38                                         ; $4f37: $ff
	rst  $38                                         ; $4f38: $ff
	rst  $38                                         ; $4f39: $ff
	db   $fc                                         ; $4f3a: $fc
	ld   d, c                                        ; $4f3b: $51
	ld   de, $1111                                   ; $4f3c: $11 $11 $11
	ld   de, $fb12                                   ; $4f3f: $11 $12 $fb
	rst  $38                                         ; $4f42: $ff
	rst  $38                                         ; $4f43: $ff
	rst  $38                                         ; $4f44: $ff
	rst  $38                                         ; $4f45: $ff
	cp   $e2                                         ; $4f46: $fe $e2
	ld   de, $1111                                   ; $4f48: $11 $11 $11
	ld   d, $df                                      ; $4f4b: $16 $df
	rst  $38                                         ; $4f4d: $ff
	rst  $38                                         ; $4f4e: $ff
	rst  $38                                         ; $4f4f: $ff
	rst  $38                                         ; $4f50: $ff
	ei                                               ; $4f51: $fb
	ld   d, c                                        ; $4f52: $51
	ld   de, $1111                                   ; $4f53: $11 $11 $11
	ld   de, $5e1e                                   ; $4f56: $11 $1e $5e
	rst  $38                                         ; $4f59: $ff
	rst  $38                                         ; $4f5a: $ff
	rst  $38                                         ; $4f5b: $ff
	rst  $38                                         ; $4f5c: $ff
	rst  $38                                         ; $4f5d: $ff
	ld   [hl], h                                     ; $4f5e: $74
	ld   de, $1111                                   ; $4f5f: $11 $11 $11
	dec  d                                           ; $4f62: $15
	sbc  [hl]                                        ; $4f63: $9e
	rst  $28                                         ; $4f64: $ef
	rst  $38                                         ; $4f65: $ff
	rst  $38                                         ; $4f66: $ff
	rst  $38                                         ; $4f67: $ff
	db   $fc                                         ; $4f68: $fc
	ld   d, c                                        ; $4f69: $51
	ld   de, $1111                                   ; $4f6a: $11 $11 $11
	ld   de, $2c31                                   ; $4f6d: $11 $31 $2c
	rst  $38                                         ; $4f70: $ff
	rst  $38                                         ; $4f71: $ff
	rst  $38                                         ; $4f72: $ff
	rst  $38                                         ; $4f73: $ff
	rst  $38                                         ; $4f74: $ff
	ld   sp, hl                                      ; $4f75: $f9
	ld   h, h                                        ; $4f76: $64
	ld   de, $1111                                   ; $4f77: $11 $11 $11
	ld   de, $dd7b                                   ; $4f7a: $11 $7b $dd
	rst  $38                                         ; $4f7d: $ff
	rst  $38                                         ; $4f7e: $ff
	db   $ec                                         ; $4f7f: $ec
	xor  b                                           ; $4f80: $a8
	ld   [hl], h                                     ; $4f81: $74
	ld   sp, $1311                                   ; $4f82: $31 $11 $13
	ld   de, $4511                                   ; $4f85: $11 $11 $45
	ld   [hl], a                                     ; $4f88: $77
	sbc  e                                           ; $4f89: $9b
	call $ddcd                                       ; $4f8a: $cd $cd $dd
	call c, $a9aa                                    ; $4f8d: $dc $aa $a9
	adc  c                                           ; $4f90: $89
	adc  b                                           ; $4f91: $88
	xor  h                                           ; $4f92: $ac
	call $dedc                                       ; $4f93: $cd $dc $de
	call c, $98ba                                    ; $4f96: $dc $ba $98
	ld   h, l                                        ; $4f99: $65
	ld   b, h                                        ; $4f9a: $44
	ld   b, e                                        ; $4f9b: $43
	ld   hl, $1211                                   ; $4f9c: $21 $11 $12
	ld   de, $6734                                   ; $4f9f: $11 $34 $67
	adc  b                                           ; $4fa2: $88
	xor  d                                           ; $4fa3: $aa
	xor  d                                           ; $4fa4: $aa
	cp   d                                           ; $4fa5: $ba
	cp   d                                           ; $4fa6: $ba
	xor  d                                           ; $4fa7: $aa
	cp   l                                           ; $4fa8: $bd
	xor  $ff                                         ; $4fa9: $ee $ff
	rst  $38                                         ; $4fab: $ff
	rst  $38                                         ; $4fac: $ff
	db   $ec                                         ; $4fad: $ec
	xor  c                                           ; $4fae: $a9
	sub  a                                           ; $4faf: $97
	ld   h, l                                        ; $4fb0: $65
	ld   b, h                                        ; $4fb1: $44
	ld   b, e                                        ; $4fb2: $43
	inc  sp                                          ; $4fb3: $33
	ld   [hl+], a                                    ; $4fb4: $22
	ld   de, $1111                                   ; $4fb5: $11 $11 $11
	inc  hl                                          ; $4fb8: $23
	ld   b, l                                        ; $4fb9: $45
	ld   a, b                                        ; $4fba: $78
	adc  d                                           ; $4fbb: $8a
	xor  e                                           ; $4fbc: $ab
	cp   d                                           ; $4fbd: $ba
	cp   e                                           ; $4fbe: $bb
	cp   h                                           ; $4fbf: $bc
	db   $dd                                         ; $4fc0: $dd
	xor  $ff                                         ; $4fc1: $ee $ff
	rst  $38                                         ; $4fc3: $ff
	rst  $38                                         ; $4fc4: $ff
	db   $ec                                         ; $4fc5: $ec
	cp   d                                           ; $4fc6: $ba
	sbc  b                                           ; $4fc7: $98
	halt                                             ; $4fc8: $76
	ld   h, l                                        ; $4fc9: $65
	ld   b, h                                        ; $4fca: $44
	inc  sp                                          ; $4fcb: $33
	ld   [hl+], a                                    ; $4fcc: $22
	ld   de, $1111                                   ; $4fcd: $11 $11 $11
	ld   de, $5624                                   ; $4fd0: $11 $24 $56
	ld   a, b                                        ; $4fd3: $78
	xor  e                                           ; $4fd4: $ab
	cp   h                                           ; $4fd5: $bc
	cp   h                                           ; $4fd6: $bc
	call $ddcc                                       ; $4fd7: $cd $cc $dd
	sbc  $ee                                         ; $4fda: $de $ee
	cp   $ee                                         ; $4fdc: $fe $ee
	call z, $98ba                                    ; $4fde: $cc $ba $98
	halt                                             ; $4fe1: $76
	ld   h, l                                        ; $4fe2: $65
	ld   b, e                                        ; $4fe3: $43
	ld   [hl-], a                                    ; $4fe4: $32
	ld   [hl+], a                                    ; $4fe5: $22
	ld   hl, $1111                                   ; $4fe6: $21 $11 $11
	ld   [hl+], a                                    ; $4fe9: $22
	inc  h                                           ; $4fea: $24
	ld   d, [hl]                                     ; $4feb: $56
	ld   a, c                                        ; $4fec: $79
	sbc  d                                           ; $4fed: $9a
	cp   h                                           ; $4fee: $bc
	call z, $bbcc                                    ; $4fef: $cc $cc $bb
	cp   h                                           ; $4ff2: $bc
	db   $dd                                         ; $4ff3: $dd
	sbc  $ff                                         ; $4ff4: $de $ff
	cp   $dd                                         ; $4ff6: $fe $dd
	cp   e                                           ; $4ff8: $bb
	sbc  b                                           ; $4ff9: $98
	halt                                             ; $4ffa: $76
	ld   h, l                                        ; $4ffb: $65
	ld   b, h                                        ; $4ffc: $44
	inc  sp                                          ; $4ffd: $33
	inc  sp                                          ; $4ffe: $33
	inc  sp                                          ; $4fff: $33
	ld   [hl+], a                                    ; $5000: $22
	ld   [hl+], a                                    ; $5001: $22
	ld   [hl+], a                                    ; $5002: $22
	inc  hl                                          ; $5003: $23
	ld   b, [hl]                                     ; $5004: $46
	ld   h, a                                        ; $5005: $67
	adc  c                                           ; $5006: $89
	xor  e                                           ; $5007: $ab
	cp   e                                           ; $5008: $bb
	cp   h                                           ; $5009: $bc
	cp   h                                           ; $500a: $bc
	cp   h                                           ; $500b: $bc
	db   $dd                                         ; $500c: $dd
	xor  $ee                                         ; $500d: $ee $ee
	db   $ed                                         ; $500f: $ed
	call c, $a9bb                                    ; $5010: $dc $bb $a9
	add  a                                           ; $5013: $87
	halt                                             ; $5014: $76
	ld   d, l                                        ; $5015: $55
	ld   d, h                                        ; $5016: $54
	ld   b, h                                        ; $5017: $44
	ld   b, e                                        ; $5018: $43
	inc  sp                                          ; $5019: $33
	ld   [hl+], a                                    ; $501a: $22
	ld   [de], a                                     ; $501b: $12
	ld   [hl+], a                                    ; $501c: $22
	inc  hl                                          ; $501d: $23
	ld   b, l                                        ; $501e: $45
	ld   h, a                                        ; $501f: $67
	sbc  c                                           ; $5020: $99
	cp   e                                           ; $5021: $bb
	set  1, l                                        ; $5022: $cb $cd
	call z, $cccc                                    ; $5024: $cc $cc $cc
	db   $dd                                         ; $5027: $dd
	sbc  $dc                                         ; $5028: $de $dc
	res  7, d                                        ; $502a: $cb $ba
	sbc  b                                           ; $502c: $98
	add  a                                           ; $502d: $87
	halt                                             ; $502e: $76
	ld   h, l                                        ; $502f: $65
	ld   d, l                                        ; $5030: $55
	ld   b, h                                        ; $5031: $44
	ld   b, h                                        ; $5032: $44
	inc  sp                                          ; $5033: $33
	ld   hl, $1211                                   ; $5034: $21 $11 $12
	inc  hl                                          ; $5037: $23
	ld   d, [hl]                                     ; $5038: $56
	ld   a, c                                        ; $5039: $79
	xor  e                                           ; $503a: $ab
	cp   h                                           ; $503b: $bc
	set  1, h                                        ; $503c: $cb $cc
	cp   h                                           ; $503e: $bc
	call z, $ccbc                                    ; $503f: $cc $bc $cc
	db   $dd                                         ; $5042: $dd
	call c, $bbcb                                    ; $5043: $dc $cb $bb
	xor  c                                           ; $5046: $a9
	sbc  b                                           ; $5047: $98
	ld   [hl], a                                     ; $5048: $77
	ld   h, [hl]                                     ; $5049: $66
	ld   d, l                                        ; $504a: $55
	ld   d, h                                        ; $504b: $54
	ld   b, e                                        ; $504c: $43
	inc  sp                                          ; $504d: $33
	ld   [hl-], a                                    ; $504e: $32
	ld   [hl+], a                                    ; $504f: $22
	inc  hl                                          ; $5050: $23
	inc  [hl]                                        ; $5051: $34
	ld   d, [hl]                                     ; $5052: $56
	ld   a, b                                        ; $5053: $78
	sbc  c                                           ; $5054: $99
	xor  d                                           ; $5055: $aa
	cp   e                                           ; $5056: $bb
	cp   e                                           ; $5057: $bb
	cp   e                                           ; $5058: $bb
	cp   e                                           ; $5059: $bb
	cp   h                                           ; $505a: $bc
	call z, $cdcd                                    ; $505b: $cc $cd $cd
	call z, $a9bb                                    ; $505e: $cc $bb $a9
	sbc  b                                           ; $5061: $98
	ld   [hl], a                                     ; $5062: $77
	halt                                             ; $5063: $76
	ld   h, [hl]                                     ; $5064: $66
	ld   d, l                                        ; $5065: $55
	ld   d, h                                        ; $5066: $54
	ld   b, h                                        ; $5067: $44
	ld   b, h                                        ; $5068: $44
	inc  sp                                          ; $5069: $33
	inc  sp                                          ; $506a: $33
	inc  sp                                          ; $506b: $33
	ld   b, l                                        ; $506c: $45
	ld   h, a                                        ; $506d: $67
	ld   a, c                                        ; $506e: $79
	xor  d                                           ; $506f: $aa
	cp   e                                           ; $5070: $bb
	call z, $cbbc                                    ; $5071: $cc $bc $cb
	cp   e                                           ; $5074: $bb
	cp   h                                           ; $5075: $bc
	cp   h                                           ; $5076: $bc
	call z, $ccdc                                    ; $5077: $cc $dc $cc
	xor  e                                           ; $507a: $ab
	cp   c                                           ; $507b: $b9
	adc  b                                           ; $507c: $88
	sbc  b                                           ; $507d: $98
	halt                                             ; $507e: $76
	ld   h, l                                        ; $507f: $65
	ld   d, l                                        ; $5080: $55
	ld   b, e                                        ; $5081: $43
	ld   b, l                                        ; $5082: $45
	ld   hl, $2211                                   ; $5083: $21 $11 $22
	inc  h                                           ; $5086: $24
	scf                                              ; $5087: $37
	sbc  c                                           ; $5088: $99
	xor  e                                           ; $5089: $ab
	db   $fd                                         ; $508a: $fd
	rst  $28                                         ; $508b: $ef
	rst  JumpTable                                         ; $508c: $df
	rst  $38                                         ; $508d: $ff
	cp   d                                           ; $508e: $ba
	db   $db                                         ; $508f: $db
	cp   e                                           ; $5090: $bb
	xor  e                                           ; $5091: $ab
	call z, $b999                                    ; $5092: $cc $99 $b9
	sub  [hl]                                        ; $5095: $96
	ld   h, l                                        ; $5096: $65
	ld   b, l                                        ; $5097: $45
	ld   hl, $1111                                   ; $5098: $21 $11 $11
	inc  de                                          ; $509b: $13
	ld   de, $3612                                   ; $509c: $11 $12 $36
	ld   l, h                                        ; $509f: $6c
	xor  a                                           ; $50a0: $af
	rst  $38                                         ; $50a1: $ff
	rst  $38                                         ; $50a2: $ff
	rst  $38                                         ; $50a3: $ff
	rst  $38                                         ; $50a4: $ff
	call $32c7                                       ; $50a5: $cd $c7 $32
	sub  h                                           ; $50a8: $94
	ld   d, a                                        ; $50a9: $57
	ld   a, d                                        ; $50aa: $7a
	xor  [hl]                                        ; $50ab: $ae
	adc  e                                           ; $50ac: $8b
	ld   [$4183], a                                  ; $50ad: $ea $83 $41
	ld   de, $1111                                   ; $50b0: $11 $11 $11
	ld   de, $dc11                                   ; $50b3: $11 $11 $dc
	rst  $28                                         ; $50b6: $ef
	rst  $38                                         ; $50b7: $ff
	rst  $38                                         ; $50b8: $ff
	rst  $38                                         ; $50b9: $ff
	rst  $38                                         ; $50ba: $ff
	add  $a1                                         ; $50bb: $c6 $a1
	ld   de, $1311                                   ; $50bd: $11 $11 $13
	rla                                              ; $50c0: $17
	rst  JumpTable                                         ; $50c1: $df
	rst  $38                                         ; $50c2: $ff
	rst  $38                                         ; $50c3: $ff
	rst  $38                                         ; $50c4: $ff
	sub  [hl]                                        ; $50c5: $96
	ld   de, $1111                                   ; $50c6: $11 $11 $11
	ld   de, $1e11                                   ; $50c9: $11 $11 $1e
	rst  $38                                         ; $50cc: $ff
	rst  $38                                         ; $50cd: $ff
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	ld   a, [$1111]                                  ; $50d1: $fa $11 $11
	ld   de, $a911                                   ; $50d4: $11 $11 $a9
	rst  $28                                         ; $50d7: $ef
	rst  $38                                         ; $50d8: $ff
	rst  $38                                         ; $50d9: $ff
	rst  $38                                         ; $50da: $ff
	db   $f4                                         ; $50db: $f4
	ld   de, $1111                                   ; $50dc: $11 $11 $11
	ld   de, $1118                                   ; $50df: $11 $18 $11
	rst  $38                                         ; $50e2: $ff
	rst  $38                                         ; $50e3: $ff
	rst  $38                                         ; $50e4: $ff
	rst  $38                                         ; $50e5: $ff
	cp   $f7                                         ; $50e6: $fe $f7
	ld   de, $1111                                   ; $50e8: $11 $11 $11
	inc  d                                           ; $50eb: $14
	rst  $28                                         ; $50ec: $ef
	rst  $38                                         ; $50ed: $ff
	rst  $38                                         ; $50ee: $ff
	rst  $38                                         ; $50ef: $ff
	rst  $38                                         ; $50f0: $ff
	and  $11                                         ; $50f1: $e6 $11
	ld   de, $1111                                   ; $50f3: $11 $11 $11
	inc  d                                           ; $50f6: $14
	ldh  a, [c]                                      ; $50f7: $f2
	rst  $28                                         ; $50f8: $ef
	rst  $38                                         ; $50f9: $ff
	rst  $38                                         ; $50fa: $ff
	rst  $38                                         ; $50fb: $ff
	pop  af                                          ; $50fc: $f1
	ld   b, a                                        ; $50fd: $47
	ld   de, $1111                                   ; $50fe: $11 $11 $11
	rla                                              ; $5101: $17
	rst  $38                                         ; $5102: $ff
	rst  $38                                         ; $5103: $ff
	rst  $38                                         ; $5104: $ff
	rst  $38                                         ; $5105: $ff
	rst  $38                                         ; $5106: $ff
	sub  [hl]                                        ; $5107: $96
	ld   de, $1111                                   ; $5108: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $510b: $11 $11 $ff
	rra                                              ; $510e: $1f
	rst  $38                                         ; $510f: $ff
	rst  $38                                         ; $5110: $ff
	rst  $38                                         ; $5111: $ff
	or   $15                                         ; $5112: $f6 $15
	ld   b, c                                        ; $5114: $41
	ld   de, $8811                                   ; $5115: $11 $11 $88
	rst  $38                                         ; $5118: $ff
	rst  $38                                         ; $5119: $ff
	rst  $38                                         ; $511a: $ff
	rst  $38                                         ; $511b: $ff
	jp   c, $1195                                    ; $511c: $da $95 $11

	ld   de, $1111                                   ; $511f: $11 $11 $11
	ld   de, $1dff                                   ; $5122: $11 $ff $1d
	rst  $38                                         ; $5125: $ff
	rst  $38                                         ; $5126: $ff
	rst  $38                                         ; $5127: $ff
	rst  $38                                         ; $5128: $ff
	ld   de, $11b1                                   ; $5129: $11 $b1 $11
	ld   de, $ff77                                   ; $512c: $11 $77 $ff
	rst  $38                                         ; $512f: $ff
	rst  $28                                         ; $5130: $ef
	rst  $38                                         ; $5131: $ff
	ret                                              ; $5132: $c9


	or   l                                           ; $5133: $b5
	ld   de, $1111                                   ; $5134: $11 $11 $11
	ld   de, $ef11                                   ; $5137: $11 $11 $ef
	inc  h                                           ; $513a: $24
	rst  $38                                         ; $513b: $ff
	rst  $38                                         ; $513c: $ff
	rst  $38                                         ; $513d: $ff
	rst  $38                                         ; $513e: $ff
	ld   de, $11f1                                   ; $513f: $11 $f1 $11
	inc  hl                                          ; $5142: $23
	ld   [hl], $ff                                   ; $5143: $36 $ff
	rst  $38                                         ; $5145: $ff
	rst  $28                                         ; $5146: $ef
	rst  $38                                         ; $5147: $ff
	sbc  d                                           ; $5148: $9a
	or   l                                           ; $5149: $b5
	ld   de, $1111                                   ; $514a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $514d: $11 $11 $ff
	rra                                              ; $5150: $1f
	rst  $38                                         ; $5151: $ff
	rst  $38                                         ; $5152: $ff
	rst  $38                                         ; $5153: $ff
	ld   sp, hl                                      ; $5154: $f9
	jr   @-$1d                                       ; $5155: $18 $e1

	ld   de, $3863                                   ; $5157: $11 $63 $38
	rst  $38                                         ; $515a: $ff
	rst  $38                                         ; $515b: $ff
	rst  $38                                         ; $515c: $ff
	db   $fd                                         ; $515d: $fd
	ld   l, h                                        ; $515e: $6c
	add  c                                           ; $515f: $81
	ld   de, $1111                                   ; $5160: $11 $11 $11
	ld   de, $f11f                                   ; $5163: $11 $1f $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5166: $cf
	rst  $38                                         ; $5167: $ff
	rst  $38                                         ; $5168: $ff
	rst  $38                                         ; $5169: $ff
	pop  af                                          ; $516a: $f1
	ld   e, a                                        ; $516b: $5f
	ld   de, $2315                                   ; $516c: $11 $15 $23
	sbc  a                                           ; $516f: $9f
	rst  $38                                         ; $5170: $ff
	rst  $38                                         ; $5171: $ff
	rst  $38                                         ; $5172: $ff
	jp   hl                                          ; $5173: $e9


	and  [hl]                                        ; $5174: $a6
	ld   de, $1111                                   ; $5175: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5178: $11 $11 $ff
	rra                                              ; $517b: $1f
	rst  $38                                         ; $517c: $ff
	rst  $38                                         ; $517d: $ff
	rst  $38                                         ; $517e: $ff
	ld   sp, hl                                      ; $517f: $f9
	dec  hl                                          ; $5180: $2b
	pop  bc                                          ; $5181: $c1
	ld   de, $2733                                   ; $5182: $11 $33 $27
	rst  $38                                         ; $5185: $ff
	rst  $38                                         ; $5186: $ff
	rst  $38                                         ; $5187: $ff
	ei                                               ; $5188: $fb
	add  [hl]                                        ; $5189: $86
	ld   sp, $1111                                   ; $518a: $31 $11 $11
	ld   de, $fa11                                   ; $518d: $11 $11 $fa
	ld   l, a                                        ; $5190: $6f
	rst  $38                                         ; $5191: $ff
	rst  $38                                         ; $5192: $ff
	rst  $38                                         ; $5193: $ff
	rst  $30                                         ; $5194: $f7
	ld   a, a                                        ; $5195: $7f
	or   c                                           ; $5196: $b1
	ld   de, $1531                                   ; $5197: $11 $31 $15
	rst  $28                                         ; $519a: $ef
	rst  $38                                         ; $519b: $ff
	rst  $38                                         ; $519c: $ff
	ld   a, [$2175]                                  ; $519d: $fa $75 $21
	ld   de, $1111                                   ; $51a0: $11 $11 $11
	add  hl, de                                      ; $51a3: $19
	dec  [hl]                                        ; $51a4: $35
	rst  $38                                         ; $51a5: $ff
	rst  $38                                         ; $51a6: $ff
	rst  $38                                         ; $51a7: $ff
	rst  $38                                         ; $51a8: $ff
	adc  $f9                                         ; $51a9: $ce $f9

Call_0d7_51ab:
	ld   de, $1131                                   ; $51ab: $11 $31 $11
	ld   l, e                                        ; $51ae: $6b
	xor  $ff                                         ; $51af: $ee $ff
	db   $fd                                         ; $51b1: $fd
	sub  [hl]                                        ; $51b2: $96
	ld   sp, $1111                                   ; $51b3: $31 $11 $11
	ld   de, $1813                                   ; $51b6: $11 $13 $18
	rst  $38                                         ; $51b9: $ff
	rst  $38                                         ; $51ba: $ff
	rst  $38                                         ; $51bb: $ff
	rst  $38                                         ; $51bc: $ff
	rst  JumpTable                                         ; $51bd: $df
	ld   a, [$3133]                                  ; $51be: $fa $33 $31
	ld   de, $cc5a                                   ; $51c1: $11 $5a $cc
	rst  $28                                         ; $51c4: $ef
	ei                                               ; $51c5: $fb
	add  [hl]                                        ; $51c6: $86
	ld   hl, $1111                                   ; $51c7: $21 $11 $11
	ld   de, $9f11                                   ; $51ca: $11 $11 $9f
	rst  $38                                         ; $51cd: $ff
	rst  $38                                         ; $51ce: $ff
	rst  $38                                         ; $51cf: $ff
	rst  $38                                         ; $51d0: $ff
	rst  $38                                         ; $51d1: $ff
	and  [hl]                                        ; $51d2: $a6
	ld   h, h                                        ; $51d3: $64
	ld   de, $6725                                   ; $51d4: $11 $25 $67
	sbc  e                                           ; $51d7: $9b
	db   $fd                                         ; $51d8: $fd
	and  a                                           ; $51d9: $a7
	ld   h, h                                        ; $51da: $64
	ld   de, $1111                                   ; $51db: $11 $11 $11
	inc  de                                          ; $51de: $13
	cp   e                                           ; $51df: $bb
	rst  $28                                         ; $51e0: $ef
	rst  $38                                         ; $51e1: $ff
	rst  $38                                         ; $51e2: $ff
	rst  $38                                         ; $51e3: $ff
	db   $fd                                         ; $51e4: $fd
	xor  e                                           ; $51e5: $ab
	sub  h                                           ; $51e6: $94
	ld   [hl+], a                                    ; $51e7: $22
	ld   b, l                                        ; $51e8: $45
	ld   b, h                                        ; $51e9: $44
	ld   a, d                                        ; $51ea: $7a
	xor  d                                           ; $51eb: $aa
	add  [hl]                                        ; $51ec: $86
	ld   h, h                                        ; $51ed: $64
	ld   de, $1114                                   ; $51ee: $11 $14 $11
	ld   l, c                                        ; $51f1: $69
	ld   l, d                                        ; $51f2: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51f3: $cf
	rst  $38                                         ; $51f4: $ff
	rst  $38                                         ; $51f5: $ff
	rst  $38                                         ; $51f6: $ff
	db   $dd                                         ; $51f7: $dd
	reti                                             ; $51f8: $d9


	ld   h, l                                        ; $51f9: $65
	ld   d, h                                        ; $51fa: $54
	ld   b, e                                        ; $51fb: $43
	ld   b, a                                        ; $51fc: $47
	add  [hl]                                        ; $51fd: $86
	ld   a, b                                        ; $51fe: $78
	ld   [hl], h                                     ; $51ff: $74
	ld   [hl-], a                                    ; $5200: $32
	dec  h                                           ; $5201: $25
	ld   d, c                                        ; $5202: $51
	add  hl, sp                                      ; $5203: $39
	cp   c                                           ; $5204: $b9
	ld   l, e                                        ; $5205: $6b
	db   $fd                                         ; $5206: $fd
	sbc  e                                           ; $5207: $9b
	rst  $38                                         ; $5208: $ff
	jp   z, $95de                                    ; $5209: $ca $de $95

	ld   d, a                                        ; $520c: $57
	ld   [hl], h                                     ; $520d: $74
	ld   [hl], $75                                   ; $520e: $36 $75
	ld   d, [hl]                                     ; $5210: $56
	ld   h, [hl]                                     ; $5211: $66
	ld   d, h                                        ; $5212: $54
	ld   b, a                                        ; $5213: $47
	ld   d, h                                        ; $5214: $54
	sub  [hl]                                        ; $5215: $96
	ld   a, d                                        ; $5216: $7a
	ld   a, d                                        ; $5217: $7a
	cp   e                                           ; $5218: $bb
	sbc  h                                           ; $5219: $9c
	db   $fc                                         ; $521a: $fc
	call $98cb                                       ; $521b: $cd $cb $98
	adc  b                                           ; $521e: $88
	ld   d, l                                        ; $521f: $55
	ld   h, [hl]                                     ; $5220: $66
	ld   h, [hl]                                     ; $5221: $66
	ld   d, l                                        ; $5222: $55
	halt                                             ; $5223: $76
	ld   b, [hl]                                     ; $5224: $46
	ld   d, [hl]                                     ; $5225: $56
	ld   [hl], l                                     ; $5226: $75
	ld   e, d                                        ; $5227: $5a
	sub  l                                           ; $5228: $95
	ld   a, h                                        ; $5229: $7c
	and  a                                           ; $522a: $a7
	sbc  e                                           ; $522b: $9b
	cp   h                                           ; $522c: $bc
	xor  d                                           ; $522d: $aa
	xor  e                                           ; $522e: $ab
	xor  c                                           ; $522f: $a9
	sbc  b                                           ; $5230: $98
	add  [hl]                                        ; $5231: $86
	ld   h, [hl]                                     ; $5232: $66
	halt                                             ; $5233: $76
	ld   h, a                                        ; $5234: $67
	ld   [hl], a                                     ; $5235: $77
	ld   [hl], a                                     ; $5236: $77
	halt                                             ; $5237: $76
	ld   [hl], a                                     ; $5238: $77
	halt                                             ; $5239: $76
	ld   l, d                                        ; $523a: $6a
	sub  [hl]                                        ; $523b: $96
	ld   a, e                                        ; $523c: $7b
	sub  [hl]                                        ; $523d: $96
	adc  e                                           ; $523e: $8b
	sub  a                                           ; $523f: $97
	sbc  d                                           ; $5240: $9a
	sbc  c                                           ; $5241: $99
	adc  c                                           ; $5242: $89
	sbc  c                                           ; $5243: $99
	adc  b                                           ; $5244: $88
	add  a                                           ; $5245: $87
	adc  b                                           ; $5246: $88
	ld   [hl], a                                     ; $5247: $77
	sbc  b                                           ; $5248: $98
	ld   h, a                                        ; $5249: $67
	sbc  c                                           ; $524a: $99
	ld   [hl], a                                     ; $524b: $77
	sbc  b                                           ; $524c: $98
	ld   [hl], a                                     ; $524d: $77
	ld   a, b                                        ; $524e: $78
	add  [hl]                                        ; $524f: $86
	adc  b                                           ; $5250: $88
	ld   [hl], a                                     ; $5251: $77
	ld   [hl], a                                     ; $5252: $77
	adc  c                                           ; $5253: $89
	adc  b                                           ; $5254: $88
	adc  b                                           ; $5255: $88
	add  a                                           ; $5256: $87
	adc  b                                           ; $5257: $88
	sbc  e                                           ; $5258: $9b
	sub  a                                           ; $5259: $97
	adc  b                                           ; $525a: $88
	ld   a, b                                        ; $525b: $78
	sbc  c                                           ; $525c: $99
	sbc  c                                           ; $525d: $99
	add  a                                           ; $525e: $87
	adc  b                                           ; $525f: $88
	ld   a, b                                        ; $5260: $78
	adc  b                                           ; $5261: $88
	sbc  c                                           ; $5262: $99
	ld   [hl], a                                     ; $5263: $77
	adc  b                                           ; $5264: $88
	adc  b                                           ; $5265: $88
	ld   [hl], a                                     ; $5266: $77
	add  a                                           ; $5267: $87
	adc  b                                           ; $5268: $88
	adc  c                                           ; $5269: $89
	halt                                             ; $526a: $76
	ld   a, c                                        ; $526b: $79
	adc  b                                           ; $526c: $88
	adc  b                                           ; $526d: $88
	adc  c                                           ; $526e: $89
	sbc  b                                           ; $526f: $98
	adc  b                                           ; $5270: $88
	adc  b                                           ; $5271: $88
	adc  b                                           ; $5272: $88
	sbc  b                                           ; $5273: $98
	add  a                                           ; $5274: $87
	sbc  b                                           ; $5275: $98
	ld   a, b                                        ; $5276: $78
	add  a                                           ; $5277: $87
	ld   a, c                                        ; $5278: $79
	sub  a                                           ; $5279: $97
	adc  b                                           ; $527a: $88
	add  a                                           ; $527b: $87
	adc  c                                           ; $527c: $89
	ld   [hl], a                                     ; $527d: $77
	sbc  c                                           ; $527e: $99
	ld   a, b                                        ; $527f: $78
	sbc  c                                           ; $5280: $99
	adc  b                                           ; $5281: $88
	adc  b                                           ; $5282: $88
	add  a                                           ; $5283: $87
	adc  b                                           ; $5284: $88
	adc  b                                           ; $5285: $88
	sbc  c                                           ; $5286: $99
	adc  b                                           ; $5287: $88
	sub  a                                           ; $5288: $97
	ld   a, b                                        ; $5289: $78
	adc  b                                           ; $528a: $88
	ld   [hl], a                                     ; $528b: $77
	adc  b                                           ; $528c: $88
	ld   a, b                                        ; $528d: $78
	adc  b                                           ; $528e: $88
	adc  b                                           ; $528f: $88
	adc  b                                           ; $5290: $88
	adc  b                                           ; $5291: $88
	adc  c                                           ; $5292: $89
	adc  b                                           ; $5293: $88
	sbc  c                                           ; $5294: $99
	adc  b                                           ; $5295: $88
	sbc  b                                           ; $5296: $98
	sbc  b                                           ; $5297: $98
	ld   a, b                                        ; $5298: $78
	add  a                                           ; $5299: $87
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

Jump_0d7_52a7:
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
	sbc  b                                           ; $53eb: $98
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
	ld   a, b                                        ; $5409: $78
	sub  [hl]                                        ; $540a: $96
	sub  a                                           ; $540b: $97
	ld   a, c                                        ; $540c: $79
	ld   l, c                                        ; $540d: $69
	adc  b                                           ; $540e: $88
	adc  b                                           ; $540f: $88
	adc  b                                           ; $5410: $88
	adc  b                                           ; $5411: $88
	sub  a                                           ; $5412: $97
	sbc  b                                           ; $5413: $98
	adc  c                                           ; $5414: $89
	adc  b                                           ; $5415: $88
	adc  b                                           ; $5416: $88
	adc  b                                           ; $5417: $88
	sbc  b                                           ; $5418: $98
	ld   a, b                                        ; $5419: $78
	adc  b                                           ; $541a: $88
	adc  c                                           ; $541b: $89
	adc  b                                           ; $541c: $88
	add  a                                           ; $541d: $87
	adc  b                                           ; $541e: $88
	adc  b                                           ; $541f: $88
	add  a                                           ; $5420: $87
	adc  b                                           ; $5421: $88
	adc  c                                           ; $5422: $89
	adc  c                                           ; $5423: $89
	adc  b                                           ; $5424: $88
	add  a                                           ; $5425: $87
	adc  b                                           ; $5426: $88
	adc  b                                           ; $5427: $88
	sbc  b                                           ; $5428: $98
	sbc  b                                           ; $5429: $98
	add  a                                           ; $542a: $87
	ld   a, b                                        ; $542b: $78
	ld   a, c                                        ; $542c: $79
	adc  b                                           ; $542d: $88
	add  a                                           ; $542e: $87
	sbc  b                                           ; $542f: $98
	adc  b                                           ; $5430: $88
	adc  b                                           ; $5431: $88
	adc  b                                           ; $5432: $88
	adc  b                                           ; $5433: $88
	ld   a, b                                        ; $5434: $78
	ld   a, b                                        ; $5435: $78
	adc  b                                           ; $5436: $88
	sbc  c                                           ; $5437: $99
	adc  b                                           ; $5438: $88
	adc  b                                           ; $5439: $88
	add  a                                           ; $543a: $87
	ld   [hl], a                                     ; $543b: $77
	adc  c                                           ; $543c: $89
	sub  a                                           ; $543d: $97
	adc  c                                           ; $543e: $89
	adc  b                                           ; $543f: $88
	add  a                                           ; $5440: $87
	adc  b                                           ; $5441: $88
	ld   a, b                                        ; $5442: $78
	adc  b                                           ; $5443: $88
	sbc  b                                           ; $5444: $98
	adc  b                                           ; $5445: $88
	add  a                                           ; $5446: $87
	adc  b                                           ; $5447: $88
	ld   a, c                                        ; $5448: $79
	adc  c                                           ; $5449: $89
	adc  c                                           ; $544a: $89
	adc  b                                           ; $544b: $88
	add  a                                           ; $544c: $87
	add  a                                           ; $544d: $87
	adc  b                                           ; $544e: $88
	ld   a, b                                        ; $544f: $78
	ld   a, b                                        ; $5450: $78
	adc  b                                           ; $5451: $88
	adc  b                                           ; $5452: $88
	sbc  b                                           ; $5453: $98
	adc  c                                           ; $5454: $89
	ld   a, b                                        ; $5455: $78
	ld   a, c                                        ; $5456: $79
	adc  c                                           ; $5457: $89
	add  a                                           ; $5458: $87
	sub  [hl]                                        ; $5459: $96
	ld   a, b                                        ; $545a: $78
	adc  c                                           ; $545b: $89
	sbc  b                                           ; $545c: $98
	sbc  b                                           ; $545d: $98
	ld   a, b                                        ; $545e: $78
	ld   a, b                                        ; $545f: $78
	add  a                                           ; $5460: $87
	adc  b                                           ; $5461: $88
	adc  b                                           ; $5462: $88
	add  a                                           ; $5463: $87
	sub  a                                           ; $5464: $97
	adc  c                                           ; $5465: $89
	ld   a, d                                        ; $5466: $7a
	ld   a, b                                        ; $5467: $78
	sbc  b                                           ; $5468: $98
	ld   a, b                                        ; $5469: $78
	ld   a, b                                        ; $546a: $78
	add  a                                           ; $546b: $87
	sub  a                                           ; $546c: $97
	sbc  b                                           ; $546d: $98
	ld   a, b                                        ; $546e: $78
	adc  b                                           ; $546f: $88
	add  a                                           ; $5470: $87
	sbc  b                                           ; $5471: $98
	ld   a, b                                        ; $5472: $78
	add  a                                           ; $5473: $87
	add  a                                           ; $5474: $87
	ld   a, b                                        ; $5475: $78
	adc  b                                           ; $5476: $88
	sbc  b                                           ; $5477: $98
	adc  c                                           ; $5478: $89
	adc  b                                           ; $5479: $88

Jump_0d7_547a:
	adc  b                                           ; $547a: $88
	add  a                                           ; $547b: $87
	adc  b                                           ; $547c: $88
	ld   a, c                                        ; $547d: $79
	ld   [hl], a                                     ; $547e: $77
	add  a                                           ; $547f: $87
	adc  b                                           ; $5480: $88
	adc  c                                           ; $5481: $89
	sbc  b                                           ; $5482: $98
	sbc  b                                           ; $5483: $98
	ld   a, b                                        ; $5484: $78
	ld   a, b                                        ; $5485: $78
	sub  a                                           ; $5486: $97

Jump_0d7_5487:
	sbc  b                                           ; $5487: $98
	ld   a, c                                        ; $5488: $79
	ld   a, c                                        ; $5489: $79
	add  a                                           ; $548a: $87
	add  a                                           ; $548b: $87
	sub  a                                           ; $548c: $97
	sbc  b                                           ; $548d: $98
	adc  c                                           ; $548e: $89
	ld   l, c                                        ; $548f: $69
	ld   l, c                                        ; $5490: $69
	ld   [hl], a                                     ; $5491: $77
	sub  [hl]                                        ; $5492: $96
	sub  a                                           ; $5493: $97
	add  a                                           ; $5494: $87
	sbc  c                                           ; $5495: $99
	adc  c                                           ; $5496: $89
	ld   a, c                                        ; $5497: $79
	ld   [hl], a                                     ; $5498: $77
	sbc  b                                           ; $5499: $98
	adc  c                                           ; $549a: $89
	add  a                                           ; $549b: $87
	adc  b                                           ; $549c: $88
	ld   [hl], a                                     ; $549d: $77
	adc  b                                           ; $549e: $88
	adc  b                                           ; $549f: $88
	sbc  c                                           ; $54a0: $99
	sub  a                                           ; $54a1: $97
	sbc  c                                           ; $54a2: $99
	adc  c                                           ; $54a3: $89
	adc  b                                           ; $54a4: $88
	adc  c                                           ; $54a5: $89
	ld   a, b                                        ; $54a6: $78
	adc  b                                           ; $54a7: $88
	ld   [hl], a                                     ; $54a8: $77
	sub  a                                           ; $54a9: $97
	add  a                                           ; $54aa: $87
	adc  b                                           ; $54ab: $88
	adc  b                                           ; $54ac: $88
	ld   a, c                                        ; $54ad: $79
	adc  b                                           ; $54ae: $88
	sbc  b                                           ; $54af: $98
	sbc  b                                           ; $54b0: $98
	sub  [hl]                                        ; $54b1: $96
	sbc  c                                           ; $54b2: $99
	ld   a, d                                        ; $54b3: $7a
	ld   l, b                                        ; $54b4: $68
	sub  a                                           ; $54b5: $97
	adc  b                                           ; $54b6: $88
	ld   [hl], a                                     ; $54b7: $77
	add  [hl]                                        ; $54b8: $86
	add  a                                           ; $54b9: $87
	ld   a, c                                        ; $54ba: $79
	ld   a, c                                        ; $54bb: $79
	adc  b                                           ; $54bc: $88
	adc  c                                           ; $54bd: $89
	adc  c                                           ; $54be: $89
	sbc  b                                           ; $54bf: $98
	sbc  b                                           ; $54c0: $98
	ld   a, c                                        ; $54c1: $79
	ld   a, b                                        ; $54c2: $78
	add  a                                           ; $54c3: $87
	add  a                                           ; $54c4: $87
	ld   [hl], a                                     ; $54c5: $77
	ld   a, b                                        ; $54c6: $78
	ld   a, c                                        ; $54c7: $79
	sub  a                                           ; $54c8: $97
	ld   a, b                                        ; $54c9: $78
	ld   a, c                                        ; $54ca: $79
	add  a                                           ; $54cb: $87
	sbc  c                                           ; $54cc: $99
	adc  b                                           ; $54cd: $88
	and  [hl]                                        ; $54ce: $a6
	sbc  b                                           ; $54cf: $98
	ld   l, e                                        ; $54d0: $6b
	ld   [hl], a                                     ; $54d1: $77
	add  a                                           ; $54d2: $87
	adc  b                                           ; $54d3: $88
	add  [hl]                                        ; $54d4: $86
	and  [hl]                                        ; $54d5: $a6
	sbc  d                                           ; $54d6: $9a
	ld   e, d                                        ; $54d7: $5a
	ld   a, c                                        ; $54d8: $79
	sbc  b                                           ; $54d9: $98
	ld   a, c                                        ; $54da: $79
	add  [hl]                                        ; $54db: $86
	add  [hl]                                        ; $54dc: $86
	or   l                                           ; $54dd: $b5
	ld   a, e                                        ; $54de: $7b
	ld   c, c                                        ; $54df: $49
	add  [hl]                                        ; $54e0: $86
	sbc  b                                           ; $54e1: $98
	ld   a, b                                        ; $54e2: $78
	add  a                                           ; $54e3: $87
	sbc  c                                           ; $54e4: $99
	ld   a, c                                        ; $54e5: $79
	sub  a                                           ; $54e6: $97
	and  a                                           ; $54e7: $a7
	ld   a, d                                        ; $54e8: $7a
	ld   [hl], a                                     ; $54e9: $77
	sub  a                                           ; $54ea: $97
	ld   [hl], a                                     ; $54eb: $77
	add  a                                           ; $54ec: $87
	ld   [hl], a                                     ; $54ed: $77
	xor  b                                           ; $54ee: $a8
	ld   a, d                                        ; $54ef: $7a
	ld   e, d                                        ; $54f0: $5a
	sub  [hl]                                        ; $54f1: $96
	sub  a                                           ; $54f2: $97
	or   a                                           ; $54f3: $b7
	ld   a, c                                        ; $54f4: $79
	ld   a, c                                        ; $54f5: $79
	ld   l, b                                        ; $54f6: $68
	halt                                             ; $54f7: $76
	and  [hl]                                        ; $54f8: $a6
	sbc  b                                           ; $54f9: $98
	ld   l, e                                        ; $54fa: $6b
	ld   e, c                                        ; $54fb: $59
	sub  a                                           ; $54fc: $97
	sbc  c                                           ; $54fd: $99
	sub  [hl]                                        ; $54fe: $96
	or   a                                           ; $54ff: $b7
	ld   a, e                                        ; $5500: $7b
	ld   c, c                                        ; $5501: $49
	and  l                                           ; $5502: $a5
	and  [hl]                                        ; $5503: $a6
	adc  c                                           ; $5504: $89
	ld   l, b                                        ; $5505: $68
	ld   l, c                                        ; $5506: $69
	ld   l, b                                        ; $5507: $68
	or   l                                           ; $5508: $b5
	adc  e                                           ; $5509: $8b
	ld   l, c                                        ; $550a: $69
	and  l                                           ; $550b: $a5
	adc  d                                           ; $550c: $8a
	add  [hl]                                        ; $550d: $86
	xor  b                                           ; $550e: $a8
	ld   e, e                                        ; $550f: $5b
	ld   l, b                                        ; $5510: $68
	sub  [hl]                                        ; $5511: $96
	ld   a, b                                        ; $5512: $78
	halt                                             ; $5513: $76
	sbc  d                                           ; $5514: $9a
	ld   a, b                                        ; $5515: $78
	ld   a, b                                        ; $5516: $78
	and  l                                           ; $5517: $a5
	xor  d                                           ; $5518: $aa
	ld   a, b                                        ; $5519: $78
	add  a                                           ; $551a: $87
	ld   a, d                                        ; $551b: $7a
	ld   c, b                                        ; $551c: $48
	or   l                                           ; $551d: $b5
	sbc  b                                           ; $551e: $98
	ld   l, c                                        ; $551f: $69
	sub  l                                           ; $5520: $95
	adc  c                                           ; $5521: $89
	halt                                             ; $5522: $76
	or   a                                           ; $5523: $b7
	adc  b                                           ; $5524: $88
	ld   c, e                                        ; $5525: $4b
	ld   h, a                                        ; $5526: $67
	sub  [hl]                                        ; $5527: $96
	xor  d                                           ; $5528: $aa
	ld   h, a                                        ; $5529: $67
	call nz, Call_0d7_589a                           ; $552a: $c4 $9a $58
	add  $98                                         ; $552d: $c6 $98
	ld   c, d                                        ; $552f: $4a
	add  [hl]                                        ; $5530: $86
	adc  d                                           ; $5531: $8a
	ld   l, e                                        ; $5532: $6b
	and  d                                           ; $5533: $a2
	push de                                          ; $5534: $d5
	ld   e, h                                        ; $5535: $5c
	ld   b, a                                        ; $5536: $47
	sub  $6d                                         ; $5537: $d6 $6d
	ld   h, l                                        ; $5539: $65
	push de                                          ; $553a: $d5
	ld   a, e                                        ; $553b: $7b
	ld   c, b                                        ; $553c: $48
	sub  [hl]                                        ; $553d: $96
	and  a                                           ; $553e: $a7
	adc  d                                           ; $553f: $8a
	ld   [hl], a                                     ; $5540: $77
	push bc                                          ; $5541: $c5
	ld   a, h                                        ; $5542: $7c
	ld   c, c                                        ; $5543: $49
	sub  l                                           ; $5544: $95
	sub  a                                           ; $5545: $97
	ld   e, c                                        ; $5546: $59
	sub  h                                           ; $5547: $94
	adc  b                                           ; $5548: $88
	ld   l, d                                        ; $5549: $6a
	ld   l, c                                        ; $554a: $69
	xor  c                                           ; $554b: $a9
	sbc  b                                           ; $554c: $98
	adc  b                                           ; $554d: $88
	ld   a, b                                        ; $554e: $78
	halt                                             ; $554f: $76
	sbc  c                                           ; $5550: $99
	adc  d                                           ; $5551: $8a
	and  a                                           ; $5552: $a7
	sbc  e                                           ; $5553: $9b
	ld   e, e                                        ; $5554: $5b
	adc  b                                           ; $5555: $88
	sub  $ab                                         ; $5556: $d6 $ab
	ld   h, a                                        ; $5558: $67
	adc  c                                           ; $5559: $89
	ld   l, h                                        ; $555a: $6c
	and  l                                           ; $555b: $a5
	rst  $30                                         ; $555c: $f7
	ld   e, d                                        ; $555d: $5a
	ld   h, a                                        ; $555e: $67
	ld   d, a                                        ; $555f: $57
	dec  [hl]                                        ; $5560: $35
	ld   d, c                                        ; $5561: $51
	ld   d, e                                        ; $5562: $53
	ld   b, h                                        ; $5563: $44
	ld   b, l                                        ; $5564: $45
	ld   d, a                                        ; $5565: $57
	ld   h, a                                        ; $5566: $67
	cp   d                                           ; $5567: $ba
	xor  l                                           ; $5568: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5569: $cf
	cp   $ff                                         ; $556a: $fe $ff
	rst  $38                                         ; $556c: $ff
	db   $fc                                         ; $556d: $fc
	xor  $77                                         ; $556e: $ee $77
	or   a                                           ; $5570: $b7
	ld   [hl], $32                                   ; $5571: $36 $32
	ld   b, d                                        ; $5573: $42
	ld   [de], a                                     ; $5574: $12
	ld   sp, $1541                                   ; $5575: $31 $41 $15
	ld   b, c                                        ; $5578: $41
	jr   c, @+$49                                    ; $5579: $38 $47

	xor  d                                           ; $557b: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $557c: $cf
	db   $ed                                         ; $557d: $ed
	rst  $38                                         ; $557e: $ff
	rst  $38                                         ; $557f: $ff
	rst  $38                                         ; $5580: $ff
	rst  $38                                         ; $5581: $ff
	db   $fc                                         ; $5582: $fc
	cp   h                                           ; $5583: $bc
	xor  d                                           ; $5584: $aa
	halt                                             ; $5585: $76
	ld   [hl], a                                     ; $5586: $77
	ld   b, d                                        ; $5587: $42
	ld   b, c                                        ; $5588: $41
	ld   de, $1111                                   ; $5589: $11 $11 $11
	ld   sp, $2411                                   ; $558c: $31 $11 $24
	ld   h, h                                        ; $558f: $64
	xor  [hl]                                        ; $5590: $ae
	rst  $38                                         ; $5591: $ff
	rst  $38                                         ; $5592: $ff
	rst  $38                                         ; $5593: $ff
	rst  $38                                         ; $5594: $ff
	rst  $38                                         ; $5595: $ff
	rst  $38                                         ; $5596: $ff
	db   $dd                                         ; $5597: $dd
	jp   z, Jump_0d7_66a7                            ; $5598: $ca $a7 $66

	ld   b, c                                        ; $559b: $41
	ld   de, $1111                                   ; $559c: $11 $11 $11
	ld   de, $1114                                   ; $559f: $11 $14 $11
	ld   de, $7f93                                   ; $55a2: $11 $93 $7f
	rst  $38                                         ; $55a5: $ff
	rst  $28                                         ; $55a6: $ef

Call_0d7_55a7:
	rst  $38                                         ; $55a7: $ff
	rst  $38                                         ; $55a8: $ff
	rst  $38                                         ; $55a9: $ff
	rst  $28                                         ; $55aa: $ef
	db   $fc                                         ; $55ab: $fc
	set  0, h                                        ; $55ac: $cb $c4
	inc  h                                           ; $55ae: $24
	ld   de, $1111                                   ; $55af: $11 $11 $11
	ld   [de], a                                     ; $55b2: $12
	ld   de, $1113                                   ; $55b3: $11 $13 $11
	ld   de, $9e74                                   ; $55b6: $11 $74 $9e
	rst  $38                                         ; $55b9: $ff
	rst  $28                                         ; $55ba: $ef
	rst  $38                                         ; $55bb: $ff
	rst  $38                                         ; $55bc: $ff
	rst  $38                                         ; $55bd: $ff
	rst  $38                                         ; $55be: $ff
	db   $fc                                         ; $55bf: $fc
	jp   c, Jump_0d7_46b7                            ; $55c0: $da $b7 $46

	ld   sp, $1111                                   ; $55c3: $31 $11 $11
	ld   de, $1211                                   ; $55c6: $11 $11 $12
	ld   de, $5311                                   ; $55c9: $11 $11 $53
	sbc  a                                           ; $55cc: $9f
	rst  $38                                         ; $55cd: $ff
	rst  $38                                         ; $55ce: $ff
	rst  $38                                         ; $55cf: $ff
	rst  $38                                         ; $55d0: $ff
	rst  $38                                         ; $55d1: $ff
	rst  $38                                         ; $55d2: $ff
	ld   a, [$a599]                                  ; $55d3: $fa $99 $a5
	dec  [hl]                                        ; $55d6: $35
	ld   de, $1111                                   ; $55d7: $11 $11 $11
	ld   de, $1111                                   ; $55da: $11 $11 $11
	ld   de, $7313                                   ; $55dd: $11 $13 $73
	cp   a                                           ; $55e0: $bf
	rst  $38                                         ; $55e1: $ff
	rst  $38                                         ; $55e2: $ff
	rst  $38                                         ; $55e3: $ff
	rst  $38                                         ; $55e4: $ff
	rst  $38                                         ; $55e5: $ff
	rst  $38                                         ; $55e6: $ff
	ei                                               ; $55e7: $fb
	add  a                                           ; $55e8: $87
	sub  h                                           ; $55e9: $94
	inc  h                                           ; $55ea: $24
	ld   de, $1111                                   ; $55eb: $11 $11 $11
	ld   de, $1111                                   ; $55ee: $11 $11 $11
	ld   de, $7416                                   ; $55f1: $11 $16 $74
	rst  $28                                         ; $55f4: $ef
	rst  $38                                         ; $55f5: $ff
	rst  $38                                         ; $55f6: $ff
	rst  $38                                         ; $55f7: $ff
	rst  $38                                         ; $55f8: $ff
	rst  $38                                         ; $55f9: $ff
	rst  $38                                         ; $55fa: $ff
	reti                                             ; $55fb: $d9


	ld   h, [hl]                                     ; $55fc: $66
	ld   [hl], d                                     ; $55fd: $72
	ld   [de], a                                     ; $55fe: $12
	ld   de, $1111                                   ; $55ff: $11 $11 $11
	ld   de, $1111                                   ; $5602: $11 $11 $11
	ld   de, $9618                                   ; $5605: $11 $18 $96
	rst  $38                                         ; $5608: $ff
	rst  $38                                         ; $5609: $ff
	rst  $38                                         ; $560a: $ff
	rst  $38                                         ; $560b: $ff
	rst  $38                                         ; $560c: $ff
	rst  $38                                         ; $560d: $ff
	rst  $38                                         ; $560e: $ff
	ret  z                                           ; $560f: $c8

	ld   b, h                                        ; $5610: $44
	ld   d, c                                        ; $5611: $51
	ld   de, $1111                                   ; $5612: $11 $11 $11
	ld   de, $1111                                   ; $5615: $11 $11 $11
	ld   de, $1b11                                   ; $5618: $11 $11 $1b
	xor  b                                           ; $561b: $a8
	rst  $38                                         ; $561c: $ff
	rst  $38                                         ; $561d: $ff
	rst  $38                                         ; $561e: $ff
	rst  $38                                         ; $561f: $ff
	rst  $38                                         ; $5620: $ff
	rst  $38                                         ; $5621: $ff
	db   $ed                                         ; $5622: $ed
	sub  a                                           ; $5623: $97
	ld   b, e                                        ; $5624: $43
	ld   sp, $1111                                   ; $5625: $31 $11 $11
	ld   de, $1111                                   ; $5628: $11 $11 $11
	ld   de, $1111                                   ; $562b: $11 $11 $11
	ld   c, e                                        ; $562e: $4b
	xor  e                                           ; $562f: $ab
	rst  $38                                         ; $5630: $ff
	rst  $38                                         ; $5631: $ff
	rst  $38                                         ; $5632: $ff
	rst  $38                                         ; $5633: $ff
	rst  $38                                         ; $5634: $ff
	rst  $38                                         ; $5635: $ff
	call c, Call_0d7_4396                            ; $5636: $dc $96 $43
	ld   [hl-], a                                    ; $5639: $32
	ld   bc, $1111                                   ; $563a: $01 $11 $11
	ld   de, $1111                                   ; $563d: $11 $11 $11
	ld   de, $4d11                                   ; $5640: $11 $11 $4d
	call c, $ffff                                    ; $5643: $dc $ff $ff
	rst  $38                                         ; $5646: $ff
	rst  $38                                         ; $5647: $ff
	rst  $38                                         ; $5648: $ff
	rst  $38                                         ; $5649: $ff
	reti                                             ; $564a: $d9


	ld   [hl], a                                     ; $564b: $77
	ld   d, e                                        ; $564c: $53
	ld   [hl+], a                                    ; $564d: $22
	ld   hl, $1111                                   ; $564e: $21 $11 $11
	ld   de, $1111                                   ; $5651: $11 $11 $11
	ld   de, $3f11                                   ; $5654: $11 $11 $3f
	rst  $38                                         ; $5657: $ff
	rst  $38                                         ; $5658: $ff
	rst  $38                                         ; $5659: $ff
	rst  $38                                         ; $565a: $ff
	rst  $38                                         ; $565b: $ff
	rst  $38                                         ; $565c: $ff
	db   $fd                                         ; $565d: $fd
	add  sp, $55                                     ; $565e: $e8 $55
	ld   d, [hl]                                     ; $5660: $56
	inc  sp                                          ; $5661: $33
	ld   sp, $1111                                   ; $5662: $31 $11 $11
	ld   de, $1111                                   ; $5665: $11 $11 $11
	ld   de, $1d11                                   ; $5668: $11 $11 $1d
	rst  $38                                         ; $566b: $ff
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	rst  $38                                         ; $566e: $ff
	rst  $38                                         ; $566f: $ff
	rst  $38                                         ; $5670: $ff
	db   $fc                                         ; $5671: $fc
	cp   d                                           ; $5672: $ba
	ld   d, h                                        ; $5673: $54
	dec  [hl]                                        ; $5674: $35
	ld   d, h                                        ; $5675: $54
	ld   b, d                                        ; $5676: $42
	ld   hl, $1111                                   ; $5677: $21 $11 $11
	ld   de, $1111                                   ; $567a: $11 $11 $11
	ld   de, $ff19                                   ; $567d: $11 $19 $ff
	rst  $38                                         ; $5680: $ff
	rst  $38                                         ; $5681: $ff
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	rst  $38                                         ; $5684: $ff
	ei                                               ; $5685: $fb
	sbc  b                                           ; $5686: $98
	ld   h, [hl]                                     ; $5687: $66
	ld   b, h                                        ; $5688: $44
	ld   b, l                                        ; $5689: $45
	ld   [hl], l                                     ; $568a: $75
	ld   hl, $1111                                   ; $568b: $21 $11 $11
	ld   de, $1111                                   ; $568e: $11 $11 $11
	ld   [de], a                                     ; $5691: $12
	inc  hl                                          ; $5692: $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5693: $cf
	rst  $38                                         ; $5694: $ff
	rst  $38                                         ; $5695: $ff
	rst  $38                                         ; $5696: $ff
	rst  $38                                         ; $5697: $ff

Jump_0d7_5698:
	rst  $38                                         ; $5698: $ff
	rst  $38                                         ; $5699: $ff
	cp   b                                           ; $569a: $b8
	ld   b, h                                        ; $569b: $44
	ld   d, [hl]                                     ; $569c: $56
	ld   d, l                                        ; $569d: $55
	ld   h, a                                        ; $569e: $67
	ld   h, h                                        ; $569f: $64
	ld   hl, $1111                                   ; $56a0: $21 $11 $11
	ld   de, $1111                                   ; $56a3: $11 $11 $11
	inc  [hl]                                        ; $56a6: $34
	xor  a                                           ; $56a7: $af
	rst  $38                                         ; $56a8: $ff
	rst  $38                                         ; $56a9: $ff
	rst  $38                                         ; $56aa: $ff
	rst  $38                                         ; $56ab: $ff
	rst  $38                                         ; $56ac: $ff
	cp   $ba                                         ; $56ad: $fe $ba
	ld   h, d                                        ; $56af: $62
	dec  h                                           ; $56b0: $25
	ld   [hl], a                                     ; $56b1: $77
	add  a                                           ; $56b2: $87
	halt                                             ; $56b3: $76
	ld   d, e                                        ; $56b4: $53
	ld   de, $1111                                   ; $56b5: $11 $11 $11
	ld   de, $1511                                   ; $56b8: $11 $11 $15
	sbc  a                                           ; $56bb: $9f
	rst  $38                                         ; $56bc: $ff
	rst  $38                                         ; $56bd: $ff
	rst  $38                                         ; $56be: $ff
	rst  $38                                         ; $56bf: $ff
	rst  $38                                         ; $56c0: $ff
	cp   $b9                                         ; $56c1: $fe $b9
	add  h                                           ; $56c3: $84
	inc  [hl]                                        ; $56c4: $34
	ld   h, a                                        ; $56c5: $67
	sbc  e                                           ; $56c6: $9b
	xor  c                                           ; $56c7: $a9
	ld   [hl], l                                     ; $56c8: $75
	ld   de, $1111                                   ; $56c9: $11 $11 $11
	ld   de, $1111                                   ; $56cc: $11 $11 $11
	ld   l, l                                        ; $56cf: $6d
	rst  $38                                         ; $56d0: $ff
	rst  $38                                         ; $56d1: $ff
	rst  $38                                         ; $56d2: $ff
	rst  $38                                         ; $56d3: $ff
	rst  $38                                         ; $56d4: $ff
	db   $ec                                         ; $56d5: $ec
	cp   c                                           ; $56d6: $b9
	sub  h                                           ; $56d7: $94
	ld   de, $ac47                                   ; $56d8: $11 $47 $ac
	jp   z, $5199                                    ; $56db: $ca $99 $51

	ld   de, $1111                                   ; $56de: $11 $11 $11
	ld   de, $3a11                                   ; $56e1: $11 $11 $3a
	rst  $38                                         ; $56e4: $ff
	rst  $38                                         ; $56e5: $ff
	rst  $38                                         ; $56e6: $ff
	rst  $38                                         ; $56e7: $ff
	rst  $38                                         ; $56e8: $ff
	ret                                              ; $56e9: $c9


	ld   e, c                                        ; $56ea: $59
	sbc  c                                           ; $56eb: $99
	ld   b, c                                        ; $56ec: $41
	inc  h                                           ; $56ed: $24
	sbc  a                                           ; $56ee: $9f
	rst  $38                                         ; $56ef: $ff
	cp   c                                           ; $56f0: $b9
	ld   [hl], e                                     ; $56f1: $73
	ld   de, $1111                                   ; $56f2: $11 $11 $11
	ld   de, $1511                                   ; $56f5: $11 $11 $15
	rst  $38                                         ; $56f8: $ff
	rst  $38                                         ; $56f9: $ff
	rst  $38                                         ; $56fa: $ff
	rst  $38                                         ; $56fb: $ff
	rst  $38                                         ; $56fc: $ff
	rst  $10                                         ; $56fd: $d7
	ld   de, $b818                                   ; $56fe: $11 $18 $b8
	halt                                             ; $5701: $76
	ld   e, d                                        ; $5702: $5a
	rst  $38                                         ; $5703: $ff
	rst  $38                                         ; $5704: $ff
	jp   $1111                                       ; $5705: $c3 $11 $11


	ld   de, $1111                                   ; $5708: $11 $11 $11
	rla                                              ; $570b: $17
	rst  $28                                         ; $570c: $ef
	rst  $38                                         ; $570d: $ff
	rst  $38                                         ; $570e: $ff
	rst  $38                                         ; $570f: $ff
	rst  $38                                         ; $5710: $ff
	and  l                                           ; $5711: $a5
	ld   de, $5a11                                   ; $5712: $11 $11 $5a
	sbc  $bc                                         ; $5715: $de $bc
	rst  $38                                         ; $5717: $ff
	rst  $38                                         ; $5718: $ff
	db   $fd                                         ; $5719: $fd
	ld   hl, $1111                                   ; $571a: $21 $11 $11
	ld   de, $1411                                   ; $571d: $11 $11 $14
	rst  $38                                         ; $5720: $ff
	rst  $38                                         ; $5721: $ff
	rst  $38                                         ; $5722: $ff
	rst  $38                                         ; $5723: $ff
	cp   $a3                                         ; $5724: $fe $a3
	ld   de, $0a11                                   ; $5726: $11 $11 $0a
	rst  $38                                         ; $5729: $ff
	rst  $38                                         ; $572a: $ff
	rst  $38                                         ; $572b: $ff
	rst  $38                                         ; $572c: $ff
	rst  $38                                         ; $572d: $ff
	and  c                                           ; $572e: $a1
	ld   de, $1111                                   ; $572f: $11 $11 $11
	ld   de, $cf46                                   ; $5732: $11 $46 $cf
	rst  $38                                         ; $5735: $ff
	rst  $38                                         ; $5736: $ff
	rst  $38                                         ; $5737: $ff
	ld   sp, hl                                      ; $5738: $f9
	ld   sp, $1111                                   ; $5739: $31 $11 $11
	jr   @+$01                                       ; $573c: $18 $ff

	rst  $38                                         ; $573e: $ff
	rst  $38                                         ; $573f: $ff
	rst  $38                                         ; $5740: $ff
	rst  $38                                         ; $5741: $ff
	ldh  a, [c]                                      ; $5742: $f2
	ld   de, $1111                                   ; $5743: $11 $11 $11
	rla                                              ; $5746: $17
	set  1, a                                        ; $5747: $cb $cf
	rst  $38                                         ; $5749: $ff
	rst  $38                                         ; $574a: $ff
	rst  $38                                         ; $574b: $ff
	ld   [hl], c                                     ; $574c: $71
	ld   de, $1111                                   ; $574d: $11 $11 $11
	dec  d                                           ; $5750: $15
	rst  $38                                         ; $5751: $ff
	rst  $38                                         ; $5752: $ff
	rst  $38                                         ; $5753: $ff
	call z, $f8ef                                    ; $5754: $cc $ef $f8
	ld   de, $1111                                   ; $5757: $11 $11 $11
	ld   c, a                                        ; $575a: $4f
	rst  $38                                         ; $575b: $ff
	rst  $38                                         ; $575c: $ff
	rst  $38                                         ; $575d: $ff
	rst  $38                                         ; $575e: $ff
	rst  $38                                         ; $575f: $ff
	ld   d, c                                        ; $5760: $51
	ld   de, $1311                                   ; $5761: $11 $11 $13
	ld   e, e                                        ; $5764: $5b
	rst  $38                                         ; $5765: $ff
	rst  $38                                         ; $5766: $ff
	rst  $38                                         ; $5767: $ff
	jp   hl                                          ; $5768: $e9


	ld   d, a                                        ; $5769: $57
	and  l                                           ; $576a: $a5
	ld   de, $1111                                   ; $576b: $11 $11 $11
	ccf                                              ; $576e: $3f
	rst  $38                                         ; $576f: $ff
	rst  $38                                         ; $5770: $ff
	rst  $38                                         ; $5771: $ff
	rst  $38                                         ; $5772: $ff
	rst  $38                                         ; $5773: $ff
	add  c                                           ; $5774: $81
	ld   de, $3f11                                   ; $5775: $11 $11 $3f
	rst  $38                                         ; $5778: $ff
	rst  $38                                         ; $5779: $ff
	rst  $38                                         ; $577a: $ff
	rst  $38                                         ; $577b: $ff
	db   $fc                                         ; $577c: $fc
	ld   [hl], l                                     ; $577d: $75
	ld   de, $1111                                   ; $577e: $11 $11 $11
	ld   de, $ffaf                                   ; $5781: $11 $af $ff
	rst  $38                                         ; $5784: $ff
	rst  $38                                         ; $5785: $ff
	rst  $38                                         ; $5786: $ff
	db   $fd                                         ; $5787: $fd
	ld   hl, $1111                                   ; $5788: $21 $11 $11
	ld   a, a                                        ; $578b: $7f
	rst  $38                                         ; $578c: $ff
	rst  $38                                         ; $578d: $ff
	rst  $38                                         ; $578e: $ff
	ret                                              ; $578f: $c9


	res  7, b                                        ; $5790: $cb $b8
	ld   de, $1111                                   ; $5792: $11 $11 $11
	dec  e                                           ; $5795: $1d

Call_0d7_5796:
	rst  $38                                         ; $5796: $ff
	rst  $38                                         ; $5797: $ff
	rst  $38                                         ; $5798: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5799: $cf
	rst  $38                                         ; $579a: $ff
	db   $d3                                         ; $579b: $d3
	ld   de, $1711                                   ; $579c: $11 $11 $17
	rst  $38                                         ; $579f: $ff
	rst  $38                                         ; $57a0: $ff
	rst  $38                                         ; $57a1: $ff
	ld   [$ec7b], a                                  ; $57a2: $ea $7b $ec
	ld   [hl], c                                     ; $57a5: $71
	ld   de, $1111                                   ; $57a6: $11 $11 $11
	rst  $38                                         ; $57a9: $ff
	rst  $38                                         ; $57aa: $ff
	rst  $38                                         ; $57ab: $ff
	db   $ed                                         ; $57ac: $ed
	rst  $38                                         ; $57ad: $ff
	ei                                               ; $57ae: $fb
	ld   hl, $1111                                   ; $57af: $21 $11 $11
	rst  JumpTable                                         ; $57b2: $df
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	ret  c                                           ; $57b5: $d8

	ld   h, a                                        ; $57b6: $67
	rst  $38                                         ; $57b7: $ff
	push de                                          ; $57b8: $d5
	ld   de, $1111                                   ; $57b9: $11 $11 $11
	xor  a                                           ; $57bc: $af
	rst  $38                                         ; $57bd: $ff
	rst  $38                                         ; $57be: $ff
	db   $fd                                         ; $57bf: $fd
	rst  $38                                         ; $57c0: $ff
	rst  $38                                         ; $57c1: $ff
	ld   h, c                                        ; $57c2: $61
	ld   de, $6f11                                   ; $57c3: $11 $11 $6f
	rst  $38                                         ; $57c6: $ff
	rst  $38                                         ; $57c7: $ff
	sub  $56                                         ; $57c8: $d6 $56
	rst  $28                                         ; $57ca: $ef
	ld   sp, hl                                      ; $57cb: $f9
	ld   de, $1111                                   ; $57cc: $11 $11 $11
	cp   a                                           ; $57cf: $bf
	rst  $38                                         ; $57d0: $ff
	rst  $38                                         ; $57d1: $ff
	call z, $ffff                                    ; $57d2: $cc $ff $ff
	add  c                                           ; $57d5: $81
	ld   de, $bf11                                   ; $57d6: $11 $11 $bf
	rst  $38                                         ; $57d9: $ff
	rst  $38                                         ; $57da: $ff
	ld   d, e                                        ; $57db: $53
	ld   e, d                                        ; $57dc: $5a
	rst  $38                                         ; $57dd: $ff
	push af                                          ; $57de: $f5
	ld   de, $1311                                   ; $57df: $11 $11 $13
	rst  $38                                         ; $57e2: $ff
	rst  $38                                         ; $57e3: $ff
	rst  $38                                         ; $57e4: $ff
	adc  a                                           ; $57e5: $8f
	rst  $38                                         ; $57e6: $ff
	db   $fd                                         ; $57e7: $fd
	ld   sp, $1211                                   ; $57e8: $31 $11 $12
	rst  $38                                         ; $57eb: $ff
	rst  $38                                         ; $57ec: $ff
	ld   hl, sp+$26                                  ; $57ed: $f8 $26
	xor  a                                           ; $57ef: $af
	rst  $38                                         ; $57f0: $ff
	sub  c                                           ; $57f1: $91
	ld   de, $1d11                                   ; $57f2: $11 $11 $1d
	rst  $38                                         ; $57f5: $ff
	rst  $38                                         ; $57f6: $ff
	rst  $30                                         ; $57f7: $f7
	rst  $38                                         ; $57f8: $ff
	rst  $38                                         ; $57f9: $ff
	ld   sp, hl                                      ; $57fa: $f9
	ld   de, $1f11                                   ; $57fb: $11 $11 $1f
	rst  $38                                         ; $57fe: $ff
	rst  $38                                         ; $57ff: $ff
	or   e                                           ; $5800: $b3
	ld   l, b                                        ; $5801: $68
	rst  $28                                         ; $5802: $ef
	ld   a, [$1111]                                  ; $5803: $fa $11 $11
	ld   de, $ffbf                                   ; $5806: $11 $bf $ff
	rst  $38                                         ; $5809: $ff
	ld   a, [hl]                                     ; $580a: $7e
	rst  $38                                         ; $580b: $ff
	rst  $38                                         ; $580c: $ff
	and  c                                           ; $580d: $a1
	ld   de, rAUD1LEN                                   ; $580e: $11 $11 $ff
	rst  $38                                         ; $5811: $ff
	ld   hl, sp+$5a                                  ; $5812: $f8 $5a
	xor  a                                           ; $5814: $af
	db   $fd                                         ; $5815: $fd
	ld   sp, $1111                                   ; $5816: $31 $11 $11
	inc  e                                           ; $5819: $1c
	rst  $38                                         ; $581a: $ff
	rst  $38                                         ; $581b: $ff
	ld   hl, sp-$01                                  ; $581c: $f8 $ff
	rst  $38                                         ; $581e: $ff
	ld   sp, hl                                      ; $581f: $f9
	ld   de, $4e11                                   ; $5820: $11 $11 $4e
	rst  $38                                         ; $5823: $ff
	rst  $38                                         ; $5824: $ff
	sbc  b                                           ; $5825: $98
	xor  c                                           ; $5826: $a9
	rst  $28                                         ; $5827: $ef
	and  e                                           ; $5828: $a3
	ld   de, $1111                                   ; $5829: $11 $11 $11
	rst  JumpTable                                         ; $582c: $df
	rst  $38                                         ; $582d: $ff
	rst  $38                                         ; $582e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $582f: $cf
	rst  $38                                         ; $5830: $ff
	cp   $51                                         ; $5831: $fe $51
	ld   de, $df16                                   ; $5833: $11 $16 $df
	rst  $38                                         ; $5836: $ff
	reti                                             ; $5837: $d9


	cp   d                                           ; $5838: $ba
	xor  l                                           ; $5839: $ad
	and  l                                           ; $583a: $a5
	ld   de, $1111                                   ; $583b: $11 $11 $11
	ccf                                              ; $583e: $3f
	rst  $38                                         ; $583f: $ff
	rst  $38                                         ; $5840: $ff
	rst  JumpTable                                         ; $5841: $df
	rst  $38                                         ; $5842: $ff
	rst  $38                                         ; $5843: $ff
	pop  de                                          ; $5844: $d1
	ld   de, $7b12                                   ; $5845: $11 $12 $7b
	sbc  $fb                                         ; $5848: $de $fb
	call z, $a6ab                                    ; $584a: $cc $ab $a6
	ld   bc, $1111                                   ; $584d: $01 $11 $11
	dec  e                                           ; $5850: $1d
	rst  $38                                         ; $5851: $ff
	rst  $38                                         ; $5852: $ff
	rst  $38                                         ; $5853: $ff
	rst  $38                                         ; $5854: $ff
	rst  $38                                         ; $5855: $ff
	ldh  a, [c]                                      ; $5856: $f2
	ld   de, $4612                                   ; $5857: $11 $12 $46
	ld   a, d                                        ; $585a: $7a
	db   $ec                                         ; $585b: $ec
	db   $dd                                         ; $585c: $dd
	sbc  b                                           ; $585d: $98
	ld   [hl], l                                     ; $585e: $75
	ld   de, $1111                                   ; $585f: $11 $11 $11
	dec  e                                           ; $5862: $1d
	rst  $38                                         ; $5863: $ff
	rst  $38                                         ; $5864: $ff
	rst  $38                                         ; $5865: $ff
	rst  $38                                         ; $5866: $ff
	rst  $38                                         ; $5867: $ff
	sub  $54                                         ; $5868: $d6 $54
	ld   hl, $4933                                   ; $586a: $21 $33 $49
	cp   e                                           ; $586d: $bb
	jp   z, Jump_0d7_6376                            ; $586e: $ca $76 $63

	ld   de, $1111                                   ; $5871: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5874: $cf
	rst  $38                                         ; $5875: $ff
	rst  $38                                         ; $5876: $ff
	rst  $38                                         ; $5877: $ff
	rst  $38                                         ; $5878: $ff
	db   $fd                                         ; $5879: $fd
	xor  c                                           ; $587a: $a9
	ld   h, [hl]                                     ; $587b: $66
	ld   [hl-], a                                    ; $587c: $32
	ld   [de], a                                     ; $587d: $12
	ld   l, b                                        ; $587e: $68
	sbc  d                                           ; $587f: $9a
	ld   [hl], l                                     ; $5880: $75
	ld   b, h                                        ; $5881: $44
	ld   hl, $1111                                   ; $5882: $21 $11 $11
	ccf                                              ; $5885: $3f
	rst  $38                                         ; $5886: $ff
	rst  $38                                         ; $5887: $ff
	rst  $38                                         ; $5888: $ff
	rst  $38                                         ; $5889: $ff
	rst  $38                                         ; $588a: $ff
	db   $ed                                         ; $588b: $ed
	ret                                              ; $588c: $c9


	ld   d, c                                        ; $588d: $51
	ld   de, $7837                                   ; $588e: $11 $37 $78
	ld   [hl], h                                     ; $5891: $74
	inc  sp                                          ; $5892: $33
	ld   sp, $1111                                   ; $5893: $31 $11 $11
	ld   l, $ff                                      ; $5896: $2e $ff
	rst  $38                                         ; $5898: $ff
	rst  $38                                         ; $5899: $ff

Call_0d7_589a:
	rst  $38                                         ; $589a: $ff
	rst  $28                                         ; $589b: $ef

Jump_0d7_589c:
	rst  $38                                         ; $589c: $ff
	db   $fd                                         ; $589d: $fd
	ld   [hl], e                                     ; $589e: $73
	ld   hl, $6537                                   ; $589f: $21 $37 $65
	ld   b, e                                        ; $58a2: $43
	inc  hl                                          ; $58a3: $23
	ld   b, c                                        ; $58a4: $41
	ld   de, $4e11                                   ; $58a5: $11 $11 $4e
	rst  $38                                         ; $58a8: $ff
	rst  $38                                         ; $58a9: $ff
	rst  $38                                         ; $58aa: $ff
	rst  $38                                         ; $58ab: $ff
	rst  $28                                         ; $58ac: $ef
	rst  $38                                         ; $58ad: $ff
	db   $fd                                         ; $58ae: $fd
	ld   [hl], d                                     ; $58af: $72
	inc  hl                                          ; $58b0: $23
	ld   e, b                                        ; $58b1: $58
	ld   h, h                                        ; $58b2: $64
	ld   hl, $2122                                   ; $58b3: $21 $22 $21
	ld   de, $8f13                                   ; $58b6: $11 $13 $8f
	db   $ed                                         ; $58b9: $ed
	rst  $38                                         ; $58ba: $ff
	rst  $38                                         ; $58bb: $ff
	db   $fd                                         ; $58bc: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58bd: $cf
	rst  $38                                         ; $58be: $ff
	ei                                               ; $58bf: $fb
	ld   d, d                                        ; $58c0: $52
	ld   b, l                                        ; $58c1: $45
	ld   h, [hl]                                     ; $58c2: $66
	ld   sp, $2123                                   ; $58c3: $31 $23 $21
	ld   de, $5811                                   ; $58c6: $11 $11 $58
	db   $db                                         ; $58c9: $db
	cp   a                                           ; $58ca: $bf
	rst  $38                                         ; $58cb: $ff
	rst  $38                                         ; $58cc: $ff
	xor  $ff                                         ; $58cd: $ee $ff
	cp   $b6                                         ; $58cf: $fe $b6
	ld   d, [hl]                                     ; $58d1: $56
	ld   d, e                                        ; $58d2: $53
	ld   bc, $3112                                   ; $58d3: $01 $12 $31
	ld   de, $6611                                   ; $58d6: $11 $11 $66
	adc  e                                           ; $58d9: $8b
	cp   a                                           ; $58da: $bf
	rst  $38                                         ; $58db: $ff
	db   $fd                                         ; $58dc: $fd
	sbc  $ff                                         ; $58dd: $de $ff
	rst  $38                                         ; $58df: $ff
	cp   h                                           ; $58e0: $bc
	xor  c                                           ; $58e1: $a9
	ld   [hl], d                                     ; $58e2: $72
	ld   de, $1112                                   ; $58e3: $11 $12 $11
	ld   de, $5511                                   ; $58e6: $11 $11 $55
	ld   l, d                                        ; $58e9: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ea: $cf
	rst  $38                                         ; $58eb: $ff
	db   $fd                                         ; $58ec: $fd
	rst  $38                                         ; $58ed: $ff
	rst  $38                                         ; $58ee: $ff
	cp   $bb                                         ; $58ef: $fe $bb
	sub  a                                           ; $58f1: $97
	ld   d, c                                        ; $58f2: $51
	ld   de, $1132                                   ; $58f3: $11 $32 $11
	ld   de, $4311                                   ; $58f6: $11 $11 $43
	ld   l, d                                        ; $58f9: $6a
	rst  JumpTable                                         ; $58fa: $df
	rst  $38                                         ; $58fb: $ff
	rst  $38                                         ; $58fc: $ff
	rst  $38                                         ; $58fd: $ff
	rst  $38                                         ; $58fe: $ff
	cp   $dc                                         ; $58ff: $fe $dc
	sub  l                                           ; $5901: $95
	ld   hl, $1111                                   ; $5902: $21 $11 $11
	ld   de, $1211                                   ; $5905: $11 $11 $12
	dec  [hl]                                        ; $5908: $35
	sbc  e                                           ; $5909: $9b
	rst  $38                                         ; $590a: $ff
	rst  $38                                         ; $590b: $ff
	rst  $38                                         ; $590c: $ff
	rst  $38                                         ; $590d: $ff
	rst  $38                                         ; $590e: $ff
	rst  $38                                         ; $590f: $ff
	db   $eb                                         ; $5910: $eb
	ld   h, e                                        ; $5911: $63
	ld   de, $1111                                   ; $5912: $11 $11 $11
	ld   de, $1311                                   ; $5915: $11 $11 $13
	ld   c, c                                        ; $5918: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5919: $cf
	rst  $38                                         ; $591a: $ff
	rst  $38                                         ; $591b: $ff
	rst  $38                                         ; $591c: $ff
	rst  $38                                         ; $591d: $ff
	rst  $38                                         ; $591e: $ff
	db   $fd                                         ; $591f: $fd
	or   a                                           ; $5920: $b7
	ld   b, e                                        ; $5921: $43
	ld   de, $1111                                   ; $5922: $11 $11 $11
	ld   de, $1311                                   ; $5925: $11 $11 $13
	ld   e, d                                        ; $5928: $5a
	rst  $28                                         ; $5929: $ef
	rst  $38                                         ; $592a: $ff
	rst  $38                                         ; $592b: $ff
	rst  $38                                         ; $592c: $ff
	rst  $38                                         ; $592d: $ff
	rst  $38                                         ; $592e: $ff
	db   $ec                                         ; $592f: $ec
	sub  h                                           ; $5930: $94
	ld   hl, $1111                                   ; $5931: $21 $11 $11
	ld   de, $1111                                   ; $5934: $11 $11 $11
	ld   d, $ac                                      ; $5937: $16 $ac
	xor  $ff                                         ; $5939: $ee $ff
	rst  $38                                         ; $593b: $ff
	rst  $38                                         ; $593c: $ff
	rst  $38                                         ; $593d: $ff
	rst  $38                                         ; $593e: $ff
	jp   hl                                          ; $593f: $e9


	ld   h, e                                        ; $5940: $63
	ld   de, $1111                                   ; $5941: $11 $11 $11
	ld   de, $1111                                   ; $5944: $11 $11 $11
	ld   e, b                                        ; $5947: $58
	sbc  d                                           ; $5948: $9a
	rst  $28                                         ; $5949: $ef
	rst  $38                                         ; $594a: $ff
	rst  $38                                         ; $594b: $ff
	rst  $38                                         ; $594c: $ff
	rst  $38                                         ; $594d: $ff
	rst  $38                                         ; $594e: $ff
	rst  ToBoot                                         ; $594f: $c7
	ld   h, l                                        ; $5950: $65
	ld   hl, $1111                                   ; $5951: $21 $11 $11
	ld   de, $1211                                   ; $5954: $11 $11 $12
	ld   h, [hl]                                     ; $5957: $66
	ld   e, c                                        ; $5958: $59
	call c, $ffdf                                    ; $5959: $dc $df $ff
	rst  $38                                         ; $595c: $ff
	rst  $38                                         ; $595d: $ff
	rst  $38                                         ; $595e: $ff
	ld   [$4396], a                                  ; $595f: $ea $96 $43
	ld   de, $1111                                   ; $5962: $11 $11 $11
	ld   de, $4511                                   ; $5965: $11 $11 $45
	ld   b, h                                        ; $5968: $44
	adc  d                                           ; $5969: $8a
	adc  e                                           ; $596a: $8b
	rst  $28                                         ; $596b: $ef
	rst  $38                                         ; $596c: $ff
	rst  $38                                         ; $596d: $ff
	rst  $38                                         ; $596e: $ff
	rst  $38                                         ; $596f: $ff
	jp   z, Jump_0d7_5487                            ; $5970: $ca $87 $54

Call_0d7_5973:
	inc  sp                                          ; $5973: $33
	ld   hl, $1211                                   ; $5974: $21 $11 $12
	ld   [de], a                                     ; $5977: $12
	ld   h, d                                        ; $5978: $62
	ld   h, $76                                      ; $5979: $26 $76
	ld   l, e                                        ; $597b: $6b
	cp   e                                           ; $597c: $bb
	rst  $28                                         ; $597d: $ef
	rst  $38                                         ; $597e: $ff
	rst  $38                                         ; $597f: $ff
	rst  $38                                         ; $5980: $ff

Call_0d7_5981:
	db   $ec                                         ; $5981: $ec
	cp   c                                           ; $5982: $b9
	add  [hl]                                        ; $5983: $86
	ld   d, l                                        ; $5984: $55
	ld   b, e                                        ; $5985: $43
	ld   [hl-], a                                    ; $5986: $32
	inc  hl                                          ; $5987: $23
	inc  hl                                          ; $5988: $23
	inc  hl                                          ; $5989: $23
	inc  sp                                          ; $598a: $33
	ld   b, l                                        ; $598b: $45
	ld   h, [hl]                                     ; $598c: $66
	ld   l, c                                        ; $598d: $69
	xor  c                                           ; $598e: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $598f: $cf
	rst  $38                                         ; $5990: $ff
	rst  $38                                         ; $5991: $ff
	rst  $38                                         ; $5992: $ff
	db   $ed                                         ; $5993: $ed
	cp   d                                           ; $5994: $ba
	and  a                                           ; $5995: $a7
	halt                                             ; $5996: $76
	ld   b, [hl]                                     ; $5997: $46
	ld   d, e                                        ; $5998: $53
	ld   b, e                                        ; $5999: $43
	inc  sp                                          ; $599a: $33
	ld   b, e                                        ; $599b: $43
	dec  [hl]                                        ; $599c: $35
	inc  sp                                          ; $599d: $33
	ld   d, l                                        ; $599e: $55
	ld   b, [hl]                                     ; $599f: $46
	add  a                                           ; $59a0: $87
	xor  h                                           ; $59a1: $ac
	call $eeef                                       ; $59a2: $cd $ef $ee
	db   $fd                                         ; $59a5: $fd
	db   $dd                                         ; $59a6: $dd
	cp   e                                           ; $59a7: $bb
	xor  c                                           ; $59a8: $a9
	ld   [hl], a                                     ; $59a9: $77
	halt                                             ; $59aa: $76
	ld   h, l                                        ; $59ab: $65
	ld   d, h                                        ; $59ac: $54
	ld   b, h                                        ; $59ad: $44
	ld   b, e                                        ; $59ae: $43
	ld   b, l                                        ; $59af: $45
	inc  h                                           ; $59b0: $24
	ld   b, e                                        ; $59b1: $43
	ld   b, l                                        ; $59b2: $45
	ld   h, a                                        ; $59b3: $67
	adc  c                                           ; $59b4: $89
	xor  e                                           ; $59b5: $ab
	db   $dd                                         ; $59b6: $dd
	db   $ed                                         ; $59b7: $ed
	sbc  $dd                                         ; $59b8: $de $dd
	cp   h                                           ; $59ba: $bc
	cp   d                                           ; $59bb: $ba
	sbc  c                                           ; $59bc: $99
	sub  a                                           ; $59bd: $97
	halt                                             ; $59be: $76
	ld   h, a                                        ; $59bf: $67
	ld   b, h                                        ; $59c0: $44
	ld   b, l                                        ; $59c1: $45
	inc  sp                                          ; $59c2: $33
	ld   b, d                                        ; $59c3: $42
	inc  [hl]                                        ; $59c4: $34
	inc  [hl]                                        ; $59c5: $34
	ld   d, l                                        ; $59c6: $55
	ld   [hl], a                                     ; $59c7: $77
	adc  d                                           ; $59c8: $8a
	cp   h                                           ; $59c9: $bc
	adc  $ed                                         ; $59ca: $ce $ed
	db   $dd                                         ; $59cc: $dd
	db   $ec                                         ; $59cd: $ec
	db   $db                                         ; $59ce: $db
	xor  d                                           ; $59cf: $aa
	sbc  b                                           ; $59d0: $98
	sub  a                                           ; $59d1: $97
	ld   l, b                                        ; $59d2: $68
	ld   d, [hl]                                     ; $59d3: $56
	ld   h, h                                        ; $59d4: $64
	ld   b, l                                        ; $59d5: $45
	ld   [hl-], a                                    ; $59d6: $32
	ld   h, e                                        ; $59d7: $63
	inc  h                                           ; $59d8: $24
	ld   b, e                                        ; $59d9: $43
	ld   d, [hl]                                     ; $59da: $56
	ld   d, a                                        ; $59db: $57
	adc  b                                           ; $59dc: $88
	xor  h                                           ; $59dd: $ac
	xor  h                                           ; $59de: $ac
	call c, $dcdd                                    ; $59df: $dc $dd $dc
	call z, $aabc                                    ; $59e2: $cc $bc $aa
	sbc  b                                           ; $59e5: $98
	add  a                                           ; $59e6: $87
	ld   [hl], a                                     ; $59e7: $77
	ld   h, l                                        ; $59e8: $65
	ld   d, l                                        ; $59e9: $55
	ld   d, e                                        ; $59ea: $53
	ld   d, h                                        ; $59eb: $54
	inc  h                                           ; $59ec: $24
	inc  sp                                          ; $59ed: $33
	ld   b, h                                        ; $59ee: $44
	ld   b, [hl]                                     ; $59ef: $46
	ld   h, a                                        ; $59f0: $67
	sbc  c                                           ; $59f1: $99
	cp   d                                           ; $59f2: $ba
	db   $dd                                         ; $59f3: $dd
	call $cedd                                       ; $59f4: $cd $dd $ce
	set  1, e                                        ; $59f7: $cb $cb
	xor  d                                           ; $59f9: $aa
	adc  c                                           ; $59fa: $89
	add  [hl]                                        ; $59fb: $86
	ld   [hl], a                                     ; $59fc: $77
	ld   b, l                                        ; $59fd: $45
	ld   h, h                                        ; $59fe: $64
	ld   b, e                                        ; $59ff: $43
	ld   b, e                                        ; $5a00: $43
	dec  d                                           ; $5a01: $15
	ld   [hl+], a                                    ; $5a02: $22
	ld   h, e                                        ; $5a03: $63
	ld   c, b                                        ; $5a04: $48
	ld   h, a                                        ; $5a05: $67
	cp   e                                           ; $5a06: $bb
	cp   h                                           ; $5a07: $bc
	db   $ec                                         ; $5a08: $ec
	sbc  $de                                         ; $5a09: $de $de
	call c, $abcc                                    ; $5a0b: $dc $cc $ab
	or   a                                           ; $5a0e: $b7
	sub  a                                           ; $5a0f: $97
	ld   l, b                                        ; $5a10: $68
	ld   d, [hl]                                     ; $5a11: $56
	ld   h, e                                        ; $5a12: $63
	ld   [hl], $22                                   ; $5a13: $36 $22
	ld   h, c                                        ; $5a15: $61
	dec  h                                           ; $5a16: $25
	ld   [hl+], a                                    ; $5a17: $22
	ld   h, h                                        ; $5a18: $64
	ld   e, b                                        ; $5a19: $58
	add  a                                           ; $5a1a: $87
	cp   e                                           ; $5a1b: $bb
	xor  l                                           ; $5a1c: $ad
	db   $dd                                         ; $5a1d: $dd
	xor  $ed                                         ; $5a1e: $ee $ed
	call c, $bacb                                    ; $5a20: $dc $cb $ba
	and  [hl]                                        ; $5a23: $a6
	adc  c                                           ; $5a24: $89
	ld   h, [hl]                                     ; $5a25: $66
	ld   h, a                                        ; $5a26: $67
	inc  [hl]                                        ; $5a27: $34
	ld   b, e                                        ; $5a28: $43
	ld   [hl+], a                                    ; $5a29: $22
	ld   sp, $2332                                   ; $5a2a: $31 $32 $23
	ld   b, l                                        ; $5a2d: $45
	ld   e, b                                        ; $5a2e: $58
	sbc  b                                           ; $5a2f: $98
	cp   h                                           ; $5a30: $bc
	adc  $ed                                         ; $5a31: $ce $ed
	rst  $28                                         ; $5a33: $ef
	db   $dd                                         ; $5a34: $dd
	db   $ec                                         ; $5a35: $ec
	res  5, e                                        ; $5a36: $cb $ab
	sub  a                                           ; $5a38: $97
	sub  [hl]                                        ; $5a39: $96
	ld   b, [hl]                                     ; $5a3a: $46
	ld   b, d                                        ; $5a3b: $42
	ld   b, d                                        ; $5a3c: $42
	ld   sp, $1113                                   ; $5a3d: $31 $13 $11
	inc  sp                                          ; $5a40: $33
	dec  h                                           ; $5a41: $25
	ld   d, l                                        ; $5a42: $55
	xor  d                                           ; $5a43: $aa
	xor  l                                           ; $5a44: $ad
	db   $ed                                         ; $5a45: $ed
	rst  $38                                         ; $5a46: $ff
	cp   $fe                                         ; $5a47: $fe $fe
	rst  $28                                         ; $5a49: $ef
	cp   l                                           ; $5a4a: $bd
	cp   c                                           ; $5a4b: $b9
	xor  c                                           ; $5a4c: $a9
	ld   h, l                                        ; $5a4d: $65
	ld   [hl], h                                     ; $5a4e: $74
	ld   b, l                                        ; $5a4f: $45
	ld   de, $1561                                   ; $5a50: $11 $61 $15
	ld   de, $2433                                   ; $5a53: $11 $33 $24
	ld   [hl], l                                     ; $5a56: $75
	adc  h                                           ; $5a57: $8c
	sbc  l                                           ; $5a58: $9d
	db   $fd                                         ; $5a59: $fd
	rst  $28                                         ; $5a5a: $ef
	rst  $38                                         ; $5a5b: $ff
	rst  $38                                         ; $5a5c: $ff
	xor  $cc                                         ; $5a5d: $ee $cc
	ret  z                                           ; $5a5f: $c8

	adc  d                                           ; $5a60: $8a
	ld   d, h                                        ; $5a61: $54
	ld   h, [hl]                                     ; $5a62: $66
	ld   bc, $2241                                   ; $5a63: $01 $41 $22
	ld   [hl+], a                                    ; $5a66: $22
	inc  sp                                          ; $5a67: $33
	inc  de                                          ; $5a68: $13
	ld   h, h                                        ; $5a69: $64
	ld   c, d                                        ; $5a6a: $4a
	xor  b                                           ; $5a6b: $a8
	adc  $ed                                         ; $5a6c: $ce $ed
	rst  $38                                         ; $5a6e: $ff
	rst  $28                                         ; $5a6f: $ef
	cp   $ec                                         ; $5a70: $fe $ec
	cp   e                                           ; $5a72: $bb
	xor  c                                           ; $5a73: $a9
	ld   l, c                                        ; $5a74: $69
	ld   [hl], h                                     ; $5a75: $74
	ld   d, h                                        ; $5a76: $54
	ld   [hl-], a                                    ; $5a77: $32
	inc  sp                                          ; $5a78: $33
	ld   de, $1131                                   ; $5a79: $11 $31 $11
	inc  [hl]                                        ; $5a7c: $34
	dec  d                                           ; $5a7d: $15
	add  a                                           ; $5a7e: $87
	sbc  h                                           ; $5a7f: $9c
	adc  $ff                                         ; $5a80: $ce $ff
	rst  $38                                         ; $5a82: $ff
	rst  $38                                         ; $5a83: $ff
	cp   $dc                                         ; $5a84: $fe $dc
	db   $db                                         ; $5a86: $db
	ld   a, d                                        ; $5a87: $7a
	ld   [hl], h                                     ; $5a88: $74
	ld   b, l                                        ; $5a89: $45
	ld   de, $3121                                   ; $5a8a: $11 $21 $31
	ld   [de], a                                     ; $5a8d: $12
	ld   de, $2424                                   ; $5a8e: $11 $24 $24
	ld   a, b                                        ; $5a91: $78
	sbc  h                                           ; $5a92: $9c
	rst  $28                                         ; $5a93: $ef
	rst  $38                                         ; $5a94: $ff
	rst  $38                                         ; $5a95: $ff
	rst  $38                                         ; $5a96: $ff
	rst  $38                                         ; $5a97: $ff
	db   $eb                                         ; $5a98: $eb
	xor  c                                           ; $5a99: $a9
	ld   [hl], a                                     ; $5a9a: $77
	ld   d, [hl]                                     ; $5a9b: $56
	ld   [hl+], a                                    ; $5a9c: $22
	ld   d, c                                        ; $5a9d: $51
	inc  de                                          ; $5a9e: $13
	ld   de, $1231                                   ; $5a9f: $11 $31 $12
	ld   [hl-], a                                    ; $5aa2: $32
	jr   c, jr_0d7_5b1e                              ; $5aa3: $38 $79

	sbc  $ff                                         ; $5aa5: $de $ff
	rst  $38                                         ; $5aa7: $ff
	rst  $38                                         ; $5aa8: $ff
	rst  $38                                         ; $5aa9: $ff
	db   $fd                                         ; $5aaa: $fd
	cp   d                                           ; $5aab: $ba
	and  [hl]                                        ; $5aac: $a6
	ld   b, [hl]                                     ; $5aad: $46
	ld   b, d                                        ; $5aae: $42
	ld   de, $1111                                   ; $5aaf: $11 $11 $11
	ld   de, $2421                                   ; $5ab2: $11 $21 $24
	ld   d, h                                        ; $5ab5: $54
	adc  h                                           ; $5ab6: $8c
	cp   l                                           ; $5ab7: $bd
	rst  $38                                         ; $5ab8: $ff
	rst  $38                                         ; $5ab9: $ff
	rst  $38                                         ; $5aba: $ff
	rst  $38                                         ; $5abb: $ff
	cp   $ba                                         ; $5abc: $fe $ba
	sub  a                                           ; $5abe: $97
	ld   d, e                                        ; $5abf: $53
	inc  hl                                          ; $5ac0: $23
	ld   de, $0111                                   ; $5ac1: $11 $11 $01
	inc  de                                          ; $5ac4: $13
	ld   de, $5626                                   ; $5ac5: $11 $26 $56
	adc  l                                           ; $5ac8: $8d
	rst  $28                                         ; $5ac9: $ef
	rst  $38                                         ; $5aca: $ff
	rst  $38                                         ; $5acb: $ff
	rst  $38                                         ; $5acc: $ff
	rst  $38                                         ; $5acd: $ff
	rst  $38                                         ; $5ace: $ff
	cp   c                                           ; $5acf: $b9
	ld   [hl], l                                     ; $5ad0: $75
	ld   hl, $1111                                   ; $5ad1: $21 $11 $11
	ld   de, $1211                                   ; $5ad4: $11 $11 $12
	ld   de, $8838                                   ; $5ad7: $11 $38 $88
	rst  JumpTable                                         ; $5ada: $df
	rst  $38                                         ; $5adb: $ff
	rst  $38                                         ; $5adc: $ff
	rst  $38                                         ; $5add: $ff
	rst  $38                                         ; $5ade: $ff
	rst  $38                                         ; $5adf: $ff
	db   $db                                         ; $5ae0: $db
	add  h                                           ; $5ae1: $84
	ld   de, $1111                                   ; $5ae2: $11 $11 $11
	ld   de, $1111                                   ; $5ae5: $11 $11 $11
	ld   sp, $ca16                                   ; $5ae8: $31 $16 $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5aeb: $cf
	rst  $38                                         ; $5aec: $ff
	rst  $38                                         ; $5aed: $ff
	rst  $38                                         ; $5aee: $ff
	rst  $38                                         ; $5aef: $ff
	rst  $38                                         ; $5af0: $ff
	reti                                             ; $5af1: $d9


	ld   h, l                                        ; $5af2: $65
	ld   de, $1111                                   ; $5af3: $11 $11 $11
	ld   de, $1111                                   ; $5af6: $11 $11 $11
	ld   b, c                                        ; $5af9: $41
	dec  hl                                          ; $5afa: $2b
	ei                                               ; $5afb: $fb
	rst  $28                                         ; $5afc: $ef
	rst  $38                                         ; $5afd: $ff
	rst  $38                                         ; $5afe: $ff
	rst  $38                                         ; $5aff: $ff
	rst  $38                                         ; $5b00: $ff
	rst  $38                                         ; $5b01: $ff
	and  h                                           ; $5b02: $a4
	inc  sp                                          ; $5b03: $33
	ld   de, $1111                                   ; $5b04: $11 $11 $11
	ld   de, $1511                                   ; $5b07: $11 $11 $15
	inc  [hl]                                        ; $5b0a: $34
	sbc  a                                           ; $5b0b: $9f
	rst  $38                                         ; $5b0c: $ff
	rst  $38                                         ; $5b0d: $ff
	rst  $38                                         ; $5b0e: $ff
	rst  $38                                         ; $5b0f: $ff
	rst  $38                                         ; $5b10: $ff
	rst  $38                                         ; $5b11: $ff
	ld   sp, hl                                      ; $5b12: $f9
	ld   hl, $1111                                   ; $5b13: $21 $11 $11
	ld   de, $1111                                   ; $5b16: $11 $11 $11
	inc  de                                          ; $5b19: $13
	ld   b, l                                        ; $5b1a: $45
	cp   a                                           ; $5b1b: $bf
	rst  $38                                         ; $5b1c: $ff
	rst  $38                                         ; $5b1d: $ff

jr_0d7_5b1e:
	rst  $38                                         ; $5b1e: $ff
	rst  $38                                         ; $5b1f: $ff
	rst  $38                                         ; $5b20: $ff
	rst  $38                                         ; $5b21: $ff
	reti                                             ; $5b22: $d9


	ld   sp, $1111                                   ; $5b23: $31 $11 $11
	ld   de, $1111                                   ; $5b26: $11 $11 $11
	inc  d                                           ; $5b29: $14
	ld   l, b                                        ; $5b2a: $68
	cp   a                                           ; $5b2b: $bf
	rst  $38                                         ; $5b2c: $ff
	rst  $38                                         ; $5b2d: $ff
	rst  $38                                         ; $5b2e: $ff
	rst  $38                                         ; $5b2f: $ff
	rst  $38                                         ; $5b30: $ff
	cp   $a6                                         ; $5b31: $fe $a6
	ld   hl, $1111                                   ; $5b33: $21 $11 $11
	ld   de, $1111                                   ; $5b36: $11 $11 $11
	add  hl, de                                      ; $5b39: $19
	xor  c                                           ; $5b3a: $a9
	rst  JumpTable                                         ; $5b3b: $df
	rst  $38                                         ; $5b3c: $ff
	rst  $38                                         ; $5b3d: $ff
	rst  $38                                         ; $5b3e: $ff
	rst  $38                                         ; $5b3f: $ff
	rst  $38                                         ; $5b40: $ff
	ld   sp, hl                                      ; $5b41: $f9
	ld   d, d                                        ; $5b42: $52
	ld   de, $1111                                   ; $5b43: $11 $11 $11
	ld   de, $1111                                   ; $5b46: $11 $11 $11
	ld   a, h                                        ; $5b49: $7c
	rst  $28                                         ; $5b4a: $ef
	rst  $38                                         ; $5b4b: $ff
	rst  $38                                         ; $5b4c: $ff
	rst  $38                                         ; $5b4d: $ff
	rst  $38                                         ; $5b4e: $ff
	rst  $38                                         ; $5b4f: $ff
	cp   $82                                         ; $5b50: $fe $82
	ld   de, $1111                                   ; $5b52: $11 $11 $11
	ld   de, $1111                                   ; $5b55: $11 $11 $11
	ld   c, d                                        ; $5b58: $4a
	rst  $28                                         ; $5b59: $ef
	rst  $38                                         ; $5b5a: $ff
	rst  $38                                         ; $5b5b: $ff
	rst  $38                                         ; $5b5c: $ff
	rst  $38                                         ; $5b5d: $ff
	rst  $38                                         ; $5b5e: $ff
	rst  $38                                         ; $5b5f: $ff
	and  h                                           ; $5b60: $a4
	ld   de, $1111                                   ; $5b61: $11 $11 $11
	ld   de, $1111                                   ; $5b64: $11 $11 $11
	ld   a, [hl-]                                    ; $5b67: $3a
	rst  JumpTable                                         ; $5b68: $df
	rst  $38                                         ; $5b69: $ff
	rst  $38                                         ; $5b6a: $ff
	rst  $38                                         ; $5b6b: $ff
	rst  $38                                         ; $5b6c: $ff
	rst  $38                                         ; $5b6d: $ff
	rst  $38                                         ; $5b6e: $ff
	or   h                                           ; $5b6f: $b4
	ld   de, $1111                                   ; $5b70: $11 $11 $11
	ld   de, $1111                                   ; $5b73: $11 $11 $11
	ld   c, e                                        ; $5b76: $4b
	rst  JumpTable                                         ; $5b77: $df
	rst  $38                                         ; $5b78: $ff
	rst  $38                                         ; $5b79: $ff
	rst  $38                                         ; $5b7a: $ff
	rst  $38                                         ; $5b7b: $ff
	rst  $38                                         ; $5b7c: $ff
	rst  $38                                         ; $5b7d: $ff
	sub  e                                           ; $5b7e: $93
	ld   de, $1111                                   ; $5b7f: $11 $11 $11
	ld   de, $1111                                   ; $5b82: $11 $11 $11
	ld   a, e                                        ; $5b85: $7b
	rst  $28                                         ; $5b86: $ef
	rst  $38                                         ; $5b87: $ff
	rst  $38                                         ; $5b88: $ff
	rst  $38                                         ; $5b89: $ff
	rst  $38                                         ; $5b8a: $ff
	rst  $38                                         ; $5b8b: $ff
	db   $fc                                         ; $5b8c: $fc
	ld   h, c                                        ; $5b8d: $61
	ld   de, $1111                                   ; $5b8e: $11 $11 $11
	ld   de, $1211                                   ; $5b91: $11 $11 $12
	xor  a                                           ; $5b94: $af
	rst  $38                                         ; $5b95: $ff
	rst  $38                                         ; $5b96: $ff
	rst  $38                                         ; $5b97: $ff
	rst  $38                                         ; $5b98: $ff
	rst  $38                                         ; $5b99: $ff
	rst  $38                                         ; $5b9a: $ff
	ld   sp, hl                                      ; $5b9b: $f9
	ld   hl, $1111                                   ; $5b9c: $21 $11 $11
	ld   de, $1111                                   ; $5b9f: $11 $11 $11
	jr   @-$1f                                       ; $5ba2: $18 $df

	rst  $38                                         ; $5ba4: $ff
	rst  $38                                         ; $5ba5: $ff
	rst  $38                                         ; $5ba6: $ff
	rst  $38                                         ; $5ba7: $ff
	rst  $38                                         ; $5ba8: $ff
	rst  $38                                         ; $5ba9: $ff
	or   l                                           ; $5baa: $b5
	ld   de, $1111                                   ; $5bab: $11 $11 $11
	ld   de, $1111                                   ; $5bae: $11 $11 $11
	ld   e, e                                        ; $5bb1: $5b
	rst  JumpTable                                         ; $5bb2: $df
	rst  $38                                         ; $5bb3: $ff
	rst  $38                                         ; $5bb4: $ff
	rst  $38                                         ; $5bb5: $ff
	rst  $38                                         ; $5bb6: $ff
	rst  $38                                         ; $5bb7: $ff
	db   $fd                                         ; $5bb8: $fd
	ld   h, c                                        ; $5bb9: $61
	ld   de, $1111                                   ; $5bba: $11 $11 $11
	ld   de, $1411                                   ; $5bbd: $11 $11 $14
	ld   a, h                                        ; $5bc0: $7c
	rst  $38                                         ; $5bc1: $ff
	rst  $38                                         ; $5bc2: $ff
	rst  $38                                         ; $5bc3: $ff
	rst  $38                                         ; $5bc4: $ff
	rst  $38                                         ; $5bc5: $ff
	rst  $38                                         ; $5bc6: $ff
	ld   [$1161], a                                  ; $5bc7: $ea $61 $11
	ld   de, $1111                                   ; $5bca: $11 $11 $11
	ld   de, $df15                                   ; $5bcd: $11 $15 $df
	rst  $38                                         ; $5bd0: $ff
	rst  $38                                         ; $5bd1: $ff
	rst  $38                                         ; $5bd2: $ff
	rst  $38                                         ; $5bd3: $ff
	rst  $38                                         ; $5bd4: $ff
	rst  $38                                         ; $5bd5: $ff
	db   $db                                         ; $5bd6: $db
	ld   de, $1111                                   ; $5bd7: $11 $11 $11
	ld   de, $1111                                   ; $5bda: $11 $11 $11
	ld   e, a                                        ; $5bdd: $5f
	and  l                                           ; $5bde: $a5
	rst  $38                                         ; $5bdf: $ff
	rst  $38                                         ; $5be0: $ff
	rst  $38                                         ; $5be1: $ff
	rst  $38                                         ; $5be2: $ff
	ei                                               ; $5be3: $fb
	rst  $38                                         ; $5be4: $ff
	or   c                                           ; $5be5: $b1
	dec  d                                           ; $5be6: $15
	ld   hl, $1111                                   ; $5be7: $21 $11 $11
	ld   de, $1645                                   ; $5bea: $11 $45 $16
	ld   [hl], a                                     ; $5bed: $77
	xor  $af                                         ; $5bee: $ee $af
	rst  $38                                         ; $5bf0: $ff
	rst  $38                                         ; $5bf1: $ff
	rst  $38                                         ; $5bf2: $ff
	db   $fc                                         ; $5bf3: $fc
	cp   e                                           ; $5bf4: $bb
	or   a                                           ; $5bf5: $b7
	dec  [hl]                                        ; $5bf6: $35
	ld   sp, $2472                                   ; $5bf7: $31 $72 $24
	dec  [hl]                                        ; $5bfa: $35
	ld   h, l                                        ; $5bfb: $65
	daa                                              ; $5bfc: $27
	ld   [hl], l                                     ; $5bfd: $75
	ld   h, [hl]                                     ; $5bfe: $66
	ld   l, b                                        ; $5bff: $68
	cp   c                                           ; $5c00: $b9
	xor  l                                           ; $5c01: $ad
	db   $ed                                         ; $5c02: $ed
	cp   [hl]                                        ; $5c03: $be
	db   $ec                                         ; $5c04: $ec
	db   $db                                         ; $5c05: $db
	adc  d                                           ; $5c06: $8a
	and  a                                           ; $5c07: $a7
	adc  b                                           ; $5c08: $88
	ld   a, b                                        ; $5c09: $78
	ld   h, h                                        ; $5c0a: $64
	ld   d, h                                        ; $5c0b: $54
	ld   d, [hl]                                     ; $5c0c: $56
	ld   [de], a                                     ; $5c0d: $12
	ld   h, e                                        ; $5c0e: $63
	inc  hl                                          ; $5c0f: $23
	dec  [hl]                                        ; $5c10: $35
	ld   a, b                                        ; $5c11: $78
	sbc  d                                           ; $5c12: $9a
	rst  $28                                         ; $5c13: $ef
	db   $ed                                         ; $5c14: $ed
	rst  $28                                         ; $5c15: $ef
	cp   $cb                                         ; $5c16: $fe $cb
	res  1, c                                        ; $5c18: $cb $89
	sub  [hl]                                        ; $5c1a: $96
	sub  l                                           ; $5c1b: $95
	inc  de                                          ; $5c1c: $13
	ld   [de], a                                     ; $5c1d: $12
	ld   hl, $0212                                   ; $5c1e: $21 $12 $02
	ld   [hl+], a                                    ; $5c21: $22
	ld   l, d                                        ; $5c22: $6a
	cp   h                                           ; $5c23: $bc
	rst  $28                                         ; $5c24: $ef
	rst  $38                                         ; $5c25: $ff
	rst  $38                                         ; $5c26: $ff
	rst  $38                                         ; $5c27: $ff
	db   $fc                                         ; $5c28: $fc
	xor  e                                           ; $5c29: $ab
	sub  l                                           ; $5c2a: $95
	ld   d, e                                        ; $5c2b: $53
	inc  de                                          ; $5c2c: $13
	ld   de, $1111                                   ; $5c2d: $11 $11 $11
	inc  de                                          ; $5c30: $13
	dec  [hl]                                        ; $5c31: $35
	ld   h, [hl]                                     ; $5c32: $66
	sbc  [hl]                                        ; $5c33: $9e
	rst  $38                                         ; $5c34: $ff
	rst  $38                                         ; $5c35: $ff
	rst  $38                                         ; $5c36: $ff
	rst  $38                                         ; $5c37: $ff
	rst  $38                                         ; $5c38: $ff
	add  sp, $57                                     ; $5c39: $e8 $57
	ld   hl, $1111                                   ; $5c3b: $21 $11 $11
	ld   de, $1611                                   ; $5c3e: $11 $11 $16
	ld   d, [hl]                                     ; $5c41: $56
	xor  h                                           ; $5c42: $ac
	rst  JumpTable                                         ; $5c43: $df
	rst  $38                                         ; $5c44: $ff
	rst  $38                                         ; $5c45: $ff
	rst  $38                                         ; $5c46: $ff
	rst  $38                                         ; $5c47: $ff
	rst  $38                                         ; $5c48: $ff
	cp   b                                           ; $5c49: $b8
	ld   b, e                                        ; $5c4a: $43
	ld   de, $1111                                   ; $5c4b: $11 $11 $11
	ld   de, $3911                                   ; $5c4e: $11 $11 $39
	adc  b                                           ; $5c51: $88
	cp   [hl]                                        ; $5c52: $be
	rst  $38                                         ; $5c53: $ff
	rst  $38                                         ; $5c54: $ff
	rst  $38                                         ; $5c55: $ff
	rst  $38                                         ; $5c56: $ff
	rst  $38                                         ; $5c57: $ff
	db   $fc                                         ; $5c58: $fc
	add  l                                           ; $5c59: $85
	ld   sp, $1111                                   ; $5c5a: $31 $11 $11
	ld   de, $1111                                   ; $5c5d: $11 $11 $11
	ld   a, c                                        ; $5c60: $79
	xor  [hl]                                        ; $5c61: $ae
	xor  $ff                                         ; $5c62: $ee $ff
	rst  $38                                         ; $5c64: $ff
	rst  $38                                         ; $5c65: $ff
	rst  $38                                         ; $5c66: $ff
	db   $ec                                         ; $5c67: $ec
	jp   z, $1151                                    ; $5c68: $ca $51 $11

	ld   de, $1111                                   ; $5c6b: $11 $11 $11
	ld   b, c                                        ; $5c6e: $41
	ld   a, [de]                                     ; $5c6f: $1a
	sbc  d                                           ; $5c70: $9a
	cp   $af                                         ; $5c71: $fe $af
	rst  $38                                         ; $5c73: $ff
	rst  $38                                         ; $5c74: $ff
	rst  $38                                         ; $5c75: $ff
	cp   $ba                                         ; $5c76: $fe $ba
	sub  [hl]                                        ; $5c78: $96
	ld   de, $1111                                   ; $5c79: $11 $11 $11
	ld   de, $1311                                   ; $5c7c: $11 $11 $13
	ld   a, b                                        ; $5c7f: $78
	rst  $38                                         ; $5c80: $ff
	sbc  $ff                                         ; $5c81: $de $ff
	rst  $38                                         ; $5c83: $ff
	rst  $38                                         ; $5c84: $ff
	rst  $38                                         ; $5c85: $ff
	cp   d                                           ; $5c86: $ba
	and  l                                           ; $5c87: $a5
	ld   hl, $1111                                   ; $5c88: $21 $11 $11
	ld   de, $1113                                   ; $5c8b: $11 $13 $11
	and  a                                           ; $5c8e: $a7
	rst  $28                                         ; $5c8f: $ef
	xor  $ff                                         ; $5c90: $ee $ff
	rst  $38                                         ; $5c92: $ff
	rst  $38                                         ; $5c93: $ff
	rst  $38                                         ; $5c94: $ff
	jp   z, $1196                                    ; $5c95: $ca $96 $11

	ld   de, $1111                                   ; $5c98: $11 $11 $11
	inc  hl                                          ; $5c9b: $23
	ld   de, $ffcb                                   ; $5c9c: $11 $cb $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c9f: $cf
	rst  $38                                         ; $5ca0: $ff
	rst  $38                                         ; $5ca1: $ff
	rst  $38                                         ; $5ca2: $ff
	rst  $38                                         ; $5ca3: $ff
	sbc  c                                           ; $5ca4: $99
	and  l                                           ; $5ca5: $a5
	ld   de, $1111                                   ; $5ca6: $11 $11 $11
	ld   de, $1551                                   ; $5ca9: $11 $51 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cac: $cf
	rst  $38                                         ; $5cad: $ff
	rst  JumpTable                                         ; $5cae: $df
	rst  $38                                         ; $5caf: $ff
	rst  $38                                         ; $5cb0: $ff
	rst  $38                                         ; $5cb1: $ff
	db   $fd                                         ; $5cb2: $fd
	ld   h, l                                        ; $5cb3: $65
	ld   h, c                                        ; $5cb4: $61
	ld   de, $1111                                   ; $5cb5: $11 $11 $11
	ld   de, $bc11                                   ; $5cb8: $11 $11 $bc
	rst  $38                                         ; $5cbb: $ff
	rst  $38                                         ; $5cbc: $ff
	rst  $38                                         ; $5cbd: $ff
	rst  $38                                         ; $5cbe: $ff
	rst  $38                                         ; $5cbf: $ff
	rst  $38                                         ; $5cc0: $ff
	or   a                                           ; $5cc1: $b7
	ld   b, c                                        ; $5cc2: $41
	ld   de, $1111                                   ; $5cc3: $11 $11 $11
	ld   de, $6e11                                   ; $5cc6: $11 $11 $6e
	rst  $38                                         ; $5cc9: $ff
	rst  $38                                         ; $5cca: $ff
	rst  $38                                         ; $5ccb: $ff
	rst  $38                                         ; $5ccc: $ff
	rst  $38                                         ; $5ccd: $ff
	rst  $38                                         ; $5cce: $ff
	reti                                             ; $5ccf: $d9


	ld   d, c                                        ; $5cd0: $51
	ld   de, $1111                                   ; $5cd1: $11 $11 $11
	ld   de, $3b11                                   ; $5cd4: $11 $11 $3b
	rst  $38                                         ; $5cd7: $ff
	rst  $38                                         ; $5cd8: $ff
	rst  $38                                         ; $5cd9: $ff
	rst  $38                                         ; $5cda: $ff
	rst  $38                                         ; $5cdb: $ff
	rst  $38                                         ; $5cdc: $ff
	add  sp, $31                                     ; $5cdd: $e8 $31
	ld   de, $1111                                   ; $5cdf: $11 $11 $11
	ld   de, $7f11                                   ; $5ce2: $11 $11 $7f
	rst  $38                                         ; $5ce5: $ff
	rst  $38                                         ; $5ce6: $ff
	rst  $38                                         ; $5ce7: $ff
	rst  $38                                         ; $5ce8: $ff
	rst  $38                                         ; $5ce9: $ff
	rst  $38                                         ; $5cea: $ff
	rst  $10                                         ; $5ceb: $d7
	ld   sp, $1111                                   ; $5cec: $31 $11 $11
	ld   de, $1111                                   ; $5cef: $11 $11 $11
	xor  $ff                                         ; $5cf2: $ee $ff
	rst  $38                                         ; $5cf4: $ff
	rst  $38                                         ; $5cf5: $ff
	rst  $38                                         ; $5cf6: $ff
	rst  $38                                         ; $5cf7: $ff
	rst  $38                                         ; $5cf8: $ff
	or   [hl]                                        ; $5cf9: $b6
	ld   de, $1111                                   ; $5cfa: $11 $11 $11
	ld   de, $1711                                   ; $5cfd: $11 $11 $17
	rst  $38                                         ; $5d00: $ff
	rst  $38                                         ; $5d01: $ff
	rst  $38                                         ; $5d02: $ff
	rst  $38                                         ; $5d03: $ff
	rst  $38                                         ; $5d04: $ff
	rst  $38                                         ; $5d05: $ff
	db   $fd                                         ; $5d06: $fd
	ld   h, c                                        ; $5d07: $61
	ld   de, $1111                                   ; $5d08: $11 $11 $11
	ld   de, $4f11                                   ; $5d0b: $11 $11 $4f
	rst  $38                                         ; $5d0e: $ff
	rst  $38                                         ; $5d0f: $ff
	rst  $38                                         ; $5d10: $ff
	rst  $38                                         ; $5d11: $ff
	rst  $38                                         ; $5d12: $ff
	rst  $38                                         ; $5d13: $ff
	ld   hl, sp+$21                                  ; $5d14: $f8 $21
	ld   de, $1111                                   ; $5d16: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $5d19: $11 $14 $ff
	rst  $38                                         ; $5d1c: $ff
	rst  $38                                         ; $5d1d: $ff
	rst  $38                                         ; $5d1e: $ff
	rst  $38                                         ; $5d1f: $ff
	rst  $38                                         ; $5d20: $ff
	rst  $38                                         ; $5d21: $ff
	sub  d                                           ; $5d22: $92
	ld   de, $1111                                   ; $5d23: $11 $11 $11
	ld   de, $6e11                                   ; $5d26: $11 $11 $6e
	rst  $38                                         ; $5d29: $ff
	rst  $38                                         ; $5d2a: $ff
	rst  $38                                         ; $5d2b: $ff
	rst  $38                                         ; $5d2c: $ff
	rst  $38                                         ; $5d2d: $ff
	rst  $38                                         ; $5d2e: $ff
	add  sp, $21                                     ; $5d2f: $e8 $21
	ld   de, $1111                                   ; $5d31: $11 $11 $11
	ld   de, $ff17                                   ; $5d34: $11 $17 $ff
	rst  $38                                         ; $5d37: $ff
	rst  $38                                         ; $5d38: $ff
	rst  $38                                         ; $5d39: $ff
	rst  $38                                         ; $5d3a: $ff
	rst  $38                                         ; $5d3b: $ff
	db   $fd                                         ; $5d3c: $fd
	ld   d, c                                        ; $5d3d: $51
	ld   de, $1111                                   ; $5d3e: $11 $11 $11
	ld   de, $de11                                   ; $5d41: $11 $11 $de
	rst  $38                                         ; $5d44: $ff
	rst  $38                                         ; $5d45: $ff
	rst  $38                                         ; $5d46: $ff
	rst  $38                                         ; $5d47: $ff
	rst  $38                                         ; $5d48: $ff
	rst  $38                                         ; $5d49: $ff
	or   d                                           ; $5d4a: $b2
	ld   de, $1111                                   ; $5d4b: $11 $11 $11
	ld   de, $8f11                                   ; $5d4e: $11 $11 $8f
	rst  $38                                         ; $5d51: $ff
	rst  $38                                         ; $5d52: $ff
	rst  $38                                         ; $5d53: $ff
	rst  $38                                         ; $5d54: $ff
	rst  $38                                         ; $5d55: $ff
	rst  $38                                         ; $5d56: $ff
	and  $11                                         ; $5d57: $e6 $11
	ld   de, $1111                                   ; $5d59: $11 $11 $11
	ld   de, $ff2d                                   ; $5d5c: $11 $2d $ff
	rst  $38                                         ; $5d5f: $ff
	rst  $38                                         ; $5d60: $ff
	rst  $38                                         ; $5d61: $ff
	rst  $38                                         ; $5d62: $ff
	rst  $38                                         ; $5d63: $ff
	ld   sp, hl                                      ; $5d64: $f9
	ld   hl, $1111                                   ; $5d65: $21 $11 $11
	ld   de, $1911                                   ; $5d68: $11 $11 $19
	rst  JumpTable                                         ; $5d6b: $df
	rst  $38                                         ; $5d6c: $ff
	rst  $38                                         ; $5d6d: $ff
	rst  $38                                         ; $5d6e: $ff
	rst  $38                                         ; $5d6f: $ff
	rst  $38                                         ; $5d70: $ff
	ei                                               ; $5d71: $fb
	ld   b, c                                        ; $5d72: $41
	ld   de, $1111                                   ; $5d73: $11 $11 $11
	ld   de, $cf14                                   ; $5d76: $11 $14 $cf
	rst  $38                                         ; $5d79: $ff
	rst  $38                                         ; $5d7a: $ff
	rst  $38                                         ; $5d7b: $ff
	rst  $38                                         ; $5d7c: $ff
	rst  $38                                         ; $5d7d: $ff
	rst  $38                                         ; $5d7e: $ff
	ld   h, c                                        ; $5d7f: $61
	ld   de, $1111                                   ; $5d80: $11 $11 $11
	ld   de, $af11                                   ; $5d83: $11 $11 $af
	rst  $38                                         ; $5d86: $ff
	rst  $38                                         ; $5d87: $ff
	rst  $38                                         ; $5d88: $ff
	rst  $38                                         ; $5d89: $ff
	rst  $38                                         ; $5d8a: $ff
	rst  $38                                         ; $5d8b: $ff
	and  e                                           ; $5d8c: $a3
	ld   de, $1111                                   ; $5d8d: $11 $11 $11
	ld   de, $7b11                                   ; $5d90: $11 $11 $7b
	rst  $38                                         ; $5d93: $ff
	rst  $38                                         ; $5d94: $ff
	rst  $38                                         ; $5d95: $ff
	rst  $38                                         ; $5d96: $ff
	rst  $38                                         ; $5d97: $ff
	rst  $38                                         ; $5d98: $ff
	push de                                          ; $5d99: $d5
	ld   de, $1111                                   ; $5d9a: $11 $11 $11
	ld   de, $3b11                                   ; $5d9d: $11 $11 $3b
	rst  $28                                         ; $5da0: $ef
	rst  $38                                         ; $5da1: $ff
	rst  $38                                         ; $5da2: $ff
	rst  $38                                         ; $5da3: $ff
	rst  $38                                         ; $5da4: $ff
	rst  $38                                         ; $5da5: $ff
	ld   hl, sp+$21                                  ; $5da6: $f8 $21
	ld   de, $1111                                   ; $5da8: $11 $11 $11
	ld   de, $bf17                                   ; $5dab: $11 $17 $bf
	rst  $38                                         ; $5dae: $ff
	rst  $38                                         ; $5daf: $ff
	rst  $38                                         ; $5db0: $ff
	rst  $38                                         ; $5db1: $ff
	rst  $38                                         ; $5db2: $ff
	db   $fd                                         ; $5db3: $fd
	ld   d, c                                        ; $5db4: $51
	ld   de, $1111                                   ; $5db5: $11 $11 $11
	ld   de, $7e16                                   ; $5db8: $11 $16 $7e
	rst  $38                                         ; $5dbb: $ff
	rst  $38                                         ; $5dbc: $ff
	rst  $38                                         ; $5dbd: $ff
	rst  $38                                         ; $5dbe: $ff
	rst  $38                                         ; $5dbf: $ff
	rst  $38                                         ; $5dc0: $ff
	and  e                                           ; $5dc1: $a3
	ld   de, $1111                                   ; $5dc2: $11 $11 $11
	ld   de, $4811                                   ; $5dc5: $11 $11 $48
	rst  $38                                         ; $5dc8: $ff
	rst  $38                                         ; $5dc9: $ff
	rst  $38                                         ; $5dca: $ff
	rst  $38                                         ; $5dcb: $ff
	rst  $38                                         ; $5dcc: $ff
	rst  $38                                         ; $5dcd: $ff
	rst  $30                                         ; $5dce: $f7
	ld   de, $1111                                   ; $5dcf: $11 $11 $11
	ld   de, $2411                                   ; $5dd2: $11 $11 $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dd5: $cf
	rst  $38                                         ; $5dd6: $ff
	rst  $38                                         ; $5dd7: $ff
	rst  $38                                         ; $5dd8: $ff
	rst  $38                                         ; $5dd9: $ff
	rst  $38                                         ; $5dda: $ff
	db   $fd                                         ; $5ddb: $fd
	ld   h, c                                        ; $5ddc: $61
	ld   de, $1111                                   ; $5ddd: $11 $11 $11
	ld   de, $5c13                                   ; $5de0: $11 $13 $5c
	rst  $38                                         ; $5de3: $ff
	rst  $38                                         ; $5de4: $ff
	rst  $38                                         ; $5de5: $ff
	rst  $38                                         ; $5de6: $ff
	rst  $38                                         ; $5de7: $ff
	rst  $38                                         ; $5de8: $ff
	rst  $10                                         ; $5de9: $d7
	ld   de, $1111                                   ; $5dea: $11 $11 $11
	ld   de, $2411                                   ; $5ded: $11 $11 $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5df0: $cf
	rst  $38                                         ; $5df1: $ff
	rst  $38                                         ; $5df2: $ff
	rst  $38                                         ; $5df3: $ff
	rst  $38                                         ; $5df4: $ff
	rst  $38                                         ; $5df5: $ff
	db   $fd                                         ; $5df6: $fd
	sub  c                                           ; $5df7: $91
	ld   de, $1111                                   ; $5df8: $11 $11 $11
	ld   de, $3812                                   ; $5dfb: $11 $12 $38
	rst  $28                                         ; $5dfe: $ef
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	rst  $38                                         ; $5e01: $ff
	rst  $38                                         ; $5e02: $ff
	rst  $38                                         ; $5e03: $ff
	db   $fc                                         ; $5e04: $fc
	ld   h, c                                        ; $5e05: $61
	ld   de, $1111                                   ; $5e06: $11 $11 $11
	ld   de, $4712                                   ; $5e09: $11 $12 $47
	cp   a                                           ; $5e0c: $bf
	rst  $38                                         ; $5e0d: $ff
	rst  $38                                         ; $5e0e: $ff
	rst  $38                                         ; $5e0f: $ff
	rst  $38                                         ; $5e10: $ff
	rst  $38                                         ; $5e11: $ff
	db   $eb                                         ; $5e12: $eb
	ld   [hl], d                                     ; $5e13: $72
	ld   de, $1111                                   ; $5e14: $11 $11 $11
	ld   de, $2511                                   ; $5e17: $11 $11 $25
	ld   l, d                                        ; $5e1a: $6a
	sbc  $ff                                         ; $5e1b: $de $ff
	rst  $38                                         ; $5e1d: $ff
	rst  $38                                         ; $5e1e: $ff
	rst  $38                                         ; $5e1f: $ff
	db   $fd                                         ; $5e20: $fd
	bit  6, l                                        ; $5e21: $cb $75
	ld   [hl+], a                                    ; $5e23: $22
	ld   de, $1111                                   ; $5e24: $11 $11 $11
	ld   de, $5823                                   ; $5e27: $11 $23 $58
	adc  c                                           ; $5e2a: $89
	adc  $ff                                         ; $5e2b: $ce $ff
	rst  $38                                         ; $5e2d: $ff
	rst  $38                                         ; $5e2e: $ff
	rst  $38                                         ; $5e2f: $ff
	db   $eb                                         ; $5e30: $eb
	xor  b                                           ; $5e31: $a8
	ld   h, l                                        ; $5e32: $65
	ld   sp, $1122                                   ; $5e33: $31 $22 $11
	ld   de, $1311                                   ; $5e36: $11 $11 $13
	ld   d, a                                        ; $5e39: $57
	adc  d                                           ; $5e3a: $8a
	adc  $ff                                         ; $5e3b: $ce $ff
	rst  $38                                         ; $5e3d: $ff
	rst  $38                                         ; $5e3e: $ff
	cp   $db                                         ; $5e3f: $fe $db
	sbc  b                                           ; $5e41: $98
	ld   [hl], l                                     ; $5e42: $75
	ld   [hl-], a                                    ; $5e43: $32
	ld   hl, $1111                                   ; $5e44: $21 $11 $11
	ld   de, $5713                                   ; $5e47: $11 $13 $57
	xor  h                                           ; $5e4a: $ac
	rst  JumpTable                                         ; $5e4b: $df
	rst  $38                                         ; $5e4c: $ff
	rst  $38                                         ; $5e4d: $ff
	rst  $38                                         ; $5e4e: $ff
	rst  $38                                         ; $5e4f: $ff
	db   $db                                         ; $5e50: $db
	xor  c                                           ; $5e51: $a9
	ld   h, l                                        ; $5e52: $65
	ld   [hl-], a                                    ; $5e53: $32
	ld   de, $1111                                   ; $5e54: $11 $11 $11
	ld   de, $5713                                   ; $5e57: $11 $13 $57
	sbc  e                                           ; $5e5a: $9b
	rst  JumpTable                                         ; $5e5b: $df
	rst  $38                                         ; $5e5c: $ff
	rst  $38                                         ; $5e5d: $ff
	rst  $38                                         ; $5e5e: $ff
	cp   $cb                                         ; $5e5f: $fe $cb
	xor  b                                           ; $5e61: $a8
	ld   h, l                                        ; $5e62: $65
	ld   [hl-], a                                    ; $5e63: $32
	ld   de, $1111                                   ; $5e64: $11 $11 $11
	ld   de, $4612                                   ; $5e67: $11 $12 $46
	sbc  e                                           ; $5e6a: $9b
	rst  JumpTable                                         ; $5e6b: $df
	rst  $38                                         ; $5e6c: $ff
	rst  $38                                         ; $5e6d: $ff
	rst  $38                                         ; $5e6e: $ff
	rst  $38                                         ; $5e6f: $ff
	db   $ec                                         ; $5e70: $ec
	xor  d                                           ; $5e71: $aa
	sub  a                                           ; $5e72: $97
	ld   d, e                                        ; $5e73: $53
	ld   [hl+], a                                    ; $5e74: $22
	ld   hl, $1111                                   ; $5e75: $21 $11 $11
	ld   de, $6924                                   ; $5e78: $11 $24 $69
	cp   l                                           ; $5e7b: $bd
	rst  $38                                         ; $5e7c: $ff
	rst  $38                                         ; $5e7d: $ff
	rst  $38                                         ; $5e7e: $ff
	rst  $38                                         ; $5e7f: $ff
	rst  $38                                         ; $5e80: $ff
	res  4, a                                        ; $5e81: $cb $a7
	ld   d, h                                        ; $5e83: $54
	ld   hl, $1111                                   ; $5e84: $21 $11 $11
	ld   de, $1211                                   ; $5e87: $11 $11 $12
	ld   b, [hl]                                     ; $5e8a: $46
	sbc  h                                           ; $5e8b: $9c
	rst  $28                                         ; $5e8c: $ef
	rst  $38                                         ; $5e8d: $ff
	rst  $38                                         ; $5e8e: $ff
	rst  $38                                         ; $5e8f: $ff
	rst  $38                                         ; $5e90: $ff
	db   $ec                                         ; $5e91: $ec
	xor  c                                           ; $5e92: $a9
	ld   [hl], l                                     ; $5e93: $75
	ld   sp, $1111                                   ; $5e94: $31 $11 $11
	ld   de, $1111                                   ; $5e97: $11 $11 $11
	inc  h                                           ; $5e9a: $24
	ld   a, e                                        ; $5e9b: $7b
	rst  JumpTable                                         ; $5e9c: $df
	rst  $38                                         ; $5e9d: $ff
	rst  $38                                         ; $5e9e: $ff
	rst  $38                                         ; $5e9f: $ff
	rst  $38                                         ; $5ea0: $ff
	cp   $db                                         ; $5ea1: $fe $db
	add  a                                           ; $5ea3: $87
	ld   d, d                                        ; $5ea4: $52
	ld   de, $1111                                   ; $5ea5: $11 $11 $11
	ld   de, $1211                                   ; $5ea8: $11 $11 $12
	ld   c, b                                        ; $5eab: $48
	cp   [hl]                                        ; $5eac: $be
	rst  $38                                         ; $5ead: $ff
	rst  $38                                         ; $5eae: $ff
	rst  $38                                         ; $5eaf: $ff
	rst  $38                                         ; $5eb0: $ff
	rst  $38                                         ; $5eb1: $ff
	db   $ed                                         ; $5eb2: $ed
	cp   b                                           ; $5eb3: $b8
	ld   h, h                                        ; $5eb4: $64
	ld   de, $1111                                   ; $5eb5: $11 $11 $11
	ld   de, $1211                                   ; $5eb8: $11 $11 $12
	ld   [hl], $9c                                   ; $5ebb: $36 $9c
	rst  $38                                         ; $5ebd: $ff
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	rst  $38                                         ; $5ec1: $ff
	cp   $c9                                         ; $5ec2: $fe $c9
	ld   [hl], l                                     ; $5ec4: $75
	ld   sp, $1111                                   ; $5ec5: $31 $11 $11
	ld   de, $1111                                   ; $5ec8: $11 $11 $11
	inc  h                                           ; $5ecb: $24
	ld   l, c                                        ; $5ecc: $69
	cp   [hl]                                        ; $5ecd: $be
	rst  $38                                         ; $5ece: $ff
	rst  $38                                         ; $5ecf: $ff
	rst  $38                                         ; $5ed0: $ff
	rst  $38                                         ; $5ed1: $ff
	rst  $38                                         ; $5ed2: $ff
	call c, $64a8                                    ; $5ed3: $dc $a8 $64
	ld   hl, $1111                                   ; $5ed6: $21 $11 $11
	ld   de, $1111                                   ; $5ed9: $11 $11 $11
	dec  [hl]                                        ; $5edc: $35
	ld   a, e                                        ; $5edd: $7b
	rst  JumpTable                                         ; $5ede: $df
	rst  $38                                         ; $5edf: $ff
	rst  $38                                         ; $5ee0: $ff
	rst  $38                                         ; $5ee1: $ff
	rst  $38                                         ; $5ee2: $ff
	rst  $38                                         ; $5ee3: $ff
	res  4, a                                        ; $5ee4: $cb $a7
	ld   d, e                                        ; $5ee6: $53
	ld   de, $1111                                   ; $5ee7: $11 $11 $11
	ld   de, $1211                                   ; $5eea: $11 $11 $12
	ld   b, [hl]                                     ; $5eed: $46
	sbc  h                                           ; $5eee: $9c
	rst  $28                                         ; $5eef: $ef
	rst  $38                                         ; $5ef0: $ff
	rst  $38                                         ; $5ef1: $ff
	rst  $38                                         ; $5ef2: $ff
	rst  $38                                         ; $5ef3: $ff
	cp   $cb                                         ; $5ef4: $fe $cb
	add  [hl]                                        ; $5ef6: $86
	ld   b, d                                        ; $5ef7: $42
	ld   de, $1111                                   ; $5ef8: $11 $11 $11
	ld   de, $1311                                   ; $5efb: $11 $11 $13
	ld   d, a                                        ; $5efe: $57
	xor  [hl]                                        ; $5eff: $ae
	rst  $38                                         ; $5f00: $ff
	rst  $38                                         ; $5f01: $ff
	rst  $38                                         ; $5f02: $ff
	rst  $38                                         ; $5f03: $ff
	rst  $38                                         ; $5f04: $ff
	db   $fd                                         ; $5f05: $fd
	xor  d                                           ; $5f06: $aa
	ld   [hl], l                                     ; $5f07: $75
	ld   sp, $1111                                   ; $5f08: $31 $11 $11
	ld   de, $1111                                   ; $5f0b: $11 $11 $11
	dec  h                                           ; $5f0e: $25
	ld   a, c                                        ; $5f0f: $79
	xor  [hl]                                        ; $5f10: $ae
	rst  $38                                         ; $5f11: $ff
	rst  $38                                         ; $5f12: $ff
	rst  $38                                         ; $5f13: $ff
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	jp   c, Jump_0d7_52a7                            ; $5f16: $da $a7 $52

	ld   de, $1111                                   ; $5f19: $11 $11 $11
	ld   de, $1711                                   ; $5f1c: $11 $11 $17
	adc  $ff                                         ; $5f1f: $ce $ff
	rst  $38                                         ; $5f21: $ff
	rst  $38                                         ; $5f22: $ff
	rst  $38                                         ; $5f23: $ff
	rst  $38                                         ; $5f24: $ff
	db   $fd                                         ; $5f25: $fd
	sub  l                                           ; $5f26: $95
	ld   b, e                                        ; $5f27: $43
	ld   de, $1111                                   ; $5f28: $11 $11 $11
	ld   de, $4611                                   ; $5f2b: $11 $11 $46
	xor  l                                           ; $5f2e: $ad
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	rst  $38                                         ; $5f31: $ff
	rst  $38                                         ; $5f32: $ff
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	rst  ToBoot                                         ; $5f35: $c7
	ld   d, e                                        ; $5f36: $53
	ld   de, $1111                                   ; $5f37: $11 $11 $11
	ld   de, $5614                                   ; $5f3a: $11 $14 $56
	xor  h                                           ; $5f3d: $ac
	rst  $38                                         ; $5f3e: $ff
	rst  $38                                         ; $5f3f: $ff
	rst  $38                                         ; $5f40: $ff
	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	cp   $ec                                         ; $5f43: $fe $ec
	ld   [hl], e                                     ; $5f45: $73
	ld   de, $1111                                   ; $5f46: $11 $11 $11
	ld   de, $5511                                   ; $5f49: $11 $11 $55
	ld   a, e                                        ; $5f4c: $7b
	rst  $28                                         ; $5f4d: $ef
	rst  $38                                         ; $5f4e: $ff
	rst  $38                                         ; $5f4f: $ff
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	cp   $ed                                         ; $5f52: $fe $ed
	and  h                                           ; $5f54: $a4
	ld   hl, $1111                                   ; $5f55: $21 $11 $11
	ld   de, $4611                                   ; $5f58: $11 $11 $46
	ld   l, e                                        ; $5f5b: $6b
	rst  $28                                         ; $5f5c: $ef
	rst  $38                                         ; $5f5d: $ff
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	rst  $38                                         ; $5f60: $ff
	rst  $38                                         ; $5f61: $ff
	db   $ed                                         ; $5f62: $ed
	sub  l                                           ; $5f63: $95
	ld   [hl-], a                                    ; $5f64: $32
	ld   de, $1111                                   ; $5f65: $11 $11 $11
	ld   de, $661a                                   ; $5f68: $11 $1a $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f6b: $cf
	rst  $38                                         ; $5f6c: $ff
	rst  $38                                         ; $5f6d: $ff
	rst  $38                                         ; $5f6e: $ff
	rst  $38                                         ; $5f6f: $ff
	rst  $38                                         ; $5f70: $ff
	db   $ed                                         ; $5f71: $ed
	or   [hl]                                        ; $5f72: $b6
	ld   b, h                                        ; $5f73: $44
	ld   sp, $1111                                   ; $5f74: $31 $11 $11
	ld   de, $b511                                   ; $5f77: $11 $11 $b5
	ld   l, [hl]                                     ; $5f7a: $6e
	rst  $38                                         ; $5f7b: $ff
	rst  $38                                         ; $5f7c: $ff
	rst  $38                                         ; $5f7d: $ff
	rst  $38                                         ; $5f7e: $ff
	rst  JumpTable                                         ; $5f7f: $df
	cp   $c7                                         ; $5f80: $fe $c7
	ld   d, l                                        ; $5f82: $55
	ld   h, e                                        ; $5f83: $63
	ld   de, $1111                                   ; $5f84: $11 $11 $11
	ld   de, $156a                                   ; $5f87: $11 $6a $15
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	call c, $c9ff                                    ; $5f8e: $dc $ff $c9
	ld   a, b                                        ; $5f91: $78
	halt                                             ; $5f92: $76
	ld   de, $1111                                   ; $5f93: $11 $11 $11
	ld   de, $9115                                   ; $5f96: $11 $15 $91
	ld   a, a                                        ; $5f99: $7f
	rst  $38                                         ; $5f9a: $ff
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	ld   a, [$f8df]                                  ; $5f9d: $fa $df $f8
	sbc  c                                           ; $5fa0: $99
	sbc  b                                           ; $5fa1: $98
	ld   b, c                                        ; $5fa2: $41
	inc  d                                           ; $5fa3: $14
	ld   de, $1111                                   ; $5fa4: $11 $11 $11
	add  hl, de                                      ; $5fa7: $19
	inc  sp                                          ; $5fa8: $33
	rst  $38                                         ; $5fa9: $ff
	rst  $38                                         ; $5faa: $ff
	rst  $38                                         ; $5fab: $ff
	rst  $38                                         ; $5fac: $ff
	call z, $a8ff                                    ; $5fad: $cc $ff $a8
	sbc  d                                           ; $5fb0: $9a
	sub  [hl]                                        ; $5fb1: $96
	ld   b, h                                        ; $5fb2: $44
	ld   h, d                                        ; $5fb3: $62
	ld   de, $1111                                   ; $5fb4: $11 $11 $11
	jr   jr_0d7_5fcd                                 ; $5fb7: $18 $14

	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	rst  $38                                         ; $5fbb: $ff
	rst  $38                                         ; $5fbc: $ff
	cp   l                                           ; $5fbd: $bd
	db   $fd                                         ; $5fbe: $fd
	adc  d                                           ; $5fbf: $8a
	xor  c                                           ; $5fc0: $a9
	sub  [hl]                                        ; $5fc1: $96
	ld   d, [hl]                                     ; $5fc2: $56
	ld   [hl], d                                     ; $5fc3: $72
	ld   de, $1111                                   ; $5fc4: $11 $11 $11
	add  hl, de                                      ; $5fc7: $19
	inc  sp                                          ; $5fc8: $33
	rst  $38                                         ; $5fc9: $ff
	rst  $38                                         ; $5fca: $ff
	rst  $38                                         ; $5fcb: $ff
	rst  $38                                         ; $5fcc: $ff

jr_0d7_5fcd:
	sbc  e                                           ; $5fcd: $9b
	rst  $38                                         ; $5fce: $ff
	sbc  c                                           ; $5fcf: $99
	sbc  c                                           ; $5fd0: $99
	xor  b                                           ; $5fd1: $a8
	ld   h, a                                        ; $5fd2: $67
	add  h                                           ; $5fd3: $84
	ld   de, $1111                                   ; $5fd4: $11 $11 $11
	inc  d                                           ; $5fd7: $14
	ld   b, d                                        ; $5fd8: $42
	rst  JumpTable                                         ; $5fd9: $df
	rst  $38                                         ; $5fda: $ff
	rst  $38                                         ; $5fdb: $ff
	rst  $38                                         ; $5fdc: $ff
	set  7, a                                        ; $5fdd: $cb $ff
	cp   d                                           ; $5fdf: $ba
	xor  c                                           ; $5fe0: $a9
	cp   d                                           ; $5fe1: $ba
	adc  b                                           ; $5fe2: $88
	sub  a                                           ; $5fe3: $97
	ld   [hl-], a                                    ; $5fe4: $32
	ld   de, $1111                                   ; $5fe5: $11 $11 $11
	ld   [hl], d                                     ; $5fe8: $72
	ld   c, a                                        ; $5fe9: $4f
	rst  $38                                         ; $5fea: $ff
	rst  $38                                         ; $5feb: $ff
	rst  $38                                         ; $5fec: $ff
	ld   sp, hl                                      ; $5fed: $f9
	rst  $28                                         ; $5fee: $ef
	ld   [$bbab], a                                  ; $5fef: $ea $ab $bb
	adc  c                                           ; $5ff2: $89
	xor  c                                           ; $5ff3: $a9
	ld   h, h                                        ; $5ff4: $64
	ld   hl, $1111                                   ; $5ff5: $21 $11 $11
	jr   jr_0d7_602b                                 ; $5ff8: $18 $31

	rst  $38                                         ; $5ffa: $ff
	rst  $38                                         ; $5ffb: $ff
	rst  $38                                         ; $5ffc: $ff
	rst  $38                                         ; $5ffd: $ff
	adc  h                                           ; $5ffe: $8c
	cp   $89                                         ; $5fff: $fe $89
	xor  h                                           ; $6001: $ac
	or   a                                           ; $6002: $b7
	adc  e                                           ; $6003: $8b
	and  l                                           ; $6004: $a5
	ld   d, h                                        ; $6005: $54
	ld   hl, $1111                                   ; $6006: $21 $11 $11
	daa                                              ; $6009: $27
	ld   a, [de]                                     ; $600a: $1a
	rst  $38                                         ; $600b: $ff
	rst  $38                                         ; $600c: $ff
	rst  $38                                         ; $600d: $ff
	ld   a, [$fa9f]                                  ; $600e: $fa $9f $fa
	ld   a, d                                        ; $6011: $7a
	res  0, a                                        ; $6012: $cb $87
	xor  h                                           ; $6014: $ac
	sub  h                                           ; $6015: $94
	ld   d, h                                        ; $6016: $54
	ld   de, $1111                                   ; $6017: $11 $11 $11
	ld   b, h                                        ; $601a: $44
	rra                                              ; $601b: $1f
	rst  $38                                         ; $601c: $ff
	rst  $38                                         ; $601d: $ff
	rst  $38                                         ; $601e: $ff
	ld   hl, sp-$31                                  ; $601f: $f8 $cf
	jp   c, $b99b                                    ; $6021: $da $9b $b9

	ld   a, c                                        ; $6024: $79
	jp   z, Jump_0d7_7566                            ; $6025: $ca $66 $75

	ld   hl, $1111                                   ; $6028: $21 $11 $11

jr_0d7_602b:
	ld   h, $1b                                      ; $602b: $26 $1b
	rst  $38                                         ; $602d: $ff
	rst  $38                                         ; $602e: $ff
	rst  $38                                         ; $602f: $ff
	ld   a, [$fbcf]                                  ; $6030: $fa $cf $fb
	sbc  d                                           ; $6033: $9a
	xor  c                                           ; $6034: $a9
	ld   l, b                                        ; $6035: $68
	xor  e                                           ; $6036: $ab
	halt                                             ; $6037: $76
	ld   [hl], l                                     ; $6038: $75
	ld   hl, $1111                                   ; $6039: $21 $11 $11
	ld   d, $16                                      ; $603c: $16 $16
	rst  $28                                         ; $603e: $ef
	cp   $ff                                         ; $603f: $fe $ff
	db   $fd                                         ; $6041: $fd
	cp   a                                           ; $6042: $bf
	db   $fc                                         ; $6043: $fc
	sbc  c                                           ; $6044: $99
	cp   d                                           ; $6045: $ba
	ld   h, [hl]                                     ; $6046: $66
	xor  d                                           ; $6047: $aa
	add  [hl]                                        ; $6048: $86
	adc  c                                           ; $6049: $89
	ld   h, c                                        ; $604a: $61
	ld   de, $1211                                   ; $604b: $11 $11 $12
	ld   [hl+], a                                    ; $604e: $22
	sbc  c                                           ; $604f: $99
	rst  $28                                         ; $6050: $ef
	rst  JumpTable                                         ; $6051: $df
	rst  $38                                         ; $6052: $ff
	rst  JumpTable                                         ; $6053: $df
	rst  $38                                         ; $6054: $ff
	jp   c, $87ba                                    ; $6055: $da $ba $87

	sbc  c                                           ; $6058: $99
	sub  a                                           ; $6059: $97
	ld   a, b                                        ; $605a: $78
	add  [hl]                                        ; $605b: $86
	ld   [hl-], a                                    ; $605c: $32
	ld   de, $2311                                   ; $605d: $11 $11 $23
	ld   d, $9a                                      ; $6060: $16 $9a
	db   $db                                         ; $6062: $db
	rst  $28                                         ; $6063: $ef
	db   $fc                                         ; $6064: $fc
	rst  $28                                         ; $6065: $ef
	rst  $38                                         ; $6066: $ff
	xor  e                                           ; $6067: $ab
	cp   d                                           ; $6068: $ba
	ld   [hl], a                                     ; $6069: $77
	adc  b                                           ; $606a: $88
	sub  [hl]                                        ; $606b: $96
	add  a                                           ; $606c: $87
	ld   [hl], h                                     ; $606d: $74
	ld   b, h                                        ; $606e: $44
	ld   sp, $2311                                   ; $606f: $31 $11 $23
	inc  d                                           ; $6072: $14
	ld   a, e                                        ; $6073: $7b
	and  a                                           ; $6074: $a7
	cp   a                                           ; $6075: $bf
	db   $fc                                         ; $6076: $fc
	rst  $28                                         ; $6077: $ef
	rst  $38                                         ; $6078: $ff
	cp   h                                           ; $6079: $bc
	cp   h                                           ; $607a: $bc
	ld   [hl], a                                     ; $607b: $77
	ld   a, d                                        ; $607c: $7a
	add  [hl]                                        ; $607d: $86
	ld   [hl], a                                     ; $607e: $77
	ld   [hl], l                                     ; $607f: $75
	ld   d, l                                        ; $6080: $55
	ld   d, l                                        ; $6081: $55
	ld   [hl-], a                                    ; $6082: $32
	dec  h                                           ; $6083: $25
	ld   [hl-], a                                    ; $6084: $32
	ld   b, h                                        ; $6085: $44
	ld   h, [hl]                                     ; $6086: $66
	ld   h, a                                        ; $6087: $67
	xor  d                                           ; $6088: $aa
	xor  e                                           ; $6089: $ab
	call $cccc                                       ; $608a: $cd $cc $cc
	cp   e                                           ; $608d: $bb
	sbc  b                                           ; $608e: $98
	adc  b                                           ; $608f: $88
	ld   [hl], a                                     ; $6090: $77
	ld   a, b                                        ; $6091: $78
	halt                                             ; $6092: $76
	ld   h, [hl]                                     ; $6093: $66
	ld   h, [hl]                                     ; $6094: $66
	ld   a, b                                        ; $6095: $78
	sbc  c                                           ; $6096: $99
	ld   a, b                                        ; $6097: $78
	ld   [hl], a                                     ; $6098: $77
	ld   [hl], a                                     ; $6099: $77
	ld   [hl], a                                     ; $609a: $77
	halt                                             ; $609b: $76
	ld   [hl], a                                     ; $609c: $77
	add  a                                           ; $609d: $87
	ld   a, c                                        ; $609e: $79
	sbc  c                                           ; $609f: $99
	sbc  c                                           ; $60a0: $99
	xor  d                                           ; $60a1: $aa
	xor  d                                           ; $60a2: $aa
	xor  e                                           ; $60a3: $ab
	cp   d                                           ; $60a4: $ba
	cp   d                                           ; $60a5: $ba
	xor  d                                           ; $60a6: $aa
	xor  c                                           ; $60a7: $a9
	xor  c                                           ; $60a8: $a9
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  c                                           ; $60ab: $89
	sbc  b                                           ; $60ac: $98
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	add  a                                           ; $60b2: $87
	ld   a, b                                        ; $60b3: $78
	adc  b                                           ; $60b4: $88
	adc  c                                           ; $60b5: $89
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	adc  c                                           ; $60b8: $89
	adc  c                                           ; $60b9: $89
	sbc  c                                           ; $60ba: $99
	sbc  b                                           ; $60bb: $98
	adc  b                                           ; $60bc: $88
	sbc  c                                           ; $60bd: $99
	sbc  c                                           ; $60be: $99
	sbc  c                                           ; $60bf: $99
	adc  b                                           ; $60c0: $88
	ld   [hl], a                                     ; $60c1: $77
	ld   [hl], a                                     ; $60c2: $77
	ld   [hl], a                                     ; $60c3: $77
	ld   [hl], a                                     ; $60c4: $77
	ld   [hl], a                                     ; $60c5: $77
	ld   a, b                                        ; $60c6: $78
	adc  b                                           ; $60c7: $88
	adc  c                                           ; $60c8: $89
	sbc  c                                           ; $60c9: $99
	adc  b                                           ; $60ca: $88
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  c                                           ; $60cd: $89
	adc  b                                           ; $60ce: $88
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	sbc  b                                           ; $60d6: $98
	adc  c                                           ; $60d7: $89
	sbc  b                                           ; $60d8: $98
	adc  b                                           ; $60d9: $88
	add  a                                           ; $60da: $87
	ld   a, b                                        ; $60db: $78
	ld   [hl], a                                     ; $60dc: $77
	ld   [hl], a                                     ; $60dd: $77
	ld   [hl], a                                     ; $60de: $77
	ld   [hl], a                                     ; $60df: $77
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
	ld   [hl], a                                     ; $60ef: $77
	ld   [hl], a                                     ; $60f0: $77
	ld   [hl], a                                     ; $60f1: $77
	ld   [hl], a                                     ; $60f2: $77
	ld   a, b                                        ; $60f3: $78
	adc  b                                           ; $60f4: $88
	adc  c                                           ; $60f5: $89
	sbc  c                                           ; $60f6: $99
	sbc  c                                           ; $60f7: $99
	sbc  b                                           ; $60f8: $98
	adc  b                                           ; $60f9: $88
	adc  b                                           ; $60fa: $88
	adc  b                                           ; $60fb: $88
	adc  b                                           ; $60fc: $88
	ld   [hl], a                                     ; $60fd: $77
	ld   [hl], a                                     ; $60fe: $77
	ld   [hl], a                                     ; $60ff: $77
	ld   [hl], a                                     ; $6100: $77
	ld   [hl], a                                     ; $6101: $77
	ld   [hl], a                                     ; $6102: $77
	ld   a, b                                        ; $6103: $78
	adc  b                                           ; $6104: $88
	adc  b                                           ; $6105: $88
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	sbc  b                                           ; $6108: $98
	adc  b                                           ; $6109: $88
	adc  b                                           ; $610a: $88
	adc  b                                           ; $610b: $88
	adc  b                                           ; $610c: $88
	adc  b                                           ; $610d: $88
	adc  b                                           ; $610e: $88
	adc  b                                           ; $610f: $88
	add  a                                           ; $6110: $87
	ld   [hl], a                                     ; $6111: $77
	ld   [hl], a                                     ; $6112: $77
	ld   [hl], a                                     ; $6113: $77
	ld   [hl], a                                     ; $6114: $77
	ld   a, b                                        ; $6115: $78
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
	ld   [hl], a                                     ; $6123: $77
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
	adc  b                                           ; $6206: $88
	adc  b                                           ; $6207: $88
	adc  b                                           ; $6208: $88
	adc  b                                           ; $6209: $88
	sbc  b                                           ; $620a: $98
	sbc  b                                           ; $620b: $98
	adc  b                                           ; $620c: $88
	adc  b                                           ; $620d: $88
	adc  b                                           ; $620e: $88
	adc  b                                           ; $620f: $88
	ld   [hl], a                                     ; $6210: $77
	ld   [hl], a                                     ; $6211: $77
	ld   [hl], a                                     ; $6212: $77
	sbc  c                                           ; $6213: $99
	sbc  c                                           ; $6214: $99
	sbc  c                                           ; $6215: $99
	adc  b                                           ; $6216: $88
	ld   [hl], a                                     ; $6217: $77
	adc  b                                           ; $6218: $88
	ld   [hl], a                                     ; $6219: $77
	ld   [hl], a                                     ; $621a: $77
	ld   [hl], a                                     ; $621b: $77
	ld   [hl], a                                     ; $621c: $77
	adc  b                                           ; $621d: $88
	adc  b                                           ; $621e: $88
	sbc  b                                           ; $621f: $98
	adc  c                                           ; $6220: $89
	adc  c                                           ; $6221: $89
	sbc  b                                           ; $6222: $98
	adc  b                                           ; $6223: $88
	adc  b                                           ; $6224: $88
	adc  b                                           ; $6225: $88
	adc  b                                           ; $6226: $88
	adc  b                                           ; $6227: $88
	adc  c                                           ; $6228: $89
	sbc  c                                           ; $6229: $99
	sbc  c                                           ; $622a: $99
	add  a                                           ; $622b: $87
	ld   [hl], a                                     ; $622c: $77
	halt                                             ; $622d: $76
	ld   h, [hl]                                     ; $622e: $66
	ld   h, l                                        ; $622f: $65
	ld   d, l                                        ; $6230: $55
	ld   d, l                                        ; $6231: $55
	ld   d, h                                        ; $6232: $54
	ld   b, l                                        ; $6233: $45
	ld   [hl], a                                     ; $6234: $77
	ld   h, a                                        ; $6235: $67
	adc  d                                           ; $6236: $8a
	sbc  d                                           ; $6237: $9a
	cp   l                                           ; $6238: $bd
	db   $dd                                         ; $6239: $dd
	db   $dd                                         ; $623a: $dd
	cp   $cb                                         ; $623b: $fe $cb
	cp   h                                           ; $623d: $bc
	cp   c                                           ; $623e: $b9
	adc  b                                           ; $623f: $88
	add  a                                           ; $6240: $87
	ld   h, [hl]                                     ; $6241: $66
	halt                                             ; $6242: $76
	ld   d, h                                        ; $6243: $54
	ld   b, e                                        ; $6244: $43
	ld   hl, $1111                                   ; $6245: $21 $11 $11
	ld   a, [de]                                     ; $6248: $1a
	ld   de, $fbbd                                   ; $6249: $11 $bd $fb
	rst  $38                                         ; $624c: $ff
	rst  $38                                         ; $624d: $ff
	rst  $38                                         ; $624e: $ff
	rst  $38                                         ; $624f: $ff
	sbc  b                                           ; $6250: $98
	add  h                                           ; $6251: $84
	ld   d, c                                        ; $6252: $51
	ld   de, $1552                                   ; $6253: $11 $52 $15
	xor  a                                           ; $6256: $af
	rst  $38                                         ; $6257: $ff
	rst  $38                                         ; $6258: $ff
	rst  $38                                         ; $6259: $ff
	rst  $38                                         ; $625a: $ff
	rst  $30                                         ; $625b: $f7
	ld   b, c                                        ; $625c: $41
	ld   de, $1111                                   ; $625d: $11 $11 $11
	ld   de, $fa11                                   ; $6260: $11 $11 $fa
	rra                                              ; $6263: $1f
	rst  $38                                         ; $6264: $ff
	rst  $38                                         ; $6265: $ff
	rst  $38                                         ; $6266: $ff
	rst  $38                                         ; $6267: $ff
	sbc  [hl]                                        ; $6268: $9e
	pop  af                                          ; $6269: $f1
	ld   de, $1111                                   ; $626a: $11 $11 $11
	inc  d                                           ; $626d: $14
	ei                                               ; $626e: $fb
	rst  $38                                         ; $626f: $ff
	rst  $38                                         ; $6270: $ff
	rst  $38                                         ; $6271: $ff
	rst  $38                                         ; $6272: $ff
	db   $fc                                         ; $6273: $fc
	ld   a, c                                        ; $6274: $79
	ld   sp, $1111                                   ; $6275: $31 $11 $11
	ld   de, $1111                                   ; $6278: $11 $11 $11
	rst  JumpTable                                         ; $627b: $df
	ld   e, a                                        ; $627c: $5f
	rst  $38                                         ; $627d: $ff
	rst  $38                                         ; $627e: $ff
	rst  $38                                         ; $627f: $ff
	rst  $38                                         ; $6280: $ff
	daa                                              ; $6281: $27
	and  d                                           ; $6282: $a2
	ld   de, $1111                                   ; $6283: $11 $11 $11
	inc  de                                          ; $6286: $13
	rst  $38                                         ; $6287: $ff
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	rst  $38                                         ; $628a: $ff
	rst  $38                                         ; $628b: $ff
	ei                                               ; $628c: $fb
	ld   b, l                                        ; $628d: $45
	ld   d, c                                        ; $628e: $51
	ld   de, $1111                                   ; $628f: $11 $11 $11
	ld   de, $1f11                                   ; $6292: $11 $11 $1f
	ldh  a, [c]                                      ; $6295: $f2
	rst  $38                                         ; $6296: $ff
	rst  $38                                         ; $6297: $ff
	rst  $38                                         ; $6298: $ff
	rst  $38                                         ; $6299: $ff
	pop  hl                                          ; $629a: $e1
	ld   h, a                                        ; $629b: $67
	ld   de, $1111                                   ; $629c: $11 $11 $11
	inc  de                                          ; $629f: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62a0: $cf
	rst  $38                                         ; $62a1: $ff
	rst  $38                                         ; $62a2: $ff
	rst  $38                                         ; $62a3: $ff
	rst  $38                                         ; $62a4: $ff
	rst  $38                                         ; $62a5: $ff
	sub  d                                           ; $62a6: $92
	inc  sp                                          ; $62a7: $33
	ld   de, $1111                                   ; $62a8: $11 $11 $11
	ld   de, $1111                                   ; $62ab: $11 $11 $11
	sbc  a                                           ; $62ae: $9f
	ld   a, d                                        ; $62af: $7a
	rst  $38                                         ; $62b0: $ff
	rst  $38                                         ; $62b1: $ff
	rst  $38                                         ; $62b2: $ff
	rst  $38                                         ; $62b3: $ff
	ld   sp, $1147                                   ; $62b4: $31 $47 $11
	ld   de, $8913                                   ; $62b7: $11 $13 $89
	rst  $38                                         ; $62ba: $ff
	rst  $38                                         ; $62bb: $ff
	rst  $38                                         ; $62bc: $ff
	rst  $38                                         ; $62bd: $ff
	cp   $cc                                         ; $62be: $fe $cc
	ld   d, c                                        ; $62c0: $51
	ld   [de], a                                     ; $62c1: $12
	ld   de, $1111                                   ; $62c2: $11 $11 $11
	ld   de, $1111                                   ; $62c5: $11 $11 $11
	rra                                              ; $62c8: $1f
	push de                                          ; $62c9: $d5
	rst  $38                                         ; $62ca: $ff
	rst  $38                                         ; $62cb: $ff
	rst  $38                                         ; $62cc: $ff
	rst  $38                                         ; $62cd: $ff
	jp   nz, Jump_0d7_4114                           ; $62ce: $c2 $14 $41

	ld   de, $9c24                                   ; $62d1: $11 $24 $9c
	rst  JumpTable                                         ; $62d4: $df
	rst  $38                                         ; $62d5: $ff
	rst  $38                                         ; $62d6: $ff
	rst  $38                                         ; $62d7: $ff
	db   $fd                                         ; $62d8: $fd
	xor  b                                           ; $62d9: $a8
	add  h                                           ; $62da: $84
	ld   de, $1111                                   ; $62db: $11 $11 $11
	ld   de, $1111                                   ; $62de: $11 $11 $11
	ld   de, $eb15                                   ; $62e1: $11 $15 $eb
	adc  a                                           ; $62e4: $8f
	rst  $38                                         ; $62e5: $ff
	rst  $38                                         ; $62e6: $ff
	rst  $38                                         ; $62e7: $ff
	ld   a, [$1341]                                  ; $62e8: $fa $41 $13
	ld   de, $7a12                                   ; $62eb: $11 $12 $7a
	rst  JumpTable                                         ; $62ee: $df
	rst  $38                                         ; $62ef: $ff
	rst  $38                                         ; $62f0: $ff
	rst  $38                                         ; $62f1: $ff
	rst  $38                                         ; $62f2: $ff
	cp   c                                           ; $62f3: $b9
	ld   h, l                                        ; $62f4: $65
	ld   b, c                                        ; $62f5: $41
	ld   de, $2112                                   ; $62f6: $11 $12 $21
	ld   de, $1111                                   ; $62f9: $11 $11 $11
	ld   de, $f81b                                   ; $62fc: $11 $1b $f8
	rst  JumpTable                                         ; $62ff: $df
	rst  $38                                         ; $6300: $ff
	rst  $38                                         ; $6301: $ff
	rst  $38                                         ; $6302: $ff
	ret  c                                           ; $6303: $d8

	ld   de, $1111                                   ; $6304: $11 $11 $11
	inc  d                                           ; $6307: $14
	adc  a                                           ; $6308: $8f
	rst  $38                                         ; $6309: $ff
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	ei                                               ; $630d: $fb
	or   a                                           ; $630e: $b7
	ld   d, d                                        ; $630f: $52
	ld   de, $1211                                   ; $6310: $11 $11 $12
	ld   hl, $1111                                   ; $6313: $21 $11 $11
	ld   de, $3e11                                   ; $6316: $11 $11 $3e
	db   $fc                                         ; $6319: $fc
	rst  $38                                         ; $631a: $ff
	rst  $38                                         ; $631b: $ff
	rst  $38                                         ; $631c: $ff
	db   $ec                                         ; $631d: $ec
	and  a                                           ; $631e: $a7
	ld   de, $1111                                   ; $631f: $11 $11 $11
	ld   b, l                                        ; $6322: $45
	adc  [hl]                                        ; $6323: $8e
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	rst  $38                                         ; $6326: $ff
	rst  $38                                         ; $6327: $ff
	jp   hl                                          ; $6328: $e9


	add  a                                           ; $6329: $87
	ld   d, d                                        ; $632a: $52
	ld   de, $2311                                   ; $632b: $11 $11 $23
	ld   de, $1111                                   ; $632e: $11 $11 $11
	ld   de, $7f11                                   ; $6331: $11 $11 $7f
	db   $ed                                         ; $6334: $ed
	rst  $38                                         ; $6335: $ff
	rst  $38                                         ; $6336: $ff
	rst  $38                                         ; $6337: $ff
	ret                                              ; $6338: $c9


	add  a                                           ; $6339: $87
	ld   hl, $1111                                   ; $633a: $21 $11 $11
	ld   d, l                                        ; $633d: $55
	sbc  h                                           ; $633e: $9c
	rst  $38                                         ; $633f: $ff
	rst  $38                                         ; $6340: $ff
	rst  $38                                         ; $6341: $ff
	rst  $38                                         ; $6342: $ff
	cp   $a7                                         ; $6343: $fe $a7
	ld   b, d                                        ; $6345: $42
	ld   de, $1111                                   ; $6346: $11 $11 $11
	ld   de, $1111                                   ; $6349: $11 $11 $11
	ld   de, $7f11                                   ; $634c: $11 $11 $7f
	rst  $28                                         ; $634f: $ef
	rst  $38                                         ; $6350: $ff
	rst  $38                                         ; $6351: $ff
	rst  $38                                         ; $6352: $ff
	ld   a, [$4386]                                  ; $6353: $fa $86 $43
	ld   hl, $1411                                   ; $6356: $21 $11 $14
	ld   a, d                                        ; $6359: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $635a: $cf
	rst  $38                                         ; $635b: $ff
	rst  $38                                         ; $635c: $ff
	rst  $38                                         ; $635d: $ff
	rst  $38                                         ; $635e: $ff
	db   $db                                         ; $635f: $db
	and  [hl]                                        ; $6360: $a6
	ld   sp, $1211                                   ; $6361: $31 $11 $12
	ld   de, $1111                                   ; $6364: $11 $11 $11
	ld   de, $1611                                   ; $6367: $11 $11 $16
	db   $ed                                         ; $636a: $ed
	db   $ed                                         ; $636b: $ed
	call $ffef                                       ; $636c: $cd $ef $ff
	db   $db                                         ; $636f: $db
	add  [hl]                                        ; $6370: $86
	ld   h, [hl]                                     ; $6371: $66
	ld   b, c                                        ; $6372: $41
	ld   de, $7a24                                   ; $6373: $11 $24 $7a

Jump_0d7_6376:
	xor  e                                           ; $6376: $ab
	rst  $38                                         ; $6377: $ff
	rst  $38                                         ; $6378: $ff
	rst  $38                                         ; $6379: $ff
	cp   $dc                                         ; $637a: $fe $dc
	xor  d                                           ; $637c: $aa
	add  l                                           ; $637d: $85
	ld   b, h                                        ; $637e: $44
	ld   b, h                                        ; $637f: $44
	ld   b, e                                        ; $6380: $43
	ld   hl, $0111                                   ; $6381: $21 $11 $01
	ld   de, $6711                                   ; $6384: $11 $11 $67
	sbc  c                                           ; $6387: $99
	ld   a, b                                        ; $6388: $78
	ld   a, d                                        ; $6389: $7a
	sbc  $ef                                         ; $638a: $de $ef
	call c, $aa99                                    ; $638c: $dc $99 $aa
	sbc  c                                           ; $638f: $99
	ld   [hl], l                                     ; $6390: $75
	ld   b, l                                        ; $6391: $45
	ld   a, b                                        ; $6392: $78
	sbc  e                                           ; $6393: $9b
	cp   h                                           ; $6394: $bc
	rst  $28                                         ; $6395: $ef
	rst  $38                                         ; $6396: $ff
	db   $ed                                         ; $6397: $ed
	cp   d                                           ; $6398: $ba
	cp   d                                           ; $6399: $ba
	sbc  d                                           ; $639a: $9a
	sbc  b                                           ; $639b: $98
	halt                                             ; $639c: $76
	ld   d, h                                        ; $639d: $54
	ld   b, e                                        ; $639e: $43
	ld   [hl-], a                                    ; $639f: $32
	ld   de, $1111                                   ; $63a0: $11 $11 $11
	ld   b, [hl]                                     ; $63a3: $46
	ld   h, l                                        ; $63a4: $65
	ld   b, h                                        ; $63a5: $44
	ld   c, b                                        ; $63a6: $48
	xor  h                                           ; $63a7: $ac
	call c, $bcca                                    ; $63a8: $dc $ca $bc
	db   $dd                                         ; $63ab: $dd
	db   $db                                         ; $63ac: $db
	xor  c                                           ; $63ad: $a9
	adc  c                                           ; $63ae: $89
	adc  c                                           ; $63af: $89
	xor  d                                           ; $63b0: $aa
	xor  e                                           ; $63b1: $ab
	call z, $cbcd                                    ; $63b2: $cc $cd $cb
	cp   e                                           ; $63b5: $bb
	cp   e                                           ; $63b6: $bb
	cp   e                                           ; $63b7: $bb
	xor  d                                           ; $63b8: $aa
	add  a                                           ; $63b9: $87
	halt                                             ; $63ba: $76
	ld   d, l                                        ; $63bb: $55
	ld   b, e                                        ; $63bc: $43
	ld   hl, $1111                                   ; $63bd: $21 $11 $11
	inc  de                                          ; $63c0: $13
	ld   h, l                                        ; $63c1: $65
	ld   [hl-], a                                    ; $63c2: $32
	ld   [hl], $ac                                   ; $63c3: $36 $ac
	sbc  $dc                                         ; $63c5: $de $dc
	cp   h                                           ; $63c7: $bc
	db   $ed                                         ; $63c8: $ed
	sbc  $c9                                         ; $63c9: $de $c9
	adc  b                                           ; $63cb: $88
	adc  b                                           ; $63cc: $88
	xor  e                                           ; $63cd: $ab
	cp   h                                           ; $63ce: $bc
	cp   e                                           ; $63cf: $bb
	call z, $abcb                                    ; $63d0: $cc $cb $ab
	cp   d                                           ; $63d3: $ba
	xor  e                                           ; $63d4: $ab
	xor  c                                           ; $63d5: $a9
	add  a                                           ; $63d6: $87
	ld   [hl], l                                     ; $63d7: $75
	ld   d, h                                        ; $63d8: $54
	ld   b, e                                        ; $63d9: $43
	ld   de, $1111                                   ; $63da: $11 $11 $11
	ld   [de], a                                     ; $63dd: $12
	ld   b, a                                        ; $63de: $47
	ld   h, h                                        ; $63df: $64
	ld   b, [hl]                                     ; $63e0: $46
	cp   l                                           ; $63e1: $bd
	rst  $38                                         ; $63e2: $ff
	rst  $38                                         ; $63e3: $ff
	db   $dd                                         ; $63e4: $dd
	db   $dd                                         ; $63e5: $dd
	db   $dd                                         ; $63e6: $dd
	cp   b                                           ; $63e7: $b8
	ld   h, l                                        ; $63e8: $65
	ld   d, [hl]                                     ; $63e9: $56
	adc  e                                           ; $63ea: $8b
	call c, $ccdc                                    ; $63eb: $dc $dc $cc
	rst  JumpTable                                         ; $63ee: $df
	db   $ed                                         ; $63ef: $ed
	cp   d                                           ; $63f0: $ba
	xor  e                                           ; $63f1: $ab
	xor  c                                           ; $63f2: $a9
	sub  [hl]                                        ; $63f3: $96
	ld   d, e                                        ; $63f4: $53
	ld   [hl+], a                                    ; $63f5: $22
	ld   de, $1111                                   ; $63f6: $11 $11 $11
	ld   de, $5713                                   ; $63f9: $11 $13 $57
	sbc  c                                           ; $63fc: $99
	adc  b                                           ; $63fd: $88
	cp   a                                           ; $63fe: $bf
	rst  $38                                         ; $63ff: $ff
	rst  $38                                         ; $6400: $ff
	db   $db                                         ; $6401: $db
	xor  d                                           ; $6402: $aa
	xor  b                                           ; $6403: $a8
	ld   [hl], h                                     ; $6404: $74
	ld   de, $7b13                                   ; $6405: $11 $13 $7b
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	rst  $38                                         ; $640a: $ff
	rst  $38                                         ; $640b: $ff
	rst  $38                                         ; $640c: $ff
	db   $eb                                         ; $640d: $eb
	add  [hl]                                        ; $640e: $86
	ld   h, [hl]                                     ; $640f: $66
	ld   b, d                                        ; $6410: $42
	ld   de, $1111                                   ; $6411: $11 $11 $11
	ld   de, $1111                                   ; $6414: $11 $11 $11
	ld   e, [hl]                                     ; $6417: $5e
	rst  $38                                         ; $6418: $ff
	rst  $38                                         ; $6419: $ff
	rst  $38                                         ; $641a: $ff
	rst  $38                                         ; $641b: $ff
	rst  $38                                         ; $641c: $ff
	push bc                                          ; $641d: $c5
	ld   de, $3512                                   ; $641e: $11 $12 $35
	ld   d, e                                        ; $6421: $53
	ld   c, c                                        ; $6422: $49
	rst  JumpTable                                         ; $6423: $df
	rst  $38                                         ; $6424: $ff
	rst  $38                                         ; $6425: $ff
	rst  $38                                         ; $6426: $ff
	rst  $38                                         ; $6427: $ff
	ei                                               ; $6428: $fb
	ld   h, e                                        ; $6429: $63
	inc  [hl]                                        ; $642a: $34
	ld   b, [hl]                                     ; $642b: $46
	ld   h, e                                        ; $642c: $63
	ld   hl, $1111                                   ; $642d: $21 $11 $11
	ld   de, $1111                                   ; $6430: $11 $11 $11
	cpl                                              ; $6433: $2f
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	rst  $38                                         ; $6437: $ff
	push de                                          ; $6438: $d5
	ld   hl, $1411                                   ; $6439: $21 $11 $14
	adc  d                                           ; $643c: $8a
	rst  $38                                         ; $643d: $ff
	rst  $38                                         ; $643e: $ff
	rst  $38                                         ; $643f: $ff
	rst  $38                                         ; $6440: $ff
	ld   sp, hl                                      ; $6441: $f9
	ld   l, d                                        ; $6442: $6a
	xor  e                                           ; $6443: $ab
	cp   b                                           ; $6444: $b8
	ld   [hl], a                                     ; $6445: $77
	xor  h                                           ; $6446: $ac
	jp   z, Jump_0d7_4286                            ; $6447: $ca $86 $42

	ld   de, $1111                                   ; $644a: $11 $11 $11
	ld   de, $8f12                                   ; $644d: $11 $12 $8f
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	ld   hl, sp+$31                                  ; $6452: $f8 $31
	ld   sp, $1111                                   ; $6454: $31 $11 $11
	ld   l, a                                        ; $6457: $6f
	rst  $38                                         ; $6458: $ff
	rst  $38                                         ; $6459: $ff
	rst  $38                                         ; $645a: $ff
	rst  $38                                         ; $645b: $ff
	or   l                                           ; $645c: $b5
	ld   hl, $ff2b                                   ; $645d: $21 $2b $ff
	rst  $38                                         ; $6460: $ff
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	and  h                                           ; $6463: $a4
	ld   [hl-], a                                    ; $6464: $32
	ld   de, $1111                                   ; $6465: $11 $11 $11
	ld   de, $3412                                   ; $6468: $11 $12 $34
	sbc  a                                           ; $646b: $9f
	rst  $38                                         ; $646c: $ff
	rst  $38                                         ; $646d: $ff
	ld   d, c                                        ; $646e: $51
	ld   [de], a                                     ; $646f: $12
	ld   h, c                                        ; $6470: $61
	ld   de, $ff19                                   ; $6471: $11 $19 $ff
	rst  $38                                         ; $6474: $ff
	db   $ec                                         ; $6475: $ec
	xor  h                                           ; $6476: $ac
	ret  z                                           ; $6477: $c8

	ld   [hl], l                                     ; $6478: $75
	adc  l                                           ; $6479: $8d
	rst  $38                                         ; $647a: $ff
	rst  $38                                         ; $647b: $ff
	rst  $38                                         ; $647c: $ff
	cp   $b7                                         ; $647d: $fe $b7
	ld   hl, $2123                                   ; $647f: $21 $23 $21
	ld   de, $1111                                   ; $6482: $11 $11 $11
	ld   de, $5f11                                   ; $6485: $11 $11 $5f
	rst  $38                                         ; $6488: $ff
	rst  $38                                         ; $6489: $ff
	ld   h, d                                        ; $648a: $62
	inc  h                                           ; $648b: $24
	ld   b, c                                        ; $648c: $41
	ld   de, $ff3d                                   ; $648d: $11 $3d $ff
	db   $fd                                         ; $6490: $fd
	rst  $38                                         ; $6491: $ff
	ret                                              ; $6492: $c9


	ld   b, c                                        ; $6493: $41
	inc  de                                          ; $6494: $13
	rst  $38                                         ; $6495: $ff
	rst  $38                                         ; $6496: $ff
	rst  $38                                         ; $6497: $ff
	rst  $38                                         ; $6498: $ff
	and  $43                                         ; $6499: $e6 $43
	add  hl, sp                                      ; $649b: $39
	ret                                              ; $649c: $c9


	ld   hl, $1111                                   ; $649d: $21 $11 $11
	ld   de, $1111                                   ; $64a0: $11 $11 $11
	ld   e, h                                        ; $64a3: $5c
	rst  $38                                         ; $64a4: $ff
	rst  $38                                         ; $64a5: $ff
	pop  de                                          ; $64a6: $d1
	ld   de, $1111                                   ; $64a7: $11 $11 $11
	ld   a, $ff                                      ; $64aa: $3e $ff
	rst  $38                                         ; $64ac: $ff
	cp   $73                                         ; $64ad: $fe $73
	ld   de, $8f11                                   ; $64af: $11 $11 $8f
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	rst  $38                                         ; $64b4: $ff
	pop  bc                                          ; $64b5: $c1
	ld   de, $ce18                                   ; $64b6: $11 $18 $ce
	ret  z                                           ; $64b9: $c8

	ld   h, c                                        ; $64ba: $61
	ld   de, $1111                                   ; $64bb: $11 $11 $11
	ld   de, $5f11                                   ; $64be: $11 $11 $5f
	rst  $38                                         ; $64c1: $ff
	rst  $38                                         ; $64c2: $ff
	ld   hl, $1111                                   ; $64c3: $21 $11 $11
	add  hl, de                                      ; $64c6: $19
	rst  $38                                         ; $64c7: $ff
	rst  $38                                         ; $64c8: $ff

Call_0d7_64c9:
	ei                                               ; $64c9: $fb
	push bc                                          ; $64ca: $c5
	ld   de, $1c11                                   ; $64cb: $11 $11 $1c
	rst  $38                                         ; $64ce: $ff
	rst  $38                                         ; $64cf: $ff
	rst  $38                                         ; $64d0: $ff
	rst  $38                                         ; $64d1: $ff
	ld   d, d                                        ; $64d2: $52
	ld   d, [hl]                                     ; $64d3: $56
	xor  e                                           ; $64d4: $ab
	add  a                                           ; $64d5: $87
	sbc  l                                           ; $64d6: $9d
	add  c                                           ; $64d7: $81
	ld   de, $1111                                   ; $64d8: $11 $11 $11
	ld   de, $5f11                                   ; $64db: $11 $11 $5f
	rst  $38                                         ; $64de: $ff
	rst  $38                                         ; $64df: $ff
	ld   [hl], c                                     ; $64e0: $71
	ld   de, $1d11                                   ; $64e1: $11 $11 $1d
	rst  $38                                         ; $64e4: $ff
	rst  $38                                         ; $64e5: $ff
	or   $73                                         ; $64e6: $f6 $73
	ld   de, $5f11                                   ; $64e8: $11 $11 $5f
	rst  $38                                         ; $64eb: $ff
	rst  $38                                         ; $64ec: $ff
	rst  $38                                         ; $64ed: $ff
	rst  $38                                         ; $64ee: $ff
	cp   b                                           ; $64ef: $b8
	jp   z, $8599                                    ; $64f0: $ca $99 $85

	ld   e, c                                        ; $64f3: $59
	add  e                                           ; $64f4: $83
	ld   hl, $1111                                   ; $64f5: $21 $11 $11
	ld   de, $1711                                   ; $64f8: $11 $11 $17
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff
	pop  bc                                          ; $64fd: $c1
	ld   de, $1111                                   ; $64fe: $11 $11 $11
	rst  $38                                         ; $6501: $ff
	rst  $38                                         ; $6502: $ff
	ei                                               ; $6503: $fb
	ld   d, [hl]                                     ; $6504: $56
	ld   de, $4c11                                   ; $6505: $11 $11 $4c
	rst  $38                                         ; $6508: $ff
	rst  $38                                         ; $6509: $ff
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	ld   a, [$97aa]                                  ; $650c: $fa $aa $97
	ld   [hl], l                                     ; $650f: $75
	ld   c, c                                        ; $6510: $49
	and  [hl]                                        ; $6511: $a6
	ld   [hl+], a                                    ; $6512: $22
	ld   de, $1111                                   ; $6513: $11 $11 $11
	ld   de, $ff17                                   ; $6516: $11 $17 $ff
	rst  $38                                         ; $6519: $ff
	jp   $1111                                       ; $651a: $c3 $11 $11


	ld   de, $ffff                                   ; $651d: $11 $ff $ff
	db   $fc                                         ; $6520: $fc
	ld   h, a                                        ; $6521: $67
	ld   de, $7e11                                   ; $6522: $11 $11 $7e
	rst  $38                                         ; $6525: $ff
	rst  $38                                         ; $6526: $ff
	rst  $38                                         ; $6527: $ff
	cp   l                                           ; $6528: $bd
	cp   $cc                                         ; $6529: $fe $cc
	sub  [hl]                                        ; $652b: $96
	ld   a, b                                        ; $652c: $78
	ld   b, c                                        ; $652d: $41
	ld   b, h                                        ; $652e: $44
	inc  sp                                          ; $652f: $33
	ld   de, $1111                                   ; $6530: $11 $11 $11
	ld   de, $ff3c                                   ; $6533: $11 $3c $ff
	rst  $38                                         ; $6536: $ff
	and  d                                           ; $6537: $a2
	ld   de, $1911                                   ; $6538: $11 $11 $19
	rst  $38                                         ; $653b: $ff
	rst  $38                                         ; $653c: $ff
	db   $fd                                         ; $653d: $fd
	or   [hl]                                        ; $653e: $b6
	ld   de, $9c15                                   ; $653f: $11 $15 $9c
	rst  $38                                         ; $6542: $ff
	rst  $38                                         ; $6543: $ff
	rst  $38                                         ; $6544: $ff
	db   $fc                                         ; $6545: $fc
	xor  d                                           ; $6546: $aa
	sbc  b                                           ; $6547: $98
	adc  c                                           ; $6548: $89
	adc  b                                           ; $6549: $88
	ld   b, e                                        ; $654a: $43
	ld   hl, $1111                                   ; $654b: $21 $11 $11
	ld   de, $1111                                   ; $654e: $11 $11 $11
	ld   a, a                                        ; $6551: $7f
	rst  $38                                         ; $6552: $ff
	cp   $a2                                         ; $6553: $fe $a2
	ld   de, $2f11                                   ; $6555: $11 $11 $2f
	rst  $38                                         ; $6558: $ff
	rst  $38                                         ; $6559: $ff
	rst  $38                                         ; $655a: $ff
	or   c                                           ; $655b: $b1
	ld   de, $7b45                                   ; $655c: $11 $45 $7b
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	add  sp, $55                                     ; $6562: $e8 $55
	ld   d, a                                        ; $6564: $57
	xor  h                                           ; $6565: $ac
	and  [hl]                                        ; $6566: $a6
	ld   b, d                                        ; $6567: $42
	ld   de, $1111                                   ; $6568: $11 $11 $11
	ld   de, $2c11                                   ; $656b: $11 $11 $2c
	rst  $38                                         ; $656e: $ff
	cp   $f8                                         ; $656f: $fe $f8
	ld   hl, $1e11                                   ; $6571: $21 $11 $1e
	db   $ec                                         ; $6574: $ec
	rst  $38                                         ; $6575: $ff
	rst  $38                                         ; $6576: $ff
	or   $11                                         ; $6577: $f6 $11
	ld   hl, $cf14                                   ; $6579: $21 $14 $cf
	rst  $38                                         ; $657c: $ff
	rst  $38                                         ; $657d: $ff
	rst  $38                                         ; $657e: $ff
	ld   d, e                                        ; $657f: $53
	inc  sp                                          ; $6580: $33
	ld   l, c                                        ; $6581: $69
	and  a                                           ; $6582: $a7
	and  a                                           ; $6583: $a7
	ld   de, $1111                                   ; $6584: $11 $11 $11
	ld   de, $1311                                   ; $6587: $11 $11 $13
	rst  $38                                         ; $658a: $ff
	cp   $ff                                         ; $658b: $fe $ff
	and  c                                           ; $658d: $a1
	ld   de, $8415                                   ; $658e: $11 $15 $84
	adc  a                                           ; $6591: $8f
	rst  $38                                         ; $6592: $ff
	db   $fd                                         ; $6593: $fd
	and  d                                           ; $6594: $a2
	ld   h, c                                        ; $6595: $61
	ld   de, $bf29                                   ; $6596: $11 $29 $bf
	rst  $38                                         ; $6599: $ff
	rst  $38                                         ; $659a: $ff
	ei                                               ; $659b: $fb
	and  e                                           ; $659c: $a3
	ld   de, $bd36                                   ; $659d: $11 $36 $bd
	ld   d, c                                        ; $65a0: $51
	ld   de, $1111                                   ; $65a1: $11 $11 $11
	ld   de, $1f11                                   ; $65a4: $11 $11 $1f
	rst  $38                                         ; $65a7: $ff
	rst  $28                                         ; $65a8: $ef
	rst  $38                                         ; $65a9: $ff
	ld   hl, $6111                                   ; $65aa: $21 $11 $61
	ld   [de], a                                     ; $65ad: $12
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	db   $fc                                         ; $65b1: $fc
	ld   de, $1111                                   ; $65b2: $11 $11 $11
	adc  a                                           ; $65b5: $8f
	rst  $38                                         ; $65b6: $ff
	rst  $38                                         ; $65b7: $ff
	rst  $38                                         ; $65b8: $ff
	sub  c                                           ; $65b9: $91
	ld   de, $5436                                   ; $65ba: $11 $36 $54
	ld   d, e                                        ; $65bd: $53
	ld   de, $1111                                   ; $65be: $11 $11 $11
	ld   de, $cf11                                   ; $65c1: $11 $11 $cf
	or   $ff                                         ; $65c4: $f6 $ff
	ld   sp, hl                                      ; $65c6: $f9
	ld   de, $1118                                   ; $65c7: $11 $18 $11
	ld   e, $f9                                      ; $65ca: $1e $f9
	rst  $38                                         ; $65cc: $ff
	rst  $38                                         ; $65cd: $ff
	push af                                          ; $65ce: $f5
	ld   a, [de]                                     ; $65cf: $1a
	ld   hl, $7f11                                   ; $65d0: $21 $11 $7f
	rst  $38                                         ; $65d3: $ff
	rst  $38                                         ; $65d4: $ff
	rst  $38                                         ; $65d5: $ff
	add  h                                           ; $65d6: $84
	ld   [hl-], a                                    ; $65d7: $32
	ld   [hl+], a                                    ; $65d8: $22
	dec  [hl]                                        ; $65d9: $35
	ld   hl, $1111                                   ; $65da: $21 $11 $11
	ld   de, $1511                                   ; $65dd: $11 $11 $15
	rst  $38                                         ; $65e0: $ff
	cpl                                              ; $65e1: $2f
	rst  $38                                         ; $65e2: $ff
	pop  hl                                          ; $65e3: $e1
	ld   [hl], d                                     ; $65e4: $72
	add  d                                           ; $65e5: $82
	ld   de, $388d                                   ; $65e6: $11 $8d $38
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	ret                                              ; $65eb: $c9


	ld   sp, hl                                      ; $65ec: $f9
	ld   hl, $bf5c                                   ; $65ed: $21 $5c $bf
	rst  $38                                         ; $65f0: $ff
	rst  $38                                         ; $65f1: $ff
	db   $fc                                         ; $65f2: $fc
	reti                                             ; $65f3: $d9


	ld   d, e                                        ; $65f4: $53
	ld   b, h                                        ; $65f5: $44
	ld   sp, $1111                                   ; $65f6: $31 $11 $11
	ld   de, $1511                                   ; $65f9: $11 $11 $15
	rst  $38                                         ; $65fc: $ff
	ld   a, a                                        ; $65fd: $7f
	rst  $38                                         ; $65fe: $ff
	ldh  a, [c]                                      ; $65ff: $f2
	sub  e                                           ; $6600: $93
	ld   hl, $6811                                   ; $6601: $21 $11 $68
	ld   d, $ff                                      ; $6604: $16 $ff
	rst  $38                                         ; $6606: $ff
	cp   $fe                                         ; $6607: $fe $fe
	dec  [hl]                                        ; $6609: $35
	call $ff7b                                       ; $660a: $cd $7b $ff
	rst  $38                                         ; $660d: $ff
	db   $ed                                         ; $660e: $ed
	ld   a, [$4155]                                  ; $660f: $fa $55 $41
	ld   de, $1111                                   ; $6612: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6615: $11 $11 $ff
	rst  $28                                         ; $6618: $ef
	rst  $38                                         ; $6619: $ff
	cp   $ed                                         ; $661a: $fe $ed
	ld   h, d                                        ; $661c: $62
	ld   de, $1111                                   ; $661d: $11 $11 $11
	xor  [hl]                                        ; $6620: $ae
	rst  $38                                         ; $6621: $ff
	rst  $38                                         ; $6622: $ff
	rst  $38                                         ; $6623: $ff
	rst  $38                                         ; $6624: $ff
	cp   $85                                         ; $6625: $fe $85
	adc  b                                           ; $6627: $88
	sub  [hl]                                        ; $6628: $96
	adc  e                                           ; $6629: $8b
	xor  c                                           ; $662a: $a9
	ld   [hl], a                                     ; $662b: $77
	ld   h, e                                        ; $662c: $63
	ld   de, $1111                                   ; $662d: $11 $11 $11
	ld   de, $b21f                                   ; $6630: $11 $1f $b2
	rst  $38                                         ; $6633: $ff
	rst  $38                                         ; $6634: $ff
	rst  $38                                         ; $6635: $ff
	rst  $38                                         ; $6636: $ff
	ld   b, c                                        ; $6637: $41
	ld   h, c                                        ; $6638: $61
	ld   de, $1411                                   ; $6639: $11 $11 $14
	sbc  a                                           ; $663c: $9f
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	db   $fd                                         ; $6641: $fd
	add  l                                           ; $6642: $85
	ld   [de], a                                     ; $6643: $12
	ld   de, $1111                                   ; $6644: $11 $11 $11
	ld   de, $1111                                   ; $6647: $11 $11 $11
	cpl                                              ; $664a: $2f
	and  c                                           ; $664b: $a1
	rst  $38                                         ; $664c: $ff
	rst  $38                                         ; $664d: $ff
	rst  $38                                         ; $664e: $ff
	rst  $38                                         ; $664f: $ff
	halt                                             ; $6650: $76
	db   $f4                                         ; $6651: $f4
	ld   de, $1141                                   ; $6652: $11 $41 $11
	ld   c, e                                        ; $6655: $4b
	rst  $28                                         ; $6656: $ef
	rst  $38                                         ; $6657: $ff
	rst  $38                                         ; $6658: $ff
	rst  $38                                         ; $6659: $ff
	rst  $38                                         ; $665a: $ff
	rst  $38                                         ; $665b: $ff
	ret                                              ; $665c: $c9


	ld   hl, $1111                                   ; $665d: $21 $11 $11
	ld   de, $1111                                   ; $6660: $11 $11 $11
	xor  e                                           ; $6663: $ab
	rra                                              ; $6664: $1f
	rst  $38                                         ; $6665: $ff
	rst  $38                                         ; $6666: $ff
	rst  $38                                         ; $6667: $ff
	rst  $38                                         ; $6668: $ff
	rst  JumpTable                                         ; $6669: $df
	pop  bc                                          ; $666a: $c1
	ld   [de], a                                     ; $666b: $12
	ld   de, $2111                                   ; $666c: $11 $11 $21
	dec  de                                          ; $666f: $1b
	rst  $38                                         ; $6670: $ff
	rst  $38                                         ; $6671: $ff
	rst  $38                                         ; $6672: $ff
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff
	add  sp, $51                                     ; $6675: $e8 $51
	ld   de, $1111                                   ; $6677: $11 $11 $11
	ld   de, $1115                                   ; $667a: $11 $15 $11
	rst  $38                                         ; $667d: $ff
	rst  JumpTable                                         ; $667e: $df
	rst  $38                                         ; $667f: $ff
	rst  $38                                         ; $6680: $ff
	rst  $38                                         ; $6681: $ff
	rst  $30                                         ; $6682: $f7
	adc  [hl]                                        ; $6683: $8e
	ld   d, c                                        ; $6684: $51
	ld   de, $1111                                   ; $6685: $11 $11 $11
	ld   [hl], $5a                                   ; $6688: $36 $5a
	rst  $38                                         ; $668a: $ff
	rst  $38                                         ; $668b: $ff
	rst  $38                                         ; $668c: $ff
	rst  $38                                         ; $668d: $ff
	rst  $38                                         ; $668e: $ff
	sub  c                                           ; $668f: $91
	ld   de, $1111                                   ; $6690: $11 $11 $11
	ld   de, $1f11                                   ; $6693: $11 $11 $1f
	rra                                              ; $6696: $1f
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	rst  $38                                         ; $669b: $ff
	ei                                               ; $669c: $fb
	ld   h, $11                                      ; $669d: $26 $11
	ld   de, $1111                                   ; $669f: $11 $11 $11
	sbc  c                                           ; $66a2: $99
	sbc  a                                           ; $66a3: $9f
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	rst  $38                                         ; $66a6: $ff

Jump_0d7_66a7:
	or   a                                           ; $66a7: $b7
	ld   [hl], c                                     ; $66a8: $71
	ld   de, $1111                                   ; $66a9: $11 $11 $11
	ld   b, c                                        ; $66ac: $41
	inc  de                                          ; $66ad: $13
	ld   c, a                                        ; $66ae: $4f
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	rst  $38                                         ; $66b1: $ff
	rst  $38                                         ; $66b2: $ff
	rst  $38                                         ; $66b3: $ff
	rst  $38                                         ; $66b4: $ff
	ld   [hl], l                                     ; $66b5: $75
	ld   de, $1111                                   ; $66b6: $11 $11 $11
	ld   de, $3316                                   ; $66b9: $11 $16 $33
	ld   e, b                                        ; $66bc: $58
	ld   [hl], c                                     ; $66bd: $71
	ld   [de], a                                     ; $66be: $12
	pop  af                                          ; $66bf: $f1
	rra                                              ; $66c0: $1f
	ld   d, c                                        ; $66c1: $51
	sub  c                                           ; $66c2: $91
	rst  $10                                         ; $66c3: $d7
	ld   l, a                                        ; $66c4: $6f
	rst  $38                                         ; $66c5: $ff
	xor  a                                           ; $66c6: $af
	rst  $38                                         ; $66c7: $ff
	rst  $38                                         ; $66c8: $ff
	ld   sp, hl                                      ; $66c9: $f9
	ret                                              ; $66ca: $c9


	ld   [hl], c                                     ; $66cb: $71
	ld   d, $11                                      ; $66cc: $16 $11
	inc  de                                          ; $66ce: $13
	ld   d, c                                        ; $66cf: $51
	ld   b, [hl]                                     ; $66d0: $46
	ld   b, l                                        ; $66d1: $45
	ld   hl, $7911                                   ; $66d2: $21 $11 $79
	ld   [de], a                                     ; $66d5: $12
	pop  hl                                          ; $66d6: $e1
	ld   d, $57                                      ; $66d7: $16 $57
	sbc  [hl]                                        ; $66d9: $9e
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	db   $fd                                         ; $66df: $fd
	add  [hl]                                        ; $66e0: $86
	ld   [de], a                                     ; $66e1: $12
	ld   hl, $1111                                   ; $66e2: $21 $11 $11
	ld   de, $1411                                   ; $66e5: $11 $11 $14
	pop  de                                          ; $66e8: $d1
	rra                                              ; $66e9: $1f
	inc  de                                          ; $66ea: $13
	or   [hl]                                        ; $66eb: $b6
	ld   hl, sp-$11                                  ; $66ec: $f8 $ef
	rst  $38                                         ; $66ee: $ff
	rst  $38                                         ; $66ef: $ff
	rst  $38                                         ; $66f0: $ff
	rst  $38                                         ; $66f1: $ff
	ei                                               ; $66f2: $fb
	jp   hl                                          ; $66f3: $e9


	ld   sp, $1242                                   ; $66f4: $31 $42 $12
	ld   de, $1111                                   ; $66f7: $11 $11 $11
	dec  d                                           ; $66fa: $15
	ld   sp, $145a                                   ; $66fb: $31 $5a $14
	ld   h, l                                        ; $66fe: $65
	rst  $10                                         ; $66ff: $d7
	rst  $38                                         ; $6700: $ff
	rst  $38                                         ; $6701: $ff
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	rst  $38                                         ; $6704: $ff
	rst  $38                                         ; $6705: $ff
	sub  $34                                         ; $6706: $d6 $34
	ld   hl, $1111                                   ; $6708: $21 $11 $11
	ld   de, $2111                                   ; $670b: $11 $11 $21
	ld   d, $31                                      ; $670e: $16 $31
	ld   d, e                                        ; $6710: $53
	ld   b, a                                        ; $6711: $47
	ld   a, e                                        ; $6712: $7b
	db   $fd                                         ; $6713: $fd
	rst  $38                                         ; $6714: $ff
	rst  $38                                         ; $6715: $ff
	rst  $38                                         ; $6716: $ff
	rst  $38                                         ; $6717: $ff
	cp   $ca                                         ; $6718: $fe $ca
	xor  b                                           ; $671a: $a8
	ld   d, a                                        ; $671b: $57
	ld   h, h                                        ; $671c: $64
	ld   d, l                                        ; $671d: $55
	inc  [hl]                                        ; $671e: $34
	ld   b, c                                        ; $671f: $41
	inc  h                                           ; $6720: $24
	ld   hl, $1231                                   ; $6721: $21 $31 $12
	inc  de                                          ; $6724: $13
	ld   sp, $8d87                                   ; $6725: $31 $87 $8d
	sbc  $ff                                         ; $6728: $de $ff
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	db   $fc                                         ; $672c: $fc
	call c, $999b                                    ; $672d: $dc $9b $99
	sub  a                                           ; $6730: $97
	xor  b                                           ; $6731: $a8
	ld   [hl], a                                     ; $6732: $77
	ld   h, [hl]                                     ; $6733: $66
	ld   b, h                                        ; $6734: $44
	ld   b, h                                        ; $6735: $44
	ld   sp, $1242                                   ; $6736: $31 $42 $12
	inc  de                                          ; $6739: $13
	inc  hl                                          ; $673a: $23
	ld   h, l                                        ; $673b: $65
	ld   a, c                                        ; $673c: $79
	xor  e                                           ; $673d: $ab
	call $eeee                                       ; $673e: $cd $ee $ee
	sbc  $db                                         ; $6741: $de $db
	call c, $cabb                                    ; $6743: $dc $bb $ca
	adc  d                                           ; $6746: $8a
	add  a                                           ; $6747: $87
	add  l                                           ; $6748: $85
	ld   h, [hl]                                     ; $6749: $66
	ld   b, [hl]                                     ; $674a: $46
	ld   b, e                                        ; $674b: $43
	ld   b, h                                        ; $674c: $44
	ld   b, e                                        ; $674d: $43
	ld   b, h                                        ; $674e: $44
	ld   b, l                                        ; $674f: $45
	ld   b, [hl]                                     ; $6750: $46
	ld   h, [hl]                                     ; $6751: $66
	add  a                                           ; $6752: $87
	adc  d                                           ; $6753: $8a
	xor  e                                           ; $6754: $ab
	xor  e                                           ; $6755: $ab
	set  1, h                                        ; $6756: $cb $cc
	cp   h                                           ; $6758: $bc
	cp   e                                           ; $6759: $bb
	cp   d                                           ; $675a: $ba
	xor  b                                           ; $675b: $a8
	sbc  b                                           ; $675c: $98
	halt                                             ; $675d: $76
	halt                                             ; $675e: $76
	ld   h, [hl]                                     ; $675f: $66
	ld   h, [hl]                                     ; $6760: $66
	ld   h, [hl]                                     ; $6761: $66
	ld   h, [hl]                                     ; $6762: $66
	halt                                             ; $6763: $76
	ld   [hl], a                                     ; $6764: $77
	ld   [hl], a                                     ; $6765: $77
	ld   a, b                                        ; $6766: $78
	ld   a, b                                        ; $6767: $78
	sbc  b                                           ; $6768: $98
	adc  c                                           ; $6769: $89
	sbc  c                                           ; $676a: $99
	sbc  c                                           ; $676b: $99
	sbc  c                                           ; $676c: $99
	xor  c                                           ; $676d: $a9
	xor  d                                           ; $676e: $aa
	adc  b                                           ; $676f: $88
	sbc  b                                           ; $6770: $98
	adc  c                                           ; $6771: $89
	ld   [hl], a                                     ; $6772: $77
	ld   [hl], a                                     ; $6773: $77
	ld   [hl], a                                     ; $6774: $77
	ld   [hl], a                                     ; $6775: $77
	ld   [hl], a                                     ; $6776: $77
	ld   [hl], a                                     ; $6777: $77
	ld   [hl], a                                     ; $6778: $77
	ld   a, b                                        ; $6779: $78
	adc  b                                           ; $677a: $88
	sbc  b                                           ; $677b: $98
	sbc  c                                           ; $677c: $99
	adc  c                                           ; $677d: $89
	adc  b                                           ; $677e: $88
	sbc  b                                           ; $677f: $98
	sbc  b                                           ; $6780: $98
	adc  c                                           ; $6781: $89
	sbc  b                                           ; $6782: $98
	adc  c                                           ; $6783: $89
	sbc  b                                           ; $6784: $98
	adc  b                                           ; $6785: $88
	ld   [hl], a                                     ; $6786: $77
	ld   [hl], a                                     ; $6787: $77
	ld   [hl], a                                     ; $6788: $77
	ld   [hl], a                                     ; $6789: $77
	ld   a, b                                        ; $678a: $78
	ld   [hl], a                                     ; $678b: $77
	ld   [hl], a                                     ; $678c: $77
	adc  b                                           ; $678d: $88
	adc  b                                           ; $678e: $88
	adc  b                                           ; $678f: $88
	adc  c                                           ; $6790: $89
	sbc  c                                           ; $6791: $99
	sbc  b                                           ; $6792: $98
	sbc  b                                           ; $6793: $98
	sbc  c                                           ; $6794: $99
	adc  b                                           ; $6795: $88
	adc  b                                           ; $6796: $88
	adc  b                                           ; $6797: $88
	adc  c                                           ; $6798: $89
	adc  b                                           ; $6799: $88
	ld   a, b                                        ; $679a: $78
	add  a                                           ; $679b: $87
	add  a                                           ; $679c: $87
	adc  b                                           ; $679d: $88
	ld   [hl], a                                     ; $679e: $77
	ld   a, b                                        ; $679f: $78
	ld   a, b                                        ; $67a0: $78
	ld   a, b                                        ; $67a1: $78
	ld   [hl], a                                     ; $67a2: $77
	adc  b                                           ; $67a3: $88
	adc  b                                           ; $67a4: $88
	adc  b                                           ; $67a5: $88
	adc  b                                           ; $67a6: $88
	sbc  c                                           ; $67a7: $99
	sbc  c                                           ; $67a8: $99
	sbc  b                                           ; $67a9: $98
	adc  b                                           ; $67aa: $88
	adc  b                                           ; $67ab: $88
	adc  b                                           ; $67ac: $88
	add  a                                           ; $67ad: $87
	adc  b                                           ; $67ae: $88
	ld   a, b                                        ; $67af: $78
	ld   [hl], a                                     ; $67b0: $77
	add  a                                           ; $67b1: $87
	add  a                                           ; $67b2: $87
	adc  b                                           ; $67b3: $88
	adc  b                                           ; $67b4: $88
	adc  b                                           ; $67b5: $88
	adc  b                                           ; $67b6: $88
	adc  b                                           ; $67b7: $88
	adc  b                                           ; $67b8: $88
	adc  b                                           ; $67b9: $88
	adc  b                                           ; $67ba: $88
	adc  b                                           ; $67bb: $88
	adc  b                                           ; $67bc: $88
	sbc  b                                           ; $67bd: $98
	adc  c                                           ; $67be: $89
	adc  b                                           ; $67bf: $88
	sbc  b                                           ; $67c0: $98
	adc  b                                           ; $67c1: $88
	adc  b                                           ; $67c2: $88
	adc  b                                           ; $67c3: $88
	adc  b                                           ; $67c4: $88
	adc  b                                           ; $67c5: $88
	adc  b                                           ; $67c6: $88
	adc  b                                           ; $67c7: $88
	adc  b                                           ; $67c8: $88
	adc  b                                           ; $67c9: $88
	adc  b                                           ; $67ca: $88
	adc  b                                           ; $67cb: $88
	adc  b                                           ; $67cc: $88
	adc  b                                           ; $67cd: $88
	adc  b                                           ; $67ce: $88
	adc  b                                           ; $67cf: $88
	adc  b                                           ; $67d0: $88
	adc  b                                           ; $67d1: $88
	adc  b                                           ; $67d2: $88
	adc  b                                           ; $67d3: $88
	adc  b                                           ; $67d4: $88
	adc  b                                           ; $67d5: $88
	adc  b                                           ; $67d6: $88
	adc  b                                           ; $67d7: $88
	adc  b                                           ; $67d8: $88
	adc  b                                           ; $67d9: $88
	adc  b                                           ; $67da: $88
	adc  b                                           ; $67db: $88
	adc  b                                           ; $67dc: $88
	adc  b                                           ; $67dd: $88
	adc  b                                           ; $67de: $88
	adc  b                                           ; $67df: $88
	adc  b                                           ; $67e0: $88
	adc  b                                           ; $67e1: $88
	adc  b                                           ; $67e2: $88
	adc  b                                           ; $67e3: $88
	adc  b                                           ; $67e4: $88
	adc  b                                           ; $67e5: $88
	adc  b                                           ; $67e6: $88
	adc  b                                           ; $67e7: $88
	adc  b                                           ; $67e8: $88
	adc  b                                           ; $67e9: $88
	adc  b                                           ; $67ea: $88
	adc  b                                           ; $67eb: $88
	adc  b                                           ; $67ec: $88
	adc  b                                           ; $67ed: $88
	adc  b                                           ; $67ee: $88

Call_0d7_67ef:
	adc  b                                           ; $67ef: $88
	adc  b                                           ; $67f0: $88
	adc  b                                           ; $67f1: $88
	adc  b                                           ; $67f2: $88
	adc  b                                           ; $67f3: $88
	adc  b                                           ; $67f4: $88
	adc  b                                           ; $67f5: $88
	adc  b                                           ; $67f6: $88
	adc  b                                           ; $67f7: $88
	adc  b                                           ; $67f8: $88
	adc  b                                           ; $67f9: $88
	adc  b                                           ; $67fa: $88
	adc  b                                           ; $67fb: $88
	adc  b                                           ; $67fc: $88
	adc  b                                           ; $67fd: $88
	adc  b                                           ; $67fe: $88
	adc  b                                           ; $67ff: $88
	adc  b                                           ; $6800: $88
	adc  b                                           ; $6801: $88
	adc  b                                           ; $6802: $88
	adc  b                                           ; $6803: $88
	adc  b                                           ; $6804: $88
	adc  b                                           ; $6805: $88
	adc  b                                           ; $6806: $88
	adc  b                                           ; $6807: $88
	adc  b                                           ; $6808: $88
	adc  b                                           ; $6809: $88
	adc  b                                           ; $680a: $88
	adc  b                                           ; $680b: $88
	adc  b                                           ; $680c: $88
	adc  b                                           ; $680d: $88
	adc  b                                           ; $680e: $88
	adc  b                                           ; $680f: $88
	adc  b                                           ; $6810: $88
	adc  b                                           ; $6811: $88
	adc  b                                           ; $6812: $88
	adc  b                                           ; $6813: $88
	adc  b                                           ; $6814: $88
	adc  b                                           ; $6815: $88
	adc  b                                           ; $6816: $88
	adc  b                                           ; $6817: $88
	adc  b                                           ; $6818: $88
	adc  b                                           ; $6819: $88
	adc  b                                           ; $681a: $88
	adc  b                                           ; $681b: $88
	adc  b                                           ; $681c: $88
	adc  b                                           ; $681d: $88
	adc  b                                           ; $681e: $88
	adc  b                                           ; $681f: $88
	adc  b                                           ; $6820: $88
	adc  b                                           ; $6821: $88
	adc  b                                           ; $6822: $88
	adc  b                                           ; $6823: $88
	adc  b                                           ; $6824: $88
	adc  b                                           ; $6825: $88
	adc  b                                           ; $6826: $88
	adc  b                                           ; $6827: $88
	adc  b                                           ; $6828: $88
	adc  b                                           ; $6829: $88
	adc  b                                           ; $682a: $88
	adc  b                                           ; $682b: $88
	adc  b                                           ; $682c: $88
	adc  b                                           ; $682d: $88
	adc  b                                           ; $682e: $88
	adc  b                                           ; $682f: $88
	adc  b                                           ; $6830: $88
	adc  b                                           ; $6831: $88
	adc  b                                           ; $6832: $88
	adc  b                                           ; $6833: $88
	adc  b                                           ; $6834: $88
	adc  b                                           ; $6835: $88
	adc  b                                           ; $6836: $88
	adc  b                                           ; $6837: $88
	adc  b                                           ; $6838: $88
	adc  b                                           ; $6839: $88
	adc  b                                           ; $683a: $88
	adc  b                                           ; $683b: $88
	adc  b                                           ; $683c: $88
	adc  b                                           ; $683d: $88
	adc  b                                           ; $683e: $88
	adc  b                                           ; $683f: $88
	adc  b                                           ; $6840: $88
	adc  b                                           ; $6841: $88
	adc  b                                           ; $6842: $88
	adc  b                                           ; $6843: $88
	adc  b                                           ; $6844: $88
	adc  b                                           ; $6845: $88
	adc  b                                           ; $6846: $88
	adc  b                                           ; $6847: $88
	adc  b                                           ; $6848: $88
	adc  b                                           ; $6849: $88
	adc  b                                           ; $684a: $88
	adc  b                                           ; $684b: $88
	adc  b                                           ; $684c: $88
	adc  b                                           ; $684d: $88
	adc  b                                           ; $684e: $88
	adc  b                                           ; $684f: $88
	adc  b                                           ; $6850: $88
	adc  b                                           ; $6851: $88
	adc  b                                           ; $6852: $88
	adc  b                                           ; $6853: $88
	adc  b                                           ; $6854: $88
	adc  b                                           ; $6855: $88
	adc  b                                           ; $6856: $88
	adc  b                                           ; $6857: $88
	adc  b                                           ; $6858: $88
	adc  b                                           ; $6859: $88
	adc  b                                           ; $685a: $88
	adc  b                                           ; $685b: $88
	adc  b                                           ; $685c: $88
	adc  b                                           ; $685d: $88
	adc  b                                           ; $685e: $88
	adc  b                                           ; $685f: $88
	adc  b                                           ; $6860: $88
	adc  b                                           ; $6861: $88
	adc  b                                           ; $6862: $88
	adc  b                                           ; $6863: $88
	adc  b                                           ; $6864: $88
	adc  b                                           ; $6865: $88
	adc  b                                           ; $6866: $88
	adc  b                                           ; $6867: $88
	adc  b                                           ; $6868: $88
	adc  b                                           ; $6869: $88
	adc  b                                           ; $686a: $88
	adc  b                                           ; $686b: $88
	adc  b                                           ; $686c: $88
	adc  b                                           ; $686d: $88
	adc  b                                           ; $686e: $88
	adc  b                                           ; $686f: $88
	adc  b                                           ; $6870: $88
	adc  b                                           ; $6871: $88
	adc  b                                           ; $6872: $88
	adc  b                                           ; $6873: $88
	adc  b                                           ; $6874: $88
	adc  b                                           ; $6875: $88
	adc  b                                           ; $6876: $88
	adc  b                                           ; $6877: $88
	adc  b                                           ; $6878: $88
	adc  b                                           ; $6879: $88
	adc  b                                           ; $687a: $88
	adc  b                                           ; $687b: $88
	adc  b                                           ; $687c: $88
	adc  b                                           ; $687d: $88
	adc  b                                           ; $687e: $88
	adc  b                                           ; $687f: $88
	adc  b                                           ; $6880: $88
	adc  b                                           ; $6881: $88
	adc  b                                           ; $6882: $88
	adc  b                                           ; $6883: $88
	adc  b                                           ; $6884: $88
	adc  b                                           ; $6885: $88
	adc  b                                           ; $6886: $88
	adc  b                                           ; $6887: $88
	adc  b                                           ; $6888: $88
	adc  b                                           ; $6889: $88
	adc  b                                           ; $688a: $88
	adc  b                                           ; $688b: $88
	adc  b                                           ; $688c: $88
	adc  b                                           ; $688d: $88
	adc  b                                           ; $688e: $88
	adc  b                                           ; $688f: $88
	adc  b                                           ; $6890: $88
	adc  b                                           ; $6891: $88
	adc  b                                           ; $6892: $88
	adc  b                                           ; $6893: $88
	adc  b                                           ; $6894: $88
	adc  b                                           ; $6895: $88
	adc  b                                           ; $6896: $88
	adc  b                                           ; $6897: $88
	adc  b                                           ; $6898: $88
	adc  b                                           ; $6899: $88
	adc  b                                           ; $689a: $88
	adc  b                                           ; $689b: $88
	adc  b                                           ; $689c: $88
	adc  b                                           ; $689d: $88
	adc  b                                           ; $689e: $88
	adc  b                                           ; $689f: $88
	adc  b                                           ; $68a0: $88
	adc  b                                           ; $68a1: $88
	adc  b                                           ; $68a2: $88
	adc  b                                           ; $68a3: $88
	adc  b                                           ; $68a4: $88
	adc  b                                           ; $68a5: $88
	adc  b                                           ; $68a6: $88
	adc  b                                           ; $68a7: $88
	adc  b                                           ; $68a8: $88
	adc  b                                           ; $68a9: $88
	adc  b                                           ; $68aa: $88
	adc  b                                           ; $68ab: $88
	adc  b                                           ; $68ac: $88
	adc  b                                           ; $68ad: $88
	adc  b                                           ; $68ae: $88
	adc  b                                           ; $68af: $88
	adc  b                                           ; $68b0: $88
	adc  b                                           ; $68b1: $88
	adc  b                                           ; $68b2: $88
	adc  b                                           ; $68b3: $88
	adc  b                                           ; $68b4: $88
	adc  b                                           ; $68b5: $88
	adc  b                                           ; $68b6: $88
	adc  b                                           ; $68b7: $88
	adc  b                                           ; $68b8: $88
	adc  b                                           ; $68b9: $88
	adc  b                                           ; $68ba: $88
	adc  b                                           ; $68bb: $88
	adc  b                                           ; $68bc: $88
	adc  b                                           ; $68bd: $88
	adc  b                                           ; $68be: $88
	adc  b                                           ; $68bf: $88
	adc  b                                           ; $68c0: $88
	adc  b                                           ; $68c1: $88
	adc  b                                           ; $68c2: $88
	adc  b                                           ; $68c3: $88
	adc  b                                           ; $68c4: $88
	adc  b                                           ; $68c5: $88
	adc  b                                           ; $68c6: $88
	adc  b                                           ; $68c7: $88
	adc  b                                           ; $68c8: $88
	adc  b                                           ; $68c9: $88
	adc  b                                           ; $68ca: $88
	adc  b                                           ; $68cb: $88
	adc  b                                           ; $68cc: $88
	adc  b                                           ; $68cd: $88
	adc  b                                           ; $68ce: $88
	adc  b                                           ; $68cf: $88
	adc  b                                           ; $68d0: $88
	adc  b                                           ; $68d1: $88
	adc  b                                           ; $68d2: $88
	adc  b                                           ; $68d3: $88
	adc  b                                           ; $68d4: $88
	adc  b                                           ; $68d5: $88
	adc  b                                           ; $68d6: $88
	adc  b                                           ; $68d7: $88
	adc  b                                           ; $68d8: $88
	adc  b                                           ; $68d9: $88
	adc  b                                           ; $68da: $88
	adc  b                                           ; $68db: $88
	adc  b                                           ; $68dc: $88
	adc  b                                           ; $68dd: $88
	adc  b                                           ; $68de: $88
	adc  b                                           ; $68df: $88
	adc  b                                           ; $68e0: $88
	adc  b                                           ; $68e1: $88
	adc  b                                           ; $68e2: $88
	adc  b                                           ; $68e3: $88
	adc  b                                           ; $68e4: $88
	adc  b                                           ; $68e5: $88
	adc  b                                           ; $68e6: $88
	adc  b                                           ; $68e7: $88
	adc  b                                           ; $68e8: $88
	adc  b                                           ; $68e9: $88
	adc  b                                           ; $68ea: $88
	adc  b                                           ; $68eb: $88
	adc  b                                           ; $68ec: $88
	adc  b                                           ; $68ed: $88
	adc  b                                           ; $68ee: $88
	adc  b                                           ; $68ef: $88
	adc  b                                           ; $68f0: $88
	adc  b                                           ; $68f1: $88
	adc  b                                           ; $68f2: $88
	adc  b                                           ; $68f3: $88
	adc  b                                           ; $68f4: $88
	adc  b                                           ; $68f5: $88
	adc  b                                           ; $68f6: $88
	ld   a, c                                        ; $68f7: $79
	sub  a                                           ; $68f8: $97
	adc  b                                           ; $68f9: $88
	ld   a, b                                        ; $68fa: $78
	add  a                                           ; $68fb: $87
	adc  b                                           ; $68fc: $88
	ld   a, b                                        ; $68fd: $78
	sbc  b                                           ; $68fe: $98
	adc  b                                           ; $68ff: $88
	adc  b                                           ; $6900: $88
	adc  c                                           ; $6901: $89
	and  a                                           ; $6902: $a7
	adc  d                                           ; $6903: $8a
	ld   a, c                                        ; $6904: $79
	sbc  b                                           ; $6905: $98
	sbc  c                                           ; $6906: $99
	add  a                                           ; $6907: $87
	adc  d                                           ; $6908: $8a
	add  [hl]                                        ; $6909: $86
	xor  b                                           ; $690a: $a8
	ld   l, c                                        ; $690b: $69
	halt                                             ; $690c: $76
	sub  a                                           ; $690d: $97
	ld   a, c                                        ; $690e: $79
	ld   l, b                                        ; $690f: $68
	sub  a                                           ; $6910: $97
	sbc  c                                           ; $6911: $99
	adc  b                                           ; $6912: $88
	add  a                                           ; $6913: $87
	adc  b                                           ; $6914: $88
	adc  b                                           ; $6915: $88
	sub  a                                           ; $6916: $97
	add  a                                           ; $6917: $87
	ld   a, b                                        ; $6918: $78
	ld   [hl], a                                     ; $6919: $77
	adc  b                                           ; $691a: $88
	ld   a, b                                        ; $691b: $78
	add  a                                           ; $691c: $87
	add  a                                           ; $691d: $87
	xor  b                                           ; $691e: $a8
	ld   l, c                                        ; $691f: $69
	sub  [hl]                                        ; $6920: $96
	ld   a, e                                        ; $6921: $7b
	ld   l, d                                        ; $6922: $6a
	or   a                                           ; $6923: $b7
	xor  b                                           ; $6924: $a8
	ld   a, d                                        ; $6925: $7a
	sub  [hl]                                        ; $6926: $96
	adc  d                                           ; $6927: $8a
	ld   e, b                                        ; $6928: $58
	ld   h, h                                        ; $6929: $64
	sub  l                                           ; $692a: $95
	ld   a, c                                        ; $692b: $79
	ld   e, b                                        ; $692c: $58
	add  a                                           ; $692d: $87
	sbc  b                                           ; $692e: $98
	ld   a, d                                        ; $692f: $7a
	add  a                                           ; $6930: $87
	xor  b                                           ; $6931: $a8
	ld   a, e                                        ; $6932: $7b
	ld   [hl], l                                     ; $6933: $75
	rst  ToBoot                                         ; $6934: $c7
	ld   e, e                                        ; $6935: $5b
	ld   h, l                                        ; $6936: $65
	or   a                                           ; $6937: $b7
	ld   e, d                                        ; $6938: $5a
	halt                                             ; $6939: $76
	add  $7b                                         ; $693a: $c6 $7b
	ld   h, a                                        ; $693c: $67
	add  $6c                                         ; $693d: $c6 $6c
	ld   d, a                                        ; $693f: $57
	or   [hl]                                        ; $6940: $b6
	ld   l, c                                        ; $6941: $69
	halt                                             ; $6942: $76
	add  [hl]                                        ; $6943: $86
	ld   a, c                                        ; $6944: $79
	ld   h, [hl]                                     ; $6945: $66
	sub  a                                           ; $6946: $97
	ld   l, e                                        ; $6947: $6b
	halt                                             ; $6948: $76
	sbc  b                                           ; $6949: $98
	add  a                                           ; $694a: $87
	sbc  b                                           ; $694b: $98
	adc  c                                           ; $694c: $89
	adc  b                                           ; $694d: $88
	ld   a, c                                        ; $694e: $79
	xor  b                                           ; $694f: $a8
	sbc  c                                           ; $6950: $99
	xor  c                                           ; $6951: $a9
	adc  c                                           ; $6952: $89
	sub  a                                           ; $6953: $97
	adc  b                                           ; $6954: $88
	adc  d                                           ; $6955: $8a
	halt                                             ; $6956: $76
	rst  ToBoot                                         ; $6957: $c7
	ld   l, b                                        ; $6958: $68
	halt                                             ; $6959: $76
	ld   [hl], a                                     ; $695a: $77
	ld   b, l                                        ; $695b: $45
	ld   d, e                                        ; $695c: $53
	ld   hl, $1211                                   ; $695d: $21 $11 $12
	ld   b, h                                        ; $6960: $44
	ld   l, b                                        ; $6961: $68
	sbc  e                                           ; $6962: $9b
	adc  $ef                                         ; $6963: $ce $ef
	rst  $38                                         ; $6965: $ff
	rst  $38                                         ; $6966: $ff
	rst  $38                                         ; $6967: $ff
	rst  $38                                         ; $6968: $ff
	xor  $97                                         ; $6969: $ee $97
	ld   b, d                                        ; $696b: $42
	ld   de, $1111                                   ; $696c: $11 $11 $11
	ld   de, $1511                                   ; $696f: $11 $11 $15
	ld   b, c                                        ; $6972: $41
	sbc  a                                           ; $6973: $9f
	rst  $28                                         ; $6974: $ef
	rst  $38                                         ; $6975: $ff
	rst  $38                                         ; $6976: $ff
	rst  $38                                         ; $6977: $ff
	rst  $38                                         ; $6978: $ff
	rst  $38                                         ; $6979: $ff
	db   $fc                                         ; $697a: $fc
	or   l                                           ; $697b: $b5
	ld   de, $1111                                   ; $697c: $11 $11 $11
	ld   de, $1111                                   ; $697f: $11 $11 $11
	ld   hl, $ed3d                                   ; $6982: $21 $3d $ed
	rst  $38                                         ; $6985: $ff
	rst  $38                                         ; $6986: $ff
	rst  $38                                         ; $6987: $ff
	rst  $38                                         ; $6988: $ff
	rst  $38                                         ; $6989: $ff
	rst  $38                                         ; $698a: $ff
	rst  $38                                         ; $698b: $ff
	or   h                                           ; $698c: $b4
	ld   [hl+], a                                    ; $698d: $22
	ld   de, $1111                                   ; $698e: $11 $11 $11
	ld   de, $1111                                   ; $6991: $11 $11 $11
	dec  e                                           ; $6994: $1d
	rst  JumpTable                                         ; $6995: $df
	rst  $38                                         ; $6996: $ff
	rst  $38                                         ; $6997: $ff
	rst  $38                                         ; $6998: $ff
	rst  $38                                         ; $6999: $ff
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	ei                                               ; $699c: $fb
	ld   [hl], e                                     ; $699d: $73
	ld   de, $1111                                   ; $699e: $11 $11 $11
	ld   de, $1111                                   ; $69a1: $11 $11 $11
	ld   d, c                                        ; $69a4: $51
	rra                                              ; $69a5: $1f
	rst  $38                                         ; $69a6: $ff

Call_0d7_69a7:
	rst  $38                                         ; $69a7: $ff
	rst  $38                                         ; $69a8: $ff
	rst  $38                                         ; $69a9: $ff
	rst  $38                                         ; $69aa: $ff
	rst  $38                                         ; $69ab: $ff
	rst  $38                                         ; $69ac: $ff
	ld   sp, hl                                      ; $69ad: $f9
	ld   d, d                                        ; $69ae: $52
	ld   de, $1111                                   ; $69af: $11 $11 $11
	ld   de, $1511                                   ; $69b2: $11 $11 $15
	ld   de, $ffff                                   ; $69b5: $11 $ff $ff
	rst  $38                                         ; $69b8: $ff
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	rst  $38                                         ; $69bb: $ff
	rst  $38                                         ; $69bc: $ff
	db   $fc                                         ; $69bd: $fc
	or   a                                           ; $69be: $b7
	ld   b, c                                        ; $69bf: $41
	ld   de, $1111                                   ; $69c0: $11 $11 $11
	ld   de, $1111                                   ; $69c3: $11 $11 $11
	jr   @+$01                                       ; $69c6: $18 $ff

	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	rst  $38                                         ; $69cb: $ff
	rst  $38                                         ; $69cc: $ff
	rst  $38                                         ; $69cd: $ff
	ld   sp, hl                                      ; $69ce: $f9
	and  [hl]                                        ; $69cf: $a6
	ld   hl, $1111                                   ; $69d0: $21 $11 $11
	ld   de, $1111                                   ; $69d3: $11 $11 $11
	inc  d                                           ; $69d6: $14
	jr   @+$01                                       ; $69d7: $18 $ff

	rst  $28                                         ; $69d9: $ef
	rst  $38                                         ; $69da: $ff
	rst  $38                                         ; $69db: $ff
	rst  $38                                         ; $69dc: $ff
	rst  $38                                         ; $69dd: $ff
	rst  $38                                         ; $69de: $ff
	rst  $10                                         ; $69df: $d7
	halt                                             ; $69e0: $76
	ld   sp, $1111                                   ; $69e1: $31 $11 $11
	ld   de, $1111                                   ; $69e4: $11 $11 $11
	ld   sp, $ff1e                                   ; $69e7: $31 $1e $ff
	rst  $38                                         ; $69ea: $ff
	rst  $38                                         ; $69eb: $ff
	cp   $ff                                         ; $69ec: $fe $ff
	rst  $38                                         ; $69ee: $ff
	rst  $38                                         ; $69ef: $ff
	rst  ToBoot                                         ; $69f0: $c7
	ld   d, a                                        ; $69f1: $57
	ld   de, $1111                                   ; $69f2: $11 $11 $11
	ld   de, $1111                                   ; $69f5: $11 $11 $11
	ld   b, c                                        ; $69f8: $41
	inc  e                                           ; $69f9: $1c
	rst  $38                                         ; $69fa: $ff
	rst  $38                                         ; $69fb: $ff
	rst  $38                                         ; $69fc: $ff
	rst  $38                                         ; $69fd: $ff
	rst  $38                                         ; $69fe: $ff
	rst  $38                                         ; $69ff: $ff
	rst  $38                                         ; $6a00: $ff
	add  sp, $57                                     ; $6a01: $e8 $57
	ld   sp, $1111                                   ; $6a03: $31 $11 $11
	ld   de, $1111                                   ; $6a06: $11 $11 $11
	ld   de, $ff1d                                   ; $6a09: $11 $1d $ff
	rst  $38                                         ; $6a0c: $ff
	rst  $38                                         ; $6a0d: $ff
	rst  $38                                         ; $6a0e: $ff
	rst  $38                                         ; $6a0f: $ff
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	xor  c                                           ; $6a12: $a9
	ld   h, l                                        ; $6a13: $65
	ld   b, c                                        ; $6a14: $41
	ld   de, $1111                                   ; $6a15: $11 $11 $11
	ld   de, $1111                                   ; $6a18: $11 $11 $11
	dec  d                                           ; $6a1b: $15
	rst  $38                                         ; $6a1c: $ff
	rst  $38                                         ; $6a1d: $ff
	rst  $38                                         ; $6a1e: $ff
	rst  $38                                         ; $6a1f: $ff
	rst  $38                                         ; $6a20: $ff
	rst  $38                                         ; $6a21: $ff
	rst  $38                                         ; $6a22: $ff
	ld   hl, sp+$76                                  ; $6a23: $f8 $76
	ld   h, h                                        ; $6a25: $64
	ld   de, $1121                                   ; $6a26: $11 $21 $11
	ld   de, $1611                                   ; $6a29: $11 $11 $16
	ld   de, $ffef                                   ; $6a2c: $11 $ef $ff
	rst  $38                                         ; $6a2f: $ff
	rst  $38                                         ; $6a30: $ff
	rst  JumpTable                                         ; $6a31: $df
	rst  $38                                         ; $6a32: $ff
	cp   $ff                                         ; $6a33: $fe $ff
	add  h                                           ; $6a35: $84
	ld   h, [hl]                                     ; $6a36: $66
	ld   b, c                                        ; $6a37: $41
	ld   [de], a                                     ; $6a38: $12
	ld   de, $1111                                   ; $6a39: $11 $11 $11
	ld   de, $1f71                                   ; $6a3c: $11 $71 $1f
	rst  $38                                         ; $6a3f: $ff
	rst  $38                                         ; $6a40: $ff
	rst  $38                                         ; $6a41: $ff
	db   $fc                                         ; $6a42: $fc
	rst  $38                                         ; $6a43: $ff
	rst  $38                                         ; $6a44: $ff
	rst  $38                                         ; $6a45: $ff
	reti                                             ; $6a46: $d9


	ld   b, e                                        ; $6a47: $43
	ld   d, a                                        ; $6a48: $57
	ld   sp, $1111                                   ; $6a49: $31 $11 $11
	ld   de, $1311                                   ; $6a4c: $11 $11 $13
	ld   de, $ffff                                   ; $6a4f: $11 $ff $ff
	rst  $38                                         ; $6a52: $ff
	rst  $38                                         ; $6a53: $ff
	rst  $38                                         ; $6a54: $ff
	rst  $38                                         ; $6a55: $ff
	rst  $38                                         ; $6a56: $ff
	db   $fc                                         ; $6a57: $fc
	sub  l                                           ; $6a58: $95
	dec  [hl]                                        ; $6a59: $35
	ld   [hl], h                                     ; $6a5a: $74
	ld   [de], a                                     ; $6a5b: $12
	ld   de, $1111                                   ; $6a5c: $11 $11 $11
	ld   de, $1614                                   ; $6a5f: $11 $14 $16
	rst  $38                                         ; $6a62: $ff
	rst  $38                                         ; $6a63: $ff
	rst  $38                                         ; $6a64: $ff
	rst  $38                                         ; $6a65: $ff
	rst  $28                                         ; $6a66: $ef
	rst  $38                                         ; $6a67: $ff
	xor  $ec                                         ; $6a68: $ee $ec
	ld   [hl], l                                     ; $6a6a: $75
	ld   b, [hl]                                     ; $6a6b: $46
	ld   d, e                                        ; $6a6c: $53
	ld   de, $1111                                   ; $6a6d: $11 $11 $11
	ld   de, $1111                                   ; $6a70: $11 $11 $11
	xor  a                                           ; $6a73: $af
	rst  $38                                         ; $6a74: $ff
	rst  $38                                         ; $6a75: $ff
	rst  $38                                         ; $6a76: $ff
	rst  $38                                         ; $6a77: $ff
	rst  $38                                         ; $6a78: $ff
	rst  $38                                         ; $6a79: $ff
	db   $fd                                         ; $6a7a: $fd
	xor  b                                           ; $6a7b: $a8
	ld   [hl], h                                     ; $6a7c: $74
	ld   b, l                                        ; $6a7d: $45
	ld   d, h                                        ; $6a7e: $54
	ld   hl, $1111                                   ; $6a7f: $21 $11 $11
	ld   de, $1511                                   ; $6a82: $11 $11 $15
	xor  a                                           ; $6a85: $af
	rst  $38                                         ; $6a86: $ff
	rst  $38                                         ; $6a87: $ff
	rst  $38                                         ; $6a88: $ff
	rst  $38                                         ; $6a89: $ff
	rst  $38                                         ; $6a8a: $ff
	rst  $38                                         ; $6a8b: $ff
	db   $eb                                         ; $6a8c: $eb
	xor  c                                           ; $6a8d: $a9
	ld   h, l                                        ; $6a8e: $65
	ld   d, h                                        ; $6a8f: $54
	ld   hl, $1111                                   ; $6a90: $21 $11 $11
	ld   de, $1211                                   ; $6a93: $11 $11 $12
	inc  d                                           ; $6a96: $14
	xor  l                                           ; $6a97: $ad
	rst  $38                                         ; $6a98: $ff
	rst  $38                                         ; $6a99: $ff
	rst  $38                                         ; $6a9a: $ff
	rst  $38                                         ; $6a9b: $ff
	rst  $38                                         ; $6a9c: $ff
	rst  $38                                         ; $6a9d: $ff
	db   $fc                                         ; $6a9e: $fc
	sub  a                                           ; $6a9f: $97
	ld   a, b                                        ; $6aa0: $78
	halt                                             ; $6aa1: $76
	ld   d, h                                        ; $6aa2: $54
	ld   b, d                                        ; $6aa3: $42
	ld   de, $1111                                   ; $6aa4: $11 $11 $11
	ld   de, $4624                                   ; $6aa7: $11 $24 $46
	sbc  h                                           ; $6aaa: $9c
	rst  $38                                         ; $6aab: $ff
	cp   $ef                                         ; $6aac: $fe $ef
	rst  $38                                         ; $6aae: $ff
	rst  $38                                         ; $6aaf: $ff
	rst  $38                                         ; $6ab0: $ff
	db   $ed                                         ; $6ab1: $ed
	xor  c                                           ; $6ab2: $a9
	adc  c                                           ; $6ab3: $89
	add  a                                           ; $6ab4: $87
	ld   h, l                                        ; $6ab5: $65
	ld   b, e                                        ; $6ab6: $43
	ld   hl, $1111                                   ; $6ab7: $21 $11 $11
	ld   de, $1211                                   ; $6aba: $11 $11 $12
	ld   b, a                                        ; $6abd: $47
	cp   h                                           ; $6abe: $bc
	db   $dd                                         ; $6abf: $dd
	rst  $28                                         ; $6ac0: $ef
	rst  $38                                         ; $6ac1: $ff
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	db   $ed                                         ; $6ac4: $ed
	db   $dd                                         ; $6ac5: $dd
	cp   e                                           ; $6ac6: $bb
	cp   d                                           ; $6ac7: $ba
	xor  c                                           ; $6ac8: $a9
	sbc  b                                           ; $6ac9: $98
	ld   h, l                                        ; $6aca: $65
	ld   sp, $1111                                   ; $6acb: $31 $11 $11
	ld   de, $1111                                   ; $6ace: $11 $11 $11
	inc  d                                           ; $6ad1: $14
	ld   d, a                                        ; $6ad2: $57
	sbc  h                                           ; $6ad3: $9c
	rst  $38                                         ; $6ad4: $ff
	rst  $38                                         ; $6ad5: $ff
	rst  $38                                         ; $6ad6: $ff
	rst  $38                                         ; $6ad7: $ff
	rst  $38                                         ; $6ad8: $ff
	rst  $38                                         ; $6ad9: $ff
	rst  $38                                         ; $6ada: $ff
	jp   z, Jump_0d7_4286                            ; $6adb: $ca $86 $42

	ld   de, $1111                                   ; $6ade: $11 $11 $11
	ld   de, $1111                                   ; $6ae1: $11 $11 $11
	ld   de, $6a13                                   ; $6ae4: $11 $13 $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ae7: $cf
	rst  $38                                         ; $6ae8: $ff
	rst  $38                                         ; $6ae9: $ff
	rst  $38                                         ; $6aea: $ff
	rst  $38                                         ; $6aeb: $ff
	rst  $38                                         ; $6aec: $ff
	rst  $38                                         ; $6aed: $ff
	db   $ec                                         ; $6aee: $ec
	xor  b                                           ; $6aef: $a8
	ld   d, e                                        ; $6af0: $53
	ld   hl, $1111                                   ; $6af1: $21 $11 $11
	ld   de, $1111                                   ; $6af4: $11 $11 $11
	ld   de, $2411                                   ; $6af7: $11 $11 $24
	ld   a, e                                        ; $6afa: $7b
	rst  $38                                         ; $6afb: $ff
	rst  $38                                         ; $6afc: $ff
	rst  $38                                         ; $6afd: $ff
	rst  $38                                         ; $6afe: $ff
	rst  $38                                         ; $6aff: $ff
	rst  $38                                         ; $6b00: $ff
	rst  $38                                         ; $6b01: $ff
	db   $ec                                         ; $6b02: $ec
	and  a                                           ; $6b03: $a7
	ld   d, e                                        ; $6b04: $53
	ld   de, $1111                                   ; $6b05: $11 $11 $11
	ld   de, $1111                                   ; $6b08: $11 $11 $11
	ld   de, $2411                                   ; $6b0b: $11 $11 $24
	sbc  h                                           ; $6b0e: $9c
	rst  $38                                         ; $6b0f: $ff
	rst  $38                                         ; $6b10: $ff
	rst  $38                                         ; $6b11: $ff
	rst  $38                                         ; $6b12: $ff
	rst  $38                                         ; $6b13: $ff
	rst  $38                                         ; $6b14: $ff
	rst  $38                                         ; $6b15: $ff
	db   $ec                                         ; $6b16: $ec
	cp   b                                           ; $6b17: $b8
	ld   d, e                                        ; $6b18: $53
	ld   hl, $1111                                   ; $6b19: $21 $11 $11
	ld   de, $1111                                   ; $6b1c: $11 $11 $11
	ld   de, $1311                                   ; $6b1f: $11 $11 $13
	adc  h                                           ; $6b22: $8c
	rst  $38                                         ; $6b23: $ff
	rst  $38                                         ; $6b24: $ff
	rst  $38                                         ; $6b25: $ff
	rst  $38                                         ; $6b26: $ff
	rst  $38                                         ; $6b27: $ff
	rst  $38                                         ; $6b28: $ff
	rst  $38                                         ; $6b29: $ff
	db   $fd                                         ; $6b2a: $fd
	ret                                              ; $6b2b: $c9


	ld   d, h                                        ; $6b2c: $54
	ld   sp, $1111                                   ; $6b2d: $31 $11 $11
	ld   de, $1111                                   ; $6b30: $11 $11 $11
	ld   de, $1211                                   ; $6b33: $11 $11 $12
	ld   a, d                                        ; $6b36: $7a
	rst  JumpTable                                         ; $6b37: $df
	rst  $38                                         ; $6b38: $ff
	rst  $38                                         ; $6b39: $ff
	rst  $38                                         ; $6b3a: $ff
	rst  $38                                         ; $6b3b: $ff
	rst  $38                                         ; $6b3c: $ff
	rst  $38                                         ; $6b3d: $ff
	cp   $c9                                         ; $6b3e: $fe $c9
	ld   h, h                                        ; $6b40: $64
	ld   b, d                                        ; $6b41: $42
	ld   de, $1111                                   ; $6b42: $11 $11 $11
	ld   de, $1111                                   ; $6b45: $11 $11 $11
	ld   de, $5912                                   ; $6b48: $11 $12 $59
	rst  $28                                         ; $6b4b: $ef
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	rst  $38                                         ; $6b4e: $ff
	rst  $38                                         ; $6b4f: $ff
	rst  $38                                         ; $6b50: $ff
	rst  $38                                         ; $6b51: $ff
	rst  $38                                         ; $6b52: $ff
	jp   c, Jump_0d7_4375                            ; $6b53: $da $75 $43

	ld   de, $1111                                   ; $6b56: $11 $11 $11
	ld   de, $1111                                   ; $6b59: $11 $11 $11
	ld   de, $3711                                   ; $6b5c: $11 $11 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b5f: $cf
	rst  $38                                         ; $6b60: $ff
	rst  $38                                         ; $6b61: $ff
	rst  $38                                         ; $6b62: $ff
	rst  $38                                         ; $6b63: $ff
	rst  $38                                         ; $6b64: $ff
	rst  $38                                         ; $6b65: $ff
	rst  $38                                         ; $6b66: $ff
	db   $eb                                         ; $6b67: $eb
	sub  [hl]                                        ; $6b68: $96
	ld   d, e                                        ; $6b69: $53
	ld   de, $1111                                   ; $6b6a: $11 $11 $11
	ld   de, $1111                                   ; $6b6d: $11 $11 $11
	ld   de, $2611                                   ; $6b70: $11 $11 $26
	xor  [hl]                                        ; $6b73: $ae
	rst  $38                                         ; $6b74: $ff
	rst  $38                                         ; $6b75: $ff
	rst  $38                                         ; $6b76: $ff
	rst  $38                                         ; $6b77: $ff
	rst  $38                                         ; $6b78: $ff
	rst  $38                                         ; $6b79: $ff
	rst  $38                                         ; $6b7a: $ff
	db   $fc                                         ; $6b7b: $fc
	xor  b                                           ; $6b7c: $a8
	ld   h, h                                        ; $6b7d: $64
	ld   hl, $1111                                   ; $6b7e: $21 $11 $11
	ld   de, $1111                                   ; $6b81: $11 $11 $11
	ld   de, $1311                                   ; $6b84: $11 $11 $13
	ld   l, e                                        ; $6b87: $6b
	rst  $28                                         ; $6b88: $ef
	rst  $38                                         ; $6b89: $ff
	rst  $38                                         ; $6b8a: $ff
	rst  $38                                         ; $6b8b: $ff
	rst  $38                                         ; $6b8c: $ff
	rst  $38                                         ; $6b8d: $ff
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	jp   c, $4276                                    ; $6b90: $da $76 $42

	ld   de, $1111                                   ; $6b93: $11 $11 $11
	ld   de, $1111                                   ; $6b96: $11 $11 $11
	ld   de, $4713                                   ; $6b99: $11 $13 $47
	xor  [hl]                                        ; $6b9c: $ae
	rst  $38                                         ; $6b9d: $ff
	rst  $38                                         ; $6b9e: $ff
	rst  $38                                         ; $6b9f: $ff
	rst  $38                                         ; $6ba0: $ff
	rst  $38                                         ; $6ba1: $ff
	rst  $38                                         ; $6ba2: $ff
	rst  $38                                         ; $6ba3: $ff
	db   $fc                                         ; $6ba4: $fc
	sub  a                                           ; $6ba5: $97
	ld   d, d                                        ; $6ba6: $52
	ld   de, $1111                                   ; $6ba7: $11 $11 $11
	ld   de, $1111                                   ; $6baa: $11 $11 $11
	inc  de                                          ; $6bad: $13
	sbc  h                                           ; $6bae: $9c
	xor  $ef                                         ; $6baf: $ee $ef
	rst  $38                                         ; $6bb1: $ff
	rst  $38                                         ; $6bb2: $ff
	rst  $38                                         ; $6bb3: $ff
	rst  $38                                         ; $6bb4: $ff
	rst  $38                                         ; $6bb5: $ff
	cp   $cc                                         ; $6bb6: $fe $cc
	res  0, l                                        ; $6bb8: $cb $85
	ld   [hl-], a                                    ; $6bba: $32
	ld   de, $1111                                   ; $6bbb: $11 $11 $11
	ld   de, $2511                                   ; $6bbe: $11 $11 $25
	xor  l                                           ; $6bc1: $ad
	rst  $38                                         ; $6bc2: $ff
	db   $eb                                         ; $6bc3: $eb
	rst  JumpTable                                         ; $6bc4: $df
	rst  $38                                         ; $6bc5: $ff
	rst  $38                                         ; $6bc6: $ff
	rst  $38                                         ; $6bc7: $ff
	cp   $b9                                         ; $6bc8: $fe $b9
	sbc  d                                           ; $6bca: $9a
	xor  d                                           ; $6bcb: $aa
	sub  [hl]                                        ; $6bcc: $96
	ld   [hl-], a                                    ; $6bcd: $32
	ld   de, $1111                                   ; $6bce: $11 $11 $11
	ld   de, $9716                                   ; $6bd1: $11 $16 $97
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bd4: $cf
	rst  $38                                         ; $6bd5: $ff
	ld   [$ff9c], a                                  ; $6bd6: $ea $9c $ff
	rst  $38                                         ; $6bd9: $ff
	cp   $fd                                         ; $6bda: $fe $fd
	cp   b                                           ; $6bdc: $b8
	ld   d, [hl]                                     ; $6bdd: $56
	ld   a, c                                        ; $6bde: $79
	add  [hl]                                        ; $6bdf: $86
	ld   hl, $1111                                   ; $6be0: $21 $11 $11
	ld   de, $7a13                                   ; $6be3: $11 $13 $7a
	db   $ed                                         ; $6be6: $ed
	rst  $38                                         ; $6be7: $ff
	rst  $38                                         ; $6be8: $ff
	sub  l                                           ; $6be9: $95
	ld   a, l                                        ; $6bea: $7d
	rst  $38                                         ; $6beb: $ff
	rst  $38                                         ; $6bec: $ff
	sbc  $fa                                         ; $6bed: $de $fa
	ld   d, d                                        ; $6bef: $52
	ld   [hl], $77                                   ; $6bf0: $36 $77
	ld   b, c                                        ; $6bf2: $41
	ld   de, $1111                                   ; $6bf3: $11 $11 $11
	ld   de, $ffbc                                   ; $6bf6: $11 $bc $ff
	rst  $38                                         ; $6bf9: $ff
	cp   $c7                                         ; $6bfa: $fe $c7
	ld   l, c                                        ; $6bfc: $69
	rst  $38                                         ; $6bfd: $ff
	rst  $38                                         ; $6bfe: $ff
	rst  $38                                         ; $6bff: $ff
	db   $fd                                         ; $6c00: $fd
	ld   [hl], e                                     ; $6c01: $73
	ld   h, $53                                      ; $6c02: $26 $53
	ld   de, $1111                                   ; $6c04: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6c07: $11 $11 $ff
	rst  $38                                         ; $6c0a: $ff
	rst  $38                                         ; $6c0b: $ff
	rst  $38                                         ; $6c0c: $ff
	sub  d                                           ; $6c0d: $92
	add  hl, hl                                      ; $6c0e: $29
	rst  $38                                         ; $6c0f: $ff
	rst  $38                                         ; $6c10: $ff
	rst  $38                                         ; $6c11: $ff
	rst  $38                                         ; $6c12: $ff
	ld   [hl], c                                     ; $6c13: $71
	dec  d                                           ; $6c14: $15
	ld   d, c                                        ; $6c15: $51
	ld   de, $1111                                   ; $6c16: $11 $11 $11
	ld   de, $ff19                                   ; $6c19: $11 $19 $ff
	rst  $38                                         ; $6c1c: $ff
	rst  $38                                         ; $6c1d: $ff
	ei                                               ; $6c1e: $fb
	ld   b, c                                        ; $6c1f: $41
	adc  a                                           ; $6c20: $8f
	rst  $38                                         ; $6c21: $ff
	rst  $38                                         ; $6c22: $ff
	rst  $38                                         ; $6c23: $ff
	rst  $30                                         ; $6c24: $f7
	ld   b, e                                        ; $6c25: $43
	ld   h, h                                        ; $6c26: $64
	ld   de, $1111                                   ; $6c27: $11 $11 $11
	ld   de, $bd11                                   ; $6c2a: $11 $11 $bd
	rst  $38                                         ; $6c2d: $ff
	rst  $38                                         ; $6c2e: $ff
	cp   $71                                         ; $6c2f: $fe $71
	dec  d                                           ; $6c31: $15
	rst  $38                                         ; $6c32: $ff
	rst  $38                                         ; $6c33: $ff
	rst  $38                                         ; $6c34: $ff
	rst  $38                                         ; $6c35: $ff
	ld   [hl], c                                     ; $6c36: $71
	inc  de                                          ; $6c37: $13
	ld   hl, $1111                                   ; $6c38: $21 $11 $11
	ld   de, $1f11                                   ; $6c3b: $11 $11 $1f
	rst  $38                                         ; $6c3e: $ff
	rst  $38                                         ; $6c3f: $ff
	rst  $38                                         ; $6c40: $ff
	ld   [hl], e                                     ; $6c41: $73
	inc  de                                          ; $6c42: $13
	ld   a, a                                        ; $6c43: $7f
	rst  $38                                         ; $6c44: $ff
	rst  $38                                         ; $6c45: $ff
	rst  $38                                         ; $6c46: $ff
	and  a                                           ; $6c47: $a7
	ld   b, d                                        ; $6c48: $42
	ld   de, $1111                                   ; $6c49: $11 $11 $11
	ld   de, $2f11                                   ; $6c4c: $11 $11 $2f
	rst  $28                                         ; $6c4f: $ef
	rst  $38                                         ; $6c50: $ff
	rst  $38                                         ; $6c51: $ff
	ld   [hl-], a                                    ; $6c52: $32
	ld   b, e                                        ; $6c53: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c54: $cf
	rst  $38                                         ; $6c55: $ff
	rst  $38                                         ; $6c56: $ff
	rst  $38                                         ; $6c57: $ff
	push bc                                          ; $6c58: $c5
	ld   sp, $1112                                   ; $6c59: $31 $12 $11
	ld   de, $1111                                   ; $6c5c: $11 $11 $11
	ld   a, a                                        ; $6c5f: $7f
	rst  $38                                         ; $6c60: $ff
	rst  $38                                         ; $6c61: $ff
	db   $fd                                         ; $6c62: $fd
	and  h                                           ; $6c63: $a4
	ld   [de], a                                     ; $6c64: $12
	rst  $38                                         ; $6c65: $ff
	rst  $38                                         ; $6c66: $ff
	rst  $38                                         ; $6c67: $ff
	rst  $38                                         ; $6c68: $ff
	ld   h, d                                        ; $6c69: $62
	ld   [de], a                                     ; $6c6a: $12
	ld   sp, $1111                                   ; $6c6b: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $6c6e: $11 $11 $ff
	rst  $38                                         ; $6c71: $ff
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	ld   de, $ff59                                   ; $6c74: $11 $59 $ff
	rst  $38                                         ; $6c77: $ff
	rst  $38                                         ; $6c78: $ff
	db   $eb                                         ; $6c79: $eb
	ld   sp, $1141                                   ; $6c7a: $31 $41 $11
	ld   de, $1111                                   ; $6c7d: $11 $11 $11
	ld   e, a                                        ; $6c80: $5f
	rst  $38                                         ; $6c81: $ff
	rst  $38                                         ; $6c82: $ff
	rst  $38                                         ; $6c83: $ff
	ld   b, c                                        ; $6c84: $41
	ld   b, l                                        ; $6c85: $45
	xor  a                                           ; $6c86: $af
	rst  $38                                         ; $6c87: $ff
	rst  $38                                         ; $6c88: $ff
	rst  $38                                         ; $6c89: $ff
	sub  l                                           ; $6c8a: $95
	ld   d, c                                        ; $6c8b: $51
	ld   de, $1111                                   ; $6c8c: $11 $11 $11
	ld   de, $ce1f                                   ; $6c8f: $11 $1f $ce
	rst  $38                                         ; $6c92: $ff
	rst  $38                                         ; $6c93: $ff
	ld   b, e                                        ; $6c94: $43
	rla                                              ; $6c95: $17
	rst  $28                                         ; $6c96: $ef
	rst  $38                                         ; $6c97: $ff
	rst  $38                                         ; $6c98: $ff
	rst  $38                                         ; $6c99: $ff
	call c, $11a5                                    ; $6c9a: $dc $a5 $11
	ld   de, $1111                                   ; $6c9d: $11 $11 $11
	inc  e                                           ; $6ca0: $1c
	db   $fc                                         ; $6ca1: $fc
	rst  $38                                         ; $6ca2: $ff
	rst  $38                                         ; $6ca3: $ff
	ld   sp, $9f5a                                   ; $6ca4: $31 $5a $9f
	db   $fd                                         ; $6ca7: $fd
	rst  $38                                         ; $6ca8: $ff
	rst  $38                                         ; $6ca9: $ff
	call z, $11c9                                    ; $6caa: $cc $c9 $11
	ld   de, $1111                                   ; $6cad: $11 $11 $11
	add  hl, de                                      ; $6cb0: $19
	rst  $38                                         ; $6cb1: $ff
	db   $fd                                         ; $6cb2: $fd
	cp   $e9                                         ; $6cb3: $fe $e9
	add  hl, de                                      ; $6cb5: $19
	ld   e, h                                        ; $6cb6: $5c
	cp   $ff                                         ; $6cb7: $fe $ff
	rst  $38                                         ; $6cb9: $ff
	ld   [$517b], a                                  ; $6cba: $ea $7b $51
	ld   de, $1111                                   ; $6cbd: $11 $11 $11
	dec  d                                           ; $6cc0: $15
	cp   $ed                                         ; $6cc1: $fe $ed
	rst  $28                                         ; $6cc3: $ef
	call nz, $ec6b                                   ; $6cc4: $c4 $6b $ec
	cp   [hl]                                        ; $6cc7: $be
	rst  $38                                         ; $6cc8: $ff
	cp   $dd                                         ; $6cc9: $fe $dd
	add  a                                           ; $6ccb: $87
	ld   de, $1111                                   ; $6ccc: $11 $11 $11
	ld   de, $fa19                                   ; $6ccf: $11 $19 $fa
	rst  $28                                         ; $6cd2: $ef
	cp   [hl]                                        ; $6cd3: $be
	push af                                          ; $6cd4: $f5
	add  hl, de                                      ; $6cd5: $19
	rst  $38                                         ; $6cd6: $ff
	rst  $10                                         ; $6cd7: $d7
	rst  $38                                         ; $6cd8: $ff
	ld   a, [$faa9]                                  ; $6cd9: $fa $a9 $fa
	ld   de, $1111                                   ; $6cdc: $11 $11 $11
	ld   de, $fe19                                   ; $6cdf: $11 $19 $fe
	jp   hl                                          ; $6ce2: $e9


	xor  e                                           ; $6ce3: $ab
	ei                                               ; $6ce4: $fb
	dec  d                                           ; $6ce5: $15
	rst  $38                                         ; $6ce6: $ff
	db   $fd                                         ; $6ce7: $fd
	cp   a                                           ; $6ce8: $bf

Call_0d7_6ce9:
	rst  $30                                         ; $6ce9: $f7
	jr   c, jr_0d7_6d53                              ; $6cea: $38 $67

	ld   h, c                                        ; $6cec: $61
	ld   de, $1131                                   ; $6ced: $11 $31 $11
	ld   c, h                                        ; $6cf0: $4c
	db   $fd                                         ; $6cf1: $fd
	ld   l, a                                        ; $6cf2: $6f
	ld   sp, hl                                      ; $6cf3: $f9
	sbc  b                                           ; $6cf4: $98
	sbc  b                                           ; $6cf5: $98
	rst  JumpTable                                         ; $6cf6: $df
	rst  $38                                         ; $6cf7: $ff
	sbc  h                                           ; $6cf8: $9c
	ld   a, [$7d43]                                  ; $6cf9: $fa $43 $7d
	ld   d, c                                        ; $6cfc: $51
	ld   de, $1171                                   ; $6cfd: $11 $71 $11
	rst  JumpTable                                         ; $6d00: $df
	and  h                                           ; $6d01: $a4
	db   $ec                                         ; $6d02: $ec
	xor  a                                           ; $6d03: $af
	and  h                                           ; $6d04: $a4
	adc  a                                           ; $6d05: $8f
	db   $ed                                         ; $6d06: $ed
	jp   c, Jump_0d7_79fe                            ; $6d07: $da $fe $79

	ld   b, l                                        ; $6d0a: $45
	and  e                                           ; $6d0b: $a3
	ld   de, $1112                                   ; $6d0c: $11 $12 $11
	ld   h, $8a                                      ; $6d0f: $26 $8a
	xor  d                                           ; $6d11: $aa
	call c, Call_0d7_6ce9                            ; $6d12: $dc $e9 $6c
	cp   a                                           ; $6d15: $bf
	rst  $30                                         ; $6d16: $f7
	cp   l                                           ; $6d17: $bd
	sub  a                                           ; $6d18: $97
	ld   e, b                                        ; $6d19: $58
	ld   a, c                                        ; $6d1a: $79
	add  h                                           ; $6d1b: $84
	ld   [hl+], a                                    ; $6d1c: $22
	ld   [hl+], a                                    ; $6d1d: $22
	ld   [hl], d                                     ; $6d1e: $72
	dec  d                                           ; $6d1f: $15
	ld   a, a                                        ; $6d20: $7f
	push af                                          ; $6d21: $f5
	ld   d, e                                        ; $6d22: $53
	rst  $38                                         ; $6d23: $ff
	inc  [hl]                                        ; $6d24: $34
	sbc  [hl]                                        ; $6d25: $9e
	ld   sp, hl                                      ; $6d26: $f9
	dec  de                                          ; $6d27: $1b
	cp   $61                                         ; $6d28: $fe $61
	rra                                              ; $6d2a: $1f
	db   $e4                                         ; $6d2b: $e4
	ld   de, $b35f                                   ; $6d2c: $11 $5f $b3
	ld   d, $ff                                      ; $6d2f: $16 $ff
	ld   d, c                                        ; $6d31: $51
	ccf                                              ; $6d32: $3f
	db   $f4                                         ; $6d33: $f4
	ld   c, l                                        ; $6d34: $4d
	rst  $38                                         ; $6d35: $ff
	ld   b, [hl]                                     ; $6d36: $46
	ld   l, d                                        ; $6d37: $6a
	or   d                                           ; $6d38: $b2
	inc  sp                                          ; $6d39: $33
	ret                                              ; $6d3a: $c9


	ld   h, d                                        ; $6d3b: $62
	jr   z, jr_0d7_6d92                              ; $6d3c: $28 $54

	ld   b, a                                        ; $6d3e: $47
	xor  e                                           ; $6d3f: $ab
	or   h                                           ; $6d40: $b4
	ld   l, [hl]                                     ; $6d41: $6e
	jp   c, $f979                                    ; $6d42: $da $79 $f9

	adc  a                                           ; $6d45: $8f
	ld   d, l                                        ; $6d46: $55
	sub  d                                           ; $6d47: $92
	ld   [hl], a                                     ; $6d48: $77
	ld   a, d                                        ; $6d49: $7a
	and  [hl]                                        ; $6d4a: $a6
	ld   d, h                                        ; $6d4b: $54
	ld   a, [hl-]                                    ; $6d4c: $3a
	add  [hl]                                        ; $6d4d: $86
	ld   b, a                                        ; $6d4e: $47
	cp   c                                           ; $6d4f: $b9
	and  [hl]                                        ; $6d50: $a6
	add  [hl]                                        ; $6d51: $86
	reti                                             ; $6d52: $d9


jr_0d7_6d53:
	ld   e, a                                        ; $6d53: $5f
	sbc  e                                           ; $6d54: $9b
	add  e                                           ; $6d55: $83
	ld   h, a                                        ; $6d56: $67
	cp   c                                           ; $6d57: $b9
	and  h                                           ; $6d58: $a4
	ld   a, b                                        ; $6d59: $78
	ld   d, l                                        ; $6d5a: $55
	ld   c, b                                        ; $6d5b: $48
	ld   [hl], a                                     ; $6d5c: $77
	ld   [hl], $8b                                   ; $6d5d: $36 $8b
	add  l                                           ; $6d5f: $85
	ld   [hl], l                                     ; $6d60: $75
	cp   d                                           ; $6d61: $ba
	xor  d                                           ; $6d62: $aa
	sbc  h                                           ; $6d63: $9c
	ld   h, h                                        ; $6d64: $64
	sbc  h                                           ; $6d65: $9c
	sub  a                                           ; $6d66: $97
	ld   h, e                                        ; $6d67: $63
	sbc  d                                           ; $6d68: $9a
	halt                                             ; $6d69: $76
	ld   [hl], a                                     ; $6d6a: $77
	add  a                                           ; $6d6b: $87
	ld   e, b                                        ; $6d6c: $58
	adc  d                                           ; $6d6d: $8a
	ld   [hl], h                                     ; $6d6e: $74
	ld   h, a                                        ; $6d6f: $67
	sbc  c                                           ; $6d70: $99
	ld   [hl], l                                     ; $6d71: $75
	adc  b                                           ; $6d72: $88
	adc  b                                           ; $6d73: $88
	add  [hl]                                        ; $6d74: $86
	sbc  c                                           ; $6d75: $99
	ld   d, [hl]                                     ; $6d76: $56
	ld   l, d                                        ; $6d77: $6a
	and  a                                           ; $6d78: $a7
	ld   h, e                                        ; $6d79: $63
	adc  c                                           ; $6d7a: $89
	sub  [hl]                                        ; $6d7b: $96
	ld   c, b                                        ; $6d7c: $48
	sub  [hl]                                        ; $6d7d: $96
	ld   [hl], a                                     ; $6d7e: $77
	adc  c                                           ; $6d7f: $89
	ld   [hl], a                                     ; $6d80: $77
	ld   a, c                                        ; $6d81: $79
	adc  b                                           ; $6d82: $88
	add  a                                           ; $6d83: $87
	xor  c                                           ; $6d84: $a9
	sbc  b                                           ; $6d85: $98
	sbc  b                                           ; $6d86: $98
	sbc  b                                           ; $6d87: $98
	ld   l, c                                        ; $6d88: $69
	sbc  c                                           ; $6d89: $99
	adc  d                                           ; $6d8a: $8a
	ld   a, d                                        ; $6d8b: $7a
	add  a                                           ; $6d8c: $87
	adc  b                                           ; $6d8d: $88
	xor  c                                           ; $6d8e: $a9
	cp   b                                           ; $6d8f: $b8
	adc  b                                           ; $6d90: $88
	sbc  d                                           ; $6d91: $9a

jr_0d7_6d92:
	adc  c                                           ; $6d92: $89
	adc  d                                           ; $6d93: $8a
	sbc  b                                           ; $6d94: $98
	sbc  c                                           ; $6d95: $99
	xor  b                                           ; $6d96: $a8
	xor  b                                           ; $6d97: $a8
	sbc  b                                           ; $6d98: $98
	sbc  c                                           ; $6d99: $99
	adc  b                                           ; $6d9a: $88
	adc  c                                           ; $6d9b: $89
	adc  b                                           ; $6d9c: $88
	sbc  c                                           ; $6d9d: $99
	adc  c                                           ; $6d9e: $89
	sub  a                                           ; $6d9f: $97
	adc  d                                           ; $6da0: $8a
	adc  b                                           ; $6da1: $88
	sbc  c                                           ; $6da2: $99
	xor  b                                           ; $6da3: $a8
	sbc  b                                           ; $6da4: $98
	xor  c                                           ; $6da5: $a9
	sbc  b                                           ; $6da6: $98
	adc  c                                           ; $6da7: $89
	sub  a                                           ; $6da8: $97
	ld   [hl], a                                     ; $6da9: $77
	sbc  d                                           ; $6daa: $9a
	sbc  b                                           ; $6dab: $98
	sbc  c                                           ; $6dac: $99
	sbc  b                                           ; $6dad: $98
	sbc  b                                           ; $6dae: $98
	sbc  c                                           ; $6daf: $99
	adc  b                                           ; $6db0: $88
	adc  b                                           ; $6db1: $88
	sbc  b                                           ; $6db2: $98
	adc  c                                           ; $6db3: $89
	sbc  c                                           ; $6db4: $99
	adc  b                                           ; $6db5: $88
	sbc  b                                           ; $6db6: $98
	sbc  c                                           ; $6db7: $99
	adc  b                                           ; $6db8: $88
	adc  b                                           ; $6db9: $88
	adc  b                                           ; $6dba: $88
	sbc  b                                           ; $6dbb: $98
	adc  b                                           ; $6dbc: $88
	ld   a, b                                        ; $6dbd: $78
	sbc  b                                           ; $6dbe: $98
	ld   a, b                                        ; $6dbf: $78
	add  a                                           ; $6dc0: $87
	sbc  c                                           ; $6dc1: $99
	adc  b                                           ; $6dc2: $88
	add  a                                           ; $6dc3: $87
	adc  b                                           ; $6dc4: $88
	adc  b                                           ; $6dc5: $88
	ld   a, b                                        ; $6dc6: $78
	adc  b                                           ; $6dc7: $88
	add  a                                           ; $6dc8: $87
	ld   a, b                                        ; $6dc9: $78
	ld   a, b                                        ; $6dca: $78
	ld   [hl], a                                     ; $6dcb: $77
	ld   a, b                                        ; $6dcc: $78
	add  a                                           ; $6dcd: $87
	ld   a, b                                        ; $6dce: $78
	adc  b                                           ; $6dcf: $88
	ld   a, b                                        ; $6dd0: $78
	add  a                                           ; $6dd1: $87
	ld   a, b                                        ; $6dd2: $78
	ld   a, b                                        ; $6dd3: $78
	add  a                                           ; $6dd4: $87
	ld   [hl], a                                     ; $6dd5: $77
	ld   [hl], a                                     ; $6dd6: $77
	ld   a, b                                        ; $6dd7: $78
	add  a                                           ; $6dd8: $87
	ld   [hl], a                                     ; $6dd9: $77
	ld   [hl], a                                     ; $6dda: $77
	ld   [hl], a                                     ; $6ddb: $77
	adc  b                                           ; $6ddc: $88
	ld   [hl], a                                     ; $6ddd: $77
	adc  b                                           ; $6dde: $88
	adc  b                                           ; $6ddf: $88
	ld   a, b                                        ; $6de0: $78
	adc  b                                           ; $6de1: $88
	ld   [hl], a                                     ; $6de2: $77
	sbc  b                                           ; $6de3: $98
	add  a                                           ; $6de4: $87
	ld   [hl], a                                     ; $6de5: $77
	ld   [hl], a                                     ; $6de6: $77
	adc  b                                           ; $6de7: $88
	add  a                                           ; $6de8: $87
	ld   a, b                                        ; $6de9: $78
	ld   [hl], a                                     ; $6dea: $77
	ld   [hl], a                                     ; $6deb: $77
	adc  b                                           ; $6dec: $88
	ld   [hl], a                                     ; $6ded: $77
	adc  b                                           ; $6dee: $88
	adc  b                                           ; $6def: $88
	adc  b                                           ; $6df0: $88
	ld   [hl], a                                     ; $6df1: $77
	adc  b                                           ; $6df2: $88
	add  a                                           ; $6df3: $87
	sbc  c                                           ; $6df4: $99
	ld   a, b                                        ; $6df5: $78
	ld   a, b                                        ; $6df6: $78
	ld   a, b                                        ; $6df7: $78
	add  a                                           ; $6df8: $87
	add  a                                           ; $6df9: $87
	ld   [hl], a                                     ; $6dfa: $77
	ld   a, b                                        ; $6dfb: $78
	adc  b                                           ; $6dfc: $88
	adc  b                                           ; $6dfd: $88
	adc  b                                           ; $6dfe: $88
	adc  b                                           ; $6dff: $88
	ld   a, b                                        ; $6e00: $78
	adc  b                                           ; $6e01: $88
	adc  b                                           ; $6e02: $88
	adc  b                                           ; $6e03: $88
	adc  b                                           ; $6e04: $88
	adc  b                                           ; $6e05: $88
	ld   [hl], a                                     ; $6e06: $77
	adc  b                                           ; $6e07: $88
	add  a                                           ; $6e08: $87
	ld   a, b                                        ; $6e09: $78
	add  a                                           ; $6e0a: $87
	ld   [hl], a                                     ; $6e0b: $77
	ld   a, b                                        ; $6e0c: $78
	adc  b                                           ; $6e0d: $88
	adc  b                                           ; $6e0e: $88
	ld   [hl], a                                     ; $6e0f: $77
	adc  b                                           ; $6e10: $88

Jump_0d7_6e11:
	ld   a, b                                        ; $6e11: $78
	sub  a                                           ; $6e12: $97
	adc  b                                           ; $6e13: $88
	ld   a, b                                        ; $6e14: $78
	ld   a, b                                        ; $6e15: $78
	adc  b                                           ; $6e16: $88
	add  a                                           ; $6e17: $87
	adc  b                                           ; $6e18: $88
	ld   [hl], a                                     ; $6e19: $77
	ld   a, b                                        ; $6e1a: $78
	add  a                                           ; $6e1b: $87
	adc  b                                           ; $6e1c: $88
	adc  b                                           ; $6e1d: $88
	ld   a, b                                        ; $6e1e: $78
	adc  b                                           ; $6e1f: $88
	adc  b                                           ; $6e20: $88
	add  a                                           ; $6e21: $87
	adc  b                                           ; $6e22: $88
	ld   a, b                                        ; $6e23: $78
	adc  b                                           ; $6e24: $88
	add  a                                           ; $6e25: $87
	add  a                                           ; $6e26: $87
	adc  b                                           ; $6e27: $88
	adc  b                                           ; $6e28: $88
	adc  b                                           ; $6e29: $88
	adc  b                                           ; $6e2a: $88
	ld   a, b                                        ; $6e2b: $78
	add  a                                           ; $6e2c: $87
	adc  b                                           ; $6e2d: $88
	adc  b                                           ; $6e2e: $88
	adc  b                                           ; $6e2f: $88
	adc  b                                           ; $6e30: $88
	adc  b                                           ; $6e31: $88
	ld   a, b                                        ; $6e32: $78
	adc  b                                           ; $6e33: $88
	adc  b                                           ; $6e34: $88
	adc  b                                           ; $6e35: $88
	adc  b                                           ; $6e36: $88
	adc  b                                           ; $6e37: $88
	add  a                                           ; $6e38: $87
	ld   [hl], a                                     ; $6e39: $77
	adc  b                                           ; $6e3a: $88
	adc  b                                           ; $6e3b: $88
	adc  b                                           ; $6e3c: $88
	add  a                                           ; $6e3d: $87
	adc  b                                           ; $6e3e: $88
	ld   a, b                                        ; $6e3f: $78
	adc  c                                           ; $6e40: $89
	sbc  b                                           ; $6e41: $98
	adc  b                                           ; $6e42: $88
	add  a                                           ; $6e43: $87
	adc  b                                           ; $6e44: $88
	adc  b                                           ; $6e45: $88
	adc  b                                           ; $6e46: $88
	ld   a, b                                        ; $6e47: $78
	add  a                                           ; $6e48: $87
	adc  b                                           ; $6e49: $88
	add  a                                           ; $6e4a: $87
	adc  b                                           ; $6e4b: $88
	adc  b                                           ; $6e4c: $88
	adc  b                                           ; $6e4d: $88
	adc  b                                           ; $6e4e: $88
	adc  b                                           ; $6e4f: $88
	adc  b                                           ; $6e50: $88
	adc  b                                           ; $6e51: $88
	adc  b                                           ; $6e52: $88
	adc  b                                           ; $6e53: $88
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	adc  b                                           ; $6e56: $88
	ld   a, b                                        ; $6e57: $78
	adc  b                                           ; $6e58: $88
	adc  b                                           ; $6e59: $88
	ld   [hl], a                                     ; $6e5a: $77
	adc  b                                           ; $6e5b: $88
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
	add  a                                           ; $6e66: $87
	adc  c                                           ; $6e67: $89
	adc  b                                           ; $6e68: $88
	ld   a, b                                        ; $6e69: $78
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	adc  b                                           ; $6e6c: $88
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	adc  c                                           ; $6e6f: $89
	adc  b                                           ; $6e70: $88
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
	add  a                                           ; $6e7b: $87
	adc  b                                           ; $6e7c: $88
	adc  b                                           ; $6e7d: $88
	adc  b                                           ; $6e7e: $88
	adc  b                                           ; $6e7f: $88
	adc  b                                           ; $6e80: $88
	adc  b                                           ; $6e81: $88
	sbc  c                                           ; $6e82: $99
	adc  b                                           ; $6e83: $88
	adc  b                                           ; $6e84: $88
	adc  b                                           ; $6e85: $88
	adc  b                                           ; $6e86: $88
	adc  b                                           ; $6e87: $88
	adc  b                                           ; $6e88: $88
	add  a                                           ; $6e89: $87
	adc  b                                           ; $6e8a: $88
	adc  b                                           ; $6e8b: $88
	adc  c                                           ; $6e8c: $89
	adc  b                                           ; $6e8d: $88
	ld   a, b                                        ; $6e8e: $78
	adc  b                                           ; $6e8f: $88
	adc  b                                           ; $6e90: $88
	adc  c                                           ; $6e91: $89
	adc  b                                           ; $6e92: $88
	adc  b                                           ; $6e93: $88
	adc  b                                           ; $6e94: $88
	adc  b                                           ; $6e95: $88
	adc  b                                           ; $6e96: $88
	adc  b                                           ; $6e97: $88
	adc  b                                           ; $6e98: $88
	adc  b                                           ; $6e99: $88
	adc  b                                           ; $6e9a: $88
	adc  b                                           ; $6e9b: $88
	adc  b                                           ; $6e9c: $88
	sbc  b                                           ; $6e9d: $98
	adc  b                                           ; $6e9e: $88
	adc  c                                           ; $6e9f: $89
	adc  b                                           ; $6ea0: $88
	adc  b                                           ; $6ea1: $88
	adc  c                                           ; $6ea2: $89
	adc  b                                           ; $6ea3: $88
	adc  b                                           ; $6ea4: $88
	adc  b                                           ; $6ea5: $88
	adc  b                                           ; $6ea6: $88
	adc  b                                           ; $6ea7: $88
	adc  b                                           ; $6ea8: $88
	adc  b                                           ; $6ea9: $88
	adc  b                                           ; $6eaa: $88
	adc  b                                           ; $6eab: $88
	adc  b                                           ; $6eac: $88
	adc  b                                           ; $6ead: $88
	sbc  c                                           ; $6eae: $99
	adc  c                                           ; $6eaf: $89
	adc  b                                           ; $6eb0: $88
	adc  b                                           ; $6eb1: $88
	adc  b                                           ; $6eb2: $88
	adc  b                                           ; $6eb3: $88
	adc  b                                           ; $6eb4: $88
	adc  c                                           ; $6eb5: $89
	adc  b                                           ; $6eb6: $88
	sbc  c                                           ; $6eb7: $99
	adc  b                                           ; $6eb8: $88
	adc  b                                           ; $6eb9: $88
	adc  b                                           ; $6eba: $88
	adc  b                                           ; $6ebb: $88
	adc  b                                           ; $6ebc: $88
	adc  b                                           ; $6ebd: $88
	adc  b                                           ; $6ebe: $88
	sbc  b                                           ; $6ebf: $98
	adc  b                                           ; $6ec0: $88
	ld   a, c                                        ; $6ec1: $79
	sbc  b                                           ; $6ec2: $98
	sbc  c                                           ; $6ec3: $99
	sbc  b                                           ; $6ec4: $98
	ld   a, b                                        ; $6ec5: $78
	adc  b                                           ; $6ec6: $88
	sbc  b                                           ; $6ec7: $98
	adc  c                                           ; $6ec8: $89
	add  a                                           ; $6ec9: $87
	adc  c                                           ; $6eca: $89
	adc  c                                           ; $6ecb: $89
	adc  b                                           ; $6ecc: $88
	sbc  b                                           ; $6ecd: $98
	adc  c                                           ; $6ece: $89
	adc  b                                           ; $6ecf: $88
	adc  b                                           ; $6ed0: $88
	adc  c                                           ; $6ed1: $89
	adc  b                                           ; $6ed2: $88
	adc  b                                           ; $6ed3: $88
	sbc  b                                           ; $6ed4: $98
	adc  b                                           ; $6ed5: $88
	adc  b                                           ; $6ed6: $88
	adc  c                                           ; $6ed7: $89
	adc  b                                           ; $6ed8: $88
	sbc  c                                           ; $6ed9: $99
	adc  b                                           ; $6eda: $88
	adc  b                                           ; $6edb: $88
	sbc  b                                           ; $6edc: $98
	adc  c                                           ; $6edd: $89
	adc  b                                           ; $6ede: $88
	adc  b                                           ; $6edf: $88
	adc  b                                           ; $6ee0: $88
	adc  b                                           ; $6ee1: $88
	adc  b                                           ; $6ee2: $88
	adc  b                                           ; $6ee3: $88
	adc  c                                           ; $6ee4: $89
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	sbc  b                                           ; $6ee7: $98
	sbc  b                                           ; $6ee8: $98
	adc  b                                           ; $6ee9: $88
	adc  b                                           ; $6eea: $88
	adc  c                                           ; $6eeb: $89
	adc  b                                           ; $6eec: $88
	adc  b                                           ; $6eed: $88
	sbc  b                                           ; $6eee: $98
	adc  b                                           ; $6eef: $88
	adc  c                                           ; $6ef0: $89
	adc  b                                           ; $6ef1: $88
	adc  b                                           ; $6ef2: $88
	adc  b                                           ; $6ef3: $88
	adc  b                                           ; $6ef4: $88
	sbc  c                                           ; $6ef5: $99
	adc  b                                           ; $6ef6: $88
	adc  c                                           ; $6ef7: $89
	adc  b                                           ; $6ef8: $88
	adc  b                                           ; $6ef9: $88
	adc  b                                           ; $6efa: $88
	adc  b                                           ; $6efb: $88
	add  a                                           ; $6efc: $87
	ld   a, c                                        ; $6efd: $79
	xor  b                                           ; $6efe: $a8
	adc  b                                           ; $6eff: $88
	adc  b                                           ; $6f00: $88
	ld   a, b                                        ; $6f01: $78
	sbc  c                                           ; $6f02: $99
	adc  b                                           ; $6f03: $88
	sbc  b                                           ; $6f04: $98
	adc  b                                           ; $6f05: $88
	adc  b                                           ; $6f06: $88
	adc  c                                           ; $6f07: $89
	adc  b                                           ; $6f08: $88
	adc  b                                           ; $6f09: $88
	adc  b                                           ; $6f0a: $88
	adc  b                                           ; $6f0b: $88
	sbc  b                                           ; $6f0c: $98
	adc  b                                           ; $6f0d: $88
	adc  b                                           ; $6f0e: $88
	sbc  c                                           ; $6f0f: $99
	adc  b                                           ; $6f10: $88
	adc  b                                           ; $6f11: $88
	adc  b                                           ; $6f12: $88
	sub  a                                           ; $6f13: $97
	adc  c                                           ; $6f14: $89
	adc  b                                           ; $6f15: $88
	adc  b                                           ; $6f16: $88
	sbc  c                                           ; $6f17: $99
	adc  b                                           ; $6f18: $88
	adc  b                                           ; $6f19: $88
	adc  b                                           ; $6f1a: $88
	adc  b                                           ; $6f1b: $88
	adc  c                                           ; $6f1c: $89
	adc  c                                           ; $6f1d: $89
	sub  a                                           ; $6f1e: $97
	sbc  c                                           ; $6f1f: $99
	adc  c                                           ; $6f20: $89
	adc  b                                           ; $6f21: $88
	ld   a, b                                        ; $6f22: $78
	ld   a, b                                        ; $6f23: $78
	sbc  b                                           ; $6f24: $98
	sbc  b                                           ; $6f25: $98
	adc  b                                           ; $6f26: $88
	add  a                                           ; $6f27: $87
	ld   a, b                                        ; $6f28: $78
	xor  c                                           ; $6f29: $a9
	adc  b                                           ; $6f2a: $88
	adc  b                                           ; $6f2b: $88
	adc  b                                           ; $6f2c: $88
	adc  c                                           ; $6f2d: $89
	sbc  b                                           ; $6f2e: $98
	ld   [hl], a                                     ; $6f2f: $77
	add  a                                           ; $6f30: $87
	ld   a, c                                        ; $6f31: $79
	ld   a, b                                        ; $6f32: $78
	sub  a                                           ; $6f33: $97
	adc  b                                           ; $6f34: $88
	adc  d                                           ; $6f35: $8a
	sbc  b                                           ; $6f36: $98
	adc  b                                           ; $6f37: $88
	sbc  c                                           ; $6f38: $99
	sbc  c                                           ; $6f39: $99
	sub  a                                           ; $6f3a: $97
	adc  b                                           ; $6f3b: $88
	adc  b                                           ; $6f3c: $88
	ld   [hl], a                                     ; $6f3d: $77
	adc  b                                           ; $6f3e: $88
	ld   a, b                                        ; $6f3f: $78
	sbc  b                                           ; $6f40: $98
	sub  a                                           ; $6f41: $97
	ld   a, c                                        ; $6f42: $79
	sbc  b                                           ; $6f43: $98
	adc  c                                           ; $6f44: $89
	adc  b                                           ; $6f45: $88
	add  a                                           ; $6f46: $87
	adc  b                                           ; $6f47: $88
	ld   [hl], a                                     ; $6f48: $77
	sbc  b                                           ; $6f49: $98
	ld   [hl], a                                     ; $6f4a: $77
	adc  c                                           ; $6f4b: $89
	adc  b                                           ; $6f4c: $88
	adc  b                                           ; $6f4d: $88
	adc  b                                           ; $6f4e: $88
	ld   a, c                                        ; $6f4f: $79
	add  a                                           ; $6f50: $87
	sub  a                                           ; $6f51: $97
	ld   l, c                                        ; $6f52: $69
	adc  b                                           ; $6f53: $88
	sub  a                                           ; $6f54: $97
	adc  c                                           ; $6f55: $89
	sbc  b                                           ; $6f56: $98
	ld   [hl], a                                     ; $6f57: $77
	sub  a                                           ; $6f58: $97
	ld   a, b                                        ; $6f59: $78
	adc  c                                           ; $6f5a: $89
	ld   [hl], a                                     ; $6f5b: $77
	sbc  b                                           ; $6f5c: $98
	ld   a, c                                        ; $6f5d: $79
	sub  a                                           ; $6f5e: $97
	sbc  b                                           ; $6f5f: $98
	add  a                                           ; $6f60: $87
	sub  a                                           ; $6f61: $97
	adc  c                                           ; $6f62: $89
	ld   a, b                                        ; $6f63: $78
	adc  b                                           ; $6f64: $88
	adc  b                                           ; $6f65: $88
	adc  c                                           ; $6f66: $89
	adc  b                                           ; $6f67: $88
	sbc  b                                           ; $6f68: $98
	add  a                                           ; $6f69: $87
	adc  b                                           ; $6f6a: $88
	adc  b                                           ; $6f6b: $88
	add  a                                           ; $6f6c: $87
	sbc  b                                           ; $6f6d: $98
	ld   a, b                                        ; $6f6e: $78
	add  a                                           ; $6f6f: $87
	adc  c                                           ; $6f70: $89
	ld   a, b                                        ; $6f71: $78
	sbc  e                                           ; $6f72: $9b
	sub  a                                           ; $6f73: $97
	add  a                                           ; $6f74: $87
	cp   b                                           ; $6f75: $b8
	ld   a, c                                        ; $6f76: $79
	ld   a, c                                        ; $6f77: $79
	adc  b                                           ; $6f78: $88
	ld   [hl], a                                     ; $6f79: $77
	and  a                                           ; $6f7a: $a7
	ld   [hl], a                                     ; $6f7b: $77
	sbc  b                                           ; $6f7c: $98
	ld   a, b                                        ; $6f7d: $78
	adc  b                                           ; $6f7e: $88
	adc  b                                           ; $6f7f: $88
	ld   l, b                                        ; $6f80: $68
	adc  b                                           ; $6f81: $88
	ld   h, a                                        ; $6f82: $67
	adc  b                                           ; $6f83: $88
	adc  d                                           ; $6f84: $8a
	sbc  c                                           ; $6f85: $99
	cp   c                                           ; $6f86: $b9
	ld   [hl], a                                     ; $6f87: $77
	sbc  e                                           ; $6f88: $9b
	sub  [hl]                                        ; $6f89: $96
	ld   d, a                                        ; $6f8a: $57
	ld   [hl], h                                     ; $6f8b: $74
	ld   b, a                                        ; $6f8c: $47
	ld   l, b                                        ; $6f8d: $68
	add  a                                           ; $6f8e: $87
	adc  d                                           ; $6f8f: $8a
	xor  c                                           ; $6f90: $a9
	ld   [hl], a                                     ; $6f91: $77
	sbc  h                                           ; $6f92: $9c
	xor  b                                           ; $6f93: $a8
	sbc  d                                           ; $6f94: $9a
	add  a                                           ; $6f95: $87
	ld   [hl], a                                     ; $6f96: $77
	sub  a                                           ; $6f97: $97
	ld   [hl], a                                     ; $6f98: $77
	adc  c                                           ; $6f99: $89
	add  a                                           ; $6f9a: $87
	ld   a, b                                        ; $6f9b: $78
	sbc  c                                           ; $6f9c: $99
	ld   a, b                                        ; $6f9d: $78
	ld   a, b                                        ; $6f9e: $78
	add  a                                           ; $6f9f: $87
	add  a                                           ; $6fa0: $87
	adc  b                                           ; $6fa1: $88
	add  a                                           ; $6fa2: $87
	halt                                             ; $6fa3: $76
	ld   [hl], a                                     ; $6fa4: $77
	ld   a, b                                        ; $6fa5: $78
	adc  c                                           ; $6fa6: $89
	ld   a, b                                        ; $6fa7: $78
	ld   a, b                                        ; $6fa8: $78
	adc  b                                           ; $6fa9: $88
	sbc  c                                           ; $6faa: $99
	sbc  c                                           ; $6fab: $99
	sbc  c                                           ; $6fac: $99
	adc  b                                           ; $6fad: $88
	sbc  c                                           ; $6fae: $99
	ld   h, a                                        ; $6faf: $67
	ld   a, d                                        ; $6fb0: $7a
	sbc  c                                           ; $6fb1: $99
	sbc  d                                           ; $6fb2: $9a
	cp   e                                           ; $6fb3: $bb
	add  a                                           ; $6fb4: $87
	add  a                                           ; $6fb5: $87
	ld   [hl], l                                     ; $6fb6: $75
	ld   d, [hl]                                     ; $6fb7: $56
	ld   [hl], a                                     ; $6fb8: $77
	ld   h, [hl]                                     ; $6fb9: $66
	ld   a, b                                        ; $6fba: $78
	adc  b                                           ; $6fbb: $88
	ld   a, b                                        ; $6fbc: $78
	xor  e                                           ; $6fbd: $ab
	sbc  b                                           ; $6fbe: $98
	sbc  d                                           ; $6fbf: $9a
	sub  [hl]                                        ; $6fc0: $96
	ld   h, a                                        ; $6fc1: $67
	sbc  b                                           ; $6fc2: $98
	ld   h, [hl]                                     ; $6fc3: $66
	ld   l, c                                        ; $6fc4: $69
	add  [hl]                                        ; $6fc5: $86
	ld   h, a                                        ; $6fc6: $67
	halt                                             ; $6fc7: $76
	ld   [hl], a                                     ; $6fc8: $77
	add  a                                           ; $6fc9: $87
	ld   h, [hl]                                     ; $6fca: $66
	ld   a, b                                        ; $6fcb: $78
	sbc  c                                           ; $6fcc: $99
	xor  b                                           ; $6fcd: $a8
	xor  d                                           ; $6fce: $aa
	xor  d                                           ; $6fcf: $aa
	cp   d                                           ; $6fd0: $ba
	xor  e                                           ; $6fd1: $ab
	xor  c                                           ; $6fd2: $a9
	adc  c                                           ; $6fd3: $89
	add  a                                           ; $6fd4: $87
	ld   l, b                                        ; $6fd5: $68
	sub  a                                           ; $6fd6: $97
	ld   b, e                                        ; $6fd7: $43
	ld   b, h                                        ; $6fd8: $44
	inc  sp                                          ; $6fd9: $33
	inc  sp                                          ; $6fda: $33
	ld   b, h                                        ; $6fdb: $44
	ld   b, h                                        ; $6fdc: $44
	ld   l, b                                        ; $6fdd: $68
	sbc  h                                           ; $6fde: $9c
	rst  JumpTable                                         ; $6fdf: $df
	rst  $38                                         ; $6fe0: $ff
	xor  $fe                                         ; $6fe1: $ee $fe
	db   $ed                                         ; $6fe3: $ed
	db   $eb                                         ; $6fe4: $eb
	cp   d                                           ; $6fe5: $ba
	add  l                                           ; $6fe6: $85
	ld   b, c                                        ; $6fe7: $41
	ld   de, $1111                                   ; $6fe8: $11 $11 $11
	ld   de, $df17                                   ; $6feb: $11 $17 $df
	rst  $38                                         ; $6fee: $ff
	rst  $38                                         ; $6fef: $ff
	rst  $38                                         ; $6ff0: $ff
	rst  $38                                         ; $6ff1: $ff
	rst  $38                                         ; $6ff2: $ff
	db   $fc                                         ; $6ff3: $fc
	cp   l                                           ; $6ff4: $bd
	sub  [hl]                                        ; $6ff5: $96
	ld   [hl-], a                                    ; $6ff6: $32
	ld   hl, $1111                                   ; $6ff7: $21 $11 $11
	ld   de, $af41                                   ; $6ffa: $11 $41 $af
	rst  $38                                         ; $6ffd: $ff
	cp   $ff                                         ; $6ffe: $fe $ff
	db   $dd                                         ; $7000: $dd
	rst  $38                                         ; $7001: $ff
	rst  $38                                         ; $7002: $ff
	sbc  d                                           ; $7003: $9a
	add  sp, $54                                     ; $7004: $e8 $54
	ld   d, l                                        ; $7006: $55
	ld   sp, $1111                                   ; $7007: $31 $11 $11
	inc  de                                          ; $700a: $13
	inc  de                                          ; $700b: $13
	rst  JumpTable                                         ; $700c: $df
	rst  $38                                         ; $700d: $ff
	rst  $38                                         ; $700e: $ff
	rst  $38                                         ; $700f: $ff
	adc  $ff                                         ; $7010: $ce $ff
	ld   a, [$b69c]                                  ; $7012: $fa $9c $b6
	ld   d, [hl]                                     ; $7015: $56
	ld   [hl], h                                     ; $7016: $74
	ld   de, $1111                                   ; $7017: $11 $11 $11
	dec  d                                           ; $701a: $15
	rla                                              ; $701b: $17
	rst  $38                                         ; $701c: $ff
	rst  $38                                         ; $701d: $ff
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7020: $cf
	rst  $38                                         ; $7021: $ff
	ld   [$75ad], a                                  ; $7022: $ea $ad $75
	ld   d, a                                        ; $7025: $57
	ld   d, c                                        ; $7026: $51
	ld   de, $1111                                   ; $7027: $11 $11 $11
	ld   hl, $ff6f                                   ; $702a: $21 $6f $ff
	rst  $38                                         ; $702d: $ff
	rst  $38                                         ; $702e: $ff
	call c, $feff                                    ; $702f: $dc $ff $fe
	sbc  h                                           ; $7032: $9c
	rst  $20                                         ; $7033: $e7
	ld   b, a                                        ; $7034: $47
	halt                                             ; $7035: $76
	ld   hl, $1111                                   ; $7036: $21 $11 $11
	inc  d                                           ; $7039: $14
	ld   [de], a                                     ; $703a: $12
	rst  $28                                         ; $703b: $ef
	rst  $38                                         ; $703c: $ff
	rst  $38                                         ; $703d: $ff
	rst  $38                                         ; $703e: $ff
	sbc  l                                           ; $703f: $9d
	rst  $38                                         ; $7040: $ff
	jp   hl                                          ; $7041: $e9


	adc  [hl]                                        ; $7042: $8e
	or   l                                           ; $7043: $b5
	ld   l, b                                        ; $7044: $68
	add  d                                           ; $7045: $82
	ld   de, $1111                                   ; $7046: $11 $11 $11
	ld   de, $ff1f                                   ; $7049: $11 $1f $ff
	rst  $38                                         ; $704c: $ff
	rst  $38                                         ; $704d: $ff
	or   $ff                                         ; $704e: $f6 $ff
	cp   $8b                                         ; $7050: $fe $8b
	ld   sp, hl                                      ; $7052: $f9
	ld   h, $97                                      ; $7053: $26 $97
	ld   hl, $1111                                   ; $7055: $21 $11 $11
	ld   [de], a                                     ; $7058: $12
	ld   de, $ffef                                   ; $7059: $11 $ef $ff
	rst  $38                                         ; $705c: $ff
	rst  $38                                         ; $705d: $ff
	ld   a, a                                        ; $705e: $7f
	rst  $38                                         ; $705f: $ff
	ld   a, [$a3be]                                  ; $7060: $fa $be $a3
	ld   [hl], a                                     ; $7063: $77
	sub  h                                           ; $7064: $94
	ld   de, $1111                                   ; $7065: $11 $11 $11
	ld   de, $ff1f                                   ; $7068: $11 $1f $ff
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	ld   hl, sp-$01                                  ; $706d: $f8 $ff
	rst  $38                                         ; $706f: $ff
	adc  h                                           ; $7070: $8c
	ei                                               ; $7071: $fb
	ld   b, a                                        ; $7072: $47
	halt                                             ; $7073: $76
	ld   b, c                                        ; $7074: $41
	ld   de, $1211                                   ; $7075: $11 $11 $12
	ld   [hl+], a                                    ; $7078: $22
	rst  $38                                         ; $7079: $ff
	rst  $38                                         ; $707a: $ff
	rst  $28                                         ; $707b: $ef
	rst  $38                                         ; $707c: $ff
	ld   a, h                                        ; $707d: $7c
	rst  $38                                         ; $707e: $ff
	ld   hl, sp-$51                                  ; $707f: $f8 $af
	push bc                                          ; $7081: $c5
	ld   h, a                                        ; $7082: $67
	sub  l                                           ; $7083: $95
	ld   de, $1111                                   ; $7084: $11 $11 $11
	ld   [de], a                                     ; $7087: $12
	rra                                              ; $7088: $1f
	rst  $38                                         ; $7089: $ff
	rst  $38                                         ; $708a: $ff
	rst  $38                                         ; $708b: $ff
	and  $df                                         ; $708c: $e6 $df
	cp   $9c                                         ; $708e: $fe $9c
	db   $eb                                         ; $7090: $eb
	scf                                              ; $7091: $37
	adc  e                                           ; $7092: $8b
	ld   b, c                                        ; $7093: $41
	ld   de, $1111                                   ; $7094: $11 $11 $11
	ld   [hl], c                                     ; $7097: $71
	cp   a                                           ; $7098: $bf
	rst  $38                                         ; $7099: $ff
	rst  $38                                         ; $709a: $ff
	rst  $38                                         ; $709b: $ff
	ld   l, h                                        ; $709c: $6c
	rst  $28                                         ; $709d: $ef
	db   $db                                         ; $709e: $db
	db   $ed                                         ; $709f: $ed
	rst  ToBoot                                         ; $70a0: $c7
	sbc  c                                           ; $70a1: $99
	sub  l                                           ; $70a2: $95
	ld   de, $1111                                   ; $70a3: $11 $11 $11
	ld   d, $1f                                      ; $70a6: $16 $1f
	rst  $38                                         ; $70a8: $ff
	rst  $38                                         ; $70a9: $ff
	rst  $28                                         ; $70aa: $ef
	push af                                          ; $70ab: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70ac: $cf
	rst  $38                                         ; $70ad: $ff
	cp   l                                           ; $70ae: $bd
	db   $ec                                         ; $70af: $ec
	ld   l, b                                        ; $70b0: $68
	xor  b                                           ; $70b1: $a8
	ld   [hl], c                                     ; $70b2: $71
	ld   de, $1111                                   ; $70b3: $11 $11 $11
	ld   b, e                                        ; $70b6: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70b7: $cf
	rst  $38                                         ; $70b8: $ff
	cp   $ff                                         ; $70b9: $fe $ff
	ld   a, d                                        ; $70bb: $7a
	rst  $28                                         ; $70bc: $ef
	db   $fc                                         ; $70bd: $fc
	adc  $e6                                         ; $70be: $ce $e6
	adc  e                                           ; $70c0: $8b
	xor  b                                           ; $70c1: $a8
	ld   de, $1111                                   ; $70c2: $11 $11 $11
	dec  d                                           ; $70c5: $15
	dec  h                                           ; $70c6: $25
	rst  $38                                         ; $70c7: $ff
	rst  $38                                         ; $70c8: $ff
	db   $fc                                         ; $70c9: $fc
	db   $fd                                         ; $70ca: $fd
	ld   l, l                                        ; $70cb: $6d
	rst  $28                                         ; $70cc: $ef
	db   $fd                                         ; $70cd: $fd
	cp   [hl]                                        ; $70ce: $be
	rst  $10                                         ; $70cf: $d7
	sbc  c                                           ; $70d0: $99
	sub  [hl]                                        ; $70d1: $96
	ld   de, $1111                                   ; $70d2: $11 $11 $11
	rla                                              ; $70d5: $17
	ld   e, $ff                                      ; $70d6: $1e $ff
	rst  $38                                         ; $70d8: $ff
	rst  $38                                         ; $70d9: $ff
	push af                                          ; $70da: $f5
	cp   a                                           ; $70db: $bf
	cp   $cf                                         ; $70dc: $fe $cf
	db   $dd                                         ; $70de: $dd
	adc  e                                           ; $70df: $8b
	jp   c, $1161                                    ; $70e0: $da $61 $11

	ld   de, $4111                                   ; $70e3: $11 $11 $41
	ld   e, a                                        ; $70e6: $5f
	rst  $38                                         ; $70e7: $ff
	rst  $38                                         ; $70e8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70e9: $cf
	or   [hl]                                        ; $70ea: $b6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70eb: $cf
	rst  $38                                         ; $70ec: $ff
	db   $dd                                         ; $70ed: $dd
	db   $fc                                         ; $70ee: $fc
	xor  e                                           ; $70ef: $ab
	ret                                              ; $70f0: $c9


	ld   h, c                                        ; $70f1: $61
	ld   de, $1111                                   ; $70f2: $11 $11 $11
	ld   h, l                                        ; $70f5: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70f6: $cf
	rst  $38                                         ; $70f7: $ff
	db   $fd                                         ; $70f8: $fd
	rst  $38                                         ; $70f9: $ff
	add  a                                           ; $70fa: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70fb: $cf
	db   $fd                                         ; $70fc: $fd
	sbc  $fc                                         ; $70fd: $de $fc
	sbc  h                                           ; $70ff: $9c
	sbc  c                                           ; $7100: $99
	ld   sp, $1111                                   ; $7101: $31 $11 $11
	ld   de, $ff63                                   ; $7104: $11 $63 $ff
	rst  $38                                         ; $7107: $ff
	db   $fd                                         ; $7108: $fd
	rst  $38                                         ; $7109: $ff
	ld   l, c                                        ; $710a: $69
	cp   a                                           ; $710b: $bf
	db   $fc                                         ; $710c: $fc
	rst  $28                                         ; $710d: $ef
	ei                                               ; $710e: $fb
	xor  d                                           ; $710f: $aa
	and  [hl]                                        ; $7110: $a6
	ld   de, $1111                                   ; $7111: $11 $11 $11
	ld   de, $ff66                                   ; $7114: $11 $66 $ff
	rst  $38                                         ; $7117: $ff
	db   $fd                                         ; $7118: $fd
	cp   $7a                                         ; $7119: $fe $7a
	rst  $28                                         ; $711b: $ef
	call c, $faef                                    ; $711c: $dc $ef $fa
	cp   e                                           ; $711f: $bb
	add  $11                                         ; $7120: $c6 $11
	ld   de, $1611                                   ; $7122: $11 $11 $16
	ld   d, a                                        ; $7125: $57
	rst  $38                                         ; $7126: $ff
	rst  $38                                         ; $7127: $ff
	db   $fc                                         ; $7128: $fc
	ei                                               ; $7129: $fb
	adc  d                                           ; $712a: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $712b: $cf
	rst  JumpTable                                         ; $712c: $df
	rst  $38                                         ; $712d: $ff
	db   $eb                                         ; $712e: $eb
	reti                                             ; $712f: $d9


	or   e                                           ; $7130: $b3
	ld   de, $1111                                   ; $7131: $11 $11 $11
	ld   d, $54                                      ; $7134: $16 $54
	rst  $38                                         ; $7136: $ff
	rst  $38                                         ; $7137: $ff
	db   $ed                                         ; $7138: $ed
	cp   $68                                         ; $7139: $fe $68
	rst  JumpTable                                         ; $713b: $df
	db   $fc                                         ; $713c: $fc
	rst  $28                                         ; $713d: $ef
	db   $fc                                         ; $713e: $fc
	cp   c                                           ; $713f: $b9
	and  a                                           ; $7140: $a7
	ld   de, $1111                                   ; $7141: $11 $11 $11
	inc  de                                          ; $7144: $13
	and  l                                           ; $7145: $a5
	rst  $28                                         ; $7146: $ef
	rst  $38                                         ; $7147: $ff
	cp   h                                           ; $7148: $bc
	cp   $79                                         ; $7149: $fe $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $714b: $cf
	ei                                               ; $714c: $fb
	rst  $38                                         ; $714d: $ff
	db   $fd                                         ; $714e: $fd
	xor  e                                           ; $714f: $ab
	and  a                                           ; $7150: $a7
	ld   de, $1111                                   ; $7151: $11 $11 $11
	ld   de, $cf94                                   ; $7154: $11 $94 $cf
	rst  $38                                         ; $7157: $ff
	db   $fd                                         ; $7158: $fd
	rst  $38                                         ; $7159: $ff
	adc  b                                           ; $715a: $88
	rst  JumpTable                                         ; $715b: $df
	db   $fc                                         ; $715c: $fc
	xor  $fe                                         ; $715d: $ee $fe
	res  5, c                                        ; $715f: $cb $a9
	ld   sp, $1111                                   ; $7161: $31 $11 $11
	ld   de, $8f65                                   ; $7164: $11 $65 $8f
	rst  $38                                         ; $7167: $ff
	rst  $38                                         ; $7168: $ff
	rst  $28                                         ; $7169: $ef
	rst  ToBoot                                         ; $716a: $c7
	cp   [hl]                                        ; $716b: $be
	cp   $de                                         ; $716c: $fe $de
	rst  $38                                         ; $716e: $ff
	call c, Call_0d7_51ab                            ; $716f: $dc $ab $51
	ld   de, $1111                                   ; $7172: $11 $11 $11
	ld   a, [de]                                     ; $7175: $1a
	ld   l, h                                        ; $7176: $6c
	rst  $28                                         ; $7177: $ef
	cp   $fc                                         ; $7178: $fe $fc
	ld   a, [$ef9d]                                  ; $717a: $fa $9d $ef
	rst  JumpTable                                         ; $717d: $df
	rst  $28                                         ; $717e: $ef
	ei                                               ; $717f: $fb
	ret  z                                           ; $7180: $c8

	sub  e                                           ; $7181: $93
	ld   de, $1111                                   ; $7182: $11 $11 $11
	ld   de, $fd78                                   ; $7185: $11 $78 $fd
	rst  $38                                         ; $7188: $ff
	db   $fc                                         ; $7189: $fc
	adc  $cc                                         ; $718a: $ce $cc
	adc  $ff                                         ; $718c: $ce $ff
	rst  $38                                         ; $718e: $ff
	rst  $38                                         ; $718f: $ff
	res  2, [hl]                                     ; $7190: $cb $96
	ld   b, c                                        ; $7192: $41
	ld   de, $1111                                   ; $7193: $11 $11 $11
	ld   a, [de]                                     ; $7196: $1a
	ld   a, d                                        ; $7197: $7a
	cp   a                                           ; $7198: $bf
	rst  $38                                         ; $7199: $ff
	set  7, h                                        ; $719a: $cb $fc
	xor  c                                           ; $719c: $a9
	rst  $38                                         ; $719d: $ff
	rst  $38                                         ; $719e: $ff
	rst  $28                                         ; $719f: $ef
	db   $fc                                         ; $71a0: $fc
	sub  a                                           ; $71a1: $97
	add  h                                           ; $71a2: $84
	ld   sp, $1111                                   ; $71a3: $31 $11 $11
	ld   de, $ad77                                   ; $71a6: $11 $77 $ad
	rst  $38                                         ; $71a9: $ff
	xor  $ce                                         ; $71aa: $ee $ce
	set  5, l                                        ; $71ac: $cb $ed
	rst  $38                                         ; $71ae: $ff
	rst  $38                                         ; $71af: $ff
	rst  $28                                         ; $71b0: $ef
	cp   l                                           ; $71b1: $bd
	adc  c                                           ; $71b2: $89
	ld   b, c                                        ; $71b3: $41
	ld   de, $1111                                   ; $71b4: $11 $11 $11
	inc  de                                          ; $71b7: $13
	ld   b, [hl]                                     ; $71b8: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71b9: $cf
	rst  $38                                         ; $71ba: $ff
	db   $fd                                         ; $71bb: $fd
	db   $fd                                         ; $71bc: $fd
	adc  l                                           ; $71bd: $8d
	rst  $38                                         ; $71be: $ff
	cp   $fe                                         ; $71bf: $fe $fe
	ei                                               ; $71c1: $fb
	sbc  h                                           ; $71c2: $9c
	sub  a                                           ; $71c3: $97
	inc  sp                                          ; $71c4: $33
	ld   de, $1111                                   ; $71c5: $11 $11 $11
	dec  d                                           ; $71c8: $15
	ld   h, l                                        ; $71c9: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71ca: $cf
	cp   $dd                                         ; $71cb: $fe $dd
	db   $fc                                         ; $71cd: $fc
	adc  l                                           ; $71ce: $8d
	rst  $38                                         ; $71cf: $ff
	cp   $ff                                         ; $71d0: $fe $ff
	ei                                               ; $71d2: $fb
	xor  d                                           ; $71d3: $aa
	sub  [hl]                                        ; $71d4: $96
	inc  sp                                          ; $71d5: $33
	ld   de, $1111                                   ; $71d6: $11 $11 $11
	inc  de                                          ; $71d9: $13
	ld   d, a                                        ; $71da: $57
	cp   e                                           ; $71db: $bb
	rst  $38                                         ; $71dc: $ff
	xor  $de                                         ; $71dd: $ee $de
	cp   [hl]                                        ; $71df: $be
	rst  $38                                         ; $71e0: $ff
	rst  $38                                         ; $71e1: $ff
	rst  $38                                         ; $71e2: $ff
	db   $ed                                         ; $71e3: $ed
	xor  e                                           ; $71e4: $ab
	sub  [hl]                                        ; $71e5: $96
	inc  sp                                          ; $71e6: $33
	ld   de, $1111                                   ; $71e7: $11 $11 $11
	ld   de, $8a66                                   ; $71ea: $11 $66 $8a
	rst  $38                                         ; $71ed: $ff
	db   $ec                                         ; $71ee: $ec
	cp   a                                           ; $71ef: $bf
	call z, $ffef                                    ; $71f0: $cc $ef $ff
	db   $fd                                         ; $71f3: $fd
	db   $ed                                         ; $71f4: $ed
	res  1, d                                        ; $71f5: $cb $8a
	ld   h, l                                        ; $71f7: $65
	ld   hl, $1111                                   ; $71f8: $21 $11 $11
	ld   de, $4a23                                   ; $71fb: $11 $23 $4a
	sbc  [hl]                                        ; $71fe: $9e
	cp   $ec                                         ; $71ff: $fe $ec
	set  7, [hl]                                     ; $7201: $cb $fe
	rst  $38                                         ; $7203: $ff
	rst  $38                                         ; $7204: $ff
	rst  $38                                         ; $7205: $ff
	db   $db                                         ; $7206: $db
	cp   d                                           ; $7207: $ba
	add  l                                           ; $7208: $85
	ld   b, e                                        ; $7209: $43
	ld   de, $1111                                   ; $720a: $11 $11 $11
	ld   de, $6943                                   ; $720d: $11 $43 $69
	rst  JumpTable                                         ; $7210: $df
	db   $ec                                         ; $7211: $ec
	xor  [hl]                                        ; $7212: $ae
	cp   $ff                                         ; $7213: $fe $ff
	rst  $38                                         ; $7215: $ff
	cp   $ee                                         ; $7216: $fe $ee
	jp   z, Jump_0d7_7598                            ; $7218: $ca $98 $75

	ld   b, c                                        ; $721b: $41
	ld   de, $1111                                   ; $721c: $11 $11 $11
	ld   [de], a                                     ; $721f: $12
	ld   d, e                                        ; $7220: $53
	ld   a, d                                        ; $7221: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7222: $cf
	call c, $cede                                    ; $7223: $dc $de $ce
	rst  $38                                         ; $7226: $ff
	rst  $38                                         ; $7227: $ff
	rst  $38                                         ; $7228: $ff
	cp   $bb                                         ; $7229: $fe $bb
	sub  a                                           ; $722b: $97
	ld   d, l                                        ; $722c: $55
	ld   d, d                                        ; $722d: $52
	ld   de, $1111                                   ; $722e: $11 $11 $11
	ld   de, $8636                                   ; $7231: $11 $36 $86
	sbc  [hl]                                        ; $7234: $9e
	cp   $cb                                         ; $7235: $fe $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7237: $cf
	rst  $38                                         ; $7238: $ff
	rst  $38                                         ; $7239: $ff
	rst  $38                                         ; $723a: $ff
	db   $fd                                         ; $723b: $fd
	cp   d                                           ; $723c: $ba
	sbc  c                                           ; $723d: $99
	ld   h, l                                        ; $723e: $65
	ld   d, e                                        ; $723f: $53
	ld   hl, $1111                                   ; $7240: $21 $11 $11
	ld   de, $5734                                   ; $7243: $11 $34 $57
	ld   a, h                                        ; $7246: $7c
	call $fddc                                       ; $7247: $cd $dc $fd
	rst  $38                                         ; $724a: $ff
	rst  $38                                         ; $724b: $ff
	rst  $38                                         ; $724c: $ff
	cp   $db                                         ; $724d: $fe $db
	ret                                              ; $724f: $c9


	ld   [hl], l                                     ; $7250: $75
	ld   d, l                                        ; $7251: $55
	ld   b, d                                        ; $7252: $42
	ld   de, $1111                                   ; $7253: $11 $11 $11
	ld   de, $6724                                   ; $7256: $11 $24 $67
	sbc  h                                           ; $7259: $9c
	db   $dd                                         ; $725a: $dd
	call c, $ffcd                                    ; $725b: $dc $cd $ff
	rst  $38                                         ; $725e: $ff
	rst  $38                                         ; $725f: $ff
	cp   $ca                                         ; $7260: $fe $ca
	xor  b                                           ; $7262: $a8
	ld   [hl], a                                     ; $7263: $77
	ld   h, l                                        ; $7264: $65
	ld   b, c                                        ; $7265: $41
	ld   de, $1111                                   ; $7266: $11 $11 $11
	ld   [de], a                                     ; $7269: $12
	inc  [hl]                                        ; $726a: $34
	ld   d, [hl]                                     ; $726b: $56
	adc  h                                           ; $726c: $8c
	call $cfdb                                       ; $726d: $cd $db $cf
	rst  $38                                         ; $7270: $ff
	rst  $38                                         ; $7271: $ff
	rst  $38                                         ; $7272: $ff
	db   $fd                                         ; $7273: $fd
	res  3, b                                        ; $7274: $cb $98
	add  a                                           ; $7276: $87
	ld   h, [hl]                                     ; $7277: $66
	ld   b, d                                        ; $7278: $42
	ld   de, $1111                                   ; $7279: $11 $11 $11
	ld   de, $5523                                   ; $727c: $11 $23 $55
	ld   e, c                                        ; $727f: $59
	xor  h                                           ; $7280: $ac
	db   $dd                                         ; $7281: $dd
	adc  $ff                                         ; $7282: $ce $ff
	rst  $38                                         ; $7284: $ff
	rst  $38                                         ; $7285: $ff
	rst  $38                                         ; $7286: $ff
	db   $eb                                         ; $7287: $eb
	xor  b                                           ; $7288: $a8
	ld   [hl], a                                     ; $7289: $77
	halt                                             ; $728a: $76
	ld   h, h                                        ; $728b: $64
	ld   [hl-], a                                    ; $728c: $32
	ld   [hl+], a                                    ; $728d: $22
	ld   de, $1111                                   ; $728e: $11 $11 $11
	inc  h                                           ; $7291: $24
	ld   b, l                                        ; $7292: $45
	ld   a, d                                        ; $7293: $7a
	call $efcd                                       ; $7294: $cd $cd $ef
	rst  $38                                         ; $7297: $ff
	rst  $38                                         ; $7298: $ff
	rst  $38                                         ; $7299: $ff
	db   $fd                                         ; $729a: $fd
	cp   d                                           ; $729b: $ba
	sbc  b                                           ; $729c: $98
	ld   [hl], a                                     ; $729d: $77
	ld   [hl], a                                     ; $729e: $77
	ld   h, l                                        ; $729f: $65
	ld   [hl-], a                                    ; $72a0: $32
	ld   [hl-], a                                    ; $72a1: $32
	ld   de, $1111                                   ; $72a2: $11 $11 $11
	inc  [hl]                                        ; $72a5: $34
	ld   b, l                                        ; $72a6: $45
	ld   h, a                                        ; $72a7: $67
	xor  h                                           ; $72a8: $ac
	call $ffdf                                       ; $72a9: $cd $df $ff
	rst  $38                                         ; $72ac: $ff
	cp   $dc                                         ; $72ad: $fe $dc
	res  2, a                                        ; $72af: $cb $97
	ld   a, b                                        ; $72b1: $78
	adc  b                                           ; $72b2: $88
	halt                                             ; $72b3: $76
	ld   h, l                                        ; $72b4: $65
	ld   b, h                                        ; $72b5: $44
	ld   [hl-], a                                    ; $72b6: $32
	ld   de, $1211                                   ; $72b7: $11 $11 $12
	ld   [hl-], a                                    ; $72ba: $32
	dec  [hl]                                        ; $72bb: $35
	ld   l, c                                        ; $72bc: $69
	cp   e                                           ; $72bd: $bb
	adc  $ff                                         ; $72be: $ce $ff
	rst  $38                                         ; $72c0: $ff
	rst  $38                                         ; $72c1: $ff
	db   $ed                                         ; $72c2: $ed
	call c, $98ca                                    ; $72c3: $dc $ca $98
	adc  c                                           ; $72c6: $89
	sbc  b                                           ; $72c7: $98
	halt                                             ; $72c8: $76
	ld   d, h                                        ; $72c9: $54
	ld   b, e                                        ; $72ca: $43
	ld   hl, $1111                                   ; $72cb: $21 $11 $11
	ld   de, $3522                                   ; $72ce: $11 $22 $35
	ld   l, c                                        ; $72d1: $69
	xor  e                                           ; $72d2: $ab
	adc  $ff                                         ; $72d3: $ce $ff
	rst  $38                                         ; $72d5: $ff
	rst  $38                                         ; $72d6: $ff
	rst  $38                                         ; $72d7: $ff
	db   $ed                                         ; $72d8: $ed
	jp   z, $a999                                    ; $72d9: $ca $99 $a9

	sbc  b                                           ; $72dc: $98
	halt                                             ; $72dd: $76
	ld   d, l                                        ; $72de: $55
	ld   b, e                                        ; $72df: $43
	ld   hl, $1111                                   ; $72e0: $21 $11 $11
	ld   de, $2411                                   ; $72e3: $11 $11 $24
	ld   d, a                                        ; $72e6: $57
	sbc  d                                           ; $72e7: $9a
	call $ffff                                       ; $72e8: $cd $ff $ff
	rst  $38                                         ; $72eb: $ff
	rst  $38                                         ; $72ec: $ff
	xor  $dc                                         ; $72ed: $ee $dc
	cp   d                                           ; $72ef: $ba
	xor  c                                           ; $72f0: $a9
	sbc  b                                           ; $72f1: $98
	halt                                             ; $72f2: $76
	ld   d, l                                        ; $72f3: $55
	ld   b, e                                        ; $72f4: $43
	ld   [hl-], a                                    ; $72f5: $32
	ld   de, $1111                                   ; $72f6: $11 $11 $11
	ld   de, $4512                                   ; $72f9: $11 $12 $45
	ld   l, c                                        ; $72fc: $69
	cp   h                                           ; $72fd: $bc
	rst  $28                                         ; $72fe: $ef
	rst  $38                                         ; $72ff: $ff
	rst  $38                                         ; $7300: $ff
	rst  $38                                         ; $7301: $ff
	rst  $38                                         ; $7302: $ff
	db   $fd                                         ; $7303: $fd
	res  5, c                                        ; $7304: $cb $a9
	adc  b                                           ; $7306: $88
	ld   [hl], a                                     ; $7307: $77
	ld   h, l                                        ; $7308: $65
	ld   d, h                                        ; $7309: $54
	ld   b, h                                        ; $730a: $44
	ld   [hl-], a                                    ; $730b: $32
	ld   de, $1111                                   ; $730c: $11 $11 $11
	ld   de, $4523                                   ; $730f: $11 $23 $45
	ld   a, c                                        ; $7312: $79
	cp   l                                           ; $7313: $bd
	rst  $28                                         ; $7314: $ef
	rst  $38                                         ; $7315: $ff
	rst  $38                                         ; $7316: $ff
	rst  $38                                         ; $7317: $ff
	rst  $38                                         ; $7318: $ff
	db   $ed                                         ; $7319: $ed
	cp   d                                           ; $731a: $ba
	sbc  c                                           ; $731b: $99
	adc  b                                           ; $731c: $88
	ld   [hl], a                                     ; $731d: $77
	ld   h, [hl]                                     ; $731e: $66
	ld   d, h                                        ; $731f: $54
	ld   b, h                                        ; $7320: $44
	ld   b, e                                        ; $7321: $43
	ld   hl, $1111                                   ; $7322: $21 $11 $11
	ld   [de], a                                     ; $7325: $12
	inc  hl                                          ; $7326: $23
	ld   b, h                                        ; $7327: $44
	ld   d, a                                        ; $7328: $57
	xor  e                                           ; $7329: $ab
	adc  $ff                                         ; $732a: $ce $ff
	rst  $38                                         ; $732c: $ff
	rst  $38                                         ; $732d: $ff
	rst  $38                                         ; $732e: $ff
	db   $ed                                         ; $732f: $ed
	jp   z, $9899                                    ; $7330: $ca $99 $98

	add  a                                           ; $7333: $87
	halt                                             ; $7334: $76
	ld   h, l                                        ; $7335: $65
	ld   d, l                                        ; $7336: $55
	ld   d, h                                        ; $7337: $54
	ld   b, e                                        ; $7338: $43
	ld   hl, $1101                                   ; $7339: $21 $01 $11
	ld   [de], a                                     ; $733c: $12
	inc  sp                                          ; $733d: $33
	ld   b, l                                        ; $733e: $45
	ld   l, c                                        ; $733f: $69
	xor  e                                           ; $7340: $ab
	rst  JumpTable                                         ; $7341: $df
	rst  $38                                         ; $7342: $ff
	rst  $38                                         ; $7343: $ff
	rst  $38                                         ; $7344: $ff
	cp   $dc                                         ; $7345: $fe $dc
	cp   d                                           ; $7347: $ba
	sbc  b                                           ; $7348: $98
	adc  b                                           ; $7349: $88
	add  a                                           ; $734a: $87
	halt                                             ; $734b: $76
	ld   h, l                                        ; $734c: $65
	ld   d, l                                        ; $734d: $55
	ld   d, h                                        ; $734e: $54
	ld   b, e                                        ; $734f: $43
	ld   hl, $1111                                   ; $7350: $21 $11 $11
	ld   [hl+], a                                    ; $7353: $22
	inc  sp                                          ; $7354: $33
	ld   d, [hl]                                     ; $7355: $56
	ld   a, b                                        ; $7356: $78
	cp   h                                           ; $7357: $bc
	xor  $ff                                         ; $7358: $ee $ff
	rst  $38                                         ; $735a: $ff
	rst  $38                                         ; $735b: $ff
	cp   $dc                                         ; $735c: $fe $dc
	cp   d                                           ; $735e: $ba
	sbc  c                                           ; $735f: $99
	sbc  b                                           ; $7360: $98
	ld   [hl], a                                     ; $7361: $77
	halt                                             ; $7362: $76
	ld   h, [hl]                                     ; $7363: $66
	ld   d, l                                        ; $7364: $55
	ld   d, l                                        ; $7365: $55
	ld   b, h                                        ; $7366: $44
	ld   [hl-], a                                    ; $7367: $32
	ld   de, $2211                                   ; $7368: $11 $11 $22
	inc  [hl]                                        ; $736b: $34
	ld   d, l                                        ; $736c: $55
	ld   h, a                                        ; $736d: $67
	sbc  e                                           ; $736e: $9b
	sbc  $ef                                         ; $736f: $de $ef
	rst  $38                                         ; $7371: $ff
	rst  $38                                         ; $7372: $ff
	rst  $38                                         ; $7373: $ff
	db   $ed                                         ; $7374: $ed
	cp   c                                           ; $7375: $b9
	xor  c                                           ; $7376: $a9
	adc  c                                           ; $7377: $89
	adc  b                                           ; $7378: $88
	ld   [hl], a                                     ; $7379: $77
	halt                                             ; $737a: $76
	ld   h, [hl]                                     ; $737b: $66
	ld   h, [hl]                                     ; $737c: $66
	ld   d, l                                        ; $737d: $55
	ld   b, e                                        ; $737e: $43
	ld   [hl+], a                                    ; $737f: $22
	ld   de, $2311                                   ; $7380: $11 $11 $23
	inc  [hl]                                        ; $7383: $34
	ld   d, [hl]                                     ; $7384: $56
	ld   a, c                                        ; $7385: $79
	cp   h                                           ; $7386: $bc
	xor  $ff                                         ; $7387: $ee $ff
	rst  $38                                         ; $7389: $ff
	cp   $ee                                         ; $738a: $fe $ee
	db   $db                                         ; $738c: $db
	sbc  c                                           ; $738d: $99
	adc  c                                           ; $738e: $89
	sbc  b                                           ; $738f: $98
	adc  b                                           ; $7390: $88
	add  a                                           ; $7391: $87
	ld   [hl], a                                     ; $7392: $77
	halt                                             ; $7393: $76
	ld   h, [hl]                                     ; $7394: $66
	ld   d, h                                        ; $7395: $54
	inc  sp                                          ; $7396: $33
	ld   hl, $1211                                   ; $7397: $21 $11 $12
	inc  hl                                          ; $739a: $23
	ld   b, l                                        ; $739b: $45
	ld   h, [hl]                                     ; $739c: $66
	sbc  c                                           ; $739d: $99
	cp   h                                           ; $739e: $bc
	rst  $28                                         ; $739f: $ef
	rst  $38                                         ; $73a0: $ff
	rst  $38                                         ; $73a1: $ff
	cp   $ec                                         ; $73a2: $fe $ec
	res  5, c                                        ; $73a4: $cb $a9
	sbc  c                                           ; $73a6: $99
	adc  c                                           ; $73a7: $89
	adc  b                                           ; $73a8: $88
	add  a                                           ; $73a9: $87
	ld   [hl], a                                     ; $73aa: $77
	halt                                             ; $73ab: $76
	ld   h, l                                        ; $73ac: $65
	ld   d, h                                        ; $73ad: $54
	ld   [hl-], a                                    ; $73ae: $32
	ld   de, $1211                                   ; $73af: $11 $11 $12
	ld   [hl+], a                                    ; $73b2: $22
	ld   b, l                                        ; $73b3: $45
	ld   h, a                                        ; $73b4: $67
	sbc  e                                           ; $73b5: $9b
	cp   [hl]                                        ; $73b6: $be
	rst  $38                                         ; $73b7: $ff
	rst  $38                                         ; $73b8: $ff
	rst  $38                                         ; $73b9: $ff
	xor  $dd                                         ; $73ba: $ee $dd
	jp   z, $99a9                                    ; $73bc: $ca $a9 $99

	adc  b                                           ; $73bf: $88
	sbc  b                                           ; $73c0: $98
	adc  b                                           ; $73c1: $88
	ld   [hl], a                                     ; $73c2: $77
	halt                                             ; $73c3: $76
	ld   h, l                                        ; $73c4: $65
	ld   d, h                                        ; $73c5: $54
	ld   [hl-], a                                    ; $73c6: $32
	ld   de, $1111                                   ; $73c7: $11 $11 $11
	inc  hl                                          ; $73ca: $23
	ld   b, l                                        ; $73cb: $45
	ld   h, [hl]                                     ; $73cc: $66
	adc  e                                           ; $73cd: $8b
	sbc  $ff                                         ; $73ce: $de $ff
	rst  $38                                         ; $73d0: $ff
	rst  $38                                         ; $73d1: $ff
	cp   $dc                                         ; $73d2: $fe $dc
	jp   z, $98a9                                    ; $73d4: $ca $a9 $98

	sbc  b                                           ; $73d7: $98
	adc  c                                           ; $73d8: $89
	sbc  c                                           ; $73d9: $99
	adc  b                                           ; $73da: $88
	halt                                             ; $73db: $76
	ld   h, l                                        ; $73dc: $65
	ld   b, h                                        ; $73dd: $44
	ld   [hl-], a                                    ; $73de: $32
	ld   de, $1111                                   ; $73df: $11 $11 $11
	inc  hl                                          ; $73e2: $23
	ld   b, l                                        ; $73e3: $45
	ld   h, a                                        ; $73e4: $67
	sbc  e                                           ; $73e5: $9b
	rst  $28                                         ; $73e6: $ef
	rst  $38                                         ; $73e7: $ff
	rst  $38                                         ; $73e8: $ff
	rst  $38                                         ; $73e9: $ff
	rst  $38                                         ; $73ea: $ff
	db   $ec                                         ; $73eb: $ec
	cp   d                                           ; $73ec: $ba
	sbc  c                                           ; $73ed: $99
	adc  b                                           ; $73ee: $88
	sbc  b                                           ; $73ef: $98
	adc  c                                           ; $73f0: $89
	sbc  c                                           ; $73f1: $99
	sbc  b                                           ; $73f2: $98
	add  a                                           ; $73f3: $87
	ld   h, l                                        ; $73f4: $65
	ld   d, h                                        ; $73f5: $54
	ld   [hl-], a                                    ; $73f6: $32
	ld   de, $1111                                   ; $73f7: $11 $11 $11
	inc  de                                          ; $73fa: $13
	ld   b, [hl]                                     ; $73fb: $46
	ld   a, b                                        ; $73fc: $78
	xor  h                                           ; $73fd: $ac
	rst  $28                                         ; $73fe: $ef
	rst  $38                                         ; $73ff: $ff
	rst  $38                                         ; $7400: $ff
	rst  $38                                         ; $7401: $ff
	xor  $cb                                         ; $7402: $ee $cb
	xor  c                                           ; $7404: $a9
	sbc  b                                           ; $7405: $98
	adc  b                                           ; $7406: $88
	adc  c                                           ; $7407: $89
	sbc  c                                           ; $7408: $99
	sbc  b                                           ; $7409: $98
	sbc  b                                           ; $740a: $98
	ld   [hl], a                                     ; $740b: $77
	ld   h, l                                        ; $740c: $65
	ld   b, e                                        ; $740d: $43
	ld   hl, $1111                                   ; $740e: $21 $11 $11
	ld   de, $5723                                   ; $7411: $11 $23 $57
	adc  c                                           ; $7414: $89
	cp   l                                           ; $7415: $bd
	rst  $38                                         ; $7416: $ff
	rst  $38                                         ; $7417: $ff
	rst  $38                                         ; $7418: $ff
	cp   $fe                                         ; $7419: $fe $fe
	call z, $98a9                                    ; $741b: $cc $a9 $98
	adc  b                                           ; $741e: $88
	sbc  d                                           ; $741f: $9a
	sbc  d                                           ; $7420: $9a
	sbc  c                                           ; $7421: $99
	sbc  b                                           ; $7422: $98
	halt                                             ; $7423: $76
	ld   b, h                                        ; $7424: $44
	ld   [hl-], a                                    ; $7425: $32
	ld   de, $1111                                   ; $7426: $11 $11 $11
	ld   de, $9936                                   ; $7429: $11 $36 $99
	cp   e                                           ; $742c: $bb
	rst  $28                                         ; $742d: $ef
	rst  $38                                         ; $742e: $ff
	rst  $38                                         ; $742f: $ff
	db   $fd                                         ; $7430: $fd
	xor  $dd                                         ; $7431: $ee $dd
	jp   z, $9999                                    ; $7433: $ca $99 $99

	sbc  c                                           ; $7436: $99
	xor  d                                           ; $7437: $aa
	sbc  c                                           ; $7438: $99
	xor  c                                           ; $7439: $a9
	add  [hl]                                        ; $743a: $86
	ld   d, h                                        ; $743b: $54
	inc  sp                                          ; $743c: $33
	ld   de, $1111                                   ; $743d: $11 $11 $11
	ld   de, $8c15                                   ; $7440: $11 $15 $8c
	sbc  $fe                                         ; $7443: $de $fe
	rst  $38                                         ; $7445: $ff
	rst  $38                                         ; $7446: $ff
	xor  $ed                                         ; $7447: $ee $ed
	db   $ed                                         ; $7449: $ed
	db   $db                                         ; $744a: $db
	xor  d                                           ; $744b: $aa
	xor  d                                           ; $744c: $aa
	cp   c                                           ; $744d: $b9
	cp   c                                           ; $744e: $b9
	xor  d                                           ; $744f: $aa
	sbc  b                                           ; $7450: $98
	ld   [hl], l                                     ; $7451: $75
	ld   d, h                                        ; $7452: $54
	ld   b, e                                        ; $7453: $43
	ld   hl, $1111                                   ; $7454: $21 $11 $11
	ld   de, $6a13                                   ; $7457: $11 $13 $6a
	cp   $ef                                         ; $745a: $fe $ef
	rst  $28                                         ; $745c: $ef
	rst  $38                                         ; $745d: $ff
	db   $ed                                         ; $745e: $ed
	db   $ed                                         ; $745f: $ed
	db   $dd                                         ; $7460: $dd
	call z, $aaaa                                    ; $7461: $cc $aa $aa
	cp   d                                           ; $7464: $ba
	cp   e                                           ; $7465: $bb
	sbc  c                                           ; $7466: $99
	adc  b                                           ; $7467: $88
	halt                                             ; $7468: $76
	ld   h, h                                        ; $7469: $64
	ld   b, e                                        ; $746a: $43
	ld   hl, $1111                                   ; $746b: $21 $11 $11
	ld   de, $5a11                                   ; $746e: $11 $11 $5a
	rst  $38                                         ; $7471: $ff
	cp   $df                                         ; $7472: $fe $df
	rst  $38                                         ; $7474: $ff
	db   $fd                                         ; $7475: $fd
	set  1, [hl]                                     ; $7476: $cb $ce
	xor  $cb                                         ; $7478: $ee $cb
	xor  d                                           ; $747a: $aa
	res  7, d                                        ; $747b: $cb $ba
	adc  b                                           ; $747d: $88
	ld   a, b                                        ; $747e: $78
	halt                                             ; $747f: $76
	ld   d, h                                        ; $7480: $54
	inc  sp                                          ; $7481: $33
	ld   [hl+], a                                    ; $7482: $22
	ld   de, $1111                                   ; $7483: $11 $11 $11
	ld   de, $ff5a                                   ; $7486: $11 $5a $ff
	rst  $38                                         ; $7489: $ff
	rst  $28                                         ; $748a: $ef
	db   $ed                                         ; $748b: $ed
	set  3, l                                        ; $748c: $cb $dd
	sbc  $dd                                         ; $748e: $de $dd
	jp   z, $baaa                                    ; $7490: $ca $aa $ba

	xor  d                                           ; $7493: $aa
	sbc  b                                           ; $7494: $98
	halt                                             ; $7495: $76
	ld   h, l                                        ; $7496: $65
	ld   d, h                                        ; $7497: $54
	inc  sp                                          ; $7498: $33
	ld   [hl-], a                                    ; $7499: $32
	ld   de, $1111                                   ; $749a: $11 $11 $11
	inc  de                                          ; $749d: $13
	xor  l                                           ; $749e: $ad
	rst  $38                                         ; $749f: $ff
	cp   $dd                                         ; $74a0: $fe $dd
	db   $dd                                         ; $74a2: $dd
	cp   e                                           ; $74a3: $bb
	sbc  $ff                                         ; $74a4: $de $ff
	call c, $bc9b                                    ; $74a6: $dc $9b $bc
	jp   c, Jump_0d7_78a9                            ; $74a9: $da $a9 $78

	ld   [hl], a                                     ; $74ac: $77
	ld   d, h                                        ; $74ad: $54
	ld   [hl-], a                                    ; $74ae: $32
	inc  sp                                          ; $74af: $33
	ld   [hl+], a                                    ; $74b0: $22
	ld   de, $1111                                   ; $74b1: $11 $11 $11
	add  hl, hl                                      ; $74b4: $29
	rst  $38                                         ; $74b5: $ff
	rst  $38                                         ; $74b6: $ff
	set  1, e                                        ; $74b7: $cb $cb
	db   $db                                         ; $74b9: $db
	cp   l                                           ; $74ba: $bd
	rst  $38                                         ; $74bb: $ff
	cp   $c9                                         ; $74bc: $fe $c9
	xor  d                                           ; $74be: $aa
	cp   l                                           ; $74bf: $bd
	xor  c                                           ; $74c0: $a9
	add  a                                           ; $74c1: $87
	sub  a                                           ; $74c2: $97
	ld   h, l                                        ; $74c3: $65
	inc  sp                                          ; $74c4: $33
	ld   [hl+], a                                    ; $74c5: $22
	ld   [hl-], a                                    ; $74c6: $32
	ld   de, $1111                                   ; $74c7: $11 $11 $11
	rla                                              ; $74ca: $17
	rst  $28                                         ; $74cb: $ef
	cp   $db                                         ; $74cc: $fe $db
	cp   l                                           ; $74ce: $bd
	call z, $efbb                                    ; $74cf: $cc $bb $ef
	rst  $38                                         ; $74d2: $ff
	call c, $dbaa                                    ; $74d3: $dc $aa $db
	cp   b                                           ; $74d6: $b8
	ld   [hl], a                                     ; $74d7: $77
	ld   a, b                                        ; $74d8: $78
	halt                                             ; $74d9: $76
	ld   d, e                                        ; $74da: $53
	inc  sp                                          ; $74db: $33
	ld   [hl+], a                                    ; $74dc: $22
	ld   hl, $1111                                   ; $74dd: $21 $11 $11
	ld   d, $bf                                      ; $74e0: $16 $bf
	rst  $38                                         ; $74e2: $ff
	db   $fc                                         ; $74e3: $fc
	sbc  e                                           ; $74e4: $9b
	xor  d                                           ; $74e5: $aa
	xor  l                                           ; $74e6: $ad
	rst  $38                                         ; $74e7: $ff
	rst  $38                                         ; $74e8: $ff
	ld   [$ad9a], a                                  ; $74e9: $ea $9a $ad
	xor  c                                           ; $74ec: $a9
	sub  [hl]                                        ; $74ed: $96
	ld   [hl], a                                     ; $74ee: $77
	ld   h, [hl]                                     ; $74ef: $66
	ld   b, h                                        ; $74f0: $44
	ld   [hl-], a                                    ; $74f1: $32
	ld   hl, $1111                                   ; $74f2: $21 $11 $11
	ld   de, $ff3b                                   ; $74f5: $11 $3b $ff
	db   $fd                                         ; $74f8: $fd
	cp   d                                           ; $74f9: $ba
	sbc  d                                           ; $74fa: $9a
	cp   e                                           ; $74fb: $bb
	xor  a                                           ; $74fc: $af
	rst  $38                                         ; $74fd: $ff
	cp   $bb                                         ; $74fe: $fe $bb
	xor  h                                           ; $7500: $ac
	cp   e                                           ; $7501: $bb
	sub  l                                           ; $7502: $95
	add  a                                           ; $7503: $87
	ld   a, b                                        ; $7504: $78
	ld   d, h                                        ; $7505: $54
	ld   b, d                                        ; $7506: $42
	ld   sp, $1111                                   ; $7507: $31 $11 $11
	ld   de, $af15                                   ; $750a: $11 $15 $af
	rst  $38                                         ; $750d: $ff
	ei                                               ; $750e: $fb
	ld   [hl], a                                     ; $750f: $77
	adc  h                                           ; $7510: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7511: $cf
	rst  $38                                         ; $7512: $ff
	rst  $38                                         ; $7513: $ff
	db   $ec                                         ; $7514: $ec
	xor  c                                           ; $7515: $a9
	adc  d                                           ; $7516: $8a
	cp   d                                           ; $7517: $ba
	xor  b                                           ; $7518: $a8
	ld   h, l                                        ; $7519: $65
	ld   d, h                                        ; $751a: $54
	ld   b, e                                        ; $751b: $43
	ld   de, $1111                                   ; $751c: $11 $11 $11
	ld   de, $cf12                                   ; $751f: $11 $12 $cf
	rst  $38                                         ; $7522: $ff
	ret  z                                           ; $7523: $c8

	ld   [hl], a                                     ; $7524: $77
	call $ffce                                       ; $7525: $cd $ce $ff
	rst  $38                                         ; $7528: $ff
	db   $fc                                         ; $7529: $fc
	xor  b                                           ; $752a: $a8
	sbc  h                                           ; $752b: $9c
	jp   z, Jump_0d7_4486                            ; $752c: $ca $86 $44

	ld   b, l                                        ; $752f: $45
	ld   [hl-], a                                    ; $7530: $32
	ld   de, $1111                                   ; $7531: $11 $11 $11
	ld   de, $ff1c                                   ; $7534: $11 $1c $ff
	cp   $74                                         ; $7537: $fe $74
	ld   e, b                                        ; $7539: $58
	cp   h                                           ; $753a: $bc
	rst  $28                                         ; $753b: $ef
	rst  $38                                         ; $753c: $ff
	cp   $96                                         ; $753d: $fe $96
	ld   a, d                                        ; $753f: $7a
	call Call_0d7_64c9                               ; $7540: $cd $c9 $64
	ld   b, e                                        ; $7543: $43
	ld   de, $3111                                   ; $7544: $11 $11 $31
	ld   de, $1911                                   ; $7547: $11 $11 $19
	rst  $38                                         ; $754a: $ff
	cp   $96                                         ; $754b: $fe $96
	ld   h, a                                        ; $754d: $67
	cp   e                                           ; $754e: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $754f: $cf
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	rst  ToBoot                                         ; $7552: $c7
	adc  b                                           ; $7553: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7554: $cf
	bit  6, d                                        ; $7555: $cb $72
	inc  hl                                          ; $7557: $23
	ld   [hl+], a                                    ; $7558: $22
	ld   de, $1111                                   ; $7559: $11 $11 $11
	ld   de, $ff2b                                   ; $755c: $11 $2b $ff
	rst  $38                                         ; $755f: $ff
	add  e                                           ; $7560: $83
	ld   b, e                                        ; $7561: $43
	xor  h                                           ; $7562: $ac
	rst  $38                                         ; $7563: $ff
	rst  $38                                         ; $7564: $ff
	db   $fd                                         ; $7565: $fd

Jump_0d7_7566:
	or   a                                           ; $7566: $b7
	sbc  h                                           ; $7567: $9c
	sbc  $d8                                         ; $7568: $de $d8
	ld   h, d                                        ; $756a: $62
	ld   de, $1111                                   ; $756b: $11 $11 $11
	ld   de, $1411                                   ; $756e: $11 $11 $14
	xor  a                                           ; $7571: $af
	db   $fd                                         ; $7572: $fd
	or   d                                           ; $7573: $b2
	ld   h, $8a                                      ; $7574: $26 $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7576: $cf
	rst  $38                                         ; $7577: $ff
	rst  $38                                         ; $7578: $ff
	call nz, $ef59                                   ; $7579: $c4 $59 $ef
	ld   [$1141], a                                  ; $757c: $ea $41 $11
	ld   de, $1111                                   ; $757f: $11 $11 $11
	ld   de, $ff49                                   ; $7582: $11 $49 $ff
	jp   hl                                          ; $7585: $e9


	ld   d, h                                        ; $7586: $54
	ld   c, c                                        ; $7587: $49
	ret                                              ; $7588: $c9


	db   $ed                                         ; $7589: $ed
	rst  $38                                         ; $758a: $ff
	rst  $38                                         ; $758b: $ff
	xor  c                                           ; $758c: $a9
	ld   a, d                                        ; $758d: $7a
	db   $fc                                         ; $758e: $fc
	or   a                                           ; $758f: $b7
	ld   de, $1211                                   ; $7590: $11 $11 $12
	ld   de, $1511                                   ; $7593: $11 $11 $15
	rst  JumpTable                                         ; $7596: $df
	db   $fd                                         ; $7597: $fd

Jump_0d7_7598:
	ld   d, c                                        ; $7598: $51
	scf                                              ; $7599: $37
	res  1, [hl]                                     ; $759a: $cb $8e
	rst  $28                                         ; $759c: $ef
	rst  $38                                         ; $759d: $ff
	push de                                          ; $759e: $d5
	ld   h, $df                                      ; $759f: $26 $df
	ld   hl, sp+$11                                  ; $75a1: $f8 $11
	ld   de, $4114                                   ; $75a3: $11 $14 $41
	ld   de, $ff4b                                   ; $75a6: $11 $4b $ff
	add  sp, $63                                     ; $75a9: $e8 $63
	ld   a, c                                        ; $75ab: $79
	adc  c                                           ; $75ac: $89
	cp   [hl]                                        ; $75ad: $be
	rst  $38                                         ; $75ae: $ff
	ei                                               ; $75af: $fb
	ld   h, h                                        ; $75b0: $64
	ld   a, e                                        ; $75b1: $7b
	bit  4, c                                        ; $75b2: $cb $61
	ld   de, $1111                                   ; $75b4: $11 $11 $11
	ld   de, $ef1d                                   ; $75b7: $11 $1d $ef
	db   $fd                                         ; $75ba: $fd
	sub  a                                           ; $75bb: $97
	ld   b, d                                        ; $75bc: $42
	sbc  d                                           ; $75bd: $9a
	xor  a                                           ; $75be: $af
	rst  $38                                         ; $75bf: $ff
	rst  $38                                         ; $75c0: $ff
	xor  b                                           ; $75c1: $a8
	sub  [hl]                                        ; $75c2: $96
	cp   d                                           ; $75c3: $ba
	ld   h, l                                        ; $75c4: $65
	ld   de, $1111                                   ; $75c5: $11 $11 $11
	ld   sp, $df1a                                   ; $75c8: $31 $1a $df
	db   $fc                                         ; $75cb: $fc
	sub  l                                           ; $75cc: $95
	rla                                              ; $75cd: $17
	xor  d                                           ; $75ce: $aa
	rst  JumpTable                                         ; $75cf: $df
	rst  $38                                         ; $75d0: $ff
	db   $fc                                         ; $75d1: $fc
	xor  e                                           ; $75d2: $ab
	xor  e                                           ; $75d3: $ab
	or   [hl]                                        ; $75d4: $b6
	ld   de, $1111                                   ; $75d5: $11 $11 $11
	ld   de, $bf12                                   ; $75d8: $11 $12 $bf
	rst  $38                                         ; $75db: $ff
	and  d                                           ; $75dc: $a2
	ld   [hl], $cf                                   ; $75dd: $36 $cf
	and  a                                           ; $75df: $a7
	cp   a                                           ; $75e0: $bf
	rst  $38                                         ; $75e1: $ff
	ei                                               ; $75e2: $fb
	inc  sp                                          ; $75e3: $33
	ld   l, h                                        ; $75e4: $6c
	db   $d3                                         ; $75e5: $d3
	ld   de, $2311                                   ; $75e6: $11 $11 $23
	ld   [hl-], a                                    ; $75e9: $32
	adc  h                                           ; $75ea: $8c
	rst  $38                                         ; $75eb: $ff
	ld   a, [$4841]                                  ; $75ec: $fa $41 $48
	sbc  h                                           ; $75ef: $9c
	rst  $38                                         ; $75f0: $ff
	rst  $38                                         ; $75f1: $ff
	db   $fd                                         ; $75f2: $fd
	and  [hl]                                        ; $75f3: $a6
	ld   a, c                                        ; $75f4: $79
	ld   h, c                                        ; $75f5: $61
	ld   de, $1111                                   ; $75f6: $11 $11 $11
	ld   e, l                                        ; $75f9: $5d
	rst  $38                                         ; $75fa: $ff
	ei                                               ; $75fb: $fb
	ld   d, c                                        ; $75fc: $51
	ld   c, d                                        ; $75fd: $4a
	sbc  e                                           ; $75fe: $9b
	xor  h                                           ; $75ff: $ac
	rst  $38                                         ; $7600: $ff
	db   $fd                                         ; $7601: $fd
	add  [hl]                                        ; $7602: $86
	xor  h                                           ; $7603: $ac
	and  l                                           ; $7604: $a5
	ld   de, $2111                                   ; $7605: $11 $11 $21
	ld   [hl], $bf                                   ; $7608: $36 $bf
	rst  $38                                         ; $760a: $ff
	jp   Jump_0d7_6e11                               ; $760b: $c3 $11 $6e


	rst  $38                                         ; $760e: $ff
	db   $fd                                         ; $760f: $fd
	ld   a, [$7ab9]                                  ; $7610: $fa $b9 $7a
	ld   [hl], l                                     ; $7613: $75
	ld   hl, $1111                                   ; $7614: $21 $11 $11
	ld   d, a                                        ; $7617: $57
	rst  $38                                         ; $7618: $ff
	rst  $38                                         ; $7619: $ff
	add  [hl]                                        ; $761a: $86
	ld   b, l                                        ; $761b: $45
	jp   c, $dfdf                                    ; $761c: $da $df $df

	reti                                             ; $761f: $d9


	or   d                                           ; $7620: $b2
	ld   h, a                                        ; $7621: $67
	scf                                              ; $7622: $37
	ld   sp, $1211                                   ; $7623: $31 $11 $12
	ld   l, a                                        ; $7626: $6f
	rst  $38                                         ; $7627: $ff
	jp   hl                                          ; $7628: $e9


	adc  c                                           ; $7629: $89
	adc  d                                           ; $762a: $8a
	sbc  h                                           ; $762b: $9c
	rst  $38                                         ; $762c: $ff
	rst  $38                                         ; $762d: $ff
	ld   h, l                                        ; $762e: $65
	ld   d, c                                        ; $762f: $51
	ld   b, [hl]                                     ; $7630: $46
	ld   d, l                                        ; $7631: $55
	ld   sp, $3d11                                   ; $7632: $31 $11 $3d
	rst  $38                                         ; $7635: $ff
	jp   c, $bc14                                    ; $7636: $da $14 $bc

	rst  $38                                         ; $7639: $ff
	db   $dd                                         ; $763a: $dd
	sbc  a                                           ; $763b: $9f
	xor  c                                           ; $763c: $a9
	ld   b, c                                        ; $763d: $41
	ld   [de], a                                     ; $763e: $12
	ld   l, b                                        ; $763f: $68
	ld   b, c                                        ; $7640: $41
	ld   de, $ff7f                                   ; $7641: $11 $7f $ff
	add  e                                           ; $7644: $83
	dec  [hl]                                        ; $7645: $35
	rst  $38                                         ; $7646: $ff
	rst  $38                                         ; $7647: $ff
	cp   e                                           ; $7648: $bb
	ld   a, [$11a7]                                  ; $7649: $fa $a7 $11
	ld   [bc], a                                     ; $764c: $02
	sub  [hl]                                        ; $764d: $96
	ld   de, $cf16                                   ; $764e: $11 $16 $cf
	db   $ec                                         ; $7651: $ec
	and  c                                           ; $7652: $a1
	ld   e, c                                        ; $7653: $59
	rst  JumpTable                                         ; $7654: $df
	cp   $db                                         ; $7655: $fe $db
	ld   a, b                                        ; $7657: $78
	ld   de, $7414                                   ; $7658: $11 $14 $74
	ld   b, c                                        ; $765b: $41
	rla                                              ; $765c: $17
	ld   a, a                                        ; $765d: $7f
	ld   sp, hl                                      ; $765e: $f9
	sub  [hl]                                        ; $765f: $96
	sbc  a                                           ; $7660: $9f
	rst  JumpTable                                         ; $7661: $df
	xor  b                                           ; $7662: $a8
	rst  $38                                         ; $7663: $ff
	ei                                               ; $7664: $fb
	ld   de, $a712                                   ; $7665: $11 $12 $a7
	ld   [hl], c                                     ; $7668: $71
	inc  d                                           ; $7669: $14
	adc  a                                           ; $766a: $8f
	rst  $30                                         ; $766b: $f7
	ld   h, e                                        ; $766c: $63
	ld   a, l                                        ; $766d: $7d
	rst  $38                                         ; $766e: $ff
	xor  h                                           ; $766f: $ac
	ld   l, b                                        ; $7670: $68
	ld   hl, sp+$73                                  ; $7671: $f8 $73
	ld   de, $7632                                   ; $7673: $11 $32 $76
	ld   l, b                                        ; $7676: $68
	sbc  h                                           ; $7677: $9c
	sbc  e                                           ; $7678: $9b
	or   l                                           ; $7679: $b5
	ret                                              ; $767a: $c9


	cp   a                                           ; $767b: $bf
	set  0, [hl]                                     ; $767c: $cb $c6
	ld   [hl], h                                     ; $767e: $74
	inc  d                                           ; $767f: $14
	inc  d                                           ; $7680: $14
	add  l                                           ; $7681: $85
	ld   h, [hl]                                     ; $7682: $66
	ld   a, d                                        ; $7683: $7a
	res  5, c                                        ; $7684: $cb $a9

Jump_0d7_7686:
	xor  d                                           ; $7686: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7687: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7688: $cf
	push bc                                          ; $7689: $c5
	sub  c                                           ; $768a: $91
	dec  d                                           ; $768b: $15
	ld   e, c                                        ; $768c: $59
	ld   h, d                                        ; $768d: $62
	inc  hl                                          ; $768e: $23
	ld   l, [hl]                                     ; $768f: $6e
	db   $dd                                         ; $7690: $dd
	ld   [hl], h                                     ; $7691: $74
	ld   a, c                                        ; $7692: $79
	rst  $38                                         ; $7693: $ff
	db   $fd                                         ; $7694: $fd
	sub  [hl]                                        ; $7695: $96
	and  h                                           ; $7696: $a4
	ld   [hl+], a                                    ; $7697: $22
	inc  d                                           ; $7698: $14

Jump_0d7_7699:
	ld   l, d                                        ; $7699: $6a
	add  [hl]                                        ; $769a: $86
	ld   h, l                                        ; $769b: $65
	cp   d                                           ; $769c: $ba
	xor  d                                           ; $769d: $aa
	ld   a, d                                        ; $769e: $7a
	rst  $38                                         ; $769f: $ff
	call $9257                                       ; $76a0: $cd $57 $92
	ld   d, c                                        ; $76a3: $51
	ld   d, a                                        ; $76a4: $57
	add  a                                           ; $76a5: $87
	ld   b, h                                        ; $76a6: $44
	ld   l, e                                        ; $76a7: $6b

Call_0d7_76a8:
	cp   d                                           ; $76a8: $ba

Call_0d7_76a9:
Jump_0d7_76a9:
	ld   a, c                                        ; $76a9: $79
	xor  [hl]                                        ; $76aa: $ae
	db   $fc                                         ; $76ab: $fc
	or   [hl]                                        ; $76ac: $b6
	ld   d, a                                        ; $76ad: $57
	ld   [hl], l                                     ; $76ae: $75
	ld   d, e                                        ; $76af: $53
	ld   d, [hl]                                     ; $76b0: $56
	ld   b, a                                        ; $76b1: $47
	ld   [hl], a                                     ; $76b2: $77
	adc  b                                           ; $76b3: $88
	adc  d                                           ; $76b4: $8a
	call c, $dbaa                                    ; $76b5: $dc $aa $db
	rst  $10                                         ; $76b8: $d7
	inc  h                                           ; $76b9: $24
	ld   d, $98                                      ; $76ba: $16 $98
	sub  e                                           ; $76bc: $93
	daa                                              ; $76bd: $27
	sbc  h                                           ; $76be: $9c
	ret                                              ; $76bf: $c9


	ld   h, a                                        ; $76c0: $67
	call c, Call_0d7_67ef                            ; $76c1: $dc $ef $67
	ld   h, h                                        ; $76c4: $64
	ld   [hl], h                                     ; $76c5: $74
	ld   h, $56                                      ; $76c6: $26 $56
	add  a                                           ; $76c8: $87
	sbc  e                                           ; $76c9: $9b
	xor  e                                           ; $76ca: $ab
	sbc  c                                           ; $76cb: $99
	adc  d                                           ; $76cc: $8a
	db   $fc                                         ; $76cd: $fc
	ret  c                                           ; $76ce: $d8

	dec  [hl]                                        ; $76cf: $35
	dec  d                                           ; $76d0: $15
	ld   [hl], l                                     ; $76d1: $75
	ld   d, e                                        ; $76d2: $53
	ld   a, [hl-]                                    ; $76d3: $3a
	xor  e                                           ; $76d4: $ab
	or   a                                           ; $76d5: $b7
	ld   [hl], a                                     ; $76d6: $77
	rst  JumpTable                                         ; $76d7: $df
	rst  $28                                         ; $76d8: $ef
	ld   h, [hl]                                     ; $76d9: $66
	and  e                                           ; $76da: $a3
	and  h                                           ; $76db: $a4
	dec  d                                           ; $76dc: $15
	scf                                              ; $76dd: $37
	xor  e                                           ; $76de: $ab
	sbc  d                                           ; $76df: $9a
	ld   [hl], e                                     ; $76e0: $73
	and  a                                           ; $76e1: $a7
	rst  $28                                         ; $76e2: $ef
	cp   h                                           ; $76e3: $bc
	ld   [hl], e                                     ; $76e4: $73
	ld   h, l                                        ; $76e5: $65
	ld   h, l                                        ; $76e6: $65
	ld   d, [hl]                                     ; $76e7: $56
	xor  e                                           ; $76e8: $ab
	xor  c                                           ; $76e9: $a9
	ld   b, h                                        ; $76ea: $44
	ld   l, d                                        ; $76eb: $6a
	sbc  $e8                                         ; $76ec: $de $e8
	ld   a, c                                        ; $76ee: $79
	xor  c                                           ; $76ef: $a9
	sub  d                                           ; $76f0: $92
	dec  [hl]                                        ; $76f1: $35
	scf                                              ; $76f2: $37
	cp   e                                           ; $76f3: $bb
	ld   a, b                                        ; $76f4: $78
	ld   b, e                                        ; $76f5: $43
	db   $db                                         ; $76f6: $db
	cp   l                                           ; $76f7: $bd
	xor  b                                           ; $76f8: $a8
	rst  $10                                         ; $76f9: $d7
	ld   d, a                                        ; $76fa: $57
	dec  d                                           ; $76fb: $15
	ld   a, b                                        ; $76fc: $78
	cp   b                                           ; $76fd: $b8
	ld   d, l                                        ; $76fe: $55
	add  [hl]                                        ; $76ff: $86
	cp   h                                           ; $7700: $bc
	xor  l                                           ; $7701: $ad
	rst  $10                                         ; $7702: $d7
	ld   a, d                                        ; $7703: $7a
	dec  hl                                          ; $7704: $2b
	add  c                                           ; $7705: $81
	sub  d                                           ; $7706: $92
	ld   a, [hl-]                                    ; $7707: $3a
	ld   e, e                                        ; $7708: $5b
	rst  ToBoot                                         ; $7709: $c7
	ld   a, c                                        ; $770a: $79
	sbc  d                                           ; $770b: $9a
	or   [hl]                                        ; $770c: $b6
	xor  e                                           ; $770d: $ab
	sbc  l                                           ; $770e: $9d
	add  e                                           ; $770f: $83
	ld   b, c                                        ; $7710: $41
	add  hl, hl                                      ; $7711: $29
	ld   l, l                                        ; $7712: $6d
	ret  c                                           ; $7713: $d8

	sub  l                                           ; $7714: $95
	ld   e, e                                        ; $7715: $5b
	call z, $89f9                                    ; $7716: $cc $f9 $89
	ld   b, l                                        ; $7719: $45
	ld   d, d                                        ; $771a: $52
	ld   e, c                                        ; $771b: $59
	adc  e                                           ; $771c: $8b
	sub  a                                           ; $771d: $97
	and  a                                           ; $771e: $a7
	ld   a, b                                        ; $771f: $78
	ld   a, h                                        ; $7720: $7c
	db   $fd                                         ; $7721: $fd
	sub  $13                                         ; $7722: $d6 $13
	daa                                              ; $7724: $27
	and  a                                           ; $7725: $a7
	add  h                                           ; $7726: $84
	ld   e, e                                        ; $7727: $5b
	sbc  h                                           ; $7728: $9c
	sub  [hl]                                        ; $7729: $96
	add  l                                           ; $772a: $85
	db   $ed                                         ; $772b: $ed
	call $5124                                       ; $772c: $cd $24 $51
	xor  d                                           ; $772f: $aa
	ld   e, d                                        ; $7730: $5a
	ld   [hl], l                                     ; $7731: $75
	ret  z                                           ; $7732: $c8

	ld   e, d                                        ; $7733: $5a
	ld   l, b                                        ; $7734: $68
	ld   hl, sp-$15                                  ; $7735: $f8 $eb
	add  hl, hl                                      ; $7737: $29
	ld   [hl+], a                                    ; $7738: $22
	ld   h, l                                        ; $7739: $65
	xor  h                                           ; $773a: $ac
	rst  ToBoot                                         ; $773b: $c7
	add  e                                           ; $773c: $83
	ld   c, d                                        ; $773d: $4a
	xor  a                                           ; $773e: $af
	add  sp, -$66                                    ; $773f: $e8 $9a
	ld   d, [hl]                                     ; $7741: $56
	inc  sp                                          ; $7742: $33
	add  a                                           ; $7743: $87
	cp   c                                           ; $7744: $b9
	add  a                                           ; $7745: $87
	ld   h, a                                        ; $7746: $67
	sbc  h                                           ; $7747: $9c
	xor  e                                           ; $7748: $ab
	add  a                                           ; $7749: $87
	xor  b                                           ; $774a: $a8
	sub  [hl]                                        ; $774b: $96
	ld   b, d                                        ; $774c: $42
	ld   a, [hl+]                                    ; $774d: $2a
	sbc  e                                           ; $774e: $9b
	jp   $af87                                       ; $774f: $c3 $87 $af


	sbc  c                                           ; $7752: $99
	ld   [hl], l                                     ; $7753: $75
	cp   c                                           ; $7754: $b9
	ld   a, c                                        ; $7755: $79
	ld   b, l                                        ; $7756: $45
	ld   d, l                                        ; $7757: $55
	cp   d                                           ; $7758: $ba
	adc  c                                           ; $7759: $89
	ld   d, [hl]                                     ; $775a: $56
	ret                                              ; $775b: $c9


	sbc  a                                           ; $775c: $9f
	ld   l, b                                        ; $775d: $68
	ld   [hl], c                                     ; $775e: $71
	ld   [hl], a                                     ; $775f: $77
	ld   l, d                                        ; $7760: $6a
	add  e                                           ; $7761: $83
	sub  a                                           ; $7762: $97
	ld   a, h                                        ; $7763: $7c
	ld   a, d                                        ; $7764: $7a
	sbc  d                                           ; $7765: $9a
	xor  e                                           ; $7766: $ab
	ld   d, [hl]                                     ; $7767: $56
	ld   h, l                                        ; $7768: $65
	cp   c                                           ; $7769: $b9
	halt                                             ; $776a: $76
	ld   h, [hl]                                     ; $776b: $66
	sbc  d                                           ; $776c: $9a
	cp   e                                           ; $776d: $bb
	ld   e, b                                        ; $776e: $58
	xor  c                                           ; $776f: $a9
	xor  c                                           ; $7770: $a9
	ld   d, [hl]                                     ; $7771: $56
	ld   h, l                                        ; $7772: $65
	sub  a                                           ; $7773: $97
	sbc  c                                           ; $7774: $99
	ld   a, b                                        ; $7775: $78
	ld   [hl], l                                     ; $7776: $75
	sbc  d                                           ; $7777: $9a
	xor  e                                           ; $7778: $ab
	ld   d, a                                        ; $7779: $57
	xor  b                                           ; $777a: $a8
	and  [hl]                                        ; $777b: $a6
	ld   d, l                                        ; $777c: $55
	adc  d                                           ; $777d: $8a
	xor  d                                           ; $777e: $aa
	ld   h, a                                        ; $777f: $67
	ld   h, l                                        ; $7780: $65
	jp   z, Jump_0d7_589c                            ; $7781: $ca $9c $58

	ld   [hl], l                                     ; $7784: $75
	add  a                                           ; $7785: $87
	ld   [hl], a                                     ; $7786: $77
	ld   l, c                                        ; $7787: $69
	and  a                                           ; $7788: $a7
	ld   a, b                                        ; $7789: $78
	ld   h, a                                        ; $778a: $67
	cp   h                                           ; $778b: $bc
	sbc  d                                           ; $778c: $9a
	ld   d, d                                        ; $778d: $52
	ld   h, [hl]                                     ; $778e: $66
	xor  d                                           ; $778f: $aa
	sbc  b                                           ; $7790: $98
	add  l                                           ; $7791: $85
	ld   e, e                                        ; $7792: $5b
	adc  c                                           ; $7793: $89
	ret  z                                           ; $7794: $c8

	xor  c                                           ; $7795: $a9
	ld   d, a                                        ; $7796: $57
	sbc  b                                           ; $7797: $98
	ld   h, [hl]                                     ; $7798: $66
	ld   e, b                                        ; $7799: $58
	cp   c                                           ; $779a: $b9
	and  l                                           ; $779b: $a5
	ld   a, [hl+]                                    ; $779c: $2a
	cp   c                                           ; $779d: $b9
	push bc                                          ; $779e: $c5
	ld   e, d                                        ; $779f: $5a
	ld   a, b                                        ; $77a0: $78
	or   l                                           ; $77a1: $b5
	ld   l, c                                        ; $77a2: $69
	ld   l, e                                        ; $77a3: $6b
	ld   [hl], h                                     ; $77a4: $74
	xor  d                                           ; $77a5: $aa
	sub  a                                           ; $77a6: $97
	sub  a                                           ; $77a7: $97
	adc  d                                           ; $77a8: $8a
	ld   a, c                                        ; $77a9: $79
	and  [hl]                                        ; $77aa: $a6
	and  a                                           ; $77ab: $a7
	ld   b, a                                        ; $77ac: $47
	ld   a, b                                        ; $77ad: $78
	sbc  b                                           ; $77ae: $98
	ld   a, c                                        ; $77af: $79
	ld   a, b                                        ; $77b0: $78
	and  [hl]                                        ; $77b1: $a6
	xor  c                                           ; $77b2: $a9
	ld   e, c                                        ; $77b3: $59
	sbc  c                                           ; $77b4: $99
	and  [hl]                                        ; $77b5: $a6
	ld   h, [hl]                                     ; $77b6: $66
	add  [hl]                                        ; $77b7: $86
	xor  d                                           ; $77b8: $aa
	ld   l, b                                        ; $77b9: $68
	ld   a, b                                        ; $77ba: $78
	sbc  e                                           ; $77bb: $9b
	ld   a, b                                        ; $77bc: $78
	ld   h, e                                        ; $77bd: $63
	xor  c                                           ; $77be: $a9
	sbc  e                                           ; $77bf: $9b
	ld   b, [hl]                                     ; $77c0: $46
	sub  [hl]                                        ; $77c1: $96
	and  a                                           ; $77c2: $a7
	ld   a, b                                        ; $77c3: $78
	ld   l, d                                        ; $77c4: $6a
	sub  a                                           ; $77c5: $97
	ld   [hl], a                                     ; $77c6: $77
	ld   l, c                                        ; $77c7: $69
	sub  a                                           ; $77c8: $97
	halt                                             ; $77c9: $76
	ld   a, d                                        ; $77ca: $7a
	sbc  b                                           ; $77cb: $98
	ld   h, l                                        ; $77cc: $65
	ld   l, e                                        ; $77cd: $6b
	xor  c                                           ; $77ce: $a9
	ld   [hl], e                                     ; $77cf: $73
	ld   l, b                                        ; $77d0: $68
	sbc  c                                           ; $77d1: $99
	add  a                                           ; $77d2: $87
	ld   l, b                                        ; $77d3: $68
	sbc  b                                           ; $77d4: $98
	cp   c                                           ; $77d5: $b9
	ld   a, b                                        ; $77d6: $78
	ld   b, [hl]                                     ; $77d7: $46
	sub  a                                           ; $77d8: $97
	xor  e                                           ; $77d9: $ab
	ld   e, b                                        ; $77da: $58
	ld   h, l                                        ; $77db: $65
	jp   z, Jump_0d7_5698                            ; $77dc: $ca $98 $56

	sbc  c                                           ; $77df: $99
	xor  c                                           ; $77e0: $a9
	ld   h, [hl]                                     ; $77e1: $66
	halt                                             ; $77e2: $76
	sbc  h                                           ; $77e3: $9c
	adc  b                                           ; $77e4: $88
	ld   b, e                                        ; $77e5: $43
	sbc  d                                           ; $77e6: $9a
	cp   d                                           ; $77e7: $ba
	ld   h, l                                        ; $77e8: $65
	ld   d, a                                        ; $77e9: $57
	res  0, a                                        ; $77ea: $cb $87
	ld   b, a                                        ; $77ec: $47
	sbc  c                                           ; $77ed: $99
	ret  z                                           ; $77ee: $c8

	ld   d, a                                        ; $77ef: $57
	ld   d, a                                        ; $77f0: $57
	cp   b                                           ; $77f1: $b8
	adc  c                                           ; $77f2: $89
	ld   h, a                                        ; $77f3: $67
	sub  [hl]                                        ; $77f4: $96
	ld   l, c                                        ; $77f5: $69
	adc  d                                           ; $77f6: $8a
	sub  l                                           ; $77f7: $95
	ld   e, b                                        ; $77f8: $58
	sbc  e                                           ; $77f9: $9b
	or   [hl]                                        ; $77fa: $b6
	ld   h, a                                        ; $77fb: $67
	ld   l, e                                        ; $77fc: $6b
	add  $64                                         ; $77fd: $c6 $64
	ld   e, e                                        ; $77ff: $5b
	xor  d                                           ; $7800: $aa
	add  [hl]                                        ; $7801: $86
	ld   d, a                                        ; $7802: $57
	sbc  c                                           ; $7803: $99
	cp   b                                           ; $7804: $b8
	adc  c                                           ; $7805: $89
	ld   [hl], a                                     ; $7806: $77
	halt                                             ; $7807: $76
	ld   a, c                                        ; $7808: $79
	sbc  d                                           ; $7809: $9a
	add  a                                           ; $780a: $87
	add  a                                           ; $780b: $87
	ld   a, b                                        ; $780c: $78
	sbc  b                                           ; $780d: $98
	sub  a                                           ; $780e: $97
	ld   a, b                                        ; $780f: $78
	ld   l, c                                        ; $7810: $69
	sbc  c                                           ; $7811: $99
	sub  a                                           ; $7812: $97
	ld   e, b                                        ; $7813: $58
	adc  d                                           ; $7814: $8a
	cp   c                                           ; $7815: $b9
	halt                                             ; $7816: $76
	ld   h, a                                        ; $7817: $67
	ld   a, c                                        ; $7818: $79
	adc  b                                           ; $7819: $88
	halt                                             ; $781a: $76
	and  a                                           ; $781b: $a7
	sbc  c                                           ; $781c: $99
	ld   l, b                                        ; $781d: $68
	adc  d                                           ; $781e: $8a
	xor  b                                           ; $781f: $a8
	halt                                             ; $7820: $76
	ld   l, c                                        ; $7821: $69
	sbc  b                                           ; $7822: $98
	sub  a                                           ; $7823: $97
	halt                                             ; $7824: $76
	ld   a, b                                        ; $7825: $78
	adc  c                                           ; $7826: $89
	adc  b                                           ; $7827: $88
	halt                                             ; $7828: $76
	adc  b                                           ; $7829: $88
	xor  c                                           ; $782a: $a9
	halt                                             ; $782b: $76
	ld   h, a                                        ; $782c: $67
	xor  c                                           ; $782d: $a9
	ld   [hl], a                                     ; $782e: $77
	ld   [hl], a                                     ; $782f: $77
	sbc  c                                           ; $7830: $99
	adc  c                                           ; $7831: $89
	ld   a, b                                        ; $7832: $78
	sub  a                                           ; $7833: $97
	ld   a, b                                        ; $7834: $78
	ld   [hl], a                                     ; $7835: $77
	adc  b                                           ; $7836: $88
	adc  c                                           ; $7837: $89
	ld   a, b                                        ; $7838: $78
	add  a                                           ; $7839: $87
	adc  c                                           ; $783a: $89
	adc  c                                           ; $783b: $89
	ld   [hl], a                                     ; $783c: $77
	ld   [hl], a                                     ; $783d: $77
	adc  c                                           ; $783e: $89
	add  a                                           ; $783f: $87
	add  a                                           ; $7840: $87
	adc  b                                           ; $7841: $88
	ld   a, b                                        ; $7842: $78
	add  a                                           ; $7843: $87
	sbc  c                                           ; $7844: $99
	adc  b                                           ; $7845: $88
	ld   [hl], a                                     ; $7846: $77
	sbc  b                                           ; $7847: $98
	sbc  d                                           ; $7848: $9a
	sbc  c                                           ; $7849: $99
	sub  a                                           ; $784a: $97
	add  a                                           ; $784b: $87
	ld   [hl], a                                     ; $784c: $77
	adc  c                                           ; $784d: $89
	sbc  b                                           ; $784e: $98
	add  a                                           ; $784f: $87
	ld   a, b                                        ; $7850: $78
	add  a                                           ; $7851: $87
	sbc  c                                           ; $7852: $99
	sbc  d                                           ; $7853: $9a
	adc  b                                           ; $7854: $88
	ld   [hl], a                                     ; $7855: $77
	ld   [hl], a                                     ; $7856: $77
	sbc  c                                           ; $7857: $99
	sbc  b                                           ; $7858: $98
	sub  a                                           ; $7859: $97
	ld   a, b                                        ; $785a: $78
	adc  c                                           ; $785b: $89
	adc  c                                           ; $785c: $89
	sbc  b                                           ; $785d: $98
	adc  b                                           ; $785e: $88
	sub  a                                           ; $785f: $97
	adc  b                                           ; $7860: $88
	adc  c                                           ; $7861: $89
	adc  b                                           ; $7862: $88
	sub  a                                           ; $7863: $97
	ld   [hl], a                                     ; $7864: $77
	sbc  d                                           ; $7865: $9a
	sbc  b                                           ; $7866: $98
	ld   [hl], a                                     ; $7867: $77
	adc  c                                           ; $7868: $89
	sbc  b                                           ; $7869: $98
	ld   [hl], a                                     ; $786a: $77
	adc  b                                           ; $786b: $88
	sbc  b                                           ; $786c: $98
	ld   [hl], a                                     ; $786d: $77
	ld   a, c                                        ; $786e: $79
	sbc  d                                           ; $786f: $9a
	add  a                                           ; $7870: $87
	ld   a, b                                        ; $7871: $78
	sbc  c                                           ; $7872: $99
	sbc  b                                           ; $7873: $98
	ld   [hl], a                                     ; $7874: $77
	adc  c                                           ; $7875: $89
	sbc  c                                           ; $7876: $99
	sbc  b                                           ; $7877: $98
	ld   [hl], a                                     ; $7878: $77
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	ld   a, b                                        ; $787b: $78
	adc  b                                           ; $787c: $88
	add  a                                           ; $787d: $87
	ld   [hl], a                                     ; $787e: $77
	adc  c                                           ; $787f: $89
	adc  b                                           ; $7880: $88
	adc  b                                           ; $7881: $88
	adc  b                                           ; $7882: $88
	sbc  c                                           ; $7883: $99
	add  a                                           ; $7884: $87
	ld   a, b                                        ; $7885: $78
	adc  c                                           ; $7886: $89
	adc  b                                           ; $7887: $88
	ld   [hl], a                                     ; $7888: $77
	adc  c                                           ; $7889: $89
	sbc  b                                           ; $788a: $98
	adc  b                                           ; $788b: $88
	adc  b                                           ; $788c: $88
	sbc  b                                           ; $788d: $98
	add  a                                           ; $788e: $87
	adc  b                                           ; $788f: $88
	adc  b                                           ; $7890: $88
	sbc  b                                           ; $7891: $98
	sbc  b                                           ; $7892: $98
	adc  c                                           ; $7893: $89
	adc  b                                           ; $7894: $88
	adc  b                                           ; $7895: $88
	adc  c                                           ; $7896: $89
	sbc  b                                           ; $7897: $98
	add  a                                           ; $7898: $87
	adc  b                                           ; $7899: $88
	adc  c                                           ; $789a: $89
	adc  c                                           ; $789b: $89
	ld   [hl], a                                     ; $789c: $77
	adc  b                                           ; $789d: $88
	sbc  c                                           ; $789e: $99
	adc  b                                           ; $789f: $88
	adc  b                                           ; $78a0: $88
	adc  b                                           ; $78a1: $88
	adc  b                                           ; $78a2: $88
	adc  c                                           ; $78a3: $89
	adc  b                                           ; $78a4: $88
	adc  b                                           ; $78a5: $88
	ld   [hl], a                                     ; $78a6: $77
	adc  b                                           ; $78a7: $88
	sbc  b                                           ; $78a8: $98

Jump_0d7_78a9:
	adc  b                                           ; $78a9: $88
	ld   [hl], a                                     ; $78aa: $77
	adc  b                                           ; $78ab: $88
	sbc  c                                           ; $78ac: $99
	sbc  b                                           ; $78ad: $98
	adc  b                                           ; $78ae: $88
	adc  b                                           ; $78af: $88
	adc  b                                           ; $78b0: $88
	adc  b                                           ; $78b1: $88
	adc  c                                           ; $78b2: $89
	sbc  c                                           ; $78b3: $99
	adc  b                                           ; $78b4: $88
	adc  b                                           ; $78b5: $88
	adc  b                                           ; $78b6: $88
	sbc  c                                           ; $78b7: $99
	adc  b                                           ; $78b8: $88
	add  a                                           ; $78b9: $87
	adc  b                                           ; $78ba: $88
	adc  c                                           ; $78bb: $89
	adc  b                                           ; $78bc: $88
	adc  b                                           ; $78bd: $88
	adc  b                                           ; $78be: $88
	adc  b                                           ; $78bf: $88
	adc  b                                           ; $78c0: $88
	adc  b                                           ; $78c1: $88
	adc  b                                           ; $78c2: $88
	adc  b                                           ; $78c3: $88
	adc  b                                           ; $78c4: $88
	adc  b                                           ; $78c5: $88
	adc  b                                           ; $78c6: $88
	adc  b                                           ; $78c7: $88
	adc  b                                           ; $78c8: $88
	adc  b                                           ; $78c9: $88
	adc  b                                           ; $78ca: $88
	adc  b                                           ; $78cb: $88
	adc  b                                           ; $78cc: $88
	adc  b                                           ; $78cd: $88
	adc  b                                           ; $78ce: $88
	adc  b                                           ; $78cf: $88
	adc  b                                           ; $78d0: $88
	add  c                                           ; $78d1: $81
	ld   de, $1111                                   ; $78d2: $11 $11 $11
	ld   de, $1111                                   ; $78d5: $11 $11 $11
	ld   de, $0011                                   ; $78d8: $11 $11 $00
	ld   c, b                                        ; $78db: $48
	ld   de, $1111                                   ; $78dc: $11 $11 $11
	ld   de, $1111                                   ; $78df: $11 $11 $11
	ld   de, $1111                                   ; $78e2: $11 $11 $11
	ld   de, $5413                                   ; $78e5: $11 $13 $54
	ld   d, h                                        ; $78e8: $54
	ld   d, h                                        ; $78e9: $54
	ld   b, c                                        ; $78ea: $41
	rra                                              ; $78eb: $1f
	rst  $38                                         ; $78ec: $ff
	pop  af                                          ; $78ed: $f1
	ld   de, $1811                                   ; $78ee: $11 $11 $18
	ld   sp, $1c11                                   ; $78f1: $31 $11 $1c
	rst  JumpTable                                         ; $78f4: $df
	sbc  h                                           ; $78f5: $9c
	rst  JumpTable                                         ; $78f6: $df
	sub  c                                           ; $78f7: $91
	ld   de, $1111                                   ; $78f8: $11 $11 $11
	ld   de, $1111                                   ; $78fb: $11 $11 $11
	ld   de, $1111                                   ; $78fe: $11 $11 $11
	ld   de, $1111                                   ; $7901: $11 $11 $11
	ld   de, $5411                                   ; $7904: $11 $11 $54
	ld   b, h                                        ; $7907: $44
	jr   z, @+$13                                    ; $7908: $28 $11

	ld   d, h                                        ; $790a: $54
	ld   d, h                                        ; $790b: $54
	ld   h, a                                        ; $790c: $67
	ld   [hl], d                                     ; $790d: $72
	ld   de, $1111                                   ; $790e: $11 $11 $11
	ld   de, $1112                                   ; $7911: $11 $12 $11
	ld   [de], a                                     ; $7914: $12
	ld   de, $1111                                   ; $7915: $11 $11 $11
	ld   h, [hl]                                     ; $7918: $66
	halt                                             ; $7919: $76
	jr   jr_0d7_792d                                 ; $791a: $18 $11

	adc  b                                           ; $791c: $88
	adc  b                                           ; $791d: $88
	adc  b                                           ; $791e: $88
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	adc  b                                           ; $7921: $88
	adc  b                                           ; $7922: $88
	adc  b                                           ; $7923: $88
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	adc  b                                           ; $7929: $88
	adc  b                                           ; $792a: $88
	adc  b                                           ; $792b: $88
	adc  b                                           ; $792c: $88

jr_0d7_792d:
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	add  a                                           ; $7930: $87
	adc  b                                           ; $7931: $88
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	ld   [hl], a                                     ; $7938: $77
	sbc  c                                           ; $7939: $99
	sbc  b                                           ; $793a: $98
	add  a                                           ; $793b: $87
	adc  b                                           ; $793c: $88
	sbc  b                                           ; $793d: $98
	add  a                                           ; $793e: $87
	ld   a, b                                        ; $793f: $78
	adc  b                                           ; $7940: $88
	sbc  c                                           ; $7941: $99
	ld   [hl], a                                     ; $7942: $77
	add  a                                           ; $7943: $87
	adc  b                                           ; $7944: $88
	adc  b                                           ; $7945: $88
	add  a                                           ; $7946: $87
	adc  c                                           ; $7947: $89
	adc  b                                           ; $7948: $88
	ld   [hl], a                                     ; $7949: $77
	adc  c                                           ; $794a: $89
	sbc  b                                           ; $794b: $98
	adc  b                                           ; $794c: $88
	ld   a, b                                        ; $794d: $78
	sbc  b                                           ; $794e: $98
	sbc  b                                           ; $794f: $98
	ld   a, b                                        ; $7950: $78
	adc  b                                           ; $7951: $88
	add  a                                           ; $7952: $87
	ld   a, b                                        ; $7953: $78
	adc  c                                           ; $7954: $89
	add  a                                           ; $7955: $87
	adc  c                                           ; $7956: $89
	adc  c                                           ; $7957: $89
	ld   [hl], a                                     ; $7958: $77
	ld   [hl], a                                     ; $7959: $77
	sbc  d                                           ; $795a: $9a
	sub  a                                           ; $795b: $97
	add  [hl]                                        ; $795c: $86
	ld   a, c                                        ; $795d: $79
	adc  b                                           ; $795e: $88
	sbc  b                                           ; $795f: $98
	ld   [hl], a                                     ; $7960: $77
	ld   [hl], a                                     ; $7961: $77
	sbc  c                                           ; $7962: $99
	ld   [hl], a                                     ; $7963: $77
	adc  c                                           ; $7964: $89
	adc  b                                           ; $7965: $88
	sub  [hl]                                        ; $7966: $96
	ld   l, c                                        ; $7967: $69
	adc  b                                           ; $7968: $88
	and  a                                           ; $7969: $a7
	ld   a, c                                        ; $796a: $79
	adc  b                                           ; $796b: $88
	ld   [hl], a                                     ; $796c: $77
	adc  b                                           ; $796d: $88
	xor  c                                           ; $796e: $a9
	ld   a, b                                        ; $796f: $78
	add  a                                           ; $7970: $87
	sub  a                                           ; $7971: $97
	ld   l, c                                        ; $7972: $69
	adc  b                                           ; $7973: $88
	and  [hl]                                        ; $7974: $a6
	ld   a, d                                        ; $7975: $7a
	ld   h, a                                        ; $7976: $67
	and  a                                           ; $7977: $a7
	adc  e                                           ; $7978: $8b
	ld   [hl], a                                     ; $7979: $77
	add  [hl]                                        ; $797a: $86
	adc  d                                           ; $797b: $8a
	adc  c                                           ; $797c: $89
	ld   [hl], a                                     ; $797d: $77
	and  a                                           ; $797e: $a7
	ld   l, d                                        ; $797f: $6a
	halt                                             ; $7980: $76
	or   [hl]                                        ; $7981: $b6
	ld   a, d                                        ; $7982: $7a
	ld   h, a                                        ; $7983: $67
	sbc  b                                           ; $7984: $98
	sbc  d                                           ; $7985: $9a
	sbc  c                                           ; $7986: $99

Jump_0d7_7987:
	add  h                                           ; $7987: $84
	ld   d, a                                        ; $7988: $57
	sbc  e                                           ; $7989: $9b
	or   a                                           ; $798a: $b7
	ld   l, b                                        ; $798b: $68
	ld   h, a                                        ; $798c: $67
	sub  a                                           ; $798d: $97
	adc  d                                           ; $798e: $8a
	xor  b                                           ; $798f: $a8
	halt                                             ; $7990: $76
	ld   d, [hl]                                     ; $7991: $56
	adc  e                                           ; $7992: $8b

jr_0d7_7993:
	xor  d                                           ; $7993: $aa
	and  l                                           ; $7994: $a5
	ld   b, l                                        ; $7995: $45
	xor  h                                           ; $7996: $ac
	sub  [hl]                                        ; $7997: $96
	ld   [hl], a                                     ; $7998: $77
	adc  c                                           ; $7999: $89
	sbc  c                                           ; $799a: $99
	halt                                             ; $799b: $76
	ld   e, b                                        ; $799c: $58
	xor  d                                           ; $799d: $aa
	and  l                                           ; $799e: $a5
	ld   a, b                                        ; $799f: $78
	ld   e, d                                        ; $79a0: $5a
	xor  b                                           ; $79a1: $a8
	sub  a                                           ; $79a2: $97
	ld   b, a                                        ; $79a3: $47
	ret                                              ; $79a4: $c9


	adc  b                                           ; $79a5: $88
	ld   h, h                                        ; $79a6: $64
	ld   l, e                                        ; $79a7: $6b
	call z, Call_0d7_5973                            ; $79a8: $cc $73 $59
	cp   h                                           ; $79ab: $bc
	ld   [hl], l                                     ; $79ac: $75
	sub  l                                           ; $79ad: $95
	sbc  l                                           ; $79ae: $9d
	ld   [hl], l                                     ; $79af: $75
	add  l                                           ; $79b0: $85
	sbc  h                                           ; $79b1: $9c
	and  a                                           ; $79b2: $a7
	ld   h, [hl]                                     ; $79b3: $66
	ld   l, d                                        ; $79b4: $6a
	ret                                              ; $79b5: $c9


	ld   h, a                                        ; $79b6: $67
	ld   b, [hl]                                     ; $79b7: $46
	db   $db                                         ; $79b8: $db
	sub  [hl]                                        ; $79b9: $96
	ld   b, [hl]                                     ; $79ba: $46
	xor  h                                           ; $79bb: $ac
	ld   [hl], h                                     ; $79bc: $74
	ld   l, b                                        ; $79bd: $68
	cp   d                                           ; $79be: $ba
	add  [hl]                                        ; $79bf: $86
	ld   l, d                                        ; $79c0: $6a
	adc  b                                           ; $79c1: $88
	add  a                                           ; $79c2: $87
	adc  e                                           ; $79c3: $8b
	ld   d, [hl]                                     ; $79c4: $56
	or   a                                           ; $79c5: $b7
	adc  e                                           ; $79c6: $8b
	add  h                                           ; $79c7: $84
	ld   l, d                                        ; $79c8: $6a
	cp   e                                           ; $79c9: $bb
	add  l                                           ; $79ca: $85
	dec  [hl]                                        ; $79cb: $35
	xor  l                                           ; $79cc: $ad
	or   a                                           ; $79cd: $b7
	ld   d, l                                        ; $79ce: $55
	ld   l, e                                        ; $79cf: $6b
	cp   b                                           ; $79d0: $b8
	add  [hl]                                        ; $79d1: $86
	ld   c, b                                        ; $79d2: $48
	jp   z, Jump_0d7_547a                            ; $79d3: $ca $7a $54

	rst  ToBoot                                         ; $79d6: $c7
	ld   c, d                                        ; $79d7: $4a
	adc  c                                           ; $79d8: $89
	add  $24                                         ; $79d9: $c6 $24
	ld   l, c                                        ; $79db: $69
	cp   $75                                         ; $79dc: $fe $75
	inc  hl                                          ; $79de: $23
	cp   [hl]                                        ; $79df: $be
	reti                                             ; $79e0: $d9


	ld   d, e                                        ; $79e1: $53
	ld   c, d                                        ; $79e2: $4a
	cp   h                                           ; $79e3: $bc
	or   d                                           ; $79e4: $b2
	jr   c, jr_0d7_7993                              ; $79e5: $38 $ac

	cp   b                                           ; $79e7: $b8
	ld   d, h                                        ; $79e8: $54
	ld   a, l                                        ; $79e9: $7d
	call z, Call_0d7_5981                            ; $79ea: $cc $81 $59
	call z, $3379                                    ; $79ed: $cc $79 $33
	cp   d                                           ; $79f0: $ba
	sbc  l                                           ; $79f1: $9d
	ld   h, e                                        ; $79f2: $63
	ld   l, b                                        ; $79f3: $68
	xor  d                                           ; $79f4: $aa
	cp   b                                           ; $79f5: $b8
	inc  sp                                          ; $79f6: $33
	xor  d                                           ; $79f7: $aa
	sbc  e                                           ; $79f8: $9b
	ld   [hl], d                                     ; $79f9: $72
	sbc  d                                           ; $79fa: $9a
	adc  c                                           ; $79fb: $89
	xor  c                                           ; $79fc: $a9
	ld   h, a                                        ; $79fd: $67

Jump_0d7_79fe:
	sbc  b                                           ; $79fe: $98
	ld   a, d                                        ; $79ff: $7a
	rst  ToBoot                                         ; $7a00: $c7
	ld   a, e                                        ; $7a01: $7b
	ld   h, h                                        ; $7a02: $64
	xor  d                                           ; $7a03: $aa
	ld   l, d                                        ; $7a04: $6a
	and  l                                           ; $7a05: $a5
	ld   l, e                                        ; $7a06: $6b
	add  [hl]                                        ; $7a07: $86
	add  a                                           ; $7a08: $87
	ld   [hl], a                                     ; $7a09: $77
	adc  c                                           ; $7a0a: $89
	ld   d, [hl]                                     ; $7a0b: $56
	sub  l                                           ; $7a0c: $95
	ld   c, e                                        ; $7a0d: $4b
	add  a                                           ; $7a0e: $87
	or   a                                           ; $7a0f: $b7
	sub  l                                           ; $7a10: $95
	ld   c, l                                        ; $7a11: $4d
	ld   l, b                                        ; $7a12: $68
	rst  $30                                         ; $7a13: $f7
	ld   l, b                                        ; $7a14: $68
	adc  b                                           ; $7a15: $88
	cp   h                                           ; $7a16: $bc
	or   a                                           ; $7a17: $b7
	ld   l, e                                        ; $7a18: $6b
	sbc  c                                           ; $7a19: $99
	reti                                             ; $7a1a: $d9


	ld   d, [hl]                                     ; $7a1b: $56
	sub  a                                           ; $7a1c: $97
	sbc  c                                           ; $7a1d: $99
	ld   h, [hl]                                     ; $7a1e: $66
	ld   e, c                                        ; $7a1f: $59
	ld   h, h                                        ; $7a20: $64
	ld   [hl], d                                     ; $7a21: $72
	ld   [hl+], a                                    ; $7a22: $22
	dec  [hl]                                        ; $7a23: $35
	ld   [hl+], a                                    ; $7a24: $22
	xor  h                                           ; $7a25: $ac
	cp   a                                           ; $7a26: $bf
	or   [hl]                                        ; $7a27: $b6
	cp   c                                           ; $7a28: $b9
	adc  e                                           ; $7a29: $8b
	db   $db                                         ; $7a2a: $db
	call z, $bc9c                                    ; $7a2b: $cc $9c $bc
	jp   z, $bca9                                    ; $7a2e: $ca $a9 $bc

	and  [hl]                                        ; $7a31: $a6
	ld   b, l                                        ; $7a32: $45
	ld   [hl], a                                     ; $7a33: $77
	ld   h, l                                        ; $7a34: $65
	ld   sp, $1111                                   ; $7a35: $31 $11 $11
	dec  de                                          ; $7a38: $1b
	rst  $38                                         ; $7a39: $ff
	ei                                               ; $7a3a: $fb
	ld   d, l                                        ; $7a3b: $55
	sbc  c                                           ; $7a3c: $99
	adc  h                                           ; $7a3d: $8c
	set  1, a                                        ; $7a3e: $cb $cf
	and  a                                           ; $7a40: $a7
	adc  $bd                                         ; $7a41: $ce $bd
	ld   sp, hl                                      ; $7a43: $f9
	ld   l, d                                        ; $7a44: $6a
	sub  l                                           ; $7a45: $95
	adc  d                                           ; $7a46: $8a
	ld   a, c                                        ; $7a47: $79
	sub  e                                           ; $7a48: $93
	ld   de, $1121                                   ; $7a49: $11 $21 $11
	ld   de, $ffef                                   ; $7a4c: $11 $ef $ff
	and  e                                           ; $7a4f: $a3
	inc  h                                           ; $7a50: $24
	ld   e, d                                        ; $7a51: $5a
	xor  $ff                                         ; $7a52: $ee $ff
	jp   hl                                          ; $7a54: $e9


	ld   e, c                                        ; $7a55: $59
	cp   l                                           ; $7a56: $bd
	cp   $99                                         ; $7a57: $fe $99
	sub  l                                           ; $7a59: $95
	ld   e, b                                        ; $7a5a: $58
	adc  b                                           ; $7a5b: $88
	ret                                              ; $7a5c: $c9


	ld   b, d                                        ; $7a5d: $42
	ld   de, $1111                                   ; $7a5e: $11 $11 $11
	rra                                              ; $7a61: $1f
	rst  $38                                         ; $7a62: $ff
	ld   hl, sp+$11                                  ; $7a63: $f8 $11
	jr   @+$01                                       ; $7a65: $18 $ff

	cp   $ec                                         ; $7a67: $fe $ec
	or   a                                           ; $7a69: $b7
	ld   l, d                                        ; $7a6a: $6a
	rst  $28                                         ; $7a6b: $ef
	cp   $93                                         ; $7a6c: $fe $93
	dec  d                                           ; $7a6e: $15
	sbc  h                                           ; $7a6f: $9c
	bit  4, e                                        ; $7a70: $cb $63
	ld   de, $1111                                   ; $7a72: $11 $11 $11
	dec  d                                           ; $7a75: $15
	rst  $38                                         ; $7a76: $ff
	rst  $38                                         ; $7a77: $ff

jr_0d7_7a78:
	ld   de, $cf11                                   ; $7a78: $11 $11 $cf
	rst  $38                                         ; $7a7b: $ff
	xor  $b7                                         ; $7a7c: $ee $b7
	ld   h, [hl]                                     ; $7a7e: $66
	xor  a                                           ; $7a7f: $af
	rst  $38                                         ; $7a80: $ff
	add  $22                                         ; $7a81: $c6 $22
	ld   c, d                                        ; $7a83: $4a
	rst  $28                                         ; $7a84: $ef
	call nz, $1111                                   ; $7a85: $c4 $11 $11
	ld   de, rAUD1LEN                                   ; $7a88: $11 $11 $ff
	rst  $38                                         ; $7a8b: $ff
	sub  c                                           ; $7a8c: $91
	ld   de, $ff7f                                   ; $7a8d: $11 $7f $ff
	db   $dd                                         ; $7a90: $dd
	call c, $6b54                                    ; $7a91: $dc $54 $6b
	rst  $38                                         ; $7a94: $ff
	ld   sp, hl                                      ; $7a95: $f9
	ld   b, c                                        ; $7a96: $41
	jr   jr_0d7_7a78                                 ; $7a97: $18 $df

	ld   a, [$1111]                                  ; $7a99: $fa $11 $11
	ld   de, $9f11                                   ; $7a9c: $11 $11 $9f
	rst  $38                                         ; $7a9f: $ff
	pop  af                                          ; $7aa0: $f1
	ld   de, $ff1f                                   ; $7aa1: $11 $1f $ff
	cp   $dd                                         ; $7aa4: $fe $dd
	ld   h, c                                        ; $7aa6: $61
	ld   a, [hl-]                                    ; $7aa7: $3a
	rst  $38                                         ; $7aa8: $ff
	db   $fd                                         ; $7aa9: $fd
	ld   sp, $cf14                                   ; $7aaa: $31 $14 $cf
	db   $ec                                         ; $7aad: $ec
	ld   b, c                                        ; $7aae: $41
	ld   de, $1111                                   ; $7aaf: $11 $11 $11
	ld   c, a                                        ; $7ab2: $4f
	rst  $38                                         ; $7ab3: $ff
	pop  af                                          ; $7ab4: $f1
	ld   de, $ff1f                                   ; $7ab5: $11 $1f $ff
	db   $fd                                         ; $7ab8: $fd
	rst  $38                                         ; $7ab9: $ff
	ld   [hl], c                                     ; $7aba: $71
	ld   d, $ff                                      ; $7abb: $16 $ff
	cp   $41                                         ; $7abd: $fe $41
	inc  de                                          ; $7abf: $13
	xor  a                                           ; $7ac0: $af
	db   $ec                                         ; $7ac1: $ec
	sub  c                                           ; $7ac2: $91
	ld   de, $1111                                   ; $7ac3: $11 $11 $11
	rra                                              ; $7ac6: $1f
	rst  $38                                         ; $7ac7: $ff
	pop  af                                          ; $7ac8: $f1
	ld   de, $ff1f                                   ; $7ac9: $11 $1f $ff
	rst  $38                                         ; $7acc: $ff
	rst  $38                                         ; $7acd: $ff
	sub  c                                           ; $7ace: $91
	dec  d                                           ; $7acf: $15
	rst  $28                                         ; $7ad0: $ef
	rst  $38                                         ; $7ad1: $ff
	ld   h, e                                        ; $7ad2: $63
	inc  hl                                          ; $7ad3: $23
	ld   a, h                                        ; $7ad4: $7c
	db   $dd                                         ; $7ad5: $dd
	or   d                                           ; $7ad6: $b2
	ld   de, $1111                                   ; $7ad7: $11 $11 $11
	rra                                              ; $7ada: $1f
	rst  $38                                         ; $7adb: $ff
	pop  af                                          ; $7adc: $f1
	ld   de, $ff1f                                   ; $7add: $11 $1f $ff
	rst  $38                                         ; $7ae0: $ff
	rst  $38                                         ; $7ae1: $ff
	sub  c                                           ; $7ae2: $91
	dec  d                                           ; $7ae3: $15
	rst  JumpTable                                         ; $7ae4: $df
	rst  $38                                         ; $7ae5: $ff
	adc  b                                           ; $7ae6: $88
	ld   d, c                                        ; $7ae7: $51
	ld   c, d                                        ; $7ae8: $4a
	adc  $e4                                         ; $7ae9: $ce $e4
	ld   de, $1111                                   ; $7aeb: $11 $11 $11
	cpl                                              ; $7aee: $2f
	rst  $38                                         ; $7aef: $ff
	pop  af                                          ; $7af0: $f1
	ld   de, $ff1f                                   ; $7af1: $11 $1f $ff
	rst  $38                                         ; $7af4: $ff
	rst  $38                                         ; $7af5: $ff
	ld   h, c                                        ; $7af6: $61
	ld   d, $cf                                      ; $7af7: $16 $cf
	rst  $38                                         ; $7af9: $ff
	cp   l                                           ; $7afa: $bd
	ld   [hl], c                                     ; $7afb: $71
	ld   d, $af                                      ; $7afc: $16 $af
	or   $11                                         ; $7afe: $f6 $11
	ld   de, $2f11                                   ; $7b00: $11 $11 $2f
	rst  $38                                         ; $7b03: $ff
	pop  af                                          ; $7b04: $f1
	ld   de, $fe1e                                   ; $7b05: $11 $1e $fe
	rst  $38                                         ; $7b08: $ff
	rst  $38                                         ; $7b09: $ff
	ld   d, c                                        ; $7b0a: $51
	ld   d, $9f                                      ; $7b0b: $16 $9f
	rst  $38                                         ; $7b0d: $ff
	rst  $28                                         ; $7b0e: $ef
	sub  c                                           ; $7b0f: $91
	inc  de                                          ; $7b10: $13
	ld   a, a                                        ; $7b11: $7f
	rst  $30                                         ; $7b12: $f7
	ld   de, $1111                                   ; $7b13: $11 $11 $11
	ld   e, a                                        ; $7b16: $5f
	rst  $38                                         ; $7b17: $ff
	pop  af                                          ; $7b18: $f1
	ld   de, $cd1e                                   ; $7b19: $11 $1e $cd
	rst  $38                                         ; $7b1c: $ff
	rst  $38                                         ; $7b1d: $ff
	ld   hl, $8f15                                   ; $7b1e: $21 $15 $8f
	cp   $ff                                         ; $7b21: $fe $ff
	and  c                                           ; $7b23: $a1
	ld   de, $f97f                                   ; $7b24: $11 $7f $f9
	ld   de, $1111                                   ; $7b27: $11 $11 $11
	xor  a                                           ; $7b2a: $af
	rst  $38                                         ; $7b2b: $ff
	pop  af                                          ; $7b2c: $f1
	ld   de, $6f1d                                   ; $7b2d: $11 $1d $6f
	rst  $38                                         ; $7b30: $ff
	rst  $38                                         ; $7b31: $ff
	ld   de, $8f14                                   ; $7b32: $11 $14 $8f
	db   $fd                                         ; $7b35: $fd
	rst  $38                                         ; $7b36: $ff
	pop  bc                                          ; $7b37: $c1
	ld   de, $f87f                                   ; $7b38: $11 $7f $f8
	ld   de, $1111                                   ; $7b3b: $11 $11 $11
	sbc  a                                           ; $7b3e: $9f
	rst  $38                                         ; $7b3f: $ff
	pop  af                                          ; $7b40: $f1
	ld   de, $1f1c                                   ; $7b41: $11 $1c $1f
	rst  $38                                         ; $7b44: $ff
	rst  $38                                         ; $7b45: $ff
	ld   de, $7f14                                   ; $7b46: $11 $14 $7f
	cp   $ff                                         ; $7b49: $fe $ff
	pop  de                                          ; $7b4b: $d1
	ld   de, $f76f                                   ; $7b4c: $11 $6f $f7
	ld   de, $1111                                   ; $7b4f: $11 $11 $11
	rst  JumpTable                                         ; $7b52: $df
	rst  $38                                         ; $7b53: $ff
	pop  af                                          ; $7b54: $f1
	ld   de, $1f17                                   ; $7b55: $11 $17 $1f
	rst  $38                                         ; $7b58: $ff
	rst  $38                                         ; $7b59: $ff
	ld   de, $7f05                                   ; $7b5a: $11 $05 $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b5d: $cf
	rst  $38                                         ; $7b5e: $ff
	pop  hl                                          ; $7b5f: $e1
	ld   de, $f47f                                   ; $7b60: $11 $7f $f4
	ld   de, $1111                                   ; $7b63: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b66: $cf
	rst  $38                                         ; $7b67: $ff
	pop  af                                          ; $7b68: $f1
	ld   de, $1f13                                   ; $7b69: $11 $13 $1f
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	ld   de, $5c45                                   ; $7b6e: $11 $45 $5c
	sbc  a                                           ; $7b71: $9f
	rst  $38                                         ; $7b72: $ff
	pop  hl                                          ; $7b73: $e1
	ld   de, $e35d                                   ; $7b74: $11 $5d $e3
	ld   de, $1111                                   ; $7b77: $11 $11 $11
	cp   a                                           ; $7b7a: $bf
	rst  $38                                         ; $7b7b: $ff
	pop  af                                          ; $7b7c: $f1
	ld   de, $1d11                                   ; $7b7d: $11 $11 $1d
	rst  $38                                         ; $7b80: $ff
	rst  $38                                         ; $7b81: $ff
	ld   de, $3796                                   ; $7b82: $11 $96 $37
	ld   a, a                                        ; $7b85: $7f
	rst  $38                                         ; $7b86: $ff
	pop  hl                                          ; $7b87: $e1
	inc  de                                          ; $7b88: $13
	ld   l, e                                        ; $7b89: $6b
	and  c                                           ; $7b8a: $a1
	ld   [de], a                                     ; $7b8b: $12
	ld   de, $cf11                                   ; $7b8c: $11 $11 $cf
	rst  $38                                         ; $7b8f: $ff
	pop  af                                          ; $7b90: $f1
	ld   de, $1e11                                   ; $7b91: $11 $11 $1e
	rst  $38                                         ; $7b94: $ff
	rst  $38                                         ; $7b95: $ff
	ld   d, $c6                                      ; $7b96: $16 $c6
	inc  bc                                          ; $7b98: $03
	ld   l, a                                        ; $7b99: $6f
	rst  $38                                         ; $7b9a: $ff
	pop  de                                          ; $7b9b: $d1
	ld   d, $48                                      ; $7b9c: $16 $48
	ld   h, c                                        ; $7b9e: $61
	ld   [hl-], a                                    ; $7b9f: $32
	ld   de, $bf11                                   ; $7ba0: $11 $11 $bf
	db   $fd                                         ; $7ba3: $fd
	pop  af                                          ; $7ba4: $f1
	ld   de, $1d11                                   ; $7ba5: $11 $11 $1d
	rst  $38                                         ; $7ba8: $ff
	rst  $38                                         ; $7ba9: $ff
	ld   l, l                                        ; $7baa: $6d
	rst  $30                                         ; $7bab: $f7
	ld   de, $ff6f                                   ; $7bac: $11 $6f $ff
	pop  bc                                          ; $7baf: $c1
	sbc  b                                           ; $7bb0: $98
	ld   [hl], $31                                   ; $7bb1: $36 $31
	ld   d, e                                        ; $7bb3: $53
	ld   de, $8f11                                   ; $7bb4: $11 $11 $8f
	ei                                               ; $7bb7: $fb
	rst  $30                                         ; $7bb8: $f7
	ld   [de], a                                     ; $7bb9: $12
	ld   de, $fd1c                                   ; $7bba: $11 $1c $fd
	rst  $38                                         ; $7bbd: $ff
	rst  JumpTable                                         ; $7bbe: $df
	ld   a, [$8f11]                                  ; $7bbf: $fa $11 $8f
	rst  $38                                         ; $7bc2: $ff
	and  h                                           ; $7bc3: $a4
	ld   [$1244], a                                  ; $7bc4: $ea $44 $12
	ld   d, c                                        ; $7bc7: $51
	ld   de, $5f11                                   ; $7bc8: $11 $11 $5f

Call_0d7_7bcb:
	ld   a, [$53fe]                                  ; $7bcb: $fa $fe $53
	ld   de, $f719                                   ; $7bce: $11 $19 $f7
	rst  $38                                         ; $7bd1: $ff
	rst  $38                                         ; $7bd2: $ff
	cp   $13                                         ; $7bd3: $fe $13
	cp   h                                           ; $7bd5: $bc
	adc  $77                                         ; $7bd6: $ce $77
	ei                                               ; $7bd8: $fb
	ld   h, h                                        ; $7bd9: $64
	ld   [hl+], a                                    ; $7bda: $22
	ld   [hl-], a                                    ; $7bdb: $32
	ld   de, $1f11                                   ; $7bdc: $11 $11 $1f
	ld   a, [$a7ff]                                  ; $7bdf: $fa $ff $a7
	ld   de, $f115                                   ; $7be2: $11 $15 $f1
	rst  $28                                         ; $7be5: $ef
	rst  $38                                         ; $7be6: $ff
	rst  $38                                         ; $7be7: $ff
	jr   z, @-$23                                    ; $7be8: $28 $db

	ld   a, d                                        ; $7bea: $7a
	ld   d, [hl]                                     ; $7beb: $56
	ei                                               ; $7bec: $fb
	ld   [hl], l                                     ; $7bed: $75
	ld   b, e                                        ; $7bee: $43
	ld   de, $1111                                   ; $7bef: $11 $11 $11
	rra                                              ; $7bf2: $1f
	ld   hl, sp-$01                                  ; $7bf3: $f8 $ff
	db   $fd                                         ; $7bf5: $fd
	ld   de, $f113                                   ; $7bf6: $11 $13 $f1
	ld   a, h                                        ; $7bf9: $7c
	rst  $38                                         ; $7bfa: $ff
	rst  $38                                         ; $7bfb: $ff
	ld   a, a                                        ; $7bfc: $7f
	db   $fc                                         ; $7bfd: $fc
	ld   h, [hl]                                     ; $7bfe: $66
	ld   [hl-], a                                    ; $7bff: $32
	ld   sp, hl                                      ; $7c00: $f9
	ld   [hl], a                                     ; $7c01: $77
	ld   [hl], h                                     ; $7c02: $74
	ld   de, $1111                                   ; $7c03: $11 $11 $11
	rra                                              ; $7c06: $1f
	rst  $30                                         ; $7c07: $f7
	rst  $38                                         ; $7c08: $ff
	rst  $38                                         ; $7c09: $ff
	ld   de, $f111                                   ; $7c0a: $11 $11 $f1
	jr   @-$2f                                       ; $7c0d: $18 $cf

	rst  $38                                         ; $7c0f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c10: $cf
	rst  $38                                         ; $7c11: $ff
	sub  a                                           ; $7c12: $97
	ld   d, c                                        ; $7c13: $51
	and  a                                           ; $7c14: $a7
	ld   h, a                                        ; $7c15: $67
	ld   [hl], l                                     ; $7c16: $75
	ld   de, $1111                                   ; $7c17: $11 $11 $11
	rra                                              ; $7c1a: $1f
	ld   sp, hl                                      ; $7c1b: $f9
	adc  a                                           ; $7c1c: $8f
	rst  $38                                         ; $7c1d: $ff
	ld   b, c                                        ; $7c1e: $41
	ld   de, $18f1                                   ; $7c1f: $11 $f1 $18
	xor  l                                           ; $7c22: $ad
	xor  a                                           ; $7c23: $af
	rst  $28                                         ; $7c24: $ef
	rst  $38                                         ; $7c25: $ff
	db   $db                                         ; $7c26: $db
	sub  c                                           ; $7c27: $91
	ld   d, [hl]                                     ; $7c28: $56
	ld   e, b                                        ; $7c29: $58
	halt                                             ; $7c2a: $76
	ld   de, $1111                                   ; $7c2b: $11 $11 $11
	dec  d                                           ; $7c2e: $15
	rst  $38                                         ; $7c2f: $ff
	rra                                              ; $7c30: $1f
	rst  $38                                         ; $7c31: $ff
	add  d                                           ; $7c32: $82
	ld   b, c                                        ; $7c33: $41
	pop  af                                          ; $7c34: $f1
	jr   @-$74                                       ; $7c35: $18 $8a

	ld   e, $ff                                      ; $7c37: $1e $ff
	rst  $38                                         ; $7c39: $ff
	rst  $38                                         ; $7c3a: $ff
	push hl                                          ; $7c3b: $e5
	ld   h, $67                                      ; $7c3c: $26 $67
	ld   d, l                                        ; $7c3e: $55
	ld   de, $1111                                   ; $7c3f: $11 $11 $11
	ld   de, $1fff                                   ; $7c42: $11 $ff $1f
	rst  $38                                         ; $7c45: $ff
	jp   $a6b4                                       ; $7c46: $c3 $b4 $a6


	dec  d                                           ; $7c49: $15
	sub  [hl]                                        ; $7c4a: $96
	inc  d                                           ; $7c4b: $14
	rst  $38                                         ; $7c4c: $ff
	rst  $38                                         ; $7c4d: $ff
	rst  $38                                         ; $7c4e: $ff
	ld   a, [$a627]                                  ; $7c4f: $fa $27 $a6
	inc  [hl]                                        ; $7c52: $34
	ld   de, $1111                                   ; $7c53: $11 $11 $11
	ld   de, $74bf                                   ; $7c56: $11 $bf $74
	rst  $38                                         ; $7c59: $ff
	rst  $30                                         ; $7c5a: $f7
	cp   [hl]                                        ; $7c5b: $be
	ld   e, d                                        ; $7c5c: $5a
	ld   de, $11c3                                   ; $7c5d: $11 $c3 $11
	rst  $38                                         ; $7c60: $ff
	rst  $38                                         ; $7c61: $ff
	rst  $38                                         ; $7c62: $ff
	cp   $69                                         ; $7c63: $fe $69
	rst  $10                                         ; $7c65: $d7
	inc  sp                                          ; $7c66: $33
	ld   d, c                                        ; $7c67: $51
	ld   de, $1111                                   ; $7c68: $11 $11 $11
	rra                                              ; $7c6b: $1f
	pop  af                                          ; $7c6c: $f1
	rst  $38                                         ; $7c6d: $ff
	db   $fd                                         ; $7c6e: $fd
	sbc  a                                           ; $7c6f: $9f
	cp   c                                           ; $7c70: $b9
	ld   sp, $11a5                                   ; $7c71: $31 $a5 $11
	ccf                                              ; $7c74: $3f
	ld   a, a                                        ; $7c75: $7f
	rst  $38                                         ; $7c76: $ff
	rst  $38                                         ; $7c77: $ff
	db   $db                                         ; $7c78: $db
	db   $fd                                         ; $7c79: $fd
	ld   d, h                                        ; $7c7a: $54
	ld   [hl], h                                     ; $7c7b: $74
	ld   de, $1111                                   ; $7c7c: $11 $11 $11
	ld   de, $1ffb                                   ; $7c7f: $11 $fb $1f
	rst  $38                                         ; $7c82: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c83: $cf
	ei                                               ; $7c84: $fb
	sub  c                                           ; $7c85: $91
	dec  a                                           ; $7c86: $3d
	ld   de, $8117                                   ; $7c87: $11 $17 $81
	rst  $38                                         ; $7c8a: $ff
	rst  $38                                         ; $7c8b: $ff
	rst  $38                                         ; $7c8c: $ff
	rst  $38                                         ; $7c8d: $ff
	ret  c                                           ; $7c8e: $d8

	cp   c                                           ; $7c8f: $b9
	ld   hl, $1111                                   ; $7c90: $21 $11 $11
	ld   de, $111f                                   ; $7c93: $11 $1f $11

jr_0d7_7c96:
	rst  $38                                         ; $7c96: $ff
	cp   $ff                                         ; $7c97: $fe $ff
	db   $dd                                         ; $7c99: $dd
	ld   l, h                                        ; $7c9a: $6c
	pop  de                                          ; $7c9b: $d1
	ld   de, $1e71                                   ; $7c9c: $11 $71 $1e
	rst  $38                                         ; $7c9f: $ff
	rst  $28                                         ; $7ca0: $ef
	rst  $38                                         ; $7ca1: $ff
	rst  $38                                         ; $7ca2: $ff
	rst  $38                                         ; $7ca3: $ff
	or   h                                           ; $7ca4: $b4
	ld   bc, $1111                                   ; $7ca5: $01 $11 $11
	ld   de, $1ff1                                   ; $7ca8: $11 $f1 $1f
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	rst  $38                                         ; $7cad: $ff
	rst  $38                                         ; $7cae: $ff
	rst  $38                                         ; $7caf: $ff
	ld   de, $1115                                   ; $7cb0: $11 $15 $11
	sbc  c                                           ; $7cb3: $99
	sub  a                                           ; $7cb4: $97
	rst  $38                                         ; $7cb5: $ff
	rst  $38                                         ; $7cb6: $ff
	rst  $38                                         ; $7cb7: $ff
	db   $fd                                         ; $7cb8: $fd
	ld   [hl], a                                     ; $7cb9: $77
	ld   sp, $1111                                   ; $7cba: $31 $11 $11
	jr   @+$13                                       ; $7cbd: $18 $11

	rst  $38                                         ; $7cbf: $ff
	cp   a                                           ; $7cc0: $bf
	rst  $38                                         ; $7cc1: $ff
	rst  $38                                         ; $7cc2: $ff
	rst  $38                                         ; $7cc3: $ff
	or   $55                                         ; $7cc4: $f6 $55
	ld   [hl], c                                     ; $7cc6: $71
	dec  d                                           ; $7cc7: $15
	ld   hl, $fc1b                                   ; $7cc8: $21 $1b $fc
	rst  $38                                         ; $7ccb: $ff
	rst  $38                                         ; $7ccc: $ff
	db   $dd                                         ; $7ccd: $dd
	rst  $20                                         ; $7cce: $e7
	ld   de, $1111                                   ; $7ccf: $11 $11 $11
	ld   de, $461f                                   ; $7cd2: $11 $1f $46
	rst  $38                                         ; $7cd5: $ff
	rst  $38                                         ; $7cd6: $ff
	rst  $38                                         ; $7cd7: $ff
	rst  $38                                         ; $7cd8: $ff
	xor  $d8                                         ; $7cd9: $ee $d8
	ld   de, $1131                                   ; $7cdb: $11 $31 $11
	add  a                                           ; $7cde: $87
	ld   a, e                                        ; $7cdf: $7b
	rst  $28                                         ; $7ce0: $ef
	db   $eb                                         ; $7ce1: $eb
	rst  $28                                         ; $7ce2: $ef
	ld   d, c                                        ; $7ce3: $51
	ld   de, $1111                                   ; $7ce4: $11 $11 $11
	ld   e, $11                                      ; $7ce7: $1e $11
	sbc  a                                           ; $7ce9: $9f
	cp   $ff                                         ; $7cea: $fe $ff
	rst  $38                                         ; $7cec: $ff
	rst  $38                                         ; $7ced: $ff
	cp   $16                                         ; $7cee: $fe $16
	ld   [hl], c                                     ; $7cf0: $71
	ld   de, $3972                                   ; $7cf1: $11 $72 $39
	xor  [hl]                                        ; $7cf4: $ae
	sbc  e                                           ; $7cf5: $9b
	call c, $1171                                    ; $7cf6: $dc $71 $11
	ld   de, $1e41                                   ; $7cf9: $11 $41 $1e
	ld   de, $fb6f                                   ; $7cfc: $11 $6f $fb
	rst  $38                                         ; $7cff: $ff
	rst  $38                                         ; $7d00: $ff
	rst  $38                                         ; $7d01: $ff
	rst  $38                                         ; $7d02: $ff
	jr   z, jr_0d7_7c96                              ; $7d03: $28 $91

	ld   hl, $3762                                   ; $7d05: $21 $62 $37
	sbc  l                                           ; $7d08: $9d
	adc  d                                           ; $7d09: $8a
	cp   h                                           ; $7d0a: $bc
	add  d                                           ; $7d0b: $82
	ld   sp, $7111                                   ; $7d0c: $31 $11 $71
	dec  e                                           ; $7d0f: $1d
	ld   de, $f93f                                   ; $7d10: $11 $3f $f9
	rst  $38                                         ; $7d13: $ff
	rst  $38                                         ; $7d14: $ff
	rst  $38                                         ; $7d15: $ff
	rst  $38                                         ; $7d16: $ff
	ld   e, b                                        ; $7d17: $58
	pop  bc                                          ; $7d18: $c1
	ld   hl, $2753                                   ; $7d19: $21 $53 $27
	ld   a, h                                        ; $7d1c: $7c
	adc  b                                           ; $7d1d: $88
	cp   d                                           ; $7d1e: $ba
	and  h                                           ; $7d1f: $a4
	ld   sp, $8111                                   ; $7d20: $31 $11 $81
	rla                                              ; $7d23: $17
	ld   [hl], c                                     ; $7d24: $71
	dec  de                                          ; $7d25: $1b
	ld   a, [$ffff]                                  ; $7d26: $fa $ff $ff
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	and  a                                           ; $7d2b: $a7
	di                                               ; $7d2c: $f3
	ld   [hl+], a                                    ; $7d2d: $22
	ld   b, h                                        ; $7d2e: $44
	ld   d, $69                                      ; $7d2f: $16 $69
	halt                                             ; $7d31: $76
	ret                                              ; $7d32: $c9


	sub  l                                           ; $7d33: $95
	ld   b, e                                        ; $7d34: $43
	ld   de, $1163                                   ; $7d35: $11 $63 $11
	or   c                                           ; $7d38: $b1
	ld   d, $fd                                      ; $7d39: $16 $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d3b: $cf
	rst  $38                                         ; $7d3c: $ff
	rst  $38                                         ; $7d3d: $ff
	rst  $38                                         ; $7d3e: $ff
	and  $f7                                         ; $7d3f: $e6 $f7
	inc  hl                                          ; $7d41: $23
	dec  [hl]                                        ; $7d42: $35
	dec  d                                           ; $7d43: $15
	ld   e, b                                        ; $7d44: $58
	add  l                                           ; $7d45: $85
	ret                                              ; $7d46: $c9


	sub  a                                           ; $7d47: $97
	ld   b, h                                        ; $7d48: $44
	ld   de, $1137                                   ; $7d49: $11 $37 $11
	pop  de                                          ; $7d4c: $d1
	inc  de                                          ; $7d4d: $13
	rst  JumpTable                                         ; $7d4e: $df
	xor  a                                           ; $7d4f: $af
	rst  $38                                         ; $7d50: $ff
	rst  $38                                         ; $7d51: $ff
	rst  $38                                         ; $7d52: $ff
	rst  $30                                         ; $7d53: $f7
	ei                                               ; $7d54: $fb
	inc  [hl]                                        ; $7d55: $34
	ld   h, $13                                      ; $7d56: $26 $13
	ld   d, a                                        ; $7d58: $57
	add  h                                           ; $7d59: $84
	cp   c                                           ; $7d5a: $b9
	ld   [hl], a                                     ; $7d5b: $77
	ld   b, l                                        ; $7d5c: $45
	ld   de, $111a                                   ; $7d5d: $11 $1a $11
	jp   nc, $cf12                                   ; $7d60: $d2 $12 $cf

	adc  a                                           ; $7d63: $8f
	rst  $38                                         ; $7d64: $ff
	rst  $38                                         ; $7d65: $ff
	rst  $38                                         ; $7d66: $ff
	rst  $30                                         ; $7d67: $f7
	db   $dd                                         ; $7d68: $dd
	inc  h                                           ; $7d69: $24
	ld   h, $12                                      ; $7d6a: $26 $12
	ld   d, a                                        ; $7d6c: $57
	and  e                                           ; $7d6d: $a3
	cp   e                                           ; $7d6e: $bb
	ld   [hl], a                                     ; $7d6f: $77
	ld   d, [hl]                                     ; $7d70: $56
	ld   de, $111b                                   ; $7d71: $11 $1b $11
	or   [hl]                                        ; $7d74: $b6
	ld   de, $ae9f                                   ; $7d75: $11 $9f $ae
	rst  $38                                         ; $7d78: $ff
	rst  $38                                         ; $7d79: $ff
	rst  $38                                         ; $7d7a: $ff
	ld   hl, sp-$41                                  ; $7d7b: $f8 $bf
	inc  sp                                          ; $7d7d: $33
	dec  h                                           ; $7d7e: $25
	ld   hl, $a457                                   ; $7d7f: $21 $57 $a4
	xor  e                                           ; $7d82: $ab
	ld   [hl], a                                     ; $7d83: $77
	ld   h, l                                        ; $7d84: $65
	ld   de, $111a                                   ; $7d85: $11 $1a $11
	sub  [hl]                                        ; $7d88: $96
	ld   de, $af9f                                   ; $7d89: $11 $9f $af
	rst  $38                                         ; $7d8c: $ff
	rst  $38                                         ; $7d8d: $ff
	rst  $38                                         ; $7d8e: $ff
	rst  $30                                         ; $7d8f: $f7
	cp   [hl]                                        ; $7d90: $be
	ld   b, d                                        ; $7d91: $42
	dec  d                                           ; $7d92: $15
	ld   de, $b557                                   ; $7d93: $11 $57 $b5
	sbc  h                                           ; $7d96: $9c
	add  [hl]                                        ; $7d97: $86
	ld   [hl], l                                     ; $7d98: $75
	ld   de, $111a                                   ; $7d99: $11 $1a $11
	add  [hl]                                        ; $7d9c: $86
	ld   de, $beaf                                   ; $7d9d: $11 $af $be
	rst  $38                                         ; $7da0: $ff
	rst  $38                                         ; $7da1: $ff
	rst  $38                                         ; $7da2: $ff
	rst  $30                                         ; $7da3: $f7
	xor  l                                           ; $7da4: $ad
	ld   b, d                                        ; $7da5: $42
	dec  d                                           ; $7da6: $15
	ld   [de], a                                     ; $7da7: $12
	ld   c, c                                        ; $7da8: $49
	or   [hl]                                        ; $7da9: $b6
	xor  e                                           ; $7daa: $ab
	or   [hl]                                        ; $7dab: $b6
	ld   [hl], l                                     ; $7dac: $75
	ld   de, $1119                                   ; $7dad: $11 $19 $11
	sub  [hl]                                        ; $7db0: $96
	ld   de, $dfcf                                   ; $7db1: $11 $cf $df
	rst  $38                                         ; $7db4: $ff
	rst  $38                                         ; $7db5: $ff
	rst  $38                                         ; $7db6: $ff
	or   $a9                                         ; $7db7: $f6 $a9
	ld   b, c                                        ; $7db9: $41
	dec  d                                           ; $7dba: $15
	inc  hl                                          ; $7dbb: $23
	ld   c, d                                        ; $7dbc: $4a
	rst  ToBoot                                         ; $7dbd: $c7
	cp   h                                           ; $7dbe: $bc
	sub  l                                           ; $7dbf: $95
	ld   [hl], d                                     ; $7dc0: $72
	ld   de, $1116                                   ; $7dc1: $11 $16 $11
	or   e                                           ; $7dc4: $b3
	dec  d                                           ; $7dc5: $15
	rst  $38                                         ; $7dc6: $ff
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	rst  $38                                         ; $7dc9: $ff
	rst  $38                                         ; $7dca: $ff
	push bc                                          ; $7dcb: $c5
	and  l                                           ; $7dcc: $a5
	ld   sp, $3523                                   ; $7dcd: $31 $23 $35
	ld   l, [hl]                                     ; $7dd0: $6e
	jp   z, $95cc                                    ; $7dd1: $ca $cc $95

	ld   h, c                                        ; $7dd4: $61
	ld   de, $1114                                   ; $7dd5: $11 $14 $11
	and  h                                           ; $7dd8: $a4
	jr   z, @+$01                                    ; $7dd9: $28 $ff

	rst  $38                                         ; $7ddb: $ff
	rst  $38                                         ; $7ddc: $ff
	rst  $38                                         ; $7ddd: $ff
	rst  $38                                         ; $7dde: $ff
	sub  e                                           ; $7ddf: $93
	ld   h, h                                        ; $7de0: $64
	ld   de, $5624                                   ; $7de1: $11 $24 $56
	xor  a                                           ; $7de4: $af
	db   $ed                                         ; $7de5: $ed
	db   $ec                                         ; $7de6: $ec
	ld   [hl], l                                     ; $7de7: $75
	ld   sp, $2111                                   ; $7de8: $31 $11 $21
	ld   de, $5db6                                   ; $7deb: $11 $b6 $5d
	rst  $38                                         ; $7dee: $ff

jr_0d7_7def:
	rst  $38                                         ; $7def: $ff
	rst  $38                                         ; $7df0: $ff
	db   $fd                                         ; $7df1: $fd
	db   $fd                                         ; $7df2: $fd
	ld   sp, $1133                                   ; $7df3: $31 $33 $11
	ld   b, [hl]                                     ; $7df6: $46
	sbc  c                                           ; $7df7: $99
	rst  JumpTable                                         ; $7df8: $df
	cp   $dc                                         ; $7df9: $fe $dc
	ld   d, e                                        ; $7dfb: $53
	ld   de, $1111                                   ; $7dfc: $11 $11 $11
	ld   d, $da                                      ; $7dff: $16 $da
	xor  a                                           ; $7e01: $af
	rst  $38                                         ; $7e02: $ff
	rst  $38                                         ; $7e03: $ff
	rst  $38                                         ; $7e04: $ff
	reti                                             ; $7e05: $d9


	cp   b                                           ; $7e06: $b8
	ld   de, $1313                                   ; $7e07: $11 $13 $13
	ld   a, d                                        ; $7e0a: $7a
	call $fdff                                       ; $7e0b: $cd $ff $fd
	or   a                                           ; $7e0e: $b7
	ld   de, $1111                                   ; $7e0f: $11 $11 $11
	ld   hl, $ff1e                                   ; $7e12: $21 $1e $ff
	rst  $38                                         ; $7e15: $ff
	rst  $38                                         ; $7e16: $ff
	rst  $38                                         ; $7e17: $ff
	cp   $74                                         ; $7e18: $fe $74
	ld   h, e                                        ; $7e1a: $63
	ld   de, $5936                                   ; $7e1b: $11 $36 $59
	cp   a                                           ; $7e1e: $bf
	rst  $38                                         ; $7e1f: $ff
	rst  $38                                         ; $7e20: $ff
	jp   hl                                          ; $7e21: $e9


	ld   h, c                                        ; $7e22: $61
	ld   de, $1111                                   ; $7e23: $11 $11 $11
	ld   sp, $ff8f                                   ; $7e26: $31 $8f $ff
	rst  $38                                         ; $7e29: $ff
	rst  $38                                         ; $7e2a: $ff
	xor  h                                           ; $7e2b: $ac
	ret  c                                           ; $7e2c: $d8

	ld   b, c                                        ; $7e2d: $41
	ld   d, e                                        ; $7e2e: $53
	inc  sp                                          ; $7e2f: $33
	adc  h                                           ; $7e30: $8c
	cp   l                                           ; $7e31: $bd
	rst  $28                                         ; $7e32: $ef
	cp   $dd                                         ; $7e33: $fe $dd
	sub  h                                           ; $7e35: $94
	ld   de, $1111                                   ; $7e36: $11 $11 $11
	rla                                              ; $7e39: $17
	ld   [hl], h                                     ; $7e3a: $74
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	rst  $38                                         ; $7e3d: $ff
	ei                                               ; $7e3e: $fb
	jr   c, @-$68                                    ; $7e3f: $38 $96

	inc  hl                                          ; $7e41: $23
	ld   a, c                                        ; $7e42: $79
	adc  b                                           ; $7e43: $88
	xor  $ed                                         ; $7e44: $ee $ed
	sbc  $ca                                         ; $7e46: $de $ca
	sbc  b                                           ; $7e48: $98
	ld   d, e                                        ; $7e49: $53
	ld   de, $1111                                   ; $7e4a: $11 $11 $11
	inc  e                                           ; $7e4d: $1c
	and  a                                           ; $7e4e: $a7
	rst  $38                                         ; $7e4f: $ff
	rst  $38                                         ; $7e50: $ff
	adc  $f7                                         ; $7e51: $ce $f7
	jr   jr_0d7_7def                                 ; $7e53: $18 $9a

	ld   [hl], a                                     ; $7e55: $77
	xor  h                                           ; $7e56: $ac
	cp   d                                           ; $7e57: $ba
	cp   $db                                         ; $7e58: $fe $db
	xor  d                                           ; $7e5a: $aa
	sbc  b                                           ; $7e5b: $98
	ld   h, a                                        ; $7e5c: $67
	ld   d, h                                        ; $7e5d: $54
	ld   de, $1111                                   ; $7e5e: $11 $11 $11
	dec  e                                           ; $7e61: $1d
	and  [hl]                                        ; $7e62: $a6
	rst  $38                                         ; $7e63: $ff
	rst  $38                                         ; $7e64: $ff
	cp   l                                           ; $7e65: $bd
	add  $28                                         ; $7e66: $c6 $28
	sbc  h                                           ; $7e68: $9c
	sbc  c                                           ; $7e69: $99
	adc  $cb                                         ; $7e6a: $ce $cb
	call c, $99cb                                    ; $7e6c: $dc $cb $99
	sbc  b                                           ; $7e6f: $98
	ld   h, a                                        ; $7e70: $67
	ld   h, l                                        ; $7e71: $65
	ld   hl, $1111                                   ; $7e72: $21 $11 $11
	ld   e, $c5                                      ; $7e75: $1e $c5
	rst  $38                                         ; $7e77: $ff
	rst  $38                                         ; $7e78: $ff
	adc  d                                           ; $7e79: $8a
	push bc                                          ; $7e7a: $c5
	daa                                              ; $7e7b: $27
	xor  [hl]                                        ; $7e7c: $ae
	xor  c                                           ; $7e7d: $a9
	sbc  $cb                                         ; $7e7e: $de $cb
	call z, $79eb                                    ; $7e80: $cc $eb $79
	adc  b                                           ; $7e83: $88
	ld   h, [hl]                                     ; $7e84: $66
	ld   h, [hl]                                     ; $7e85: $66
	ld   hl, $1111                                   ; $7e86: $21 $11 $11
	ld   e, $99                                      ; $7e89: $1e $99
	rst  $38                                         ; $7e8b: $ff
	cp   $88                                         ; $7e8c: $fe $88
	sub  h                                           ; $7e8e: $94
	ld   [hl], $cf                                   ; $7e8f: $36 $cf
	set  1, [hl]                                     ; $7e91: $cb $ce
	res  7, e                                        ; $7e93: $cb $bb
	jp   c, $8787                                    ; $7e95: $da $87 $87

	ld   h, [hl]                                     ; $7e98: $66
	ld   h, [hl]                                     ; $7e99: $66
	ld   sp, $1111                                   ; $7e9a: $31 $11 $11
	rra                                              ; $7e9d: $1f
	xor  b                                           ; $7e9e: $a8
	rst  $38                                         ; $7e9f: $ff
	db   $fd                                         ; $7ea0: $fd
	ld   h, h                                        ; $7ea1: $64
	ld   [hl], l                                     ; $7ea2: $75
	jr   z, @-$0f                                    ; $7ea3: $28 $ef

	db   $ec                                         ; $7ea5: $ec
	call $9cda                                       ; $7ea6: $cd $da $9c
	ld   [$7777], a                                  ; $7ea9: $ea $77 $77
	ld   d, l                                        ; $7eac: $55
	ld   h, [hl]                                     ; $7ead: $66
	ld   hl, $1111                                   ; $7eae: $21 $11 $11
	cpl                                              ; $7eb1: $2f
	adc  h                                           ; $7eb2: $8c
	rst  $38                                         ; $7eb3: $ff
	ld   a, [$8442]                                  ; $7eb4: $fa $42 $84
	ld   c, d                                        ; $7eb7: $4a
	rst  $38                                         ; $7eb8: $ff
	db   $ec                                         ; $7eb9: $ec
	xor  l                                           ; $7eba: $ad
	cp   c                                           ; $7ebb: $b9
	xor  h                                           ; $7ebc: $ac
	jp   c, Jump_0d7_7686                            ; $7ebd: $da $86 $76

	ld   d, l                                        ; $7ec0: $55
	ld   h, l                                        ; $7ec1: $65
	ld   de, $1111                                   ; $7ec2: $11 $11 $11
	xor  h                                           ; $7ec5: $ac
	xor  a                                           ; $7ec6: $af
	rst  $38                                         ; $7ec7: $ff
	push hl                                          ; $7ec8: $e5
	inc  d                                           ; $7ec9: $14
	ld   d, h                                        ; $7eca: $54
	xor  l                                           ; $7ecb: $ad
	rst  $38                                         ; $7ecc: $ff
	ld   [$9abb], a                                  ; $7ecd: $ea $bb $9a
	call $65c9                                       ; $7ed0: $cd $c9 $65
	ld   h, [hl]                                     ; $7ed3: $66
	ld   h, [hl]                                     ; $7ed4: $66
	ld   h, e                                        ; $7ed5: $63
	ld   de, $1611                                   ; $7ed6: $11 $11 $16
	or   $df                                         ; $7ed9: $f6 $df
	db   $fd                                         ; $7edb: $fd
	add  c                                           ; $7edc: $81
	scf                                              ; $7edd: $37
	ld   h, a                                        ; $7ede: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7edf: $cf
	db   $fd                                         ; $7ee0: $fd
	cp   e                                           ; $7ee1: $bb
	cp   c                                           ; $7ee2: $b9
	xor  e                                           ; $7ee3: $ab
	db   $dd                                         ; $7ee4: $dd
	and  a                                           ; $7ee5: $a7
	ld   d, l                                        ; $7ee6: $55
	ld   d, [hl]                                     ; $7ee7: $56
	ld   d, l                                        ; $7ee8: $55
	ld   b, d                                        ; $7ee9: $42
	ld   de, $5f11                                   ; $7eea: $11 $11 $5f
	ld   a, l                                        ; $7eed: $7d
	rst  $38                                         ; $7eee: $ff
	add  $12                                         ; $7eef: $c6 $12
	ld   [hl], a                                     ; $7ef1: $77
	xor  h                                           ; $7ef2: $ac
	rst  $38                                         ; $7ef3: $ff
	jp   z, $bb9b                                    ; $7ef4: $ca $9b $bb

	db   $dd                                         ; $7ef7: $dd
	jp   c, $6654                                    ; $7ef8: $da $54 $66

	ld   h, a                                        ; $7efb: $67
	ld   d, e                                        ; $7efc: $53
	ld   de, $1b11                                   ; $7efd: $11 $11 $1b
	rst  $20                                         ; $7f00: $e7
	rst  $28                                         ; $7f01: $ef
	db   $fc                                         ; $7f02: $fc
	ld   hl, $895a                                   ; $7f03: $21 $5a $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f06: $cf
	ei                                               ; $7f07: $fb
	adc  c                                           ; $7f08: $89
	call c, $ccba                                    ; $7f09: $dc $ba $cc
	sub  l                                           ; $7f0c: $95
	ld   d, [hl]                                     ; $7f0d: $56
	halt                                             ; $7f0e: $76
	ld   b, e                                        ; $7f0f: $43
	ld   [hl-], a                                    ; $7f10: $32
	ld   de, $fb15                                   ; $7f11: $11 $15 $fb
	xor  a                                           ; $7f14: $af
	call c, $0a81                                    ; $7f15: $dc $81 $0a
	jp   z, $eede                                    ; $7f18: $ca $de $ee

	sub  a                                           ; $7f1b: $97
	xor  h                                           ; $7f1c: $ac
	db   $ec                                         ; $7f1d: $ec
	cp   e                                           ; $7f1e: $bb
	add  l                                           ; $7f1f: $85
	ld   h, [hl]                                     ; $7f20: $66
	ld   d, a                                        ; $7f21: $57
	add  e                                           ; $7f22: $83
	ld   [de], a                                     ; $7f23: $12
	ld   de, $f915                                   ; $7f24: $11 $15 $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f27: $cf
	bit  0, c                                        ; $7f28: $cb $41
	ld   c, c                                        ; $7f2a: $49
	xor  h                                           ; $7f2b: $ac
	rst  JumpTable                                         ; $7f2c: $df
	db   $db                                         ; $7f2d: $db
	xor  c                                           ; $7f2e: $a9
	cp   h                                           ; $7f2f: $bc
	call c, $96b9                                    ; $7f30: $dc $b9 $96
	ld   d, a                                        ; $7f33: $57
	ld   h, l                                        ; $7f34: $65
	ld   h, h                                        ; $7f35: $64
	ld   hl, $1d11                                   ; $7f36: $21 $11 $1d
	rst  $20                                         ; $7f39: $e7
	xor  $b9                                         ; $7f3a: $ee $b9
	ld   d, e                                        ; $7f3c: $53
	ld   e, c                                        ; $7f3d: $59
	cp   d                                           ; $7f3e: $ba
	xor  $cc                                         ; $7f3f: $ee $cc
	sbc  c                                           ; $7f41: $99
	call $aaca                                       ; $7f42: $cd $ca $aa
	ld   h, [hl]                                     ; $7f45: $66
	ld   h, [hl]                                     ; $7f46: $66
	ld   h, l                                        ; $7f47: $65
	ld   [hl-], a                                    ; $7f48: $32
	ld   sp, $5e11                                   ; $7f49: $31 $11 $5e
	cp   h                                           ; $7f4c: $bc
	ld   a, [$4398]                                  ; $7f4d: $fa $98 $43
	sbc  e                                           ; $7f50: $9b
	call $dacc                                       ; $7f51: $cd $cc $da
	ld   l, e                                        ; $7f54: $6b
	call c, $87dc                                    ; $7f55: $dc $dc $87
	ld   h, h                                        ; $7f58: $64
	halt                                             ; $7f59: $76
	ld   b, a                                        ; $7f5a: $47
	ld   sp, $1221                                   ; $7f5b: $31 $21 $12
	ld   a, [$bd7b]                                  ; $7f5e: $fa $7b $bd
	ld   b, h                                        ; $7f61: $44
	ld   a, c                                        ; $7f62: $79
	db   $db                                         ; $7f63: $db
	sbc  l                                           ; $7f64: $9d
	res  6, a                                        ; $7f65: $cb $b7
	call $99cb                                       ; $7f67: $cd $cb $99
	and  [hl]                                        ; $7f6a: $a6
	ld   d, [hl]                                     ; $7f6b: $56
	ld   [hl], a                                     ; $7f6c: $77
	ld   [hl+], a                                    ; $7f6d: $22
	ld   b, e                                        ; $7f6e: $43
	ld   de, $ba0c                                   ; $7f6f: $11 $0c $ba
	rst  $20                                         ; $7f72: $e7
	sbc  h                                           ; $7f73: $9c
	ld   [hl], h                                     ; $7f74: $74
	xor  h                                           ; $7f75: $ac
	cp   h                                           ; $7f76: $bc
	xor  d                                           ; $7f77: $aa
	rst  JumpTable                                         ; $7f78: $df
	sbc  d                                           ; $7f79: $9a
	cp   h                                           ; $7f7a: $bc
	ld   [$6699], a                                  ; $7f7b: $ea $99 $66
	ld   d, [hl]                                     ; $7f7e: $56
	sub  l                                           ; $7f7f: $95
	inc  hl                                          ; $7f80: $23
	ld   hl, $7c21                                   ; $7f81: $21 $21 $7c
	xor  l                                           ; $7f84: $ad
	sub  h                                           ; $7f85: $94
	xor  h                                           ; $7f86: $ac
	ld   e, c                                        ; $7f87: $59
	cp   b                                           ; $7f88: $b8
	cp   e                                           ; $7f89: $bb
	cp   h                                           ; $7f8a: $bc
	res  3, e                                        ; $7f8b: $cb $9b
	cp   e                                           ; $7f8d: $bb
	res  2, [hl]                                     ; $7f8e: $cb $96
	ld   b, [hl]                                     ; $7f90: $46
	ld   [hl], a                                     ; $7f91: $77
	ld   b, e                                        ; $7f92: $43
	ld   [hl+], a                                    ; $7f93: $22
	ld   hl, $e917                                   ; $7f94: $21 $17 $e9
	adc  e                                           ; $7f97: $8b
	sub  [hl]                                        ; $7f98: $96
	sub  a                                           ; $7f99: $97
	ld   a, l                                        ; $7f9a: $7d
	jp   z, $bbac                                    ; $7f9b: $ca $ac $bb

	cp   c                                           ; $7f9e: $b9
	db   $ec                                         ; $7f9f: $ec
	cp   e                                           ; $7fa0: $bb
	adc  b                                           ; $7fa1: $88
	ld   [hl], a                                     ; $7fa2: $77
	sub  h                                           ; $7fa3: $94
	ld   [hl], $32                                   ; $7fa4: $36 $32
	ld   [hl+], a                                    ; $7fa6: $22
	ld   de, $778e                                   ; $7fa7: $11 $8e $77
	sbc  h                                           ; $7faa: $9c
	or   h                                           ; $7fab: $b4
	ld   l, h                                        ; $7fac: $6c
	ret                                              ; $7fad: $c9


	ld   l, h                                        ; $7fae: $6c
	db   $ed                                         ; $7faf: $ed
	rst  $10                                         ; $7fb0: $d7
	xor  h                                           ; $7fb1: $ac
	cp   c                                           ; $7fb2: $b9
	cp   [hl]                                        ; $7fb3: $be
	add  l                                           ; $7fb4: $85
	ld   h, l                                        ; $7fb5: $65
	ld   h, a                                        ; $7fb6: $67
	ld   [hl+], a                                    ; $7fb7: $22
	ld   b, e                                        ; $7fb8: $43
	ld   b, c                                        ; $7fb9: $41
	ld   a, [hl+]                                    ; $7fba: $2a
	adc  b                                           ; $7fbb: $88
	adc  b                                           ; $7fbc: $88
	adc  c                                           ; $7fbd: $89
	db   $f4                                         ; $7fbe: $f4
	ld   a, $8b                                      ; $7fbf: $3e $8b
	jp   c, $abdb                                    ; $7fc1: $da $db $ab

	adc  c                                           ; $7fc4: $89
	db   $db                                         ; $7fc5: $db
	xor  d                                           ; $7fc6: $aa
	ld   [hl], l                                     ; $7fc7: $75
	ld   [hl], l                                     ; $7fc8: $75
	inc  [hl]                                        ; $7fc9: $34
	dec  [hl]                                        ; $7fca: $35
	ld   d, d                                        ; $7fcb: $52
	ld   d, $e4                                      ; $7fcc: $16 $e4
	dec  a                                           ; $7fce: $3d
	jp   hl                                          ; $7fcf: $e9


	ld   h, d                                        ; $7fd0: $62
	sbc  a                                           ; $7fd1: $9f
	ld   h, l                                        ; $7fd2: $65
	cp   b                                           ; $7fd3: $b8
	call c, $db9d                                    ; $7fd4: $dc $9d $db
	sub  a                                           ; $7fd7: $97
	sbc  d                                           ; $7fd8: $9a
	adc  b                                           ; $7fd9: $88
	ld   h, a                                        ; $7fda: $67
	ld   d, d                                        ; $7fdb: $52
	dec  [hl]                                        ; $7fdc: $35
	ld   h, h                                        ; $7fdd: $64
	ld   de, $518e                                   ; $7fde: $11 $8e $51
	xor  [hl]                                        ; $7fe1: $ae
	sbc  b                                           ; $7fe2: $98
	ld   h, h                                        ; $7fe3: $64
	rst  JumpTable                                         ; $7fe4: $df
	ld   h, a                                        ; $7fe5: $67
	cp   $9a                                         ; $7fe6: $fe $9a
	cp   h                                           ; $7fe8: $bc
	sub  a                                           ; $7fe9: $97
	cp   e                                           ; $7fea: $bb
	sub  a                                           ; $7feb: $97
	sbc  b                                           ; $7fec: $98
	ld   d, h                                        ; $7fed: $54
	inc  hl                                          ; $7fee: $23
	ld   d, e                                        ; $7fef: $53
	ld   de, $a659                                   ; $7ff0: $11 $59 $a6
	add  hl, sp                                      ; $7ff3: $39
	cp   e                                           ; $7ff4: $bb
	add  c                                           ; $7ff5: $81
	rst  JumpTable                                         ; $7ff6: $df
	scf                                              ; $7ff7: $37
	xor  l                                           ; $7ff8: $ad
	jp   hl                                          ; $7ff9: $e9


	sbc  e                                           ; $7ffa: $9b
	ret                                              ; $7ffb: $c9


	adc  c                                           ; $7ffc: $89
	cp   c                                           ; $7ffd: $b9
	ld   a, c                                        ; $7ffe: $79
	ld   h, l                                        ; $7fff: $65
