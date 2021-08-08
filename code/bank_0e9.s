; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e9", ROMX[$4000], BANK[$e9]

	and  a                                           ; $4000: $a7
	ld   d, l                                        ; $4001: $55
	ld   d, a                                        ; $4002: $57
	sbc  d                                           ; $4003: $9a
	sub  l                                           ; $4004: $95
	ld   de, $5a11                                   ; $4005: $11 $11 $5a
	cp   e                                           ; $4008: $bb
	rst  $38                                         ; $4009: $ff
	jp   z, $9b99                                    ; $400a: $ca $99 $9b

	db   $db                                         ; $400d: $db
	add  l                                           ; $400e: $85
	ld   d, [hl]                                     ; $400f: $56
	ld   l, b                                        ; $4010: $68
	sbc  c                                           ; $4011: $99
	ld   [hl], h                                     ; $4012: $74
	ld   de, $7b13                                   ; $4013: $11 $13 $7b
	db   $ed                                         ; $4016: $ed
	call Call_0e9_69ca                               ; $4017: $cd $ca $69
	cp   l                                           ; $401a: $bd
	cp   b                                           ; $401b: $b8
	ld   [hl], l                                     ; $401c: $75
	ld   h, a                                        ; $401d: $67
	ld   a, c                                        ; $401e: $79
	adc  d                                           ; $401f: $8a
	ld   h, d                                        ; $4020: $62
	ld   de, $ae13                                   ; $4021: $11 $13 $ae
	sbc  $cd                                         ; $4024: $de $cd
	cp   c                                           ; $4026: $b9
	sbc  c                                           ; $4027: $99
	cp   e                                           ; $4028: $bb
	cp   b                                           ; $4029: $b8
	ld   b, h                                        ; $402a: $44
	ld   e, b                                        ; $402b: $58
	sbc  e                                           ; $402c: $9b
	and  a                                           ; $402d: $a7
	ld   b, c                                        ; $402e: $41
	ld   de, $de17                                   ; $402f: $11 $17 $de
	call z, Call_0e9_78da                            ; $4032: $cc $da $78
	xor  e                                           ; $4035: $ab
	call z, $3496                                    ; $4036: $cc $96 $34
	ld   a, c                                        ; $4039: $79
	xor  c                                           ; $403a: $a9
	add  l                                           ; $403b: $85
	ld   hl, $4811                                   ; $403c: $21 $11 $48
	call $cbba                                       ; $403f: $cd $ba $cb
	sbc  d                                           ; $4042: $9a
	xor  h                                           ; $4043: $ac
	cp   c                                           ; $4044: $b9
	add  [hl]                                        ; $4045: $86
	ld   d, l                                        ; $4046: $55
	sbc  d                                           ; $4047: $9a
	xor  b                                           ; $4048: $a8
	ld   [hl], h                                     ; $4049: $74
	ld   [hl+], a                                    ; $404a: $22
	ld   [de], a                                     ; $404b: $12
	ld   e, d                                        ; $404c: $5a
	call z, $b9cb                                    ; $404d: $cc $cb $b9
	sbc  c                                           ; $4050: $99
	cp   h                                           ; $4051: $bc
	cp   d                                           ; $4052: $ba
	ld   [hl], l                                     ; $4053: $75
	ld   b, a                                        ; $4054: $47
	sbc  d                                           ; $4055: $9a
	and  a                                           ; $4056: $a7
	ld   d, e                                        ; $4057: $53
	ld   de, $7c13                                   ; $4058: $11 $13 $7c
	rst  $38                                         ; $405b: $ff
	jp   z, $9c88                                    ; $405c: $ca $88 $9c

	call z, Call_0e9_55a7                            ; $405f: $cc $a7 $55
	ld   h, a                                        ; $4062: $67
	adc  d                                           ; $4063: $8a
	ret                                              ; $4064: $c9


	ld   d, c                                        ; $4065: $51
	ld   de, $9a27                                   ; $4066: $11 $27 $9a
	rst  $28                                         ; $4069: $ef
	jp   c, $bd87                                    ; $406a: $da $87 $bd

	db   $db                                         ; $406d: $db
	halt                                             ; $406e: $76
	ld   d, [hl]                                     ; $406f: $56
	ld   l, c                                        ; $4070: $69
	xor  d                                           ; $4071: $aa
	add  [hl]                                        ; $4072: $86
	ld   b, c                                        ; $4073: $41
	ld   de, $df37                                   ; $4074: $11 $37 $df
	jp   c, $9a88                                    ; $4077: $da $88 $9a

	call z, Call_0e9_76ba                            ; $407a: $cc $ba $76
	ld   b, h                                        ; $407d: $44
	ld   a, e                                        ; $407e: $7b
	call c, $1172                                    ; $407f: $dc $72 $11
	dec  [hl]                                        ; $4082: $35
	ld   a, c                                        ; $4083: $79
	call z, $a8bc                                    ; $4084: $cc $bc $a8
	sbc  e                                           ; $4087: $9b
	xor  $b6                                         ; $4088: $ee $b6
	ld   b, h                                        ; $408a: $44
	ld   l, b                                        ; $408b: $68
	sbc  d                                           ; $408c: $9a
	sbc  c                                           ; $408d: $99
	ld   h, d                                        ; $408e: $62
	ld   de, $9b35                                   ; $408f: $11 $35 $9b
	call c, $98b9                                    ; $4092: $dc $b9 $98
	xor  l                                           ; $4095: $ad
	call c, Call_0e9_5595                            ; $4096: $dc $95 $55
	ld   a, b                                        ; $4099: $78
	xor  c                                           ; $409a: $a9
	add  a                                           ; $409b: $87
	ld   d, d                                        ; $409c: $52
	ld   de, $ab49                                   ; $409d: $11 $49 $ab
	call z, $89b8                                    ; $40a0: $cc $b8 $89
	cp   h                                           ; $40a3: $bc
	jp   z, Jump_0e9_5765                            ; $40a4: $ca $65 $57

	adc  d                                           ; $40a7: $8a
	sub  a                                           ; $40a8: $97
	ld   h, h                                        ; $40a9: $64
	ld   b, d                                        ; $40aa: $42
	ld   de, $dc5a                                   ; $40ab: $11 $5a $dc
	xor  b                                           ; $40ae: $a8
	cp   e                                           ; $40af: $bb
	cp   e                                           ; $40b0: $bb
	cp   e                                           ; $40b1: $bb
	sbc  b                                           ; $40b2: $98
	halt                                             ; $40b3: $76
	ld   h, a                                        ; $40b4: $67
	adc  c                                           ; $40b5: $89
	xor  b                                           ; $40b6: $a8
	ld   d, d                                        ; $40b7: $52
	ld   [de], a                                     ; $40b8: $12
	ld   [hl], $8b                                   ; $40b9: $36 $8b
	call c, Call_0e9_78a9                            ; $40bb: $dc $a9 $78
	adc  $dc                                         ; $40be: $ce $dc
	add  [hl]                                        ; $40c0: $86
	ld   d, [hl]                                     ; $40c1: $56
	ld   a, c                                        ; $40c2: $79
	sbc  c                                           ; $40c3: $99
	sub  l                                           ; $40c4: $95
	ld   hl, $8c12                                   ; $40c5: $21 $12 $8c
	cp   d                                           ; $40c8: $ba
	xor  h                                           ; $40c9: $ac
	xor  d                                           ; $40ca: $aa
	adc  e                                           ; $40cb: $8b
	call $64b7                                       ; $40cc: $cd $b7 $64
	ld   a, c                                        ; $40cf: $79
	xor  d                                           ; $40d0: $aa
	ld   [hl], a                                     ; $40d1: $77
	ld   b, d                                        ; $40d2: $42
	ld   bc, $bd27                                   ; $40d3: $01 $27 $bd
	jp   z, $a9aa                                    ; $40d6: $ca $aa $a9

	cp   e                                           ; $40d9: $bb
	call c, Call_0e9_5785                            ; $40da: $dc $85 $57
	adc  d                                           ; $40dd: $8a
	add  a                                           ; $40de: $87
	halt                                             ; $40df: $76
	ld   sp, $8c12                                   ; $40e0: $31 $12 $8c
	db   $db                                         ; $40e3: $db
	sbc  c                                           ; $40e4: $99
	sbc  e                                           ; $40e5: $9b
	xor  d                                           ; $40e6: $aa
	cp   h                                           ; $40e7: $bc
	cp   b                                           ; $40e8: $b8
	ld   h, l                                        ; $40e9: $65
	ld   a, c                                        ; $40ea: $79
	xor  c                                           ; $40eb: $a9
	ld   [hl], a                                     ; $40ec: $77
	ld   b, d                                        ; $40ed: $42
	ld   de, $cb4a                                   ; $40ee: $11 $4a $cb
	cp   h                                           ; $40f1: $bc
	jp   z, $bd88                                    ; $40f2: $ca $88 $bd

	ld   [$5764], a                                  ; $40f5: $ea $64 $57
	adc  c                                           ; $40f8: $89
	xor  b                                           ; $40f9: $a8
	ld   d, d                                        ; $40fa: $52
	ld   de, $ad25                                   ; $40fb: $11 $25 $ad
	db   $eb                                         ; $40fe: $eb
	xor  c                                           ; $40ff: $a9
	sbc  d                                           ; $4100: $9a
	call $85cb                                       ; $4101: $cd $cb $85
	ld   b, l                                        ; $4104: $45
	adc  d                                           ; $4105: $8a
	xor  b                                           ; $4106: $a8
	ld   h, h                                        ; $4107: $64
	ld   de, $8d13                                   ; $4108: $11 $13 $8d
	db   $fd                                         ; $410b: $fd
	cp   c                                           ; $410c: $b9
	sbc  c                                           ; $410d: $99
	cp   l                                           ; $410e: $bd
	res  2, [hl]                                     ; $410f: $cb $96
	ld   d, [hl]                                     ; $4111: $56
	adc  c                                           ; $4112: $89
	sub  a                                           ; $4113: $97
	ld   [hl], h                                     ; $4114: $74
	ld   hl, $7d11                                   ; $4115: $21 $11 $7d
	db   $ed                                         ; $4118: $ed
	xor  b                                           ; $4119: $a8
	adc  d                                           ; $411a: $8a
	cp   l                                           ; $411b: $bd
	res  2, a                                        ; $411c: $cb $97
	ld   d, l                                        ; $411e: $55
	ld   a, c                                        ; $411f: $79
	xor  d                                           ; $4120: $aa
	ld   [hl], l                                     ; $4121: $75
	ld   hl, $6c11                                   ; $4122: $21 $11 $6c
	db   $dd                                         ; $4125: $dd
	xor  d                                           ; $4126: $aa
	sbc  e                                           ; $4127: $9b
	cp   h                                           ; $4128: $bc
	call c, Call_0e9_54b7                            ; $4129: $dc $b7 $54
	ld   l, c                                        ; $412c: $69
	adc  b                                           ; $412d: $88
	ld   h, [hl]                                     ; $412e: $66
	ld   hl, $9d12                                   ; $412f: $21 $12 $9d
	ld   a, [$8d87]                                  ; $4132: $fa $87 $8d
	db   $dd                                         ; $4135: $dd
	res  4, a                                        ; $4136: $cb $a7
	ld   d, l                                        ; $4138: $55
	adc  b                                           ; $4139: $88
	sub  a                                           ; $413a: $97
	ld   b, d                                        ; $413b: $42
	ld   de, $9f13                                   ; $413c: $11 $13 $9f
	db   $fc                                         ; $413f: $fc
	ld   [hl], l                                     ; $4140: $75
	adc  h                                           ; $4141: $8c
	db   $ed                                         ; $4142: $ed
	jp   z, Jump_0e9_5697                            ; $4143: $ca $97 $56

	ld   a, d                                        ; $4146: $7a
	xor  b                                           ; $4147: $a8
	ld   b, c                                        ; $4148: $41
	ld   de, $df16                                   ; $4149: $11 $16 $df
	jp   c, $bb78                                    ; $414c: $da $78 $bb

	db   $dd                                         ; $414f: $dd
	res  2, [hl]                                     ; $4150: $cb $96
	ld   d, l                                        ; $4152: $55
	ld   a, c                                        ; $4153: $79
	sub  a                                           ; $4154: $97
	ld   b, c                                        ; $4155: $41
	ld   de, $ff3b                                   ; $4156: $11 $3b $ff
	ret  z                                           ; $4159: $c8

	ld   l, b                                        ; $415a: $68
	cp   e                                           ; $415b: $bb
	call c, Call_0e9_65ca                            ; $415c: $dc $ca $65
	ld   d, a                                        ; $415f: $57
	adc  d                                           ; $4160: $8a
	ld   [hl], l                                     ; $4161: $75
	ld   hl, $9f11                                   ; $4162: $21 $11 $9f
	db   $fd                                         ; $4165: $fd
	sub  a                                           ; $4166: $97
	ld   a, d                                        ; $4167: $7a
	cp   h                                           ; $4168: $bc
	db   $dd                                         ; $4169: $dd
	or   a                                           ; $416a: $b7
	ld   d, l                                        ; $416b: $55
	ld   a, b                                        ; $416c: $78
	sub  a                                           ; $416d: $97
	ld   d, d                                        ; $416e: $52
	ld   de, $ff18                                   ; $416f: $11 $18 $ff
	ret  c                                           ; $4172: $d8

	ld   h, a                                        ; $4173: $67
	xor  h                                           ; $4174: $ac
	call c, $85cb                                    ; $4175: $dc $cb $85
	ld   b, [hl]                                     ; $4178: $46
	adc  e                                           ; $4179: $8b
	and  a                                           ; $417a: $a7
	ld   b, c                                        ; $417b: $41
	ld   de, $ff4d                                   ; $417c: $11 $4d $ff
	and  a                                           ; $417f: $a7
	ld   l, d                                        ; $4180: $6a
	call z, $cadb                                    ; $4181: $cc $db $ca
	ld   h, h                                        ; $4184: $64
	ld   b, [hl]                                     ; $4185: $46
	sbc  c                                           ; $4186: $99
	ld   [hl], h                                     ; $4187: $74
	ld   de, $df15                                   ; $4188: $11 $15 $df
	ld   a, [$9c66]                                  ; $418b: $fa $66 $9c
	db   $dd                                         ; $418e: $dd
	cp   e                                           ; $418f: $bb
	and  [hl]                                        ; $4190: $a6
	ld   d, l                                        ; $4191: $55
	ld   a, c                                        ; $4192: $79
	sbc  b                                           ; $4193: $98
	ld   d, c                                        ; $4194: $51
	ld   de, $fe4f                                   ; $4195: $11 $4f $fe
	and  [hl]                                        ; $4198: $a6
	ld   a, e                                        ; $4199: $7b
	db   $db                                         ; $419a: $db
	call z, Call_0e9_64b9                            ; $419b: $cc $b9 $64
	ld   d, a                                        ; $419e: $57
	adc  c                                           ; $419f: $89
	ld   [hl], h                                     ; $41a0: $74
	ld   de, $ef17                                   ; $41a1: $11 $17 $ef
	reti                                             ; $41a4: $d9


	ld   [hl], a                                     ; $41a5: $77
	xor  h                                           ; $41a6: $ac
	cp   h                                           ; $41a7: $bc
	bit  6, [hl]                                     ; $41a8: $cb $76
	ld   b, l                                        ; $41aa: $45
	adc  b                                           ; $41ab: $88
	ld   [hl], l                                     ; $41ac: $75
	ld   hl, $bf14                                   ; $41ad: $21 $14 $bf
	ld   a, [$ae67]                                  ; $41b0: $fa $67 $ae
	res  5, d                                        ; $41b3: $cb $aa
	xor  b                                           ; $41b5: $a8
	ld   h, h                                        ; $41b6: $64

Call_0e9_41b7:
	ld   h, a                                        ; $41b7: $67
	add  a                                           ; $41b8: $87
	ld   d, c                                        ; $41b9: $51
	ld   de, $ff6d                                   ; $41ba: $11 $6d $ff
	sub  a                                           ; $41bd: $97
	ld   l, d                                        ; $41be: $6a
	call $a8db                                       ; $41bf: $cd $db $a8
	halt                                             ; $41c2: $76
	ld   d, [hl]                                     ; $41c3: $56
	ld   l, b                                        ; $41c4: $68
	ld   h, e                                        ; $41c5: $63
	ld   de, $ff2b                                   ; $41c6: $11 $2b $ff
	rst  ToBoot                                         ; $41c9: $c7
	ld   a, c                                        ; $41ca: $79
	call z, $cbbc                                    ; $41cb: $cc $bc $cb
	add  l                                           ; $41ce: $85
	inc  h                                           ; $41cf: $24
	ld   l, c                                        ; $41d0: $69
	add  l                                           ; $41d1: $85
	ld   de, $ef17                                   ; $41d2: $11 $17 $ef
	rst  $10                                         ; $41d5: $d7
	ld   l, b                                        ; $41d6: $68
	adc  $bc                                         ; $41d7: $ce $bc
	sbc  d                                           ; $41d9: $9a
	sbc  b                                           ; $41da: $98
	ld   d, l                                        ; $41db: $55
	ld   h, a                                        ; $41dc: $67
	add  l                                           ; $41dd: $85
	ld   de, $df15                                   ; $41de: $11 $15 $df
	ei                                               ; $41e1: $fb
	adc  b                                           ; $41e2: $88
	xor  d                                           ; $41e3: $aa
	xor  e                                           ; $41e4: $ab
	cp   h                                           ; $41e5: $bc
	and  a                                           ; $41e6: $a7
	ld   d, h                                        ; $41e7: $54
	ld   h, a                                        ; $41e8: $67
	sub  a                                           ; $41e9: $97
	ld   sp, $af12                                   ; $41ea: $31 $12 $af
	db   $fc                                         ; $41ed: $fc
	sbc  b                                           ; $41ee: $98
	sbc  d                                           ; $41ef: $9a
	sbc  d                                           ; $41f0: $9a
	cp   e                                           ; $41f1: $bb
	cp   c                                           ; $41f2: $b9
	ld   h, h                                        ; $41f3: $64
	ld   b, l                                        ; $41f4: $45
	ld   a, b                                        ; $41f5: $78
	ld   d, d                                        ; $41f6: $52
	ld   de, $fd7e                                   ; $41f7: $11 $7e $fd
	xor  b                                           ; $41fa: $a8
	xor  e                                           ; $41fb: $ab
	cp   c                                           ; $41fc: $b9
	sbc  d                                           ; $41fd: $9a
	cp   d                                           ; $41fe: $ba
	add  l                                           ; $41ff: $85
	ld   b, l                                        ; $4200: $45
	ld   a, b                                        ; $4201: $78
	ld   d, c                                        ; $4202: $51
	ld   de, $fb8f                                   ; $4203: $11 $8f $fb
	ld   [hl], a                                     ; $4206: $77
	sbc  h                                           ; $4207: $9c
	res  5, c                                        ; $4208: $cb $a9
	xor  d                                           ; $420a: $aa
	ld   [hl], h                                     ; $420b: $74
	ld   d, [hl]                                     ; $420c: $56
	adc  b                                           ; $420d: $88
	ld   d, c                                        ; $420e: $51
	ld   de, $ff7f                                   ; $420f: $11 $7f $ff
	sub  l                                           ; $4212: $95
	ld   l, d                                        ; $4213: $6a
	call c, $a8ba                                    ; $4214: $dc $ba $a8
	ld   h, h                                        ; $4217: $64
	dec  [hl]                                        ; $4218: $35
	adc  d                                           ; $4219: $8a
	ld   [hl], c                                     ; $421a: $71
	ld   de, $ec7e                                   ; $421b: $11 $7e $ec
	adc  e                                           ; $421e: $8b
	cp   h                                           ; $421f: $bc
	xor  c                                           ; $4220: $a9
	xor  e                                           ; $4221: $ab
	ret                                              ; $4222: $c9


	ld   [hl], h                                     ; $4223: $74
	ld   b, l                                        ; $4224: $45
	ld   [hl], a                                     ; $4225: $77
	ld   sp, $df14                                   ; $4226: $31 $14 $df
	ld   hl, sp+$57                                  ; $4229: $f8 $57
	call $9aca                                       ; $422b: $cd $ca $9a
	sub  a                                           ; $422e: $97
	ld   d, h                                        ; $422f: $54
	ld   h, a                                        ; $4230: $67
	sub  a                                           ; $4231: $97
	ld   hl, $df15                                   ; $4232: $21 $15 $df
	reti                                             ; $4235: $d9


	ld   l, b                                        ; $4236: $68
	xor  l                                           ; $4237: $ad
	res  5, e                                        ; $4238: $cb $ab
	sub  a                                           ; $423a: $97
	ld   d, h                                        ; $423b: $54
	ld   d, a                                        ; $423c: $57
	add  l                                           ; $423d: $85
	ld   de, $ff19                                   ; $423e: $11 $19 $ff
	rst  $10                                         ; $4241: $d7
	ld   l, b                                        ; $4242: $68
	db   $dd                                         ; $4243: $dd
	cp   d                                           ; $4244: $ba
	xor  d                                           ; $4245: $aa
	sub  [hl]                                        ; $4246: $96
	ld   b, [hl]                                     ; $4247: $46
	ld   a, b                                        ; $4248: $78
	ld   [hl], e                                     ; $4249: $73
	ld   de, $ff3c                                   ; $424a: $11 $3c $ff
	sub  [hl]                                        ; $424d: $96
	ld   a, e                                        ; $424e: $7b
	call z, $bbaa                                    ; $424f: $cc $aa $bb
	add  l                                           ; $4252: $85
	dec  [hl]                                        ; $4253: $35
	ld   a, b                                        ; $4254: $78
	ld   h, c                                        ; $4255: $61
	ld   de, $fb7f                                   ; $4256: $11 $7f $fb
	ld   h, l                                        ; $4259: $65
	sbc  l                                           ; $425a: $9d
	db   $db                                         ; $425b: $db
	sbc  d                                           ; $425c: $9a
	xor  d                                           ; $425d: $aa
	ld   [hl], h                                     ; $425e: $74
	ld   d, a                                        ; $425f: $57
	add  a                                           ; $4260: $87
	ld   sp, $cf13                                   ; $4261: $31 $13 $cf
	ld   a, [$ad67]                                  ; $4264: $fa $67 $ad
	res  3, c                                        ; $4267: $cb $99
	and  a                                           ; $4269: $a7
	ld   d, h                                        ; $426a: $54
	ld   h, a                                        ; $426b: $67
	sub  l                                           ; $426c: $95
	ld   de, $fe2c                                   ; $426d: $11 $2c $fe
	add  l                                           ; $4270: $85
	ld   a, l                                        ; $4271: $7d
	db   $fc                                         ; $4272: $fc
	sbc  b                                           ; $4273: $98
	xor  e                                           ; $4274: $ab
	sub  l                                           ; $4275: $95
	ld   b, l                                        ; $4276: $45
	sbc  c                                           ; $4277: $99
	ld   d, c                                        ; $4278: $51
	ld   de, $fabf                                   ; $4279: $11 $bf $fa
	ld   d, l                                        ; $427c: $55
	xor  a                                           ; $427d: $af
	db   $db                                         ; $427e: $db
	adc  c                                           ; $427f: $89
	sbc  c                                           ; $4280: $99
	ld   h, l                                        ; $4281: $65
	ld   l, b                                        ; $4282: $68
	sub  a                                           ; $4283: $97
	ld   bc, $ff19                                   ; $4284: $01 $19 $ff
	push bc                                          ; $4287: $c5
	ld   c, b                                        ; $4288: $48
	db   $dd                                         ; $4289: $dd
	res  5, d                                        ; $428a: $cb $aa
	add  h                                           ; $428c: $84
	dec  [hl]                                        ; $428d: $35
	adc  d                                           ; $428e: $8a
	ld   [hl], c                                     ; $428f: $71
	ld   de, $f8af                                   ; $4290: $11 $af $f8
	ld   b, [hl]                                     ; $4293: $46
	cp   [hl]                                        ; $4294: $be
	ret                                              ; $4295: $c9


	ld   a, d                                        ; $4296: $7a
	bit  4, e                                        ; $4297: $cb $63
	ld   e, b                                        ; $4299: $58
	sub  [hl]                                        ; $429a: $96
	ld   de, $ff1a                                   ; $429b: $11 $1a $ff
	sub  e                                           ; $429e: $93
	ld   c, c                                        ; $429f: $49
	rst  $38                                         ; $42a0: $ff
	cp   c                                           ; $42a1: $b9
	adc  c                                           ; $42a2: $89
	add  l                                           ; $42a3: $85
	ld   d, a                                        ; $42a4: $57
	adc  b                                           ; $42a5: $88
	ld   sp, rAUD1HIGH                                   ; $42a6: $31 $14 $ff
	or   $25                                         ; $42a9: $f6 $25
	rst  JumpTable                                         ; $42ab: $df
	reti                                             ; $42ac: $d9


	ld   a, b                                        ; $42ad: $78
	xor  c                                           ; $42ae: $a9
	ld   d, h                                        ; $42af: $54
	ld   l, d                                        ; $42b0: $6a
	sub  h                                           ; $42b1: $94
	ld   de, $fd5f                                   ; $42b2: $11 $5f $fd
	ld   d, e                                        ; $42b5: $53
	ld   a, h                                        ; $42b6: $7c
	db   $fc                                         ; $42b7: $fc
	sbc  d                                           ; $42b8: $9a
	xor  d                                           ; $42b9: $aa
	ld   h, e                                        ; $42ba: $63
	scf                                              ; $42bb: $37
	sub  [hl]                                        ; $42bc: $96
	ld   de, $ff2c                                   ; $42bd: $11 $2c $ff
	add  e                                           ; $42c0: $83
	ld   e, d                                        ; $42c1: $5a
	db   $fd                                         ; $42c2: $fd
	and  a                                           ; $42c3: $a7
	adc  c                                           ; $42c4: $89
	add  l                                           ; $42c5: $85
	ld   b, a                                        ; $42c6: $47
	sbc  b                                           ; $42c7: $98
	ld   sp, $ff17                                   ; $42c8: $31 $17 $ff
	add  $57                                         ; $42cb: $c6 $57
	call z, $aab9                                    ; $42cd: $cc $b9 $aa
	sub  [hl]                                        ; $42d0: $96
	inc  h                                           ; $42d1: $24
	ld   a, c                                        ; $42d2: $79
	ld   h, c                                        ; $42d3: $61
	inc  d                                           ; $42d4: $14
	rst  $38                                         ; $42d5: $ff
	rst  $30                                         ; $42d6: $f7
	ld   [de], a                                     ; $42d7: $12
	xor  a                                           ; $42d8: $af
	db   $fc                                         ; $42d9: $fc
	ld   [hl], a                                     ; $42da: $77
	ld   [hl], a                                     ; $42db: $77
	ld   b, h                                        ; $42dc: $44
	ld   l, c                                        ; $42dd: $69
	ld   [hl], d                                     ; $42de: $72
	ld   [de], a                                     ; $42df: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42e0: $cf
	ld   sp, hl                                      ; $42e1: $f9
	ld   b, l                                        ; $42e2: $45
	cp   a                                           ; $42e3: $bf
	ret                                              ; $42e4: $c9


	ld   l, b                                        ; $42e5: $68
	sbc  c                                           ; $42e6: $99
	ld   d, e                                        ; $42e7: $53
	ld   d, a                                        ; $42e8: $57
	ld   h, c                                        ; $42e9: $61
	dec  d                                           ; $42ea: $15
	rst  $28                                         ; $42eb: $ef
	or   $36                                         ; $42ec: $f6 $36
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42ee: $cf
	cp   b                                           ; $42ef: $b8
	ld   l, c                                        ; $42f0: $69
	and  a                                           ; $42f1: $a7
	inc  sp                                          ; $42f2: $33
	ld   l, c                                        ; $42f3: $69
	ld   [hl], d                                     ; $42f4: $72
	inc  d                                           ; $42f5: $14
	rst  $28                                         ; $42f6: $ef
	rst  $30                                         ; $42f7: $f7
	dec  h                                           ; $42f8: $25
	cp   a                                           ; $42f9: $bf
	ret                                              ; $42fa: $c9


	ld   a, b                                        ; $42fb: $78
	and  a                                           ; $42fc: $a7
	ld   [hl-], a                                    ; $42fd: $32
	ld   e, b                                        ; $42fe: $58
	ld   h, c                                        ; $42ff: $61
	rla                                              ; $4300: $17
	rst  $38                                         ; $4301: $ff
	db   $e4                                         ; $4302: $e4
	dec  d                                           ; $4303: $15
	rst  JumpTable                                         ; $4304: $df
	add  sp, $67                                     ; $4305: $e8 $67
	halt                                             ; $4307: $76
	inc  [hl]                                        ; $4308: $34
	ld   a, c                                        ; $4309: $79
	ld   b, c                                        ; $430a: $41
	dec  de                                          ; $430b: $1b
	rst  $38                                         ; $430c: $ff
	or   e                                           ; $430d: $b3
	jr   z, @+$01                                    ; $430e: $28 $ff

	or   [hl]                                        ; $4310: $b6
	ld   l, b                                        ; $4311: $68
	ld   [hl], h                                     ; $4312: $74
	inc  h                                           ; $4313: $24
	halt                                             ; $4314: $76
	ld   hl, $fe6f                                   ; $4315: $21 $6f $fe
	ld   d, c                                        ; $4318: $51
	ld   e, [hl]                                     ; $4319: $5e
	db   $fd                                         ; $431a: $fd
	ld   [hl], h                                     ; $431b: $74
	ld   l, c                                        ; $431c: $69
	ld   [hl], h                                     ; $431d: $74
	dec  [hl]                                        ; $431e: $35
	ld   h, e                                        ; $431f: $63
	inc  de                                          ; $4320: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4321: $cf
	ld   sp, hl                                      ; $4322: $f9
	ld   [hl+], a                                    ; $4323: $22
	sbc  a                                           ; $4324: $9f
	ei                                               ; $4325: $fb
	ld   h, [hl]                                     ; $4326: $66
	ld   [hl], a                                     ; $4327: $77
	ld   b, e                                        ; $4328: $43
	ld   b, [hl]                                     ; $4329: $46
	ld   b, c                                        ; $432a: $41
	dec  sp                                          ; $432b: $3b
	rst  $38                                         ; $432c: $ff
	jp   $ff17                                       ; $432d: $c3 $17 $ff


	sub  $56                                         ; $4330: $d6 $56
	ld   h, l                                        ; $4332: $65
	dec  [hl]                                        ; $4333: $35
	ld   h, l                                        ; $4334: $65
	inc  hl                                          ; $4335: $23
	adc  a                                           ; $4336: $8f
	db   $fd                                         ; $4337: $fd
	ld   d, c                                        ; $4338: $51
	ld   l, l                                        ; $4339: $6d
	db   $fd                                         ; $433a: $fd
	add  l                                           ; $433b: $85
	ld   h, a                                        ; $433c: $67
	ld   h, h                                        ; $433d: $64
	dec  [hl]                                        ; $433e: $35
	ld   b, d                                        ; $433f: $42
	ld   a, [hl-]                                    ; $4340: $3a
	rst  $38                                         ; $4341: $ff
	sub  $25                                         ; $4342: $d6 $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4344: $cf
	ld   a, [$6476]                                  ; $4345: $fa $76 $64
	inc  [hl]                                        ; $4348: $34
	ld   d, h                                        ; $4349: $54
	inc  h                                           ; $434a: $24
	xor  a                                           ; $434b: $af
	db   $fc                                         ; $434c: $fc
	ld   b, c                                        ; $434d: $41
	ld   l, [hl]                                     ; $434e: $6e
	cp   $96                                         ; $434f: $fe $96
	ld   d, [hl]                                     ; $4351: $56
	ld   d, h                                        ; $4352: $54
	ld   b, h                                        ; $4353: $44
	ld   hl, $ff5d                                   ; $4354: $21 $5d $ff
	and  d                                           ; $4357: $a2
	ld   d, $ef                                      ; $4358: $16 $ef
	jp   hl                                          ; $435a: $e9


	ld   d, l                                        ; $435b: $55
	ld   d, h                                        ; $435c: $54
	ld   b, l                                        ; $435d: $45
	ld   d, d                                        ; $435e: $52
	daa                                              ; $435f: $27
	rst  $38                                         ; $4360: $ff
	ld   hl, sp+$12                                  ; $4361: $f8 $12
	sbc  a                                           ; $4363: $9f
	db   $fc                                         ; $4364: $fc
	ld   [hl], l                                     ; $4365: $75
	ld   d, h                                        ; $4366: $54
	ld   b, l                                        ; $4367: $45
	ld   d, h                                        ; $4368: $54
	inc  hl                                          ; $4369: $23
	xor  a                                           ; $436a: $af
	cp   $51                                         ; $436b: $fe $51
	ld   c, e                                        ; $436d: $4b
	rst  $38                                         ; $436e: $ff
	sub  [hl]                                        ; $436f: $96
	ld   b, l                                        ; $4370: $45
	ld   b, h                                        ; $4371: $44
	ld   b, e                                        ; $4372: $43
	ld   [de], a                                     ; $4373: $12
	sbc  a                                           ; $4374: $9f
	rst  $38                                         ; $4375: $ff
	add  c                                           ; $4376: $81
	add  hl, de                                      ; $4377: $19
	rst  $38                                         ; $4378: $ff
	ret  z                                           ; $4379: $c8

	ld   b, e                                        ; $437a: $43
	inc  hl                                          ; $437b: $23
	ld   d, [hl]                                     ; $437c: $56
	ld   b, d                                        ; $437d: $42
	ld   l, [hl]                                     ; $437e: $6e
	rst  $38                                         ; $437f: $ff
	and  e                                           ; $4380: $a3
	rla                                              ; $4381: $17
	rst  $28                                         ; $4382: $ef
	add  sp, $54                                     ; $4383: $e8 $54
	ld   b, e                                        ; $4385: $43
	ld   b, h                                        ; $4386: $44
	ld   [hl-], a                                    ; $4387: $32
	ld   l, l                                        ; $4388: $6d
	rst  $38                                         ; $4389: $ff
	or   e                                           ; $438a: $b3
	dec  d                                           ; $438b: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $438c: $cf
	ld   a, [$2252]                                  ; $438d: $fa $52 $22
	ld   d, [hl]                                     ; $4390: $56
	ld   d, d                                        ; $4391: $52
	ld   e, l                                        ; $4392: $5d
	rst  $38                                         ; $4393: $ff
	jp   $cf15                                       ; $4394: $c3 $15 $cf


	ld   sp, hl                                      ; $4397: $f9
	ld   b, c                                        ; $4398: $41
	ld   [hl-], a                                    ; $4399: $32
	ld   d, l                                        ; $439a: $55
	ld   b, d                                        ; $439b: $42
	ld   l, a                                        ; $439c: $6f
	rst  $38                                         ; $439d: $ff
	and  e                                           ; $439e: $a3
	ld   d, $cf                                      ; $439f: $16 $cf
	ld   a, [$2151]                                  ; $43a1: $fa $51 $21
	ld   d, l                                        ; $43a4: $55
	ld   b, e                                        ; $43a5: $43
	sbc  a                                           ; $43a6: $9f
	rst  $38                                         ; $43a7: $ff
	add  c                                           ; $43a8: $81
	jr   @+$01                                       ; $43a9: $18 $ff

	add  sp, $31                                     ; $43ab: $e8 $31
	ld   [de], a                                     ; $43ad: $12
	ld   d, l                                        ; $43ae: $55
	inc  [hl]                                        ; $43af: $34
	cp   a                                           ; $43b0: $bf
	cp   $51                                         ; $43b1: $fe $51
	dec  hl                                          ; $43b3: $2b
	rst  $38                                         ; $43b4: $ff
	push bc                                          ; $43b5: $c5
	ld   de, $6323                                   ; $43b6: $11 $23 $63
	ld   h, $ff                                      ; $43b9: $26 $ff
	ld   sp, hl                                      ; $43bb: $f9
	ld   de, $ff6e                                   ; $43bc: $11 $6e $ff
	sub  h                                           ; $43bf: $94
	ld   de, $5314                                   ; $43c0: $11 $14 $53
	ld   e, h                                        ; $43c3: $5c
	rst  $38                                         ; $43c4: $ff
	push af                                          ; $43c5: $f5
	ld   de, $fdbf                                   ; $43c6: $11 $bf $fd
	ld   h, d                                        ; $43c9: $62
	ld   de, $4415                                   ; $43ca: $11 $15 $44
	sbc  a                                           ; $43cd: $9f
	rst  $38                                         ; $43ce: $ff
	add  c                                           ; $43cf: $81
	rla                                              ; $43d0: $17
	rst  $38                                         ; $43d1: $ff
	ld   hl, sp+$31                                  ; $43d2: $f8 $31
	ld   de, $3734                                   ; $43d4: $11 $34 $37
	rst  $38                                         ; $43d7: $ff
	ei                                               ; $43d8: $fb
	ld   de, $ff3e                                   ; $43d9: $11 $3e $ff
	or   h                                           ; $43dc: $b4
	ld   de, $5313                                   ; $43dd: $11 $13 $53
	ld   e, [hl]                                     ; $43e0: $5e
	rst  $38                                         ; $43e1: $ff
	db   $d3                                         ; $43e2: $d3
	ld   de, $fcbf                                   ; $43e3: $11 $bf $fc
	ld   d, c                                        ; $43e6: $51
	ld   de, $3525                                   ; $43e7: $11 $25 $35
	rst  JumpTable                                         ; $43ea: $df
	cp   $51                                         ; $43eb: $fe $51
	ld   a, [de]                                     ; $43ed: $1a
	rst  $38                                         ; $43ee: $ff
	or   $11                                         ; $43ef: $f6 $11
	ld   de, $4a54                                   ; $43f1: $11 $54 $4a
	rst  $38                                         ; $43f4: $ff
	or   $11                                         ; $43f5: $f6 $11
	sbc  a                                           ; $43f7: $9f
	rst  $38                                         ; $43f8: $ff
	ld   [hl], c                                     ; $43f9: $71
	ld   de, $4425                                   ; $43fa: $11 $25 $44
	xor  a                                           ; $43fd: $af
	rst  $38                                         ; $43fe: $ff
	ld   [hl], c                                     ; $43ff: $71
	rla                                              ; $4400: $17
	rst  $38                                         ; $4401: $ff
	rst  $30                                         ; $4402: $f7
	ld   de, $5412                                   ; $4403: $11 $12 $54
	ld   a, [hl-]                                    ; $4406: $3a
	rst  $38                                         ; $4407: $ff
	or   $11                                         ; $4408: $f6 $11
	sbc  a                                           ; $440a: $9f
	rst  $38                                         ; $440b: $ff
	ld   [hl], c                                     ; $440c: $71
	ld   de, $4414                                   ; $440d: $11 $14 $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4410: $cf
	cp   $41                                         ; $4411: $fe $41
	add  hl, de                                      ; $4413: $19
	rst  $38                                         ; $4414: $ff
	or   $11                                         ; $4415: $f6 $11
	ld   de, $5f43                                   ; $4417: $11 $43 $5f
	rst  $38                                         ; $441a: $ff
	pop  de                                          ; $441b: $d1
	ld   de, $fddf                                   ; $441c: $11 $df $fd
	ld   b, c                                        ; $441f: $41
	ld   de, $4725                                   ; $4420: $11 $25 $47
	rst  $38                                         ; $4423: $ff
	ld   a, [$1f11]                                  ; $4424: $fa $11 $1f
	rst  $38                                         ; $4427: $ff
	or   e                                           ; $4428: $b3
	ld   de, $4313                                   ; $4429: $11 $13 $43
	xor  a                                           ; $442c: $af
	rst  $38                                         ; $442d: $ff
	ld   h, c                                        ; $442e: $61
	rla                                              ; $442f: $17
	rst  $38                                         ; $4430: $ff
	rst  $30                                         ; $4431: $f7
	ld   de, $5312                                   ; $4432: $11 $12 $53
	ld   e, [hl]                                     ; $4435: $5e
	rst  $38                                         ; $4436: $ff
	or   d                                           ; $4437: $b2
	ld   de, $fadf                                   ; $4438: $11 $df $fa
	ld   sp, $2223                                   ; $443b: $31 $23 $22
	ld   a, [de]                                     ; $443e: $1a
	rst  $38                                         ; $443f: $ff
	or   $11                                         ; $4440: $f6 $11
	ld   a, a                                        ; $4442: $7f
	rst  $38                                         ; $4443: $ff
	ld   h, c                                        ; $4444: $61
	ld   [de], a                                     ; $4445: $12
	inc  hl                                          ; $4446: $23
	ld   h, $ff                                      ; $4447: $26 $ff
	db   $fc                                         ; $4449: $fc
	ld   de, $ff1d                                   ; $444a: $11 $1d $ff
	and  e                                           ; $444d: $a3
	ld   de, $3413                                   ; $444e: $11 $13 $34
	rst  $28                                         ; $4451: $ef
	rst  $38                                         ; $4452: $ff
	ld   b, c                                        ; $4453: $41
	dec  de                                          ; $4454: $1b
	rst  $38                                         ; $4455: $ff
	call nz, $1211                                   ; $4456: $c4 $11 $12
	inc  [hl]                                        ; $4459: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $445a: $cf
	rst  $38                                         ; $445b: $ff
	ld   h, c                                        ; $445c: $61
	add  hl, de                                      ; $445d: $19
	rst  $38                                         ; $445e: $ff
	push de                                          ; $445f: $d5
	ld   de, $2311                                   ; $4460: $11 $11 $23
	rst  JumpTable                                         ; $4463: $df
	rst  $38                                         ; $4464: $ff
	ld   d, c                                        ; $4465: $51
	ld   a, [de]                                     ; $4466: $1a
	rst  $38                                         ; $4467: $ff
	push de                                          ; $4468: $d5
	ld   de, $2311                                   ; $4469: $11 $11 $23
	rst  $28                                         ; $446c: $ef
	rst  $38                                         ; $446d: $ff
	ld   b, c                                        ; $446e: $41
	dec  de                                          ; $446f: $1b
	rst  $38                                         ; $4470: $ff
	or   l                                           ; $4471: $b5
	ld   de, $1511                                   ; $4472: $11 $11 $15
	rst  $38                                         ; $4475: $ff
	db   $fd                                         ; $4476: $fd
	ld   sp, $ff1d                                   ; $4477: $31 $1d $ff
	sub  l                                           ; $447a: $95
	ld   de, $1711                                   ; $447b: $11 $11 $17
	rst  $38                                         ; $447e: $ff
	ld   a, [$5e21]                                  ; $447f: $fa $21 $5e
	rst  $38                                         ; $4482: $ff
	ld   [hl], h                                     ; $4483: $74
	ld   de, $1b11                                   ; $4484: $11 $11 $1b
	rst  $38                                         ; $4487: $ff
	or   $11                                         ; $4488: $f6 $11
	cp   a                                           ; $448a: $bf
	ei                                               ; $448b: $fb
	ld   d, d                                        ; $448c: $52
	ld   de, $5f11                                   ; $448d: $11 $11 $5f
	rst  $38                                         ; $4490: $ff
	jp   $ef15                                       ; $4491: $c3 $15 $ef


	and  $41                                         ; $4494: $e6 $41
	ld   hl, $cf12                                   ; $4496: $21 $12 $cf
	rst  $38                                         ; $4499: $ff
	ld   d, c                                        ; $449a: $51
	inc  l                                           ; $449b: $2c
	rst  $28                                         ; $449c: $ef
	sub  h                                           ; $449d: $94
	ld   [hl-], a                                    ; $449e: $32
	ld   de, $ff17                                   ; $449f: $11 $17 $ff
	ld   hl, sp+$11                                  ; $44a2: $f8 $11
	adc  a                                           ; $44a4: $8f
	db   $fc                                         ; $44a5: $fc
	ld   b, h                                        ; $44a6: $44
	ld   [hl+], a                                    ; $44a7: $22
	ld   de, $ff4f                                   ; $44a8: $11 $4f $ff
	or   c                                           ; $44ab: $b1
	ld   d, $ff                                      ; $44ac: $16 $ff
	push bc                                          ; $44ae: $c5
	ld   [hl-], a                                    ; $44af: $32
	ld   hl, rAUD1HIGH                                   ; $44b0: $21 $14 $ff
	db   $fc                                         ; $44b3: $fc
	ld   hl, $fb8e                                   ; $44b4: $21 $8e $fb
	ld   h, e                                        ; $44b7: $63
	ld   [hl-], a                                    ; $44b8: $32
	ld   de, $ff4f                                   ; $44b9: $11 $4f $ff
	or   d                                           ; $44bc: $b2
	add  hl, de                                      ; $44bd: $19
	rst  $38                                         ; $44be: $ff
	and  l                                           ; $44bf: $a5
	inc  sp                                          ; $44c0: $33
	ld   hl, $ff16                                   ; $44c1: $21 $16 $ff
	ld   sp, hl                                      ; $44c4: $f9
	ld   de, $faaf                                   ; $44c5: $11 $af $fa
	ld   d, e                                        ; $44c8: $53
	ld   [hl+], a                                    ; $44c9: $22
	ld   de, $ff8f                                   ; $44ca: $11 $8f $ff
	ld   [hl], c                                     ; $44cd: $71
	inc  a                                           ; $44ce: $3c
	db   $fd                                         ; $44cf: $fd
	add  h                                           ; $44d0: $84
	inc  sp                                          ; $44d1: $33
	ld   bc, $ff2c                                   ; $44d2: $01 $2c $ff
	call nc, $ef16                                   ; $44d5: $d4 $16 $ef
	add  $32                                         ; $44d8: $c6 $32
	ld   hl, $ff17                                   ; $44da: $21 $17 $ff
	ld   a, [$af22]                                  ; $44dd: $fa $22 $af
	jp   hl                                          ; $44e0: $e9


	ld   d, e                                        ; $44e1: $53
	ld   hl, $df13                                   ; $44e2: $21 $13 $df
	db   $fd                                         ; $44e5: $fd
	ld   b, c                                        ; $44e6: $41
	ld   a, h                                        ; $44e7: $7c
	db   $ec                                         ; $44e8: $ec
	ld   [hl], h                                     ; $44e9: $74
	ld   sp, $9f11                                   ; $44ea: $31 $11 $9f
	rst  $38                                         ; $44ed: $ff
	add  d                                           ; $44ee: $82
	ld   c, e                                        ; $44ef: $4b
	db   $dd                                         ; $44f0: $dd
	sub  l                                           ; $44f1: $95
	ld   [hl-], a                                    ; $44f2: $32
	ld   de, $ff7e                                   ; $44f3: $11 $7e $ff
	and  h                                           ; $44f6: $a4
	ld   c, d                                        ; $44f7: $4a
	call c, $3385                                    ; $44f8: $dc $85 $33
	ld   de, $ff6d                                   ; $44fb: $11 $6d $ff
	or   h                                           ; $44fe: $b4
	ld   c, d                                        ; $44ff: $4a
	call c, $2294                                    ; $4500: $dc $94 $22
	ld   [de], a                                     ; $4503: $12
	ld   a, l                                        ; $4504: $7d
	rst  $38                                         ; $4505: $ff
	and  [hl]                                        ; $4506: $a6
	ld   l, d                                        ; $4507: $6a
	db   $db                                         ; $4508: $db
	ld   [hl], e                                     ; $4509: $73
	ld   [de], a                                     ; $450a: $12
	inc  h                                           ; $450b: $24
	xor  l                                           ; $450c: $ad
	db   $ec                                         ; $450d: $ec
	and  l                                           ; $450e: $a5
	ld   l, e                                        ; $450f: $6b
	db   $ed                                         ; $4510: $ed
	ld   [hl], e                                     ; $4511: $73
	ld   de, $bd25                                   ; $4512: $11 $25 $bd
	db   $ec                                         ; $4515: $ec
	sub  [hl]                                        ; $4516: $96
	adc  d                                           ; $4517: $8a
	res  0, l                                        ; $4518: $cb $85
	ld   de, $df16                                   ; $451a: $11 $16 $df
	reti                                             ; $451d: $d9


	halt                                             ; $451e: $76
	xor  h                                           ; $451f: $ac
	ret  z                                           ; $4520: $c8

	ld   d, d                                        ; $4521: $52
	inc  de                                          ; $4522: $13
	ld   c, c                                        ; $4523: $49
	call Call_0e9_78b9                               ; $4524: $cd $b9 $78
	call z, Call_0e9_41b7                            ; $4527: $cc $b7 $41
	ld   [de], a                                     ; $452a: $12
	ld   l, h                                        ; $452b: $6c
	xor  $96                                         ; $452c: $ee $96
	ld   e, c                                        ; $452e: $59
	call $31b6                                       ; $452f: $cd $b6 $31
	inc  hl                                          ; $4532: $23
	sbc  h                                           ; $4533: $9c
	db   $ec                                         ; $4534: $ec
	sub  a                                           ; $4535: $97
	adc  e                                           ; $4536: $8b
	bit  6, h                                        ; $4537: $cb $74
	ld   hl, $df28                                   ; $4539: $21 $28 $df
	jp   hl                                          ; $453c: $e9


	ld   b, l                                        ; $453d: $45
	xor  l                                           ; $453e: $ad
	reti                                             ; $453f: $d9


	ld   b, c                                        ; $4540: $41
	inc  d                                           ; $4541: $14
	sbc  l                                           ; $4542: $9d
	jp   z, $9c76                                    ; $4543: $ca $76 $9c

	db   $db                                         ; $4546: $db
	ld   [hl], e                                     ; $4547: $73
	ld   de, $dd4a                                   ; $4548: $11 $4a $dd
	and  a                                           ; $454b: $a7
	ld   e, b                                        ; $454c: $58
	xor  h                                           ; $454d: $ac
	and  a                                           ; $454e: $a7
	ld   b, c                                        ; $454f: $41
	daa                                              ; $4550: $27
	adc  $c7                                         ; $4551: $ce $c7
	ld   b, [hl]                                     ; $4553: $46
	cp   l                                           ; $4554: $bd
	cp   b                                           ; $4555: $b8
	ld   d, d                                        ; $4556: $52
	inc  h                                           ; $4557: $24
	adc  h                                           ; $4558: $8c
	res  0, a                                        ; $4559: $cb $87
	ld   a, d                                        ; $455b: $7a
	cp   d                                           ; $455c: $ba
	add  l                                           ; $455d: $85
	ld   [hl+], a                                    ; $455e: $22
	ld   l, d                                        ; $455f: $6a
	call c, Call_0e9_58a6                            ; $4560: $dc $a6 $58
	xor  e                                           ; $4563: $ab
	sub  [hl]                                        ; $4564: $96
	ld   [hl-], a                                    ; $4565: $32
	ld   c, c                                        ; $4566: $49
	call $67a7                                       ; $4567: $cd $a7 $67
	xor  d                                           ; $456a: $aa
	and  a                                           ; $456b: $a7
	ld   d, e                                        ; $456c: $53
	ld   b, a                                        ; $456d: $47
	xor  h                                           ; $456e: $ac
	jp   z, $9a77                                    ; $456f: $ca $77 $9a

	xor  b                                           ; $4572: $a8
	ld   h, h                                        ; $4573: $64
	inc  h                                           ; $4574: $24
	adc  h                                           ; $4575: $8c
	jp   c, Jump_0e9_7a76                            ; $4576: $da $76 $7a

	xor  c                                           ; $4579: $a9
	ld   [hl], h                                     ; $457a: $74
	inc  [hl]                                        ; $457b: $34
	ld   a, d                                        ; $457c: $7a
	res  5, b                                        ; $457d: $cb $a8
	adc  c                                           ; $457f: $89
	sbc  b                                           ; $4580: $98
	halt                                             ; $4581: $76
	ld   b, e                                        ; $4582: $43
	ld   l, d                                        ; $4583: $6a
	call c, Call_0e9_6996                            ; $4584: $dc $96 $69
	cp   e                                           ; $4587: $bb
	sub  l                                           ; $4588: $95
	inc  sp                                          ; $4589: $33
	ld   a, e                                        ; $458a: $7b
	res  0, a                                        ; $458b: $cb $87
	ld   a, c                                        ; $458d: $79
	xor  d                                           ; $458e: $aa
	add  [hl]                                        ; $458f: $86
	ld   b, h                                        ; $4590: $44
	ld   l, c                                        ; $4591: $69
	cp   h                                           ; $4592: $bc
	xor  b                                           ; $4593: $a8
	ld   a, b                                        ; $4594: $78
	xor  c                                           ; $4595: $a9
	add  [hl]                                        ; $4596: $86
	ld   b, e                                        ; $4597: $43
	ld   e, c                                        ; $4598: $59
	cp   e                                           ; $4599: $bb
	sub  a                                           ; $459a: $97
	ld   l, c                                        ; $459b: $69
	xor  d                                           ; $459c: $aa
	sub  [hl]                                        ; $459d: $96
	ld   b, e                                        ; $459e: $43
	ld   l, c                                        ; $459f: $69
	res  2, a                                        ; $45a0: $cb $97
	ld   a, c                                        ; $45a2: $79
	xor  c                                           ; $45a3: $a9
	ld   [hl], l                                     ; $45a4: $75
	ld   b, l                                        ; $45a5: $45
	adc  e                                           ; $45a6: $8b
	cp   d                                           ; $45a7: $ba
	add  [hl]                                        ; $45a8: $86
	ld   a, d                                        ; $45a9: $7a
	xor  c                                           ; $45aa: $a9
	ld   [hl], l                                     ; $45ab: $75
	ld   b, l                                        ; $45ac: $45
	sbc  e                                           ; $45ad: $9b
	cp   d                                           ; $45ae: $ba
	add  a                                           ; $45af: $87
	adc  c                                           ; $45b0: $89
	sbc  b                                           ; $45b1: $98
	ld   [hl], l                                     ; $45b2: $75
	ld   b, [hl]                                     ; $45b3: $46
	sbc  e                                           ; $45b4: $9b
	cp   c                                           ; $45b5: $b9
	ld   [hl], a                                     ; $45b6: $77
	sbc  c                                           ; $45b7: $99
	xor  b                                           ; $45b8: $a8
	ld   h, h                                        ; $45b9: $64
	ld   e, b                                        ; $45ba: $58
	cp   e                                           ; $45bb: $bb
	sub  a                                           ; $45bc: $97
	ld   h, a                                        ; $45bd: $67
	sbc  d                                           ; $45be: $9a
	and  a                                           ; $45bf: $a7
	ld   d, h                                        ; $45c0: $54
	ld   l, c                                        ; $45c1: $69
	cp   e                                           ; $45c2: $bb
	sub  a                                           ; $45c3: $97
	ld   l, b                                        ; $45c4: $68
	xor  d                                           ; $45c5: $aa
	add  [hl]                                        ; $45c6: $86
	ld   d, l                                        ; $45c7: $55
	adc  d                                           ; $45c8: $8a
	cp   d                                           ; $45c9: $ba
	add  a                                           ; $45ca: $87
	adc  c                                           ; $45cb: $89
	xor  b                                           ; $45cc: $a8
	ld   [hl], l                                     ; $45cd: $75
	ld   d, [hl]                                     ; $45ce: $56
	sbc  d                                           ; $45cf: $9a
	xor  c                                           ; $45d0: $a9
	add  a                                           ; $45d1: $87
	adc  c                                           ; $45d2: $89
	sub  a                                           ; $45d3: $97
	ld   h, l                                        ; $45d4: $65
	ld   l, b                                        ; $45d5: $68
	xor  e                                           ; $45d6: $ab
	sbc  b                                           ; $45d7: $98
	ld   a, b                                        ; $45d8: $78
	xor  d                                           ; $45d9: $aa
	add  [hl]                                        ; $45da: $86
	ld   d, l                                        ; $45db: $55
	ld   a, c                                        ; $45dc: $79
	xor  d                                           ; $45dd: $aa
	sub  a                                           ; $45de: $97
	ld   a, b                                        ; $45df: $78
	sbc  d                                           ; $45e0: $9a
	add  [hl]                                        ; $45e1: $86
	ld   d, [hl]                                     ; $45e2: $56
	adc  d                                           ; $45e3: $8a
	xor  c                                           ; $45e4: $a9
	ld   [hl], a                                     ; $45e5: $77
	adc  d                                           ; $45e6: $8a
	sbc  b                                           ; $45e7: $98
	ld   h, [hl]                                     ; $45e8: $66
	ld   l, b                                        ; $45e9: $68
	xor  d                                           ; $45ea: $aa
	sbc  b                                           ; $45eb: $98
	ld   [hl], a                                     ; $45ec: $77
	sbc  c                                           ; $45ed: $99
	add  a                                           ; $45ee: $87
	ld   h, [hl]                                     ; $45ef: $66
	ld   a, c                                        ; $45f0: $79
	xor  c                                           ; $45f1: $a9
	sub  a                                           ; $45f2: $97
	ld   a, c                                        ; $45f3: $79
	sbc  b                                           ; $45f4: $98
	halt                                             ; $45f5: $76
	ld   h, a                                        ; $45f6: $67
	adc  d                                           ; $45f7: $8a
	xor  b                                           ; $45f8: $a8
	add  a                                           ; $45f9: $87
	adc  b                                           ; $45fa: $88
	sbc  b                                           ; $45fb: $98
	halt                                             ; $45fc: $76
	ld   a, b                                        ; $45fd: $78
	sbc  c                                           ; $45fe: $99
	adc  b                                           ; $45ff: $88
	adc  b                                           ; $4600: $88
	adc  c                                           ; $4601: $89
	add  a                                           ; $4602: $87
	ld   [hl], a                                     ; $4603: $77
	adc  c                                           ; $4604: $89
	sbc  b                                           ; $4605: $98
	add  a                                           ; $4606: $87
	adc  c                                           ; $4607: $89
	sbc  b                                           ; $4608: $98
	ld   [hl], a                                     ; $4609: $77
	ld   a, b                                        ; $460a: $78
	sbc  c                                           ; $460b: $99
	adc  b                                           ; $460c: $88
	ld   a, b                                        ; $460d: $78
	sbc  c                                           ; $460e: $99
	add  a                                           ; $460f: $87
	ld   [hl], a                                     ; $4610: $77
	adc  c                                           ; $4611: $89
	sbc  c                                           ; $4612: $99
	add  a                                           ; $4613: $87
	adc  c                                           ; $4614: $89
	sbc  b                                           ; $4615: $98
	ld   [hl], a                                     ; $4616: $77
	ld   a, b                                        ; $4617: $78
	adc  b                                           ; $4618: $88
	sbc  b                                           ; $4619: $98
	adc  b                                           ; $461a: $88
	sbc  c                                           ; $461b: $99
	add  a                                           ; $461c: $87
	ld   [hl], a                                     ; $461d: $77
	adc  c                                           ; $461e: $89
	sbc  b                                           ; $461f: $98
	adc  b                                           ; $4620: $88
	adc  b                                           ; $4621: $88
	adc  b                                           ; $4622: $88
	adc  b                                           ; $4623: $88
	adc  b                                           ; $4624: $88
	adc  b                                           ; $4625: $88
	adc  b                                           ; $4626: $88
	adc  b                                           ; $4627: $88
	ld   de, $1111                                   ; $4628: $11 $11 $11
	ld   de, $1111                                   ; $462b: $11 $11 $11
	ld   de, $1111                                   ; $462e: $11 $11 $11
	ld   de, $1111                                   ; $4631: $11 $11 $11
	ld   de, $1111                                   ; $4634: $11 $11 $11
	ld   de, $1111                                   ; $4637: $11 $11 $11
	ld   de, $1111                                   ; $463a: $11 $11 $11
	ld   de, $1111                                   ; $463d: $11 $11 $11
	ld   de, $1111                                   ; $4640: $11 $11 $11
	ld   de, $1111                                   ; $4643: $11 $11 $11
	ld   de, $1111                                   ; $4646: $11 $11 $11
	ld   de, $1111                                   ; $4649: $11 $11 $11
	ld   de, $1111                                   ; $464c: $11 $11 $11
	ld   de, $1111                                   ; $464f: $11 $11 $11
	nop                                              ; $4652: $00
	ld   c, b                                        ; $4653: $48
	ld   de, $1111                                   ; $4654: $11 $11 $11
	ld   de, $1111                                   ; $4657: $11 $11 $11
	ld   de, $1111                                   ; $465a: $11 $11 $11
	ld   de, $5413                                   ; $465d: $11 $13 $54
	ld   d, h                                        ; $4660: $54
	ld   d, h                                        ; $4661: $54
	ld   b, c                                        ; $4662: $41
	rra                                              ; $4663: $1f
	rst  $38                                         ; $4664: $ff
	pop  af                                          ; $4665: $f1
	ld   de, $1511                                   ; $4666: $11 $11 $15
	pop  de                                          ; $4669: $d1
	ld   de, $de1c                                   ; $466a: $11 $1c $de
	cp   h                                           ; $466d: $bc
	sbc  $b1                                         ; $466e: $de $b1
	ld   de, $1111                                   ; $4670: $11 $11 $11
	ld   de, $1111                                   ; $4673: $11 $11 $11
	ld   de, $1111                                   ; $4676: $11 $11 $11
	ld   de, $1111                                   ; $4679: $11 $11 $11
	ld   de, $5411                                   ; $467c: $11 $11 $54
	ld   b, h                                        ; $467f: $44
	push de                                          ; $4680: $d5
	ld   de, $5454                                   ; $4681: $11 $54 $54
	ld   h, a                                        ; $4684: $67

Jump_0e9_4685:
	ld   [hl], d                                     ; $4685: $72
	ld   de, $1111                                   ; $4686: $11 $11 $11
	ld   de, $1112                                   ; $4689: $11 $12 $11
	ld   [de], a                                     ; $468c: $12
	ld   de, $1111                                   ; $468d: $11 $11 $11
	ld   h, [hl]                                     ; $4690: $66
	halt                                             ; $4691: $76
	and  l                                           ; $4692: $a5
	ld   de, $8888                                   ; $4693: $11 $88 $88
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
	adc  b                                           ; $46c7: $88
	sbc  b                                           ; $46c8: $98
	adc  c                                           ; $46c9: $89
	adc  b                                           ; $46ca: $88
	adc  b                                           ; $46cb: $88
	adc  b                                           ; $46cc: $88
	sub  a                                           ; $46cd: $97
	adc  b                                           ; $46ce: $88
	adc  b                                           ; $46cf: $88
	adc  b                                           ; $46d0: $88
	adc  c                                           ; $46d1: $89
	sbc  b                                           ; $46d2: $98
	adc  c                                           ; $46d3: $89
	adc  b                                           ; $46d4: $88
	adc  b                                           ; $46d5: $88
	adc  b                                           ; $46d6: $88
	adc  b                                           ; $46d7: $88
	sbc  b                                           ; $46d8: $98
	sbc  b                                           ; $46d9: $98
	adc  b                                           ; $46da: $88
	adc  b                                           ; $46db: $88
	ld   a, b                                        ; $46dc: $78
	ld   a, b                                        ; $46dd: $78
	add  a                                           ; $46de: $87
	adc  b                                           ; $46df: $88
	adc  b                                           ; $46e0: $88
	adc  b                                           ; $46e1: $88
	adc  b                                           ; $46e2: $88
	adc  c                                           ; $46e3: $89
	sbc  c                                           ; $46e4: $99
	adc  c                                           ; $46e5: $89
	sbc  b                                           ; $46e6: $98
	ld   a, b                                        ; $46e7: $78
	sub  a                                           ; $46e8: $97
	add  a                                           ; $46e9: $87
	ld   [hl], a                                     ; $46ea: $77
	ld   [hl], a                                     ; $46eb: $77
	ld   a, b                                        ; $46ec: $78
	add  a                                           ; $46ed: $87
	adc  b                                           ; $46ee: $88
	adc  b                                           ; $46ef: $88
	adc  b                                           ; $46f0: $88
	adc  b                                           ; $46f1: $88
	adc  b                                           ; $46f2: $88
	adc  b                                           ; $46f3: $88
	adc  c                                           ; $46f4: $89
	ld   a, c                                        ; $46f5: $79
	adc  b                                           ; $46f6: $88
	sbc  c                                           ; $46f7: $99
	sbc  c                                           ; $46f8: $99
	adc  c                                           ; $46f9: $89
	sbc  c                                           ; $46fa: $99
	sbc  b                                           ; $46fb: $98
	adc  c                                           ; $46fc: $89
	adc  b                                           ; $46fd: $88
	add  a                                           ; $46fe: $87
	adc  c                                           ; $46ff: $89
	ld   [hl], a                                     ; $4700: $77
	add  [hl]                                        ; $4701: $86
	ld   [hl], a                                     ; $4702: $77
	ld   [hl], a                                     ; $4703: $77
	ld   a, b                                        ; $4704: $78
	ld   a, b                                        ; $4705: $78
	sub  a                                           ; $4706: $97
	sbc  b                                           ; $4707: $98
	adc  b                                           ; $4708: $88
	adc  c                                           ; $4709: $89
	sbc  c                                           ; $470a: $99
	adc  c                                           ; $470b: $89
	sbc  b                                           ; $470c: $98
	adc  b                                           ; $470d: $88
	add  a                                           ; $470e: $87
	adc  c                                           ; $470f: $89
	ld   [hl], a                                     ; $4710: $77
	add  [hl]                                        ; $4711: $86
	halt                                             ; $4712: $76
	ld   [hl], a                                     ; $4713: $77
	ld   a, b                                        ; $4714: $78
	ld   a, c                                        ; $4715: $79
	adc  b                                           ; $4716: $88
	sbc  c                                           ; $4717: $99
	sbc  b                                           ; $4718: $98
	sbc  c                                           ; $4719: $99
	adc  d                                           ; $471a: $8a
	sbc  c                                           ; $471b: $99
	sbc  c                                           ; $471c: $99
	adc  b                                           ; $471d: $88
	add  [hl]                                        ; $471e: $86
	adc  b                                           ; $471f: $88
	ld   h, a                                        ; $4720: $67
	ld   [hl], l                                     ; $4721: $75
	ld   h, a                                        ; $4722: $67
	ld   h, a                                        ; $4723: $67

jr_0e9_4724:
	ld   a, c                                        ; $4724: $79
	ld   l, d                                        ; $4725: $6a
	sbc  b                                           ; $4726: $98
	xor  d                                           ; $4727: $aa
	sbc  c                                           ; $4728: $99
	xor  c                                           ; $4729: $a9
	sbc  d                                           ; $472a: $9a
	sbc  c                                           ; $472b: $99
	sbc  b                                           ; $472c: $98
	halt                                             ; $472d: $76
	ld   l, b                                        ; $472e: $68
	ld   h, h                                        ; $472f: $64
	add  h                                           ; $4730: $84
	ld   h, a                                        ; $4731: $67
	ld   e, b                                        ; $4732: $58
	ld   l, e                                        ; $4733: $6b
	ld   a, c                                        ; $4734: $79
	ret  c                                           ; $4735: $d8

	xor  e                                           ; $4736: $ab
	sbc  d                                           ; $4737: $9a
	xor  d                                           ; $4738: $aa
	sbc  c                                           ; $4739: $99
	and  a                                           ; $473a: $a7
	sub  a                                           ; $473b: $97
	ld   b, h                                        ; $473c: $44
	sub  l                                           ; $473d: $95
	ld   a, [hl+]                                    ; $473e: $2a
	dec  [hl]                                        ; $473f: $35
	add  [hl]                                        ; $4740: $86
	add  [hl]                                        ; $4741: $86
	add  sp, -$61                                    ; $4742: $e8 $9f
	adc  e                                           ; $4744: $8b
	cp   c                                           ; $4745: $b9
	adc  c                                           ; $4746: $89
	rst  ToBoot                                         ; $4747: $c7
	sbc  d                                           ; $4748: $9a
	ld   d, a                                        ; $4749: $57
	ld   d, e                                        ; $474a: $53
	ld   h, [hl]                                     ; $474b: $66
	jr   @+$56                                       ; $474c: $18 $54

	sub  [hl]                                        ; $474e: $96
	and  [hl]                                        ; $474f: $a6
	db   $ec                                         ; $4750: $ec
	ld   a, a                                        ; $4751: $7f
	sbc  e                                           ; $4752: $9b
	cp   c                                           ; $4753: $b9
	add  [hl]                                        ; $4754: $86
	cp   b                                           ; $4755: $b8
	ld   l, e                                        ; $4756: $6b
	ld   d, l                                        ; $4757: $55
	inc  [hl]                                        ; $4758: $34
	sub  c                                           ; $4759: $91
	ld   l, d                                        ; $475a: $6a
	ld   a, [de]                                     ; $475b: $1a
	adc  c                                           ; $475c: $89
	sbc  c                                           ; $475d: $99
	push af                                          ; $475e: $f5
	rst  $28                                         ; $475f: $ef

jr_0e9_4760:
	ld   l, h                                        ; $4760: $6c
	sbc  c                                           ; $4761: $99
	ld   e, b                                        ; $4762: $58
	or   h                                           ; $4763: $b4
	xor  c                                           ; $4764: $a9
	inc  hl                                          ; $4765: $23
	dec  sp                                          ; $4766: $3b
	inc  d                                           ; $4767: $14
	pop  hl                                          ; $4768: $e1
	sbc  d                                           ; $4769: $9a
	xor  c                                           ; $476a: $a9
	xor  a                                           ; $476b: $af
	ld   c, h                                        ; $476c: $4c
	db   $f4                                         ; $476d: $f4
	xor  d                                           ; $476e: $aa
	ld   [hl], h                                     ; $476f: $74
	ld   a, [hl]                                     ; $4770: $7e
	jr   c, jr_0e9_4724                              ; $4771: $38 $b1

	ld   h, $b1                                      ; $4773: $26 $b1
	ld   a, [hl]                                     ; $4775: $7e
	ld   a, [de]                                     ; $4776: $1a
	cp   h                                           ; $4777: $bc
	ld   l, l                                        ; $4778: $6d
	di                                               ; $4779: $f3
	rst  $28                                         ; $477a: $ef
	ld   l, b                                        ; $477b: $68
	and  a                                           ; $477c: $a7
	add  hl, sp                                      ; $477d: $39
	db   $e4                                         ; $477e: $e4
	sbc  d                                           ; $477f: $9a
	ld   de, $1eb8                                   ; $4780: $11 $b8 $1e
	sub  c                                           ; $4783: $91

Jump_0e9_4784:
	xor  h                                           ; $4784: $ac
	jp   nc, $3ffd                                   ; $4785: $d2 $fd $3f

	or   [hl]                                        ; $4788: $b6
	ld   l, d                                        ; $4789: $6a
	ld   [hl], d                                     ; $478a: $72
	call z, Call_0e9_5149                            ; $478b: $cc $49 $51
	ld   l, d                                        ; $478e: $6a
	rla                                              ; $478f: $17
	and  h                                           ; $4790: $a4
	sbc  c                                           ; $4791: $99
	db   $f4                                         ; $4792: $f4
	rst  $28                                         ; $4793: $ef
	ld   c, [hl]                                     ; $4794: $4e
	sbc  b                                           ; $4795: $98
	ld   h, [hl]                                     ; $4796: $66
	sub  h                                           ; $4797: $94
	adc  l                                           ; $4798: $8d
	ld   a, b                                        ; $4799: $78
	ld   d, c                                        ; $479a: $51
	ld   a, d                                        ; $479b: $7a
	jr   jr_0e9_4760                                 ; $479c: $18 $c2

	cp   c                                           ; $479e: $b9
	push af                                          ; $479f: $f5
	rst  JumpTable                                         ; $47a0: $df
	ld   l, $a5                                      ; $47a1: $2e $a5
	ld   [hl], a                                     ; $47a3: $77
	add  h                                           ; $47a4: $84
	sbc  [hl]                                        ; $47a5: $9e
	ld   h, [hl]                                     ; $47a6: $66
	ld   d, c                                        ; $47a7: $51
	and  [hl]                                        ; $47a8: $a6
	inc  e                                           ; $47a9: $1c
	ld   [hl], l                                     ; $47aa: $75
	xor  d                                           ; $47ab: $aa
	db   $f4                                         ; $47ac: $f4
	cp   $2e                                         ; $47ad: $fe $2e
	halt                                             ; $47af: $76

jr_0e9_47b0:
	ld   h, [hl]                                     ; $47b0: $66
	add  l                                           ; $47b1: $85
	call $1167                                       ; $47b2: $cd $67 $11
	jp   nc, Jump_0e9_561f                           ; $47b5: $d2 $1f $56

	sbc  [hl]                                        ; $47b8: $9e
	di                                               ; $47b9: $f3
	ld   a, [$664d]                                  ; $47ba: $fa $4d $66
	ld   b, a                                        ; $47bd: $47
	sub  a                                           ; $47be: $97

Call_0e9_47bf:
	call c, $1764                                    ; $47bf: $dc $64 $17
	or   c                                           ; $47c2: $b1
	sbc  h                                           ; $47c3: $9c
	inc  l                                           ; $47c4: $2c
	xor  a                                           ; $47c5: $af
	ld   l, h                                        ; $47c6: $6c
	pop  af                                          ; $47c7: $f1
	xor  b                                           ; $47c8: $a8
	ld   b, l                                        ; $47c9: $45
	ld   c, e                                        ; $47ca: $4b
	sbc  e                                           ; $47cb: $9b
	ld   hl, sp+$51                                  ; $47cc: $f8 $51
	dec  e                                           ; $47ce: $1d
	ld   de, $7af6                                   ; $47cf: $11 $f6 $7a
	rst  $38                                         ; $47d2: $ff
	cpl                                              ; $47d3: $2f
	sub  d                                           ; $47d4: $92
	and  h                                           ; $47d5: $a4
	ld   h, e                                        ; $47d6: $63
	ld   a, l                                        ; $47d7: $7d
	xor  l                                           ; $47d8: $ad
	push de                                          ; $47d9: $d5
	ld   hl, $1c79                                   ; $47da: $21 $79 $1c
	push hl                                          ; $47dd: $e5
	cp   [hl]                                        ; $47de: $be
	db   $f4                                         ; $47df: $f4
	cp   a                                           ; $47e0: $bf
	rla                                              ; $47e1: $17
	ld   h, h                                        ; $47e2: $64
	ld   d, l                                        ; $47e3: $55
	db   $fc                                         ; $47e4: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47e5: $cf
	ld   h, d                                        ; $47e6: $62
	ld   de, $4fc1                                   ; $47e7: $11 $c1 $4f
	adc  h                                           ; $47ea: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47eb: $cf
	or   e                                           ; $47ec: $b3
	ldh  a, [c]                                      ; $47ed: $f2
	dec  [hl]                                        ; $47ee: $35
	ld   a, [hl-]                                    ; $47ef: $3a
	ld   l, l                                        ; $47f0: $6d
	db   $fc                                         ; $47f1: $fc
	or   [hl]                                        ; $47f2: $b6
	ld   hl, $111d                                   ; $47f3: $21 $1d $11
	ei                                               ; $47f6: $fb
	db   $ec                                         ; $47f7: $ec
	ei                                               ; $47f8: $fb
	dec  e                                           ; $47f9: $1d
	ld   [hl+], a                                    ; $47fa: $22
	ld   d, e                                        ; $47fb: $53
	ret                                              ; $47fc: $c9


	rst  $28                                         ; $47fd: $ef
	jp   c, $1141                                    ; $47fe: $da $41 $11

	and  $1f                                         ; $4801: $e6 $1f
	cp   $bf                                         ; $4803: $fe $bf
	pop  hl                                          ; $4805: $e1
	and  e                                           ; $4806: $a3
	ld   d, $5f                                      ; $4807: $16 $5f
	adc  $fb                                         ; $4809: $ce $fb
	ld   h, d                                        ; $480b: $62
	ld   de, $b11f                                   ; $480c: $11 $1f $b1
	rst  $38                                         ; $480f: $ff
	or   $bd                                         ; $4810: $f6 $bd
	jr   jr_0e9_4857                                 ; $4812: $18 $43

	sbc  c                                           ; $4814: $99
	db   $fd                                         ; $4815: $fd
	adc  $82                                         ; $4816: $ce $82
	ld   de, rAUD1LEN                                   ; $4818: $11 $11 $ff
	rra                                              ; $481b: $1f
	db   $fd                                         ; $481c: $fd
	jr   jr_0e9_47b0                                 ; $481d: $18 $91

	and  l                                           ; $481f: $a5
	adc  l                                           ; $4820: $8d
	rst  JumpTable                                         ; $4821: $df
	ret  z                                           ; $4822: $c8

	sub  [hl]                                        ; $4823: $96
	ld   [de], a                                     ; $4824: $12
	ld   sp, $771f                                   ; $4825: $31 $1f $77
	ei                                               ; $4828: $fb
	sub  c                                           ; $4829: $91
	ldh  [c], a                                      ; $482a: $e2
	rra                                              ; $482b: $1f
	ld   l, a                                        ; $482c: $6f
	adc  $f5                                         ; $482d: $ce $f5
	ld   b, [hl]                                     ; $482f: $46
	ld   h, e                                        ; $4830: $63
	ld   sp, $f11f                                   ; $4831: $31 $1f $f1
	rst  $38                                         ; $4834: $ff
	ld   [hl], c                                     ; $4835: $71
	rra                                              ; $4836: $1f
	ld   a, [de]                                     ; $4837: $1a
	ld   [$faf8], a                                  ; $4838: $ea $f8 $fa
	dec  d                                           ; $483b: $15
	halt                                             ; $483c: $76
	ld   sp, $f11c                                   ; $483d: $31 $1c $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4840: $cf
	ld   d, c                                        ; $4841: $51
	rra                                              ; $4842: $1f
	inc  d                                           ; $4843: $14
	ld   a, [$acf8]                                  ; $4844: $fa $f8 $ac
	inc  d                                           ; $4847: $14
	sbc  c                                           ; $4848: $99
	ld   b, c                                        ; $4849: $41
	inc  e                                           ; $484a: $1c
	pop  af                                          ; $484b: $f1
	xor  a                                           ; $484c: $af
	ld   d, c                                        ; $484d: $51
	rra                                              ; $484e: $1f
	dec  [hl]                                        ; $484f: $35
	ei                                               ; $4850: $fb
	rst  $30                                         ; $4851: $f7
	sbc  e                                           ; $4852: $9b
	inc  h                                           ; $4853: $24
	cp   c                                           ; $4854: $b9
	ld   b, c                                        ; $4855: $41
	rra                                              ; $4856: $1f

jr_0e9_4857:
	pop  af                                          ; $4857: $f1
	rst  $28                                         ; $4858: $ef
	ld   d, c                                        ; $4859: $51
	cpl                                              ; $485a: $2f
	add  hl, sp                                      ; $485b: $39
	db   $ec                                         ; $485c: $ec
	push bc                                          ; $485d: $c5
	xor  c                                           ; $485e: $a9
	ld   [hl], $b7                                   ; $485f: $36 $b7
	ld   de, $937f                                   ; $4861: $11 $7f $93
	ei                                               ; $4864: $fb
	ld   de, $6ebb                                   ; $4865: $11 $bb $6e
	call z, $9675                                    ; $4868: $cc $75 $96
	ld   c, d                                        ; $486b: $4a
	sub  d                                           ; $486c: $92
	inc  de                                          ; $486d: $13
	db   $fc                                         ; $486e: $fc
	ld   e, $a4                                      ; $486f: $1e $a4
	add  hl, de                                      ; $4871: $19
	reti                                             ; $4872: $d9


	db   $db                                         ; $4873: $db
	add  $38                                         ; $4874: $c6 $38
	add  l                                           ; $4876: $85
	adc  c                                           ; $4877: $89
	ld   de, $749f                                   ; $4878: $11 $9f $74
	add  sp, $11                                     ; $487b: $e8 $11
	db   $dd                                         ; $487d: $dd
	res  3, e                                        ; $487e: $cb $9b
	ld   b, h                                        ; $4880: $44
	adc  c                                           ; $4881: $89
	ld   a, b                                        ; $4882: $78
	ld   d, c                                        ; $4883: $51
	rra                                              ; $4884: $1f
	ldh  a, [c]                                      ; $4885: $f2
	cp   d                                           ; $4886: $ba
	ld   b, c                                        ; $4887: $41
	ld   l, a                                        ; $4888: $6f
	cp   [hl]                                        ; $4889: $be
	sbc  b                                           ; $488a: $98
	ld   [hl], e                                     ; $488b: $73
	ld   l, d                                        ; $488c: $6a
	sub  [hl]                                        ; $488d: $96
	ld   h, c                                        ; $488e: $61
	rra                                              ; $488f: $1f
	ldh  a, [c]                                      ; $4890: $f2
	sbc  d                                           ; $4891: $9a
	ld   d, c                                        ; $4892: $51
	ld   e, a                                        ; $4893: $5f
	call z, $8287                                    ; $4894: $cc $87 $82
	ld   l, e                                        ; $4897: $6b
	and  [hl]                                        ; $4898: $a6
	ld   d, c                                        ; $4899: $51
	cpl                                              ; $489a: $2f
	ldh  a, [c]                                      ; $489b: $f2
	sbc  b                                           ; $489c: $98
	ld   d, c                                        ; $489d: $51
	ld   a, a                                        ; $489e: $7f
	db   $db                                         ; $489f: $db
	halt                                             ; $48a0: $76
	ld   [hl], d                                     ; $48a1: $72
	ld   l, e                                        ; $48a2: $6b
	sub  l                                           ; $48a3: $95
	ld   sp, $82cf                                   ; $48a4: $31 $cf $82
	add  [hl]                                        ; $48a7: $86
	ld   [hl-], a                                    ; $48a8: $32
	rst  $38                                         ; $48a9: $ff
	cp   b                                           ; $48aa: $b8
	ld   b, a                                        ; $48ab: $47
	ld   d, h                                        ; $48ac: $54
	xor  d                                           ; $48ad: $aa
	ld   h, e                                        ; $48ae: $63
	add  hl, bc                                      ; $48af: $09
	cp   $26                                         ; $48b0: $fe $26
	ld   h, h                                        ; $48b2: $64
	dec  de                                          ; $48b3: $1b
	db   $fc                                         ; $48b4: $fc
	add  l                                           ; $48b5: $85
	ld   h, l                                        ; $48b6: $65
	ld   c, b                                        ; $48b7: $48
	and  [hl]                                        ; $48b8: $a6
	ld   sp, $e17f                                   ; $48b9: $31 $7f $e1
	ld   h, a                                        ; $48bc: $67
	ld   h, d                                        ; $48bd: $62
	cp   a                                           ; $48be: $bf
	or   a                                           ; $48bf: $b7
	ld   [hl], $66                                   ; $48c0: $36 $66
	xor  c                                           ; $48c2: $a9
	ld   h, e                                        ; $48c3: $63
	ld   a, [de]                                     ; $48c4: $1a
	ei                                               ; $48c5: $fb
	ld   d, $66                                      ; $48c6: $16 $66
	ld   e, a                                        ; $48c8: $5f
	ei                                               ; $48c9: $fb
	ld   d, e                                        ; $48ca: $53
	ld   d, l                                        ; $48cb: $55
	ld   a, c                                        ; $48cc: $79
	add  l                                           ; $48cd: $85
	inc  hl                                          ; $48ce: $23
	rst  $38                                         ; $48cf: $ff
	ld   b, c                                        ; $48d0: $41
	ld   d, l                                        ; $48d1: $55
	ld   e, c                                        ; $48d2: $59
	rst  $38                                         ; $48d3: $ff
	sub  e                                           ; $48d4: $93
	ld   b, [hl]                                     ; $48d5: $46
	ld   l, c                                        ; $48d6: $69
	add  [hl]                                        ; $48d7: $86
	ld   sp, $d1bf                                   ; $48d8: $31 $bf $d1
	ld   b, l                                        ; $48db: $45
	ld   d, [hl]                                     ; $48dc: $56
	rst  $38                                         ; $48dd: $ff
	or   h                                           ; $48de: $b4
	dec  d                                           ; $48df: $15
	ld   a, c                                        ; $48e0: $79
	and  [hl]                                        ; $48e1: $a6
	ld   hl, $f29f                                   ; $48e2: $21 $9f $f2
	ld   b, l                                        ; $48e5: $45
	ld   h, [hl]                                     ; $48e6: $66
	rst  $28                                         ; $48e7: $ef
	call nc, Call_0e9_6915                           ; $48e8: $d4 $15 $69
	and  a                                           ; $48eb: $a7
	ld   sp, $e1af                                   ; $48ec: $31 $af $e1
	dec  [hl]                                        ; $48ef: $35
	ld   l, b                                        ; $48f0: $68
	rst  $38                                         ; $48f1: $ff
	jp   $6a15                                       ; $48f2: $c3 $15 $6a


	add  [hl]                                        ; $48f5: $86
	ld   hl, $91ff                                   ; $48f6: $21 $ff $91
	ld   b, l                                        ; $48f9: $45
	ld   a, c                                        ; $48fa: $79
	rst  $38                                         ; $48fb: $ff
	and  c                                           ; $48fc: $a1
	ld   h, $79                                      ; $48fd: $26 $79
	ld   [hl], h                                     ; $48ff: $74
	ld   d, $ff                                      ; $4900: $16 $ff
	ld   [hl-], a                                    ; $4902: $32
	ld   b, [hl]                                     ; $4903: $46
	sbc  l                                           ; $4904: $9d
	db   $fc                                         ; $4905: $fc
	ld   b, c                                        ; $4906: $41
	ld   b, [hl]                                     ; $4907: $46
	sbc  c                                           ; $4908: $99
	ld   h, c                                        ; $4909: $61
	cpl                                              ; $490a: $2f
	push af                                          ; $490b: $f5
	inc  d                                           ; $490c: $14
	ld   h, a                                        ; $490d: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $490e: $cf
	rst  $30                                         ; $490f: $f7
	inc  de                                          ; $4910: $13
	ld   l, b                                        ; $4911: $68
	sub  l                                           ; $4912: $95
	ld   hl, $a1df                                   ; $4913: $21 $df $a1
	ld   b, [hl]                                     ; $4916: $46
	adc  e                                           ; $4917: $8b
	rst  $38                                         ; $4918: $ff
	sub  c                                           ; $4919: $91
	ld   h, $9b                                      ; $491a: $26 $9b
	ld   h, d                                        ; $491c: $62
	dec  e                                           ; $491d: $1d
	ld   sp, hl                                      ; $491e: $f9
	inc  d                                           ; $491f: $14
	ld   l, b                                        ; $4920: $68
	cp   a                                           ; $4921: $bf
	ld   sp, hl                                      ; $4922: $f9
	ld   de, $a569                                   ; $4923: $11 $69 $a5
	ld   bc, $71ff                                   ; $4926: $01 $ff $71
	dec  [hl]                                        ; $4929: $35
	sbc  l                                           ; $492a: $9d
	cp   $71                                         ; $492b: $fe $71
	ld   h, $ab                                      ; $492d: $26 $ab
	ld   b, c                                        ; $492f: $41
	ccf                                              ; $4930: $3f
	di                                               ; $4931: $f3
	inc  d                                           ; $4932: $14
	ld   l, d                                        ; $4933: $6a
	rst  JumpTable                                         ; $4934: $df
	call nc, Call_0e9_7b13                           ; $4935: $d4 $13 $7b
	and  d                                           ; $4938: $a2
	rla                                              ; $4939: $17
	rst  $38                                         ; $493a: $ff
	ld   [de], a                                     ; $493b: $12
	ld   d, a                                        ; $493c: $57
	xor  [hl]                                        ; $493d: $ae
	ei                                               ; $493e: $fb
	ld   hl, $c958                                   ; $493f: $21 $58 $c9
	ld   de, $91ff                                   ; $4942: $11 $ff $91
	dec  [hl]                                        ; $4945: $35
	xor  h                                           ; $4946: $ac
	cp   $71                                         ; $4947: $fe $71
	daa                                              ; $4949: $27
	xor  l                                           ; $494a: $ad
	ld   d, c                                        ; $494b: $51
	rra                                              ; $494c: $1f
	db   $f4                                         ; $494d: $f4
	inc  de                                          ; $494e: $13
	ld   e, c                                        ; $494f: $59
	rst  $28                                         ; $4950: $ef
	push hl                                          ; $4951: $e5
	inc  de                                          ; $4952: $13
	ld   a, h                                        ; $4953: $7c
	or   d                                           ; $4954: $b2
	jr   @+$01                                       ; $4955: $18 $ff

	ld   de, $bf48                                   ; $4957: $11 $48 $bf
	db   $fc                                         ; $495a: $fc
	ld   de, $d659                                   ; $495b: $11 $59 $d6
	ld   de, $91ff                                   ; $495e: $11 $ff $91
	dec  [hl]                                        ; $4961: $35
	adc  h                                           ; $4962: $8c
	rst  $38                                         ; $4963: $ff
	add  c                                           ; $4964: $81
	rla                                              ; $4965: $17
	cp   l                                           ; $4966: $bd
	ld   b, c                                        ; $4967: $41
	rra                                              ; $4968: $1f
	di                                               ; $4969: $f3
	inc  de                                          ; $496a: $13
	ld   l, d                                        ; $496b: $6a
	rst  $28                                         ; $496c: $ef
	push af                                          ; $496d: $f5
	inc  de                                          ; $496e: $13
	adc  [hl]                                        ; $496f: $8e
	pop  de                                          ; $4970: $d1
	inc  de                                          ; $4971: $13
	rst  $38                                         ; $4972: $ff
	ld   de, $9e46                                   ; $4973: $11 $46 $9e
	cp   $31                                         ; $4976: $fe $31
	ld   c, c                                        ; $4978: $49
	ld   [$4f11], a                                  ; $4979: $ea $11 $4f
	pop  af                                          ; $497c: $f1
	inc  d                                           ; $497d: $14
	ld   a, d                                        ; $497e: $7a
	rst  $28                                         ; $497f: $ef
	jp   nc, $af14                                   ; $4980: $d2 $14 $af

	sub  c                                           ; $4983: $91
	rla                                              ; $4984: $17
	rst  $38                                         ; $4985: $ff
	ld   de, $9e46                                   ; $4986: $11 $46 $9e
	db   $fd                                         ; $4989: $fd
	ld   sp, $f95b                                   ; $498a: $31 $5b $f9
	ld   de, $f15f                                   ; $498d: $11 $5f $f1
	inc  d                                           ; $4990: $14
	ld   l, c                                        ; $4991: $69
	rst  JumpTable                                         ; $4992: $df
	di                                               ; $4993: $f3
	inc  d                                           ; $4994: $14
	xor  a                                           ; $4995: $af
	and  c                                           ; $4996: $a1
	ld   [de], a                                     ; $4997: $12
	rst  $38                                         ; $4998: $ff
	ld   de, $9c45                                   ; $4999: $11 $45 $9c
	rst  $38                                         ; $499c: $ff
	ld   d, c                                        ; $499d: $51
	ld   a, [hl-]                                    ; $499e: $3a
	ld   a, [$1f11]                                  ; $499f: $fa $11 $1f
	pop  af                                          ; $49a2: $f1
	inc  d                                           ; $49a3: $14
	ld   e, c                                        ; $49a4: $59
	cp   a                                           ; $49a5: $bf
	rst  $30                                         ; $49a6: $f7
	ld   [de], a                                     ; $49a7: $12
	xor  [hl]                                        ; $49a8: $ae
	or   c                                           ; $49a9: $b1
	ld   de, $21ff                                   ; $49aa: $11 $ff $21
	dec  [hl]                                        ; $49ad: $35
	adc  d                                           ; $49ae: $8a
	rst  $38                                         ; $49af: $ff
	sub  c                                           ; $49b0: $91
	ld   a, [de]                                     ; $49b1: $1a
	db   $fd                                         ; $49b2: $fd
	ld   bc, $f81f                                   ; $49b3: $01 $1f $f8
	inc  de                                          ; $49b6: $13
	ld   d, a                                        ; $49b7: $57
	sbc  a                                           ; $49b8: $9f
	ei                                               ; $49b9: $fb
	ld   de, $e38d                                   ; $49ba: $11 $8d $e3
	ld   de, $f1bf                                   ; $49bd: $11 $bf $f1
	dec  h                                           ; $49c0: $25
	ld   a, d                                        ; $49c1: $7a
	rst  $28                                         ; $49c2: $ef
	jp   nc, $ce16                                   ; $49c3: $d2 $16 $ce

	ld   d, c                                        ; $49c6: $51
	dec  d                                           ; $49c7: $15
	rst  $38                                         ; $49c8: $ff
	ld   de, $8c56                                   ; $49c9: $11 $56 $8c
	rst  $38                                         ; $49cc: $ff
	ld   d, c                                        ; $49cd: $51
	inc  a                                           ; $49ce: $3c

jr_0e9_49cf:
	ld   hl, sp+$11                                  ; $49cf: $f8 $11
	rra                                              ; $49d1: $1f
	pop  af                                          ; $49d2: $f1
	dec  d                                           ; $49d3: $15
	ld   e, b                                        ; $49d4: $58
	cp   a                                           ; $49d5: $bf
	ld   sp, hl                                      ; $49d6: $f9
	ld   de, $b1ae                                   ; $49d7: $11 $ae $b1
	ld   de, $61ff                                   ; $49da: $11 $ff $61
	ld   b, l                                        ; $49dd: $45
	adc  e                                           ; $49de: $8b
	rst  $38                                         ; $49df: $ff
	or   c                                           ; $49e0: $b1
	jr   jr_0e9_49cf                                 ; $49e1: $18 $ec

	ld   hl, $ff19                                   ; $49e3: $21 $19 $ff
	ld   [de], a                                     ; $49e6: $12
	ld   d, [hl]                                     ; $49e7: $56
	sbc  l                                           ; $49e8: $9d
	rst  $38                                         ; $49e9: $ff
	ld   sp, $d55d                                   ; $49ea: $31 $5d $d5
	ld   de, $f13f                                   ; $49ed: $11 $3f $f1
	dec  d                                           ; $49f0: $15
	ld   e, c                                        ; $49f1: $59
	cp   a                                           ; $49f2: $bf
	rst  $30                                         ; $49f3: $f7
	ld   [de], a                                     ; $49f4: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49f5: $cf
	add  c                                           ; $49f6: $81
	ld   de, $31ff                                   ; $49f7: $11 $ff $31
	ld   d, l                                        ; $49fa: $55
	sbc  d                                           ; $49fb: $9a
	rst  $38                                         ; $49fc: $ff
	or   c                                           ; $49fd: $b1
	ld   a, [de]                                     ; $49fe: $1a
	ld   a, [$1c21]                                  ; $49ff: $fa $21 $1c
	db   $fc                                         ; $4a02: $fc
	inc  de                                          ; $4a03: $13
	ld   d, a                                        ; $4a04: $57
	xor  l                                           ; $4a05: $ad
	db   $fd                                         ; $4a06: $fd
	ld   hl, $d47e                                   ; $4a07: $21 $7e $d4
	ld   de, $f13f                                   ; $4a0a: $11 $3f $f1
	ld   d, $59                                      ; $4a0d: $16 $59
	xor  a                                           ; $4a0f: $af
	or   $13                                         ; $4a10: $f6 $13
	call $1171                                       ; $4a12: $cd $71 $11
	rst  $38                                         ; $4a15: $ff
	ld   hl, $8964                                   ; $4a16: $21 $64 $89
	rst  $38                                         ; $4a19: $ff
	and  c                                           ; $4a1a: $a1
	ld   a, [de]                                     ; $4a1b: $1a
	ld   [$1a31], a                                  ; $4a1c: $ea $31 $1a
	cp   $13                                         ; $4a1f: $fe $13
	ld   d, [hl]                                     ; $4a21: $56
	sbc  h                                           ; $4a22: $9c
	db   $fd                                         ; $4a23: $fd
	ld   sp, $c56e                                   ; $4a24: $31 $6e $c5
	ld   de, $f11f                                   ; $4a27: $11 $1f $f1
	ld   d, $49                                      ; $4a2a: $16 $49
	sbc  a                                           ; $4a2c: $9f
	ld   hl, sp+$11                                  ; $4a2d: $f8 $11
	adc  $82                                         ; $4a2f: $ce $82
	ld   de, $c1cf                                   ; $4a31: $11 $cf $c1
	ld   d, h                                        ; $4a34: $54
	ld   a, d                                        ; $4a35: $7a
	rst  JumpTable                                         ; $4a36: $df
	jp   nz, $eb18                                   ; $4a37: $c2 $18 $eb

	ld   b, c                                        ; $4a3a: $41
	ld   de, $11ff                                   ; $4a3b: $11 $ff $11
	ld   h, h                                        ; $4a3e: $64
	sbc  c                                           ; $4a3f: $99
	rst  $38                                         ; $4a40: $ff
	ld   [hl], c                                     ; $4a41: $71
	inc  e                                           ; $4a42: $1c
	ld   sp, hl                                      ; $4a43: $f9
	ld   hl, $fc1a                                   ; $4a44: $21 $1a $fc
	dec  d                                           ; $4a47: $15
	ld   b, a                                        ; $4a48: $47
	sbc  l                                           ; $4a49: $9d
	db   $fd                                         ; $4a4a: $fd
	ld   hl, $c47e                                   ; $4a4b: $21 $7e $c4
	ld   hl, $f11f                                   ; $4a4e: $21 $1f $f1
	dec  d                                           ; $4a51: $15
	ld   c, c                                        ; $4a52: $49
	sbc  a                                           ; $4a53: $9f
	ld   hl, sp+$11                                  ; $4a54: $f8 $11
	adc  $82                                         ; $4a56: $ce $82
	ld   hl, $e19f                                   ; $4a58: $21 $9f $e1
	ld   b, h                                        ; $4a5b: $44
	ld   a, d                                        ; $4a5c: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a5d: $cf
	db   $d3                                         ; $4a5e: $d3
	ld   d, $ec                                      ; $4a5f: $16 $ec
	ld   d, e                                        ; $4a61: $53
	ld   de, $11ff                                   ; $4a62: $11 $ff $11
	ld   h, h                                        ; $4a65: $64
	sbc  c                                           ; $4a66: $99
	rst  $38                                         ; $4a67: $ff
	add  c                                           ; $4a68: $81
	dec  de                                          ; $4a69: $1b
	ld   sp, hl                                      ; $4a6a: $f9
	inc  sp                                          ; $4a6b: $33
	rla                                              ; $4a6c: $17
	rst  $38                                         ; $4a6d: $ff
	inc  de                                          ; $4a6e: $13
	ld   b, a                                        ; $4a6f: $47
	sbc  e                                           ; $4a70: $9b
	cp   $41                                         ; $4a71: $fe $41
	ld   e, [hl]                                     ; $4a73: $5e
	sub  $31                                         ; $4a74: $d6 $31
	rra                                              ; $4a76: $1f
	di                                               ; $4a77: $f3
	dec  d                                           ; $4a78: $15
	ld   c, c                                        ; $4a79: $49
	sbc  a                                           ; $4a7a: $9f
	ld   a, [$bf11]                                  ; $4a7b: $fa $11 $bf
	and  h                                           ; $4a7e: $a4
	ld   hl, $f15f                                   ; $4a7f: $21 $5f $f1
	inc  h                                           ; $4a82: $24
	ld   l, d                                        ; $4a83: $6a
	xor  a                                           ; $4a84: $af
	push hl                                          ; $4a85: $e5
	inc  d                                           ; $4a86: $14
	sbc  $72                                         ; $4a87: $de $72
	ld   de, $51ff                                   ; $4a89: $11 $ff $51
	ld   d, h                                        ; $4a8c: $54
	sbc  c                                           ; $4a8d: $99
	rst  $38                                         ; $4a8e: $ff
	sub  c                                           ; $4a8f: $91
	ld   a, [de]                                     ; $4a90: $1a
	ei                                               ; $4a91: $fb
	ld   [hl-], a                                    ; $4a92: $32
	ld   d, $ff                                      ; $4a93: $16 $ff
	ld   [de], a                                     ; $4a95: $12
	ld   d, a                                        ; $4a96: $57
	xor  e                                           ; $4a97: $ab
	cp   $41                                         ; $4a98: $fe $41
	ld   e, a                                        ; $4a9a: $5f
	sub  $22                                         ; $4a9b: $d6 $22
	rra                                              ; $4a9d: $1f
	rst  $30                                         ; $4a9e: $f7
	inc  d                                           ; $4a9f: $14
	ld   c, d                                        ; $4aa0: $4a
	sbc  [hl]                                        ; $4aa1: $9e
	ld   a, [$af11]                                  ; $4aa2: $fa $11 $af
	or   h                                           ; $4aa5: $b4
	ld   hl, $f14f                                   ; $4aa6: $21 $4f $f1
	dec  d                                           ; $4aa9: $15
	ld   l, d                                        ; $4aaa: $6a
	cp   a                                           ; $4aab: $bf
	push de                                          ; $4aac: $d5
	inc  d                                           ; $4aad: $14
	db   $ed                                         ; $4aae: $ed
	ld   [hl], d                                     ; $4aaf: $72
	ld   hl, $c1bf                                   ; $4ab0: $21 $bf $c1
	inc  [hl]                                        ; $4ab3: $34
	adc  c                                           ; $4ab4: $89
	rst  JumpTable                                         ; $4ab5: $df
	or   d                                           ; $4ab6: $b2
	add  hl, de                                      ; $4ab7: $19
	db   $fc                                         ; $4ab8: $fc
	ld   b, e                                        ; $4ab9: $43
	ld   de, $21ff                                   ; $4aba: $11 $ff $21
	ld   b, l                                        ; $4abd: $45
	xor  d                                           ; $4abe: $aa
	rst  $38                                         ; $4abf: $ff
	ld   h, c                                        ; $4ac0: $61
	dec  l                                           ; $4ac1: $2d
	jp   hl                                          ; $4ac2: $e9


	inc  sp                                          ; $4ac3: $33
	inc  d                                           ; $4ac4: $14
	rst  $38                                         ; $4ac5: $ff
	ld   de, $aa46                                   ; $4ac6: $11 $46 $aa
	db   $fd                                         ; $4ac9: $fd
	ld   d, c                                        ; $4aca: $51
	ld   e, [hl]                                     ; $4acb: $5e
	rst  $10                                         ; $4acc: $d7
	inc  sp                                          ; $4acd: $33
	rla                                              ; $4ace: $17
	rst  $38                                         ; $4acf: $ff
	inc  de                                          ; $4ad0: $13
	ld   c, b                                        ; $4ad1: $48
	xor  h                                           ; $4ad2: $ac
	ld   a, [$7d31]                                  ; $4ad3: $fa $31 $7d
	add  $33                                         ; $4ad6: $c6 $33
	add  hl, de                                      ; $4ad8: $19
	db   $fd                                         ; $4ad9: $fd
	inc  de                                          ; $4ada: $13
	ld   c, c                                        ; $4adb: $49
	xor  l                                           ; $4adc: $ad
	ld   sp, hl                                      ; $4add: $f9
	ld   hl, $c59e                                   ; $4ade: $21 $9e $c5
	ld   b, e                                        ; $4ae1: $43
	ld   a, [de]                                     ; $4ae2: $1a
	db   $fc                                         ; $4ae3: $fc
	inc  de                                          ; $4ae4: $13
	ld   c, b                                        ; $4ae5: $48
	sbc  l                                           ; $4ae6: $9d
	ld   sp, hl                                      ; $4ae7: $f9
	ld   sp, $b68e                                   ; $4ae8: $31 $8e $b6
	ld   b, h                                        ; $4aeb: $44
	rla                                              ; $4aec: $17
	rst  $38                                         ; $4aed: $ff
	ld   [de], a                                     ; $4aee: $12
	ld   c, b                                        ; $4aef: $48
	sbc  h                                           ; $4af0: $9c
	ei                                               ; $4af1: $fb
	ld   d, c                                        ; $4af2: $51
	ld   e, l                                        ; $4af3: $5d
	rst  $10                                         ; $4af4: $d7
	ld   d, h                                        ; $4af5: $54
	ld   de, $21ff                                   ; $4af6: $11 $ff $21
	ld   [hl], $9b                                   ; $4af9: $36 $9b
	xor  $91                                         ; $4afb: $ee $91
	dec  de                                          ; $4afd: $1b
	ld   a, [$2165]                                  ; $4afe: $fa $65 $21
	xor  a                                           ; $4b01: $af
	pop  de                                          ; $4b02: $d1
	inc  d                                           ; $4b03: $14
	adc  d                                           ; $4b04: $8a
	rst  JumpTable                                         ; $4b05: $df
	or   e                                           ; $4b06: $b3
	dec  d                                           ; $4b07: $15
	db   $dd                                         ; $4b08: $dd
	add  l                                           ; $4b09: $85
	ld   b, c                                        ; $4b0a: $41
	rra                                              ; $4b0b: $1f
	rst  $30                                         ; $4b0c: $f7
	ld   [de], a                                     ; $4b0d: $12
	ld   e, b                                        ; $4b0e: $58
	xor  a                                           ; $4b0f: $af
	ld   hl, sp+$11                                  ; $4b10: $f8 $11
	sbc  a                                           ; $4b12: $9f
	rst  $10                                         ; $4b13: $d7
	ld   d, e                                        ; $4b14: $53
	ld   de, $41ff                                   ; $4b15: $11 $ff $41
	dec  h                                           ; $4b18: $25
	sbc  l                                           ; $4b19: $9d
	db   $ed                                         ; $4b1a: $ed
	ld   [hl], c                                     ; $4b1b: $71
	ld   a, [de]                                     ; $4b1c: $1a
	db   $fc                                         ; $4b1d: $fc
	ld   [hl], l                                     ; $4b1e: $75
	ld   sp, $f92f                                   ; $4b1f: $31 $2f $f9
	ld   de, $cf6a                                   ; $4b22: $11 $6a $cf
	ret  c                                           ; $4b25: $d8

	ld   de, $e88f                                   ; $4b26: $11 $8f $e8
	ld   d, h                                        ; $4b29: $54
	ld   [hl-], a                                    ; $4b2a: $32
	ld   a, a                                        ; $4b2b: $7f
	pop  af                                          ; $4b2c: $f1
	inc  d                                           ; $4b2d: $14
	ld   a, h                                        ; $4b2e: $7c
	sbc  $a5                                         ; $4b2f: $de $a5
	ld   [de], a                                     ; $4b31: $12
	rst  $28                                         ; $4b32: $ef
	and  [hl]                                        ; $4b33: $a6
	ld   d, h                                        ; $4b34: $54
	inc  sp                                          ; $4b35: $33
	sbc  a                                           ; $4b36: $9f
	pop  af                                          ; $4b37: $f1
	ld   d, $ad                                      ; $4b38: $16 $ad
	call z, $1594                                    ; $4b3a: $cc $94 $15
	rst  $38                                         ; $4b3d: $ff
	sub  l                                           ; $4b3e: $95
	ld   h, h                                        ; $4b3f: $64
	inc  [hl]                                        ; $4b40: $34
	adc  a                                           ; $4b41: $8f
	pop  af                                          ; $4b42: $f1
	rla                                              ; $4b43: $17
	sbc  e                                           ; $4b44: $9b
	cp   h                                           ; $4b45: $bc
	or   l                                           ; $4b46: $b5
	inc  d                                           ; $4b47: $14
	rst  $28                                         ; $4b48: $ef
	and  h                                           ; $4b49: $a4
	ld   h, [hl]                                     ; $4b4a: $66
	ld   b, l                                        ; $4b4b: $45
	ld   a, l                                        ; $4b4c: $7d
	rst  $30                                         ; $4b4d: $f7
	inc  d                                           ; $4b4e: $14
	sbc  e                                           ; $4b4f: $9b
	cp   e                                           ; $4b50: $bb
	or   a                                           ; $4b51: $b7
	ld   de, $e5af                                   ; $4b52: $11 $af $e5
	ld   b, a                                        ; $4b55: $47
	ld   [hl], l                                     ; $4b56: $75
	ld   h, a                                        ; $4b57: $67
	rst  $28                                         ; $4b58: $ef
	ld   sp, $a97b                                   ; $4b59: $31 $7b $a9
	xor  d                                           ; $4b5c: $aa
	ld   h, d                                        ; $4b5d: $62
	ld   c, e                                        ; $4b5e: $4b
	db   $fc                                         ; $4b5f: $fc
	ld   b, l                                        ; $4b60: $45
	add  a                                           ; $4b61: $87
	ld   d, [hl]                                     ; $4b62: $56
	ld   a, l                                        ; $4b63: $7d
	or   $16                                         ; $4b64: $f6 $16
	sbc  c                                           ; $4b66: $99
	xor  d                                           ; $4b67: $aa
	or   a                                           ; $4b68: $b7
	inc  sp                                          ; $4b69: $33
	sbc  a                                           ; $4b6a: $9f
	sub  $47                                         ; $4b6b: $d6 $47
	add  [hl]                                        ; $4b6d: $86
	ld   h, a                                        ; $4b6e: $67
	sbc  a                                           ; $4b6f: $9f
	and  c                                           ; $4b70: $a1
	ld   c, c                                        ; $4b71: $49
	sbc  d                                           ; $4b72: $9a
	sbc  e                                           ; $4b73: $9b
	add  l                                           ; $4b74: $85
	scf                                              ; $4b75: $37
	db   $dd                                         ; $4b76: $dd
	add  l                                           ; $4b77: $85
	ld   [hl], a                                     ; $4b78: $77
	ld   h, [hl]                                     ; $4b79: $66
	ld   [hl], a                                     ; $4b7a: $77
	rst  JumpTable                                         ; $4b7b: $df
	ld   sp, $ab79                                   ; $4b7c: $31 $79 $ab
	xor  c                                           ; $4b7f: $a9
	ld   h, h                                        ; $4b80: $64
	ld   e, e                                        ; $4b81: $5b
	jp   c, $8856                                    ; $4b82: $da $56 $88

	adc  b                                           ; $4b85: $88
	halt                                             ; $4b86: $76
	ld   a, h                                        ; $4b87: $7c
	or   h                                           ; $4b88: $b4
	ld   e, b                                        ; $4b89: $58
	adc  b                                           ; $4b8a: $88
	xor  d                                           ; $4b8b: $aa
	sub  [hl]                                        ; $4b8c: $96
	ld   b, a                                        ; $4b8d: $47
	cp   e                                           ; $4b8e: $bb
	halt                                             ; $4b8f: $76
	ld   a, c                                        ; $4b90: $79
	ld   [hl], a                                     ; $4b91: $77
	ld   [hl], a                                     ; $4b92: $77
	adc  h                                           ; $4b93: $8c
	or   l                                           ; $4b94: $b5
	ld   b, a                                        ; $4b95: $47
	adc  c                                           ; $4b96: $89
	xor  d                                           ; $4b97: $aa
	sub  [hl]                                        ; $4b98: $96
	ld   d, [hl]                                     ; $4b99: $56
	cp   h                                           ; $4b9a: $bc
	sub  [hl]                                        ; $4b9b: $96
	ld   l, b                                        ; $4b9c: $68
	sbc  b                                           ; $4b9d: $98

Jump_0e9_4b9e:
	sub  a                                           ; $4b9e: $97
	ld   h, [hl]                                     ; $4b9f: $66
	cp   l                                           ; $4ba0: $bd
	ld   h, l                                        ; $4ba1: $65
	ld   a, b                                        ; $4ba2: $78
	sbc  c                                           ; $4ba3: $99
	xor  d                                           ; $4ba4: $aa
	ld   [hl], l                                     ; $4ba5: $75
	ld   l, d                                        ; $4ba6: $6a
	xor  b                                           ; $4ba7: $a8
	ld   a, b                                        ; $4ba8: $78
	sub  a                                           ; $4ba9: $97
	ld   h, a                                        ; $4baa: $67
	add  a                                           ; $4bab: $87
	ld   l, d                                        ; $4bac: $6a
	ret  c                                           ; $4bad: $d8

	dec  [hl]                                        ; $4bae: $35
	adc  d                                           ; $4baf: $8a
	xor  c                                           ; $4bb0: $a9
	sub  a                                           ; $4bb1: $97
	ld   h, l                                        ; $4bb2: $65
	adc  e                                           ; $4bb3: $8b
	and  a                                           ; $4bb4: $a7
	ld   h, a                                        ; $4bb5: $67
	ld   a, c                                        ; $4bb6: $79
	xor  c                                           ; $4bb7: $a9
	sub  [hl]                                        ; $4bb8: $96
	ld   d, [hl]                                     ; $4bb9: $56
	sbc  c                                           ; $4bba: $99
	cp   d                                           ; $4bbb: $ba
	ld   h, l                                        ; $4bbc: $65
	ld   l, b                                        ; $4bbd: $68
	xor  e                                           ; $4bbe: $ab
	xor  c                                           ; $4bbf: $a9
	ld   h, l                                        ; $4bc0: $65
	ld   a, c                                        ; $4bc1: $79
	cp   d                                           ; $4bc2: $ba
	halt                                             ; $4bc3: $76
	ld   d, [hl]                                     ; $4bc4: $56
	xor  h                                           ; $4bc5: $ac
	or   [hl]                                        ; $4bc6: $b6
	ld   d, [hl]                                     ; $4bc7: $56
	ld   a, b                                        ; $4bc8: $78
	sbc  e                                           ; $4bc9: $9b
	or   [hl]                                        ; $4bca: $b6
	ld   b, [hl]                                     ; $4bcb: $46
	sbc  d                                           ; $4bcc: $9a
	sbc  b                                           ; $4bcd: $98
	add  a                                           ; $4bce: $87
	ld   h, a                                        ; $4bcf: $67
	sbc  d                                           ; $4bd0: $9a
	sub  a                                           ; $4bd1: $97
	ld   h, a                                        ; $4bd2: $67
	adc  b                                           ; $4bd3: $88
	sbc  c                                           ; $4bd4: $99
	adc  b                                           ; $4bd5: $88
	ld   a, b                                        ; $4bd6: $78
	sbc  c                                           ; $4bd7: $99
	adc  c                                           ; $4bd8: $89
	adc  b                                           ; $4bd9: $88
	add  a                                           ; $4bda: $87
	ld   h, [hl]                                     ; $4bdb: $66
	ld   a, l                                        ; $4bdc: $7d
	push bc                                          ; $4bdd: $c5
	ld   b, a                                        ; $4bde: $47
	sbc  b                                           ; $4bdf: $98
	xor  e                                           ; $4be0: $ab
	sub  [hl]                                        ; $4be1: $96
	ld   d, [hl]                                     ; $4be2: $56
	sbc  e                                           ; $4be3: $9b
	sub  a                                           ; $4be4: $97
	ld   [hl], a                                     ; $4be5: $77
	ld   a, b                                        ; $4be6: $78
	xor  d                                           ; $4be7: $aa
	sub  a                                           ; $4be8: $97
	ld   h, a                                        ; $4be9: $67
	adc  c                                           ; $4bea: $89
	adc  b                                           ; $4beb: $88
	add  a                                           ; $4bec: $87
	ld   a, b                                        ; $4bed: $78
	sbc  c                                           ; $4bee: $99
	sub  a                                           ; $4bef: $97
	ld   [hl], a                                     ; $4bf0: $77
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	add  a                                           ; $4bf3: $87
	ld   a, b                                        ; $4bf4: $78
	adc  c                                           ; $4bf5: $89
	sbc  b                                           ; $4bf6: $98
	ld   [hl], a                                     ; $4bf7: $77
	adc  b                                           ; $4bf8: $88
	adc  c                                           ; $4bf9: $89
	add  a                                           ; $4bfa: $87
	ld   [hl], a                                     ; $4bfb: $77
	adc  b                                           ; $4bfc: $88
	adc  c                                           ; $4bfd: $89
	sub  a                                           ; $4bfe: $97
	ld   [hl], a                                     ; $4bff: $77
	ld   a, b                                        ; $4c00: $78
	add  a                                           ; $4c01: $87
	adc  h                                           ; $4c02: $8c
	and  l                                           ; $4c03: $a5
	ld   e, b                                        ; $4c04: $58
	sbc  c                                           ; $4c05: $99
	xor  d                                           ; $4c06: $aa
	add  [hl]                                        ; $4c07: $86
	ld   d, a                                        ; $4c08: $57
	cp   e                                           ; $4c09: $bb
	sub  [hl]                                        ; $4c0a: $96
	ld   [hl], a                                     ; $4c0b: $77
	adc  c                                           ; $4c0c: $89
	xor  c                                           ; $4c0d: $a9
	add  [hl]                                        ; $4c0e: $86
	ld   a, c                                        ; $4c0f: $79
	sbc  b                                           ; $4c10: $98
	adc  b                                           ; $4c11: $88
	add  a                                           ; $4c12: $87
	ld   a, b                                        ; $4c13: $78
	sbc  c                                           ; $4c14: $99
	add  a                                           ; $4c15: $87
	ld   a, b                                        ; $4c16: $78
	adc  c                                           ; $4c17: $89
	sbc  b                                           ; $4c18: $98
	ld   a, b                                        ; $4c19: $78
	adc  b                                           ; $4c1a: $88
	adc  b                                           ; $4c1b: $88
	adc  b                                           ; $4c1c: $88
	adc  b                                           ; $4c1d: $88
	adc  b                                           ; $4c1e: $88
	adc  b                                           ; $4c1f: $88
	adc  b                                           ; $4c20: $88
	adc  b                                           ; $4c21: $88
	adc  b                                           ; $4c22: $88
	adc  b                                           ; $4c23: $88
	adc  b                                           ; $4c24: $88
	adc  b                                           ; $4c25: $88
	adc  b                                           ; $4c26: $88
	adc  b                                           ; $4c27: $88
	adc  b                                           ; $4c28: $88
	adc  b                                           ; $4c29: $88
	adc  b                                           ; $4c2a: $88
	adc  b                                           ; $4c2b: $88
	adc  b                                           ; $4c2c: $88
	adc  b                                           ; $4c2d: $88
	adc  b                                           ; $4c2e: $88
	adc  b                                           ; $4c2f: $88
	adc  b                                           ; $4c30: $88
	adc  b                                           ; $4c31: $88
	adc  b                                           ; $4c32: $88
	adc  b                                           ; $4c33: $88
	adc  b                                           ; $4c34: $88
	adc  b                                           ; $4c35: $88
	ld   a, b                                        ; $4c36: $78
	sbc  b                                           ; $4c37: $98
	adc  b                                           ; $4c38: $88
	adc  b                                           ; $4c39: $88
	adc  b                                           ; $4c3a: $88
	adc  b                                           ; $4c3b: $88
	adc  b                                           ; $4c3c: $88
	adc  b                                           ; $4c3d: $88
	adc  b                                           ; $4c3e: $88
	adc  b                                           ; $4c3f: $88
	adc  b                                           ; $4c40: $88
	adc  b                                           ; $4c41: $88
	adc  b                                           ; $4c42: $88
	adc  b                                           ; $4c43: $88
	adc  b                                           ; $4c44: $88
	adc  b                                           ; $4c45: $88
	adc  b                                           ; $4c46: $88
	adc  b                                           ; $4c47: $88
	adc  b                                           ; $4c48: $88
	adc  b                                           ; $4c49: $88
	adc  b                                           ; $4c4a: $88
	adc  b                                           ; $4c4b: $88
	adc  b                                           ; $4c4c: $88
	adc  b                                           ; $4c4d: $88
	adc  b                                           ; $4c4e: $88
	adc  b                                           ; $4c4f: $88
	adc  b                                           ; $4c50: $88
	adc  b                                           ; $4c51: $88
	adc  b                                           ; $4c52: $88
	adc  b                                           ; $4c53: $88
	adc  b                                           ; $4c54: $88
	adc  b                                           ; $4c55: $88
	adc  b                                           ; $4c56: $88
	adc  b                                           ; $4c57: $88
	adc  b                                           ; $4c58: $88
	adc  b                                           ; $4c59: $88
	adc  b                                           ; $4c5a: $88
	adc  b                                           ; $4c5b: $88
	adc  b                                           ; $4c5c: $88
	adc  b                                           ; $4c5d: $88
	adc  b                                           ; $4c5e: $88
	adc  b                                           ; $4c5f: $88
	adc  b                                           ; $4c60: $88
	adc  b                                           ; $4c61: $88
	adc  b                                           ; $4c62: $88
	adc  b                                           ; $4c63: $88
	adc  b                                           ; $4c64: $88
	adc  b                                           ; $4c65: $88
	adc  b                                           ; $4c66: $88
	adc  b                                           ; $4c67: $88
	adc  b                                           ; $4c68: $88
	adc  b                                           ; $4c69: $88
	adc  b                                           ; $4c6a: $88
	adc  b                                           ; $4c6b: $88
	adc  b                                           ; $4c6c: $88
	adc  b                                           ; $4c6d: $88
	adc  b                                           ; $4c6e: $88
	adc  b                                           ; $4c6f: $88
	adc  b                                           ; $4c70: $88
	adc  b                                           ; $4c71: $88
	adc  b                                           ; $4c72: $88
	adc  b                                           ; $4c73: $88
	adc  b                                           ; $4c74: $88
	adc  b                                           ; $4c75: $88
	adc  b                                           ; $4c76: $88
	adc  b                                           ; $4c77: $88
	adc  b                                           ; $4c78: $88
	adc  b                                           ; $4c79: $88
	adc  b                                           ; $4c7a: $88
	adc  b                                           ; $4c7b: $88
	adc  b                                           ; $4c7c: $88
	adc  b                                           ; $4c7d: $88
	adc  b                                           ; $4c7e: $88
	adc  b                                           ; $4c7f: $88
	adc  b                                           ; $4c80: $88
	adc  b                                           ; $4c81: $88
	adc  b                                           ; $4c82: $88
	adc  b                                           ; $4c83: $88
	adc  b                                           ; $4c84: $88
	adc  b                                           ; $4c85: $88
	adc  b                                           ; $4c86: $88
	adc  b                                           ; $4c87: $88
	adc  b                                           ; $4c88: $88
	adc  b                                           ; $4c89: $88
	adc  b                                           ; $4c8a: $88
	adc  b                                           ; $4c8b: $88
	adc  b                                           ; $4c8c: $88
	adc  b                                           ; $4c8d: $88
	adc  b                                           ; $4c8e: $88
	adc  b                                           ; $4c8f: $88
	sbc  b                                           ; $4c90: $98
	sbc  b                                           ; $4c91: $98
	ld   a, b                                        ; $4c92: $78
	adc  b                                           ; $4c93: $88
	adc  c                                           ; $4c94: $89
	sbc  b                                           ; $4c95: $98
	ld   [hl], a                                     ; $4c96: $77
	ld   a, b                                        ; $4c97: $78
	adc  c                                           ; $4c98: $89
	adc  b                                           ; $4c99: $88
	ld   [hl], a                                     ; $4c9a: $77
	adc  b                                           ; $4c9b: $88
	adc  b                                           ; $4c9c: $88
	adc  b                                           ; $4c9d: $88
	add  a                                           ; $4c9e: $87
	adc  b                                           ; $4c9f: $88
	adc  b                                           ; $4ca0: $88
	adc  b                                           ; $4ca1: $88
	add  a                                           ; $4ca2: $87
	ld   a, b                                        ; $4ca3: $78
	sbc  b                                           ; $4ca4: $98
	adc  b                                           ; $4ca5: $88
	adc  b                                           ; $4ca6: $88
	adc  b                                           ; $4ca7: $88
	adc  b                                           ; $4ca8: $88
	adc  b                                           ; $4ca9: $88
	adc  b                                           ; $4caa: $88
	adc  b                                           ; $4cab: $88
	adc  b                                           ; $4cac: $88
	adc  b                                           ; $4cad: $88
	adc  b                                           ; $4cae: $88
	adc  b                                           ; $4caf: $88
	adc  b                                           ; $4cb0: $88
	adc  b                                           ; $4cb1: $88
	adc  b                                           ; $4cb2: $88
	adc  b                                           ; $4cb3: $88
	adc  b                                           ; $4cb4: $88
	adc  b                                           ; $4cb5: $88
	adc  b                                           ; $4cb6: $88
	adc  b                                           ; $4cb7: $88
	adc  b                                           ; $4cb8: $88
	adc  b                                           ; $4cb9: $88
	adc  b                                           ; $4cba: $88
	adc  b                                           ; $4cbb: $88
	adc  b                                           ; $4cbc: $88
	adc  b                                           ; $4cbd: $88
	adc  b                                           ; $4cbe: $88
	adc  b                                           ; $4cbf: $88
	adc  b                                           ; $4cc0: $88
	adc  b                                           ; $4cc1: $88
	adc  b                                           ; $4cc2: $88
	adc  b                                           ; $4cc3: $88
	adc  b                                           ; $4cc4: $88
	adc  b                                           ; $4cc5: $88
	adc  b                                           ; $4cc6: $88
	adc  b                                           ; $4cc7: $88
	adc  b                                           ; $4cc8: $88
	adc  b                                           ; $4cc9: $88
	adc  b                                           ; $4cca: $88
	adc  b                                           ; $4ccb: $88
	adc  b                                           ; $4ccc: $88
	adc  b                                           ; $4ccd: $88
	adc  b                                           ; $4cce: $88
	adc  b                                           ; $4ccf: $88
	adc  b                                           ; $4cd0: $88
	adc  b                                           ; $4cd1: $88
	adc  b                                           ; $4cd2: $88
	adc  b                                           ; $4cd3: $88
	adc  b                                           ; $4cd4: $88
	adc  b                                           ; $4cd5: $88
	adc  b                                           ; $4cd6: $88
	adc  b                                           ; $4cd7: $88
	adc  b                                           ; $4cd8: $88
	adc  b                                           ; $4cd9: $88
	adc  b                                           ; $4cda: $88
	adc  b                                           ; $4cdb: $88
	adc  b                                           ; $4cdc: $88
	adc  b                                           ; $4cdd: $88
	adc  b                                           ; $4cde: $88
	adc  b                                           ; $4cdf: $88
	adc  b                                           ; $4ce0: $88
	adc  b                                           ; $4ce1: $88
	adc  b                                           ; $4ce2: $88
	adc  b                                           ; $4ce3: $88
	adc  b                                           ; $4ce4: $88
	adc  b                                           ; $4ce5: $88
	adc  b                                           ; $4ce6: $88
	adc  b                                           ; $4ce7: $88
	adc  b                                           ; $4ce8: $88
	adc  b                                           ; $4ce9: $88
	adc  b                                           ; $4cea: $88
	adc  b                                           ; $4ceb: $88
	adc  b                                           ; $4cec: $88
	adc  b                                           ; $4ced: $88
	adc  b                                           ; $4cee: $88
	adc  b                                           ; $4cef: $88
	adc  b                                           ; $4cf0: $88
	adc  b                                           ; $4cf1: $88
	adc  b                                           ; $4cf2: $88
	adc  b                                           ; $4cf3: $88
	adc  b                                           ; $4cf4: $88
	adc  b                                           ; $4cf5: $88
	adc  b                                           ; $4cf6: $88
	adc  b                                           ; $4cf7: $88
	adc  b                                           ; $4cf8: $88
	adc  b                                           ; $4cf9: $88
	adc  b                                           ; $4cfa: $88
	adc  b                                           ; $4cfb: $88
	adc  b                                           ; $4cfc: $88
	adc  b                                           ; $4cfd: $88
	adc  b                                           ; $4cfe: $88
	adc  b                                           ; $4cff: $88
	adc  b                                           ; $4d00: $88
	adc  b                                           ; $4d01: $88
	adc  b                                           ; $4d02: $88
	adc  b                                           ; $4d03: $88
	adc  b                                           ; $4d04: $88
	adc  b                                           ; $4d05: $88
	adc  b                                           ; $4d06: $88
	adc  b                                           ; $4d07: $88
	adc  b                                           ; $4d08: $88
	adc  b                                           ; $4d09: $88
	adc  b                                           ; $4d0a: $88
	adc  b                                           ; $4d0b: $88
	adc  b                                           ; $4d0c: $88
	adc  b                                           ; $4d0d: $88
	adc  b                                           ; $4d0e: $88
	adc  b                                           ; $4d0f: $88
	adc  b                                           ; $4d10: $88
	adc  b                                           ; $4d11: $88
	adc  b                                           ; $4d12: $88
	adc  b                                           ; $4d13: $88
	adc  b                                           ; $4d14: $88
	adc  b                                           ; $4d15: $88
	adc  b                                           ; $4d16: $88
	adc  b                                           ; $4d17: $88
	adc  b                                           ; $4d18: $88
	adc  b                                           ; $4d19: $88
	adc  b                                           ; $4d1a: $88
	adc  b                                           ; $4d1b: $88
	adc  b                                           ; $4d1c: $88
	adc  b                                           ; $4d1d: $88
	adc  b                                           ; $4d1e: $88
	adc  b                                           ; $4d1f: $88
	adc  b                                           ; $4d20: $88
	adc  b                                           ; $4d21: $88
	adc  b                                           ; $4d22: $88
	adc  b                                           ; $4d23: $88
	adc  b                                           ; $4d24: $88
	adc  b                                           ; $4d25: $88
	adc  b                                           ; $4d26: $88
	adc  b                                           ; $4d27: $88
	adc  b                                           ; $4d28: $88
	adc  b                                           ; $4d29: $88
	adc  b                                           ; $4d2a: $88
	adc  b                                           ; $4d2b: $88
	adc  b                                           ; $4d2c: $88
	adc  b                                           ; $4d2d: $88
	adc  b                                           ; $4d2e: $88
	adc  b                                           ; $4d2f: $88
	adc  b                                           ; $4d30: $88
	adc  b                                           ; $4d31: $88
	adc  b                                           ; $4d32: $88
	adc  b                                           ; $4d33: $88
	adc  b                                           ; $4d34: $88
	adc  b                                           ; $4d35: $88
	adc  b                                           ; $4d36: $88
	adc  b                                           ; $4d37: $88
	adc  b                                           ; $4d38: $88
	adc  b                                           ; $4d39: $88
	adc  b                                           ; $4d3a: $88
	adc  b                                           ; $4d3b: $88
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
	adc  b                                           ; $4d46: $88
	adc  b                                           ; $4d47: $88
	adc  b                                           ; $4d48: $88
	adc  b                                           ; $4d49: $88
	adc  b                                           ; $4d4a: $88
	adc  b                                           ; $4d4b: $88
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
	adc  b                                           ; $4d59: $88
	adc  b                                           ; $4d5a: $88
	adc  b                                           ; $4d5b: $88
	adc  b                                           ; $4d5c: $88
	adc  b                                           ; $4d5d: $88
	adc  b                                           ; $4d5e: $88
	adc  b                                           ; $4d5f: $88
	adc  b                                           ; $4d60: $88
	adc  b                                           ; $4d61: $88
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
	adc  b                                           ; $4d99: $88
	adc  b                                           ; $4d9a: $88
	adc  b                                           ; $4d9b: $88
	adc  b                                           ; $4d9c: $88
	adc  b                                           ; $4d9d: $88
	adc  b                                           ; $4d9e: $88
	adc  b                                           ; $4d9f: $88
	adc  b                                           ; $4da0: $88
	adc  b                                           ; $4da1: $88
	adc  b                                           ; $4da2: $88
	adc  b                                           ; $4da3: $88
	adc  b                                           ; $4da4: $88
	adc  b                                           ; $4da5: $88
	adc  b                                           ; $4da6: $88
	adc  b                                           ; $4da7: $88
	adc  b                                           ; $4da8: $88
	adc  b                                           ; $4da9: $88
	adc  b                                           ; $4daa: $88
	adc  b                                           ; $4dab: $88
	adc  b                                           ; $4dac: $88
	adc  b                                           ; $4dad: $88
	adc  b                                           ; $4dae: $88
	adc  b                                           ; $4daf: $88
	adc  b                                           ; $4db0: $88
	adc  b                                           ; $4db1: $88
	adc  b                                           ; $4db2: $88
	adc  b                                           ; $4db3: $88
	adc  b                                           ; $4db4: $88
	adc  b                                           ; $4db5: $88
	adc  b                                           ; $4db6: $88
	adc  b                                           ; $4db7: $88
	adc  b                                           ; $4db8: $88
	adc  b                                           ; $4db9: $88
	adc  b                                           ; $4dba: $88
	adc  b                                           ; $4dbb: $88
	adc  b                                           ; $4dbc: $88
	adc  b                                           ; $4dbd: $88
	adc  b                                           ; $4dbe: $88
	adc  b                                           ; $4dbf: $88
	adc  b                                           ; $4dc0: $88
	adc  b                                           ; $4dc1: $88
	adc  b                                           ; $4dc2: $88
	adc  b                                           ; $4dc3: $88
	adc  b                                           ; $4dc4: $88
	adc  b                                           ; $4dc5: $88
	adc  b                                           ; $4dc6: $88
	adc  b                                           ; $4dc7: $88
	adc  b                                           ; $4dc8: $88
	adc  b                                           ; $4dc9: $88
	adc  b                                           ; $4dca: $88
	adc  b                                           ; $4dcb: $88
	adc  b                                           ; $4dcc: $88
	adc  b                                           ; $4dcd: $88
	adc  b                                           ; $4dce: $88
	adc  b                                           ; $4dcf: $88
	adc  b                                           ; $4dd0: $88
	adc  b                                           ; $4dd1: $88
	adc  b                                           ; $4dd2: $88
	adc  b                                           ; $4dd3: $88
	adc  b                                           ; $4dd4: $88
	adc  b                                           ; $4dd5: $88
	adc  b                                           ; $4dd6: $88
	adc  b                                           ; $4dd7: $88
	adc  b                                           ; $4dd8: $88
	adc  b                                           ; $4dd9: $88
	adc  b                                           ; $4dda: $88
	adc  b                                           ; $4ddb: $88
	adc  b                                           ; $4ddc: $88
	adc  b                                           ; $4ddd: $88
	adc  b                                           ; $4dde: $88
	adc  b                                           ; $4ddf: $88
	adc  b                                           ; $4de0: $88
	adc  b                                           ; $4de1: $88
	adc  b                                           ; $4de2: $88
	adc  b                                           ; $4de3: $88
	adc  b                                           ; $4de4: $88
	adc  b                                           ; $4de5: $88
	adc  b                                           ; $4de6: $88
	adc  b                                           ; $4de7: $88
	adc  b                                           ; $4de8: $88
	adc  b                                           ; $4de9: $88
	adc  b                                           ; $4dea: $88
	adc  b                                           ; $4deb: $88
	adc  b                                           ; $4dec: $88
	adc  b                                           ; $4ded: $88
	adc  b                                           ; $4dee: $88
	adc  b                                           ; $4def: $88
	adc  b                                           ; $4df0: $88
	adc  b                                           ; $4df1: $88
	adc  b                                           ; $4df2: $88
	adc  b                                           ; $4df3: $88
	adc  b                                           ; $4df4: $88
	adc  b                                           ; $4df5: $88
	adc  b                                           ; $4df6: $88
	adc  b                                           ; $4df7: $88
	adc  b                                           ; $4df8: $88
	adc  b                                           ; $4df9: $88
	adc  b                                           ; $4dfa: $88
	adc  b                                           ; $4dfb: $88
	adc  b                                           ; $4dfc: $88
	adc  b                                           ; $4dfd: $88
	adc  b                                           ; $4dfe: $88
	adc  b                                           ; $4dff: $88
	adc  b                                           ; $4e00: $88
	adc  b                                           ; $4e01: $88
	adc  b                                           ; $4e02: $88
	adc  b                                           ; $4e03: $88
	adc  b                                           ; $4e04: $88
	adc  b                                           ; $4e05: $88
	adc  b                                           ; $4e06: $88
	adc  b                                           ; $4e07: $88
	adc  b                                           ; $4e08: $88
	adc  b                                           ; $4e09: $88
	adc  b                                           ; $4e0a: $88
	adc  b                                           ; $4e0b: $88
	adc  b                                           ; $4e0c: $88
	adc  b                                           ; $4e0d: $88
	adc  b                                           ; $4e0e: $88
	adc  b                                           ; $4e0f: $88
	adc  b                                           ; $4e10: $88
	adc  b                                           ; $4e11: $88
	adc  b                                           ; $4e12: $88
	adc  b                                           ; $4e13: $88
	adc  b                                           ; $4e14: $88
	adc  b                                           ; $4e15: $88
	adc  b                                           ; $4e16: $88
	adc  b                                           ; $4e17: $88
	adc  b                                           ; $4e18: $88
	adc  b                                           ; $4e19: $88
	adc  b                                           ; $4e1a: $88
	adc  b                                           ; $4e1b: $88
	adc  b                                           ; $4e1c: $88
	adc  b                                           ; $4e1d: $88
	adc  b                                           ; $4e1e: $88
	adc  b                                           ; $4e1f: $88
	adc  b                                           ; $4e20: $88
	adc  b                                           ; $4e21: $88
	adc  b                                           ; $4e22: $88
	adc  b                                           ; $4e23: $88
	adc  b                                           ; $4e24: $88
	adc  b                                           ; $4e25: $88
	adc  b                                           ; $4e26: $88
	adc  b                                           ; $4e27: $88
	adc  b                                           ; $4e28: $88
	adc  b                                           ; $4e29: $88
	adc  b                                           ; $4e2a: $88
	adc  b                                           ; $4e2b: $88
	adc  b                                           ; $4e2c: $88
	adc  b                                           ; $4e2d: $88
	adc  b                                           ; $4e2e: $88
	adc  b                                           ; $4e2f: $88
	adc  b                                           ; $4e30: $88
	adc  b                                           ; $4e31: $88
	adc  b                                           ; $4e32: $88
	adc  b                                           ; $4e33: $88
	adc  b                                           ; $4e34: $88
	adc  b                                           ; $4e35: $88
	adc  b                                           ; $4e36: $88
	adc  b                                           ; $4e37: $88
	adc  b                                           ; $4e38: $88
	adc  b                                           ; $4e39: $88
	adc  b                                           ; $4e3a: $88
	adc  b                                           ; $4e3b: $88
	adc  b                                           ; $4e3c: $88
	adc  b                                           ; $4e3d: $88
	adc  b                                           ; $4e3e: $88
	adc  b                                           ; $4e3f: $88
	adc  b                                           ; $4e40: $88
	adc  b                                           ; $4e41: $88
	adc  b                                           ; $4e42: $88
	adc  b                                           ; $4e43: $88
	adc  b                                           ; $4e44: $88
	adc  b                                           ; $4e45: $88
	adc  b                                           ; $4e46: $88
	adc  b                                           ; $4e47: $88
	adc  b                                           ; $4e48: $88
	adc  b                                           ; $4e49: $88
	adc  b                                           ; $4e4a: $88
	adc  b                                           ; $4e4b: $88
	adc  b                                           ; $4e4c: $88
	adc  b                                           ; $4e4d: $88
	adc  b                                           ; $4e4e: $88
	adc  b                                           ; $4e4f: $88
	adc  b                                           ; $4e50: $88
	adc  b                                           ; $4e51: $88
	adc  b                                           ; $4e52: $88
	adc  b                                           ; $4e53: $88
	adc  b                                           ; $4e54: $88
	adc  b                                           ; $4e55: $88
	adc  b                                           ; $4e56: $88
	adc  b                                           ; $4e57: $88
	adc  b                                           ; $4e58: $88
	adc  b                                           ; $4e59: $88
	adc  b                                           ; $4e5a: $88
	adc  b                                           ; $4e5b: $88
	adc  b                                           ; $4e5c: $88
	adc  b                                           ; $4e5d: $88
	adc  b                                           ; $4e5e: $88
	adc  b                                           ; $4e5f: $88
	adc  b                                           ; $4e60: $88
	adc  b                                           ; $4e61: $88
	adc  b                                           ; $4e62: $88
	adc  b                                           ; $4e63: $88
	adc  b                                           ; $4e64: $88
	adc  b                                           ; $4e65: $88
	adc  b                                           ; $4e66: $88
	adc  b                                           ; $4e67: $88
	adc  b                                           ; $4e68: $88
	adc  b                                           ; $4e69: $88
	adc  b                                           ; $4e6a: $88
	adc  b                                           ; $4e6b: $88
	adc  b                                           ; $4e6c: $88
	adc  b                                           ; $4e6d: $88
	adc  b                                           ; $4e6e: $88
	adc  b                                           ; $4e6f: $88
	adc  b                                           ; $4e70: $88
	adc  b                                           ; $4e71: $88
	adc  b                                           ; $4e72: $88
	adc  b                                           ; $4e73: $88
	adc  b                                           ; $4e74: $88
	adc  b                                           ; $4e75: $88
	adc  b                                           ; $4e76: $88
	adc  b                                           ; $4e77: $88
	adc  b                                           ; $4e78: $88
	adc  b                                           ; $4e79: $88
	adc  b                                           ; $4e7a: $88
	adc  b                                           ; $4e7b: $88
	adc  b                                           ; $4e7c: $88
	adc  b                                           ; $4e7d: $88
	adc  b                                           ; $4e7e: $88
	adc  b                                           ; $4e7f: $88
	adc  b                                           ; $4e80: $88
	adc  b                                           ; $4e81: $88
	adc  b                                           ; $4e82: $88
	adc  b                                           ; $4e83: $88
	adc  b                                           ; $4e84: $88
	adc  b                                           ; $4e85: $88
	adc  b                                           ; $4e86: $88
	adc  b                                           ; $4e87: $88
	adc  b                                           ; $4e88: $88
	adc  b                                           ; $4e89: $88
	adc  b                                           ; $4e8a: $88
	adc  b                                           ; $4e8b: $88
	adc  b                                           ; $4e8c: $88
	adc  b                                           ; $4e8d: $88
	adc  b                                           ; $4e8e: $88
	adc  b                                           ; $4e8f: $88
	adc  b                                           ; $4e90: $88
	adc  b                                           ; $4e91: $88
	adc  b                                           ; $4e92: $88
	adc  b                                           ; $4e93: $88
	adc  b                                           ; $4e94: $88
	adc  b                                           ; $4e95: $88
	adc  b                                           ; $4e96: $88
	adc  b                                           ; $4e97: $88
	adc  b                                           ; $4e98: $88
	adc  b                                           ; $4e99: $88
	adc  b                                           ; $4e9a: $88
	adc  b                                           ; $4e9b: $88
	adc  b                                           ; $4e9c: $88
	adc  b                                           ; $4e9d: $88
	adc  b                                           ; $4e9e: $88
	adc  b                                           ; $4e9f: $88
	adc  b                                           ; $4ea0: $88
	adc  b                                           ; $4ea1: $88
	adc  b                                           ; $4ea2: $88
	adc  b                                           ; $4ea3: $88
	adc  b                                           ; $4ea4: $88
	adc  b                                           ; $4ea5: $88
	adc  b                                           ; $4ea6: $88
	adc  b                                           ; $4ea7: $88
	adc  b                                           ; $4ea8: $88
	adc  b                                           ; $4ea9: $88
	adc  b                                           ; $4eaa: $88
	adc  b                                           ; $4eab: $88
	adc  b                                           ; $4eac: $88
	adc  b                                           ; $4ead: $88
	adc  b                                           ; $4eae: $88
	adc  b                                           ; $4eaf: $88
	adc  b                                           ; $4eb0: $88
	adc  b                                           ; $4eb1: $88
	adc  b                                           ; $4eb2: $88
	adc  b                                           ; $4eb3: $88
	adc  b                                           ; $4eb4: $88
	adc  b                                           ; $4eb5: $88
	adc  b                                           ; $4eb6: $88
	adc  b                                           ; $4eb7: $88
	adc  b                                           ; $4eb8: $88
	adc  b                                           ; $4eb9: $88
	adc  b                                           ; $4eba: $88
	adc  b                                           ; $4ebb: $88
	adc  b                                           ; $4ebc: $88
	adc  b                                           ; $4ebd: $88
	adc  b                                           ; $4ebe: $88
	adc  b                                           ; $4ebf: $88
	adc  b                                           ; $4ec0: $88
	adc  b                                           ; $4ec1: $88
	adc  b                                           ; $4ec2: $88
	adc  b                                           ; $4ec3: $88
	adc  b                                           ; $4ec4: $88
	adc  b                                           ; $4ec5: $88
	adc  b                                           ; $4ec6: $88
	adc  b                                           ; $4ec7: $88
	adc  b                                           ; $4ec8: $88
	adc  b                                           ; $4ec9: $88
	adc  b                                           ; $4eca: $88
	adc  b                                           ; $4ecb: $88
	adc  b                                           ; $4ecc: $88
	adc  b                                           ; $4ecd: $88
	adc  b                                           ; $4ece: $88
	adc  b                                           ; $4ecf: $88
	adc  b                                           ; $4ed0: $88
	adc  b                                           ; $4ed1: $88
	ld   a, b                                        ; $4ed2: $78
	adc  b                                           ; $4ed3: $88
	adc  b                                           ; $4ed4: $88
	adc  b                                           ; $4ed5: $88
	adc  b                                           ; $4ed6: $88
	sbc  c                                           ; $4ed7: $99
	sbc  c                                           ; $4ed8: $99
	sbc  c                                           ; $4ed9: $99
	sub  a                                           ; $4eda: $97
	ld   [hl], a                                     ; $4edb: $77
	adc  b                                           ; $4edc: $88
	adc  b                                           ; $4edd: $88
	adc  b                                           ; $4ede: $88
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	add  a                                           ; $4ee1: $87
	adc  b                                           ; $4ee2: $88
	ld   [hl], a                                     ; $4ee3: $77
	ld   [hl], a                                     ; $4ee4: $77
	adc  c                                           ; $4ee5: $89
	adc  c                                           ; $4ee6: $89
	adc  c                                           ; $4ee7: $89
	sbc  c                                           ; $4ee8: $99
	add  a                                           ; $4ee9: $87
	ld   [hl], a                                     ; $4eea: $77
	ld   a, b                                        ; $4eeb: $78
	adc  b                                           ; $4eec: $88
	sbc  b                                           ; $4eed: $98
	ld   [hl], a                                     ; $4eee: $77
	add  a                                           ; $4eef: $87
	adc  b                                           ; $4ef0: $88
	adc  b                                           ; $4ef1: $88
	add  a                                           ; $4ef2: $87
	ld   a, b                                        ; $4ef3: $78
	adc  b                                           ; $4ef4: $88
	sbc  d                                           ; $4ef5: $9a
	xor  d                                           ; $4ef6: $aa
	add  a                                           ; $4ef7: $87
	ld   [hl], a                                     ; $4ef8: $77
	adc  b                                           ; $4ef9: $88
	sbc  c                                           ; $4efa: $99
	adc  b                                           ; $4efb: $88
	add  a                                           ; $4efc: $87
	ld   a, b                                        ; $4efd: $78
	adc  b                                           ; $4efe: $88
	sbc  b                                           ; $4eff: $98
	ld   [hl], a                                     ; $4f00: $77
	ld   [hl], a                                     ; $4f01: $77
	adc  c                                           ; $4f02: $89
	xor  c                                           ; $4f03: $a9
	xor  c                                           ; $4f04: $a9
	add  a                                           ; $4f05: $87
	ld   [hl], a                                     ; $4f06: $77
	ld   a, b                                        ; $4f07: $78
	adc  b                                           ; $4f08: $88
	adc  b                                           ; $4f09: $88
	ld   [hl], a                                     ; $4f0a: $77
	ld   [hl], a                                     ; $4f0b: $77
	adc  b                                           ; $4f0c: $88
	adc  b                                           ; $4f0d: $88
	ld   [hl], a                                     ; $4f0e: $77
	ld   [hl], a                                     ; $4f0f: $77
	adc  b                                           ; $4f10: $88

Call_0e9_4f11:
	xor  d                                           ; $4f11: $aa
	sbc  d                                           ; $4f12: $9a
	add  a                                           ; $4f13: $87
	halt                                             ; $4f14: $76
	ld   a, b                                        ; $4f15: $78
	adc  b                                           ; $4f16: $88
	adc  b                                           ; $4f17: $88
	ld   [hl], a                                     ; $4f18: $77
	ld   [hl], a                                     ; $4f19: $77
	adc  b                                           ; $4f1a: $88
	adc  b                                           ; $4f1b: $88
	add  a                                           ; $4f1c: $87
	ld   a, b                                        ; $4f1d: $78
	adc  c                                           ; $4f1e: $89
	sbc  c                                           ; $4f1f: $99
	xor  c                                           ; $4f20: $a9
	halt                                             ; $4f21: $76
	ld   h, a                                        ; $4f22: $67
	ld   a, c                                        ; $4f23: $79
	sbc  c                                           ; $4f24: $99
	add  a                                           ; $4f25: $87
	ld   [hl], a                                     ; $4f26: $77
	ld   [hl], a                                     ; $4f27: $77
	adc  c                                           ; $4f28: $89
	adc  b                                           ; $4f29: $88
	adc  b                                           ; $4f2a: $88
	adc  b                                           ; $4f2b: $88
	sbc  c                                           ; $4f2c: $99
	xor  c                                           ; $4f2d: $a9
	add  [hl]                                        ; $4f2e: $86
	ld   h, a                                        ; $4f2f: $67
	ld   a, b                                        ; $4f30: $78
	adc  c                                           ; $4f31: $89
	add  a                                           ; $4f32: $87
	ld   [hl], a                                     ; $4f33: $77
	ld   [hl], a                                     ; $4f34: $77
	sbc  b                                           ; $4f35: $98
	adc  c                                           ; $4f36: $89
	adc  c                                           ; $4f37: $89
	adc  d                                           ; $4f38: $8a
	xor  b                                           ; $4f39: $a8
	add  a                                           ; $4f3a: $87
	ld   [hl], a                                     ; $4f3b: $77
	ld   [hl], a                                     ; $4f3c: $77
	adc  c                                           ; $4f3d: $89
	ld   a, b                                        ; $4f3e: $78
	add  a                                           ; $4f3f: $87
	ld   [hl], a                                     ; $4f40: $77
	add  a                                           ; $4f41: $87
	adc  b                                           ; $4f42: $88
	adc  b                                           ; $4f43: $88
	sbc  d                                           ; $4f44: $9a
	xor  c                                           ; $4f45: $a9
	sbc  c                                           ; $4f46: $99
	halt                                             ; $4f47: $76
	ld   [hl], a                                     ; $4f48: $77
	ld   a, c                                        ; $4f49: $79
	sbc  c                                           ; $4f4a: $99
	ld   [hl], a                                     ; $4f4b: $77
	ld   [hl], a                                     ; $4f4c: $77
	adc  b                                           ; $4f4d: $88
	adc  c                                           ; $4f4e: $89
	adc  c                                           ; $4f4f: $89
	sbc  d                                           ; $4f50: $9a
	sbc  c                                           ; $4f51: $99
	adc  b                                           ; $4f52: $88
	halt                                             ; $4f53: $76
	ld   a, c                                        ; $4f54: $79
	add  a                                           ; $4f55: $87
	sbc  b                                           ; $4f56: $98
	add  a                                           ; $4f57: $87
	ld   [hl], a                                     ; $4f58: $77
	ld   a, b                                        ; $4f59: $78
	sbc  c                                           ; $4f5a: $99
	sbc  c                                           ; $4f5b: $99
	sbc  c                                           ; $4f5c: $99
	sbc  c                                           ; $4f5d: $99
	add  a                                           ; $4f5e: $87
	ld   h, [hl]                                     ; $4f5f: $66
	ld   [hl], a                                     ; $4f60: $77
	adc  b                                           ; $4f61: $88
	adc  b                                           ; $4f62: $88
	add  a                                           ; $4f63: $87
	ld   [hl], a                                     ; $4f64: $77
	ld   a, b                                        ; $4f65: $78
	adc  b                                           ; $4f66: $88
	xor  c                                           ; $4f67: $a9
	xor  d                                           ; $4f68: $aa
	sub  a                                           ; $4f69: $97
	halt                                             ; $4f6a: $76
	ld   l, b                                        ; $4f6b: $68
	ld   a, b                                        ; $4f6c: $78
	sbc  c                                           ; $4f6d: $99
	sub  a                                           ; $4f6e: $97
	add  [hl]                                        ; $4f6f: $86
	ld   a, b                                        ; $4f70: $78
	ld   a, c                                        ; $4f71: $79
	sbc  d                                           ; $4f72: $9a
	sbc  c                                           ; $4f73: $99
	adc  b                                           ; $4f74: $88
	halt                                             ; $4f75: $76
	ld   h, a                                        ; $4f76: $67
	adc  c                                           ; $4f77: $89
	sbc  c                                           ; $4f78: $99
	add  a                                           ; $4f79: $87
	ld   [hl], a                                     ; $4f7a: $77
	ld   a, b                                        ; $4f7b: $78
	sbc  c                                           ; $4f7c: $99
	adc  d                                           ; $4f7d: $8a
	cp   c                                           ; $4f7e: $b9
	ld   [hl], a                                     ; $4f7f: $77
	ld   h, [hl]                                     ; $4f80: $66
	sub  a                                           ; $4f81: $97
	ld   a, c                                        ; $4f82: $79
	sub  a                                           ; $4f83: $97
	add  a                                           ; $4f84: $87
	ld   a, b                                        ; $4f85: $78
	ld   [hl], a                                     ; $4f86: $77
	sbc  b                                           ; $4f87: $98
	sbc  d                                           ; $4f88: $9a
	sbc  b                                           ; $4f89: $98
	sbc  c                                           ; $4f8a: $99
	halt                                             ; $4f8b: $76
	ld   a, b                                        ; $4f8c: $78
	add  a                                           ; $4f8d: $87
	sbc  c                                           ; $4f8e: $99
	ld   [hl], a                                     ; $4f8f: $77
	ld   [hl], a                                     ; $4f90: $77
	ld   a, b                                        ; $4f91: $78
	sbc  d                                           ; $4f92: $9a
	cp   c                                           ; $4f93: $b9
	sbc  b                                           ; $4f94: $98
	halt                                             ; $4f95: $76
	ld   h, a                                        ; $4f96: $67
	sbc  b                                           ; $4f97: $98
	ld   a, c                                        ; $4f98: $79
	sub  a                                           ; $4f99: $97
	ld   [hl], a                                     ; $4f9a: $77
	ld   [hl], a                                     ; $4f9b: $77
	sbc  b                                           ; $4f9c: $98
	sbc  d                                           ; $4f9d: $9a
	sbc  c                                           ; $4f9e: $99
	halt                                             ; $4f9f: $76
	ld   h, a                                        ; $4fa0: $67
	ld   [hl], a                                     ; $4fa1: $77
	sbc  c                                           ; $4fa2: $99
	sbc  b                                           ; $4fa3: $98
	add  a                                           ; $4fa4: $87
	ld   [hl], a                                     ; $4fa5: $77
	adc  c                                           ; $4fa6: $89
	adc  c                                           ; $4fa7: $89
	cp   c                                           ; $4fa8: $b9
	add  a                                           ; $4fa9: $87
	halt                                             ; $4faa: $76
	ld   h, a                                        ; $4fab: $67
	adc  c                                           ; $4fac: $89
	adc  c                                           ; $4fad: $89
	add  a                                           ; $4fae: $87
	ld   [hl], a                                     ; $4faf: $77
	ld   a, b                                        ; $4fb0: $78
	adc  d                                           ; $4fb1: $8a
	cp   e                                           ; $4fb2: $bb
	add  a                                           ; $4fb3: $87
	ld   [hl], l                                     ; $4fb4: $75
	ld   h, a                                        ; $4fb5: $67
	adc  b                                           ; $4fb6: $88
	sbc  c                                           ; $4fb7: $99
	adc  c                                           ; $4fb8: $89
	ld   [hl], a                                     ; $4fb9: $77
	ld   a, b                                        ; $4fba: $78
	adc  e                                           ; $4fbb: $8b
	jp   z, $7587                                    ; $4fbc: $ca $87 $75

	ld   d, a                                        ; $4fbf: $57
	adc  b                                           ; $4fc0: $88
	sbc  d                                           ; $4fc1: $9a
	add  a                                           ; $4fc2: $87
	ld   [hl], a                                     ; $4fc3: $77
	ld   a, c                                        ; $4fc4: $79
	xor  e                                           ; $4fc5: $ab
	cp   b                                           ; $4fc6: $b8
	add  a                                           ; $4fc7: $87
	ld   d, h                                        ; $4fc8: $54
	ld   a, b                                        ; $4fc9: $78
	ld   a, d                                        ; $4fca: $7a
	sbc  b                                           ; $4fcb: $98
	add  a                                           ; $4fcc: $87
	ld   [hl], a                                     ; $4fcd: $77
	ld   a, b                                        ; $4fce: $78
	xor  e                                           ; $4fcf: $ab
	sbc  b                                           ; $4fd0: $98
	halt                                             ; $4fd1: $76
	ld   d, [hl]                                     ; $4fd2: $56
	ld   a, b                                        ; $4fd3: $78
	sbc  c                                           ; $4fd4: $99
	sbc  b                                           ; $4fd5: $98
	ld   a, b                                        ; $4fd6: $78
	ld   [hl], a                                     ; $4fd7: $77
	sbc  d                                           ; $4fd8: $9a
	cp   e                                           ; $4fd9: $bb
	add  a                                           ; $4fda: $87
	ld   [hl], h                                     ; $4fdb: $74
	ld   d, a                                        ; $4fdc: $57
	adc  b                                           ; $4fdd: $88
	xor  d                                           ; $4fde: $aa
	adc  b                                           ; $4fdf: $88
	ld   [hl], a                                     ; $4fe0: $77
	ld   a, c                                        ; $4fe1: $79
	xor  h                                           ; $4fe2: $ac
	xor  b                                           ; $4fe3: $a8
	halt                                             ; $4fe4: $76
	ld   b, l                                        ; $4fe5: $45
	ld   [hl], a                                     ; $4fe6: $77
	sbc  d                                           ; $4fe7: $9a
	sbc  b                                           ; $4fe8: $98
	ld   a, b                                        ; $4fe9: $78
	halt                                             ; $4fea: $76
	xor  d                                           ; $4feb: $aa
	cp   c                                           ; $4fec: $b9
	and  a                                           ; $4fed: $a7
	ld   d, [hl]                                     ; $4fee: $56
	ld   d, [hl]                                     ; $4fef: $56
	adc  c                                           ; $4ff0: $89
	sbc  b                                           ; $4ff1: $98
	sbc  b                                           ; $4ff2: $98
	ld   a, b                                        ; $4ff3: $78
	adc  c                                           ; $4ff4: $89
	xor  d                                           ; $4ff5: $aa
	sbc  b                                           ; $4ff6: $98
	halt                                             ; $4ff7: $76
	ld   d, a                                        ; $4ff8: $57
	ld   [hl], a                                     ; $4ff9: $77
	sbc  c                                           ; $4ffa: $99
	adc  b                                           ; $4ffb: $88
	adc  b                                           ; $4ffc: $88
	adc  d                                           ; $4ffd: $8a
	sbc  b                                           ; $4ffe: $98
	sbc  c                                           ; $4fff: $99
	ld   h, a                                        ; $5000: $67
	ld   [hl], l                                     ; $5001: $75
	ld   a, b                                        ; $5002: $78
	sbc  b                                           ; $5003: $98
	sbc  c                                           ; $5004: $99
	ld   a, b                                        ; $5005: $78
	adc  c                                           ; $5006: $89
	sbc  c                                           ; $5007: $99
	sbc  b                                           ; $5008: $98
	halt                                             ; $5009: $76
	halt                                             ; $500a: $76
	ld   l, b                                        ; $500b: $68
	adc  b                                           ; $500c: $88
	adc  c                                           ; $500d: $89
	adc  c                                           ; $500e: $89
	xor  d                                           ; $500f: $aa
	sbc  b                                           ; $5010: $98
	adc  b                                           ; $5011: $88
	ld   h, [hl]                                     ; $5012: $66
	ld   [hl], a                                     ; $5013: $77
	ld   l, b                                        ; $5014: $68
	and  a                                           ; $5015: $a7
	sbc  c                                           ; $5016: $99
	sbc  b                                           ; $5017: $98
	xor  d                                           ; $5018: $aa
	sbc  c                                           ; $5019: $99
	sub  [hl]                                        ; $501a: $96
	ld   d, [hl]                                     ; $501b: $56
	ld   h, [hl]                                     ; $501c: $66
	ld   a, b                                        ; $501d: $78
	sbc  c                                           ; $501e: $99
	sbc  b                                           ; $501f: $98
	adc  c                                           ; $5020: $89
	sbc  b                                           ; $5021: $98
	sbc  c                                           ; $5022: $99
	ld   h, [hl]                                     ; $5023: $66
	halt                                             ; $5024: $76
	ld   h, a                                        ; $5025: $67
	sbc  b                                           ; $5026: $98
	sbc  b                                           ; $5027: $98
	adc  c                                           ; $5028: $89
	xor  d                                           ; $5029: $aa
	sbc  c                                           ; $502a: $99
	add  a                                           ; $502b: $87
	ld   h, [hl]                                     ; $502c: $66
	ld   h, [hl]                                     ; $502d: $66
	ld   a, b                                        ; $502e: $78
	adc  b                                           ; $502f: $88
	sbc  b                                           ; $5030: $98
	adc  d                                           ; $5031: $8a
	xor  d                                           ; $5032: $aa
	adc  b                                           ; $5033: $88
	halt                                             ; $5034: $76
	ld   d, [hl]                                     ; $5035: $56
	halt                                             ; $5036: $76
	adc  b                                           ; $5037: $88
	adc  b                                           ; $5038: $88
	adc  d                                           ; $5039: $8a
	sbc  d                                           ; $503a: $9a
	and  a                                           ; $503b: $a7
	sub  a                                           ; $503c: $97
	ld   d, [hl]                                     ; $503d: $56
	ld   h, [hl]                                     ; $503e: $66
	ld   l, b                                        ; $503f: $68
	adc  b                                           ; $5040: $88
	adc  c                                           ; $5041: $89
	xor  d                                           ; $5042: $aa
	xor  c                                           ; $5043: $a9
	adc  b                                           ; $5044: $88
	halt                                             ; $5045: $76
	ld   [hl], a                                     ; $5046: $77
	ld   h, a                                        ; $5047: $67
	sub  a                                           ; $5048: $97
	adc  d                                           ; $5049: $8a
	sbc  d                                           ; $504a: $9a
	xor  c                                           ; $504b: $a9
	sbc  b                                           ; $504c: $98
	add  [hl]                                        ; $504d: $86
	ld   [hl], a                                     ; $504e: $77
	ld   h, [hl]                                     ; $504f: $66
	adc  b                                           ; $5050: $88
	ld   a, c                                        ; $5051: $79
	sbc  c                                           ; $5052: $99
	xor  c                                           ; $5053: $a9
	sbc  c                                           ; $5054: $99
	add  [hl]                                        ; $5055: $86
	ld   [hl], a                                     ; $5056: $77
	ld   h, a                                        ; $5057: $67
	ld   [hl], a                                     ; $5058: $77
	adc  c                                           ; $5059: $89
	sbc  b                                           ; $505a: $98
	cp   d                                           ; $505b: $ba
	sbc  c                                           ; $505c: $99
	ld   [hl], a                                     ; $505d: $77
	ld   [hl], l                                     ; $505e: $75
	add  a                                           ; $505f: $87
	ld   a, b                                        ; $5060: $78
	adc  b                                           ; $5061: $88
	adc  e                                           ; $5062: $8b
	sbc  d                                           ; $5063: $9a
	xor  b                                           ; $5064: $a8
	add  a                                           ; $5065: $87
	ld   h, [hl]                                     ; $5066: $66
	ld   h, [hl]                                     ; $5067: $66
	ld   [hl], a                                     ; $5068: $77
	adc  b                                           ; $5069: $88
	sbc  c                                           ; $506a: $99
	xor  c                                           ; $506b: $a9
	sbc  c                                           ; $506c: $99
	add  [hl]                                        ; $506d: $86
	ld   [hl], a                                     ; $506e: $77
	ld   h, a                                        ; $506f: $67
	ld   [hl], a                                     ; $5070: $77
	sbc  b                                           ; $5071: $98
	adc  d                                           ; $5072: $8a
	xor  c                                           ; $5073: $a9
	sbc  c                                           ; $5074: $99
	ld   [hl], a                                     ; $5075: $77
	halt                                             ; $5076: $76
	ld   [hl], a                                     ; $5077: $77
	ld   [hl], a                                     ; $5078: $77
	adc  b                                           ; $5079: $88
	adc  c                                           ; $507a: $89
	xor  d                                           ; $507b: $aa
	sbc  b                                           ; $507c: $98
	add  [hl]                                        ; $507d: $86
	ld   [hl], a                                     ; $507e: $77
	ld   h, [hl]                                     ; $507f: $66
	add  a                                           ; $5080: $87
	sbc  d                                           ; $5081: $9a
	xor  c                                           ; $5082: $a9
	sbc  d                                           ; $5083: $9a
	adc  b                                           ; $5084: $88
	ld   [hl], a                                     ; $5085: $77
	halt                                             ; $5086: $76
	ld   [hl], a                                     ; $5087: $77
	ld   a, b                                        ; $5088: $78
	adc  c                                           ; $5089: $89
	sbc  c                                           ; $508a: $99
	adc  c                                           ; $508b: $89
	sub  [hl]                                        ; $508c: $96
	ld   a, b                                        ; $508d: $78
	ld   h, a                                        ; $508e: $67
	sub  a                                           ; $508f: $97
	adc  c                                           ; $5090: $89
	sbc  c                                           ; $5091: $99
	adc  c                                           ; $5092: $89
	adc  b                                           ; $5093: $88
	ld   [hl], a                                     ; $5094: $77
	halt                                             ; $5095: $76
	add  a                                           ; $5096: $87
	ld   l, b                                        ; $5097: $68
	adc  c                                           ; $5098: $89
	sbc  c                                           ; $5099: $99
	sbc  b                                           ; $509a: $98
	sub  a                                           ; $509b: $97
	ld   a, b                                        ; $509c: $78
	ld   [hl], a                                     ; $509d: $77
	ld   a, b                                        ; $509e: $78
	adc  b                                           ; $509f: $88
	sbc  c                                           ; $50a0: $99
	sbc  b                                           ; $50a1: $98
	sbc  b                                           ; $50a2: $98
	ld   a, b                                        ; $50a3: $78
	ld   [hl], a                                     ; $50a4: $77
	ld   [hl], a                                     ; $50a5: $77
	add  a                                           ; $50a6: $87
	sbc  c                                           ; $50a7: $99
	sbc  b                                           ; $50a8: $98
	adc  b                                           ; $50a9: $88
	adc  b                                           ; $50aa: $88
	ld   [hl], a                                     ; $50ab: $77
	add  [hl]                                        ; $50ac: $86
	ld   a, c                                        ; $50ad: $79
	adc  b                                           ; $50ae: $88
	xor  b                                           ; $50af: $a8
	adc  c                                           ; $50b0: $89
	adc  b                                           ; $50b1: $88
	add  a                                           ; $50b2: $87
	ld   [hl], a                                     ; $50b3: $77
	ld   [hl], a                                     ; $50b4: $77
	adc  c                                           ; $50b5: $89
	sbc  c                                           ; $50b6: $99
	adc  b                                           ; $50b7: $88
	add  a                                           ; $50b8: $87
	add  a                                           ; $50b9: $87
	ld   [hl], a                                     ; $50ba: $77
	adc  b                                           ; $50bb: $88
	ld   a, b                                        ; $50bc: $78
	sbc  b                                           ; $50bd: $98
	sbc  b                                           ; $50be: $98
	adc  c                                           ; $50bf: $89
	ld   [hl], a                                     ; $50c0: $77
	add  a                                           ; $50c1: $87
	ld   a, b                                        ; $50c2: $78
	ld   [hl], a                                     ; $50c3: $77
	sbc  b                                           ; $50c4: $98
	adc  c                                           ; $50c5: $89
	adc  b                                           ; $50c6: $88
	add  a                                           ; $50c7: $87
	ld   a, b                                        ; $50c8: $78
	add  a                                           ; $50c9: $87
	sbc  b                                           ; $50ca: $98
	ld   a, c                                        ; $50cb: $79
	sbc  b                                           ; $50cc: $98
	sbc  b                                           ; $50cd: $98
	ld   a, b                                        ; $50ce: $78
	ld   [hl], a                                     ; $50cf: $77
	adc  b                                           ; $50d0: $88
	ld   a, b                                        ; $50d1: $78
	sbc  c                                           ; $50d2: $99
	sbc  c                                           ; $50d3: $99
	sbc  b                                           ; $50d4: $98
	add  a                                           ; $50d5: $87
	ld   a, b                                        ; $50d6: $78
	ld   a, b                                        ; $50d7: $78
	adc  b                                           ; $50d8: $88
	adc  c                                           ; $50d9: $89
	adc  b                                           ; $50da: $88
	sbc  b                                           ; $50db: $98
	ld   a, b                                        ; $50dc: $78
	add  a                                           ; $50dd: $87
	add  a                                           ; $50de: $87
	ld   a, b                                        ; $50df: $78
	adc  c                                           ; $50e0: $89
	sbc  c                                           ; $50e1: $99
	adc  c                                           ; $50e2: $89
	add  a                                           ; $50e3: $87
	sub  a                                           ; $50e4: $97
	ld   a, c                                        ; $50e5: $79
	ld   [hl], a                                     ; $50e6: $77
	adc  b                                           ; $50e7: $88
	adc  c                                           ; $50e8: $89
	adc  b                                           ; $50e9: $88
	adc  b                                           ; $50ea: $88
	adc  b                                           ; $50eb: $88
	ld   [hl], a                                     ; $50ec: $77
	add  a                                           ; $50ed: $87
	sbc  b                                           ; $50ee: $98
	adc  c                                           ; $50ef: $89
	adc  b                                           ; $50f0: $88
	sbc  b                                           ; $50f1: $98
	ld   a, c                                        ; $50f2: $79
	add  a                                           ; $50f3: $87
	sbc  b                                           ; $50f4: $98
	ld   a, c                                        ; $50f5: $79
	sbc  b                                           ; $50f6: $98
	adc  c                                           ; $50f7: $89
	ld   a, b                                        ; $50f8: $78
	sub  a                                           ; $50f9: $97
	adc  b                                           ; $50fa: $88
	ld   a, b                                        ; $50fb: $78
	sbc  b                                           ; $50fc: $98
	sbc  c                                           ; $50fd: $99
	sbc  b                                           ; $50fe: $98
	adc  b                                           ; $50ff: $88
	add  a                                           ; $5100: $87
	adc  b                                           ; $5101: $88
	ld   [hl], a                                     ; $5102: $77
	sbc  b                                           ; $5103: $98
	adc  b                                           ; $5104: $88
	adc  b                                           ; $5105: $88
	adc  b                                           ; $5106: $88
	ld   a, b                                        ; $5107: $78
	add  a                                           ; $5108: $87
	adc  b                                           ; $5109: $88
	adc  b                                           ; $510a: $88
	sbc  b                                           ; $510b: $98
	adc  b                                           ; $510c: $88
	adc  c                                           ; $510d: $89
	adc  b                                           ; $510e: $88
	adc  b                                           ; $510f: $88
	adc  b                                           ; $5110: $88
	sbc  b                                           ; $5111: $98
	adc  c                                           ; $5112: $89
	ld   a, b                                        ; $5113: $78
	adc  b                                           ; $5114: $88
	adc  b                                           ; $5115: $88
	add  a                                           ; $5116: $87
	adc  b                                           ; $5117: $88
	adc  b                                           ; $5118: $88
	adc  b                                           ; $5119: $88
	adc  b                                           ; $511a: $88
	sbc  b                                           ; $511b: $98
	adc  b                                           ; $511c: $88
	adc  b                                           ; $511d: $88
	adc  b                                           ; $511e: $88
	ld   a, c                                        ; $511f: $79
	adc  b                                           ; $5120: $88
	adc  b                                           ; $5121: $88
	sbc  b                                           ; $5122: $98
	adc  c                                           ; $5123: $89
	adc  b                                           ; $5124: $88
	adc  b                                           ; $5125: $88
	adc  b                                           ; $5126: $88
	adc  b                                           ; $5127: $88
	adc  b                                           ; $5128: $88
	adc  b                                           ; $5129: $88
	adc  c                                           ; $512a: $89
	adc  b                                           ; $512b: $88
	sbc  b                                           ; $512c: $98
	adc  b                                           ; $512d: $88
	adc  b                                           ; $512e: $88
	adc  b                                           ; $512f: $88
	adc  b                                           ; $5130: $88
	adc  b                                           ; $5131: $88
	adc  b                                           ; $5132: $88
	adc  b                                           ; $5133: $88
	adc  c                                           ; $5134: $89
	adc  b                                           ; $5135: $88
	ld   a, c                                        ; $5136: $79
	ld   [hl], a                                     ; $5137: $77
	sub  a                                           ; $5138: $97
	adc  c                                           ; $5139: $89
	adc  b                                           ; $513a: $88
	adc  b                                           ; $513b: $88
	ld   a, b                                        ; $513c: $78
	ld   [hl], a                                     ; $513d: $77
	add  a                                           ; $513e: $87
	adc  c                                           ; $513f: $89
	adc  b                                           ; $5140: $88
	sbc  b                                           ; $5141: $98
	adc  c                                           ; $5142: $89
	adc  b                                           ; $5143: $88
	adc  b                                           ; $5144: $88
	adc  b                                           ; $5145: $88
	adc  b                                           ; $5146: $88
	adc  b                                           ; $5147: $88
	adc  b                                           ; $5148: $88

Call_0e9_5149:
	sbc  b                                           ; $5149: $98
	adc  b                                           ; $514a: $88
	adc  b                                           ; $514b: $88
	adc  b                                           ; $514c: $88
	adc  b                                           ; $514d: $88
	adc  b                                           ; $514e: $88
	adc  b                                           ; $514f: $88
	sbc  b                                           ; $5150: $98
	adc  c                                           ; $5151: $89
	adc  b                                           ; $5152: $88
	adc  b                                           ; $5153: $88
	ld   a, c                                        ; $5154: $79
	add  a                                           ; $5155: $87
	sbc  b                                           ; $5156: $98
	ld   a, c                                        ; $5157: $79
	adc  b                                           ; $5158: $88
	adc  b                                           ; $5159: $88
	adc  c                                           ; $515a: $89
	add  a                                           ; $515b: $87
	adc  b                                           ; $515c: $88
	adc  c                                           ; $515d: $89
	adc  b                                           ; $515e: $88
	adc  b                                           ; $515f: $88
	adc  b                                           ; $5160: $88
	adc  b                                           ; $5161: $88
	adc  b                                           ; $5162: $88
	adc  c                                           ; $5163: $89
	adc  b                                           ; $5164: $88
	adc  b                                           ; $5165: $88
	adc  b                                           ; $5166: $88
	adc  b                                           ; $5167: $88
	adc  b                                           ; $5168: $88
	adc  b                                           ; $5169: $88
	adc  b                                           ; $516a: $88
	adc  b                                           ; $516b: $88
	adc  b                                           ; $516c: $88
	adc  b                                           ; $516d: $88
	adc  b                                           ; $516e: $88
	adc  b                                           ; $516f: $88
	adc  b                                           ; $5170: $88
	adc  b                                           ; $5171: $88
	adc  b                                           ; $5172: $88
	adc  b                                           ; $5173: $88
	adc  b                                           ; $5174: $88
	sbc  b                                           ; $5175: $98
	adc  b                                           ; $5176: $88
	adc  b                                           ; $5177: $88
	adc  b                                           ; $5178: $88
	adc  b                                           ; $5179: $88
	adc  b                                           ; $517a: $88
	sbc  b                                           ; $517b: $98
	adc  b                                           ; $517c: $88
	adc  b                                           ; $517d: $88
	adc  b                                           ; $517e: $88
	adc  b                                           ; $517f: $88
	adc  b                                           ; $5180: $88
	adc  b                                           ; $5181: $88
	adc  b                                           ; $5182: $88
	adc  b                                           ; $5183: $88
	adc  b                                           ; $5184: $88
	adc  b                                           ; $5185: $88
	adc  b                                           ; $5186: $88
	adc  b                                           ; $5187: $88
	adc  b                                           ; $5188: $88
	adc  b                                           ; $5189: $88
	adc  b                                           ; $518a: $88
	adc  b                                           ; $518b: $88
	ld   a, b                                        ; $518c: $78
	adc  b                                           ; $518d: $88
	sbc  b                                           ; $518e: $98
	adc  b                                           ; $518f: $88
	adc  b                                           ; $5190: $88
	adc  b                                           ; $5191: $88
	adc  b                                           ; $5192: $88
	adc  b                                           ; $5193: $88
	adc  b                                           ; $5194: $88
	adc  b                                           ; $5195: $88
	adc  b                                           ; $5196: $88
	adc  b                                           ; $5197: $88
	sbc  b                                           ; $5198: $98
	adc  b                                           ; $5199: $88
	adc  b                                           ; $519a: $88
	adc  b                                           ; $519b: $88
	adc  b                                           ; $519c: $88
	add  a                                           ; $519d: $87
	adc  b                                           ; $519e: $88
	ld   a, b                                        ; $519f: $78
	add  a                                           ; $51a0: $87
	adc  b                                           ; $51a1: $88
	adc  b                                           ; $51a2: $88
	sbc  b                                           ; $51a3: $98
	adc  c                                           ; $51a4: $89
	ld   a, b                                        ; $51a5: $78
	add  a                                           ; $51a6: $87
	adc  b                                           ; $51a7: $88
	adc  b                                           ; $51a8: $88
	adc  b                                           ; $51a9: $88
	sbc  b                                           ; $51aa: $98
	adc  b                                           ; $51ab: $88
	adc  b                                           ; $51ac: $88
	adc  b                                           ; $51ad: $88
	adc  b                                           ; $51ae: $88
	adc  b                                           ; $51af: $88
	adc  b                                           ; $51b0: $88
	sbc  b                                           ; $51b1: $98
	adc  b                                           ; $51b2: $88
	adc  b                                           ; $51b3: $88
	adc  b                                           ; $51b4: $88
	adc  b                                           ; $51b5: $88
	adc  b                                           ; $51b6: $88
	adc  b                                           ; $51b7: $88
	adc  b                                           ; $51b8: $88
	adc  b                                           ; $51b9: $88
	adc  b                                           ; $51ba: $88
	adc  b                                           ; $51bb: $88
	adc  b                                           ; $51bc: $88
	adc  b                                           ; $51bd: $88
	sbc  b                                           ; $51be: $98
	adc  c                                           ; $51bf: $89
	adc  b                                           ; $51c0: $88
	adc  b                                           ; $51c1: $88
	adc  b                                           ; $51c2: $88
	adc  b                                           ; $51c3: $88
	adc  b                                           ; $51c4: $88
	adc  b                                           ; $51c5: $88
	adc  b                                           ; $51c6: $88
	adc  b                                           ; $51c7: $88
	adc  b                                           ; $51c8: $88
	adc  b                                           ; $51c9: $88
	adc  b                                           ; $51ca: $88
	adc  b                                           ; $51cb: $88
	adc  b                                           ; $51cc: $88
	adc  b                                           ; $51cd: $88
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
	adc  c                                           ; $51f8: $89
	adc  b                                           ; $51f9: $88
	adc  b                                           ; $51fa: $88
	adc  b                                           ; $51fb: $88
	adc  b                                           ; $51fc: $88
	adc  b                                           ; $51fd: $88
	adc  c                                           ; $51fe: $89
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

Call_0e9_536b:
	adc  b                                           ; $536b: $88
	adc  b                                           ; $536c: $88
	adc  b                                           ; $536d: $88
	adc  b                                           ; $536e: $88
	adc  b                                           ; $536f: $88

jr_0e9_5370:
	adc  b                                           ; $5370: $88
	adc  b                                           ; $5371: $88
	ld   a, b                                        ; $5372: $78
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
	add  a                                           ; $5389: $87
	adc  b                                           ; $538a: $88
	adc  b                                           ; $538b: $88
	ld   a, b                                        ; $538c: $78
	adc  b                                           ; $538d: $88
	adc  b                                           ; $538e: $88
	adc  c                                           ; $538f: $89
	adc  c                                           ; $5390: $89
	adc  b                                           ; $5391: $88
	add  a                                           ; $5392: $87
	adc  b                                           ; $5393: $88
	ld   l, c                                        ; $5394: $69
	ld   l, b                                        ; $5395: $68
	add  a                                           ; $5396: $87
	add  a                                           ; $5397: $87
	sub  a                                           ; $5398: $97
	sbc  b                                           ; $5399: $98
	adc  c                                           ; $539a: $89
	adc  c                                           ; $539b: $89
	ld   a, c                                        ; $539c: $79
	adc  b                                           ; $539d: $88
	add  a                                           ; $539e: $87
	adc  b                                           ; $539f: $88
	adc  b                                           ; $53a0: $88
	adc  b                                           ; $53a1: $88
	adc  c                                           ; $53a2: $89
	adc  b                                           ; $53a3: $88
	adc  b                                           ; $53a4: $88
	ld   a, b                                        ; $53a5: $78
	add  a                                           ; $53a6: $87
	ld   [hl], a                                     ; $53a7: $77
	ld   a, b                                        ; $53a8: $78
	adc  b                                           ; $53a9: $88
	sbc  c                                           ; $53aa: $99
	sbc  c                                           ; $53ab: $99
	adc  b                                           ; $53ac: $88
	ld   a, d                                        ; $53ad: $7a
	ld   [hl], a                                     ; $53ae: $77
	sub  l                                           ; $53af: $95
	and  [hl]                                        ; $53b0: $a6
	ld   a, c                                        ; $53b1: $79
	ld   l, c                                        ; $53b2: $69
	ld   a, c                                        ; $53b3: $79
	ld   a, c                                        ; $53b4: $79
	adc  b                                           ; $53b5: $88
	and  a                                           ; $53b6: $a7
	sbc  b                                           ; $53b7: $98
	sbc  b                                           ; $53b8: $98
	ld   a, c                                        ; $53b9: $79
	adc  b                                           ; $53ba: $88
	add  a                                           ; $53bb: $87
	ld   a, b                                        ; $53bc: $78
	ld   [hl], a                                     ; $53bd: $77
	sub  a                                           ; $53be: $97
	ld   a, b                                        ; $53bf: $78
	ld   a, b                                        ; $53c0: $78
	ld   a, c                                        ; $53c1: $79
	sbc  c                                           ; $53c2: $99
	sbc  c                                           ; $53c3: $99
	sbc  c                                           ; $53c4: $99
	sbc  b                                           ; $53c5: $98
	ld   a, b                                        ; $53c6: $78
	add  [hl]                                        ; $53c7: $86
	sub  l                                           ; $53c8: $95
	ld   a, b                                        ; $53c9: $78
	ld   e, c                                        ; $53ca: $59
	ld   l, b                                        ; $53cb: $68
	adc  c                                           ; $53cc: $89
	sbc  b                                           ; $53cd: $98
	xor  b                                           ; $53ce: $a8
	cp   b                                           ; $53cf: $b8
	xor  c                                           ; $53d0: $a9
	adc  b                                           ; $53d1: $88
	ld   a, b                                        ; $53d2: $78
	ld   e, c                                        ; $53d3: $59
	ld   d, a                                        ; $53d4: $57
	sub  h                                           ; $53d5: $94
	and  [hl]                                        ; $53d6: $a6
	adc  b                                           ; $53d7: $88
	sbc  d                                           ; $53d8: $9a
	adc  e                                           ; $53d9: $8b
	ld   a, d                                        ; $53da: $7a
	adc  c                                           ; $53db: $89
	and  a                                           ; $53dc: $a7
	add  a                                           ; $53dd: $87
	add  l                                           ; $53de: $85
	and  h                                           ; $53df: $a4
	ld   a, c                                        ; $53e0: $79
	ld   c, e                                        ; $53e1: $4b
	ld   e, c                                        ; $53e2: $59
	adc  b                                           ; $53e3: $88
	xor  b                                           ; $53e4: $a8
	or   a                                           ; $53e5: $b7
	cp   b                                           ; $53e6: $b8
	sbc  c                                           ; $53e7: $99
	ld   a, b                                        ; $53e8: $78
	adc  b                                           ; $53e9: $88
	ld   e, e                                        ; $53ea: $5b
	jr   c, jr_0e9_5370                              ; $53eb: $38 $83

	or   h                                           ; $53ed: $b4
	and  a                                           ; $53ee: $a7
	sbc  c                                           ; $53ef: $99
	sbc  e                                           ; $53f0: $9b
	ld   a, h                                        ; $53f1: $7c
	ld   a, d                                        ; $53f2: $7a
	sub  a                                           ; $53f3: $97
	sub  [hl]                                        ; $53f4: $96
	and  h                                           ; $53f5: $a4
	sub  [hl]                                        ; $53f6: $96
	ld   c, e                                        ; $53f7: $4b
	ld   a, [hl+]                                    ; $53f8: $2a
	ld   h, a                                        ; $53f9: $67
	and  a                                           ; $53fa: $a7
	or   [hl]                                        ; $53fb: $b6
	rst  $10                                         ; $53fc: $d7
	cp   d                                           ; $53fd: $ba
	adc  h                                           ; $53fe: $8c
	ld   l, c                                        ; $53ff: $69
	ld   a, b                                        ; $5400: $78
	ld   c, c                                        ; $5401: $49
	ld   d, h                                        ; $5402: $54
	or   c                                           ; $5403: $b1
	or   l                                           ; $5404: $b5
	ld   a, c                                        ; $5405: $79
	ld   a, e                                        ; $5406: $7b
	ld   a, l                                        ; $5407: $7d
	ld   a, h                                        ; $5408: $7c
	sbc  c                                           ; $5409: $99
	or   [hl]                                        ; $540a: $b6
	adc  c                                           ; $540b: $89
	ld   h, l                                        ; $540c: $65
	or   c                                           ; $540d: $b1
	and  l                                           ; $540e: $a5
	dec  sp                                          ; $540f: $3b
	dec  sp                                          ; $5410: $3b
	ld   a, d                                        ; $5411: $7a
	sbc  e                                           ; $5412: $9b
	xor  c                                           ; $5413: $a9
	rst  $20                                         ; $5414: $e7
	cp   b                                           ; $5415: $b8
	ld   l, d                                        ; $5416: $6a
	ld   h, e                                        ; $5417: $63
	pop  bc                                          ; $5418: $c1
	ld   l, c                                        ; $5419: $69
	inc  e                                           ; $541a: $1c
	ld   c, c                                        ; $541b: $49
	sbc  c                                           ; $541c: $99
	sbc  d                                           ; $541d: $9a
	ret  z                                           ; $541e: $c8

	add  sp, -$48                                    ; $541f: $e8 $b8
	ld   e, e                                        ; $5421: $5b
	ld   b, l                                        ; $5422: $45
	or   c                                           ; $5423: $b1
	sub  [hl]                                        ; $5424: $96
	dec  hl                                          ; $5425: $2b
	ld   c, d                                        ; $5426: $4a
	adc  e                                           ; $5427: $8b
	ld   a, h                                        ; $5428: $7c
	cp   c                                           ; $5429: $b9
	rst  $30                                         ; $542a: $f7
	add  $7a                                         ; $542b: $c6 $7a
	ld   a, [hl+]                                    ; $542d: $2a
	inc  sp                                          ; $542e: $33
	and  c                                           ; $542f: $a1
	add  [hl]                                        ; $5430: $86
	ld   a, b                                        ; $5431: $78
	xor  d                                           ; $5432: $aa
	sbc  a                                           ; $5433: $9f
	ld   a, [hl]                                     ; $5434: $7e
	sbc  b                                           ; $5435: $98
	sub  l                                           ; $5436: $95
	or   c                                           ; $5437: $b1
	and  e                                           ; $5438: $a3
	ld   a, [hl+]                                    ; $5439: $2a
	add  hl, de                                      ; $543a: $19
	ld   d, a                                        ; $543b: $57
	adc  d                                           ; $543c: $8a
	ret  z                                           ; $543d: $c8

	ld   hl, sp-$25                                  ; $543e: $f8 $db
	ld   a, d                                        ; $5440: $7a
	ld   e, d                                        ; $5441: $5a
	add  hl, de                                      ; $5442: $19
	ld   b, c                                        ; $5443: $41
	or   c                                           ; $5444: $b1
	sub  [hl]                                        ; $5445: $96
	ld   a, c                                        ; $5446: $79
	sbc  l                                           ; $5447: $9d
	adc  a                                           ; $5448: $8f
	sbc  [hl]                                        ; $5449: $9e
	rst  ToBoot                                         ; $544a: $c7
	sub  [hl]                                        ; $544b: $96
	and  c                                           ; $544c: $a1
	and  c                                           ; $544d: $a1
	ld   a, [hl+]                                    ; $544e: $2a
	dec  de                                          ; $544f: $1b
	ld   c, c                                        ; $5450: $49
	adc  d                                           ; $5451: $8a
	cp   d                                           ; $5452: $ba
	ld   sp, hl                                      ; $5453: $f9
	ld   sp, hl                                      ; $5454: $f9
	sbc  b                                           ; $5455: $98
	add  [hl]                                        ; $5456: $86
	ld   a, [hl+]                                    ; $5457: $2a
	add  hl, de                                      ; $5458: $19
	ld   [hl+], a                                    ; $5459: $22
	and  d                                           ; $545a: $a2
	or   [hl]                                        ; $545b: $b6
	reti                                             ; $545c: $d9


	cp   $bf                                         ; $545d: $fe $bf
	ld   a, e                                        ; $545f: $7b
	ld   a, d                                        ; $5460: $7a
	add  hl, de                                      ; $5461: $19
	ld   de, $b3a1                                   ; $5462: $11 $a1 $b3
	ld   a, c                                        ; $5465: $79
	sbc  h                                           ; $5466: $9c
	cp   a                                           ; $5467: $bf
	sbc  a                                           ; $5468: $9f
	xor  b                                           ; $5469: $a8
	sbc  b                                           ; $546a: $98
	jr   z, jr_0e9_54be                              ; $546b: $28 $51

	or   c                                           ; $546d: $b1
	halt                                             ; $546e: $76
	ld   c, e                                        ; $546f: $4b
	adc  l                                           ; $5470: $8d
	xor  a                                           ; $5471: $af
	cp   [hl]                                        ; $5472: $be
	rst  ToBoot                                         ; $5473: $c7
	xor  b                                           ; $5474: $a8
	scf                                              ; $5475: $37
	ld   d, c                                        ; $5476: $51
	or   c                                           ; $5477: $b1
	ld   h, a                                        ; $5478: $67
	ld   a, [hl-]                                    ; $5479: $3a
	adc  l                                           ; $547a: $8d
	xor  a                                           ; $547b: $af
	xor  a                                           ; $547c: $af
	add  $c7                                         ; $547d: $c6 $c7
	add  hl, hl                                      ; $547f: $29
	ld   de, $85a1                                   ; $5480: $11 $a1 $85
	ld   c, e                                        ; $5483: $4b
	xor  h                                           ; $5484: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5485: $cf

Call_0e9_5486:
	xor  a                                           ; $5486: $af
	sbc  b                                           ; $5487: $98
	call nc, $1559                                   ; $5488: $d4 $59 $15
	ld   d, c                                        ; $548b: $51
	sub  e                                           ; $548c: $93
	ld   l, e                                        ; $548d: $6b
	set  7, [hl]                                     ; $548e: $cb $fe
	cp   a                                           ; $5490: $bf
	ld   e, h                                        ; $5491: $5c
	and  c                                           ; $5492: $a1
	sub  h                                           ; $5493: $94
	add  hl, de                                      ; $5494: $19
	inc  de                                          ; $5495: $13
	sub  d                                           ; $5496: $92
	xor  e                                           ; $5497: $ab
	xor  [hl]                                        ; $5498: $ae
	ld   a, [$8ef9]                                  ; $5499: $fa $f9 $8e
	dec  [hl]                                        ; $549c: $35
	add  c                                           ; $549d: $81
	ld   b, l                                        ; $549e: $45
	jr   jr_0e9_54e6                                 ; $549f: $18 $45

	jp   c, $cebf                                    ; $54a1: $da $bf $ce

	and  $d7                                         ; $54a4: $e6 $d7
	add  hl, sp                                      ; $54a6: $39
	ld   de, $5771                                   ; $54a7: $11 $71 $57
	dec  sp                                          ; $54aa: $3b
	set  7, a                                        ; $54ab: $cb $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54ad: $cf
	adc  d                                           ; $54ae: $8a
	or   d                                           ; $54af: $b2
	add  h                                           ; $54b0: $84
	rla                                              ; $54b1: $17
	ld   [de], a                                     ; $54b2: $12
	add  e                                           ; $54b3: $83
	adc  h                                           ; $54b4: $8c
	xor  a                                           ; $54b5: $af
	db   $fc                                         ; $54b6: $fc

Call_0e9_54b7:
	ld   sp, hl                                      ; $54b7: $f9
	xor  h                                           ; $54b8: $ac
	scf                                              ; $54b9: $37
	ld   h, c                                        ; $54ba: $61
	ld   h, d                                        ; $54bb: $62
	rla                                              ; $54bc: $17
	ld   b, [hl]                                     ; $54bd: $46

jr_0e9_54be:
	cp   d                                           ; $54be: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54bf: $cf
	adc  $d7                                         ; $54c0: $ce $d7
	sub  $49                                         ; $54c2: $d6 $49
	inc  de                                          ; $54c4: $13
	ld   d, c                                        ; $54c5: $51
	ld   h, l                                        ; $54c6: $65
	ld   c, d                                        ; $54c7: $4a
	cp   e                                           ; $54c8: $bb
	cp   $df                                         ; $54c9: $fe $df
	adc  h                                           ; $54cb: $8c
	and  e                                           ; $54cc: $a3
	and  d                                           ; $54cd: $a2
	rla                                              ; $54ce: $17
	inc  d                                           ; $54cf: $14
	ld   h, e                                        ; $54d0: $63
	adc  e                                           ; $54d1: $8b
	xor  [hl]                                        ; $54d2: $ae
	db   $fd                                         ; $54d3: $fd
	ld   [$38bb], a                                  ; $54d4: $ea $bb $38
	ld   d, c                                        ; $54d7: $51
	ld   [hl], c                                     ; $54d8: $71
	ld   d, $37                                      ; $54d9: $16 $37
	xor  e                                           ; $54db: $ab
	rst  JumpTable                                         ; $54dc: $df
	rst  JumpTable                                         ; $54dd: $df
	ret                                              ; $54de: $c9


	push de                                          ; $54df: $d5
	ld   l, b                                        ; $54e0: $68
	dec  d                                           ; $54e1: $15
	ld   sp, $5a63                                   ; $54e2: $31 $63 $5a
	cp   h                                           ; $54e5: $bc

jr_0e9_54e6:
	db   $fd                                         ; $54e6: $fd
	db   $ed                                         ; $54e7: $ed
	sbc  l                                           ; $54e8: $9d
	sub  h                                           ; $54e9: $94
	sub  c                                           ; $54ea: $91
	ld   h, $15                                      ; $54eb: $26 $15
	ld   b, h                                        ; $54ed: $44
	sbc  d                                           ; $54ee: $9a
	cp   [hl]                                        ; $54ef: $be
	db   $fd                                         ; $54f0: $fd
	ld   sp, hl                                      ; $54f1: $f9
	xor  h                                           ; $54f2: $ac
	ld   d, a                                        ; $54f3: $57
	ld   h, c                                        ; $54f4: $61
	ld   [hl], c                                     ; $54f5: $71
	rla                                              ; $54f6: $17
	daa                                              ; $54f7: $27
	sbc  d                                           ; $54f8: $9a
	rst  JumpTable                                         ; $54f9: $df
	adc  $c9                                         ; $54fa: $ce $c9
	ret  z                                           ; $54fc: $c8

	ld   c, c                                        ; $54fd: $49
	ld   [de], a                                     ; $54fe: $12
	ld   h, c                                        ; $54ff: $61
	ld   h, h                                        ; $5500: $64
	ld   c, c                                        ; $5501: $49
	xor  e                                           ; $5502: $ab
	rst  $28                                         ; $5503: $ef
	rst  JumpTable                                         ; $5504: $df
	xor  e                                           ; $5505: $ab
	or   l                                           ; $5506: $b5
	ld   l, b                                        ; $5507: $68
	ld   d, $21                                      ; $5508: $16 $21
	add  c                                           ; $550a: $81
	ld   a, d                                        ; $550b: $7a
	xor  h                                           ; $550c: $ac
	db   $fd                                         ; $550d: $fd
	xor  $9b                                         ; $550e: $ee $9b
	or   l                                           ; $5510: $b5
	halt                                             ; $5511: $76
	jr   jr_0e9_5526                                 ; $5512: $18 $12

	ld   h, c                                        ; $5514: $61
	sbc  b                                           ; $5515: $98
	xor  l                                           ; $5516: $ad
	db   $fc                                         ; $5517: $fc
	db   $fc                                         ; $5518: $fc
	xor  e                                           ; $5519: $ab
	sub  l                                           ; $551a: $95
	ld   [hl], l                                     ; $551b: $75
	jr   @+$16                                       ; $551c: $18 $14

	ld   d, d                                        ; $551e: $52
	sub  a                                           ; $551f: $97
	call z, $fcfc                                    ; $5520: $cc $fc $fc
	sbc  e                                           ; $5523: $9b
	and  l                                           ; $5524: $a5
	ld   h, [hl]                                     ; $5525: $66

jr_0e9_5526:
	rla                                              ; $5526: $17
	inc  de                                          ; $5527: $13
	ld   d, d                                        ; $5528: $52
	sub  a                                           ; $5529: $97
	set  7, l                                        ; $552a: $cb $fd
	db   $fd                                         ; $552c: $fd
	xor  d                                           ; $552d: $aa
	and  [hl]                                        ; $552e: $a6
	ld   c, b                                        ; $552f: $48
	dec  d                                           ; $5530: $15
	ld   hl, $9771                                   ; $5531: $21 $71 $97
	xor  h                                           ; $5534: $ac
	rst  $28                                         ; $5535: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5536: $cf
	cp   e                                           ; $5537: $bb
	xor  b                                           ; $5538: $a8
	ld   b, a                                        ; $5539: $47
	ld   sp, $6461                                   ; $553a: $31 $61 $64
	ld   e, b                                        ; $553d: $58
	adc  h                                           ; $553e: $8c
	cp   a                                           ; $553f: $bf
	rst  JumpTable                                         ; $5540: $df
	ld   [$74a9], a                                  ; $5541: $ea $a9 $74
	ld   [hl], c                                     ; $5544: $71
	inc  [hl]                                        ; $5545: $34
	ld   d, $37                                      ; $5546: $16 $37
	ld   a, d                                        ; $5548: $7a
	cp   e                                           ; $5549: $bb
	db   $fc                                         ; $554a: $fc
	ei                                               ; $554b: $fb
	cp   c                                           ; $554c: $b9
	add  a                                           ; $554d: $87
	scf                                              ; $554e: $37
	inc  d                                           ; $554f: $14
	ld   b, c                                        ; $5550: $41
	ld   [hl], e                                     ; $5551: $73
	ld   a, c                                        ; $5552: $79
	xor  h                                           ; $5553: $ac
	adc  $de                                         ; $5554: $ce $de
	res  1, b                                        ; $5556: $cb $88
	sub  d                                           ; $5558: $92
	ld   [hl], e                                     ; $5559: $73
	rla                                              ; $555a: $17
	ld   d, $56                                      ; $555b: $16 $56
	xor  b                                           ; $555d: $a8
	cp   e                                           ; $555e: $bb
	db   $ed                                         ; $555f: $ed
	db   $eb                                         ; $5560: $eb
	xor  d                                           ; $5561: $aa
	ld   l, d                                        ; $5562: $6a
	ld   b, h                                        ; $5563: $44
	ld   [hl], c                                     ; $5564: $71
	ld   h, e                                        ; $5565: $63
	scf                                              ; $5566: $37
	ld   c, c                                        ; $5567: $49
	adc  e                                           ; $5568: $8b
	call z, $cbdc                                    ; $5569: $cc $dc $cb
	and  a                                           ; $556c: $a7
	adc  c                                           ; $556d: $89
	daa                                              ; $556e: $27
	ld   d, c                                        ; $556f: $51
	sub  c                                           ; $5570: $91
	ld   h, [hl]                                     ; $5571: $66
	ld   e, d                                        ; $5572: $5a
	ld   a, e                                        ; $5573: $7b
	xor  e                                           ; $5574: $ab

Jump_0e9_5575:
	cp   h                                           ; $5575: $bc
	cp   e                                           ; $5576: $bb
	or   [hl]                                        ; $5577: $b6
	xor  c                                           ; $5578: $a9
	add  hl, hl                                      ; $5579: $29
	ld   b, d                                        ; $557a: $42
	sub  c                                           ; $557b: $91
	halt                                             ; $557c: $76
	ld   l, c                                        ; $557d: $69
	ld   a, e                                        ; $557e: $7b
	sbc  e                                           ; $557f: $9b
	res  7, e                                        ; $5580: $cb $bb
	or   [hl]                                        ; $5582: $b6
	sbc  d                                           ; $5583: $9a
	add  hl, sp                                      ; $5584: $39
	ld   [hl], c                                     ; $5585: $71
	sub  d                                           ; $5586: $92
	ld   e, b                                        ; $5587: $58
	ld   c, d                                        ; $5588: $4a
	ld   l, c                                        ; $5589: $69
	xor  c                                           ; $558a: $a9
	res  7, h                                        ; $558b: $cb $bc
	xor  d                                           ; $558d: $aa
	ld   a, c                                        ; $558e: $79
	add  l                                           ; $558f: $85
	sub  h                                           ; $5590: $94
	ld   b, a                                        ; $5591: $47
	jr   z, jr_0e9_55ea                              ; $5592: $28 $56

	sub  [hl]                                        ; $5594: $96

Call_0e9_5595:
	cp   b                                           ; $5595: $b8

Call_0e9_5596:
	cp   e                                           ; $5596: $bb
	xor  e                                           ; $5597: $ab
	cp   e                                           ; $5598: $bb
	sbc  b                                           ; $5599: $98
	adc  c                                           ; $559a: $89
	ld   h, a                                        ; $559b: $67
	ld   h, e                                        ; $559c: $63
	ld   [hl], e                                     ; $559d: $73
	ld   h, [hl]                                     ; $559e: $66
	ld   l, b                                        ; $559f: $68
	ld   l, d                                        ; $55a0: $6a
	adc  d                                           ; $55a1: $8a
	cp   c                                           ; $55a2: $b9
	cp   e                                           ; $55a3: $bb
	cp   d                                           ; $55a4: $ba
	sub  a                                           ; $55a5: $97
	adc  c                                           ; $55a6: $89

Call_0e9_55a7:
	ld   c, b                                        ; $55a7: $48
	ld   b, l                                        ; $55a8: $45
	ld   [hl], h                                     ; $55a9: $74
	ld   [hl], l                                     ; $55aa: $75
	add  a                                           ; $55ab: $87
	adc  d                                           ; $55ac: $8a
	adc  e                                           ; $55ad: $8b
	sbc  d                                           ; $55ae: $9a
	xor  e                                           ; $55af: $ab
	xor  c                                           ; $55b0: $a9
	sub  [hl]                                        ; $55b1: $96
	sub  a                                           ; $55b2: $97
	ld   c, c                                        ; $55b3: $49
	ld   b, [hl]                                     ; $55b4: $46
	ld   [hl], h                                     ; $55b5: $74
	add  [hl]                                        ; $55b6: $86
	sub  a                                           ; $55b7: $97
	adc  d                                           ; $55b8: $8a
	adc  d                                           ; $55b9: $8a
	sbc  c                                           ; $55ba: $99
	xor  c                                           ; $55bb: $a9
	xor  d                                           ; $55bc: $aa
	add  [hl]                                        ; $55bd: $86
	adc  c                                           ; $55be: $89
	ld   c, c                                        ; $55bf: $49
	ld   [hl], h                                     ; $55c0: $74
	sub  l                                           ; $55c1: $95
	ld   [hl], a                                     ; $55c2: $77
	ld   a, b                                        ; $55c3: $78
	ld   a, d                                        ; $55c4: $7a
	ld   a, d                                        ; $55c5: $7a
	xor  b                                           ; $55c6: $a8
	cp   c                                           ; $55c7: $b9
	sbc  c                                           ; $55c8: $99
	sbc  b                                           ; $55c9: $98
	ld   l, c                                        ; $55ca: $69
	halt                                             ; $55cb: $76
	and  [hl]                                        ; $55cc: $a6
	ld   l, b                                        ; $55cd: $68
	ld   e, b                                        ; $55ce: $58
	ld   [hl], a                                     ; $55cf: $77
	adc  b                                           ; $55d0: $88
	sub  a                                           ; $55d1: $97
	sbc  b                                           ; $55d2: $98
	adc  d                                           ; $55d3: $8a
	sbc  d                                           ; $55d4: $9a
	sbc  b                                           ; $55d5: $98
	sub  a                                           ; $55d6: $97
	adc  c                                           ; $55d7: $89
	ld   [hl], a                                     ; $55d8: $77
	sub  [hl]                                        ; $55d9: $96
	add  a                                           ; $55da: $87
	ld   l, b                                        ; $55db: $68
	ld   l, b                                        ; $55dc: $68
	ld   a, b                                        ; $55dd: $78
	adc  c                                           ; $55de: $89
	sbc  b                                           ; $55df: $98
	xor  c                                           ; $55e0: $a9
	sbc  c                                           ; $55e1: $99
	sbc  c                                           ; $55e2: $99
	adc  b                                           ; $55e3: $88
	adc  b                                           ; $55e4: $88
	add  a                                           ; $55e5: $87
	add  a                                           ; $55e6: $87
	ld   a, b                                        ; $55e7: $78
	ld   l, b                                        ; $55e8: $68
	ld   a, b                                        ; $55e9: $78

jr_0e9_55ea:
	ld   a, b                                        ; $55ea: $78
	adc  b                                           ; $55eb: $88
	sbc  b                                           ; $55ec: $98
	adc  c                                           ; $55ed: $89
	adc  b                                           ; $55ee: $88
	sbc  c                                           ; $55ef: $99
	adc  c                                           ; $55f0: $89
	adc  b                                           ; $55f1: $88
	sbc  b                                           ; $55f2: $98
	ld   a, b                                        ; $55f3: $78
	ld   [hl], a                                     ; $55f4: $77
	add  a                                           ; $55f5: $87
	ld   [hl], a                                     ; $55f6: $77
	add  a                                           ; $55f7: $87
	adc  b                                           ; $55f8: $88
	adc  b                                           ; $55f9: $88
	ld   a, b                                        ; $55fa: $78
	adc  b                                           ; $55fb: $88
	adc  b                                           ; $55fc: $88
	adc  b                                           ; $55fd: $88
	sbc  b                                           ; $55fe: $98
	adc  b                                           ; $55ff: $88
	adc  b                                           ; $5600: $88
	adc  b                                           ; $5601: $88
	ld   a, b                                        ; $5602: $78
	add  a                                           ; $5603: $87
	add  a                                           ; $5604: $87
	ld   [hl], a                                     ; $5605: $77
	add  a                                           ; $5606: $87
	sbc  b                                           ; $5607: $98
	adc  b                                           ; $5608: $88
	adc  b                                           ; $5609: $88
	adc  b                                           ; $560a: $88
	adc  b                                           ; $560b: $88
	adc  b                                           ; $560c: $88
	adc  b                                           ; $560d: $88
	sbc  b                                           ; $560e: $98
	adc  c                                           ; $560f: $89
	sbc  b                                           ; $5610: $98
	adc  b                                           ; $5611: $88
	ld   a, b                                        ; $5612: $78
	ld   [hl], a                                     ; $5613: $77
	ld   [hl], a                                     ; $5614: $77
	ld   a, b                                        ; $5615: $78
	adc  b                                           ; $5616: $88
	adc  b                                           ; $5617: $88
	adc  b                                           ; $5618: $88
	sbc  c                                           ; $5619: $99
	sbc  c                                           ; $561a: $99
	sbc  c                                           ; $561b: $99
	sbc  c                                           ; $561c: $99
	sbc  c                                           ; $561d: $99
	adc  b                                           ; $561e: $88

Jump_0e9_561f:
	add  a                                           ; $561f: $87
	add  a                                           ; $5620: $87
	ld   [hl], a                                     ; $5621: $77
	ld   a, b                                        ; $5622: $78
	adc  b                                           ; $5623: $88
	adc  b                                           ; $5624: $88
	adc  b                                           ; $5625: $88
	adc  c                                           ; $5626: $89
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

Jump_0e9_5697:
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

Jump_0e9_5765:
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

Call_0e9_5785:
Jump_0e9_5785:
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

Call_0e9_582d:
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

Call_0e9_58a6:
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

Call_0e9_594f:
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

Call_0e9_59ce:
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
	add  a                                           ; $5ac5: $87
	sbc  c                                           ; $5ac6: $99
	ld   a, b                                        ; $5ac7: $78
	adc  c                                           ; $5ac8: $89
	add  a                                           ; $5ac9: $87
	adc  c                                           ; $5aca: $89
	ld   a, b                                        ; $5acb: $78
	adc  c                                           ; $5acc: $89
	add  a                                           ; $5acd: $87
	adc  c                                           ; $5ace: $89
	adc  b                                           ; $5acf: $88
	sbc  b                                           ; $5ad0: $98
	ld   a, b                                        ; $5ad1: $78
	adc  c                                           ; $5ad2: $89
	add  a                                           ; $5ad3: $87
	adc  b                                           ; $5ad4: $88
	sbc  b                                           ; $5ad5: $98
	ld   a, b                                        ; $5ad6: $78
	add  a                                           ; $5ad7: $87
	adc  c                                           ; $5ad8: $89
	sub  a                                           ; $5ad9: $97
	sbc  c                                           ; $5ada: $99
	halt                                             ; $5adb: $76
	sbc  d                                           ; $5adc: $9a
	ld   [hl], a                                     ; $5add: $77
	adc  c                                           ; $5ade: $89
	add  a                                           ; $5adf: $87
	sbc  b                                           ; $5ae0: $98
	adc  b                                           ; $5ae1: $88
	sbc  b                                           ; $5ae2: $98
	adc  b                                           ; $5ae3: $88
	sbc  b                                           ; $5ae4: $98
	ld   a, c                                        ; $5ae5: $79
	add  a                                           ; $5ae6: $87
	adc  b                                           ; $5ae7: $88
	adc  c                                           ; $5ae8: $89
	ld   a, b                                        ; $5ae9: $78
	adc  b                                           ; $5aea: $88
	sbc  b                                           ; $5aeb: $98
	adc  b                                           ; $5aec: $88
	sbc  c                                           ; $5aed: $99
	ld   [hl], a                                     ; $5aee: $77
	sbc  b                                           ; $5aef: $98
	adc  b                                           ; $5af0: $88
	add  a                                           ; $5af1: $87
	ld   a, b                                        ; $5af2: $78
	adc  b                                           ; $5af3: $88
	ld   a, b                                        ; $5af4: $78
	adc  b                                           ; $5af5: $88
	ld   [hl], a                                     ; $5af6: $77
	xor  c                                           ; $5af7: $a9
	ld   a, b                                        ; $5af8: $78
	adc  b                                           ; $5af9: $88
	ld   a, b                                        ; $5afa: $78
	sbc  b                                           ; $5afb: $98
	adc  b                                           ; $5afc: $88
	adc  b                                           ; $5afd: $88
	adc  c                                           ; $5afe: $89
	adc  b                                           ; $5aff: $88
	adc  b                                           ; $5b00: $88
	add  a                                           ; $5b01: $87
	adc  b                                           ; $5b02: $88
	adc  b                                           ; $5b03: $88
	adc  b                                           ; $5b04: $88
	adc  b                                           ; $5b05: $88
	adc  b                                           ; $5b06: $88
	ld   a, b                                        ; $5b07: $78
	sbc  b                                           ; $5b08: $98
	adc  b                                           ; $5b09: $88
	adc  b                                           ; $5b0a: $88
	adc  c                                           ; $5b0b: $89
	adc  b                                           ; $5b0c: $88
	add  a                                           ; $5b0d: $87
	adc  c                                           ; $5b0e: $89
	adc  b                                           ; $5b0f: $88
	adc  b                                           ; $5b10: $88
	sbc  b                                           ; $5b11: $98
	adc  b                                           ; $5b12: $88
	sub  a                                           ; $5b13: $97
	ld   a, b                                        ; $5b14: $78
	adc  b                                           ; $5b15: $88
	adc  b                                           ; $5b16: $88
	adc  b                                           ; $5b17: $88
	adc  c                                           ; $5b18: $89
	adc  b                                           ; $5b19: $88
	adc  c                                           ; $5b1a: $89
	add  a                                           ; $5b1b: $87
	ld   a, b                                        ; $5b1c: $78
	sub  a                                           ; $5b1d: $97
	adc  c                                           ; $5b1e: $89
	adc  b                                           ; $5b1f: $88
	sbc  b                                           ; $5b20: $98
	sbc  b                                           ; $5b21: $98
	sbc  b                                           ; $5b22: $98
	ld   [hl], a                                     ; $5b23: $77
	sub  a                                           ; $5b24: $97
	ld   a, b                                        ; $5b25: $78
	add  a                                           ; $5b26: $87
	adc  c                                           ; $5b27: $89
	adc  c                                           ; $5b28: $89
	adc  d                                           ; $5b29: $8a
	sbc  b                                           ; $5b2a: $98
	ld   h, a                                        ; $5b2b: $67
	and  [hl]                                        ; $5b2c: $a6
	ld   l, b                                        ; $5b2d: $68
	ld   [hl], a                                     ; $5b2e: $77
	adc  b                                           ; $5b2f: $88
	sbc  b                                           ; $5b30: $98
	sbc  d                                           ; $5b31: $9a
	xor  c                                           ; $5b32: $a9
	adc  b                                           ; $5b33: $88
	ld   d, a                                        ; $5b34: $57
	and  l                                           ; $5b35: $a5
	ld   a, c                                        ; $5b36: $79
	ld   a, b                                        ; $5b37: $78
	adc  d                                           ; $5b38: $8a
	adc  c                                           ; $5b39: $89
	sbc  c                                           ; $5b3a: $99
	xor  c                                           ; $5b3b: $a9
	add  a                                           ; $5b3c: $87
	add  hl, sp                                      ; $5b3d: $39
	add  h                                           ; $5b3e: $84
	sub  a                                           ; $5b3f: $97
	adc  b                                           ; $5b40: $88
	sbc  d                                           ; $5b41: $9a
	adc  b                                           ; $5b42: $88
	xor  d                                           ; $5b43: $aa
	sbc  c                                           ; $5b44: $99
	add  l                                           ; $5b45: $85
	ld   c, d                                        ; $5b46: $4a
	ld   d, l                                        ; $5b47: $55
	sub  a                                           ; $5b48: $97
	sub  a                                           ; $5b49: $97
	xor  d                                           ; $5b4a: $aa
	adc  c                                           ; $5b4b: $89
	xor  d                                           ; $5b4c: $aa
	adc  c                                           ; $5b4d: $89
	add  e                                           ; $5b4e: $83
	ld   e, d                                        ; $5b4f: $5a
	scf                                              ; $5b50: $37
	sub  a                                           ; $5b51: $97
	sub  a                                           ; $5b52: $97
	xor  c                                           ; $5b53: $a9
	adc  c                                           ; $5b54: $89
	sbc  d                                           ; $5b55: $9a
	adc  b                                           ; $5b56: $88
	ld   [hl], c                                     ; $5b57: $71
	adc  b                                           ; $5b58: $88
	ld   a, [hl-]                                    ; $5b59: $3a
	ld   a, c                                        ; $5b5a: $79
	sbc  b                                           ; $5b5b: $98
	cp   b                                           ; $5b5c: $b8
	sbc  c                                           ; $5b5d: $99
	xor  c                                           ; $5b5e: $a9
	adc  c                                           ; $5b5f: $89
	inc  sp                                          ; $5b60: $33
	or   h                                           ; $5b61: $b4
	ld   l, c                                        ; $5b62: $69
	ld   a, d                                        ; $5b63: $7a
	ld   a, e                                        ; $5b64: $7b
	xor  b                                           ; $5b65: $a8
	sbc  c                                           ; $5b66: $99
	xor  b                                           ; $5b67: $a8
	sub  a                                           ; $5b68: $97
	rla                                              ; $5b69: $17
	sub  d                                           ; $5b6a: $92
	xor  b                                           ; $5b6b: $a8
	sbc  c                                           ; $5b6c: $99
	adc  h                                           ; $5b6d: $8c
	sbc  c                                           ; $5b6e: $99
	adc  d                                           ; $5b6f: $8a
	and  a                                           ; $5b70: $a7
	sub  h                                           ; $5b71: $94
	dec  de                                          ; $5b72: $1b
	ld   d, h                                        ; $5b73: $54
	or   a                                           ; $5b74: $b7
	and  a                                           ; $5b75: $a7
	cp   e                                           ; $5b76: $bb
	adc  d                                           ; $5b77: $8a
	sbc  e                                           ; $5b78: $9b
	adc  b                                           ; $5b79: $88
	sub  d                                           ; $5b7a: $92
	ld   c, e                                        ; $5b7b: $4b
	daa                                              ; $5b7c: $27
	xor  b                                           ; $5b7d: $a8
	and  a                                           ; $5b7e: $a7
	ret                                              ; $5b7f: $c9


	adc  c                                           ; $5b80: $89
	sbc  d                                           ; $5b81: $9a
	ld   a, c                                        ; $5b82: $79
	ld   [hl], c                                     ; $5b83: $71
	adc  d                                           ; $5b84: $8a
	ld   a, [hl+]                                    ; $5b85: $2a
	adc  c                                           ; $5b86: $89
	adc  b                                           ; $5b87: $88
	ret  c                                           ; $5b88: $d8

	sbc  c                                           ; $5b89: $99
	sbc  d                                           ; $5b8a: $9a
	ld   a, d                                        ; $5b8b: $7a
	ld   d, c                                        ; $5b8c: $51
	or   a                                           ; $5b8d: $b7
	ld   a, [hl-]                                    ; $5b8e: $3a
	ld   a, e                                        ; $5b8f: $7b
	ld   a, d                                        ; $5b90: $7a
	or   a                                           ; $5b91: $b7
	xor  b                                           ; $5b92: $a8
	cp   c                                           ; $5b93: $b9
	adc  c                                           ; $5b94: $89
	ld   [hl+], a                                    ; $5b95: $22
	call nc, Call_0e9_7b5a                           ; $5b96: $d4 $5a $7b
	ld   l, e                                        ; $5b99: $6b
	and  a                                           ; $5b9a: $a7
	sbc  c                                           ; $5b9b: $99
	or   a                                           ; $5b9c: $b7
	sbc  c                                           ; $5b9d: $99
	dec  d                                           ; $5b9e: $15
	jp   nz, $997a                                   ; $5b9f: $c2 $7a $99

	ld   a, h                                        ; $5ba2: $7c
	adc  b                                           ; $5ba3: $88
	adc  c                                           ; $5ba4: $89
	and  a                                           ; $5ba5: $a7
	and  a                                           ; $5ba6: $a7
	rla                                              ; $5ba7: $17
	or   c                                           ; $5ba8: $b1
	sbc  c                                           ; $5ba9: $99
	sbc  b                                           ; $5baa: $98
	ld   a, l                                        ; $5bab: $7d
	ld   a, b                                        ; $5bac: $78
	sbc  d                                           ; $5bad: $9a
	and  a                                           ; $5bae: $a7
	or   [hl]                                        ; $5baf: $b6
	ld   a, [de]                                     ; $5bb0: $1a
	sub  c                                           ; $5bb1: $91
	xor  b                                           ; $5bb2: $a8
	xor  b                                           ; $5bb3: $a8
	adc  l                                           ; $5bb4: $8d
	ld   a, c                                        ; $5bb5: $79
	sbc  d                                           ; $5bb6: $9a
	add  a                                           ; $5bb7: $87
	or   l                                           ; $5bb8: $b5
	dec  de                                          ; $5bb9: $1b
	sub  c                                           ; $5bba: $91
	cp   c                                           ; $5bbb: $b9
	and  a                                           ; $5bbc: $a7
	sbc  h                                           ; $5bbd: $9c
	ld   l, c                                        ; $5bbe: $69
	adc  d                                           ; $5bbf: $8a
	sbc  b                                           ; $5bc0: $98
	or   h                                           ; $5bc1: $b4
	inc  e                                           ; $5bc2: $1c
	add  c                                           ; $5bc3: $81
	cp   b                                           ; $5bc4: $b8
	and  a                                           ; $5bc5: $a7
	xor  h                                           ; $5bc6: $ac
	ld   l, d                                        ; $5bc7: $6a
	adc  d                                           ; $5bc8: $8a
	adc  b                                           ; $5bc9: $88
	or   e                                           ; $5bca: $b3
	dec  de                                          ; $5bcb: $1b
	add  c                                           ; $5bcc: $81
	cp   b                                           ; $5bcd: $b8
	and  a                                           ; $5bce: $a7
	xor  l                                           ; $5bcf: $ad
	ld   l, c                                        ; $5bd0: $69
	adc  d                                           ; $5bd1: $8a
	adc  b                                           ; $5bd2: $88
	jp   Jump_0e9_721c                               ; $5bd3: $c3 $1c $72


	cp   c                                           ; $5bd6: $b9
	and  a                                           ; $5bd7: $a7
	cp   h                                           ; $5bd8: $bc
	ld   e, d                                        ; $5bd9: $5a
	sbc  d                                           ; $5bda: $9a
	ld   a, c                                        ; $5bdb: $79
	or   d                                           ; $5bdc: $b2
	dec  e                                           ; $5bdd: $1d
	ld   d, d                                        ; $5bde: $52
	ret  z                                           ; $5bdf: $c8

	and  [hl]                                        ; $5be0: $a6
	bit  3, e                                        ; $5be1: $cb $5b
	sbc  d                                           ; $5be3: $9a
	ld   a, c                                        ; $5be4: $79
	and  c                                           ; $5be5: $a1
	ld   l, $43                                      ; $5be6: $2e $43
	ret  c                                           ; $5be8: $d8

	sub  a                                           ; $5be9: $97
	jp   z, $8a5a                                    ; $5bea: $ca $5a $8a

	ld   a, c                                        ; $5bed: $79
	and  c                                           ; $5bee: $a1
	ld   a, $24                                      ; $5bef: $3e $24
	rst  ToBoot                                         ; $5bf1: $c7
	sub  a                                           ; $5bf2: $97
	reti                                             ; $5bf3: $d9


	ld   l, e                                        ; $5bf4: $6b
	sbc  c                                           ; $5bf5: $99
	ld   l, e                                        ; $5bf6: $6b
	add  c                                           ; $5bf7: $81
	ld   l, [hl]                                     ; $5bf8: $6e
	ld   b, $d7                                      ; $5bf9: $06 $d7
	adc  b                                           ; $5bfb: $88
	rst  $20                                         ; $5bfc: $e7
	ld   a, e                                        ; $5bfd: $7b
	adc  c                                           ; $5bfe: $89
	ld   a, e                                        ; $5bff: $7b
	ld   [hl], c                                     ; $5c00: $71
	adc  h                                           ; $5c01: $8c
	add  hl, de                                      ; $5c02: $19
	or   a                                           ; $5c03: $b7
	sbc  c                                           ; $5c04: $99
	and  $8b                                         ; $5c05: $e6 $8b
	adc  b                                           ; $5c07: $88
	ld   a, h                                        ; $5c08: $7c
	ld   b, c                                        ; $5c09: $41
	cp   c                                           ; $5c0a: $b9
	dec  e                                           ; $5c0b: $1d
	and  a                                           ; $5c0c: $a7
	adc  d                                           ; $5c0d: $8a
	push bc                                          ; $5c0e: $c5
	xor  d                                           ; $5c0f: $aa
	adc  b                                           ; $5c10: $88
	sbc  d                                           ; $5c11: $9a
	ld   de, $1ee4                                   ; $5c12: $11 $e4 $1e
	ld   a, b                                        ; $5c15: $78
	adc  h                                           ; $5c16: $8c
	and  l                                           ; $5c17: $a5
	ret                                              ; $5c18: $c9


	sbc  b                                           ; $5c19: $98
	sbc  c                                           ; $5c1a: $99
	dec  d                                           ; $5c1b: $15
	pop  de                                          ; $5c1c: $d1
	ld   a, [hl]                                     ; $5c1d: $7e
	ld   e, c                                        ; $5c1e: $59
	sbc  l                                           ; $5c1f: $9d
	ld   l, c                                        ; $5c20: $69
	ret  z                                           ; $5c21: $c8

	sbc  b                                           ; $5c22: $98
	and  l                                           ; $5c23: $a5
	dec  de                                          ; $5c24: $1b
	sub  c                                           ; $5c25: $91
	jp   c, $bc59                                    ; $5c26: $da $59 $bc

	ld   e, h                                        ; $5c29: $5c
	and  a                                           ; $5c2a: $a7
	sbc  c                                           ; $5c2b: $99
	sub  c                                           ; $5c2c: $91
	ld   l, $13                                      ; $5c2d: $2e $13

jr_0e9_5c2f:
	push af                                          ; $5c2f: $f5
	adc  c                                           ; $5c30: $89
	ret  c                                           ; $5c31: $d8

	ld   a, l                                        ; $5c32: $7d
	ld   a, b                                        ; $5c33: $78
	sbc  d                                           ; $5c34: $9a
	ld   h, c                                        ; $5c35: $61
	sbc  e                                           ; $5c36: $9b
	dec  de                                          ; $5c37: $1b
	jp   $c5aa                                       ; $5c38: $c3 $aa $c5


	cp   h                                           ; $5c3b: $bc
	ld   l, d                                        ; $5c3c: $6a
	xor  c                                           ; $5c3d: $a9
	ld   [hl+], a                                    ; $5c3e: $22
	db   $d3                                         ; $5c3f: $d3
	rra                                              ; $5c40: $1f
	ld   b, [hl]                                     ; $5c41: $46
	cp   h                                           ; $5c42: $bc
	sub  a                                           ; $5c43: $97
	rst  $20                                         ; $5c44: $e7
	sbc  e                                           ; $5c45: $9b
	sub  [hl]                                        ; $5c46: $96
	rla                                              ; $5c47: $17
	and  c                                           ; $5c48: $a1
	xor  h                                           ; $5c49: $ac
	ld   a, [hl+]                                    ; $5c4a: $2a
	cp   e                                           ; $5c4b: $bb
	ld   e, h                                        ; $5c4c: $5c
	or   [hl]                                        ; $5c4d: $b6
	xor  d                                           ; $5c4e: $aa
	ld   [hl], e                                     ; $5c4f: $73
	dec  hl                                          ; $5c50: $2b
	ld   sp, $6bf4                                   ; $5c51: $31 $f4 $6b
	cp   b                                           ; $5c54: $b8
	adc  [hl]                                        ; $5c55: $8e
	ld   l, d                                        ; $5c56: $6a
	cp   b                                           ; $5c57: $b8
	ld   h, d                                        ; $5c58: $62
	ld   a, d                                        ; $5c59: $7a
	dec  de                                          ; $5c5a: $1b
	or   c                                           ; $5c5b: $b1
	cp   e                                           ; $5c5c: $bb
	and  a                                           ; $5c5d: $a7
	jp   c, $976d                                    ; $5c5e: $da $6d $97

	ld   b, e                                        ; $5c61: $43
	or   d                                           ; $5c62: $b2
	cpl                                              ; $5c63: $2f
	jr   z, jr_0e9_5c2f                              ; $5c64: $28 $c9

	adc  d                                           ; $5c66: $8a
	push de                                          ; $5c67: $d5
	call z, $3766                                    ; $5c68: $cc $66 $37
	add  c                                           ; $5c6b: $81
	rst  $10                                         ; $5c6c: $d7
	ld   l, $99                                      ; $5c6d: $2e $99
	adc  [hl]                                        ; $5c6f: $8e
	adc  b                                           ; $5c70: $88
	rst  $20                                         ; $5c71: $e7
	ld   [hl], l                                     ; $5c72: $75
	ld   c, d                                        ; $5c73: $4a
	dec  d                                           ; $5c74: $15
	pop  de                                          ; $5c75: $d1
	xor  e                                           ; $5c76: $ab
	adc  b                                           ; $5c77: $88
	call z, $a66d                                    ; $5c78: $cc $6d $a6
	ld   [hl], e                                     ; $5c7b: $73
	add  l                                           ; $5c7c: $85
	dec  c                                           ; $5c7d: $0d
	dec  [hl]                                        ; $5c7e: $35
	rst  $20                                         ; $5c7f: $e7
	sbc  e                                           ; $5c80: $9b
	sub  $cb                                         ; $5c81: $d6 $cb
	ld   l, b                                        ; $5c83: $68
	ld   b, [hl]                                     ; $5c84: $46
	sub  c                                           ; $5c85: $91
	xor  b                                           ; $5c86: $a8
	dec  e                                           ; $5c87: $1d
	sbc  c                                           ; $5c88: $99
	xor  l                                           ; $5c89: $ad
	sbc  d                                           ; $5c8a: $9a
	and  $86                                         ; $5c8b: $e6 $86
	add  hl, sp                                      ; $5c8d: $39
	dec  d                                           ; $5c8e: $15
	pop  bc                                          ; $5c8f: $c1
	xor  d                                           ; $5c90: $aa
	ld   a, c                                        ; $5c91: $79
	jp   z, $977f                                    ; $5c92: $ca $7f $97

	add  d                                           ; $5c95: $82
	add  [hl]                                        ; $5c96: $86
	inc  e                                           ; $5c97: $1c
	dec  [hl]                                        ; $5c98: $35
	rst  ToBoot                                         ; $5c99: $c7
	sbc  e                                           ; $5c9a: $9b
	rst  $10                                         ; $5c9b: $d7
	db   $db                                         ; $5c9c: $db
	ld   l, d                                        ; $5c9d: $6a
	dec  [hl]                                        ; $5c9e: $35
	and  c                                           ; $5c9f: $a1
	sbc  b                                           ; $5ca0: $98
	inc  c                                           ; $5ca1: $0c
	adc  b                                           ; $5ca2: $88
	xor  h                                           ; $5ca3: $ac
	adc  d                                           ; $5ca4: $8a
	and  $a6                                         ; $5ca5: $e6 $a6
	dec  hl                                          ; $5ca7: $2b
	inc  hl                                          ; $5ca8: $23
	pop  bc                                          ; $5ca9: $c1
	adc  d                                           ; $5caa: $8a
	ld   l, c                                        ; $5cab: $69
	cp   e                                           ; $5cac: $bb
	ld   a, a                                        ; $5cad: $7f
	sub  a                                           ; $5cae: $97
	and  d                                           ; $5caf: $a2
	adc  c                                           ; $5cb0: $89
	inc  e                                           ; $5cb1: $1c
	ld   d, d                                        ; $5cb2: $52
	add  $8a                                         ; $5cb3: $c6 $8a
	rst  $10                                         ; $5cb5: $d7
	call c, Call_0e9_536b                            ; $5cb6: $dc $6b $53
	pop  bc                                          ; $5cb9: $c1
	ld   c, l                                        ; $5cba: $4d
	add  hl, de                                      ; $5cbb: $19
	sub  l                                           ; $5cbc: $95
	xor  h                                           ; $5cbd: $ac
	sbc  c                                           ; $5cbe: $99
	rst  $30                                         ; $5cbf: $f7
	xor  e                                           ; $5cc0: $ab
	ld   a, [de]                                     ; $5cc1: $1a
	ld   [hl], c                                     ; $5cc2: $71
	call nc, Call_0e9_582d                           ; $5cc3: $d4 $2d $58
	cp   h                                           ; $5cc6: $bc
	ld   a, [hl]                                     ; $5cc7: $7e
	or   a                                           ; $5cc8: $b7
	call nc, $165b                                   ; $5cc9: $d4 $5b $16
	and  c                                           ; $5ccc: $a1
	cp   b                                           ; $5ccd: $b8
	ld   e, d                                        ; $5cce: $5a
	ret  z                                           ; $5ccf: $c8

	cp   [hl]                                        ; $5cd0: $be
	ld   a, h                                        ; $5cd1: $7c
	add  d                                           ; $5cd2: $82
	push bc                                          ; $5cd3: $c5
	ld   e, $14                                      ; $5cd4: $1e $14
	db   $d3                                         ; $5cd6: $d3
	sbc  h                                           ; $5cd7: $9c
	xor  c                                           ; $5cd8: $a9
	ld   sp, hl                                      ; $5cd9: $f9
	sbc  h                                           ; $5cda: $9c
	scf                                              ; $5cdb: $37
	or   c                                           ; $5cdc: $b1
	adc  c                                           ; $5cdd: $89
	dec  e                                           ; $5cde: $1d
	ld   h, l                                        ; $5cdf: $65
	jp   z, $d78d                                    ; $5ce0: $ca $8d $d7

	rst  $10                                         ; $5ce3: $d7
	inc  a                                           ; $5ce4: $3c
	ld   b, c                                        ; $5ce5: $41
	pop  hl                                          ; $5ce6: $e1
	ld   e, h                                        ; $5ce7: $5c
	ld   a, [de]                                     ; $5ce8: $1a
	cp   b                                           ; $5ce9: $b8
	xor  [hl]                                        ; $5cea: $ae
	sbc  e                                           ; $5ceb: $9b
	db   $d3                                         ; $5cec: $d3
	sbc  e                                           ; $5ced: $9b
	add  hl, de                                      ; $5cee: $19
	sub  c                                           ; $5cef: $91
	push de                                          ; $5cf0: $d5
	ld   c, h                                        ; $5cf1: $4c
	adc  b                                           ; $5cf2: $88
	db   $eb                                         ; $5cf3: $eb
	adc  [hl]                                        ; $5cf4: $8e
	ld   [hl], h                                     ; $5cf5: $74
	push de                                          ; $5cf6: $d5
	dec  e                                           ; $5cf7: $1d
	inc  de                                          ; $5cf8: $13
	pop  de                                          ; $5cf9: $d1
	xor  e                                           ; $5cfa: $ab
	ld   l, e                                        ; $5cfb: $6b
	reti                                             ; $5cfc: $d9


	call $b148                                       ; $5cfd: $cd $48 $b1
	ld   a, e                                        ; $5d00: $7b
	inc  e                                           ; $5d01: $1c
	ld   [hl], d                                     ; $5d02: $72
	rst  $10                                         ; $5d03: $d7
	adc  l                                           ; $5d04: $8d
	ret  z                                           ; $5d05: $c8

	jp   hl                                          ; $5d06: $e9


	ld   e, d                                        ; $5d07: $5a
	add  c                                           ; $5d08: $81
	or   l                                           ; $5d09: $b5
	ld   e, $17                                      ; $5d0a: $1e $17
	push bc                                          ; $5d0c: $c5
	xor  h                                           ; $5d0d: $ac
	xor  e                                           ; $5d0e: $ab
	and  $8a                                         ; $5d0f: $e6 $8a
	ld   h, d                                        ; $5d11: $62
	pop  bc                                          ; $5d12: $c1
	ld   c, h                                        ; $5d13: $4c
	ld   a, [de]                                     ; $5d14: $1a
	sub  [hl]                                        ; $5d15: $96
	res  3, h                                        ; $5d16: $cb $9c
	rst  ToBoot                                         ; $5d18: $c7
	adc  c                                           ; $5d19: $89
	ld   d, h                                        ; $5d1a: $54
	pop  bc                                          ; $5d1b: $c1
	ld   a, c                                        ; $5d1c: $79
	inc  e                                           ; $5d1d: $1c
	ld   [hl], a                                     ; $5d1e: $77
	cp   e                                           ; $5d1f: $bb
	xor  l                                           ; $5d20: $ad
	and  a                                           ; $5d21: $a7
	adc  d                                           ; $5d22: $8a
	ld   b, l                                        ; $5d23: $45
	and  c                                           ; $5d24: $a1
	sub  [hl]                                        ; $5d25: $96
	inc  l                                           ; $5d26: $2c
	ld   e, b                                        ; $5d27: $58
	jp   z, $a8ad                                    ; $5d28: $ca $ad $a8

	adc  d                                           ; $5d2b: $8a
	ld   b, [hl]                                     ; $5d2c: $46
	and  c                                           ; $5d2d: $a1
	or   l                                           ; $5d2e: $b5
	inc  a                                           ; $5d2f: $3c
	ld   e, c                                        ; $5d30: $59
	cp   c                                           ; $5d31: $b9
	xor  h                                           ; $5d32: $ac
	xor  c                                           ; $5d33: $a9
	adc  d                                           ; $5d34: $8a
	ld   d, [hl]                                     ; $5d35: $56
	and  c                                           ; $5d36: $a1
	and  l                                           ; $5d37: $a5
	dec  sp                                          ; $5d38: $3b
	ld   e, c                                        ; $5d39: $59
	xor  c                                           ; $5d3a: $a9
	cp   h                                           ; $5d3b: $bc
	sbc  c                                           ; $5d3c: $99
	adc  c                                           ; $5d3d: $89
	ld   d, [hl]                                     ; $5d3e: $56
	and  c                                           ; $5d3f: $a1
	and  l                                           ; $5d40: $a5
	dec  sp                                          ; $5d41: $3b
	ld   e, d                                        ; $5d42: $5a
	cp   c                                           ; $5d43: $b9
	cp   h                                           ; $5d44: $bc
	xor  c                                           ; $5d45: $a9
	adc  d                                           ; $5d46: $8a
	ld   d, l                                        ; $5d47: $55
	or   c                                           ; $5d48: $b1
	sub  [hl]                                        ; $5d49: $96
	dec  sp                                          ; $5d4a: $3b
	ld   e, c                                        ; $5d4b: $59
	xor  c                                           ; $5d4c: $a9
	cp   e                                           ; $5d4d: $bb
	cp   c                                           ; $5d4e: $b9
	adc  d                                           ; $5d4f: $8a
	ld   h, l                                        ; $5d50: $65
	or   c                                           ; $5d51: $b1
	add  a                                           ; $5d52: $87
	dec  hl                                          ; $5d53: $2b
	ld   e, c                                        ; $5d54: $59
	xor  c                                           ; $5d55: $a9
	cp   e                                           ; $5d56: $bb
	xor  c                                           ; $5d57: $a9
	adc  d                                           ; $5d58: $8a
	ld   [hl], h                                     ; $5d59: $74
	and  c                                           ; $5d5a: $a1
	ld   a, b                                        ; $5d5b: $78
	ld   a, [hl+]                                    ; $5d5c: $2a
	ld   e, b                                        ; $5d5d: $58
	xor  d                                           ; $5d5e: $aa
	cp   e                                           ; $5d5f: $bb
	cp   c                                           ; $5d60: $b9
	sbc  c                                           ; $5d61: $99
	add  h                                           ; $5d62: $84
	or   e                                           ; $5d63: $b3
	ld   e, b                                        ; $5d64: $58
	ld   a, [hl+]                                    ; $5d65: $2a
	ld   d, a                                        ; $5d66: $57
	xor  c                                           ; $5d67: $a9
	cp   e                                           ; $5d68: $bb
	ret                                              ; $5d69: $c9


	adc  b                                           ; $5d6a: $88
	sub  h                                           ; $5d6b: $94
	and  l                                           ; $5d6c: $a5
	ld   a, [hl-]                                    ; $5d6d: $3a
	add  hl, hl                                      ; $5d6e: $29
	ld   [hl], a                                     ; $5d6f: $77
	xor  c                                           ; $5d70: $a9
	cp   e                                           ; $5d71: $bb
	ret                                              ; $5d72: $c9


	adc  c                                           ; $5d73: $89
	and  h                                           ; $5d74: $a4
	sub  a                                           ; $5d75: $97
	ld   a, [hl+]                                    ; $5d76: $2a
	daa                                              ; $5d77: $27
	add  l                                           ; $5d78: $85
	xor  b                                           ; $5d79: $a8
	cp   e                                           ; $5d7a: $bb
	jp   z, $a598                                    ; $5d7b: $ca $98 $a5

	ld   a, b                                        ; $5d7e: $78
	dec  de                                          ; $5d7f: $1b
	ld   [hl], $94                                   ; $5d80: $36 $94
	cp   c                                           ; $5d82: $b9
	xor  e                                           ; $5d83: $ab
	cp   d                                           ; $5d84: $ba
	sbc  c                                           ; $5d85: $99
	sub  a                                           ; $5d86: $97
	ld   l, c                                        ; $5d87: $69
	add  hl, hl                                      ; $5d88: $29
	ld   d, h                                        ; $5d89: $54
	sub  h                                           ; $5d8a: $94
	xor  b                                           ; $5d8b: $a8
	cp   e                                           ; $5d8c: $bb
	cp   e                                           ; $5d8d: $bb
	sbc  b                                           ; $5d8e: $98
	sbc  c                                           ; $5d8f: $99
	ld   c, e                                        ; $5d90: $4b
	ld   [hl], $83                                   ; $5d91: $36 $83
	and  l                                           ; $5d93: $a5
	adc  c                                           ; $5d94: $89
	xor  d                                           ; $5d95: $aa
	xor  h                                           ; $5d96: $ac
	sbc  d                                           ; $5d97: $9a
	sbc  c                                           ; $5d98: $99
	ld   c, d                                        ; $5d99: $4a
	ld   d, h                                        ; $5d9a: $54
	and  d                                           ; $5d9b: $a2
	sub  [hl]                                        ; $5d9c: $96
	ld   a, c                                        ; $5d9d: $79
	xor  e                                           ; $5d9e: $ab
	xor  h                                           ; $5d9f: $ac
	sbc  c                                           ; $5da0: $99
	adc  c                                           ; $5da1: $89
	ld   e, b                                        ; $5da2: $58
	add  d                                           ; $5da3: $82
	and  e                                           ; $5da4: $a3
	ld   a, b                                        ; $5da5: $78
	ld   l, d                                        ; $5da6: $6a
	adc  e                                           ; $5da7: $8b
	sbc  h                                           ; $5da8: $9c
	sbc  c                                           ; $5da9: $99
	sbc  b                                           ; $5daa: $98
	ld   [hl], l                                     ; $5dab: $75
	and  d                                           ; $5dac: $a2
	add  [hl]                                        ; $5dad: $86
	ld   c, d                                        ; $5dae: $4a
	ld   e, c                                        ; $5daf: $59
	sbc  d                                           ; $5db0: $9a
	sbc  h                                           ; $5db1: $9c
	xor  c                                           ; $5db2: $a9
	sbc  b                                           ; $5db3: $98
	and  h                                           ; $5db4: $a4
	or   h                                           ; $5db5: $b4
	ld   e, c                                        ; $5db6: $59
	ld   a, [hl+]                                    ; $5db7: $2a
	ld   l, b                                        ; $5db8: $68
	sbc  d                                           ; $5db9: $9a
	xor  e                                           ; $5dba: $ab
	ret  z                                           ; $5dbb: $c8

	and  a                                           ; $5dbc: $a7
	and  h                                           ; $5dbd: $a4
	sub  a                                           ; $5dbe: $97
	dec  hl                                          ; $5dbf: $2b
	daa                                              ; $5dc0: $27
	halt                                             ; $5dc1: $76
	sbc  c                                           ; $5dc2: $99
	cp   d                                           ; $5dc3: $ba
	ret  c                                           ; $5dc4: $d8

	and  a                                           ; $5dc5: $a7
	sub  a                                           ; $5dc6: $97
	ld   e, d                                        ; $5dc7: $5a
	add  hl, de                                      ; $5dc8: $19
	ld   d, h                                        ; $5dc9: $54
	and  l                                           ; $5dca: $a5
	sbc  b                                           ; $5dcb: $98
	cp   d                                           ; $5dcc: $ba
	jp   z, $8999                                    ; $5dcd: $ca $99 $89

	ld   a, [hl-]                                    ; $5dd0: $3a
	dec  [hl]                                        ; $5dd1: $35
	add  d                                           ; $5dd2: $82
	and  [hl]                                        ; $5dd3: $a6
	adc  b                                           ; $5dd4: $88
	xor  d                                           ; $5dd5: $aa
	cp   l                                           ; $5dd6: $bd
	adc  d                                           ; $5dd7: $8a
	ld   a, d                                        ; $5dd8: $7a
	add  hl, sp                                      ; $5dd9: $39
	ld   h, c                                        ; $5dda: $61
	and  d                                           ; $5ddb: $a2
	ld   a, b                                        ; $5ddc: $78
	ld   l, d                                        ; $5ddd: $6a
	sbc  e                                           ; $5dde: $9b
	cp   l                                           ; $5ddf: $bd
	sbc  d                                           ; $5de0: $9a
	ld   a, c                                        ; $5de1: $79
	ld   h, l                                        ; $5de2: $65
	sub  c                                           ; $5de3: $91
	sub  l                                           ; $5de4: $95
	ld   c, d                                        ; $5de5: $4a
	ld   l, c                                        ; $5de6: $69
	sbc  h                                           ; $5de7: $9c
	xor  [hl]                                        ; $5de8: $ae
	cp   c                                           ; $5de9: $b9
	add  a                                           ; $5dea: $87
	add  d                                           ; $5deb: $82
	or   d                                           ; $5dec: $b2
	ld   c, c                                        ; $5ded: $49
	add  hl, hl                                      ; $5dee: $29
	ld   a, c                                        ; $5def: $79
	sbc  e                                           ; $5df0: $9b
	xor  h                                           ; $5df1: $ac
	rst  $10                                         ; $5df2: $d7
	and  [hl]                                        ; $5df3: $a6
	and  e                                           ; $5df4: $a3
	add  [hl]                                        ; $5df5: $86
	dec  de                                          ; $5df6: $1b
	daa                                              ; $5df7: $27
	sub  a                                           ; $5df8: $97
	sbc  e                                           ; $5df9: $9b
	set  6, a                                        ; $5dfa: $cb $f7
	sub  a                                           ; $5dfc: $97
	add  l                                           ; $5dfd: $85
	ld   c, c                                        ; $5dfe: $49
	ld   a, [de]                                     ; $5dff: $1a
	ld   d, h                                        ; $5e00: $54
	or   [hl]                                        ; $5e01: $b6
	xor  d                                           ; $5e02: $aa
	jp   hl                                          ; $5e03: $e9


	ld   a, [$7678]                                  ; $5e04: $fa $78 $76
	dec  hl                                          ; $5e07: $2b
	rla                                              ; $5e08: $17
	add  d                                           ; $5e09: $82
	or   a                                           ; $5e0a: $b7
	xor  d                                           ; $5e0b: $aa
	db   $eb                                         ; $5e0c: $eb
	call c, $6769                                    ; $5e0d: $dc $69 $67
	ld   a, [de]                                     ; $5e10: $1a
	inc  de                                          ; $5e11: $13
	or   c                                           ; $5e12: $b1
	cp   c                                           ; $5e13: $b9
	sbc  d                                           ; $5e14: $9a
	call c, Call_0e9_59ce                            ; $5e15: $dc $ce $59
	ld   h, [hl]                                     ; $5e18: $66
	add  hl, de                                      ; $5e19: $19
	ld   sp, $bad1                                   ; $5e1a: $31 $d1 $ba
	sbc  h                                           ; $5e1d: $9c
	call c, Call_0e9_47bf                            ; $5e1e: $dc $bf $47
	ld   h, [hl]                                     ; $5e21: $66
	add  hl, de                                      ; $5e22: $19
	ld   b, c                                        ; $5e23: $41
	pop  af                                          ; $5e24: $f1
	cp   e                                           ; $5e25: $bb
	adc  l                                           ; $5e26: $8d
	db   $dd                                         ; $5e27: $dd
	sbc  a                                           ; $5e28: $9f
	ld   d, l                                        ; $5e29: $55
	ld   [hl], l                                     ; $5e2a: $75
	add  hl, de                                      ; $5e2b: $19
	ld   b, c                                        ; $5e2c: $41
	pop  af                                          ; $5e2d: $f1
	cp   l                                           ; $5e2e: $bd
	sbc  h                                           ; $5e2f: $9c
	call $338f                                       ; $5e30: $cd $8f $33
	and  e                                           ; $5e33: $a3
	dec  e                                           ; $5e34: $1d
	ld   de, $edf1                                   ; $5e35: $11 $f1 $ed
	sbc  l                                           ; $5e38: $9d
	db   $eb                                         ; $5e39: $eb
	sbc  [hl]                                        ; $5e3a: $9e
	inc  d                                           ; $5e3b: $14
	and  c                                           ; $5e3c: $a1
	rra                                              ; $5e3d: $1f
	rla                                              ; $5e3e: $17
	pop  af                                          ; $5e3f: $f1
	db   $fc                                         ; $5e40: $fc
	adc  l                                           ; $5e41: $8d
	ret  c                                           ; $5e42: $d8

	xor  h                                           ; $5e43: $ac
	ld   d, $b1                                      ; $5e44: $16 $b1
	ld   l, a                                        ; $5e46: $6f
	rra                                              ; $5e47: $1f
	pop  de                                          ; $5e48: $d1
	ld   sp, hl                                      ; $5e49: $f9
	sbc  l                                           ; $5e4a: $9d
	call nc, $1ae6                                   ; $5e4b: $d4 $e6 $1a
	ld   [hl], c                                     ; $5e4e: $71
	rr   a                                           ; $5e4f: $cb $1f
	ld   h, l                                        ; $5e51: $65
	ld   sp, hl                                      ; $5e52: $f9
	ld   a, [hl]                                     ; $5e53: $7e
	jp   $1ce2                                       ; $5e54: $c3 $e2 $1c


	ld   d, c                                        ; $5e57: $51
	or   $1f                                         ; $5e58: $f6 $1f
	ld   a, [hl+]                                    ; $5e5a: $2a
	ld   hl, sp+$6e                                  ; $5e5b: $f8 $6e
	add  h                                           ; $5e5d: $84
	pop  af                                          ; $5e5e: $f1
	dec  e                                           ; $5e5f: $1d
	ld   sp, $2ff1                                   ; $5e60: $31 $f1 $2f
	inc  e                                           ; $5e63: $1c
	rst  $30                                         ; $5e64: $f7
	ld   e, a                                        ; $5e65: $5f
	ld   [hl], l                                     ; $5e66: $75
	pop  af                                          ; $5e67: $f1
	dec  e                                           ; $5e68: $1d
	ld   sp, $3ff1                                   ; $5e69: $31 $f1 $3f
	dec  de                                          ; $5e6c: $1b
	rst  $20                                         ; $5e6d: $e7
	ld   e, [hl]                                     ; $5e6e: $5e
	ld   [hl], l                                     ; $5e6f: $75
	pop  hl                                          ; $5e70: $e1
	inc  e                                           ; $5e71: $1c
	ld   h, c                                        ; $5e72: $61
	db   $f4                                         ; $5e73: $f4
	rra                                              ; $5e74: $1f
	add  hl, sp                                      ; $5e75: $39
	add  sp, $4d                                     ; $5e76: $e8 $4d
	sub  e                                           ; $5e78: $93
	di                                               ; $5e79: $f3
	dec  de                                          ; $5e7a: $1b
	sub  c                                           ; $5e7b: $91
	ei                                               ; $5e7c: $fb
	rra                                              ; $5e7d: $1f
	ld   [hl], l                                     ; $5e7e: $75
	jp   c, $d23a                                    ; $5e7f: $da $3a $d2

	rst  ToBoot                                         ; $5e82: $c7
	rla                                              ; $5e83: $17
	pop  de                                          ; $5e84: $d1
	cp   a                                           ; $5e85: $bf
	rra                                              ; $5e86: $1f
	ldh  [c], a                                      ; $5e87: $e2
	call z, $f345                                    ; $5e88: $cc $45 $f3
	sbc  e                                           ; $5e8b: $9b
	ld   [de], a                                     ; $5e8c: $12
	pop  af                                          ; $5e8d: $f1
	cpl                                              ; $5e8e: $2f
	add  hl, de                                      ; $5e8f: $19
	di                                               ; $5e90: $f3
	sbc  l                                           ; $5e91: $9d
	add  d                                           ; $5e92: $82
	ld   hl, sp+$6c                                  ; $5e93: $f8 $6c
	ld   hl, $1fd9                                   ; $5e95: $21 $d9 $1f
	sub  c                                           ; $5e98: $91
	rst  $30                                         ; $5e99: $f7
	ld   e, e                                        ; $5e9a: $5b
	jp   nz, Jump_0e9_4b9e                           ; $5e9b: $c2 $9e $4b

	ld   [hl], c                                     ; $5e9e: $71
	ld   a, a                                        ; $5e9f: $7f
	rra                                              ; $5ea0: $1f
	pop  af                                          ; $5ea1: $f1
	db   $fc                                         ; $5ea2: $fc
	ld   c, c                                        ; $5ea3: $49
	call nc, Call_0e9_594f                           ; $5ea4: $d4 $4f $59
	sub  c                                           ; $5ea7: $91
	rra                                              ; $5ea8: $1f
	ld   [de], a                                     ; $5ea9: $12
	pop  af                                          ; $5eaa: $f1
	adc  a                                           ; $5eab: $8f
	ld   d, [hl]                                     ; $5eac: $56
	cp   d                                           ; $5ead: $ba
	dec  e                                           ; $5eae: $1d
	or   l                                           ; $5eaf: $b5
	and  e                                           ; $5eb0: $a3
	dec  e                                           ; $5eb1: $1d
	sub  c                                           ; $5eb2: $91
	rst  $30                                         ; $5eb3: $f7
	rra                                              ; $5eb4: $1f
	add  l                                           ; $5eb5: $85
	sbc  l                                           ; $5eb6: $9d
	add  hl, de                                      ; $5eb7: $19
	and  $95                                         ; $5eb8: $e6 $95
	rla                                              ; $5eba: $17
	pop  af                                          ; $5ebb: $f1
	rst  $38                                         ; $5ebc: $ff
	rra                                              ; $5ebd: $1f
	or   l                                           ; $5ebe: $b5
	ld   l, l                                        ; $5ebf: $6d
	ld   d, l                                        ; $5ec0: $55
	ld   hl, sp+$76                                  ; $5ec1: $f8 $76
	ld   de, $7ff1                                   ; $5ec3: $11 $f1 $7f
	inc  e                                           ; $5ec6: $1c
	push af                                          ; $5ec7: $f5
	ld   e, c                                        ; $5ec8: $59
	and  d                                           ; $5ec9: $a2
	db   $ec                                         ; $5eca: $ec
	halt                                             ; $5ecb: $76
	ld   de, $2ff3                                   ; $5ecc: $11 $f3 $2f
	daa                                              ; $5ecf: $27
	rst  $30                                         ; $5ed0: $f7
	ld   b, a                                        ; $5ed1: $47
	or   d                                           ; $5ed2: $b2
	cp   [hl]                                        ; $5ed3: $be
	sub  l                                           ; $5ed4: $95
	ld   hl, $1fb9                                   ; $5ed5: $21 $b9 $1f
	and  d                                           ; $5ed8: $a2
	ld   hl, sp+$44                                  ; $5ed9: $f8 $44
	call nz, $a68f                                   ; $5edb: $c4 $8f $a6
	ld   sp, $1f6e                                   ; $5ede: $31 $6e $1f
	pop  af                                          ; $5ee1: $f1
	ld   a, [$b752]                                  ; $5ee2: $fa $52 $b7
	ld   e, a                                        ; $5ee5: $5f
	rst  ToBoot                                         ; $5ee6: $c7
	ld   hl, $191f                                   ; $5ee7: $21 $1f $19
	pop  af                                          ; $5eea: $f1
	xor  [hl]                                        ; $5eeb: $ae
	ld   h, c                                        ; $5eec: $61
	ld   a, e                                        ; $5eed: $7b
	ld   c, a                                        ; $5eee: $4f
	ld   sp, hl                                      ; $5eef: $f9
	ld   hl, $541f                                   ; $5ef0: $21 $1f $54
	or   $5f                                         ; $5ef3: $f6 $5f
	ld   h, c                                        ; $5ef5: $61
	ld   c, h                                        ; $5ef6: $4c
	ld   e, h                                        ; $5ef7: $5c
	db   $fc                                         ; $5ef8: $fc
	ld   sp, $e119                                   ; $5ef9: $31 $19 $e1
	rst  $38                                         ; $5efc: $ff
	dec  e                                           ; $5efd: $1d
	add  e                                           ; $5efe: $83
	ld   a, [de]                                     ; $5eff: $1a
	xor  c                                           ; $5f00: $a9
	cp   $51                                         ; $5f01: $fe $51
	inc  de                                          ; $5f03: $13
	pop  af                                          ; $5f04: $f1
	rst  $38                                         ; $5f05: $ff
	add  hl, hl                                      ; $5f06: $29
	and  e                                           ; $5f07: $a3
	ld   d, $c9                                      ; $5f08: $16 $c9
	rst  $38                                         ; $5f0a: $ff
	add  c                                           ; $5f0b: $81
	ld   de, $6ffa                                   ; $5f0c: $11 $fa $6f
	sub  e                                           ; $5f0f: $93
	sub  h                                           ; $5f10: $94

Call_0e9_5f11:
Jump_0e9_5f11:
	ld   de, $ffec                                   ; $5f11: $11 $ec $ff
	or   c                                           ; $5f14: $b1
	ld   de, $4f8f                                   ; $5f15: $11 $8f $4f
	pop  af                                          ; $5f18: $f1
	ld   h, e                                        ; $5f19: $63
	ld   hl, $ffaf                                   ; $5f1a: $21 $af $ff
	or   d                                           ; $5f1d: $b2
	ld   de, $dc1f                                   ; $5f1e: $11 $1f $dc
	or   $13                                         ; $5f21: $f6 $13
	ld   [de], a                                     ; $5f23: $12
	ld   e, a                                        ; $5f24: $5f
	rst  $38                                         ; $5f25: $ff
	db   $d3                                         ; $5f26: $d3
	ld   de, $fa1a                                   ; $5f27: $11 $1a $fa
	rst  $38                                         ; $5f2a: $ff
	ld   de, $5d13                                   ; $5f2b: $11 $13 $5d
	rst  $38                                         ; $5f2e: $ff
	di                                               ; $5f2f: $f3
	ld   de, rAUD1LEN                                   ; $5f30: $11 $11 $ff
	adc  a                                           ; $5f33: $8f
	ld   h, c                                        ; $5f34: $61
	ld   de, $ff99                                   ; $5f35: $11 $99 $ff
	and  $11                                         ; $5f38: $e6 $11
	ld   de, $eadf                                   ; $5f3a: $11 $df $ea
	pop  af                                          ; $5f3d: $f1
	ld   de, $ef9d                                   ; $5f3e: $11 $9d $ef
	rst  $30                                         ; $5f41: $f7
	ld   de, $5f11                                   ; $5f42: $11 $11 $5f
	ldh  a, [c]                                      ; $5f45: $f2
	push hl                                          ; $5f46: $e5
	ld   de, $df6f                                   ; $5f47: $11 $6f $df
	rst  $30                                         ; $5f4a: $f7
	ld   de, $2f21                                   ; $5f4b: $11 $21 $2f
	ld   a, [$112e]                                  ; $5f4e: $fa $2e $11
	ld   c, a                                        ; $5f51: $4f
	db   $fd                                         ; $5f52: $fd
	ld   a, [$2421]                                  ; $5f53: $fa $21 $24
	rla                                              ; $5f56: $17
	rst  $38                                         ; $5f57: $ff
	inc  e                                           ; $5f58: $1c
	ld   hl, $fe3b                                   ; $5f59: $21 $3b $fe
	ei                                               ; $5f5c: $fb
	ld   b, c                                        ; $5f5d: $41
	jr   @+$34                                       ; $5f5e: $18 $32

	rst  $38                                         ; $5f60: $ff
	inc  de                                          ; $5f61: $13
	or   c                                           ; $5f62: $b1
	add  hl, de                                      ; $5f63: $19
	rst  $38                                         ; $5f64: $ff
	call z, $1851                                    ; $5f65: $cc $51 $18
	ld   h, c                                        ; $5f68: $61
	xor  a                                           ; $5f69: $af
	pop  bc                                          ; $5f6a: $c1
	pop  de                                          ; $5f6b: $d1
	ld   d, $ff                                      ; $5f6c: $16 $ff
	call z, $1465                                    ; $5f6e: $cc $65 $14
	sub  d                                           ; $5f71: $92
	cpl                                              ; $5f72: $2f
	pop  af                                          ; $5f73: $f1
	ld   l, b                                        ; $5f74: $68
	inc  d                                           ; $5f75: $14
	xor  a                                           ; $5f76: $af
	ei                                               ; $5f77: $fb
	ld   [hl], l                                     ; $5f78: $75
	ld   sp, $1aa5                                   ; $5f79: $31 $a5 $1a
	ei                                               ; $5f7c: $fb
	inc  e                                           ; $5f7d: $1c
	ld   de, $fa7f                                   ; $5f7e: $11 $7f $fa
	sub  l                                           ; $5f81: $95
	ld   h, c                                        ; $5f82: $61
	ld   e, c                                        ; $5f83: $59
	ld   hl, $14ff                                   ; $5f84: $21 $ff $14
	sub  c                                           ; $5f87: $91
	ld   c, c                                        ; $5f88: $49
	rst  $38                                         ; $5f89: $ff
	and  [hl]                                        ; $5f8a: $a6
	ld   d, [hl]                                     ; $5f8b: $56
	add  hl, de                                      ; $5f8c: $19
	ld   h, c                                        ; $5f8d: $61
	ld   a, a                                        ; $5f8e: $7f
	pop  hl                                          ; $5f8f: $e1
	and  d                                           ; $5f90: $a2
	ld   d, $ff                                      ; $5f91: $16 $ff
	xor  c                                           ; $5f93: $a9
	jr   z, @+$46                                    ; $5f94: $28 $44

	or   d                                           ; $5f96: $b2
	rra                                              ; $5f97: $1f
	ldh  a, [c]                                      ; $5f98: $f2
	ld   a, [de]                                     ; $5f99: $1a
	inc  d                                           ; $5f9a: $14
	ld   a, a                                        ; $5f9b: $7f
	ld   a, [$a153]                                  ; $5f9c: $fa $53 $a1
	sbc  b                                           ; $5f9f: $98
	ld   [de], a                                     ; $5fa0: $12
	rst  $38                                         ; $5fa1: $ff
	ld   d, $51                                      ; $5fa2: $16 $51
	ld   e, h                                        ; $5fa4: $5c
	ei                                               ; $5fa5: $fb
	and  c                                           ; $5fa6: $a1
	ld   a, c                                        ; $5fa7: $79
	inc  l                                           ; $5fa8: $2c
	ld   b, c                                        ; $5fa9: $41
	ld   a, a                                        ; $5faa: $7f
	pop  hl                                          ; $5fab: $e1
	add  e                                           ; $5fac: $83
	dec  h                                           ; $5fad: $25
	rst  $38                                         ; $5fae: $ff
	or   a                                           ; $5faf: $b7
	inc  e                                           ; $5fb0: $1c
	ld   b, [hl]                                     ; $5fb1: $46
	or   c                                           ; $5fb2: $b1
	dec  e                                           ; $5fb3: $1d
	push af                                          ; $5fb4: $f5
	add  hl, de                                      ; $5fb5: $19
	inc  de                                          ; $5fb6: $13
	adc  a                                           ; $5fb7: $8f
	db   $fd                                         ; $5fb8: $fd
	ld   [hl+], a                                    ; $5fb9: $22
	jp   nz, $12a7                                   ; $5fba: $c2 $a7 $12

	rst  $38                                         ; $5fbd: $ff
	ld   [de], a                                     ; $5fbe: $12
	ld   h, d                                        ; $5fbf: $62
	ld   c, h                                        ; $5fc0: $4c
	db   $fd                                         ; $5fc1: $fd
	or   c                                           ; $5fc2: $b1
	ld   l, d                                        ; $5fc3: $6a
	inc  a                                           ; $5fc4: $3c
	ld   sp, $f13f                                   ; $5fc5: $31 $3f $f1
	ld   d, l                                        ; $5fc8: $55
	dec  h                                           ; $5fc9: $25
	rst  $38                                         ; $5fca: $ff
	ret  c                                           ; $5fcb: $d8

	dec  de                                          ; $5fcc: $1b
	add  [hl]                                        ; $5fcd: $86
	pop  bc                                          ; $5fce: $c1
	dec  d                                           ; $5fcf: $15
	rst  $38                                         ; $5fd0: $ff
	ld   d, $42                                      ; $5fd1: $16 $42
	ld   l, a                                        ; $5fd3: $6f
	db   $fd                                         ; $5fd4: $fd
	ld   d, c                                        ; $5fd5: $51
	sub  $99                                         ; $5fd6: $d6 $99
	ld   de, $a19f                                   ; $5fd8: $11 $9f $a1
	add  e                                           ; $5fdb: $83
	add  hl, sp                                      ; $5fdc: $39
	rst  $38                                         ; $5fdd: $ff
	pop  hl                                          ; $5fde: $e1
	ld   e, $4c                                      ; $5fdf: $1e $4c
	ld   h, c                                        ; $5fe1: $61
	dec  e                                           ; $5fe2: $1d
	di                                               ; $5fe3: $f3
	jr   jr_0e9_600a                                 ; $5fe4: $18 $24

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fe6: $cf
	db   $ed                                         ; $5fe7: $ed
	inc  d                                           ; $5fe8: $14
	push de                                          ; $5fe9: $d5
	db   $d3                                         ; $5fea: $d3
	ld   de, $13ff                                   ; $5feb: $11 $ff $13
	ld   h, c                                        ; $5fee: $61
	ld   l, l                                        ; $5fef: $6d
	cp   $91                                         ; $5ff0: $fe $91
	sbc  d                                           ; $5ff2: $9a
	ld   a, l                                        ; $5ff3: $7d
	ld   de, $f11f                                   ; $5ff4: $11 $1f $f1
	ld   d, l                                        ; $5ff7: $55
	rla                                              ; $5ff8: $17
	rst  $38                                         ; $5ff9: $ff
	or   $1c                                         ; $5ffa: $f6 $1c
	adc  c                                           ; $5ffc: $89
	and  c                                           ; $5ffd: $a1
	inc  hl                                          ; $5ffe: $23

Jump_0e9_5fff:
	rst  $38                                         ; $5fff: $ff
	rla                                              ; $6000: $17
	inc  hl                                          ; $6001: $23
	sbc  a                                           ; $6002: $9f
	rst  $38                                         ; $6003: $ff
	ld   hl, $c7d7                                   ; $6004: $21 $d7 $c7
	ld   de, $c16f                                   ; $6007: $11 $6f $c1

jr_0e9_600a:
	ld   [hl], c                                     ; $600a: $71
	ld   c, d                                        ; $600b: $4a
	rst  $38                                         ; $600c: $ff
	pop  af                                          ; $600d: $f1
	ld   e, $6d                                      ; $600e: $1e $6d
	ld   b, c                                        ; $6010: $41
	inc  e                                           ; $6011: $1c
	db   $f4                                         ; $6012: $f4
	ld   d, $16                                      ; $6013: $16 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6015: $cf
	db   $fd                                         ; $6016: $fd
	inc  d                                           ; $6017: $14

jr_0e9_6018:
	ret  c                                           ; $6018: $d8

	pop  de                                          ; $6019: $d1
	ld   de, $11ff                                   ; $601a: $11 $ff $11
	ld   d, c                                        ; $601d: $51
	ld   l, h                                        ; $601e: $6c
	rst  $38                                         ; $601f: $ff
	and  c                                           ; $6020: $a1
	ld   a, e                                        ; $6021: $7b
	sbc  e                                           ; $6022: $9b
	ld   de, $f11f                                   ; $6023: $11 $1f $f1
	inc  sp                                          ; $6026: $33
	jr   z, jr_0e9_6018                              ; $6027: $28 $ef

	or   $1b                                         ; $6029: $f6 $1b
	sbc  h                                           ; $602b: $9c
	and  c                                           ; $602c: $a1
	ld   de, $14ff                                   ; $602d: $11 $ff $14
	inc  hl                                          ; $6030: $23
	sbc  [hl]                                        ; $6031: $9e
	rst  $38                                         ; $6032: $ff
	ld   b, c                                        ; $6033: $41
	cp   b                                           ; $6034: $b8
	ret  c                                           ; $6035: $d8

	ld   de, $f13f                                   ; $6036: $11 $3f $f1
	ld   b, c                                        ; $6039: $41
	ld   c, d                                        ; $603a: $4a
	rst  $38                                         ; $603b: $ff
	pop  af                                          ; $603c: $f1
	inc  e                                           ; $603d: $1c
	adc  [hl]                                        ; $603e: $8e
	ld   h, c                                        ; $603f: $61
	dec  d                                           ; $6040: $15
	cp   $14                                         ; $6041: $fe $14
	dec  h                                           ; $6043: $25
	xor  a                                           ; $6044: $af
	rst  $38                                         ; $6045: $ff
	ld   de, $f3b9                                   ; $6046: $11 $b9 $f3
	ld   de, $a19f                                   ; $6049: $11 $9f $a1
	ld   b, c                                        ; $604c: $41
	ld   l, h                                        ; $604d: $6c
	rst  $38                                         ; $604e: $ff
	pop  hl                                          ; $604f: $e1
	inc  e                                           ; $6050: $1c
	sbc  a                                           ; $6051: $9f
	ld   hl, $fa19                                   ; $6052: $21 $19 $fa
	inc  d                                           ; $6055: $14
	ld   d, $ce                                      ; $6056: $16 $ce
	cp   $11                                         ; $6058: $fe $11
	set  4, c                                        ; $605a: $cb $e1
	ld   de, $61cf                                   ; $605c: $11 $cf $61
	ld   b, c                                        ; $605f: $41
	ld   a, l                                        ; $6060: $7d
	rst  $28                                         ; $6061: $ef
	pop  bc                                          ; $6062: $c1
	dec  hl                                          ; $6063: $2b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6064: $cf
	ld   de, $f51d                                   ; $6065: $11 $1d $f5
	inc  d                                           ; $6068: $14
	daa                                              ; $6069: $27
	adc  $fb                                         ; $606a: $ce $fb
	inc  de                                          ; $606c: $13
	cp   h                                           ; $606d: $bc
	pop  hl                                          ; $606e: $e1
	ld   de, $61df                                   ; $606f: $11 $df $61
	ld   sp, $ff7d                                   ; $6072: $31 $7d $ff
	pop  bc                                          ; $6075: $c1
	ld   a, [hl-]                                    ; $6076: $3a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6077: $cf
	ld   de, $f71d                                   ; $6078: $11 $1d $f7
	inc  de                                          ; $607b: $13
	rla                                              ; $607c: $17
	adc  $fc                                         ; $607d: $ce $fc
	ld   [de], a                                     ; $607f: $12
	cp   h                                           ; $6080: $bc
	pop  hl                                          ; $6081: $e1
	ld   de, $71df                                   ; $6082: $11 $df $71
	ld   sp, $ef7d                                   ; $6085: $31 $7d $ef
	pop  bc                                          ; $6088: $c1
	dec  hl                                          ; $6089: $2b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $608a: $cf
	ld   de, $fb1a                                   ; $608b: $11 $1a $fb
	inc  de                                          ; $608e: $13
	ld   d, $de                                      ; $608f: $16 $de
	cp   $11                                         ; $6091: $fe $11
	xor  h                                           ; $6093: $ac
	ldh  a, [c]                                      ; $6094: $f2
	ld   de, $a1af                                   ; $6095: $11 $af $a1
	ld   sp, $ee7d                                   ; $6098: $31 $7d $ee
	pop  de                                          ; $609b: $d1
	inc  e                                           ; $609c: $1c
	rst  JumpTable                                         ; $609d: $df
	ld   hl, $fd17                                   ; $609e: $21 $17 $fd
	ld   [de], a                                     ; $60a1: $12
	ld   d, $ce                                      ; $60a2: $16 $ce
	xor  $11                                         ; $60a4: $ee $11
	cp   h                                           ; $60a6: $bc
	di                                               ; $60a7: $f3
	ld   de, $f15f                                   ; $60a8: $11 $5f $f1
	ld   hl, $ef6c                                   ; $60ab: $21 $6c $ef
	pop  hl                                          ; $60ae: $e1
	ld   a, [de]                                     ; $60af: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60b0: $cf
	ld   d, c                                        ; $60b1: $51
	inc  de                                          ; $60b2: $13
	rst  $38                                         ; $60b3: $ff
	ld   de, $cf05                                   ; $60b4: $11 $05 $cf
	xor  $31                                         ; $60b7: $ee $31
	adc  h                                           ; $60b9: $8c
	rst  $30                                         ; $60ba: $f7
	ld   de, $f11f                                   ; $60bb: $11 $1f $f1
	ld   de, $fe3b                                   ; $60be: $11 $3b $fe
	or   $16                                         ; $60c1: $f6 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60c3: $cf
	and  c                                           ; $60c4: $a1
	ld   de, $31ff                                   ; $60c5: $11 $ff $31
	ld   [de], a                                     ; $60c8: $12
	xor  a                                           ; $60c9: $af
	sbc  $91                                         ; $60ca: $de $91
	ld   c, e                                        ; $60cc: $4b
	ei                                               ; $60cd: $fb
	ld   de, $f61f                                   ; $60ce: $11 $1f $f6
	ld   de, $fe1a                                   ; $60d1: $11 $1a $fe
	jp   c, $bf12                                    ; $60d4: $da $12 $bf

	pop  de                                          ; $60d7: $d1
	ld   de, $b1df                                   ; $60d8: $11 $df $b1
	ld   de, $fe9e                                   ; $60db: $11 $9e $fe
	pop  bc                                          ; $60de: $c1
	dec  de                                          ; $60df: $1b
	rst  $38                                         ; $60e0: $ff
	ld   hl, $ff18                                   ; $60e1: $21 $18 $ff
	ld   de, $ef17                                   ; $60e4: $11 $17 $ef
	db   $dd                                         ; $60e7: $dd
	ld   de, $f4af                                   ; $60e8: $11 $af $f4
	ld   de, $f14f                                   ; $60eb: $11 $4f $f1
	ld   de, $fe5e                                   ; $60ee: $11 $5e $fe
	call nz, $df17                                   ; $60f1: $c4 $17 $df
	add  c                                           ; $60f4: $81
	ld   de, $41ff                                   ; $60f5: $11 $ff $41
	inc  d                                           ; $60f8: $14
	cp   a                                           ; $60f9: $bf
	db   $dd                                         ; $60fa: $dd
	add  c                                           ; $60fb: $81
	ld   c, h                                        ; $60fc: $4c
	ei                                               ; $60fd: $fb
	ld   de, $f51f                                   ; $60fe: $11 $1f $f5
	ld   de, $fe3c                                   ; $6101: $11 $3c $fe
	reti                                             ; $6104: $d9


	inc  de                                          ; $6105: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6106: $cf
	pop  de                                          ; $6107: $d1
	ld   de, $f1af                                   ; $6108: $11 $af $f1
	ld   de, $fd8f                                   ; $610b: $11 $8f $fd
	or   c                                           ; $610e: $b1
	ld   a, [de]                                     ; $610f: $1a
	sbc  $41                                         ; $6110: $de $41
	rla                                              ; $6112: $17
	rst  $38                                         ; $6113: $ff
	ld   de, $ef28                                   ; $6114: $11 $28 $ef
	swap c                                           ; $6117: $cb $31
	sbc  [hl]                                        ; $6119: $9e
	push af                                          ; $611a: $f5
	ld   de, $f14f                                   ; $611b: $11 $4f $f1
	ld   de, $fd5e                                   ; $611e: $11 $5e $fd
	push bc                                          ; $6121: $c5
	rla                                              ; $6122: $17
	rst  $28                                         ; $6123: $ef
	add  c                                           ; $6124: $81
	ld   de, $41ff                                   ; $6125: $11 $ff $41
	inc  de                                          ; $6128: $13
	rst  JumpTable                                         ; $6129: $df
	db   $ec                                         ; $612a: $ec
	ld   [hl], c                                     ; $612b: $71
	ld   c, h                                        ; $612c: $4c
	ei                                               ; $612d: $fb
	ld   de, $fc1e                                   ; $612e: $11 $1e $fc
	ld   de, $ff2a                                   ; $6131: $11 $2a $ff
	jp   z, $bf11                                    ; $6134: $ca $11 $bf

	pop  hl                                          ; $6137: $e1
	ld   de, $f1af                                   ; $6138: $11 $af $f1
	ld   de, $fc8f                                   ; $613b: $11 $8f $fc
	and  d                                           ; $613e: $a2
	add  hl, de                                      ; $613f: $19
	rst  $38                                         ; $6140: $ff
	ld   b, c                                        ; $6141: $41
	inc  d                                           ; $6142: $14
	rst  $38                                         ; $6143: $ff
	ld   de, $ff16                                   ; $6144: $11 $16 $ff
	db   $db                                         ; $6147: $db
	ld   d, c                                        ; $6148: $51
	ld   l, a                                        ; $6149: $6f
	ld   hl, sp+$11                                  ; $614a: $f8 $11
	rra                                              ; $614c: $1f
	push af                                          ; $614d: $f5
	ld   de, $fe3d                                   ; $614e: $11 $3d $fe
	or   a                                           ; $6151: $b7
	inc  de                                          ; $6152: $13
	rst  JumpTable                                         ; $6153: $df
	pop  bc                                          ; $6154: $c1
	ld   de, $e1df                                   ; $6155: $11 $df $e1
	ld   de, $fb9f                                   ; $6158: $11 $9f $fb
	sub  c                                           ; $615b: $91
	ld   a, [de]                                     ; $615c: $1a
	rst  $38                                         ; $615d: $ff
	ld   sp, $ff16                                   ; $615e: $31 $16 $ff
	ld   de, $ff17                                   ; $6161: $11 $17 $ff
	jp   z, Jump_0e9_7f41                            ; $6164: $ca $41 $7f

	rst  $30                                         ; $6167: $f7
	ld   de, $f32f                                   ; $6168: $11 $2f $f3
	ld   de, $fd4e                                   ; $616b: $11 $4e $fd
	and  a                                           ; $616e: $a7
	inc  de                                          ; $616f: $13
	rst  $28                                         ; $6170: $ef
	or   c                                           ; $6171: $b1
	ld   de, $b1ff                                   ; $6172: $11 $ff $b1
	ld   [de], a                                     ; $6175: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6176: $cf
	ld   [$1c91], a                                  ; $6177: $ea $91 $1c
	db   $fd                                         ; $617a: $fd
	ld   de, $ff1b                                   ; $617b: $11 $1b $ff
	ld   de, $ff1a                                   ; $617e: $11 $1a $ff
	cp   c                                           ; $6181: $b9
	ld   sp, $f48f                                   ; $6182: $31 $8f $f4
	ld   de, $f15f                                   ; $6185: $11 $5f $f1
	ld   de, $fc6f                                   ; $6188: $11 $6f $fc
	sub  l                                           ; $618b: $95
	dec  d                                           ; $618c: $15
	rst  $38                                         ; $618d: $ff
	ld   [hl], c                                     ; $618e: $71
	ld   [de], a                                     ; $618f: $12
	rst  $38                                         ; $6190: $ff
	ld   sp, $ef14                                   ; $6191: $31 $14 $ef
	jp   c, $3e71                                    ; $6194: $da $71 $3e

	ei                                               ; $6197: $fb
	ld   de, $fb1f                                   ; $6198: $11 $1f $fb
	ld   de, $ff2c                                   ; $619b: $11 $2c $ff
	cp   c                                           ; $619e: $b9
	ld   de, $d1bf                                   ; $619f: $11 $bf $d1
	ld   de, $f1cf                                   ; $61a2: $11 $cf $f1
	ld   de, $faaf                                   ; $61a5: $11 $af $fa
	sub  e                                           ; $61a8: $93
	add  hl, de                                      ; $61a9: $19
	cp   $41                                         ; $61aa: $fe $41
	ld   d, $ff                                      ; $61ac: $16 $ff
	ld   de, $ff17                                   ; $61ae: $11 $17 $ff
	cp   c                                           ; $61b1: $b9
	ld   d, c                                        ; $61b2: $51
	ld   l, [hl]                                     ; $61b3: $6e
	rst  $30                                         ; $61b4: $f7
	ld   de, $f14f                                   ; $61b5: $11 $4f $f1
	ld   de, $fb7f                                   ; $61b8: $11 $7f $fb
	sub  [hl]                                        ; $61bb: $96
	dec  d                                           ; $61bc: $15
	rst  $28                                         ; $61bd: $ef
	add  c                                           ; $61be: $81
	ld   [de], a                                     ; $61bf: $12
	rst  $38                                         ; $61c0: $ff
	ld   sp, rAUD1HIGH                                   ; $61c1: $31 $14 $ff
	jp   c, $3e71                                    ; $61c4: $da $71 $3e

	ld   a, [$1f11]                                  ; $61c7: $fa $11 $1f
	rst  $30                                         ; $61ca: $f7
	ld   de, $fd2f                                   ; $61cb: $11 $2f $fd
	sub  a                                           ; $61ce: $97
	ld   de, $d1df                                   ; $61cf: $11 $df $d1
	ld   de, $d1ff                                   ; $61d2: $11 $ff $d1
	ld   de, $fadf                                   ; $61d5: $11 $df $fa
	add  c                                           ; $61d8: $81
	dec  de                                          ; $61d9: $1b
	db   $fc                                         ; $61da: $fc
	ld   de, $fd1e                                   ; $61db: $11 $1e $fd
	ld   de, $ff1c                                   ; $61de: $11 $1c $ff
	xor  b                                           ; $61e1: $a8
	ld   hl, $d2af                                   ; $61e2: $21 $af $d2
	ld   de, $f1bf                                   ; $61e5: $11 $bf $f1
	ld   de, $fbbf                                   ; $61e8: $11 $bf $fb
	sub  e                                           ; $61eb: $93
	add  hl, de                                      ; $61ec: $19
	cp   $31                                         ; $61ed: $fe $31
	ld   a, [de]                                     ; $61ef: $1a
	rst  $38                                         ; $61f0: $ff
	ld   de, $ff1b                                   ; $61f1: $11 $1b $ff
	cp   c                                           ; $61f4: $b9
	ld   sp, $f2af                                   ; $61f5: $31 $af $f2
	ld   de, $f1cf                                   ; $61f8: $11 $cf $f1
	ld   de, $fbdf                                   ; $61fb: $11 $df $fb
	add  d                                           ; $61fe: $82
	add  hl, de                                      ; $61ff: $19
	cp   $31                                         ; $6200: $fe $31
	dec  e                                           ; $6202: $1d
	rst  $38                                         ; $6203: $ff
	ld   de, $fe1d                                   ; $6204: $11 $1d $fe
	cp   b                                           ; $6207: $b8
	ld   sp, $e2af                                   ; $6208: $31 $af $e2
	ld   de, $f1df                                   ; $620b: $11 $df $f1
	ld   de, $fbcf                                   ; $620e: $11 $cf $fb
	add  d                                           ; $6211: $82
	ld   a, [de]                                     ; $6212: $1a
	cp   $21                                         ; $6213: $fe $21
	ld   e, $ff                                      ; $6215: $1e $ff
	ld   de, $fe1d                                   ; $6217: $11 $1d $fe
	cp   b                                           ; $621a: $b8
	ld   hl, $e2af                                   ; $621b: $21 $af $e2
	ld   de, $b1ff                                   ; $621e: $11 $ff $b1
	ld   de, $eaef                                   ; $6221: $11 $ef $ea
	add  c                                           ; $6224: $81
	dec  de                                          ; $6225: $1b
	cp   $11                                         ; $6226: $fe $11
	rra                                              ; $6228: $1f
	ei                                               ; $6229: $fb
	ld   de, $ff1e                                   ; $622a: $11 $1e $ff
	xor  b                                           ; $622d: $a8
	ld   de, $d1bf                                   ; $622e: $11 $bf $d1
	ld   de, $81ff                                   ; $6231: $11 $ff $81
	ld   [de], a                                     ; $6234: $12
	rst  $38                                         ; $6235: $ff
	ld   [$1c81], a                                  ; $6236: $ea $81 $1c
	db   $fc                                         ; $6239: $fc
	ld   de, $f51f                                   ; $623a: $11 $1f $f5
	ld   de, $fe3f                                   ; $623d: $11 $3f $fe
	and  a                                           ; $6240: $a7
	ld   [de], a                                     ; $6241: $12
	rst  JumpTable                                         ; $6242: $df
	and  c                                           ; $6243: $a1
	ld   de, $21ff                                   ; $6244: $11 $ff $21
	dec  d                                           ; $6247: $15
	rst  $38                                         ; $6248: $ff
	reti                                             ; $6249: $d9


	ld   [hl], c                                     ; $624a: $71
	ld   a, $fa                                      ; $624b: $3e $fa
	ld   de, $f11f                                   ; $624d: $11 $1f $f1
	ld   de, $fd6f                                   ; $6250: $11 $6f $fd
	sub  a                                           ; $6253: $97
	inc  de                                          ; $6254: $13
	rst  JumpTable                                         ; $6255: $df
	sub  c                                           ; $6256: $91
	inc  de                                          ; $6257: $13
	rst  $38                                         ; $6258: $ff
	ld   de, $ff17                                   ; $6259: $11 $17 $ff
	ret                                              ; $625c: $c9


	ld   h, c                                        ; $625d: $61
	ld   c, l                                        ; $625e: $4d
	ld   sp, hl                                      ; $625f: $f9
	ld   de, $f13f                                   ; $6260: $11 $3f $f1
	ld   de, $fd7f                                   ; $6263: $11 $7f $fd
	and  [hl]                                        ; $6266: $a6
	dec  d                                           ; $6267: $15
	rst  $28                                         ; $6268: $ef
	add  c                                           ; $6269: $81
	dec  d                                           ; $626a: $15
	rst  $38                                         ; $626b: $ff
	ld   de, $ff19                                   ; $626c: $11 $19 $ff
	ret                                              ; $626f: $c9


	ld   d, c                                        ; $6270: $51
	ld   l, [hl]                                     ; $6271: $6e
	rst  $30                                         ; $6272: $f7
	ld   de, $f15f                                   ; $6273: $11 $5f $f1
	ld   de, $fc9f                                   ; $6276: $11 $9f $fc
	sub  l                                           ; $6279: $95
	ld   d, $ef                                      ; $627a: $16 $ef
	ld   [hl], c                                     ; $627c: $71
	rla                                              ; $627d: $17
	rst  $38                                         ; $627e: $ff
	ld   de, $fe1b                                   ; $627f: $11 $1b $fe
	cp   c                                           ; $6282: $b9
	ld   b, c                                        ; $6283: $41
	ld   a, [hl]                                     ; $6284: $7e
	rst  $30                                         ; $6285: $f7
	ld   de, $f15f                                   ; $6286: $11 $5f $f1
	ld   de, $fc9f                                   ; $6289: $11 $9f $fc
	sub  l                                           ; $628c: $95
	ld   d, $ef                                      ; $628d: $16 $ef
	ld   [hl], c                                     ; $628f: $71
	dec  d                                           ; $6290: $15
	rst  $38                                         ; $6291: $ff
	ld   de, $fe1a                                   ; $6292: $11 $1a $fe
	ret                                              ; $6295: $c9


	ld   d, c                                        ; $6296: $51
	ld   l, a                                        ; $6297: $6f
	ld   hl, sp+$11                                  ; $6298: $f8 $11
	ld   c, a                                        ; $629a: $4f
	pop  af                                          ; $629b: $f1
	ld   de, $fd9f                                   ; $629c: $11 $9f $fd
	sub  [hl]                                        ; $629f: $96
	dec  d                                           ; $62a0: $15
	rst  $28                                         ; $62a1: $ef
	add  c                                           ; $62a2: $81
	inc  de                                          ; $62a3: $13
	rst  $38                                         ; $62a4: $ff
	ld   de, $ff18                                   ; $62a5: $11 $18 $ff
	reti                                             ; $62a8: $d9


	ld   h, c                                        ; $62a9: $61
	ld   c, [hl]                                     ; $62aa: $4e
	ld   a, [$1f11]                                  ; $62ab: $fa $11 $1f
	push af                                          ; $62ae: $f5
	ld   de, $fe3f                                   ; $62af: $11 $3f $fe
	sub  a                                           ; $62b2: $97
	ld   de, $e1df                                   ; $62b3: $11 $df $e1
	ld   de, $a1ff                                   ; $62b6: $11 $ff $a1
	ld   de, $faff                                   ; $62b9: $11 $ff $fa
	add  d                                           ; $62bc: $82
	dec  de                                          ; $62bd: $1b
	rst  $38                                         ; $62be: $ff
	ld   sp, $ff19                                   ; $62bf: $31 $19 $ff
	ld   de, $ff1b                                   ; $62c2: $11 $1b $ff
	cp   c                                           ; $62c5: $b9
	ld   d, c                                        ; $62c6: $51
	sbc  [hl]                                        ; $62c7: $9e
	or   $11                                         ; $62c8: $f6 $11
	ld   e, a                                        ; $62ca: $5f
	pop  af                                          ; $62cb: $f1
	ld   de, $fdaf                                   ; $62cc: $11 $af $fd
	sub  l                                           ; $62cf: $95
	ld   d, $ef                                      ; $62d0: $16 $ef
	sub  c                                           ; $62d2: $91
	ld   de, $51ff                                   ; $62d3: $11 $ff $51
	inc  de                                          ; $62d6: $13
	rst  $38                                         ; $62d7: $ff
	ld   sp, hl                                      ; $62d8: $f9
	ld   [hl], c                                     ; $62d9: $71
	dec  e                                           ; $62da: $1d
	cp   $11                                         ; $62db: $fe $11
	rra                                              ; $62dd: $1f
	ei                                               ; $62de: $fb
	ld   de, $ff1f                                   ; $62df: $11 $1f $ff
	cp   b                                           ; $62e2: $b8
	ld   hl, $f5af                                   ; $62e3: $21 $af $f5
	ld   de, $f13f                                   ; $62e6: $11 $3f $f1
	ld   de, $fe8f                                   ; $62e9: $11 $8f $fe
	add  [hl]                                        ; $62ec: $86
	inc  d                                           ; $62ed: $14
	rst  JumpTable                                         ; $62ee: $df
	or   c                                           ; $62ef: $b1
	ld   de, $51ff                                   ; $62f0: $11 $ff $51
	inc  d                                           ; $62f3: $14
	rst  $38                                         ; $62f4: $ff
	jp   hl                                          ; $62f5: $e9


	add  c                                           ; $62f6: $81
	inc  e                                           ; $62f7: $1c
	rst  $38                                         ; $62f8: $ff
	ld   de, $ff1a                                   ; $62f9: $11 $1a $ff
	ld   de, $ff1c                                   ; $62fc: $11 $1c $ff
	ret  z                                           ; $62ff: $c8

	ld   b, c                                        ; $6300: $41
	adc  a                                           ; $6301: $8f
	rst  $30                                         ; $6302: $f7
	ld   de, $f12f                                   ; $6303: $11 $2f $f1
	ld   de, $fe7f                                   ; $6306: $11 $7f $fe
	sub  a                                           ; $6309: $97
	inc  d                                           ; $630a: $14
	rst  JumpTable                                         ; $630b: $df
	pop  de                                          ; $630c: $d1
	ld   de, $c1ff                                   ; $630d: $11 $ff $c1
	ld   de, $fbef                                   ; $6310: $11 $ef $fb
	add  d                                           ; $6313: $82
	add  hl, de                                      ; $6314: $19
	rst  $38                                         ; $6315: $ff
	ld   b, c                                        ; $6316: $41
	inc  de                                          ; $6317: $13
	rst  $38                                         ; $6318: $ff
	ld   de, $ff18                                   ; $6319: $11 $18 $ff
	jp   hl                                          ; $631c: $e9


	ld   h, c                                        ; $631d: $61
	ld   c, l                                        ; $631e: $4d
	db   $fd                                         ; $631f: $fd
	ld   de, $fd1e                                   ; $6320: $11 $1e $fd
	ld   de, $ff1d                                   ; $6323: $11 $1d $ff
	cp   b                                           ; $6326: $b8
	ld   hl, $f6af                                   ; $6327: $21 $af $f6
	ld   de, $f41f                                   ; $632a: $11 $1f $f4
	ld   de, $fe5f                                   ; $632d: $11 $5f $fe
	add  a                                           ; $6330: $87
	ld   [de], a                                     ; $6331: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6332: $cf
	pop  af                                          ; $6333: $f1
	ld   de, $f1af                                   ; $6334: $11 $af $f1
	ld   de, $fbcf                                   ; $6337: $11 $cf $fb
	add  h                                           ; $633a: $84
	jr   @+$01                                       ; $633b: $18 $ff

	add  c                                           ; $633d: $81
	ld   de, $61ff                                   ; $633e: $11 $ff $61
	inc  de                                          ; $6341: $13
	rst  $38                                         ; $6342: $ff
	ld   sp, hl                                      ; $6343: $f9
	ld   [hl], c                                     ; $6344: $71
	dec  de                                          ; $6345: $1b
	rst  $38                                         ; $6346: $ff
	ld   bc, $ff19                                   ; $6347: $01 $19 $ff
	ld   de, $ff1c                                   ; $634a: $11 $1c $ff
	ret  z                                           ; $634d: $c8

	ld   b, c                                        ; $634e: $41
	ld   a, [hl]                                     ; $634f: $7e
	ld   sp, hl                                      ; $6350: $f9
	ld   de, $f71f                                   ; $6351: $11 $1f $f7
	ld   de, $ff3f                                   ; $6354: $11 $3f $ff
	sub  a                                           ; $6357: $97
	ld   de, $f1bf                                   ; $6358: $11 $bf $f1
	ld   de, $f17f                                   ; $635b: $11 $7f $f1
	ld   de, $fcaf                                   ; $635e: $11 $af $fc
	ld   [hl], l                                     ; $6361: $75
	ld   d, $df                                      ; $6362: $16 $df
	or   c                                           ; $6364: $b1
	ld   de, $91ff                                   ; $6365: $11 $ff $91
	ld   de, $faff                                   ; $6368: $11 $ff $fa
	ld   [hl], c                                     ; $636b: $71
	dec  de                                          ; $636c: $1b
	rst  $38                                         ; $636d: $ff
	ld   hl, $ff16                                   ; $636e: $21 $16 $ff
	ld   de, $ff1a                                   ; $6371: $11 $1a $ff
	ret  c                                           ; $6374: $d8

	ld   d, c                                        ; $6375: $51
	ld   e, [hl]                                     ; $6376: $5e
	db   $fd                                         ; $6377: $fd
	ld   de, $ff1e                                   ; $6378: $11 $1e $ff
	ld   de, $ff1c                                   ; $637b: $11 $1c $ff
	or   a                                           ; $637e: $b7
	ld   hl, $f69f                                   ; $637f: $21 $9f $f6
	ld   de, $f32f                                   ; $6382: $11 $2f $f3
	ld   de, $fe6f                                   ; $6385: $11 $6f $fe
	add  l                                           ; $6388: $85
	inc  d                                           ; $6389: $14
	rst  $28                                         ; $638a: $ef
	pop  hl                                          ; $638b: $e1
	ld   de, $f1cf                                   ; $638c: $11 $cf $f1
	ld   de, $fccf                                   ; $638f: $11 $cf $fc
	ld   h, d                                        ; $6392: $62
	jr   @+$01                                       ; $6393: $18 $ff

	add  c                                           ; $6395: $81
	ld   de, $71ff                                   ; $6396: $11 $ff $71
	inc  de                                          ; $6399: $13
	rst  $38                                         ; $639a: $ff
	ld   sp, hl                                      ; $639b: $f9
	ld   d, c                                        ; $639c: $51
	dec  l                                           ; $639d: $2d
	rst  $38                                         ; $639e: $ff
	ld   de, $ff17                                   ; $639f: $11 $17 $ff
	ld   de, $ff1a                                   ; $63a2: $11 $1a $ff
	sub  $41                                         ; $63a5: $d6 $41
	ld   a, a                                        ; $63a7: $7f
	ld   a, [$1f11]                                  ; $63a8: $fa $11 $1f
	ei                                               ; $63ab: $fb
	ld   de, $ff1f                                   ; $63ac: $11 $1f $ff
	sub  l                                           ; $63af: $95
	ld   bc, $f2cf                                   ; $63b0: $01 $cf $f2
	ld   de, $f16f                                   ; $63b3: $11 $6f $f1
	ld   de, $fd9f                                   ; $63b6: $11 $9f $fd
	ld   h, h                                        ; $63b9: $64
	ld   d, $ef                                      ; $63ba: $16 $ef
	pop  bc                                          ; $63bc: $c1
	ld   de, $f1ef                                   ; $63bd: $11 $ef $f1
	ld   de, $fbdf                                   ; $63c0: $11 $df $fb
	ld   d, d                                        ; $63c3: $52
	ld   a, [de]                                     ; $63c4: $1a
	rst  $38                                         ; $63c5: $ff
	ld   h, c                                        ; $63c6: $61
	ld   [de], a                                     ; $63c7: $12
	rst  $38                                         ; $63c8: $ff
	ld   b, c                                        ; $63c9: $41
	dec  d                                           ; $63ca: $15
	rst  $38                                         ; $63cb: $ff
	rst  $30                                         ; $63cc: $f7
	ld   b, c                                        ; $63cd: $41
	ld   c, [hl]                                     ; $63ce: $4e
	cp   $11                                         ; $63cf: $fe $11
	inc  e                                           ; $63d1: $1c
	rst  $38                                         ; $63d2: $ff
	ld   de, $ff1d                                   ; $63d3: $11 $1d $ff
	and  l                                           ; $63d6: $a5
	ld   sp, $f79f                                   ; $63d7: $31 $9f $f7
	ld   de, $f61f                                   ; $63da: $11 $1f $f6
	ld   de, $ff3f                                   ; $63dd: $11 $3f $ff
	ld   [hl], h                                     ; $63e0: $74
	inc  de                                          ; $63e1: $13
	rst  JumpTable                                         ; $63e2: $df
	pop  af                                          ; $63e3: $f1
	ld   de, $f17f                                   ; $63e4: $11 $7f $f1
	ld   de, $fd9f                                   ; $63e7: $11 $9f $fd
	ld   d, e                                        ; $63ea: $53
	ld   d, $ef                                      ; $63eb: $16 $ef
	or   c                                           ; $63ed: $b1
	ld   de, $d1ff                                   ; $63ee: $11 $ff $d1
	ld   de, $f9ff                                   ; $63f1: $11 $ff $f9
	ld   d, c                                        ; $63f4: $51
	dec  de                                          ; $63f5: $1b
	rst  $38                                         ; $63f6: $ff
	ld   b, c                                        ; $63f7: $41
	inc  de                                          ; $63f8: $13
	rst  $38                                         ; $63f9: $ff
	ld   sp, $ff15                                   ; $63fa: $31 $15 $ff
	and  $41                                         ; $63fd: $e6 $41
	ld   e, [hl]                                     ; $63ff: $5e
	db   $fd                                         ; $6400: $fd
	ld   de, $ff1d                                   ; $6401: $11 $1d $ff
	ld   de, $ff1e                                   ; $6404: $11 $1e $ff
	and  l                                           ; $6407: $a5
	ld   hl, $f69f                                   ; $6408: $21 $9f $f6
	ld   de, $f61f                                   ; $640b: $11 $1f $f6
	ld   de, $ff3f                                   ; $640e: $11 $3f $ff
	ld   [hl], h                                     ; $6411: $74
	inc  de                                          ; $6412: $13
	rst  JumpTable                                         ; $6413: $df
	pop  hl                                          ; $6414: $e1
	ld   de, $f17f                                   ; $6415: $11 $7f $f1
	ld   de, $fcaf                                   ; $6418: $11 $af $fc
	ld   d, e                                        ; $641b: $53
	rla                                              ; $641c: $17
	rst  $38                                         ; $641d: $ff
	and  c                                           ; $641e: $a1
	ld   de, $d1ff                                   ; $641f: $11 $ff $d1
	ld   de, $f8ff                                   ; $6422: $11 $ff $f8
	ld   b, c                                        ; $6425: $41
	dec  de                                          ; $6426: $1b
	rst  $38                                         ; $6427: $ff
	ld   d, c                                        ; $6428: $51
	ld   [de], a                                     ; $6429: $12
	rst  $38                                         ; $642a: $ff
	ld   d, c                                        ; $642b: $51
	inc  d                                           ; $642c: $14
	rst  $38                                         ; $642d: $ff
	and  $41                                         ; $642e: $e6 $41
	ld   c, [hl]                                     ; $6430: $4e
	rst  $38                                         ; $6431: $ff
	ld   de, $ff18                                   ; $6432: $11 $18 $ff
	ld   de, $ff19                                   ; $6435: $11 $19 $ff
	push bc                                          ; $6438: $c5
	ld   sp, $fb7f                                   ; $6439: $31 $7f $fb
	ld   de, $ff1f                                   ; $643c: $11 $1f $ff
	ld   de, $ff1d                                   ; $643f: $11 $1d $ff
	and  h                                           ; $6442: $a4
	ld   hl, $f7af                                   ; $6443: $21 $af $f7
	ld   de, $fa1f                                   ; $6446: $11 $1f $fa
	ld   de, $ff1f                                   ; $6449: $11 $1f $ff
	ld   [hl], h                                     ; $644c: $74
	ld   [de], a                                     ; $644d: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $644e: $cf
	db   $f4                                         ; $644f: $f4
	ld   de, $f43f                                   ; $6450: $11 $3f $f4
	ld   de, $ff4f                                   ; $6453: $11 $4f $ff
	ld   d, e                                        ; $6456: $53
	inc  d                                           ; $6457: $14
	rst  JumpTable                                         ; $6458: $df
	pop  hl                                          ; $6459: $e1
	ld   de, $f17f                                   ; $645a: $11 $7f $f1
	ld   de, $fd8f                                   ; $645d: $11 $8f $fd
	ld   b, e                                        ; $6460: $43
	ld   d, $ff                                      ; $6461: $16 $ff
	pop  de                                          ; $6463: $d1
	ld   de, $f19f                                   ; $6464: $11 $9f $f1
	ld   de, $fc9f                                   ; $6467: $11 $9f $fc
	ld   b, e                                        ; $646a: $43
	rla                                              ; $646b: $17
	rst  $38                                         ; $646c: $ff
	or   c                                           ; $646d: $b1
	ld   de, $f1ff                                   ; $646e: $11 $ff $f1
	ld   de, $f9ef                                   ; $6471: $11 $ef $f9
	ld   b, d                                        ; $6474: $42
	ld   a, [de]                                     ; $6475: $1a
	rst  $38                                         ; $6476: $ff
	add  c                                           ; $6477: $81
	ld   de, $d1ff                                   ; $6478: $11 $ff $d1
	ld   de, $f9ff                                   ; $647b: $11 $ff $f9
	ld   b, c                                        ; $647e: $41
	ld   a, [de]                                     ; $647f: $1a
	rst  $38                                         ; $6480: $ff
	ld   [hl], c                                     ; $6481: $71
	ld   de, $91ff                                   ; $6482: $11 $ff $91
	ld   de, $f7ff                                   ; $6485: $11 $ff $f7
	ld   b, c                                        ; $6488: $41
	inc  l                                           ; $6489: $2c
	rst  $38                                         ; $648a: $ff
	ld   d, c                                        ; $648b: $51
	ld   de, $a1ff                                   ; $648c: $11 $ff $a1
	ld   de, $f7ff                                   ; $648f: $11 $ff $f7
	ld   b, c                                        ; $6492: $41
	dec  l                                           ; $6493: $2d
	rst  $38                                         ; $6494: $ff
	ld   b, c                                        ; $6495: $41
	inc  de                                          ; $6496: $13
	rst  $38                                         ; $6497: $ff
	ld   b, c                                        ; $6498: $41
	dec  d                                           ; $6499: $15
	rst  $38                                         ; $649a: $ff
	and  $41                                         ; $649b: $e6 $41
	ld   c, l                                        ; $649d: $4d
	cp   $11                                         ; $649e: $fe $11
	jr   @+$01                                       ; $64a0: $18 $ff

	ld   de, $ff1a                                   ; $64a2: $11 $1a $ff
	push bc                                          ; $64a5: $c5
	ld   sp, $fc6f                                   ; $64a6: $31 $6f $fc
	ld   de, $ff1c                                   ; $64a9: $11 $1c $ff
	ld   de, $ff1c                                   ; $64ac: $11 $1c $ff
	call nz, $8f21                                   ; $64af: $c4 $21 $8f
	ei                                               ; $64b2: $fb
	ld   de, $ff1f                                   ; $64b3: $11 $1f $ff
	ld   de, $ff1e                                   ; $64b6: $11 $1e $ff

Call_0e9_64b9:
	and  h                                           ; $64b9: $a4
	ld   hl, $f7af                                   ; $64ba: $21 $af $f7
	ld   de, $f91f                                   ; $64bd: $11 $1f $f9
	ld   de, $ff1f                                   ; $64c0: $11 $1f $ff
	add  h                                           ; $64c3: $84
	ld   de, $f4cf                                   ; $64c4: $11 $cf $f4
	ld   de, $f62f                                   ; $64c7: $11 $2f $f6
	ld   de, $ff3f                                   ; $64ca: $11 $3f $ff
	ld   [hl], h                                     ; $64cd: $74
	ld   [de], a                                     ; $64ce: $12
	rst  $28                                         ; $64cf: $ef
	ldh  a, [c]                                      ; $64d0: $f2
	ld   de, $f16f                                   ; $64d1: $11 $6f $f1
	ld   de, $fe7f                                   ; $64d4: $11 $7f $fe
	ld   d, h                                        ; $64d7: $54
	dec  d                                           ; $64d8: $15
	rst  $38                                         ; $64d9: $ff
	pop  de                                          ; $64da: $d1
	ld   de, $f1af                                   ; $64db: $11 $af $f1
	ld   de, $fdbf                                   ; $64de: $11 $bf $fd
	ld   d, e                                        ; $64e1: $53
	rla                                              ; $64e2: $17
	rst  $38                                         ; $64e3: $ff
	or   c                                           ; $64e4: $b1
	ld   de, $d1ff                                   ; $64e5: $11 $ff $d1
	ld   de, $faff                                   ; $64e8: $11 $ff $fa
	ld   b, d                                        ; $64eb: $42
	ld   a, [de]                                     ; $64ec: $1a
	rst  $38                                         ; $64ed: $ff
	ld   d, c                                        ; $64ee: $51
	ld   [de], a                                     ; $64ef: $12
	rst  $38                                         ; $64f0: $ff
	ld   b, c                                        ; $64f1: $41
	dec  d                                           ; $64f2: $15
	rst  $38                                         ; $64f3: $ff
	and  $41                                         ; $64f4: $e6 $41
	ld   a, $ff                                      ; $64f6: $3e $ff
	ld   de, $ff18                                   ; $64f8: $11 $18 $ff
	ld   de, $ff19                                   ; $64fb: $11 $19 $ff
	push de                                          ; $64fe: $d5
	ld   sp, $fc6f                                   ; $64ff: $31 $6f $fc
	ld   de, $ff1d                                   ; $6502: $11 $1d $ff
	ld   de, $ff1c                                   ; $6505: $11 $1c $ff
	or   h                                           ; $6508: $b4
	ld   hl, $f98f                                   ; $6509: $21 $8f $f9
	ld   de, $fe1f                                   ; $650c: $11 $1f $fe
	ld   de, $ff1f                                   ; $650f: $11 $1f $ff
	and  h                                           ; $6512: $a4
	ld   hl, $f7af                                   ; $6513: $21 $af $f7
	ld   de, $fa1f                                   ; $6516: $11 $1f $fa
	ld   de, $ff1f                                   ; $6519: $11 $1f $ff
	sub  h                                           ; $651c: $94
	ld   de, $f5bf                                   ; $651d: $11 $bf $f5
	ld   de, $f91f                                   ; $6520: $11 $1f $f9
	ld   de, $ff0f                                   ; $6523: $11 $0f $ff
	add  h                                           ; $6526: $84
	ld   de, $f5cf                                   ; $6527: $11 $cf $f5
	ld   de, $fa1f                                   ; $652a: $11 $1f $fa
	ld   de, $ff1f                                   ; $652d: $11 $1f $ff
	add  h                                           ; $6530: $84
	ld   de, $f6cf                                   ; $6531: $11 $cf $f6
	ld   de, $fa1f                                   ; $6534: $11 $1f $fa
	ld   de, $ff1f                                   ; $6537: $11 $1f $ff
	sub  h                                           ; $653a: $94
	ld   de, $f6bf                                   ; $653b: $11 $bf $f6
	ld   de, $fd1f                                   ; $653e: $11 $1f $fd
	ld   de, $ff1e                                   ; $6541: $11 $1e $ff
	and  h                                           ; $6544: $a4
	ld   de, $f8af                                   ; $6545: $11 $af $f8
	ld   de, $ff1f                                   ; $6548: $11 $1f $ff
	ld   de, $ff1c                                   ; $654b: $11 $1c $ff
	or   h                                           ; $654e: $b4
	ld   bc, $fa9f                                   ; $654f: $01 $9f $fa
	ld   de, $ff19                                   ; $6552: $11 $19 $ff
	ld   de, $ff18                                   ; $6555: $11 $18 $ff
	push hl                                          ; $6558: $e5
	ld   de, $fd6f                                   ; $6559: $11 $6f $fd
	ld   de, $ff15                                   ; $655c: $11 $15 $ff
	ld   sp, $ff15                                   ; $655f: $31 $15 $ff
	or   $21                                         ; $6562: $f6 $21
	ccf                                              ; $6564: $3f
	rst  $38                                         ; $6565: $ff
	ld   sp, rAUD1LEN                                   ; $6566: $31 $11 $ff
	pop  hl                                          ; $6569: $e1
	ld   de, $f9ef                                   ; $656a: $11 $ef $f9
	ld   sp, $ff1b                                   ; $656d: $31 $1b $ff
	add  c                                           ; $6570: $81
	ld   de, $f1cf                                   ; $6571: $11 $cf $f1
	ld   de, $fdaf                                   ; $6574: $11 $af $fd
	ld   b, c                                        ; $6577: $41
	rla                                              ; $6578: $17
	rst  $38                                         ; $6579: $ff
	pop  hl                                          ; $657a: $e1
	ld   de, $f94f                                   ; $657b: $11 $4f $f9
	ld   de, $ff1f                                   ; $657e: $11 $1f $ff
	ld   [hl], d                                     ; $6581: $72
	ld   de, $f8cf                                   ; $6582: $11 $cf $f8
	ld   de, $ff1b                                   ; $6585: $11 $1b $ff
	ld   de, $ff19                                   ; $6588: $11 $19 $ff
	call nc, Call_0e9_5f11                           ; $658b: $d4 $11 $5f
	rst  $38                                         ; $658e: $ff
	ld   de, rAUD1LOW                                   ; $658f: $11 $13 $ff
	pop  hl                                          ; $6592: $e1
	ld   de, $faff                                   ; $6593: $11 $ff $fa
	ld   hl, $ff1a                                   ; $6596: $21 $1a $ff
	or   c                                           ; $6599: $b1
	ld   de, $f66f                                   ; $659a: $11 $6f $f6
	ld   de, $ff2f                                   ; $659d: $11 $2f $ff
	ld   h, c                                        ; $65a0: $61
	ld   de, $f7df                                   ; $65a1: $11 $df $f7
	ld   de, $ff1a                                   ; $65a4: $11 $1a $ff

Call_0e9_65a7:
	ld   de, $ff16                                   ; $65a7: $11 $16 $ff
	db   $e4                                         ; $65aa: $e4
	ld   de, $ff4f                                   ; $65ab: $11 $4f $ff
	ld   sp, rAUD1ENV                                   ; $65ae: $31 $12 $ff
	pop  af                                          ; $65b1: $f1
	ld   de, $fcdf                                   ; $65b2: $11 $df $fc
	ld   hl, $ff19                                   ; $65b5: $21 $19 $ff
	pop  de                                          ; $65b8: $d1
	ld   de, $ff4f                                   ; $65b9: $11 $4f $ff
	ld   de, $ff1f                                   ; $65bc: $11 $1f $ff
	add  c                                           ; $65bf: $81
	ld   de, $fabf                                   ; $65c0: $11 $bf $fa
	ld   de, $ff18                                   ; $65c3: $11 $18 $ff
	ld   b, c                                        ; $65c6: $41
	inc  d                                           ; $65c7: $14
	rst  $38                                         ; $65c8: $ff
	push af                                          ; $65c9: $f5

Call_0e9_65ca:
	ld   de, $ff3f                                   ; $65ca: $11 $3f $ff
	ld   d, c                                        ; $65cd: $51
	ld   de, $f1bf                                   ; $65ce: $11 $bf $f1
	ld   de, $fd8f                                   ; $65d1: $11 $8f $fd
	ld   sp, $ff16                                   ; $65d4: $31 $16 $ff
	ldh  a, [c]                                      ; $65d7: $f2
	ld   de, $ff3f                                   ; $65d8: $11 $3f $ff
	ld   de, $ff1f                                   ; $65db: $11 $1f $ff
	and  d                                           ; $65de: $a2
	ld   de, $faaf                                   ; $65df: $11 $af $fa
	ld   de, $ff16                                   ; $65e2: $11 $16 $ff
	ld   h, c                                        ; $65e5: $61
	inc  de                                          ; $65e6: $13
	rst  $38                                         ; $65e7: $ff
	or   $11                                         ; $65e8: $f6 $11
	ld   l, $ff                                      ; $65ea: $2e $ff
	ld   h, c                                        ; $65ec: $61
	ld   de, $f1cf                                   ; $65ed: $11 $cf $f1
	ld   de, $fcbf                                   ; $65f0: $11 $bf $fc
	ld   sp, $ff16                                   ; $65f3: $31 $16 $ff
	pop  de                                          ; $65f6: $d1
	ld   de, $fb4f                                   ; $65f7: $11 $4f $fb
	ld   de, $ff1f                                   ; $65fa: $11 $1f $ff
	add  c                                           ; $65fd: $81
	ld   de, $f8cf                                   ; $65fe: $11 $cf $f8
	ld   de, $ff1b                                   ; $6601: $11 $1b $ff
	ld   de, $ff19                                   ; $6604: $11 $19 $ff
	db   $d3                                         ; $6607: $d3
	ld   de, $fd6f                                   ; $6608: $11 $6f $fd
	ld   de, $ff15                                   ; $660b: $11 $15 $ff
	ld   [hl], c                                     ; $660e: $71
	ld   [de], a                                     ; $660f: $12
	rst  $38                                         ; $6610: $ff
	rst  $30                                         ; $6611: $f7
	ld   de, $ff1d                                   ; $6612: $11 $1d $ff
	ld   d, c                                        ; $6615: $51
	ld   de, $f1ff                                   ; $6616: $11 $ff $f1
	ld   de, $fbcf                                   ; $6619: $11 $cf $fb
	ld   hl, $ff19                                   ; $661c: $21 $19 $ff
	and  c                                           ; $661f: $a1
	ld   de, $f1af                                   ; $6620: $11 $af $f1
	ld   de, $fe8f                                   ; $6623: $11 $8f $fe
	ld   b, c                                        ; $6626: $41
	dec  d                                           ; $6627: $15
	rst  $38                                         ; $6628: $ff
	pop  de                                          ; $6629: $d1
	ld   de, $f17f                                   ; $662a: $11 $7f $f1
	ld   de, $ff6f                                   ; $662d: $11 $6f $ff
	ld   h, d                                        ; $6630: $62
	inc  d                                           ; $6631: $14
	rst  $38                                         ; $6632: $ff
	pop  hl                                          ; $6633: $e1
	ld   de, $f63f                                   ; $6634: $11 $3f $f6
	ld   de, $ff3f                                   ; $6637: $11 $3f $ff
	ld   [hl], d                                     ; $663a: $72
	ld   [de], a                                     ; $663b: $12
	rst  JumpTable                                         ; $663c: $df
	db   $f4                                         ; $663d: $f4
	ld   de, $f81f                                   ; $663e: $11 $1f $f8
	ld   de, $ff1f                                   ; $6641: $11 $1f $ff
	sub  e                                           ; $6644: $93
	ld   de, $f5cf                                   ; $6645: $11 $cf $f5
	ld   de, $f90f                                   ; $6648: $11 $0f $f9
	ld   de, $ff1f                                   ; $664b: $11 $1f $ff
	and  h                                           ; $664e: $a4
	ld   de, $f5cf                                   ; $664f: $11 $cf $f5
	ld   de, $f90f                                   ; $6652: $11 $0f $f9
	ld   de, $ff1f                                   ; $6655: $11 $1f $ff
	and  h                                           ; $6658: $a4
	ld   de, $f5cf                                   ; $6659: $11 $cf $f5
	ld   de, $f61f                                   ; $665c: $11 $1f $f6
	ld   de, $ff2f                                   ; $665f: $11 $2f $ff
	sub  h                                           ; $6662: $94
	ld   de, $f4cf                                   ; $6663: $11 $cf $f4
	ld   de, $f62f                                   ; $6666: $11 $2f $f6
	ld   de, $ff2f                                   ; $6669: $11 $2f $ff
	sub  h                                           ; $666c: $94
	ld   de, $f4df                                   ; $666d: $11 $df $f4
	ld   de, $f62f                                   ; $6670: $11 $2f $f6
	ld   de, $ff3f                                   ; $6673: $11 $3f $ff
	add  h                                           ; $6676: $84
	ld   de, $f3df                                   ; $6677: $11 $df $f3
	ld   de, $f43f                                   ; $667a: $11 $3f $f4
	ld   de, $ff4f                                   ; $667d: $11 $4f $ff
	ld   [hl], e                                     ; $6680: $73
	ld   [de], a                                     ; $6681: $12
	rst  $28                                         ; $6682: $ef
	ldh  [c], a                                      ; $6683: $e2
	ld   de, $f33f                                   ; $6684: $11 $3f $f3
	ld   de, $ff4f                                   ; $6687: $11 $4f $ff
	ld   [hl], e                                     ; $668a: $73
	ld   [de], a                                     ; $668b: $12
	rst  JumpTable                                         ; $668c: $df
	ldh  a, [c]                                      ; $668d: $f2
	ld   de, $f24f                                   ; $668e: $11 $4f $f2
	ld   de, $ff5f                                   ; $6691: $11 $5f $ff
	ld   [hl], e                                     ; $6694: $73
	inc  de                                          ; $6695: $13
	rst  $38                                         ; $6696: $ff
	pop  de                                          ; $6697: $d1
	ld   de, $f15f                                   ; $6698: $11 $5f $f1
	ld   de, $ff7f                                   ; $669b: $11 $7f $ff
	ld   h, e                                        ; $669e: $63
	inc  d                                           ; $669f: $14
	rst  $38                                         ; $66a0: $ff
	pop  bc                                          ; $66a1: $c1
	ld   de, $f18f                                   ; $66a2: $11 $8f $f1
	ld   de, $ff9f                                   ; $66a5: $11 $9f $ff
	ld   d, e                                        ; $66a8: $53
	dec  d                                           ; $66a9: $15
	rst  $38                                         ; $66aa: $ff
	or   c                                           ; $66ab: $b1
	ld   de, $f1df                                   ; $66ac: $11 $df $f1
	ld   de, $fddf                                   ; $66af: $11 $df $fd
	ld   d, d                                        ; $66b2: $52
	jr   @+$01                                       ; $66b3: $18 $ff

	add  c                                           ; $66b5: $81
	ld   de, $d1ff                                   ; $66b6: $11 $ff $d1
	ld   de, $fbef                                   ; $66b9: $11 $ef $fb
	ld   b, d                                        ; $66bc: $42
	ld   a, [de]                                     ; $66bd: $1a
	rst  $38                                         ; $66be: $ff
	ld   h, c                                        ; $66bf: $61
	ld   de, $71ff                                   ; $66c0: $11 $ff $71
	ld   de, $f9ff                                   ; $66c3: $11 $ff $f9
	ld   b, c                                        ; $66c6: $41
	inc  e                                           ; $66c7: $1c
	rst  $38                                         ; $66c8: $ff
	ld   sp, rAUD1HIGH                                   ; $66c9: $31 $14 $ff
	ld   de, $ff16                                   ; $66cc: $11 $16 $ff
	rst  $30                                         ; $66cf: $f7
	ld   b, c                                        ; $66d0: $41
	ccf                                              ; $66d1: $3f
	db   $fd                                         ; $66d2: $fd
	ld   de, $ff17                                   ; $66d3: $11 $17 $ff
	ld   de, $ff18                                   ; $66d6: $11 $18 $ff
	or   $31                                         ; $66d9: $f6 $31
	ld   e, a                                        ; $66db: $5f
	db   $fc                                         ; $66dc: $fc
	ld   de, $ff1c                                   ; $66dd: $11 $1c $ff
	ld   de, $ff1b                                   ; $66e0: $11 $1b $ff
	push de                                          ; $66e3: $d5
	ld   sp, $f97f                                   ; $66e4: $31 $7f $f9
	ld   de, $fe1f                                   ; $66e7: $11 $1f $fe
	ld   de, $ff1e                                   ; $66ea: $11 $1e $ff
	call nz, $af21                                   ; $66ed: $c4 $21 $af
	or   $11                                         ; $66f0: $f6 $11
	rrca                                             ; $66f2: $0f
	rst  $30                                         ; $66f3: $f7
	ld   de, $ff1f                                   ; $66f4: $11 $1f $ff
	sub  h                                           ; $66f7: $94
	ld   de, $e3cf                                   ; $66f8: $11 $cf $e3
	ld   de, $f23f                                   ; $66fb: $11 $3f $f2
	ld   de, $ff5f                                   ; $66fe: $11 $5f $ff
	ld   h, e                                        ; $6701: $63
	inc  de                                          ; $6702: $13
	rst  $28                                         ; $6703: $ef
	pop  de                                          ; $6704: $d1
	ld   de, $f19f                                   ; $6705: $11 $9f $f1
	ld   de, $feaf                                   ; $6708: $11 $af $fe
	ld   d, e                                        ; $670b: $53
	dec  d                                           ; $670c: $15
	rst  $38                                         ; $670d: $ff
	sub  c                                           ; $670e: $91
	ld   de, $f1ff                                   ; $670f: $11 $ff $f1
	ld   de, $fbdf                                   ; $6712: $11 $df $fb
	ld   b, d                                        ; $6715: $42
	add  hl, de                                      ; $6716: $19
	rst  $38                                         ; $6717: $ff
	ld   h, c                                        ; $6718: $61
	ld   de, $71ff                                   ; $6719: $11 $ff $71
	ld   de, $f9ff                                   ; $671c: $11 $ff $f9
	ld   b, c                                        ; $671f: $41
	inc  e                                           ; $6720: $1c
	rst  $38                                         ; $6721: $ff
	ld   sp, $ff16                                   ; $6722: $31 $16 $ff
	ld   de, $ff18                                   ; $6725: $11 $18 $ff
	or   $31                                         ; $6728: $f6 $31
	ld   c, a                                        ; $672a: $4f
	ld   a, [$1e11]                                  ; $672b: $fa $11 $1e
	cp   $11                                         ; $672e: $fe $11
	dec  e                                           ; $6730: $1d
	rst  $38                                         ; $6731: $ff
	or   h                                           ; $6732: $b4
	ld   sp, $f68f                                   ; $6733: $31 $8f $f6
	ld   de, $f51f                                   ; $6736: $11 $1f $f5
	ld   de, $ff3f                                   ; $6739: $11 $3f $ff
	sub  e                                           ; $673c: $93
	ld   [hl+], a                                    ; $673d: $22
	rst  JumpTable                                         ; $673e: $df
	jp   nc, $8f11                                   ; $673f: $d2 $11 $8f

	pop  af                                          ; $6742: $f1
	ld   de, $feaf                                   ; $6743: $11 $af $fe
	ld   d, e                                        ; $6746: $53
	dec  d                                           ; $6747: $15
	rst  $38                                         ; $6748: $ff
	sub  c                                           ; $6749: $91
	ld   de, $a1ff                                   ; $674a: $11 $ff $a1
	ld   de, $e9ff                                   ; $674d: $11 $ff $e9
	ld   b, d                                        ; $6750: $42
	ld   a, [de]                                     ; $6751: $1a
	rst  $38                                         ; $6752: $ff
	ld   b, c                                        ; $6753: $41
	inc  d                                           ; $6754: $14

Jump_0e9_6755:
	rst  $38                                         ; $6755: $ff
	ld   de, $ff16                                   ; $6756: $11 $16 $ff
	rst  $20                                         ; $6759: $e7
	ld   b, c                                        ; $675a: $41
	ccf                                              ; $675b: $3f
	db   $fc                                         ; $675c: $fc
	ld   de, $ff1c                                   ; $675d: $11 $1c $ff
	ld   de, $ff1d                                   ; $6760: $11 $1d $ff
	call nz, $8f31                                   ; $6763: $c4 $31 $8f
	rst  $30                                         ; $6766: $f7
	ld   de, $f61f                                   ; $6767: $11 $1f $f6
	ld   de, $fe3f                                   ; $676a: $11 $3f $fe
	add  h                                           ; $676d: $84
	ld   [hl+], a                                    ; $676e: $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $676f: $cf
	jp   nc, $8f11                                   ; $6770: $d2 $11 $8f

	pop  af                                          ; $6773: $f1
	ld   de, $fdbf                                   ; $6774: $11 $bf $fd
	ld   d, h                                        ; $6777: $54
	ld   d, $ff                                      ; $6778: $16 $ff
	sub  c                                           ; $677a: $91
	ld   de, $d1ff                                   ; $677b: $11 $ff $d1
	ld   de, $faff                                   ; $677e: $11 $ff $fa
	ld   b, e                                        ; $6781: $43
	ld   a, [de]                                     ; $6782: $1a
	rst  $38                                         ; $6783: $ff
	ld   h, c                                        ; $6784: $61
	ld   de, $71ff                                   ; $6785: $11 $ff $71
	ld   de, $f8ff                                   ; $6788: $11 $ff $f8
	ld   [hl-], a                                    ; $678b: $32
	dec  hl                                          ; $678c: $2b
	rst  $38                                         ; $678d: $ff
	ld   b, c                                        ; $678e: $41
	ld   [de], a                                     ; $678f: $12
	rst  $38                                         ; $6790: $ff
	ld   h, c                                        ; $6791: $61
	ld   [de], a                                     ; $6792: $12
	rst  $38                                         ; $6793: $ff
	rst  $30                                         ; $6794: $f7
	ld   sp, $fe2d                                   ; $6795: $31 $2d $fe
	ld   sp, rAUD1HIGH                                   ; $6798: $31 $14 $ff
	ld   hl, $ff15                                   ; $679b: $21 $15 $ff
	or   $31                                         ; $679e: $f6 $31
	ld   c, [hl]                                     ; $67a0: $4e
	cp   $21                                         ; $67a1: $fe $21
	dec  d                                           ; $67a3: $15
	rst  $38                                         ; $67a4: $ff
	ld   hl, $ff16                                   ; $67a5: $21 $16 $ff
	and  $31                                         ; $67a8: $e6 $31
	ld   c, l                                        ; $67aa: $4d
	db   $fd                                         ; $67ab: $fd
	ld   hl, $ff16                                   ; $67ac: $21 $16 $ff
	ld   de, $ff18                                   ; $67af: $11 $18 $ff
	push hl                                          ; $67b2: $e5
	ld   sp, $fd5e                                   ; $67b3: $31 $5e $fd
	ld   de, $ff16                                   ; $67b6: $11 $16 $ff
	ld   de, $ff17                                   ; $67b9: $11 $17 $ff
	push hl                                          ; $67bc: $e5
	ld   sp, $fe4e                                   ; $67bd: $31 $4e $fe
	ld   de, rAUD1HIGH                                   ; $67c0: $11 $14 $ff
	ld   sp, $ff15                                   ; $67c3: $31 $15 $ff
	or   $31                                         ; $67c6: $f6 $31
	dec  a                                           ; $67c8: $3d
	rst  $38                                         ; $67c9: $ff
	ld   sp, rAUD1ENV                                   ; $67ca: $31 $12 $ff
	ld   h, c                                        ; $67cd: $61
	inc  de                                          ; $67ce: $13
	rst  $38                                         ; $67cf: $ff
	ld   hl, sp+$31                                  ; $67d0: $f8 $31
	inc  e                                           ; $67d2: $1c
	rst  $38                                         ; $67d3: $ff
	ld   d, c                                        ; $67d4: $51
	ld   de, $e1ff                                   ; $67d5: $11 $ff $e1
	ld   de, $fbdf                                   ; $67d8: $11 $df $fb
	ld   sp, $ff19                                   ; $67db: $31 $19 $ff
	and  c                                           ; $67de: $a1
	ld   de, $f1cf                                   ; $67df: $11 $cf $f1
	ld   de, $fdaf                                   ; $67e2: $11 $af $fd
	ld   b, c                                        ; $67e5: $41
	ld   d, $ff                                      ; $67e6: $16 $ff
	pop  bc                                          ; $67e8: $c1
	ld   de, $f55f                                   ; $67e9: $11 $5f $f5
	ld   de, $ff3f                                   ; $67ec: $11 $3f $ff
	ld   h, c                                        ; $67ef: $61
	inc  de                                          ; $67f0: $13
	rst  JumpTable                                         ; $67f1: $df
	push af                                          ; $67f2: $f5
	ld   de, $ff1f                                   ; $67f3: $11 $1f $ff
	ld   de, $ff1e                                   ; $67f6: $11 $1e $ff
	and  d                                           ; $67f9: $a2
	ld   de, $faaf                                   ; $67fa: $11 $af $fa
	ld   de, $ff17                                   ; $67fd: $11 $17 $ff
	ld   hl, $ff16                                   ; $6800: $21 $16 $ff
	db   $e4                                         ; $6803: $e4
	ld   de, $fe5e                                   ; $6804: $11 $5e $fe
	ld   sp, rAUD1ENV                                   ; $6807: $31 $12 $ff
	or   c                                           ; $680a: $b1
	ld   de, $f9ff                                   ; $680b: $11 $ff $f9
	ld   de, $ff1a                                   ; $680e: $11 $1a $ff
	sub  c                                           ; $6811: $91
	ld   de, $f19f                                   ; $6812: $11 $9f $f1
	ld   de, $fe8f                                   ; $6815: $11 $8f $fe
	ld   b, c                                        ; $6818: $41
	dec  d                                           ; $6819: $15
	rst  $38                                         ; $681a: $ff
	ldh  [c], a                                      ; $681b: $e2
	ld   de, $f84f                                   ; $681c: $11 $4f $f8
	ld   de, $ff1f                                   ; $681f: $11 $1f $ff
	ld   [hl], c                                     ; $6822: $71
	ld   [de], a                                     ; $6823: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6824: $cf
	rst  $30                                         ; $6825: $f7
	ld   de, $ff1e                                   ; $6826: $11 $1e $ff
	ld   de, $ff1b                                   ; $6829: $11 $1b $ff
	or   e                                           ; $682c: $b3
	ld   de, $fb8f                                   ; $682d: $11 $8f $fb
	ld   de, $ff19                                   ; $6830: $11 $19 $ff
	ld   de, $ff17                                   ; $6833: $11 $17 $ff
	db   $f4                                         ; $6836: $f4
	ld   de, $fe5e                                   ; $6837: $11 $5e $fe
	ld   hl, rAUD1LOW                                   ; $683a: $21 $13 $ff
	sub  c                                           ; $683d: $91
	ld   de, $f8ff                                   ; $683e: $11 $ff $f8
	ld   de, $ff2c                                   ; $6841: $11 $2c $ff
	ld   h, c                                        ; $6844: $61
	ld   de, $d1ff                                   ; $6845: $11 $ff $d1
	ld   de, $faef                                   ; $6848: $11 $ef $fa
	ld   hl, $ff1a                                   ; $684b: $21 $1a $ff
	ld   [hl], c                                     ; $684e: $71
	ld   de, $f1ef                                   ; $684f: $11 $ef $f1
	ld   de, $fadf                                   ; $6852: $11 $df $fa
	ld   sp, $ff19                                   ; $6855: $31 $19 $ff
	sub  c                                           ; $6858: $91
	ld   de, $f1af                                   ; $6859: $11 $af $f1
	ld   de, $fd9f                                   ; $685c: $11 $9f $fd
	ld   b, c                                        ; $685f: $41
	rla                                              ; $6860: $17
	rst  $38                                         ; $6861: $ff
	and  c                                           ; $6862: $a1
	ld   de, $f19f                                   ; $6863: $11 $9f $f1
	ld   de, $fd9f                                   ; $6866: $11 $9f $fd
	ld   b, d                                        ; $6869: $42
	rla                                              ; $686a: $17
	rst  $38                                         ; $686b: $ff
	or   c                                           ; $686c: $b1
	ld   de, $f27f                                   ; $686d: $11 $7f $f2
	ld   de, $fd7f                                   ; $6870: $11 $7f $fd
	ld   d, d                                        ; $6873: $52
	ld   d, $ef                                      ; $6874: $16 $ef
	or   c                                           ; $6876: $b1
	ld   de, $f27f                                   ; $6877: $11 $7f $f2
	ld   de, $fd7f                                   ; $687a: $11 $7f $fd
	ld   d, e                                        ; $687d: $53
	ld   d, $ef                                      ; $687e: $16 $ef
	pop  bc                                          ; $6880: $c1
	ld   de, $f26f                                   ; $6881: $11 $6f $f2
	ld   de, $fe6f                                   ; $6884: $11 $6f $fe
	ld   d, e                                        ; $6887: $53
	dec  d                                           ; $6888: $15
	rst  $28                                         ; $6889: $ef
	jp   nz, Jump_0e9_5f11                           ; $688a: $c2 $11 $5f

	push af                                          ; $688d: $f5
	ld   de, $fe4f                                   ; $688e: $11 $4f $fe
	ld   h, e                                        ; $6891: $63
	inc  d                                           ; $6892: $14
	rst  JumpTable                                         ; $6893: $df
	db   $d3                                         ; $6894: $d3
	ld   de, $f45f                                   ; $6895: $11 $5f $f4
	ld   de, $fe4f                                   ; $6898: $11 $4f $fe
	ld   h, e                                        ; $689b: $63
	inc  d                                           ; $689c: $14
	rst  JumpTable                                         ; $689d: $df
	db   $d3                                         ; $689e: $d3
	ld   de, $f74f                                   ; $689f: $11 $4f $f7
	ld   de, $ff2f                                   ; $68a2: $11 $2f $ff
	ld   [hl], e                                     ; $68a5: $73
	inc  hl                                          ; $68a6: $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68a7: $cf
	call nc, Call_0e9_4f11                           ; $68a8: $d4 $11 $4f
	or   $11                                         ; $68ab: $f6 $11
	ccf                                              ; $68ad: $3f
	rst  $38                                         ; $68ae: $ff
	ld   [hl], e                                     ; $68af: $73
	inc  hl                                          ; $68b0: $23
	rst  JumpTable                                         ; $68b1: $df
	db   $e4                                         ; $68b2: $e4
	ld   de, $f73f                                   ; $68b3: $11 $3f $f7
	ld   de, $ff2f                                   ; $68b6: $11 $2f $ff
	ld   [hl], e                                     ; $68b9: $73
	inc  hl                                          ; $68ba: $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68bb: $cf
	db   $e4                                         ; $68bc: $e4
	ld   de, $f83f                                   ; $68bd: $11 $3f $f8
	ld   de, $ff1f                                   ; $68c0: $11 $1f $ff
	add  e                                           ; $68c3: $83
	inc  hl                                          ; $68c4: $23
	cp   a                                           ; $68c5: $bf
	push hl                                          ; $68c6: $e5
	ld   de, $fb2f                                   ; $68c7: $11 $2f $fb
	ld   de, $ff1f                                   ; $68ca: $11 $1f $ff
	sub  e                                           ; $68cd: $93
	inc  hl                                          ; $68ce: $23
	cp   a                                           ; $68cf: $bf
	push af                                          ; $68d0: $f5
	ld   de, $fa2f                                   ; $68d1: $11 $2f $fa
	ld   de, $ff1f                                   ; $68d4: $11 $1f $ff
	add  e                                           ; $68d7: $83
	inc  hl                                          ; $68d8: $23
	cp   a                                           ; $68d9: $bf
	or   $11                                         ; $68da: $f6 $11
	cpl                                              ; $68dc: $2f
	db   $fd                                         ; $68dd: $fd
	ld   de, $ff1e                                   ; $68de: $11 $1e $ff
	sub  e                                           ; $68e1: $93
	ld   [hl+], a                                    ; $68e2: $22
	xor  a                                           ; $68e3: $af
	or   $11                                         ; $68e4: $f6 $11
	rra                                              ; $68e6: $1f
	db   $fc                                         ; $68e7: $fc
	ld   de, $ff1e                                   ; $68e8: $11 $1e $ff
	add  e                                           ; $68eb: $83
	ld   [hl+], a                                    ; $68ec: $22
	cp   a                                           ; $68ed: $bf
	or   $11                                         ; $68ee: $f6 $11
	rra                                              ; $68f0: $1f
	db   $fd                                         ; $68f1: $fd
	ld   de, $ff1d                                   ; $68f2: $11 $1d $ff
	sub  e                                           ; $68f5: $93
	ld   [hl+], a                                    ; $68f6: $22
	xor  a                                           ; $68f7: $af
	or   $11                                         ; $68f8: $f6 $11
	rra                                              ; $68fa: $1f
	ld   a, [$1f11]                                  ; $68fb: $fa $11 $1f
	rst  $38                                         ; $68fe: $ff
	sub  e                                           ; $68ff: $93
	ld   [hl+], a                                    ; $6900: $22
	xor  a                                           ; $6901: $af
	or   $11                                         ; $6902: $f6 $11
	cpl                                              ; $6904: $2f
	ei                                               ; $6905: $fb
	ld   de, $ff1e                                   ; $6906: $11 $1e $ff
	add  e                                           ; $6909: $83
	ld   [hl+], a                                    ; $690a: $22
	cp   a                                           ; $690b: $bf
	or   $11                                         ; $690c: $f6 $11
	cpl                                              ; $690e: $2f
	ld   a, [$1f11]                                  ; $690f: $fa $11 $1f
	rst  $38                                         ; $6912: $ff
	add  e                                           ; $6913: $83
	inc  hl                                          ; $6914: $23

Call_0e9_6915:
	cp   a                                           ; $6915: $bf
	push hl                                          ; $6916: $e5
	ld   de, $fb2f                                   ; $6917: $11 $2f $fb
	ld   de, $ff1e                                   ; $691a: $11 $1e $ff
	sub  e                                           ; $691d: $93
	inc  hl                                          ; $691e: $23
	xor  a                                           ; $691f: $af
	push hl                                          ; $6920: $e5
	ld   de, $f64f                                   ; $6921: $11 $4f $f6
	ld   de, $fe3f                                   ; $6924: $11 $3f $fe
	ld   [hl], e                                     ; $6927: $73
	inc  h                                           ; $6928: $24
	rst  JumpTable                                         ; $6929: $df
	jp   Jump_0e9_5f11                               ; $692a: $c3 $11 $5f


	push af                                          ; $692d: $f5
	ld   de, $fe4f                                   ; $692e: $11 $4f $fe
	ld   h, e                                        ; $6931: $63
	inc  h                                           ; $6932: $24
	rst  JumpTable                                         ; $6933: $df
	jp   nz, Jump_0e9_7f11                           ; $6934: $c2 $11 $7f

	pop  af                                          ; $6937: $f1
	ld   de, $fc8f                                   ; $6938: $11 $8f $fc
	ld   d, e                                        ; $693b: $53
	ld   h, $ef                                      ; $693c: $26 $ef
	or   c                                           ; $693e: $b1
	ld   de, $f1af                                   ; $693f: $11 $af $f1
	ld   de, $fbaf                                   ; $6942: $11 $af $fb
	ld   b, e                                        ; $6945: $43
	daa                                              ; $6946: $27
	rst  $38                                         ; $6947: $ff
	sub  c                                           ; $6948: $91
	ld   de, $e1ef                                   ; $6949: $11 $ef $e1
	ld   de, $faef                                   ; $694c: $11 $ef $fa
	inc  sp                                          ; $694f: $33
	add  hl, hl                                      ; $6950: $29
	rst  $38                                         ; $6951: $ff
	ld   [hl], c                                     ; $6952: $71
	ld   de, $b1ff                                   ; $6953: $11 $ff $b1
	ld   de, $f8ff                                   ; $6956: $11 $ff $f8
	inc  sp                                          ; $6959: $33
	ld   a, [hl-]                                    ; $695a: $3a
	cp   $51                                         ; $695b: $fe $51
	inc  de                                          ; $695d: $13
	rst  $38                                         ; $695e: $ff
	ld   [hl], c                                     ; $695f: $71
	ld   [de], a                                     ; $6960: $12
	rst  $38                                         ; $6961: $ff
	rst  $20                                         ; $6962: $e7
	ld   [hl-], a                                    ; $6963: $32
	ld   c, h                                        ; $6964: $4c
	db   $fd                                         ; $6965: $fd
	ld   b, c                                        ; $6966: $41
	dec  d                                           ; $6967: $15
	rst  $38                                         ; $6968: $ff
	ld   b, c                                        ; $6969: $41
	inc  d                                           ; $696a: $14
	rst  $38                                         ; $696b: $ff
	and  $32                                         ; $696c: $e6 $32
	ld   e, l                                        ; $696e: $5d
	db   $fd                                         ; $696f: $fd
	ld   hl, $ff16                                   ; $6970: $21 $16 $ff
	ld   hl, $ff16                                   ; $6973: $21 $16 $ff

Jump_0e9_6976:
	push de                                          ; $6976: $d5
	ld   [hl-], a                                    ; $6977: $32
	ld   l, [hl]                                     ; $6978: $6e
	ld   a, [$1d11]                                  ; $6979: $fa $11 $1d
	rst  $38                                         ; $697c: $ff
	ld   de, $ff1c                                   ; $697d: $11 $1c $ff
	sub  e                                           ; $6980: $93
	ld   [hl-], a                                    ; $6981: $32
	sbc  a                                           ; $6982: $9f
	ld   sp, hl                                      ; $6983: $f9
	ld   de, $fe1e                                   ; $6984: $11 $1e $fe
	ld   de, $ff1d                                   ; $6987: $11 $1d $ff
	sub  e                                           ; $698a: $93
	ld   [hl-], a                                    ; $698b: $32
	xor  a                                           ; $698c: $af
	rst  $30                                         ; $698d: $f7
	ld   de, $f92f                                   ; $698e: $11 $2f $f9
	ld   de, $ff1f                                   ; $6991: $11 $1f $ff
	ld   [hl], e                                     ; $6994: $73
	inc  hl                                          ; $6995: $23

Call_0e9_6996:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6996: $cf
	push hl                                          ; $6997: $e5
	ld   de, $f73f                                   ; $6998: $11 $3f $f7
	ld   de, $fe2f                                   ; $699b: $11 $2f $fe
	ld   h, e                                        ; $699e: $63
	inc  hl                                          ; $699f: $23
	rst  JumpTable                                         ; $69a0: $df
	db   $e4                                         ; $69a1: $e4
	ld   de, $f35f                                   ; $69a2: $11 $5f $f3
	ld   de, $fd5f                                   ; $69a5: $11 $5f $fd
	ld   d, e                                        ; $69a8: $53
	dec  h                                           ; $69a9: $25
	rst  $28                                         ; $69aa: $ef
	jp   Jump_0e9_5f11                               ; $69ab: $c3 $11 $5f


	di                                               ; $69ae: $f3
	ld   de, $fd5f                                   ; $69af: $11 $5f $fd
	ld   d, e                                        ; $69b2: $53
	dec  h                                           ; $69b3: $25
	rst  JumpTable                                         ; $69b4: $df
	jp   nz, $8f11                                   ; $69b5: $c2 $11 $8f

	pop  af                                          ; $69b8: $f1
	ld   de, $fb8f                                   ; $69b9: $11 $8f $fb
	ld   b, e                                        ; $69bc: $43
	ld   h, $ef                                      ; $69bd: $26 $ef
	pop  bc                                          ; $69bf: $c1
	ld   de, $f18f                                   ; $69c0: $11 $8f $f1
	ld   de, $fc7f                                   ; $69c3: $11 $7f $fc
	ld   b, e                                        ; $69c6: $43
	ld   d, $ff                                      ; $69c7: $16 $ff
	or   c                                           ; $69c9: $b1

Call_0e9_69ca:
	ld   de, $f27f                                   ; $69ca: $11 $7f $f2
	ld   de, $fd7f                                   ; $69cd: $11 $7f $fd
	ld   b, d                                        ; $69d0: $42
	ld   d, $ef                                      ; $69d1: $16 $ef
	jp   nc, Jump_0e9_6f11                           ; $69d3: $d2 $11 $6f

	db   $f4                                         ; $69d6: $f4
	ld   de, $fd5f                                   ; $69d7: $11 $5f $fd
	ld   d, d                                        ; $69da: $52
	ld   d, $df                                      ; $69db: $16 $df
	jp   nz, Jump_0e9_6f11                           ; $69dd: $c2 $11 $6f

	push af                                          ; $69e0: $f5
	ld   de, $fd4f                                   ; $69e1: $11 $4f $fd
	ld   d, d                                        ; $69e4: $52
	dec  d                                           ; $69e5: $15
	rst  $28                                         ; $69e6: $ef
	jp   Jump_0e9_6f11                               ; $69e7: $c3 $11 $6f


	db   $f4                                         ; $69ea: $f4
	ld   de, $fe4f                                   ; $69eb: $11 $4f $fe
	ld   d, d                                        ; $69ee: $52
	ld   d, $ef                                      ; $69ef: $16 $ef
	jp   nc, Jump_0e9_5f11                           ; $69f1: $d2 $11 $5f

	db   $f4                                         ; $69f4: $f4
	ld   de, $fd4f                                   ; $69f5: $11 $4f $fd
	ld   d, d                                        ; $69f8: $52
	ld   d, $ef                                      ; $69f9: $16 $ef
	db   $d3                                         ; $69fb: $d3
	ld   de, $f65f                                   ; $69fc: $11 $5f $f6
	ld   de, $ff3f                                   ; $69ff: $11 $3f $ff
	ld   d, d                                        ; $6a02: $52
	dec  d                                           ; $6a03: $15
	rst  JumpTable                                         ; $6a04: $df
	db   $e4                                         ; $6a05: $e4
	ld   de, $f84f                                   ; $6a06: $11 $4f $f8
	ld   de, $ff2f                                   ; $6a09: $11 $2f $ff
	ld   h, d                                        ; $6a0c: $62
	dec  d                                           ; $6a0d: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a0e: $cf
	push de                                          ; $6a0f: $d5
	ld   de, $fc3f                                   ; $6a10: $11 $3f $fc
	ld   de, $ff1f                                   ; $6a13: $11 $1f $ff
	ld   [hl], d                                     ; $6a16: $72
	inc  h                                           ; $6a17: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a18: $cf
	rst  $30                                         ; $6a19: $f7
	ld   de, $fe2f                                   ; $6a1a: $11 $2f $fe
	ld   de, $ff1e                                   ; $6a1d: $11 $1e $ff
	add  d                                           ; $6a20: $82
	inc  hl                                          ; $6a21: $23
	cp   a                                           ; $6a22: $bf
	add  sp, $11                                     ; $6a23: $e8 $11
	inc  e                                           ; $6a25: $1c
	rst  $38                                         ; $6a26: $ff
	ld   de, $ff1b                                   ; $6a27: $11 $1b $ff
	and  e                                           ; $6a2a: $a3
	inc  hl                                          ; $6a2b: $23
	xor  [hl]                                        ; $6a2c: $ae
	jp   hl                                          ; $6a2d: $e9


	ld   de, $ff1c                                   ; $6a2e: $11 $1c $ff
	ld   de, $ff1b                                   ; $6a31: $11 $1b $ff
	sub  e                                           ; $6a34: $93
	inc  sp                                          ; $6a35: $33
	sbc  l                                           ; $6a36: $9d
	ld   sp, hl                                      ; $6a37: $f9
	ld   bc, $ff1b                                   ; $6a38: $01 $1b $ff
	ld   de, $ff1a                                   ; $6a3b: $11 $1a $ff
	and  e                                           ; $6a3e: $a3
	ld   [hl+], a                                    ; $6a3f: $22
	sbc  [hl]                                        ; $6a40: $9e
	ld   [$1a11], a                                  ; $6a41: $ea $11 $1a
	rst  $38                                         ; $6a44: $ff
	ld   de, $ff1a                                   ; $6a45: $11 $1a $ff
	and  h                                           ; $6a48: $a4
	inc  sp                                          ; $6a49: $33
	adc  l                                           ; $6a4a: $8d
	ld   [$1721], a                                  ; $6a4b: $ea $21 $17
	rst  $38                                         ; $6a4e: $ff
	ld   sp, $ff16                                   ; $6a4f: $31 $16 $ff
	call nz, Call_0e9_7d32                           ; $6a52: $c4 $32 $7d
	db   $ec                                         ; $6a55: $ec
	ld   sp, $ff17                                   ; $6a56: $31 $17 $ff
	ld   b, c                                        ; $6a59: $41
	ld   d, $ff                                      ; $6a5a: $16 $ff
	push bc                                          ; $6a5c: $c5
	ld   [hl-], a                                    ; $6a5d: $32
	ld   a, h                                        ; $6a5e: $7c
	db   $ec                                         ; $6a5f: $ec
	ld   sp, $ff16                                   ; $6a60: $31 $16 $ff
	ld   b, c                                        ; $6a63: $41
	dec  d                                           ; $6a64: $15
	rst  $38                                         ; $6a65: $ff
	push de                                          ; $6a66: $d5
	ld   [hl-], a                                    ; $6a67: $32
	ld   l, h                                        ; $6a68: $6c
	db   $dd                                         ; $6a69: $dd
	ld   b, c                                        ; $6a6a: $41
	dec  d                                           ; $6a6b: $15
	rst  $38                                         ; $6a6c: $ff
	ld   [hl], c                                     ; $6a6d: $71
	inc  d                                           ; $6a6e: $14
	rst  $38                                         ; $6a6f: $ff
	and  $32                                         ; $6a70: $e6 $32
	ld   e, e                                        ; $6a72: $5b
	call c, $1551                                    ; $6a73: $dc $51 $15
	rst  $38                                         ; $6a76: $ff
	ld   h, c                                        ; $6a77: $61
	inc  d                                           ; $6a78: $14
	rst  $38                                         ; $6a79: $ff
	sub  $32                                         ; $6a7a: $d6 $32
	ld   l, h                                        ; $6a7c: $6c
	db   $ec                                         ; $6a7d: $ec
	ld   d, c                                        ; $6a7e: $51
	inc  d                                           ; $6a7f: $14
	rst  $38                                         ; $6a80: $ff
	ld   [hl], c                                     ; $6a81: $71
	inc  de                                          ; $6a82: $13
	rst  $38                                         ; $6a83: $ff
	sub  $43                                         ; $6a84: $d6 $43
	ld   e, e                                        ; $6a86: $5b
	call c, $1451                                    ; $6a87: $dc $51 $14
	rst  $38                                         ; $6a8a: $ff
	ld   [hl], c                                     ; $6a8b: $71
	inc  de                                          ; $6a8c: $13
	rst  $38                                         ; $6a8d: $ff
	and  $43                                         ; $6a8e: $e6 $43
	ld   e, d                                        ; $6a90: $5a
	db   $dd                                         ; $6a91: $dd
	ld   d, c                                        ; $6a92: $51
	inc  d                                           ; $6a93: $14
	rst  $38                                         ; $6a94: $ff
	ld   [hl], c                                     ; $6a95: $71
	inc  d                                           ; $6a96: $14
	rst  $38                                         ; $6a97: $ff
	sub  $43                                         ; $6a98: $d6 $43
	ld   e, d                                        ; $6a9a: $5a
	call z, $1551                                    ; $6a9b: $cc $51 $15
	rst  $38                                         ; $6a9e: $ff
	ld   d, c                                        ; $6a9f: $51
	dec  d                                           ; $6aa0: $15
	rst  $38                                         ; $6aa1: $ff
	sub  $43                                         ; $6aa2: $d6 $43
	ld   l, e                                        ; $6aa4: $6b
	bit  0, c                                        ; $6aa5: $cb $41
	ld   a, [de]                                     ; $6aa7: $1a
	rst  $38                                         ; $6aa8: $ff
	ld   hl, $ff1a                                   ; $6aa9: $21 $1a $ff
	and  l                                           ; $6aac: $a5
	ld   b, h                                        ; $6aad: $44
	adc  h                                           ; $6aae: $8c
	ret                                              ; $6aaf: $c9


	ld   hl, $fd2d                                   ; $6ab0: $21 $2d $fd
	ld   de, $ff1c                                   ; $6ab3: $11 $1c $ff
	sub  l                                           ; $6ab6: $95
	ld   b, h                                        ; $6ab7: $44
	sbc  h                                           ; $6ab8: $9c
	rst  ToBoot                                         ; $6ab9: $c7
	ld   de, $f55f                                   ; $6aba: $11 $5f $f5
	ld   de, $fb6f                                   ; $6abd: $11 $6f $fb
	ld   h, l                                        ; $6ac0: $65
	ld   b, a                                        ; $6ac1: $47
	xor  h                                           ; $6ac2: $ac
	and  e                                           ; $6ac3: $a3
	ld   de, $d1df                                   ; $6ac4: $11 $df $d1
	ld   de, $e8df                                   ; $6ac7: $11 $df $e8
	ld   d, l                                        ; $6aca: $55
	ld   e, b                                        ; $6acb: $58
	cp   h                                           ; $6acc: $bc
	ld   [hl], c                                     ; $6acd: $71
	dec  d                                           ; $6ace: $15
	rst  $38                                         ; $6acf: $ff
	ld   d, c                                        ; $6ad0: $51
	ld   d, $ff                                      ; $6ad1: $16 $ff
	and  [hl]                                        ; $6ad3: $a6
	ld   d, h                                        ; $6ad4: $54
	ld   a, e                                        ; $6ad5: $7b
	cp   d                                           ; $6ad6: $ba
	ld   sp, $f92f                                   ; $6ad7: $31 $2f $f9
	ld   de, $fd3f                                   ; $6ada: $11 $3f $fd
	ld   [hl], l                                     ; $6add: $75
	ld   b, [hl]                                     ; $6ade: $46
	sbc  e                                           ; $6adf: $9b
	or   l                                           ; $6ae0: $b5
	ld   de, $c1ef                                   ; $6ae1: $11 $ef $c1
	ld   de, $d7df                                   ; $6ae4: $11 $df $d7
	ld   d, h                                        ; $6ae7: $54
	ld   e, c                                        ; $6ae8: $59
	cp   h                                           ; $6ae9: $bc
	ld   h, c                                        ; $6aea: $61
	ld   a, [de]                                     ; $6aeb: $1a
	rst  $38                                         ; $6aec: $ff
	ld   sp, $ff1a                                   ; $6aed: $31 $1a $ff
	sub  [hl]                                        ; $6af0: $96
	ld   b, h                                        ; $6af1: $44
	adc  d                                           ; $6af2: $8a
	ret  z                                           ; $6af3: $c8

	ld   de, $f39f                                   ; $6af4: $11 $9f $f3
	ld   de, $f9af                                   ; $6af7: $11 $af $f9
	ld   h, l                                        ; $6afa: $65
	ld   c, b                                        ; $6afb: $48
	cp   h                                           ; $6afc: $bc
	add  c                                           ; $6afd: $81
	jr   @+$01                                       ; $6afe: $18 $ff

	ld   b, c                                        ; $6b00: $41
	ld   a, [de]                                     ; $6b01: $1a
	rst  $38                                         ; $6b02: $ff
	and  [hl]                                        ; $6b03: $a6
	ld   d, h                                        ; $6b04: $54
	ld   a, c                                        ; $6b05: $79
	ret                                              ; $6b06: $c9


	ld   hl, $f56f                                   ; $6b07: $21 $6f $f5
	ld   de, $fa7f                                   ; $6b0a: $11 $7f $fa
	ld   h, l                                        ; $6b0d: $65
	ld   b, a                                        ; $6b0e: $47
	sbc  h                                           ; $6b0f: $9c
	and  e                                           ; $6b10: $a3
	dec  d                                           ; $6b11: $15
	rst  $38                                         ; $6b12: $ff
	ld   h, c                                        ; $6b13: $61
	ld   d, $ff                                      ; $6b14: $16 $ff
	or   [hl]                                        ; $6b16: $b6
	ld   b, h                                        ; $6b17: $44
	ld   a, d                                        ; $6b18: $7a
	cp   c                                           ; $6b19: $b9
	ld   sp, $f76f                                   ; $6b1a: $31 $6f $f7
	ld   de, $fb6f                                   ; $6b1d: $11 $6f $fb
	ld   h, h                                        ; $6b20: $64
	ld   b, a                                        ; $6b21: $47
	sbc  h                                           ; $6b22: $9c
	add  e                                           ; $6b23: $83
	ld   d, $ff                                      ; $6b24: $16 $ff
	ld   h, c                                        ; $6b26: $61
	rla                                              ; $6b27: $17
	rst  $38                                         ; $6b28: $ff
	or   a                                           ; $6b29: $b7
	ld   b, h                                        ; $6b2a: $44
	ld   a, c                                        ; $6b2b: $79
	cp   c                                           ; $6b2c: $b9
	ld   hl, $f58f                                   ; $6b2d: $21 $8f $f5
	ld   de, $fa8f                                   ; $6b30: $11 $8f $fa
	ld   [hl], h                                     ; $6b33: $74
	ld   c, b                                        ; $6b34: $48
	sbc  e                                           ; $6b35: $9b
	add  d                                           ; $6b36: $82
	add  hl, de                                      ; $6b37: $19
	rst  $38                                         ; $6b38: $ff
	ld   d, c                                        ; $6b39: $51
	jr   @+$01                                       ; $6b3a: $18 $ff

	or   [hl]                                        ; $6b3c: $b6
	dec  [hl]                                        ; $6b3d: $35
	adc  c                                           ; $6b3e: $89
	or   a                                           ; $6b3f: $b7
	ld   hl, $f5af                                   ; $6b40: $21 $af $f5
	ld   de, $fb9f                                   ; $6b43: $11 $9f $fb
	ld   h, e                                        ; $6b46: $63
	ld   e, b                                        ; $6b47: $58
	xor  e                                           ; $6b48: $ab
	ld   [hl], c                                     ; $6b49: $71
	dec  de                                          ; $6b4a: $1b
	db   $fd                                         ; $6b4b: $fd
	ld   d, c                                        ; $6b4c: $51
	ld   a, [de]                                     ; $6b4d: $1a
	rst  $38                                         ; $6b4e: $ff
	and  l                                           ; $6b4f: $a5
	dec  [hl]                                        ; $6b50: $35
	sbc  e                                           ; $6b51: $9b
	or   [hl]                                        ; $6b52: $b6
	ld   de, $d4df                                   ; $6b53: $11 $df $d4
	ld   de, $eabf                                   ; $6b56: $11 $bf $ea
	ld   d, e                                        ; $6b59: $53
	ld   l, c                                        ; $6b5a: $69
	xor  e                                           ; $6b5b: $ab
	ld   d, c                                        ; $6b5c: $51
	cpl                                              ; $6b5d: $2f
	db   $fc                                         ; $6b5e: $fc
	ld   sp, $fe1c                                   ; $6b5f: $31 $1c $fe
	and  h                                           ; $6b62: $a4
	scf                                              ; $6b63: $37
	sbc  e                                           ; $6b64: $9b
	and  h                                           ; $6b65: $a4
	dec  d                                           ; $6b66: $15
	rst  $38                                         ; $6b67: $ff
	and  d                                           ; $6b68: $a2
	inc  de                                          ; $6b69: $13
	rst  $28                                         ; $6b6a: $ef
	ret  c                                           ; $6b6b: $d8

	inc  [hl]                                        ; $6b6c: $34

jr_0e9_6b6d:
	ld   a, c                                        ; $6b6d: $79
	cp   c                                           ; $6b6e: $b9
	ld   b, c                                        ; $6b6f: $41
	ld   l, a                                        ; $6b70: $6f
	ld   sp, hl                                      ; $6b71: $f9
	ld   de, $fd5d                                   ; $6b72: $11 $5d $fd
	add  e                                           ; $6b75: $83
	ld   b, a                                        ; $6b76: $47
	sbc  e                                           ; $6b77: $9b
	add  e                                           ; $6b78: $83
	ld   a, [de]                                     ; $6b79: $1a
	cp   $71                                         ; $6b7a: $fe $71
	jr   jr_0e9_6b6d                                 ; $6b7c: $18 $ef

	or   [hl]                                        ; $6b7e: $b6
	dec  [hl]                                        ; $6b7f: $35
	ld   a, d                                        ; $6b80: $7a
	and  [hl]                                        ; $6b81: $a6
	inc  hl                                          ; $6b82: $23
	rst  JumpTable                                         ; $6b83: $df
	push bc                                          ; $6b84: $c5
	ld   [de], a                                     ; $6b85: $12
	cp   a                                           ; $6b86: $bf
	db   $eb                                         ; $6b87: $eb
	ld   d, h                                        ; $6b88: $54
	ld   h, a                                        ; $6b89: $67
	sbc  c                                           ; $6b8a: $99
	ld   d, d                                        ; $6b8b: $52
	ld   e, a                                        ; $6b8c: $5f
	ld   a, [$4c31]                                  ; $6b8d: $fa $31 $4c
	cp   $94                                         ; $6b90: $fe $94
	ld   b, [hl]                                     ; $6b92: $46
	adc  c                                           ; $6b93: $89
	add  h                                           ; $6b94: $84
	add  hl, sp                                      ; $6b95: $39
	db   $fd                                         ; $6b96: $fd
	ld   [hl], c                                     ; $6b97: $71
	rla                                              ; $6b98: $17
	xor  $c7                                         ; $6b99: $ee $c7
	ld   b, l                                        ; $6b9b: $45
	ld   a, b                                        ; $6b9c: $78
	and  a                                           ; $6b9d: $a7
	inc  [hl]                                        ; $6b9e: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b9f: $cf
	or   l                                           ; $6ba0: $b5
	ld   [de], a                                     ; $6ba1: $12
	xor  a                                           ; $6ba2: $af
	db   $eb                                         ; $6ba3: $eb

jr_0e9_6ba4:
	ld   d, h                                        ; $6ba4: $54
	ld   h, a                                        ; $6ba5: $67
	sbc  b                                           ; $6ba6: $98
	ld   h, e                                        ; $6ba7: $63
	ld   l, [hl]                                     ; $6ba8: $6e
	ld   a, [$4b41]                                  ; $6ba9: $fa $41 $4b
	cp   $95                                         ; $6bac: $fe $95
	ld   d, [hl]                                     ; $6bae: $56
	ld   a, b                                        ; $6baf: $78
	add  l                                           ; $6bb0: $85
	ld   c, e                                        ; $6bb1: $4b
	db   $fc                                         ; $6bb2: $fc
	ld   [hl], d                                     ; $6bb3: $72
	jr   jr_0e9_6ba4                                 ; $6bb4: $18 $ee

	add  $46                                         ; $6bb6: $c6 $46
	ld   a, b                                        ; $6bb8: $78
	add  [hl]                                        ; $6bb9: $86
	ld   b, a                                        ; $6bba: $47
	xor  $95                                         ; $6bbb: $ee $95
	inc  d                                           ; $6bbd: $14
	cp   [hl]                                        ; $6bbe: $be
	jp   c, Jump_0e9_6755                            ; $6bbf: $da $55 $67

	sub  a                                           ; $6bc2: $97
	ld   d, l                                        ; $6bc3: $55
	xor  [hl]                                        ; $6bc4: $ae
	rst  ToBoot                                         ; $6bc5: $c7
	ld   [hl+], a                                    ; $6bc6: $22
	adc  h                                           ; $6bc7: $8c
	db   $db                                         ; $6bc8: $db
	ld   [hl], l                                     ; $6bc9: $75
	ld   d, [hl]                                     ; $6bca: $56
	ld   a, b                                        ; $6bcb: $78
	ld   [hl], l                                     ; $6bcc: $75
	adc  l                                           ; $6bcd: $8d
	ret                                              ; $6bce: $c9


	ld   d, d                                        ; $6bcf: $52
	ld   e, d                                        ; $6bd0: $5a
	call c, Call_0e9_5596                            ; $6bd1: $dc $96 $55
	ld   l, b                                        ; $6bd4: $68
	halt                                             ; $6bd5: $76
	ld   a, h                                        ; $6bd6: $7c
	jp   z, $4a63                                    ; $6bd7: $ca $63 $4a

	call z, Call_0e9_65a7                            ; $6bda: $cc $a7 $65
	ld   h, a                                        ; $6bdd: $67
	halt                                             ; $6bde: $76
	ld   a, h                                        ; $6bdf: $7c
	jp   c, $4863                                    ; $6be0: $da $63 $48

	call z, Call_0e9_65a7                            ; $6be3: $cc $a7 $65
	ld   h, a                                        ; $6be6: $67
	halt                                             ; $6be7: $76
	ld   a, d                                        ; $6be8: $7a
	jp   c, $4774                                    ; $6be9: $da $74 $47

	cp   h                                           ; $6bec: $bc
	cp   b                                           ; $6bed: $b8
	ld   h, l                                        ; $6bee: $65
	ld   h, a                                        ; $6bef: $67
	ld   [hl], a                                     ; $6bf0: $77
	ld   a, d                                        ; $6bf1: $7a
	jp   c, Jump_0e9_4784                            ; $6bf2: $da $84 $47

	cp   h                                           ; $6bf5: $bc
	cp   c                                           ; $6bf6: $b9
	ld   h, l                                        ; $6bf7: $65
	ld   d, [hl]                                     ; $6bf8: $56
	ld   [hl], a                                     ; $6bf9: $77
	ld   a, c                                        ; $6bfa: $79
	jp   z, Jump_0e9_4685                            ; $6bfb: $ca $85 $46

	xor  l                                           ; $6bfe: $ad
	cp   c                                           ; $6bff: $b9
	ld   h, l                                        ; $6c00: $65
	ld   d, [hl]                                     ; $6c01: $56
	ld   [hl], a                                     ; $6c02: $77
	ld   a, c                                        ; $6c03: $79
	cp   e                                           ; $6c04: $bb
	add  l                                           ; $6c05: $85
	ld   b, a                                        ; $6c06: $47
	cp   h                                           ; $6c07: $bc
	cp   c                                           ; $6c08: $b9
	ld   h, l                                        ; $6c09: $65
	ld   d, [hl]                                     ; $6c0a: $56
	ld   [hl], a                                     ; $6c0b: $77
	adc  d                                           ; $6c0c: $8a
	jp   z, Jump_0e9_5785                            ; $6c0d: $ca $85 $57

	cp   h                                           ; $6c10: $bc
	cp   c                                           ; $6c11: $b9
	ld   h, l                                        ; $6c12: $65
	ld   d, [hl]                                     ; $6c13: $56
	ld   h, a                                        ; $6c14: $67
	adc  e                                           ; $6c15: $8b
	cp   c                                           ; $6c16: $b9
	ld   [hl], l                                     ; $6c17: $75
	ld   l, b                                        ; $6c18: $68
	cp   h                                           ; $6c19: $bc
	cp   b                                           ; $6c1a: $b8
	ld   h, l                                        ; $6c1b: $65
	ld   d, [hl]                                     ; $6c1c: $56
	ld   l, b                                        ; $6c1d: $68
	sbc  h                                           ; $6c1e: $9c
	cp   b                                           ; $6c1f: $b8
	ld   h, l                                        ; $6c20: $65
	ld   a, d                                        ; $6c21: $7a
	jp   z, $6597                                    ; $6c22: $ca $97 $65

	ld   d, [hl]                                     ; $6c25: $56
	ld   a, c                                        ; $6c26: $79
	xor  e                                           ; $6c27: $ab
	and  a                                           ; $6c28: $a7
	ld   d, [hl]                                     ; $6c29: $56
	adc  d                                           ; $6c2a: $8a
	cp   c                                           ; $6c2b: $b9
	add  [hl]                                        ; $6c2c: $86
	ld   d, l                                        ; $6c2d: $55
	ld   d, a                                        ; $6c2e: $57
	xor  e                                           ; $6c2f: $ab
	cp   c                                           ; $6c30: $b9
	halt                                             ; $6c31: $76
	ld   a, c                                        ; $6c32: $79
	cp   d                                           ; $6c33: $ba
	and  a                                           ; $6c34: $a7
	ld   h, l                                        ; $6c35: $65
	ld   d, l                                        ; $6c36: $55
	adc  e                                           ; $6c37: $8b
	jp   z, Jump_0e9_6976                            ; $6c38: $ca $76 $69

	xor  e                                           ; $6c3b: $ab
	xor  c                                           ; $6c3c: $a9
	ld   h, l                                        ; $6c3d: $65
	ld   b, l                                        ; $6c3e: $45
	sbc  h                                           ; $6c3f: $9c
	cp   d                                           ; $6c40: $ba
	halt                                             ; $6c41: $76
	ld   a, b                                        ; $6c42: $78
	sbc  d                                           ; $6c43: $9a
	sbc  b                                           ; $6c44: $98
	ld   d, h                                        ; $6c45: $54
	ld   b, a                                        ; $6c46: $47
	cp   h                                           ; $6c47: $bc
	and  a                                           ; $6c48: $a7
	ld   h, a                                        ; $6c49: $67
	sbc  e                                           ; $6c4a: $9b
	xor  c                                           ; $6c4b: $a9
	ld   h, l                                        ; $6c4c: $65
	ld   b, [hl]                                     ; $6c4d: $46
	adc  e                                           ; $6c4e: $8b
	xor  b                                           ; $6c4f: $a8
	ld   [hl], a                                     ; $6c50: $77
	adc  d                                           ; $6c51: $8a
	xor  c                                           ; $6c52: $a9
	ld   [hl], l                                     ; $6c53: $75
	ld   d, l                                        ; $6c54: $55
	ld   a, d                                        ; $6c55: $7a
	cp   c                                           ; $6c56: $b9
	add  a                                           ; $6c57: $87
	ld   a, b                                        ; $6c58: $78
	sbc  c                                           ; $6c59: $99
	add  a                                           ; $6c5a: $87
	ld   d, l                                        ; $6c5b: $55
	ld   d, a                                        ; $6c5c: $57
	xor  e                                           ; $6c5d: $ab
	sbc  b                                           ; $6c5e: $98
	ld   [hl], a                                     ; $6c5f: $77
	sbc  d                                           ; $6c60: $9a
	sbc  c                                           ; $6c61: $99
	ld   [hl], l                                     ; $6c62: $75
	ld   d, [hl]                                     ; $6c63: $56
	adc  d                                           ; $6c64: $8a
	cp   d                                           ; $6c65: $ba
	add  a                                           ; $6c66: $87
	adc  c                                           ; $6c67: $89
	sbc  c                                           ; $6c68: $99
	sub  a                                           ; $6c69: $97
	ld   h, l                                        ; $6c6a: $65
	ld   l, b                                        ; $6c6b: $68
	sbc  d                                           ; $6c6c: $9a
	sbc  b                                           ; $6c6d: $98
	ld   a, b                                        ; $6c6e: $78
	sbc  d                                           ; $6c6f: $9a
	sbc  b                                           ; $6c70: $98
	ld   [hl], l                                     ; $6c71: $75
	ld   d, [hl]                                     ; $6c72: $56
	sbc  d                                           ; $6c73: $9a
	xor  b                                           ; $6c74: $a8
	ld   [hl], a                                     ; $6c75: $77
	adc  c                                           ; $6c76: $89
	xor  c                                           ; $6c77: $a9
	add  [hl]                                        ; $6c78: $86
	ld   d, l                                        ; $6c79: $55
	ld   a, b                                        ; $6c7a: $78
	sbc  d                                           ; $6c7b: $9a
	sbc  b                                           ; $6c7c: $98
	adc  b                                           ; $6c7d: $88
	sbc  c                                           ; $6c7e: $99
	adc  b                                           ; $6c7f: $88
	halt                                             ; $6c80: $76
	ld   d, [hl]                                     ; $6c81: $56
	adc  d                                           ; $6c82: $8a
	xor  c                                           ; $6c83: $a9
	adc  b                                           ; $6c84: $88
	adc  c                                           ; $6c85: $89
	xor  b                                           ; $6c86: $a8
	add  [hl]                                        ; $6c87: $86
	ld   h, [hl]                                     ; $6c88: $66
	ld   a, b                                        ; $6c89: $78
	xor  c                                           ; $6c8a: $a9
	sbc  b                                           ; $6c8b: $98
	adc  c                                           ; $6c8c: $89
	sbc  c                                           ; $6c8d: $99
	add  a                                           ; $6c8e: $87
	halt                                             ; $6c8f: $76
	ld   h, [hl]                                     ; $6c90: $66
	adc  d                                           ; $6c91: $8a
	sbc  c                                           ; $6c92: $99
	adc  b                                           ; $6c93: $88
	sbc  c                                           ; $6c94: $99
	sbc  c                                           ; $6c95: $99
	add  a                                           ; $6c96: $87
	ld   h, [hl]                                     ; $6c97: $66
	ld   h, a                                        ; $6c98: $67
	sbc  c                                           ; $6c99: $99
	sbc  b                                           ; $6c9a: $98
	adc  c                                           ; $6c9b: $89
	sbc  c                                           ; $6c9c: $99
	adc  b                                           ; $6c9d: $88
	halt                                             ; $6c9e: $76
	ld   h, [hl]                                     ; $6c9f: $66
	ld   a, b                                        ; $6ca0: $78
	sbc  c                                           ; $6ca1: $99
	sbc  b                                           ; $6ca2: $98
	sbc  c                                           ; $6ca3: $99
	sbc  b                                           ; $6ca4: $98
	add  a                                           ; $6ca5: $87
	ld   h, [hl]                                     ; $6ca6: $66
	ld   h, a                                        ; $6ca7: $67
	sbc  d                                           ; $6ca8: $9a
	sbc  c                                           ; $6ca9: $99
	adc  b                                           ; $6caa: $88
	adc  c                                           ; $6cab: $89
	sbc  c                                           ; $6cac: $99
	ld   [hl], a                                     ; $6cad: $77
	ld   h, [hl]                                     ; $6cae: $66
	ld   a, b                                        ; $6caf: $78
	sbc  d                                           ; $6cb0: $9a
	sbc  c                                           ; $6cb1: $99
	adc  c                                           ; $6cb2: $89
	sbc  c                                           ; $6cb3: $99
	adc  b                                           ; $6cb4: $88
	halt                                             ; $6cb5: $76
	ld   h, [hl]                                     ; $6cb6: $66
	ld   a, c                                        ; $6cb7: $79
	sbc  c                                           ; $6cb8: $99
	sbc  b                                           ; $6cb9: $98
	sbc  c                                           ; $6cba: $99
	sbc  c                                           ; $6cbb: $99
	add  a                                           ; $6cbc: $87
	ld   h, [hl]                                     ; $6cbd: $66
	ld   h, a                                        ; $6cbe: $67
	adc  c                                           ; $6cbf: $89
	sbc  b                                           ; $6cc0: $98
	adc  b                                           ; $6cc1: $88
	adc  c                                           ; $6cc2: $89
	xor  b                                           ; $6cc3: $a8
	add  a                                           ; $6cc4: $87
	ld   h, [hl]                                     ; $6cc5: $66
	ld   h, a                                        ; $6cc6: $67
	sbc  c                                           ; $6cc7: $99
	sbc  b                                           ; $6cc8: $98
	adc  c                                           ; $6cc9: $89
	sbc  d                                           ; $6cca: $9a
	sbc  b                                           ; $6ccb: $98
	ld   [hl], a                                     ; $6ccc: $77
	ld   h, [hl]                                     ; $6ccd: $66
	ld   a, b                                        ; $6cce: $78
	adc  c                                           ; $6ccf: $89
	adc  b                                           ; $6cd0: $88
	adc  b                                           ; $6cd1: $88
	sbc  d                                           ; $6cd2: $9a
	adc  b                                           ; $6cd3: $88
	halt                                             ; $6cd4: $76
	ld   h, a                                        ; $6cd5: $67
	ld   a, b                                        ; $6cd6: $78
	adc  b                                           ; $6cd7: $88
	adc  b                                           ; $6cd8: $88
	sbc  c                                           ; $6cd9: $99
	xor  c                                           ; $6cda: $a9
	sub  a                                           ; $6cdb: $97
	ld   [hl], a                                     ; $6cdc: $77
	ld   [hl], a                                     ; $6cdd: $77
	ld   a, b                                        ; $6cde: $78
	adc  b                                           ; $6cdf: $88
	adc  b                                           ; $6ce0: $88
	sbc  c                                           ; $6ce1: $99
	sbc  c                                           ; $6ce2: $99
	add  a                                           ; $6ce3: $87
	ld   [hl], a                                     ; $6ce4: $77
	ld   [hl], a                                     ; $6ce5: $77
	ld   a, b                                        ; $6ce6: $78
	adc  b                                           ; $6ce7: $88
	adc  b                                           ; $6ce8: $88
	sbc  c                                           ; $6ce9: $99
	sbc  c                                           ; $6cea: $99
	add  a                                           ; $6ceb: $87
	ld   [hl], a                                     ; $6cec: $77
	ld   [hl], a                                     ; $6ced: $77
	ld   a, b                                        ; $6cee: $78
	sbc  b                                           ; $6cef: $98
	sbc  c                                           ; $6cf0: $99
	sbc  c                                           ; $6cf1: $99
	sbc  c                                           ; $6cf2: $99
	add  a                                           ; $6cf3: $87
	ld   [hl], a                                     ; $6cf4: $77
	ld   [hl], a                                     ; $6cf5: $77
	ld   a, b                                        ; $6cf6: $78
	sbc  b                                           ; $6cf7: $98
	sbc  c                                           ; $6cf8: $99
	sbc  b                                           ; $6cf9: $98
	sbc  b                                           ; $6cfa: $98
	add  a                                           ; $6cfb: $87
	ld   [hl], a                                     ; $6cfc: $77
	ld   [hl], a                                     ; $6cfd: $77
	ld   a, b                                        ; $6cfe: $78
	adc  c                                           ; $6cff: $89
	sbc  c                                           ; $6d00: $99
	sbc  b                                           ; $6d01: $98
	sbc  b                                           ; $6d02: $98
	sbc  b                                           ; $6d03: $98
	ld   [hl], a                                     ; $6d04: $77
	ld   [hl], a                                     ; $6d05: $77
	ld   [hl], a                                     ; $6d06: $77
	adc  b                                           ; $6d07: $88
	adc  c                                           ; $6d08: $89
	adc  c                                           ; $6d09: $89
	adc  c                                           ; $6d0a: $89
	adc  b                                           ; $6d0b: $88
	ld   [hl], a                                     ; $6d0c: $77
	ld   [hl], a                                     ; $6d0d: $77
	ld   [hl], a                                     ; $6d0e: $77
	adc  b                                           ; $6d0f: $88
	adc  b                                           ; $6d10: $88
	sbc  c                                           ; $6d11: $99
	sbc  c                                           ; $6d12: $99
	adc  b                                           ; $6d13: $88
	add  a                                           ; $6d14: $87
	ld   [hl], a                                     ; $6d15: $77
	ld   [hl], a                                     ; $6d16: $77
	adc  b                                           ; $6d17: $88
	sbc  b                                           ; $6d18: $98
	sbc  c                                           ; $6d19: $99
	adc  b                                           ; $6d1a: $88
	sbc  b                                           ; $6d1b: $98
	sbc  b                                           ; $6d1c: $98
	ld   [hl], a                                     ; $6d1d: $77
	ld   [hl], a                                     ; $6d1e: $77
	adc  b                                           ; $6d1f: $88
	adc  c                                           ; $6d20: $89
	sbc  c                                           ; $6d21: $99
	adc  b                                           ; $6d22: $88
	adc  c                                           ; $6d23: $89
	sbc  c                                           ; $6d24: $99
	add  a                                           ; $6d25: $87
	ld   [hl], a                                     ; $6d26: $77
	ld   a, b                                        ; $6d27: $78
	adc  b                                           ; $6d28: $88
	adc  c                                           ; $6d29: $89
	sbc  b                                           ; $6d2a: $98
	adc  b                                           ; $6d2b: $88
	adc  c                                           ; $6d2c: $89
	sbc  b                                           ; $6d2d: $98
	add  a                                           ; $6d2e: $87
	ld   [hl], a                                     ; $6d2f: $77
	adc  b                                           ; $6d30: $88
	adc  b                                           ; $6d31: $88
	adc  b                                           ; $6d32: $88
	adc  b                                           ; $6d33: $88
	adc  b                                           ; $6d34: $88
	adc  b                                           ; $6d35: $88
	sbc  b                                           ; $6d36: $98
	adc  b                                           ; $6d37: $88
	ld   [hl], a                                     ; $6d38: $77
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
	add  c                                           ; $6d69: $81
	ld   de, $1111                                   ; $6d6a: $11 $11 $11
	ld   de, $1111                                   ; $6d6d: $11 $11 $11
	ld   de, $1111                                   ; $6d70: $11 $11 $11
	ld   de, $1111                                   ; $6d73: $11 $11 $11
	ld   de, $1111                                   ; $6d76: $11 $11 $11
	ld   de, $1111                                   ; $6d79: $11 $11 $11
	ld   de, $0011                                   ; $6d7c: $11 $11 $00
	ld   c, b                                        ; $6d7f: $48
	ld   de, $1111                                   ; $6d80: $11 $11 $11
	ld   de, $1111                                   ; $6d83: $11 $11 $11
	ld   de, $1111                                   ; $6d86: $11 $11 $11
	ld   de, $5413                                   ; $6d89: $11 $13 $54
	ld   d, h                                        ; $6d8c: $54
	ld   d, h                                        ; $6d8d: $54
	ld   b, c                                        ; $6d8e: $41
	rra                                              ; $6d8f: $1f
	rst  $38                                         ; $6d90: $ff
	pop  af                                          ; $6d91: $f1
	ld   de, $1511                                   ; $6d92: $11 $11 $15
	and  c                                           ; $6d95: $a1
	ld   de, $de1c                                   ; $6d96: $11 $1c $de
	cp   h                                           ; $6d99: $bc
	sbc  $b1                                         ; $6d9a: $de $b1
	ld   de, $1111                                   ; $6d9c: $11 $11 $11
	ld   de, $1111                                   ; $6d9f: $11 $11 $11
	ld   de, $1111                                   ; $6da2: $11 $11 $11
	ld   de, $1111                                   ; $6da5: $11 $11 $11
	ld   de, $5411                                   ; $6da8: $11 $11 $54
	ld   b, h                                        ; $6dab: $44
	sub  l                                           ; $6dac: $95
	ld   de, $5454                                   ; $6dad: $11 $54 $54
	ld   h, a                                        ; $6db0: $67
	ld   [hl], d                                     ; $6db1: $72
	ld   de, $1111                                   ; $6db2: $11 $11 $11
	ld   de, $1112                                   ; $6db5: $11 $12 $11
	ld   [de], a                                     ; $6db8: $12
	ld   de, $1111                                   ; $6db9: $11 $11 $11
	ld   h, [hl]                                     ; $6dbc: $66
	halt                                             ; $6dbd: $76
	ld   [hl], l                                     ; $6dbe: $75
	ld   de, $8888                                   ; $6dbf: $11 $88 $88
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
	add  a                                           ; $6dfc: $87
	adc  b                                           ; $6dfd: $88
	adc  b                                           ; $6dfe: $88
	adc  b                                           ; $6dff: $88
	adc  b                                           ; $6e00: $88
	adc  b                                           ; $6e01: $88
	adc  b                                           ; $6e02: $88
	adc  b                                           ; $6e03: $88
	adc  b                                           ; $6e04: $88
	adc  b                                           ; $6e05: $88
	ld   a, b                                        ; $6e06: $78
	adc  b                                           ; $6e07: $88
	adc  b                                           ; $6e08: $88
	adc  b                                           ; $6e09: $88
	adc  b                                           ; $6e0a: $88
	adc  b                                           ; $6e0b: $88
	adc  b                                           ; $6e0c: $88
	adc  b                                           ; $6e0d: $88
	adc  b                                           ; $6e0e: $88
	adc  b                                           ; $6e0f: $88
	adc  b                                           ; $6e10: $88
	adc  b                                           ; $6e11: $88
	adc  b                                           ; $6e12: $88
	adc  b                                           ; $6e13: $88
	adc  b                                           ; $6e14: $88
	ld   a, b                                        ; $6e15: $78
	add  a                                           ; $6e16: $87
	adc  b                                           ; $6e17: $88
	adc  b                                           ; $6e18: $88
	add  a                                           ; $6e19: $87
	adc  b                                           ; $6e1a: $88
	adc  b                                           ; $6e1b: $88
	add  a                                           ; $6e1c: $87
	adc  c                                           ; $6e1d: $89
	adc  b                                           ; $6e1e: $88
	adc  b                                           ; $6e1f: $88
	ld   a, b                                        ; $6e20: $78
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
	adc  b                                           ; $6e37: $88
	adc  c                                           ; $6e38: $89
	adc  b                                           ; $6e39: $88
	add  a                                           ; $6e3a: $87
	add  a                                           ; $6e3b: $87
	sbc  b                                           ; $6e3c: $98
	adc  b                                           ; $6e3d: $88
	adc  b                                           ; $6e3e: $88
	adc  b                                           ; $6e3f: $88
	adc  b                                           ; $6e40: $88
	adc  b                                           ; $6e41: $88
	adc  b                                           ; $6e42: $88
	adc  b                                           ; $6e43: $88
	sub  a                                           ; $6e44: $97
	adc  b                                           ; $6e45: $88
	ld   a, c                                        ; $6e46: $79
	adc  b                                           ; $6e47: $88
	sbc  b                                           ; $6e48: $98
	adc  b                                           ; $6e49: $88
	adc  b                                           ; $6e4a: $88
	adc  b                                           ; $6e4b: $88
	ld   a, c                                        ; $6e4c: $79
	sub  a                                           ; $6e4d: $97
	adc  b                                           ; $6e4e: $88
	ld   a, c                                        ; $6e4f: $79
	adc  b                                           ; $6e50: $88
	adc  b                                           ; $6e51: $88
	adc  b                                           ; $6e52: $88
	adc  b                                           ; $6e53: $88
	ld   a, b                                        ; $6e54: $78
	adc  b                                           ; $6e55: $88
	add  a                                           ; $6e56: $87
	sbc  b                                           ; $6e57: $98
	ld   a, b                                        ; $6e58: $78
	adc  b                                           ; $6e59: $88
	sbc  b                                           ; $6e5a: $98
	adc  b                                           ; $6e5b: $88
	ld   a, b                                        ; $6e5c: $78
	sub  a                                           ; $6e5d: $97
	sbc  b                                           ; $6e5e: $98
	adc  b                                           ; $6e5f: $88
	adc  b                                           ; $6e60: $88
	adc  b                                           ; $6e61: $88
	adc  b                                           ; $6e62: $88
	adc  c                                           ; $6e63: $89
	ld   a, b                                        ; $6e64: $78
	adc  b                                           ; $6e65: $88
	sub  a                                           ; $6e66: $97
	add  a                                           ; $6e67: $87
	adc  c                                           ; $6e68: $89
	ld   a, b                                        ; $6e69: $78
	sub  a                                           ; $6e6a: $97
	adc  c                                           ; $6e6b: $89
	ld   a, b                                        ; $6e6c: $78
	ld   a, c                                        ; $6e6d: $79
	ld   a, b                                        ; $6e6e: $78
	sub  a                                           ; $6e6f: $97
	add  a                                           ; $6e70: $87
	adc  b                                           ; $6e71: $88
	ld   a, b                                        ; $6e72: $78
	sub  a                                           ; $6e73: $97
	adc  b                                           ; $6e74: $88
	adc  c                                           ; $6e75: $89
	ld   a, b                                        ; $6e76: $78
	ld   a, b                                        ; $6e77: $78
	ld   a, b                                        ; $6e78: $78
	adc  b                                           ; $6e79: $88
	ld   a, b                                        ; $6e7a: $78
	sub  a                                           ; $6e7b: $97
	sub  [hl]                                        ; $6e7c: $96
	sbc  b                                           ; $6e7d: $98
	sub  a                                           ; $6e7e: $97
	adc  c                                           ; $6e7f: $89
	ld   a, c                                        ; $6e80: $79
	ld   a, c                                        ; $6e81: $79
	ld   a, d                                        ; $6e82: $7a
	ld   a, c                                        ; $6e83: $79
	add  a                                           ; $6e84: $87
	sub  a                                           ; $6e85: $97
	add  a                                           ; $6e86: $87
	and  a                                           ; $6e87: $a7
	adc  c                                           ; $6e88: $89
	add  a                                           ; $6e89: $87
	add  a                                           ; $6e8a: $87
	ld   a, d                                        ; $6e8b: $7a
	ld   a, b                                        ; $6e8c: $78
	adc  b                                           ; $6e8d: $88
	adc  b                                           ; $6e8e: $88
	sub  a                                           ; $6e8f: $97
	add  a                                           ; $6e90: $87
	ld   a, c                                        ; $6e91: $79
	add  a                                           ; $6e92: $87
	adc  b                                           ; $6e93: $88
	ld   a, b                                        ; $6e94: $78
	adc  b                                           ; $6e95: $88
	ld   a, c                                        ; $6e96: $79
	add  a                                           ; $6e97: $87
	sbc  b                                           ; $6e98: $98
	adc  b                                           ; $6e99: $88
	adc  c                                           ; $6e9a: $89
	adc  b                                           ; $6e9b: $88
	sub  a                                           ; $6e9c: $97
	adc  b                                           ; $6e9d: $88
	adc  b                                           ; $6e9e: $88
	ld   a, b                                        ; $6e9f: $78
	ld   a, c                                        ; $6ea0: $79
	add  a                                           ; $6ea1: $87
	sbc  b                                           ; $6ea2: $98
	ld   a, c                                        ; $6ea3: $79
	adc  b                                           ; $6ea4: $88
	add  a                                           ; $6ea5: $87
	sub  a                                           ; $6ea6: $97
	sub  a                                           ; $6ea7: $97
	adc  c                                           ; $6ea8: $89
	ld   a, c                                        ; $6ea9: $79
	adc  b                                           ; $6eaa: $88
	adc  c                                           ; $6eab: $89
	ld   a, b                                        ; $6eac: $78
	sub  [hl]                                        ; $6ead: $96
	sbc  c                                           ; $6eae: $99
	ld   h, a                                        ; $6eaf: $67
	sub  a                                           ; $6eb0: $97
	ld   a, d                                        ; $6eb1: $7a
	ld   a, b                                        ; $6eb2: $78
	sbc  c                                           ; $6eb3: $99
	adc  b                                           ; $6eb4: $88
	sub  a                                           ; $6eb5: $97
	add  a                                           ; $6eb6: $87
	add  [hl]                                        ; $6eb7: $86
	ld   [hl], a                                     ; $6eb8: $77
	ld   h, a                                        ; $6eb9: $67
	adc  b                                           ; $6eba: $88
	adc  d                                           ; $6ebb: $8a
	adc  c                                           ; $6ebc: $89
	xor  d                                           ; $6ebd: $aa
	adc  b                                           ; $6ebe: $88
	sub  a                                           ; $6ebf: $97
	add  [hl]                                        ; $6ec0: $86
	ld   [hl], a                                     ; $6ec1: $77
	ld   h, [hl]                                     ; $6ec2: $66
	ld   a, b                                        ; $6ec3: $78
	adc  b                                           ; $6ec4: $88
	sbc  c                                           ; $6ec5: $99
	xor  d                                           ; $6ec6: $aa
	sbc  d                                           ; $6ec7: $9a
	ld   a, b                                        ; $6ec8: $78
	add  [hl]                                        ; $6ec9: $86
	ld   [hl], a                                     ; $6eca: $77
	ld   d, [hl]                                     ; $6ecb: $56
	ld   [hl], a                                     ; $6ecc: $77
	adc  b                                           ; $6ecd: $88
	xor  d                                           ; $6ece: $aa
	cp   h                                           ; $6ecf: $bc
	sbc  d                                           ; $6ed0: $9a
	add  a                                           ; $6ed1: $87
	sub  l                                           ; $6ed2: $95
	ld   h, a                                        ; $6ed3: $67
	ld   b, l                                        ; $6ed4: $45
	halt                                             ; $6ed5: $76
	ld   l, c                                        ; $6ed6: $69
	xor  d                                           ; $6ed7: $aa
	cp   h                                           ; $6ed8: $bc
	xor  d                                           ; $6ed9: $aa
	sub  [hl]                                        ; $6eda: $96
	or   [hl]                                        ; $6edb: $b6
	add  hl, sp                                      ; $6edc: $39
	inc  sp                                          ; $6edd: $33
	ld   [hl], l                                     ; $6ede: $75
	ld   e, b                                        ; $6edf: $58
	xor  c                                           ; $6ee0: $a9
	cp   l                                           ; $6ee1: $bd
	jp   z, $9cc6                                    ; $6ee2: $ca $c6 $9c

	rla                                              ; $6ee5: $17
	and  c                                           ; $6ee6: $a1
	ld   b, a                                        ; $6ee7: $47
	inc  [hl]                                        ; $6ee8: $34
	xor  b                                           ; $6ee9: $a8
	sbc  l                                           ; $6eea: $9d
	db   $eb                                         ; $6eeb: $eb
	call c, $c14c                                    ; $6eec: $dc $4c $c1
	adc  c                                           ; $6eef: $89
	dec  d                                           ; $6ef0: $15
	ld   h, c                                        ; $6ef1: $61
	ld   e, c                                        ; $6ef2: $59
	adc  b                                           ; $6ef3: $88
	db   $fd                                         ; $6ef4: $fd
	xor  a                                           ; $6ef5: $af
	call nz, $1bfb                                   ; $6ef6: $c4 $fb $1b
	add  c                                           ; $6ef9: $81
	ld   h, a                                        ; $6efa: $67
	inc  d                                           ; $6efb: $14
	or   [hl]                                        ; $6efc: $b6
	ld   a, a                                        ; $6efd: $7f

jr_0e9_6efe:
	db   $db                                         ; $6efe: $db
	ld   a, [$914f]                                  ; $6eff: $fa $4f $91
	add  $18                                         ; $6f02: $c6 $18
	ld   h, c                                        ; $6f04: $61
	ld   e, e                                        ; $6f05: $5b
	ld   d, a                                        ; $6f06: $57
	ei                                               ; $6f07: $fb
	xor  a                                           ; $6f08: $af
	sub  h                                           ; $6f09: $94
	ld   sp, hl                                      ; $6f0a: $f9
	ld   e, $51                                      ; $6f0b: $1e $51
	sub  l                                           ; $6f0d: $95
	dec  d                                           ; $6f0e: $15
	or   h                                           ; $6f0f: $b4
	adc  a                                           ; $6f10: $8f

Jump_0e9_6f11:
	xor  e                                           ; $6f11: $ab
	ld   a, [$a15f]                                  ; $6f12: $fa $5f $a1
	rst  $30                                         ; $6f15: $f7
	dec  de                                          ; $6f16: $1b
	ld   d, c                                        ; $6f17: $51
	ld   l, c                                        ; $6f18: $69
	add  hl, sp                                      ; $6f19: $39
	ld   a, [$a5cf]                                  ; $6f1a: $fa $cf $a5
	ei                                               ; $6f1d: $fb
	inc  e                                           ; $6f1e: $1c
	or   c                                           ; $6f1f: $b1
	and  a                                           ; $6f20: $a7
	rla                                              ; $6f21: $17
	sub  e                                           ; $6f22: $93
	ld   a, a                                        ; $6f23: $7f
	sbc  l                                           ; $6f24: $9d
	db   $fc                                         ; $6f25: $fc
	ld   l, a                                        ; $6f26: $6f
	pop  hl                                          ; $6f27: $e1
	adc  l                                           ; $6f28: $8d
	inc  d                                           ; $6f29: $14
	pop  bc                                          ; $6f2a: $c1
	ld   e, c                                        ; $6f2b: $59
	dec  [hl]                                        ; $6f2c: $35
	ei                                               ; $6f2d: $fb
	xor  a                                           ; $6f2e: $af
	rst  $10                                         ; $6f2f: $d7
	cp   a                                           ; $6f30: $bf
	ld   h, e                                        ; $6f31: $63
	ldh  [c], a                                      ; $6f32: $e2
	rra                                              ; $6f33: $1f
	ld   de, $3ca4                                   ; $6f34: $11 $a4 $3c
	rst  $20                                         ; $6f37: $e7
	cp   $b9                                         ; $6f38: $fe $b9
	ei                                               ; $6f3a: $fb
	jr   c, jr_0e9_6efe                              ; $6f3b: $38 $c1

	sbc  b                                           ; $6f3d: $98
	ld   a, [de]                                     ; $6f3e: $1a
	ld   d, e                                        ; $6f3f: $53
	ld   l, a                                        ; $6f40: $6f
	adc  l                                           ; $6f41: $8d
	db   $fc                                         ; $6f42: $fc
	sbc  l                                           ; $6f43: $9d
	push hl                                          ; $6f44: $e5
	ld   e, l                                        ; $6f45: $5d
	ld   hl, $2af1                                   ; $6f46: $21 $f1 $2a
	inc  hl                                          ; $6f49: $23
	call c, $dc8f                                    ; $6f4a: $dc $8f $dc
	sbc  a                                           ; $6f4d: $9f
	and  h                                           ; $6f4e: $a4
	adc  e                                           ; $6f4f: $8b
	jr   @+$73                                       ; $6f50: $18 $71

	or   h                                           ; $6f52: $b4
	scf                                              ; $6f53: $37
	rst  $30                                         ; $6f54: $f7
	rst  $38                                         ; $6f55: $ff
	cp   e                                           ; $6f56: $bb
	cp   [hl]                                        ; $6f57: $be
	ld   [hl], h                                     ; $6f58: $74
	jp   $111f                                       ; $6f59: $c3 $1f $11


	sub  d                                           ; $6f5c: $92
	ld   e, e                                        ; $6f5d: $5b
	jp   hl                                          ; $6f5e: $e9


	cp   $d9                                         ; $6f5f: $fe $d9
	db   $eb                                         ; $6f61: $eb
	ld   d, [hl]                                     ; $6f62: $56
	pop  bc                                          ; $6f63: $c1
	dec  sp                                          ; $6f64: $3b
	add  hl, de                                      ; $6f65: $19
	ld   b, h                                        ; $6f66: $44
	ld   e, [hl]                                     ; $6f67: $5e
	cp   l                                           ; $6f68: $bd
	cp   $c9                                         ; $6f69: $fe $c9
	ld   hl, sp+$56                                  ; $6f6b: $f8 $56
	pop  bc                                          ; $6f6d: $c1
	or   h                                           ; $6f6e: $b4
	ld   a, [de]                                     ; $6f6f: $1a
	ld   [hl], $6f                                   ; $6f70: $36 $6f
	adc  a                                           ; $6f72: $8f
	rst  $28                                         ; $6f73: $ef
	xor  e                                           ; $6f74: $ab
	rst  $30                                         ; $6f75: $f7
	ld   c, c                                        ; $6f76: $49
	add  c                                           ; $6f77: $81
	pop  af                                          ; $6f78: $f1
	add  hl, de                                      ; $6f79: $19
	ld   b, l                                        ; $6f7a: $45
	sbc  a                                           ; $6f7b: $9f
	ld   a, a                                        ; $6f7c: $7f
	rst  JumpTable                                         ; $6f7d: $df
	ld   a, h                                        ; $6f7e: $7c
	rst  ToBoot                                         ; $6f7f: $c7
	dec  sp                                          ; $6f80: $3b
	ld   de, $56f1                                   ; $6f81: $11 $f1 $56
	ld   d, h                                        ; $6f84: $54
	call $cfaf                                       ; $6f85: $cd $af $cf
	ld   l, [hl]                                     ; $6f88: $6e
	or   [hl]                                        ; $6f89: $b6
	dec  a                                           ; $6f8a: $3d
	ld   de, $93c1                                   ; $6f8b: $11 $c1 $93
	ld   h, h                                        ; $6f8e: $64
	ld   a, [$dfdf]                                  ; $6f8f: $fa $df $df
	ld   l, a                                        ; $6f92: $6f
	add  [hl]                                        ; $6f93: $86
	dec  a                                           ; $6f94: $3d
	ld   d, $81                                      ; $6f95: $16 $81
	or   e                                           ; $6f97: $b3
	ld   [hl], h                                     ; $6f98: $74
	ld   hl, sp-$01                                  ; $6f99: $f8 $ff
	db   $ed                                         ; $6f9b: $ed
	ld   a, a                                        ; $6f9c: $7f
	sub  h                                           ; $6f9d: $94
	ld   e, h                                        ; $6f9e: $5c
	dec  de                                          ; $6f9f: $1b
	ld   sp, $76a3                                   ; $6fa0: $31 $a3 $76
	rst  $30                                         ; $6fa3: $f7
	cp   $fb                                         ; $6fa4: $fe $fb
	adc  [hl]                                        ; $6fa6: $8e
	ld   [hl], d                                     ; $6fa7: $72
	add  a                                           ; $6fa8: $87
	ld   e, $11                                      ; $6fa9: $1e $11
	sub  h                                           ; $6fab: $94
	ld   a, b                                        ; $6fac: $78
	ld   hl, sp-$04                                  ; $6fad: $f8 $fc
	ld   sp, hl                                      ; $6faf: $f9
	xor  l                                           ; $6fb0: $ad
	ld   h, d                                        ; $6fb1: $62
	and  d                                           ; $6fb2: $a2
	rra                                              ; $6fb3: $1f
	inc  d                                           ; $6fb4: $14
	ld   [hl], l                                     ; $6fb5: $75
	ld   e, e                                        ; $6fb6: $5b
	ld   a, [$f7fa]                                  ; $6fb7: $fa $fa $f7
	cp   h                                           ; $6fba: $bc
	ld   b, d                                        ; $6fbb: $42
	pop  bc                                          ; $6fbc: $c1
	ld   e, $18                                      ; $6fbd: $1e $18
	ld   h, [hl]                                     ; $6fbf: $66
	ld   l, a                                        ; $6fc0: $6f
	call z, $f6fa                                    ; $6fc1: $cc $fa $f6
	swap e                                           ; $6fc4: $cb $33
	or   c                                           ; $6fc6: $b1
	dec  sp                                          ; $6fc7: $3b
	dec  de                                          ; $6fc8: $1b
	ld   b, [hl]                                     ; $6fc9: $46
	ld   l, a                                        ; $6fca: $6f
	cp   [hl]                                        ; $6fcb: $be
	db   $fc                                         ; $6fcc: $fc
	push af                                          ; $6fcd: $f5
	jp   c, $a116                                    ; $6fce: $da $16 $a1

	and  l                                           ; $6fd1: $a5
	inc  e                                           ; $6fd2: $1c
	ld   b, a                                        ; $6fd3: $47
	adc  a                                           ; $6fd4: $8f
	xor  a                                           ; $6fd5: $af
	db   $fd                                         ; $6fd6: $fd
	push de                                          ; $6fd7: $d5
	rst  $20                                         ; $6fd8: $e7
	add  hl, de                                      ; $6fd9: $19
	ld   b, c                                        ; $6fda: $41
	pop  de                                          ; $6fdb: $d1
	dec  de                                          ; $6fdc: $1b
	scf                                              ; $6fdd: $37
	xor  a                                           ; $6fde: $af
	xor  a                                           ; $6fdf: $af
	xor  $b6                                         ; $6fe0: $ee $b6
	db   $f4                                         ; $6fe2: $f4
	inc  e                                           ; $6fe3: $1c
	ld   de, $4ae1                                   ; $6fe4: $11 $e1 $4a
	ld   b, a                                        ; $6fe7: $47
	rst  JumpTable                                         ; $6fe8: $df
	cp   a                                           ; $6fe9: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fea: $cf
	sbc  c                                           ; $6feb: $99
	pop  hl                                          ; $6fec: $e1
	dec  a                                           ; $6fed: $3d
	inc  de                                          ; $6fee: $13
	or   c                                           ; $6fef: $b1
	sub  a                                           ; $6ff0: $97
	ld   e, c                                        ; $6ff1: $59
	db   $fc                                         ; $6ff2: $fc
	rst  $28                                         ; $6ff3: $ef
	xor  a                                           ; $6ff4: $af
	ld   l, e                                        ; $6ff5: $6b
	or   c                                           ; $6ff6: $b1
	sbc  b                                           ; $6ff7: $98
	ld   a, [de]                                     ; $6ff8: $1a
	ld   b, c                                        ; $6ff9: $41
	push bc                                          ; $6ffa: $c5
	ld   l, d                                        ; $6ffb: $6a
	ld   a, [$cdff]                                  ; $6ffc: $fa $ff $cd
	ld   e, [hl]                                     ; $6fff: $5e
	ld   h, c                                        ; $7000: $61
	pop  hl                                          ; $7001: $e1
	ld   e, $12                                      ; $7002: $1e $12
	call nz, $fc7e                                   ; $7004: $c4 $7e $fc
	db   $fd                                         ; $7007: $fd
	jp   z, $127e                                    ; $7008: $ca $7e $12

	pop  de                                          ; $700b: $d1
	ld   c, e                                        ; $700c: $4b
	add  hl, de                                      ; $700d: $19
	add  l                                           ; $700e: $85
	sbc  a                                           ; $700f: $9f
	rst  JumpTable                                         ; $7010: $df
	ei                                               ; $7011: $fb
	sub  $ab                                         ; $7012: $d6 $ab
	dec  de                                          ; $7014: $1b
	ld   h, c                                        ; $7015: $61
	pop  hl                                          ; $7016: $e1
	dec  e                                           ; $7017: $1d
	ld   d, [hl]                                     ; $7018: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7019: $cf
	cp   a                                           ; $701a: $bf
	ei                                               ; $701b: $fb
	add  $d4                                         ; $701c: $c6 $d4
	rra                                              ; $701e: $1f
	ld   de, $6cf1                                   ; $701f: $11 $f1 $6c
	ld   e, b                                        ; $7022: $58
	cp   $cf                                         ; $7023: $fe $cf
	call z, $d188                                    ; $7025: $cc $88 $d1
	ld   a, c                                        ; $7028: $79
	inc  e                                           ; $7029: $1c
	ld   d, c                                        ; $702a: $51
	rst  $10                                         ; $702b: $d7
	ld   e, h                                        ; $702c: $5c
	ld   a, [$bcff]                                  ; $702d: $fa $ff $bc
	ld   l, l                                        ; $7030: $6d
	ld   b, c                                        ; $7031: $41
	pop  af                                          ; $7032: $f1
	rra                                              ; $7033: $1f
	dec  d                                           ; $7034: $15
	call nz, $dc7f                                   ; $7035: $c4 $7f $dc
	ei                                               ; $7038: $fb
	cp   b                                           ; $7039: $b8
	sbc  l                                           ; $703a: $9d
	rla                                              ; $703b: $17
	and  c                                           ; $703c: $a1
	push bc                                          ; $703d: $c5
	dec  e                                           ; $703e: $1d
	add  l                                           ; $703f: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7040: $cf
	sbc  a                                           ; $7041: $9f
	ld   a, [$d2a6]                                  ; $7042: $fa $a6 $d2
	rra                                              ; $7045: $1f
	ld   de, $7cf1                                   ; $7046: $11 $f1 $7c
	ld   c, b                                        ; $7049: $48
	db   $fd                                         ; $704a: $fd
	rst  JumpTable                                         ; $704b: $df
	xor  d                                           ; $704c: $aa
	ld   a, d                                        ; $704d: $7a
	and  c                                           ; $704e: $a1
	call nz, $111f                                   ; $704f: $c4 $1f $11
	rst  $30                                         ; $7052: $f7
	ld   e, a                                        ; $7053: $5f
	ld   sp, hl                                      ; $7054: $f9
	rst  $38                                         ; $7055: $ff
	adc  c                                           ; $7056: $89
	ld   a, h                                        ; $7057: $7c
	inc  d                                           ; $7058: $14
	pop  de                                          ; $7059: $d1
	sbc  d                                           ; $705a: $9a
	inc  e                                           ; $705b: $1c
	and  h                                           ; $705c: $a4
	xor  a                                           ; $705d: $af
	sbc  a                                           ; $705e: $9f
	ld   sp, hl                                      ; $705f: $f9
	and  a                                           ; $7060: $a7
	jp   $111f                                       ; $7061: $c3 $1f $11


	pop  af                                          ; $7064: $f1
	ld   e, l                                        ; $7065: $5d
	ld   d, a                                        ; $7066: $57
	cp   $af                                         ; $7067: $fe $af
	xor  c                                           ; $7069: $a9
	adc  d                                           ; $706a: $8a
	add  c                                           ; $706b: $81
	jp   nz, $111f                                   ; $706c: $c2 $1f $11

	rst  $30                                         ; $706f: $f7
	ld   c, a                                        ; $7070: $4f
	ld   hl, sp-$03                                  ; $7071: $f8 $fd
	ld   a, c                                        ; $7073: $79
	adc  e                                           ; $7074: $8b
	rla                                              ; $7075: $17
	or   c                                           ; $7076: $b1
	ret  z                                           ; $7077: $c8

	dec  e                                           ; $7078: $1d
	or   h                                           ; $7079: $b4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $707a: $cf
	sbc  a                                           ; $707b: $9f
	or   $98                                         ; $707c: $f6 $98
	or   c                                           ; $707e: $b1
	ld   e, $14                                      ; $707f: $1e $14
	pop  hl                                          ; $7081: $e1
	sbc  l                                           ; $7082: $9d
	ld   e, b                                        ; $7083: $58
	ei                                               ; $7084: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7085: $cf
	ld   a, b                                        ; $7086: $78
	sbc  e                                           ; $7087: $9b
	ld   sp, $1ff1                                   ; $7088: $31 $f1 $1f
	inc  d                                           ; $708b: $14
	rst  $20                                         ; $708c: $e7
	ld   e, a                                        ; $708d: $5f
	ld   hl, sp-$06                                  ; $708e: $f8 $fa
	ld   l, b                                        ; $7090: $68
	or   [hl]                                        ; $7091: $b6
	dec  e                                           ; $7092: $1d
	ld   bc, $1ef1                                   ; $7093: $01 $f1 $1e
	add  h                                           ; $7096: $84
	rst  $38                                         ; $7097: $ff
	ld   l, a                                        ; $7098: $6f
	push hl                                          ; $7099: $e5
	adc  c                                           ; $709a: $89
	add  c                                           ; $709b: $81
	or   [hl]                                        ; $709c: $b6
	rra                                              ; $709d: $1f
	ld   b, c                                        ; $709e: $41
	db   $eb                                         ; $709f: $eb
	ld   c, h                                        ; $70a0: $4c
	or   $ff                                         ; $70a1: $f6 $ff
	ld   c, c                                        ; $70a3: $49

jr_0e9_70a4:
	xor  c                                           ; $70a4: $a9
	rla                                              ; $70a5: $17
	or   c                                           ; $70a6: $b1
	ret  z                                           ; $70a7: $c8

	dec  e                                           ; $70a8: $1d
	or   l                                           ; $70a9: $b5
	sbc  a                                           ; $70aa: $9f
	sbc  [hl]                                        ; $70ab: $9e
	push af                                          ; $70ac: $f5
	ld   a, c                                        ; $70ad: $79
	and  c                                           ; $70ae: $a1
	ld   a, $17                                      ; $70af: $3e $17
	pop  de                                          ; $70b1: $d1
	cp   h                                           ; $70b2: $bc
	ld   h, a                                        ; $70b3: $67
	db   $fc                                         ; $70b4: $fc
	xor  a                                           ; $70b5: $af
	halt                                             ; $70b6: $76
	xor  e                                           ; $70b7: $ab
	ld   de, $3ff1                                   ; $70b8: $11 $f1 $3f
	jr   jr_0e9_70a4                                 ; $70bb: $18 $e7

	ld   l, a                                        ; $70bd: $6f
	rst  $30                                         ; $70be: $f7
	ld   a, [$c149]                                  ; $70bf: $fa $49 $c1
	rra                                              ; $70c2: $1f
	ld   de, $6ef1                                   ; $70c3: $11 $f1 $6e
	add  l                                           ; $70c6: $85
	rst  $38                                         ; $70c7: $ff
	ld   l, a                                        ; $70c8: $6f
	or   e                                           ; $70c9: $b3
	adc  h                                           ; $70ca: $8c
	ld   hl, $1ff1                                   ; $70cb: $21 $f1 $1f
	inc  d                                           ; $70ce: $14
	ld   sp, hl                                      ; $70cf: $f9
	ld   e, a                                        ; $70d0: $5f
	push af                                          ; $70d1: $f5
	cp   $38                                         ; $70d2: $fe $38
	jp   $111f                                       ; $70d4: $c3 $1f $11


	pop  af                                          ; $70d7: $f1
	ld   l, $95                                      ; $70d8: $2e $95
	rst  $38                                         ; $70da: $ff
	ld   e, a                                        ; $70db: $5f
	ldh  a, [c]                                      ; $70dc: $f2
	adc  h                                           ; $70dd: $8c
	ld   b, c                                        ; $70de: $41
	pop  af                                          ; $70df: $f1
	rra                                              ; $70e0: $1f
	ld   de, $5de9                                   ; $70e1: $11 $e9 $5d
	push af                                          ; $70e4: $f5
	rst  $38                                         ; $70e5: $ff
	daa                                              ; $70e6: $27
	call nc, $111f                                   ; $70e7: $d4 $1f $11
	pop  af                                          ; $70ea: $f1
	rra                                              ; $70eb: $1f
	and  l                                           ; $70ec: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70ed: $cf
	ld   e, a                                        ; $70ee: $5f
	ldh  a, [c]                                      ; $70ef: $f2
	ld   l, [hl]                                     ; $70f0: $6e
	ld   d, c                                        ; $70f1: $51
	pop  af                                          ; $70f2: $f1
	rra                                              ; $70f3: $1f
	ld   de, $5cfa                                   ; $70f4: $11 $fa $5c
	push af                                          ; $70f7: $f5
	rst  $38                                         ; $70f8: $ff
	ld   h, $e5                                      ; $70f9: $26 $e5
	rra                                              ; $70fb: $1f
	ld   de, $1ff1                                   ; $70fc: $11 $f1 $1f
	and  [hl]                                        ; $70ff: $a6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7100: $cf
	ld   e, a                                        ; $7101: $5f
	ldh  a, [c]                                      ; $7102: $f2
	ld   l, [hl]                                     ; $7103: $6e
	ld   b, c                                        ; $7104: $41
	pop  af                                          ; $7105: $f1
	rra                                              ; $7106: $1f
	ld   [de], a                                     ; $7107: $12
	ld   [$f56c], a                                  ; $7108: $ea $6c $f5
	rst  $38                                         ; $710b: $ff
	ld   h, $e3                                      ; $710c: $26 $e3
	rra                                              ; $710e: $1f
	ld   de, $2df1                                   ; $710f: $11 $f1 $2d
	and  l                                           ; $7112: $a5
	rst  JumpTable                                         ; $7113: $df
	ld   c, a                                        ; $7114: $4f
	pop  af                                          ; $7115: $f1
	ld   a, a                                        ; $7116: $7f
	ld   hl, $1ff1                                   ; $7117: $21 $f1 $1f
	inc  d                                           ; $711a: $14
	jp   c, $f45d                                    ; $711b: $da $5d $f4

	rst  $38                                         ; $711e: $ff
	rla                                              ; $711f: $17
	pop  af                                          ; $7120: $f1
	rra                                              ; $7121: $1f
	ld   de, $5cf1                                   ; $7122: $11 $f1 $5c
	and  l                                           ; $7125: $a5
	rst  JumpTable                                         ; $7126: $df
	ld   c, a                                        ; $7127: $4f
	pop  af                                          ; $7128: $f1
	ld   a, a                                        ; $7129: $7f
	ld   de, $1ff1                                   ; $712a: $11 $f1 $1f
	ld   d, $cb                                      ; $712d: $16 $cb
	ld   e, [hl]                                     ; $712f: $5e
	di                                               ; $7130: $f3
	cp   $09                                         ; $7131: $fe $09
	pop  af                                          ; $7133: $f1
	rra                                              ; $7134: $1f
	ld   [de], a                                     ; $7135: $12
	pop  af                                          ; $7136: $f1
	adc  h                                           ; $7137: $8c
	and  l                                           ; $7138: $a5
	rst  $38                                         ; $7139: $ff
	ccf                                              ; $713a: $3f
	pop  de                                          ; $713b: $d1
	xor  a                                           ; $713c: $af
	ld   de, $5ff1                                   ; $713d: $11 $f1 $5f
	add  hl, de                                      ; $7140: $19
	xor  e                                           ; $7141: $ab
	ld   c, a                                        ; $7142: $4f
	db   $f4                                         ; $7143: $f4
	ei                                               ; $7144: $fb
	ld   a, [de]                                     ; $7145: $1a
	pop  hl                                          ; $7146: $e1
	ld   e, a                                        ; $7147: $5f
	ld   a, [de]                                     ; $7148: $1a
	pop  bc                                          ; $7149: $c1
	cp   d                                           ; $714a: $ba
	or   h                                           ; $714b: $b4
	rst  $38                                         ; $714c: $ff
	ld   e, a                                        ; $714d: $5f
	and  c                                           ; $714e: $a1
	call z, $d11a                                    ; $714f: $cc $1a $d1
	add  sp, $1b                                     ; $7152: $e8 $1b
	sbc  e                                           ; $7154: $9b
	ld   c, a                                        ; $7155: $4f
	sub  $f7                                         ; $7156: $d6 $f7
	ld   l, $a1                                      ; $7158: $2e $a1
	ret  c                                           ; $715a: $d8

	rra                                              ; $715b: $1f
	ld   b, c                                        ; $715c: $41
	cp   d                                           ; $715d: $ba
	or   l                                           ; $715e: $b5
	ld   a, [$538f]                                  ; $715f: $fa $8f $53
	ld   hl, sp+$1f                                  ; $7162: $f8 $1f
	ld   sp, $4af1                                   ; $7164: $31 $f1 $4a
	xor  d                                           ; $7167: $aa
	ld   l, a                                        ; $7168: $6f
	adc  d                                           ; $7169: $8a
	db   $f4                                         ; $716a: $f4
	ld   c, a                                        ; $716b: $4f
	ld   d, c                                        ; $716c: $51
	pop  af                                          ; $716d: $f1
	rra                                              ; $716e: $1f
	dec  d                                           ; $716f: $15
	adc  h                                           ; $7170: $8c
	ld   a, b                                        ; $7171: $78
	or   $cf                                         ; $7172: $f6 $cf
	dec  [hl]                                        ; $7174: $35
	ldh  a, [c]                                      ; $7175: $f2
	rra                                              ; $7176: $1f
	ld   de, $77f1                                   ; $7177: $11 $f1 $77
	add  $af                                         ; $717a: $c6 $af
	ld   e, a                                        ; $717c: $5f
	di                                               ; $717d: $f3
	ld   l, a                                        ; $717e: $6f
	ld   de, $3df1                                   ; $717f: $11 $f1 $3d
	add  hl, de                                      ; $7182: $19
	ld   l, l                                        ; $7183: $6d
	ld   c, h                                        ; $7184: $4c
	db   $f4                                         ; $7185: $f4
	rst  $38                                         ; $7186: $ff
	scf                                              ; $7187: $37
	pop  af                                          ; $7188: $f1
	rra                                              ; $7189: $1f
	ld   d, $b1                                      ; $718a: $16 $b1
	sub  [hl]                                        ; $718c: $96

jr_0e9_718d:
	db   $e3                                         ; $718d: $e3
	rst  $28                                         ; $718e: $ef
	ld   c, a                                        ; $718f: $4f
	db   $d3                                         ; $7190: $d3
	adc  a                                           ; $7191: $8f
	inc  de                                          ; $7192: $13
	pop  af                                          ; $7193: $f1
	adc  d                                           ; $7194: $8a
	jr   jr_0e9_7205                                 ; $7195: $18 $6e

	cpl                                              ; $7197: $2f
	push af                                          ; $7198: $f5
	db   $fc                                         ; $7199: $fc
	jr   c, jr_0e9_718d                              ; $719a: $38 $f1

	ld   e, a                                        ; $719c: $5f
	ld   a, [de]                                     ; $719d: $1a
	add  c                                           ; $719e: $81
	halt                                             ; $719f: $76
	jp   nc, Jump_0e9_5fff                           ; $71a0: $d2 $ff $5f

	call nc, $159f                                   ; $71a3: $d4 $9f $15
	pop  af                                          ; $71a6: $f1
	sbc  b                                           ; $71a7: $98
	rla                                              ; $71a8: $17
	ld   l, l                                        ; $71a9: $6d
	rra                                              ; $71aa: $1f
	or   $fd                                         ; $71ab: $f6 $fd
	ld   c, b                                        ; $71ad: $48
	pop  af                                          ; $71ae: $f1
	ld   e, a                                        ; $71af: $5f
	add  hl, de                                      ; $71b0: $19
	add  c                                           ; $71b1: $81
	ld   h, [hl]                                     ; $71b2: $66
	pop  de                                          ; $71b3: $d1
	rst  $28                                         ; $71b4: $ef
	ld   l, a                                        ; $71b5: $6f
	push de                                          ; $71b6: $d5
	ld   a, a                                        ; $71b7: $7f
	inc  de                                          ; $71b8: $13
	pop  af                                          ; $71b9: $f1
	ld   l, c                                        ; $71ba: $69
	ld   d, $5e                                      ; $71bb: $16 $5e
	inc  e                                           ; $71bd: $1c
	or   $fe                                         ; $71be: $f6 $fe
	ld   h, l                                        ; $71c0: $65
	pop  af                                          ; $71c1: $f1
	rra                                              ; $71c2: $1f
	inc  d                                           ; $71c3: $14
	and  c                                           ; $71c4: $a1
	ld   h, h                                        ; $71c5: $64
	ldh  [c], a                                      ; $71c6: $e2
	xor  a                                           ; $71c7: $af
	ld   l, [hl]                                     ; $71c8: $6e
	rst  $30                                         ; $71c9: $f7
	ld   c, a                                        ; $71ca: $4f
	ld   b, c                                        ; $71cb: $41
	pop  af                                          ; $71cc: $f1
	ld   a, [de]                                     ; $71cd: $1a
	ld   h, $3d                                      ; $71ce: $26 $3d
	ld   b, a                                        ; $71d0: $47
	rst  $30                                         ; $71d1: $f7
	cp   a                                           ; $71d2: $bf
	sub  e                                           ; $71d3: $93
	ld   sp, hl                                      ; $71d4: $f9
	rra                                              ; $71d5: $1f
	ld   sp, $52b3                                   ; $71d6: $31 $b3 $52
	sub  $3f                                         ; $71d9: $d6 $3f
	adc  c                                           ; $71db: $89
	ei                                               ; $71dc: $fb
	ld   a, $e1                                      ; $71dd: $3e $e1
	rst  $20                                         ; $71df: $e7
	ld   a, [de]                                     ; $71e0: $1a
	ld   b, l                                        ; $71e1: $45
	ld   a, [hl+]                                    ; $71e2: $2a
	add  c                                           ; $71e3: $81
	ei                                               ; $71e4: $fb
	adc  a                                           ; $71e5: $8f
	db   $e4                                         ; $71e6: $e4
	xor  a                                           ; $71e7: $af
	add  hl, de                                      ; $71e8: $19
	pop  bc                                          ; $71e9: $c1
	add  [hl]                                        ; $71ea: $86
	ld   d, d                                        ; $71eb: $52
	ld   a, e                                        ; $71ec: $7b
	ld   e, $d7                                      ; $71ed: $1e $d7
	rst  JumpTable                                         ; $71ef: $df
	ld   h, a                                        ; $71f0: $67
	pop  af                                          ; $71f1: $f1
	ld   e, a                                        ; $71f2: $5f
	ld   d, $75                                      ; $71f3: $16 $75
	dec  [hl]                                        ; $71f5: $35
	pop  bc                                          ; $71f6: $c1
	xor  a                                           ; $71f7: $af
	ld   a, h                                        ; $71f8: $7c
	jp   hl                                          ; $71f9: $e9


	ld   e, a                                        ; $71fa: $5f
	ld   h, d                                        ; $71fb: $62
	ldh  a, [c]                                      ; $71fc: $f2
	add  hl, sp                                      ; $71fd: $39
	ld   d, l                                        ; $71fe: $55
	dec  sp                                          ; $71ff: $3b
	ld   [hl], $f8                                   ; $7200: $36 $f8
	xor  [hl]                                        ; $7202: $ae
	or   h                                           ; $7203: $b4
	ld   sp, hl                                      ; $7204: $f9

jr_0e9_7205:
	ld   e, $53                                      ; $7205: $1e $53
	sub  l                                           ; $7207: $95
	ld   h, d                                        ; $7208: $62
	and  [hl]                                        ; $7209: $a6
	ld   c, a                                        ; $720a: $4f
	adc  c                                           ; $720b: $89
	bit  1, l                                        ; $720c: $cb $4d
	pop  bc                                          ; $720e: $c1
	and  $38                                         ; $720f: $e6 $38
	ld   d, a                                        ; $7211: $57
	add  hl, hl                                      ; $7212: $29
	ld   [hl], e                                     ; $7213: $73
	jp   hl                                          ; $7214: $e9


	sbc  e                                           ; $7215: $9b
	or   l                                           ; $7216: $b5
	cp   e                                           ; $7217: $bb
	dec  l                                           ; $7218: $2d
	ld   h, h                                        ; $7219: $64
	add  l                                           ; $721a: $85
	add  d                                           ; $721b: $82

Jump_0e9_721c:
	sub  a                                           ; $721c: $97
	ld   c, [hl]                                     ; $721d: $4e
	sbc  c                                           ; $721e: $99
	cp   c                                           ; $721f: $b9
	ld   l, h                                        ; $7220: $6c
	and  h                                           ; $7221: $a4
	db   $e4                                         ; $7222: $e4
	ld   a, c                                        ; $7223: $79
	ld   e, b                                        ; $7224: $58
	ld   a, [hl-]                                    ; $7225: $3a
	ld   h, [hl]                                     ; $7226: $66
	rst  ToBoot                                         ; $7227: $c7
	xor  d                                           ; $7228: $aa
	add  a                                           ; $7229: $87
	add  $7c                                         ; $722a: $c6 $7c
	ld   c, c                                        ; $722c: $49
	ld   [hl], a                                     ; $722d: $77
	ld   [hl], l                                     ; $722e: $75
	and  l                                           ; $722f: $a5
	sbc  e                                           ; $7230: $9b
	ld   a, c                                        ; $7231: $79
	add  a                                           ; $7232: $87
	adc  e                                           ; $7233: $8b
	ld   e, d                                        ; $7234: $5a
	and  l                                           ; $7235: $a5
	sub  a                                           ; $7236: $97
	halt                                             ; $7237: $76
	adc  c                                           ; $7238: $89
	ld   e, d                                        ; $7239: $5a
	sub  a                                           ; $723a: $97
	sbc  b                                           ; $723b: $98
	ld   a, d                                        ; $723c: $7a
	and  [hl]                                        ; $723d: $a6
	cp   c                                           ; $723e: $b9
	ld   l, c                                        ; $723f: $69
	ld   [hl], a                                     ; $7240: $77
	ld   l, b                                        ; $7241: $68
	ld   [hl], a                                     ; $7242: $77
	and  a                                           ; $7243: $a7
	adc  c                                           ; $7244: $89
	ld   a, b                                        ; $7245: $78
	sbc  b                                           ; $7246: $98
	ld   a, d                                        ; $7247: $7a
	ld   [hl], a                                     ; $7248: $77
	add  a                                           ; $7249: $87
	ld   [hl], a                                     ; $724a: $77
	sub  [hl]                                        ; $724b: $96
	adc  c                                           ; $724c: $89
	ld   a, b                                        ; $724d: $78
	add  a                                           ; $724e: $87
	adc  c                                           ; $724f: $89
	ld   a, b                                        ; $7250: $78
	and  a                                           ; $7251: $a7
	adc  b                                           ; $7252: $88
	ld   [hl], a                                     ; $7253: $77
	ld   a, b                                        ; $7254: $78
	ld   a, c                                        ; $7255: $79
	add  a                                           ; $7256: $87
	adc  c                                           ; $7257: $89
	adc  c                                           ; $7258: $89
	add  a                                           ; $7259: $87
	sbc  b                                           ; $725a: $98
	adc  b                                           ; $725b: $88
	ld   [hl], a                                     ; $725c: $77
	ld   [hl], a                                     ; $725d: $77
	ld   a, b                                        ; $725e: $78
	sbc  b                                           ; $725f: $98
	adc  c                                           ; $7260: $89
	sbc  b                                           ; $7261: $98
	add  a                                           ; $7262: $87
	adc  b                                           ; $7263: $88
	ld   a, c                                        ; $7264: $79
	ld   [hl], a                                     ; $7265: $77
	ld   [hl], a                                     ; $7266: $77
	ld   [hl], a                                     ; $7267: $77
	sbc  b                                           ; $7268: $98
	sbc  c                                           ; $7269: $99
	adc  b                                           ; $726a: $88
	adc  b                                           ; $726b: $88
	adc  c                                           ; $726c: $89
	ld   a, c                                        ; $726d: $79
	add  a                                           ; $726e: $87
	ld   [hl], a                                     ; $726f: $77
	add  a                                           ; $7270: $87
	sbc  c                                           ; $7271: $99
	adc  d                                           ; $7272: $8a
	sbc  b                                           ; $7273: $98
	sbc  b                                           ; $7274: $98
	ld   a, c                                        ; $7275: $79
	add  a                                           ; $7276: $87
	add  a                                           ; $7277: $87
	ld   [hl], a                                     ; $7278: $77
	ld   a, b                                        ; $7279: $78
	ld   a, c                                        ; $727a: $79
	sbc  c                                           ; $727b: $99
	sbc  c                                           ; $727c: $99
	adc  b                                           ; $727d: $88
	ld   a, c                                        ; $727e: $79
	add  a                                           ; $727f: $87
	adc  b                                           ; $7280: $88
	ld   [hl], a                                     ; $7281: $77
	ld   [hl], a                                     ; $7282: $77
	ld   a, b                                        ; $7283: $78
	adc  c                                           ; $7284: $89
	adc  c                                           ; $7285: $89
	adc  b                                           ; $7286: $88
	adc  b                                           ; $7287: $88
	add  a                                           ; $7288: $87
	adc  b                                           ; $7289: $88
	ld   [hl], a                                     ; $728a: $77
	ld   l, b                                        ; $728b: $68
	ld   a, c                                        ; $728c: $79
	sbc  c                                           ; $728d: $99
	sbc  b                                           ; $728e: $98
	adc  c                                           ; $728f: $89
	add  a                                           ; $7290: $87
	adc  b                                           ; $7291: $88
	adc  c                                           ; $7292: $89
	ld   [hl], a                                     ; $7293: $77
	ld   h, a                                        ; $7294: $67
	ld   [hl], a                                     ; $7295: $77
	sbc  b                                           ; $7296: $98
	sbc  c                                           ; $7297: $99
	adc  b                                           ; $7298: $88
	add  a                                           ; $7299: $87
	sbc  b                                           ; $729a: $98
	ld   a, b                                        ; $729b: $78
	ld   [hl], a                                     ; $729c: $77
	ld   h, a                                        ; $729d: $67
	ld   [hl], a                                     ; $729e: $77
	adc  c                                           ; $729f: $89
	sbc  c                                           ; $72a0: $99
	xor  b                                           ; $72a1: $a8
	sbc  b                                           ; $72a2: $98
	adc  c                                           ; $72a3: $89
	ld   a, c                                        ; $72a4: $79
	ld   [hl], a                                     ; $72a5: $77
	halt                                             ; $72a6: $76
	ld   [hl], a                                     ; $72a7: $77
	adc  b                                           ; $72a8: $88
	sbc  d                                           ; $72a9: $9a
	sbc  c                                           ; $72aa: $99
	adc  b                                           ; $72ab: $88
	adc  b                                           ; $72ac: $88
	ld   a, b                                        ; $72ad: $78
	add  a                                           ; $72ae: $87
	halt                                             ; $72af: $76
	ld   [hl], a                                     ; $72b0: $77
	adc  c                                           ; $72b1: $89
	sbc  d                                           ; $72b2: $9a
	xor  c                                           ; $72b3: $a9
	sbc  b                                           ; $72b4: $98
	ld   a, b                                        ; $72b5: $78
	ld   [hl], a                                     ; $72b6: $77
	add  a                                           ; $72b7: $87
	halt                                             ; $72b8: $76
	ld   [hl], a                                     ; $72b9: $77
	adc  c                                           ; $72ba: $89
	sbc  d                                           ; $72bb: $9a
	xor  c                                           ; $72bc: $a9
	adc  c                                           ; $72bd: $89
	ld   a, c                                        ; $72be: $79
	add  a                                           ; $72bf: $87
	add  a                                           ; $72c0: $87
	halt                                             ; $72c1: $76
	ld   [hl], a                                     ; $72c2: $77
	ld   a, c                                        ; $72c3: $79
	adc  d                                           ; $72c4: $8a
	xor  c                                           ; $72c5: $a9
	sbc  b                                           ; $72c6: $98
	ld   a, c                                        ; $72c7: $79
	add  a                                           ; $72c8: $87
	sub  a                                           ; $72c9: $97
	halt                                             ; $72ca: $76
	ld   h, a                                        ; $72cb: $67
	ld   a, b                                        ; $72cc: $78
	sbc  c                                           ; $72cd: $99
	xor  d                                           ; $72ce: $aa
	adc  c                                           ; $72cf: $89
	ld   a, b                                        ; $72d0: $78
	add  a                                           ; $72d1: $87
	sub  a                                           ; $72d2: $97
	ld   [hl], a                                     ; $72d3: $77
	ld   h, a                                        ; $72d4: $67
	ld   a, b                                        ; $72d5: $78
	adc  c                                           ; $72d6: $89
	xor  d                                           ; $72d7: $aa
	sbc  b                                           ; $72d8: $98
	adc  b                                           ; $72d9: $88
	sub  a                                           ; $72da: $97
	add  a                                           ; $72db: $87
	ld   [hl], a                                     ; $72dc: $77
	ld   h, a                                        ; $72dd: $67
	ld   a, c                                        ; $72de: $79
	sbc  c                                           ; $72df: $99
	sbc  d                                           ; $72e0: $9a
	sbc  c                                           ; $72e1: $99
	adc  b                                           ; $72e2: $88
	add  a                                           ; $72e3: $87
	adc  b                                           ; $72e4: $88
	ld   [hl], a                                     ; $72e5: $77
	ld   h, a                                        ; $72e6: $67
	ld   a, b                                        ; $72e7: $78
	sbc  c                                           ; $72e8: $99
	xor  d                                           ; $72e9: $aa
	sbc  b                                           ; $72ea: $98
	sub  a                                           ; $72eb: $97
	add  a                                           ; $72ec: $87
	ld   a, c                                        ; $72ed: $79
	ld   h, a                                        ; $72ee: $67
	ld   h, a                                        ; $72ef: $67
	ld   [hl], a                                     ; $72f0: $77
	sbc  c                                           ; $72f1: $99
	xor  d                                           ; $72f2: $aa
	sbc  c                                           ; $72f3: $99
	sub  a                                           ; $72f4: $97
	sbc  b                                           ; $72f5: $98
	ld   a, b                                        ; $72f6: $78
	ld   [hl], a                                     ; $72f7: $77
	ld   h, a                                        ; $72f8: $67
	ld   [hl], a                                     ; $72f9: $77
	adc  c                                           ; $72fa: $89
	xor  d                                           ; $72fb: $aa
	xor  c                                           ; $72fc: $a9
	sub  a                                           ; $72fd: $97
	adc  b                                           ; $72fe: $88
	ld   a, c                                        ; $72ff: $79
	ld   [hl], a                                     ; $7300: $77
	ld   h, a                                        ; $7301: $67
	ld   [hl], a                                     ; $7302: $77
	sbc  b                                           ; $7303: $98
	xor  c                                           ; $7304: $a9
	sbc  c                                           ; $7305: $99
	add  a                                           ; $7306: $87
	sbc  b                                           ; $7307: $98
	ld   a, c                                        ; $7308: $79
	ld   [hl], a                                     ; $7309: $77
	ld   h, [hl]                                     ; $730a: $66
	ld   [hl], a                                     ; $730b: $77
	adc  c                                           ; $730c: $89
	sbc  c                                           ; $730d: $99
	xor  c                                           ; $730e: $a9
	add  a                                           ; $730f: $87
	adc  b                                           ; $7310: $88
	ld   a, c                                        ; $7311: $79
	ld   [hl], a                                     ; $7312: $77
	halt                                             ; $7313: $76
	ld   [hl], a                                     ; $7314: $77
	adc  b                                           ; $7315: $88
	sbc  d                                           ; $7316: $9a
	sbc  c                                           ; $7317: $99
	sub  a                                           ; $7318: $97
	adc  b                                           ; $7319: $88
	ld   a, c                                        ; $731a: $79
	ld   [hl], a                                     ; $731b: $77
	halt                                             ; $731c: $76
	ld   [hl], a                                     ; $731d: $77
	adc  b                                           ; $731e: $88
	sbc  c                                           ; $731f: $99
	sbc  c                                           ; $7320: $99
	add  a                                           ; $7321: $87
	adc  b                                           ; $7322: $88
	ld   a, c                                        ; $7323: $79
	ld   [hl], a                                     ; $7324: $77
	halt                                             ; $7325: $76
	ld   [hl], a                                     ; $7326: $77
	adc  c                                           ; $7327: $89
	sbc  c                                           ; $7328: $99
	sbc  c                                           ; $7329: $99
	sub  a                                           ; $732a: $97
	adc  b                                           ; $732b: $88
	ld   a, c                                        ; $732c: $79
	ld   [hl], a                                     ; $732d: $77
	halt                                             ; $732e: $76
	ld   [hl], a                                     ; $732f: $77
	adc  c                                           ; $7330: $89
	sbc  c                                           ; $7331: $99
	sbc  c                                           ; $7332: $99
	sub  a                                           ; $7333: $97
	adc  b                                           ; $7334: $88
	ld   a, b                                        ; $7335: $78
	ld   [hl], a                                     ; $7336: $77
	halt                                             ; $7337: $76
	ld   [hl], a                                     ; $7338: $77
	adc  c                                           ; $7339: $89
	sbc  c                                           ; $733a: $99
	sbc  c                                           ; $733b: $99
	add  a                                           ; $733c: $87
	add  a                                           ; $733d: $87
	ld   a, c                                        ; $733e: $79
	ld   [hl], a                                     ; $733f: $77
	ld   [hl], a                                     ; $7340: $77
	ld   [hl], a                                     ; $7341: $77
	sbc  c                                           ; $7342: $99
	sbc  c                                           ; $7343: $99
	sbc  c                                           ; $7344: $99
	add  a                                           ; $7345: $87
	sub  a                                           ; $7346: $97
	ld   a, c                                        ; $7347: $79
	ld   h, a                                        ; $7348: $67
	ld   h, a                                        ; $7349: $67
	ld   [hl], a                                     ; $734a: $77
	sbc  b                                           ; $734b: $98
	xor  d                                           ; $734c: $aa
	sbc  c                                           ; $734d: $99
	add  a                                           ; $734e: $87
	sub  a                                           ; $734f: $97
	adc  b                                           ; $7350: $88
	ld   h, a                                        ; $7351: $67
	ld   h, a                                        ; $7352: $67
	ld   a, b                                        ; $7353: $78
	sbc  b                                           ; $7354: $98
	xor  d                                           ; $7355: $aa
	sbc  c                                           ; $7356: $99
	ld   a, b                                        ; $7357: $78
	add  [hl]                                        ; $7358: $86
	sbc  b                                           ; $7359: $98
	ld   [hl], a                                     ; $735a: $77
	ld   h, a                                        ; $735b: $67
	ld   a, b                                        ; $735c: $78
	sbc  b                                           ; $735d: $98
	sbc  c                                           ; $735e: $99
	sbc  c                                           ; $735f: $99
	ld   a, c                                        ; $7360: $79
	add  [hl]                                        ; $7361: $86
	and  [hl]                                        ; $7362: $a6
	ld   [hl], a                                     ; $7363: $77
	ld   h, a                                        ; $7364: $67
	ld   a, c                                        ; $7365: $79
	adc  c                                           ; $7366: $89
	xor  c                                           ; $7367: $a9
	and  [hl]                                        ; $7368: $a6
	ld   l, e                                        ; $7369: $6b
	ld   c, b                                        ; $736a: $48
	and  l                                           ; $736b: $a5
	add  [hl]                                        ; $736c: $86
	add  a                                           ; $736d: $87
	adc  c                                           ; $736e: $89
	adc  d                                           ; $736f: $8a
	ld   a, d                                        ; $7370: $7a
	and  h                                           ; $7371: $a4
	xor  c                                           ; $7372: $a9
	dec  sp                                          ; $7373: $3b
	ld   h, [hl]                                     ; $7374: $66
	add  l                                           ; $7375: $85
	sub  [hl]                                        ; $7376: $96

Call_0e9_7377:
	xor  b                                           ; $7377: $a8
	xor  c                                           ; $7378: $a9
	ld   l, h                                        ; $7379: $6c
	ld   h, l                                        ; $737a: $65
	jp   $396c                                       ; $737b: $c3 $6c $39


	ld   h, a                                        ; $737e: $67
	ld   a, b                                        ; $737f: $78
	or   a                                           ; $7380: $b7
	push de                                          ; $7381: $d5
	cp   h                                           ; $7382: $bc
	ld   a, [hl+]                                    ; $7383: $2a
	sub  c                                           ; $7384: $91
	rst  ToBoot                                         ; $7385: $c7
	ld   c, d                                        ; $7386: $4a
	ld   e, c                                        ; $7387: $59
	ld   e, h                                        ; $7388: $5c
	ld   a, e                                        ; $7389: $7b
	or   h                                           ; $738a: $b4
	push af                                          ; $738b: $f5
	ld   c, h                                        ; $738c: $4c
	ld   b, e                                        ; $738d: $43

jr_0e9_738e:
	jp   nc, Jump_0e9_7787                           ; $738e: $d2 $87 $77

	sbc  l                                           ; $7391: $9d
	ld   e, a                                        ; $7392: $5f
	ld   c, c                                        ; $7393: $49
	jp   nc, $198b                                   ; $7394: $d2 $8b $19

	and  d                                           ; $7397: $a2
	or   l                                           ; $7398: $b5
	and  h                                           ; $7399: $a4
	rst  $20                                         ; $739a: $e7
	xor  [hl]                                        ; $739b: $ae
	rra                                              ; $739c: $1f
	ld   [hl], e                                     ; $739d: $73
	or   a                                           ; $739e: $b7
	dec  e                                           ; $739f: $1d
	ld   b, [hl]                                     ; $73a0: $46
	add  [hl]                                        ; $73a1: $86
	ld   [hl], a                                     ; $73a2: $77
	di                                               ; $73a3: $f3
	or   $7f                                         ; $73a4: $f6 $7f
	ld   [hl], $d2                                   ; $73a6: $36 $d2
	ld   c, h                                        ; $73a8: $4c
	dec  de                                          ; $73a9: $1b
	ld   e, c                                        ; $73aa: $59
	ld   c, l                                        ; $73ab: $4d
	and  [hl]                                        ; $73ac: $a6
	pop  af                                          ; $73ad: $f1
	db   $eb                                         ; $73ae: $eb
	add  hl, hl                                      ; $73af: $29
	and  c                                           ; $73b0: $a1
	and  [hl]                                        ; $73b1: $a6
	ld   c, c                                        ; $73b2: $49
	ld   l, c                                        ; $73b3: $69
	ld   c, a                                        ; $73b4: $4f
	cpl                                              ; $73b5: $2f
	and  h                                           ; $73b6: $a4
	or   $4b                                         ; $73b7: $f6 $4b
	ld   h, c                                        ; $73b9: $61
	pop  hl                                          ; $73ba: $e1
	and  l                                           ; $73bb: $a5
	and  h                                           ; $73bc: $a4
	cp   [hl]                                        ; $73bd: $be
	ccf                                              ; $73be: $3f
	inc  e                                           ; $73bf: $1c
	jp   $176d                                       ; $73c0: $c3 $6d $17


	and  c                                           ; $73c3: $a1
	or   l                                           ; $73c4: $b5
	or   d                                           ; $73c5: $b2
	db   $f4                                         ; $73c6: $f4
	rst  JumpTable                                         ; $73c7: $df
	rrca                                             ; $73c8: $0f
	ld   [hl], e                                     ; $73c9: $73
	xor  c                                           ; $73ca: $a9
	rra                                              ; $73cb: $1f
	ld   h, $88                                      ; $73cc: $26 $88
	ld   l, b                                        ; $73ce: $68
	pop  af                                          ; $73cf: $f1
	db   $f4                                         ; $73d0: $f4
	ld   a, a                                        ; $73d1: $7f
	dec  [hl]                                        ; $73d2: $35
	pop  de                                          ; $73d3: $d1
	dec  a                                           ; $73d4: $3d
	dec  de                                          ; $73d5: $1b
	ld   e, d                                        ; $73d6: $5a
	cpl                                              ; $73d7: $2f
	add  a                                           ; $73d8: $87
	pop  af                                          ; $73d9: $f1

jr_0e9_73da:
	ld   sp, hl                                      ; $73da: $f9

jr_0e9_73db:
	jr   c, jr_0e9_738e                              ; $73db: $38 $b1

	add  $3a                                         ; $73dd: $c6 $3a
	ld   a, b                                        ; $73df: $78
	ld   e, a                                        ; $73e0: $5f
	rra                                              ; $73e1: $1f
	sub  e                                           ; $73e2: $93
	di                                               ; $73e3: $f3
	ld   c, h                                        ; $73e4: $4c
	ld   b, c                                        ; $73e5: $41
	pop  af                                          ; $73e6: $f1
	and  a                                           ; $73e7: $a7
	and  e                                           ; $73e8: $a3
	db   $fd                                         ; $73e9: $fd
	ccf                                              ; $73ea: $3f
	dec  e                                           ; $73eb: $1d
	or   c                                           ; $73ec: $b1
	adc  h                                           ; $73ed: $8c
	add  hl, de                                      ; $73ee: $19
	sub  c                                           ; $73ef: $91
	add  $a3                                         ; $73f0: $c6 $a3
	pop  af                                          ; $73f2: $f1
	db   $fd                                         ; $73f3: $fd
	rra                                              ; $73f4: $1f
	inc  [hl]                                        ; $73f5: $34
	and  [hl]                                        ; $73f6: $a6
	ld   e, $17                                      ; $73f7: $1e $17
	adc  c                                           ; $73f9: $89
	ld   c, h                                        ; $73fa: $4c
	pop  af                                          ; $73fb: $f1
	pop  af                                          ; $73fc: $f1
	cp   a                                           ; $73fd: $bf
	add  hl, de                                      ; $73fe: $19
	and  c                                           ; $73ff: $a1
	ld   l, e                                        ; $7400: $6b
	dec  de                                          ; $7401: $1b
	ld   a, d                                        ; $7402: $7a
	ccf                                              ; $7403: $3f
	dec  a                                           ; $7404: $3d
	pop  af                                          ; $7405: $f1
	di                                               ; $7406: $f3
	dec  sp                                          ; $7407: $3b
	ld   d, c                                        ; $7408: $51
	db   $e3                                         ; $7409: $e3
	ld   e, c                                        ; $740a: $59
	sub  l                                           ; $740b: $95
	cp   a                                           ; $740c: $bf
	rra                                              ; $740d: $1f
	add  hl, de                                      ; $740e: $19
	pop  af                                          ; $740f: $f1
	xor  c                                           ; $7410: $a9
	rla                                              ; $7411: $17
	or   c                                           ; $7412: $b1
	or   a                                           ; $7413: $b7
	sub  h                                           ; $7414: $94
	di                                               ; $7415: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7416: $cf
	rra                                              ; $7417: $1f
	inc  hl                                          ; $7418: $23
	db   $d3                                         ; $7419: $d3
	dec  e                                           ; $741a: $1d
	dec  [hl]                                        ; $741b: $35
	xor  c                                           ; $741c: $a9
	ld   e, l                                        ; $741d: $5d
	pop  af                                          ; $741e: $f1
	pop  af                                          ; $741f: $f1
	cp   a                                           ; $7420: $bf
	ld   e, $71                                      ; $7421: $1e $71
	sbc  c                                           ; $7423: $99
	ld   a, [hl+]                                    ; $7424: $2a
	sub  a                                           ; $7425: $97
	ld   l, a                                        ; $7426: $6f
	rra                                              ; $7427: $1f
	pop  de                                          ; $7428: $d1
	pop  af                                          ; $7429: $f1
	ld   l, l                                        ; $742a: $6d
	dec  d                                           ; $742b: $15
	and  e                                           ; $742c: $a3
	ld   a, c                                        ; $742d: $79
	sub  h                                           ; $742e: $94
	ld   a, [$1f4f]                                  ; $742f: $fa $4f $1f
	or   c                                           ; $7432: $b1
	ldh  a, [c]                                      ; $7433: $f2
	inc  e                                           ; $7434: $1c
	ld   d, l                                        ; $7435: $55
	sbc  d                                           ; $7436: $9a
	ld   e, d                                        ; $7437: $5a
	pop  af                                          ; $7438: $f1
	db   $f4                                         ; $7439: $f4
	ccf                                              ; $743a: $3f
	dec  e                                           ; $743b: $1d
	sub  c                                           ; $743c: $91
	and  a                                           ; $743d: $a7
	ld   c, c                                        ; $743e: $49
	sbc  c                                           ; $743f: $99
	ld   e, a                                        ; $7440: $5f
	inc  a                                           ; $7441: $3c
	pop  af                                          ; $7442: $f1
	pop  af                                          ; $7443: $f1
	ccf                                              ; $7444: $3f
	jr   jr_0e9_73da                                 ; $7445: $18 $93

	adc  b                                           ; $7447: $88
	or   e                                           ; $7448: $b3
	ei                                               ; $7449: $fb
	ld   c, a                                        ; $744a: $4f
	rra                                              ; $744b: $1f
	or   c                                           ; $744c: $b1
	pop  af                                          ; $744d: $f1
	dec  a                                           ; $744e: $3d
	jr   c, jr_0e9_73db                              ; $744f: $38 $8a

	ld   e, e                                        ; $7451: $5b
	pop  af                                          ; $7452: $f1
	di                                               ; $7453: $f3
	ld   e, a                                        ; $7454: $5f
	rra                                              ; $7455: $1f
	ld   [hl], c                                     ; $7456: $71
	di                                               ; $7457: $f3
	ld   l, b                                        ; $7458: $68
	sbc  b                                           ; $7459: $98
	ld   l, a                                        ; $745a: $6f
	rra                                              ; $745b: $1f
	or   c                                           ; $745c: $b1
	pop  af                                          ; $745d: $f1
	adc  [hl]                                        ; $745e: $8e
	inc  e                                           ; $745f: $1c
	ld   h, h                                        ; $7460: $64
	xor  b                                           ; $7461: $a8
	sub  h                                           ; $7462: $94
	or   $9f                                         ; $7463: $f6 $9f
	rra                                              ; $7465: $1f
	ld   sp, $8bf1                                   ; $7466: $31 $f1 $8b
	ld   a, [de]                                     ; $7469: $1a
	ld   a, d                                        ; $746a: $7a
	ld   c, a                                        ; $746b: $4f
	jp   $ebf1                                       ; $746c: $c3 $f1 $eb


	rra                                              ; $746f: $1f
	inc  de                                          ; $7470: $13
	pop  de                                          ; $7471: $d1
	sub  a                                           ; $7472: $97
	and  l                                           ; $7473: $a5
	rst  JumpTable                                         ; $7474: $df
	rra                                              ; $7475: $1f
	rla                                              ; $7476: $17
	pop  af                                          ; $7477: $f1
	push af                                          ; $7478: $f5
	rra                                              ; $7479: $1f
	rla                                              ; $747a: $17
	xor  c                                           ; $747b: $a9
	ld   a, c                                        ; $747c: $79
	pop  af                                          ; $747d: $f1
	or   $1f                                         ; $747e: $f6 $1f
	dec  e                                           ; $7480: $1d
	or   c                                           ; $7481: $b1
	di                                               ; $7482: $f3
	ld   l, c                                        ; $7483: $69
	sbc  c                                           ; $7484: $99
	ld   l, a                                        ; $7485: $6f
	rra                                              ; $7486: $1f
	or   c                                           ; $7487: $b1
	pop  af                                          ; $7488: $f1
	adc  a                                           ; $7489: $8f
	rra                                              ; $748a: $1f
	ld   d, h                                        ; $748b: $54
	or   a                                           ; $748c: $b7
	and  l                                           ; $748d: $a5
	db   $f4                                         ; $748e: $f4
	cp   a                                           ; $748f: $bf
	rra                                              ; $7490: $1f
	inc  d                                           ; $7491: $14
	pop  af                                          ; $7492: $f1
	rst  $20                                         ; $7493: $e7
	inc  l                                           ; $7494: $2c
	ld   l, d                                        ; $7495: $6a
	ld   e, a                                        ; $7496: $5f
	ld   e, c                                        ; $7497: $59
	pop  af                                          ; $7498: $f1
	pop  af                                          ; $7499: $f1
	rra                                              ; $749a: $1f
	dec  de                                          ; $749b: $1b
	and  c                                           ; $749c: $a1
	sub  $a5                                         ; $749d: $d6 $a5
	ld   hl, sp+$7f                                  ; $749f: $f8 $7f
	rra                                              ; $74a1: $1f
	ld   sp, $aaf1                                   ; $74a2: $31 $f1 $aa
	dec  e                                           ; $74a5: $1d
	ld   l, e                                        ; $74a6: $6b
	ld   e, a                                        ; $74a7: $5f
	sub  [hl]                                        ; $74a8: $96
	pop  af                                          ; $74a9: $f1
	db   $f4                                         ; $74aa: $f4
	rra                                              ; $74ab: $1f
	add  hl, de                                      ; $74ac: $19
	pop  bc                                          ; $74ad: $c1
	rst  $10                                         ; $74ae: $d7
	and  [hl]                                        ; $74af: $a6
	ld   sp, hl                                      ; $74b0: $f9
	ld   l, a                                        ; $74b1: $6f
	rra                                              ; $74b2: $1f
	ld   b, c                                        ; $74b3: $41
	pop  af                                          ; $74b4: $f1
	xor  h                                           ; $74b5: $ac
	ld   e, $6a                                      ; $74b6: $1e $6a
	ld   e, a                                        ; $74b8: $5f
	sub  [hl]                                        ; $74b9: $96
	pop  af                                          ; $74ba: $f1
	di                                               ; $74bb: $f3
	rra                                              ; $74bc: $1f
	dec  de                                          ; $74bd: $1b
	and  c                                           ; $74be: $a1
	and  $b5                                         ; $74bf: $e6 $b5
	rst  $30                                         ; $74c1: $f7
	ld   a, a                                        ; $74c2: $7f
	rra                                              ; $74c3: $1f
	ld   hl, $caf1                                   ; $74c4: $21 $f1 $ca
	ld   e, $6a                                      ; $74c7: $1e $6a
	ld   l, a                                        ; $74c9: $6f
	ld   a, b                                        ; $74ca: $78
	pop  af                                          ; $74cb: $f1
	pop  af                                          ; $74cc: $f1
	cpl                                              ; $74cd: $2f
	rra                                              ; $74ce: $1f
	ld   [hl], c                                     ; $74cf: $71
	sub  $a6                                         ; $74d0: $d6 $a6
	push af                                          ; $74d2: $f5
	cp   [hl]                                        ; $74d3: $be
	rra                                              ; $74d4: $1f
	ld   d, $f1                                      ; $74d5: $16 $f1
	push af                                          ; $74d7: $f5
	dec  a                                           ; $74d8: $3d
	ld   l, d                                        ; $74d9: $6a
	ld   a, a                                        ; $74da: $7f
	dec  a                                           ; $74db: $3d
	and  c                                           ; $74dc: $a1
	pop  af                                          ; $74dd: $f1
	sbc  [hl]                                        ; $74de: $9e
	rra                                              ; $74df: $1f
	inc  [hl]                                        ; $74e0: $34
	rst  ToBoot                                         ; $74e1: $c7
	xor  b                                           ; $74e2: $a8
	ldh  a, [c]                                      ; $74e3: $f2
	rst  $30                                         ; $74e4: $f7
	rra                                              ; $74e5: $1f
	ld   e, $81                                      ; $74e6: $1e $81
	pop  af                                          ; $74e8: $f1
	adc  e                                           ; $74e9: $8b
	adc  b                                           ; $74ea: $88
	cp   a                                           ; $74eb: $bf
	rra                                              ; $74ec: $1f
	dec  [hl]                                        ; $74ed: $35
	pop  af                                          ; $74ee: $f1
	ldh  a, [c]                                      ; $74ef: $f2
	rra                                              ; $74f0: $1f
	dec  de                                          ; $74f1: $1b
	sbc  d                                           ; $74f2: $9a
	ld   a, h                                        ; $74f3: $7c
	pop  af                                          ; $74f4: $f1
	pop  af                                          ; $74f5: $f1
	xor  l                                           ; $74f6: $ad
	rra                                              ; $74f7: $1f
	ld   [de], a                                     ; $74f8: $12
	pop  af                                          ; $74f9: $f1
	ret  z                                           ; $74fa: $c8

	and  a                                           ; $74fb: $a7
	db   $fc                                         ; $74fc: $fc
	ccf                                              ; $74fd: $3f
	rra                                              ; $74fe: $1f
	ld   [hl], c                                     ; $74ff: $71
	pop  af                                          ; $7500: $f1
	xor  h                                           ; $7501: $ac
	ld   e, $5c                                      ; $7502: $1e $5c
	ld   l, a                                        ; $7504: $6f
	add  a                                           ; $7505: $87
	pop  af                                          ; $7506: $f1
	pop  af                                          ; $7507: $f1
	ccf                                              ; $7508: $3f
	rra                                              ; $7509: $1f
	ld   h, d                                        ; $750a: $62
	and  $b7                                         ; $750b: $e6 $b7
	di                                               ; $750d: $f3
	rr   a                                           ; $750e: $cb $1f
	dec  de                                          ; $7510: $1b
	pop  bc                                          ; $7511: $c1
	pop  af                                          ; $7512: $f1
	ld   a, e                                        ; $7513: $7b
	ld   a, d                                        ; $7514: $7a
	sbc  a                                           ; $7515: $9f
	rra                                              ; $7516: $1f
	ld   d, h                                        ; $7517: $54
	pop  af                                          ; $7518: $f1
	ldh  a, [c]                                      ; $7519: $f2
	rra                                              ; $751a: $1f
	dec  e                                           ; $751b: $1d
	sbc  c                                           ; $751c: $99
	adc  h                                           ; $751d: $8c
	pop  af                                          ; $751e: $f1
	pop  af                                          ; $751f: $f1
	cp   e                                           ; $7520: $bb
	rra                                              ; $7521: $1f
	ld   d, $f1                                      ; $7522: $16 $f1
	or   $a7                                         ; $7524: $f6 $a7
	ld   a, [$1f5f]                                  ; $7526: $fa $5f $1f
	ld   hl, $f8f1                                   ; $7529: $21 $f1 $f8
	rra                                              ; $752c: $1f
	ld   e, e                                        ; $752d: $5b
	ld   a, a                                        ; $752e: $7f
	ld   e, d                                        ; $752f: $5a
	pop  de                                          ; $7530: $d1
	pop  af                                          ; $7531: $f1
	xor  h                                           ; $7532: $ac
	rra                                              ; $7533: $1f
	ld   d, $d6                                      ; $7534: $16 $d6
	cp   c                                           ; $7536: $b9
	pop  af                                          ; $7537: $f1
	db   $f4                                         ; $7538: $f4
	ld   c, a                                        ; $7539: $4f
	rra                                              ; $753a: $1f
	ld   de, $d8f1                                   ; $753b: $11 $f1 $d8
	sbc  b                                           ; $753e: $98
	db   $dd                                         ; $753f: $dd
	cpl                                              ; $7540: $2f
	dec  e                                           ; $7541: $1d
	ld   [hl], c                                     ; $7542: $71
	pop  af                                          ; $7543: $f1
	cp   d                                           ; $7544: $ba
	rra                                              ; $7545: $1f
	ld   c, h                                        ; $7546: $4c
	ld   a, a                                        ; $7547: $7f
	ld   a, b                                        ; $7548: $78
	pop  hl                                          ; $7549: $e1
	pop  af                                          ; $754a: $f1
	sbc  l                                           ; $754b: $9d
	rra                                              ; $754c: $1f
	ld   d, $d5                                      ; $754d: $16 $d5
	ret                                              ; $754f: $c9


	ldh  a, [c]                                      ; $7550: $f2
	or   $4f                                         ; $7551: $f6 $4f
	rra                                              ; $7553: $1f
	ld   de, $f7f1                                   ; $7554: $11 $f1 $f7

jr_0e9_7557:
	sbc  c                                           ; $7557: $99
	db   $dd                                         ; $7558: $dd
	ccf                                              ; $7559: $3f
	ld   e, $51                                      ; $755a: $1e $51
	pop  af                                          ; $755c: $f1
	ld   hl, sp+$1f                                  ; $755d: $f8 $1f
	ld   c, h                                        ; $755f: $4c
	ld   a, a                                        ; $7560: $7f
	ld   e, d                                        ; $7561: $5a
	pop  bc                                          ; $7562: $c1
	pop  af                                          ; $7563: $f1
	ret  c                                           ; $7564: $d8

	rra                                              ; $7565: $1f
	ld   a, [de]                                     ; $7566: $1a
	and  [hl]                                        ; $7567: $a6
	cp   c                                           ; $7568: $b9
	pop  af                                          ; $7569: $f1
	ldh  a, [c]                                      ; $756a: $f2
	sbc  l                                           ; $756b: $9d
	rra                                              ; $756c: $1f
	ld   d, $f1                                      ; $756d: $16 $f1
	push af                                          ; $756f: $f5
	cp   b                                           ; $7570: $b8
	ld   a, [$1f5f]                                  ; $7571: $fa $5f $1f
	dec  d                                           ; $7574: $15
	pop  af                                          ; $7575: $f1
	di                                               ; $7576: $f3
	ld   c, a                                        ; $7577: $4f
	ld   c, h                                        ; $7578: $4c
	ld   a, a                                        ; $7579: $7f
	ld   a, $82                                      ; $757a: $3e $82
	pop  af                                          ; $757c: $f1
	pop  af                                          ; $757d: $f1
	rra                                              ; $757e: $1f
	dec  e                                           ; $757f: $1d
	ld   a, c                                        ; $7580: $79
	xor  l                                           ; $7581: $ad
	ldh  a, [c]                                      ; $7582: $f2
	pop  af                                          ; $7583: $f1
	push hl                                          ; $7584: $e5
	rra                                              ; $7585: $1f
	ld   e, $81                                      ; $7586: $1e $81
	di                                               ; $7588: $f3
	rst  $10                                         ; $7589: $d7
	or   $ac                                         ; $758a: $f6 $ac
	rra                                              ; $758c: $1f
	ld   e, $91                                      ; $758d: $1e $91
	pop  af                                          ; $758f: $f1
	xor  e                                           ; $7590: $ab
	ld   l, e                                        ; $7591: $6b
	xor  a                                           ; $7592: $af
	rra                                              ; $7593: $1f
	ld   a, [hl+]                                    ; $7594: $2a
	or   c                                           ; $7595: $b1
	pop  af                                          ; $7596: $f1
	xor  h                                           ; $7597: $ac
	rra                                              ; $7598: $1f
	inc  a                                           ; $7599: $3c
	adc  a                                           ; $759a: $8f
	sub  a                                           ; $759b: $97
	pop  hl                                          ; $759c: $e1
	pop  af                                          ; $759d: $f1
	xor  h                                           ; $759e: $ac
	rra                                              ; $759f: $1f
	jr   jr_0e9_7557                                 ; $75a0: $18 $b5

	ret                                              ; $75a2: $c9


	ldh  a, [c]                                      ; $75a3: $f2
	di                                               ; $75a4: $f3
	sbc  h                                           ; $75a5: $9c
	rra                                              ; $75a6: $1f
	add  hl, de                                      ; $75a7: $19
	pop  de                                          ; $75a8: $d1
	di                                               ; $75a9: $f3
	cp   b                                           ; $75aa: $b8
	ld   a, [$1f6f]                                  ; $75ab: $fa $6f $1f
	ld   a, [de]                                     ; $75ae: $1a
	pop  bc                                          ; $75af: $c1
	pop  af                                          ; $75b0: $f1
	adc  e                                           ; $75b1: $8b
	ld   c, h                                        ; $75b2: $4c
	sbc  a                                           ; $75b3: $9f
	cpl                                              ; $75b4: $2f
	ld   c, c                                        ; $75b5: $49
	or   c                                           ; $75b6: $b1
	pop  af                                          ; $75b7: $f1
	xor  h                                           ; $75b8: $ac
	rra                                              ; $75b9: $1f
	dec  l                                           ; $75ba: $2d
	adc  a                                           ; $75bb: $8f
	and  a                                           ; $75bc: $a7
	pop  hl                                          ; $75bd: $e1
	pop  af                                          ; $75be: $f1
	ret  z                                           ; $75bf: $c8

	rra                                              ; $75c0: $1f
	dec  de                                          ; $75c1: $1b
	and  [hl]                                        ; $75c2: $a6
	ret  z                                           ; $75c3: $c8

	di                                               ; $75c4: $f3
	di                                               ; $75c5: $f3
	add  $1f                                         ; $75c6: $c6 $1f
	rra                                              ; $75c8: $1f
	ld   h, c                                        ; $75c9: $61
	pop  af                                          ; $75ca: $f1
	rst  $10                                         ; $75cb: $d7
	rst  $30                                         ; $75cc: $f7
	sbc  e                                           ; $75cd: $9b
	ld   e, [hl]                                     ; $75ce: $5e
	rra                                              ; $75cf: $1f
	inc  de                                          ; $75d0: $13
	pop  af                                          ; $75d1: $f1
	db   $f4                                         ; $75d2: $f4
	sbc  e                                           ; $75d3: $9b
	call $2f5f                                       ; $75d4: $cd $5f $2f
	inc  e                                           ; $75d7: $1c
	sub  c                                           ; $75d8: $91
	pop  af                                          ; $75d9: $f1
	xor  c                                           ; $75da: $a9
	ld   e, l                                        ; $75db: $5d
	adc  a                                           ; $75dc: $8f
	ld   a, $4c                                      ; $75dd: $3e $4c
	ld   d, e                                        ; $75df: $53
	pop  af                                          ; $75e0: $f1
	di                                               ; $75e1: $f3
	rra                                              ; $75e2: $1f
	ld   e, $7f                                      ; $75e3: $1e $7f
	ld   e, e                                        ; $75e5: $5b
	sub  a                                           ; $75e6: $97
	pop  bc                                          ; $75e7: $c1
	pop  af                                          ; $75e8: $f1
	xor  e                                           ; $75e9: $ab

Call_0e9_75ea:
	rra                                              ; $75ea: $1f
	dec  e                                           ; $75eb: $1d
	ld   a, [hl]                                     ; $75ec: $7e
	and  [hl]                                        ; $75ed: $a6
	db   $e3                                         ; $75ee: $e3
	pop  hl                                          ; $75ef: $e1
	pop  af                                          ; $75f0: $f1
	cpl                                              ; $75f1: $2f
	rra                                              ; $75f2: $1f
	ld   a, [hl-]                                    ; $75f3: $3a
	sbc  e                                           ; $75f4: $9b
	db   $e3                                         ; $75f5: $e3
	db   $f4                                         ; $75f6: $f4
	pop  de                                          ; $75f7: $d1
	push de                                          ; $75f8: $d5
	rra                                              ; $75f9: $1f
	ld   e, $66                                      ; $75fa: $1e $66
	ret  z                                           ; $75fc: $c8

	ldh  a, [c]                                      ; $75fd: $f2
	and  $c2                                         ; $75fe: $e6 $c2
	cp   d                                           ; $7600: $ba
	rra                                              ; $7601: $1f
	ld   a, [de]                                     ; $7602: $1a
	add  l                                           ; $7603: $85
	rst  ToBoot                                         ; $7604: $c7
	pop  af                                          ; $7605: $f1
	rst  $30                                         ; $7606: $f7
	and  h                                           ; $7607: $a4
	cp   d                                           ; $7608: $ba
	rra                                              ; $7609: $1f
	ld   a, [de]                                     ; $760a: $1a
	sub  l                                           ; $760b: $95
	ret  z                                           ; $760c: $c8

	pop  af                                          ; $760d: $f1
	or   $c3                                         ; $760e: $f6 $c3
	cp   d                                           ; $7610: $ba
	rra                                              ; $7611: $1f
	dec  de                                          ; $7612: $1b
	ld   h, a                                        ; $7613: $67
	and  a                                           ; $7614: $a7
	pop  af                                          ; $7615: $f1
	push af                                          ; $7616: $f5
	call nz, $1fa9                                   ; $7617: $c4 $a9 $1f
	dec  e                                           ; $761a: $1d
	ld   e, b                                        ; $761b: $58
	or   [hl]                                        ; $761c: $b6
	pop  af                                          ; $761d: $f1
	or   $b4                                         ; $761e: $f6 $b4
	add  $1f                                         ; $7620: $c6 $1f
	ld   e, $48                                      ; $7622: $1e $48
	sub  a                                           ; $7624: $97
	pop  af                                          ; $7625: $f1
	push af                                          ; $7626: $f5
	jp   nz, $1fe4                                   ; $7627: $c2 $e4 $1f

	ld   e, $3b                                      ; $762a: $1e $3b
	ld   a, d                                        ; $762c: $7a
	pop  de                                          ; $762d: $d1
	db   $f4                                         ; $762e: $f4
	jp   nc, $5ff1                                   ; $762f: $d2 $f1 $5f

	rra                                              ; $7632: $1f
	dec  e                                           ; $7633: $1d
	ccf                                              ; $7634: $3f
	sub  h                                           ; $7635: $94
	db   $f4                                         ; $7636: $f4
	jp   nc, $c9f1                                   ; $7637: $d2 $f1 $c9

	rra                                              ; $763a: $1f
	rrca                                             ; $763b: $0f
	rra                                              ; $763c: $1f
	ld   b, a                                        ; $763d: $47
	push hl                                          ; $763e: $e5
	or   [hl]                                        ; $763f: $b6
	pop  hl                                          ; $7640: $e1
	ldh  a, [c]                                      ; $7641: $f2
	ld   l, d                                        ; $7642: $6a
	dec  a                                           ; $7643: $3d
	ld   c, a                                        ; $7644: $4f
	inc  e                                           ; $7645: $1c
	sbc  b                                           ; $7646: $98
	ld   a, e                                        ; $7647: $7b
	ld   [hl], d                                     ; $7648: $72
	pop  af                                          ; $7649: $f1
	or   l                                           ; $764a: $b5
	sub  a                                           ; $764b: $97
	cp   d                                           ; $764c: $ba
	ccf                                              ; $764d: $3f
	ld   e, e                                        ; $764e: $5b
	ld   l, l                                        ; $764f: $6d
	dec  de                                          ; $7650: $1b
	sub  d                                           ; $7651: $92
	call nz, $e4b5                                   ; $7652: $c4 $b5 $e4
	sbc  l                                           ; $7655: $9d
	ld   l, b                                        ; $7656: $68
	xor  c                                           ; $7657: $a9
	cpl                                              ; $7658: $2f
	add  hl, de                                      ; $7659: $19
	add  a                                           ; $765a: $87
	sbc  b                                           ; $765b: $98
	jp   Jump_0e9_78e8                               ; $765c: $c3 $e8 $78


	or   e                                           ; $765f: $b3
	xor  c                                           ; $7660: $a9
	inc  l                                           ; $7661: $2c
	ld   e, c                                        ; $7662: $59
	ld   a, h                                        ; $7663: $7c
	ld   e, c                                        ; $7664: $59
	rst  ToBoot                                         ; $7665: $c7
	adc  e                                           ; $7666: $8b
	ld   [hl], h                                     ; $7667: $74
	jp   Jump_0e9_7788                               ; $7668: $c3 $88 $77


	xor  c                                           ; $766b: $a9
	ld   e, e                                        ; $766c: $5b
	adc  b                                           ; $766d: $88
	adc  e                                           ; $766e: $8b
	dec  sp                                          ; $766f: $3b
	ld   [hl], l                                     ; $7670: $75
	sub  [hl]                                        ; $7671: $96
	sub  [hl]                                        ; $7672: $96
	or   l                                           ; $7673: $b5
	xor  e                                           ; $7674: $ab
	ld   a, b                                        ; $7675: $78
	and  a                                           ; $7676: $a7
	ld   l, e                                        ; $7677: $6b
	ld   c, b                                        ; $7678: $48
	ld   a, b                                        ; $7679: $78
	ld   a, c                                        ; $767a: $79
	add  [hl]                                        ; $767b: $86
	cp   b                                           ; $767c: $b8
	adc  d                                           ; $767d: $8a
	sub  [hl]                                        ; $767e: $96
	and  [hl]                                        ; $767f: $a6
	ld   a, b                                        ; $7680: $78
	ld   [hl], a                                     ; $7681: $77
	adc  c                                           ; $7682: $89
	ld   l, d                                        ; $7683: $6a
	sbc  b                                           ; $7684: $98
	sbc  d                                           ; $7685: $9a
	ld   l, c                                        ; $7686: $69
	add  [hl]                                        ; $7687: $86
	sub  a                                           ; $7688: $97
	ld   [hl], a                                     ; $7689: $77
	sub  a                                           ; $768a: $97
	sbc  d                                           ; $768b: $9a
	sbc  c                                           ; $768c: $99
	sbc  b                                           ; $768d: $98
	ld   a, c                                        ; $768e: $79
	ld   [hl], a                                     ; $768f: $77
	ld   a, b                                        ; $7690: $78
	ld   l, c                                        ; $7691: $69
	ld   [hl], a                                     ; $7692: $77
	sbc  b                                           ; $7693: $98
	sbc  c                                           ; $7694: $99
	add  a                                           ; $7695: $87
	sub  a                                           ; $7696: $97
	ld   [hl], a                                     ; $7697: $77
	ld   [hl], a                                     ; $7698: $77
	ld   a, b                                        ; $7699: $78
	ld   a, c                                        ; $769a: $79
	xor  c                                           ; $769b: $a9
	adc  d                                           ; $769c: $8a
	adc  b                                           ; $769d: $88
	sub  a                                           ; $769e: $97
	add  a                                           ; $769f: $87
	ld   [hl], a                                     ; $76a0: $77
	ld   a, b                                        ; $76a1: $78
	adc  c                                           ; $76a2: $89
	sbc  c                                           ; $76a3: $99
	sbc  c                                           ; $76a4: $99
	adc  c                                           ; $76a5: $89
	ld   [hl], a                                     ; $76a6: $77
	ld   [hl], a                                     ; $76a7: $77
	ld   a, b                                        ; $76a8: $78
	ld   a, b                                        ; $76a9: $78
	sbc  b                                           ; $76aa: $98
	sbc  b                                           ; $76ab: $98
	sbc  c                                           ; $76ac: $99
	adc  b                                           ; $76ad: $88
	add  a                                           ; $76ae: $87
	add  a                                           ; $76af: $87
	ld   a, b                                        ; $76b0: $78
	adc  c                                           ; $76b1: $89
	sbc  b                                           ; $76b2: $98
	sbc  b                                           ; $76b3: $98
	adc  b                                           ; $76b4: $88
	add  a                                           ; $76b5: $87
	add  a                                           ; $76b6: $87
	ld   [hl], a                                     ; $76b7: $77
	adc  b                                           ; $76b8: $88
	sbc  c                                           ; $76b9: $99

Call_0e9_76ba:
	adc  b                                           ; $76ba: $88
	sbc  b                                           ; $76bb: $98
	adc  b                                           ; $76bc: $88
	ld   a, b                                        ; $76bd: $78
	ld   a, b                                        ; $76be: $78
	ld   a, b                                        ; $76bf: $78
	sbc  b                                           ; $76c0: $98
	adc  b                                           ; $76c1: $88
	sbc  b                                           ; $76c2: $98
	add  a                                           ; $76c3: $87
	add  a                                           ; $76c4: $87
	ld   a, b                                        ; $76c5: $78
	ld   a, c                                        ; $76c6: $79
	adc  b                                           ; $76c7: $88
	sbc  b                                           ; $76c8: $98
	sbc  b                                           ; $76c9: $98
	adc  b                                           ; $76ca: $88
	add  a                                           ; $76cb: $87
	add  a                                           ; $76cc: $87
	adc  b                                           ; $76cd: $88
	adc  c                                           ; $76ce: $89
	adc  b                                           ; $76cf: $88
	sbc  b                                           ; $76d0: $98
	sbc  b                                           ; $76d1: $98
	adc  b                                           ; $76d2: $88
	ld   a, b                                        ; $76d3: $78
	ld   a, b                                        ; $76d4: $78
	adc  b                                           ; $76d5: $88
	adc  c                                           ; $76d6: $89
	adc  c                                           ; $76d7: $89
	sbc  b                                           ; $76d8: $98
	sbc  b                                           ; $76d9: $98
	adc  b                                           ; $76da: $88
	ld   a, b                                        ; $76db: $78
	ld   a, b                                        ; $76dc: $78
	adc  c                                           ; $76dd: $89
	adc  b                                           ; $76de: $88
	adc  b                                           ; $76df: $88
	sbc  b                                           ; $76e0: $98
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

Jump_0e9_7787:
	adc  b                                           ; $7787: $88

Jump_0e9_7788:
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

Call_0e9_77a5:
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
	adc  b                                           ; $781a: $88
	adc  b                                           ; $781b: $88
	adc  b                                           ; $781c: $88
	adc  b                                           ; $781d: $88
	adc  b                                           ; $781e: $88
	adc  b                                           ; $781f: $88
	adc  b                                           ; $7820: $88
	adc  b                                           ; $7821: $88
	adc  b                                           ; $7822: $88
	adc  b                                           ; $7823: $88
	sbc  b                                           ; $7824: $98
	adc  b                                           ; $7825: $88
	adc  b                                           ; $7826: $88
	adc  c                                           ; $7827: $89
	sub  a                                           ; $7828: $97
	adc  b                                           ; $7829: $88
	adc  b                                           ; $782a: $88
	adc  b                                           ; $782b: $88
	adc  b                                           ; $782c: $88
	adc  b                                           ; $782d: $88
	adc  b                                           ; $782e: $88
	adc  b                                           ; $782f: $88
	adc  b                                           ; $7830: $88
	adc  b                                           ; $7831: $88
	adc  b                                           ; $7832: $88
	adc  b                                           ; $7833: $88
	adc  b                                           ; $7834: $88
	adc  b                                           ; $7835: $88
	adc  b                                           ; $7836: $88
	adc  b                                           ; $7837: $88
	adc  b                                           ; $7838: $88
	adc  b                                           ; $7839: $88
	adc  b                                           ; $783a: $88
	adc  b                                           ; $783b: $88
	adc  b                                           ; $783c: $88
	adc  b                                           ; $783d: $88
	adc  b                                           ; $783e: $88
	adc  b                                           ; $783f: $88
	adc  b                                           ; $7840: $88
	adc  b                                           ; $7841: $88
	adc  b                                           ; $7842: $88
	adc  b                                           ; $7843: $88
	adc  b                                           ; $7844: $88
	adc  b                                           ; $7845: $88
	adc  b                                           ; $7846: $88
	adc  b                                           ; $7847: $88
	adc  b                                           ; $7848: $88
	adc  b                                           ; $7849: $88
	adc  b                                           ; $784a: $88
	adc  b                                           ; $784b: $88
	adc  b                                           ; $784c: $88
	adc  b                                           ; $784d: $88
	adc  b                                           ; $784e: $88
	adc  b                                           ; $784f: $88
	add  a                                           ; $7850: $87
	sbc  c                                           ; $7851: $99
	adc  b                                           ; $7852: $88
	adc  b                                           ; $7853: $88
	adc  b                                           ; $7854: $88
	add  a                                           ; $7855: $87
	adc  b                                           ; $7856: $88
	adc  b                                           ; $7857: $88
	adc  b                                           ; $7858: $88
	adc  c                                           ; $7859: $89
	ld   a, c                                        ; $785a: $79
	adc  b                                           ; $785b: $88
	adc  b                                           ; $785c: $88
	adc  b                                           ; $785d: $88
	adc  b                                           ; $785e: $88
	adc  b                                           ; $785f: $88
	adc  b                                           ; $7860: $88
	adc  b                                           ; $7861: $88
	adc  b                                           ; $7862: $88
	adc  b                                           ; $7863: $88
	adc  b                                           ; $7864: $88
	adc  b                                           ; $7865: $88
	adc  b                                           ; $7866: $88
	adc  b                                           ; $7867: $88
	adc  b                                           ; $7868: $88
	adc  b                                           ; $7869: $88
	adc  b                                           ; $786a: $88
	adc  b                                           ; $786b: $88
	adc  b                                           ; $786c: $88
	adc  b                                           ; $786d: $88
	adc  b                                           ; $786e: $88
	adc  b                                           ; $786f: $88
	adc  b                                           ; $7870: $88
	adc  b                                           ; $7871: $88
	adc  b                                           ; $7872: $88
	adc  b                                           ; $7873: $88
	adc  b                                           ; $7874: $88
	adc  b                                           ; $7875: $88
	adc  b                                           ; $7876: $88
	adc  b                                           ; $7877: $88
	adc  b                                           ; $7878: $88
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	adc  b                                           ; $787d: $88
	adc  b                                           ; $787e: $88
	adc  c                                           ; $787f: $89
	adc  b                                           ; $7880: $88
	adc  b                                           ; $7881: $88
	adc  b                                           ; $7882: $88
	adc  b                                           ; $7883: $88
	adc  b                                           ; $7884: $88
	adc  c                                           ; $7885: $89
	adc  b                                           ; $7886: $88
	adc  b                                           ; $7887: $88
	add  a                                           ; $7888: $87
	adc  b                                           ; $7889: $88
	adc  b                                           ; $788a: $88
	adc  b                                           ; $788b: $88
	adc  b                                           ; $788c: $88
	adc  b                                           ; $788d: $88
	sub  a                                           ; $788e: $97
	adc  b                                           ; $788f: $88
	sbc  b                                           ; $7890: $98
	adc  c                                           ; $7891: $89
	adc  b                                           ; $7892: $88
	adc  b                                           ; $7893: $88
	adc  b                                           ; $7894: $88
	adc  b                                           ; $7895: $88
	adc  b                                           ; $7896: $88
	adc  b                                           ; $7897: $88
	adc  b                                           ; $7898: $88
	sbc  b                                           ; $7899: $98
	adc  c                                           ; $789a: $89
	adc  b                                           ; $789b: $88
	sbc  b                                           ; $789c: $98
	ld   a, c                                        ; $789d: $79
	ld   [hl], a                                     ; $789e: $77
	adc  b                                           ; $789f: $88
	ld   [hl], a                                     ; $78a0: $77
	adc  b                                           ; $78a1: $88
	adc  c                                           ; $78a2: $89
	adc  b                                           ; $78a3: $88
	adc  c                                           ; $78a4: $89
	adc  b                                           ; $78a5: $88
	adc  b                                           ; $78a6: $88
	add  a                                           ; $78a7: $87
	ld   [hl], a                                     ; $78a8: $77

Call_0e9_78a9:
	add  a                                           ; $78a9: $87
	adc  b                                           ; $78aa: $88
	adc  c                                           ; $78ab: $89
	sbc  c                                           ; $78ac: $99
	adc  c                                           ; $78ad: $89
	adc  c                                           ; $78ae: $89
	sub  [hl]                                        ; $78af: $96
	add  a                                           ; $78b0: $87
	ld   [hl], a                                     ; $78b1: $77
	ld   a, b                                        ; $78b2: $78
	ld   a, b                                        ; $78b3: $78
	sbc  c                                           ; $78b4: $99
	sbc  c                                           ; $78b5: $99
	xor  c                                           ; $78b6: $a9
	sbc  b                                           ; $78b7: $98
	ld   a, b                                        ; $78b8: $78

Call_0e9_78b9:
	ld   [hl], a                                     ; $78b9: $77
	ld   h, a                                        ; $78ba: $67
	ld   [hl], a                                     ; $78bb: $77
	sbc  c                                           ; $78bc: $99
	sbc  d                                           ; $78bd: $9a
	cp   c                                           ; $78be: $b9
	sbc  c                                           ; $78bf: $99
	halt                                             ; $78c0: $76
	adc  b                                           ; $78c1: $88
	ld   b, a                                        ; $78c2: $47
	ld   h, [hl]                                     ; $78c3: $66
	ld   h, a                                        ; $78c4: $67
	xor  b                                           ; $78c5: $a8
	cp   d                                           ; $78c6: $ba
	xor  c                                           ; $78c7: $a9
	xor  c                                           ; $78c8: $a9
	ld   l, b                                        ; $78c9: $68
	ld   b, [hl]                                     ; $78ca: $46
	ld   h, h                                        ; $78cb: $64
	ld   h, l                                        ; $78cc: $65
	ld   [hl], a                                     ; $78cd: $77
	xor  d                                           ; $78ce: $aa
	xor  l                                           ; $78cf: $ad
	cp   e                                           ; $78d0: $bb
	xor  d                                           ; $78d1: $aa
	halt                                             ; $78d2: $76
	ld   d, e                                        ; $78d3: $53
	ld   h, d                                        ; $78d4: $62
	ld   d, l                                        ; $78d5: $55
	ld   h, a                                        ; $78d6: $67
	xor  [hl]                                        ; $78d7: $ae
	cp   a                                           ; $78d8: $bf
	db   $ec                                         ; $78d9: $ec

Call_0e9_78da:
	ret                                              ; $78da: $c9


	add  h                                           ; $78db: $84
	ld   b, d                                        ; $78dc: $42
	ld   sp, $5925                                   ; $78dd: $31 $25 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78e0: $cf
	rst  $28                                         ; $78e1: $ef
	db   $fd                                         ; $78e2: $fd
	cp   c                                           ; $78e3: $b9
	ld   d, e                                        ; $78e4: $53
	ld   de, $3311                                   ; $78e5: $11 $11 $33

Jump_0e9_78e8:
	ld   l, h                                        ; $78e8: $6c
	rst  $28                                         ; $78e9: $ef
	rst  $38                                         ; $78ea: $ff
	call c, $31a5                                    ; $78eb: $dc $a5 $31
	ld   de, $3711                                   ; $78ee: $11 $11 $37
	sbc  $ff                                         ; $78f1: $de $ff
	rst  $38                                         ; $78f3: $ff
	jp   z, $1155                                    ; $78f4: $ca $55 $11

	ld   de, $9b21                                   ; $78f7: $11 $21 $9b
	rst  $38                                         ; $78fa: $ff
	rst  $38                                         ; $78fb: $ff
	xor  $86                                         ; $78fc: $ee $86
	ld   b, c                                        ; $78fe: $41
	ld   de, $3711                                   ; $78ff: $11 $11 $37
	sbc  $ff                                         ; $7902: $de $ff
	rst  $38                                         ; $7904: $ff
	jp   z, $1144                                    ; $7905: $ca $44 $11

	ld   de, $9d11                                   ; $7908: $11 $11 $9d
	rst  $28                                         ; $790b: $ef
	rst  $38                                         ; $790c: $ff
	db   $fd                                         ; $790d: $fd
	and  h                                           ; $790e: $a4
	ld   b, c                                        ; $790f: $41
	ld   de, $1911                                   ; $7910: $11 $11 $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7913: $cf
	rst  $38                                         ; $7914: $ff
	rst  $38                                         ; $7915: $ff
	ret  c                                           ; $7916: $d8

	ld   b, e                                        ; $7917: $43
	ld   de, $1311                                   ; $7918: $11 $11 $13
	adc  l                                           ; $791b: $8d
	rst  $38                                         ; $791c: $ff
	rst  $38                                         ; $791d: $ff
	db   $fc                                         ; $791e: $fc
	sub  h                                           ; $791f: $94
	ld   hl, $1111                                   ; $7920: $21 $11 $11
	ld   d, a                                        ; $7923: $57
	rst  JumpTable                                         ; $7924: $df
	rst  $38                                         ; $7925: $ff
	rst  $38                                         ; $7926: $ff
	ret                                              ; $7927: $c9


	ld   d, d                                        ; $7928: $52
	ld   de, $1611                                   ; $7929: $11 $11 $16
	ld   a, h                                        ; $792c: $7c
	rst  $38                                         ; $792d: $ff
	rst  $38                                         ; $792e: $ff
	db   $fc                                         ; $792f: $fc
	add  [hl]                                        ; $7930: $86
	ld   hl, $1111                                   ; $7931: $21 $11 $11
	ld   l, d                                        ; $7934: $6a
	sbc  a                                           ; $7935: $9f
	rst  $38                                         ; $7936: $ff
	rst  $38                                         ; $7937: $ff
	rst  $20                                         ; $7938: $e7
	add  e                                           ; $7939: $83
	ld   de, $1411                                   ; $793a: $11 $11 $14
	ld   a, c                                        ; $793d: $79
	rst  JumpTable                                         ; $793e: $df
	cp   $fe                                         ; $793f: $fe $fe
	xor  b                                           ; $7941: $a8
	ld   h, d                                        ; $7942: $62
	ld   hl, $2411                                   ; $7943: $21 $11 $24
	xor  d                                           ; $7946: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7947: $cf
	rst  $38                                         ; $7948: $ff
	rst  $28                                         ; $7949: $ef
	sbc  b                                           ; $794a: $98
	ld   d, e                                        ; $794b: $53
	ld   sp, $2531                                   ; $794c: $31 $31 $25
	xor  c                                           ; $794f: $a9
	rst  JumpTable                                         ; $7950: $df
	adc  $ed                                         ; $7951: $ce $ed
	adc  b                                           ; $7953: $88
	ld   h, c                                        ; $7954: $61
	inc  sp                                          ; $7955: $33
	ld   [hl-], a                                    ; $7956: $32
	ld   [hl], $89                                   ; $7957: $36 $89
	cp   l                                           ; $7959: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $795a: $cf
	db   $fc                                         ; $795b: $fc
	xor  b                                           ; $795c: $a8
	ld   d, c                                        ; $795d: $51
	ld   b, e                                        ; $795e: $43
	inc  hl                                          ; $795f: $23
	ld   h, $98                                      ; $7960: $26 $98
	xor  [hl]                                        ; $7962: $ae
	db   $ec                                         ; $7963: $ec
	xor  $97                                         ; $7964: $ee $97
	ld   [hl], d                                     ; $7966: $72
	dec  [hl]                                        ; $7967: $35
	ld   b, d                                        ; $7968: $42
	ld   b, [hl]                                     ; $7969: $46
	ld   a, d                                        ; $796a: $7a
	sbc  l                                           ; $796b: $9d
	db   $db                                         ; $796c: $db
	db   $fd                                         ; $796d: $fd
	and  [hl]                                        ; $796e: $a6
	ld   h, h                                        ; $796f: $64
	rla                                              ; $7970: $17
	ld   b, e                                        ; $7971: $43
	ld   h, [hl]                                     ; $7972: $66
	ld   a, b                                        ; $7973: $78
	xor  c                                           ; $7974: $a9
	call z, $d9cd                                    ; $7975: $cc $cd $d9
	ld   [hl], l                                     ; $7978: $75
	dec  [hl]                                        ; $7979: $35
	ld   d, h                                        ; $797a: $54
	ld   d, l                                        ; $797b: $55
	ld   c, b                                        ; $797c: $48
	xor  b                                           ; $797d: $a8
	xor  h                                           ; $797e: $ac
	set  3, l                                        ; $797f: $cb $dd
	ld   a, b                                        ; $7981: $78
	ld   h, d                                        ; $7982: $62
	ld   d, [hl]                                     ; $7983: $56
	ld   b, l                                        ; $7984: $45
	ld   d, [hl]                                     ; $7985: $56
	ld   a, c                                        ; $7986: $79
	xor  c                                           ; $7987: $a9
	set  1, [hl]                                     ; $7988: $cb $ce
	xor  d                                           ; $798a: $aa
	ld   h, l                                        ; $798b: $65
	inc  [hl]                                        ; $798c: $34
	ld   h, l                                        ; $798d: $65
	ld   d, [hl]                                     ; $798e: $56
	ld   [hl], a                                     ; $798f: $77
	xor  b                                           ; $7990: $a8
	sbc  h                                           ; $7991: $9c
	cp   d                                           ; $7992: $ba
	call Call_0e9_7377                               ; $7993: $cd $77 $73
	ld   b, a                                        ; $7996: $47
	ld   [hl], e                                     ; $7997: $73
	ld   h, [hl]                                     ; $7998: $66
	adc  c                                           ; $7999: $89
	xor  c                                           ; $799a: $a9
	sbc  h                                           ; $799b: $9c
	cp   h                                           ; $799c: $bc
	jp   z, Jump_0e9_5575                            ; $799d: $ca $75 $55

	ld   h, a                                        ; $79a0: $67
	ld   b, h                                        ; $79a1: $44
	ld   e, b                                        ; $79a2: $58
	xor  b                                           ; $79a3: $a8
	sbc  e                                           ; $79a4: $9b
	set  1, e                                        ; $79a5: $cb $cb
	sbc  c                                           ; $79a7: $99
	ld   h, h                                        ; $79a8: $64
	ld   d, l                                        ; $79a9: $55
	ld   d, l                                        ; $79aa: $55
	ld   [hl], l                                     ; $79ab: $75
	ld   l, c                                        ; $79ac: $69
	cp   c                                           ; $79ad: $b9
	cp   h                                           ; $79ae: $bc
	sbc  c                                           ; $79af: $99
	cp   h                                           ; $79b0: $bc
	halt                                             ; $79b1: $76
	ld   [hl], h                                     ; $79b2: $74
	ld   d, a                                        ; $79b3: $57
	ld   h, a                                        ; $79b4: $67
	ld   h, l                                        ; $79b5: $65
	sbc  d                                           ; $79b6: $9a
	add  a                                           ; $79b7: $87
	cp   h                                           ; $79b8: $bc
	adc  h                                           ; $79b9: $8c
	cp   d                                           ; $79ba: $ba
	ld   [hl], a                                     ; $79bb: $77
	ld   h, e                                        ; $79bc: $63
	sbc  b                                           ; $79bd: $98
	ld   d, h                                        ; $79be: $54
	ld   d, l                                        ; $79bf: $55

jr_0e9_79c0:
	ld   a, d                                        ; $79c0: $7a
	ld   a, h                                        ; $79c1: $7c
	db   $db                                         ; $79c2: $db
	call z, Call_0e9_77a5                            ; $79c3: $cc $a5 $77
	ld   b, a                                        ; $79c6: $47
	halt                                             ; $79c7: $76
	inc  sp                                          ; $79c8: $33
	ld   l, b                                        ; $79c9: $68
	xor  b                                           ; $79ca: $a8
	sbc  h                                           ; $79cb: $9c
	res  3, e                                        ; $79cc: $cb $9b
	sub  a                                           ; $79ce: $97
	ld   h, h                                        ; $79cf: $64
	ld   h, a                                        ; $79d0: $67
	ld   h, [hl]                                     ; $79d1: $66
	dec  [hl]                                        ; $79d2: $35
	ld   a, b                                        ; $79d3: $78
	xor  d                                           ; $79d4: $aa
	reti                                             ; $79d5: $d9


	call $67a9                                       ; $79d6: $cd $a9 $67
	ld   [hl], $96                                   ; $79d9: $36 $96
	ld   b, e                                        ; $79db: $43
	ld   b, [hl]                                     ; $79dc: $46
	ret                                              ; $79dd: $c9


	adc  e                                           ; $79de: $8b
	res  7, [hl]                                     ; $79df: $cb $be
	and  [hl]                                        ; $79e1: $a6
	ld   h, l                                        ; $79e2: $65
	ld   h, [hl]                                     ; $79e3: $66
	ld   h, l                                        ; $79e4: $65
	ld   d, h                                        ; $79e5: $54
	ld   l, e                                        ; $79e6: $6b
	cp   b                                           ; $79e7: $b8
	xor  e                                           ; $79e8: $ab
	xor  e                                           ; $79e9: $ab
	db   $ec                                         ; $79ea: $ec
	add  l                                           ; $79eb: $85
	ld   b, h                                        ; $79ec: $44
	ld   h, a                                        ; $79ed: $67
	ld   h, l                                        ; $79ee: $65
	dec  [hl]                                        ; $79ef: $35
	sbc  d                                           ; $79f0: $9a
	ld   a, e                                        ; $79f1: $7b
	call c, $c5bc                                    ; $79f2: $dc $bc $c5
	ld   h, [hl]                                     ; $79f5: $66
	ld   d, [hl]                                     ; $79f6: $56
	ld   [hl], a                                     ; $79f7: $77
	inc  h                                           ; $79f8: $24
	ld   c, c                                        ; $79f9: $49
	sub  a                                           ; $79fa: $97
	call $dcda                                       ; $79fb: $cd $da $dc
	ld   h, [hl]                                     ; $79fe: $66
	ld   d, l                                        ; $79ff: $55
	ld   d, a                                        ; $7a00: $57
	ld   h, e                                        ; $7a01: $63
	inc  [hl]                                        ; $7a02: $34
	sbc  d                                           ; $7a03: $9a
	sbc  h                                           ; $7a04: $9c
	db   $dd                                         ; $7a05: $dd
	cp   e                                           ; $7a06: $bb
	cp   b                                           ; $7a07: $b8
	ld   h, l                                        ; $7a08: $65
	ld   b, l                                        ; $7a09: $45
	ld   h, l                                        ; $7a0a: $65
	inc  sp                                          ; $7a0b: $33
	ld   l, d                                        ; $7a0c: $6a
	cp   d                                           ; $7a0d: $ba
	xor  h                                           ; $7a0e: $ac
	call z, Call_0e9_75ea                            ; $7a0f: $cc $ea $75
	ld   b, e                                        ; $7a12: $43
	ld   d, a                                        ; $7a13: $57
	ld   d, e                                        ; $7a14: $53
	jr   c, jr_0e9_79c0                              ; $7a15: $38 $a9

	set  1, h                                        ; $7a17: $cb $cc
	call z, Call_0e9_5486                            ; $7a19: $cc $86 $54
	ld   b, l                                        ; $7a1c: $45
	ld   [hl], l                                     ; $7a1d: $75
	ld   d, d                                        ; $7a1e: $52
	ld   l, l                                        ; $7a1f: $6d
	cp   d                                           ; $7a20: $ba
	db   $dd                                         ; $7a21: $dd
	cp   e                                           ; $7a22: $bb
	or   a                                           ; $7a23: $b7
	ld   h, h                                        ; $7a24: $64
	ld   [hl], $75                                   ; $7a25: $36 $75
	inc  hl                                          ; $7a27: $23
	ld   e, d                                        ; $7a28: $5a
	jp   z, $ccbc                                    ; $7a29: $ca $bc $cc

	cp   d                                           ; $7a2c: $ba
	halt                                             ; $7a2d: $76
	ld   d, h                                        ; $7a2e: $54
	ld   h, [hl]                                     ; $7a2f: $66
	ld   b, e                                        ; $7a30: $43
	ld   [hl], $cc                                   ; $7a31: $36 $cc
	xor  e                                           ; $7a33: $ab
	xor  $bb                                         ; $7a34: $ee $bb
	sub  [hl]                                        ; $7a36: $96
	ld   b, e                                        ; $7a37: $43
	ld   h, [hl]                                     ; $7a38: $66
	ld   d, e                                        ; $7a39: $53
	inc  h                                           ; $7a3a: $24
	ld   a, l                                        ; $7a3b: $7d
	call c, $a9ed                                    ; $7a3c: $dc $ed $a9
	cp   c                                           ; $7a3f: $b9
	ld   d, l                                        ; $7a40: $55
	ld   b, [hl]                                     ; $7a41: $46
	ld   d, l                                        ; $7a42: $55
	ld   [hl-], a                                    ; $7a43: $32
	ld   c, c                                        ; $7a44: $49
	db   $db                                         ; $7a45: $db
	db   $dd                                         ; $7a46: $dd
	jp   z, $669a                                    ; $7a47: $ca $9a $66

	ld   d, h                                        ; $7a4a: $54
	ld   d, [hl]                                     ; $7a4b: $56
	ld   b, c                                        ; $7a4c: $41
	inc  h                                           ; $7a4d: $24
	adc  $cc                                         ; $7a4e: $ce $cc
	call c, $969b                                    ; $7a50: $dc $9b $96
	ld   h, h                                        ; $7a53: $64
	ld   d, [hl]                                     ; $7a54: $56
	ld   b, d                                        ; $7a55: $42
	inc  d                                           ; $7a56: $14
	ld   a, l                                        ; $7a57: $7d
	db   $eb                                         ; $7a58: $eb
	call z, $b9ca                                    ; $7a59: $cc $ca $b9
	ld   d, l                                        ; $7a5c: $55
	ld   b, [hl]                                     ; $7a5d: $46
	ld   d, l                                        ; $7a5e: $55
	ld   [hl+], a                                    ; $7a5f: $22
	ld   e, c                                        ; $7a60: $59
	xor  $aa                                         ; $7a61: $ee $aa
	cp   l                                           ; $7a63: $bd
	xor  d                                           ; $7a64: $aa
	add  [hl]                                        ; $7a65: $86
	ld   d, e                                        ; $7a66: $53
	ld   d, [hl]                                     ; $7a67: $56
	ld   sp, $bd26                                   ; $7a68: $31 $26 $bd
	call c, $bbba                                    ; $7a6b: $dc $ba $bb
	sub  [hl]                                        ; $7a6e: $96
	ld   h, l                                        ; $7a6f: $65
	ld   d, l                                        ; $7a70: $55
	ld   h, h                                        ; $7a71: $64
	inc  de                                          ; $7a72: $13
	adc  h                                           ; $7a73: $8c
	db   $fc                                         ; $7a74: $fc
	cp   e                                           ; $7a75: $bb

Jump_0e9_7a76:
	call z, $65a8                                    ; $7a76: $cc $a8 $65
	ld   d, l                                        ; $7a79: $55
	ld   h, l                                        ; $7a7a: $65
	ld   hl, $ee4a                                   ; $7a7b: $21 $4a $ee
	call z, $abab                                    ; $7a7e: $cc $ab $ab
	add  [hl]                                        ; $7a81: $86
	ld   d, h                                        ; $7a82: $54
	ld   h, [hl]                                     ; $7a83: $66
	ld   d, d                                        ; $7a84: $52
	dec  h                                           ; $7a85: $25
	xor  a                                           ; $7a86: $af
	db   $eb                                         ; $7a87: $eb
	xor  d                                           ; $7a88: $aa
	xor  d                                           ; $7a89: $aa
	or   a                                           ; $7a8a: $b7
	ld   h, l                                        ; $7a8b: $65
	ld   d, [hl]                                     ; $7a8c: $56
	ld   h, h                                        ; $7a8d: $64
	inc  de                                          ; $7a8e: $13
	ld   l, e                                        ; $7a8f: $6b
	cp   $ba                                         ; $7a90: $fe $ba
	cp   e                                           ; $7a92: $bb
	xor  d                                           ; $7a93: $aa
	halt                                             ; $7a94: $76
	ld   d, l                                        ; $7a95: $55
	ld   h, [hl]                                     ; $7a96: $66
	ld   b, d                                        ; $7a97: $42
	scf                                              ; $7a98: $37
	sbc  l                                           ; $7a99: $9d
	call c, $aaba                                    ; $7a9a: $dc $ba $aa
	sub  [hl]                                        ; $7a9d: $96
	ld   h, [hl]                                     ; $7a9e: $66
	ld   d, [hl]                                     ; $7a9f: $56
	ld   h, h                                        ; $7aa0: $64
	inc  de                                          ; $7aa1: $13
	ld   l, e                                        ; $7aa2: $6b
	cp   $aa                                         ; $7aa3: $fe $aa
	xor  e                                           ; $7aa5: $ab
	xor  c                                           ; $7aa6: $a9
	add  [hl]                                        ; $7aa7: $86
	ld   h, l                                        ; $7aa8: $65
	ld   h, [hl]                                     ; $7aa9: $66
	ld   sp, $ae37                                   ; $7aaa: $31 $37 $ae
	ei                                               ; $7aad: $fb
	xor  c                                           ; $7aae: $a9
	cp   e                                           ; $7aaf: $bb
	and  a                                           ; $7ab0: $a7
	halt                                             ; $7ab1: $76
	ld   d, l                                        ; $7ab2: $55
	ld   h, h                                        ; $7ab3: $64
	inc  hl                                          ; $7ab4: $23
	ld   l, d                                        ; $7ab5: $6a
	db   $ed                                         ; $7ab6: $ed
	jp   z, $baa9                                    ; $7ab7: $ca $a9 $ba

	sub  a                                           ; $7aba: $97
	ld   h, l                                        ; $7abb: $65
	ld   d, [hl]                                     ; $7abc: $56
	ld   b, d                                        ; $7abd: $42
	ld   h, $ae                                      ; $7abe: $26 $ae
	db   $db                                         ; $7ac0: $db
	cp   e                                           ; $7ac1: $bb
	xor  d                                           ; $7ac2: $aa
	sbc  c                                           ; $7ac3: $99
	ld   h, [hl]                                     ; $7ac4: $66
	ld   h, l                                        ; $7ac5: $65
	ld   h, l                                        ; $7ac6: $65
	ld   [hl-], a                                    ; $7ac7: $32
	ld   c, c                                        ; $7ac8: $49
	sbc  $cb                                         ; $7ac9: $de $cb
	cp   d                                           ; $7acb: $ba
	sbc  d                                           ; $7acc: $9a
	add  a                                           ; $7acd: $87
	ld   h, [hl]                                     ; $7ace: $66
	ld   h, [hl]                                     ; $7acf: $66
	ld   d, e                                        ; $7ad0: $53
	inc  d                                           ; $7ad1: $14
	adc  l                                           ; $7ad2: $8d
	call c, $a9ba                                    ; $7ad3: $dc $ba $a9
	cp   c                                           ; $7ad6: $b9
	add  [hl]                                        ; $7ad7: $86
	ld   h, a                                        ; $7ad8: $67
	ld   h, l                                        ; $7ad9: $65
	ld   sp, $be27                                   ; $7ada: $31 $27 $be
	db   $db                                         ; $7add: $db
	cp   d                                           ; $7ade: $ba
	xor  d                                           ; $7adf: $aa
	sbc  c                                           ; $7ae0: $99
	halt                                             ; $7ae1: $76
	halt                                             ; $7ae2: $76
	ld   h, h                                        ; $7ae3: $64
	ld   [hl+], a                                    ; $7ae4: $22
	ld   e, c                                        ; $7ae5: $59
	adc  $c9                                         ; $7ae6: $ce $c9
	xor  e                                           ; $7ae8: $ab
	xor  d                                           ; $7ae9: $aa
	adc  b                                           ; $7aea: $88
	ld   [hl], a                                     ; $7aeb: $77
	ld   h, [hl]                                     ; $7aec: $66
	ld   d, e                                        ; $7aed: $53
	inc  de                                          ; $7aee: $13
	adc  e                                           ; $7aef: $8b
	call c, $aaba                                    ; $7af0: $dc $ba $aa
	xor  c                                           ; $7af3: $a9
	add  a                                           ; $7af4: $87
	ld   [hl], a                                     ; $7af5: $77
	ld   h, [hl]                                     ; $7af6: $66
	ld   d, e                                        ; $7af7: $53
	inc  d                                           ; $7af8: $14
	sbc  [hl]                                        ; $7af9: $9e
	ld   [$a99b], a                                  ; $7afa: $ea $9b $a9
	xor  c                                           ; $7afd: $a9
	add  a                                           ; $7afe: $87
	ld   h, a                                        ; $7aff: $67
	ld   h, [hl]                                     ; $7b00: $66
	ld   b, d                                        ; $7b01: $42
	dec  h                                           ; $7b02: $25
	xor  l                                           ; $7b03: $ad
	db   $db                                         ; $7b04: $db
	xor  d                                           ; $7b05: $aa
	sbc  d                                           ; $7b06: $9a
	xor  c                                           ; $7b07: $a9
	add  a                                           ; $7b08: $87
	halt                                             ; $7b09: $76
	ld   h, l                                        ; $7b0a: $65
	ld   [hl-], a                                    ; $7b0b: $32
	scf                                              ; $7b0c: $37
	xor  [hl]                                        ; $7b0d: $ae
	cp   d                                           ; $7b0e: $ba
	xor  e                                           ; $7b0f: $ab
	sbc  d                                           ; $7b10: $9a
	xor  c                                           ; $7b11: $a9
	add  [hl]                                        ; $7b12: $86

Call_0e9_7b13:
	ld   [hl], a                                     ; $7b13: $77
	ld   h, h                                        ; $7b14: $64
	ld   [hl-], a                                    ; $7b15: $32
	ld   c, b                                        ; $7b16: $48
	adc  $ba                                         ; $7b17: $ce $ba
	cp   e                                           ; $7b19: $bb
	sbc  c                                           ; $7b1a: $99
	sbc  d                                           ; $7b1b: $9a
	ld   [hl], a                                     ; $7b1c: $77
	ld   [hl], a                                     ; $7b1d: $77
	ld   h, h                                        ; $7b1e: $64
	ld   [hl-], a                                    ; $7b1f: $32
	ld   c, b                                        ; $7b20: $48
	cp   l                                           ; $7b21: $bd
	jp   z, $aaaa                                    ; $7b22: $ca $aa $aa

	xor  c                                           ; $7b25: $a9
	ld   [hl], a                                     ; $7b26: $77
	ld   [hl], a                                     ; $7b27: $77
	ld   h, h                                        ; $7b28: $64
	ld   b, d                                        ; $7b29: $42
	ld   b, a                                        ; $7b2a: $47
	cp   h                                           ; $7b2b: $bc
	cp   d                                           ; $7b2c: $ba
	adc  c                                           ; $7b2d: $89
	xor  e                                           ; $7b2e: $ab
	cp   d                                           ; $7b2f: $ba
	halt                                             ; $7b30: $76
	ld   [hl], a                                     ; $7b31: $77
	ld   h, l                                        ; $7b32: $65
	ld   b, d                                        ; $7b33: $42
	ld   [hl], $ae                                   ; $7b34: $36 $ae
	ret                                              ; $7b36: $c9


	ld   a, c                                        ; $7b37: $79
	cp   e                                           ; $7b38: $bb
	xor  c                                           ; $7b39: $a9
	add  [hl]                                        ; $7b3a: $86
	ld   [hl], a                                     ; $7b3b: $77
	halt                                             ; $7b3c: $76
	ld   b, d                                        ; $7b3d: $42
	ld   [hl], $9c                                   ; $7b3e: $36 $9c
	cp   e                                           ; $7b40: $bb
	sbc  c                                           ; $7b41: $99
	xor  e                                           ; $7b42: $ab
	cp   c                                           ; $7b43: $b9
	add  a                                           ; $7b44: $87
	ld   [hl], a                                     ; $7b45: $77
	halt                                             ; $7b46: $76
	ld   d, h                                        ; $7b47: $54
	inc  [hl]                                        ; $7b48: $34
	ld   l, e                                        ; $7b49: $6b
	jp   c, $a989                                    ; $7b4a: $da $89 $a9

	cp   d                                           ; $7b4d: $ba
	sub  a                                           ; $7b4e: $97
	ld   h, a                                        ; $7b4f: $67
	sub  a                                           ; $7b50: $97
	ld   d, h                                        ; $7b51: $54
	inc  [hl]                                        ; $7b52: $34
	ld   l, c                                        ; $7b53: $69
	cp   e                                           ; $7b54: $bb
	xor  d                                           ; $7b55: $aa
	cp   d                                           ; $7b56: $ba
	xor  d                                           ; $7b57: $aa
	sbc  b                                           ; $7b58: $98
	ld   [hl], a                                     ; $7b59: $77

Call_0e9_7b5a:
	sbc  b                                           ; $7b5a: $98
	ld   h, l                                        ; $7b5b: $65
	ld   d, h                                        ; $7b5c: $54
	ld   b, l                                        ; $7b5d: $45
	adc  h                                           ; $7b5e: $8c
	jp   z, $999a                                    ; $7b5f: $ca $9a $99

	sbc  c                                           ; $7b62: $99
	sub  a                                           ; $7b63: $97
	ld   [hl], a                                     ; $7b64: $77
	halt                                             ; $7b65: $76
	ld   d, l                                        ; $7b66: $55
	inc  [hl]                                        ; $7b67: $34
	ld   a, d                                        ; $7b68: $7a
	cp   e                                           ; $7b69: $bb
	sbc  c                                           ; $7b6a: $99
	xor  b                                           ; $7b6b: $a8
	sbc  c                                           ; $7b6c: $99
	adc  b                                           ; $7b6d: $88
	ld   [hl], a                                     ; $7b6e: $77
	adc  c                                           ; $7b6f: $89
	ld   h, l                                        ; $7b70: $65
	ld   d, h                                        ; $7b71: $54
	ld   d, [hl]                                     ; $7b72: $56
	sbc  h                                           ; $7b73: $9c
	jp   z, $aa89                                    ; $7b74: $ca $89 $aa

	cp   b                                           ; $7b77: $b8
	add  a                                           ; $7b78: $87
	adc  b                                           ; $7b79: $88
	add  [hl]                                        ; $7b7a: $86
	ld   d, [hl]                                     ; $7b7b: $56
	ld   b, l                                        ; $7b7c: $45
	ld   l, b                                        ; $7b7d: $68
	xor  e                                           ; $7b7e: $ab
	xor  b                                           ; $7b7f: $a8
	sbc  c                                           ; $7b80: $99
	adc  c                                           ; $7b81: $89
	sbc  c                                           ; $7b82: $99
	add  a                                           ; $7b83: $87
	ld   a, c                                        ; $7b84: $79
	halt                                             ; $7b85: $76
	ld   h, l                                        ; $7b86: $65
	ld   d, l                                        ; $7b87: $55
	ld   a, e                                        ; $7b88: $7b
	cp   d                                           ; $7b89: $ba
	sbc  c                                           ; $7b8a: $99
	xor  d                                           ; $7b8b: $aa
	sbc  c                                           ; $7b8c: $99
	sbc  c                                           ; $7b8d: $99
	adc  b                                           ; $7b8e: $88
	sbc  b                                           ; $7b8f: $98
	ld   h, [hl]                                     ; $7b90: $66
	ld   h, l                                        ; $7b91: $65
	ld   d, l                                        ; $7b92: $55
	adc  d                                           ; $7b93: $8a
	ret                                              ; $7b94: $c9


	adc  c                                           ; $7b95: $89
	sbc  b                                           ; $7b96: $98
	sbc  c                                           ; $7b97: $99
	sbc  c                                           ; $7b98: $99
	ld   a, b                                        ; $7b99: $78
	sbc  b                                           ; $7b9a: $98
	ld   h, [hl]                                     ; $7b9b: $66
	ld   h, l                                        ; $7b9c: $65
	ld   d, [hl]                                     ; $7b9d: $56
	sbc  d                                           ; $7b9e: $9a
	xor  c                                           ; $7b9f: $a9
	xor  e                                           ; $7ba0: $ab
	xor  b                                           ; $7ba1: $a8
	sbc  c                                           ; $7ba2: $99
	sbc  c                                           ; $7ba3: $99
	add  a                                           ; $7ba4: $87
	add  a                                           ; $7ba5: $87
	ld   h, a                                        ; $7ba6: $67
	ld   [hl], l                                     ; $7ba7: $75
	ld   d, l                                        ; $7ba8: $55
	adc  d                                           ; $7ba9: $8a
	xor  b                                           ; $7baa: $a8
	adc  d                                           ; $7bab: $8a
	xor  c                                           ; $7bac: $a9
	sbc  c                                           ; $7bad: $99
	sub  a                                           ; $7bae: $97
	ld   a, b                                        ; $7baf: $78
	adc  b                                           ; $7bb0: $88
	ld   [hl], a                                     ; $7bb1: $77
	halt                                             ; $7bb2: $76
	ld   d, l                                        ; $7bb3: $55
	ld   l, c                                        ; $7bb4: $69
	xor  d                                           ; $7bb5: $aa
	sbc  c                                           ; $7bb6: $99
	xor  c                                           ; $7bb7: $a9
	xor  b                                           ; $7bb8: $a8
	xor  b                                           ; $7bb9: $a8
	ld   [hl], a                                     ; $7bba: $77
	adc  b                                           ; $7bbb: $88
	add  a                                           ; $7bbc: $87
	halt                                             ; $7bbd: $76
	ld   d, l                                        ; $7bbe: $55
	ld   d, a                                        ; $7bbf: $57
	xor  d                                           ; $7bc0: $aa
	sbc  c                                           ; $7bc1: $99
	cp   d                                           ; $7bc2: $ba
	sbc  b                                           ; $7bc3: $98
	adc  d                                           ; $7bc4: $8a
	sub  a                                           ; $7bc5: $97
	ld   a, c                                        ; $7bc6: $79
	sub  a                                           ; $7bc7: $97
	ld   [hl], a                                     ; $7bc8: $77
	ld   h, l                                        ; $7bc9: $65
	ld   d, [hl]                                     ; $7bca: $56
	sbc  c                                           ; $7bcb: $99
	adc  c                                           ; $7bcc: $89
	xor  e                                           ; $7bcd: $ab
	xor  c                                           ; $7bce: $a9
	adc  b                                           ; $7bcf: $88
	sbc  b                                           ; $7bd0: $98
	adc  b                                           ; $7bd1: $88
	adc  b                                           ; $7bd2: $88
	add  a                                           ; $7bd3: $87
	ld   h, [hl]                                     ; $7bd4: $66
	ld   d, l                                        ; $7bd5: $55
	ld   l, d                                        ; $7bd6: $6a
	xor  c                                           ; $7bd7: $a9
	sbc  c                                           ; $7bd8: $99
	xor  c                                           ; $7bd9: $a9
	xor  b                                           ; $7bda: $a8
	sbc  b                                           ; $7bdb: $98
	ld   a, b                                        ; $7bdc: $78
	adc  c                                           ; $7bdd: $89
	add  a                                           ; $7bde: $87
	halt                                             ; $7bdf: $76
	ld   h, l                                        ; $7be0: $65
	ld   h, [hl]                                     ; $7be1: $66
	sbc  c                                           ; $7be2: $99
	sbc  b                                           ; $7be3: $98
	sbc  e                                           ; $7be4: $9b
	sbc  b                                           ; $7be5: $98
	adc  b                                           ; $7be6: $88
	sub  a                                           ; $7be7: $97
	ld   a, b                                        ; $7be8: $78
	adc  b                                           ; $7be9: $88
	adc  c                                           ; $7bea: $89
	add  a                                           ; $7beb: $87
	ld   d, [hl]                                     ; $7bec: $56
	ld   h, a                                        ; $7bed: $67
	sbc  c                                           ; $7bee: $99
	ld   a, b                                        ; $7bef: $78
	xor  e                                           ; $7bf0: $ab
	sbc  c                                           ; $7bf1: $99
	ld   a, c                                        ; $7bf2: $79
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	adc  b                                           ; $7bf5: $88
	add  a                                           ; $7bf6: $87
	halt                                             ; $7bf7: $76
	ld   d, [hl]                                     ; $7bf8: $56
	ld   e, b                                        ; $7bf9: $58
	sbc  b                                           ; $7bfa: $98
	ld   a, c                                        ; $7bfb: $79
	xor  d                                           ; $7bfc: $aa
	sbc  b                                           ; $7bfd: $98
	adc  c                                           ; $7bfe: $89
	ld   [hl], a                                     ; $7bff: $77
	adc  c                                           ; $7c00: $89
	sbc  b                                           ; $7c01: $98
	ld   [hl], a                                     ; $7c02: $77
	ld   [hl], l                                     ; $7c03: $75
	ld   d, [hl]                                     ; $7c04: $56
	ld   l, b                                        ; $7c05: $68
	xor  b                                           ; $7c06: $a8
	adc  d                                           ; $7c07: $8a
	xor  d                                           ; $7c08: $aa
	sbc  c                                           ; $7c09: $99
	sbc  b                                           ; $7c0a: $98
	ld   a, b                                        ; $7c0b: $78
	adc  b                                           ; $7c0c: $88
	add  a                                           ; $7c0d: $87
	ld   [hl], a                                     ; $7c0e: $77
	ld   [hl], l                                     ; $7c0f: $75
	ld   h, [hl]                                     ; $7c10: $66
	ld   l, b                                        ; $7c11: $68
	adc  b                                           ; $7c12: $88
	sbc  c                                           ; $7c13: $99
	sbc  c                                           ; $7c14: $99
	sbc  b                                           ; $7c15: $98
	adc  b                                           ; $7c16: $88
	ld   a, b                                        ; $7c17: $78
	adc  b                                           ; $7c18: $88
	adc  c                                           ; $7c19: $89
	add  a                                           ; $7c1a: $87
	halt                                             ; $7c1b: $76
	ld   h, [hl]                                     ; $7c1c: $66
	ld   l, b                                        ; $7c1d: $68
	xor  b                                           ; $7c1e: $a8
	adc  c                                           ; $7c1f: $89
	sbc  d                                           ; $7c20: $9a
	sbc  b                                           ; $7c21: $98
	sbc  c                                           ; $7c22: $99
	adc  b                                           ; $7c23: $88
	adc  c                                           ; $7c24: $89
	adc  c                                           ; $7c25: $89
	adc  b                                           ; $7c26: $88
	add  [hl]                                        ; $7c27: $86
	ld   h, [hl]                                     ; $7c28: $66
	ld   d, [hl]                                     ; $7c29: $56
	sbc  d                                           ; $7c2a: $9a
	sbc  c                                           ; $7c2b: $99
	sbc  d                                           ; $7c2c: $9a
	sbc  c                                           ; $7c2d: $99
	sbc  c                                           ; $7c2e: $99
	adc  b                                           ; $7c2f: $88
	adc  c                                           ; $7c30: $89
	adc  b                                           ; $7c31: $88
	adc  b                                           ; $7c32: $88
	add  a                                           ; $7c33: $87
	ld   h, [hl]                                     ; $7c34: $66
	ld   h, l                                        ; $7c35: $65
	ld   a, d                                        ; $7c36: $7a
	sbc  b                                           ; $7c37: $98
	adc  c                                           ; $7c38: $89
	sbc  c                                           ; $7c39: $99
	adc  c                                           ; $7c3a: $89
	sbc  b                                           ; $7c3b: $98
	adc  b                                           ; $7c3c: $88
	adc  c                                           ; $7c3d: $89
	adc  b                                           ; $7c3e: $88
	adc  b                                           ; $7c3f: $88
	halt                                             ; $7c40: $76
	ld   h, [hl]                                     ; $7c41: $66
	ld   h, a                                        ; $7c42: $67
	sbc  c                                           ; $7c43: $99
	adc  b                                           ; $7c44: $88
	sbc  d                                           ; $7c45: $9a
	sbc  b                                           ; $7c46: $98
	adc  b                                           ; $7c47: $88
	adc  b                                           ; $7c48: $88
	adc  c                                           ; $7c49: $89
	sbc  b                                           ; $7c4a: $98
	adc  b                                           ; $7c4b: $88
	sub  a                                           ; $7c4c: $97
	halt                                             ; $7c4d: $76
	halt                                             ; $7c4e: $76
	ld   l, c                                        ; $7c4f: $69
	sbc  c                                           ; $7c50: $99
	sbc  b                                           ; $7c51: $98
	sbc  c                                           ; $7c52: $99
	adc  c                                           ; $7c53: $89
	adc  c                                           ; $7c54: $89
	adc  b                                           ; $7c55: $88
	adc  b                                           ; $7c56: $88
	adc  b                                           ; $7c57: $88
	adc  b                                           ; $7c58: $88
	add  a                                           ; $7c59: $87
	ld   h, [hl]                                     ; $7c5a: $66
	halt                                             ; $7c5b: $76
	ld   a, b                                        ; $7c5c: $78
	xor  c                                           ; $7c5d: $a9
	adc  b                                           ; $7c5e: $88
	xor  c                                           ; $7c5f: $a9
	adc  b                                           ; $7c60: $88
	adc  c                                           ; $7c61: $89
	add  a                                           ; $7c62: $87
	adc  b                                           ; $7c63: $88
	sbc  b                                           ; $7c64: $98
	adc  c                                           ; $7c65: $89
	add  a                                           ; $7c66: $87
	ld   h, a                                        ; $7c67: $67
	halt                                             ; $7c68: $76
	ld   a, b                                        ; $7c69: $78
	sbc  b                                           ; $7c6a: $98
	adc  b                                           ; $7c6b: $88
	sbc  b                                           ; $7c6c: $98
	adc  b                                           ; $7c6d: $88
	adc  c                                           ; $7c6e: $89
	adc  b                                           ; $7c6f: $88
	adc  b                                           ; $7c70: $88
	adc  b                                           ; $7c71: $88
	adc  b                                           ; $7c72: $88
	add  a                                           ; $7c73: $87
	ld   [hl], a                                     ; $7c74: $77
	halt                                             ; $7c75: $76
	ld   a, c                                        ; $7c76: $79
	sbc  b                                           ; $7c77: $98
	adc  c                                           ; $7c78: $89
	sbc  c                                           ; $7c79: $99
	adc  b                                           ; $7c7a: $88
	sbc  c                                           ; $7c7b: $99
	add  a                                           ; $7c7c: $87
	sbc  b                                           ; $7c7d: $98
	adc  b                                           ; $7c7e: $88
	adc  c                                           ; $7c7f: $89
	add  a                                           ; $7c80: $87
	ld   [hl], a                                     ; $7c81: $77
	ld   [hl], a                                     ; $7c82: $77
	ld   a, b                                        ; $7c83: $78
	sbc  b                                           ; $7c84: $98
	adc  c                                           ; $7c85: $89
	sbc  b                                           ; $7c86: $98
	adc  b                                           ; $7c87: $88
	sbc  c                                           ; $7c88: $99
	adc  b                                           ; $7c89: $88
	adc  c                                           ; $7c8a: $89
	sbc  b                                           ; $7c8b: $98
	adc  c                                           ; $7c8c: $89
	add  a                                           ; $7c8d: $87
	ld   [hl], a                                     ; $7c8e: $77
	add  a                                           ; $7c8f: $87
	ld   [hl], a                                     ; $7c90: $77
	adc  c                                           ; $7c91: $89
	adc  b                                           ; $7c92: $88
	adc  b                                           ; $7c93: $88
	sbc  b                                           ; $7c94: $98
	adc  c                                           ; $7c95: $89
	sbc  b                                           ; $7c96: $98
	adc  b                                           ; $7c97: $88
	sbc  c                                           ; $7c98: $99
	adc  b                                           ; $7c99: $88
	adc  b                                           ; $7c9a: $88
	add  a                                           ; $7c9b: $87
	ld   [hl], a                                     ; $7c9c: $77
	ld   [hl], a                                     ; $7c9d: $77
	adc  b                                           ; $7c9e: $88
	adc  b                                           ; $7c9f: $88
	adc  b                                           ; $7ca0: $88
	sbc  b                                           ; $7ca1: $98
	adc  b                                           ; $7ca2: $88
	adc  b                                           ; $7ca3: $88
	adc  b                                           ; $7ca4: $88
	adc  c                                           ; $7ca5: $89
	sbc  b                                           ; $7ca6: $98
	sbc  b                                           ; $7ca7: $98
	adc  b                                           ; $7ca8: $88
	add  a                                           ; $7ca9: $87
	ld   [hl], a                                     ; $7caa: $77
	ld   a, b                                        ; $7cab: $78
	adc  c                                           ; $7cac: $89
	adc  b                                           ; $7cad: $88
	adc  b                                           ; $7cae: $88
	adc  b                                           ; $7caf: $88
	adc  b                                           ; $7cb0: $88
	adc  b                                           ; $7cb1: $88
	adc  b                                           ; $7cb2: $88
	adc  b                                           ; $7cb3: $88
	adc  b                                           ; $7cb4: $88
	adc  b                                           ; $7cb5: $88
	adc  b                                           ; $7cb6: $88
	adc  b                                           ; $7cb7: $88
	adc  b                                           ; $7cb8: $88
	adc  b                                           ; $7cb9: $88
	adc  b                                           ; $7cba: $88
	adc  b                                           ; $7cbb: $88
	adc  b                                           ; $7cbc: $88
	adc  b                                           ; $7cbd: $88
	adc  b                                           ; $7cbe: $88
	sbc  b                                           ; $7cbf: $98
	adc  b                                           ; $7cc0: $88
	adc  b                                           ; $7cc1: $88
	adc  b                                           ; $7cc2: $88
	adc  b                                           ; $7cc3: $88
	adc  b                                           ; $7cc4: $88
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
	adc  b                                           ; $7cd5: $88
	adc  b                                           ; $7cd6: $88
	adc  b                                           ; $7cd7: $88
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

Call_0e9_7d32:
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
	add  a                                           ; $7df0: $87
	ld   a, b                                        ; $7df1: $78
	adc  b                                           ; $7df2: $88
	adc  b                                           ; $7df3: $88
	adc  c                                           ; $7df4: $89
	sbc  b                                           ; $7df5: $98
	adc  b                                           ; $7df6: $88
	ld   [hl], a                                     ; $7df7: $77
	ld   [hl], a                                     ; $7df8: $77
	ld   [hl], a                                     ; $7df9: $77
	ld   a, b                                        ; $7dfa: $78
	adc  c                                           ; $7dfb: $89
	adc  c                                           ; $7dfc: $89
	sbc  d                                           ; $7dfd: $9a
	sbc  b                                           ; $7dfe: $98
	ld   [hl], a                                     ; $7dff: $77
	halt                                             ; $7e00: $76
	ld   h, a                                        ; $7e01: $67
	ld   [hl], a                                     ; $7e02: $77
	ld   a, b                                        ; $7e03: $78
	adc  b                                           ; $7e04: $88
	sbc  d                                           ; $7e05: $9a
	xor  d                                           ; $7e06: $aa
	sbc  b                                           ; $7e07: $98
	halt                                             ; $7e08: $76
	ld   h, [hl]                                     ; $7e09: $66
	ld   [hl], a                                     ; $7e0a: $77
	ld   a, b                                        ; $7e0b: $78
	adc  b                                           ; $7e0c: $88
	adc  c                                           ; $7e0d: $89
	xor  d                                           ; $7e0e: $aa
	sbc  c                                           ; $7e0f: $99
	sbc  b                                           ; $7e10: $98
	ld   h, [hl]                                     ; $7e11: $66
	ld   h, [hl]                                     ; $7e12: $66
	ld   h, a                                        ; $7e13: $67
	adc  b                                           ; $7e14: $88
	adc  b                                           ; $7e15: $88
	adc  d                                           ; $7e16: $8a
	xor  d                                           ; $7e17: $aa
	xor  c                                           ; $7e18: $a9
	sbc  b                                           ; $7e19: $98
	ld   h, l                                        ; $7e1a: $65
	ld   h, [hl]                                     ; $7e1b: $66
	ld   h, a                                        ; $7e1c: $67
	adc  b                                           ; $7e1d: $88
	adc  b                                           ; $7e1e: $88
	sbc  d                                           ; $7e1f: $9a
	cp   d                                           ; $7e20: $ba
	adc  c                                           ; $7e21: $89
	sub  [hl]                                        ; $7e22: $96
	ld   d, l                                        ; $7e23: $55
	ld   h, [hl]                                     ; $7e24: $66
	ld   h, a                                        ; $7e25: $67
	sbc  c                                           ; $7e26: $99
	adc  c                                           ; $7e27: $89
	xor  e                                           ; $7e28: $ab
	xor  b                                           ; $7e29: $a8
	sbc  c                                           ; $7e2a: $99
	ld   h, l                                        ; $7e2b: $65
	ld   d, [hl]                                     ; $7e2c: $56
	ld   h, [hl]                                     ; $7e2d: $66
	ld   a, c                                        ; $7e2e: $79
	adc  c                                           ; $7e2f: $89
	xor  d                                           ; $7e30: $aa
	xor  d                                           ; $7e31: $aa
	sbc  c                                           ; $7e32: $99
	sub  [hl]                                        ; $7e33: $96
	ld   d, [hl]                                     ; $7e34: $56
	ld   h, [hl]                                     ; $7e35: $66
	ld   h, a                                        ; $7e36: $67
	sbc  c                                           ; $7e37: $99
	sbc  c                                           ; $7e38: $99
	cp   e                                           ; $7e39: $bb
	xor  c                                           ; $7e3a: $a9
	sbc  c                                           ; $7e3b: $99
	ld   h, l                                        ; $7e3c: $65
	ld   h, [hl]                                     ; $7e3d: $66
	ld   d, [hl]                                     ; $7e3e: $56
	ld   a, b                                        ; $7e3f: $78
	sbc  c                                           ; $7e40: $99
	sbc  e                                           ; $7e41: $9b
	cp   c                                           ; $7e42: $b9
	xor  c                                           ; $7e43: $a9
	halt                                             ; $7e44: $76
	ld   d, [hl]                                     ; $7e45: $56
	ld   h, l                                        ; $7e46: $65
	ld   a, b                                        ; $7e47: $78
	adc  b                                           ; $7e48: $88
	xor  e                                           ; $7e49: $ab
	cp   e                                           ; $7e4a: $bb
	sbc  d                                           ; $7e4b: $9a
	sub  [hl]                                        ; $7e4c: $96
	ld   d, [hl]                                     ; $7e4d: $56
	ld   h, l                                        ; $7e4e: $65
	ld   d, a                                        ; $7e4f: $57
	adc  b                                           ; $7e50: $88
	sbc  d                                           ; $7e51: $9a
	cp   e                                           ; $7e52: $bb
	xor  d                                           ; $7e53: $aa
	sub  a                                           ; $7e54: $97
	ld   d, [hl]                                     ; $7e55: $56
	ld   h, l                                        ; $7e56: $65
	ld   h, a                                        ; $7e57: $67
	ld   [hl], a                                     ; $7e58: $77
	sbc  e                                           ; $7e59: $9b
	cp   e                                           ; $7e5a: $bb
	xor  d                                           ; $7e5b: $aa
	sub  a                                           ; $7e5c: $97
	ld   d, [hl]                                     ; $7e5d: $56
	ld   h, h                                        ; $7e5e: $64
	ld   d, a                                        ; $7e5f: $57
	ld   a, b                                        ; $7e60: $78
	sbc  d                                           ; $7e61: $9a
	cp   d                                           ; $7e62: $ba
	xor  e                                           ; $7e63: $ab
	sub  a                                           ; $7e64: $97
	ld   h, [hl]                                     ; $7e65: $66
	ld   h, l                                        ; $7e66: $65
	ld   h, a                                        ; $7e67: $67
	ld   [hl], a                                     ; $7e68: $77
	sbc  h                                           ; $7e69: $9c
	cp   c                                           ; $7e6a: $b9
	xor  d                                           ; $7e6b: $aa
	add  [hl]                                        ; $7e6c: $86
	ld   h, [hl]                                     ; $7e6d: $66
	ld   d, l                                        ; $7e6e: $55
	ld   h, a                                        ; $7e6f: $67
	ld   a, b                                        ; $7e70: $78
	xor  e                                           ; $7e71: $ab
	xor  d                                           ; $7e72: $aa
	cp   c                                           ; $7e73: $b9
	halt                                             ; $7e74: $76
	ld   h, [hl]                                     ; $7e75: $66
	ld   d, l                                        ; $7e76: $55
	ld   [hl], a                                     ; $7e77: $77
	ld   a, c                                        ; $7e78: $79
	res  3, d                                        ; $7e79: $cb $9a
	cp   c                                           ; $7e7b: $b9
	halt                                             ; $7e7c: $76
	halt                                             ; $7e7d: $76
	ld   d, [hl]                                     ; $7e7e: $56
	ld   [hl], a                                     ; $7e7f: $77
	ld   a, d                                        ; $7e80: $7a
	cp   d                                           ; $7e81: $ba
	sbc  e                                           ; $7e82: $9b
	and  a                                           ; $7e83: $a7
	ld   h, a                                        ; $7e84: $67
	ld   [hl], l                                     ; $7e85: $75
	ld   d, a                                        ; $7e86: $57
	ld   [hl], a                                     ; $7e87: $77
	sbc  e                                           ; $7e88: $9b
	xor  d                                           ; $7e89: $aa
	cp   d                                           ; $7e8a: $ba
	halt                                             ; $7e8b: $76
	ld   [hl], a                                     ; $7e8c: $77
	ld   d, h                                        ; $7e8d: $54
	ld   [hl], a                                     ; $7e8e: $77
	ld   l, b                                        ; $7e8f: $68
	cp   d                                           ; $7e90: $ba
	sbc  c                                           ; $7e91: $99
	xor  c                                           ; $7e92: $a9
	ld   h, a                                        ; $7e93: $67
	ld   [hl], l                                     ; $7e94: $75
	ld   d, [hl]                                     ; $7e95: $56
	ld   [hl], a                                     ; $7e96: $77
	adc  e                                           ; $7e97: $8b
	xor  c                                           ; $7e98: $a9
	xor  d                                           ; $7e99: $aa
	add  [hl]                                        ; $7e9a: $86
	ld   [hl], a                                     ; $7e9b: $77
	ld   h, [hl]                                     ; $7e9c: $66
	ld   h, a                                        ; $7e9d: $67
	ld   a, d                                        ; $7e9e: $7a
	xor  d                                           ; $7e9f: $aa
	xor  d                                           ; $7ea0: $aa
	sbc  b                                           ; $7ea1: $98
	ld   [hl], a                                     ; $7ea2: $77
	ld   [hl], l                                     ; $7ea3: $75
	ld   d, a                                        ; $7ea4: $57
	ld   [hl], a                                     ; $7ea5: $77
	sbc  d                                           ; $7ea6: $9a
	sbc  c                                           ; $7ea7: $99
	xor  c                                           ; $7ea8: $a9
	halt                                             ; $7ea9: $76
	ld   [hl], a                                     ; $7eaa: $77
	ld   d, [hl]                                     ; $7eab: $56
	ld   [hl], a                                     ; $7eac: $77
	adc  d                                           ; $7ead: $8a
	xor  b                                           ; $7eae: $a8
	sbc  c                                           ; $7eaf: $99
	sub  a                                           ; $7eb0: $97
	ld   [hl], a                                     ; $7eb1: $77
	ld   h, [hl]                                     ; $7eb2: $66
	ld   h, a                                        ; $7eb3: $67
	adc  b                                           ; $7eb4: $88
	cp   c                                           ; $7eb5: $b9
	xor  d                                           ; $7eb6: $aa
	and  a                                           ; $7eb7: $a7
	ld   a, b                                        ; $7eb8: $78
	ld   h, [hl]                                     ; $7eb9: $66
	ld   h, a                                        ; $7eba: $67
	ld   a, b                                        ; $7ebb: $78
	cp   d                                           ; $7ebc: $ba
	adc  c                                           ; $7ebd: $89
	xor  c                                           ; $7ebe: $a9
	ld   a, b                                        ; $7ebf: $78
	add  l                                           ; $7ec0: $85
	ld   [hl], a                                     ; $7ec1: $77
	ld   a, b                                        ; $7ec2: $78
	sbc  e                                           ; $7ec3: $9b
	sbc  c                                           ; $7ec4: $99
	sbc  b                                           ; $7ec5: $98
	halt                                             ; $7ec6: $76
	add  a                                           ; $7ec7: $87
	ld   h, a                                        ; $7ec8: $67
	ld   a, b                                        ; $7ec9: $78
	sbc  e                                           ; $7eca: $9b
	adc  b                                           ; $7ecb: $88
	sbc  c                                           ; $7ecc: $99
	halt                                             ; $7ecd: $76
	ld   [hl], a                                     ; $7ece: $77
	ld   h, [hl]                                     ; $7ecf: $66
	ld   a, b                                        ; $7ed0: $78
	xor  e                                           ; $7ed1: $ab
	sbc  c                                           ; $7ed2: $99
	xor  c                                           ; $7ed3: $a9
	ld   [hl], a                                     ; $7ed4: $77
	halt                                             ; $7ed5: $76
	ld   h, [hl]                                     ; $7ed6: $66
	ld   a, b                                        ; $7ed7: $78
	sbc  e                                           ; $7ed8: $9b
	xor  c                                           ; $7ed9: $a9
	sbc  d                                           ; $7eda: $9a
	sub  [hl]                                        ; $7edb: $96
	ld   [hl], a                                     ; $7edc: $77
	ld   h, [hl]                                     ; $7edd: $66
	ld   a, b                                        ; $7ede: $78
	xor  e                                           ; $7edf: $ab
	xor  c                                           ; $7ee0: $a9
	xor  b                                           ; $7ee1: $a8
	add  a                                           ; $7ee2: $87
	ld   h, [hl]                                     ; $7ee3: $66
	ld   h, a                                        ; $7ee4: $67
	ld   h, a                                        ; $7ee5: $67
	sbc  d                                           ; $7ee6: $9a
	sbc  c                                           ; $7ee7: $99
	cp   c                                           ; $7ee8: $b9
	ld   [hl], a                                     ; $7ee9: $77
	sub  [hl]                                        ; $7eea: $96
	ld   d, a                                        ; $7eeb: $57
	ld   h, a                                        ; $7eec: $67
	sbc  e                                           ; $7eed: $9b
	sbc  b                                           ; $7eee: $98
	xor  b                                           ; $7eef: $a8
	add  a                                           ; $7ef0: $87
	ld   [hl], a                                     ; $7ef1: $77
	ld   h, a                                        ; $7ef2: $67
	ld   [hl], a                                     ; $7ef3: $77
	sbc  e                                           ; $7ef4: $9b
	sbc  b                                           ; $7ef5: $98
	sbc  c                                           ; $7ef6: $99
	ld   [hl], a                                     ; $7ef7: $77
	ld   [hl], a                                     ; $7ef8: $77
	ld   h, [hl]                                     ; $7ef9: $66
	ld   a, b                                        ; $7efa: $78
	xor  c                                           ; $7efb: $a9
	sbc  d                                           ; $7efc: $9a
	sbc  c                                           ; $7efd: $99
	add  a                                           ; $7efe: $87
	halt                                             ; $7eff: $76
	ld   [hl], a                                     ; $7f00: $77
	ld   l, b                                        ; $7f01: $68
	cp   c                                           ; $7f02: $b9
	ld   a, d                                        ; $7f03: $7a
	and  a                                           ; $7f04: $a7
	add  a                                           ; $7f05: $87
	halt                                             ; $7f06: $76
	halt                                             ; $7f07: $76
	ld   a, d                                        ; $7f08: $7a
	sbc  c                                           ; $7f09: $99
	sbc  c                                           ; $7f0a: $99
	sbc  b                                           ; $7f0b: $98
	adc  b                                           ; $7f0c: $88
	ld   h, [hl]                                     ; $7f0d: $66
	halt                                             ; $7f0e: $76
	adc  d                                           ; $7f0f: $8a
	sbc  c                                           ; $7f10: $99

Jump_0e9_7f11:
	sbc  c                                           ; $7f11: $99
	adc  b                                           ; $7f12: $88
	add  a                                           ; $7f13: $87
	ld   h, [hl]                                     ; $7f14: $66
	ld   h, a                                        ; $7f15: $67
	adc  d                                           ; $7f16: $8a
	sbc  c                                           ; $7f17: $99
	xor  d                                           ; $7f18: $aa
	sbc  b                                           ; $7f19: $98
	halt                                             ; $7f1a: $76
	ld   h, [hl]                                     ; $7f1b: $66
	ld   [hl], a                                     ; $7f1c: $77
	sbc  d                                           ; $7f1d: $9a
	adc  c                                           ; $7f1e: $89
	sbc  b                                           ; $7f1f: $98
	sub  a                                           ; $7f20: $97
	ld   h, a                                        ; $7f21: $67
	halt                                             ; $7f22: $76
	ld   a, c                                        ; $7f23: $79
	xor  c                                           ; $7f24: $a9
	adc  c                                           ; $7f25: $89
	sbc  b                                           ; $7f26: $98
	add  a                                           ; $7f27: $87
	ld   h, [hl]                                     ; $7f28: $66
	ld   [hl], a                                     ; $7f29: $77
	ld   a, d                                        ; $7f2a: $7a
	sbc  c                                           ; $7f2b: $99
	sbc  c                                           ; $7f2c: $99
	adc  b                                           ; $7f2d: $88
	add  [hl]                                        ; $7f2e: $86
	ld   [hl], a                                     ; $7f2f: $77
	ld   h, a                                        ; $7f30: $67
	sbc  d                                           ; $7f31: $9a
	sbc  b                                           ; $7f32: $98
	sbc  c                                           ; $7f33: $99
	adc  b                                           ; $7f34: $88
	halt                                             ; $7f35: $76
	ld   [hl], a                                     ; $7f36: $77
	ld   a, b                                        ; $7f37: $78
	xor  c                                           ; $7f38: $a9
	adc  d                                           ; $7f39: $8a
	sbc  b                                           ; $7f3a: $98
	adc  b                                           ; $7f3b: $88
	ld   h, [hl]                                     ; $7f3c: $66
	halt                                             ; $7f3d: $76
	ld   a, c                                        ; $7f3e: $79
	xor  c                                           ; $7f3f: $a9
	adc  c                                           ; $7f40: $89

Jump_0e9_7f41:
	xor  b                                           ; $7f41: $a8
	ld   [hl], a                                     ; $7f42: $77
	ld   h, a                                        ; $7f43: $67
	ld   h, a                                        ; $7f44: $67
	sbc  d                                           ; $7f45: $9a
	adc  c                                           ; $7f46: $89
	and  a                                           ; $7f47: $a7
	adc  b                                           ; $7f48: $88
	halt                                             ; $7f49: $76
	ld   [hl], a                                     ; $7f4a: $77
	ld   l, c                                        ; $7f4b: $69
	sbc  b                                           ; $7f4c: $98
	sbc  c                                           ; $7f4d: $99
	sbc  b                                           ; $7f4e: $98
	ld   [hl], a                                     ; $7f4f: $77
	ld   [hl], a                                     ; $7f50: $77
	ld   h, a                                        ; $7f51: $67
	adc  c                                           ; $7f52: $89
	xor  b                                           ; $7f53: $a8
	xor  b                                           ; $7f54: $a8
	adc  c                                           ; $7f55: $89
	halt                                             ; $7f56: $76
	ld   [hl], a                                     ; $7f57: $77
	ld   h, a                                        ; $7f58: $67
	sbc  c                                           ; $7f59: $99
	adc  c                                           ; $7f5a: $89
	xor  b                                           ; $7f5b: $a8
	adc  b                                           ; $7f5c: $88
	halt                                             ; $7f5d: $76
	ld   [hl], a                                     ; $7f5e: $77
	ld   a, d                                        ; $7f5f: $7a
	sbc  c                                           ; $7f60: $99
	sbc  d                                           ; $7f61: $9a
	add  a                                           ; $7f62: $87
	sub  a                                           ; $7f63: $97
	ld   h, a                                        ; $7f64: $67
	ld   [hl], a                                     ; $7f65: $77
	adc  d                                           ; $7f66: $8a
	sbc  b                                           ; $7f67: $98
	xor  c                                           ; $7f68: $a9
	sbc  b                                           ; $7f69: $98
	halt                                             ; $7f6a: $76
	ld   [hl], a                                     ; $7f6b: $77
	ld   l, b                                        ; $7f6c: $68
	xor  c                                           ; $7f6d: $a9
	adc  c                                           ; $7f6e: $89
	sbc  b                                           ; $7f6f: $98
	sub  a                                           ; $7f70: $97
	ld   h, a                                        ; $7f71: $67
	halt                                             ; $7f72: $76
	adc  d                                           ; $7f73: $8a
	sbc  b                                           ; $7f74: $98
	sbc  d                                           ; $7f75: $9a
	sbc  b                                           ; $7f76: $98
	halt                                             ; $7f77: $76
	ld   [hl], a                                     ; $7f78: $77
	ld   h, a                                        ; $7f79: $67
	xor  c                                           ; $7f7a: $a9
	adc  d                                           ; $7f7b: $8a
	xor  b                                           ; $7f7c: $a8
	sbc  b                                           ; $7f7d: $98
	ld   h, [hl]                                     ; $7f7e: $66
	ld   [hl], a                                     ; $7f7f: $77
	ld   a, c                                        ; $7f80: $79
	sbc  c                                           ; $7f81: $99
	sbc  c                                           ; $7f82: $99
	sbc  d                                           ; $7f83: $9a
	add  [hl]                                        ; $7f84: $86
	ld   [hl], a                                     ; $7f85: $77
	ld   h, a                                        ; $7f86: $67
	sbc  c                                           ; $7f87: $99
	sbc  c                                           ; $7f88: $99
	sbc  b                                           ; $7f89: $98
	adc  b                                           ; $7f8a: $88
	halt                                             ; $7f8b: $76
	ld   [hl], a                                     ; $7f8c: $77
	ld   a, b                                        ; $7f8d: $78
	sbc  b                                           ; $7f8e: $98
	adc  c                                           ; $7f8f: $89
	sbc  b                                           ; $7f90: $98
	ld   a, b                                        ; $7f91: $78
	ld   h, [hl]                                     ; $7f92: $66
	ld   [hl], a                                     ; $7f93: $77
	adc  d                                           ; $7f94: $8a
	adc  c                                           ; $7f95: $89
	adc  c                                           ; $7f96: $89
	sbc  c                                           ; $7f97: $99
	add  [hl]                                        ; $7f98: $86
	ld   [hl], a                                     ; $7f99: $77
	ld   l, b                                        ; $7f9a: $68
	adc  d                                           ; $7f9b: $8a
	sbc  c                                           ; $7f9c: $99
	sbc  b                                           ; $7f9d: $98
	add  a                                           ; $7f9e: $87
	ld   h, [hl]                                     ; $7f9f: $66
	halt                                             ; $7fa0: $76
	ld   a, c                                        ; $7fa1: $79
	sbc  c                                           ; $7fa2: $99
	sbc  c                                           ; $7fa3: $99
	adc  b                                           ; $7fa4: $88
	sub  a                                           ; $7fa5: $97
	ld   h, a                                        ; $7fa6: $67
	ld   [hl], a                                     ; $7fa7: $77
	adc  c                                           ; $7fa8: $89
	sbc  b                                           ; $7fa9: $98
	sbc  c                                           ; $7faa: $99
	adc  b                                           ; $7fab: $88
	ld   [hl], a                                     ; $7fac: $77
	ld   [hl], a                                     ; $7fad: $77
	ld   a, c                                        ; $7fae: $79
	sbc  c                                           ; $7faf: $99
	sbc  c                                           ; $7fb0: $99
	sbc  b                                           ; $7fb1: $98
	sub  a                                           ; $7fb2: $97
	ld   h, a                                        ; $7fb3: $67
	ld   [hl], a                                     ; $7fb4: $77
	sbc  c                                           ; $7fb5: $99
	sbc  b                                           ; $7fb6: $98
	adc  c                                           ; $7fb7: $89
	adc  b                                           ; $7fb8: $88
	halt                                             ; $7fb9: $76
	ld   [hl], a                                     ; $7fba: $77
	ld   l, b                                        ; $7fbb: $68
	sbc  c                                           ; $7fbc: $99
	adc  c                                           ; $7fbd: $89
	sbc  b                                           ; $7fbe: $98
	add  a                                           ; $7fbf: $87
	ld   h, a                                        ; $7fc0: $67
	ld   [hl], a                                     ; $7fc1: $77
	adc  c                                           ; $7fc2: $89
	sbc  b                                           ; $7fc3: $98
	adc  c                                           ; $7fc4: $89
	adc  c                                           ; $7fc5: $89
	adc  b                                           ; $7fc6: $88
	ld   h, a                                        ; $7fc7: $67
	ld   [hl], a                                     ; $7fc8: $77
	adc  b                                           ; $7fc9: $88
	adc  c                                           ; $7fca: $89
	adc  c                                           ; $7fcb: $89
	sbc  c                                           ; $7fcc: $99
	ld   [hl], a                                     ; $7fcd: $77
	add  [hl]                                        ; $7fce: $86
	ld   a, c                                        ; $7fcf: $79
	sbc  b                                           ; $7fd0: $98
	adc  c                                           ; $7fd1: $89
	adc  b                                           ; $7fd2: $88
	sub  a                                           ; $7fd3: $97
	ld   [hl], a                                     ; $7fd4: $77
	halt                                             ; $7fd5: $76
	adc  b                                           ; $7fd6: $88
	adc  b                                           ; $7fd7: $88
	adc  c                                           ; $7fd8: $89
	sbc  c                                           ; $7fd9: $99
	add  a                                           ; $7fda: $87
	ld   [hl], a                                     ; $7fdb: $77
	ld   [hl], a                                     ; $7fdc: $77
	adc  b                                           ; $7fdd: $88
	adc  b                                           ; $7fde: $88
	sbc  b                                           ; $7fdf: $98
	sbc  b                                           ; $7fe0: $98
	ld   [hl], a                                     ; $7fe1: $77
	ld   [hl], a                                     ; $7fe2: $77
	ld   a, b                                        ; $7fe3: $78
	adc  b                                           ; $7fe4: $88
	adc  c                                           ; $7fe5: $89
	xor  b                                           ; $7fe6: $a8
	adc  b                                           ; $7fe7: $88
	ld   [hl], a                                     ; $7fe8: $77
	ld   [hl], a                                     ; $7fe9: $77
	ld   a, c                                        ; $7fea: $79
	sbc  b                                           ; $7feb: $98
	sbc  c                                           ; $7fec: $99
	sbc  c                                           ; $7fed: $99
	add  a                                           ; $7fee: $87
	ld   [hl], a                                     ; $7fef: $77
	ld   [hl], a                                     ; $7ff0: $77
	adc  b                                           ; $7ff1: $88
	adc  c                                           ; $7ff2: $89
	adc  c                                           ; $7ff3: $89
	sbc  c                                           ; $7ff4: $99
	add  a                                           ; $7ff5: $87
	ld   [hl], a                                     ; $7ff6: $77
	ld   [hl], a                                     ; $7ff7: $77
	sbc  b                                           ; $7ff8: $98
	adc  c                                           ; $7ff9: $89
	adc  c                                           ; $7ffa: $89
	sbc  b                                           ; $7ffb: $98
	ld   [hl], a                                     ; $7ffc: $77
	add  a                                           ; $7ffd: $87
	ld   a, c                                        ; $7ffe: $79
	sub  a                                           ; $7fff: $97
