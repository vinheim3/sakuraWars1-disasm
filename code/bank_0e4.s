; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e4", ROMX[$4000], BANK[$e4]

	ld   de, $1111                                   ; $4000: $11 $11 $11
	ld   de, $bf45                                   ; $4003: $11 $45 $bf
	rst  $38                                         ; $4006: $ff
	rst  $38                                         ; $4007: $ff
	rst  $38                                         ; $4008: $ff
	rst  $38                                         ; $4009: $ff
	rst  $38                                         ; $400a: $ff
	rst  $38                                         ; $400b: $ff
	rst  $38                                         ; $400c: $ff
	rst  $38                                         ; $400d: $ff
	rst  $38                                         ; $400e: $ff
	jp   c, $1184                                    ; $400f: $da $84 $11

	ld   de, $1111                                   ; $4012: $11 $11 $11
	ld   de, $1111                                   ; $4015: $11 $11 $11
	ld   de, $1611                                   ; $4018: $11 $11 $16
	rst  $28                                         ; $401b: $ef
	rst  $38                                         ; $401c: $ff
	rst  $38                                         ; $401d: $ff
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	rst  $38                                         ; $4020: $ff
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	rst  $38                                         ; $4023: $ff
	rst  $38                                         ; $4024: $ff
	jp   z, $1163                                    ; $4025: $ca $63 $11

	ld   de, $1111                                   ; $4028: $11 $11 $11
	ld   de, $1111                                   ; $402b: $11 $11 $11
	ld   de, $2611                                   ; $402e: $11 $11 $26
	xor  h                                           ; $4031: $ac
	rst  $38                                         ; $4032: $ff
	rst  $38                                         ; $4033: $ff
	rst  $38                                         ; $4034: $ff
	rst  $38                                         ; $4035: $ff
	rst  $38                                         ; $4036: $ff
	rst  $38                                         ; $4037: $ff
	rst  $38                                         ; $4038: $ff
	rst  $38                                         ; $4039: $ff
	cp   $b9                                         ; $403a: $fe $b9
	ld   [hl], l                                     ; $403c: $75
	ld   hl, $1111                                   ; $403d: $21 $11 $11
	ld   de, $1111                                   ; $4040: $11 $11 $11
	ld   de, $1111                                   ; $4043: $11 $11 $11
	inc  de                                          ; $4046: $13
	scf                                              ; $4047: $37
	rst  $28                                         ; $4048: $ef
	rst  $38                                         ; $4049: $ff
	rst  $38                                         ; $404a: $ff
	rst  $38                                         ; $404b: $ff
	rst  $38                                         ; $404c: $ff
	rst  $38                                         ; $404d: $ff
	rst  $38                                         ; $404e: $ff
	rst  $38                                         ; $404f: $ff
	rst  $38                                         ; $4050: $ff
	ret  z                                           ; $4051: $c8

	adc  c                                           ; $4052: $89
	ld   [hl], e                                     ; $4053: $73
	ld   de, $1111                                   ; $4054: $11 $11 $11
	ld   de, $1111                                   ; $4057: $11 $11 $11
	ld   de, $1111                                   ; $405a: $11 $11 $11
	inc  de                                          ; $405d: $13
	ld   l, d                                        ; $405e: $6a
	sbc  l                                           ; $405f: $9d
	rst  $38                                         ; $4060: $ff
	rst  $38                                         ; $4061: $ff
	rst  $38                                         ; $4062: $ff
	rst  $38                                         ; $4063: $ff
	rst  $38                                         ; $4064: $ff
	rst  $38                                         ; $4065: $ff
	rst  $38                                         ; $4066: $ff
	cp   $dc                                         ; $4067: $fe $dc
	xor  b                                           ; $4069: $a8
	sbc  b                                           ; $406a: $98
	ld   d, d                                        ; $406b: $52
	ld   de, $1111                                   ; $406c: $11 $11 $11
	ld   de, $1111                                   ; $406f: $11 $11 $11
	ld   de, $1111                                   ; $4072: $11 $11 $11
	ld   b, l                                        ; $4075: $45
	ld   a, b                                        ; $4076: $78
	cp   l                                           ; $4077: $bd
	rst  JumpTable                                         ; $4078: $df
	rst  $38                                         ; $4079: $ff
	rst  $38                                         ; $407a: $ff
	rst  $38                                         ; $407b: $ff
	rst  $38                                         ; $407c: $ff
	rst  $38                                         ; $407d: $ff
	cp   $ff                                         ; $407e: $fe $ff
	xor  $cb                                         ; $4080: $ee $cb
	xor  c                                           ; $4082: $a9
	add  [hl]                                        ; $4083: $86
	ld   h, l                                        ; $4084: $65
	ld   d, e                                        ; $4085: $53
	ld   [hl+], a                                    ; $4086: $22
	ld   hl, $1111                                   ; $4087: $21 $11 $11
	ld   de, $1111                                   ; $408a: $11 $11 $11
	ld   de, $5623                                   ; $408d: $11 $23 $56
	adc  c                                           ; $4090: $89
	cp   l                                           ; $4091: $bd
	rst  $28                                         ; $4092: $ef
	rst  $38                                         ; $4093: $ff
	rst  $38                                         ; $4094: $ff
	rst  $38                                         ; $4095: $ff
	rst  $38                                         ; $4096: $ff
	rst  $38                                         ; $4097: $ff
	rst  $38                                         ; $4098: $ff
	rst  $38                                         ; $4099: $ff
	db   $ec                                         ; $409a: $ec
	cp   b                                           ; $409b: $b8
	halt                                             ; $409c: $76
	ld   d, e                                        ; $409d: $53
	ld   hl, $1111                                   ; $409e: $21 $11 $11
	ld   de, $1111                                   ; $40a1: $11 $11 $11
	ld   de, $1111                                   ; $40a4: $11 $11 $11
	inc  hl                                          ; $40a7: $23
	ld   d, [hl]                                     ; $40a8: $56
	adc  d                                           ; $40a9: $8a
	adc  $ff                                         ; $40aa: $ce $ff
	rst  $38                                         ; $40ac: $ff
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	rst  $38                                         ; $40af: $ff
	rst  $38                                         ; $40b0: $ff
	rst  $38                                         ; $40b1: $ff
	cp   $db                                         ; $40b2: $fe $db
	sub  a                                           ; $40b4: $97
	ld   d, h                                        ; $40b5: $54
	ld   sp, $1111                                   ; $40b6: $31 $11 $11
	ld   de, $1111                                   ; $40b9: $11 $11 $11
	ld   de, $1111                                   ; $40bc: $11 $11 $11
	ld   [de], a                                     ; $40bf: $12
	inc  [hl]                                        ; $40c0: $34
	ld   d, a                                        ; $40c1: $57
	sbc  e                                           ; $40c2: $9b
	rst  JumpTable                                         ; $40c3: $df
	rst  $38                                         ; $40c4: $ff
	rst  $38                                         ; $40c5: $ff
	rst  $38                                         ; $40c6: $ff
	rst  $38                                         ; $40c7: $ff
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	rst  $38                                         ; $40ca: $ff
	db   $fd                                         ; $40cb: $fd
	cp   d                                           ; $40cc: $ba
	add  [hl]                                        ; $40cd: $86
	ld   d, h                                        ; $40ce: $54
	ld   hl, $1111                                   ; $40cf: $21 $11 $11
	ld   de, $1111                                   ; $40d2: $11 $11 $11
	ld   de, $1111                                   ; $40d5: $11 $11 $11
	inc  hl                                          ; $40d8: $23
	ld   b, l                                        ; $40d9: $45
	ld   h, a                                        ; $40da: $67
	sbc  e                                           ; $40db: $9b
	adc  $ff                                         ; $40dc: $ce $ff
	rst  $38                                         ; $40de: $ff
	rst  $38                                         ; $40df: $ff
	rst  $38                                         ; $40e0: $ff
	rst  $38                                         ; $40e1: $ff
	rst  $38                                         ; $40e2: $ff
	rst  $38                                         ; $40e3: $ff
	db   $fd                                         ; $40e4: $fd
	cp   d                                           ; $40e5: $ba
	add  a                                           ; $40e6: $87
	ld   h, h                                        ; $40e7: $64
	ld   sp, $1111                                   ; $40e8: $31 $11 $11
	ld   de, $1111                                   ; $40eb: $11 $11 $11
	ld   de, $1211                                   ; $40ee: $11 $11 $12
	inc  hl                                          ; $40f1: $23
	ld   b, l                                        ; $40f2: $45
	ld   h, a                                        ; $40f3: $67
	adc  c                                           ; $40f4: $89
	cp   l                                           ; $40f5: $bd
	rst  JumpTable                                         ; $40f6: $df
	rst  $38                                         ; $40f7: $ff
	rst  $38                                         ; $40f8: $ff
	rst  $38                                         ; $40f9: $ff
	rst  $38                                         ; $40fa: $ff
	rst  $38                                         ; $40fb: $ff
	rst  $38                                         ; $40fc: $ff
	cp   $dc                                         ; $40fd: $fe $dc
	sbc  b                                           ; $40ff: $98
	ld   [hl], l                                     ; $4100: $75
	ld   b, e                                        ; $4101: $43
	ld   hl, $1111                                   ; $4102: $21 $11 $11
	ld   de, $1111                                   ; $4105: $11 $11 $11
	ld   de, $1211                                   ; $4108: $11 $11 $12
	inc  [hl]                                        ; $410b: $34
	ld   d, [hl]                                     ; $410c: $56
	ld   a, c                                        ; $410d: $79
	xor  e                                           ; $410e: $ab
	call $ffff                                       ; $410f: $cd $ff $ff
	rst  $38                                         ; $4112: $ff
	rst  $38                                         ; $4113: $ff
	rst  $38                                         ; $4114: $ff
	rst  $38                                         ; $4115: $ff
	rst  $38                                         ; $4116: $ff
	db   $ed                                         ; $4117: $ed
	cp   c                                           ; $4118: $b9
	add  a                                           ; $4119: $87
	ld   d, h                                        ; $411a: $54
	ld   [hl-], a                                    ; $411b: $32
	ld   de, $1111                                   ; $411c: $11 $11 $11
	ld   de, $1111                                   ; $411f: $11 $11 $11
	ld   de, $2311                                   ; $4122: $11 $11 $23
	ld   b, l                                        ; $4125: $45
	ld   h, a                                        ; $4126: $67
	adc  c                                           ; $4127: $89
	cp   l                                           ; $4128: $bd
	rst  $28                                         ; $4129: $ef
	rst  $38                                         ; $412a: $ff
	rst  $38                                         ; $412b: $ff
	rst  $38                                         ; $412c: $ff
	rst  $38                                         ; $412d: $ff
	rst  $38                                         ; $412e: $ff
	rst  $38                                         ; $412f: $ff
	db   $fd                                         ; $4130: $fd
	res  3, c                                        ; $4131: $cb $99
	halt                                             ; $4133: $76
	ld   d, h                                        ; $4134: $54
	ld   [hl-], a                                    ; $4135: $32
	ld   de, $1111                                   ; $4136: $11 $11 $11
	ld   de, $1111                                   ; $4139: $11 $11 $11
	ld   [de], a                                     ; $413c: $12
	inc  hl                                          ; $413d: $23
	ld   b, h                                        ; $413e: $44
	ld   d, [hl]                                     ; $413f: $56
	ld   a, b                                        ; $4140: $78
	xor  e                                           ; $4141: $ab
	call $ffff                                       ; $4142: $cd $ff $ff
	rst  $38                                         ; $4145: $ff
	rst  $38                                         ; $4146: $ff
	rst  $38                                         ; $4147: $ff
	rst  $38                                         ; $4148: $ff
	cp   $dd                                         ; $4149: $fe $dd
	cp   d                                           ; $414b: $ba
	sub  a                                           ; $414c: $97
	ld   h, l                                        ; $414d: $65
	ld   b, e                                        ; $414e: $43
	ld   hl, $1111                                   ; $414f: $21 $11 $11
	ld   de, $1111                                   ; $4152: $11 $11 $11
	ld   de, $3312                                   ; $4155: $11 $12 $33
	ld   b, l                                        ; $4158: $45
	ld   d, [hl]                                     ; $4159: $56
	ld   a, b                                        ; $415a: $78
	xor  e                                           ; $415b: $ab
	db   $dd                                         ; $415c: $dd
	rst  $38                                         ; $415d: $ff
	rst  $38                                         ; $415e: $ff
	rst  $38                                         ; $415f: $ff
	rst  $38                                         ; $4160: $ff
	rst  $38                                         ; $4161: $ff
	rst  $38                                         ; $4162: $ff
	rst  $38                                         ; $4163: $ff
	db   $db                                         ; $4164: $db
	xor  d                                           ; $4165: $aa
	add  [hl]                                        ; $4166: $86
	ld   h, l                                        ; $4167: $65
	ld   b, e                                        ; $4168: $43
	ld   hl, $1111                                   ; $4169: $21 $11 $11
	ld   de, $1111                                   ; $416c: $11 $11 $11
	ld   de, $3322                                   ; $416f: $11 $22 $33
	ld   b, l                                        ; $4172: $45
	ld   h, [hl]                                     ; $4173: $66
	ld   a, c                                        ; $4174: $79
	xor  e                                           ; $4175: $ab
	adc  $ff                                         ; $4176: $ce $ff
	rst  $38                                         ; $4178: $ff
	rst  $38                                         ; $4179: $ff
	rst  $38                                         ; $417a: $ff
	rst  $38                                         ; $417b: $ff
	rst  $38                                         ; $417c: $ff
	cp   $db                                         ; $417d: $fe $db
	xor  c                                           ; $417f: $a9
	add  [hl]                                        ; $4180: $86
	ld   d, h                                        ; $4181: $54
	ld   [hl-], a                                    ; $4182: $32
	ld   de, $1111                                   ; $4183: $11 $11 $11
	ld   de, $1111                                   ; $4186: $11 $11 $11
	ld   bc, $3423                                   ; $4189: $01 $23 $34
	ld   d, l                                        ; $418c: $55
	ld   l, b                                        ; $418d: $68
	adc  d                                           ; $418e: $8a
	call $ffef                                       ; $418f: $cd $ef $ff
	rst  $38                                         ; $4192: $ff
	rst  $38                                         ; $4193: $ff
	rst  $38                                         ; $4194: $ff
	rst  $38                                         ; $4195: $ff
	rst  $38                                         ; $4196: $ff
	db   $ed                                         ; $4197: $ed
	jp   z, Jump_0e4_75a8                            ; $4198: $ca $a8 $75

	ld   b, e                                        ; $419b: $43
	ld   hl, $1111                                   ; $419c: $21 $11 $11
	ld   de, $1111                                   ; $419f: $11 $11 $11
	ld   de, $3312                                   ; $41a2: $11 $12 $33
	ld   b, h                                        ; $41a5: $44
	ld   d, [hl]                                     ; $41a6: $56
	ld   a, b                                        ; $41a7: $78
	sbc  e                                           ; $41a8: $9b
	adc  $ff                                         ; $41a9: $ce $ff
	rst  $38                                         ; $41ab: $ff
	rst  $38                                         ; $41ac: $ff
	rst  $38                                         ; $41ad: $ff
	rst  $38                                         ; $41ae: $ff
	rst  $38                                         ; $41af: $ff
	rst  $38                                         ; $41b0: $ff
	db   $ec                                         ; $41b1: $ec
	cp   d                                           ; $41b2: $ba
	add  a                                           ; $41b3: $87
	ld   h, l                                        ; $41b4: $65
	ld   b, e                                        ; $41b5: $43
	ld   hl, $1111                                   ; $41b6: $21 $11 $11
	ld   de, $1111                                   ; $41b9: $11 $11 $11
	ld   de, $3412                                   ; $41bc: $11 $12 $34
	ld   b, l                                        ; $41bf: $45
	ld   h, [hl]                                     ; $41c0: $66
	ld   a, c                                        ; $41c1: $79
	cp   e                                           ; $41c2: $bb
	adc  $ff                                         ; $41c3: $ce $ff
	rst  $38                                         ; $41c5: $ff
	rst  $38                                         ; $41c6: $ff
	rst  $38                                         ; $41c7: $ff
	rst  $38                                         ; $41c8: $ff
	rst  $38                                         ; $41c9: $ff
	rst  $38                                         ; $41ca: $ff
	call c, $87a9                                    ; $41cb: $dc $a9 $87
	ld   d, h                                        ; $41ce: $54
	ld   [hl-], a                                    ; $41cf: $32
	ld   de, $1111                                   ; $41d0: $11 $11 $11
	ld   de, $1111                                   ; $41d3: $11 $11 $11
	ld   bc, $3423                                   ; $41d6: $01 $23 $34
	ld   d, l                                        ; $41d9: $55
	ld   h, a                                        ; $41da: $67
	sbc  c                                           ; $41db: $99
	call z, $ffef                                    ; $41dc: $cc $ef $ff
	rst  $38                                         ; $41df: $ff
	rst  $38                                         ; $41e0: $ff
	rst  $38                                         ; $41e1: $ff
	rst  $38                                         ; $41e2: $ff
	rst  $38                                         ; $41e3: $ff
	xor  $ca                                         ; $41e4: $ee $ca
	sbc  b                                           ; $41e6: $98
	halt                                             ; $41e7: $76
	ld   d, h                                        ; $41e8: $54
	ld   [hl-], a                                    ; $41e9: $32
	ld   de, $1111                                   ; $41ea: $11 $11 $11
	ld   de, $1111                                   ; $41ed: $11 $11 $11
	ld   de, $3423                                   ; $41f0: $11 $23 $34
	ld   d, l                                        ; $41f3: $55
	ld   l, b                                        ; $41f4: $68
	sbc  d                                           ; $41f5: $9a
	cp   l                                           ; $41f6: $bd
	rst  $28                                         ; $41f7: $ef
	rst  $38                                         ; $41f8: $ff
	rst  $38                                         ; $41f9: $ff
	rst  $38                                         ; $41fa: $ff
	rst  $38                                         ; $41fb: $ff
	rst  $38                                         ; $41fc: $ff
	rst  $38                                         ; $41fd: $ff
	db   $ec                                         ; $41fe: $ec
	cp   e                                           ; $41ff: $bb
	sbc  b                                           ; $4200: $98
	ld   [hl], l                                     ; $4201: $75
	ld   b, e                                        ; $4202: $43
	ld   hl, $1111                                   ; $4203: $21 $11 $11
	ld   de, $1111                                   ; $4206: $11 $11 $11
	ld   de, $2312                                   ; $4209: $11 $12 $23
	inc  [hl]                                        ; $420c: $34
	ld   d, [hl]                                     ; $420d: $56
	ld   a, b                                        ; $420e: $78
	sbc  e                                           ; $420f: $9b
	adc  $ef                                         ; $4210: $ce $ef
	rst  $38                                         ; $4212: $ff
	rst  $38                                         ; $4213: $ff
	rst  $38                                         ; $4214: $ff
	rst  $38                                         ; $4215: $ff
	rst  $38                                         ; $4216: $ff
	rst  $38                                         ; $4217: $ff
	db   $ed                                         ; $4218: $ed
	cp   d                                           ; $4219: $ba
	sbc  b                                           ; $421a: $98
	ld   h, l                                        ; $421b: $65
	ld   b, e                                        ; $421c: $43
	ld   hl, $1101                                   ; $421d: $21 $01 $11
	ld   de, $1111                                   ; $4220: $11 $11 $11
	ld   de, $2312                                   ; $4223: $11 $12 $23
	ld   b, l                                        ; $4226: $45
	ld   d, [hl]                                     ; $4227: $56
	adc  c                                           ; $4228: $89
	cp   h                                           ; $4229: $bc
	sbc  $ff                                         ; $422a: $de $ff
	rst  $38                                         ; $422c: $ff
	rst  $38                                         ; $422d: $ff
	rst  $38                                         ; $422e: $ff
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	rst  $38                                         ; $4231: $ff
	call c, $86a9                                    ; $4232: $dc $a9 $86
	ld   d, h                                        ; $4235: $54
	ld   [hl-], a                                    ; $4236: $32
	ld   de, $1111                                   ; $4237: $11 $11 $11
	ld   de, $1111                                   ; $423a: $11 $11 $11
	ld   de, $3412                                   ; $423d: $11 $12 $34
	ld   b, l                                        ; $4240: $45
	ld   h, a                                        ; $4241: $67
	adc  c                                           ; $4242: $89
	cp   l                                           ; $4243: $bd
	rst  $28                                         ; $4244: $ef
	rst  $38                                         ; $4245: $ff
	rst  $38                                         ; $4246: $ff
	rst  $38                                         ; $4247: $ff
	rst  $38                                         ; $4248: $ff
	rst  $38                                         ; $4249: $ff
	rst  $38                                         ; $424a: $ff
	db   $fd                                         ; $424b: $fd
	db   $db                                         ; $424c: $db
	sbc  c                                           ; $424d: $99
	halt                                             ; $424e: $76
	ld   b, e                                        ; $424f: $43
	ld   hl, $1111                                   ; $4250: $21 $11 $11
	ld   de, $1111                                   ; $4253: $11 $11 $11
	ld   de, $1211                                   ; $4256: $11 $11 $12
	inc  [hl]                                        ; $4259: $34
	ld   d, [hl]                                     ; $425a: $56
	ld   a, c                                        ; $425b: $79
	cp   h                                           ; $425c: $bc
	sbc  $ff                                         ; $425d: $de $ff
	rst  $38                                         ; $425f: $ff
	rst  $38                                         ; $4260: $ff
	rst  $38                                         ; $4261: $ff
	rst  $38                                         ; $4262: $ff
	rst  $38                                         ; $4263: $ff
	cp   $cb                                         ; $4264: $fe $cb
	sub  a                                           ; $4266: $97
	ld   b, c                                        ; $4267: $41
	ld   de, $1111                                   ; $4268: $11 $11 $11
	ld   de, $1111                                   ; $426b: $11 $11 $11
	ld   de, $1211                                   ; $426e: $11 $11 $12
	inc  hl                                          ; $4271: $23
	ld   b, a                                        ; $4272: $47
	cp   e                                           ; $4273: $bb
	call $ffff                                       ; $4274: $cd $ff $ff
	rst  $38                                         ; $4277: $ff
	rst  $38                                         ; $4278: $ff
	rst  $38                                         ; $4279: $ff
	rst  $38                                         ; $427a: $ff
	cp   $cd                                         ; $427b: $fe $cd
	res  2, [hl]                                     ; $427d: $cb $96
	ld   h, [hl]                                     ; $427f: $66
	ld   b, d                                        ; $4280: $42
	ld   de, $1111                                   ; $4281: $11 $11 $11
	ld   de, $1111                                   ; $4284: $11 $11 $11
	ld   de, $1311                                   ; $4287: $11 $11 $13
	ld   d, [hl]                                     ; $428a: $56
	xor  h                                           ; $428b: $ac
	call $ffff                                       ; $428c: $cd $ff $ff
	rst  $38                                         ; $428f: $ff
	rst  $38                                         ; $4290: $ff
	rst  $38                                         ; $4291: $ff
	rst  $38                                         ; $4292: $ff
	rst  $38                                         ; $4293: $ff
	cp   $ec                                         ; $4294: $fe $ec
	and  a                                           ; $4296: $a7
	ld   d, l                                        ; $4297: $55
	ld   sp, $1111                                   ; $4298: $31 $11 $11
	ld   de, $1111                                   ; $429b: $11 $11 $11
	ld   de, $1111                                   ; $429e: $11 $11 $11
	ld   [de], a                                     ; $42a1: $12
	ld   l, c                                        ; $42a2: $69
	call $ffff                                       ; $42a3: $cd $ff $ff
	rst  $38                                         ; $42a6: $ff
	rst  $38                                         ; $42a7: $ff
	rst  $38                                         ; $42a8: $ff
	rst  $38                                         ; $42a9: $ff
	rst  $38                                         ; $42aa: $ff
	rst  $38                                         ; $42ab: $ff
	rst  $38                                         ; $42ac: $ff
	db   $eb                                         ; $42ad: $eb
	sub  a                                           ; $42ae: $97
	ld   h, h                                        ; $42af: $64
	ld   de, $1111                                   ; $42b0: $11 $11 $11
	ld   de, $1111                                   ; $42b3: $11 $11 $11
	ld   de, $1311                                   ; $42b6: $11 $11 $13
	inc  [hl]                                        ; $42b9: $34
	adc  h                                           ; $42ba: $8c
	rst  $38                                         ; $42bb: $ff
	rst  $38                                         ; $42bc: $ff
	rst  $38                                         ; $42bd: $ff
	rst  $38                                         ; $42be: $ff
	rst  $38                                         ; $42bf: $ff
	rst  $38                                         ; $42c0: $ff
	rst  $38                                         ; $42c1: $ff
	rst  $38                                         ; $42c2: $ff
	cp   $fe                                         ; $42c3: $fe $fe
	reti                                             ; $42c5: $d9


	ld   h, h                                        ; $42c6: $64
	ld   [hl-], a                                    ; $42c7: $32
	ld   de, $1111                                   ; $42c8: $11 $11 $11
	ld   de, $1111                                   ; $42cb: $11 $11 $11
	ld   de, $1111                                   ; $42ce: $11 $11 $11
	ld   e, c                                        ; $42d1: $59
	cp   l                                           ; $42d2: $bd
	rst  $38                                         ; $42d3: $ff
	rst  $38                                         ; $42d4: $ff
	rst  $38                                         ; $42d5: $ff
	rst  $38                                         ; $42d6: $ff
	rst  $38                                         ; $42d7: $ff
	rst  $38                                         ; $42d8: $ff
	rst  $38                                         ; $42d9: $ff
	rst  $38                                         ; $42da: $ff
	rst  $38                                         ; $42db: $ff
	db   $dd                                         ; $42dc: $dd
	xor  c                                           ; $42dd: $a9
	ld   d, e                                        ; $42de: $53
	ld   de, $1111                                   ; $42df: $11 $11 $11
	ld   de, $1111                                   ; $42e2: $11 $11 $11
	ld   de, $1111                                   ; $42e5: $11 $11 $11
	ld   [hl], $ad                                   ; $42e8: $36 $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42ea: $cf
	rst  $38                                         ; $42eb: $ff
	rst  $38                                         ; $42ec: $ff
	rst  $38                                         ; $42ed: $ff
	rst  $38                                         ; $42ee: $ff
	rst  $38                                         ; $42ef: $ff
	rst  $38                                         ; $42f0: $ff
	rst  $38                                         ; $42f1: $ff
	cp   $ff                                         ; $42f2: $fe $ff
	ret  z                                           ; $42f4: $c8

	ld   d, h                                        ; $42f5: $54
	ld   hl, $1111                                   ; $42f6: $21 $11 $11
	ld   de, $1111                                   ; $42f9: $11 $11 $11
	ld   de, $1111                                   ; $42fc: $11 $11 $11
	inc  d                                           ; $42ff: $14
	adc  [hl]                                        ; $4300: $8e
	cp   $ff                                         ; $4301: $fe $ff
	rst  $38                                         ; $4303: $ff
	rst  $38                                         ; $4304: $ff
	rst  $38                                         ; $4305: $ff
	rst  $38                                         ; $4306: $ff
	rst  $38                                         ; $4307: $ff
	rst  $38                                         ; $4308: $ff
	db   $fd                                         ; $4309: $fd
	rst  $38                                         ; $430a: $ff
	ret  c                                           ; $430b: $d8

	ld   d, l                                        ; $430c: $55
	ld   sp, $1111                                   ; $430d: $31 $11 $11
	ld   de, $1111                                   ; $4310: $11 $11 $11
	ld   de, $1111                                   ; $4313: $11 $11 $11
	rla                                              ; $4316: $17
	adc  c                                           ; $4317: $89
	rst  $38                                         ; $4318: $ff
	rst  $38                                         ; $4319: $ff
	rst  $38                                         ; $431a: $ff
	rst  $38                                         ; $431b: $ff
	rst  $38                                         ; $431c: $ff
	rst  $38                                         ; $431d: $ff
	rst  $38                                         ; $431e: $ff
	rst  $38                                         ; $431f: $ff
	rst  $38                                         ; $4320: $ff
	rst  $38                                         ; $4321: $ff
	xor  d                                           ; $4322: $aa
	ld   h, e                                        ; $4323: $63
	ld   hl, $1111                                   ; $4324: $21 $11 $11
	ld   de, $1111                                   ; $4327: $11 $11 $11
	ld   de, $1211                                   ; $432a: $11 $11 $12
	dec  h                                           ; $432d: $25
	xor  e                                           ; $432e: $ab
	rst  JumpTable                                         ; $432f: $df
	rst  $38                                         ; $4330: $ff
	rst  $38                                         ; $4331: $ff
	rst  $38                                         ; $4332: $ff
	rst  $38                                         ; $4333: $ff
	rst  $38                                         ; $4334: $ff
	rst  $38                                         ; $4335: $ff
	rst  $38                                         ; $4336: $ff
	rst  $38                                         ; $4337: $ff
	db   $dd                                         ; $4338: $dd
	xor  c                                           ; $4339: $a9
	ld   h, c                                        ; $433a: $61
	ld   de, $1111                                   ; $433b: $11 $11 $11
	ld   de, $1111                                   ; $433e: $11 $11 $11
	ld   de, $1111                                   ; $4341: $11 $11 $11
	ld   e, c                                        ; $4344: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4345: $cf
	rst  $28                                         ; $4346: $ef
	rst  $38                                         ; $4347: $ff
	rst  $38                                         ; $4348: $ff
	rst  $38                                         ; $4349: $ff
	rst  $38                                         ; $434a: $ff
	rst  $38                                         ; $434b: $ff
	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	rst  $38                                         ; $434e: $ff
	ei                                               ; $434f: $fb
	ld   h, l                                        ; $4350: $65
	ld   b, c                                        ; $4351: $41
	ld   de, $1111                                   ; $4352: $11 $11 $11
	ld   de, $1111                                   ; $4355: $11 $11 $11
	ld   de, $3611                                   ; $4358: $11 $11 $36
	sbc  d                                           ; $435b: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $435c: $cf
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	rst  $38                                         ; $435f: $ff
	rst  $38                                         ; $4360: $ff
	rst  $38                                         ; $4361: $ff
	rst  $38                                         ; $4362: $ff
	rst  $38                                         ; $4363: $ff
	rst  $38                                         ; $4364: $ff
	db   $ec                                         ; $4365: $ec
	cp   b                                           ; $4366: $b8
	ld   h, e                                        ; $4367: $63
	ld   de, $1111                                   ; $4368: $11 $11 $11
	ld   de, $1111                                   ; $436b: $11 $11 $11
	ld   de, $4311                                   ; $436e: $11 $11 $43
	ld   a, [hl+]                                    ; $4371: $2a
	xor  $ff                                         ; $4372: $ee $ff
	rst  $38                                         ; $4374: $ff
	rst  $38                                         ; $4375: $ff
	rst  $38                                         ; $4376: $ff
	rst  $38                                         ; $4377: $ff
	rst  $38                                         ; $4378: $ff
	rst  $38                                         ; $4379: $ff
	rst  $38                                         ; $437a: $ff
	db   $dd                                         ; $437b: $dd
	reti                                             ; $437c: $d9


	ld   d, h                                        ; $437d: $54
	ld   de, $1111                                   ; $437e: $11 $11 $11
	ld   de, $1111                                   ; $4381: $11 $11 $11
	ld   de, $1311                                   ; $4384: $11 $11 $13
	ld   l, b                                        ; $4387: $68
	cp   l                                           ; $4388: $bd
	rst  $38                                         ; $4389: $ff
	rst  $38                                         ; $438a: $ff
	rst  $38                                         ; $438b: $ff
	rst  $38                                         ; $438c: $ff
	rst  $38                                         ; $438d: $ff
	rst  $38                                         ; $438e: $ff
	rst  $38                                         ; $438f: $ff
	rst  $38                                         ; $4390: $ff
	db   $fc                                         ; $4391: $fc
	sbc  e                                           ; $4392: $9b
	ld   [hl], h                                     ; $4393: $74
	ld   de, $1111                                   ; $4394: $11 $11 $11
	ld   de, $1111                                   ; $4397: $11 $11 $11
	ld   de, $1111                                   ; $439a: $11 $11 $11
	ld   e, d                                        ; $439d: $5a
	sbc  e                                           ; $439e: $9b
	rst  $38                                         ; $439f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43a0: $cf
	rst  $38                                         ; $43a1: $ff
	rst  $38                                         ; $43a2: $ff
	rst  $38                                         ; $43a3: $ff
	rst  $38                                         ; $43a4: $ff
	rst  $38                                         ; $43a5: $ff
	rst  $38                                         ; $43a6: $ff
	ret                                              ; $43a7: $c9


	res  2, d                                        ; $43a8: $cb $92
	ld   de, $1121                                   ; $43aa: $11 $21 $11
	ld   de, $1111                                   ; $43ad: $11 $11 $11
	ld   de, $1911                                   ; $43b0: $11 $11 $19
	db   $e4                                         ; $43b3: $e4
	ld   c, a                                        ; $43b4: $4f
	rst  $38                                         ; $43b5: $ff
	rst  JumpTable                                         ; $43b6: $df
	rst  $38                                         ; $43b7: $ff
	rst  $38                                         ; $43b8: $ff
	rst  $38                                         ; $43b9: $ff
	rst  $38                                         ; $43ba: $ff
	rst  $28                                         ; $43bb: $ef
	rst  $38                                         ; $43bc: $ff
	sub  $6c                                         ; $43bd: $d6 $6c
	sub  c                                           ; $43bf: $91
	ld   de, $1111                                   ; $43c0: $11 $11 $11
	ld   de, $1111                                   ; $43c3: $11 $11 $11
	ld   de, $3f11                                   ; $43c6: $11 $11 $3f
	or   h                                           ; $43c9: $b4
	rst  $38                                         ; $43ca: $ff
	rst  $38                                         ; $43cb: $ff
	rst  $38                                         ; $43cc: $ff
	rst  $38                                         ; $43cd: $ff
	rst  $38                                         ; $43ce: $ff
	rst  $38                                         ; $43cf: $ff
	rst  $38                                         ; $43d0: $ff
	rst  $38                                         ; $43d1: $ff
	db   $fd                                         ; $43d2: $fd
	and  a                                           ; $43d3: $a7
	ld   a, b                                        ; $43d4: $78
	ld   de, $1111                                   ; $43d5: $11 $11 $11
	ld   de, $1111                                   ; $43d8: $11 $11 $11
	ld   de, $1411                                   ; $43db: $11 $11 $14
	rst  $28                                         ; $43de: $ef
	xor  d                                           ; $43df: $aa
	rst  $38                                         ; $43e0: $ff
	rst  $38                                         ; $43e1: $ff
	rst  $38                                         ; $43e2: $ff
	rst  $38                                         ; $43e3: $ff
	rst  $38                                         ; $43e4: $ff
	rst  $38                                         ; $43e5: $ff
	rst  $38                                         ; $43e6: $ff
	rst  $38                                         ; $43e7: $ff
	ld   sp, hl                                      ; $43e8: $f9
	ld   d, h                                        ; $43e9: $54
	ld   [hl-], a                                    ; $43ea: $32
	ld   de, $1111                                   ; $43eb: $11 $11 $11
	ld   de, $1111                                   ; $43ee: $11 $11 $11
	ld   de, $3d11                                   ; $43f1: $11 $11 $3d
	rst  $38                                         ; $43f4: $ff
	rst  $38                                         ; $43f5: $ff
	rst  $38                                         ; $43f6: $ff
	rst  $38                                         ; $43f7: $ff
	rst  $38                                         ; $43f8: $ff
	rst  $38                                         ; $43f9: $ff
	rst  $38                                         ; $43fa: $ff
	rst  $38                                         ; $43fb: $ff
	rst  $38                                         ; $43fc: $ff
	jp   z, $1195                                    ; $43fd: $ca $95 $11

	ld   de, $1111                                   ; $4400: $11 $11 $11
	ld   de, $1111                                   ; $4403: $11 $11 $11
	ld   de, $3b11                                   ; $4406: $11 $11 $3b
	rst  $38                                         ; $4409: $ff
	rst  $38                                         ; $440a: $ff
	rst  $38                                         ; $440b: $ff
	rst  $38                                         ; $440c: $ff
	rst  $38                                         ; $440d: $ff
	rst  $38                                         ; $440e: $ff
	rst  $38                                         ; $440f: $ff
	rst  $38                                         ; $4410: $ff
	rst  $38                                         ; $4411: $ff
	call $32a5                                       ; $4412: $cd $a5 $32
	ld   de, $1111                                   ; $4415: $11 $11 $11
	ld   de, $1111                                   ; $4418: $11 $11 $11
	ld   de, $4f11                                   ; $441b: $11 $11 $4f
	rst  $38                                         ; $441e: $ff
	rst  JumpTable                                         ; $441f: $df
	rst  $38                                         ; $4420: $ff
	rst  $38                                         ; $4421: $ff
	rst  $38                                         ; $4422: $ff
	rst  $38                                         ; $4423: $ff
	rst  $38                                         ; $4424: $ff
	rst  $38                                         ; $4425: $ff
	cp   $fd                                         ; $4426: $fe $fd
	sub  [hl]                                        ; $4428: $96
	ld   de, $1111                                   ; $4429: $11 $11 $11
	ld   de, $1111                                   ; $442c: $11 $11 $11
	ld   de, $1411                                   ; $442f: $11 $11 $14
	adc  [hl]                                        ; $4432: $8e
	db   $fc                                         ; $4433: $fc
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	rst  $38                                         ; $4436: $ff
	rst  $38                                         ; $4437: $ff
	rst  $38                                         ; $4438: $ff
	rst  $38                                         ; $4439: $ff
	rst  $38                                         ; $443a: $ff
	rst  $38                                         ; $443b: $ff
	cp   d                                           ; $443c: $ba
	db   $e3                                         ; $443d: $e3
	ld   de, $1111                                   ; $443e: $11 $11 $11
	ld   de, $1111                                   ; $4441: $11 $11 $11
	ld   de, $3911                                   ; $4444: $11 $11 $39
	ret  c                                           ; $4447: $d8

	rst  JumpTable                                         ; $4448: $df
	db   $fd                                         ; $4449: $fd
	rst  $38                                         ; $444a: $ff
	rst  $38                                         ; $444b: $ff
	rst  $38                                         ; $444c: $ff
	rst  $38                                         ; $444d: $ff
	rst  $38                                         ; $444e: $ff
	rst  $38                                         ; $444f: $ff
	rst  $38                                         ; $4450: $ff
	and  [hl]                                        ; $4451: $a6
	ld   h, a                                        ; $4452: $67
	ld   sp, $1111                                   ; $4453: $31 $11 $11
	ld   de, $1111                                   ; $4456: $11 $11 $11
	ld   de, $ac11                                   ; $4459: $11 $11 $ac
	xor  l                                           ; $445c: $ad
	rst  $38                                         ; $445d: $ff
	rst  $38                                         ; $445e: $ff
	rst  $38                                         ; $445f: $ff
	rst  $38                                         ; $4460: $ff
	rst  $38                                         ; $4461: $ff
	rst  $38                                         ; $4462: $ff
	rst  $38                                         ; $4463: $ff
	rst  $38                                         ; $4464: $ff
	db   $fd                                         ; $4465: $fd
	add  a                                           ; $4466: $87
	ld   d, d                                        ; $4467: $52
	ld   de, $1111                                   ; $4468: $11 $11 $11
	ld   de, $1111                                   ; $446b: $11 $11 $11
	inc  de                                          ; $446e: $13
	ld   de, $ffaf                                   ; $446f: $11 $af $ff
	rst  $38                                         ; $4472: $ff
	rst  $38                                         ; $4473: $ff
	rst  $38                                         ; $4474: $ff
	rst  $38                                         ; $4475: $ff
	rst  $38                                         ; $4476: $ff
	rst  $38                                         ; $4477: $ff
	rst  $38                                         ; $4478: $ff
	ld   a, [$77fb]                                  ; $4479: $fa $fb $77
	ld   de, $1111                                   ; $447c: $11 $11 $11
	ld   de, $1111                                   ; $447f: $11 $11 $11
	inc  de                                          ; $4482: $13
	ld   de, $ef57                                   ; $4483: $11 $57 $ef
	rst  $38                                         ; $4486: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4487: $cf
	rst  $38                                         ; $4488: $ff
	rst  $38                                         ; $4489: $ff
	rst  $38                                         ; $448a: $ff
	rst  $38                                         ; $448b: $ff
	rst  $38                                         ; $448c: $ff
	rst  $38                                         ; $448d: $ff
	db   $ed                                         ; $448e: $ed
	and  $43                                         ; $448f: $e6 $43
	ld   de, $1111                                   ; $4491: $11 $11 $11
	ld   de, $1111                                   ; $4494: $11 $11 $11
	inc  de                                          ; $4497: $13
	ld   d, c                                        ; $4498: $51
	ld   e, a                                        ; $4499: $5f
	rst  $38                                         ; $449a: $ff
	jp   z, $ffff                                    ; $449b: $ca $ff $ff

	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	rst  $38                                         ; $44a0: $ff
	rst  $38                                         ; $44a1: $ff
	ei                                               ; $44a2: $fb
	cp   [hl]                                        ; $44a3: $be
	ld   [hl], l                                     ; $44a4: $75
	ld   de, $1111                                   ; $44a5: $11 $11 $11
	ld   de, $1111                                   ; $44a8: $11 $11 $11
	ld   de, $2541                                   ; $44ab: $11 $41 $25
	rst  $38                                         ; $44ae: $ff
	pop  af                                          ; $44af: $f1
	sbc  a                                           ; $44b0: $9f
	db   $fc                                         ; $44b1: $fc
	rst  $38                                         ; $44b2: $ff
	rst  $38                                         ; $44b3: $ff
	rst  $38                                         ; $44b4: $ff
	rst  $38                                         ; $44b5: $ff
	ld   hl, sp-$72                                  ; $44b6: $f8 $8e
	rst  $38                                         ; $44b8: $ff
	ld   de, $1113                                   ; $44b9: $11 $13 $11
	ld   de, $1111                                   ; $44bc: $11 $11 $11
	ld   de, $1312                                   ; $44bf: $11 $12 $13
	cp   l                                           ; $44c2: $bd
	rst  $38                                         ; $44c3: $ff
	ld   e, a                                        ; $44c4: $5f
	rst  $38                                         ; $44c5: $ff
	cp   $ff                                         ; $44c6: $fe $ff
	rst  $38                                         ; $44c8: $ff
	rst  $38                                         ; $44c9: $ff
	rst  $38                                         ; $44ca: $ff
	push af                                          ; $44cb: $f5
	rst  $38                                         ; $44cc: $ff
	sub  c                                           ; $44cd: $91
	ld   de, $1141                                   ; $44ce: $11 $41 $11
	ld   de, $1111                                   ; $44d1: $11 $11 $11
	ld   de, $8f12                                   ; $44d4: $11 $12 $8f
	db   $fc                                         ; $44d7: $fc
	ld   c, c                                        ; $44d8: $49
	rst  $38                                         ; $44d9: $ff
	ld   sp, hl                                      ; $44da: $f9
	rst  $38                                         ; $44db: $ff
	rst  $38                                         ; $44dc: $ff
	rst  $38                                         ; $44dd: $ff
	rst  $38                                         ; $44de: $ff
	or   $ff                                         ; $44df: $f6 $ff
	add  [hl]                                        ; $44e1: $86
	inc  de                                          ; $44e2: $13
	and  c                                           ; $44e3: $a1
	ld   de, $1111                                   ; $44e4: $11 $11 $11
	ld   de, $1111                                   ; $44e7: $11 $11 $11
	ccf                                              ; $44ea: $3f
	ld   [hl], l                                     ; $44eb: $75
	rst  $38                                         ; $44ec: $ff
	ld   sp, hl                                      ; $44ed: $f9
	cp   a                                           ; $44ee: $bf
	rst  $38                                         ; $44ef: $ff
	rst  $38                                         ; $44f0: $ff
	rst  $38                                         ; $44f1: $ff
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	rst  $38                                         ; $44f4: $ff
	or   h                                           ; $44f5: $b4
	cp   b                                           ; $44f6: $b8
	ld   de, $1111                                   ; $44f7: $11 $11 $11
	ld   de, $1111                                   ; $44fa: $11 $11 $11
	ld   de, $7c23                                   ; $44fd: $11 $23 $7c
	ld   hl, sp+$3f                                  ; $4500: $f8 $3f
	rst  $30                                         ; $4502: $f7
	rst  $38                                         ; $4503: $ff
	rst  $38                                         ; $4504: $ff
	rst  $38                                         ; $4505: $ff
	rst  $38                                         ; $4506: $ff
	ld   sp, hl                                      ; $4507: $f9
	rst  $38                                         ; $4508: $ff
	ei                                               ; $4509: $fb
	ld   a, c                                        ; $450a: $79
	rla                                              ; $450b: $17
	ld   de, $1111                                   ; $450c: $11 $11 $11
	ld   de, $1111                                   ; $450f: $11 $11 $11
	ld   de, $5f67                                   ; $4512: $11 $67 $5f
	db   $fc                                         ; $4515: $fc
	call c, $ffdf                                    ; $4516: $dc $df $ff
	rst  $38                                         ; $4519: $ff
	rst  $38                                         ; $451a: $ff
	rst  $38                                         ; $451b: $ff
	rst  $38                                         ; $451c: $ff
	ld   sp, hl                                      ; $451d: $f9
	xor  l                                           ; $451e: $ad
	rst  ToBoot                                         ; $451f: $c7
	ld   de, $1131                                   ; $4520: $11 $31 $11
	ld   de, $1111                                   ; $4523: $11 $11 $11
	ld   de, $3811                                   ; $4526: $11 $11 $38
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4529: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $452a: $cf
	rst  $30                                         ; $452b: $f7
	rst  $38                                         ; $452c: $ff
	rst  $28                                         ; $452d: $ef
	rst  $38                                         ; $452e: $ff
	rst  $38                                         ; $452f: $ff
	rst  $38                                         ; $4530: $ff
	rst  $38                                         ; $4531: $ff
	call z, $91ab                                    ; $4532: $cc $ab $91
	ld   sp, $1111                                   ; $4535: $31 $11 $11
	ld   de, $1111                                   ; $4538: $11 $11 $11
	ld   de, $dd14                                   ; $453b: $11 $14 $dd
	jr   @-$01                                       ; $453e: $18 $fd

	rst  $38                                         ; $4540: $ff
	sbc  a                                           ; $4541: $9f
	rst  $38                                         ; $4542: $ff
	rst  $38                                         ; $4543: $ff
	rst  $38                                         ; $4544: $ff
	rst  $38                                         ; $4545: $ff
	rst  $38                                         ; $4546: $ff
	reti                                             ; $4547: $d9


	sbc  b                                           ; $4548: $98
	pop  bc                                          ; $4549: $c1
	ld   de, $1111                                   ; $454a: $11 $11 $11
	ld   de, $1111                                   ; $454d: $11 $11 $11
	ld   de, $5e11                                   ; $4550: $11 $11 $5e
	sbc  c                                           ; $4553: $99
	db   $fc                                         ; $4554: $fc
	rst  $38                                         ; $4555: $ff
	rst  $38                                         ; $4556: $ff
	rst  $38                                         ; $4557: $ff
	rst  $38                                         ; $4558: $ff
	rst  $38                                         ; $4559: $ff
	rst  $38                                         ; $455a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $455b: $cf
	call $95a2                                       ; $455c: $cd $a2 $95
	ld   de, $1111                                   ; $455f: $11 $11 $11
	ld   de, $1111                                   ; $4562: $11 $11 $11
	ld   hl, $db12                                   ; $4565: $21 $12 $db
	ld   h, e                                        ; $4568: $63
	rst  $38                                         ; $4569: $ff
	rst  $28                                         ; $456a: $ef
	sbc  a                                           ; $456b: $9f
	rst  $38                                         ; $456c: $ff
	rst  $38                                         ; $456d: $ff
	rst  $38                                         ; $456e: $ff
	rst  $38                                         ; $456f: $ff
	rst  $38                                         ; $4570: $ff
	ld   hl, sp+$52                                  ; $4571: $f8 $52
	ret                                              ; $4573: $c9


	ld   de, $3115                                   ; $4574: $11 $15 $31
	ld   de, $1111                                   ; $4577: $11 $11 $11
	ld   de, $1345                                   ; $457a: $11 $45 $13
	ld   [$fd9d], a                                  ; $457d: $ea $9d $fd
	rst  $38                                         ; $4580: $ff
	xor  a                                           ; $4581: $af
	rst  $38                                         ; $4582: $ff
	rst  $38                                         ; $4583: $ff
	rst  $38                                         ; $4584: $ff
	rst  $38                                         ; $4585: $ff
	xor  a                                           ; $4586: $af
	or   $a2                                         ; $4587: $f6 $a2
	ld   h, h                                        ; $4589: $64
	ld   [de], a                                     ; $458a: $12
	ld   de, $1111                                   ; $458b: $11 $11 $11
	ld   de, $1311                                   ; $458e: $11 $11 $13
	inc  hl                                          ; $4591: $23
	and  e                                           ; $4592: $a3
	ld   e, a                                        ; $4593: $5f
	rst  $30                                         ; $4594: $f7
	rst  $38                                         ; $4595: $ff
	rst  JumpTable                                         ; $4596: $df
	rst  $38                                         ; $4597: $ff
	rst  $38                                         ; $4598: $ff
	rst  $38                                         ; $4599: $ff
	rst  $38                                         ; $459a: $ff
	rst  $38                                         ; $459b: $ff
	rst  $20                                         ; $459c: $e7
	adc  e                                           ; $459d: $8b
	ld   [hl], l                                     ; $459e: $75
	ld   sp, $3112                                   ; $459f: $31 $12 $31
	ld   de, $1111                                   ; $45a2: $11 $11 $11
	ld   de, $1711                                   ; $45a5: $11 $11 $17
	ld   [$ff66], a                                  ; $45a8: $ea $66 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45ab: $cf
	ld   sp, hl                                      ; $45ac: $f9
	rst  $38                                         ; $45ad: $ff
	rst  $38                                         ; $45ae: $ff
	rst  $28                                         ; $45af: $ef
	rst  $38                                         ; $45b0: $ff
	jp   hl                                          ; $45b1: $e9


	rst  $28                                         ; $45b2: $ef
	sub  e                                           ; $45b3: $93
	dec  d                                           ; $45b4: $15
	add  h                                           ; $45b5: $84
	ld   de, $1133                                   ; $45b6: $11 $33 $11
	ld   de, $1111                                   ; $45b9: $11 $11 $11
	ld   b, e                                        ; $45bc: $43
	ld   b, e                                        ; $45bd: $43
	ld   e, e                                        ; $45be: $5b
	cp   h                                           ; $45bf: $bc
	rst  $30                                         ; $45c0: $f7
	sbc  a                                           ; $45c1: $9f
	rst  $38                                         ; $45c2: $ff
	cp   $ff                                         ; $45c3: $fe $ff
	rst  $38                                         ; $45c5: $ff
	rst  $28                                         ; $45c6: $ef
	db   $ec                                         ; $45c7: $ec
	jp   z, Jump_0e4_73a9                            ; $45c8: $ca $a9 $73

	ld   d, $52                                      ; $45cb: $16 $52
	ld   de, $1132                                   ; $45cd: $11 $32 $11
	inc  de                                          ; $45d0: $13
	ld   de, $9914                                   ; $45d1: $11 $14 $99
	ld   d, c                                        ; $45d4: $51
	ld   c, d                                        ; $45d5: $4a
	rst  $38                                         ; $45d6: $ff
	ld   [hl], l                                     ; $45d7: $75
	rst  $38                                         ; $45d8: $ff
	db   $fd                                         ; $45d9: $fd
	ld   a, [hl]                                     ; $45da: $7e
	rst  $38                                         ; $45db: $ff
	sub  l                                           ; $45dc: $95
	rst  $38                                         ; $45dd: $ff
	ret                                              ; $45de: $c9


	ld   a, [hl-]                                    ; $45df: $3a
	add  $41                                         ; $45e0: $c6 $41
	ld   a, e                                        ; $45e2: $7b
	inc  [hl]                                        ; $45e3: $34
	inc  hl                                          ; $45e4: $23
	ld   d, c                                        ; $45e5: $51
	ld   de, $3334                                   ; $45e6: $11 $34 $33
	dec  h                                           ; $45e9: $25
	sbc  c                                           ; $45ea: $99
	ld   h, h                                        ; $45eb: $64
	adc  e                                           ; $45ec: $8b
	cp   c                                           ; $45ed: $b9
	xor  [hl]                                        ; $45ee: $ae
	cp   e                                           ; $45ef: $bb
	cp   h                                           ; $45f0: $bc
	cp   $a9                                         ; $45f1: $fe $a9
	sbc  $bb                                         ; $45f3: $de $bb
	sbc  c                                           ; $45f5: $99
	sbc  d                                           ; $45f6: $9a
	ld   [hl], l                                     ; $45f7: $75
	ld   [hl], a                                     ; $45f8: $77
	ld   d, [hl]                                     ; $45f9: $56
	ld   b, l                                        ; $45fa: $45
	ld   [hl], l                                     ; $45fb: $75
	ld   b, e                                        ; $45fc: $43
	ld   d, [hl]                                     ; $45fd: $56
	ld   b, l                                        ; $45fe: $45
	ld   d, h                                        ; $45ff: $54
	ld   h, l                                        ; $4600: $65
	scf                                              ; $4601: $37
	add  a                                           ; $4602: $87
	sub  a                                           ; $4603: $97
	adc  e                                           ; $4604: $8b
	ret                                              ; $4605: $c9


	ld   a, d                                        ; $4606: $7a
	jp   c, $ad99                                    ; $4607: $da $99 $ad

	xor  b                                           ; $460a: $a8
	sbc  c                                           ; $460b: $99
	cp   d                                           ; $460c: $ba
	adc  c                                           ; $460d: $89
	adc  d                                           ; $460e: $8a
	and  [hl]                                        ; $460f: $a6
	sbc  b                                           ; $4610: $98
	ld   h, [hl]                                     ; $4611: $66
	ld   h, [hl]                                     ; $4612: $66
	ld   e, c                                        ; $4613: $59
	sub  l                                           ; $4614: $95
	ld   h, [hl]                                     ; $4615: $66
	ld   h, a                                        ; $4616: $67
	halt                                             ; $4617: $76
	ld   e, b                                        ; $4618: $58
	add  [hl]                                        ; $4619: $86
	ld   h, [hl]                                     ; $461a: $66
	sbc  b                                           ; $461b: $98
	ld   l, b                                        ; $461c: $68
	sbc  c                                           ; $461d: $99
	adc  c                                           ; $461e: $89
	cp   c                                           ; $461f: $b9
	xor  b                                           ; $4620: $a8
	ld   l, b                                        ; $4621: $68
	xor  d                                           ; $4622: $aa
	ld   [hl], a                                     ; $4623: $77
	xor  c                                           ; $4624: $a9
	cp   c                                           ; $4625: $b9
	adc  e                                           ; $4626: $8b
	xor  c                                           ; $4627: $a9
	add  a                                           ; $4628: $87
	sbc  b                                           ; $4629: $98
	ld   [hl], a                                     ; $462a: $77
	ld   h, a                                        ; $462b: $67
	ld   a, b                                        ; $462c: $78
	ld   h, [hl]                                     ; $462d: $66
	ld   [hl], a                                     ; $462e: $77
	halt                                             ; $462f: $76
	ld   d, [hl]                                     ; $4630: $56
	ld   a, b                                        ; $4631: $78
	ld   l, b                                        ; $4632: $68
	add  a                                           ; $4633: $87
	ld   [hl], a                                     ; $4634: $77
	ld   l, c                                        ; $4635: $69
	xor  c                                           ; $4636: $a9
	sbc  d                                           ; $4637: $9a
	sbc  c                                           ; $4638: $99
	xor  d                                           ; $4639: $aa
	adc  c                                           ; $463a: $89
	xor  c                                           ; $463b: $a9
	sbc  d                                           ; $463c: $9a
	xor  c                                           ; $463d: $a9
	adc  c                                           ; $463e: $89
	adc  c                                           ; $463f: $89
	xor  b                                           ; $4640: $a8
	adc  b                                           ; $4641: $88
	adc  c                                           ; $4642: $89
	ld   a, b                                        ; $4643: $78
	add  a                                           ; $4644: $87
	ld   [hl], a                                     ; $4645: $77
	ld   h, a                                        ; $4646: $67
	adc  b                                           ; $4647: $88
	adc  b                                           ; $4648: $88
	ld   [hl], a                                     ; $4649: $77
	add  a                                           ; $464a: $87
	ld   [hl], a                                     ; $464b: $77
	ld   a, b                                        ; $464c: $78
	adc  c                                           ; $464d: $89
	adc  b                                           ; $464e: $88
	xor  d                                           ; $464f: $aa
	add  a                                           ; $4650: $87
	adc  c                                           ; $4651: $89
	ld   a, b                                        ; $4652: $78
	sbc  c                                           ; $4653: $99
	xor  d                                           ; $4654: $aa
	adc  c                                           ; $4655: $89
	xor  d                                           ; $4656: $aa
	sub  a                                           ; $4657: $97
	sbc  c                                           ; $4658: $99
	sbc  c                                           ; $4659: $99
	adc  c                                           ; $465a: $89
	adc  c                                           ; $465b: $89
	adc  b                                           ; $465c: $88
	sbc  c                                           ; $465d: $99
	adc  c                                           ; $465e: $89
	ld   [hl], a                                     ; $465f: $77
	add  a                                           ; $4660: $87
	ld   [hl], a                                     ; $4661: $77
	ld   [hl], a                                     ; $4662: $77
	ld   l, b                                        ; $4663: $68
	adc  b                                           ; $4664: $88
	sbc  b                                           ; $4665: $98
	sbc  b                                           ; $4666: $98
	add  a                                           ; $4667: $87
	ld   h, a                                        ; $4668: $67
	adc  b                                           ; $4669: $88
	sbc  d                                           ; $466a: $9a
	sbc  c                                           ; $466b: $99
	sbc  c                                           ; $466c: $99
	adc  b                                           ; $466d: $88
	sbc  b                                           ; $466e: $98
	adc  c                                           ; $466f: $89
	adc  c                                           ; $4670: $89
	xor  c                                           ; $4671: $a9
	adc  b                                           ; $4672: $88
	adc  c                                           ; $4673: $89
	sbc  c                                           ; $4674: $99
	sbc  b                                           ; $4675: $98
	sbc  b                                           ; $4676: $98
	adc  b                                           ; $4677: $88
	ld   [hl], a                                     ; $4678: $77
	ld   h, [hl]                                     ; $4679: $66
	ld   a, b                                        ; $467a: $78
	ld   a, b                                        ; $467b: $78
	sbc  b                                           ; $467c: $98
	adc  b                                           ; $467d: $88
	adc  b                                           ; $467e: $88
	ld   [hl], a                                     ; $467f: $77
	adc  b                                           ; $4680: $88
	adc  b                                           ; $4681: $88
	sbc  b                                           ; $4682: $98
	sbc  c                                           ; $4683: $99
	adc  c                                           ; $4684: $89
	sbc  c                                           ; $4685: $99
	adc  b                                           ; $4686: $88
	add  a                                           ; $4687: $87
	adc  b                                           ; $4688: $88
	ld   a, b                                        ; $4689: $78
	adc  b                                           ; $468a: $88
	sbc  b                                           ; $468b: $98
	adc  b                                           ; $468c: $88
	sbc  c                                           ; $468d: $99
	ld   a, b                                        ; $468e: $78
	add  a                                           ; $468f: $87
	ld   a, b                                        ; $4690: $78
	adc  b                                           ; $4691: $88
	adc  b                                           ; $4692: $88
	sbc  b                                           ; $4693: $98
	sbc  b                                           ; $4694: $98
	adc  c                                           ; $4695: $89
	sbc  c                                           ; $4696: $99
	adc  b                                           ; $4697: $88
	adc  b                                           ; $4698: $88
	adc  b                                           ; $4699: $88
	adc  b                                           ; $469a: $88
	adc  c                                           ; $469b: $89
	sbc  c                                           ; $469c: $99
	sbc  c                                           ; $469d: $99
	sbc  c                                           ; $469e: $99
	adc  b                                           ; $469f: $88
	ld   a, b                                        ; $46a0: $78
	ld   [hl], a                                     ; $46a1: $77
	ld   a, b                                        ; $46a2: $78
	adc  b                                           ; $46a3: $88
	adc  b                                           ; $46a4: $88
	sbc  c                                           ; $46a5: $99
	adc  b                                           ; $46a6: $88
	adc  b                                           ; $46a7: $88
	adc  b                                           ; $46a8: $88
	adc  b                                           ; $46a9: $88
	adc  b                                           ; $46aa: $88
	adc  b                                           ; $46ab: $88
	ld   a, b                                        ; $46ac: $78
	adc  b                                           ; $46ad: $88
	add  a                                           ; $46ae: $87
	ld   [hl], a                                     ; $46af: $77
	ld   a, b                                        ; $46b0: $78
	ld   [hl], a                                     ; $46b1: $77
	adc  b                                           ; $46b2: $88
	sbc  c                                           ; $46b3: $99
	adc  b                                           ; $46b4: $88
	sbc  b                                           ; $46b5: $98
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
	add  a                                           ; $46c2: $87
	adc  b                                           ; $46c3: $88
	adc  b                                           ; $46c4: $88
	adc  b                                           ; $46c5: $88
	adc  b                                           ; $46c6: $88
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
	ld   de, $1111                                   ; $46df: $11 $11 $11
	ld   de, $1111                                   ; $46e2: $11 $11 $11
	ld   de, $1111                                   ; $46e5: $11 $11 $11
	ld   de, $1111                                   ; $46e8: $11 $11 $11
	ld   de, $1111                                   ; $46eb: $11 $11 $11
	ld   de, $1111                                   ; $46ee: $11 $11 $11
	ld   de, $1111                                   ; $46f1: $11 $11 $11
	ld   de, $1111                                   ; $46f4: $11 $11 $11
	ld   de, $1111                                   ; $46f7: $11 $11 $11
	ld   de, $1111                                   ; $46fa: $11 $11 $11
	ld   de, $1111                                   ; $46fd: $11 $11 $11
	ld   de, $1111                                   ; $4700: $11 $11 $11
	ld   de, $1111                                   ; $4703: $11 $11 $11
	ld   de, $1111                                   ; $4706: $11 $11 $11
	ld   de, $1111                                   ; $4709: $11 $11 $11
	ld   de, $1111                                   ; $470c: $11 $11 $11
	ld   de, $1111                                   ; $470f: $11 $11 $11
	ld   de, $1111                                   ; $4712: $11 $11 $11
	ld   de, $1111                                   ; $4715: $11 $11 $11
	ld   de, $1111                                   ; $4718: $11 $11 $11
	ld   de, $1111                                   ; $471b: $11 $11 $11
	nop                                              ; $471e: $00
	ld   c, b                                        ; $471f: $48
	ld   de, $1111                                   ; $4720: $11 $11 $11
	ld   de, $1111                                   ; $4723: $11 $11 $11
	ld   de, $1111                                   ; $4726: $11 $11 $11
	ld   de, $5413                                   ; $4729: $11 $13 $54
	ld   d, h                                        ; $472c: $54
	ld   d, h                                        ; $472d: $54
	ld   b, c                                        ; $472e: $41
	rra                                              ; $472f: $1f
	rst  $38                                         ; $4730: $ff
	pop  af                                          ; $4731: $f1
	ld   de, $1511                                   ; $4732: $11 $11 $15
	pop  af                                          ; $4735: $f1
	ld   de, $dd1c                                   ; $4736: $11 $1c $dd
	call z, $c1dd                                    ; $4739: $cc $dd $c1
	ld   de, $1111                                   ; $473c: $11 $11 $11
	ld   de, $1111                                   ; $473f: $11 $11 $11
	ld   de, $1111                                   ; $4742: $11 $11 $11
	ld   de, $1111                                   ; $4745: $11 $11 $11
	ld   de, $5411                                   ; $4748: $11 $11 $54
	ld   b, h                                        ; $474b: $44
	push af                                          ; $474c: $f5
	ld   de, $5454                                   ; $474d: $11 $54 $54
	ld   h, a                                        ; $4750: $67
	ld   [hl], d                                     ; $4751: $72
	ld   de, $1111                                   ; $4752: $11 $11 $11
	ld   de, $1112                                   ; $4755: $11 $12 $11
	ld   [de], a                                     ; $4758: $12
	ld   de, $1111                                   ; $4759: $11 $11 $11
	ld   h, [hl]                                     ; $475c: $66
	halt                                             ; $475d: $76
	push de                                          ; $475e: $d5
	ld   de, $9988                                   ; $475f: $11 $88 $99
	ld   [hl], a                                     ; $4762: $77
	halt                                             ; $4763: $76
	sbc  b                                           ; $4764: $98
	xor  h                                           ; $4765: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4766: $cf
	rst  $38                                         ; $4767: $ff
	db   $fd                                         ; $4768: $fd
	cp   d                                           ; $4769: $ba
	ld   [hl], a                                     ; $476a: $77
	ld   h, e                                        ; $476b: $63
	ld   hl, $1111                                   ; $476c: $21 $11 $11
	ld   de, $1911                                   ; $476f: $11 $11 $19
	rst  $38                                         ; $4772: $ff
	rst  $38                                         ; $4773: $ff
	rst  $38                                         ; $4774: $ff
	ld   a, [$1151]                                  ; $4775: $fa $51 $11
	ld   de, $1a11                                   ; $4778: $11 $11 $1a
	rst  $38                                         ; $477b: $ff
	rst  $38                                         ; $477c: $ff
	rst  $38                                         ; $477d: $ff
	rst  $38                                         ; $477e: $ff
	add  sp, $22                                     ; $477f: $e8 $22
	ld   de, $1211                                   ; $4781: $11 $11 $12
	inc  sp                                          ; $4784: $33
	ld   de, $1111                                   ; $4785: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $4788: $11 $12 $ff
	rst  $38                                         ; $478b: $ff
	rst  $38                                         ; $478c: $ff
	rst  $38                                         ; $478d: $ff
	db   $f4                                         ; $478e: $f4
	ld   sp, $1111                                   ; $478f: $31 $11 $11
	dec  d                                           ; $4792: $15
	rst  $38                                         ; $4793: $ff
	rst  $38                                         ; $4794: $ff
	rst  $38                                         ; $4795: $ff
	rst  $38                                         ; $4796: $ff
	db   $fd                                         ; $4797: $fd
	ld   d, e                                        ; $4798: $53
	ld   de, $1111                                   ; $4799: $11 $11 $11
	ld   de, $1111                                   ; $479c: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $479f: $11 $11 $ff
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	rst  $38                                         ; $47a4: $ff
	add  $21                                         ; $47a5: $c6 $21
	ld   de, $1611                                   ; $47a7: $11 $11 $16
	rst  $38                                         ; $47aa: $ff
	rst  $38                                         ; $47ab: $ff
	rst  $38                                         ; $47ac: $ff
	rst  $38                                         ; $47ad: $ff
	ld   a, [$2197]                                  ; $47ae: $fa $97 $21
	ld   de, $1111                                   ; $47b1: $11 $11 $11
	ld   de, $1111                                   ; $47b4: $11 $11 $11
	dec  de                                          ; $47b7: $1b
	rst  $38                                         ; $47b8: $ff
	rst  $38                                         ; $47b9: $ff
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	ld   [hl], d                                     ; $47bc: $72
	ld   h, c                                        ; $47bd: $61
	ld   de, $2f11                                   ; $47be: $11 $11 $2f
	rst  $38                                         ; $47c1: $ff
	rst  $38                                         ; $47c2: $ff
	rst  $38                                         ; $47c3: $ff
	rst  $38                                         ; $47c4: $ff
	ld   a, [$11a7]                                  ; $47c5: $fa $a7 $11

Jump_0e4_47c8:
	ld   de, $1111                                   ; $47c8: $11 $11 $11
	ld   de, $1111                                   ; $47cb: $11 $11 $11
	rst  $38                                         ; $47ce: $ff
	rst  $38                                         ; $47cf: $ff
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	rst  $20                                         ; $47d2: $e7
	ld   h, a                                        ; $47d3: $67
	ld   de, $1911                                   ; $47d4: $11 $11 $19
	rst  $38                                         ; $47d7: $ff
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	cp   $ff                                         ; $47da: $fe $ff
	cp   h                                           ; $47dc: $bc
	ld   de, $1111                                   ; $47dd: $11 $11 $11
	ld   de, $1111                                   ; $47e0: $11 $11 $11
	ld   de, $ff9f                                   ; $47e3: $11 $9f $ff
	rst  $38                                         ; $47e6: $ff
	rst  $38                                         ; $47e7: $ff
	push af                                          ; $47e8: $f5
	rst  $10                                         ; $47e9: $d7
	ld   de, $1611                                   ; $47ea: $11 $11 $16
	rst  $38                                         ; $47ed: $ff
	rst  $38                                         ; $47ee: $ff
	rst  $38                                         ; $47ef: $ff
	ei                                               ; $47f0: $fb
	rst  $38                                         ; $47f1: $ff
	cp   d                                           ; $47f2: $ba
	ld   hl, $1111                                   ; $47f3: $21 $11 $11
	ld   de, $1111                                   ; $47f6: $11 $11 $11
	ld   de, $ffff                                   ; $47f9: $11 $ff $ff
	rst  $38                                         ; $47fc: $ff
	db   $fd                                         ; $47fd: $fd
	cp   c                                           ; $47fe: $b9
	adc  c                                           ; $47ff: $89
	ld   de, $4f11                                   ; $4800: $11 $11 $4f
	rst  $38                                         ; $4803: $ff
	rst  $38                                         ; $4804: $ff
	rst  $38                                         ; $4805: $ff
	rst  $20                                         ; $4806: $e7
	cp   [hl]                                        ; $4807: $be
	and  [hl]                                        ; $4808: $a6
	ld   de, $1111                                   ; $4809: $11 $11 $11
	ld   de, $1111                                   ; $480c: $11 $11 $11
	rra                                              ; $480f: $1f
	rst  $38                                         ; $4810: $ff
	rst  $38                                         ; $4811: $ff
	rst  $38                                         ; $4812: $ff
	db   $fd                                         ; $4813: $fd
	adc  l                                           ; $4814: $8d
	push hl                                          ; $4815: $e5
	ld   de, rAUD1LEN                                   ; $4816: $11 $11 $ff
	rst  $38                                         ; $4819: $ff
	rst  $38                                         ; $481a: $ff
	rst  $30                                         ; $481b: $f7
	ld   e, d                                        ; $481c: $5a
	db   $ec                                         ; $481d: $ec
	ld   de, $1111                                   ; $481e: $11 $11 $11
	ld   de, $1111                                   ; $4821: $11 $11 $11
	rla                                              ; $4824: $17
	rst  $38                                         ; $4825: $ff
	rst  $38                                         ; $4826: $ff
	rst  $38                                         ; $4827: $ff
	rst  $38                                         ; $4828: $ff
	call z, $11fd                                    ; $4829: $cc $fd $11
	ld   de, $ff7f                                   ; $482c: $11 $7f $ff
	rst  $38                                         ; $482f: $ff
	db   $fd                                         ; $4830: $fd
	ld   l, b                                        ; $4831: $68
	ret  c                                           ; $4832: $d8

	ld   de, $1111                                   ; $4833: $11 $11 $11
	ld   de, $1111                                   ; $4836: $11 $11 $11
	ld   de, $ffff                                   ; $4839: $11 $ff $ff
	rst  $38                                         ; $483c: $ff
	rst  $38                                         ; $483d: $ff
	rst  $38                                         ; $483e: $ff
	rst  $38                                         ; $483f: $ff
	ld   h, c                                        ; $4840: $61
	inc  de                                          ; $4841: $13
	sbc  a                                           ; $4842: $9f
	rst  $38                                         ; $4843: $ff
	rst  $38                                         ; $4844: $ff
	rst  $38                                         ; $4845: $ff
	cp   e                                           ; $4846: $bb
	rst  $10                                         ; $4847: $d7
	ld   de, $1111                                   ; $4848: $11 $11 $11
	ld   de, $1111                                   ; $484b: $11 $11 $11
	ld   de, $ffcf                                   ; $484e: $11 $cf $ff
	rst  $38                                         ; $4851: $ff
	rst  $38                                         ; $4852: $ff
	rst  $38                                         ; $4853: $ff
	rst  $38                                         ; $4854: $ff
	ld   [hl], l                                     ; $4855: $75
	ld   d, [hl]                                     ; $4856: $56
	rst  $38                                         ; $4857: $ff
	rst  $38                                         ; $4858: $ff
	rst  $38                                         ; $4859: $ff
	rst  $38                                         ; $485a: $ff
	cp   b                                           ; $485b: $b8
	ld   h, c                                        ; $485c: $61
	ld   de, $1111                                   ; $485d: $11 $11 $11
	ld   de, $1111                                   ; $4860: $11 $11 $11
	ld   de, $ff7f                                   ; $4863: $11 $7f $ff
	rst  $38                                         ; $4866: $ff
	rst  $38                                         ; $4867: $ff
	rst  $38                                         ; $4868: $ff
	rst  $38                                         ; $4869: $ff
	rst  $38                                         ; $486a: $ff
	sbc  $ff                                         ; $486b: $de $ff
	rst  $38                                         ; $486d: $ff
	rst  $38                                         ; $486e: $ff
	rst  $38                                         ; $486f: $ff
	sub  d                                           ; $4870: $92
	ld   hl, $1111                                   ; $4871: $21 $11 $11
	ld   de, $1111                                   ; $4874: $11 $11 $11
	ld   de, $1a11                                   ; $4877: $11 $11 $1a
	rst  $38                                         ; $487a: $ff
	rst  $38                                         ; $487b: $ff
	rst  $38                                         ; $487c: $ff
	rst  $38                                         ; $487d: $ff
	rst  $38                                         ; $487e: $ff
	rst  $38                                         ; $487f: $ff
	rst  $38                                         ; $4880: $ff
	rst  $38                                         ; $4881: $ff
	rst  $38                                         ; $4882: $ff
	rst  $38                                         ; $4883: $ff
	rst  $38                                         ; $4884: $ff
	sub  [hl]                                        ; $4885: $96
	ld   d, c                                        ; $4886: $51
	ld   de, $1111                                   ; $4887: $11 $11 $11
	ld   de, $1111                                   ; $488a: $11 $11 $11
	ld   de, $2f11                                   ; $488d: $11 $11 $2f
	rst  $38                                         ; $4890: $ff
	rst  $38                                         ; $4891: $ff
	rst  $38                                         ; $4892: $ff
	rst  $38                                         ; $4893: $ff
	rst  $38                                         ; $4894: $ff
	rst  $38                                         ; $4895: $ff
	rst  $38                                         ; $4896: $ff
	rst  $38                                         ; $4897: $ff
	rst  $38                                         ; $4898: $ff
	rst  $38                                         ; $4899: $ff
	ret  c                                           ; $489a: $d8

	adc  b                                           ; $489b: $88
	ld   sp, $1111                                   ; $489c: $31 $11 $11
	ld   de, $1111                                   ; $489f: $11 $11 $11
	ld   de, $1211                                   ; $48a2: $11 $11 $12
	cp   a                                           ; $48a5: $bf
	rst  $38                                         ; $48a6: $ff
	rst  $38                                         ; $48a7: $ff
	rst  $38                                         ; $48a8: $ff
	rst  $38                                         ; $48a9: $ff
	rst  $38                                         ; $48aa: $ff
	rst  $38                                         ; $48ab: $ff
	rst  $38                                         ; $48ac: $ff
	rst  $38                                         ; $48ad: $ff
	rst  $38                                         ; $48ae: $ff
	ei                                               ; $48af: $fb
	sbc  c                                           ; $48b0: $99
	sub  [hl]                                        ; $48b1: $96
	ld   sp, $1111                                   ; $48b2: $31 $11 $11
	ld   de, $1111                                   ; $48b5: $11 $11 $11
	ld   de, $1111                                   ; $48b8: $11 $11 $11
	xor  a                                           ; $48bb: $af
	rst  $38                                         ; $48bc: $ff
	rst  $38                                         ; $48bd: $ff
	rst  $38                                         ; $48be: $ff
	rst  $38                                         ; $48bf: $ff
	rst  $38                                         ; $48c0: $ff
	rst  $38                                         ; $48c1: $ff
	rst  $38                                         ; $48c2: $ff
	rst  $38                                         ; $48c3: $ff
	rst  $38                                         ; $48c4: $ff
	sbc  $d9                                         ; $48c5: $de $d9
	add  d                                           ; $48c7: $82
	ld   de, $1111                                   ; $48c8: $11 $11 $11
	ld   de, $1111                                   ; $48cb: $11 $11 $11
	ld   de, $1111                                   ; $48ce: $11 $11 $11
	ld   c, h                                        ; $48d1: $4c
	rst  $38                                         ; $48d2: $ff
	rst  $38                                         ; $48d3: $ff
	rst  $38                                         ; $48d4: $ff
	rst  $38                                         ; $48d5: $ff
	rst  $38                                         ; $48d6: $ff
	rst  $38                                         ; $48d7: $ff
	rst  $38                                         ; $48d8: $ff
	rst  $38                                         ; $48d9: $ff
	rst  $38                                         ; $48da: $ff
	db   $fd                                         ; $48db: $fd
	or   a                                           ; $48dc: $b7
	ld   h, l                                        ; $48dd: $65
	ld   b, e                                        ; $48de: $43
	ld   de, $1111                                   ; $48df: $11 $11 $11
	ld   de, $1111                                   ; $48e2: $11 $11 $11
	ld   de, $1111                                   ; $48e5: $11 $11 $11
	ld   c, c                                        ; $48e8: $49
	rst  $38                                         ; $48e9: $ff
	rst  $38                                         ; $48ea: $ff
	rst  $38                                         ; $48eb: $ff
	rst  $38                                         ; $48ec: $ff
	rst  $38                                         ; $48ed: $ff
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff
	rst  $38                                         ; $48f0: $ff
	db   $fd                                         ; $48f1: $fd
	cp   e                                           ; $48f2: $bb
	and  a                                           ; $48f3: $a7
	ld   d, e                                        ; $48f4: $53
	inc  [hl]                                        ; $48f5: $34
	ld   de, $1111                                   ; $48f6: $11 $11 $11
	ld   de, $1111                                   ; $48f9: $11 $11 $11
	ld   de, $1111                                   ; $48fc: $11 $11 $11
	ld   de, $ef17                                   ; $48ff: $11 $17 $ef
	rst  $38                                         ; $4902: $ff
	rst  $38                                         ; $4903: $ff
	rst  $38                                         ; $4904: $ff
	rst  $38                                         ; $4905: $ff
	rst  $38                                         ; $4906: $ff
	rst  $38                                         ; $4907: $ff
	rst  $38                                         ; $4908: $ff
	cp   e                                           ; $4909: $bb
	xor  d                                           ; $490a: $aa
	add  l                                           ; $490b: $85
	ld   b, [hl]                                     ; $490c: $46
	ld   a, b                                        ; $490d: $78
	ld   [hl], e                                     ; $490e: $73
	ld   sp, $1111                                   ; $490f: $31 $11 $11
	ld   de, $1111                                   ; $4912: $11 $11 $11
	ld   de, $1121                                   ; $4915: $11 $21 $11
	ld   [de], a                                     ; $4918: $12
	ld   b, l                                        ; $4919: $45
	halt                                             ; $491a: $76
	xor  h                                           ; $491b: $ac
	call c, $ffdf                                    ; $491c: $dc $df $ff
	rst  $38                                         ; $491f: $ff
	rst  $38                                         ; $4920: $ff
	rst  $38                                         ; $4921: $ff
	xor  $ed                                         ; $4922: $ee $ed
	rst  $28                                         ; $4924: $ef
	ret                                              ; $4925: $c9


	adc  e                                           ; $4926: $8b
	ld   a, c                                        ; $4927: $79
	sbc  c                                           ; $4928: $99
	add  a                                           ; $4929: $87
	or   a                                           ; $492a: $b7
	ld   a, c                                        ; $492b: $79
	ld   [hl], a                                     ; $492c: $77
	ld   d, a                                        ; $492d: $57
	halt                                             ; $492e: $76
	ld   b, h                                        ; $492f: $44
	ld   d, l                                        ; $4930: $55
	ld   d, l                                        ; $4931: $55
	ld   h, l                                        ; $4932: $65
	ld   d, h                                        ; $4933: $54
	ld   d, l                                        ; $4934: $55
	ld   d, l                                        ; $4935: $55
	ld   h, a                                        ; $4936: $67
	ld   h, a                                        ; $4937: $67
	adc  b                                           ; $4938: $88
	adc  c                                           ; $4939: $89
	adc  d                                           ; $493a: $8a
	xor  e                                           ; $493b: $ab
	cp   e                                           ; $493c: $bb
	call z, $edcd                                    ; $493d: $cc $cd $ed
	call c, $cccb                                    ; $4940: $dc $cb $cc
	res  5, e                                        ; $4943: $cb $ab
	xor  d                                           ; $4945: $aa
	sbc  b                                           ; $4946: $98
	sbc  c                                           ; $4947: $99
	adc  b                                           ; $4948: $88
	ld   [hl], a                                     ; $4949: $77
	halt                                             ; $494a: $76
	ld   [hl], a                                     ; $494b: $77
	ld   [hl], a                                     ; $494c: $77
	ld   a, b                                        ; $494d: $78
	adc  b                                           ; $494e: $88
	adc  b                                           ; $494f: $88
	sbc  c                                           ; $4950: $99
	sbc  d                                           ; $4951: $9a
	cp   e                                           ; $4952: $bb
	cp   d                                           ; $4953: $ba
	cp   e                                           ; $4954: $bb
	cp   d                                           ; $4955: $ba
	xor  c                                           ; $4956: $a9
	sbc  b                                           ; $4957: $98
	sbc  c                                           ; $4958: $99
	adc  b                                           ; $4959: $88
	add  a                                           ; $495a: $87
	ld   h, a                                        ; $495b: $67
	halt                                             ; $495c: $76
	halt                                             ; $495d: $76
	ld   h, [hl]                                     ; $495e: $66
	ld   d, [hl]                                     ; $495f: $56
	ld   h, [hl]                                     ; $4960: $66
	ld   h, [hl]                                     ; $4961: $66
	ld   [hl], a                                     ; $4962: $77
	ld   [hl], a                                     ; $4963: $77
	ld   [hl], a                                     ; $4964: $77
	adc  c                                           ; $4965: $89
	sbc  d                                           ; $4966: $9a
	sbc  d                                           ; $4967: $9a
	xor  d                                           ; $4968: $aa
	xor  d                                           ; $4969: $aa
	xor  e                                           ; $496a: $ab
	cp   e                                           ; $496b: $bb
	sbc  d                                           ; $496c: $9a
	xor  c                                           ; $496d: $a9
	xor  c                                           ; $496e: $a9
	xor  c                                           ; $496f: $a9
	adc  c                                           ; $4970: $89
	sbc  b                                           ; $4971: $98
	add  a                                           ; $4972: $87
	ld   [hl], a                                     ; $4973: $77
	halt                                             ; $4974: $76
	ld   h, [hl]                                     ; $4975: $66
	ld   h, [hl]                                     ; $4976: $66
	ld   [hl], a                                     ; $4977: $77
	ld   [hl], a                                     ; $4978: $77
	ld   [hl], a                                     ; $4979: $77
	ld   a, b                                        ; $497a: $78
	adc  c                                           ; $497b: $89
	adc  c                                           ; $497c: $89
	adc  c                                           ; $497d: $89
	sbc  c                                           ; $497e: $99
	sbc  c                                           ; $497f: $99
	sbc  c                                           ; $4980: $99
	sbc  c                                           ; $4981: $99
	sbc  c                                           ; $4982: $99
	xor  c                                           ; $4983: $a9
	sbc  c                                           ; $4984: $99
	xor  c                                           ; $4985: $a9
	adc  b                                           ; $4986: $88
	adc  b                                           ; $4987: $88
	adc  b                                           ; $4988: $88
	ld   [hl], a                                     ; $4989: $77
	ld   h, [hl]                                     ; $498a: $66
	ld   h, [hl]                                     ; $498b: $66
	ld   h, [hl]                                     ; $498c: $66
	ld   h, [hl]                                     ; $498d: $66
	ld   h, [hl]                                     ; $498e: $66
	ld   h, a                                        ; $498f: $67
	ld   [hl], a                                     ; $4990: $77
	adc  b                                           ; $4991: $88
	adc  b                                           ; $4992: $88
	sbc  b                                           ; $4993: $98
	adc  b                                           ; $4994: $88
	adc  c                                           ; $4995: $89
	sbc  c                                           ; $4996: $99
	xor  b                                           ; $4997: $a8
	sbc  c                                           ; $4998: $99
	adc  c                                           ; $4999: $89
	sbc  b                                           ; $499a: $98
	sbc  b                                           ; $499b: $98
	adc  c                                           ; $499c: $89
	adc  c                                           ; $499d: $89
	sbc  b                                           ; $499e: $98
	adc  b                                           ; $499f: $88
	ld   [hl], a                                     ; $49a0: $77
	ld   h, a                                        ; $49a1: $67
	ld   [hl], a                                     ; $49a2: $77
	ld   [hl], a                                     ; $49a3: $77
	halt                                             ; $49a4: $76
	ld   [hl], a                                     ; $49a5: $77
	ld   [hl], a                                     ; $49a6: $77
	ld   [hl], a                                     ; $49a7: $77
	ld   [hl], a                                     ; $49a8: $77
	ld   [hl], a                                     ; $49a9: $77
	ld   [hl], a                                     ; $49aa: $77
	ld   a, b                                        ; $49ab: $78
	add  a                                           ; $49ac: $87
	adc  c                                           ; $49ad: $89
	sbc  b                                           ; $49ae: $98
	adc  d                                           ; $49af: $8a
	add  a                                           ; $49b0: $87
	adc  b                                           ; $49b1: $88
	adc  b                                           ; $49b2: $88
	sbc  c                                           ; $49b3: $99
	adc  c                                           ; $49b4: $89
	adc  b                                           ; $49b5: $88
	adc  b                                           ; $49b6: $88
	adc  b                                           ; $49b7: $88
	ld   [hl], a                                     ; $49b8: $77
	add  a                                           ; $49b9: $87
	ld   [hl], a                                     ; $49ba: $77
	ld   [hl], a                                     ; $49bb: $77
	ld   [hl], a                                     ; $49bc: $77
	ld   h, a                                        ; $49bd: $67
	ld   [hl], a                                     ; $49be: $77
	ld   [hl], a                                     ; $49bf: $77
	ld   [hl], a                                     ; $49c0: $77
	ld   [hl], a                                     ; $49c1: $77
	ld   [hl], a                                     ; $49c2: $77
	ld   [hl], a                                     ; $49c3: $77
	ld   [hl], a                                     ; $49c4: $77
	ld   a, b                                        ; $49c5: $78
	ld   [hl], a                                     ; $49c6: $77
	add  a                                           ; $49c7: $87
	adc  b                                           ; $49c8: $88
	adc  c                                           ; $49c9: $89
	add  a                                           ; $49ca: $87
	sbc  b                                           ; $49cb: $98
	adc  b                                           ; $49cc: $88
	adc  c                                           ; $49cd: $89
	add  a                                           ; $49ce: $87
	ld   a, b                                        ; $49cf: $78
	add  a                                           ; $49d0: $87
	add  a                                           ; $49d1: $87
	add  a                                           ; $49d2: $87
	ld   [hl], a                                     ; $49d3: $77
	ld   a, b                                        ; $49d4: $78
	ld   [hl], a                                     ; $49d5: $77
	ld   [hl], a                                     ; $49d6: $77
	ld   [hl], a                                     ; $49d7: $77
	ld   [hl], a                                     ; $49d8: $77
	ld   [hl], a                                     ; $49d9: $77
	ld   [hl], a                                     ; $49da: $77
	add  a                                           ; $49db: $87
	ld   a, b                                        ; $49dc: $78
	ld   a, b                                        ; $49dd: $78
	adc  b                                           ; $49de: $88
	adc  b                                           ; $49df: $88
	adc  b                                           ; $49e0: $88
	adc  b                                           ; $49e1: $88
	adc  b                                           ; $49e2: $88
	adc  b                                           ; $49e3: $88
	sub  a                                           ; $49e4: $97
	adc  b                                           ; $49e5: $88
	adc  b                                           ; $49e6: $88
	adc  b                                           ; $49e7: $88
	ld   [hl], a                                     ; $49e8: $77
	ld   [hl], a                                     ; $49e9: $77
	ld   a, b                                        ; $49ea: $78
	ld   [hl], a                                     ; $49eb: $77
	ld   a, b                                        ; $49ec: $78
	ld   a, b                                        ; $49ed: $78
	ld   [hl], a                                     ; $49ee: $77
	add  a                                           ; $49ef: $87
	add  a                                           ; $49f0: $87
	ld   a, b                                        ; $49f1: $78
	add  a                                           ; $49f2: $87
	add  a                                           ; $49f3: $87
	adc  b                                           ; $49f4: $88
	ld   [hl], a                                     ; $49f5: $77
	adc  b                                           ; $49f6: $88
	ld   a, b                                        ; $49f7: $78
	add  a                                           ; $49f8: $87
	adc  b                                           ; $49f9: $88
	adc  b                                           ; $49fa: $88
	sbc  b                                           ; $49fb: $98
	sbc  b                                           ; $49fc: $98
	ld   a, b                                        ; $49fd: $78
	add  a                                           ; $49fe: $87
	adc  b                                           ; $49ff: $88
	adc  b                                           ; $4a00: $88
	ld   a, b                                        ; $4a01: $78
	sbc  b                                           ; $4a02: $98
	adc  b                                           ; $4a03: $88
	adc  b                                           ; $4a04: $88
	adc  b                                           ; $4a05: $88
	adc  b                                           ; $4a06: $88
	adc  c                                           ; $4a07: $89
	adc  c                                           ; $4a08: $89
	sub  a                                           ; $4a09: $97
	adc  b                                           ; $4a0a: $88
	adc  b                                           ; $4a0b: $88
	ld   a, b                                        ; $4a0c: $78
	add  a                                           ; $4a0d: $87
	add  a                                           ; $4a0e: $87
	adc  b                                           ; $4a0f: $88
	ld   a, b                                        ; $4a10: $78
	adc  c                                           ; $4a11: $89
	adc  b                                           ; $4a12: $88
	ld   a, b                                        ; $4a13: $78
	adc  b                                           ; $4a14: $88
	add  a                                           ; $4a15: $87
	add  a                                           ; $4a16: $87
	add  a                                           ; $4a17: $87
	adc  c                                           ; $4a18: $89
	add  a                                           ; $4a19: $87
	adc  c                                           ; $4a1a: $89
	adc  c                                           ; $4a1b: $89
	adc  b                                           ; $4a1c: $88
	sbc  c                                           ; $4a1d: $99
	adc  b                                           ; $4a1e: $88
	adc  b                                           ; $4a1f: $88
	adc  c                                           ; $4a20: $89
	adc  b                                           ; $4a21: $88
	adc  c                                           ; $4a22: $89
	adc  b                                           ; $4a23: $88
	sbc  b                                           ; $4a24: $98
	adc  b                                           ; $4a25: $88
	add  a                                           ; $4a26: $87
	sbc  b                                           ; $4a27: $98
	adc  c                                           ; $4a28: $89
	ld   a, c                                        ; $4a29: $79
	adc  b                                           ; $4a2a: $88
	adc  b                                           ; $4a2b: $88
	ld   [hl], a                                     ; $4a2c: $77
	sub  a                                           ; $4a2d: $97
	adc  b                                           ; $4a2e: $88
	ld   a, b                                        ; $4a2f: $78
	adc  c                                           ; $4a30: $89
	ld   a, b                                        ; $4a31: $78
	adc  b                                           ; $4a32: $88
	ld   a, b                                        ; $4a33: $78
	sbc  b                                           ; $4a34: $98
	ld   a, b                                        ; $4a35: $78
	add  a                                           ; $4a36: $87
	adc  c                                           ; $4a37: $89
	adc  b                                           ; $4a38: $88
	ld   a, b                                        ; $4a39: $78
	sbc  b                                           ; $4a3a: $98
	ld   a, b                                        ; $4a3b: $78
	adc  c                                           ; $4a3c: $89
	add  a                                           ; $4a3d: $87
	ld   a, c                                        ; $4a3e: $79
	adc  b                                           ; $4a3f: $88
	add  a                                           ; $4a40: $87
	adc  b                                           ; $4a41: $88
	ld   [hl], a                                     ; $4a42: $77
	adc  b                                           ; $4a43: $88
	add  a                                           ; $4a44: $87
	adc  b                                           ; $4a45: $88
	adc  b                                           ; $4a46: $88
	ld   a, b                                        ; $4a47: $78
	adc  b                                           ; $4a48: $88
	adc  b                                           ; $4a49: $88
	ld   l, c                                        ; $4a4a: $69
	sub  a                                           ; $4a4b: $97
	ld   a, b                                        ; $4a4c: $78
	sbc  b                                           ; $4a4d: $98
	add  [hl]                                        ; $4a4e: $86
	adc  c                                           ; $4a4f: $89
	ld   a, b                                        ; $4a50: $78
	ld   a, b                                        ; $4a51: $78
	sbc  b                                           ; $4a52: $98
	ld   [hl], a                                     ; $4a53: $77
	sbc  b                                           ; $4a54: $98
	ld   [hl], a                                     ; $4a55: $77
	adc  b                                           ; $4a56: $88
	add  a                                           ; $4a57: $87
	ld   a, c                                        ; $4a58: $79
	add  a                                           ; $4a59: $87
	ld   [hl], a                                     ; $4a5a: $77
	adc  b                                           ; $4a5b: $88
	add  a                                           ; $4a5c: $87
	adc  b                                           ; $4a5d: $88
	sbc  c                                           ; $4a5e: $99
	ld   [hl], a                                     ; $4a5f: $77
	ld   e, l                                        ; $4a60: $5d
	or   d                                           ; $4a61: $b2
	sbc  b                                           ; $4a62: $98
	adc  c                                           ; $4a63: $89
	ld   l, b                                        ; $4a64: $68
	ld   a, b                                        ; $4a65: $78
	ld   a, b                                        ; $4a66: $78
	add  a                                           ; $4a67: $87
	ld   [hl], a                                     ; $4a68: $77
	adc  c                                           ; $4a69: $89
	add  a                                           ; $4a6a: $87
	add  a                                           ; $4a6b: $87
	adc  b                                           ; $4a6c: $88
	ld   a, b                                        ; $4a6d: $78
	adc  c                                           ; $4a6e: $89
	ld   a, c                                        ; $4a6f: $79
	ld   a, b                                        ; $4a70: $78
	sbc  b                                           ; $4a71: $98
	adc  b                                           ; $4a72: $88
	ld   a, b                                        ; $4a73: $78
	sub  a                                           ; $4a74: $97
	add  a                                           ; $4a75: $87
	adc  b                                           ; $4a76: $88
	ld   a, c                                        ; $4a77: $79
	add  [hl]                                        ; $4a78: $86
	sbc  c                                           ; $4a79: $99
	adc  d                                           ; $4a7a: $8a
	ld   l, b                                        ; $4a7b: $68
	add  a                                           ; $4a7c: $87
	ld   a, b                                        ; $4a7d: $78
	and  [hl]                                        ; $4a7e: $a6
	ld   a, c                                        ; $4a7f: $79
	ld   a, b                                        ; $4a80: $78
	adc  c                                           ; $4a81: $89
	adc  b                                           ; $4a82: $88
	ld   a, c                                        ; $4a83: $79
	and  [hl]                                        ; $4a84: $a6
	ld   a, c                                        ; $4a85: $79
	and  a                                           ; $4a86: $a7
	ld   [hl], a                                     ; $4a87: $77
	adc  c                                           ; $4a88: $89
	ld   h, [hl]                                     ; $4a89: $66
	ld   [hl], a                                     ; $4a8a: $77
	ld   l, c                                        ; $4a8b: $69
	halt                                             ; $4a8c: $76
	add  a                                           ; $4a8d: $87
	adc  b                                           ; $4a8e: $88
	ld   a, b                                        ; $4a8f: $78
	sbc  b                                           ; $4a90: $98
	sbc  b                                           ; $4a91: $98
	adc  c                                           ; $4a92: $89
	add  a                                           ; $4a93: $87
	adc  b                                           ; $4a94: $88
	sbc  b                                           ; $4a95: $98
	ld   a, b                                        ; $4a96: $78
	ld   a, b                                        ; $4a97: $78
	ld   a, b                                        ; $4a98: $78
	ld   [hl], a                                     ; $4a99: $77
	add  a                                           ; $4a9a: $87
	sbc  b                                           ; $4a9b: $98
	halt                                             ; $4a9c: $76
	sbc  b                                           ; $4a9d: $98
	ld   a, b                                        ; $4a9e: $78
	ld   a, b                                        ; $4a9f: $78
	ld   a, b                                        ; $4aa0: $78
	add  a                                           ; $4aa1: $87
	ld   a, b                                        ; $4aa2: $78
	sbc  b                                           ; $4aa3: $98
	add  a                                           ; $4aa4: $87
	ld   a, b                                        ; $4aa5: $78
	sbc  b                                           ; $4aa6: $98
	ld   a, b                                        ; $4aa7: $78
	ld   [hl], a                                     ; $4aa8: $77
	sbc  c                                           ; $4aa9: $99
	ld   [hl], a                                     ; $4aaa: $77
	sbc  b                                           ; $4aab: $98
	adc  b                                           ; $4aac: $88
	adc  b                                           ; $4aad: $88
	xor  c                                           ; $4aae: $a9
	ld   a, b                                        ; $4aaf: $78
	add  [hl]                                        ; $4ab0: $86
	halt                                             ; $4ab1: $76
	ld   a, c                                        ; $4ab2: $79
	ld   a, b                                        ; $4ab3: $78
	ld   [hl], a                                     ; $4ab4: $77
	add  a                                           ; $4ab5: $87
	adc  b                                           ; $4ab6: $88
	sbc  b                                           ; $4ab7: $98
	ld   l, b                                        ; $4ab8: $68
	add  [hl]                                        ; $4ab9: $86
	ld   a, c                                        ; $4aba: $79
	ld   a, e                                        ; $4abb: $7b
	add  a                                           ; $4abc: $87
	sbc  d                                           ; $4abd: $9a
	ld   a, c                                        ; $4abe: $79
	sub  a                                           ; $4abf: $97
	add  a                                           ; $4ac0: $87
	sbc  b                                           ; $4ac1: $98
	adc  b                                           ; $4ac2: $88
	adc  d                                           ; $4ac3: $8a
	halt                                             ; $4ac4: $76
	ld   [hl], a                                     ; $4ac5: $77
	ld   a, b                                        ; $4ac6: $78
	halt                                             ; $4ac7: $76
	ld   a, b                                        ; $4ac8: $78
	ld   a, b                                        ; $4ac9: $78
	adc  b                                           ; $4aca: $88
	sbc  c                                           ; $4acb: $99
	xor  e                                           ; $4acc: $ab
	xor  b                                           ; $4acd: $a8
	xor  $78                                         ; $4ace: $ee $78
	ld   a, c                                        ; $4ad0: $79
	add  h                                           ; $4ad1: $84
	ld   [hl], $86                                   ; $4ad2: $36 $86
	halt                                             ; $4ad4: $76
	ld   l, c                                        ; $4ad5: $69
	adc  c                                           ; $4ad6: $89
	sbc  e                                           ; $4ad7: $9b
	cp   c                                           ; $4ad8: $b9
	ld   a, b                                        ; $4ad9: $78
	adc  d                                           ; $4ada: $8a
	sub  [hl]                                        ; $4adb: $96
	ld   d, a                                        ; $4adc: $57
	sub  [hl]                                        ; $4add: $96
	ld   a, d                                        ; $4ade: $7a
	sub  l                                           ; $4adf: $95
	ld   a, c                                        ; $4ae0: $79
	sbc  c                                           ; $4ae1: $99
	halt                                             ; $4ae2: $76
	sbc  b                                           ; $4ae3: $98
	add  a                                           ; $4ae4: $87
	ld   c, b                                        ; $4ae5: $48
	jp   c, Jump_0e4_6a87                            ; $4ae6: $da $87 $6a

	ld   [hl], a                                     ; $4ae9: $77
	and  a                                           ; $4aea: $a7
	add  [hl]                                        ; $4aeb: $86
	ld   e, e                                        ; $4aec: $5b
	cp   d                                           ; $4aed: $ba
	ld   d, h                                        ; $4aee: $54
	cp   e                                           ; $4aef: $bb
	halt                                             ; $4af0: $76
	sbc  b                                           ; $4af1: $98
	ld   d, a                                        ; $4af2: $57
	adc  c                                           ; $4af3: $89
	ret                                              ; $4af4: $c9


	ld   b, e                                        ; $4af5: $43
	db   $dd                                         ; $4af6: $dd
	ld   h, l                                        ; $4af7: $65
	bit  5, e                                        ; $4af8: $cb $6b
	scf                                              ; $4afa: $37
	or   [hl]                                        ; $4afb: $b6
	add  l                                           ; $4afc: $85
	xor  c                                           ; $4afd: $a9
	dec  h                                           ; $4afe: $25
	jp   z, Jump_0e4_7b55                            ; $4aff: $ca $55 $7b

	rst  ToBoot                                         ; $4b02: $c7
	dec  d                                           ; $4b03: $15
	ret                                              ; $4b04: $c9


	ld   h, a                                        ; $4b05: $67
	ld   a, b                                        ; $4b06: $78
	inc  sp                                          ; $4b07: $33
	xor  $74                                         ; $4b08: $ee $74
	inc  [hl]                                        ; $4b0a: $34
	xor  h                                           ; $4b0b: $ac
	add  [hl]                                        ; $4b0c: $86
	inc  d                                           ; $4b0d: $14
	db   $fc                                         ; $4b0e: $fc
	ld   d, d                                        ; $4b0f: $52
	ld   e, b                                        ; $4b10: $58
	sbc  d                                           ; $4b11: $9a
	sub  [hl]                                        ; $4b12: $96
	ld   [de], a                                     ; $4b13: $12
	db   $fc                                         ; $4b14: $fc
	ld   b, a                                        ; $4b15: $47
	scf                                              ; $4b16: $37
	sub  e                                           ; $4b17: $93
	ld   d, [hl]                                     ; $4b18: $56
	inc  [hl]                                        ; $4b19: $34
	xor  b                                           ; $4b1a: $a8
	adc  c                                           ; $4b1b: $89
	ld   b, h                                        ; $4b1c: $44
	call z, $2584                                    ; $4b1d: $cc $84 $25
	call $2696                                       ; $4b20: $cd $96 $26
	sbc  b                                           ; $4b23: $98
	ld   [hl], h                                     ; $4b24: $74
	ld   b, a                                        ; $4b25: $47
	xor  e                                           ; $4b26: $ab
	db   $db                                         ; $4b27: $db
	and  a                                           ; $4b28: $a7
	sbc  h                                           ; $4b29: $9c
	sbc  d                                           ; $4b2a: $9a
	sub  [hl]                                        ; $4b2b: $96
	adc  d                                           ; $4b2c: $8a
	xor  b                                           ; $4b2d: $a8
	ld   [hl], a                                     ; $4b2e: $77
	cp   h                                           ; $4b2f: $bc
	db   $dd                                         ; $4b30: $dd
	xor  d                                           ; $4b31: $aa
	sbc  c                                           ; $4b32: $99
	cp   e                                           ; $4b33: $bb
	xor  b                                           ; $4b34: $a8
	adc  c                                           ; $4b35: $89
	adc  c                                           ; $4b36: $89
	cp   e                                           ; $4b37: $bb
	xor  c                                           ; $4b38: $a9
	sbc  c                                           ; $4b39: $99
	xor  e                                           ; $4b3a: $ab
	xor  d                                           ; $4b3b: $aa
	xor  c                                           ; $4b3c: $a9
	xor  e                                           ; $4b3d: $ab
	xor  d                                           ; $4b3e: $aa
	xor  d                                           ; $4b3f: $aa
	sbc  d                                           ; $4b40: $9a
	sbc  d                                           ; $4b41: $9a
	xor  c                                           ; $4b42: $a9
	add  a                                           ; $4b43: $87
	sbc  d                                           ; $4b44: $9a
	xor  c                                           ; $4b45: $a9
	adc  b                                           ; $4b46: $88
	adc  c                                           ; $4b47: $89
	sbc  d                                           ; $4b48: $9a
	xor  b                                           ; $4b49: $a8
	sbc  b                                           ; $4b4a: $98
	xor  d                                           ; $4b4b: $aa
	sbc  b                                           ; $4b4c: $98
	adc  b                                           ; $4b4d: $88
	sbc  c                                           ; $4b4e: $99
	sbc  c                                           ; $4b4f: $99
	xor  c                                           ; $4b50: $a9
	adc  b                                           ; $4b51: $88
	adc  b                                           ; $4b52: $88
	sbc  d                                           ; $4b53: $9a
	sbc  b                                           ; $4b54: $98
	ld   a, c                                        ; $4b55: $79
	sbc  d                                           ; $4b56: $9a
	sbc  b                                           ; $4b57: $98
	ld   a, b                                        ; $4b58: $78
	sbc  c                                           ; $4b59: $99
	sbc  c                                           ; $4b5a: $99
	add  a                                           ; $4b5b: $87
	adc  c                                           ; $4b5c: $89
	adc  c                                           ; $4b5d: $89
	add  a                                           ; $4b5e: $87
	ld   a, b                                        ; $4b5f: $78
	sbc  c                                           ; $4b60: $99
	add  a                                           ; $4b61: $87
	ld   a, b                                        ; $4b62: $78
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	add  a                                           ; $4b65: $87
	adc  b                                           ; $4b66: $88
	adc  b                                           ; $4b67: $88
	ld   [hl], a                                     ; $4b68: $77
	sbc  c                                           ; $4b69: $99
	ld   a, b                                        ; $4b6a: $78
	add  a                                           ; $4b6b: $87
	ld   a, b                                        ; $4b6c: $78
	sbc  b                                           ; $4b6d: $98
	ld   [hl], a                                     ; $4b6e: $77
	adc  b                                           ; $4b6f: $88
	add  a                                           ; $4b70: $87
	ld   [hl], a                                     ; $4b71: $77
	ld   [hl], a                                     ; $4b72: $77
	adc  b                                           ; $4b73: $88
	ld   [hl], a                                     ; $4b74: $77
	adc  b                                           ; $4b75: $88
	ld   [hl], a                                     ; $4b76: $77
	ld   a, b                                        ; $4b77: $78
	adc  b                                           ; $4b78: $88
	ld   [hl], a                                     ; $4b79: $77
	ld   a, b                                        ; $4b7a: $78
	add  a                                           ; $4b7b: $87
	ld   [hl], a                                     ; $4b7c: $77
	ld   a, b                                        ; $4b7d: $78
	adc  b                                           ; $4b7e: $88
	ld   a, b                                        ; $4b7f: $78
	adc  b                                           ; $4b80: $88
	add  a                                           ; $4b81: $87
	ld   [hl], a                                     ; $4b82: $77
	ld   [hl], a                                     ; $4b83: $77
	add  a                                           ; $4b84: $87
	ld   a, b                                        ; $4b85: $78
	add  a                                           ; $4b86: $87
	ld   [hl], a                                     ; $4b87: $77
	adc  b                                           ; $4b88: $88
	ld   [hl], a                                     ; $4b89: $77
	ld   [hl], a                                     ; $4b8a: $77
	adc  b                                           ; $4b8b: $88
	add  a                                           ; $4b8c: $87
	ld   [hl], a                                     ; $4b8d: $77
	sbc  b                                           ; $4b8e: $98
	ld   [hl], a                                     ; $4b8f: $77
	ld   a, b                                        ; $4b90: $78
	adc  b                                           ; $4b91: $88
	ld   [hl], a                                     ; $4b92: $77
	ld   a, b                                        ; $4b93: $78
	adc  b                                           ; $4b94: $88
	ld   [hl], a                                     ; $4b95: $77
	adc  b                                           ; $4b96: $88
	add  a                                           ; $4b97: $87
	ld   [hl], a                                     ; $4b98: $77
	adc  b                                           ; $4b99: $88
	add  a                                           ; $4b9a: $87
	ld   a, b                                        ; $4b9b: $78
	sbc  b                                           ; $4b9c: $98
	ld   [hl], a                                     ; $4b9d: $77
	adc  b                                           ; $4b9e: $88
	adc  b                                           ; $4b9f: $88
	ld   [hl], a                                     ; $4ba0: $77
	adc  b                                           ; $4ba1: $88
	add  a                                           ; $4ba2: $87
	adc  c                                           ; $4ba3: $89
	add  a                                           ; $4ba4: $87
	ld   a, b                                        ; $4ba5: $78
	adc  b                                           ; $4ba6: $88
	add  a                                           ; $4ba7: $87
	adc  b                                           ; $4ba8: $88
	adc  c                                           ; $4ba9: $89
	add  a                                           ; $4baa: $87
	ld   a, b                                        ; $4bab: $78
	sbc  b                                           ; $4bac: $98
	halt                                             ; $4bad: $76
	ld   a, b                                        ; $4bae: $78
	xor  b                                           ; $4baf: $a8
	ld   h, [hl]                                     ; $4bb0: $66
	adc  d                                           ; $4bb1: $8a
	add  a                                           ; $4bb2: $87
	ld   h, a                                        ; $4bb3: $67
	sbc  c                                           ; $4bb4: $99
	ld   [hl], a                                     ; $4bb5: $77
	ld   a, b                                        ; $4bb6: $78
	add  a                                           ; $4bb7: $87
	ld   a, b                                        ; $4bb8: $78
	adc  c                                           ; $4bb9: $89
	ld   [hl], a                                     ; $4bba: $77
	adc  b                                           ; $4bbb: $88
	sbc  b                                           ; $4bbc: $98
	ld   h, a                                        ; $4bbd: $67
	sbc  c                                           ; $4bbe: $99
	add  a                                           ; $4bbf: $87
	ld   a, b                                        ; $4bc0: $78
	sbc  b                                           ; $4bc1: $98
	ld   [hl], a                                     ; $4bc2: $77
	adc  b                                           ; $4bc3: $88
	ld   [hl], a                                     ; $4bc4: $77
	adc  b                                           ; $4bc5: $88
	adc  b                                           ; $4bc6: $88
	ld   [hl], a                                     ; $4bc7: $77
	ld   a, c                                        ; $4bc8: $79
	sub  a                                           ; $4bc9: $97
	ld   h, a                                        ; $4bca: $67
	sbc  c                                           ; $4bcb: $99
	ld   [hl], l                                     ; $4bcc: $75
	ld   a, c                                        ; $4bcd: $79
	sbc  c                                           ; $4bce: $99
	ld   h, [hl]                                     ; $4bcf: $66
	sbc  c                                           ; $4bd0: $99
	sub  a                                           ; $4bd1: $97
	ld   [hl], a                                     ; $4bd2: $77
	sbc  c                                           ; $4bd3: $99
	ld   [hl], l                                     ; $4bd4: $75
	ld   e, e                                        ; $4bd5: $5b
	ld   sp, hl                                      ; $4bd6: $f9

jr_0e4_4bd7:
	dec  h                                           ; $4bd7: $25
	xor  e                                           ; $4bd8: $ab
	add  [hl]                                        ; $4bd9: $86
	ld   [hl], l                                     ; $4bda: $75
	adc  l                                           ; $4bdb: $8d
	and  l                                           ; $4bdc: $a5
	ld   c, c                                        ; $4bdd: $49
	bit  2, e                                        ; $4bde: $cb $53
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4be0: $cf
	pop  bc                                          ; $4be1: $c1
	ld   a, [de]                                     ; $4be2: $1a
	cp   $11                                         ; $4be3: $fe $11
	ld   l, a                                        ; $4be5: $6f
	jp   $fe17                                       ; $4be6: $c3 $17 $fe


	add  [hl]                                        ; $4be9: $86
	adc  d                                           ; $4bea: $8a
	or   [hl]                                        ; $4beb: $b6
	inc  h                                           ; $4bec: $24
	ld   a, b                                        ; $4bed: $78
	add  l                                           ; $4bee: $85
	ld   c, d                                        ; $4bef: $4a
	rst  $38                                         ; $4bf0: $ff
	and  l                                           ; $4bf1: $a5
	ld   a, l                                        ; $4bf2: $7d
	and  h                                           ; $4bf3: $a4
	dec  [hl]                                        ; $4bf4: $35
	adc  c                                           ; $4bf5: $89
	ld   h, e                                        ; $4bf6: $63
	ld   e, c                                        ; $4bf7: $59
	jp   c, Jump_0e4_6a54                            ; $4bf8: $da $54 $6a

	sub  [hl]                                        ; $4bfb: $96
	ld   d, [hl]                                     ; $4bfc: $56
	sbc  c                                           ; $4bfd: $99
	halt                                             ; $4bfe: $76
	ld   h, a                                        ; $4bff: $67
	sub  a                                           ; $4c00: $97
	ld   b, h                                        ; $4c01: $44
	ld   a, c                                        ; $4c02: $79
	ld   h, h                                        ; $4c03: $64
	ld   a, d                                        ; $4c04: $7a
	and  l                                           ; $4c05: $a5
	dec  [hl]                                        ; $4c06: $35
	call z, $6865                                    ; $4c07: $cc $65 $68
	jp   c, $8c53                                    ; $4c0a: $da $53 $8c

	add  l                                           ; $4c0d: $85
	cp   e                                           ; $4c0e: $bb
	ld   [hl], a                                     ; $4c0f: $77
	sbc  d                                           ; $4c10: $9a
	xor  [hl]                                        ; $4c11: $ae
	push de                                          ; $4c12: $d5
	ld   a, [hl+]                                    ; $4c13: $2a
	add  sp, $11                                     ; $4c14: $e8 $11
	sbc  l                                           ; $4c16: $9d
	sub  [hl]                                        ; $4c17: $96
	ld   l, b                                        ; $4c18: $68
	sbc  l                                           ; $4c19: $9d
	sub  c                                           ; $4c1a: $91
	dec  de                                          ; $4c1b: $1b
	ld   a, [$cd79]                                  ; $4c1c: $fa $79 $cd
	and  [hl]                                        ; $4c1f: $a6
	ld   b, l                                        ; $4c20: $45
	ld   b, c                                        ; $4c21: $41
	inc  d                                           ; $4c22: $14
	adc  c                                           ; $4c23: $89
	ld   [hl], h                                     ; $4c24: $74
	ld   l, a                                        ; $4c25: $6f
	ld   sp, hl                                      ; $4c26: $f9
	dec  h                                           ; $4c27: $25
	db   $fd                                         ; $4c28: $fd
	add  [hl]                                        ; $4c29: $86
	cp   a                                           ; $4c2a: $bf
	pop  af                                          ; $4c2b: $f1
	inc  e                                           ; $4c2c: $1c
	rst  $38                                         ; $4c2d: $ff
	ld   h, c                                        ; $4c2e: $61
	rra                                              ; $4c2f: $1f
	or   $14                                         ; $4c30: $f6 $14
	db   $fc                                         ; $4c32: $fc
	sbc  c                                           ; $4c33: $99
	ld   h, l                                        ; $4c34: $65
	ld   a, h                                        ; $4c35: $7c
	ld   a, [$ba69]                                  ; $4c36: $fa $69 $ba
	add  a                                           ; $4c39: $87
	ld   b, d                                        ; $4c3a: $42
	ld   [de], a                                     ; $4c3b: $12
	ld   d, c                                        ; $4c3c: $51
	ld   de, $b47d                                   ; $4c3d: $11 $7d $b4
	jr   jr_0e4_4bd7                                 ; $4c40: $18 $95

	dec  [hl]                                        ; $4c42: $35
	ld   sp, $d45a                                   ; $4c43: $31 $5a $d4
	rla                                              ; $4c46: $17
	rst  $38                                         ; $4c47: $ff
	ld   sp, hl                                      ; $4c48: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c49: $cf
	rst  $38                                         ; $4c4a: $ff
	db   $fc                                         ; $4c4b: $fc
	rst  $28                                         ; $4c4c: $ef
	db   $fd                                         ; $4c4d: $fd
	ld   b, [hl]                                     ; $4c4e: $46
	ld   [hl], a                                     ; $4c4f: $77
	ld   hl, $4114                                   ; $4c50: $21 $14 $41
	ld   de, $1111                                   ; $4c53: $11 $11 $11
	ld   de, $1111                                   ; $4c56: $11 $11 $11
	dec  de                                          ; $4c59: $1b
	rst  $38                                         ; $4c5a: $ff
	rst  $38                                         ; $4c5b: $ff
	rst  $38                                         ; $4c5c: $ff
	rst  $38                                         ; $4c5d: $ff
	rst  $38                                         ; $4c5e: $ff
	rst  $38                                         ; $4c5f: $ff
	ei                                               ; $4c60: $fb
	inc  sp                                          ; $4c61: $33
	or   [hl]                                        ; $4c62: $b6
	ld   h, a                                        ; $4c63: $67
	ld   h, h                                        ; $4c64: $64
	ld   e, h                                        ; $4c65: $5c
	ld   [hl], c                                     ; $4c66: $71
	ld   de, $1111                                   ; $4c67: $11 $11 $11
	ld   de, $1111                                   ; $4c6a: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c6d: $cf
	rst  $38                                         ; $4c6e: $ff
	rst  $38                                         ; $4c6f: $ff
	rst  $38                                         ; $4c70: $ff
	rst  $38                                         ; $4c71: $ff
	or   l                                           ; $4c72: $b5
	rst  $38                                         ; $4c73: $ff
	ldh  a, [c]                                      ; $4c74: $f2
	ld   c, a                                        ; $4c75: $4f
	rst  $38                                         ; $4c76: $ff
	rst  $38                                         ; $4c77: $ff
	adc  d                                           ; $4c78: $8a
	ld   a, [$1111]                                  ; $4c79: $fa $11 $11
	ld   de, $1111                                   ; $4c7c: $11 $11 $11
	ld   de, $ff1f                                   ; $4c7f: $11 $1f $ff
	rst  $38                                         ; $4c82: $ff
	rst  $38                                         ; $4c83: $ff
	rst  $38                                         ; $4c84: $ff
	db   $f4                                         ; $4c85: $f4
	ccf                                              ; $4c86: $3f
	rst  $38                                         ; $4c87: $ff
	rst  $38                                         ; $4c88: $ff
	rst  $38                                         ; $4c89: $ff
	rst  $38                                         ; $4c8a: $ff
	jp   nc, $3147                                   ; $4c8b: $d2 $47 $31

	ld   de, $1111                                   ; $4c8e: $11 $11 $11
	ld   de, $1811                                   ; $4c91: $11 $11 $18
	rst  $38                                         ; $4c94: $ff
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	adc  a                                           ; $4c97: $8f
	rst  $38                                         ; $4c98: $ff
	cp   h                                           ; $4c99: $bc
	rst  $38                                         ; $4c9a: $ff
	rst  $38                                         ; $4c9b: $ff
	rst  $38                                         ; $4c9c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c9d: $cf
	rst  $38                                         ; $4c9e: $ff
	ld   de, $1101                                   ; $4c9f: $11 $01 $11
	ld   de, $1111                                   ; $4ca2: $11 $11 $11
	ld   de, $1111                                   ; $4ca5: $11 $11 $11
	rst  $38                                         ; $4ca8: $ff
	rst  $38                                         ; $4ca9: $ff
	rst  $38                                         ; $4caa: $ff
	rst  $38                                         ; $4cab: $ff
	pop  af                                          ; $4cac: $f1
	ld   c, a                                        ; $4cad: $4f
	rst  $38                                         ; $4cae: $ff
	rst  $38                                         ; $4caf: $ff
	rst  $38                                         ; $4cb0: $ff
	db   $fc                                         ; $4cb1: $fc
	ld   d, c                                        ; $4cb2: $51
	ld   a, b                                        ; $4cb3: $78
	ld   de, $1111                                   ; $4cb4: $11 $11 $11
	ld   de, $1111                                   ; $4cb7: $11 $11 $11
	ld   de, $ff1f                                   ; $4cba: $11 $1f $ff
	db   $fc                                         ; $4cbd: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cbe: $cf
	rst  $38                                         ; $4cbf: $ff
	ld   [de], a                                     ; $4cc0: $12
	rst  $38                                         ; $4cc1: $ff
	rst  $38                                         ; $4cc2: $ff
	ret  z                                           ; $4cc3: $c8

	rst  $38                                         ; $4cc4: $ff
	push af                                          ; $4cc5: $f5
	ld   de, $614f                                   ; $4cc6: $11 $4f $61
	ld   de, $1111                                   ; $4cc9: $11 $11 $11
	ld   de, $1131                                   ; $4ccc: $11 $31 $11
	rra                                              ; $4ccf: $1f
	rst  $38                                         ; $4cd0: $ff
	or   $cf                                         ; $4cd1: $f6 $cf
	rst  $38                                         ; $4cd3: $ff
	ld   de, $ffff                                   ; $4cd4: $11 $ff $ff
	rst  $38                                         ; $4cd7: $ff
	rst  $38                                         ; $4cd8: $ff
	rst  $38                                         ; $4cd9: $ff
	ld   d, c                                        ; $4cda: $51
	rla                                              ; $4cdb: $17
	ld   h, c                                        ; $4cdc: $61
	ld   de, $1111                                   ; $4cdd: $11 $11 $11
	ld   de, $1111                                   ; $4ce0: $11 $11 $11
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	pop  af                                          ; $4ce5: $f1
	rst  $38                                         ; $4ce6: $ff
	db   $fc                                         ; $4ce7: $fc
	rla                                              ; $4ce8: $17
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	rst  $38                                         ; $4ceb: $ff
	rst  $38                                         ; $4cec: $ff
	ld   a, [$6931]                                  ; $4ced: $fa $31 $69
	ld   de, $1111                                   ; $4cf0: $11 $11 $11
	ld   de, $3411                                   ; $4cf3: $11 $11 $34
	ld   de, $ff2f                                   ; $4cf6: $11 $2f $ff
	pop  af                                          ; $4cf9: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cfa: $cf
	cp   $11                                         ; $4cfb: $fe $11
	rst  $38                                         ; $4cfd: $ff
	rst  $38                                         ; $4cfe: $ff
	call z, $f9ff                                    ; $4cff: $cc $ff $f9
	ld   de, $1155                                   ; $4d02: $11 $55 $11
	ld   de, $1111                                   ; $4d05: $11 $11 $11
	ld   de, $1111                                   ; $4d08: $11 $11 $11
	ccf                                              ; $4d0b: $3f
	rst  $38                                         ; $4d0c: $ff
	db   $f4                                         ; $4d0d: $f4
	rst  $38                                         ; $4d0e: $ff
	rst  $38                                         ; $4d0f: $ff
	jr   @+$01                                       ; $4d10: $18 $ff

	rst  $38                                         ; $4d12: $ff
	adc  $ff                                         ; $4d13: $ce $ff
	pop  de                                          ; $4d15: $d1
	ld   sp, $1199                                   ; $4d16: $31 $99 $11
	ld   de, $1111                                   ; $4d19: $11 $11 $11
	ld   de, $1111                                   ; $4d1c: $11 $11 $11
	xor  a                                           ; $4d1f: $af
	rst  $38                                         ; $4d20: $ff
	rst  $38                                         ; $4d21: $ff
	rst  $38                                         ; $4d22: $ff
	rst  $30                                         ; $4d23: $f7
	rra                                              ; $4d24: $1f
	rst  $38                                         ; $4d25: $ff
	rst  $38                                         ; $4d26: $ff
	rst  $38                                         ; $4d27: $ff
	rst  $28                                         ; $4d28: $ef
	push af                                          ; $4d29: $f5
	ld   de, $11ea                                   ; $4d2a: $11 $ea $11
	ld   de, $1111                                   ; $4d2d: $11 $11 $11
	ld   de, $1111                                   ; $4d30: $11 $11 $11
	rra                                              ; $4d33: $1f
	rst  $38                                         ; $4d34: $ff
	rst  $38                                         ; $4d35: $ff
	rst  $38                                         ; $4d36: $ff
	ei                                               ; $4d37: $fb
	dec  h                                           ; $4d38: $25
	rst  $38                                         ; $4d39: $ff
	rst  $38                                         ; $4d3a: $ff
	sbc  a                                           ; $4d3b: $9f
	rst  $38                                         ; $4d3c: $ff
	ld   h, c                                        ; $4d3d: $61
	ld   l, a                                        ; $4d3e: $6f
	ld   [hl], c                                     ; $4d3f: $71
	ld   de, $1111                                   ; $4d40: $11 $11 $11
	ld   de, $1111                                   ; $4d43: $11 $11 $11
	ld   hl, $ff1f                                   ; $4d46: $21 $1f $ff
	rst  $38                                         ; $4d49: $ff
	rst  $38                                         ; $4d4a: $ff
	rst  $38                                         ; $4d4b: $ff
	ldh  a, [c]                                      ; $4d4c: $f2
	rst  $38                                         ; $4d4d: $ff
	db   $fc                                         ; $4d4e: $fc
	rst  $38                                         ; $4d4f: $ff
	rst  $38                                         ; $4d50: $ff
	db   $fd                                         ; $4d51: $fd
	ld   h, c                                        ; $4d52: $61
	inc  de                                          ; $4d53: $13
	ld   de, $1111                                   ; $4d54: $11 $11 $11
	ld   de, $1111                                   ; $4d57: $11 $11 $11
	ld   de, $ffdf                                   ; $4d5a: $11 $df $ff
	rst  $38                                         ; $4d5d: $ff
	rst  $38                                         ; $4d5e: $ff
	di                                               ; $4d5f: $f3
	ld   a, a                                        ; $4d60: $7f
	rst  $38                                         ; $4d61: $ff
	rst  $38                                         ; $4d62: $ff
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	ld   a, [$21ee]                                  ; $4d65: $fa $ee $21
	ld   de, $1111                                   ; $4d68: $11 $11 $11
	ld   de, $1111                                   ; $4d6b: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $4d6e: $11 $14 $ff
	rst  $38                                         ; $4d71: $ff
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	push hl                                          ; $4d74: $e5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d75: $cf
	rst  $38                                         ; $4d76: $ff
	xor  a                                           ; $4d77: $af
	rst  $38                                         ; $4d78: $ff
	db   $fd                                         ; $4d79: $fd
	add  e                                           ; $4d7a: $83
	rst  JumpTable                                         ; $4d7b: $df
	ld   sp, $1111                                   ; $4d7c: $31 $11 $11
	ld   de, $1111                                   ; $4d7f: $11 $11 $11
	ld   de, $2f11                                   ; $4d82: $11 $11 $2f
	rst  $38                                         ; $4d85: $ff
	rst  $38                                         ; $4d86: $ff
	rst  $38                                         ; $4d87: $ff
	rst  $38                                         ; $4d88: $ff
	ld   hl, sp-$01                                  ; $4d89: $f8 $ff
	db   $fc                                         ; $4d8b: $fc
	rst  $38                                         ; $4d8c: $ff
	rst  $38                                         ; $4d8d: $ff
	db   $fc                                         ; $4d8e: $fc
	ld   e, h                                        ; $4d8f: $5c
	ld   a, [$4111]                                  ; $4d90: $fa $11 $41
	ld   de, $1111                                   ; $4d93: $11 $11 $11
	ld   de, $1111                                   ; $4d96: $11 $11 $11
	rra                                              ; $4d99: $1f
	rst  $38                                         ; $4d9a: $ff
	rst  $38                                         ; $4d9b: $ff
	rst  $38                                         ; $4d9c: $ff
	rst  $38                                         ; $4d9d: $ff
	db   $fd                                         ; $4d9e: $fd
	rst  $38                                         ; $4d9f: $ff
	db   $fd                                         ; $4da0: $fd
	rst  $28                                         ; $4da1: $ef
	rst  $38                                         ; $4da2: $ff
	db   $fc                                         ; $4da3: $fc
	db   $ed                                         ; $4da4: $ed
	jp   c, $1161                                    ; $4da5: $da $61 $11

	ld   de, $1111                                   ; $4da8: $11 $11 $11
	ld   de, $1111                                   ; $4dab: $11 $11 $11
	ld   a, [de]                                     ; $4dae: $1a
	rst  $38                                         ; $4daf: $ff
	rst  $38                                         ; $4db0: $ff
	rst  $38                                         ; $4db1: $ff
	rst  $38                                         ; $4db2: $ff
	rst  $38                                         ; $4db3: $ff
	rst  $38                                         ; $4db4: $ff
	rst  $38                                         ; $4db5: $ff
	rst  $38                                         ; $4db6: $ff
	sbc  $fe                                         ; $4db7: $de $fe
	cp   l                                           ; $4db9: $bd
	db   $fd                                         ; $4dba: $fd
	adc  c                                           ; $4dbb: $89
	ld   b, c                                        ; $4dbc: $41
	ld   de, $1111                                   ; $4dbd: $11 $11 $11
	ld   de, $1111                                   ; $4dc0: $11 $11 $11
	ld   de, $ff1f                                   ; $4dc3: $11 $1f $ff
	rst  $38                                         ; $4dc6: $ff
	rst  $38                                         ; $4dc7: $ff
	rst  $38                                         ; $4dc8: $ff
	rst  $38                                         ; $4dc9: $ff
	rst  $38                                         ; $4dca: $ff
	cp   $ff                                         ; $4dcb: $fe $ff
	rst  JumpTable                                         ; $4dcd: $df
	ei                                               ; $4dce: $fb
	sbc  h                                           ; $4dcf: $9c
	or   e                                           ; $4dd0: $b3
	ld   e, e                                        ; $4dd1: $5b
	ld   de, $1111                                   ; $4dd2: $11 $11 $11
	ld   de, $1111                                   ; $4dd5: $11 $11 $11
	ld   de, $2d11                                   ; $4dd8: $11 $11 $2d
	rst  $38                                         ; $4ddb: $ff
	rst  $38                                         ; $4ddc: $ff
	rst  $38                                         ; $4ddd: $ff
	rst  $38                                         ; $4dde: $ff
	rst  $38                                         ; $4ddf: $ff
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	xor  $ff                                         ; $4de2: $ee $ff
	db   $eb                                         ; $4de4: $eb
	bit  4, a                                        ; $4de5: $cb $67
	sub  e                                           ; $4de7: $93
	ld   de, $1111                                   ; $4de8: $11 $11 $11
	ld   de, $1111                                   ; $4deb: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4dee: $11 $11 $ff
	rst  $38                                         ; $4df1: $ff
	rst  $38                                         ; $4df2: $ff
	rst  $38                                         ; $4df3: $ff
	rst  $38                                         ; $4df4: $ff
	rst  $38                                         ; $4df5: $ff
	cp   $ef                                         ; $4df6: $fe $ef
	rst  $28                                         ; $4df8: $ef
	call c, $fadf                                    ; $4df9: $dc $df $fa
	ld   h, h                                        ; $4dfc: $64
	ld   d, c                                        ; $4dfd: $51
	ld   de, $1111                                   ; $4dfe: $11 $11 $11
	ld   de, $1111                                   ; $4e01: $11 $11 $11
	ld   de, $ffff                                   ; $4e04: $11 $ff $ff
	rst  $38                                         ; $4e07: $ff
	rst  $38                                         ; $4e08: $ff
	rst  $38                                         ; $4e09: $ff
	rst  $38                                         ; $4e0a: $ff
	rst  $38                                         ; $4e0b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e0c: $cf
	rst  $38                                         ; $4e0d: $ff
	sbc  $cd                                         ; $4e0e: $de $cd
	cp   $63                                         ; $4e10: $fe $63
	ld   de, $1111                                   ; $4e12: $11 $11 $11
	ld   de, $1111                                   ; $4e15: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4e18: $11 $11 $ff
	rst  $38                                         ; $4e1b: $ff
	rst  $38                                         ; $4e1c: $ff
	rst  $38                                         ; $4e1d: $ff
	rst  $38                                         ; $4e1e: $ff
	rst  $28                                         ; $4e1f: $ef
	rst  $38                                         ; $4e20: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e21: $cf
	cp   $ff                                         ; $4e22: $fe $ff
	db   $fc                                         ; $4e24: $fc
	db   $fd                                         ; $4e25: $fd
	ld   de, $1151                                   ; $4e26: $11 $51 $11
	ld   de, $1111                                   ; $4e29: $11 $11 $11
	ld   de, $1a11                                   ; $4e2c: $11 $11 $1a
	rst  $38                                         ; $4e2f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e30: $cf
	rst  $38                                         ; $4e31: $ff
	rst  $38                                         ; $4e32: $ff
	rst  $38                                         ; $4e33: $ff
	rst  $38                                         ; $4e34: $ff
	db   $fd                                         ; $4e35: $fd
	rst  $38                                         ; $4e36: $ff
	cp   $ff                                         ; $4e37: $fe $ff
	db   $fc                                         ; $4e39: $fc
	jp   z, $316a                                    ; $4e3a: $ca $6a $31

	ld   de, $1111                                   ; $4e3d: $11 $11 $11
	ld   de, $1111                                   ; $4e40: $11 $11 $11
	ld   a, [de]                                     ; $4e43: $1a
	rst  $38                                         ; $4e44: $ff
	rst  $38                                         ; $4e45: $ff
	rst  $38                                         ; $4e46: $ff
	rst  $38                                         ; $4e47: $ff
	rst  $38                                         ; $4e48: $ff
	rst  $38                                         ; $4e49: $ff
	db   $fc                                         ; $4e4a: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e4b: $cf
	cp   $fc                                         ; $4e4c: $fe $fc
	xor  a                                           ; $4e4e: $af
	rst  $30                                         ; $4e4f: $f7
	ld   de, $1161                                   ; $4e50: $11 $61 $11
	ld   de, $1111                                   ; $4e53: $11 $11 $11
	ld   de, $1f11                                   ; $4e56: $11 $11 $1f
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	rst  $38                                         ; $4e5b: $ff
	rst  $38                                         ; $4e5c: $ff
	rst  $38                                         ; $4e5d: $ff
	rst  $38                                         ; $4e5e: $ff
	rst  $28                                         ; $4e5f: $ef
	rst  $38                                         ; $4e60: $ff
	db   $fd                                         ; $4e61: $fd
	rst  $28                                         ; $4e62: $ef
	rst  $38                                         ; $4e63: $ff
	ld   [hl], d                                     ; $4e64: $72
	ld   a, [hl]                                     ; $4e65: $7e
	ld   b, c                                        ; $4e66: $41
	ld   de, $1111                                   ; $4e67: $11 $11 $11
	ld   de, $1111                                   ; $4e6a: $11 $11 $11
	rla                                              ; $4e6d: $17
	rst  JumpTable                                         ; $4e6e: $df
	rst  $38                                         ; $4e6f: $ff
	rst  $38                                         ; $4e70: $ff
	rst  $38                                         ; $4e71: $ff
	rst  $38                                         ; $4e72: $ff
	rst  $38                                         ; $4e73: $ff
	rst  $38                                         ; $4e74: $ff
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	xor  $b8                                         ; $4e78: $ee $b8
	add  c                                           ; $4e7a: $81
	ld   de, $1111                                   ; $4e7b: $11 $11 $11
	ld   de, $1111                                   ; $4e7e: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $4e81: $11 $12 $ff
	cpl                                              ; $4e84: $2f
	rst  $38                                         ; $4e85: $ff
	rst  $38                                         ; $4e86: $ff
	rst  $38                                         ; $4e87: $ff
	rst  $38                                         ; $4e88: $ff
	cp   $ff                                         ; $4e89: $fe $ff
	cp   $ff                                         ; $4e8b: $fe $ff
	db   $ed                                         ; $4e8d: $ed
	and  c                                           ; $4e8e: $a1
	ld   b, a                                        ; $4e8f: $47
	ld   sp, $1111                                   ; $4e90: $31 $11 $11
	ld   de, $1111                                   ; $4e93: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4e96: $11 $11 $ff
	ld   a, a                                        ; $4e99: $7f
	rst  $38                                         ; $4e9a: $ff
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	rst  $38                                         ; $4e9d: $ff
	rst  $38                                         ; $4e9e: $ff
	rst  $38                                         ; $4e9f: $ff
	rst  $38                                         ; $4ea0: $ff
	ld   a, [$a5ff]                                  ; $4ea1: $fa $ff $a5
	ld   d, $61                                      ; $4ea4: $16 $61
	ld   de, $1111                                   ; $4ea6: $11 $11 $11
	ld   de, $1111                                   ; $4ea9: $11 $11 $11
	dec  de                                          ; $4eac: $1b
	push af                                          ; $4ead: $f5
	rra                                              ; $4eae: $1f
	rst  $38                                         ; $4eaf: $ff
	rst  $38                                         ; $4eb0: $ff
	rst  $38                                         ; $4eb1: $ff
	rst  $38                                         ; $4eb2: $ff
	rst  $38                                         ; $4eb3: $ff
	rst  $38                                         ; $4eb4: $ff
	rst  $38                                         ; $4eb5: $ff
	sbc  a                                           ; $4eb6: $9f
	rst  $38                                         ; $4eb7: $ff
	ld   b, d                                        ; $4eb8: $42
	ld   l, d                                        ; $4eb9: $6a
	or   c                                           ; $4eba: $b1
	ld   de, $1171                                   ; $4ebb: $11 $71 $11
	ld   de, $1111                                   ; $4ebe: $11 $11 $11
	ld   de, $3e81                                   ; $4ec1: $11 $81 $3e

jr_0e4_4ec4:
	rst  $38                                         ; $4ec4: $ff
	rst  $38                                         ; $4ec5: $ff
	rst  $38                                         ; $4ec6: $ff
	rst  $38                                         ; $4ec7: $ff
	rst  $38                                         ; $4ec8: $ff
	rst  $38                                         ; $4ec9: $ff
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	db   $db                                         ; $4ecc: $db
	sbc  c                                           ; $4ecd: $99
	and  [hl]                                        ; $4ece: $a6
	ld   b, l                                        ; $4ecf: $45
	ld   h, c                                        ; $4ed0: $61
	ld   de, $1111                                   ; $4ed1: $11 $11 $11
	ld   de, $1111                                   ; $4ed4: $11 $11 $11
	ld   bc, $dd13                                   ; $4ed7: $01 $13 $dd
	rst  $38                                         ; $4eda: $ff
	rst  $38                                         ; $4edb: $ff
	rst  $38                                         ; $4edc: $ff
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	rst  $38                                         ; $4edf: $ff
	rst  $38                                         ; $4ee0: $ff
	cp   $85                                         ; $4ee1: $fe $85
	jp   z, $3574                                    ; $4ee3: $ca $74 $35

	ld   sp, $1111                                   ; $4ee6: $31 $11 $11
	ld   de, $1111                                   ; $4ee9: $11 $11 $11
	ld   de, $4111                                   ; $4eec: $11 $11 $41
	ld   a, [de]                                     ; $4eef: $1a
	sbc  $ff                                         ; $4ef0: $de $ff
	rst  $38                                         ; $4ef2: $ff
	rst  $38                                         ; $4ef3: $ff
	rst  $38                                         ; $4ef4: $ff
	rst  $38                                         ; $4ef5: $ff
	rst  $38                                         ; $4ef6: $ff
	xor  $eb                                         ; $4ef7: $ee $eb
	add  h                                           ; $4ef9: $84
	ld   d, [hl]                                     ; $4efa: $56
	and  l                                           ; $4efb: $a5
	ld   de, $2125                                   ; $4efc: $11 $25 $21
	ld   [de], a                                     ; $4eff: $12
	ld   [hl+], a                                    ; $4f00: $22
	ld   de, $3114                                   ; $4f01: $11 $14 $31
	ld   de, $5178                                   ; $4f04: $11 $78 $51
	ld   c, d                                        ; $4f07: $4a
	cp   $cd                                         ; $4f08: $fe $cd
	rst  $38                                         ; $4f0a: $ff
	rst  $38                                         ; $4f0b: $ff
	cp   $ff                                         ; $4f0c: $fe $ff
	db   $eb                                         ; $4f0e: $eb
	db   $fd                                         ; $4f0f: $fd
	db   $fc                                         ; $4f10: $fc
	add  a                                           ; $4f11: $87
	ld   l, d                                        ; $4f12: $6a
	add  a                                           ; $4f13: $87
	dec  [hl]                                        ; $4f14: $35
	ld   l, b                                        ; $4f15: $68
	ld   d, e                                        ; $4f16: $53
	ld   b, e                                        ; $4f17: $43
	halt                                             ; $4f18: $76
	ld   [hl-], a                                    ; $4f19: $32
	ld   h, a                                        ; $4f1a: $67
	ld   [hl], l                                     ; $4f1b: $75
	ld   b, h                                        ; $4f1c: $44
	ld   b, l                                        ; $4f1d: $45
	ld   b, l                                        ; $4f1e: $45
	inc  sp                                          ; $4f1f: $33
	ld   e, c                                        ; $4f20: $59
	ld   h, l                                        ; $4f21: $65
	xor  b                                           ; $4f22: $a8
	xor  e                                           ; $4f23: $ab
	rst  ToBoot                                         ; $4f24: $c7
	xor  h                                           ; $4f25: $ac
	sbc  $bb                                         ; $4f26: $de $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f28: $cf
	adc  $ca                                         ; $4f29: $ce $ca
	cp   h                                           ; $4f2b: $bc
	cp   c                                           ; $4f2c: $b9
	add  $98                                         ; $4f2d: $c6 $98
	ld   [hl], a                                     ; $4f2f: $77
	adc  c                                           ; $4f30: $89
	ld   a, d                                        ; $4f31: $7a
	ld   l, b                                        ; $4f32: $68
	ld   e, b                                        ; $4f33: $58
	add  [hl]                                        ; $4f34: $86
	ld   [hl], l                                     ; $4f35: $75
	ld   [hl], e                                     ; $4f36: $73
	ld   d, e                                        ; $4f37: $53
	ld   b, h                                        ; $4f38: $44
	ld   [hl], a                                     ; $4f39: $77
	ld   b, a                                        ; $4f3a: $47
	ld   e, b                                        ; $4f3b: $58
	jr   c, jr_0e4_4ec4                              ; $4f3c: $38 $86

	sbc  c                                           ; $4f3e: $99
	xor  d                                           ; $4f3f: $aa
	ret  z                                           ; $4f40: $c8

	call z, $bcbd                                    ; $4f41: $cc $bd $bc
	xor  h                                           ; $4f44: $ac
	cp   h                                           ; $4f45: $bc
	xor  e                                           ; $4f46: $ab
	sbc  d                                           ; $4f47: $9a
	jp   z, $89b8                                    ; $4f48: $ca $b8 $89

	and  [hl]                                        ; $4f4b: $a6
	ld   d, a                                        ; $4f4c: $57
	ld   h, a                                        ; $4f4d: $67
	ld   d, [hl]                                     ; $4f4e: $56
	ld   d, [hl]                                     ; $4f4f: $56
	ld   h, l                                        ; $4f50: $65
	ld   d, [hl]                                     ; $4f51: $56
	ld   l, c                                        ; $4f52: $69
	add  l                                           ; $4f53: $85
	sbc  c                                           ; $4f54: $99
	adc  e                                           ; $4f55: $8b
	sbc  b                                           ; $4f56: $98
	adc  c                                           ; $4f57: $89
	adc  e                                           ; $4f58: $8b
	sbc  c                                           ; $4f59: $99
	cp   d                                           ; $4f5a: $ba
	cp   e                                           ; $4f5b: $bb
	sbc  c                                           ; $4f5c: $99
	jp   z, $99b9                                    ; $4f5d: $ca $b9 $99

	ld   a, e                                        ; $4f60: $7b
	adc  b                                           ; $4f61: $88
	and  a                                           ; $4f62: $a7
	ld   [hl], a                                     ; $4f63: $77
	sub  [hl]                                        ; $4f64: $96
	ld   [hl], a                                     ; $4f65: $77
	halt                                             ; $4f66: $76
	ld   h, a                                        ; $4f67: $67
	adc  b                                           ; $4f68: $88
	ld   l, b                                        ; $4f69: $68
	ld   a, b                                        ; $4f6a: $78
	xor  b                                           ; $4f6b: $a8
	sbc  c                                           ; $4f6c: $99
	adc  b                                           ; $4f6d: $88
	sub  a                                           ; $4f6e: $97
	sbc  d                                           ; $4f6f: $9a
	adc  d                                           ; $4f70: $8a
	xor  b                                           ; $4f71: $a8
	sbc  e                                           ; $4f72: $9b
	sbc  c                                           ; $4f73: $99
	xor  d                                           ; $4f74: $aa
	add  a                                           ; $4f75: $87
	add  a                                           ; $4f76: $87
	sbc  c                                           ; $4f77: $99
	ld   [hl], a                                     ; $4f78: $77
	ld   [hl], a                                     ; $4f79: $77
	add  a                                           ; $4f7a: $87
	ld   a, c                                        ; $4f7b: $79
	add  [hl]                                        ; $4f7c: $86
	halt                                             ; $4f7d: $76
	ld   l, d                                        ; $4f7e: $6a
	ld   [hl], l                                     ; $4f7f: $75
	adc  b                                           ; $4f80: $88
	ld   a, b                                        ; $4f81: $78
	ld   [hl], a                                     ; $4f82: $77
	adc  b                                           ; $4f83: $88
	sbc  c                                           ; $4f84: $99
	adc  b                                           ; $4f85: $88
	sbc  c                                           ; $4f86: $99
	adc  b                                           ; $4f87: $88
	adc  b                                           ; $4f88: $88
	xor  d                                           ; $4f89: $aa
	ld   a, b                                        ; $4f8a: $78
	sub  a                                           ; $4f8b: $97
	sbc  b                                           ; $4f8c: $98
	ld   a, b                                        ; $4f8d: $78
	ld   a, c                                        ; $4f8e: $79
	and  [hl]                                        ; $4f8f: $a6
	ld   a, c                                        ; $4f90: $79
	ld   h, a                                        ; $4f91: $67
	add  a                                           ; $4f92: $87
	ld   [hl], a                                     ; $4f93: $77
	halt                                             ; $4f94: $76
	add  a                                           ; $4f95: $87
	ld   l, b                                        ; $4f96: $68
	add  a                                           ; $4f97: $87
	ld   h, a                                        ; $4f98: $67
	sbc  c                                           ; $4f99: $99
	ld   a, b                                        ; $4f9a: $78
	ld   a, b                                        ; $4f9b: $78
	cp   c                                           ; $4f9c: $b9
	ld   [hl], a                                     ; $4f9d: $77
	adc  b                                           ; $4f9e: $88
	sbc  b                                           ; $4f9f: $98
	sbc  b                                           ; $4fa0: $98
	ld   a, c                                        ; $4fa1: $79
	adc  b                                           ; $4fa2: $88
	ld   a, b                                        ; $4fa3: $78
	adc  b                                           ; $4fa4: $88
	ld   [hl], a                                     ; $4fa5: $77
	add  a                                           ; $4fa6: $87
	add  a                                           ; $4fa7: $87
	ld   [hl], a                                     ; $4fa8: $77
	ld   h, a                                        ; $4fa9: $67
	adc  c                                           ; $4faa: $89
	ld   [hl], a                                     ; $4fab: $77
	ld   [hl], a                                     ; $4fac: $77
	ld   a, b                                        ; $4fad: $78
	ld   [hl], a                                     ; $4fae: $77
	ld   h, a                                        ; $4faf: $67
	add  a                                           ; $4fb0: $87
	ld   [hl], a                                     ; $4fb1: $77
	ld   [hl], a                                     ; $4fb2: $77
	adc  b                                           ; $4fb3: $88
	add  a                                           ; $4fb4: $87
	sbc  b                                           ; $4fb5: $98
	ld   l, b                                        ; $4fb6: $68
	sub  a                                           ; $4fb7: $97
	adc  c                                           ; $4fb8: $89
	ld   [hl], a                                     ; $4fb9: $77
	sbc  b                                           ; $4fba: $98
	ld   a, c                                        ; $4fbb: $79
	ld   [hl], a                                     ; $4fbc: $77
	sbc  b                                           ; $4fbd: $98
	sbc  c                                           ; $4fbe: $99
	ld   [hl], a                                     ; $4fbf: $77
	adc  c                                           ; $4fc0: $89
	halt                                             ; $4fc1: $76
	ld   [hl], a                                     ; $4fc2: $77
	ld   a, c                                        ; $4fc3: $79
	halt                                             ; $4fc4: $76
	halt                                             ; $4fc5: $76
	ld   a, c                                        ; $4fc6: $79
	ld   [hl], a                                     ; $4fc7: $77
	sub  [hl]                                        ; $4fc8: $96
	ld   a, c                                        ; $4fc9: $79
	ld   [hl], a                                     ; $4fca: $77
	ld   [hl], a                                     ; $4fcb: $77
	adc  c                                           ; $4fcc: $89
	halt                                             ; $4fcd: $76
	adc  b                                           ; $4fce: $88
	ld   a, b                                        ; $4fcf: $78
	add  a                                           ; $4fd0: $87
	ld   a, b                                        ; $4fd1: $78
	ld   [hl], a                                     ; $4fd2: $77
	add  a                                           ; $4fd3: $87
	adc  c                                           ; $4fd4: $89
	adc  b                                           ; $4fd5: $88
	add  a                                           ; $4fd6: $87
	ld   a, b                                        ; $4fd7: $78
	adc  c                                           ; $4fd8: $89
	ld   [hl], a                                     ; $4fd9: $77
	ld   [hl], a                                     ; $4fda: $77
	sub  [hl]                                        ; $4fdb: $96
	ld   h, a                                        ; $4fdc: $67
	ld   l, b                                        ; $4fdd: $68
	add  [hl]                                        ; $4fde: $86
	ld   [hl], a                                     ; $4fdf: $77
	ld   a, b                                        ; $4fe0: $78
	halt                                             ; $4fe1: $76
	ld   a, b                                        ; $4fe2: $78
	ld   [hl], a                                     ; $4fe3: $77
	ld   [hl], a                                     ; $4fe4: $77
	sub  a                                           ; $4fe5: $97
	ld   a, b                                        ; $4fe6: $78
	ld   [hl], a                                     ; $4fe7: $77
	sbc  b                                           ; $4fe8: $98
	adc  c                                           ; $4fe9: $89
	ld   [hl], a                                     ; $4fea: $77
	adc  c                                           ; $4feb: $89
	ld   [hl], a                                     ; $4fec: $77
	ld   [hl], a                                     ; $4fed: $77
	adc  b                                           ; $4fee: $88
	ld   h, a                                        ; $4fef: $67
	sbc  b                                           ; $4ff0: $98
	ld   a, c                                        ; $4ff1: $79
	halt                                             ; $4ff2: $76
	ld   [hl], a                                     ; $4ff3: $77
	add  [hl]                                        ; $4ff4: $86
	ld   a, b                                        ; $4ff5: $78
	ld   l, c                                        ; $4ff6: $69
	add  a                                           ; $4ff7: $87
	ld   h, [hl]                                     ; $4ff8: $66
	ld   a, b                                        ; $4ff9: $78
	ld   [hl], a                                     ; $4ffa: $77
	sub  [hl]                                        ; $4ffb: $96
	adc  c                                           ; $4ffc: $89
	ld   a, b                                        ; $4ffd: $78
	halt                                             ; $4ffe: $76
	adc  c                                           ; $4fff: $89
	ld   a, b                                        ; $5000: $78
	adc  b                                           ; $5001: $88
	add  a                                           ; $5002: $87
	adc  b                                           ; $5003: $88
	ld   a, c                                        ; $5004: $79
	add  a                                           ; $5005: $87
	adc  c                                           ; $5006: $89
	add  a                                           ; $5007: $87
	adc  b                                           ; $5008: $88
	ld   a, b                                        ; $5009: $78
	ld   a, c                                        ; $500a: $79
	sub  a                                           ; $500b: $97
	ld   a, b                                        ; $500c: $78
	ld   a, b                                        ; $500d: $78
	add  a                                           ; $500e: $87
	adc  c                                           ; $500f: $89
	ld   [hl], a                                     ; $5010: $77
	sub  a                                           ; $5011: $97
	ld   a, b                                        ; $5012: $78
	adc  c                                           ; $5013: $89
	ld   [hl], a                                     ; $5014: $77
	sbc  b                                           ; $5015: $98
	ld   a, b                                        ; $5016: $78
	ld   a, b                                        ; $5017: $78
	adc  b                                           ; $5018: $88
	adc  b                                           ; $5019: $88
	add  a                                           ; $501a: $87
	add  a                                           ; $501b: $87
	adc  c                                           ; $501c: $89
	add  a                                           ; $501d: $87
	adc  b                                           ; $501e: $88
	adc  c                                           ; $501f: $89
	ld   l, b                                        ; $5020: $68
	xor  b                                           ; $5021: $a8
	add  a                                           ; $5022: $87
	adc  c                                           ; $5023: $89
	adc  c                                           ; $5024: $89
	ld   [hl], a                                     ; $5025: $77
	adc  c                                           ; $5026: $89
	adc  c                                           ; $5027: $89
	sub  a                                           ; $5028: $97
	ld   a, b                                        ; $5029: $78
	add  a                                           ; $502a: $87
	sub  a                                           ; $502b: $97
	ld   h, a                                        ; $502c: $67
	sbc  c                                           ; $502d: $99
	ld   a, b                                        ; $502e: $78
	sbc  b                                           ; $502f: $98
	adc  b                                           ; $5030: $88
	ld   a, b                                        ; $5031: $78
	xor  b                                           ; $5032: $a8
	ld   [hl], a                                     ; $5033: $77
	sbc  c                                           ; $5034: $99
	add  a                                           ; $5035: $87
	ld   [hl], a                                     ; $5036: $77
	ld   a, c                                        ; $5037: $79
	adc  b                                           ; $5038: $88
	ld   a, c                                        ; $5039: $79
	add  a                                           ; $503a: $87
	add  a                                           ; $503b: $87
	sbc  c                                           ; $503c: $99
	ld   a, c                                        ; $503d: $79
	sub  [hl]                                        ; $503e: $96
	sbc  e                                           ; $503f: $9b
	xor  e                                           ; $5040: $ab
	and  a                                           ; $5041: $a7
	ld   a, d                                        ; $5042: $7a
	ld   [hl], a                                     ; $5043: $77
	add  a                                           ; $5044: $87
	add  [hl]                                        ; $5045: $86
	ld   [hl], a                                     ; $5046: $77
	ld   d, [hl]                                     ; $5047: $56
	ld   a, b                                        ; $5048: $78
	sbc  b                                           ; $5049: $98
	ld   [hl], a                                     ; $504a: $77
	sbc  b                                           ; $504b: $98
	adc  b                                           ; $504c: $88
	xor  d                                           ; $504d: $aa
	sub  [hl]                                        ; $504e: $96
	ld   [hl], a                                     ; $504f: $77
	ld   a, b                                        ; $5050: $78
	ld   [hl], a                                     ; $5051: $77
	halt                                             ; $5052: $76
	adc  d                                           ; $5053: $8a
	ld   h, [hl]                                     ; $5054: $66
	sbc  b                                           ; $5055: $98
	add  a                                           ; $5056: $87
	adc  d                                           ; $5057: $8a
	sub  a                                           ; $5058: $97
	ld   l, c                                        ; $5059: $69
	sbc  b                                           ; $505a: $98
	halt                                             ; $505b: $76
	adc  b                                           ; $505c: $88
	sbc  c                                           ; $505d: $99
	add  a                                           ; $505e: $87
	ld   l, b                                        ; $505f: $68
	adc  c                                           ; $5060: $89
	ld   h, [hl]                                     ; $5061: $66
	adc  b                                           ; $5062: $88
	add  a                                           ; $5063: $87
	ld   [hl], a                                     ; $5064: $77
	add  a                                           ; $5065: $87
	adc  c                                           ; $5066: $89
	ld   l, d                                        ; $5067: $6a
	adc  b                                           ; $5068: $88
	add  [hl]                                        ; $5069: $86
	ld   h, a                                        ; $506a: $67
	adc  b                                           ; $506b: $88
	add  a                                           ; $506c: $87
	adc  c                                           ; $506d: $89
	sbc  b                                           ; $506e: $98
	ld   [hl], a                                     ; $506f: $77
	ld   h, a                                        ; $5070: $67
	adc  c                                           ; $5071: $89
	halt                                             ; $5072: $76
	add  a                                           ; $5073: $87
	sub  a                                           ; $5074: $97
	ld   l, b                                        ; $5075: $68
	ld   [hl], a                                     ; $5076: $77
	xor  e                                           ; $5077: $ab
	xor  e                                           ; $5078: $ab
	db   $db                                         ; $5079: $db
	adc  c                                           ; $507a: $89
	add  e                                           ; $507b: $83
	ld   d, [hl]                                     ; $507c: $56
	adc  c                                           ; $507d: $89
	dec  [hl]                                        ; $507e: $35
	ld   [hl], $99                                   ; $507f: $36 $99
	or   h                                           ; $5081: $b4
	adc  h                                           ; $5082: $8c
	cp   h                                           ; $5083: $bc
	ld   [hl], l                                     ; $5084: $75
	xor  e                                           ; $5085: $ab
	sbc  e                                           ; $5086: $9b
	ld   h, l                                        ; $5087: $65
	ld   a, d                                        ; $5088: $7a
	ld   [hl], a                                     ; $5089: $77
	sbc  c                                           ; $508a: $99
	ld   [hl], h                                     ; $508b: $74
	xor  e                                           ; $508c: $ab
	sub  l                                           ; $508d: $95
	ld   e, c                                        ; $508e: $59
	sbc  c                                           ; $508f: $99
	inc  hl                                          ; $5090: $23
	ld   d, $f7                                      ; $5091: $16 $f7
	ld   b, d                                        ; $5093: $42
	ld   l, l                                        ; $5094: $6d
	ld   [$9e36], a                                  ; $5095: $ea $36 $9e
	call nz, Call_0e4_5b11                           ; $5098: $c4 $11 $5b
	jp   nz, $d914                                   ; $509b: $c2 $14 $d9

	ld   c, d                                        ; $509e: $4a
	xor  b                                           ; $509f: $a8
	add  hl, sp                                      ; $50a0: $39
	jp   hl                                          ; $50a1: $e9


	ld   b, e                                        ; $50a2: $43
	sbc  h                                           ; $50a3: $9c
	ld   h, d                                        ; $50a4: $62
	ld   a, c                                        ; $50a5: $79
	sbc  h                                           ; $50a6: $9c
	sub  a                                           ; $50a7: $97
	ld   a, [hl]                                     ; $50a8: $7e
	ld   a, [$8f75]                                  ; $50a9: $fa $75 $8f
	ret  z                                           ; $50ac: $c8

	ld   l, d                                        ; $50ad: $6a
	reti                                             ; $50ae: $d9


	sbc  c                                           ; $50af: $99
	db   $ec                                         ; $50b0: $ec
	adc  b                                           ; $50b1: $88
	ld   b, e                                        ; $50b2: $43
	ld   l, c                                        ; $50b3: $69
	ld   sp, $1111                                   ; $50b4: $31 $11 $11
	ld   de, $4115                                   ; $50b7: $11 $15 $41
	ld   e, a                                        ; $50ba: $5f
	sub  [hl]                                        ; $50bb: $96
	rst  $38                                         ; $50bc: $ff

jr_0e4_50bd:
	ld   a, [$ffff]                                  ; $50bd: $fa $ff $ff
	rst  $30                                         ; $50c0: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50c1: $cf
	push af                                          ; $50c2: $f5
	rst  $38                                         ; $50c3: $ff
	cp   a                                           ; $50c4: $bf
	db   $fc                                         ; $50c5: $fc
	jr   jr_0e4_50bd                                 ; $50c6: $18 $f5

	ld   de, $1111                                   ; $50c8: $11 $11 $11
	ld   de, $1111                                   ; $50cb: $11 $11 $11
	ld   de, $ffff                                   ; $50ce: $11 $ff $ff
	rst  $38                                         ; $50d1: $ff
	rst  $38                                         ; $50d2: $ff
	rst  $38                                         ; $50d3: $ff
	xor  a                                           ; $50d4: $af
	rst  $38                                         ; $50d5: $ff
	cp   c                                           ; $50d6: $b9
	rst  JumpTable                                         ; $50d7: $df
	rst  $38                                         ; $50d8: $ff
	cp   a                                           ; $50d9: $bf
	rst  $38                                         ; $50da: $ff
	pop  af                                          ; $50db: $f1
	inc  d                                           ; $50dc: $14
	ld   h, c                                        ; $50dd: $61
	ld   de, $1111                                   ; $50de: $11 $11 $11
	ld   de, $f311                                   ; $50e1: $11 $11 $f3
	rra                                              ; $50e4: $1f
	rst  $38                                         ; $50e5: $ff
	rst  $38                                         ; $50e6: $ff
	rst  $38                                         ; $50e7: $ff
	rst  $38                                         ; $50e8: $ff
	rst  $38                                         ; $50e9: $ff
	rst  $38                                         ; $50ea: $ff
	rst  $38                                         ; $50eb: $ff
	rst  $38                                         ; $50ec: $ff
	rst  $38                                         ; $50ed: $ff
	rst  $30                                         ; $50ee: $f7
	xor  a                                           ; $50ef: $af
	sub  c                                           ; $50f0: $91
	ld   [de], a                                     ; $50f1: $12
	ld   de, $1111                                   ; $50f2: $11 $11 $11
	ld   de, $b111                                   ; $50f5: $11 $11 $b1
	ld   de, $ffff                                   ; $50f8: $11 $ff $ff
	ld   c, a                                        ; $50fb: $4f
	rst  $38                                         ; $50fc: $ff
	cp   $ff                                         ; $50fd: $fe $ff
	rst  $38                                         ; $50ff: $ff
	db   $fc                                         ; $5100: $fc
	rst  JumpTable                                         ; $5101: $df
	cp   $fc                                         ; $5102: $fe $fc
	sbc  a                                           ; $5104: $9f
	ld   b, c                                        ; $5105: $41
	ld   de, $1111                                   ; $5106: $11 $11 $11
	ld   de, $1111                                   ; $5109: $11 $11 $11
	ld   de, $4fd1                                   ; $510c: $11 $d1 $4f
	rst  $28                                         ; $510f: $ef
	rst  $38                                         ; $5110: $ff
	rst  $38                                         ; $5111: $ff
	rst  $38                                         ; $5112: $ff
	ei                                               ; $5113: $fb
	rst  $38                                         ; $5114: $ff
	rst  $38                                         ; $5115: $ff
	rst  $38                                         ; $5116: $ff
	rst  $38                                         ; $5117: $ff
	rst  $38                                         ; $5118: $ff
	ld   de, $1145                                   ; $5119: $11 $45 $11
	ld   de, $1111                                   ; $511c: $11 $11 $11
	ld   de, $1111                                   ; $511f: $11 $11 $11
	dec  l                                           ; $5122: $2d
	cp   $ff                                         ; $5123: $fe $ff
	rst  $28                                         ; $5125: $ef
	rst  $38                                         ; $5126: $ff
	ei                                               ; $5127: $fb
	rst  $38                                         ; $5128: $ff
	rst  $38                                         ; $5129: $ff
	rst  $38                                         ; $512a: $ff
	rst  $38                                         ; $512b: $ff
	rst  $38                                         ; $512c: $ff
	cp   $c1                                         ; $512d: $fe $c1
	ld   b, [hl]                                     ; $512f: $46
	ld   de, $1111                                   ; $5130: $11 $11 $11
	ld   de, $1111                                   ; $5133: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5136: $11 $11 $ff
	rrca                                             ; $5139: $0f
	rst  $38                                         ; $513a: $ff
	rst  $38                                         ; $513b: $ff
	rst  $38                                         ; $513c: $ff
	rst  $38                                         ; $513d: $ff
	rst  $38                                         ; $513e: $ff
	rst  $38                                         ; $513f: $ff
	rst  $38                                         ; $5140: $ff
	rst  $38                                         ; $5141: $ff
	rst  $38                                         ; $5142: $ff
	ld   h, c                                        ; $5143: $61
	inc  a                                           ; $5144: $3c
	ld   de, $1111                                   ; $5145: $11 $11 $11
	ld   de, $1111                                   ; $5148: $11 $11 $11
	ld   de, $6811                                   ; $514b: $11 $11 $68
	rst  $38                                         ; $514e: $ff
	rst  $30                                         ; $514f: $f7
	rst  $38                                         ; $5150: $ff
	rst  $38                                         ; $5151: $ff
	rst  $38                                         ; $5152: $ff
	rst  $38                                         ; $5153: $ff
	rst  $38                                         ; $5154: $ff
	rst  $38                                         ; $5155: $ff
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	ld   b, c                                        ; $5158: $41
	ld   h, $11                                      ; $5159: $26 $11
	ld   de, $1111                                   ; $515b: $11 $11 $11
	ld   de, $1111                                   ; $515e: $11 $11 $11
	ld   de, $feaf                                   ; $5161: $11 $af $fe
	sbc  a                                           ; $5164: $9f
	rst  $38                                         ; $5165: $ff
	rst  $38                                         ; $5166: $ff
	rst  $38                                         ; $5167: $ff
	rst  $38                                         ; $5168: $ff
	rst  $38                                         ; $5169: $ff
	rst  $38                                         ; $516a: $ff
	rst  $38                                         ; $516b: $ff
	ld   a, [$9121]                                  ; $516c: $fa $21 $91
	ld   de, $1111                                   ; $516f: $11 $11 $11
	ld   de, $1111                                   ; $5172: $11 $11 $11
	ld   de, $7f15                                   ; $5175: $11 $15 $7f
	rst  $38                                         ; $5178: $ff
	rst  $38                                         ; $5179: $ff
	rst  $38                                         ; $517a: $ff
	rst  $38                                         ; $517b: $ff
	rst  $38                                         ; $517c: $ff
	rst  $38                                         ; $517d: $ff
	rst  $38                                         ; $517e: $ff
	rst  $38                                         ; $517f: $ff
	rst  $38                                         ; $5180: $ff
	ret                                              ; $5181: $c9


	ld   sp, $1161                                   ; $5182: $31 $61 $11
	ld   de, $1111                                   ; $5185: $11 $11 $11
	ld   de, $1111                                   ; $5188: $11 $11 $11
	ld   de, sRandomSeed                                   ; $518b: $11 $ff $bf
	rst  $38                                         ; $518e: $ff
	rst  $38                                         ; $518f: $ff
	rst  $38                                         ; $5190: $ff
	rst  $38                                         ; $5191: $ff
	rst  $38                                         ; $5192: $ff
	rst  $38                                         ; $5193: $ff
	rst  $38                                         ; $5194: $ff
	rst  $38                                         ; $5195: $ff
	ld   sp, hl                                      ; $5196: $f9
	or   c                                           ; $5197: $b1
	ld   de, $1111                                   ; $5198: $11 $11 $11
	ld   de, $1111                                   ; $519b: $11 $11 $11
	ld   de, $1411                                   ; $519e: $11 $11 $14
	rst  $38                                         ; $51a1: $ff
	rst  $38                                         ; $51a2: $ff
	rst  $38                                         ; $51a3: $ff
	rst  $38                                         ; $51a4: $ff
	rst  $38                                         ; $51a5: $ff
	rst  $38                                         ; $51a6: $ff
	rst  $38                                         ; $51a7: $ff
	rst  $38                                         ; $51a8: $ff
	rst  $38                                         ; $51a9: $ff
	rst  $38                                         ; $51aa: $ff
	ei                                               ; $51ab: $fb
	inc  hl                                          ; $51ac: $23
	ld   d, c                                        ; $51ad: $51
	ld   de, $1111                                   ; $51ae: $11 $11 $11
	ld   de, $1111                                   ; $51b1: $11 $11 $11
	ld   de, $bf15                                   ; $51b4: $11 $15 $bf
	rst  $38                                         ; $51b7: $ff
	rst  $38                                         ; $51b8: $ff
	rst  $38                                         ; $51b9: $ff

Jump_0e4_51ba:
	rst  $38                                         ; $51ba: $ff
	rst  $38                                         ; $51bb: $ff
	rst  $38                                         ; $51bc: $ff
	rst  $38                                         ; $51bd: $ff
	rst  $38                                         ; $51be: $ff
	rst  $38                                         ; $51bf: $ff
	ld   a, [$69fb]                                  ; $51c0: $fa $fb $69
	ld   b, d                                        ; $51c3: $42
	ld   hl, $1111                                   ; $51c4: $21 $11 $11
	ld   de, $1111                                   ; $51c7: $11 $11 $11
	ld   de, $1311                                   ; $51ca: $11 $11 $13
	ld   a, e                                        ; $51cd: $7b
	adc  $ff                                         ; $51ce: $ce $ff
	rst  $38                                         ; $51d0: $ff
	rst  $38                                         ; $51d1: $ff
	rst  $38                                         ; $51d2: $ff
	rst  $38                                         ; $51d3: $ff
	rst  $38                                         ; $51d4: $ff
	rst  $38                                         ; $51d5: $ff
	rst  $38                                         ; $51d6: $ff
	rst  $38                                         ; $51d7: $ff
	ld   [$1153], a                                  ; $51d8: $ea $53 $11
	ld   de, $1111                                   ; $51db: $11 $11 $11
	ld   de, $1111                                   ; $51de: $11 $11 $11
	ld   de, $2411                                   ; $51e1: $11 $11 $24
	ld   a, h                                        ; $51e4: $7c
	rst  $38                                         ; $51e5: $ff
	rst  $38                                         ; $51e6: $ff
	rst  $38                                         ; $51e7: $ff
	rst  $38                                         ; $51e8: $ff
	rst  $38                                         ; $51e9: $ff
	rst  $38                                         ; $51ea: $ff
	rst  $38                                         ; $51eb: $ff
	rst  $38                                         ; $51ec: $ff
	rst  $38                                         ; $51ed: $ff
	ret  c                                           ; $51ee: $d8

	ld   d, e                                        ; $51ef: $53
	ld   de, $1111                                   ; $51f0: $11 $11 $11
	ld   de, $1111                                   ; $51f3: $11 $11 $11
	ld   de, $1111                                   ; $51f6: $11 $11 $11
	ld   [de], a                                     ; $51f9: $12
	ld   l, c                                        ; $51fa: $69
	rst  $28                                         ; $51fb: $ef
	rst  $38                                         ; $51fc: $ff
	rst  $38                                         ; $51fd: $ff
	rst  $38                                         ; $51fe: $ff
	rst  $38                                         ; $51ff: $ff
	rst  $38                                         ; $5200: $ff
	rst  $38                                         ; $5201: $ff
	rst  $38                                         ; $5202: $ff
	rst  $38                                         ; $5203: $ff
	jp   c, $1184                                    ; $5204: $da $84 $11

	ld   de, $1111                                   ; $5207: $11 $11 $11
	ld   de, $1111                                   ; $520a: $11 $11 $11
	ld   de, $1111                                   ; $520d: $11 $11 $11
	ld   b, a                                        ; $5210: $47
	cp   [hl]                                        ; $5211: $be
	rst  $38                                         ; $5212: $ff
	rst  $38                                         ; $5213: $ff
	rst  $38                                         ; $5214: $ff
	rst  $38                                         ; $5215: $ff
	rst  $38                                         ; $5216: $ff
	rst  $38                                         ; $5217: $ff
	rst  $38                                         ; $5218: $ff
	rst  $38                                         ; $5219: $ff
	cp   $b7                                         ; $521a: $fe $b7
	ld   b, c                                        ; $521c: $41
	ld   de, $1111                                   ; $521d: $11 $11 $11
	ld   de, $1111                                   ; $5220: $11 $11 $11
	ld   de, $1111                                   ; $5223: $11 $11 $11
	inc  [hl]                                        ; $5226: $34
	adc  l                                           ; $5227: $8d
	rst  $38                                         ; $5228: $ff
	rst  $38                                         ; $5229: $ff
	rst  $38                                         ; $522a: $ff
	rst  $38                                         ; $522b: $ff
	rst  $38                                         ; $522c: $ff
	rst  $38                                         ; $522d: $ff
	rst  $38                                         ; $522e: $ff
	rst  $38                                         ; $522f: $ff
	cp   $c9                                         ; $5230: $fe $c9
	ld   d, d                                        ; $5232: $52
	ld   de, $1111                                   ; $5233: $11 $11 $11
	ld   de, $1111                                   ; $5236: $11 $11 $11
	ld   de, $1111                                   ; $5239: $11 $11 $11
	ld   h, $8d                                      ; $523c: $26 $8d
	rst  $38                                         ; $523e: $ff
	rst  $38                                         ; $523f: $ff
	rst  $38                                         ; $5240: $ff
	rst  $38                                         ; $5241: $ff
	rst  $38                                         ; $5242: $ff
	rst  $38                                         ; $5243: $ff
	rst  $38                                         ; $5244: $ff
	rst  $38                                         ; $5245: $ff
	rst  $38                                         ; $5246: $ff
	jp   c, $1164                                    ; $5247: $da $64 $11

	ld   de, $1111                                   ; $524a: $11 $11 $11
	ld   de, $1111                                   ; $524d: $11 $11 $11
	ld   de, $5511                                   ; $5250: $11 $11 $55
	sbc  l                                           ; $5253: $9d
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	rst  $38                                         ; $5256: $ff
	rst  $38                                         ; $5257: $ff
	rst  $38                                         ; $5258: $ff
	rst  $38                                         ; $5259: $ff
	rst  $38                                         ; $525a: $ff
	rst  $38                                         ; $525b: $ff
	rst  $38                                         ; $525c: $ff
	db   $db                                         ; $525d: $db
	ld   [hl], l                                     ; $525e: $75
	ld   hl, $1111                                   ; $525f: $21 $11 $11
	ld   de, $1111                                   ; $5262: $11 $11 $11
	ld   de, $1411                                   ; $5265: $11 $11 $14
	sbc  e                                           ; $5268: $9b
	rst  JumpTable                                         ; $5269: $df
	rst  $38                                         ; $526a: $ff
	rst  $38                                         ; $526b: $ff
	rst  $38                                         ; $526c: $ff
	rst  $38                                         ; $526d: $ff
	rst  $38                                         ; $526e: $ff
	rst  $38                                         ; $526f: $ff
	rst  $38                                         ; $5270: $ff
	rst  $38                                         ; $5271: $ff
	rst  $38                                         ; $5272: $ff
	ld   [$1153], a                                  ; $5273: $ea $53 $11
	ld   de, $1111                                   ; $5276: $11 $11 $11
	ld   de, $1111                                   ; $5279: $11 $11 $11
	jr   @+$01                                       ; $527c: $18 $ff

	rst  $38                                         ; $527e: $ff
	rst  $38                                         ; $527f: $ff
	rst  $38                                         ; $5280: $ff
	rst  $38                                         ; $5281: $ff
	rst  $38                                         ; $5282: $ff
	rst  $38                                         ; $5283: $ff
	rst  $38                                         ; $5284: $ff
	rst  $38                                         ; $5285: $ff
	rst  $38                                         ; $5286: $ff
	db   $db                                         ; $5287: $db
	or   h                                           ; $5288: $b4
	ld   de, $1111                                   ; $5289: $11 $11 $11
	ld   de, $1111                                   ; $528c: $11 $11 $11
	ld   de, $9f12                                   ; $528f: $11 $12 $9f
	rst  $38                                         ; $5292: $ff
	rst  $38                                         ; $5293: $ff
	rst  $38                                         ; $5294: $ff
	rst  $38                                         ; $5295: $ff
	rst  $38                                         ; $5296: $ff
	rst  $38                                         ; $5297: $ff
	rst  $38                                         ; $5298: $ff
	rst  $38                                         ; $5299: $ff
	rst  $38                                         ; $529a: $ff
	ld   a, [$1181]                                  ; $529b: $fa $81 $11
	ld   de, $1111                                   ; $529e: $11 $11 $11
	ld   de, $1111                                   ; $52a1: $11 $11 $11
	ld   de, $ff1c                                   ; $52a4: $11 $1c $ff
	rst  $38                                         ; $52a7: $ff
	rst  $38                                         ; $52a8: $ff
	rst  $38                                         ; $52a9: $ff
	rst  $38                                         ; $52aa: $ff
	rst  $38                                         ; $52ab: $ff
	rst  $38                                         ; $52ac: $ff
	rst  $38                                         ; $52ad: $ff
	rst  $38                                         ; $52ae: $ff
	rst  $38                                         ; $52af: $ff
	sub  l                                           ; $52b0: $95
	ld   d, c                                        ; $52b1: $51
	ld   de, $1111                                   ; $52b2: $11 $11 $11
	ld   de, $1111                                   ; $52b5: $11 $11 $11
	ld   de, $af11                                   ; $52b8: $11 $11 $af
	rst  $38                                         ; $52bb: $ff
	rst  $38                                         ; $52bc: $ff
	rst  $38                                         ; $52bd: $ff
	rst  $38                                         ; $52be: $ff
	rst  $38                                         ; $52bf: $ff
	rst  $38                                         ; $52c0: $ff
	rst  $38                                         ; $52c1: $ff
	rst  $38                                         ; $52c2: $ff
	rst  $38                                         ; $52c3: $ff
	ld   sp, hl                                      ; $52c4: $f9
	inc  d                                           ; $52c5: $14
	ld   d, c                                        ; $52c6: $51
	ld   de, $1111                                   ; $52c7: $11 $11 $11
	ld   de, $1111                                   ; $52ca: $11 $11 $11
	ld   de, $ff7f                                   ; $52cd: $11 $7f $ff
	rst  $38                                         ; $52d0: $ff
	rst  $38                                         ; $52d1: $ff
	rst  $38                                         ; $52d2: $ff
	rst  $38                                         ; $52d3: $ff
	rst  $38                                         ; $52d4: $ff
	rst  $38                                         ; $52d5: $ff
	rst  $38                                         ; $52d6: $ff
	rst  $38                                         ; $52d7: $ff
	db   $f4                                         ; $52d8: $f4
	ld   [hl], a                                     ; $52d9: $77
	ld   de, $1111                                   ; $52da: $11 $11 $11
	ld   de, $1111                                   ; $52dd: $11 $11 $11
	ld   de, $1e11                                   ; $52e0: $11 $11 $1e
	rst  $38                                         ; $52e3: $ff
	rst  $38                                         ; $52e4: $ff
	rst  $38                                         ; $52e5: $ff
	rst  $38                                         ; $52e6: $ff
	rst  $38                                         ; $52e7: $ff
	rst  $38                                         ; $52e8: $ff
	rst  $38                                         ; $52e9: $ff
	rst  $38                                         ; $52ea: $ff
	rst  $38                                         ; $52eb: $ff
	rst  $38                                         ; $52ec: $ff
	di                                               ; $52ed: $f3
	ld   de, $1111                                   ; $52ee: $11 $11 $11
	ld   de, $1111                                   ; $52f1: $11 $11 $11
	ld   de, $1111                                   ; $52f4: $11 $11 $11
	rst  $28                                         ; $52f7: $ef
	rst  $38                                         ; $52f8: $ff
	db   $fd                                         ; $52f9: $fd
	adc  a                                           ; $52fa: $8f
	rst  $38                                         ; $52fb: $ff
	rst  $38                                         ; $52fc: $ff
	rst  $38                                         ; $52fd: $ff
	rst  $38                                         ; $52fe: $ff
	rst  $38                                         ; $52ff: $ff
	rst  $38                                         ; $5300: $ff
	rst  $28                                         ; $5301: $ef
	ld   h, c                                        ; $5302: $61
	ld   hl, $1111                                   ; $5303: $21 $11 $11
	ld   de, $1111                                   ; $5306: $11 $11 $11
	ld   de, $1411                                   ; $5309: $11 $11 $14
	rst  $38                                         ; $530c: $ff
	rst  $38                                         ; $530d: $ff
	rst  $38                                         ; $530e: $ff
	rst  $38                                         ; $530f: $ff
	rst  $38                                         ; $5310: $ff
	rst  $38                                         ; $5311: $ff
	rst  $38                                         ; $5312: $ff
	rst  $38                                         ; $5313: $ff
	rst  $38                                         ; $5314: $ff
	rst  $38                                         ; $5315: $ff
	sbc  l                                           ; $5316: $9d
	ld   h, c                                        ; $5317: $61
	ld   de, $1111                                   ; $5318: $11 $11 $11
	ld   de, $1111                                   ; $531b: $11 $11 $11
	ld   de, $c511                                   ; $531e: $11 $11 $c5
	rst  $38                                         ; $5321: $ff
	rst  $38                                         ; $5322: $ff
	pop  af                                          ; $5323: $f1
	rst  $38                                         ; $5324: $ff
	rst  $38                                         ; $5325: $ff
	rst  $38                                         ; $5326: $ff
	rst  $38                                         ; $5327: $ff
	rst  $38                                         ; $5328: $ff
	rst  $38                                         ; $5329: $ff
	db   $fd                                         ; $532a: $fd
	and  [hl]                                        ; $532b: $a6
	ld   de, $1111                                   ; $532c: $11 $11 $11
	ld   de, $1111                                   ; $532f: $11 $11 $11
	ld   de, $1111                                   ; $5332: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5335: $cf
	rst  $38                                         ; $5336: $ff
	push af                                          ; $5337: $f5
	xor  a                                           ; $5338: $af
	rst  $38                                         ; $5339: $ff
	rst  $38                                         ; $533a: $ff
	rst  $38                                         ; $533b: $ff
	rst  $38                                         ; $533c: $ff
	rst  $38                                         ; $533d: $ff
	rst  $38                                         ; $533e: $ff
	rst  $38                                         ; $533f: $ff
	ld   sp, $1131                                   ; $5340: $31 $31 $11
	ld   de, $1111                                   ; $5343: $11 $11 $11
	ld   de, $1111                                   ; $5346: $11 $11 $11
	ld   de, $ffef                                   ; $5349: $11 $ef $ff
	ld   sp, hl                                      ; $534c: $f9
	ld   e, a                                        ; $534d: $5f
	rst  $38                                         ; $534e: $ff
	rst  $38                                         ; $534f: $ff
	rst  $38                                         ; $5350: $ff
	rst  $38                                         ; $5351: $ff
	rst  $38                                         ; $5352: $ff
	rst  $38                                         ; $5353: $ff
	rst  $38                                         ; $5354: $ff
	pop  hl                                          ; $5355: $e1
	ld   de, $1111                                   ; $5356: $11 $11 $11
	ld   de, $1111                                   ; $5359: $11 $11 $11
	ld   de, $1511                                   ; $535c: $11 $11 $15
	add  sp, -$21                                    ; $535f: $e8 $df
	rst  $38                                         ; $5361: $ff
	rst  $38                                         ; $5362: $ff
	rst  $38                                         ; $5363: $ff
	rst  $38                                         ; $5364: $ff
	rst  $38                                         ; $5365: $ff
	rst  $38                                         ; $5366: $ff
	rst  $38                                         ; $5367: $ff
	rst  $38                                         ; $5368: $ff
	rst  $38                                         ; $5369: $ff
	db   $f4                                         ; $536a: $f4
	ld   de, $1111                                   ; $536b: $11 $11 $11
	ld   de, $1111                                   ; $536e: $11 $11 $11
	ld   de, $1211                                   ; $5371: $11 $11 $12
	db   $fd                                         ; $5374: $fd
	ld   c, a                                        ; $5375: $4f
	rst  $38                                         ; $5376: $ff
	rst  $38                                         ; $5377: $ff
	rst  $38                                         ; $5378: $ff
	rst  $38                                         ; $5379: $ff
	rst  $38                                         ; $537a: $ff
	rst  $38                                         ; $537b: $ff
	rst  $38                                         ; $537c: $ff
	rst  $38                                         ; $537d: $ff
	cp   $58                                         ; $537e: $fe $58
	ld   hl, $1111                                   ; $5380: $21 $11 $11
	ld   de, $1111                                   ; $5383: $11 $11 $11
	ld   de, $1132                                   ; $5386: $11 $32 $11
	ld   l, b                                        ; $5389: $68
	ld   b, e                                        ; $538a: $43
	rst  $38                                         ; $538b: $ff
	rst  $38                                         ; $538c: $ff
	rst  $38                                         ; $538d: $ff
	rst  $38                                         ; $538e: $ff
	rst  $38                                         ; $538f: $ff
	rst  $38                                         ; $5390: $ff
	rst  $38                                         ; $5391: $ff
	rst  $38                                         ; $5392: $ff
	rst  $28                                         ; $5393: $ef
	or   c                                           ; $5394: $b1
	ld   de, $1114                                   ; $5395: $11 $14 $11
	ld   de, $1211                                   ; $5398: $11 $11 $12
	ld   h, c                                        ; $539b: $61
	inc  d                                           ; $539c: $14
	ld   [hl-], a                                    ; $539d: $32
	ld   h, c                                        ; $539e: $61
	ld   l, [hl]                                     ; $539f: $6e
	rst  $38                                         ; $53a0: $ff
	rst  $38                                         ; $53a1: $ff
	cp   $ff                                         ; $53a2: $fe $ff
	rst  $38                                         ; $53a4: $ff
	rst  $38                                         ; $53a5: $ff
	rst  $38                                         ; $53a6: $ff
	rst  $38                                         ; $53a7: $ff
	and  $41                                         ; $53a8: $e6 $41
	ld   de, $1111                                   ; $53aa: $11 $11 $11
	ld   de, $8911                                   ; $53ad: $11 $11 $89
	ld   h, c                                        ; $53b0: $61
	ld   de, $7541                                   ; $53b1: $11 $41 $75
	ld   l, a                                        ; $53b4: $6f
	rst  $38                                         ; $53b5: $ff
	db   $fd                                         ; $53b6: $fd
	rst  $38                                         ; $53b7: $ff
	rst  JumpTable                                         ; $53b8: $df
	rst  $38                                         ; $53b9: $ff
	rst  $38                                         ; $53ba: $ff
	rst  $38                                         ; $53bb: $ff
	rst  $38                                         ; $53bc: $ff
	or   c                                           ; $53bd: $b1
	ld   de, $1111                                   ; $53be: $11 $11 $11
	ld   de, $8d13                                   ; $53c1: $11 $13 $8d
	ld   [hl], c                                     ; $53c4: $71
	ld   de, $2711                                   ; $53c5: $11 $11 $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53c8: $cf
	rst  $38                                         ; $53c9: $ff
	rst  $38                                         ; $53ca: $ff
	cp   $ff                                         ; $53cb: $fe $ff
	rst  $38                                         ; $53cd: $ff
	rst  $28                                         ; $53ce: $ef
	rst  $38                                         ; $53cf: $ff
	rst  $38                                         ; $53d0: $ff
	ld   a, [$1111]                                  ; $53d1: $fa $11 $11
	ld   de, $4f11                                   ; $53d4: $11 $11 $4f
	db   $fc                                         ; $53d7: $fc
	ld   h, c                                        ; $53d8: $61
	ld   de, $1311                                   ; $53d9: $11 $11 $13

Call_0e4_53dc:
	rst  JumpTable                                         ; $53dc: $df
	rst  $38                                         ; $53dd: $ff
	rst  $38                                         ; $53de: $ff
	db   $db                                         ; $53df: $db
	xor  a                                           ; $53e0: $af
	cp   $fe                                         ; $53e1: $fe $fe
	rst  $38                                         ; $53e3: $ff
	rst  $38                                         ; $53e4: $ff
	ei                                               ; $53e5: $fb
	ld   h, c                                        ; $53e6: $61
	ld   de, $1111                                   ; $53e7: $11 $11 $11
	ld   e, a                                        ; $53ea: $5f
	rst  $38                                         ; $53eb: $ff
	sub  c                                           ; $53ec: $91
	ld   de, $1411                                   ; $53ed: $11 $11 $14
	cp   a                                           ; $53f0: $bf
	rst  $38                                         ; $53f1: $ff
	rst  $38                                         ; $53f2: $ff
	sub  [hl]                                        ; $53f3: $96
	adc  c                                           ; $53f4: $89
	db   $ed                                         ; $53f5: $ed
	rst  $28                                         ; $53f6: $ef
	rst  $38                                         ; $53f7: $ff
	rst  $38                                         ; $53f8: $ff
	ld   sp, hl                                      ; $53f9: $f9
	add  [hl]                                        ; $53fa: $86
	ld   d, h                                        ; $53fb: $54
	ld   de, $1111                                   ; $53fc: $11 $11 $11
	ld   a, [hl+]                                    ; $53ff: $2a
	rst  $38                                         ; $5400: $ff
	or   h                                           ; $5401: $b4
	ld   de, $1111                                   ; $5402: $11 $11 $11
	ld   a, l                                        ; $5405: $7d
	rst  $38                                         ; $5406: $ff
	rst  $38                                         ; $5407: $ff
	ret                                              ; $5408: $c9


	cp   h                                           ; $5409: $bc
	call $dfbc                                       ; $540a: $cd $bc $df
	rst  $38                                         ; $540d: $ff
	ld   [$7878], a                                  ; $540e: $ea $78 $78
	sbc  c                                           ; $5411: $99
	xor  d                                           ; $5412: $aa
	xor  b                                           ; $5413: $a8
	ld   sp, $1111                                   ; $5414: $31 $11 $11
	ld   de, $ffdf                                   ; $5417: $11 $df $ff
	pop  de                                          ; $541a: $d1
	ld   de, $1813                                   ; $541b: $11 $13 $18
	rst  $38                                         ; $541e: $ff
	rst  $38                                         ; $541f: $ff
	rst  $30                                         ; $5420: $f7
	ld   de, $ec29                                   ; $5421: $11 $29 $ec
	xor  c                                           ; $5424: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5425: $cf
	jp   c, $1131                                    ; $5426: $da $31 $11

	ld   a, e                                        ; $5429: $7b
	xor  b                                           ; $542a: $a8
	ld   h, [hl]                                     ; $542b: $66
	adc  c                                           ; $542c: $89
	ld   h, d                                        ; $542d: $62
	ld   de, $df39                                   ; $542e: $11 $39 $df
	db   $fd                                         ; $5431: $fd
	set  3, e                                        ; $5432: $cb $db
	ld   h, l                                        ; $5434: $65
	ld   b, a                                        ; $5435: $47
	rst  JumpTable                                         ; $5436: $df
	cp   $b8                                         ; $5437: $fe $b8
	ld   d, [hl]                                     ; $5439: $56
	ld   d, l                                        ; $543a: $55
	ld   d, l                                        ; $543b: $55
	ld   a, d                                        ; $543c: $7a
	db   $dd                                         ; $543d: $dd
	add  h                                           ; $543e: $84
	ld   de, $5225                                   ; $543f: $11 $25 $52
	ld   de, $ff2f                                   ; $5442: $11 $2f $ff
	ldh  [c], a                                      ; $5445: $e2
	ld   de, $686d                                   ; $5446: $11 $6d $68
	adc  d                                           ; $5449: $8a
	rst  $38                                         ; $544a: $ff
	ei                                               ; $544b: $fb
	ld   de, $dc25                                   ; $544c: $11 $25 $dc
	or   a                                           ; $544f: $b7
	ld   a, e                                        ; $5450: $7b
	xor  d                                           ; $5451: $aa
	add  c                                           ; $5452: $81
	ld   de, $ba59                                   ; $5453: $11 $59 $ba
	ld   [hl], l                                     ; $5456: $75
	adc  c                                           ; $5457: $89
	cp   b                                           ; $5458: $b8
	ld   h, h                                        ; $5459: $64
	ld   [hl], $ab                                   ; $545a: $36 $ab
	res  5, d                                        ; $545c: $cb $aa
	xor  e                                           ; $545e: $ab
	sub  a                                           ; $545f: $97
	ld   h, [hl]                                     ; $5460: $66
	ld   a, d                                        ; $5461: $7a
	call z, Call_0e4_6698                            ; $5462: $cc $98 $66
	ld   [hl], a                                     ; $5465: $77
	ld   h, l                                        ; $5466: $65
	ld   d, [hl]                                     ; $5467: $56
	ld   a, c                                        ; $5468: $79
	xor  b                                           ; $5469: $a8
	ld   h, l                                        ; $546a: $65
	ld   d, [hl]                                     ; $546b: $56
	adc  b                                           ; $546c: $88
	add  a                                           ; $546d: $87
	ld   a, c                                        ; $546e: $79
	sbc  c                                           ; $546f: $99
	add  a                                           ; $5470: $87
	ld   a, b                                        ; $5471: $78
	adc  d                                           ; $5472: $8a
	xor  d                                           ; $5473: $aa
	sbc  b                                           ; $5474: $98
	adc  b                                           ; $5475: $88
	sbc  c                                           ; $5476: $99
	adc  b                                           ; $5477: $88
	adc  b                                           ; $5478: $88
	sbc  b                                           ; $5479: $98
	add  a                                           ; $547a: $87
	ld   h, [hl]                                     ; $547b: $66
	ld   h, a                                        ; $547c: $67
	ld   [hl], a                                     ; $547d: $77
	ld   [hl], a                                     ; $547e: $77
	ld   a, b                                        ; $547f: $78
	adc  b                                           ; $5480: $88
	ld   [hl], a                                     ; $5481: $77
	ld   [hl], a                                     ; $5482: $77
	adc  b                                           ; $5483: $88
	sbc  c                                           ; $5484: $99
	sbc  b                                           ; $5485: $98
	sbc  c                                           ; $5486: $99
	sbc  c                                           ; $5487: $99
	add  a                                           ; $5488: $87
	adc  b                                           ; $5489: $88
	adc  c                                           ; $548a: $89
	sbc  b                                           ; $548b: $98
	sbc  c                                           ; $548c: $99
	sbc  b                                           ; $548d: $98
	ld   [hl], a                                     ; $548e: $77
	ld   [hl], a                                     ; $548f: $77
	ld   [hl], a                                     ; $5490: $77
	ld   [hl], a                                     ; $5491: $77
	ld   [hl], a                                     ; $5492: $77
	ld   [hl], a                                     ; $5493: $77
	adc  b                                           ; $5494: $88
	ld   [hl], a                                     ; $5495: $77
	ld   [hl], a                                     ; $5496: $77
	ld   a, b                                        ; $5497: $78
	adc  b                                           ; $5498: $88
	sbc  c                                           ; $5499: $99
	adc  c                                           ; $549a: $89
	sbc  b                                           ; $549b: $98
	adc  b                                           ; $549c: $88
	adc  b                                           ; $549d: $88
	adc  c                                           ; $549e: $89
	sbc  c                                           ; $549f: $99
	adc  c                                           ; $54a0: $89
	adc  b                                           ; $54a1: $88
	adc  b                                           ; $54a2: $88
	ld   [hl], a                                     ; $54a3: $77
	ld   [hl], a                                     ; $54a4: $77
	ld   a, b                                        ; $54a5: $78
	adc  b                                           ; $54a6: $88
	adc  b                                           ; $54a7: $88
	add  a                                           ; $54a8: $87
	adc  b                                           ; $54a9: $88
	adc  b                                           ; $54aa: $88
	adc  b                                           ; $54ab: $88
	adc  b                                           ; $54ac: $88
	adc  b                                           ; $54ad: $88
	adc  b                                           ; $54ae: $88
	adc  b                                           ; $54af: $88
	adc  b                                           ; $54b0: $88
	adc  b                                           ; $54b1: $88
	adc  c                                           ; $54b2: $89
	sbc  c                                           ; $54b3: $99
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

Jump_0e4_5775:
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
	adc  b                                           ; $5834: $88
	adc  b                                           ; $5835: $88
	adc  b                                           ; $5836: $88
	adc  b                                           ; $5837: $88
	adc  b                                           ; $5838: $88
	adc  b                                           ; $5839: $88
	adc  b                                           ; $583a: $88
	adc  b                                           ; $583b: $88
	adc  b                                           ; $583c: $88
	adc  b                                           ; $583d: $88
	adc  b                                           ; $583e: $88
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	adc  b                                           ; $5841: $88
	adc  b                                           ; $5842: $88
	adc  b                                           ; $5843: $88
	adc  b                                           ; $5844: $88
	adc  b                                           ; $5845: $88
	adc  b                                           ; $5846: $88
	adc  b                                           ; $5847: $88
	adc  b                                           ; $5848: $88
	adc  b                                           ; $5849: $88
	adc  b                                           ; $584a: $88
	adc  b                                           ; $584b: $88
	adc  b                                           ; $584c: $88
	adc  b                                           ; $584d: $88
	adc  b                                           ; $584e: $88
	adc  b                                           ; $584f: $88
	adc  b                                           ; $5850: $88
	adc  b                                           ; $5851: $88
	adc  b                                           ; $5852: $88
	adc  b                                           ; $5853: $88
	adc  b                                           ; $5854: $88
	adc  b                                           ; $5855: $88
	adc  b                                           ; $5856: $88
	adc  b                                           ; $5857: $88
	adc  b                                           ; $5858: $88
	adc  b                                           ; $5859: $88
	adc  b                                           ; $585a: $88
	adc  b                                           ; $585b: $88
	adc  b                                           ; $585c: $88
	adc  b                                           ; $585d: $88
	adc  b                                           ; $585e: $88
	adc  b                                           ; $585f: $88
	adc  b                                           ; $5860: $88
	adc  b                                           ; $5861: $88
	adc  b                                           ; $5862: $88
	adc  b                                           ; $5863: $88
	adc  b                                           ; $5864: $88
	adc  b                                           ; $5865: $88
	adc  b                                           ; $5866: $88
	adc  b                                           ; $5867: $88
	adc  b                                           ; $5868: $88
	adc  b                                           ; $5869: $88
	adc  b                                           ; $586a: $88
	adc  b                                           ; $586b: $88
	adc  b                                           ; $586c: $88
	adc  b                                           ; $586d: $88
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
	adc  b                                           ; $588c: $88
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
	adc  b                                           ; $58a0: $88
	adc  b                                           ; $58a1: $88
	adc  b                                           ; $58a2: $88
	adc  b                                           ; $58a3: $88
	adc  b                                           ; $58a4: $88
	adc  b                                           ; $58a5: $88
	adc  b                                           ; $58a6: $88
	adc  b                                           ; $58a7: $88
	adc  b                                           ; $58a8: $88
	adc  b                                           ; $58a9: $88
	adc  b                                           ; $58aa: $88
	adc  b                                           ; $58ab: $88
	adc  b                                           ; $58ac: $88
	adc  b                                           ; $58ad: $88
	adc  b                                           ; $58ae: $88
	adc  b                                           ; $58af: $88
	adc  b                                           ; $58b0: $88
	adc  b                                           ; $58b1: $88
	adc  b                                           ; $58b2: $88
	adc  b                                           ; $58b3: $88
	adc  b                                           ; $58b4: $88
	adc  b                                           ; $58b5: $88
	adc  b                                           ; $58b6: $88
	adc  b                                           ; $58b7: $88
	adc  b                                           ; $58b8: $88
	adc  b                                           ; $58b9: $88
	adc  b                                           ; $58ba: $88
	adc  b                                           ; $58bb: $88
	adc  b                                           ; $58bc: $88
	adc  b                                           ; $58bd: $88
	adc  b                                           ; $58be: $88
	adc  b                                           ; $58bf: $88
	adc  b                                           ; $58c0: $88
	adc  b                                           ; $58c1: $88
	adc  b                                           ; $58c2: $88
	adc  b                                           ; $58c3: $88
	adc  b                                           ; $58c4: $88
	adc  b                                           ; $58c5: $88
	adc  b                                           ; $58c6: $88
	adc  b                                           ; $58c7: $88
	adc  b                                           ; $58c8: $88
	adc  b                                           ; $58c9: $88
	adc  b                                           ; $58ca: $88
	adc  b                                           ; $58cb: $88
	adc  b                                           ; $58cc: $88
	adc  b                                           ; $58cd: $88
	adc  b                                           ; $58ce: $88
	adc  b                                           ; $58cf: $88
	adc  b                                           ; $58d0: $88
	adc  b                                           ; $58d1: $88
	adc  b                                           ; $58d2: $88
	adc  b                                           ; $58d3: $88
	adc  b                                           ; $58d4: $88
	adc  b                                           ; $58d5: $88
	adc  b                                           ; $58d6: $88
	adc  b                                           ; $58d7: $88
	adc  b                                           ; $58d8: $88
	adc  b                                           ; $58d9: $88
	adc  b                                           ; $58da: $88
	adc  b                                           ; $58db: $88
	adc  b                                           ; $58dc: $88
	adc  b                                           ; $58dd: $88
	adc  b                                           ; $58de: $88
	adc  b                                           ; $58df: $88
	adc  b                                           ; $58e0: $88
	adc  b                                           ; $58e1: $88
	adc  b                                           ; $58e2: $88
	adc  b                                           ; $58e3: $88
	adc  b                                           ; $58e4: $88
	adc  b                                           ; $58e5: $88
	adc  b                                           ; $58e6: $88
	adc  b                                           ; $58e7: $88
	adc  b                                           ; $58e8: $88
	adc  b                                           ; $58e9: $88
	adc  b                                           ; $58ea: $88
	adc  b                                           ; $58eb: $88
	adc  b                                           ; $58ec: $88
	adc  b                                           ; $58ed: $88
	adc  b                                           ; $58ee: $88
	adc  b                                           ; $58ef: $88
	adc  b                                           ; $58f0: $88
	adc  b                                           ; $58f1: $88
	adc  b                                           ; $58f2: $88
	adc  b                                           ; $58f3: $88
	adc  b                                           ; $58f4: $88
	adc  b                                           ; $58f5: $88
	adc  b                                           ; $58f6: $88
	adc  b                                           ; $58f7: $88
	adc  b                                           ; $58f8: $88
	adc  b                                           ; $58f9: $88
	adc  b                                           ; $58fa: $88
	adc  b                                           ; $58fb: $88
	adc  b                                           ; $58fc: $88
	adc  b                                           ; $58fd: $88
	adc  b                                           ; $58fe: $88
	adc  b                                           ; $58ff: $88
	adc  b                                           ; $5900: $88
	adc  b                                           ; $5901: $88
	adc  b                                           ; $5902: $88
	adc  b                                           ; $5903: $88
	adc  b                                           ; $5904: $88
	adc  b                                           ; $5905: $88
	adc  b                                           ; $5906: $88
	adc  b                                           ; $5907: $88
	adc  b                                           ; $5908: $88
	adc  b                                           ; $5909: $88
	adc  b                                           ; $590a: $88
	adc  b                                           ; $590b: $88
	adc  b                                           ; $590c: $88
	adc  b                                           ; $590d: $88
	adc  b                                           ; $590e: $88
	adc  b                                           ; $590f: $88
	adc  b                                           ; $5910: $88
	adc  b                                           ; $5911: $88
	adc  b                                           ; $5912: $88
	adc  b                                           ; $5913: $88
	adc  b                                           ; $5914: $88
	adc  b                                           ; $5915: $88
	adc  b                                           ; $5916: $88
	adc  b                                           ; $5917: $88
	adc  b                                           ; $5918: $88
	adc  b                                           ; $5919: $88
	adc  b                                           ; $591a: $88
	adc  b                                           ; $591b: $88
	adc  b                                           ; $591c: $88
	adc  b                                           ; $591d: $88
	adc  b                                           ; $591e: $88
	adc  b                                           ; $591f: $88
	adc  b                                           ; $5920: $88
	adc  b                                           ; $5921: $88
	adc  b                                           ; $5922: $88
	adc  b                                           ; $5923: $88
	adc  b                                           ; $5924: $88
	adc  b                                           ; $5925: $88
	adc  b                                           ; $5926: $88
	adc  b                                           ; $5927: $88
	adc  b                                           ; $5928: $88
	adc  b                                           ; $5929: $88
	adc  b                                           ; $592a: $88
	adc  b                                           ; $592b: $88
	adc  b                                           ; $592c: $88
	adc  b                                           ; $592d: $88
	adc  b                                           ; $592e: $88
	adc  b                                           ; $592f: $88
	adc  b                                           ; $5930: $88
	adc  b                                           ; $5931: $88
	adc  b                                           ; $5932: $88
	adc  b                                           ; $5933: $88
	adc  b                                           ; $5934: $88
	adc  b                                           ; $5935: $88
	adc  b                                           ; $5936: $88
	adc  b                                           ; $5937: $88
	adc  b                                           ; $5938: $88
	adc  b                                           ; $5939: $88
	adc  b                                           ; $593a: $88
	adc  b                                           ; $593b: $88
	adc  b                                           ; $593c: $88
	adc  b                                           ; $593d: $88
	adc  b                                           ; $593e: $88
	adc  b                                           ; $593f: $88
	adc  b                                           ; $5940: $88
	adc  b                                           ; $5941: $88
	adc  b                                           ; $5942: $88
	adc  b                                           ; $5943: $88
	adc  b                                           ; $5944: $88
	adc  b                                           ; $5945: $88
	adc  b                                           ; $5946: $88
	adc  b                                           ; $5947: $88
	adc  b                                           ; $5948: $88
	adc  b                                           ; $5949: $88
	adc  b                                           ; $594a: $88
	adc  b                                           ; $594b: $88
	adc  b                                           ; $594c: $88
	adc  b                                           ; $594d: $88
	adc  b                                           ; $594e: $88
	adc  b                                           ; $594f: $88
	adc  b                                           ; $5950: $88
	adc  b                                           ; $5951: $88
	adc  b                                           ; $5952: $88
	adc  b                                           ; $5953: $88
	adc  b                                           ; $5954: $88
	adc  b                                           ; $5955: $88
	adc  b                                           ; $5956: $88
	adc  b                                           ; $5957: $88
	adc  b                                           ; $5958: $88
	adc  b                                           ; $5959: $88
	adc  b                                           ; $595a: $88
	adc  b                                           ; $595b: $88
	adc  b                                           ; $595c: $88
	adc  b                                           ; $595d: $88
	adc  b                                           ; $595e: $88
	adc  b                                           ; $595f: $88
	adc  b                                           ; $5960: $88
	adc  b                                           ; $5961: $88
	adc  b                                           ; $5962: $88
	adc  b                                           ; $5963: $88
	adc  b                                           ; $5964: $88
	adc  b                                           ; $5965: $88
	adc  b                                           ; $5966: $88
	adc  b                                           ; $5967: $88
	adc  b                                           ; $5968: $88
	adc  b                                           ; $5969: $88
	adc  b                                           ; $596a: $88
	adc  b                                           ; $596b: $88
	adc  b                                           ; $596c: $88
	adc  b                                           ; $596d: $88
	adc  b                                           ; $596e: $88
	adc  b                                           ; $596f: $88
	adc  b                                           ; $5970: $88
	adc  b                                           ; $5971: $88
	adc  b                                           ; $5972: $88
	adc  b                                           ; $5973: $88
	adc  b                                           ; $5974: $88
	adc  b                                           ; $5975: $88
	adc  b                                           ; $5976: $88
	adc  b                                           ; $5977: $88
	adc  b                                           ; $5978: $88
	adc  b                                           ; $5979: $88
	adc  b                                           ; $597a: $88
	adc  b                                           ; $597b: $88
	adc  b                                           ; $597c: $88
	adc  b                                           ; $597d: $88
	adc  b                                           ; $597e: $88
	adc  b                                           ; $597f: $88
	adc  b                                           ; $5980: $88
	adc  b                                           ; $5981: $88
	adc  b                                           ; $5982: $88
	adc  b                                           ; $5983: $88
	adc  b                                           ; $5984: $88
	adc  b                                           ; $5985: $88
	adc  b                                           ; $5986: $88
	adc  b                                           ; $5987: $88
	adc  b                                           ; $5988: $88
	adc  b                                           ; $5989: $88
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	adc  b                                           ; $598c: $88
	adc  b                                           ; $598d: $88
	adc  b                                           ; $598e: $88
	adc  b                                           ; $598f: $88
	adc  b                                           ; $5990: $88
	adc  b                                           ; $5991: $88
	adc  b                                           ; $5992: $88
	adc  b                                           ; $5993: $88
	adc  b                                           ; $5994: $88
	adc  b                                           ; $5995: $88
	adc  b                                           ; $5996: $88
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88
	adc  b                                           ; $5999: $88
	adc  b                                           ; $599a: $88
	adc  b                                           ; $599b: $88
	adc  b                                           ; $599c: $88
	adc  b                                           ; $599d: $88
	adc  b                                           ; $599e: $88
	adc  b                                           ; $599f: $88
	adc  b                                           ; $59a0: $88
	adc  b                                           ; $59a1: $88
	adc  b                                           ; $59a2: $88
	adc  b                                           ; $59a3: $88
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	adc  b                                           ; $59a6: $88
	adc  b                                           ; $59a7: $88
	adc  b                                           ; $59a8: $88
	adc  b                                           ; $59a9: $88
	adc  b                                           ; $59aa: $88
	adc  b                                           ; $59ab: $88
	adc  b                                           ; $59ac: $88
	adc  b                                           ; $59ad: $88
	adc  b                                           ; $59ae: $88
	adc  b                                           ; $59af: $88
	adc  b                                           ; $59b0: $88
	adc  b                                           ; $59b1: $88
	adc  b                                           ; $59b2: $88
	adc  b                                           ; $59b3: $88
	adc  b                                           ; $59b4: $88
	adc  b                                           ; $59b5: $88
	adc  b                                           ; $59b6: $88

Jump_0e4_59b7:
	adc  b                                           ; $59b7: $88
	adc  b                                           ; $59b8: $88
	adc  b                                           ; $59b9: $88
	adc  b                                           ; $59ba: $88
	adc  b                                           ; $59bb: $88
	adc  b                                           ; $59bc: $88
	adc  b                                           ; $59bd: $88
	adc  b                                           ; $59be: $88
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	adc  b                                           ; $59c1: $88
	adc  b                                           ; $59c2: $88
	adc  b                                           ; $59c3: $88
	adc  b                                           ; $59c4: $88
	adc  b                                           ; $59c5: $88
	adc  b                                           ; $59c6: $88
	adc  b                                           ; $59c7: $88
	adc  b                                           ; $59c8: $88
	adc  b                                           ; $59c9: $88
	adc  b                                           ; $59ca: $88
	adc  b                                           ; $59cb: $88
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  b                                           ; $59ce: $88
	adc  b                                           ; $59cf: $88
	adc  b                                           ; $59d0: $88
	adc  b                                           ; $59d1: $88
	adc  b                                           ; $59d2: $88
	adc  b                                           ; $59d3: $88
	adc  b                                           ; $59d4: $88
	adc  b                                           ; $59d5: $88
	adc  b                                           ; $59d6: $88
	adc  b                                           ; $59d7: $88
	adc  b                                           ; $59d8: $88
	adc  b                                           ; $59d9: $88
	adc  b                                           ; $59da: $88
	adc  b                                           ; $59db: $88
	adc  b                                           ; $59dc: $88
	adc  b                                           ; $59dd: $88
	adc  b                                           ; $59de: $88
	adc  b                                           ; $59df: $88
	adc  b                                           ; $59e0: $88
	adc  b                                           ; $59e1: $88
	adc  b                                           ; $59e2: $88
	adc  b                                           ; $59e3: $88
	adc  b                                           ; $59e4: $88
	adc  b                                           ; $59e5: $88
	adc  b                                           ; $59e6: $88
	adc  b                                           ; $59e7: $88
	adc  b                                           ; $59e8: $88
	adc  b                                           ; $59e9: $88
	adc  b                                           ; $59ea: $88
	adc  b                                           ; $59eb: $88
	adc  b                                           ; $59ec: $88
	adc  b                                           ; $59ed: $88
	adc  b                                           ; $59ee: $88
	adc  b                                           ; $59ef: $88
	adc  b                                           ; $59f0: $88
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	adc  b                                           ; $59f3: $88
	adc  b                                           ; $59f4: $88
	adc  b                                           ; $59f5: $88
	adc  b                                           ; $59f6: $88
	adc  b                                           ; $59f7: $88
	adc  b                                           ; $59f8: $88
	adc  b                                           ; $59f9: $88
	adc  b                                           ; $59fa: $88
	adc  b                                           ; $59fb: $88
	adc  b                                           ; $59fc: $88
	adc  b                                           ; $59fd: $88
	adc  b                                           ; $59fe: $88
	adc  b                                           ; $59ff: $88
	adc  b                                           ; $5a00: $88
	adc  b                                           ; $5a01: $88
	adc  b                                           ; $5a02: $88
	adc  b                                           ; $5a03: $88
	adc  b                                           ; $5a04: $88
	adc  b                                           ; $5a05: $88
	adc  b                                           ; $5a06: $88
	adc  b                                           ; $5a07: $88
	adc  b                                           ; $5a08: $88
	adc  b                                           ; $5a09: $88
	adc  b                                           ; $5a0a: $88
	adc  b                                           ; $5a0b: $88
	adc  b                                           ; $5a0c: $88
	adc  b                                           ; $5a0d: $88
	adc  b                                           ; $5a0e: $88
	adc  b                                           ; $5a0f: $88
	adc  b                                           ; $5a10: $88
	adc  b                                           ; $5a11: $88
	adc  b                                           ; $5a12: $88
	adc  b                                           ; $5a13: $88
	adc  b                                           ; $5a14: $88
	adc  b                                           ; $5a15: $88
	adc  b                                           ; $5a16: $88
	adc  b                                           ; $5a17: $88
	adc  b                                           ; $5a18: $88
	adc  b                                           ; $5a19: $88
	adc  b                                           ; $5a1a: $88
	adc  b                                           ; $5a1b: $88
	adc  b                                           ; $5a1c: $88
	adc  b                                           ; $5a1d: $88
	adc  b                                           ; $5a1e: $88
	adc  b                                           ; $5a1f: $88
	adc  b                                           ; $5a20: $88
	adc  b                                           ; $5a21: $88
	adc  b                                           ; $5a22: $88
	adc  b                                           ; $5a23: $88
	adc  b                                           ; $5a24: $88
	adc  b                                           ; $5a25: $88
	adc  b                                           ; $5a26: $88
	adc  b                                           ; $5a27: $88
	adc  b                                           ; $5a28: $88
	adc  b                                           ; $5a29: $88
	adc  b                                           ; $5a2a: $88
	adc  b                                           ; $5a2b: $88
	adc  b                                           ; $5a2c: $88
	adc  b                                           ; $5a2d: $88
	adc  b                                           ; $5a2e: $88
	adc  b                                           ; $5a2f: $88
	adc  b                                           ; $5a30: $88
	adc  b                                           ; $5a31: $88
	adc  b                                           ; $5a32: $88
	adc  b                                           ; $5a33: $88
	adc  b                                           ; $5a34: $88
	adc  b                                           ; $5a35: $88
	adc  b                                           ; $5a36: $88
	adc  b                                           ; $5a37: $88
	adc  b                                           ; $5a38: $88
	adc  b                                           ; $5a39: $88
	adc  b                                           ; $5a3a: $88
	adc  b                                           ; $5a3b: $88
	adc  b                                           ; $5a3c: $88
	adc  b                                           ; $5a3d: $88
	adc  b                                           ; $5a3e: $88
	adc  b                                           ; $5a3f: $88
	adc  b                                           ; $5a40: $88
	adc  b                                           ; $5a41: $88
	adc  b                                           ; $5a42: $88
	adc  b                                           ; $5a43: $88
	adc  b                                           ; $5a44: $88
	adc  b                                           ; $5a45: $88
	adc  b                                           ; $5a46: $88
	adc  b                                           ; $5a47: $88
	adc  b                                           ; $5a48: $88
	adc  b                                           ; $5a49: $88
	adc  b                                           ; $5a4a: $88
	adc  b                                           ; $5a4b: $88
	adc  b                                           ; $5a4c: $88
	adc  b                                           ; $5a4d: $88
	adc  b                                           ; $5a4e: $88
	adc  b                                           ; $5a4f: $88
	adc  b                                           ; $5a50: $88
	adc  b                                           ; $5a51: $88
	adc  b                                           ; $5a52: $88
	adc  b                                           ; $5a53: $88
	adc  b                                           ; $5a54: $88
	adc  b                                           ; $5a55: $88
	adc  b                                           ; $5a56: $88
	adc  b                                           ; $5a57: $88
	adc  b                                           ; $5a58: $88
	adc  b                                           ; $5a59: $88
	adc  b                                           ; $5a5a: $88
	adc  b                                           ; $5a5b: $88
	adc  b                                           ; $5a5c: $88
	adc  b                                           ; $5a5d: $88
	adc  b                                           ; $5a5e: $88
	adc  b                                           ; $5a5f: $88
	adc  b                                           ; $5a60: $88
	adc  b                                           ; $5a61: $88
	adc  b                                           ; $5a62: $88
	adc  b                                           ; $5a63: $88
	adc  b                                           ; $5a64: $88
	adc  b                                           ; $5a65: $88
	adc  b                                           ; $5a66: $88
	adc  b                                           ; $5a67: $88
	adc  b                                           ; $5a68: $88
	adc  b                                           ; $5a69: $88
	adc  b                                           ; $5a6a: $88
	adc  b                                           ; $5a6b: $88
	adc  b                                           ; $5a6c: $88
	adc  b                                           ; $5a6d: $88
	adc  b                                           ; $5a6e: $88
	adc  b                                           ; $5a6f: $88
	adc  b                                           ; $5a70: $88
	adc  b                                           ; $5a71: $88
	adc  b                                           ; $5a72: $88
	adc  b                                           ; $5a73: $88
	adc  b                                           ; $5a74: $88
	adc  b                                           ; $5a75: $88
	adc  b                                           ; $5a76: $88
	adc  b                                           ; $5a77: $88
	adc  b                                           ; $5a78: $88
	adc  b                                           ; $5a79: $88
	adc  b                                           ; $5a7a: $88
	adc  b                                           ; $5a7b: $88
	adc  b                                           ; $5a7c: $88
	adc  b                                           ; $5a7d: $88
	adc  b                                           ; $5a7e: $88
	adc  b                                           ; $5a7f: $88
	adc  b                                           ; $5a80: $88
	adc  b                                           ; $5a81: $88
	adc  b                                           ; $5a82: $88
	adc  b                                           ; $5a83: $88
	adc  b                                           ; $5a84: $88

Call_0e4_5a85:
	adc  b                                           ; $5a85: $88
	adc  b                                           ; $5a86: $88
	adc  b                                           ; $5a87: $88
	adc  b                                           ; $5a88: $88
	adc  b                                           ; $5a89: $88
	adc  b                                           ; $5a8a: $88
	adc  b                                           ; $5a8b: $88
	adc  b                                           ; $5a8c: $88
	adc  b                                           ; $5a8d: $88
	adc  b                                           ; $5a8e: $88
	adc  b                                           ; $5a8f: $88
	adc  b                                           ; $5a90: $88
	adc  b                                           ; $5a91: $88
	adc  b                                           ; $5a92: $88
	adc  b                                           ; $5a93: $88
	adc  b                                           ; $5a94: $88
	adc  b                                           ; $5a95: $88
	adc  b                                           ; $5a96: $88
	adc  b                                           ; $5a97: $88
	adc  b                                           ; $5a98: $88
	adc  b                                           ; $5a99: $88
	adc  b                                           ; $5a9a: $88
	adc  b                                           ; $5a9b: $88
	adc  b                                           ; $5a9c: $88
	adc  b                                           ; $5a9d: $88
	adc  b                                           ; $5a9e: $88
	adc  b                                           ; $5a9f: $88
	adc  b                                           ; $5aa0: $88
	adc  b                                           ; $5aa1: $88
	adc  b                                           ; $5aa2: $88
	adc  b                                           ; $5aa3: $88
	adc  b                                           ; $5aa4: $88
	adc  b                                           ; $5aa5: $88
	adc  b                                           ; $5aa6: $88
	adc  b                                           ; $5aa7: $88
	adc  b                                           ; $5aa8: $88
	adc  b                                           ; $5aa9: $88
	adc  b                                           ; $5aaa: $88
	adc  b                                           ; $5aab: $88
	adc  b                                           ; $5aac: $88
	adc  b                                           ; $5aad: $88
	adc  b                                           ; $5aae: $88
	adc  b                                           ; $5aaf: $88
	adc  b                                           ; $5ab0: $88
	adc  b                                           ; $5ab1: $88
	adc  b                                           ; $5ab2: $88
	adc  b                                           ; $5ab3: $88
	adc  b                                           ; $5ab4: $88
	adc  b                                           ; $5ab5: $88
	adc  b                                           ; $5ab6: $88
	adc  b                                           ; $5ab7: $88
	adc  b                                           ; $5ab8: $88
	adc  b                                           ; $5ab9: $88
	adc  b                                           ; $5aba: $88
	adc  b                                           ; $5abb: $88
	adc  b                                           ; $5abc: $88
	adc  b                                           ; $5abd: $88
	adc  b                                           ; $5abe: $88
	adc  b                                           ; $5abf: $88
	adc  b                                           ; $5ac0: $88
	adc  b                                           ; $5ac1: $88
	adc  b                                           ; $5ac2: $88
	adc  b                                           ; $5ac3: $88
	adc  b                                           ; $5ac4: $88
	adc  b                                           ; $5ac5: $88
	adc  b                                           ; $5ac6: $88
	adc  b                                           ; $5ac7: $88
	adc  b                                           ; $5ac8: $88
	adc  b                                           ; $5ac9: $88
	adc  b                                           ; $5aca: $88
	adc  b                                           ; $5acb: $88
	adc  b                                           ; $5acc: $88
	adc  b                                           ; $5acd: $88
	adc  b                                           ; $5ace: $88
	adc  b                                           ; $5acf: $88
	adc  b                                           ; $5ad0: $88
	adc  b                                           ; $5ad1: $88
	adc  b                                           ; $5ad2: $88
	adc  b                                           ; $5ad3: $88
	adc  b                                           ; $5ad4: $88
	adc  b                                           ; $5ad5: $88
	adc  b                                           ; $5ad6: $88
	adc  b                                           ; $5ad7: $88
	adc  b                                           ; $5ad8: $88
	adc  b                                           ; $5ad9: $88
	adc  b                                           ; $5ada: $88
	adc  b                                           ; $5adb: $88
	adc  b                                           ; $5adc: $88
	adc  b                                           ; $5add: $88
	adc  b                                           ; $5ade: $88
	adc  b                                           ; $5adf: $88
	adc  b                                           ; $5ae0: $88
	adc  b                                           ; $5ae1: $88
	adc  b                                           ; $5ae2: $88
	adc  b                                           ; $5ae3: $88
	adc  b                                           ; $5ae4: $88
	adc  b                                           ; $5ae5: $88
	adc  b                                           ; $5ae6: $88
	adc  b                                           ; $5ae7: $88
	adc  b                                           ; $5ae8: $88
	adc  b                                           ; $5ae9: $88
	adc  b                                           ; $5aea: $88
	adc  b                                           ; $5aeb: $88
	adc  b                                           ; $5aec: $88
	adc  b                                           ; $5aed: $88
	adc  b                                           ; $5aee: $88
	adc  b                                           ; $5aef: $88
	adc  b                                           ; $5af0: $88
	adc  b                                           ; $5af1: $88
	adc  b                                           ; $5af2: $88
	adc  b                                           ; $5af3: $88
	adc  b                                           ; $5af4: $88
	adc  b                                           ; $5af5: $88
	adc  b                                           ; $5af6: $88
	adc  b                                           ; $5af7: $88
	adc  b                                           ; $5af8: $88
	adc  b                                           ; $5af9: $88
	adc  b                                           ; $5afa: $88
	adc  b                                           ; $5afb: $88
	adc  b                                           ; $5afc: $88
	adc  b                                           ; $5afd: $88
	adc  b                                           ; $5afe: $88
	adc  b                                           ; $5aff: $88
	adc  b                                           ; $5b00: $88
	adc  b                                           ; $5b01: $88
	adc  b                                           ; $5b02: $88
	adc  b                                           ; $5b03: $88
	adc  b                                           ; $5b04: $88
	adc  b                                           ; $5b05: $88
	adc  b                                           ; $5b06: $88
	adc  b                                           ; $5b07: $88
	adc  b                                           ; $5b08: $88
	adc  b                                           ; $5b09: $88
	adc  b                                           ; $5b0a: $88
	adc  b                                           ; $5b0b: $88
	adc  b                                           ; $5b0c: $88
	adc  b                                           ; $5b0d: $88
	adc  b                                           ; $5b0e: $88
	adc  b                                           ; $5b0f: $88
	adc  b                                           ; $5b10: $88

Call_0e4_5b11:
	adc  b                                           ; $5b11: $88
	adc  b                                           ; $5b12: $88
	adc  b                                           ; $5b13: $88
	adc  b                                           ; $5b14: $88
	adc  b                                           ; $5b15: $88
	adc  b                                           ; $5b16: $88
	adc  b                                           ; $5b17: $88
	adc  b                                           ; $5b18: $88
	adc  b                                           ; $5b19: $88
	adc  b                                           ; $5b1a: $88
	adc  b                                           ; $5b1b: $88
	adc  b                                           ; $5b1c: $88
	adc  b                                           ; $5b1d: $88
	adc  b                                           ; $5b1e: $88
	adc  b                                           ; $5b1f: $88
	adc  b                                           ; $5b20: $88
	adc  b                                           ; $5b21: $88
	adc  b                                           ; $5b22: $88
	adc  b                                           ; $5b23: $88
	adc  b                                           ; $5b24: $88
	adc  b                                           ; $5b25: $88
	adc  b                                           ; $5b26: $88
	adc  b                                           ; $5b27: $88
	adc  b                                           ; $5b28: $88
	adc  b                                           ; $5b29: $88
	adc  b                                           ; $5b2a: $88
	adc  b                                           ; $5b2b: $88
	adc  b                                           ; $5b2c: $88
	adc  b                                           ; $5b2d: $88
	adc  b                                           ; $5b2e: $88
	adc  b                                           ; $5b2f: $88
	adc  b                                           ; $5b30: $88
	adc  b                                           ; $5b31: $88
	adc  b                                           ; $5b32: $88
	adc  b                                           ; $5b33: $88
	adc  b                                           ; $5b34: $88
	adc  b                                           ; $5b35: $88
	adc  b                                           ; $5b36: $88
	adc  b                                           ; $5b37: $88
	adc  b                                           ; $5b38: $88
	adc  b                                           ; $5b39: $88
	adc  b                                           ; $5b3a: $88
	adc  b                                           ; $5b3b: $88
	adc  b                                           ; $5b3c: $88
	adc  b                                           ; $5b3d: $88
	adc  b                                           ; $5b3e: $88
	adc  b                                           ; $5b3f: $88
	adc  b                                           ; $5b40: $88
	adc  b                                           ; $5b41: $88
	adc  b                                           ; $5b42: $88
	adc  b                                           ; $5b43: $88
	adc  b                                           ; $5b44: $88
	adc  b                                           ; $5b45: $88
	adc  b                                           ; $5b46: $88
	adc  b                                           ; $5b47: $88
	adc  b                                           ; $5b48: $88
	adc  b                                           ; $5b49: $88
	adc  b                                           ; $5b4a: $88
	adc  b                                           ; $5b4b: $88
	adc  b                                           ; $5b4c: $88
	adc  b                                           ; $5b4d: $88
	adc  b                                           ; $5b4e: $88
	adc  b                                           ; $5b4f: $88
	adc  b                                           ; $5b50: $88
	adc  b                                           ; $5b51: $88
	adc  b                                           ; $5b52: $88
	adc  b                                           ; $5b53: $88
	adc  b                                           ; $5b54: $88
	adc  b                                           ; $5b55: $88
	adc  b                                           ; $5b56: $88
	adc  b                                           ; $5b57: $88
	adc  b                                           ; $5b58: $88
	adc  b                                           ; $5b59: $88
	adc  b                                           ; $5b5a: $88
	adc  b                                           ; $5b5b: $88
	adc  b                                           ; $5b5c: $88
	adc  b                                           ; $5b5d: $88
	adc  b                                           ; $5b5e: $88
	adc  b                                           ; $5b5f: $88
	adc  b                                           ; $5b60: $88
	adc  b                                           ; $5b61: $88
	adc  b                                           ; $5b62: $88
	adc  b                                           ; $5b63: $88
	adc  b                                           ; $5b64: $88
	adc  b                                           ; $5b65: $88
	adc  b                                           ; $5b66: $88
	adc  b                                           ; $5b67: $88
	adc  b                                           ; $5b68: $88
	adc  b                                           ; $5b69: $88
	adc  b                                           ; $5b6a: $88
	adc  b                                           ; $5b6b: $88
	adc  b                                           ; $5b6c: $88
	adc  b                                           ; $5b6d: $88
	adc  b                                           ; $5b6e: $88
	adc  b                                           ; $5b6f: $88
	adc  b                                           ; $5b70: $88
	adc  b                                           ; $5b71: $88
	adc  b                                           ; $5b72: $88
	adc  b                                           ; $5b73: $88
	adc  b                                           ; $5b74: $88
	adc  b                                           ; $5b75: $88
	adc  b                                           ; $5b76: $88
	adc  b                                           ; $5b77: $88
	adc  b                                           ; $5b78: $88
	adc  b                                           ; $5b79: $88
	adc  b                                           ; $5b7a: $88
	adc  b                                           ; $5b7b: $88
	adc  b                                           ; $5b7c: $88
	adc  b                                           ; $5b7d: $88
	adc  b                                           ; $5b7e: $88
	adc  b                                           ; $5b7f: $88
	adc  b                                           ; $5b80: $88
	adc  b                                           ; $5b81: $88
	adc  b                                           ; $5b82: $88
	adc  b                                           ; $5b83: $88
	adc  b                                           ; $5b84: $88
	adc  b                                           ; $5b85: $88
	adc  b                                           ; $5b86: $88
	adc  b                                           ; $5b87: $88
	adc  b                                           ; $5b88: $88
	adc  b                                           ; $5b89: $88
	adc  b                                           ; $5b8a: $88
	adc  b                                           ; $5b8b: $88
	adc  b                                           ; $5b8c: $88
	adc  b                                           ; $5b8d: $88
	adc  b                                           ; $5b8e: $88
	adc  b                                           ; $5b8f: $88
	adc  b                                           ; $5b90: $88
	adc  b                                           ; $5b91: $88
	adc  b                                           ; $5b92: $88
	adc  b                                           ; $5b93: $88
	adc  b                                           ; $5b94: $88
	adc  b                                           ; $5b95: $88
	adc  b                                           ; $5b96: $88
	adc  b                                           ; $5b97: $88
	adc  b                                           ; $5b98: $88
	adc  b                                           ; $5b99: $88
	adc  b                                           ; $5b9a: $88
	adc  b                                           ; $5b9b: $88
	adc  b                                           ; $5b9c: $88
	adc  b                                           ; $5b9d: $88
	adc  b                                           ; $5b9e: $88
	adc  b                                           ; $5b9f: $88
	adc  b                                           ; $5ba0: $88
	adc  b                                           ; $5ba1: $88
	adc  b                                           ; $5ba2: $88
	adc  b                                           ; $5ba3: $88
	adc  b                                           ; $5ba4: $88
	adc  b                                           ; $5ba5: $88
	adc  b                                           ; $5ba6: $88
	adc  b                                           ; $5ba7: $88
	adc  b                                           ; $5ba8: $88
	adc  b                                           ; $5ba9: $88
	adc  b                                           ; $5baa: $88
	adc  b                                           ; $5bab: $88
	adc  b                                           ; $5bac: $88
	adc  b                                           ; $5bad: $88
	adc  b                                           ; $5bae: $88
	adc  b                                           ; $5baf: $88
	adc  b                                           ; $5bb0: $88
	adc  b                                           ; $5bb1: $88
	adc  b                                           ; $5bb2: $88
	adc  b                                           ; $5bb3: $88
	adc  b                                           ; $5bb4: $88
	adc  b                                           ; $5bb5: $88
	adc  b                                           ; $5bb6: $88
	adc  b                                           ; $5bb7: $88
	adc  b                                           ; $5bb8: $88
	adc  b                                           ; $5bb9: $88
	adc  b                                           ; $5bba: $88
	adc  b                                           ; $5bbb: $88
	adc  b                                           ; $5bbc: $88
	adc  b                                           ; $5bbd: $88
	adc  b                                           ; $5bbe: $88
	adc  b                                           ; $5bbf: $88
	adc  b                                           ; $5bc0: $88
	adc  b                                           ; $5bc1: $88
	adc  b                                           ; $5bc2: $88
	adc  b                                           ; $5bc3: $88
	adc  b                                           ; $5bc4: $88
	adc  b                                           ; $5bc5: $88
	adc  b                                           ; $5bc6: $88
	adc  b                                           ; $5bc7: $88
	adc  b                                           ; $5bc8: $88
	adc  b                                           ; $5bc9: $88
	adc  b                                           ; $5bca: $88
	adc  b                                           ; $5bcb: $88
	adc  b                                           ; $5bcc: $88
	adc  b                                           ; $5bcd: $88
	adc  b                                           ; $5bce: $88
	adc  b                                           ; $5bcf: $88
	adc  b                                           ; $5bd0: $88
	adc  b                                           ; $5bd1: $88
	adc  b                                           ; $5bd2: $88
	adc  b                                           ; $5bd3: $88
	adc  b                                           ; $5bd4: $88
	adc  b                                           ; $5bd5: $88
	adc  b                                           ; $5bd6: $88
	adc  b                                           ; $5bd7: $88
	adc  b                                           ; $5bd8: $88
	adc  b                                           ; $5bd9: $88
	adc  b                                           ; $5bda: $88
	adc  b                                           ; $5bdb: $88
	adc  b                                           ; $5bdc: $88
	adc  b                                           ; $5bdd: $88
	adc  b                                           ; $5bde: $88
	adc  b                                           ; $5bdf: $88
	adc  b                                           ; $5be0: $88
	adc  b                                           ; $5be1: $88
	adc  b                                           ; $5be2: $88
	adc  b                                           ; $5be3: $88
	adc  b                                           ; $5be4: $88
	adc  b                                           ; $5be5: $88
	adc  b                                           ; $5be6: $88
	adc  b                                           ; $5be7: $88
	adc  b                                           ; $5be8: $88
	adc  b                                           ; $5be9: $88
	adc  b                                           ; $5bea: $88
	adc  b                                           ; $5beb: $88
	adc  b                                           ; $5bec: $88
	adc  b                                           ; $5bed: $88
	adc  b                                           ; $5bee: $88
	adc  b                                           ; $5bef: $88
	adc  b                                           ; $5bf0: $88
	adc  b                                           ; $5bf1: $88
	adc  b                                           ; $5bf2: $88
	adc  b                                           ; $5bf3: $88
	adc  b                                           ; $5bf4: $88
	adc  b                                           ; $5bf5: $88
	adc  b                                           ; $5bf6: $88
	adc  b                                           ; $5bf7: $88
	adc  b                                           ; $5bf8: $88
	adc  b                                           ; $5bf9: $88
	adc  b                                           ; $5bfa: $88
	adc  b                                           ; $5bfb: $88
	adc  b                                           ; $5bfc: $88
	adc  b                                           ; $5bfd: $88
	adc  b                                           ; $5bfe: $88
	adc  b                                           ; $5bff: $88
	adc  b                                           ; $5c00: $88
	adc  b                                           ; $5c01: $88
	adc  b                                           ; $5c02: $88
	adc  b                                           ; $5c03: $88
	adc  b                                           ; $5c04: $88
	adc  b                                           ; $5c05: $88
	adc  b                                           ; $5c06: $88
	adc  b                                           ; $5c07: $88
	adc  b                                           ; $5c08: $88
	adc  b                                           ; $5c09: $88
	adc  b                                           ; $5c0a: $88
	adc  b                                           ; $5c0b: $88
	adc  b                                           ; $5c0c: $88
	adc  b                                           ; $5c0d: $88
	adc  b                                           ; $5c0e: $88
	adc  b                                           ; $5c0f: $88
	adc  b                                           ; $5c10: $88
	adc  b                                           ; $5c11: $88
	adc  b                                           ; $5c12: $88
	adc  b                                           ; $5c13: $88
	adc  b                                           ; $5c14: $88
	adc  b                                           ; $5c15: $88
	adc  b                                           ; $5c16: $88
	adc  b                                           ; $5c17: $88
	adc  b                                           ; $5c18: $88
	adc  b                                           ; $5c19: $88
	adc  b                                           ; $5c1a: $88
	adc  b                                           ; $5c1b: $88
	adc  b                                           ; $5c1c: $88
	adc  b                                           ; $5c1d: $88
	adc  b                                           ; $5c1e: $88
	adc  b                                           ; $5c1f: $88
	adc  b                                           ; $5c20: $88
	adc  b                                           ; $5c21: $88
	adc  b                                           ; $5c22: $88
	adc  b                                           ; $5c23: $88
	adc  b                                           ; $5c24: $88
	adc  b                                           ; $5c25: $88
	adc  b                                           ; $5c26: $88
	adc  b                                           ; $5c27: $88
	adc  b                                           ; $5c28: $88
	adc  b                                           ; $5c29: $88
	adc  b                                           ; $5c2a: $88
	adc  b                                           ; $5c2b: $88
	adc  b                                           ; $5c2c: $88
	adc  b                                           ; $5c2d: $88
	adc  b                                           ; $5c2e: $88
	adc  b                                           ; $5c2f: $88
	adc  b                                           ; $5c30: $88
	adc  b                                           ; $5c31: $88
	adc  b                                           ; $5c32: $88
	adc  b                                           ; $5c33: $88
	adc  b                                           ; $5c34: $88
	adc  b                                           ; $5c35: $88
	adc  b                                           ; $5c36: $88
	adc  b                                           ; $5c37: $88
	adc  b                                           ; $5c38: $88
	adc  b                                           ; $5c39: $88
	adc  b                                           ; $5c3a: $88
	adc  b                                           ; $5c3b: $88
	adc  b                                           ; $5c3c: $88
	adc  b                                           ; $5c3d: $88
	adc  b                                           ; $5c3e: $88
	adc  b                                           ; $5c3f: $88
	adc  b                                           ; $5c40: $88
	adc  b                                           ; $5c41: $88
	adc  b                                           ; $5c42: $88
	adc  b                                           ; $5c43: $88
	adc  b                                           ; $5c44: $88
	adc  b                                           ; $5c45: $88
	adc  b                                           ; $5c46: $88
	adc  b                                           ; $5c47: $88
	adc  b                                           ; $5c48: $88
	adc  b                                           ; $5c49: $88
	adc  b                                           ; $5c4a: $88
	adc  b                                           ; $5c4b: $88
	adc  b                                           ; $5c4c: $88
	adc  b                                           ; $5c4d: $88
	adc  b                                           ; $5c4e: $88
	adc  b                                           ; $5c4f: $88
	adc  b                                           ; $5c50: $88
	adc  b                                           ; $5c51: $88
	adc  b                                           ; $5c52: $88
	adc  b                                           ; $5c53: $88
	adc  b                                           ; $5c54: $88
	adc  b                                           ; $5c55: $88
	adc  b                                           ; $5c56: $88
	adc  b                                           ; $5c57: $88
	adc  b                                           ; $5c58: $88
	adc  b                                           ; $5c59: $88
	adc  b                                           ; $5c5a: $88
	adc  b                                           ; $5c5b: $88
	adc  b                                           ; $5c5c: $88
	adc  b                                           ; $5c5d: $88
	adc  b                                           ; $5c5e: $88
	adc  b                                           ; $5c5f: $88
	adc  b                                           ; $5c60: $88
	adc  b                                           ; $5c61: $88
	adc  b                                           ; $5c62: $88
	adc  b                                           ; $5c63: $88
	adc  b                                           ; $5c64: $88
	adc  b                                           ; $5c65: $88
	adc  b                                           ; $5c66: $88
	adc  b                                           ; $5c67: $88
	adc  b                                           ; $5c68: $88
	adc  b                                           ; $5c69: $88
	adc  b                                           ; $5c6a: $88
	adc  b                                           ; $5c6b: $88
	adc  b                                           ; $5c6c: $88
	adc  b                                           ; $5c6d: $88
	adc  b                                           ; $5c6e: $88
	adc  b                                           ; $5c6f: $88
	adc  b                                           ; $5c70: $88
	adc  b                                           ; $5c71: $88
	adc  b                                           ; $5c72: $88
	adc  b                                           ; $5c73: $88
	adc  b                                           ; $5c74: $88
	adc  b                                           ; $5c75: $88
	adc  b                                           ; $5c76: $88
	adc  b                                           ; $5c77: $88
	adc  b                                           ; $5c78: $88
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
	adc  c                                           ; $5e0c: $89
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
	add  a                                           ; $5e18: $87
	adc  b                                           ; $5e19: $88
	adc  c                                           ; $5e1a: $89
	add  a                                           ; $5e1b: $87
	adc  c                                           ; $5e1c: $89
	adc  b                                           ; $5e1d: $88
	adc  b                                           ; $5e1e: $88
	adc  b                                           ; $5e1f: $88
	adc  b                                           ; $5e20: $88
	adc  b                                           ; $5e21: $88
	adc  b                                           ; $5e22: $88
	sbc  b                                           ; $5e23: $98
	adc  c                                           ; $5e24: $89
	adc  c                                           ; $5e25: $89
	sbc  b                                           ; $5e26: $98
	sbc  b                                           ; $5e27: $98
	adc  c                                           ; $5e28: $89
	adc  c                                           ; $5e29: $89
	adc  b                                           ; $5e2a: $88
	adc  b                                           ; $5e2b: $88
	adc  b                                           ; $5e2c: $88
	ld   [hl], a                                     ; $5e2d: $77
	add  a                                           ; $5e2e: $87
	ld   a, b                                        ; $5e2f: $78
	ld   a, b                                        ; $5e30: $78
	add  a                                           ; $5e31: $87
	add  a                                           ; $5e32: $87
	add  a                                           ; $5e33: $87
	ld   [hl], a                                     ; $5e34: $77
	ld   [hl], a                                     ; $5e35: $77
	ld   h, [hl]                                     ; $5e36: $66
	ld   h, l                                        ; $5e37: $65
	ld   b, e                                        ; $5e38: $43
	ld   [hl-], a                                    ; $5e39: $32
	ld   [de], a                                     ; $5e3a: $12
	ld   [hl+], a                                    ; $5e3b: $22
	ld   b, e                                        ; $5e3c: $43
	ld   c, b                                        ; $5e3d: $48
	xor  h                                           ; $5e3e: $ac
	rst  JumpTable                                         ; $5e3f: $df
	rst  $38                                         ; $5e40: $ff
	rst  $38                                         ; $5e41: $ff
	rst  $38                                         ; $5e42: $ff
	rst  $38                                         ; $5e43: $ff
	rst  $38                                         ; $5e44: $ff
	rst  $38                                         ; $5e45: $ff
	db   $db                                         ; $5e46: $db
	add  l                                           ; $5e47: $85
	ld   hl, $1111                                   ; $5e48: $21 $11 $11
	ld   de, $1111                                   ; $5e4b: $11 $11 $11
	ld   de, $1111                                   ; $5e4e: $11 $11 $11
	ld   [de], a                                     ; $5e51: $12
	ld   e, d                                        ; $5e52: $5a
	rst  $38                                         ; $5e53: $ff
	rst  $38                                         ; $5e54: $ff
	rst  $38                                         ; $5e55: $ff
	rst  $38                                         ; $5e56: $ff
	rst  $38                                         ; $5e57: $ff
	rst  $38                                         ; $5e58: $ff
	rst  $38                                         ; $5e59: $ff
	rst  $38                                         ; $5e5a: $ff
	ld   [$3195], a                                  ; $5e5b: $ea $95 $31
	ld   de, $1111                                   ; $5e5e: $11 $11 $11
	ld   de, $1111                                   ; $5e61: $11 $11 $11
	ld   de, $1111                                   ; $5e64: $11 $11 $11
	ld   de, $1711                                   ; $5e67: $11 $11 $17
	rst  $38                                         ; $5e6a: $ff
	rst  $38                                         ; $5e6b: $ff
	rst  $38                                         ; $5e6c: $ff
	rst  $38                                         ; $5e6d: $ff
	rst  $38                                         ; $5e6e: $ff
	rst  $38                                         ; $5e6f: $ff
	rst  $38                                         ; $5e70: $ff
	rst  $38                                         ; $5e71: $ff
	push bc                                          ; $5e72: $c5
	ld   hl, $1111                                   ; $5e73: $21 $11 $11
	ld   de, $1111                                   ; $5e76: $11 $11 $11
	ld   de, $1111                                   ; $5e79: $11 $11 $11
	ld   de, $1411                                   ; $5e7c: $11 $11 $14
	daa                                              ; $5e7f: $27
	rst  $38                                         ; $5e80: $ff
	rst  $38                                         ; $5e81: $ff
	rst  $38                                         ; $5e82: $ff
	rst  $38                                         ; $5e83: $ff
	rst  $38                                         ; $5e84: $ff
	rst  $38                                         ; $5e85: $ff
	rst  $38                                         ; $5e86: $ff
	db   $fc                                         ; $5e87: $fc
	ld   [hl], c                                     ; $5e88: $71
	ld   de, $1111                                   ; $5e89: $11 $11 $11
	ld   de, $1111                                   ; $5e8c: $11 $11 $11
	ld   de, $1111                                   ; $5e8f: $11 $11 $11
	ld   de, $9811                                   ; $5e92: $11 $11 $98
	rst  $38                                         ; $5e95: $ff
	rst  $38                                         ; $5e96: $ff
	rst  $38                                         ; $5e97: $ff
	rst  $38                                         ; $5e98: $ff
	rst  $38                                         ; $5e99: $ff
	rst  $38                                         ; $5e9a: $ff
	rst  $38                                         ; $5e9b: $ff
	and  l                                           ; $5e9c: $a5
	ld   de, $1111                                   ; $5e9d: $11 $11 $11
	ld   de, $1111                                   ; $5ea0: $11 $11 $11
	ld   de, $1111                                   ; $5ea3: $11 $11 $11
	ld   de, $1411                                   ; $5ea6: $11 $11 $14
	rst  $28                                         ; $5ea9: $ef
	rst  $38                                         ; $5eaa: $ff
	rst  $38                                         ; $5eab: $ff
	rst  $38                                         ; $5eac: $ff
	rst  $38                                         ; $5ead: $ff
	rst  $38                                         ; $5eae: $ff
	rst  $38                                         ; $5eaf: $ff
	ld   hl, sp+$11                                  ; $5eb0: $f8 $11
	ld   de, $1111                                   ; $5eb2: $11 $11 $11
	ld   de, $1111                                   ; $5eb5: $11 $11 $11
	ld   de, $1111                                   ; $5eb8: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5ebb: $11 $11 $ff
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	rst  $38                                         ; $5ec1: $ff
	rst  $38                                         ; $5ec2: $ff
	rst  $38                                         ; $5ec3: $ff
	or   h                                           ; $5ec4: $b4
	ld   de, $1111                                   ; $5ec5: $11 $11 $11
	ld   de, $1111                                   ; $5ec8: $11 $11 $11
	ld   de, $1111                                   ; $5ecb: $11 $11 $11
	ld   de, $1811                                   ; $5ece: $11 $11 $18
	cp   a                                           ; $5ed1: $bf
	rst  $38                                         ; $5ed2: $ff
	rst  $38                                         ; $5ed3: $ff
	rst  $38                                         ; $5ed4: $ff
	rst  $38                                         ; $5ed5: $ff
	rst  $38                                         ; $5ed6: $ff
	jp   hl                                          ; $5ed7: $e9


	ld   b, c                                        ; $5ed8: $41
	ld   de, $1211                                   ; $5ed9: $11 $11 $12
	inc  sp                                          ; $5edc: $33
	ld   b, h                                        ; $5edd: $44
	ld   de, $1111                                   ; $5ede: $11 $11 $11
	ld   de, $1111                                   ; $5ee1: $11 $11 $11
	xor  a                                           ; $5ee4: $af
	rst  $38                                         ; $5ee5: $ff
	rst  $38                                         ; $5ee6: $ff
	rst  $38                                         ; $5ee7: $ff
	rst  $38                                         ; $5ee8: $ff
	rst  $38                                         ; $5ee9: $ff
	ei                                               ; $5eea: $fb
	ld   hl, $1111                                   ; $5eeb: $21 $11 $11
	ld   de, $babf                                   ; $5eee: $11 $bf $ba
	ld   h, h                                        ; $5ef1: $64
	ld   de, $1111                                   ; $5ef2: $11 $11 $11
	ld   de, $1a11                                   ; $5ef5: $11 $11 $1a
	rst  $38                                         ; $5ef8: $ff
	rst  $38                                         ; $5ef9: $ff
	rst  $38                                         ; $5efa: $ff
	rst  $38                                         ; $5efb: $ff
	rst  $38                                         ; $5efc: $ff
	rst  $38                                         ; $5efd: $ff
	pop  hl                                          ; $5efe: $e1
	ld   de, $4313                                   ; $5eff: $11 $13 $43
	xor  a                                           ; $5f02: $af
	rst  $38                                         ; $5f03: $ff
	db   $f4                                         ; $5f04: $f4
	ld   de, $1111                                   ; $5f05: $11 $11 $11
	ld   de, $1111                                   ; $5f08: $11 $11 $11
	rra                                              ; $5f0b: $1f
	rst  $38                                         ; $5f0c: $ff
	rst  $38                                         ; $5f0d: $ff
	rst  $38                                         ; $5f0e: $ff
	rst  $38                                         ; $5f0f: $ff
	rst  $38                                         ; $5f10: $ff
	cp   h                                           ; $5f11: $bc
	ld   b, c                                        ; $5f12: $41
	ld   de, $cf18                                   ; $5f13: $11 $18 $cf
	rst  $28                                         ; $5f16: $ef
	rst  $38                                         ; $5f17: $ff
	ld   hl, sp+$11                                  ; $5f18: $f8 $11
	ld   de, $1111                                   ; $5f1a: $11 $11 $11
	ld   de, $df11                                   ; $5f1d: $11 $11 $df
	rst  $38                                         ; $5f20: $ff
	rst  $38                                         ; $5f21: $ff
	rst  $38                                         ; $5f22: $ff
	rst  $38                                         ; $5f23: $ff
	rst  $20                                         ; $5f24: $e7
	ld   h, l                                        ; $5f25: $65
	ld   b, c                                        ; $5f26: $41
	inc  e                                           ; $5f27: $1c
	rst  $38                                         ; $5f28: $ff
	rst  $38                                         ; $5f29: $ff
	rst  $38                                         ; $5f2a: $ff
	rst  $38                                         ; $5f2b: $ff
	ld   de, $1111                                   ; $5f2c: $11 $11 $11
	ld   de, $1111                                   ; $5f2f: $11 $11 $11
	inc  de                                          ; $5f32: $13
	rst  $38                                         ; $5f33: $ff
	rst  $38                                         ; $5f34: $ff
	rst  $38                                         ; $5f35: $ff
	rst  $38                                         ; $5f36: $ff
	rst  $38                                         ; $5f37: $ff
	di                                               ; $5f38: $f3
	rla                                              ; $5f39: $17
	cp   h                                           ; $5f3a: $bc
	sub  a                                           ; $5f3b: $97
	sbc  [hl]                                        ; $5f3c: $9e
	rst  $38                                         ; $5f3d: $ff
	rst  $38                                         ; $5f3e: $ff
	rst  $10                                         ; $5f3f: $d7
	ld   hl, $1111                                   ; $5f40: $21 $11 $11
	ld   de, $1111                                   ; $5f43: $11 $11 $11
	add  hl, de                                      ; $5f46: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f47: $cf
	rst  $38                                         ; $5f48: $ff
	rst  $38                                         ; $5f49: $ff
	rst  $38                                         ; $5f4a: $ff
	ld   a, [$b9dc]                                  ; $5f4b: $fa $dc $b9
	xor  a                                           ; $5f4e: $af
	rst  $38                                         ; $5f4f: $ff
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	rst  $38                                         ; $5f52: $ff
	rst  $38                                         ; $5f53: $ff
	ld   de, $1111                                   ; $5f54: $11 $11 $11
	ld   de, $1111                                   ; $5f57: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $5f5a: $11 $12 $ff
	rst  $38                                         ; $5f5d: $ff
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	rst  $38                                         ; $5f60: $ff
	rst  $38                                         ; $5f61: $ff
	rst  $38                                         ; $5f62: $ff
	rst  $38                                         ; $5f63: $ff
	db   $fc                                         ; $5f64: $fc
	jr   @+$01                                       ; $5f65: $18 $ff

	ld   a, [$1111]                                  ; $5f67: $fa $11 $11
	ld   de, $1111                                   ; $5f6a: $11 $11 $11
	ld   de, $1111                                   ; $5f6d: $11 $11 $11
	inc  d                                           ; $5f70: $14
	sbc  a                                           ; $5f71: $9f
	rst  $38                                         ; $5f72: $ff
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	rst  $38                                         ; $5f75: $ff
	call c, $ffff                                    ; $5f76: $dc $ff $ff
	rst  $38                                         ; $5f79: $ff
	rst  $38                                         ; $5f7a: $ff
	rst  $38                                         ; $5f7b: $ff
	ld   a, [$94ac]                                  ; $5f7c: $fa $ac $94
	ld   de, $1111                                   ; $5f7f: $11 $11 $11
	ld   de, $1111                                   ; $5f82: $11 $11 $11
	ld   de, $1611                                   ; $5f85: $11 $11 $16
	rst  $38                                         ; $5f88: $ff
	rst  $38                                         ; $5f89: $ff
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	rst  $38                                         ; $5f8e: $ff
	rst  $38                                         ; $5f8f: $ff
	cp   b                                           ; $5f90: $b8
	ld   h, e                                        ; $5f91: $63
	ld   h, $42                                      ; $5f92: $26 $42
	ld   [hl-], a                                    ; $5f94: $32
	ld   de, $1111                                   ; $5f95: $11 $11 $11
	ld   de, $1111                                   ; $5f98: $11 $11 $11
	ld   de, $1511                                   ; $5f9b: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f9e: $cf
	rst  $38                                         ; $5f9f: $ff
	rst  $38                                         ; $5fa0: $ff
	rst  $38                                         ; $5fa1: $ff
	rst  $38                                         ; $5fa2: $ff
	rst  $38                                         ; $5fa3: $ff
	rst  $38                                         ; $5fa4: $ff
	rst  $38                                         ; $5fa5: $ff
	rst  $38                                         ; $5fa6: $ff
	xor  [hl]                                        ; $5fa7: $ae
	or   [hl]                                        ; $5fa8: $b6
	cp   c                                           ; $5fa9: $b9
	ld   hl, $1111                                   ; $5faa: $21 $11 $11
	ld   de, $1111                                   ; $5fad: $11 $11 $11
	ld   de, $1111                                   ; $5fb0: $11 $11 $11
	ld   de, $5f11                                   ; $5fb3: $11 $11 $5f
	rst  $38                                         ; $5fb6: $ff
	rst  $38                                         ; $5fb7: $ff
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	rst  $38                                         ; $5fbb: $ff
	ei                                               ; $5fbc: $fb
	ret                                              ; $5fbd: $c9


	rst  ToBoot                                         ; $5fbe: $c7
	inc  de                                          ; $5fbf: $13
	ld   e, d                                        ; $5fc0: $5a
	db   $ec                                         ; $5fc1: $ec
	and  a                                           ; $5fc2: $a7
	ld   de, $1111                                   ; $5fc3: $11 $11 $11
	ld   de, $1111                                   ; $5fc6: $11 $11 $11
	ld   [de], a                                     ; $5fc9: $12
	ld   d, a                                        ; $5fca: $57
	ld   de, $fd18                                   ; $5fcb: $11 $18 $fd
	ld   sp, $ff3a                                   ; $5fce: $31 $3a $ff
	rst  $38                                         ; $5fd1: $ff
	ret  c                                           ; $5fd2: $d8

	cp   a                                           ; $5fd3: $bf
	rst  $38                                         ; $5fd4: $ff
	db   $fc                                         ; $5fd5: $fc
	ld   l, c                                        ; $5fd6: $69
	sbc  e                                           ; $5fd7: $9b
	or   a                                           ; $5fd8: $b7
	xor  c                                           ; $5fd9: $a9
	ld   [hl], h                                     ; $5fda: $74
	dec  [hl]                                        ; $5fdb: $35
	ld   h, a                                        ; $5fdc: $67
	ld   h, l                                        ; $5fdd: $65
	sub  a                                           ; $5fde: $97
	sbc  [hl]                                        ; $5fdf: $9e
	xor  $a5                                         ; $5fe0: $ee $a5
	inc  h                                           ; $5fe2: $24
	ld   a, b                                        ; $5fe3: $78
	and  [hl]                                        ; $5fe4: $a6
	ld   sp, $7945                                   ; $5fe5: $31 $45 $79
	ld   [hl], a                                     ; $5fe8: $77
	ld   [hl-], a                                    ; $5fe9: $32
	inc  d                                           ; $5fea: $14
	ld   e, c                                        ; $5feb: $59
	add  [hl]                                        ; $5fec: $86
	ld   h, l                                        ; $5fed: $65
	adc  d                                           ; $5fee: $8a
	rst  $28                                         ; $5fef: $ef
	jp   c, $ef9c                                    ; $5ff0: $da $9c $ef

	rst  $38                                         ; $5ff3: $ff
	call c, $eebc                                    ; $5ff4: $dc $bc $ee
	db   $ec                                         ; $5ff7: $ec
	xor  b                                           ; $5ff8: $a8
	adc  c                                           ; $5ff9: $89
	sbc  c                                           ; $5ffa: $99
	sbc  b                                           ; $5ffb: $98
	ld   d, h                                        ; $5ffc: $54
	dec  [hl]                                        ; $5ffd: $35
	ld   a, b                                        ; $5ffe: $78
	halt                                             ; $5fff: $76
	ld   b, e                                        ; $6000: $43
	ld   b, [hl]                                     ; $6001: $46
	adc  b                                           ; $6002: $88
	ld   h, h                                        ; $6003: $64
	ld   b, l                                        ; $6004: $45
	ld   a, b                                        ; $6005: $78
	sbc  b                                           ; $6006: $98
	halt                                             ; $6007: $76
	ld   a, b                                        ; $6008: $78
	sbc  e                                           ; $6009: $9b
	res  7, e                                        ; $600a: $cb $bb
	call $cbcd                                       ; $600c: $cd $cd $cb
	add  a                                           ; $600f: $87
	sbc  c                                           ; $6010: $99
	xor  c                                           ; $6011: $a9
	ld   [hl], l                                     ; $6012: $75
	ld   b, l                                        ; $6013: $45
	ld   l, b                                        ; $6014: $68
	add  a                                           ; $6015: $87
	ld   h, l                                        ; $6016: $65
	ld   d, a                                        ; $6017: $57
	ld   a, b                                        ; $6018: $78
	xor  h                                           ; $6019: $ac
	xor  c                                           ; $601a: $a9
	ld   [hl], a                                     ; $601b: $77
	sbc  e                                           ; $601c: $9b
	db   $dd                                         ; $601d: $dd
	cp   b                                           ; $601e: $b8
	ld   [hl], a                                     ; $601f: $77
	xor  h                                           ; $6020: $ac
	call Call_0e4_78a9                               ; $6021: $cd $a9 $78
	sbc  e                                           ; $6024: $9b
	cp   d                                           ; $6025: $ba
	sub  a                                           ; $6026: $97
	ld   [hl], a                                     ; $6027: $77
	adc  b                                           ; $6028: $88
	halt                                             ; $6029: $76
	ld   d, h                                        ; $602a: $54
	ld   b, [hl]                                     ; $602b: $46
	ld   h, a                                        ; $602c: $67
	ld   h, l                                        ; $602d: $65
	ld   d, [hl]                                     ; $602e: $56
	adc  c                                           ; $602f: $89
	sbc  b                                           ; $6030: $98
	ld   [hl], a                                     ; $6031: $77
	ld   a, c                                        ; $6032: $79
	sbc  c                                           ; $6033: $99
	sbc  b                                           ; $6034: $98
	adc  b                                           ; $6035: $88
	xor  d                                           ; $6036: $aa
	cp   d                                           ; $6037: $ba
	xor  c                                           ; $6038: $a9
	xor  c                                           ; $6039: $a9
	sbc  c                                           ; $603a: $99
	sbc  c                                           ; $603b: $99
	ld   [hl], a                                     ; $603c: $77
	ld   [hl], a                                     ; $603d: $77
	halt                                             ; $603e: $76
	ld   h, [hl]                                     ; $603f: $66
	ld   h, [hl]                                     ; $6040: $66
	ld   h, a                                        ; $6041: $67
	ld   [hl], a                                     ; $6042: $77
	ld   a, b                                        ; $6043: $78
	ld   [hl], a                                     ; $6044: $77
	adc  b                                           ; $6045: $88
	adc  b                                           ; $6046: $88
	adc  b                                           ; $6047: $88
	sbc  c                                           ; $6048: $99
	adc  c                                           ; $6049: $89
	sbc  c                                           ; $604a: $99
	sbc  c                                           ; $604b: $99
	xor  c                                           ; $604c: $a9
	sbc  d                                           ; $604d: $9a
	sbc  b                                           ; $604e: $98
	sbc  c                                           ; $604f: $99
	sbc  c                                           ; $6050: $99
	sbc  b                                           ; $6051: $98
	add  a                                           ; $6052: $87
	ld   [hl], a                                     ; $6053: $77
	adc  b                                           ; $6054: $88
	add  a                                           ; $6055: $87
	ld   [hl], a                                     ; $6056: $77
	ld   [hl], a                                     ; $6057: $77
	ld   [hl], a                                     ; $6058: $77
	ld   [hl], a                                     ; $6059: $77
	ld   h, [hl]                                     ; $605a: $66
	ld   h, a                                        ; $605b: $67
	ld   [hl], a                                     ; $605c: $77
	ld   [hl], a                                     ; $605d: $77
	ld   a, b                                        ; $605e: $78
	adc  c                                           ; $605f: $89
	sbc  c                                           ; $6060: $99
	sbc  b                                           ; $6061: $98
	sbc  c                                           ; $6062: $99
	sbc  c                                           ; $6063: $99
	sbc  b                                           ; $6064: $98
	add  a                                           ; $6065: $87
	ld   [hl], a                                     ; $6066: $77
	adc  b                                           ; $6067: $88
	adc  b                                           ; $6068: $88
	adc  b                                           ; $6069: $88
	sbc  b                                           ; $606a: $98
	adc  c                                           ; $606b: $89
	add  a                                           ; $606c: $87
	ld   [hl], a                                     ; $606d: $77
	ld   a, b                                        ; $606e: $78
	add  a                                           ; $606f: $87
	ld   [hl], a                                     ; $6070: $77
	ld   [hl], a                                     ; $6071: $77
	ld   a, b                                        ; $6072: $78
	add  a                                           ; $6073: $87
	ld   [hl], a                                     ; $6074: $77
	adc  b                                           ; $6075: $88
	add  a                                           ; $6076: $87
	ld   [hl], a                                     ; $6077: $77
	ld   [hl], a                                     ; $6078: $77
	ld   [hl], a                                     ; $6079: $77
	ld   [hl], a                                     ; $607a: $77
	ld   [hl], a                                     ; $607b: $77
	ld   [hl], a                                     ; $607c: $77
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	adc  b                                           ; $607f: $88
	adc  b                                           ; $6080: $88
	adc  b                                           ; $6081: $88
	adc  b                                           ; $6082: $88
	adc  b                                           ; $6083: $88
	adc  b                                           ; $6084: $88
	ld   a, b                                        ; $6085: $78
	adc  b                                           ; $6086: $88
	add  a                                           ; $6087: $87
	ld   [hl], a                                     ; $6088: $77
	ld   [hl], a                                     ; $6089: $77
	ld   [hl], a                                     ; $608a: $77
	ld   [hl], a                                     ; $608b: $77
	ld   [hl], a                                     ; $608c: $77
	ld   [hl], a                                     ; $608d: $77
	ld   [hl], a                                     ; $608e: $77
	ld   [hl], a                                     ; $608f: $77
	ld   [hl], a                                     ; $6090: $77
	ld   [hl], a                                     ; $6091: $77
	ld   [hl], a                                     ; $6092: $77
	ld   [hl], a                                     ; $6093: $77
	ld   a, b                                        ; $6094: $78
	adc  b                                           ; $6095: $88
	adc  b                                           ; $6096: $88
	adc  b                                           ; $6097: $88
	adc  b                                           ; $6098: $88
	sbc  c                                           ; $6099: $99
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	adc  b                                           ; $609c: $88
	adc  b                                           ; $609d: $88
	add  a                                           ; $609e: $87
	ld   [hl], a                                     ; $609f: $77
	ld   [hl], a                                     ; $60a0: $77
	ld   [hl], a                                     ; $60a1: $77
	ld   [hl], a                                     ; $60a2: $77
	ld   [hl], a                                     ; $60a3: $77
	ld   [hl], a                                     ; $60a4: $77
	ld   [hl], a                                     ; $60a5: $77
	ld   [hl], a                                     ; $60a6: $77
	ld   [hl], a                                     ; $60a7: $77
	ld   [hl], a                                     ; $60a8: $77
	ld   [hl], a                                     ; $60a9: $77
	ld   [hl], a                                     ; $60aa: $77
	adc  b                                           ; $60ab: $88
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	adc  b                                           ; $60b2: $88
	ld   [hl], a                                     ; $60b3: $77
	ld   a, b                                        ; $60b4: $78
	add  a                                           ; $60b5: $87
	ld   [hl], a                                     ; $60b6: $77
	ld   a, b                                        ; $60b7: $78
	ld   [hl], a                                     ; $60b8: $77
	ld   a, b                                        ; $60b9: $78
	adc  b                                           ; $60ba: $88
	ld   [hl], a                                     ; $60bb: $77
	ld   a, b                                        ; $60bc: $78
	adc  b                                           ; $60bd: $88
	ld   [hl], a                                     ; $60be: $77
	ld   [hl], a                                     ; $60bf: $77
	adc  b                                           ; $60c0: $88
	adc  b                                           ; $60c1: $88
	ld   [hl], a                                     ; $60c2: $77
	ld   a, b                                        ; $60c3: $78
	adc  b                                           ; $60c4: $88
	add  a                                           ; $60c5: $87
	ld   [hl], a                                     ; $60c6: $77
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	add  a                                           ; $60c9: $87
	ld   [hl], a                                     ; $60ca: $77
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
	adc  c                                           ; $60dc: $89
	add  a                                           ; $60dd: $87
	ld   [hl], a                                     ; $60de: $77
	ld   a, b                                        ; $60df: $78
	add  a                                           ; $60e0: $87
	ld   [hl], a                                     ; $60e1: $77
	ld   a, b                                        ; $60e2: $78
	adc  b                                           ; $60e3: $88
	sbc  b                                           ; $60e4: $98
	ld   [hl], a                                     ; $60e5: $77
	ld   a, b                                        ; $60e6: $78
	sbc  c                                           ; $60e7: $99
	add  a                                           ; $60e8: $87
	ld   [hl], a                                     ; $60e9: $77
	adc  c                                           ; $60ea: $89
	sbc  b                                           ; $60eb: $98
	add  a                                           ; $60ec: $87
	ld   a, b                                        ; $60ed: $78
	adc  b                                           ; $60ee: $88
	add  a                                           ; $60ef: $87
	ld   [hl], a                                     ; $60f0: $77
	sbc  b                                           ; $60f1: $98
	sbc  b                                           ; $60f2: $98
	ld   [hl], a                                     ; $60f3: $77
	sbc  e                                           ; $60f4: $9b
	sbc  b                                           ; $60f5: $98
	ld   h, [hl]                                     ; $60f6: $66
	ld   a, c                                        ; $60f7: $79
	xor  c                                           ; $60f8: $a9
	halt                                             ; $60f9: $76
	ld   [hl], a                                     ; $60fa: $77
	sbc  c                                           ; $60fb: $99
	adc  b                                           ; $60fc: $88
	ld   [hl], a                                     ; $60fd: $77
	adc  d                                           ; $60fe: $8a
	xor  c                                           ; $60ff: $a9
	add  [hl]                                        ; $6100: $86
	ld   l, c                                        ; $6101: $69
	cp   c                                           ; $6102: $b9
	add  [hl]                                        ; $6103: $86
	ld   h, [hl]                                     ; $6104: $66
	ld   l, d                                        ; $6105: $6a
	call z, $45a7                                    ; $6106: $cc $a7 $45
	sbc  e                                           ; $6109: $9b
	and  a                                           ; $610a: $a7
	inc  sp                                          ; $610b: $33
	adc  l                                           ; $610c: $8d
	jp   c, $4942                                    ; $610d: $da $42 $49

	rst  $28                                         ; $6110: $ef
	and  l                                           ; $6111: $a5
	inc  d                                           ; $6112: $14
	sbc  l                                           ; $6113: $9d
	rst  $10                                         ; $6114: $d7
	ld   sp, $dd59                                   ; $6115: $31 $59 $dd
	add  l                                           ; $6118: $85
	ld   b, a                                        ; $6119: $47
	xor  e                                           ; $611a: $ab
	cp   b                                           ; $611b: $b8
	ld   h, [hl]                                     ; $611c: $66
	adc  d                                           ; $611d: $8a
	cp   d                                           ; $611e: $ba
	add  [hl]                                        ; $611f: $86
	ld   d, [hl]                                     ; $6120: $56
	xor  e                                           ; $6121: $ab
	or   a                                           ; $6122: $b7
	ld   b, h                                        ; $6123: $44
	ld   a, e                                        ; $6124: $7b
	ret                                              ; $6125: $c9


	ld   h, l                                        ; $6126: $65
	ld   l, c                                        ; $6127: $69
	cp   e                                           ; $6128: $bb
	add  l                                           ; $6129: $85
	ld   l, c                                        ; $612a: $69
	xor  e                                           ; $612b: $ab
	xor  b                                           ; $612c: $a8
	ld   d, l                                        ; $612d: $55
	ld   a, c                                        ; $612e: $79
	xor  c                                           ; $612f: $a9
	ld   h, h                                        ; $6130: $64
	ld   l, c                                        ; $6131: $69
	xor  d                                           ; $6132: $aa
	add  [hl]                                        ; $6133: $86
	ld   h, a                                        ; $6134: $67
	xor  e                                           ; $6135: $ab
	xor  b                                           ; $6136: $a8
	ld   d, h                                        ; $6137: $54
	ld   l, d                                        ; $6138: $6a
	xor  b                                           ; $6139: $a8
	ld   h, l                                        ; $613a: $65
	ld   l, b                                        ; $613b: $68
	xor  c                                           ; $613c: $a9
	add  [hl]                                        ; $613d: $86
	ld   h, a                                        ; $613e: $67
	sbc  d                                           ; $613f: $9a
	add  a                                           ; $6140: $87
	ld   a, b                                        ; $6141: $78
	adc  b                                           ; $6142: $88
	add  a                                           ; $6143: $87
	ld   a, b                                        ; $6144: $78
	adc  c                                           ; $6145: $89
	add  a                                           ; $6146: $87
	ld   [hl], a                                     ; $6147: $77
	adc  b                                           ; $6148: $88
	add  a                                           ; $6149: $87
	ld   [hl], a                                     ; $614a: $77
	sbc  c                                           ; $614b: $99
	xor  c                                           ; $614c: $a9
	ld   [hl], a                                     ; $614d: $77
	adc  c                                           ; $614e: $89
	sbc  b                                           ; $614f: $98
	ld   [hl], a                                     ; $6150: $77
	adc  d                                           ; $6151: $8a
	sbc  b                                           ; $6152: $98
	ld   [hl], a                                     ; $6153: $77
	adc  b                                           ; $6154: $88
	sbc  b                                           ; $6155: $98
	adc  b                                           ; $6156: $88
	ld   [hl], a                                     ; $6157: $77
	adc  b                                           ; $6158: $88
	sbc  b                                           ; $6159: $98
	add  a                                           ; $615a: $87
	ld   a, b                                        ; $615b: $78
	add  a                                           ; $615c: $87
	ld   h, a                                        ; $615d: $67
	sbc  d                                           ; $615e: $9a
	sbc  b                                           ; $615f: $98
	ld   h, [hl]                                     ; $6160: $66
	adc  c                                           ; $6161: $89
	sbc  b                                           ; $6162: $98
	ld   [hl], a                                     ; $6163: $77
	ld   a, c                                        ; $6164: $79
	xor  c                                           ; $6165: $a9
	ld   [hl], l                                     ; $6166: $75
	ld   l, d                                        ; $6167: $6a
	bit  6, l                                        ; $6168: $cb $75
	ld   l, c                                        ; $616a: $69
	cp   d                                           ; $616b: $ba
	ld   [hl], l                                     ; $616c: $75
	ld   l, c                                        ; $616d: $69
	xor  c                                           ; $616e: $a9
	add  [hl]                                        ; $616f: $86
	ld   h, a                                        ; $6170: $67
	adc  c                                           ; $6171: $89
	sbc  b                                           ; $6172: $98
	adc  c                                           ; $6173: $89
	sub  a                                           ; $6174: $97
	ld   a, b                                        ; $6175: $78
	adc  b                                           ; $6176: $88
	ld   a, b                                        ; $6177: $78
	ld   [hl], a                                     ; $6178: $77
	adc  d                                           ; $6179: $8a
	cp   b                                           ; $617a: $b8
	ld   h, [hl]                                     ; $617b: $66
	sbc  h                                           ; $617c: $9c
	cp   b                                           ; $617d: $b8
	ld   h, [hl]                                     ; $617e: $66
	ld   a, b                                        ; $617f: $78
	ld   a, b                                        ; $6180: $78
	ld   [hl], a                                     ; $6181: $77
	add  a                                           ; $6182: $87
	adc  c                                           ; $6183: $89
	ld   [hl], a                                     ; $6184: $77
	ld   a, c                                        ; $6185: $79
	xor  b                                           ; $6186: $a8
	ld   a, c                                        ; $6187: $79
	xor  b                                           ; $6188: $a8
	adc  b                                           ; $6189: $88
	ld   h, a                                        ; $618a: $67
	sbc  c                                           ; $618b: $99
	xor  c                                           ; $618c: $a9
	ld   h, a                                        ; $618d: $67
	add  a                                           ; $618e: $87
	adc  d                                           ; $618f: $8a
	ld   a, b                                        ; $6190: $78
	add  a                                           ; $6191: $87
	sub  a                                           ; $6192: $97
	ld   a, b                                        ; $6193: $78
	sub  a                                           ; $6194: $97
	halt                                             ; $6195: $76
	sbc  e                                           ; $6196: $9b
	sbc  b                                           ; $6197: $98
	halt                                             ; $6198: $76
	ld   a, d                                        ; $6199: $7a
	cp   d                                           ; $619a: $ba
	ld   h, l                                        ; $619b: $65
	ld   a, d                                        ; $619c: $7a
	cp   e                                           ; $619d: $bb
	sub  d                                           ; $619e: $92
	daa                                              ; $619f: $27
	xor  $92                                         ; $61a0: $ee $92
	daa                                              ; $61a2: $27
	sbc  $94                                         ; $61a3: $de $94
	ld   d, $be                                      ; $61a5: $16 $be
	or   [hl]                                        ; $61a7: $b6
	ld   [hl], $ba                                   ; $61a8: $36 $ba
	add  [hl]                                        ; $61aa: $86
	ld   l, c                                        ; $61ab: $69
	sub  [hl]                                        ; $61ac: $96
	ld   a, b                                        ; $61ad: $78
	adc  b                                           ; $61ae: $88
	ld   h, a                                        ; $61af: $67
	sbc  d                                           ; $61b0: $9a
	sub  a                                           ; $61b1: $97
	ld   d, l                                        ; $61b2: $55
	sbc  e                                           ; $61b3: $9b
	or   a                                           ; $61b4: $b7
	ld   b, l                                        ; $61b5: $45
	sbc  l                                           ; $61b6: $9d
	cp   b                                           ; $61b7: $b8
	ld   h, h                                        ; $61b8: $64
	ld   a, e                                        ; $61b9: $7b
	jp   c, Jump_0e4_5775                            ; $61ba: $da $75 $57

	cp   [hl]                                        ; $61bd: $be
	and  l                                           ; $61be: $a5
	ld   c, b                                        ; $61bf: $48
	sbc  $87                                         ; $61c0: $de $87
	sbc  e                                           ; $61c2: $9b
	res  0, l                                        ; $61c3: $cb $85
	ld   l, c                                        ; $61c5: $69
	adc  $63                                         ; $61c6: $ce $63
	dec  [hl]                                        ; $61c8: $35
	xor  h                                           ; $61c9: $ac
	add  c                                           ; $61ca: $81
	ld   de, $b28d                                   ; $61cb: $11 $8d $b2
	ld   de, $7657                                   ; $61ce: $11 $57 $76
	ld   b, h                                        ; $61d1: $44
	ld   b, [hl]                                     ; $61d2: $46
	sbc  c                                           ; $61d3: $99
	sub  a                                           ; $61d4: $97
	sbc  h                                           ; $61d5: $9c
	adc  $ed                                         ; $61d6: $ce $ed
	rst  JumpTable                                         ; $61d8: $df
	rst  $38                                         ; $61d9: $ff
	rst  $38                                         ; $61da: $ff
	cp   $ee                                         ; $61db: $fe $ee
	db   $fc                                         ; $61dd: $fc
	and  a                                           ; $61de: $a7
	sbc  e                                           ; $61df: $9b
	jp   c, $1641                                    ; $61e0: $da $41 $16

	halt                                             ; $61e3: $76
	ld   hl, $4311                                   ; $61e4: $21 $11 $43
	ld   de, $1111                                   ; $61e7: $11 $11 $11
	ld   de, $1511                                   ; $61ea: $11 $11 $15
	adc  h                                           ; $61ed: $8c
	xor  $ff                                         ; $61ee: $ee $ff
	rst  $38                                         ; $61f0: $ff
	rst  $38                                         ; $61f1: $ff
	rst  $38                                         ; $61f2: $ff
	rst  $38                                         ; $61f3: $ff
	rst  $38                                         ; $61f4: $ff
	db   $eb                                         ; $61f5: $eb
	xor  d                                           ; $61f6: $aa
	sbc  c                                           ; $61f7: $99
	sbc  c                                           ; $61f8: $99
	xor  c                                           ; $61f9: $a9
	sbc  b                                           ; $61fa: $98
	xor  b                                           ; $61fb: $a8
	ld   d, a                                        ; $61fc: $57
	ld   h, l                                        ; $61fd: $65
	ld   hl, $1111                                   ; $61fe: $21 $11 $11
	ld   de, $1111                                   ; $6201: $11 $11 $11
	ld   de, $cf13                                   ; $6204: $11 $13 $cf
	cp   $ef                                         ; $6207: $fe $ef
	rst  $38                                         ; $6209: $ff
	rst  $38                                         ; $620a: $ff
	rst  $38                                         ; $620b: $ff
	rst  $38                                         ; $620c: $ff
	db   $fd                                         ; $620d: $fd
	ld   [hl], l                                     ; $620e: $75
	ld   a, b                                        ; $620f: $78
	add  l                                           ; $6210: $85
	inc  hl                                          ; $6211: $23
	ld   a, e                                        ; $6212: $7b
	res  5, b                                        ; $6213: $cb $a8
	adc  d                                           ; $6215: $8a
	or   a                                           ; $6216: $b7
	ld   de, $1111                                   ; $6217: $11 $11 $11
	ld   de, $1111                                   ; $621a: $11 $11 $11
	ld   de, $ae13                                   ; $621d: $11 $13 $ae
	rst  $38                                         ; $6220: $ff
	rst  $38                                         ; $6221: $ff
	rst  $38                                         ; $6222: $ff
	rst  $38                                         ; $6223: $ff
	rst  $38                                         ; $6224: $ff
	rst  $38                                         ; $6225: $ff
	rst  $38                                         ; $6226: $ff
	rst  ToBoot                                         ; $6227: $c7
	inc  sp                                          ; $6228: $33
	ld   b, e                                        ; $6229: $43
	ld   hl, $ad25                                   ; $622a: $21 $25 $ad
	db   $db                                         ; $622d: $db
	xor  c                                           ; $622e: $a9
	sbc  d                                           ; $622f: $9a
	ld   [hl], d                                     ; $6230: $72
	ld   de, $1111                                   ; $6231: $11 $11 $11
	ld   de, $1111                                   ; $6234: $11 $11 $11
	inc  de                                          ; $6237: $13
	sbc  a                                           ; $6238: $9f
	rst  $38                                         ; $6239: $ff
	rst  $38                                         ; $623a: $ff
	rst  $38                                         ; $623b: $ff
	rst  $38                                         ; $623c: $ff
	rst  $38                                         ; $623d: $ff
	rst  $38                                         ; $623e: $ff
	rst  $38                                         ; $623f: $ff
	or   a                                           ; $6240: $b7
	ld   sp, $1111                                   ; $6241: $31 $11 $11
	inc  d                                           ; $6244: $14
	ld   l, d                                        ; $6245: $6a
	cp   h                                           ; $6246: $bc
	res  7, c                                        ; $6247: $cb $b9
	ld   h, d                                        ; $6249: $62
	ld   de, $1111                                   ; $624a: $11 $11 $11
	ld   de, $1111                                   ; $624d: $11 $11 $11
	ld   [de], a                                     ; $6250: $12
	adc  l                                           ; $6251: $8d
	rst  $38                                         ; $6252: $ff
	rst  $38                                         ; $6253: $ff
	rst  $38                                         ; $6254: $ff
	rst  $38                                         ; $6255: $ff
	rst  $38                                         ; $6256: $ff
	rst  $38                                         ; $6257: $ff
	rst  $38                                         ; $6258: $ff
	ret  c                                           ; $6259: $d8

	ld   [hl-], a                                    ; $625a: $32
	ld   de, $1111                                   ; $625b: $11 $11 $11
	ld   e, c                                        ; $625e: $59
	xor  e                                           ; $625f: $ab
	xor  d                                           ; $6260: $aa
	sbc  c                                           ; $6261: $99
	add  l                                           ; $6262: $85
	ld   de, $1111                                   ; $6263: $11 $11 $11
	ld   de, $1111                                   ; $6266: $11 $11 $11
	ld   de, $ef59                                   ; $6269: $11 $59 $ef
	rst  $38                                         ; $626c: $ff
	rst  $38                                         ; $626d: $ff
	rst  $38                                         ; $626e: $ff
	rst  $38                                         ; $626f: $ff
	rst  $38                                         ; $6270: $ff
	rst  $38                                         ; $6271: $ff
	ei                                               ; $6272: $fb
	sub  [hl]                                        ; $6273: $96
	ld   b, c                                        ; $6274: $41
	ld   de, $4512                                   ; $6275: $11 $12 $45
	ld   h, a                                        ; $6278: $67
	sbc  d                                           ; $6279: $9a
	xor  b                                           ; $627a: $a8
	ld   [hl], l                                     ; $627b: $75
	ld   b, d                                        ; $627c: $42
	ld   bc, $1111                                   ; $627d: $01 $11 $11
	ld   de, $1111                                   ; $6280: $11 $11 $11
	inc  de                                          ; $6283: $13
	ld   l, c                                        ; $6284: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6285: $cf
	rst  $38                                         ; $6286: $ff
	rst  $38                                         ; $6287: $ff
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	rst  $38                                         ; $628a: $ff
	rst  $38                                         ; $628b: $ff
	db   $fc                                         ; $628c: $fc
	sub  a                                           ; $628d: $97
	ld   d, h                                        ; $628e: $54
	ld   b, e                                        ; $628f: $43
	inc  [hl]                                        ; $6290: $34
	ld   d, [hl]                                     ; $6291: $56
	ld   [hl], a                                     ; $6292: $77
	halt                                             ; $6293: $76
	ld   h, a                                        ; $6294: $67
	ld   h, l                                        ; $6295: $65
	ld   sp, $1111                                   ; $6296: $31 $11 $11
	ld   de, $1111                                   ; $6299: $11 $11 $11
	ld   de, $7813                                   ; $629c: $11 $13 $78
	adc  d                                           ; $629f: $8a
	rst  $28                                         ; $62a0: $ef
	rst  $38                                         ; $62a1: $ff
	rst  $38                                         ; $62a2: $ff
	rst  $38                                         ; $62a3: $ff
	rst  $38                                         ; $62a4: $ff
	rst  $38                                         ; $62a5: $ff
	call c, $b8ce                                    ; $62a6: $dc $ce $b8
	ld   b, e                                        ; $62a9: $43
	ld   h, a                                        ; $62aa: $67
	sub  a                                           ; $62ab: $97
	ld   d, h                                        ; $62ac: $54
	ld   d, a                                        ; $62ad: $57
	add  a                                           ; $62ae: $87
	ld   d, h                                        ; $62af: $54
	ld   b, l                                        ; $62b0: $45
	ld   d, h                                        ; $62b1: $54
	ld   hl, $1111                                   ; $62b2: $21 $11 $11
	ld   de, $1111                                   ; $62b5: $11 $11 $11
	ld   de, $8a25                                   ; $62b8: $11 $25 $8a
	xor  h                                           ; $62bb: $ac
	rst  $28                                         ; $62bc: $ef
	rst  $38                                         ; $62bd: $ff
	rst  $38                                         ; $62be: $ff
	rst  $38                                         ; $62bf: $ff
	rst  $38                                         ; $62c0: $ff
	db   $fd                                         ; $62c1: $fd
	call z, $cacd                                    ; $62c2: $cc $cd $ca
	sbc  c                                           ; $62c5: $99
	xor  d                                           ; $62c6: $aa
	cp   c                                           ; $62c7: $b9
	sbc  b                                           ; $62c8: $98
	adc  c                                           ; $62c9: $89
	add  a                                           ; $62ca: $87
	ld   h, l                                        ; $62cb: $65
	ld   d, l                                        ; $62cc: $55
	ld   d, h                                        ; $62cd: $54
	ld   sp, $1111                                   ; $62ce: $31 $11 $11
	ld   de, $1111                                   ; $62d1: $11 $11 $11
	ld   de, $4612                                   ; $62d4: $11 $12 $46
	ld   a, b                                        ; $62d7: $78
	xor  l                                           ; $62d8: $ad
	xor  $ff                                         ; $62d9: $ee $ff
	rst  $38                                         ; $62db: $ff
	xor  $de                                         ; $62dc: $ee $de
	rst  $38                                         ; $62de: $ff
	cp   $fe                                         ; $62df: $fe $fe
	db   $ed                                         ; $62e1: $ed
	call c, $cbcc                                    ; $62e2: $dc $cc $cb
	sbc  c                                           ; $62e5: $99
	adc  b                                           ; $62e6: $88
	add  a                                           ; $62e7: $87
	ld   h, l                                        ; $62e8: $65
	ld   b, l                                        ; $62e9: $45
	ld   d, h                                        ; $62ea: $54
	inc  sp                                          ; $62eb: $33
	ld   [hl-], a                                    ; $62ec: $32
	ld   [hl+], a                                    ; $62ed: $22
	ld   de, $1111                                   ; $62ee: $11 $11 $11
	ld   de, $2211                                   ; $62f1: $11 $11 $22
	ld   b, l                                        ; $62f4: $45
	ld   l, b                                        ; $62f5: $68
	xor  d                                           ; $62f6: $aa
	cp   e                                           ; $62f7: $bb
	call z, $deee                                    ; $62f8: $cc $ee $de
	sbc  $ff                                         ; $62fb: $de $ff
	rst  $38                                         ; $62fd: $ff
	rst  $38                                         ; $62fe: $ff
	cp   $ee                                         ; $62ff: $fe $ee
	call c, $aaca                                    ; $6301: $dc $ca $aa
	sub  a                                           ; $6304: $97
	halt                                             ; $6305: $76
	ld   h, l                                        ; $6306: $65
	ld   d, h                                        ; $6307: $54
	ld   b, h                                        ; $6308: $44
	ld   b, h                                        ; $6309: $44
	inc  sp                                          ; $630a: $33
	inc  sp                                          ; $630b: $33
	ld   [hl+], a                                    ; $630c: $22
	ld   de, $1111                                   ; $630d: $11 $11 $11
	ld   de, $2412                                   ; $6310: $11 $12 $24
	ld   d, [hl]                                     ; $6313: $56
	adc  c                                           ; $6314: $89
	xor  e                                           ; $6315: $ab
	cp   h                                           ; $6316: $bc
	call $ddee                                       ; $6317: $cd $ee $dd
	rst  $38                                         ; $631a: $ff
	rst  $38                                         ; $631b: $ff
	rst  $38                                         ; $631c: $ff
	rst  $38                                         ; $631d: $ff
	xor  $ec                                         ; $631e: $ee $ec
	res  5, d                                        ; $6320: $cb $aa
	sbc  c                                           ; $6322: $99
	add  a                                           ; $6323: $87
	ld   h, [hl]                                     ; $6324: $66
	ld   d, l                                        ; $6325: $55
	ld   b, h                                        ; $6326: $44
	ld   b, h                                        ; $6327: $44
	inc  [hl]                                        ; $6328: $34
	inc  sp                                          ; $6329: $33
	inc  sp                                          ; $632a: $33
	inc  sp                                          ; $632b: $33
	ld   [hl+], a                                    ; $632c: $22
	ld   [hl+], a                                    ; $632d: $22
	ld   hl, $2312                                   ; $632e: $21 $12 $23
	inc  [hl]                                        ; $6331: $34
	ld   d, [hl]                                     ; $6332: $56
	ld   a, b                                        ; $6333: $78
	sbc  e                                           ; $6334: $9b
	cp   h                                           ; $6335: $bc
	call z, $ccdd                                    ; $6336: $cc $dd $cc
	sbc  $de                                         ; $6339: $de $de
	xor  $ee                                         ; $633b: $ee $ee
	db   $ed                                         ; $633d: $ed
	call c, $bacc                                    ; $633e: $dc $cc $ba
	sbc  c                                           ; $6341: $99
	sbc  b                                           ; $6342: $98
	halt                                             ; $6343: $76
	ld   h, l                                        ; $6344: $65
	ld   d, l                                        ; $6345: $55
	ld   d, h                                        ; $6346: $54
	ld   b, h                                        ; $6347: $44
	ld   b, h                                        ; $6348: $44
	ld   b, h                                        ; $6349: $44
	ld   b, h                                        ; $634a: $44
	ld   b, h                                        ; $634b: $44
	ld   b, h                                        ; $634c: $44
	inc  sp                                          ; $634d: $33
	inc  sp                                          ; $634e: $33
	inc  hl                                          ; $634f: $23
	inc  sp                                          ; $6350: $33
	ld   b, h                                        ; $6351: $44
	ld   d, [hl]                                     ; $6352: $56
	ld   a, c                                        ; $6353: $79
	sbc  c                                           ; $6354: $99
	xor  e                                           ; $6355: $ab
	cp   e                                           ; $6356: $bb
	call z, $ccbc                                    ; $6357: $cc $bc $cc
	call $dedd                                       ; $635a: $cd $dd $de
	db   $dd                                         ; $635d: $dd
	db   $dd                                         ; $635e: $dd
	call z, $b9ba                                    ; $635f: $cc $ba $b9
	sbc  b                                           ; $6362: $98
	add  a                                           ; $6363: $87
	halt                                             ; $6364: $76
	ld   h, [hl]                                     ; $6365: $66
	ld   h, l                                        ; $6366: $65
	ld   d, l                                        ; $6367: $55
	ld   d, l                                        ; $6368: $55
	ld   d, l                                        ; $6369: $55
	ld   d, l                                        ; $636a: $55
	ld   d, l                                        ; $636b: $55
	ld   d, l                                        ; $636c: $55
	ld   b, h                                        ; $636d: $44
	ld   b, h                                        ; $636e: $44
	inc  sp                                          ; $636f: $33
	inc  sp                                          ; $6370: $33
	inc  [hl]                                        ; $6371: $34
	ld   b, h                                        ; $6372: $44
	ld   d, [hl]                                     ; $6373: $56
	ld   a, b                                        ; $6374: $78
	sbc  c                                           ; $6375: $99
	sbc  c                                           ; $6376: $99
	cp   e                                           ; $6377: $bb
	xor  e                                           ; $6378: $ab
	cp   e                                           ; $6379: $bb
	cp   h                                           ; $637a: $bc
	call z, $ddcc                                    ; $637b: $cc $cc $dd
	call c, $ccdc                                    ; $637e: $dc $dc $cc
	cp   d                                           ; $6381: $ba
	cp   c                                           ; $6382: $b9
	sbc  c                                           ; $6383: $99
	sbc  b                                           ; $6384: $98
	ld   [hl], a                                     ; $6385: $77
	halt                                             ; $6386: $76
	ld   h, [hl]                                     ; $6387: $66
	ld   h, [hl]                                     ; $6388: $66
	ld   h, [hl]                                     ; $6389: $66
	ld   h, [hl]                                     ; $638a: $66
	ld   h, l                                        ; $638b: $65
	ld   d, l                                        ; $638c: $55
	ld   d, l                                        ; $638d: $55
	ld   b, h                                        ; $638e: $44
	ld   b, e                                        ; $638f: $43
	inc  sp                                          ; $6390: $33
	inc  sp                                          ; $6391: $33
	inc  sp                                          ; $6392: $33
	inc  [hl]                                        ; $6393: $34
	ld   d, a                                        ; $6394: $57
	add  a                                           ; $6395: $87
	ld   a, b                                        ; $6396: $78
	sbc  d                                           ; $6397: $9a
	xor  b                                           ; $6398: $a8
	sbc  d                                           ; $6399: $9a
	rst  JumpTable                                         ; $639a: $df
	ld   a, [$ff58]                                  ; $639b: $fa $58 $ff
	ld   a, [$ef57]                                  ; $639e: $fa $57 $ef
	ld   sp, hl                                      ; $63a1: $f9
	inc  h                                           ; $63a2: $24
	rst  JumpTable                                         ; $63a3: $df
	jp   c, $ba8b                                    ; $63a4: $da $8b $ba

	ld   a, c                                        ; $63a7: $79
	db   $fd                                         ; $63a8: $fd
	sub  [hl]                                        ; $63a9: $96
	ld   d, [hl]                                     ; $63aa: $56
	rst  JumpTable                                         ; $63ab: $df
	ld   h, c                                        ; $63ac: $61
	ld   d, $71                                      ; $63ad: $16 $71
	ld   de, $1111                                   ; $63af: $11 $11 $11
	ld   de, $2211                                   ; $63b2: $11 $11 $22
	ld   [hl], $cd                                   ; $63b5: $36 $cd
	cp   h                                           ; $63b7: $bc
	rst  $38                                         ; $63b8: $ff
	rst  $38                                         ; $63b9: $ff
	rst  $38                                         ; $63ba: $ff
	rst  $38                                         ; $63bb: $ff
	rst  $38                                         ; $63bc: $ff
	xor  $fe                                         ; $63bd: $ee $fe
	jp   c, $cbab                                    ; $63bf: $da $ab $cb

	ld   h, a                                        ; $63c2: $67
	cp   h                                           ; $63c3: $bc
	and  l                                           ; $63c4: $a5
	ld   d, a                                        ; $63c5: $57
	halt                                             ; $63c6: $76
	ld   d, e                                        ; $63c7: $53
	inc  sp                                          ; $63c8: $33
	inc  h                                           ; $63c9: $24
	ld   b, c                                        ; $63ca: $41
	ld   de, $1111                                   ; $63cb: $11 $11 $11
	ld   de, $1111                                   ; $63ce: $11 $11 $11
	daa                                              ; $63d1: $27
	cp   [hl]                                        ; $63d2: $be
	rst  $38                                         ; $63d3: $ff
	rst  $38                                         ; $63d4: $ff
	rst  $38                                         ; $63d5: $ff
	rst  $38                                         ; $63d6: $ff
	rst  $38                                         ; $63d7: $ff
	rst  $38                                         ; $63d8: $ff
	ei                                               ; $63d9: $fb
	xor  c                                           ; $63da: $a9
	add  a                                           ; $63db: $87
	ld   h, a                                        ; $63dc: $67
	ld   a, b                                        ; $63dd: $78
	cp   h                                           ; $63de: $bc
	rst  $28                                         ; $63df: $ef
	set  1, [hl]                                     ; $63e0: $cb $ce
	db   $d3                                         ; $63e2: $d3
	ld   de, $1111                                   ; $63e3: $11 $11 $11
	ld   de, $1111                                   ; $63e6: $11 $11 $11
	ld   de, $ee2c                                   ; $63e9: $11 $2c $ee
	rst  $38                                         ; $63ec: $ff
	rst  $38                                         ; $63ed: $ff
	rst  $38                                         ; $63ee: $ff
	rst  $38                                         ; $63ef: $ff
	rst  $38                                         ; $63f0: $ff
	rst  $38                                         ; $63f1: $ff
	xor  e                                           ; $63f2: $ab
	add  d                                           ; $63f3: $82
	ld   de, $6a34                                   ; $63f4: $11 $34 $6a
	rst  JumpTable                                         ; $63f7: $df
	rst  $38                                         ; $63f8: $ff
	rst  $38                                         ; $63f9: $ff
	and  a                                           ; $63fa: $a7
	ld   de, $1111                                   ; $63fb: $11 $11 $11
	ld   de, $1111                                   ; $63fe: $11 $11 $11
	ld   de, $ffbf                                   ; $6401: $11 $bf $ff
	rst  $38                                         ; $6404: $ff
	rst  $38                                         ; $6405: $ff
	rst  $38                                         ; $6406: $ff
	rst  $38                                         ; $6407: $ff
	cp   $21                                         ; $6408: $fe $21
	ld   de, $2a31                                   ; $640a: $11 $31 $2a
	rst  $38                                         ; $640d: $ff
	rst  $38                                         ; $640e: $ff
	rst  $38                                         ; $640f: $ff
	jp   hl                                          ; $6410: $e9


	ld   de, $1111                                   ; $6411: $11 $11 $11
	ld   de, $1111                                   ; $6414: $11 $11 $11
	inc  de                                          ; $6417: $13
	rst  $38                                         ; $6418: $ff
	rst  $38                                         ; $6419: $ff
	rst  $38                                         ; $641a: $ff
	rst  $38                                         ; $641b: $ff
	rst  $38                                         ; $641c: $ff
	ld   sp, $fb1a                                   ; $641d: $31 $1a $fb
	ld   d, [hl]                                     ; $6420: $56
	rst  $38                                         ; $6421: $ff
	rst  $38                                         ; $6422: $ff
	rst  $38                                         ; $6423: $ff
	rst  $38                                         ; $6424: $ff
	pop  bc                                          ; $6425: $c1
	ld   de, $1111                                   ; $6426: $11 $11 $11
	ld   de, $4811                                   ; $6429: $11 $11 $48
	ld   de, $ff16                                   ; $642c: $11 $16 $ff
	rst  $38                                         ; $642f: $ff
	rst  $38                                         ; $6430: $ff
	rst  $38                                         ; $6431: $ff
	rst  $38                                         ; $6432: $ff
	db   $db                                         ; $6433: $db
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	set  7, a                                        ; $6436: $cb $ff
	ei                                               ; $6438: $fb
	ld   b, c                                        ; $6439: $41
	rla                                              ; $643a: $17
	ld   h, c                                        ; $643b: $61
	ld   de, $1111                                   ; $643c: $11 $11 $11
	ld   de, $1111                                   ; $643f: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $6442: $11 $14 $ff
	rst  $38                                         ; $6445: $ff
	rst  $38                                         ; $6446: $ff
	rst  $38                                         ; $6447: $ff
	rst  $38                                         ; $6448: $ff
	xor  b                                           ; $6449: $a8
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	xor  a                                           ; $644c: $af
	rst  $38                                         ; $644d: $ff
	cp   $21                                         ; $644e: $fe $21
	dec  d                                           ; $6450: $15
	ld   de, $1111                                   ; $6451: $11 $11 $11
	ld   de, $1111                                   ; $6454: $11 $11 $11
	ld   hl, $3f11                                   ; $6457: $21 $11 $3f
	rst  $38                                         ; $645a: $ff
	rst  $38                                         ; $645b: $ff
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	rst  $38                                         ; $645e: $ff
	rst  $28                                         ; $645f: $ef
	rst  $38                                         ; $6460: $ff
	db   $fd                                         ; $6461: $fd
	rst  JumpTable                                         ; $6462: $df
	rst  $38                                         ; $6463: $ff
	or   d                                           ; $6464: $b2
	ld   de, $1111                                   ; $6465: $11 $11 $11
	ld   de, $1111                                   ; $6468: $11 $11 $11
	ld   de, $1111                                   ; $646b: $11 $11 $11
	ld   de, $ffef                                   ; $646e: $11 $ef $ff
	rst  $38                                         ; $6471: $ff
	rst  $38                                         ; $6472: $ff
	rst  $38                                         ; $6473: $ff
	db   $fc                                         ; $6474: $fc
	rst  $28                                         ; $6475: $ef
	rst  $38                                         ; $6476: $ff
	ei                                               ; $6477: $fb
	ld   l, d                                        ; $6478: $6a
	db   $fd                                         ; $6479: $fd
	sub  c                                           ; $647a: $91
	ld   de, $1111                                   ; $647b: $11 $11 $11
	ld   de, $1111                                   ; $647e: $11 $11 $11
	ld   de, $1111                                   ; $6481: $11 $11 $11
	ld   l, a                                        ; $6484: $6f
	rst  $38                                         ; $6485: $ff
	rst  $38                                         ; $6486: $ff
	rst  $38                                         ; $6487: $ff
	rst  $38                                         ; $6488: $ff
	cp   $af                                         ; $6489: $fe $af
	rst  $38                                         ; $648b: $ff
	cp   $9e                                         ; $648c: $fe $9e
	rst  $38                                         ; $648e: $ff
	pop  de                                          ; $648f: $d1
	ld   de, $1111                                   ; $6490: $11 $11 $11
	ld   de, $2111                                   ; $6493: $11 $11 $21
	ld   de, $1111                                   ; $6496: $11 $11 $11
	ld   d, $ff                                      ; $6499: $16 $ff
	rst  $38                                         ; $649b: $ff
	rst  $38                                         ; $649c: $ff
	rst  $38                                         ; $649d: $ff
	rst  $38                                         ; $649e: $ff
	cp   $ff                                         ; $649f: $fe $ff
	rst  $38                                         ; $64a1: $ff
	ei                                               ; $64a2: $fb
	xor  $a2                                         ; $64a3: $ee $a2
	ld   de, $1111                                   ; $64a5: $11 $11 $11
	ld   de, $1111                                   ; $64a8: $11 $11 $11
	ld   de, $1111                                   ; $64ab: $11 $11 $11
	rla                                              ; $64ae: $17
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	rst  $38                                         ; $64b1: $ff
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	rst  $38                                         ; $64b4: $ff
	rst  $38                                         ; $64b5: $ff
	rst  $38                                         ; $64b6: $ff
	cp   $bd                                         ; $64b7: $fe $bd
	db   $db                                         ; $64b9: $db
	ld   de, $1111                                   ; $64ba: $11 $11 $11
	ld   de, $1111                                   ; $64bd: $11 $11 $11
	ld   de, $1111                                   ; $64c0: $11 $11 $11
	dec  de                                          ; $64c3: $1b
	rst  $38                                         ; $64c4: $ff
	rst  $38                                         ; $64c5: $ff
	rst  $38                                         ; $64c6: $ff
	rst  $38                                         ; $64c7: $ff
	rst  $38                                         ; $64c8: $ff
	rst  $38                                         ; $64c9: $ff
	rst  $38                                         ; $64ca: $ff
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	rst  $28                                         ; $64cd: $ef
	db   $fc                                         ; $64ce: $fc
	ld   b, c                                        ; $64cf: $41
	ld   de, $1111                                   ; $64d0: $11 $11 $11
	ld   de, $1111                                   ; $64d3: $11 $11 $11
	ld   de, $1111                                   ; $64d6: $11 $11 $11
	cp   a                                           ; $64d9: $bf
	rst  $38                                         ; $64da: $ff
	rst  $38                                         ; $64db: $ff
	adc  a                                           ; $64dc: $8f
	rst  $38                                         ; $64dd: $ff
	rst  $38                                         ; $64de: $ff
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	cp   d                                           ; $64e2: $ba
	db   $fd                                         ; $64e3: $fd
	sub  l                                           ; $64e4: $95
	ld   de, $1111                                   ; $64e5: $11 $11 $11
	ld   de, $1111                                   ; $64e8: $11 $11 $11
	ld   de, $1111                                   ; $64eb: $11 $11 $11
	xor  a                                           ; $64ee: $af
	rst  $38                                         ; $64ef: $ff
	rst  $38                                         ; $64f0: $ff
	rst  $38                                         ; $64f1: $ff
	rst  $38                                         ; $64f2: $ff
	rst  $38                                         ; $64f3: $ff
	rst  $38                                         ; $64f4: $ff
	rst  $38                                         ; $64f5: $ff
	rst  $38                                         ; $64f6: $ff
	rst  $38                                         ; $64f7: $ff
	db   $fc                                         ; $64f8: $fc
	sub  l                                           ; $64f9: $95
	ld   de, $1111                                   ; $64fa: $11 $11 $11
	ld   de, $1111                                   ; $64fd: $11 $11 $11
	ld   de, $1111                                   ; $6500: $11 $11 $11
	rst  $38                                         ; $6503: $ff
	rst  $38                                         ; $6504: $ff
	rst  $38                                         ; $6505: $ff
	rst  $38                                         ; $6506: $ff
	rst  $38                                         ; $6507: $ff
	rst  $38                                         ; $6508: $ff
	rst  $38                                         ; $6509: $ff
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	rst  $38                                         ; $650c: $ff
	db   $fc                                         ; $650d: $fc
	sub  d                                           ; $650e: $92
	ld   de, $1111                                   ; $650f: $11 $11 $11
	ld   de, $1111                                   ; $6512: $11 $11 $11
	ld   de, $1111                                   ; $6515: $11 $11 $11
	rst  $38                                         ; $6518: $ff
	rst  $38                                         ; $6519: $ff
	rst  $38                                         ; $651a: $ff
	rst  $38                                         ; $651b: $ff
	rst  $38                                         ; $651c: $ff
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	rst  $38                                         ; $6521: $ff
	db   $fd                                         ; $6522: $fd
	or   l                                           ; $6523: $b5
	ld   de, $1111                                   ; $6524: $11 $11 $11
	ld   de, $1111                                   ; $6527: $11 $11 $11
	ld   de, $1111                                   ; $652a: $11 $11 $11
	cp   a                                           ; $652d: $bf
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	rst  $38                                         ; $6530: $ff
	rst  $38                                         ; $6531: $ff
	rst  $38                                         ; $6532: $ff
	rst  $38                                         ; $6533: $ff
	rst  $38                                         ; $6534: $ff
	rst  $38                                         ; $6535: $ff
	rst  $38                                         ; $6536: $ff
	rst  $38                                         ; $6537: $ff
	and  [hl]                                        ; $6538: $a6
	ld   de, $1111                                   ; $6539: $11 $11 $11
	ld   de, $1111                                   ; $653c: $11 $11 $11
	ld   de, $1111                                   ; $653f: $11 $11 $11
	ld   a, a                                        ; $6542: $7f
	rst  $38                                         ; $6543: $ff
	rst  $38                                         ; $6544: $ff
	rst  $38                                         ; $6545: $ff
	rst  $38                                         ; $6546: $ff
	rst  $38                                         ; $6547: $ff
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	rst  $38                                         ; $654b: $ff
	cp   $b9                                         ; $654c: $fe $b9
	ld   hl, $1111                                   ; $654e: $21 $11 $11
	ld   de, $1111                                   ; $6551: $11 $11 $11
	ld   de, $1111                                   ; $6554: $11 $11 $11
	rra                                              ; $6557: $1f
	rst  $38                                         ; $6558: $ff
	rst  $38                                         ; $6559: $ff
	rst  $38                                         ; $655a: $ff
	rst  $38                                         ; $655b: $ff
	rst  $38                                         ; $655c: $ff
	rst  $38                                         ; $655d: $ff
	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	ld   [$1171], a                                  ; $6562: $ea $71 $11
	ld   de, $1111                                   ; $6565: $11 $11 $11
	ld   de, $1111                                   ; $6568: $11 $11 $11
	ld   de, $ff1c                                   ; $656b: $11 $1c $ff
	rst  $38                                         ; $656e: $ff
	rst  $38                                         ; $656f: $ff
	rst  $38                                         ; $6570: $ff
	rst  $38                                         ; $6571: $ff
	rst  $38                                         ; $6572: $ff
	rst  $38                                         ; $6573: $ff
	rst  $38                                         ; $6574: $ff
	rst  $38                                         ; $6575: $ff
	rst  $38                                         ; $6576: $ff
	ld   [$1182], a                                  ; $6577: $ea $82 $11
	ld   de, $1111                                   ; $657a: $11 $11 $11
	ld   de, $1111                                   ; $657d: $11 $11 $11
	ld   de, $ff16                                   ; $6580: $11 $16 $ff
	rst  $38                                         ; $6583: $ff
	rst  $38                                         ; $6584: $ff
	rst  $38                                         ; $6585: $ff
	rst  $38                                         ; $6586: $ff
	rst  $38                                         ; $6587: $ff
	rst  $38                                         ; $6588: $ff
	rst  $38                                         ; $6589: $ff
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	ei                                               ; $658c: $fb
	add  e                                           ; $658d: $83
	ld   de, $1111                                   ; $658e: $11 $11 $11
	ld   de, $1111                                   ; $6591: $11 $11 $11
	ld   de, $1111                                   ; $6594: $11 $11 $11
	cp   a                                           ; $6597: $bf
	rst  $38                                         ; $6598: $ff
	rst  $38                                         ; $6599: $ff
	rst  $38                                         ; $659a: $ff
	rst  $38                                         ; $659b: $ff
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	rst  $38                                         ; $65a0: $ff
	cp   $aa                                         ; $65a1: $fe $aa
	ld   sp, $1111                                   ; $65a3: $31 $11 $11
	ld   de, $1111                                   ; $65a6: $11 $11 $11
	ld   de, $1111                                   ; $65a9: $11 $11 $11
	ld   a, [de]                                     ; $65ac: $1a
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	rst  $38                                         ; $65b1: $ff
	rst  $38                                         ; $65b2: $ff
	rst  $38                                         ; $65b3: $ff
	rst  $38                                         ; $65b4: $ff
	rst  $38                                         ; $65b5: $ff
	rst  $38                                         ; $65b6: $ff
	cp   e                                           ; $65b7: $bb
	ld   d, d                                        ; $65b8: $52
	ld   sp, $1111                                   ; $65b9: $31 $11 $11
	ld   de, $1111                                   ; $65bc: $11 $11 $11
	ld   de, $1211                                   ; $65bf: $11 $11 $12
	rst  $38                                         ; $65c2: $ff
	rst  $38                                         ; $65c3: $ff
	rst  $38                                         ; $65c4: $ff
	rst  $38                                         ; $65c5: $ff
	rst  $38                                         ; $65c6: $ff
	rst  $38                                         ; $65c7: $ff
	rst  $38                                         ; $65c8: $ff

Call_0e4_65c9:
	rst  $38                                         ; $65c9: $ff
	rst  $38                                         ; $65ca: $ff
	rst  $38                                         ; $65cb: $ff
	db   $fc                                         ; $65cc: $fc
	ld   [hl], h                                     ; $65cd: $74
	ld   sp, $1111                                   ; $65ce: $31 $11 $11
	ld   de, $1111                                   ; $65d1: $11 $11 $11
	ld   de, $1111                                   ; $65d4: $11 $11 $11
	add  hl, de                                      ; $65d7: $19
	rst  $38                                         ; $65d8: $ff
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	rst  $38                                         ; $65db: $ff
	rst  $38                                         ; $65dc: $ff
	rst  $38                                         ; $65dd: $ff
	rst  $38                                         ; $65de: $ff
	rst  $38                                         ; $65df: $ff
	rst  $38                                         ; $65e0: $ff
	rst  $38                                         ; $65e1: $ff
	ld   sp, hl                                      ; $65e2: $f9
	inc  [hl]                                        ; $65e3: $34
	ld   sp, $1111                                   ; $65e4: $31 $11 $11
	ld   de, $1111                                   ; $65e7: $11 $11 $11
	ld   de, $1111                                   ; $65ea: $11 $11 $11
	dec  d                                           ; $65ed: $15
	rst  JumpTable                                         ; $65ee: $df
	rst  $38                                         ; $65ef: $ff
	rst  $38                                         ; $65f0: $ff
	rst  $38                                         ; $65f1: $ff
	rst  $38                                         ; $65f2: $ff
	rst  $38                                         ; $65f3: $ff
	rst  $38                                         ; $65f4: $ff
	rst  $38                                         ; $65f5: $ff
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	rst  $38                                         ; $65f9: $ff
	db   $fc                                         ; $65fa: $fc
	or   a                                           ; $65fb: $b7
	ld   d, e                                        ; $65fc: $53
	ld   de, $1111                                   ; $65fd: $11 $11 $11
	ld   de, $1111                                   ; $6600: $11 $11 $11
	ld   de, $1111                                   ; $6603: $11 $11 $11
	inc  h                                           ; $6606: $24
	ld   a, d                                        ; $6607: $7a
	rst  $28                                         ; $6608: $ef
	rst  $38                                         ; $6609: $ff
	rst  $38                                         ; $660a: $ff
	rst  $38                                         ; $660b: $ff
	rst  $38                                         ; $660c: $ff
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	rst  $38                                         ; $660f: $ff
	rst  $38                                         ; $6610: $ff
	db   $ec                                         ; $6611: $ec
	sub  [hl]                                        ; $6612: $96
	ld   b, d                                        ; $6613: $42
	ld   de, $1111                                   ; $6614: $11 $11 $11
	ld   de, $1111                                   ; $6617: $11 $11 $11
	ld   de, $1111                                   ; $661a: $11 $11 $11
	inc  bc                                          ; $661d: $03
	ld   a, d                                        ; $661e: $7a
	rst  $28                                         ; $661f: $ef
	rst  $38                                         ; $6620: $ff
	rst  $38                                         ; $6621: $ff
	rst  $38                                         ; $6622: $ff
	rst  $38                                         ; $6623: $ff
	rst  $38                                         ; $6624: $ff
	rst  $38                                         ; $6625: $ff
	rst  $38                                         ; $6626: $ff
	rst  $38                                         ; $6627: $ff
	db   $fc                                         ; $6628: $fc
	sub  a                                           ; $6629: $97
	ld   d, d                                        ; $662a: $52
	ld   de, $1111                                   ; $662b: $11 $11 $11
	ld   de, $1111                                   ; $662e: $11 $11 $11
	ld   de, $1111                                   ; $6631: $11 $11 $11
	inc  de                                          ; $6634: $13
	ld   l, c                                        ; $6635: $69
	rst  JumpTable                                         ; $6636: $df
	rst  $38                                         ; $6637: $ff
	rst  $38                                         ; $6638: $ff
	rst  $38                                         ; $6639: $ff
	rst  $38                                         ; $663a: $ff
	rst  $38                                         ; $663b: $ff
	rst  $38                                         ; $663c: $ff
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	db   $fc                                         ; $663f: $fc
	sub  [hl]                                        ; $6640: $96
	ld   b, d                                        ; $6641: $42
	ld   de, $1111                                   ; $6642: $11 $11 $11
	ld   de, $1111                                   ; $6645: $11 $11 $11
	ld   de, $1111                                   ; $6648: $11 $11 $11
	ld   [de], a                                     ; $664b: $12
	ld   l, c                                        ; $664c: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $664d: $cf
	rst  $38                                         ; $664e: $ff
	rst  $38                                         ; $664f: $ff
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	rst  $38                                         ; $6652: $ff
	rst  $38                                         ; $6653: $ff
	rst  $38                                         ; $6654: $ff
	rst  $38                                         ; $6655: $ff
	db   $fd                                         ; $6656: $fd
	sub  a                                           ; $6657: $97
	ld   d, d                                        ; $6658: $52
	ld   de, $1111                                   ; $6659: $11 $11 $11
	ld   de, $1111                                   ; $665c: $11 $11 $11
	ld   de, $1111                                   ; $665f: $11 $11 $11
	inc  de                                          ; $6662: $13
	ld   a, e                                        ; $6663: $7b
	rst  JumpTable                                         ; $6664: $df
	rst  $38                                         ; $6665: $ff
	rst  $38                                         ; $6666: $ff
	rst  $38                                         ; $6667: $ff
	rst  $38                                         ; $6668: $ff
	rst  $38                                         ; $6669: $ff
	rst  $38                                         ; $666a: $ff
	rst  $38                                         ; $666b: $ff
	rst  $38                                         ; $666c: $ff
	db   $fc                                         ; $666d: $fc
	sub  a                                           ; $666e: $97
	ld   d, d                                        ; $666f: $52
	ld   de, $1111                                   ; $6670: $11 $11 $11
	ld   de, $1111                                   ; $6673: $11 $11 $11
	ld   de, $1111                                   ; $6676: $11 $11 $11
	inc  de                                          ; $6679: $13
	ld   l, c                                        ; $667a: $69
	rst  $28                                         ; $667b: $ef
	rst  $38                                         ; $667c: $ff
	rst  $38                                         ; $667d: $ff
	rst  $38                                         ; $667e: $ff
	rst  $38                                         ; $667f: $ff
	rst  $38                                         ; $6680: $ff
	rst  $38                                         ; $6681: $ff
	rst  $38                                         ; $6682: $ff
	rst  $38                                         ; $6683: $ff
	db   $fd                                         ; $6684: $fd
	sub  a                                           ; $6685: $97
	ld   b, d                                        ; $6686: $42
	ld   de, $1111                                   ; $6687: $11 $11 $11
	ld   de, $1111                                   ; $668a: $11 $11 $11
	ld   de, $1111                                   ; $668d: $11 $11 $11
	inc  d                                           ; $6690: $14
	ld   a, e                                        ; $6691: $7b
	rst  $28                                         ; $6692: $ef
	rst  $38                                         ; $6693: $ff
	rst  $38                                         ; $6694: $ff
	rst  $38                                         ; $6695: $ff
	rst  $38                                         ; $6696: $ff

Jump_0e4_6697:
	rst  $38                                         ; $6697: $ff

Call_0e4_6698:
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	db   $fc                                         ; $669b: $fc
	and  a                                           ; $669c: $a7
	ld   d, d                                        ; $669d: $52
	ld   de, $1111                                   ; $669e: $11 $11 $11
	ld   de, $1111                                   ; $66a1: $11 $11 $11
	ld   de, $1111                                   ; $66a4: $11 $11 $11
	inc  de                                          ; $66a7: $13

Call_0e4_66a8:
	ld   a, d                                        ; $66a8: $7a
	rst  JumpTable                                         ; $66a9: $df
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	rst  $38                                         ; $66ac: $ff
	rst  $38                                         ; $66ad: $ff
	rst  $38                                         ; $66ae: $ff
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	rst  $38                                         ; $66b1: $ff
	db   $fc                                         ; $66b2: $fc
	sub  a                                           ; $66b3: $97
	ld   b, d                                        ; $66b4: $42
	ld   de, $1111                                   ; $66b5: $11 $11 $11
	ld   de, $1111                                   ; $66b8: $11 $11 $11
	ld   de, $1111                                   ; $66bb: $11 $11 $11
	inc  de                                          ; $66be: $13
	ld   l, c                                        ; $66bf: $69
	rst  JumpTable                                         ; $66c0: $df
	rst  $38                                         ; $66c1: $ff
	rst  $38                                         ; $66c2: $ff
	rst  $38                                         ; $66c3: $ff
	rst  $38                                         ; $66c4: $ff
	rst  $38                                         ; $66c5: $ff
	rst  $38                                         ; $66c6: $ff
	rst  $38                                         ; $66c7: $ff
	rst  $38                                         ; $66c8: $ff
	db   $fd                                         ; $66c9: $fd
	or   a                                           ; $66ca: $b7
	ld   d, e                                        ; $66cb: $53
	ld   de, $1111                                   ; $66cc: $11 $11 $11
	ld   de, $1111                                   ; $66cf: $11 $11 $11
	ld   de, $1111                                   ; $66d2: $11 $11 $11
	ld   de, $bd47                                   ; $66d5: $11 $47 $bd
	rst  $38                                         ; $66d8: $ff
	rst  $38                                         ; $66d9: $ff
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
	rst  $38                                         ; $66e0: $ff
	jp   c, $3185                                    ; $66e1: $da $85 $31

	ld   de, $1111                                   ; $66e4: $11 $11 $11
	ld   de, $1111                                   ; $66e7: $11 $11 $11
	ld   de, $1111                                   ; $66ea: $11 $11 $11
	inc  de                                          ; $66ed: $13
	ld   e, b                                        ; $66ee: $58
	xor  l                                           ; $66ef: $ad
	rst  $38                                         ; $66f0: $ff
	rst  $38                                         ; $66f1: $ff
	rst  $38                                         ; $66f2: $ff
	rst  $38                                         ; $66f3: $ff
	rst  $38                                         ; $66f4: $ff
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	rst  $38                                         ; $66f8: $ff
	res  2, a                                        ; $66f9: $cb $97
	ld   d, h                                        ; $66fb: $54
	ld   hl, $1111                                   ; $66fc: $21 $11 $11
	ld   de, $1111                                   ; $66ff: $11 $11 $11
	ld   de, $1111                                   ; $6702: $11 $11 $11
	ld   de, $6924                                   ; $6705: $11 $24 $69
	cp   l                                           ; $6708: $bd
	rst  $38                                         ; $6709: $ff
	rst  $38                                         ; $670a: $ff
	rst  $38                                         ; $670b: $ff
	rst  $38                                         ; $670c: $ff
	rst  $38                                         ; $670d: $ff
	rst  $38                                         ; $670e: $ff
	rst  $38                                         ; $670f: $ff
	rst  $38                                         ; $6710: $ff
	rst  $38                                         ; $6711: $ff
	db   $fd                                         ; $6712: $fd
	cp   c                                           ; $6713: $b9
	add  [hl]                                        ; $6714: $86
	ld   b, e                                        ; $6715: $43
	ld   hl, $1111                                   ; $6716: $21 $11 $11
	ld   de, $1111                                   ; $6719: $11 $11 $11
	ld   de, $1111                                   ; $671c: $11 $11 $11
	ld   [de], a                                     ; $671f: $12
	dec  [hl]                                        ; $6720: $35
	ld   a, c                                        ; $6721: $79
	cp   h                                           ; $6722: $bc
	rst  JumpTable                                         ; $6723: $df
	rst  $38                                         ; $6724: $ff
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	rst  $38                                         ; $6729: $ff
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	db   $ed                                         ; $672c: $ed
	cp   c                                           ; $672d: $b9
	add  a                                           ; $672e: $87
	ld   h, h                                        ; $672f: $64
	ld   [hl-], a                                    ; $6730: $32
	ld   de, $1111                                   ; $6731: $11 $11 $11
	ld   de, $1111                                   ; $6734: $11 $11 $11
	ld   de, $4422                                   ; $6737: $11 $22 $44
	ld   d, [hl]                                     ; $673a: $56
	ld   h, a                                        ; $673b: $67
	adc  d                                           ; $673c: $8a
	cp   h                                           ; $673d: $bc
	call $ffef                                       ; $673e: $cd $ef $ff
	rst  $38                                         ; $6741: $ff
	rst  $38                                         ; $6742: $ff
	rst  $38                                         ; $6743: $ff
	rst  $38                                         ; $6744: $ff
	rst  $38                                         ; $6745: $ff
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	db   $fc                                         ; $6748: $fc
	jp   $1111                                       ; $6749: $c3 $11 $11


	ld   sp, $1111                                   ; $674c: $31 $11 $11
	ld   de, $1111                                   ; $674f: $11 $11 $11
	ld   de, $6811                                   ; $6752: $11 $11 $68
	cp   l                                           ; $6755: $bd
	rst  $38                                         ; $6756: $ff
	rst  $38                                         ; $6757: $ff
	rst  $38                                         ; $6758: $ff
	rst  $38                                         ; $6759: $ff
	rst  $38                                         ; $675a: $ff
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	db   $ed                                         ; $675d: $ed
	call z, $a9ba                                    ; $675e: $cc $ba $a9
	ld   [hl], l                                     ; $6761: $75
	ld   b, c                                        ; $6762: $41
	ld   de, $1111                                   ; $6763: $11 $11 $11
	ld   de, $1111                                   ; $6766: $11 $11 $11
	ld   de, $ff1b                                   ; $6769: $11 $1b $ff
	rst  $38                                         ; $676c: $ff
	rst  $38                                         ; $676d: $ff
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	rst  $28                                         ; $6770: $ef
	rst  $38                                         ; $6771: $ff
	rst  $38                                         ; $6772: $ff
	rst  $38                                         ; $6773: $ff
	rst  $38                                         ; $6774: $ff
	rst  $38                                         ; $6775: $ff
	sub  $61                                         ; $6776: $d6 $61
	ld   de, $1111                                   ; $6778: $11 $11 $11
	ld   de, $1111                                   ; $677b: $11 $11 $11
	ld   de, $cf11                                   ; $677e: $11 $11 $cf
	rst  $38                                         ; $6781: $ff
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	rst  $38                                         ; $6784: $ff
	rst  $38                                         ; $6785: $ff
	rst  $38                                         ; $6786: $ff
	rst  $38                                         ; $6787: $ff
	rst  $38                                         ; $6788: $ff
	rst  $38                                         ; $6789: $ff
	rst  $38                                         ; $678a: $ff
	ld   hl, sp+$55                                  ; $678b: $f8 $55
	ld   de, $1111                                   ; $678d: $11 $11 $11
	ld   de, $1111                                   ; $6790: $11 $11 $11
	ld   de, $8f11                                   ; $6793: $11 $11 $8f

Call_0e4_6796:
	rst  $38                                         ; $6796: $ff
	rst  $38                                         ; $6797: $ff
	rst  $38                                         ; $6798: $ff
	rst  $38                                         ; $6799: $ff
	db   $fc                                         ; $679a: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $679b: $cf
	rst  $38                                         ; $679c: $ff
	rst  $38                                         ; $679d: $ff
	rst  $38                                         ; $679e: $ff
	rst  $38                                         ; $679f: $ff
	ld   a, [$2244]                                  ; $67a0: $fa $44 $22
	ld   de, $1111                                   ; $67a3: $11 $11 $11
	ld   de, $1111                                   ; $67a6: $11 $11 $11
	ld   de, $ff7f                                   ; $67a9: $11 $7f $ff
	rst  $38                                         ; $67ac: $ff
	rst  $38                                         ; $67ad: $ff
	rst  $38                                         ; $67ae: $ff
	set  7, a                                        ; $67af: $cb $ff
	rst  $38                                         ; $67b1: $ff
	rst  $38                                         ; $67b2: $ff
	rst  $38                                         ; $67b3: $ff
	rst  $38                                         ; $67b4: $ff
	reti                                             ; $67b5: $d9


	ld   [hl-], a                                    ; $67b6: $32
	ld   b, h                                        ; $67b7: $44
	ld   de, $1111                                   ; $67b8: $11 $11 $11
	ld   de, $1111                                   ; $67bb: $11 $11 $11
	ld   de, $ff1f                                   ; $67be: $11 $1f $ff
	rst  $38                                         ; $67c1: $ff
	rst  $38                                         ; $67c2: $ff
	rst  $38                                         ; $67c3: $ff
	adc  e                                           ; $67c4: $8b
	rst  JumpTable                                         ; $67c5: $df
	rst  $38                                         ; $67c6: $ff
	rst  $38                                         ; $67c7: $ff
	rst  $38                                         ; $67c8: $ff
	rst  $38                                         ; $67c9: $ff
	ld   sp, hl                                      ; $67ca: $f9
	ld   d, e                                        ; $67cb: $53
	ld   h, l                                        ; $67cc: $65
	ld   de, $1111                                   ; $67cd: $11 $11 $11
	ld   de, $1111                                   ; $67d0: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $67d3: $11 $11 $ff
	rst  $38                                         ; $67d6: $ff
	rst  $38                                         ; $67d7: $ff
	rst  $38                                         ; $67d8: $ff
	ldh  a, [c]                                      ; $67d9: $f2
	rst  $38                                         ; $67da: $ff
	rst  $38                                         ; $67db: $ff
	rst  $38                                         ; $67dc: $ff
	rst  $38                                         ; $67dd: $ff
	rst  $38                                         ; $67de: $ff
	jp   c, $8b57                                    ; $67df: $da $57 $8b

	ld   sp, $1111                                   ; $67e2: $31 $11 $11
	ld   de, $1111                                   ; $67e5: $11 $11 $11
	ld   de, $4f11                                   ; $67e8: $11 $11 $4f
	sbc  a                                           ; $67eb: $9f
	rst  $38                                         ; $67ec: $ff
	rst  $38                                         ; $67ed: $ff
	rst  $38                                         ; $67ee: $ff
	cp   a                                           ; $67ef: $bf
	rst  $38                                         ; $67f0: $ff
	rst  $38                                         ; $67f1: $ff
	rst  $38                                         ; $67f2: $ff
	rst  $38                                         ; $67f3: $ff
	db   $fd                                         ; $67f4: $fd
	cp   c                                           ; $67f5: $b9
	ld   l, d                                        ; $67f6: $6a
	ld   de, $1111                                   ; $67f7: $11 $11 $11
	ld   de, $1111                                   ; $67fa: $11 $11 $11
	ld   de, $1111                                   ; $67fd: $11 $11 $11
	sbc  a                                           ; $6800: $9f
	rst  $38                                         ; $6801: $ff
	rst  $38                                         ; $6802: $ff
	rst  $38                                         ; $6803: $ff
	db   $f4                                         ; $6804: $f4
	rst  $28                                         ; $6805: $ef
	cp   a                                           ; $6806: $bf
	cp   $ff                                         ; $6807: $fe $ff
	rst  $38                                         ; $6809: $ff
	ld   a, a                                        ; $680a: $7f
	sub  c                                           ; $680b: $91
	ld   [hl], e                                     ; $680c: $73
	ld   de, $1111                                   ; $680d: $11 $11 $11
	ld   [de], a                                     ; $6810: $12
	ld   de, $1111                                   ; $6811: $11 $11 $11
	ld   de, $4f8f                                   ; $6814: $11 $8f $4f
	rst  $38                                         ; $6817: $ff
	rst  $38                                         ; $6818: $ff
	ld   [$ffff], a                                  ; $6819: $ea $ff $ff
	ei                                               ; $681c: $fb
	rst  $38                                         ; $681d: $ff
	rst  $38                                         ; $681e: $ff
	sbc  e                                           ; $681f: $9b
	db   $ec                                         ; $6820: $ec
	pop  hl                                          ; $6821: $e1
	ld   de, $1111                                   ; $6822: $11 $11 $11
	ld   de, $1111                                   ; $6825: $11 $11 $11
	ld   de, $1a11                                   ; $6828: $11 $11 $1a
	db   $fd                                         ; $682b: $fd
	rra                                              ; $682c: $1f
	rst  $38                                         ; $682d: $ff
	rst  $38                                         ; $682e: $ff
	ld   a, [$ff8f]                                  ; $682f: $fa $8f $ff
	rst  $38                                         ; $6832: $ff
	rst  $38                                         ; $6833: $ff
	rst  $38                                         ; $6834: $ff
	add  sp, $31                                     ; $6835: $e8 $31
	ld   [hl-], a                                    ; $6837: $32
	add  [hl]                                        ; $6838: $86
	ld   de, $1111                                   ; $6839: $11 $11 $11
	ld   de, $1111                                   ; $683c: $11 $11 $11
	ld   de, $ba3f                                   ; $683f: $11 $3f $ba
	rst  $38                                         ; $6842: $ff
	rst  $28                                         ; $6843: $ef
	db   $fd                                         ; $6844: $fd
	rst  JumpTable                                         ; $6845: $df
	ei                                               ; $6846: $fb
	rst  $38                                         ; $6847: $ff
	rst  $38                                         ; $6848: $ff
	db   $fd                                         ; $6849: $fd
	rst  $38                                         ; $684a: $ff
	add  [hl]                                        ; $684b: $86
	ld   b, [hl]                                     ; $684c: $46
	ld   d, c                                        ; $684d: $51
	ld   d, c                                        ; $684e: $51
	ld   de, $1111                                   ; $684f: $11 $11 $11
	ld   de, $1111                                   ; $6852: $11 $11 $11
	ld   de, $1fd9                                   ; $6855: $11 $d9 $1f
	db   $fc                                         ; $6858: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6859: $cf
	cp   a                                           ; $685a: $bf
	db   $fd                                         ; $685b: $fd
	ld   e, $ff                                      ; $685c: $1e $ff
	rst  $38                                         ; $685e: $ff
	ld   a, [$52ff]                                  ; $685f: $fa $ff $52
	xor  b                                           ; $6862: $a8
	ld   d, l                                        ; $6863: $55
	ld   de, $1113                                   ; $6864: $11 $13 $11
	ld   de, $1112                                   ; $6867: $11 $12 $11
	ld   de, $6a12                                   ; $686a: $11 $12 $6a
	rst  $38                                         ; $686d: $ff
	rst  $38                                         ; $686e: $ff
	cp   a                                           ; $686f: $bf
	ld   sp, hl                                      ; $6870: $f9
	rst  $28                                         ; $6871: $ef
	cp   d                                           ; $6872: $ba
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	rst  $38                                         ; $6876: $ff
	or   l                                           ; $6877: $b5
	ld   d, a                                        ; $6878: $57
	ld   b, h                                        ; $6879: $44
	ld   d, c                                        ; $687a: $51
	ld   [de], a                                     ; $687b: $12
	ld   b, c                                        ; $687c: $41
	ld   de, $1123                                   ; $687d: $11 $23 $11
	ld   de, $3811                                   ; $6880: $11 $11 $38
	ld   a, c                                        ; $6883: $79
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	rst  $38                                         ; $6886: $ff
	db   $fc                                         ; $6887: $fc
	adc  l                                           ; $6888: $8d
	rst  $38                                         ; $6889: $ff
	ei                                               ; $688a: $fb
	call $d7ff                                       ; $688b: $cd $ff $d7
	ld   a, e                                        ; $688e: $7b
	xor  b                                           ; $688f: $a8
	ld   b, c                                        ; $6890: $41
	dec  d                                           ; $6891: $15
	ld   h, c                                        ; $6892: $61
	ld   de, $5323                                   ; $6893: $11 $23 $53
	ld   bc, $2111                                   ; $6896: $01 $11 $21
	inc  de                                          ; $6899: $13
	cp   h                                           ; $689a: $bc
	cp   a                                           ; $689b: $bf
	db   $ec                                         ; $689c: $ec
	rst  $28                                         ; $689d: $ef
	ld   a, [$bf9a]                                  ; $689e: $fa $9a $bf
	rst  $30                                         ; $68a1: $f7
	ld   a, l                                        ; $68a2: $7d
	sbc  $b8                                         ; $68a3: $de $b8
	adc  b                                           ; $68a5: $88
	cp   c                                           ; $68a6: $b9
	ld   d, l                                        ; $68a7: $55
	ld   b, [hl]                                     ; $68a8: $46
	ld   h, e                                        ; $68a9: $63
	ld   b, l                                        ; $68aa: $45
	ld   d, l                                        ; $68ab: $55
	dec  [hl]                                        ; $68ac: $35
	ld   d, h                                        ; $68ad: $54
	ld   b, e                                        ; $68ae: $43
	inc  [hl]                                        ; $68af: $34
	ld   [hl+], a                                    ; $68b0: $22
	ld   h, [hl]                                     ; $68b1: $66
	ld   l, e                                        ; $68b2: $6b
	cp   d                                           ; $68b3: $ba
	cp   e                                           ; $68b4: $bb
	call c, $89cb                                    ; $68b5: $dc $cb $89
	xor  d                                           ; $68b8: $aa
	xor  c                                           ; $68b9: $a9
	add  a                                           ; $68ba: $87
	sbc  d                                           ; $68bb: $9a
	ld   [hl], a                                     ; $68bc: $77
	ld   [hl], a                                     ; $68bd: $77
	ld   a, b                                        ; $68be: $78
	add  a                                           ; $68bf: $87
	ld   b, [hl]                                     ; $68c0: $46
	ld   d, e                                        ; $68c1: $53
	ld   b, h                                        ; $68c2: $44
	ld   b, h                                        ; $68c3: $44
	dec  [hl]                                        ; $68c4: $35
	ld   d, a                                        ; $68c5: $57
	add  [hl]                                        ; $68c6: $86
	ld   a, c                                        ; $68c7: $79
	xor  h                                           ; $68c8: $ac
	jp   z, $baac                                    ; $68c9: $ca $ac $ba

	sbc  d                                           ; $68cc: $9a
	sbc  b                                           ; $68cd: $98
	adc  b                                           ; $68ce: $88
	add  a                                           ; $68cf: $87
	ld   [hl], a                                     ; $68d0: $77
	adc  b                                           ; $68d1: $88
	sbc  b                                           ; $68d2: $98
	sbc  b                                           ; $68d3: $98
	sbc  c                                           ; $68d4: $99
	xor  c                                           ; $68d5: $a9
	xor  d                                           ; $68d6: $aa
	xor  c                                           ; $68d7: $a9
	xor  d                                           ; $68d8: $aa
	xor  d                                           ; $68d9: $aa
	sbc  c                                           ; $68da: $99
	xor  c                                           ; $68db: $a9
	sbc  c                                           ; $68dc: $99
	sbc  c                                           ; $68dd: $99
	adc  c                                           ; $68de: $89
	adc  c                                           ; $68df: $89
	sbc  b                                           ; $68e0: $98
	sbc  c                                           ; $68e1: $99
	adc  b                                           ; $68e2: $88
	adc  c                                           ; $68e3: $89
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
	sbc  c                                           ; $68ee: $99
	adc  c                                           ; $68ef: $89
	adc  b                                           ; $68f0: $88
	sbc  c                                           ; $68f1: $99
	sbc  c                                           ; $68f2: $99
	sbc  c                                           ; $68f3: $99
	sbc  b                                           ; $68f4: $98
	sbc  b                                           ; $68f5: $98
	adc  b                                           ; $68f6: $88
	adc  b                                           ; $68f7: $88
	adc  b                                           ; $68f8: $88
	adc  b                                           ; $68f9: $88
	adc  b                                           ; $68fa: $88
	adc  b                                           ; $68fb: $88
	adc  b                                           ; $68fc: $88
	adc  b                                           ; $68fd: $88
	add  a                                           ; $68fe: $87
	adc  b                                           ; $68ff: $88
	adc  b                                           ; $6900: $88
	adc  b                                           ; $6901: $88
	adc  b                                           ; $6902: $88
	adc  b                                           ; $6903: $88
	adc  b                                           ; $6904: $88
	adc  b                                           ; $6905: $88
	adc  b                                           ; $6906: $88
	adc  b                                           ; $6907: $88
	adc  b                                           ; $6908: $88
	adc  b                                           ; $6909: $88
	adc  b                                           ; $690a: $88
	adc  b                                           ; $690b: $88
	adc  b                                           ; $690c: $88
	adc  b                                           ; $690d: $88
	adc  b                                           ; $690e: $88
	adc  b                                           ; $690f: $88
	adc  b                                           ; $6910: $88
	adc  b                                           ; $6911: $88
	adc  b                                           ; $6912: $88
	adc  b                                           ; $6913: $88
	adc  b                                           ; $6914: $88
	adc  b                                           ; $6915: $88
	adc  b                                           ; $6916: $88
	adc  b                                           ; $6917: $88
	adc  b                                           ; $6918: $88
	adc  b                                           ; $6919: $88
	adc  b                                           ; $691a: $88
	adc  b                                           ; $691b: $88
	adc  b                                           ; $691c: $88
	adc  b                                           ; $691d: $88
	adc  b                                           ; $691e: $88
	adc  b                                           ; $691f: $88
	adc  b                                           ; $6920: $88
	adc  b                                           ; $6921: $88
	adc  b                                           ; $6922: $88
	adc  b                                           ; $6923: $88
	adc  b                                           ; $6924: $88
	adc  b                                           ; $6925: $88
	adc  b                                           ; $6926: $88
	adc  b                                           ; $6927: $88
	adc  b                                           ; $6928: $88
	adc  b                                           ; $6929: $88
	adc  b                                           ; $692a: $88
	adc  b                                           ; $692b: $88
	adc  b                                           ; $692c: $88
	adc  b                                           ; $692d: $88
	adc  b                                           ; $692e: $88
	adc  b                                           ; $692f: $88
	adc  b                                           ; $6930: $88
	adc  b                                           ; $6931: $88
	adc  b                                           ; $6932: $88
	adc  b                                           ; $6933: $88
	adc  b                                           ; $6934: $88
	adc  b                                           ; $6935: $88
	adc  b                                           ; $6936: $88
	adc  b                                           ; $6937: $88
	adc  b                                           ; $6938: $88
	adc  b                                           ; $6939: $88
	adc  b                                           ; $693a: $88
	adc  b                                           ; $693b: $88
	adc  b                                           ; $693c: $88
	adc  b                                           ; $693d: $88
	adc  b                                           ; $693e: $88
	adc  b                                           ; $693f: $88
	adc  b                                           ; $6940: $88
	adc  b                                           ; $6941: $88
	adc  b                                           ; $6942: $88
	adc  b                                           ; $6943: $88
	adc  b                                           ; $6944: $88
	adc  b                                           ; $6945: $88
	adc  b                                           ; $6946: $88
	adc  b                                           ; $6947: $88
	adc  b                                           ; $6948: $88
	adc  b                                           ; $6949: $88
	adc  b                                           ; $694a: $88
	adc  b                                           ; $694b: $88
	adc  b                                           ; $694c: $88
	adc  b                                           ; $694d: $88
	adc  b                                           ; $694e: $88
	adc  b                                           ; $694f: $88
	adc  b                                           ; $6950: $88
	adc  b                                           ; $6951: $88
	adc  b                                           ; $6952: $88
	adc  b                                           ; $6953: $88
	adc  b                                           ; $6954: $88
	adc  b                                           ; $6955: $88
	adc  b                                           ; $6956: $88
	adc  b                                           ; $6957: $88
	adc  b                                           ; $6958: $88
	adc  b                                           ; $6959: $88
	adc  b                                           ; $695a: $88
	adc  b                                           ; $695b: $88
	adc  b                                           ; $695c: $88
	adc  b                                           ; $695d: $88
	adc  b                                           ; $695e: $88
	adc  b                                           ; $695f: $88
	adc  b                                           ; $6960: $88
	adc  b                                           ; $6961: $88
	adc  b                                           ; $6962: $88
	adc  b                                           ; $6963: $88
	adc  b                                           ; $6964: $88
	adc  b                                           ; $6965: $88
	adc  b                                           ; $6966: $88
	adc  b                                           ; $6967: $88
	adc  b                                           ; $6968: $88
	adc  b                                           ; $6969: $88
	adc  b                                           ; $696a: $88
	adc  b                                           ; $696b: $88
	adc  b                                           ; $696c: $88
	adc  b                                           ; $696d: $88
	adc  b                                           ; $696e: $88
	adc  b                                           ; $696f: $88
	adc  b                                           ; $6970: $88
	adc  b                                           ; $6971: $88
	adc  b                                           ; $6972: $88
	adc  b                                           ; $6973: $88
	adc  b                                           ; $6974: $88
	adc  b                                           ; $6975: $88
	adc  b                                           ; $6976: $88
	adc  b                                           ; $6977: $88
	adc  b                                           ; $6978: $88
	adc  b                                           ; $6979: $88
	adc  b                                           ; $697a: $88
	adc  b                                           ; $697b: $88
	adc  b                                           ; $697c: $88
	adc  b                                           ; $697d: $88
	adc  b                                           ; $697e: $88
	adc  b                                           ; $697f: $88
	adc  b                                           ; $6980: $88
	adc  b                                           ; $6981: $88
	adc  b                                           ; $6982: $88
	adc  b                                           ; $6983: $88
	adc  b                                           ; $6984: $88
	adc  b                                           ; $6985: $88
	adc  b                                           ; $6986: $88
	adc  b                                           ; $6987: $88
	adc  b                                           ; $6988: $88
	adc  b                                           ; $6989: $88
	adc  b                                           ; $698a: $88
	adc  b                                           ; $698b: $88
	adc  b                                           ; $698c: $88
	adc  b                                           ; $698d: $88
	adc  b                                           ; $698e: $88
	adc  b                                           ; $698f: $88
	adc  b                                           ; $6990: $88
	adc  b                                           ; $6991: $88
	adc  b                                           ; $6992: $88
	adc  b                                           ; $6993: $88
	adc  b                                           ; $6994: $88
	adc  b                                           ; $6995: $88
	adc  b                                           ; $6996: $88
	adc  b                                           ; $6997: $88
	adc  b                                           ; $6998: $88
	adc  b                                           ; $6999: $88
	adc  b                                           ; $699a: $88
	adc  b                                           ; $699b: $88
	adc  b                                           ; $699c: $88
	adc  b                                           ; $699d: $88
	adc  b                                           ; $699e: $88
	adc  b                                           ; $699f: $88
	adc  b                                           ; $69a0: $88
	adc  b                                           ; $69a1: $88
	adc  b                                           ; $69a2: $88
	adc  b                                           ; $69a3: $88
	adc  b                                           ; $69a4: $88
	adc  b                                           ; $69a5: $88
	adc  b                                           ; $69a6: $88
	adc  b                                           ; $69a7: $88
	adc  b                                           ; $69a8: $88
	adc  b                                           ; $69a9: $88
	adc  b                                           ; $69aa: $88
	adc  b                                           ; $69ab: $88
	adc  b                                           ; $69ac: $88
	adc  b                                           ; $69ad: $88
	adc  b                                           ; $69ae: $88
	adc  b                                           ; $69af: $88
	adc  b                                           ; $69b0: $88
	adc  b                                           ; $69b1: $88
	adc  b                                           ; $69b2: $88
	adc  b                                           ; $69b3: $88
	adc  b                                           ; $69b4: $88
	adc  b                                           ; $69b5: $88
	adc  b                                           ; $69b6: $88
	adc  b                                           ; $69b7: $88
	adc  b                                           ; $69b8: $88
	adc  b                                           ; $69b9: $88
	adc  b                                           ; $69ba: $88
	adc  b                                           ; $69bb: $88
	adc  b                                           ; $69bc: $88
	adc  b                                           ; $69bd: $88
	adc  b                                           ; $69be: $88
	adc  b                                           ; $69bf: $88
	adc  b                                           ; $69c0: $88
	adc  b                                           ; $69c1: $88
	adc  b                                           ; $69c2: $88
	adc  b                                           ; $69c3: $88
	adc  b                                           ; $69c4: $88
	adc  b                                           ; $69c5: $88
	adc  b                                           ; $69c6: $88
	adc  b                                           ; $69c7: $88
	adc  b                                           ; $69c8: $88
	adc  b                                           ; $69c9: $88
	adc  b                                           ; $69ca: $88
	adc  b                                           ; $69cb: $88
	adc  b                                           ; $69cc: $88
	adc  b                                           ; $69cd: $88
	adc  b                                           ; $69ce: $88
	adc  b                                           ; $69cf: $88
	adc  b                                           ; $69d0: $88
	adc  b                                           ; $69d1: $88
	adc  b                                           ; $69d2: $88
	adc  b                                           ; $69d3: $88
	adc  b                                           ; $69d4: $88
	adc  b                                           ; $69d5: $88
	adc  b                                           ; $69d6: $88
	adc  b                                           ; $69d7: $88
	adc  b                                           ; $69d8: $88
	adc  b                                           ; $69d9: $88
	adc  b                                           ; $69da: $88
	adc  b                                           ; $69db: $88
	adc  b                                           ; $69dc: $88
	adc  b                                           ; $69dd: $88
	adc  b                                           ; $69de: $88
	adc  b                                           ; $69df: $88
	adc  b                                           ; $69e0: $88
	adc  b                                           ; $69e1: $88
	adc  b                                           ; $69e2: $88
	adc  b                                           ; $69e3: $88
	adc  b                                           ; $69e4: $88
	adc  b                                           ; $69e5: $88
	adc  b                                           ; $69e6: $88
	adc  b                                           ; $69e7: $88
	adc  b                                           ; $69e8: $88
	adc  b                                           ; $69e9: $88
	adc  b                                           ; $69ea: $88
	adc  b                                           ; $69eb: $88
	adc  b                                           ; $69ec: $88
	adc  b                                           ; $69ed: $88
	adc  b                                           ; $69ee: $88
	adc  b                                           ; $69ef: $88
	adc  b                                           ; $69f0: $88
	adc  b                                           ; $69f1: $88
	adc  b                                           ; $69f2: $88
	adc  b                                           ; $69f3: $88
	adc  b                                           ; $69f4: $88
	adc  b                                           ; $69f5: $88
	adc  b                                           ; $69f6: $88
	adc  b                                           ; $69f7: $88
	adc  b                                           ; $69f8: $88
	adc  b                                           ; $69f9: $88
	adc  b                                           ; $69fa: $88
	adc  b                                           ; $69fb: $88
	adc  b                                           ; $69fc: $88
	adc  b                                           ; $69fd: $88
	adc  b                                           ; $69fe: $88
	adc  b                                           ; $69ff: $88
	adc  b                                           ; $6a00: $88
	adc  b                                           ; $6a01: $88
	adc  b                                           ; $6a02: $88
	adc  b                                           ; $6a03: $88
	adc  b                                           ; $6a04: $88
	adc  b                                           ; $6a05: $88
	adc  b                                           ; $6a06: $88
	adc  b                                           ; $6a07: $88
	adc  b                                           ; $6a08: $88
	adc  b                                           ; $6a09: $88
	adc  b                                           ; $6a0a: $88
	adc  b                                           ; $6a0b: $88
	adc  b                                           ; $6a0c: $88
	adc  b                                           ; $6a0d: $88
	adc  b                                           ; $6a0e: $88
	adc  b                                           ; $6a0f: $88
	adc  b                                           ; $6a10: $88
	adc  b                                           ; $6a11: $88
	adc  b                                           ; $6a12: $88
	adc  b                                           ; $6a13: $88
	adc  b                                           ; $6a14: $88
	adc  b                                           ; $6a15: $88
	adc  b                                           ; $6a16: $88
	adc  b                                           ; $6a17: $88
	adc  b                                           ; $6a18: $88
	adc  b                                           ; $6a19: $88
	adc  b                                           ; $6a1a: $88
	adc  b                                           ; $6a1b: $88
	adc  b                                           ; $6a1c: $88
	adc  b                                           ; $6a1d: $88
	adc  b                                           ; $6a1e: $88
	adc  b                                           ; $6a1f: $88
	adc  b                                           ; $6a20: $88
	adc  b                                           ; $6a21: $88
	adc  b                                           ; $6a22: $88
	adc  b                                           ; $6a23: $88
	adc  b                                           ; $6a24: $88
	adc  b                                           ; $6a25: $88
	adc  b                                           ; $6a26: $88
	adc  b                                           ; $6a27: $88
	adc  b                                           ; $6a28: $88
	adc  b                                           ; $6a29: $88
	adc  b                                           ; $6a2a: $88
	adc  b                                           ; $6a2b: $88
	adc  b                                           ; $6a2c: $88
	adc  b                                           ; $6a2d: $88
	adc  b                                           ; $6a2e: $88
	adc  b                                           ; $6a2f: $88
	adc  b                                           ; $6a30: $88
	adc  b                                           ; $6a31: $88
	adc  b                                           ; $6a32: $88
	adc  b                                           ; $6a33: $88
	adc  b                                           ; $6a34: $88
	adc  b                                           ; $6a35: $88
	adc  b                                           ; $6a36: $88
	adc  b                                           ; $6a37: $88
	adc  b                                           ; $6a38: $88
	adc  b                                           ; $6a39: $88
	adc  b                                           ; $6a3a: $88
	adc  b                                           ; $6a3b: $88
	adc  b                                           ; $6a3c: $88
	adc  b                                           ; $6a3d: $88
	adc  b                                           ; $6a3e: $88
	adc  b                                           ; $6a3f: $88
	adc  b                                           ; $6a40: $88
	adc  b                                           ; $6a41: $88
	adc  b                                           ; $6a42: $88
	adc  b                                           ; $6a43: $88
	adc  b                                           ; $6a44: $88
	adc  b                                           ; $6a45: $88
	adc  b                                           ; $6a46: $88
	adc  b                                           ; $6a47: $88
	adc  b                                           ; $6a48: $88
	adc  b                                           ; $6a49: $88
	adc  b                                           ; $6a4a: $88
	adc  b                                           ; $6a4b: $88
	adc  b                                           ; $6a4c: $88
	adc  b                                           ; $6a4d: $88
	adc  b                                           ; $6a4e: $88
	adc  b                                           ; $6a4f: $88
	adc  b                                           ; $6a50: $88
	adc  b                                           ; $6a51: $88
	adc  b                                           ; $6a52: $88
	adc  b                                           ; $6a53: $88

Jump_0e4_6a54:
	adc  b                                           ; $6a54: $88
	adc  b                                           ; $6a55: $88
	adc  b                                           ; $6a56: $88
	adc  b                                           ; $6a57: $88
	adc  b                                           ; $6a58: $88
	adc  b                                           ; $6a59: $88
	adc  b                                           ; $6a5a: $88
	adc  b                                           ; $6a5b: $88
	adc  b                                           ; $6a5c: $88
	adc  b                                           ; $6a5d: $88
	adc  b                                           ; $6a5e: $88
	adc  b                                           ; $6a5f: $88
	adc  b                                           ; $6a60: $88
	adc  b                                           ; $6a61: $88
	adc  b                                           ; $6a62: $88
	adc  b                                           ; $6a63: $88
	adc  b                                           ; $6a64: $88
	adc  b                                           ; $6a65: $88
	adc  b                                           ; $6a66: $88
	adc  b                                           ; $6a67: $88
	adc  b                                           ; $6a68: $88
	adc  b                                           ; $6a69: $88
	adc  b                                           ; $6a6a: $88
	adc  b                                           ; $6a6b: $88
	adc  b                                           ; $6a6c: $88
	adc  b                                           ; $6a6d: $88
	adc  b                                           ; $6a6e: $88
	adc  b                                           ; $6a6f: $88
	adc  b                                           ; $6a70: $88
	adc  b                                           ; $6a71: $88
	adc  b                                           ; $6a72: $88
	adc  b                                           ; $6a73: $88
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

Jump_0e4_6a87:
	adc  b                                           ; $6a87: $88
	adc  b                                           ; $6a88: $88
	adc  b                                           ; $6a89: $88
	adc  b                                           ; $6a8a: $88
	adc  b                                           ; $6a8b: $88
	adc  b                                           ; $6a8c: $88
	adc  b                                           ; $6a8d: $88
	adc  b                                           ; $6a8e: $88
	adc  b                                           ; $6a8f: $88
	adc  c                                           ; $6a90: $89
	sbc  b                                           ; $6a91: $98
	sbc  b                                           ; $6a92: $98
	add  a                                           ; $6a93: $87
	adc  b                                           ; $6a94: $88
	adc  b                                           ; $6a95: $88
	ld   a, b                                        ; $6a96: $78
	sbc  c                                           ; $6a97: $99
	adc  b                                           ; $6a98: $88
	adc  b                                           ; $6a99: $88
	sbc  c                                           ; $6a9a: $99
	sbc  b                                           ; $6a9b: $98
	sbc  c                                           ; $6a9c: $99
	sbc  b                                           ; $6a9d: $98
	add  a                                           ; $6a9e: $87
	sbc  c                                           ; $6a9f: $99
	ld   a, b                                        ; $6aa0: $78
	sub  a                                           ; $6aa1: $97
	adc  b                                           ; $6aa2: $88
	sbc  b                                           ; $6aa3: $98
	sbc  c                                           ; $6aa4: $99
	adc  c                                           ; $6aa5: $89
	xor  c                                           ; $6aa6: $a9
	sbc  b                                           ; $6aa7: $98
	adc  c                                           ; $6aa8: $89
	sub  a                                           ; $6aa9: $97
	ld   [hl], a                                     ; $6aaa: $77
	adc  b                                           ; $6aab: $88
	ld   [hl], a                                     ; $6aac: $77
	ld   [hl], a                                     ; $6aad: $77
	adc  b                                           ; $6aae: $88
	adc  b                                           ; $6aaf: $88
	sbc  b                                           ; $6ab0: $98
	adc  b                                           ; $6ab1: $88
	add  a                                           ; $6ab2: $87
	ld   a, c                                        ; $6ab3: $79
	sbc  b                                           ; $6ab4: $98
	ld   [hl], a                                     ; $6ab5: $77
	ld   [hl], a                                     ; $6ab6: $77
	add  [hl]                                        ; $6ab7: $86
	ld   a, b                                        ; $6ab8: $78
	ld   a, b                                        ; $6ab9: $78
	halt                                             ; $6aba: $76
	ld   h, a                                        ; $6abb: $67
	adc  b                                           ; $6abc: $88
	halt                                             ; $6abd: $76
	ld   [hl], a                                     ; $6abe: $77
	add  a                                           ; $6abf: $87
	ld   [hl], a                                     ; $6ac0: $77
	ld   [hl], a                                     ; $6ac1: $77
	ld   a, b                                        ; $6ac2: $78
	ld   a, b                                        ; $6ac3: $78
	ld   [hl], a                                     ; $6ac4: $77
	ld   a, b                                        ; $6ac5: $78
	add  a                                           ; $6ac6: $87
	ld   h, [hl]                                     ; $6ac7: $66

jr_0e4_6ac8:
	ld   a, b                                        ; $6ac8: $78
	sub  a                                           ; $6ac9: $97
	ld   l, b                                        ; $6aca: $68
	adc  c                                           ; $6acb: $89
	sbc  b                                           ; $6acc: $98
	ld   h, a                                        ; $6acd: $67
	xor  c                                           ; $6ace: $a9
	ld   h, [hl]                                     ; $6acf: $66
	add  a                                           ; $6ad0: $87
	ld   a, c                                        ; $6ad1: $79
	ld   [hl], a                                     ; $6ad2: $77
	adc  c                                           ; $6ad3: $89
	sub  a                                           ; $6ad4: $97
	add  a                                           ; $6ad5: $87
	ld   h, [hl]                                     ; $6ad6: $66
	ld   h, a                                        ; $6ad7: $67
	ld   h, a                                        ; $6ad8: $67
	sub  l                                           ; $6ad9: $95
	ld   c, b                                        ; $6ada: $48
	sbc  b                                           ; $6adb: $98
	ld   h, l                                        ; $6adc: $65
	ld   b, [hl]                                     ; $6add: $46
	cp   b                                           ; $6ade: $b8
	ld   b, e                                        ; $6adf: $43
	ld   a, d                                        ; $6ae0: $7a
	add  l                                           ; $6ae1: $85
	ld   h, a                                        ; $6ae2: $67
	sbc  d                                           ; $6ae3: $9a
	ld   [hl], h                                     ; $6ae4: $74
	sbc  h                                           ; $6ae5: $9c
	or   [hl]                                        ; $6ae6: $b6
	ld   l, d                                        ; $6ae7: $6a
	call Call_0e4_7ba9                               ; $6ae8: $cd $a9 $7b
	ld   [$6aa8], a                                  ; $6aeb: $ea $a8 $6a
	adc  $95                                         ; $6aee: $ce $95
	sbc  h                                           ; $6af0: $9c
	sub  a                                           ; $6af1: $97
	adc  b                                           ; $6af2: $88
	ld   h, l                                        ; $6af3: $65
	ld   b, h                                        ; $6af4: $44
	ld   b, l                                        ; $6af5: $45
	ld   h, c                                        ; $6af6: $61
	ld   de, $1113                                   ; $6af7: $11 $13 $11
	jr   jr_0e4_6ac8                                 ; $6afa: $18 $cc

	xor  b                                           ; $6afc: $a8
	adc  l                                           ; $6afd: $8d
	cp   $15                                         ; $6afe: $fe $15
	rst  $38                                         ; $6b00: $ff
	db   $fd                                         ; $6b01: $fd
	db   $ed                                         ; $6b02: $ed
	rst  $38                                         ; $6b03: $ff
	or   [hl]                                        ; $6b04: $b6
	cp   [hl]                                        ; $6b05: $be
	cp   $86                                         ; $6b06: $fe $86
	sbc  a                                           ; $6b08: $9f
	push hl                                          ; $6b09: $e5
	ld   d, l                                        ; $6b0a: $55
	sbc  h                                           ; $6b0b: $9c
	ld   [hl], e                                     ; $6b0c: $73
	ld   de, $3173                                   ; $6b0d: $11 $73 $31
	inc  d                                           ; $6b10: $14
	ld   d, c                                        ; $6b11: $51
	ld   de, $6d47                                   ; $6b12: $11 $47 $6d
	cp   c                                           ; $6b15: $b9
	xor  $fc                                         ; $6b16: $ee $fc
	ld   c, l                                        ; $6b18: $4d
	cp   l                                           ; $6b19: $bd
	db   $fd                                         ; $6b1a: $fd
	rst  $38                                         ; $6b1b: $ff
	rst  $28                                         ; $6b1c: $ef
	cp   [hl]                                        ; $6b1d: $be
	ld   sp, hl                                      ; $6b1e: $f9
	rst  $38                                         ; $6b1f: $ff
	adc  b                                           ; $6b20: $88
	ld   c, c                                        ; $6b21: $49
	ld   [$1ab3], a                                  ; $6b22: $ea $b3 $1a
	ld   a, c                                        ; $6b25: $79
	ld   sp, $3611                                   ; $6b26: $31 $11 $36
	ld   de, $1111                                   ; $6b29: $11 $11 $11
	ld   de, $c96b                                   ; $6b2c: $11 $6b $c9
	rst  JumpTable                                         ; $6b2f: $df
	and  $fa                                         ; $6b30: $e6 $fa
	ld   a, a                                        ; $6b32: $7f
	rst  JumpTable                                         ; $6b33: $df
	rst  $38                                         ; $6b34: $ff
	db   $fd                                         ; $6b35: $fd
	rst  $28                                         ; $6b36: $ef
	adc  l                                           ; $6b37: $8d
	rst  $10                                         ; $6b38: $d7
	ei                                               ; $6b39: $fb
	db   $ed                                         ; $6b3a: $ed
	ld   a, [hl-]                                    ; $6b3b: $3a
	cp   b                                           ; $6b3c: $b8
	jp   nz, $9929                                   ; $6b3d: $c2 $29 $99

	ld   de, $1511                                   ; $6b40: $11 $11 $15
	ld   de, $7411                                   ; $6b43: $11 $11 $74
	ld   de, $bf12                                   ; $6b46: $11 $12 $bf
	cp   a                                           ; $6b49: $bf
	reti                                             ; $6b4a: $d9


	ei                                               ; $6b4b: $fb
	rst  $38                                         ; $6b4c: $ff
	adc  a                                           ; $6b4d: $8f
	db   $fd                                         ; $6b4e: $fd
	rst  $38                                         ; $6b4f: $ff
	xor  $8f                                         ; $6b50: $ee $8f
	jp   z, $aefd                                    ; $6b52: $ca $fd $ae

	ld   e, b                                        ; $6b55: $58
	and  a                                           ; $6b56: $a7
	ld   [$1376], a                                  ; $6b57: $ea $76 $13
	ld   [hl], c                                     ; $6b5a: $71
	ld   de, $1411                                   ; $6b5b: $11 $11 $14
	ld   hl, $1111                                   ; $6b5e: $21 $11 $11
	ld   e, a                                        ; $6b61: $5f
	and  e                                           ; $6b62: $a3
	sbc  h                                           ; $6b63: $9c
	rst  $38                                         ; $6b64: $ff
	cp   d                                           ; $6b65: $ba
	sub  $ff                                         ; $6b66: $d6 $ff
	rst  $38                                         ; $6b68: $ff
	rst  $28                                         ; $6b69: $ef
	ld   sp, hl                                      ; $6b6a: $f9
	rst  $38                                         ; $6b6b: $ff
	rst  JumpTable                                         ; $6b6c: $df
	ld   l, h                                        ; $6b6d: $6c
	db   $fd                                         ; $6b6e: $fd
	rst  $30                                         ; $6b6f: $f7
	jr   jr_0e4_6bc9                                 ; $6b70: $18 $57

	and  l                                           ; $6b72: $a5
	ld   d, h                                        ; $6b73: $54
	daa                                              ; $6b74: $27
	ld   de, $1101                                   ; $6b75: $11 $01 $11
	ld   [de], a                                     ; $6b78: $12
	inc  h                                           ; $6b79: $24
	ld   hl, $551b                                   ; $6b7a: $21 $1b $55
	ld   a, c                                        ; $6b7d: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b7e: $cf
	rst  $38                                         ; $6b7f: $ff
	and  [hl]                                        ; $6b80: $a6
	sbc  a                                           ; $6b81: $9f
	rst  $38                                         ; $6b82: $ff
	ld   hl, sp-$21                                  ; $6b83: $f8 $df
	rst  $38                                         ; $6b85: $ff
	set  5, a                                        ; $6b86: $cb $ef
	ei                                               ; $6b88: $fb
	ld   l, b                                        ; $6b89: $68
	ld   a, d                                        ; $6b8a: $7a
	sub  l                                           ; $6b8b: $95
	ld   d, a                                        ; $6b8c: $57
	sbc  d                                           ; $6b8d: $9a
	ld   b, c                                        ; $6b8e: $41
	ld   de, $1132                                   ; $6b8f: $11 $32 $11
	ld   de, $1111                                   ; $6b92: $11 $11 $11
	ld   de, $bd14                                   ; $6b95: $11 $14 $bd
	cp   $8a                                         ; $6b98: $fe $8a
	rst  $38                                         ; $6b9a: $ff
	jp   z, $ffff                                    ; $6b9b: $ca $ff $ff

	rst  $38                                         ; $6b9e: $ff
	xor  [hl]                                        ; $6b9f: $ae
	db   $eb                                         ; $6ba0: $eb
	db   $fd                                         ; $6ba1: $fd
	cp   a                                           ; $6ba2: $bf
	jp   hl                                          ; $6ba3: $e9


	ld   [hl], l                                     ; $6ba4: $75
	ld   h, [hl]                                     ; $6ba5: $66
	adc  h                                           ; $6ba6: $8c
	add  a                                           ; $6ba7: $87
	add  l                                           ; $6ba8: $85
	ld   b, c                                        ; $6ba9: $41
	ld   de, $3111                                   ; $6baa: $11 $11 $31
	ld   de, $2111                                   ; $6bad: $11 $11 $21
	ld   de, $9f15                                   ; $6bb0: $11 $15 $9f
	rst  $38                                         ; $6bb3: $ff
	db   $ec                                         ; $6bb4: $ec
	db   $fc                                         ; $6bb5: $fc
	xor  a                                           ; $6bb6: $af
	ld   a, a                                        ; $6bb7: $7f
	ei                                               ; $6bb8: $fb
	db   $fd                                         ; $6bb9: $fd
	sbc  a                                           ; $6bba: $9f
	xor  a                                           ; $6bbb: $af
	push de                                          ; $6bbc: $d5
	db   $fd                                         ; $6bbd: $fd
	cp   a                                           ; $6bbe: $bf
	dec  [hl]                                        ; $6bbf: $35
	and  a                                           ; $6bc0: $a7
	ld   hl, sp+$26                                  ; $6bc1: $f8 $26
	daa                                              ; $6bc3: $27
	or   d                                           ; $6bc4: $b2
	ld   hl, $1213                                   ; $6bc5: $21 $13 $12
	ld   b, c                                        ; $6bc8: $41

jr_0e4_6bc9:
	ld   de, $1111                                   ; $6bc9: $11 $11 $11
	ld   de, $ff3e                                   ; $6bcc: $11 $3e $ff
	ei                                               ; $6bcf: $fb
	cp   l                                           ; $6bd0: $bd
	rst  JumpTable                                         ; $6bd1: $df
	ld   [$ffdb], a                                  ; $6bd2: $ea $db $ff
	rst  $38                                         ; $6bd5: $ff
	cp   d                                           ; $6bd6: $ba
	call c, $abed                                    ; $6bd7: $dc $ed $ab
	sbc  c                                           ; $6bda: $99
	sbc  d                                           ; $6bdb: $9a
	add  a                                           ; $6bdc: $87
	add  a                                           ; $6bdd: $87
	sbc  b                                           ; $6bde: $98
	ld   d, [hl]                                     ; $6bdf: $56
	inc  h                                           ; $6be0: $24
	ld   [hl-], a                                    ; $6be1: $32
	ld   h, c                                        ; $6be2: $61
	inc  d                                           ; $6be3: $14
	inc  d                                           ; $6be4: $14
	ld   de, $1101                                   ; $6be5: $11 $01 $11
	ld   d, $47                                      ; $6be8: $16 $47
	ei                                               ; $6bea: $fb
	db   $dd                                         ; $6beb: $dd
	sbc  l                                           ; $6bec: $9d
	xor  h                                           ; $6bed: $ac
	db   $fc                                         ; $6bee: $fc
	sbc  $ef                                         ; $6bef: $de $ef
	db   $eb                                         ; $6bf1: $eb
	reti                                             ; $6bf2: $d9


	rst  JumpTable                                         ; $6bf3: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bf4: $cf
	cp   d                                           ; $6bf5: $ba
	ld   hl, sp-$45                                  ; $6bf6: $f8 $bb
	ld   c, h                                        ; $6bf8: $4c
	ld   [hl], a                                     ; $6bf9: $77
	or   l                                           ; $6bfa: $b5
	add  [hl]                                        ; $6bfb: $86
	dec  [hl]                                        ; $6bfc: $35
	inc  sp                                          ; $6bfd: $33
	ld   d, c                                        ; $6bfe: $51
	ld   [de], a                                     ; $6bff: $12
	inc  d                                           ; $6c00: $14
	ld   de, $1121                                   ; $6c01: $11 $21 $11
	ld   de, $ad35                                   ; $6c04: $11 $35 $ad
	xor  h                                           ; $6c07: $ac
	xor  d                                           ; $6c08: $aa
	cp   d                                           ; $6c09: $ba
	rst  JumpTable                                         ; $6c0a: $df
	rst  $28                                         ; $6c0b: $ef
	rst  $38                                         ; $6c0c: $ff
	db   $fd                                         ; $6c0d: $fd
	sbc  $cc                                         ; $6c0e: $de $cc
	cp   e                                           ; $6c10: $bb
	db   $ed                                         ; $6c11: $ed
	call $8abb                                       ; $6c12: $cd $bb $8a
	sub  a                                           ; $6c15: $97
	xor  b                                           ; $6c16: $a8
	ld   a, b                                        ; $6c17: $78
	ld   d, l                                        ; $6c18: $55
	inc  de                                          ; $6c19: $13
	ld   b, c                                        ; $6c1a: $41
	ld   d, d                                        ; $6c1b: $52
	dec  d                                           ; $6c1c: $15
	ld   de, $1141                                   ; $6c1d: $11 $41 $11
	ld   de, $6711                                   ; $6c20: $11 $11 $67
	xor  h                                           ; $6c23: $ac
	adc  d                                           ; $6c24: $8a
	jp   z, $cfbd                                    ; $6c25: $ca $bd $cf

	rst  $38                                         ; $6c28: $ff
	cp   $ff                                         ; $6c29: $fe $ff
	xor  $cc                                         ; $6c2b: $ee $cc
	call $bbef                                       ; $6c2d: $cd $ef $bb
	xor  b                                           ; $6c30: $a8
	rst  ToBoot                                         ; $6c31: $c7
	adc  e                                           ; $6c32: $8b
	ld   l, h                                        ; $6c33: $6c
	and  c                                           ; $6c34: $a1
	ld   [hl], h                                     ; $6c35: $74
	add  hl, de                                      ; $6c36: $19
	ld   [de], a                                     ; $6c37: $12
	ld   d, c                                        ; $6c38: $51
	ld   b, c                                        ; $6c39: $41
	ld   de, $2112                                   ; $6c3a: $11 $12 $21
	ld   de, $aa13                                   ; $6c3d: $11 $13 $aa
	cp   e                                           ; $6c40: $bb
	ld   a, c                                        ; $6c41: $79
	adc  $fd                                         ; $6c42: $ce $fd
	rst  $28                                         ; $6c44: $ef
	rst  $38                                         ; $6c45: $ff
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	xor  $bd                                         ; $6c48: $ee $bd
	xor  $fc                                         ; $6c4a: $ee $fc
	xor  c                                           ; $6c4c: $a9
	sbc  e                                           ; $6c4d: $9b
	jp   z, Jump_0e4_6697                            ; $6c4e: $ca $97 $66

	ld   d, l                                        ; $6c51: $55
	ld   d, d                                        ; $6c52: $52
	ld   hl, $1113                                   ; $6c53: $21 $13 $11
	ld   hl, $1111                                   ; $6c56: $21 $11 $11
	ld   de, $1811                                   ; $6c59: $11 $11 $18
	ld   a, [hl]                                     ; $6c5c: $7e
	ret                                              ; $6c5d: $c9


	cp   $ef                                         ; $6c5e: $fe $ef
	rst  JumpTable                                         ; $6c60: $df
	rst  $28                                         ; $6c61: $ef
	rst  $38                                         ; $6c62: $ff
	rst  $38                                         ; $6c63: $ff
	rst  $38                                         ; $6c64: $ff
	rst  $38                                         ; $6c65: $ff
	db   $ec                                         ; $6c66: $ec
	db   $fc                                         ; $6c67: $fc
	cp   h                                           ; $6c68: $bc
	xor  e                                           ; $6c69: $ab
	sbc  d                                           ; $6c6a: $9a
	push bc                                          ; $6c6b: $c5
	ld   e, b                                        ; $6c6c: $58
	ld   b, h                                        ; $6c6d: $44
	ld   sp, $1111                                   ; $6c6e: $31 $11 $11
	ld   de, $1111                                   ; $6c71: $11 $11 $11
	ld   de, $1111                                   ; $6c74: $11 $11 $11
	ld   d, $ef                                      ; $6c77: $16 $ef
	db   $fc                                         ; $6c79: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c7a: $cf
	rst  JumpTable                                         ; $6c7b: $df
	db   $fd                                         ; $6c7c: $fd
	rst  $38                                         ; $6c7d: $ff
	rst  $38                                         ; $6c7e: $ff
	rst  $38                                         ; $6c7f: $ff
	cp   $ff                                         ; $6c80: $fe $ff
	rst  $38                                         ; $6c82: $ff
	call c, $9afa                                    ; $6c83: $dc $fa $9a
	ld   a, d                                        ; $6c86: $7a
	sbc  b                                           ; $6c87: $98
	and  [hl]                                        ; $6c88: $a6
	ld   sp, $1111                                   ; $6c89: $31 $11 $11
	ld   de, $1111                                   ; $6c8c: $11 $11 $11
	ld   de, $1111                                   ; $6c8f: $11 $11 $11
	ld   d, $dd                                      ; $6c92: $16 $dd
	rst  $38                                         ; $6c94: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c95: $cf
	call $fffc                                       ; $6c96: $cd $fc $ff
	rst  $38                                         ; $6c99: $ff
	rst  $38                                         ; $6c9a: $ff
	rst  $38                                         ; $6c9b: $ff
	rst  $38                                         ; $6c9c: $ff
	rst  JumpTable                                         ; $6c9d: $df
	db   $fc                                         ; $6c9e: $fc
	ld   a, [$986b]                                  ; $6c9f: $fa $6b $98
	sub  [hl]                                        ; $6ca2: $96
	ld   h, l                                        ; $6ca3: $65
	dec  [hl]                                        ; $6ca4: $35
	ld   de, $1111                                   ; $6ca5: $11 $11 $11
	ld   de, $1111                                   ; $6ca8: $11 $11 $11
	ld   de, $1611                                   ; $6cab: $11 $11 $16
	rst  $38                                         ; $6cae: $ff
	rst  $38                                         ; $6caf: $ff
	cp   $dc                                         ; $6cb0: $fe $dc
	cp   a                                           ; $6cb2: $bf
	rst  $38                                         ; $6cb3: $ff
	rst  $38                                         ; $6cb4: $ff
	rst  $38                                         ; $6cb5: $ff
	rst  $38                                         ; $6cb6: $ff
	db   $ed                                         ; $6cb7: $ed
	db   $fd                                         ; $6cb8: $fd
	xor  $ee                                         ; $6cb9: $ee $ee
	xor  c                                           ; $6cbb: $a9
	add  l                                           ; $6cbc: $85
	sbc  d                                           ; $6cbd: $9a
	ld   h, e                                        ; $6cbe: $63
	ld   de, $1111                                   ; $6cbf: $11 $11 $11
	ld   de, $1111                                   ; $6cc2: $11 $11 $11
	ld   de, $1111                                   ; $6cc5: $11 $11 $11
	adc  [hl]                                        ; $6cc8: $8e
	rst  $38                                         ; $6cc9: $ff
	cp   $df                                         ; $6cca: $fe $df
	db   $dd                                         ; $6ccc: $dd
	rst  $38                                         ; $6ccd: $ff
	rst  $38                                         ; $6cce: $ff
	rst  $38                                         ; $6ccf: $ff
	rst  $38                                         ; $6cd0: $ff
	ld   a, [$ffcf]                                  ; $6cd1: $fa $cf $ff
	ld   a, [$aca9]                                  ; $6cd4: $fa $a9 $ac
	xor  e                                           ; $6cd7: $ab
	ld   d, c                                        ; $6cd8: $51
	ld   de, $1141                                   ; $6cd9: $11 $41 $11
	ld   de, $1111                                   ; $6cdc: $11 $11 $11
	ld   de, $1111                                   ; $6cdf: $11 $11 $11
	jr   @-$1f                                       ; $6ce2: $18 $df

	rst  $38                                         ; $6ce4: $ff
	ld   a, [sRandomSeed]                                  ; $6ce5: $fa $ff $bf
	rst  $38                                         ; $6ce8: $ff
	rst  $38                                         ; $6ce9: $ff
	rst  $38                                         ; $6cea: $ff
	rst  $28                                         ; $6ceb: $ef
	cp   $ff                                         ; $6cec: $fe $ff
	cp   $79                                         ; $6cee: $fe $79
	adc  b                                           ; $6cf0: $88
	ret  z                                           ; $6cf1: $c8

	ld   d, a                                        ; $6cf2: $57
	ld   d, l                                        ; $6cf3: $55
	ld   sp, $1111                                   ; $6cf4: $31 $11 $11
	ld   de, $1411                                   ; $6cf7: $11 $11 $14
	ld   de, $4711                                   ; $6cfa: $11 $11 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cfd: $cf
	ei                                               ; $6cfe: $fb
	rst  $38                                         ; $6cff: $ff
	rst  $28                                         ; $6d00: $ef
	cp   $ff                                         ; $6d01: $fe $ff
	rst  $38                                         ; $6d03: $ff
	rst  $38                                         ; $6d04: $ff
	rst  JumpTable                                         ; $6d05: $df
	rst  $38                                         ; $6d06: $ff
	xor  $ef                                         ; $6d07: $ee $ef
	db   $ec                                         ; $6d09: $ec
	and  a                                           ; $6d0a: $a7
	ld   [hl], a                                     ; $6d0b: $77
	sub  a                                           ; $6d0c: $97
	ld   b, h                                        ; $6d0d: $44
	ld   hl, $1111                                   ; $6d0e: $21 $11 $11
	ld   de, $1111                                   ; $6d11: $11 $11 $11
	inc  de                                          ; $6d14: $13
	ld   h, c                                        ; $6d15: $61
	ld   de, $ff1f                                   ; $6d16: $11 $1f $ff
	ei                                               ; $6d19: $fb
	adc  $ff                                         ; $6d1a: $ce $ff
	xor  $ff                                         ; $6d1c: $ee $ff
	rst  $38                                         ; $6d1e: $ff
	rst  $38                                         ; $6d1f: $ff
	db   $db                                         ; $6d20: $db
	rst  $38                                         ; $6d21: $ff
	cp   $ab                                         ; $6d22: $fe $ab
	ld   sp, hl                                      ; $6d24: $f9
	add  l                                           ; $6d25: $85
	ld   a, [hl-]                                    ; $6d26: $3a
	or   a                                           ; $6d27: $b7
	ld   sp, $1111                                   ; $6d28: $31 $11 $11
	ld   de, $1111                                   ; $6d2b: $11 $11 $11
	ld   de, $1151                                   ; $6d2e: $11 $51 $11
	ld   e, $ff                                      ; $6d31: $1e $ff
	rst  $30                                         ; $6d33: $f7
	rst  $28                                         ; $6d34: $ef
	rst  $38                                         ; $6d35: $ff
	rst  $30                                         ; $6d36: $f7
	rst  $38                                         ; $6d37: $ff
	rst  $38                                         ; $6d38: $ff
	db   $db                                         ; $6d39: $db
	cp   [hl]                                        ; $6d3a: $be
	rst  $38                                         ; $6d3b: $ff
	call $fcbe                                       ; $6d3c: $cd $be $fc
	ld   [hl], h                                     ; $6d3f: $74
	ld   e, h                                        ; $6d40: $5c
	add  $21                                         ; $6d41: $c6 $21
	ld   de, $1111                                   ; $6d43: $11 $11 $11
	ld   de, $1111                                   ; $6d46: $11 $11 $11
	ld   hl, $1511                                   ; $6d49: $21 $11 $15
	rst  $38                                         ; $6d4c: $ff
	db   $fd                                         ; $6d4d: $fd
	cp   a                                           ; $6d4e: $bf
	rst  $38                                         ; $6d4f: $ff
	ld   a, [$ffef]                                  ; $6d50: $fa $ef $ff
	db   $fd                                         ; $6d53: $fd
	sbc  [hl]                                        ; $6d54: $9e
	rst  $38                                         ; $6d55: $ff
	db   $eb                                         ; $6d56: $eb
	xor  a                                           ; $6d57: $af
	cp   $92                                         ; $6d58: $fe $92
	ld   e, d                                        ; $6d5a: $5a
	add  a                                           ; $6d5b: $87
	ld   b, c                                        ; $6d5c: $41
	ld   de, $1111                                   ; $6d5d: $11 $11 $11
	ld   de, $1111                                   ; $6d60: $11 $11 $11
	inc  de                                          ; $6d63: $13
	ld   d, c                                        ; $6d64: $51
	inc  de                                          ; $6d65: $13
	rst  JumpTable                                         ; $6d66: $df
	db   $fd                                         ; $6d67: $fd
	adc  $df                                         ; $6d68: $ce $df
	ld   hl, sp-$11                                  ; $6d6a: $f8 $ef
	rst  $38                                         ; $6d6c: $ff
	rst  $38                                         ; $6d6d: $ff
	call z, $cdff                                    ; $6d6e: $cc $ff $cd
	sbc  [hl]                                        ; $6d71: $9e
	db   $fc                                         ; $6d72: $fc
	or   [hl]                                        ; $6d73: $b6
	ld   l, h                                        ; $6d74: $6c
	and  [hl]                                        ; $6d75: $a6
	ld   hl, $1111                                   ; $6d76: $21 $11 $11
	ld   de, $1111                                   ; $6d79: $11 $11 $11
	ld   de, $4114                                   ; $6d7c: $11 $14 $41
	ld   de, $feef                                   ; $6d7f: $11 $ef $fe
	cp   l                                           ; $6d82: $bd
	rst  $38                                         ; $6d83: $ff
	ld   a, [$ffcf]                                  ; $6d84: $fa $cf $ff
	db   $fc                                         ; $6d87: $fc
	cp   a                                           ; $6d88: $bf
	rst  $38                                         ; $6d89: $ff
	jp   c, $fddf                                    ; $6d8a: $da $df $fd

	ld   [hl], h                                     ; $6d8d: $74
	sbc  d                                           ; $6d8e: $9a
	sub  [hl]                                        ; $6d8f: $96
	ld   de, $1152                                   ; $6d90: $11 $52 $11
	ld   de, $1111                                   ; $6d93: $11 $11 $11
	ld   de, $5112                                   ; $6d96: $11 $12 $51
	ld   [de], a                                     ; $6d99: $12
	sbc  a                                           ; $6d9a: $9f
	rst  $38                                         ; $6d9b: $ff
	call $feff                                       ; $6d9c: $cd $ff $fe
	sbc  a                                           ; $6d9f: $9f
	rst  $38                                         ; $6da0: $ff
	cp   $ef                                         ; $6da1: $fe $ef
	rst  $38                                         ; $6da3: $ff
	add  sp, -$21                                    ; $6da4: $e8 $df
	cp   $85                                         ; $6da6: $fe $85
	ld   a, e                                        ; $6da8: $7b
	jp   $2112                                       ; $6da9: $c3 $12 $21


	ld   de, $1111                                   ; $6dac: $11 $11 $11
	ld   de, $1111                                   ; $6daf: $11 $11 $11
	ld   de, $8f21                                   ; $6db2: $11 $21 $8f
	rst  $38                                         ; $6db5: $ff
	rst  $28                                         ; $6db6: $ef
	rst  $38                                         ; $6db7: $ff
	rst  $38                                         ; $6db8: $ff
	cp   a                                           ; $6db9: $bf
	rst  $38                                         ; $6dba: $ff
	rst  $38                                         ; $6dbb: $ff
	cp   $ff                                         ; $6dbc: $fe $ff
	xor  d                                           ; $6dbe: $aa
	xor  $fd                                         ; $6dbf: $ee $fd
	adc  b                                           ; $6dc1: $88
	adc  h                                           ; $6dc2: $8c
	add  c                                           ; $6dc3: $81
	ld   sp, $1111                                   ; $6dc4: $31 $11 $11
	ld   de, $1111                                   ; $6dc7: $11 $11 $11
	ld   de, $2112                                   ; $6dca: $11 $12 $21
	inc  de                                          ; $6dcd: $13
	adc  a                                           ; $6dce: $8f
	db   $fd                                         ; $6dcf: $fd
	rst  $28                                         ; $6dd0: $ef
	rst  $38                                         ; $6dd1: $ff
	db   $fc                                         ; $6dd2: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dd3: $cf
	rst  $38                                         ; $6dd4: $ff
	rst  $38                                         ; $6dd5: $ff
	rst  $38                                         ; $6dd6: $ff
	rst  $38                                         ; $6dd7: $ff
	xor  e                                           ; $6dd8: $ab
	rst  $38                                         ; $6dd9: $ff
	ei                                               ; $6dda: $fb
	ld   [hl], a                                     ; $6ddb: $77
	sbc  e                                           ; $6ddc: $9b
	ld   [hl], e                                     ; $6ddd: $73
	ld   [hl-], a                                    ; $6dde: $32
	ld   de, $1111                                   ; $6ddf: $11 $11 $11
	ld   de, $1111                                   ; $6de2: $11 $11 $11
	ld   de, $3211                                   ; $6de5: $11 $11 $32
	ld   a, a                                        ; $6de8: $7f
	rst  $38                                         ; $6de9: $ff
	rst  $38                                         ; $6dea: $ff
	rst  $38                                         ; $6deb: $ff
	rst  $38                                         ; $6dec: $ff
	rst  JumpTable                                         ; $6ded: $df
	rst  $38                                         ; $6dee: $ff
	rst  $38                                         ; $6def: $ff
	rst  $38                                         ; $6df0: $ff
	rst  $38                                         ; $6df1: $ff
	call z, $feef                                    ; $6df2: $cc $ef $fe
	and  a                                           ; $6df5: $a7
	sbc  d                                           ; $6df6: $9a
	ld   [hl], h                                     ; $6df7: $74
	ld   hl, $1111                                   ; $6df8: $21 $11 $11
	ld   de, $1111                                   ; $6dfb: $11 $11 $11
	ld   de, $1111                                   ; $6dfe: $11 $11 $11
	ld   de, $fecf                                   ; $6e01: $11 $cf $fe
	rst  $28                                         ; $6e04: $ef
	rst  $38                                         ; $6e05: $ff
	db   $fc                                         ; $6e06: $fc
	rst  JumpTable                                         ; $6e07: $df
	rst  $38                                         ; $6e08: $ff
	cp   $ef                                         ; $6e09: $fe $ef
	rst  $38                                         ; $6e0b: $ff
	call z, $fcef                                    ; $6e0c: $cc $ef $fc
	add  a                                           ; $6e0f: $87
	adc  d                                           ; $6e10: $8a
	ld   [hl], e                                     ; $6e11: $73
	ld   de, $1121                                   ; $6e12: $11 $21 $11
	ld   de, $1111                                   ; $6e15: $11 $11 $11
	ld   de, $1111                                   ; $6e18: $11 $11 $11
	ld   de, $cc5c                                   ; $6e1b: $11 $5c $cc
	call $ffff                                       ; $6e1e: $cd $ff $ff
	rst  $38                                         ; $6e21: $ff
	rst  $38                                         ; $6e22: $ff
	rst  $38                                         ; $6e23: $ff
	adc  $ff                                         ; $6e24: $ce $ff
	call c, $fcbc                                    ; $6e26: $dc $bc $fc
	jp   z, $dccd                                    ; $6e29: $ca $cd $dc

	cp   h                                           ; $6e2c: $bc
	cp   h                                           ; $6e2d: $bc
	cp   c                                           ; $6e2e: $b9
	add  l                                           ; $6e2f: $85
	ld   d, e                                        ; $6e30: $53
	ld   hl, $1111                                   ; $6e31: $21 $11 $11
	ld   de, $1111                                   ; $6e34: $11 $11 $11
	ld   de, $1211                                   ; $6e37: $11 $11 $12
	ld   b, a                                        ; $6e3a: $47
	sbc  h                                           ; $6e3b: $9c
	rst  $28                                         ; $6e3c: $ef
	rst  $38                                         ; $6e3d: $ff
	rst  $38                                         ; $6e3e: $ff
	rst  $38                                         ; $6e3f: $ff
	rst  $38                                         ; $6e40: $ff
	rst  $38                                         ; $6e41: $ff
	rst  $38                                         ; $6e42: $ff
	rst  $38                                         ; $6e43: $ff
	rst  $38                                         ; $6e44: $ff
	cp   $eb                                         ; $6e45: $fe $eb
	xor  b                                           ; $6e47: $a8
	ld   h, h                                        ; $6e48: $64
	ld   sp, $1111                                   ; $6e49: $31 $11 $11
	ld   de, $1111                                   ; $6e4c: $11 $11 $11
	ld   de, $1111                                   ; $6e4f: $11 $11 $11
	ld   de, $5912                                   ; $6e52: $11 $12 $59
	adc  $ff                                         ; $6e55: $ce $ff
	rst  $38                                         ; $6e57: $ff
	rst  $38                                         ; $6e58: $ff
	rst  $38                                         ; $6e59: $ff
	rst  $38                                         ; $6e5a: $ff
	rst  $38                                         ; $6e5b: $ff
	rst  $38                                         ; $6e5c: $ff
	rst  $38                                         ; $6e5d: $ff
	rst  $38                                         ; $6e5e: $ff
	db   $ed                                         ; $6e5f: $ed
	ret                                              ; $6e60: $c9


	ld   [hl], l                                     ; $6e61: $75
	ld   sp, $1111                                   ; $6e62: $31 $11 $11
	ld   de, $1111                                   ; $6e65: $11 $11 $11
	ld   de, $1111                                   ; $6e68: $11 $11 $11
	ld   de, $1411                                   ; $6e6b: $11 $11 $14
	ld   a, d                                        ; $6e6e: $7a
	rst  JumpTable                                         ; $6e6f: $df
	rst  $38                                         ; $6e70: $ff
	rst  $38                                         ; $6e71: $ff
	rst  $38                                         ; $6e72: $ff
	rst  $38                                         ; $6e73: $ff
	rst  $38                                         ; $6e74: $ff
	rst  $38                                         ; $6e75: $ff
	rst  $38                                         ; $6e76: $ff
	rst  $38                                         ; $6e77: $ff
	cp   $cb                                         ; $6e78: $fe $cb
	sub  a                                           ; $6e7a: $97
	ld   b, e                                        ; $6e7b: $43
	ld   de, $1111                                   ; $6e7c: $11 $11 $11
	ld   de, $1111                                   ; $6e7f: $11 $11 $11
	ld   de, $1111                                   ; $6e82: $11 $11 $11
	ld   de, $2611                                   ; $6e85: $11 $11 $26
	sbc  e                                           ; $6e88: $9b
	rst  JumpTable                                         ; $6e89: $df
	rst  $38                                         ; $6e8a: $ff
	rst  $38                                         ; $6e8b: $ff
	rst  $38                                         ; $6e8c: $ff
	rst  $38                                         ; $6e8d: $ff
	rst  $38                                         ; $6e8e: $ff
	rst  $38                                         ; $6e8f: $ff
	rst  $38                                         ; $6e90: $ff
	rst  $38                                         ; $6e91: $ff
	db   $fc                                         ; $6e92: $fc
	cp   e                                           ; $6e93: $bb
	add  h                                           ; $6e94: $84
	ld   hl, $1111                                   ; $6e95: $21 $11 $11
	ld   de, $1111                                   ; $6e98: $11 $11 $11
	ld   de, $1111                                   ; $6e9b: $11 $11 $11
	ld   de, $6a15                                   ; $6e9e: $11 $15 $6a
	rst  JumpTable                                         ; $6ea1: $df
	rst  $38                                         ; $6ea2: $ff
	rst  $38                                         ; $6ea3: $ff
	rst  $38                                         ; $6ea4: $ff
	rst  $38                                         ; $6ea5: $ff
	rst  $38                                         ; $6ea6: $ff
	rst  $38                                         ; $6ea7: $ff
	rst  $38                                         ; $6ea8: $ff
	rst  $38                                         ; $6ea9: $ff
	cp   $cb                                         ; $6eaa: $fe $cb
	cp   h                                           ; $6eac: $bc
	sub  [hl]                                        ; $6ead: $96
	ld   [hl-], a                                    ; $6eae: $32
	ld   [hl-], a                                    ; $6eaf: $32
	ld   de, $1111                                   ; $6eb0: $11 $11 $11
	ld   de, $1111                                   ; $6eb3: $11 $11 $11
	ld   de, $5611                                   ; $6eb6: $11 $11 $56
	ld   a, e                                        ; $6eb9: $7b
	rst  $38                                         ; $6eba: $ff
	rst  $38                                         ; $6ebb: $ff
	rst  $38                                         ; $6ebc: $ff
	rst  $38                                         ; $6ebd: $ff
	rst  $38                                         ; $6ebe: $ff
	rst  $38                                         ; $6ebf: $ff
	rst  $38                                         ; $6ec0: $ff
	rst  $38                                         ; $6ec1: $ff
	rst  $38                                         ; $6ec2: $ff
	rst  $38                                         ; $6ec3: $ff
	xor  c                                           ; $6ec4: $a9
	xor  e                                           ; $6ec5: $ab
	sub  e                                           ; $6ec6: $93
	ld   de, $1111                                   ; $6ec7: $11 $11 $11
	ld   de, $1111                                   ; $6eca: $11 $11 $11
	ld   de, $1111                                   ; $6ecd: $11 $11 $11
	ld   de, $df6a                                   ; $6ed0: $11 $6a $df
	rst  $38                                         ; $6ed3: $ff
	rst  $38                                         ; $6ed4: $ff
	rst  $38                                         ; $6ed5: $ff
	rst  $38                                         ; $6ed6: $ff
	rst  $38                                         ; $6ed7: $ff
	rst  $38                                         ; $6ed8: $ff
	rst  $38                                         ; $6ed9: $ff
	rst  $38                                         ; $6eda: $ff
	rst  $38                                         ; $6edb: $ff
	rst  $38                                         ; $6edc: $ff
	db   $db                                         ; $6edd: $db
	cp   b                                           ; $6ede: $b8
	ld   h, d                                        ; $6edf: $62
	ld   de, $1111                                   ; $6ee0: $11 $11 $11
	ld   de, $1111                                   ; $6ee3: $11 $11 $11
	ld   de, $1111                                   ; $6ee6: $11 $11 $11
	dec  d                                           ; $6ee9: $15
	adc  $ef                                         ; $6eea: $ce $ef
	rst  $38                                         ; $6eec: $ff
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	rst  $38                                         ; $6eef: $ff
	rst  $38                                         ; $6ef0: $ff
	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	rst  $38                                         ; $6ef3: $ff
	rst  $38                                         ; $6ef4: $ff
	db   $fd                                         ; $6ef5: $fd
	cp   e                                           ; $6ef6: $bb
	and  [hl]                                        ; $6ef7: $a6
	ld   hl, $1111                                   ; $6ef8: $21 $11 $11
	ld   de, $1111                                   ; $6efb: $11 $11 $11
	ld   de, $1111                                   ; $6efe: $11 $11 $11
	ld   de, $ff3b                                   ; $6f01: $11 $3b $ff
	rst  $38                                         ; $6f04: $ff
	rst  $38                                         ; $6f05: $ff
	rst  $38                                         ; $6f06: $ff
	rst  $38                                         ; $6f07: $ff
	rst  $38                                         ; $6f08: $ff
	rst  $38                                         ; $6f09: $ff
	rst  $38                                         ; $6f0a: $ff
	rst  $38                                         ; $6f0b: $ff
	rst  $38                                         ; $6f0c: $ff
	rst  $38                                         ; $6f0d: $ff
	jp   c, $31a9                                    ; $6f0e: $da $a9 $31

	ld   de, $1111                                   ; $6f11: $11 $11 $11
	ld   de, $1111                                   ; $6f14: $11 $11 $11
	ld   de, $1111                                   ; $6f17: $11 $11 $11
	inc  l                                           ; $6f1a: $2c
	rst  $38                                         ; $6f1b: $ff
	rst  $28                                         ; $6f1c: $ef
	rst  $38                                         ; $6f1d: $ff
	rst  $38                                         ; $6f1e: $ff
	rst  $38                                         ; $6f1f: $ff
	rst  $38                                         ; $6f20: $ff
	rst  $38                                         ; $6f21: $ff
	rst  $38                                         ; $6f22: $ff
	rst  $38                                         ; $6f23: $ff
	rst  $38                                         ; $6f24: $ff
	rst  $38                                         ; $6f25: $ff
	jp   c, Jump_0e4_51ba                            ; $6f26: $da $ba $51

	ld   de, $1111                                   ; $6f29: $11 $11 $11
	ld   de, $1111                                   ; $6f2c: $11 $11 $11
	ld   de, $1111                                   ; $6f2f: $11 $11 $11
	ld   d, $cf                                      ; $6f32: $16 $cf
	rst  $38                                         ; $6f34: $ff
	rst  $38                                         ; $6f35: $ff
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	rst  $38                                         ; $6f38: $ff
	rst  $38                                         ; $6f39: $ff
	rst  $38                                         ; $6f3a: $ff
	rst  $38                                         ; $6f3b: $ff
	rst  $38                                         ; $6f3c: $ff
	rst  $38                                         ; $6f3d: $ff
	cp   $b8                                         ; $6f3e: $fe $b8
	ld   sp, $1111                                   ; $6f40: $31 $11 $11
	ld   de, $1111                                   ; $6f43: $11 $11 $11
	ld   de, $1111                                   ; $6f46: $11 $11 $11
	ld   de, $8b5a                                   ; $6f49: $11 $5a $8b
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	rst  $38                                         ; $6f4e: $ff
	rst  $38                                         ; $6f4f: $ff
	rst  $38                                         ; $6f50: $ff
	rst  $38                                         ; $6f51: $ff
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	rst  $38                                         ; $6f54: $ff
	rst  $28                                         ; $6f55: $ef
	cp   $74                                         ; $6f56: $fe $74
	ld   hl, $1111                                   ; $6f58: $21 $11 $11
	ld   de, $1111                                   ; $6f5b: $11 $11 $11
	ld   de, $1111                                   ; $6f5e: $11 $11 $11
	ld   de, $ef9a                                   ; $6f61: $11 $9a $ef
	rst  $38                                         ; $6f64: $ff
	rst  $38                                         ; $6f65: $ff
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	rst  $38                                         ; $6f68: $ff
	rst  $38                                         ; $6f69: $ff
	rst  $38                                         ; $6f6a: $ff
	rst  $38                                         ; $6f6b: $ff
	rst  $38                                         ; $6f6c: $ff
	ei                                               ; $6f6d: $fb
	jp   c, $1162                                    ; $6f6e: $da $62 $11

	ld   de, $1111                                   ; $6f71: $11 $11 $11
	ld   de, $1111                                   ; $6f74: $11 $11 $11
	ld   de, $6714                                   ; $6f77: $11 $14 $67
	adc  e                                           ; $6f7a: $8b
	rst  $38                                         ; $6f7b: $ff
	rst  $38                                         ; $6f7c: $ff
	rst  $38                                         ; $6f7d: $ff
	rst  $38                                         ; $6f7e: $ff
	rst  $38                                         ; $6f7f: $ff
	rst  $38                                         ; $6f80: $ff
	rst  $38                                         ; $6f81: $ff
	rst  $38                                         ; $6f82: $ff
	rst  $38                                         ; $6f83: $ff
	rst  $38                                         ; $6f84: $ff
	add  sp, $52                                     ; $6f85: $e8 $52
	ld   [hl-], a                                    ; $6f87: $32
	ld   de, $1111                                   ; $6f88: $11 $11 $11
	ld   de, $1111                                   ; $6f8b: $11 $11 $11
	ld   de, $1221                                   ; $6f8e: $11 $21 $12
	rst  $38                                         ; $6f91: $ff
	rst  $38                                         ; $6f92: $ff
	rst  $38                                         ; $6f93: $ff
	rst  $38                                         ; $6f94: $ff
	rst  $38                                         ; $6f95: $ff
	rst  $38                                         ; $6f96: $ff
	rst  $38                                         ; $6f97: $ff
	rst  $38                                         ; $6f98: $ff
	rst  $38                                         ; $6f99: $ff
	rst  $38                                         ; $6f9a: $ff
	rst  $38                                         ; $6f9b: $ff
	ld   [hl], e                                     ; $6f9c: $73
	sub  a                                           ; $6f9d: $97
	ld   de, $1111                                   ; $6f9e: $11 $11 $11
	ld   de, $1111                                   ; $6fa1: $11 $11 $11
	ld   de, $1311                                   ; $6fa4: $11 $11 $13
	ld   d, l                                        ; $6fa7: $55
	ld   l, a                                        ; $6fa8: $6f
	rst  $38                                         ; $6fa9: $ff
	rst  $38                                         ; $6faa: $ff
	rst  $38                                         ; $6fab: $ff
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	rst  $38                                         ; $6fae: $ff
	rst  $38                                         ; $6faf: $ff
	rst  $38                                         ; $6fb0: $ff
	rst  $38                                         ; $6fb1: $ff
	db   $fd                                         ; $6fb2: $fd
	dec  [hl]                                        ; $6fb3: $35
	ld   h, a                                        ; $6fb4: $67
	ld   de, $1111                                   ; $6fb5: $11 $11 $11
	ld   de, $1111                                   ; $6fb8: $11 $11 $11
	ld   de, $1113                                   ; $6fbb: $11 $13 $11
	adc  a                                           ; $6fbe: $8f
	cp   $ff                                         ; $6fbf: $fe $ff
	rst  $38                                         ; $6fc1: $ff
	rst  $38                                         ; $6fc2: $ff
	rst  $38                                         ; $6fc3: $ff
	rst  $38                                         ; $6fc4: $ff
	rst  $38                                         ; $6fc5: $ff
	rst  $38                                         ; $6fc6: $ff
	rst  $38                                         ; $6fc7: $ff
	cp   $71                                         ; $6fc8: $fe $71
	adc  e                                           ; $6fca: $8b
	ld   de, $1111                                   ; $6fcb: $11 $11 $11
	ld   de, $1111                                   ; $6fce: $11 $11 $11
	ld   de, $5511                                   ; $6fd1: $11 $11 $55
	rra                                              ; $6fd4: $1f
	rst  $38                                         ; $6fd5: $ff
	rst  $38                                         ; $6fd6: $ff
	rst  $38                                         ; $6fd7: $ff
	rst  $38                                         ; $6fd8: $ff
	rst  $38                                         ; $6fd9: $ff
	rst  $38                                         ; $6fda: $ff
	rst  $38                                         ; $6fdb: $ff
	rst  $38                                         ; $6fdc: $ff
	rst  $28                                         ; $6fdd: $ef
	ld   a, [$16b8]                                  ; $6fde: $fa $b8 $16
	ld   b, c                                        ; $6fe1: $41
	ld   de, $1111                                   ; $6fe2: $11 $11 $11
	ld   de, $1111                                   ; $6fe5: $11 $11 $11
	inc  d                                           ; $6fe8: $14
	ld   de, $ff2f                                   ; $6fe9: $11 $2f $ff
	rst  $38                                         ; $6fec: $ff
	rst  $38                                         ; $6fed: $ff
	rra                                              ; $6fee: $1f
	rst  $38                                         ; $6fef: $ff
	rst  $30                                         ; $6ff0: $f7
	rst  $38                                         ; $6ff1: $ff
	rst  $38                                         ; $6ff2: $ff
	dec  sp                                          ; $6ff3: $3b
	rst  $38                                         ; $6ff4: $ff
	ld   hl, $11ad                                   ; $6ff5: $21 $ad $11
	ld   de, $1111                                   ; $6ff8: $11 $11 $11
	inc  d                                           ; $6ffb: $14
	ld   de, $3111                                   ; $6ffc: $11 $11 $31
	ld   de, $afff                                   ; $6fff: $11 $ff $af
	rst  $38                                         ; $7002: $ff
	db   $fd                                         ; $7003: $fd
	rst  $38                                         ; $7004: $ff
	rst  $38                                         ; $7005: $ff
	rst  $38                                         ; $7006: $ff
	rst  $38                                         ; $7007: $ff
	db   $fc                                         ; $7008: $fc
	rst  $38                                         ; $7009: $ff
	and  $29                                         ; $700a: $e6 $29
	ld   d, c                                        ; $700c: $51
	ld   de, $1111                                   ; $700d: $11 $11 $11
	ld   de, $1111                                   ; $7010: $11 $11 $11
	ld   de, $7113                                   ; $7013: $11 $13 $71
	rst  $38                                         ; $7016: $ff
	adc  a                                           ; $7017: $8f
	rst  $38                                         ; $7018: $ff
	ei                                               ; $7019: $fb
	rst  $38                                         ; $701a: $ff
	rst  $38                                         ; $701b: $ff
	rst  $38                                         ; $701c: $ff
	rst  $38                                         ; $701d: $ff
	xor  a                                           ; $701e: $af
	db   $fc                                         ; $701f: $fc
	xor  b                                           ; $7020: $a8
	sub  h                                           ; $7021: $94
	ld   de, $1111                                   ; $7022: $11 $11 $11
	ld   de, $1114                                   ; $7025: $11 $14 $11
	jr   @+$13                                       ; $7028: $18 $11

	dec  h                                           ; $702a: $25
	jp   c, $ffaf                                    ; $702b: $da $af $ff

	ld   e, a                                        ; $702e: $5f
	db   $fd                                         ; $702f: $fd
	adc  a                                           ; $7030: $8f
	rst  $38                                         ; $7031: $ff
	rst  $38                                         ; $7032: $ff
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	ld   c, l                                        ; $7035: $4d
	or   h                                           ; $7036: $b4
	ld   hl, $1111                                   ; $7037: $21 $11 $11
	ld   de, $1311                                   ; $703a: $11 $11 $13
	ld   de, $1111                                   ; $703d: $11 $11 $11
	dec  d                                           ; $7040: $15
	db   $fc                                         ; $7041: $fc
	rra                                              ; $7042: $1f
	rst  $38                                         ; $7043: $ff
	ld   b, h                                        ; $7044: $44
	rst  $38                                         ; $7045: $ff
	ret                                              ; $7046: $c9


	rst  $38                                         ; $7047: $ff
	rst  $38                                         ; $7048: $ff
	ld   l, a                                        ; $7049: $6f
	rst  $38                                         ; $704a: $ff
	ld   [de], a                                     ; $704b: $12
	reti                                             ; $704c: $d9


	ld   de, $1115                                   ; $704d: $11 $15 $11
	ld   de, $1111                                   ; $7050: $11 $11 $11
	ld   de, $3a11                                   ; $7053: $11 $11 $3a
	sub  e                                           ; $7056: $93
	adc  a                                           ; $7057: $8f
	rst  $38                                         ; $7058: $ff
	pop  af                                          ; $7059: $f1
	rst  $38                                         ; $705a: $ff
	cp   $df                                         ; $705b: $fe $df
	rst  $30                                         ; $705d: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $705e: $cf
	cp   $56                                         ; $705f: $fe $56
	reti                                             ; $7061: $d9


	ld   hl, $0111                                   ; $7062: $21 $11 $01
	ld   de, $1111                                   ; $7065: $11 $11 $11
	ld   de, $113d                                   ; $7068: $11 $3d $11
	rst  JumpTable                                         ; $706b: $df
	and  l                                           ; $706c: $a5
	xor  c                                           ; $706d: $a9
	rst  $38                                         ; $706e: $ff
	ccf                                              ; $706f: $3f
	rst  $38                                         ; $7070: $ff
	ei                                               ; $7071: $fb
	rst  $38                                         ; $7072: $ff
	push af                                          ; $7073: $f5
	ld   l, a                                        ; $7074: $6f
	ld   a, [$d517]                                  ; $7075: $fa $17 $d5
	ld   de, $4116                                   ; $7078: $11 $16 $41
	dec  d                                           ; $707b: $15
	sub  c                                           ; $707c: $91
	ld   de, $1121                                   ; $707d: $11 $21 $11
	sbc  d                                           ; $7080: $9a
	ld   de, $e5ff                                   ; $7081: $11 $ff $e5
	rst  $38                                         ; $7084: $ff
	ld   a, [$ffff]                                  ; $7085: $fa $ff $ff
	and  a                                           ; $7088: $a7
	rst  $38                                         ; $7089: $ff

jr_0e4_708a:
	add  h                                           ; $708a: $84
	sbc  e                                           ; $708b: $9b
	add  l                                           ; $708c: $85
	ld   h, l                                        ; $708d: $65
	ld   sp, $7213                                   ; $708e: $31 $13 $72
	ld   de, $1111                                   ; $7091: $11 $11 $11
	ld   c, c                                        ; $7094: $49
	inc  de                                          ; $7095: $13
	jp   c, $9f69                                    ; $7096: $da $69 $9f

	di                                               ; $7099: $f3
	xor  a                                           ; $709a: $af
	or   $7f                                         ; $709b: $f6 $7f
	rst  $38                                         ; $709d: $ff
	or   a                                           ; $709e: $b7
	rst  $38                                         ; $709f: $ff
	ld   [hl], c                                     ; $70a0: $71
	ld   a, a                                        ; $70a1: $7f
	add  c                                           ; $70a2: $81
	ld   de, $1153                                   ; $70a3: $11 $53 $11
	ld   [de], a                                     ; $70a6: $12
	add  c                                           ; $70a7: $81
	ld   d, $67                                      ; $70a8: $16 $67
	rla                                              ; $70aa: $17
	ret  c                                           ; $70ab: $d8

	call z, $cf9d                                    ; $70ac: $cc $9d $cf
	ld   hl, sp-$61                                  ; $70af: $f8 $9f
	db   $fc                                         ; $70b1: $fc
	rst  $28                                         ; $70b2: $ef
	db   $db                                         ; $70b3: $db
	rst  $10                                         ; $70b4: $d7
	ld   a, h                                        ; $70b5: $7c
	add  l                                           ; $70b6: $85
	ld   b, a                                        ; $70b7: $47
	ld   d, [hl]                                     ; $70b8: $56
	ld   hl, $2264                                   ; $70b9: $21 $64 $22
	ld   b, l                                        ; $70bc: $45
	ld   de, $6544                                   ; $70bd: $11 $44 $65
	ld   a, b                                        ; $70c0: $78
	halt                                             ; $70c1: $76
	sbc  a                                           ; $70c2: $9f
	ret  z                                           ; $70c3: $c8

	cp   l                                           ; $70c4: $bd
	rst  $38                                         ; $70c5: $ff
	xor  d                                           ; $70c6: $aa
	rst  $38                                         ; $70c7: $ff
	ld   a, c                                        ; $70c8: $79
	jp   hl                                          ; $70c9: $e9


	ld   l, c                                        ; $70ca: $69
	adc  b                                           ; $70cb: $88
	sub  [hl]                                        ; $70cc: $96
	dec  h                                           ; $70cd: $25
	add  d                                           ; $70ce: $82
	rla                                              ; $70cf: $17
	add  e                                           ; $70d0: $83
	ld   [hl+], a                                    ; $70d1: $22
	ld   d, l                                        ; $70d2: $55
	ld   d, h                                        ; $70d3: $54
	jr   z, jr_0e4_708a                              ; $70d4: $28 $b4

	inc  l                                           ; $70d6: $2c
	rst  $38                                         ; $70d7: $ff
	jp   $f28f                                       ; $70d8: $c3 $8f $f2


	adc  a                                           ; $70db: $8f
	db   $fc                                         ; $70dc: $fc
	ld   c, h                                        ; $70dd: $4c

jr_0e4_70de:
	ei                                               ; $70de: $fb
	sbc  c                                           ; $70df: $99
	ld   l, b                                        ; $70e0: $68
	rst  ToBoot                                         ; $70e1: $c7
	ld   h, $63                                      ; $70e2: $26 $63
	ld   d, e                                        ; $70e4: $53
	inc  hl                                          ; $70e5: $23
	ld   h, e                                        ; $70e6: $63
	daa                                              ; $70e7: $27
	add  h                                           ; $70e8: $84
	ld   c, d                                        ; $70e9: $4a
	ld   [hl], e                                     ; $70ea: $73
	xor  l                                           ; $70eb: $ad
	ld   h, h                                        ; $70ec: $64
	db   $ec                                         ; $70ed: $ec
	ld   e, d                                        ; $70ee: $5a
	ei                                               ; $70ef: $fb
	ld   a, e                                        ; $70f0: $7b
	db   $ec                                         ; $70f1: $ec
	reti                                             ; $70f2: $d9


	ld   e, e                                        ; $70f3: $5b
	push af                                          ; $70f4: $f5
	ld   a, [de]                                     ; $70f5: $1a
	cp   d                                           ; $70f6: $ba
	ld   b, h                                        ; $70f7: $44
	xor  c                                           ; $70f8: $a9
	add  e                                           ; $70f9: $83
	add  hl, de                                      ; $70fa: $19
	add  $11                                         ; $70fb: $c6 $11
	cp   d                                           ; $70fd: $ba
	ld   de, $62ad                                   ; $70fe: $11 $ad $62
	ld   a, [hl]                                     ; $7101: $7e
	rst  ToBoot                                         ; $7102: $c7
	cp   e                                           ; $7103: $bb
	db   $eb                                         ; $7104: $eb
	ld   l, e                                        ; $7105: $6b
	sbc  $96                                         ; $7106: $de $96
	sbc  a                                           ; $7108: $9f
	db   $d3                                         ; $7109: $d3
	ld   l, c                                        ; $710a: $69
	or   l                                           ; $710b: $b5
	dec  d                                           ; $710c: $15
	sbc  b                                           ; $710d: $98
	ld   sp, $5568                                   ; $710e: $31 $68 $55
	ld   c, b                                        ; $7111: $48
	sbc  b                                           ; $7112: $98
	ld   h, [hl]                                     ; $7113: $66
	xor  d                                           ; $7114: $aa
	ld   h, h                                        ; $7115: $64
	call z, $ab87                                    ; $7116: $cc $87 $ab
	cp   h                                           ; $7119: $bc
	ld   e, c                                        ; $711a: $59
	ld   a, [$8b75]                                  ; $711b: $fa $75 $8b
	halt                                             ; $711e: $76
	ld   d, a                                        ; $711f: $57
	sbc  b                                           ; $7120: $98
	ld   d, a                                        ; $7121: $57
	add  l                                           ; $7122: $85
	ld   d, [hl]                                     ; $7123: $56
	ld   [hl], a                                     ; $7124: $77
	ld   [hl], l                                     ; $7125: $75
	jr   c, jr_0e4_70de                              ; $7126: $38 $b6

	scf                                              ; $7128: $37
	sbc  b                                           ; $7129: $98
	ld   h, a                                        ; $712a: $67
	bit  6, a                                        ; $712b: $cb $77
	sbc  h                                           ; $712d: $9c
	or   [hl]                                        ; $712e: $b6
	xor  h                                           ; $712f: $ac
	cp   b                                           ; $7130: $b8
	ld   a, e                                        ; $7131: $7b
	ret  z                                           ; $7132: $c8

	ld   e, c                                        ; $7133: $59
	ld   [hl], h                                     ; $7134: $74
	sub  a                                           ; $7135: $97
	inc  [hl]                                        ; $7136: $34
	add  a                                           ; $7137: $87
	ld   e, b                                        ; $7138: $58
	adc  b                                           ; $7139: $88
	ret                                              ; $713a: $c9


	ld   b, a                                        ; $713b: $47
	cp   b                                           ; $713c: $b8
	dec  h                                           ; $713d: $25
	adc  b                                           ; $713e: $88
	xor  b                                           ; $713f: $a8
	ld   l, d                                        ; $7140: $6a
	ret  c                                           ; $7141: $d8

	ld   l, h                                        ; $7142: $6c
	or   a                                           ; $7143: $b7
	sbc  b                                           ; $7144: $98
	ld   a, c                                        ; $7145: $79
	sbc  b                                           ; $7146: $98
	ld   e, b                                        ; $7147: $58
	ld   d, l                                        ; $7148: $55
	add  [hl]                                        ; $7149: $86
	sub  a                                           ; $714a: $97
	ld   a, e                                        ; $714b: $7b
	add  l                                           ; $714c: $85
	adc  b                                           ; $714d: $88
	ld   [hl], l                                     ; $714e: $75
	ld   l, b                                        ; $714f: $68
	adc  c                                           ; $7150: $89
	sbc  c                                           ; $7151: $99
	adc  h                                           ; $7152: $8c
	ld   [hl], h                                     ; $7153: $74
	sbc  d                                           ; $7154: $9a
	ld   l, b                                        ; $7155: $68
	cp   b                                           ; $7156: $b8
	xor  d                                           ; $7157: $aa
	ld   a, c                                        ; $7158: $79
	ld   [hl], a                                     ; $7159: $77
	ld   a, b                                        ; $715a: $78
	and  a                                           ; $715b: $a7
	adc  c                                           ; $715c: $89
	ld   [hl], l                                     ; $715d: $75
	ld   h, a                                        ; $715e: $67
	add  [hl]                                        ; $715f: $86
	ld   l, b                                        ; $7160: $68
	xor  e                                           ; $7161: $ab
	ld   a, b                                        ; $7162: $78
	sub  a                                           ; $7163: $97
	add  l                                           ; $7164: $85
	sbc  e                                           ; $7165: $9b
	halt                                             ; $7166: $76
	sbc  l                                           ; $7167: $9d
	xor  b                                           ; $7168: $a8
	sbc  b                                           ; $7169: $98
	sub  [hl]                                        ; $716a: $96
	ld   a, c                                        ; $716b: $79
	adc  b                                           ; $716c: $88
	ld   d, l                                        ; $716d: $55
	sbc  d                                           ; $716e: $9a
	ld   d, a                                        ; $716f: $57
	xor  b                                           ; $7170: $a8
	adc  c                                           ; $7171: $89
	sbc  b                                           ; $7172: $98
	halt                                             ; $7173: $76
	ld   h, [hl]                                     ; $7174: $66
	ld   a, c                                        ; $7175: $79
	halt                                             ; $7176: $76
	adc  c                                           ; $7177: $89
	adc  d                                           ; $7178: $8a
	adc  b                                           ; $7179: $88
	sub  a                                           ; $717a: $97
	sbc  d                                           ; $717b: $9a
	adc  b                                           ; $717c: $88
	sub  [hl]                                        ; $717d: $96
	ld   a, c                                        ; $717e: $79
	ld   a, b                                        ; $717f: $78
	adc  b                                           ; $7180: $88
	sbc  b                                           ; $7181: $98
	sbc  c                                           ; $7182: $99
	adc  b                                           ; $7183: $88
	ld   e, b                                        ; $7184: $58
	sub  a                                           ; $7185: $97
	ld   a, b                                        ; $7186: $78
	adc  c                                           ; $7187: $89
	ld   h, h                                        ; $7188: $64
	ld   l, c                                        ; $7189: $69
	ld   [hl], l                                     ; $718a: $75
	adc  d                                           ; $718b: $8a
	sbc  b                                           ; $718c: $98
	ld   a, b                                        ; $718d: $78
	sbc  c                                           ; $718e: $99
	halt                                             ; $718f: $76
	sbc  d                                           ; $7190: $9a
	sub  [hl]                                        ; $7191: $96
	adc  d                                           ; $7192: $8a
	add  a                                           ; $7193: $87
	halt                                             ; $7194: $76
	ld   a, b                                        ; $7195: $78
	halt                                             ; $7196: $76
	adc  c                                           ; $7197: $89
	sub  a                                           ; $7198: $97
	sbc  d                                           ; $7199: $9a
	sbc  c                                           ; $719a: $99
	ld   [hl], a                                     ; $719b: $77
	xor  b                                           ; $719c: $a8
	ld   [hl], a                                     ; $719d: $77
	sbc  c                                           ; $719e: $99
	halt                                             ; $719f: $76
	ld   a, c                                        ; $71a0: $79
	sub  [hl]                                        ; $71a1: $96
	ld   a, c                                        ; $71a2: $79
	add  a                                           ; $71a3: $87
	ld   h, a                                        ; $71a4: $67
	adc  c                                           ; $71a5: $89
	ld   [hl], a                                     ; $71a6: $77
	sbc  c                                           ; $71a7: $99
	xor  b                                           ; $71a8: $a8
	ld   [hl], a                                     ; $71a9: $77
	sbc  b                                           ; $71aa: $98
	ld   [hl], a                                     ; $71ab: $77
	ld   a, c                                        ; $71ac: $79
	xor  b                                           ; $71ad: $a8
	ld   h, a                                        ; $71ae: $67
	sbc  c                                           ; $71af: $99
	add  [hl]                                        ; $71b0: $86
	ld   a, d                                        ; $71b1: $7a
	add  a                                           ; $71b2: $87
	ld   a, b                                        ; $71b3: $78
	sbc  c                                           ; $71b4: $99
	halt                                             ; $71b5: $76
	sbc  c                                           ; $71b6: $99
	add  a                                           ; $71b7: $87
	ld   a, c                                        ; $71b8: $79
	add  a                                           ; $71b9: $87
	ld   a, c                                        ; $71ba: $79
	sbc  c                                           ; $71bb: $99
	adc  b                                           ; $71bc: $88
	sbc  c                                           ; $71bd: $99
	halt                                             ; $71be: $76
	ld   [hl], a                                     ; $71bf: $77
	ld   [hl], a                                     ; $71c0: $77
	adc  b                                           ; $71c1: $88
	adc  b                                           ; $71c2: $88
	ld   a, b                                        ; $71c3: $78
	adc  b                                           ; $71c4: $88
	adc  b                                           ; $71c5: $88
	sbc  b                                           ; $71c6: $98
	adc  c                                           ; $71c7: $89
	adc  b                                           ; $71c8: $88
	sub  a                                           ; $71c9: $97
	ld   a, c                                        ; $71ca: $79
	adc  b                                           ; $71cb: $88
	adc  b                                           ; $71cc: $88
	adc  b                                           ; $71cd: $88
	halt                                             ; $71ce: $76
	ld   [hl], a                                     ; $71cf: $77
	ld   [hl], a                                     ; $71d0: $77
	ld   a, b                                        ; $71d1: $78
	adc  b                                           ; $71d2: $88
	ld   [hl], a                                     ; $71d3: $77
	adc  b                                           ; $71d4: $88
	add  a                                           ; $71d5: $87
	adc  c                                           ; $71d6: $89
	sbc  b                                           ; $71d7: $98
	adc  c                                           ; $71d8: $89
	adc  c                                           ; $71d9: $89
	sub  a                                           ; $71da: $97
	adc  c                                           ; $71db: $89
	add  a                                           ; $71dc: $87
	ld   [hl], a                                     ; $71dd: $77
	sbc  c                                           ; $71de: $99
	ld   [hl], a                                     ; $71df: $77
	ld   a, b                                        ; $71e0: $78
	add  a                                           ; $71e1: $87
	adc  c                                           ; $71e2: $89
	add  a                                           ; $71e3: $87
	adc  b                                           ; $71e4: $88
	sbc  b                                           ; $71e5: $98
	adc  b                                           ; $71e6: $88
	adc  c                                           ; $71e7: $89
	adc  b                                           ; $71e8: $88
	adc  c                                           ; $71e9: $89
	sbc  b                                           ; $71ea: $98
	adc  b                                           ; $71eb: $88
	add  a                                           ; $71ec: $87
	ld   [hl], a                                     ; $71ed: $77
	ld   a, b                                        ; $71ee: $78
	adc  b                                           ; $71ef: $88
	adc  c                                           ; $71f0: $89
	adc  b                                           ; $71f1: $88
	ld   [hl], a                                     ; $71f2: $77
	ld   a, b                                        ; $71f3: $78
	add  a                                           ; $71f4: $87
	adc  b                                           ; $71f5: $88
	adc  b                                           ; $71f6: $88
	adc  b                                           ; $71f7: $88
	sbc  b                                           ; $71f8: $98
	ld   a, b                                        ; $71f9: $78
	adc  b                                           ; $71fa: $88
	sbc  b                                           ; $71fb: $98
	adc  c                                           ; $71fc: $89
	sub  a                                           ; $71fd: $97
	adc  b                                           ; $71fe: $88
	ld   [hl], a                                     ; $71ff: $77
	adc  b                                           ; $7200: $88
	ld   a, b                                        ; $7201: $78
	adc  b                                           ; $7202: $88
	adc  b                                           ; $7203: $88
	adc  b                                           ; $7204: $88
	adc  b                                           ; $7205: $88
	adc  b                                           ; $7206: $88
	adc  b                                           ; $7207: $88
	adc  b                                           ; $7208: $88
	adc  b                                           ; $7209: $88
	adc  b                                           ; $720a: $88
	adc  b                                           ; $720b: $88
	adc  b                                           ; $720c: $88
	adc  b                                           ; $720d: $88
	sbc  c                                           ; $720e: $99
	sbc  b                                           ; $720f: $98
	adc  b                                           ; $7210: $88
	adc  b                                           ; $7211: $88
	adc  b                                           ; $7212: $88
	adc  b                                           ; $7213: $88
	adc  b                                           ; $7214: $88
	adc  b                                           ; $7215: $88
	adc  b                                           ; $7216: $88
	adc  b                                           ; $7217: $88
	adc  b                                           ; $7218: $88
	adc  b                                           ; $7219: $88
	adc  b                                           ; $721a: $88
	adc  b                                           ; $721b: $88
	adc  b                                           ; $721c: $88
	adc  b                                           ; $721d: $88
	adc  b                                           ; $721e: $88
	adc  b                                           ; $721f: $88
	adc  b                                           ; $7220: $88
	adc  b                                           ; $7221: $88
	adc  b                                           ; $7222: $88
	adc  b                                           ; $7223: $88
	adc  b                                           ; $7224: $88
	adc  b                                           ; $7225: $88
	adc  b                                           ; $7226: $88
	adc  b                                           ; $7227: $88
	adc  b                                           ; $7228: $88
	adc  b                                           ; $7229: $88
	adc  b                                           ; $722a: $88
	adc  b                                           ; $722b: $88
	adc  b                                           ; $722c: $88
	adc  b                                           ; $722d: $88
	adc  b                                           ; $722e: $88
	adc  b                                           ; $722f: $88
	adc  b                                           ; $7230: $88
	adc  b                                           ; $7231: $88
	adc  b                                           ; $7232: $88
	adc  b                                           ; $7233: $88
	adc  b                                           ; $7234: $88
	adc  b                                           ; $7235: $88
	adc  b                                           ; $7236: $88
	adc  b                                           ; $7237: $88
	adc  b                                           ; $7238: $88
	adc  b                                           ; $7239: $88
	adc  b                                           ; $723a: $88
	adc  b                                           ; $723b: $88
	adc  b                                           ; $723c: $88
	adc  b                                           ; $723d: $88
	adc  b                                           ; $723e: $88
	adc  b                                           ; $723f: $88
	adc  b                                           ; $7240: $88
	adc  b                                           ; $7241: $88
	adc  b                                           ; $7242: $88
	adc  b                                           ; $7243: $88
	adc  b                                           ; $7244: $88
	adc  b                                           ; $7245: $88
	adc  b                                           ; $7246: $88
	add  c                                           ; $7247: $81
	ld   de, $0011                                   ; $7248: $11 $11 $00
	ld   c, b                                        ; $724b: $48
	ld   de, $1111                                   ; $724c: $11 $11 $11
	ld   de, $1111                                   ; $724f: $11 $11 $11
	ld   de, $1111                                   ; $7252: $11 $11 $11
	ld   de, $5413                                   ; $7255: $11 $13 $54
	ld   d, h                                        ; $7258: $54
	ld   d, h                                        ; $7259: $54
	ld   b, c                                        ; $725a: $41
	rra                                              ; $725b: $1f
	rst  $38                                         ; $725c: $ff
	pop  af                                          ; $725d: $f1
	ld   de, $1411                                   ; $725e: $11 $11 $14
	and  c                                           ; $7261: $a1
	ld   de, $de1c                                   ; $7262: $11 $1c $de
	xor  h                                           ; $7265: $ac
	sbc  $a1                                         ; $7266: $de $a1
	ld   de, $1111                                   ; $7268: $11 $11 $11
	ld   de, $1111                                   ; $726b: $11 $11 $11
	ld   de, $1111                                   ; $726e: $11 $11 $11
	ld   de, $1111                                   ; $7271: $11 $11 $11
	ld   de, $5411                                   ; $7274: $11 $11 $54
	ld   b, h                                        ; $7277: $44
	and  h                                           ; $7278: $a4
	ld   de, $5454                                   ; $7279: $11 $54 $54
	ld   h, a                                        ; $727c: $67
	ld   [hl], d                                     ; $727d: $72
	ld   de, $1111                                   ; $727e: $11 $11 $11
	ld   de, $1112                                   ; $7281: $11 $12 $11
	ld   [de], a                                     ; $7284: $12
	ld   de, $1111                                   ; $7285: $11 $11 $11
	ld   h, [hl]                                     ; $7288: $66
	halt                                             ; $7289: $76
	ld   [hl], h                                     ; $728a: $74
	ld   de, $8988                                   ; $728b: $11 $88 $89
	sbc  b                                           ; $728e: $98
	adc  b                                           ; $728f: $88
	ld   [hl], a                                     ; $7290: $77
	ld   h, l                                        ; $7291: $65
	ld   c, b                                        ; $7292: $48
	cp   h                                           ; $7293: $bc
	ret  z                                           ; $7294: $c8

	ld   h, [hl]                                     ; $7295: $66
	ld   l, c                                        ; $7296: $69
	ld   [hl], a                                     ; $7297: $77
	ld   h, [hl]                                     ; $7298: $66
	xor  c                                           ; $7299: $a9
	xor  c                                           ; $729a: $a9
	ld   h, a                                        ; $729b: $67
	ld   a, c                                        ; $729c: $79
	xor  b                                           ; $729d: $a8
	add  a                                           ; $729e: $87
	adc  d                                           ; $729f: $8a
	sbc  c                                           ; $72a0: $99
	halt                                             ; $72a1: $76
	ld   a, b                                        ; $72a2: $78
	sbc  b                                           ; $72a3: $98
	adc  b                                           ; $72a4: $88
	ld   a, c                                        ; $72a5: $79
	sbc  c                                           ; $72a6: $99
	add  a                                           ; $72a7: $87
	ld   a, b                                        ; $72a8: $78
	adc  c                                           ; $72a9: $89
	sbc  b                                           ; $72aa: $98
	adc  c                                           ; $72ab: $89
	adc  c                                           ; $72ac: $89
	adc  b                                           ; $72ad: $88
	ld   a, b                                        ; $72ae: $78
	halt                                             ; $72af: $76
	ld   d, e                                        ; $72b0: $53
	ld   a, [hl+]                                    ; $72b1: $2a
	db   $dd                                         ; $72b2: $dd
	and  $66                                         ; $72b3: $e6 $66
	ld   l, e                                        ; $72b5: $6b
	ld   d, [hl]                                     ; $72b6: $56
	ld   b, l                                        ; $72b7: $45
	jp   z, Jump_0e4_47c8                            ; $72b8: $ca $c8 $47

	ld   a, d                                        ; $72bb: $7a
	and  a                                           ; $72bc: $a7
	halt                                             ; $72bd: $76
	adc  e                                           ; $72be: $8b
	sbc  d                                           ; $72bf: $9a
	ld   h, [hl]                                     ; $72c0: $66
	adc  b                                           ; $72c1: $88
	xor  b                                           ; $72c2: $a8
	ld   a, c                                        ; $72c3: $79
	sbc  e                                           ; $72c4: $9b
	sbc  b                                           ; $72c5: $98
	ld   [hl], l                                     ; $72c6: $75
	ld   h, l                                        ; $72c7: $65
	ld   b, c                                        ; $72c8: $41
	inc  l                                           ; $72c9: $2c
	rst  JumpTable                                         ; $72ca: $df
	db   $e3                                         ; $72cb: $e3

jr_0e4_72cc:
	ld   h, d                                        ; $72cc: $62
	adc  d                                           ; $72cd: $8a
	ld   b, a                                        ; $72ce: $47
	jr   jr_0e4_72cc                                 ; $72cf: $18 $fb

	and  $47                                         ; $72d1: $e6 $47
	ld   a, l                                        ; $72d3: $7d
	sub  [hl]                                        ; $72d4: $96
	ld   [hl], l                                     ; $72d5: $75
	cp   h                                           ; $72d6: $bc
	cp   e                                           ; $72d7: $bb
	ld   d, a                                        ; $72d8: $57
	adc  b                                           ; $72d9: $88
	sub  h                                           ; $72da: $94
	ld   hl, $ff1f                                   ; $72db: $21 $1f $ff
	pop  af                                          ; $72de: $f1

jr_0e4_72df:
	ld   [hl], e                                     ; $72df: $73
	xor  h                                           ; $72e0: $ac
	dec  d                                           ; $72e1: $15
	jr   jr_0e4_72df                                 ; $72e2: $18 $fb

	push hl                                          ; $72e4: $e5
	dec  de                                          ; $72e5: $1b
	sbc  [hl]                                        ; $72e6: $9e
	sub  e                                           ; $72e7: $93
	add  a                                           ; $72e8: $87
	xor  $78                                         ; $72e9: $ee $78
	scf                                              ; $72eb: $37
	sub  e                                           ; $72ec: $93
	ld   de, $ff9f                                   ; $72ed: $11 $9f $ff
	inc  sp                                          ; $72f0: $33
	ld   b, l                                        ; $72f1: $45
	pop  af                                          ; $72f2: $f1
	ld   de, $ff1f                                   ; $72f3: $11 $1f $ff
	or   c                                           ; $72f6: $b1
	sbc  d                                           ; $72f7: $9a
	call z, Call_0e4_7b37                            ; $72f8: $cc $37 $7b
	rst  $30                                         ; $72fb: $f7
	ld   d, c                                        ; $72fc: $51
	ld   de, $ff1c                                   ; $72fd: $11 $1c $ff
	or   $99                                         ; $7300: $f6 $99
	ld   c, e                                        ; $7302: $4b
	ld   de, $fc21                                   ; $7303: $11 $21 $fc
	sbc  $7d                                         ; $7306: $de $7d
	jp   z, $88a3                                    ; $7308: $ca $a3 $88

	ld   a, d                                        ; $730b: $7a
	ld   [hl-], a                                    ; $730c: $32
	ld   de, $ff2f                                   ; $730d: $11 $2f $ff
	pop  de                                          ; $7310: $d1
	or   a                                           ; $7311: $b7
	ret  c                                           ; $7312: $d8

	ld   de, $f91a                                   ; $7313: $11 $1a $f9
	xor  c                                           ; $7316: $a9
	adc  a                                           ; $7317: $8f
	db   $fc                                         ; $7318: $fc
	ld   [hl], d                                     ; $7319: $72
	xor  b                                           ; $731a: $a8
	sub  l                                           ; $731b: $95
	ld   de, rAUD1LEN                                   ; $731c: $11 $11 $ff
	rst  $38                                         ; $731f: $ff
	dec  e                                           ; $7320: $1d
	xor  d                                           ; $7321: $aa
	pop  bc                                          ; $7322: $c1
	ld   de, $c86f                                   ; $7323: $11 $6f $c8
	jp   z, $c9ff                                    ; $7326: $ca $ff $c9

	ld   a, [de]                                     ; $7329: $1a
	sub  l                                           ; $732a: $95
	ld   sp, $5f11                                   ; $732b: $31 $11 $5f
	rst  $38                                         ; $732e: $ff
	pop  bc                                          ; $732f: $c1
	ld   a, [$11b2]                                  ; $7330: $fa $b2 $11
	inc  l                                           ; $7333: $2c
	or   $9e                                         ; $7334: $f6 $9e
	rst  $38                                         ; $7336: $ff
	ld   hl, sp+$44                                  ; $7337: $f8 $44
	rst  $10                                         ; $7339: $d7
	ld   sp, $1611                                   ; $733a: $31 $11 $16
	rst  $38                                         ; $733d: $ff
	rst  $38                                         ; $733e: $ff
	ld   a, a                                        ; $733f: $7f
	xor  c                                           ; $7340: $a9
	ld   de, $be13                                   ; $7341: $11 $13 $be
	call $fdff                                       ; $7344: $cd $ff $fd
	and  a                                           ; $7347: $a7
	ld   [hl], a                                     ; $7348: $77
	ld   sp, $1111                                   ; $7349: $31 $11 $11
	rst  $38                                         ; $734c: $ff
	rst  $38                                         ; $734d: $ff
	ld   e, l                                        ; $734e: $5d
	ld   sp, hl                                      ; $734f: $f9
	sub  c                                           ; $7350: $91
	ld   [de], a                                     ; $7351: $12
	ld   a, a                                        ; $7352: $7f
	ret  c                                           ; $7353: $d8

	rst  $28                                         ; $7354: $ef
	rst  $38                                         ; $7355: $ff
	cp   b                                           ; $7356: $b8
	ld   a, e                                        ; $7357: $7b
	ld   h, c                                        ; $7358: $61
	ld   de, $1f11                                   ; $7359: $11 $11 $1f
	rst  $38                                         ; $735c: $ff
	ld   sp, hl                                      ; $735d: $f9
	cp   $b2                                         ; $735e: $fe $b2
	ld   de, $f94c                                   ; $7360: $11 $4c $f9
	sbc  [hl]                                        ; $7363: $9e
	rst  $38                                         ; $7364: $ff
	ld   [$a27a], a                                  ; $7365: $ea $7a $a2
	ld   de, $1d11                                   ; $7368: $11 $11 $1d
	rst  $38                                         ; $736b: $ff
	ei                                               ; $736c: $fb
	rst  $28                                         ; $736d: $ef
	jp   z, $3911                                    ; $736e: $ca $11 $39

	cp   b                                           ; $7371: $b8
	ld   a, e                                        ; $7372: $7b
	rst  $38                                         ; $7373: $ff
	db   $ec                                         ; $7374: $ec
	call z, $11d4                                    ; $7375: $cc $d4 $11
	ld   de, rAUD1LEN                                   ; $7378: $11 $11 $ff
	rst  $38                                         ; $737b: $ff
	rst  JumpTable                                         ; $737c: $df
	db   $fc                                         ; $737d: $fc
	ld   b, c                                        ; $737e: $41
	scf                                              ; $737f: $37
	sub  [hl]                                        ; $7380: $96
	ld   l, d                                        ; $7381: $6a
	rst  JumpTable                                         ; $7382: $df
	call c, $c7eb                                    ; $7383: $dc $eb $c7
	ld   de, $1111                                   ; $7386: $11 $11 $11
	rst  JumpTable                                         ; $7389: $df
	rst  $38                                         ; $738a: $ff
	rst  $38                                         ; $738b: $ff
	db   $fd                                         ; $738c: $fd
	ld   [hl], h                                     ; $738d: $74
	halt                                             ; $738e: $76
	ld   h, h                                        ; $738f: $64
	ld   c, b                                        ; $7390: $48
	adc  d                                           ; $7391: $8a
	cp   h                                           ; $7392: $bc
	db   $fc                                         ; $7393: $fc
	sub  [hl]                                        ; $7394: $96
	ld   hl, $1711                                   ; $7395: $21 $11 $17
	xor  e                                           ; $7398: $ab
	call $fdff                                       ; $7399: $cd $ff $fd
	cp   d                                           ; $739c: $ba
	add  a                                           ; $739d: $87
	ld   d, l                                        ; $739e: $55
	ld   h, [hl]                                     ; $739f: $66
	ld   a, b                                        ; $73a0: $78
	adc  d                                           ; $73a1: $8a
	add  l                                           ; $73a2: $85
	ld   sp, $7912                                   ; $73a3: $31 $12 $79
	adc  b                                           ; $73a6: $88
	xor  [hl]                                        ; $73a7: $ae
	db   $ed                                         ; $73a8: $ed

Jump_0e4_73a9:
	call c, $a9ca                                    ; $73a9: $dc $ca $a9
	ld   a, b                                        ; $73ac: $78
	halt                                             ; $73ad: $76
	ld   h, [hl]                                     ; $73ae: $66
	ld   h, l                                        ; $73af: $65
	ld   [hl-], a                                    ; $73b0: $32
	ld   h, $98                                      ; $73b1: $26 $98
	adc  c                                           ; $73b3: $89
	cp   l                                           ; $73b4: $bd
	res  5, d                                        ; $73b5: $cb $aa
	sbc  b                                           ; $73b7: $98
	adc  b                                           ; $73b8: $88
	adc  b                                           ; $73b9: $88
	adc  b                                           ; $73ba: $88
	ld   [hl], a                                     ; $73bb: $77
	halt                                             ; $73bc: $76
	ld   h, [hl]                                     ; $73bd: $66
	ld   a, b                                        ; $73be: $78
	halt                                             ; $73bf: $76
	ld   d, l                                        ; $73c0: $55
	ld   a, b                                        ; $73c1: $78
	adc  b                                           ; $73c2: $88
	sbc  c                                           ; $73c3: $99
	sbc  c                                           ; $73c4: $99
	adc  b                                           ; $73c5: $88
	adc  b                                           ; $73c6: $88
	sbc  c                                           ; $73c7: $99
	xor  d                                           ; $73c8: $aa
	sbc  c                                           ; $73c9: $99
	sbc  c                                           ; $73ca: $99
	sbc  b                                           ; $73cb: $98
	ld   [hl], a                                     ; $73cc: $77
	ld   h, [hl]                                     ; $73cd: $66
	ld   h, [hl]                                     ; $73ce: $66
	ld   h, [hl]                                     ; $73cf: $66
	ld   h, a                                        ; $73d0: $67
	ld   [hl], a                                     ; $73d1: $77
	adc  b                                           ; $73d2: $88
	adc  c                                           ; $73d3: $89
	adc  b                                           ; $73d4: $88
	sbc  c                                           ; $73d5: $99
	sbc  c                                           ; $73d6: $99
	xor  c                                           ; $73d7: $a9
	sbc  d                                           ; $73d8: $9a
	sbc  b                                           ; $73d9: $98
	adc  c                                           ; $73da: $89
	add  a                                           ; $73db: $87
	ld   [hl], a                                     ; $73dc: $77
	ld   [hl], a                                     ; $73dd: $77
	ld   [hl], a                                     ; $73de: $77
	ld   [hl], a                                     ; $73df: $77
	ld   [hl], a                                     ; $73e0: $77
	ld   [hl], a                                     ; $73e1: $77
	adc  b                                           ; $73e2: $88
	adc  b                                           ; $73e3: $88
	adc  c                                           ; $73e4: $89
	sbc  c                                           ; $73e5: $99
	adc  c                                           ; $73e6: $89
	sbc  c                                           ; $73e7: $99
	sbc  c                                           ; $73e8: $99
	sbc  b                                           ; $73e9: $98
	sbc  b                                           ; $73ea: $98
	adc  b                                           ; $73eb: $88
	ld   [hl], a                                     ; $73ec: $77
	ld   [hl], a                                     ; $73ed: $77
	ld   [hl], a                                     ; $73ee: $77
	ld   a, b                                        ; $73ef: $78
	add  a                                           ; $73f0: $87
	ld   a, b                                        ; $73f1: $78
	adc  b                                           ; $73f2: $88
	adc  b                                           ; $73f3: $88
	adc  b                                           ; $73f4: $88
	adc  b                                           ; $73f5: $88
	adc  c                                           ; $73f6: $89
	sbc  b                                           ; $73f7: $98
	sbc  b                                           ; $73f8: $98
	sbc  c                                           ; $73f9: $99
	adc  b                                           ; $73fa: $88
	adc  b                                           ; $73fb: $88
	adc  b                                           ; $73fc: $88
	adc  b                                           ; $73fd: $88
	adc  b                                           ; $73fe: $88
	adc  b                                           ; $73ff: $88
	ld   [hl], a                                     ; $7400: $77
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	adc  b                                           ; $7403: $88
	adc  b                                           ; $7404: $88
	adc  c                                           ; $7405: $89
	sbc  c                                           ; $7406: $99
	sbc  c                                           ; $7407: $99
	sbc  b                                           ; $7408: $98
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
	adc  b                                           ; $74a9: $88
	adc  b                                           ; $74aa: $88
	adc  b                                           ; $74ab: $88
	adc  b                                           ; $74ac: $88
	adc  b                                           ; $74ad: $88
	adc  b                                           ; $74ae: $88
	adc  b                                           ; $74af: $88
	adc  b                                           ; $74b0: $88
	adc  b                                           ; $74b1: $88
	adc  b                                           ; $74b2: $88
	adc  b                                           ; $74b3: $88
	adc  b                                           ; $74b4: $88
	adc  b                                           ; $74b5: $88
	adc  b                                           ; $74b6: $88
	adc  b                                           ; $74b7: $88
	adc  b                                           ; $74b8: $88
	adc  b                                           ; $74b9: $88
	adc  b                                           ; $74ba: $88
	adc  b                                           ; $74bb: $88
	adc  b                                           ; $74bc: $88
	adc  b                                           ; $74bd: $88
	adc  b                                           ; $74be: $88
	adc  b                                           ; $74bf: $88
	adc  b                                           ; $74c0: $88
	adc  b                                           ; $74c1: $88
	adc  b                                           ; $74c2: $88
	adc  b                                           ; $74c3: $88
	adc  b                                           ; $74c4: $88
	adc  b                                           ; $74c5: $88
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	adc  b                                           ; $74c8: $88
	adc  b                                           ; $74c9: $88
	adc  b                                           ; $74ca: $88
	adc  b                                           ; $74cb: $88
	adc  b                                           ; $74cc: $88
	adc  b                                           ; $74cd: $88
	adc  b                                           ; $74ce: $88
	adc  b                                           ; $74cf: $88
	adc  b                                           ; $74d0: $88
	adc  b                                           ; $74d1: $88
	adc  b                                           ; $74d2: $88
	adc  b                                           ; $74d3: $88
	adc  b                                           ; $74d4: $88
	adc  b                                           ; $74d5: $88
	adc  b                                           ; $74d6: $88
	adc  b                                           ; $74d7: $88
	adc  b                                           ; $74d8: $88
	adc  b                                           ; $74d9: $88
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	adc  b                                           ; $74dc: $88
	adc  b                                           ; $74dd: $88
	adc  b                                           ; $74de: $88
	adc  b                                           ; $74df: $88
	adc  b                                           ; $74e0: $88
	adc  b                                           ; $74e1: $88
	adc  b                                           ; $74e2: $88
	adc  b                                           ; $74e3: $88
	adc  b                                           ; $74e4: $88
	adc  b                                           ; $74e5: $88
	adc  b                                           ; $74e6: $88
	adc  b                                           ; $74e7: $88
	adc  b                                           ; $74e8: $88
	adc  b                                           ; $74e9: $88
	adc  b                                           ; $74ea: $88
	adc  b                                           ; $74eb: $88
	adc  b                                           ; $74ec: $88
	adc  b                                           ; $74ed: $88
	adc  b                                           ; $74ee: $88
	adc  b                                           ; $74ef: $88
	adc  b                                           ; $74f0: $88
	adc  b                                           ; $74f1: $88
	adc  b                                           ; $74f2: $88
	adc  b                                           ; $74f3: $88
	adc  b                                           ; $74f4: $88
	adc  b                                           ; $74f5: $88
	adc  b                                           ; $74f6: $88
	adc  b                                           ; $74f7: $88
	adc  b                                           ; $74f8: $88
	adc  b                                           ; $74f9: $88
	adc  b                                           ; $74fa: $88
	adc  b                                           ; $74fb: $88
	adc  b                                           ; $74fc: $88
	adc  b                                           ; $74fd: $88
	adc  b                                           ; $74fe: $88
	adc  b                                           ; $74ff: $88
	adc  b                                           ; $7500: $88
	adc  b                                           ; $7501: $88
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	adc  b                                           ; $7504: $88
	adc  b                                           ; $7505: $88
	adc  b                                           ; $7506: $88
	adc  b                                           ; $7507: $88
	adc  b                                           ; $7508: $88
	adc  b                                           ; $7509: $88
	adc  b                                           ; $750a: $88
	adc  b                                           ; $750b: $88
	adc  b                                           ; $750c: $88
	adc  b                                           ; $750d: $88
	adc  b                                           ; $750e: $88
	adc  b                                           ; $750f: $88
	adc  b                                           ; $7510: $88
	adc  b                                           ; $7511: $88
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	adc  b                                           ; $7515: $88
	adc  b                                           ; $7516: $88
	adc  b                                           ; $7517: $88
	adc  b                                           ; $7518: $88
	adc  b                                           ; $7519: $88
	adc  b                                           ; $751a: $88
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	adc  b                                           ; $751d: $88
	adc  b                                           ; $751e: $88
	adc  b                                           ; $751f: $88
	adc  b                                           ; $7520: $88
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	adc  b                                           ; $7523: $88
	adc  b                                           ; $7524: $88
	adc  b                                           ; $7525: $88
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	adc  b                                           ; $7529: $88
	adc  b                                           ; $752a: $88
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	adc  b                                           ; $752d: $88
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	adc  b                                           ; $7530: $88
	adc  b                                           ; $7531: $88
	adc  b                                           ; $7532: $88
	adc  b                                           ; $7533: $88
	adc  b                                           ; $7534: $88
	adc  b                                           ; $7535: $88
	adc  b                                           ; $7536: $88
	adc  b                                           ; $7537: $88
	adc  b                                           ; $7538: $88
	adc  b                                           ; $7539: $88
	adc  b                                           ; $753a: $88
	adc  b                                           ; $753b: $88
	adc  b                                           ; $753c: $88
	adc  b                                           ; $753d: $88
	adc  b                                           ; $753e: $88
	adc  b                                           ; $753f: $88
	adc  b                                           ; $7540: $88
	adc  b                                           ; $7541: $88
	adc  b                                           ; $7542: $88
	adc  b                                           ; $7543: $88
	adc  b                                           ; $7544: $88
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	adc  b                                           ; $7547: $88
	adc  b                                           ; $7548: $88
	adc  b                                           ; $7549: $88
	adc  b                                           ; $754a: $88
	adc  b                                           ; $754b: $88
	adc  b                                           ; $754c: $88
	adc  b                                           ; $754d: $88
	adc  b                                           ; $754e: $88
	adc  b                                           ; $754f: $88
	adc  b                                           ; $7550: $88
	adc  b                                           ; $7551: $88
	adc  b                                           ; $7552: $88
	adc  b                                           ; $7553: $88
	adc  b                                           ; $7554: $88
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	adc  b                                           ; $7557: $88
	adc  b                                           ; $7558: $88
	adc  b                                           ; $7559: $88
	adc  b                                           ; $755a: $88
	adc  b                                           ; $755b: $88
	adc  b                                           ; $755c: $88
	adc  b                                           ; $755d: $88
	adc  b                                           ; $755e: $88
	adc  b                                           ; $755f: $88
	adc  b                                           ; $7560: $88
	adc  b                                           ; $7561: $88
	adc  b                                           ; $7562: $88
	adc  b                                           ; $7563: $88
	adc  b                                           ; $7564: $88
	adc  b                                           ; $7565: $88
	adc  b                                           ; $7566: $88
	adc  b                                           ; $7567: $88
	adc  b                                           ; $7568: $88
	adc  b                                           ; $7569: $88
	adc  b                                           ; $756a: $88
	adc  b                                           ; $756b: $88
	adc  b                                           ; $756c: $88
	adc  b                                           ; $756d: $88
	adc  b                                           ; $756e: $88
	adc  b                                           ; $756f: $88
	adc  b                                           ; $7570: $88
	adc  b                                           ; $7571: $88
	adc  b                                           ; $7572: $88
	adc  b                                           ; $7573: $88
	adc  b                                           ; $7574: $88
	adc  b                                           ; $7575: $88
	adc  b                                           ; $7576: $88
	adc  b                                           ; $7577: $88
	adc  b                                           ; $7578: $88
	adc  b                                           ; $7579: $88
	adc  b                                           ; $757a: $88
	adc  b                                           ; $757b: $88
	adc  b                                           ; $757c: $88
	adc  b                                           ; $757d: $88
	adc  b                                           ; $757e: $88
	adc  b                                           ; $757f: $88
	adc  b                                           ; $7580: $88
	adc  b                                           ; $7581: $88
	adc  b                                           ; $7582: $88
	adc  b                                           ; $7583: $88
	adc  b                                           ; $7584: $88
	adc  b                                           ; $7585: $88
	adc  b                                           ; $7586: $88
	adc  b                                           ; $7587: $88
	adc  b                                           ; $7588: $88
	adc  b                                           ; $7589: $88
	adc  b                                           ; $758a: $88
	adc  b                                           ; $758b: $88
	adc  b                                           ; $758c: $88
	adc  b                                           ; $758d: $88
	adc  b                                           ; $758e: $88
	adc  b                                           ; $758f: $88
	adc  b                                           ; $7590: $88
	adc  b                                           ; $7591: $88
	adc  b                                           ; $7592: $88
	adc  b                                           ; $7593: $88
	adc  b                                           ; $7594: $88
	adc  b                                           ; $7595: $88
	adc  b                                           ; $7596: $88
	adc  b                                           ; $7597: $88
	adc  b                                           ; $7598: $88
	adc  b                                           ; $7599: $88
	adc  b                                           ; $759a: $88
	adc  b                                           ; $759b: $88
	adc  b                                           ; $759c: $88
	adc  b                                           ; $759d: $88
	ld   a, b                                        ; $759e: $78
	adc  b                                           ; $759f: $88
	adc  b                                           ; $75a0: $88
	adc  b                                           ; $75a1: $88
	adc  b                                           ; $75a2: $88
	adc  b                                           ; $75a3: $88
	adc  b                                           ; $75a4: $88
	adc  b                                           ; $75a5: $88
	adc  b                                           ; $75a6: $88
	adc  b                                           ; $75a7: $88

Jump_0e4_75a8:
	adc  b                                           ; $75a8: $88
	adc  b                                           ; $75a9: $88
	sbc  c                                           ; $75aa: $99
	adc  b                                           ; $75ab: $88
	adc  b                                           ; $75ac: $88
	adc  b                                           ; $75ad: $88
	adc  b                                           ; $75ae: $88
	ld   a, b                                        ; $75af: $78
	adc  b                                           ; $75b0: $88
	adc  b                                           ; $75b1: $88
	adc  c                                           ; $75b2: $89
	adc  b                                           ; $75b3: $88
	add  a                                           ; $75b4: $87
	adc  b                                           ; $75b5: $88
	adc  b                                           ; $75b6: $88
	ld   a, b                                        ; $75b7: $78
	ld   a, b                                        ; $75b8: $78
	add  a                                           ; $75b9: $87
	sbc  b                                           ; $75ba: $98
	adc  b                                           ; $75bb: $88
	adc  c                                           ; $75bc: $89
	adc  b                                           ; $75bd: $88
	adc  b                                           ; $75be: $88
	adc  b                                           ; $75bf: $88
	sub  a                                           ; $75c0: $97
	ld   [hl], a                                     ; $75c1: $77
	adc  b                                           ; $75c2: $88
	adc  b                                           ; $75c3: $88
	add  a                                           ; $75c4: $87
	ld   [hl], a                                     ; $75c5: $77
	adc  b                                           ; $75c6: $88
	add  a                                           ; $75c7: $87
	ld   a, b                                        ; $75c8: $78
	sbc  c                                           ; $75c9: $99
	adc  b                                           ; $75ca: $88
	adc  b                                           ; $75cb: $88
	halt                                             ; $75cc: $76
	ld   h, [hl]                                     ; $75cd: $66
	ld   [hl], a                                     ; $75ce: $77
	ld   h, [hl]                                     ; $75cf: $66
	ld   [hl], a                                     ; $75d0: $77
	sbc  c                                           ; $75d1: $99
	adc  d                                           ; $75d2: $8a
	sbc  e                                           ; $75d3: $9b
	xor  c                                           ; $75d4: $a9
	sbc  c                                           ; $75d5: $99
	add  a                                           ; $75d6: $87
	ld   d, c                                        ; $75d7: $51
	dec  sp                                          ; $75d8: $3b
	ld   d, e                                        ; $75d9: $53
	sub  e                                           ; $75da: $93
	xor  e                                           ; $75db: $ab
	ld   e, e                                        ; $75dc: $5b
	xor  e                                           ; $75dd: $ab
	ret  z                                           ; $75de: $c8

	xor  h                                           ; $75df: $ac
	sbc  d                                           ; $75e0: $9a
	sbc  b                                           ; $75e1: $98
	and  [hl]                                        ; $75e2: $a6
	ld   b, c                                        ; $75e3: $41
	ld   d, $c1                                      ; $75e4: $16 $c1
	adc  b                                           ; $75e6: $88
	ld   c, a                                        ; $75e7: $4f
	adc  d                                           ; $75e8: $8a
	ld   a, [$7dfc]                                  ; $75e9: $fa $fc $7d
	ld   [hl], a                                     ; $75ec: $77
	sub  h                                           ; $75ed: $94
	sub  a                                           ; $75ee: $97
	ld   hl, $f117                                   ; $75ef: $21 $17 $f1
	and  a                                           ; $75f2: $a7
	ld   a, a                                        ; $75f3: $7f
	sbc  e                                           ; $75f4: $9b
	ld   sp, hl                                      ; $75f5: $f9
	db   $eb                                         ; $75f6: $eb
	ld   l, e                                        ; $75f7: $6b
	ld   e, c                                        ; $75f8: $59
	and  e                                           ; $75f9: $a3
	add  [hl]                                        ; $75fa: $86
	ld   de, $751f                                   ; $75fb: $11 $1f $75
	pop  de                                          ; $75fe: $d1
	rst  $38                                         ; $75ff: $ff
	adc  a                                           ; $7600: $8f
	ld   a, h                                        ; $7601: $7c
	or   $a6                                         ; $7602: $f6 $a6
	ld   e, l                                        ; $7604: $5d
	ld   b, [hl]                                     ; $7605: $46
	ld   d, c                                        ; $7606: $51
	ld   de, $6ff4                                   ; $7607: $11 $f4 $6f
	rra                                              ; $760a: $1f
	ld   sp, hl                                      ; $760b: $f9
	db   $f4                                         ; $760c: $f4
	db   $dd                                         ; $760d: $dd
	ld   c, h                                        ; $760e: $4c
	ld   b, h                                        ; $760f: $44
	jp   $1194                                       ; $7610: $c3 $94 $11


	rra                                              ; $7613: $1f
	add  hl, sp                                      ; $7614: $39
	call nz, $affc                                   ; $7615: $c4 $fc $af
	ld   e, a                                        ; $7618: $5f
	sub  h                                           ; $7619: $94
	call nc, $3999                                   ; $761a: $d4 $99 $39
	ld   de, $f11d                                   ; $761d: $11 $1d $f1
	pop  af                                          ; $7620: $f1
	rst  $38                                         ; $7621: $ff
	ld   c, a                                        ; $7622: $4f
	sbc  d                                           ; $7623: $9a
	pop  af                                          ; $7624: $f1
	adc  b                                           ; $7625: $88
	ld   a, $15                                      ; $7626: $3e $15
	ld   [hl], c                                     ; $7628: $71
	ld   de, $c9f7                                   ; $7629: $11 $f7 $c9
	ld   c, a                                        ; $762c: $4f
	call c, $f9f3                                    ; $762d: $dc $f3 $f9
	dec  a                                           ; $7630: $3d
	ld   a, [hl-]                                    ; $7631: $3a
	and  c                                           ; $7632: $a1
	ld   [hl], c                                     ; $7633: $71
	ld   de, $cbf7                                   ; $7634: $11 $f7 $cb
	rra                                              ; $7637: $1f
	ld   sp, hl                                      ; $7638: $f9
	pop  af                                          ; $7639: $f1
	ei                                               ; $763a: $fb
	ld   e, $17                                      ; $763b: $1e $17
	pop  de                                          ; $763d: $d1
	add  c                                           ; $763e: $81
	ld   de, $eafa                                   ; $763f: $11 $fa $ea
	rrca                                             ; $7642: $0f
	ei                                               ; $7643: $fb
	pop  af                                          ; $7644: $f1
	db   $ec                                         ; $7645: $ec
	ld   a, $47                                      ; $7646: $3e $47
	pop  bc                                          ; $7648: $c1
	ld   d, c                                        ; $7649: $51
	dec  d                                           ; $764a: $15
	ld   hl, sp-$08                                  ; $764b: $f8 $f8
	cpl                                              ; $764d: $2f
	adc  $e1                                         ; $764e: $ce $e1
	ld   hl, sp+$4d                                  ; $7650: $f8 $4d
	add  hl, de                                      ; $7652: $19
	or   c                                           ; $7653: $b1
	ld   b, c                                        ; $7654: $41
	rra                                              ; $7655: $1f
	cp   $f1                                         ; $7656: $fe $f1
	rst  $28                                         ; $7658: $ef
	cp   a                                           ; $7659: $bf
	inc  [hl]                                        ; $765a: $34
	or   $c8                                         ; $765b: $f6 $c8
	dec  e                                           ; $765d: $1d
	ld   d, c                                        ; $765e: $51
	ld   de, $df1f                                   ; $765f: $11 $1f $df
	ld   h, c                                        ; $7662: $61
	rst  $38                                         ; $7663: $ff
	cp   $1a                                         ; $7664: $fe $1a
	cp   c                                           ; $7666: $b9
	pop  af                                          ; $7667: $f1
	ld   c, e                                        ; $7668: $4b
	ld   [de], a                                     ; $7669: $12
	ld   de, $ffff                                   ; $766a: $11 $ff $ff
	dec  e                                           ; $766d: $1d
	rst  $38                                         ; $766e: $ff
	pop  af                                          ; $766f: $f1
	add  hl, hl                                      ; $7670: $29
	ld   a, a                                        ; $7671: $7f
	ld   [hl], c                                     ; $7672: $71
	ld   h, c                                        ; $7673: $61
	ld   hl, $ff1b                                   ; $7674: $21 $1b $ff
	pop  af                                          ; $7677: $f1
	sbc  [hl]                                        ; $7678: $9e
	rst  $38                                         ; $7679: $ff
	sub  e                                           ; $767a: $93
	ld   h, h                                        ; $767b: $64
	db   $fd                                         ; $767c: $fd
	inc  [hl]                                        ; $767d: $34
	ld   de, $dc11                                   ; $767e: $11 $11 $dc
	rst  $38                                         ; $7681: $ff
	inc  a                                           ; $7682: $3c
	call c, $67f8                                    ; $7683: $dc $f8 $67
	ccf                                              ; $7686: $3f
	push bc                                          ; $7687: $c5
	ld   [hl], c                                     ; $7688: $71
	ld   de, $df1f                                   ; $7689: $11 $1f $df
	ldh  a, [c]                                      ; $768c: $f2
	db   $fd                                         ; $768d: $fd
	rst  $38                                         ; $768e: $ff
	ld   h, a                                        ; $768f: $67
	ld   [hl], l                                     ; $7690: $75
	ld   sp, hl                                      ; $7691: $f9
	ld   d, [hl]                                     ; $7692: $56
	ld   de, $fd11                                   ; $7693: $11 $11 $fd
	db   $fd                                         ; $7696: $fd
	ccf                                              ; $7697: $3f
	cp   a                                           ; $7698: $bf
	or   $86                                         ; $7699: $f6 $86
	ld   l, a                                        ; $769b: $6f
	sub  l                                           ; $769c: $95
	ld   b, c                                        ; $769d: $41
	ld   de, $df3f                                   ; $769e: $11 $3f $df
	ld   [hl], l                                     ; $76a1: $75
	db   $ec                                         ; $76a2: $ec
	rst  $38                                         ; $76a3: $ff
	ld   e, c                                        ; $76a4: $59
	ld   e, d                                        ; $76a5: $5a
	or   $51                                         ; $76a6: $f6 $51
	ld   de, $ff1a                                   ; $76a8: $11 $1a $ff

jr_0e4_76ab:
	db   $f4                                         ; $76ab: $f4
	sbc  d                                           ; $76ac: $9a
	rst  $28                                         ; $76ad: $ef
	ret  c                                           ; $76ae: $d8

	ld   h, h                                        ; $76af: $64
	call c, $1175                                    ; $76b0: $dc $75 $11
	ld   de, $fadd                                   ; $76b3: $11 $dd $fa
	ld   c, e                                        ; $76b6: $4b
	sbc  a                                           ; $76b7: $9f
	db   $fc                                         ; $76b8: $fc

Jump_0e4_76b9:
	and  l                                           ; $76b9: $a5
	ld   l, l                                        ; $76ba: $6d
	xor  b                                           ; $76bb: $a8
	ld   b, c                                        ; $76bc: $41
	ld   de, $df6e                                   ; $76bd: $11 $6e $df
	ld   b, l                                        ; $76c0: $45
	sbc  d                                           ; $76c1: $9a
	rst  $38                                         ; $76c2: $ff
	cp   d                                           ; $76c3: $ba
	ld   c, b                                        ; $76c4: $48
	ret                                              ; $76c5: $c9


	and  h                                           ; $76c6: $a4
	ld   de, $ed18                                   ; $76c7: $11 $18 $ed
	db   $e3                                         ; $76ca: $e3
	ld   c, b                                        ; $76cb: $48
	xor  a                                           ; $76cc: $af
	ld   [$9d95], a                                  ; $76cd: $ea $95 $9d
	xor  c                                           ; $76d0: $a9
	ld   d, c                                        ; $76d1: $51
	ld   de, $dd9d                                   ; $76d2: $11 $9d $dd
	inc  sp                                          ; $76d5: $33
	ld   l, b                                        ; $76d6: $68
	db   $fd                                         ; $76d7: $fd
	sbc  c                                           ; $76d8: $99
	ld   e, b                                        ; $76d9: $58
	jp   c, $22a6                                    ; $76da: $da $a6 $22

	jr   jr_0e4_76ab                                 ; $76dd: $18 $cc

	push de                                          ; $76df: $d5
	dec  h                                           ; $76e0: $25
	ld   l, [hl]                                     ; $76e1: $6e
	jp   hl                                          ; $76e2: $e9


	and  [hl]                                        ; $76e3: $a6
	ld   a, h                                        ; $76e4: $7c
	cp   e                                           ; $76e5: $bb
	add  h                                           ; $76e6: $84
	ld   b, c                                        ; $76e7: $41
	ld   l, h                                        ; $76e8: $6c
	xor  l                                           ; $76e9: $ad
	ld   [hl], d                                     ; $76ea: $72
	ld   b, h                                        ; $76eb: $44
	cp   [hl]                                        ; $76ec: $be
	xor  d                                           ; $76ed: $aa
	ld   h, [hl]                                     ; $76ee: $66
	xor  e                                           ; $76ef: $ab
	jp   z, $3555                                    ; $76f0: $ca $55 $35

	cp   d                                           ; $76f3: $ba
	ret  z                                           ; $76f4: $c8

	inc  hl                                          ; $76f5: $23
	daa                                              ; $76f6: $27
	jp   c, Jump_0e4_59b7                            ; $76f7: $da $b7 $59

	xor  h                                           ; $76fa: $ac
	cp   b                                           ; $76fb: $b8
	ld   [hl], l                                     ; $76fc: $75
	ld   c, c                                        ; $76fd: $49
	xor  e                                           ; $76fe: $ab
	or   h                                           ; $76ff: $b4
	ld   [hl+], a                                    ; $7700: $22
	ld   a, [hl-]                                    ; $7701: $3a
	cp   d                                           ; $7702: $ba
	and  [hl]                                        ; $7703: $a6
	ld   l, d                                        ; $7704: $6a
	cp   h                                           ; $7705: $bc
	xor  b                                           ; $7706: $a8
	ld   h, l                                        ; $7707: $65
	ld   l, e                                        ; $7708: $6b
	cp   e                                           ; $7709: $bb
	ld   [hl], d                                     ; $770a: $72
	ld   [hl+], a                                    ; $770b: $22
	ld   l, e                                        ; $770c: $6b
	xor  c                                           ; $770d: $a9
	ld   [hl], l                                     ; $770e: $75
	adc  e                                           ; $770f: $8b
	call z, $65a7                                    ; $7710: $cc $a7 $65
	sbc  e                                           ; $7713: $9b
	xor  e                                           ; $7714: $ab
	ld   d, c                                        ; $7715: $51
	inc  hl                                          ; $7716: $23
	ld   a, e                                        ; $7717: $7b
	xor  c                                           ; $7718: $a9
	ld   h, [hl]                                     ; $7719: $66
	sbc  h                                           ; $771a: $9c
	call z, Call_0e4_66a8                            ; $771b: $cc $a8 $66
	sbc  e                                           ; $771e: $9b
	cp   d                                           ; $771f: $ba
	ld   b, d                                        ; $7720: $42
	inc  h                                           ; $7721: $24
	adc  c                                           ; $7722: $89
	sbc  b                                           ; $7723: $98
	ld   h, a                                        ; $7724: $67
	xor  e                                           ; $7725: $ab
	call c, $67a7                                    ; $7726: $dc $a7 $67
	xor  e                                           ; $7729: $ab
	cp   c                                           ; $772a: $b9
	ld   [hl-], a                                    ; $772b: $32
	inc  h                                           ; $772c: $24
	adc  c                                           ; $772d: $89
	sub  a                                           ; $772e: $97
	ld   d, a                                        ; $772f: $57
	xor  e                                           ; $7730: $ab
	db   $dd                                         ; $7731: $dd
	sbc  b                                           ; $7732: $98
	ld   [hl], a                                     ; $7733: $77
	cp   e                                           ; $7734: $bb
	xor  c                                           ; $7735: $a9
	ld   [hl-], a                                    ; $7736: $32
	dec  h                                           ; $7737: $25
	adc  c                                           ; $7738: $89
	add  a                                           ; $7739: $87
	ld   d, [hl]                                     ; $773a: $56
	xor  l                                           ; $773b: $ad
	db   $ec                                         ; $773c: $ec
	sbc  b                                           ; $773d: $98
	ld   [hl], a                                     ; $773e: $77
	xor  e                                           ; $773f: $ab
	xor  b                                           ; $7740: $a8
	ld   sp, $7924                                   ; $7741: $31 $24 $79
	add  a                                           ; $7744: $87
	ld   d, [hl]                                     ; $7745: $56
	sbc  l                                           ; $7746: $9d
	call c, Call_0e4_7798                            ; $7747: $dc $98 $77
	xor  e                                           ; $774a: $ab
	cp   c                                           ; $774b: $b9
	ld   sp, $8814                                   ; $774c: $31 $14 $88
	add  a                                           ; $774f: $87
	ld   d, [hl]                                     ; $7750: $56
	sbc  l                                           ; $7751: $9d
	db   $ec                                         ; $7752: $ec
	xor  c                                           ; $7753: $a9
	ld   [hl], a                                     ; $7754: $77
	sbc  h                                           ; $7755: $9c
	ret                                              ; $7756: $c9


	ld   sp, $8914                                   ; $7757: $31 $14 $89
	add  [hl]                                        ; $775a: $86
	ld   d, a                                        ; $775b: $57
	sbc  h                                           ; $775c: $9c
	db   $ed                                         ; $775d: $ed
	xor  c                                           ; $775e: $a9
	halt                                             ; $775f: $76
	xor  h                                           ; $7760: $ac
	cp   b                                           ; $7761: $b8
	ld   hl, $8915                                   ; $7762: $21 $15 $89
	add  [hl]                                        ; $7765: $86
	ld   d, a                                        ; $7766: $57
	sbc  l                                           ; $7767: $9d
	db   $fd                                         ; $7768: $fd
	cp   b                                           ; $7769: $b8
	ld   h, [hl]                                     ; $776a: $66
	xor  e                                           ; $776b: $ab
	ret  z                                           ; $776c: $c8

	ld   hl, $8815                                   ; $776d: $21 $15 $88
	add  [hl]                                        ; $7770: $86
	ld   d, a                                        ; $7771: $57
	xor  l                                           ; $7772: $ad
	db   $ed                                         ; $7773: $ed
	xor  b                                           ; $7774: $a8
	ld   h, [hl]                                     ; $7775: $66
	cp   h                                           ; $7776: $bc
	cp   b                                           ; $7777: $b8
	ld   de, $9915                                   ; $7778: $11 $15 $99
	add  [hl]                                        ; $777b: $86
	ld   d, a                                        ; $777c: $57
	xor  [hl]                                        ; $777d: $ae
	db   $fd                                         ; $777e: $fd
	sub  a                                           ; $777f: $97
	ld   h, a                                        ; $7780: $67
	xor  h                                           ; $7781: $ac
	or   a                                           ; $7782: $b7
	ld   de, $9915                                   ; $7783: $11 $15 $99
	add  [hl]                                        ; $7786: $86
	ld   d, a                                        ; $7787: $57
	cp   [hl]                                        ; $7788: $be
	db   $fd                                         ; $7789: $fd
	sub  a                                           ; $778a: $97
	ld   h, a                                        ; $778b: $67
	cp   h                                           ; $778c: $bc
	rst  ToBoot                                         ; $778d: $c7
	ld   de, $9a15                                   ; $778e: $11 $15 $9a
	add  l                                           ; $7791: $85
	ld   d, a                                        ; $7792: $57
	cp   [hl]                                        ; $7793: $be
	db   $fd                                         ; $7794: $fd
	sbc  b                                           ; $7795: $98
	ld   h, a                                        ; $7796: $67
	cp   h                                           ; $7797: $bc

Call_0e4_7798:
	or   a                                           ; $7798: $b7
	ld   de, $9915                                   ; $7799: $11 $15 $99
	add  l                                           ; $779c: $85
	ld   b, a                                        ; $779d: $47
	xor  [hl]                                        ; $779e: $ae
	db   $fd                                         ; $779f: $fd
	sbc  b                                           ; $77a0: $98
	ld   h, [hl]                                     ; $77a1: $66
	xor  h                                           ; $77a2: $ac
	or   a                                           ; $77a3: $b7
	ld   de, $9a15                                   ; $77a4: $11 $15 $9a
	add  l                                           ; $77a7: $85
	ld   b, a                                        ; $77a8: $47
	cp   a                                           ; $77a9: $bf
	db   $fc                                         ; $77aa: $fc
	and  a                                           ; $77ab: $a7
	ld   h, a                                        ; $77ac: $67
	xor  h                                           ; $77ad: $ac
	or   a                                           ; $77ae: $b7
	ld   de, $aa15                                   ; $77af: $11 $15 $aa
	add  l                                           ; $77b2: $85
	ld   b, a                                        ; $77b3: $47
	xor  a                                           ; $77b4: $af
	db   $fd                                         ; $77b5: $fd
	sbc  b                                           ; $77b6: $98
	ld   h, a                                        ; $77b7: $67
	cp   h                                           ; $77b8: $bc
	rst  ToBoot                                         ; $77b9: $c7
	ld   de, $9a15                                   ; $77ba: $11 $15 $9a
	add  l                                           ; $77bd: $85
	ld   b, a                                        ; $77be: $47
	cp   [hl]                                        ; $77bf: $be
	db   $fd                                         ; $77c0: $fd
	and  a                                           ; $77c1: $a7
	ld   h, [hl]                                     ; $77c2: $66
	cp   h                                           ; $77c3: $bc
	cp   b                                           ; $77c4: $b8
	ld   de, $a915                                   ; $77c5: $11 $15 $a9
	add  l                                           ; $77c8: $85
	ld   b, a                                        ; $77c9: $47
	cp   [hl]                                        ; $77ca: $be
	db   $fd                                         ; $77cb: $fd
	sbc  b                                           ; $77cc: $98
	ld   h, [hl]                                     ; $77cd: $66
	xor  h                                           ; $77ce: $ac
	or   a                                           ; $77cf: $b7
	ld   de, $9915                                   ; $77d0: $11 $15 $99
	add  l                                           ; $77d3: $85
	ld   b, a                                        ; $77d4: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77d5: $cf
	db   $fd                                         ; $77d6: $fd
	and  a                                           ; $77d7: $a7
	ld   d, a                                        ; $77d8: $57
	cp   h                                           ; $77d9: $bc
	add  $11                                         ; $77da: $c6 $11
	ld   d, $a9                                      ; $77dc: $16 $a9
	ld   [hl], l                                     ; $77de: $75
	ld   c, b                                        ; $77df: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77e0: $cf
	db   $fc                                         ; $77e1: $fc
	and  a                                           ; $77e2: $a7
	ld   d, a                                        ; $77e3: $57
	call z, $11c6                                    ; $77e4: $cc $c6 $11
	ld   d, $aa                                      ; $77e7: $16 $aa
	ld   [hl], l                                     ; $77e9: $75
	ld   e, b                                        ; $77ea: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77eb: $cf
	db   $fc                                         ; $77ec: $fc
	sub  a                                           ; $77ed: $97
	ld   e, b                                        ; $77ee: $58
	call z, $11b4                                    ; $77ef: $cc $b4 $11
	daa                                              ; $77f2: $27
	xor  d                                           ; $77f3: $aa
	ld   [hl], h                                     ; $77f4: $74
	ld   e, c                                        ; $77f5: $59
	rst  JumpTable                                         ; $77f6: $df
	ei                                               ; $77f7: $fb
	sub  [hl]                                        ; $77f8: $96
	ld   e, c                                        ; $77f9: $59
	call c, $11a2                                    ; $77fa: $dc $a2 $11
	add  hl, sp                                      ; $77fd: $39
	cp   c                                           ; $77fe: $b9
	ld   h, h                                        ; $77ff: $64
	ld   l, d                                        ; $7800: $6a
	rst  $38                                         ; $7801: $ff
	ei                                               ; $7802: $fb
	ld   [hl], l                                     ; $7803: $75
	ld   l, e                                        ; $7804: $6b
	call z, $1181                                    ; $7805: $cc $81 $11
	ld   e, d                                        ; $7808: $5a
	xor  c                                           ; $7809: $a9
	ld   d, h                                        ; $780a: $54
	ld   a, h                                        ; $780b: $7c
	rst  $38                                         ; $780c: $ff
	jp   hl                                          ; $780d: $e9


	ld   [hl], l                                     ; $780e: $75
	ld   a, e                                        ; $780f: $7b
	db   $db                                         ; $7810: $db
	ld   d, c                                        ; $7811: $51
	ld   de, $a87a                                   ; $7812: $11 $7a $a8
	ld   d, l                                        ; $7815: $55
	sbc  l                                           ; $7816: $9d
	rst  $38                                         ; $7817: $ff
	ret                                              ; $7818: $c9


	ld   d, l                                        ; $7819: $55
	sbc  h                                           ; $781a: $9c
	jp   c, $1311                                    ; $781b: $da $11 $13

	sbc  h                                           ; $781e: $9c
	and  [hl]                                        ; $781f: $a6
	ld   b, [hl]                                     ; $7820: $46
	cp   a                                           ; $7821: $bf
	cp   $a7                                         ; $7822: $fe $a7
	ld   b, [hl]                                     ; $7824: $46
	call $11c6                                       ; $7825: $cd $c6 $11
	ld   d, $ba                                      ; $7828: $16 $ba
	add  l                                           ; $782a: $85
	ld   c, b                                        ; $782b: $48
	rst  JumpTable                                         ; $782c: $df
	db   $fc                                         ; $782d: $fc
	add  h                                           ; $782e: $84
	ld   c, d                                        ; $782f: $4a
	db   $dd                                         ; $7830: $dd
	sub  c                                           ; $7831: $91
	ld   de, $ba4a                                   ; $7832: $11 $4a $ba
	ld   h, h                                        ; $7835: $64
	ld   a, e                                        ; $7836: $7b
	rst  $38                                         ; $7837: $ff
	ld   [$7d53], a                                  ; $7838: $ea $53 $7d
	db   $db                                         ; $783b: $db
	ld   hl, $9c13                                   ; $783c: $21 $13 $9c
	or   a                                           ; $783f: $b7
	ld   d, [hl]                                     ; $7840: $56
	xor  a                                           ; $7841: $af
	rst  $38                                         ; $7842: $ff
	or   l                                           ; $7843: $b5
	ld   [hl], $bd                                   ; $7844: $36 $bd
	call nz, $1811                                   ; $7846: $c4 $11 $18

jr_0e4_7849:
	call z, Call_0e4_5a85                            ; $7849: $cc $85 $5a
	rst  $28                                         ; $784c: $ef
	ei                                               ; $784d: $fb
	ld   h, d                                        ; $784e: $62
	ld   l, h                                        ; $784f: $6c
	db   $eb                                         ; $7850: $eb
	ld   sp, $ac12                                   ; $7851: $31 $12 $ac
	cp   c                                           ; $7854: $b9
	ld   h, a                                        ; $7855: $67
	xor  [hl]                                        ; $7856: $ae
	cp   $71                                         ; $7857: $fe $71
	ld   d, $df                                      ; $7859: $16 $df
	pop  bc                                          ; $785b: $c1
	ld   de, $ff8f                                   ; $785c: $11 $8f $ff
	add  h                                           ; $785f: $84
	ld   l, e                                        ; $7860: $6b
	db   $ed                                         ; $7861: $ed
	ld   [hl], c                                     ; $7862: $71
	ld   de, $f6bf                                   ; $7863: $11 $bf $f6
	ld   de, $ff5f                                   ; $7866: $11 $5f $ff
	and  c                                           ; $7869: $a1
	jr   c, jr_0e4_7849                              ; $786a: $38 $dd

	ld   d, c                                        ; $786c: $51
	inc  de                                          ; $786d: $13
	rst  JumpTable                                         ; $786e: $df
	push af                                          ; $786f: $f5
	ld   de, $ff8f                                   ; $7870: $11 $8f $ff
	ld   d, c                                        ; $7873: $51
	add  hl, sp                                      ; $7874: $39
	jp   c, $1b11                                    ; $7875: $da $11 $1b

	rst  $38                                         ; $7878: $ff
	sub  c                                           ; $7879: $91
	dec  d                                           ; $787a: $15
	rst  $38                                         ; $787b: $ff
	or   $11                                         ; $787c: $f6 $11
	ld   a, h                                        ; $787e: $7c
	and  c                                           ; $787f: $a1
	ld   de, $f9bf                                   ; $7880: $11 $bf $f9
	ld   de, $ff6f                                   ; $7883: $11 $6f $ff
	ld   b, c                                        ; $7886: $41
	add  hl, sp                                      ; $7887: $39
	ret  z                                           ; $7888: $c8

	ld   de, $ff3f                                   ; $7889: $11 $3f $ff
	ld   [hl], c                                     ; $788c: $71
	jr   @+$01                                       ; $788d: $18 $ff

	pop  de                                          ; $788f: $d1
	dec  d                                           ; $7890: $15
	call $1941                                       ; $7891: $cd $41 $19
	rst  $38                                         ; $7894: $ff
	ldh  a, [c]                                      ; $7895: $f2
	ld   de, $f7ef                                   ; $7896: $11 $ef $f7
	ld   de, $b1af                                   ; $7899: $11 $af $b1
	ld   de, $ffff                                   ; $789c: $11 $ff $ff
	ld   de, $ff2f                                   ; $789f: $11 $2f $ff
	ld   de, $f65e                                   ; $78a2: $11 $5e $f6
	ld   de, $ff1f                                   ; $78a5: $11 $1f $ff
	ld   h, c                                        ; $78a8: $61

Call_0e4_78a9:
	dec  de                                          ; $78a9: $1b
	rst  $38                                         ; $78aa: $ff
	ld   d, c                                        ; $78ab: $51
	rra                                              ; $78ac: $1f
	ei                                               ; $78ad: $fb
	ld   de, $ff1f                                   ; $78ae: $11 $1f $ff
	pop  af                                          ; $78b1: $f1
	ld   d, $ff                                      ; $78b2: $16 $ff
	ld   d, c                                        ; $78b4: $51
	inc  e                                           ; $78b5: $1c
	rst  $38                                         ; $78b6: $ff
	ld   de, rAUD1LEN                                   ; $78b7: $11 $11 $ff
	push af                                          ; $78ba: $f5
	inc  d                                           ; $78bb: $14
	rst  $28                                         ; $78bc: $ef
	add  c                                           ; $78bd: $81
	dec  d                                           ; $78be: $15
	rst  $38                                         ; $78bf: $ff
	ld   h, c                                        ; $78c0: $61
	ld   de, $ffff                                   ; $78c1: $11 $ff $ff
	inc  de                                          ; $78c4: $13
	cp   a                                           ; $78c5: $bf
	pop  hl                                          ; $78c6: $e1
	inc  d                                           ; $78c7: $14
	rst  $38                                         ; $78c8: $ff
	pop  bc                                          ; $78c9: $c1
	ld   de, $ff1f                                   ; $78ca: $11 $1f $ff
	db   $f4                                         ; $78cd: $f4
	adc  e                                           ; $78ce: $8b
	or   a                                           ; $78cf: $b7
	ld   d, $8f                                      ; $78d0: $16 $8f
	rst  $30                                         ; $78d2: $f7
	ld   hl, rAUD1LEN                                   ; $78d3: $21 $11 $ff
	rst  $38                                         ; $78d6: $ff
	ld   c, b                                        ; $78d7: $48
	xor  c                                           ; $78d8: $a9
	ld   b, c                                        ; $78d9: $41
	sbc  c                                           ; $78da: $99
	rst  $38                                         ; $78db: $ff
	ld   d, d                                        ; $78dc: $52
	ld   de, $ff1f                                   ; $78dd: $11 $1f $ff
	db   $f4                                         ; $78e0: $f4
	cp   d                                           ; $78e1: $ba
	ld   b, c                                        ; $78e2: $41
	ld   e, $af                                      ; $78e3: $1e $af
	db   $f4                                         ; $78e5: $f4
	ld   [hl], c                                     ; $78e6: $71
	ld   de, $ffff                                   ; $78e7: $11 $ff $ff
	dec  l                                           ; $78ea: $2d
	pop  hl                                          ; $78eb: $e1
	ld   de, $fffd                                   ; $78ec: $11 $fd $ff
	ld   e, e                                        ; $78ef: $5b
	ld   de, $fd1f                                   ; $78f0: $11 $1f $fd
	or   $ff                                         ; $78f3: $f6 $ff
	ld   de, $ec1f                                   ; $78f5: $11 $1f $ec
	ld   a, [$11e1]                                  ; $78f8: $fa $e1 $11
	rst  JumpTable                                         ; $78fb: $df
	sbc  a                                           ; $78fc: $9f
	rst  $28                                         ; $78fd: $ef
	pop  af                                          ; $78fe: $f1
	ld   de, $6ffb                                   ; $78ff: $11 $fb $6f
	db   $ed                                         ; $7902: $ed
	ld   de, $f715                                   ; $7903: $11 $15 $f7
	rst  $28                                         ; $7906: $ef
	rst  $38                                         ; $7907: $ff
	ld   de, $a52a                                   ; $7908: $11 $2a $a5
	cp   $b1                                         ; $790b: $fe $b1
	ld   de, $8c1f                                   ; $790d: $11 $1f $8c
	cp   $f1                                         ; $7910: $fe $f1
	inc  de                                          ; $7912: $13
	ld   a, e                                        ; $7913: $7b
	ld   c, a                                        ; $7914: $4f
	jp   c, $1141                                    ; $7915: $da $41 $11

	db   $fd                                         ; $7918: $fd
	ld   l, a                                        ; $7919: $6f
	rst  $28                                         ; $791a: $ef
	ld   de, $a275                                   ; $791b: $11 $75 $a2
	cp   $87                                         ; $791e: $fe $87
	ld   de, $f21f                                   ; $7920: $11 $1f $f2
	db   $fd                                         ; $7923: $fd
	db   $f4                                         ; $7924: $f4
	ld   a, [de]                                     ; $7925: $1a
	ld   c, c                                        ; $7926: $49
	rra                                              ; $7927: $1f
	or   $b1                                         ; $7928: $f6 $b1
	ld   de, $1fff                                   ; $792a: $11 $ff $1f
	rst  $38                                         ; $792d: $ff
	or   c                                           ; $792e: $b1
	push bc                                          ; $792f: $c5
	sub  c                                           ; $7930: $91
	rst  $28                                         ; $7931: $ef
	ld   e, h                                        ; $7932: $5c
	ld   sp, $f116                                   ; $7933: $31 $16 $f1
	cp   a                                           ; $7936: $bf
	rst  $38                                         ; $7937: $ff
	dec  de                                          ; $7938: $1b
	add  a                                           ; $7939: $87
	add  hl, hl                                      ; $793a: $29
	push af                                          ; $793b: $f5
	and  [hl]                                        ; $793c: $a6
	ld   de, $611f                                   ; $793d: $11 $1f $61
	rst  $38                                         ; $7940: $ff
	pop  af                                          ; $7941: $f1
	ld   l, l                                        ; $7942: $6d
	ld   d, e                                        ; $7943: $53
	ld   c, a                                        ; $7944: $4f
	ld   [hl], a                                     ; $7945: $77
	and  h                                           ; $7946: $a4
	ld   de, $1eff                                   ; $7947: $11 $ff $1e
	rst  $38                                         ; $794a: $ff
	ld   d, c                                        ; $794b: $51
	ld   sp, hl                                      ; $794c: $f9
	ld   b, c                                        ; $794d: $41
	db   $fc                                         ; $794e: $fc
	dec  sp                                          ; $794f: $3b
	ld   h, c                                        ; $7950: $61
	add  hl, de                                      ; $7951: $19
	pop  af                                          ; $7952: $f1
	ld   l, a                                        ; $7953: $6f
	db   $fd                                         ; $7954: $fd
	rra                                              ; $7955: $1f
	db   $e4                                         ; $7956: $e4
	ld   e, $f1                                      ; $7957: $1e $f1
	xor  c                                           ; $7959: $a9
	ld   h, c                                        ; $795a: $61
	rra                                              ; $795b: $1f
	ld   b, c                                        ; $795c: $41
	rst  $38                                         ; $795d: $ff
	pop  af                                          ; $795e: $f1
	cp   a                                           ; $795f: $bf
	ld   b, d                                        ; $7960: $42
	sbc  a                                           ; $7961: $9f
	ld   b, [hl]                                     ; $7962: $46
	cp   b                                           ; $7963: $b8
	ld   de, $1aff                                   ; $7964: $11 $ff $1a
	rst  $38                                         ; $7967: $ff
	ld   [de], a                                     ; $7968: $12
	ld   sp, hl                                      ; $7969: $f9
	dec  h                                           ; $796a: $25
	ld   a, [$922c]                                  ; $796b: $fa $2c $92
	ld   d, $f1                                      ; $796e: $16 $f1
	rra                                              ; $7970: $1f
	ld   sp, hl                                      ; $7971: $f9
	rra                                              ; $7972: $1f
	di                                               ; $7973: $f3
	ld   e, l                                        ; $7974: $5d
	ldh  a, [c]                                      ; $7975: $f2
	adc  e                                           ; $7976: $8b
	ld   h, c                                        ; $7977: $61
	rra                                              ; $7978: $1f
	pop  bc                                          ; $7979: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $797a: $cf
	pop  de                                          ; $797b: $d1
	adc  a                                           ; $797c: $8f
	ld   h, l                                        ; $797d: $65
	sbc  a                                           ; $797e: $9f
	add  h                                           ; $797f: $84
	cp   c                                           ; $7980: $b9
	ld   hl, $117f                                   ; $7981: $21 $7f $11
	db   $fd                                         ; $7984: $fd
	ld   h, c                                        ; $7985: $61
	db   $fd                                         ; $7986: $fd
	ld   e, b                                        ; $7987: $58
	cp   [hl]                                        ; $7988: $be
	ld   l, b                                        ; $7989: $68
	sbc  c                                           ; $798a: $99
	ld   de, $16cf                                   ; $798b: $11 $cf $16
	reti                                             ; $798e: $d9


	ld   d, h                                        ; $798f: $54
	ret  c                                           ; $7990: $d8

	ld   a, b                                        ; $7991: $78
	xor  e                                           ; $7992: $ab
	ld   a, b                                        ; $7993: $78
	sbc  c                                           ; $7994: $99
	ld   b, [hl]                                     ; $7995: $46
	cp   l                                           ; $7996: $bd
	ld   h, l                                        ; $7997: $65
	and  [hl]                                        ; $7998: $a6
	ld   h, h                                        ; $7999: $64
	sbc  b                                           ; $799a: $98
	ld   h, a                                        ; $799b: $67
	sbc  d                                           ; $799c: $9a
	sbc  b                                           ; $799d: $98
	adc  d                                           ; $799e: $8a
	sbc  c                                           ; $799f: $99
	sbc  c                                           ; $79a0: $99
	or   a                                           ; $79a1: $b7
	ld   l, b                                        ; $79a2: $68
	halt                                             ; $79a3: $76
	ld   h, a                                        ; $79a4: $67
	halt                                             ; $79a5: $76
	ld   a, b                                        ; $79a6: $78
	adc  b                                           ; $79a7: $88
	ld   a, c                                        ; $79a8: $79
	xor  b                                           ; $79a9: $a8
	xor  c                                           ; $79aa: $a9
	xor  d                                           ; $79ab: $aa
	sub  [hl]                                        ; $79ac: $96
	adc  c                                           ; $79ad: $89
	ld   h, [hl]                                     ; $79ae: $66
	ld   [hl], a                                     ; $79af: $77
	ld   h, l                                        ; $79b0: $65
	ld   h, a                                        ; $79b1: $67
	ld   [hl], a                                     ; $79b2: $77
	adc  d                                           ; $79b3: $8a
	sbc  b                                           ; $79b4: $98
	cp   c                                           ; $79b5: $b9
	adc  c                                           ; $79b6: $89
	xor  b                                           ; $79b7: $a8
	sbc  b                                           ; $79b8: $98
	ld   a, b                                        ; $79b9: $78
	ld   d, l                                        ; $79ba: $55
	ld   h, [hl]                                     ; $79bb: $66
	ld   h, [hl]                                     ; $79bc: $66
	sbc  c                                           ; $79bd: $99
	adc  b                                           ; $79be: $88
	sbc  c                                           ; $79bf: $99
	xor  d                                           ; $79c0: $aa
	xor  d                                           ; $79c1: $aa
	cp   b                                           ; $79c2: $b8
	sbc  c                                           ; $79c3: $99
	ld   h, a                                        ; $79c4: $67
	ld   h, [hl]                                     ; $79c5: $66
	ld   d, [hl]                                     ; $79c6: $56
	ld   h, [hl]                                     ; $79c7: $66
	ld   [hl], a                                     ; $79c8: $77
	adc  c                                           ; $79c9: $89
	sbc  b                                           ; $79ca: $98
	xor  e                                           ; $79cb: $ab
	xor  d                                           ; $79cc: $aa
	xor  c                                           ; $79cd: $a9
	adc  c                                           ; $79ce: $89
	add  [hl]                                        ; $79cf: $86
	ld   h, a                                        ; $79d0: $67
	ld   h, l                                        ; $79d1: $65
	ld   h, [hl]                                     ; $79d2: $66
	ld   [hl], a                                     ; $79d3: $77
	ld   a, c                                        ; $79d4: $79
	sbc  c                                           ; $79d5: $99
	sbc  c                                           ; $79d6: $99
	xor  d                                           ; $79d7: $aa
	xor  e                                           ; $79d8: $ab
	adc  b                                           ; $79d9: $88
	adc  b                                           ; $79da: $88
	ld   h, [hl]                                     ; $79db: $66
	ld   h, [hl]                                     ; $79dc: $66
	ld   d, l                                        ; $79dd: $55
	ld   a, b                                        ; $79de: $78
	adc  b                                           ; $79df: $88
	adc  b                                           ; $79e0: $88
	sbc  c                                           ; $79e1: $99
	sbc  c                                           ; $79e2: $99
	sbc  d                                           ; $79e3: $9a
	xor  c                                           ; $79e4: $a9
	adc  c                                           ; $79e5: $89
	halt                                             ; $79e6: $76
	ld   h, [hl]                                     ; $79e7: $66
	halt                                             ; $79e8: $76
	ld   h, a                                        ; $79e9: $67
	ld   [hl], a                                     ; $79ea: $77
	adc  c                                           ; $79eb: $89
	adc  b                                           ; $79ec: $88
	xor  d                                           ; $79ed: $aa
	xor  c                                           ; $79ee: $a9
	xor  c                                           ; $79ef: $a9
	adc  c                                           ; $79f0: $89
	adc  b                                           ; $79f1: $88
	halt                                             ; $79f2: $76
	ld   h, [hl]                                     ; $79f3: $66
	ld   h, [hl]                                     ; $79f4: $66
	ld   [hl], a                                     ; $79f5: $77
	ld   a, c                                        ; $79f6: $79
	sbc  c                                           ; $79f7: $99
	sbc  c                                           ; $79f8: $99
	sbc  c                                           ; $79f9: $99
	sbc  d                                           ; $79fa: $9a
	xor  b                                           ; $79fb: $a8
	add  a                                           ; $79fc: $87
	halt                                             ; $79fd: $76
	ld   h, [hl]                                     ; $79fe: $66
	ld   h, [hl]                                     ; $79ff: $66
	ld   [hl], a                                     ; $7a00: $77
	ld   a, b                                        ; $7a01: $78
	sbc  c                                           ; $7a02: $99
	sbc  c                                           ; $7a03: $99
	sbc  d                                           ; $7a04: $9a
	xor  d                                           ; $7a05: $aa
	sbc  c                                           ; $7a06: $99
	adc  b                                           ; $7a07: $88
	halt                                             ; $7a08: $76
	halt                                             ; $7a09: $76
	ld   h, [hl]                                     ; $7a0a: $66
	ld   h, a                                        ; $7a0b: $67
	ld   [hl], a                                     ; $7a0c: $77
	adc  b                                           ; $7a0d: $88
	sbc  c                                           ; $7a0e: $99
	sbc  d                                           ; $7a0f: $9a
	sbc  c                                           ; $7a10: $99
	xor  c                                           ; $7a11: $a9
	sbc  c                                           ; $7a12: $99
	sub  a                                           ; $7a13: $97
	halt                                             ; $7a14: $76
	ld   h, [hl]                                     ; $7a15: $66
	ld   h, [hl]                                     ; $7a16: $66
	ld   a, b                                        ; $7a17: $78
	adc  b                                           ; $7a18: $88
	adc  b                                           ; $7a19: $88
	sbc  c                                           ; $7a1a: $99
	sbc  d                                           ; $7a1b: $9a
	sbc  d                                           ; $7a1c: $9a
	sbc  b                                           ; $7a1d: $98
	add  a                                           ; $7a1e: $87
	halt                                             ; $7a1f: $76
	ld   h, [hl]                                     ; $7a20: $66
	ld   h, [hl]                                     ; $7a21: $66
	ld   [hl], a                                     ; $7a22: $77
	ld   a, b                                        ; $7a23: $78
	sbc  c                                           ; $7a24: $99
	sbc  c                                           ; $7a25: $99
	sbc  c                                           ; $7a26: $99
	sbc  d                                           ; $7a27: $9a
	sbc  c                                           ; $7a28: $99
	adc  b                                           ; $7a29: $88
	ld   [hl], a                                     ; $7a2a: $77
	halt                                             ; $7a2b: $76
	ld   h, [hl]                                     ; $7a2c: $66
	ld   h, a                                        ; $7a2d: $67
	ld   a, b                                        ; $7a2e: $78
	sbc  b                                           ; $7a2f: $98
	sbc  c                                           ; $7a30: $99
	xor  d                                           ; $7a31: $aa
	sbc  d                                           ; $7a32: $9a
	sbc  b                                           ; $7a33: $98
	sbc  c                                           ; $7a34: $99
	ld   [hl], a                                     ; $7a35: $77
	ld   h, [hl]                                     ; $7a36: $66
	ld   h, [hl]                                     ; $7a37: $66
	ld   h, a                                        ; $7a38: $67
	ld   a, b                                        ; $7a39: $78
	sbc  b                                           ; $7a3a: $98
	adc  c                                           ; $7a3b: $89
	xor  d                                           ; $7a3c: $aa
	sbc  d                                           ; $7a3d: $9a
	xor  c                                           ; $7a3e: $a9
	sbc  b                                           ; $7a3f: $98
	halt                                             ; $7a40: $76
	ld   h, [hl]                                     ; $7a41: $66
	ld   h, [hl]                                     ; $7a42: $66
	ld   h, a                                        ; $7a43: $67
	ld   [hl], a                                     ; $7a44: $77
	adc  c                                           ; $7a45: $89
	adc  c                                           ; $7a46: $89
	xor  c                                           ; $7a47: $a9
	xor  c                                           ; $7a48: $a9
	sbc  b                                           ; $7a49: $98
	adc  b                                           ; $7a4a: $88
	ld   [hl], a                                     ; $7a4b: $77
	ld   h, [hl]                                     ; $7a4c: $66
	ld   h, [hl]                                     ; $7a4d: $66
	ld   h, [hl]                                     ; $7a4e: $66
	ld   a, b                                        ; $7a4f: $78
	adc  b                                           ; $7a50: $88
	adc  c                                           ; $7a51: $89
	xor  d                                           ; $7a52: $aa
	xor  c                                           ; $7a53: $a9
	sbc  b                                           ; $7a54: $98
	sbc  b                                           ; $7a55: $98
	ld   [hl], a                                     ; $7a56: $77
	ld   h, [hl]                                     ; $7a57: $66
	ld   h, [hl]                                     ; $7a58: $66
	ld   h, a                                        ; $7a59: $67
	ld   a, b                                        ; $7a5a: $78
	sbc  b                                           ; $7a5b: $98
	sbc  b                                           ; $7a5c: $98
	sbc  d                                           ; $7a5d: $9a
	sbc  d                                           ; $7a5e: $9a
	sbc  c                                           ; $7a5f: $99
	sbc  b                                           ; $7a60: $98
	halt                                             ; $7a61: $76
	ld   h, [hl]                                     ; $7a62: $66
	ld   h, [hl]                                     ; $7a63: $66
	ld   h, a                                        ; $7a64: $67
	ld   [hl], a                                     ; $7a65: $77
	adc  c                                           ; $7a66: $89
	adc  c                                           ; $7a67: $89
	xor  d                                           ; $7a68: $aa
	xor  d                                           ; $7a69: $aa
	xor  c                                           ; $7a6a: $a9
	sbc  b                                           ; $7a6b: $98
	ld   [hl], a                                     ; $7a6c: $77
	ld   h, [hl]                                     ; $7a6d: $66
	ld   h, [hl]                                     ; $7a6e: $66
	ld   h, a                                        ; $7a6f: $67
	ld   a, b                                        ; $7a70: $78
	adc  b                                           ; $7a71: $88
	adc  c                                           ; $7a72: $89
	xor  d                                           ; $7a73: $aa
	xor  d                                           ; $7a74: $aa
	sbc  c                                           ; $7a75: $99
	add  a                                           ; $7a76: $87
	ld   [hl], a                                     ; $7a77: $77
	ld   h, [hl]                                     ; $7a78: $66
	ld   h, [hl]                                     ; $7a79: $66
	ld   [hl], a                                     ; $7a7a: $77
	ld   a, b                                        ; $7a7b: $78
	adc  b                                           ; $7a7c: $88
	sbc  d                                           ; $7a7d: $9a
	xor  d                                           ; $7a7e: $aa
	xor  d                                           ; $7a7f: $aa
	adc  b                                           ; $7a80: $88
	sub  a                                           ; $7a81: $97
	halt                                             ; $7a82: $76
	ld   h, [hl]                                     ; $7a83: $66
	ld   h, [hl]                                     ; $7a84: $66
	ld   [hl], a                                     ; $7a85: $77
	ld   a, c                                        ; $7a86: $79
	sbc  b                                           ; $7a87: $98
	adc  d                                           ; $7a88: $8a
	sbc  c                                           ; $7a89: $99
	cp   d                                           ; $7a8a: $ba
	sbc  b                                           ; $7a8b: $98
	add  a                                           ; $7a8c: $87
	halt                                             ; $7a8d: $76
	ld   h, [hl]                                     ; $7a8e: $66
	ld   h, [hl]                                     ; $7a8f: $66
	ld   [hl], a                                     ; $7a90: $77

jr_0e4_7a91:
	adc  b                                           ; $7a91: $88
	adc  b                                           ; $7a92: $88
	xor  d                                           ; $7a93: $aa
	xor  d                                           ; $7a94: $aa
	xor  b                                           ; $7a95: $a8
	adc  c                                           ; $7a96: $89
	ld   [hl], a                                     ; $7a97: $77
	halt                                             ; $7a98: $76
	ld   h, [hl]                                     ; $7a99: $66
	ld   h, a                                        ; $7a9a: $67
	add  a                                           ; $7a9b: $87
	sbc  c                                           ; $7a9c: $99
	sbc  b                                           ; $7a9d: $98
	sbc  c                                           ; $7a9e: $99
	sbc  e                                           ; $7a9f: $9b
	and  a                                           ; $7aa0: $a7
	sbc  b                                           ; $7aa1: $98
	ld   h, a                                        ; $7aa2: $67
	halt                                             ; $7aa3: $76
	ld   h, [hl]                                     ; $7aa4: $66
	ld   l, b                                        ; $7aa5: $68
	adc  c                                           ; $7aa6: $89
	xor  d                                           ; $7aa7: $aa
	sbc  d                                           ; $7aa8: $9a
	and  [hl]                                        ; $7aa9: $a6
	cp   l                                           ; $7aaa: $bd
	scf                                              ; $7aab: $37
	sub  h                                           ; $7aac: $94
	ld   d, [hl]                                     ; $7aad: $56
	ld   h, h                                        ; $7aae: $64
	ld   a, c                                        ; $7aaf: $79
	adc  h                                           ; $7ab0: $8c
	xor  e                                           ; $7ab1: $ab
	ret  z                                           ; $7ab2: $c8

	ld   [hl], a                                     ; $7ab3: $77
	ld   c, [hl]                                     ; $7ab4: $4e
	ld   [hl], c                                     ; $7ab5: $71
	add  $25                                         ; $7ab6: $c6 $25
	rst  ToBoot                                         ; $7ab8: $c7
	ld   e, l                                        ; $7ab9: $5d
	sbc  h                                           ; $7aba: $9c
	call c, Call_0e4_53dc                            ; $7abb: $dc $dc $53
	jr   jr_0e4_7a91                                 ; $7abe: $18 $d1

	adc  e                                           ; $7ac0: $8b
	dec  d                                           ; $7ac1: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ac2: $cf
	cpl                                              ; $7ac3: $2f
	ld   a, [$abfd]                                  ; $7ac4: $fa $fd $ab
	ld   [hl], c                                     ; $7ac7: $71
	ld   d, $d1                                      ; $7ac8: $16 $d1
	ld   a, a                                        ; $7aca: $7f
	rla                                              ; $7acb: $17
	rst  $38                                         ; $7acc: $ff
	cpl                                              ; $7acd: $2f
	rst  $30                                         ; $7ace: $f7
	cp   $75                                         ; $7acf: $fe $75
	sub  c                                           ; $7ad1: $91
	rra                                              ; $7ad2: $1f
	ld   [hl], c                                     ; $7ad3: $71
	rst  $38                                         ; $7ad4: $ff
	inc  e                                           ; $7ad5: $1c
	rst  $38                                         ; $7ad6: $ff
	rra                                              ; $7ad7: $1f
	push bc                                          ; $7ad8: $c5
	ld   a, [$4122]                                  ; $7ad9: $fa $22 $41
	rra                                              ; $7adc: $1f
	ld   [de], a                                     ; $7add: $12
	or   $9f                                         ; $7ade: $f6 $9f
	di                                               ; $7ae0: $f3
	rst  $38                                         ; $7ae1: $ff
	dec  de                                          ; $7ae2: $1b
	and  [hl]                                        ; $7ae3: $a6
	dec  d                                           ; $7ae4: $15
	ld   de, $1ff1                                   ; $7ae5: $11 $f1 $1f
	call nc, $82ff                                   ; $7ae8: $d4 $ff $82
	pop  af                                          ; $7aeb: $f1
	ld   e, $71                                      ; $7aec: $1e $71
	ld   sp, $f11c                                   ; $7aee: $31 $1c $f1
	rst  $38                                         ; $7af1: $ff
	add  hl, sp                                      ; $7af2: $39
	rst  $38                                         ; $7af3: $ff
	rra                                              ; $7af4: $1f
	pop  af                                          ; $7af5: $f1

jr_0e4_7af6:
	cp   l                                           ; $7af6: $bd
	ld   d, c                                        ; $7af7: $51
	sub  c                                           ; $7af8: $91
	rra                                              ; $7af9: $1f
	ld   d, c                                        ; $7afa: $51
	rst  $38                                         ; $7afb: $ff
	dec  e                                           ; $7afc: $1d
	ld   hl, sp+$1f                                  ; $7afd: $f8 $1f
	ld   sp, $12ec                                   ; $7aff: $31 $ec $12
	ld   h, c                                        ; $7b02: $61
	ld   c, a                                        ; $7b03: $4f
	inc  d                                           ; $7b04: $14
	db   $f4                                         ; $7b05: $f4
	ld   e, a                                        ; $7b06: $5f
	pop  af                                          ; $7b07: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b08: $cf
	jr   jr_0e4_7af6                                 ; $7b09: $18 $eb

	jr   @+$13                                       ; $7b0b: $18 $11

	rst  $38                                         ; $7b0d: $ff
	rra                                              ; $7b0e: $1f
	pop  af                                          ; $7b0f: $f1
	xor  a                                           ; $7b10: $af
	pop  af                                          ; $7b11: $f1
	db   $fd                                         ; $7b12: $fd
	dec  e                                           ; $7b13: $1d
	and  $1b                                         ; $7b14: $e6 $1b
	ld   de, $1ff6                                   ; $7b16: $11 $f6 $1f
	pop  af                                          ; $7b19: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b1a: $cf
	ld   h, c                                        ; $7b1b: $61
	ldh  a, [c]                                      ; $7b1c: $f2
	ld   e, $f2                                      ; $7b1d: $1e $f2
	jr   z, jr_0e4_7b32                              ; $7b1f: $28 $11

	pop  af                                          ; $7b21: $f1
	rra                                              ; $7b22: $1f
	ld   [hl], c                                     ; $7b23: $71
	rst  $38                                         ; $7b24: $ff
	ld   de, $5ff1                                   ; $7b25: $11 $f1 $5f
	pop  af                                          ; $7b28: $f1
	ld   d, d                                        ; $7b29: $52
	dec  de                                          ; $7b2a: $1b
	pop  af                                          ; $7b2b: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b2c: $cf
	dec  d                                           ; $7b2d: $15
	rst  $38                                         ; $7b2e: $ff
	rra                                              ; $7b2f: $1f
	pop  af                                          ; $7b30: $f1
	xor  a                                           ; $7b31: $af

jr_0e4_7b32:
	pop  bc                                          ; $7b32: $c1
	and  c                                           ; $7b33: $a1
	rra                                              ; $7b34: $1f
	pop  af                                          ; $7b35: $f1
	rst  $38                                         ; $7b36: $ff

Call_0e4_7b37:
	jr   @+$01                                       ; $7b37: $18 $ff

	rra                                              ; $7b39: $1f
	pop  bc                                          ; $7b3a: $c1
	cp   a                                           ; $7b3b: $bf
	ld   [hl], c                                     ; $7b3c: $71
	sub  c                                           ; $7b3d: $91
	rra                                              ; $7b3e: $1f
	ld   d, c                                        ; $7b3f: $51
	rst  $38                                         ; $7b40: $ff
	inc  e                                           ; $7b41: $1c
	di                                               ; $7b42: $f3
	rra                                              ; $7b43: $1f
	ld   de, $21ef                                   ; $7b44: $11 $ef $21
	ld   d, c                                        ; $7b47: $51
	ld   c, a                                        ; $7b48: $4f
	inc  de                                          ; $7b49: $13
	push af                                          ; $7b4a: $f5
	rra                                              ; $7b4b: $1f
	pop  af                                          ; $7b4c: $f1
	ld   l, a                                        ; $7b4d: $6f
	rla                                              ; $7b4e: $17
	rst  $38                                         ; $7b4f: $ff
	inc  d                                           ; $7b50: $14
	ld   de, $1fff                                   ; $7b51: $11 $ff $1f
	pop  af                                          ; $7b54: $f1

Jump_0e4_7b55:
	ld   l, a                                        ; $7b55: $6f
	pop  af                                          ; $7b56: $f1
	rst  $38                                         ; $7b57: $ff
	dec  de                                          ; $7b58: $1b
	ei                                               ; $7b59: $fb
	ld   d, $11                                      ; $7b5a: $16 $11
	ld   sp, hl                                      ; $7b5c: $f9
	rra                                              ; $7b5d: $1f
	pop  af                                          ; $7b5e: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b5f: $cf
	ld   sp, $1ef3                                   ; $7b60: $31 $f3 $1e
	push af                                          ; $7b63: $f5
	dec  d                                           ; $7b64: $15
	ld   de, $0ff1                                   ; $7b65: $11 $f1 $0f
	ld   h, c                                        ; $7b68: $61
	rst  $38                                         ; $7b69: $ff
	inc  d                                           ; $7b6a: $14
	pop  af                                          ; $7b6b: $f1
	ld   a, a                                        ; $7b6c: $7f
	pop  af                                          ; $7b6d: $f1
	ld   sp, $f11c                                   ; $7b6e: $31 $1c $f1
	rst  $38                                         ; $7b71: $ff
	dec  d                                           ; $7b72: $15
	rst  $38                                         ; $7b73: $ff
	rra                                              ; $7b74: $1f
	pop  af                                          ; $7b75: $f1
	cp   a                                           ; $7b76: $bf
	pop  de                                          ; $7b77: $d1
	ld   b, c                                        ; $7b78: $41
	rra                                              ; $7b79: $1f
	ld   b, c                                        ; $7b7a: $41
	rst  $38                                         ; $7b7b: $ff
	rra                                              ; $7b7c: $1f
	pop  af                                          ; $7b7d: $f1
	rra                                              ; $7b7e: $1f
	ld   [de], a                                     ; $7b7f: $12
	rst  $38                                         ; $7b80: $ff
	ld   b, c                                        ; $7b81: $41
	ld   hl, $1caf                                   ; $7b82: $21 $af $1c
	pop  af                                          ; $7b85: $f1
	ld   c, a                                        ; $7b86: $4f
	pop  af                                          ; $7b87: $f1
	rst  $38                                         ; $7b88: $ff
	dec  de                                          ; $7b89: $1b
	cp   $13                                         ; $7b8a: $fe $13
	ld   de, $1ff8                                   ; $7b8c: $11 $f8 $1f
	pop  af                                          ; $7b8f: $f1
	rst  $38                                         ; $7b90: $ff
	ld   de, $1ff1                                   ; $7b91: $11 $f1 $1f
	or   $13                                         ; $7b94: $f6 $13
	ld   d, $f1                                      ; $7b96: $16 $f1
	xor  a                                           ; $7b98: $af
	ld   de, $1fff                                   ; $7b99: $11 $ff $1f
	pop  af                                          ; $7b9c: $f1
	xor  a                                           ; $7b9d: $af
	pop  de                                          ; $7b9e: $d1
	ld   sp, $611f                                   ; $7b9f: $31 $1f $61
	rst  $38                                         ; $7ba2: $ff
	rra                                              ; $7ba3: $1f
	pop  af                                          ; $7ba4: $f1
	rra                                              ; $7ba5: $1f
	inc  de                                          ; $7ba6: $13
	rst  $38                                         ; $7ba7: $ff
	ld   b, c                                        ; $7ba8: $41

Call_0e4_7ba9:
	ld   de, $1fff                                   ; $7ba9: $11 $ff $1f
	pop  af                                          ; $7bac: $f1
	ld   l, a                                        ; $7bad: $6f
	and  c                                           ; $7bae: $a1
	db   $fd                                         ; $7baf: $fd
	ld   e, $fa                                      ; $7bb0: $1e $fa
	inc  d                                           ; $7bb2: $14
	ld   de, $1ff1                                   ; $7bb3: $11 $f1 $1f
	sub  c                                           ; $7bb6: $91
	rst  $38                                         ; $7bb7: $ff
	jr   @-$0d                                       ; $7bb8: $18 $f1

	sbc  a                                           ; $7bba: $9f
	pop  hl                                          ; $7bbb: $e1
	ld   de, $811f                                   ; $7bbc: $11 $1f $81
	rst  $38                                         ; $7bbf: $ff
	rra                                              ; $7bc0: $1f
	pop  af                                          ; $7bc1: $f1
	rra                                              ; $7bc2: $1f
	ld   [de], a                                     ; $7bc3: $12
	db   $fd                                         ; $7bc4: $fd
	ld   sp, rAUD1LEN                                   ; $7bc5: $31 $11 $ff
	rra                                              ; $7bc8: $1f
	pop  af                                          ; $7bc9: $f1
	ld   l, a                                        ; $7bca: $6f
	ld   [hl], c                                     ; $7bcb: $71
	ld   sp, hl                                      ; $7bcc: $f9
	rra                                              ; $7bcd: $1f
	rst  $20                                         ; $7bce: $e7
	inc  de                                          ; $7bcf: $13
	ld   d, $f1                                      ; $7bd0: $16 $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bd2: $cf
	ld   [de], a                                     ; $7bd3: $12
	rst  $38                                         ; $7bd4: $ff
	rra                                              ; $7bd5: $1f
	pop  af                                          ; $7bd6: $f1
	cp   $81                                         ; $7bd7: $fe $81
	ld   sp, $161f                                   ; $7bd9: $31 $1f $16
	di                                               ; $7bdc: $f3
	rra                                              ; $7bdd: $1f
	pop  af                                          ; $7bde: $f1
	rst  $38                                         ; $7bdf: $ff
	rra                                              ; $7be0: $1f
	reti                                             ; $7be1: $d9


	inc  de                                          ; $7be2: $13
	ld   de, $3ff1                                   ; $7be3: $11 $f1 $3f
	ld   h, c                                        ; $7be6: $61
	rst  $38                                         ; $7be7: $ff
	rra                                              ; $7be8: $1f
	pop  af                                          ; $7be9: $f1
	db   $ed                                         ; $7bea: $ed
	and  c                                           ; $7beb: $a1
	ld   hl, $111f                                   ; $7bec: $21 $1f $11
	or   $1f                                         ; $7bef: $f6 $1f
	pop  af                                          ; $7bf1: $f1
	rst  $38                                         ; $7bf2: $ff
	ld   e, $d8                                      ; $7bf3: $1e $d8
	ld   de, $f111                                   ; $7bf5: $11 $11 $f1
	ld   c, a                                        ; $7bf8: $4f
	ld   [hl-], a                                    ; $7bf9: $32
	rst  $38                                         ; $7bfa: $ff
	rra                                              ; $7bfb: $1f
	pop  af                                          ; $7bfc: $f1
	ld   a, [$3162]                                  ; $7bfd: $fa $62 $31
	rra                                              ; $7c00: $1f
	rla                                              ; $7c01: $17
	pop  af                                          ; $7c02: $f1
	ccf                                              ; $7c03: $3f
	pop  af                                          ; $7c04: $f1
	cp   $1f                                         ; $7c05: $fe $1f
	add  l                                           ; $7c07: $85
	inc  sp                                          ; $7c08: $33
	inc  de                                          ; $7c09: $13
	pop  af                                          ; $7c0a: $f1
	rst  JumpTable                                         ; $7c0b: $df
	ld   d, $fc                                      ; $7c0c: $16 $fc
	rra                                              ; $7c0e: $1f
	sub  c                                           ; $7c0f: $91
	or   $43                                         ; $7c10: $f6 $43
	ld   hl, $1fcf                                   ; $7c12: $21 $cf $1f
	pop  af                                          ; $7c15: $f1
	cp   a                                           ; $7c16: $bf
	ld   h, c                                        ; $7c17: $61
	pop  af                                          ; $7c18: $f1
	cpl                                              ; $7c19: $2f
	inc  h                                           ; $7c1a: $24
	ld   b, c                                        ; $7c1b: $41
	rra                                              ; $7c1c: $1f
	add  c                                           ; $7c1d: $81
	db   $fd                                         ; $7c1e: $fd
	rra                                              ; $7c1f: $1f
	pop  af                                          ; $7c20: $f1
	adc  a                                           ; $7c21: $8f
	inc  e                                           ; $7c22: $1c
	pop  hl                                          ; $7c23: $e1
	ld   b, h                                        ; $7c24: $44
	ld   de, $2ff1                                   ; $7c25: $11 $f1 $2f
	inc  h                                           ; $7c28: $24
	rst  $38                                         ; $7c29: $ff
	rra                                              ; $7c2a: $1f
	pop  af                                          ; $7c2b: $f1
	rst  $30                                         ; $7c2c: $f7
	inc  d                                           ; $7c2d: $14
	ld   hl, $1fdf                                   ; $7c2e: $21 $df $1f
	pop  af                                          ; $7c31: $f1
	rst  $38                                         ; $7c32: $ff
	dec  [hl]                                        ; $7c33: $35
	pop  af                                          ; $7c34: $f1
	xor  a                                           ; $7c35: $af
	inc  de                                          ; $7c36: $13
	ld   b, c                                        ; $7c37: $41
	rra                                              ; $7c38: $1f
	inc  d                                           ; $7c39: $14
	pop  af                                          ; $7c3a: $f1
	ld   a, a                                        ; $7c3b: $7f
	pop  af                                          ; $7c3c: $f1
	ei                                               ; $7c3d: $fb
	rra                                              ; $7c3e: $1f
	ld   b, c                                        ; $7c3f: $41
	ld   b, c                                        ; $7c40: $41
	rra                                              ; $7c41: $1f
	ld   sp, $1ff7                                   ; $7c42: $31 $f7 $1f
	pop  af                                          ; $7c45: $f1
	rst  $38                                         ; $7c46: $ff
	rra                                              ; $7c47: $1f
	or   c                                           ; $7c48: $b1
	ld   b, e                                        ; $7c49: $43
	dec  d                                           ; $7c4a: $15
	pop  af                                          ; $7c4b: $f1
	cp   $1e                                         ; $7c4c: $fe $1e
	or   $9f                                         ; $7c4e: $f6 $9f
	ld   e, $f2                                      ; $7c50: $1e $f2
	ld   b, h                                        ; $7c52: $44
	ld   de, $aff1                                   ; $7c53: $11 $f1 $af
	ld   a, [de]                                     ; $7c56: $1a
	ei                                               ; $7c57: $fb
	ld   e, a                                        ; $7c58: $5f
	inc  l                                           ; $7c59: $2c
	di                                               ; $7c5a: $f3
	ld   [hl], l                                     ; $7c5b: $75
	ld   de, $3ff1                                   ; $7c5c: $11 $f1 $3f
	rla                                              ; $7c5f: $17
	db   $fd                                         ; $7c60: $fd
	cpl                                              ; $7c61: $2f
	adc  b                                           ; $7c62: $88
	push af                                          ; $7c63: $f5
	ld   a, c                                        ; $7c64: $79
	ld   de, $1fe1                                   ; $7c65: $11 $e1 $1f
	ld   [de], a                                     ; $7c68: $12
	rst  $28                                         ; $7c69: $ef
	cpl                                              ; $7c6a: $2f
	db   $f4                                         ; $7c6b: $f4
	ei                                               ; $7c6c: $fb
	ld   a, e                                        ; $7c6d: $7b
	ld   h, c                                        ; $7c6e: $61
	adc  b                                           ; $7c6f: $88
	ld   a, [de]                                     ; $7c70: $1a
	add  c                                           ; $7c71: $81
	adc  [hl]                                        ; $7c72: $8e
	ld   c, d                                        ; $7c73: $4a
	or   $ef                                         ; $7c74: $f6 $ef
	adc  d                                           ; $7c76: $8a
	and  c                                           ; $7c77: $a1
	inc  l                                           ; $7c78: $2c
	ld   [de], a                                     ; $7c79: $12
	or   e                                           ; $7c7a: $b3
	dec  sp                                          ; $7c7b: $3b
	sub  h                                           ; $7c7c: $94
	db   $ec                                         ; $7c7d: $ec
	ld   l, a                                        ; $7c7e: $6f
	cp   b                                           ; $7c7f: $b8
	cp   c                                           ; $7c80: $b9
	scf                                              ; $7c81: $37
	and  e                                           ; $7c82: $a3
	ld   e, c                                        ; $7c83: $59
	ld   b, h                                        ; $7c84: $44
	sub  a                                           ; $7c85: $97
	ld   e, d                                        ; $7c86: $5a
	and  a                                           ; $7c87: $a7
	res  3, d                                        ; $7c88: $cb $9a
	sub  a                                           ; $7c8a: $97
	adc  d                                           ; $7c8b: $8a
	halt                                             ; $7c8c: $76
	add  a                                           ; $7c8d: $87
	ld   d, a                                        ; $7c8e: $57
	halt                                             ; $7c8f: $76
	ld   a, b                                        ; $7c90: $78
	adc  b                                           ; $7c91: $88
	cp   c                                           ; $7c92: $b9
	xor  c                                           ; $7c93: $a9
	sbc  b                                           ; $7c94: $98
	sbc  d                                           ; $7c95: $9a
	ld   [hl], a                                     ; $7c96: $77
	sub  [hl]                                        ; $7c97: $96
	ld   h, a                                        ; $7c98: $67
	ld   h, l                                        ; $7c99: $65
	add  a                                           ; $7c9a: $87
	ld   a, d                                        ; $7c9b: $7a
	adc  c                                           ; $7c9c: $89
	xor  c                                           ; $7c9d: $a9
	adc  d                                           ; $7c9e: $8a
	xor  b                                           ; $7c9f: $a8
	adc  c                                           ; $7ca0: $89
	halt                                             ; $7ca1: $76
	halt                                             ; $7ca2: $76
	ld   h, a                                        ; $7ca3: $67
	ld   [hl], a                                     ; $7ca4: $77
	sbc  c                                           ; $7ca5: $99
	sbc  d                                           ; $7ca6: $9a
	sbc  d                                           ; $7ca7: $9a
	sbc  b                                           ; $7ca8: $98
	sbc  b                                           ; $7ca9: $98
	add  a                                           ; $7caa: $87
	halt                                             ; $7cab: $76
	ld   h, a                                        ; $7cac: $67
	ld   [hl], a                                     ; $7cad: $77
	adc  c                                           ; $7cae: $89
	adc  d                                           ; $7caf: $8a
	sbc  c                                           ; $7cb0: $99
	xor  c                                           ; $7cb1: $a9
	sbc  c                                           ; $7cb2: $99
	ld   [hl], a                                     ; $7cb3: $77
	ld   [hl], a                                     ; $7cb4: $77
	ld   h, a                                        ; $7cb5: $67
	ld   [hl], a                                     ; $7cb6: $77
	adc  b                                           ; $7cb7: $88
	adc  d                                           ; $7cb8: $8a
	sbc  c                                           ; $7cb9: $99
	sbc  c                                           ; $7cba: $99
	sbc  b                                           ; $7cbb: $98
	sub  a                                           ; $7cbc: $97
	ld   [hl], a                                     ; $7cbd: $77
	ld   h, a                                        ; $7cbe: $67
	ld   [hl], a                                     ; $7cbf: $77
	adc  b                                           ; $7cc0: $88
	adc  c                                           ; $7cc1: $89
	xor  b                                           ; $7cc2: $a8
	sbc  d                                           ; $7cc3: $9a
	sbc  b                                           ; $7cc4: $98
	adc  b                                           ; $7cc5: $88
	ld   a, b                                        ; $7cc6: $78
	ld   [hl], a                                     ; $7cc7: $77
	add  a                                           ; $7cc8: $87
	adc  c                                           ; $7cc9: $89
	adc  c                                           ; $7cca: $89
	adc  b                                           ; $7ccb: $88
	sbc  c                                           ; $7ccc: $99
	sbc  c                                           ; $7ccd: $99
	adc  b                                           ; $7cce: $88
	adc  b                                           ; $7ccf: $88
	ld   [hl], a                                     ; $7cd0: $77
	add  a                                           ; $7cd1: $87
	ld   a, b                                        ; $7cd2: $78
	adc  b                                           ; $7cd3: $88
	sbc  b                                           ; $7cd4: $98
	adc  b                                           ; $7cd5: $88
	sbc  b                                           ; $7cd6: $98
	sbc  b                                           ; $7cd7: $98
	adc  b                                           ; $7cd8: $88
	adc  b                                           ; $7cd9: $88
	adc  b                                           ; $7cda: $88
	add  a                                           ; $7cdb: $87
	adc  b                                           ; $7cdc: $88
	adc  c                                           ; $7cdd: $89
	adc  c                                           ; $7cde: $89
	sbc  b                                           ; $7cdf: $98
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
	sbc  b                                           ; $7df3: $98
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
	ld   a, b                                        ; $7dff: $78
	adc  b                                           ; $7e00: $88
	adc  b                                           ; $7e01: $88
	adc  b                                           ; $7e02: $88
	adc  b                                           ; $7e03: $88
	adc  b                                           ; $7e04: $88
	add  a                                           ; $7e05: $87
	adc  b                                           ; $7e06: $88
	sub  a                                           ; $7e07: $97
	adc  b                                           ; $7e08: $88
	adc  c                                           ; $7e09: $89
	ld   a, b                                        ; $7e0a: $78
	add  a                                           ; $7e0b: $87
	adc  c                                           ; $7e0c: $89
	adc  b                                           ; $7e0d: $88
	add  a                                           ; $7e0e: $87
	adc  b                                           ; $7e0f: $88
	adc  b                                           ; $7e10: $88
	adc  b                                           ; $7e11: $88
	adc  c                                           ; $7e12: $89
	sub  a                                           ; $7e13: $97
	sub  a                                           ; $7e14: $97
	adc  b                                           ; $7e15: $88
	ld   a, b                                        ; $7e16: $78
	adc  b                                           ; $7e17: $88
	ld   a, c                                        ; $7e18: $79
	add  a                                           ; $7e19: $87
	sbc  b                                           ; $7e1a: $98
	adc  b                                           ; $7e1b: $88
	adc  b                                           ; $7e1c: $88
	adc  b                                           ; $7e1d: $88
	adc  b                                           ; $7e1e: $88
	adc  b                                           ; $7e1f: $88
	adc  b                                           ; $7e20: $88
	adc  b                                           ; $7e21: $88
	adc  b                                           ; $7e22: $88
	ld   a, b                                        ; $7e23: $78
	adc  b                                           ; $7e24: $88
	adc  b                                           ; $7e25: $88
	sub  a                                           ; $7e26: $97
	adc  b                                           ; $7e27: $88
	ld   a, b                                        ; $7e28: $78
	sbc  b                                           ; $7e29: $98
	adc  b                                           ; $7e2a: $88
	adc  b                                           ; $7e2b: $88
	add  a                                           ; $7e2c: $87
	ld   a, b                                        ; $7e2d: $78
	ld   a, b                                        ; $7e2e: $78
	ld   a, b                                        ; $7e2f: $78
	adc  b                                           ; $7e30: $88
	add  a                                           ; $7e31: $87
	sbc  b                                           ; $7e32: $98
	sbc  b                                           ; $7e33: $98
	adc  b                                           ; $7e34: $88
	adc  b                                           ; $7e35: $88
	sbc  b                                           ; $7e36: $98
	sub  a                                           ; $7e37: $97
	adc  b                                           ; $7e38: $88
	ld   a, b                                        ; $7e39: $78
	add  a                                           ; $7e3a: $87
	ld   a, b                                        ; $7e3b: $78
	add  a                                           ; $7e3c: $87
	adc  b                                           ; $7e3d: $88
	adc  c                                           ; $7e3e: $89
	sbc  b                                           ; $7e3f: $98
	sbc  b                                           ; $7e40: $98
	sbc  b                                           ; $7e41: $98
	ld   a, b                                        ; $7e42: $78
	ld   [hl], a                                     ; $7e43: $77
	ld   [hl], a                                     ; $7e44: $77
	ld   [hl], a                                     ; $7e45: $77
	add  a                                           ; $7e46: $87
	adc  c                                           ; $7e47: $89
	sbc  c                                           ; $7e48: $99
	xor  b                                           ; $7e49: $a8
	adc  b                                           ; $7e4a: $88
	adc  c                                           ; $7e4b: $89
	add  [hl]                                        ; $7e4c: $86
	ld   [hl], a                                     ; $7e4d: $77
	ld   h, a                                        ; $7e4e: $67
	ld   [hl], a                                     ; $7e4f: $77
	adc  c                                           ; $7e50: $89
	sbc  d                                           ; $7e51: $9a
	xor  c                                           ; $7e52: $a9
	xor  c                                           ; $7e53: $a9
	ld   a, c                                        ; $7e54: $79
	add  [hl]                                        ; $7e55: $86
	ld   [hl], a                                     ; $7e56: $77
	ld   b, a                                        ; $7e57: $47
	add  [hl]                                        ; $7e58: $86
	adc  d                                           ; $7e59: $8a
	adc  d                                           ; $7e5a: $8a
	cp   d                                           ; $7e5b: $ba
	xor  d                                           ; $7e5c: $aa
	ld   a, b                                        ; $7e5d: $78
	and  [hl]                                        ; $7e5e: $a6
	ld   e, b                                        ; $7e5f: $58
	ld   b, l                                        ; $7e60: $45
	halt                                             ; $7e61: $76
	ld   a, c                                        ; $7e62: $79
	sbc  c                                           ; $7e63: $99
	res  5, e                                        ; $7e64: $cb $ab
	sub  a                                           ; $7e66: $97
	ld   a, c                                        ; $7e67: $79
	ld   b, l                                        ; $7e68: $45
	add  e                                           ; $7e69: $83
	ld   h, a                                        ; $7e6a: $67
	ld   h, a                                        ; $7e6b: $67
	cp   c                                           ; $7e6c: $b9
	sbc  l                                           ; $7e6d: $9d
	xor  d                                           ; $7e6e: $aa
	cp   b                                           ; $7e6f: $b8
	ld   h, a                                        ; $7e70: $67
	sub  h                                           ; $7e71: $94
	ld   d, a                                        ; $7e72: $57
	dec  h                                           ; $7e73: $25
	ld   [hl], a                                     ; $7e74: $77
	ld   a, d                                        ; $7e75: $7a
	ret  z                                           ; $7e76: $c8

	db   $db                                         ; $7e77: $db
	cp   h                                           ; $7e78: $bc
	sub  a                                           ; $7e79: $97
	ld   e, c                                        ; $7e7a: $59
	ld   d, e                                        ; $7e7b: $53
	ld   h, h                                        ; $7e7c: $64
	daa                                              ; $7e7d: $27
	ld   l, b                                        ; $7e7e: $68
	adc  e                                           ; $7e7f: $8b
	xor  e                                           ; $7e80: $ab
	ld   [$96ca], a                                  ; $7e81: $ea $ca $96
	ld   e, b                                        ; $7e84: $58
	ld   b, e                                        ; $7e85: $43
	ld   h, e                                        ; $7e86: $63
	daa                                              ; $7e87: $27
	ld   l, b                                        ; $7e88: $68
	sbc  [hl]                                        ; $7e89: $9e
	xor  h                                           ; $7e8a: $ac
	ld   a, [$85e9]                                  ; $7e8b: $fa $e9 $85
	ld   d, a                                        ; $7e8e: $57
	inc  sp                                          ; $7e8f: $33
	ld   d, d                                        ; $7e90: $52
	ld   b, a                                        ; $7e91: $47
	adc  b                                           ; $7e92: $88
	sbc  a                                           ; $7e93: $9f
	sbc  [hl]                                        ; $7e94: $9e
	ld   [$94d9], a                                  ; $7e95: $ea $d9 $94
	ld   h, [hl]                                     ; $7e98: $66
	inc  h                                           ; $7e99: $24
	ld   d, c                                        ; $7e9a: $51
	ld   d, a                                        ; $7e9b: $57
	sbc  b                                           ; $7e9c: $98
	cp   [hl]                                        ; $7e9d: $be
	adc  a                                           ; $7e9e: $8f
	set  3, b                                        ; $7e9f: $cb $d8
	ld   [hl], h                                     ; $7ea1: $74
	ld   [hl], h                                     ; $7ea2: $74
	dec  h                                           ; $7ea3: $25
	ld   sp, $9867                                   ; $7ea4: $31 $67 $98
	db   $dd                                         ; $7ea7: $dd
	xor  a                                           ; $7ea8: $af
	xor  l                                           ; $7ea9: $ad
	ret                                              ; $7eaa: $c9


	ld   h, l                                        ; $7eab: $65
	ld   [hl], d                                     ; $7eac: $72
	dec  h                                           ; $7ead: $25
	ld   [de], a                                     ; $7eae: $12
	ld   [hl], a                                     ; $7eaf: $77
	xor  c                                           ; $7eb0: $a9
	ld   a, [$aedf]                                  ; $7eb1: $fa $df $ae
	sbc  b                                           ; $7eb4: $98
	ld   b, [hl]                                     ; $7eb5: $46
	ld   h, c                                        ; $7eb6: $61
	ld   b, h                                        ; $7eb7: $44
	dec  d                                           ; $7eb8: $15
	ld   l, b                                        ; $7eb9: $68
	sbc  h                                           ; $7eba: $9c
	ld   a, [$ccfc]                                  ; $7ebb: $fa $fc $cc
	sub  a                                           ; $7ebe: $97
	ld   b, a                                        ; $7ebf: $47
	ld   b, c                                        ; $7ec0: $41
	ld   d, e                                        ; $7ec1: $53
	ld   d, $78                                      ; $7ec2: $16 $78
	sbc  l                                           ; $7ec4: $9d
	set  7, d                                        ; $7ec5: $cb $fa
	db   $db                                         ; $7ec7: $db
	add  [hl]                                        ; $7ec8: $86
	ld   d, [hl]                                     ; $7ec9: $56
	ld   hl, $3752                                   ; $7eca: $21 $52 $37
	ld   a, c                                        ; $7ecd: $79
	xor  a                                           ; $7ece: $af
	cp   [hl]                                        ; $7ecf: $be
	ld   a, [$85da]                                  ; $7ed0: $fa $da $85
	ld   d, [hl]                                     ; $7ed3: $56
	inc  de                                          ; $7ed4: $13
	ld   d, c                                        ; $7ed5: $51
	ld   b, a                                        ; $7ed6: $47
	adc  c                                           ; $7ed7: $89
	adc  $af                                         ; $7ed8: $ce $af
	ld   [$75d9], a                                  ; $7eda: $ea $d9 $75
	ld   [hl], e                                     ; $7edd: $73
	inc  d                                           ; $7ede: $14
	ld   sp, $8a67                                   ; $7edf: $31 $67 $8a
	db   $dd                                         ; $7ee2: $dd
	cp   a                                           ; $7ee3: $bf
	call z, Call_0e4_65c9                            ; $7ee4: $cc $c9 $65
	ld   [hl], d                                     ; $7ee7: $72
	dec  d                                           ; $7ee8: $15
	inc  hl                                          ; $7ee9: $23
	ld   [hl], a                                     ; $7eea: $77
	adc  d                                           ; $7eeb: $8a
	ld   a, [$acdf]                                  ; $7eec: $fa $df $ac
	cp   b                                           ; $7eef: $b8
	ld   d, [hl]                                     ; $7ef0: $56
	ld   h, c                                        ; $7ef1: $61
	dec  [hl]                                        ; $7ef2: $35
	dec  d                                           ; $7ef3: $15
	ld   a, b                                        ; $7ef4: $78
	adc  h                                           ; $7ef5: $8c
	db   $eb                                         ; $7ef6: $eb
	db   $fd                                         ; $7ef7: $fd
	xor  h                                           ; $7ef8: $ac
	sub  a                                           ; $7ef9: $97
	ld   d, [hl]                                     ; $7efa: $56
	ld   b, d                                        ; $7efb: $42
	ld   d, e                                        ; $7efc: $53
	ld   h, $78                                      ; $7efd: $26 $78
	sbc  l                                           ; $7eff: $9d
	cp   e                                           ; $7f00: $bb
	ei                                               ; $7f01: $fb
	call z, Call_0e4_6796                            ; $7f02: $cc $96 $67
	ld   [hl-], a                                    ; $7f05: $32
	ld   d, d                                        ; $7f06: $52
	scf                                              ; $7f07: $37
	ld   a, b                                        ; $7f08: $78
	xor  l                                           ; $7f09: $ad
	xor  l                                           ; $7f0a: $ad
	ld   a, [$86ba]                                  ; $7f0b: $fa $ba $86
	ld   [hl], l                                     ; $7f0e: $75
	inc  h                                           ; $7f0f: $24
	ld   d, d                                        ; $7f10: $52
	ld   d, a                                        ; $7f11: $57
	ld   a, b                                        ; $7f12: $78
	cp   l                                           ; $7f13: $bd
	cp   a                                           ; $7f14: $bf
	jp   c, Jump_0e4_76b9                            ; $7f15: $da $b9 $76

	ld   [hl], l                                     ; $7f18: $75
	dec  h                                           ; $7f19: $25
	ld   b, d                                        ; $7f1a: $42
	ld   h, a                                        ; $7f1b: $67
	ld   a, c                                        ; $7f1c: $79
	res  7, a                                        ; $7f1d: $cb $bf
	cp   e                                           ; $7f1f: $bb
	ret  z                                           ; $7f20: $c8

	ld   h, a                                        ; $7f21: $67
	ld   [hl], h                                     ; $7f22: $74
	ld   [hl], $34                                   ; $7f23: $36 $34
	ld   [hl], a                                     ; $7f25: $77
	ld   a, d                                        ; $7f26: $7a
	jp   z, $abcd                                    ; $7f27: $ca $cd $ab

	cp   b                                           ; $7f2a: $b8
	ld   [hl], a                                     ; $7f2b: $77
	ld   h, h                                        ; $7f2c: $64
	ld   b, l                                        ; $7f2d: $45
	dec  [hl]                                        ; $7f2e: $35
	ld   [hl], a                                     ; $7f2f: $77
	ld   a, e                                        ; $7f30: $7b
	cp   c                                           ; $7f31: $b9
	call c, $a79b                                    ; $7f32: $dc $9b $a7
	ld   a, b                                        ; $7f35: $78
	ld   h, h                                        ; $7f36: $64
	ld   d, l                                        ; $7f37: $55
	ld   [hl], $77                                   ; $7f38: $36 $77
	adc  d                                           ; $7f3a: $8a
	xor  c                                           ; $7f3b: $a9
	res  3, d                                        ; $7f3c: $cb $9a
	sbc  b                                           ; $7f3e: $98
	add  a                                           ; $7f3f: $87
	ld   h, l                                        ; $7f40: $65
	ld   h, [hl]                                     ; $7f41: $66
	ld   b, [hl]                                     ; $7f42: $46
	ld   [hl], a                                     ; $7f43: $77
	adc  d                                           ; $7f44: $8a
	sbc  d                                           ; $7f45: $9a
	cp   e                                           ; $7f46: $bb
	xor  e                                           ; $7f47: $ab
	sbc  b                                           ; $7f48: $98
	sbc  b                                           ; $7f49: $98
	halt                                             ; $7f4a: $76
	ld   h, [hl]                                     ; $7f4b: $66
	ld   d, [hl]                                     ; $7f4c: $56
	ld   [hl], a                                     ; $7f4d: $77
	adc  d                                           ; $7f4e: $8a
	sbc  c                                           ; $7f4f: $99
	cp   d                                           ; $7f50: $ba
	sbc  e                                           ; $7f51: $9b
	sbc  b                                           ; $7f52: $98
	sbc  b                                           ; $7f53: $98
	halt                                             ; $7f54: $76
	halt                                             ; $7f55: $76
	ld   d, a                                        ; $7f56: $57
	ld   [hl], a                                     ; $7f57: $77
	adc  d                                           ; $7f58: $8a
	sbc  c                                           ; $7f59: $99
	xor  c                                           ; $7f5a: $a9
	sbc  d                                           ; $7f5b: $9a
	sbc  b                                           ; $7f5c: $98
	sbc  b                                           ; $7f5d: $98
	halt                                             ; $7f5e: $76
	halt                                             ; $7f5f: $76
	ld   h, a                                        ; $7f60: $67
	ld   [hl], a                                     ; $7f61: $77
	adc  c                                           ; $7f62: $89
	adc  c                                           ; $7f63: $89
	xor  d                                           ; $7f64: $aa
	xor  c                                           ; $7f65: $a9
	adc  c                                           ; $7f66: $89
	adc  b                                           ; $7f67: $88
	ld   [hl], a                                     ; $7f68: $77
	halt                                             ; $7f69: $76
	ld   h, a                                        ; $7f6a: $67
	ld   [hl], a                                     ; $7f6b: $77
	sbc  b                                           ; $7f6c: $98
	sbc  d                                           ; $7f6d: $9a
	sbc  c                                           ; $7f6e: $99
	xor  d                                           ; $7f6f: $aa
	adc  c                                           ; $7f70: $89
	adc  b                                           ; $7f71: $88
	ld   [hl], a                                     ; $7f72: $77
	halt                                             ; $7f73: $76
	ld   h, a                                        ; $7f74: $67
	ld   [hl], a                                     ; $7f75: $77
	adc  c                                           ; $7f76: $89
	sbc  c                                           ; $7f77: $99
	xor  c                                           ; $7f78: $a9
	sbc  c                                           ; $7f79: $99
	sbc  c                                           ; $7f7a: $99
	sub  a                                           ; $7f7b: $97
	ld   [hl], a                                     ; $7f7c: $77
	halt                                             ; $7f7d: $76
	ld   [hl], a                                     ; $7f7e: $77
	ld   [hl], a                                     ; $7f7f: $77
	adc  b                                           ; $7f80: $88
	adc  c                                           ; $7f81: $89
	sbc  c                                           ; $7f82: $99
	sbc  c                                           ; $7f83: $99
	adc  c                                           ; $7f84: $89
	sbc  b                                           ; $7f85: $98
	ld   [hl], a                                     ; $7f86: $77
	ld   [hl], a                                     ; $7f87: $77
	ld   [hl], a                                     ; $7f88: $77
	ld   [hl], a                                     ; $7f89: $77
	adc  b                                           ; $7f8a: $88
	sbc  b                                           ; $7f8b: $98
	adc  c                                           ; $7f8c: $89
	sbc  b                                           ; $7f8d: $98
	sbc  c                                           ; $7f8e: $99
	adc  b                                           ; $7f8f: $88
	ld   [hl], a                                     ; $7f90: $77
	ld   [hl], a                                     ; $7f91: $77
	ld   [hl], a                                     ; $7f92: $77
	ld   a, b                                        ; $7f93: $78
	adc  b                                           ; $7f94: $88
	sbc  b                                           ; $7f95: $98
	adc  b                                           ; $7f96: $88
	sbc  b                                           ; $7f97: $98
	sbc  b                                           ; $7f98: $98
	adc  b                                           ; $7f99: $88
	ld   [hl], a                                     ; $7f9a: $77
	ld   [hl], a                                     ; $7f9b: $77
	ld   [hl], a                                     ; $7f9c: $77
	ld   a, b                                        ; $7f9d: $78
	adc  b                                           ; $7f9e: $88
	sbc  c                                           ; $7f9f: $99
	sbc  c                                           ; $7fa0: $99
	sbc  c                                           ; $7fa1: $99
	sbc  c                                           ; $7fa2: $99
	adc  b                                           ; $7fa3: $88
	ld   [hl], a                                     ; $7fa4: $77
	ld   [hl], a                                     ; $7fa5: $77
	ld   [hl], a                                     ; $7fa6: $77
	adc  b                                           ; $7fa7: $88
	adc  b                                           ; $7fa8: $88
	adc  b                                           ; $7fa9: $88
	sbc  c                                           ; $7faa: $99
	sbc  c                                           ; $7fab: $99
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
	sbc  b                                           ; $7fbe: $98
	sbc  c                                           ; $7fbf: $99
	add  a                                           ; $7fc0: $87
	ld   [hl], a                                     ; $7fc1: $77
	ld   [hl], a                                     ; $7fc2: $77
	ld   [hl], a                                     ; $7fc3: $77
	ld   [hl], a                                     ; $7fc4: $77
	adc  c                                           ; $7fc5: $89
	sbc  c                                           ; $7fc6: $99
	sbc  d                                           ; $7fc7: $9a
	sbc  b                                           ; $7fc8: $98
	adc  c                                           ; $7fc9: $89
	ld   [hl], a                                     ; $7fca: $77
	halt                                             ; $7fcb: $76
	ld   h, a                                        ; $7fcc: $67
	ld   h, a                                        ; $7fcd: $67
	ld   a, b                                        ; $7fce: $78
	adc  c                                           ; $7fcf: $89
	xor  d                                           ; $7fd0: $aa
	sbc  c                                           ; $7fd1: $99
	sbc  c                                           ; $7fd2: $99
	sbc  b                                           ; $7fd3: $98
	ld   [hl], a                                     ; $7fd4: $77
	ld   h, [hl]                                     ; $7fd5: $66
	ld   h, [hl]                                     ; $7fd6: $66
	ld   h, a                                        ; $7fd7: $67
	ld   a, b                                        ; $7fd8: $78
	sbc  c                                           ; $7fd9: $99
	xor  d                                           ; $7fda: $aa
	xor  d                                           ; $7fdb: $aa
	sbc  d                                           ; $7fdc: $9a
	add  a                                           ; $7fdd: $87
	halt                                             ; $7fde: $76
	ld   d, [hl]                                     ; $7fdf: $56
	ld   h, l                                        ; $7fe0: $65
	ld   h, a                                        ; $7fe1: $67
	adc  c                                           ; $7fe2: $89
	xor  d                                           ; $7fe3: $aa
	xor  e                                           ; $7fe4: $ab
	xor  d                                           ; $7fe5: $aa
	sbc  c                                           ; $7fe6: $99
	ld   [hl], a                                     ; $7fe7: $77
	ld   [hl], l                                     ; $7fe8: $75
	ld   d, [hl]                                     ; $7fe9: $56
	ld   d, [hl]                                     ; $7fea: $56
	ld   [hl], a                                     ; $7feb: $77
	sbc  c                                           ; $7fec: $99
	xor  d                                           ; $7fed: $aa
	cp   d                                           ; $7fee: $ba
	sbc  c                                           ; $7fef: $99
	xor  b                                           ; $7ff0: $a8
	ld   [hl], a                                     ; $7ff1: $77
	ld   d, l                                        ; $7ff2: $55
	ld   h, [hl]                                     ; $7ff3: $66
	ld   h, a                                        ; $7ff4: $67
	ld   a, b                                        ; $7ff5: $78
	xor  d                                           ; $7ff6: $aa
	xor  d                                           ; $7ff7: $aa
	cp   c                                           ; $7ff8: $b9
	xor  c                                           ; $7ff9: $a9
	add  a                                           ; $7ffa: $87
	halt                                             ; $7ffb: $76
	ld   d, [hl]                                     ; $7ffc: $56
	ld   h, l                                        ; $7ffd: $65
	ld   a, b                                        ; $7ffe: $78
	adc  c                                           ; $7fff: $89
