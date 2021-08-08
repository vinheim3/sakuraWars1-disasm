; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0aa", ROMX[$4000], BANK[$aa]

	ld   de, $0311                                   ; $4000: $11 $11 $03
	ld   d, e                                        ; $4003: $53
	ld   d, [hl]                                     ; $4004: $56
	ld   a, c                                        ; $4005: $79
	xor  h                                           ; $4006: $ac
	cp   h                                           ; $4007: $bc
	rst  $38                                         ; $4008: $ff
	rst  $38                                         ; $4009: $ff
	xor  $ff                                         ; $400a: $ee $ff
	db   $ed                                         ; $400c: $ed
	call z, $daee                                    ; $400d: $cc $ee $da
	xor  d                                           ; $4010: $aa
	sbc  c                                           ; $4011: $99
	xor  c                                           ; $4012: $a9
	adc  b                                           ; $4013: $88
	ld   [hl], a                                     ; $4014: $77
	halt                                             ; $4015: $76
	ld   h, [hl]                                     ; $4016: $66
	ld   b, l                                        ; $4017: $45
	ld   d, e                                        ; $4018: $53
	inc  sp                                          ; $4019: $33
	ld   [hl-], a                                    ; $401a: $32
	ld   hl, $4314                                   ; $401b: $21 $14 $43
	inc  [hl]                                        ; $401e: $34
	ld   b, l                                        ; $401f: $45
	ld   [hl], a                                     ; $4020: $77
	adc  c                                           ; $4021: $89
	xor  h                                           ; $4022: $ac
	call $eeed                                       ; $4023: $cd $ed $ee
	rst  $28                                         ; $4026: $ef
	xor  $ed                                         ; $4027: $ee $ed
	db   $dd                                         ; $4029: $dd
	call z, $bacb                                    ; $402a: $cc $cb $ba
	sbc  b                                           ; $402d: $98
	sbc  b                                           ; $402e: $98
	halt                                             ; $402f: $76
	halt                                             ; $4030: $76
	ld   d, l                                        ; $4031: $55
	ld   b, l                                        ; $4032: $45
	ld   b, d                                        ; $4033: $42
	inc  [hl]                                        ; $4034: $34
	ld   sp, $1222                                   ; $4035: $31 $22 $12
	inc  hl                                          ; $4038: $23
	inc  sp                                          ; $4039: $33
	ld   b, l                                        ; $403a: $45
	halt                                             ; $403b: $76
	ld   a, c                                        ; $403c: $79
	xor  e                                           ; $403d: $ab
	sbc  $ee                                         ; $403e: $de $ee
	rst  $38                                         ; $4040: $ff
	rst  $38                                         ; $4041: $ff
	db   $ed                                         ; $4042: $ed
	db   $dd                                         ; $4043: $dd
	call c, $aacb                                    ; $4044: $dc $cb $aa
	xor  c                                           ; $4047: $a9
	ld   a, b                                        ; $4048: $78
	add  a                                           ; $4049: $87
	halt                                             ; $404a: $76
	ld   d, l                                        ; $404b: $55
	halt                                             ; $404c: $76
	dec  [hl]                                        ; $404d: $35
	ld   h, d                                        ; $404e: $62
	ld   [de], a                                     ; $404f: $12
	ld   [de], a                                     ; $4050: $12
	ld   de, $1111                                   ; $4051: $11 $11 $11
	ld   de, $bb37                                   ; $4054: $11 $37 $bb
	xor  h                                           ; $4057: $ac
	rst  $28                                         ; $4058: $ef
	rst  $38                                         ; $4059: $ff
	rst  $38                                         ; $405a: $ff
	rst  $38                                         ; $405b: $ff
	rst  $38                                         ; $405c: $ff
	cp   e                                           ; $405d: $bb
	db   $dd                                         ; $405e: $dd
	ret                                              ; $405f: $c9


	sbc  c                                           ; $4060: $99
	xor  e                                           ; $4061: $ab
	sub  a                                           ; $4062: $97
	ld   a, b                                        ; $4063: $78
	sub  l                                           ; $4064: $95
	ld   [hl-], a                                    ; $4065: $32
	ld   [hl-], a                                    ; $4066: $32
	ld   de, $1111                                   ; $4067: $11 $11 $11
	ld   de, $1211                                   ; $406a: $11 $11 $12
	ld   hl, $ee5b                                   ; $406d: $21 $5b $ee
	rst  $38                                         ; $4070: $ff
	rst  $38                                         ; $4071: $ff
	rst  $38                                         ; $4072: $ff
	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	sbc  $cc                                         ; $4075: $de $cc
	jp   z, $bcaa                                    ; $4077: $ca $aa $bc

	cp   e                                           ; $407a: $bb
	xor  d                                           ; $407b: $aa
	xor  b                                           ; $407c: $a8
	ld   d, c                                        ; $407d: $51
	ld   de, $1111                                   ; $407e: $11 $11 $11
	ld   de, $1111                                   ; $4081: $11 $11 $11
	inc  de                                          ; $4084: $13
	ld   [hl+], a                                    ; $4085: $22
	ld   a, l                                        ; $4086: $7d
	rst  $38                                         ; $4087: $ff
	rst  $38                                         ; $4088: $ff
	rst  $38                                         ; $4089: $ff
	rst  $38                                         ; $408a: $ff
	rst  $38                                         ; $408b: $ff
	rst  $38                                         ; $408c: $ff
	db   $fd                                         ; $408d: $fd
	sbc  e                                           ; $408e: $9b
	db   $dd                                         ; $408f: $dd
	xor  b                                           ; $4090: $a8
	xor  h                                           ; $4091: $ac
	db   $ec                                         ; $4092: $ec
	xor  b                                           ; $4093: $a8
	sbc  b                                           ; $4094: $98
	ld   h, c                                        ; $4095: $61
	ld   de, $1111                                   ; $4096: $11 $11 $11
	ld   de, $1111                                   ; $4099: $11 $11 $11
	ld   hl, $af24                                   ; $409c: $21 $24 $af
	rst  $38                                         ; $409f: $ff
	rst  $38                                         ; $40a0: $ff
	rst  $38                                         ; $40a1: $ff
	rst  $38                                         ; $40a2: $ff
	rst  $38                                         ; $40a3: $ff
	rst  $38                                         ; $40a4: $ff
	ret                                              ; $40a5: $c9


	xor  h                                           ; $40a6: $ac
	ld   [$ad99], a                                  ; $40a7: $ea $99 $ad
	jp   c, $8796                                    ; $40aa: $da $96 $87

	ld   h, d                                        ; $40ad: $62
	ld   de, $1111                                   ; $40ae: $11 $11 $11
	ld   de, $1111                                   ; $40b1: $11 $11 $11
	ld   de, $de6a                                   ; $40b4: $11 $6a $de
	rst  $38                                         ; $40b7: $ff
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	rst  $38                                         ; $40ba: $ff
	rst  $38                                         ; $40bb: $ff
	db   $fd                                         ; $40bc: $fd
	cp   h                                           ; $40bd: $bc
	res  7, b                                        ; $40be: $cb $b8
	adc  e                                           ; $40c0: $8b
	cp   h                                           ; $40c1: $bc
	sbc  c                                           ; $40c2: $99
	sbc  d                                           ; $40c3: $9a
	add  h                                           ; $40c4: $84
	ld   hl, $1111                                   ; $40c5: $21 $11 $11
	ld   de, $1111                                   ; $40c8: $11 $11 $11
	ld   de, $5813                                   ; $40cb: $11 $13 $58
	rst  JumpTable                                         ; $40ce: $df
	rst  $38                                         ; $40cf: $ff
	rst  $38                                         ; $40d0: $ff
	rst  $38                                         ; $40d1: $ff
	rst  $38                                         ; $40d2: $ff
	rst  $38                                         ; $40d3: $ff
	rst  $38                                         ; $40d4: $ff
	jp   z, $aaa9                                    ; $40d5: $ca $a9 $aa

	adc  c                                           ; $40d8: $89
	xor  h                                           ; $40d9: $ac
	cp   d                                           ; $40da: $ba
	add  a                                           ; $40db: $87
	add  [hl]                                        ; $40dc: $86
	ld   sp, $1111                                   ; $40dd: $31 $11 $11
	ld   de, $1111                                   ; $40e0: $11 $11 $11
	ld   de, $7a12                                   ; $40e3: $11 $12 $7a
	cp   [hl]                                        ; $40e6: $be
	rst  $38                                         ; $40e7: $ff
	rst  $38                                         ; $40e8: $ff
	rst  $38                                         ; $40e9: $ff
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	cp   $cc                                         ; $40ec: $fe $cc
	jp   z, $9988                                    ; $40ee: $ca $88 $99

	xor  c                                           ; $40f1: $a9
	sbc  c                                           ; $40f2: $99
	sbc  c                                           ; $40f3: $99
	ld   [hl], l                                     ; $40f4: $75
	ld   b, d                                        ; $40f5: $42
	ld   de, $1111                                   ; $40f6: $11 $11 $11
	ld   de, $1111                                   ; $40f9: $11 $11 $11
	inc  de                                          ; $40fc: $13
	ld   e, b                                        ; $40fd: $58
	xor  e                                           ; $40fe: $ab
	rst  $28                                         ; $40ff: $ef
	rst  $38                                         ; $4100: $ff
	rst  $38                                         ; $4101: $ff
	rst  $38                                         ; $4102: $ff
	rst  $38                                         ; $4103: $ff
	cp   $cc                                         ; $4104: $fe $cc
	jp   z, Jump_0aa_78a8                            ; $4106: $ca $a8 $78

	sbc  d                                           ; $4109: $9a
	adc  b                                           ; $410a: $88
	adc  c                                           ; $410b: $89
	adc  b                                           ; $410c: $88
	ld   [hl], l                                     ; $410d: $75
	ld   b, h                                        ; $410e: $44
	ld   b, e                                        ; $410f: $43
	ld   de, $1111                                   ; $4110: $11 $11 $11
	ld   de, $2411                                   ; $4113: $11 $11 $24
	ld   d, [hl]                                     ; $4116: $56
	ld   a, c                                        ; $4117: $79
	cp   l                                           ; $4118: $bd
	rst  $38                                         ; $4119: $ff
	rst  $38                                         ; $411a: $ff
	rst  $38                                         ; $411b: $ff
	rst  $38                                         ; $411c: $ff
	db   $fd                                         ; $411d: $fd
	call $87ec                                       ; $411e: $cd $ec $87
	ld   a, c                                        ; $4121: $79
	cp   c                                           ; $4122: $b9
	ld   [hl], a                                     ; $4123: $77
	ld   a, c                                        ; $4124: $79
	cp   e                                           ; $4125: $bb
	sub  [hl]                                        ; $4126: $96
	ld   d, [hl]                                     ; $4127: $56
	ld   h, l                                        ; $4128: $65
	ld   b, e                                        ; $4129: $43
	ld   de, $4235                                   ; $412a: $11 $35 $42
	ld   de, $6536                                   ; $412d: $11 $36 $65
	ld   b, h                                        ; $4130: $44
	ld   a, b                                        ; $4131: $78
	xor  c                                           ; $4132: $a9
	xor  d                                           ; $4133: $aa
	xor  e                                           ; $4134: $ab
	sbc  $dc                                         ; $4135: $de $dc
	cp   l                                           ; $4137: $bd
	sbc  $cb                                         ; $4138: $de $cb
	xor  h                                           ; $413a: $ac
	call c, $99a9                                    ; $413b: $dc $a9 $99
	sbc  d                                           ; $413e: $9a
	add  a                                           ; $413f: $87
	ld   [hl], a                                     ; $4140: $77
	ld   a, b                                        ; $4141: $78
	add  [hl]                                        ; $4142: $86
	ld   d, l                                        ; $4143: $55
	ld   l, b                                        ; $4144: $68
	halt                                             ; $4145: $76
	ld   b, h                                        ; $4146: $44
	ld   h, a                                        ; $4147: $67
	ld   [hl], a                                     ; $4148: $77
	ld   d, l                                        ; $4149: $55
	ld   h, a                                        ; $414a: $67
	adc  b                                           ; $414b: $88
	halt                                             ; $414c: $76
	ld   a, c                                        ; $414d: $79
	sbc  c                                           ; $414e: $99
	sbc  b                                           ; $414f: $98
	adc  d                                           ; $4150: $8a
	cp   d                                           ; $4151: $ba
	xor  d                                           ; $4152: $aa
	xor  d                                           ; $4153: $aa
	cp   d                                           ; $4154: $ba
	cp   d                                           ; $4155: $ba
	xor  c                                           ; $4156: $a9
	xor  c                                           ; $4157: $a9
	xor  c                                           ; $4158: $a9
	sbc  b                                           ; $4159: $98
	adc  b                                           ; $415a: $88
	adc  b                                           ; $415b: $88
	add  a                                           ; $415c: $87
	ld   [hl], a                                     ; $415d: $77
	adc  b                                           ; $415e: $88
	ld   [hl], a                                     ; $415f: $77
	ld   [hl], a                                     ; $4160: $77
	ld   a, b                                        ; $4161: $78
	ld   [hl], a                                     ; $4162: $77
	ld   [hl], a                                     ; $4163: $77
	ld   a, b                                        ; $4164: $78
	adc  b                                           ; $4165: $88
	add  a                                           ; $4166: $87
	adc  b                                           ; $4167: $88
	adc  c                                           ; $4168: $89
	adc  b                                           ; $4169: $88
	sbc  c                                           ; $416a: $99
	sbc  c                                           ; $416b: $99
	adc  b                                           ; $416c: $88
	adc  c                                           ; $416d: $89
	adc  b                                           ; $416e: $88
	ld   [hl], a                                     ; $416f: $77
	ld   [hl], a                                     ; $4170: $77
	ld   [hl], a                                     ; $4171: $77
	ld   [hl], a                                     ; $4172: $77
	ld   [hl], a                                     ; $4173: $77
	ld   [hl], a                                     ; $4174: $77
	ld   [hl], a                                     ; $4175: $77
	ld   [hl], a                                     ; $4176: $77
	adc  b                                           ; $4177: $88
	adc  b                                           ; $4178: $88
	adc  b                                           ; $4179: $88
	adc  b                                           ; $417a: $88
	adc  b                                           ; $417b: $88
	adc  b                                           ; $417c: $88
	adc  c                                           ; $417d: $89
	adc  c                                           ; $417e: $89
	adc  b                                           ; $417f: $88
	sbc  b                                           ; $4180: $98
	adc  c                                           ; $4181: $89
	sbc  b                                           ; $4182: $98
	adc  c                                           ; $4183: $89
	sbc  b                                           ; $4184: $98
	adc  b                                           ; $4185: $88
	adc  b                                           ; $4186: $88
	add  a                                           ; $4187: $87
	ld   [hl], a                                     ; $4188: $77
	ld   [hl], a                                     ; $4189: $77
	ld   [hl], a                                     ; $418a: $77
	ld   [hl], a                                     ; $418b: $77
	ld   [hl], a                                     ; $418c: $77
	ld   [hl], a                                     ; $418d: $77
	ld   [hl], a                                     ; $418e: $77
	ld   a, b                                        ; $418f: $78
	adc  b                                           ; $4190: $88
	adc  b                                           ; $4191: $88
	adc  b                                           ; $4192: $88
	adc  b                                           ; $4193: $88
	adc  b                                           ; $4194: $88
	adc  b                                           ; $4195: $88
	adc  b                                           ; $4196: $88
	sbc  c                                           ; $4197: $99
	sbc  c                                           ; $4198: $99
	adc  b                                           ; $4199: $88
	adc  b                                           ; $419a: $88
	adc  b                                           ; $419b: $88
	adc  b                                           ; $419c: $88
	adc  b                                           ; $419d: $88
	add  a                                           ; $419e: $87
	ld   [hl], a                                     ; $419f: $77
	ld   [hl], a                                     ; $41a0: $77
	ld   [hl], a                                     ; $41a1: $77
	ld   [hl], a                                     ; $41a2: $77
	ld   [hl], a                                     ; $41a3: $77
	ld   [hl], a                                     ; $41a4: $77
	ld   [hl], a                                     ; $41a5: $77
	ld   [hl], a                                     ; $41a6: $77
	ld   [hl], a                                     ; $41a7: $77
	ld   [hl], a                                     ; $41a8: $77
	adc  b                                           ; $41a9: $88
	adc  b                                           ; $41aa: $88
	adc  b                                           ; $41ab: $88
	adc  b                                           ; $41ac: $88
	sbc  c                                           ; $41ad: $99
	adc  b                                           ; $41ae: $88
	sbc  c                                           ; $41af: $99
	sbc  c                                           ; $41b0: $99
	adc  b                                           ; $41b1: $88
	adc  b                                           ; $41b2: $88
	adc  b                                           ; $41b3: $88
	adc  b                                           ; $41b4: $88
	adc  b                                           ; $41b5: $88
	add  a                                           ; $41b6: $87
	ld   [hl], a                                     ; $41b7: $77
	ld   [hl], a                                     ; $41b8: $77
	ld   [hl], a                                     ; $41b9: $77
	ld   [hl], a                                     ; $41ba: $77
	ld   [hl], a                                     ; $41bb: $77
	ld   [hl], a                                     ; $41bc: $77
	ld   [hl], a                                     ; $41bd: $77
	ld   [hl], a                                     ; $41be: $77
	ld   [hl], a                                     ; $41bf: $77
	ld   [hl], a                                     ; $41c0: $77
	ld   [hl], a                                     ; $41c1: $77
	adc  b                                           ; $41c2: $88
	adc  b                                           ; $41c3: $88
	adc  b                                           ; $41c4: $88
	adc  b                                           ; $41c5: $88
	adc  b                                           ; $41c6: $88
	adc  b                                           ; $41c7: $88
	adc  b                                           ; $41c8: $88
	adc  b                                           ; $41c9: $88
	adc  b                                           ; $41ca: $88
	adc  b                                           ; $41cb: $88
	adc  b                                           ; $41cc: $88
	adc  b                                           ; $41cd: $88
	adc  b                                           ; $41ce: $88
	adc  b                                           ; $41cf: $88
	adc  b                                           ; $41d0: $88
	adc  b                                           ; $41d1: $88
	adc  b                                           ; $41d2: $88
	adc  b                                           ; $41d3: $88
	adc  b                                           ; $41d4: $88
	adc  b                                           ; $41d5: $88
	adc  b                                           ; $41d6: $88
	adc  b                                           ; $41d7: $88
	adc  b                                           ; $41d8: $88
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
	adc  b                                           ; $41f1: $88
	adc  b                                           ; $41f2: $88
	adc  b                                           ; $41f3: $88
	adc  b                                           ; $41f4: $88
	adc  b                                           ; $41f5: $88
	adc  b                                           ; $41f6: $88
	adc  b                                           ; $41f7: $88
	adc  b                                           ; $41f8: $88
	adc  b                                           ; $41f9: $88
	adc  b                                           ; $41fa: $88
	adc  b                                           ; $41fb: $88
	adc  b                                           ; $41fc: $88
	adc  b                                           ; $41fd: $88
	adc  b                                           ; $41fe: $88
	adc  b                                           ; $41ff: $88
	adc  b                                           ; $4200: $88
	adc  b                                           ; $4201: $88
	adc  b                                           ; $4202: $88
	adc  b                                           ; $4203: $88
	adc  b                                           ; $4204: $88
	adc  b                                           ; $4205: $88
	adc  b                                           ; $4206: $88
	adc  b                                           ; $4207: $88
	adc  b                                           ; $4208: $88
	adc  b                                           ; $4209: $88
	adc  b                                           ; $420a: $88
	adc  b                                           ; $420b: $88
	adc  b                                           ; $420c: $88
	adc  b                                           ; $420d: $88
	adc  b                                           ; $420e: $88
	adc  b                                           ; $420f: $88
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
	adc  b                                           ; $422a: $88
	adc  b                                           ; $422b: $88
	adc  b                                           ; $422c: $88
	adc  b                                           ; $422d: $88
	adc  b                                           ; $422e: $88
	adc  b                                           ; $422f: $88
	adc  b                                           ; $4230: $88
	adc  b                                           ; $4231: $88
	adc  b                                           ; $4232: $88
	adc  b                                           ; $4233: $88
	adc  b                                           ; $4234: $88
	adc  b                                           ; $4235: $88
	adc  b                                           ; $4236: $88
	adc  b                                           ; $4237: $88
	adc  c                                           ; $4238: $89
	sbc  b                                           ; $4239: $98
	adc  b                                           ; $423a: $88
	adc  c                                           ; $423b: $89
	adc  c                                           ; $423c: $89
	adc  b                                           ; $423d: $88
	ld   a, b                                        ; $423e: $78
	sbc  b                                           ; $423f: $98
	add  a                                           ; $4240: $87
	adc  c                                           ; $4241: $89
	adc  c                                           ; $4242: $89
	add  a                                           ; $4243: $87
	ld   a, c                                        ; $4244: $79
	adc  b                                           ; $4245: $88
	ld   a, b                                        ; $4246: $78
	adc  c                                           ; $4247: $89
	adc  b                                           ; $4248: $88
	adc  c                                           ; $4249: $89
	sbc  b                                           ; $424a: $98
	adc  b                                           ; $424b: $88
	adc  c                                           ; $424c: $89
	adc  b                                           ; $424d: $88
	sbc  b                                           ; $424e: $98
	adc  b                                           ; $424f: $88
	adc  c                                           ; $4250: $89
	adc  b                                           ; $4251: $88
	adc  c                                           ; $4252: $89
	adc  b                                           ; $4253: $88
	adc  b                                           ; $4254: $88
	adc  b                                           ; $4255: $88
	add  a                                           ; $4256: $87
	adc  b                                           ; $4257: $88
	adc  b                                           ; $4258: $88
	sbc  c                                           ; $4259: $99
	ld   a, c                                        ; $425a: $79
	xor  d                                           ; $425b: $aa
	halt                                             ; $425c: $76
	adc  d                                           ; $425d: $8a
	add  a                                           ; $425e: $87
	ld   l, b                                        ; $425f: $68
	sub  a                                           ; $4260: $97
	ld   a, b                                        ; $4261: $78
	sbc  b                                           ; $4262: $98
	ld   a, b                                        ; $4263: $78
	adc  c                                           ; $4264: $89
	adc  b                                           ; $4265: $88
	ld   a, c                                        ; $4266: $79
	sbc  b                                           ; $4267: $98
	ld   [hl], a                                     ; $4268: $77
	sbc  c                                           ; $4269: $99
	adc  b                                           ; $426a: $88
	ld   a, b                                        ; $426b: $78
	sub  a                                           ; $426c: $97
	ld   a, c                                        ; $426d: $79
	adc  b                                           ; $426e: $88
	ld   [hl], a                                     ; $426f: $77
	sbc  c                                           ; $4270: $99
	add  a                                           ; $4271: $87
	adc  c                                           ; $4272: $89
	adc  b                                           ; $4273: $88
	ld   a, b                                        ; $4274: $78
	adc  b                                           ; $4275: $88
	xor  b                                           ; $4276: $a8
	ld   a, b                                        ; $4277: $78
	xor  d                                           ; $4278: $aa
	add  a                                           ; $4279: $87
	adc  c                                           ; $427a: $89
	adc  b                                           ; $427b: $88
	ld   a, b                                        ; $427c: $78
	halt                                             ; $427d: $76
	ld   [hl], a                                     ; $427e: $77
	ld   [hl], a                                     ; $427f: $77
	ld   a, b                                        ; $4280: $78
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	sbc  c                                           ; $4283: $99
	add  a                                           ; $4284: $87
	ld   a, c                                        ; $4285: $79

Jump_0aa_4286:
	sub  a                                           ; $4286: $97
	ld   a, b                                        ; $4287: $78
	sbc  c                                           ; $4288: $99
	adc  b                                           ; $4289: $88
	adc  c                                           ; $428a: $89
	sbc  b                                           ; $428b: $98
	ld   a, c                                        ; $428c: $79
	adc  b                                           ; $428d: $88
	halt                                             ; $428e: $76
	ld   [hl], a                                     ; $428f: $77
	ld   a, b                                        ; $4290: $78
	ld   [hl], a                                     ; $4291: $77
	adc  c                                           ; $4292: $89
	add  a                                           ; $4293: $87
	xor  c                                           ; $4294: $a9
	ld   [hl], a                                     ; $4295: $77
	xor  c                                           ; $4296: $a9
	sub  a                                           ; $4297: $97
	ld   a, c                                        ; $4298: $79
	sub  a                                           ; $4299: $97
	ld   l, b                                        ; $429a: $68
	sbc  b                                           ; $429b: $98
	ld   h, a                                        ; $429c: $67
	xor  b                                           ; $429d: $a8
	ld   [hl], a                                     ; $429e: $77
	add  a                                           ; $429f: $87
	halt                                             ; $42a0: $76
	ld   a, b                                        ; $42a1: $78
	halt                                             ; $42a2: $76
	ld   [hl], a                                     ; $42a3: $77
	adc  b                                           ; $42a4: $88
	adc  c                                           ; $42a5: $89
	sub  a                                           ; $42a6: $97
	ld   l, c                                        ; $42a7: $69
	sbc  b                                           ; $42a8: $98
	halt                                             ; $42a9: $76
	adc  c                                           ; $42aa: $89
	ld   [hl], a                                     ; $42ab: $77
	ld   l, b                                        ; $42ac: $68
	sbc  b                                           ; $42ad: $98
	ld   a, c                                        ; $42ae: $79
	xor  b                                           ; $42af: $a8
	add  a                                           ; $42b0: $87
	add  a                                           ; $42b1: $87
	ld   [hl], a                                     ; $42b2: $77
	ld   h, a                                        ; $42b3: $67
	sbc  c                                           ; $42b4: $99
	ld   [hl], a                                     ; $42b5: $77
	sbc  c                                           ; $42b6: $99
	add  a                                           ; $42b7: $87
	adc  c                                           ; $42b8: $89
	sub  a                                           ; $42b9: $97
	ld   a, c                                        ; $42ba: $79
	sub  a                                           ; $42bb: $97
	ld   a, b                                        ; $42bc: $78
	xor  b                                           ; $42bd: $a8
	ld   a, b                                        ; $42be: $78
	adc  b                                           ; $42bf: $88
	ld   h, a                                        ; $42c0: $67
	add  a                                           ; $42c1: $87
	ld   [hl], a                                     ; $42c2: $77
	sub  a                                           ; $42c3: $97
	ld   l, b                                        ; $42c4: $68
	sbc  b                                           ; $42c5: $98
	ld   [hl], a                                     ; $42c6: $77
	add  a                                           ; $42c7: $87

Call_0aa_42c8:
	sbc  c                                           ; $42c8: $99
	ld   a, b                                        ; $42c9: $78
	add  a                                           ; $42ca: $87
	ld   [hl], a                                     ; $42cb: $77
	adc  b                                           ; $42cc: $88
	ld   d, a                                        ; $42cd: $57
	xor  d                                           ; $42ce: $aa
	ld   [hl], l                                     ; $42cf: $75
	adc  d                                           ; $42d0: $8a
	adc  b                                           ; $42d1: $88
	ld   a, d                                        ; $42d2: $7a
	and  a                                           ; $42d3: $a7
	sbc  d                                           ; $42d4: $9a
	sub  a                                           ; $42d5: $97
	ld   a, d                                        ; $42d6: $7a
	add  [hl]                                        ; $42d7: $86
	ld   a, e                                        ; $42d8: $7b
	sub  a                                           ; $42d9: $97
	sbc  e                                           ; $42da: $9b
	xor  b                                           ; $42db: $a8
	ld   a, b                                        ; $42dc: $78
	cp   c                                           ; $42dd: $b9
	ld   [hl], l                                     ; $42de: $75
	ld   a, c                                        ; $42df: $79
	ld   l, c                                        ; $42e0: $69
	ld   h, a                                        ; $42e1: $67
	sub  a                                           ; $42e2: $97
	adc  c                                           ; $42e3: $89
	sbc  c                                           ; $42e4: $99
	ld   a, c                                        ; $42e5: $79
	sub  a                                           ; $42e6: $97
	sbc  c                                           ; $42e7: $99
	add  [hl]                                        ; $42e8: $86
	ld   a, b                                        ; $42e9: $78
	add  a                                           ; $42ea: $87
	ld   a, c                                        ; $42eb: $79
	adc  c                                           ; $42ec: $89
	halt                                             ; $42ed: $76
	sub  a                                           ; $42ee: $97
	adc  b                                           ; $42ef: $88
	ld   a, c                                        ; $42f0: $79
	adc  b                                           ; $42f1: $88
	sbc  b                                           ; $42f2: $98
	add  [hl]                                        ; $42f3: $86
	sbc  e                                           ; $42f4: $9b
	add  [hl]                                        ; $42f5: $86
	ld   l, c                                        ; $42f6: $69
	add  a                                           ; $42f7: $87
	ld   [hl], a                                     ; $42f8: $77
	cp   b                                           ; $42f9: $b8
	ld   h, [hl]                                     ; $42fa: $66
	xor  e                                           ; $42fb: $ab
	ld   h, [hl]                                     ; $42fc: $66
	adc  c                                           ; $42fd: $89
	sbc  b                                           ; $42fe: $98
	adc  b                                           ; $42ff: $88
	adc  d                                           ; $4300: $8a
	add  [hl]                                        ; $4301: $86
	ld   l, c                                        ; $4302: $69
	sub  [hl]                                        ; $4303: $96
	ld   e, d                                        ; $4304: $5a
	rst  ToBoot                                         ; $4305: $c7
	ld   b, [hl]                                     ; $4306: $46
	cp   d                                           ; $4307: $ba
	ld   b, e                                        ; $4308: $43
	ld   a, c                                        ; $4309: $79
	ld   h, c                                        ; $430a: $61
	ld   b, a                                        ; $430b: $47
	ld   d, h                                        ; $430c: $54
	inc  de                                          ; $430d: $13
	ld   h, e                                        ; $430e: $63
	ld   [de], a                                     ; $430f: $12
	ld   d, a                                        ; $4310: $57
	ld   b, e                                        ; $4311: $43
	sbc  l                                           ; $4312: $9d
	cp   h                                           ; $4313: $bc
	rst  $38                                         ; $4314: $ff
	rst  $38                                         ; $4315: $ff
	rst  $38                                         ; $4316: $ff
	rst  $38                                         ; $4317: $ff
	rst  $38                                         ; $4318: $ff
	cp   $cc                                         ; $4319: $fe $cc
	xor  e                                           ; $431b: $ab
	sub  a                                           ; $431c: $97
	add  [hl]                                        ; $431d: $86
	add  a                                           ; $431e: $87
	ld   d, a                                        ; $431f: $57
	ld   d, e                                        ; $4320: $53
	ld   b, h                                        ; $4321: $44
	ld   b, c                                        ; $4322: $41
	ld   de, $1111                                   ; $4323: $11 $11 $11
	ld   de, $1111                                   ; $4326: $11 $11 $11
	ld   l, b                                        ; $4329: $68
	xor  a                                           ; $432a: $af
	rst  $38                                         ; $432b: $ff
	rst  $38                                         ; $432c: $ff
	rst  $38                                         ; $432d: $ff
	rst  $38                                         ; $432e: $ff
	rst  $38                                         ; $432f: $ff
	rst  $38                                         ; $4330: $ff
	ld   hl, sp-$69                                  ; $4331: $f8 $97
	ld   l, c                                        ; $4333: $69
	ld   l, b                                        ; $4334: $68
	ret  z                                           ; $4335: $c8

	call $aadd                                       ; $4336: $cd $dd $aa
	add  [hl]                                        ; $4339: $86
	ld   b, c                                        ; $433a: $41
	ld   de, $1111                                   ; $433b: $11 $11 $11
	ld   de, $1111                                   ; $433e: $11 $11 $11
	ld   c, b                                        ; $4341: $48
	rst  JumpTable                                         ; $4342: $df
	rst  $38                                         ; $4343: $ff
	rst  $38                                         ; $4344: $ff
	rst  $38                                         ; $4345: $ff
	rst  $38                                         ; $4346: $ff
	rst  $38                                         ; $4347: $ff
	db   $fc                                         ; $4348: $fc
	and  l                                           ; $4349: $a5
	ld   c, b                                        ; $434a: $48
	ld   a, b                                        ; $434b: $78
	adc  e                                           ; $434c: $8b
	rst  $38                                         ; $434d: $ff
	rst  JumpTable                                         ; $434e: $df
	rst  $38                                         ; $434f: $ff
	add  sp, $75                                     ; $4350: $e8 $75
	ld   de, $1111                                   ; $4352: $11 $11 $11
	ld   de, $1111                                   ; $4355: $11 $11 $11
	ld   de, $5d13                                   ; $4358: $11 $13 $5d
	rst  $38                                         ; $435b: $ff
	rst  $38                                         ; $435c: $ff
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	rst  $38                                         ; $435f: $ff
	db   $fc                                         ; $4360: $fc
	call c, Call_0aa_7aac                            ; $4361: $dc $ac $7a
	call z, $effd                                    ; $4364: $cc $fd $ef
	rst  $38                                         ; $4367: $ff
	jp   z, Jump_0aa_52a9                            ; $4368: $ca $a9 $52

	ld   de, $1111                                   ; $436b: $11 $11 $11
	ld   de, $1111                                   ; $436e: $11 $11 $11
	ld   de, $6e11                                   ; $4371: $11 $11 $6e
	rst  $28                                         ; $4374: $ef
	rst  $38                                         ; $4375: $ff
	rst  $38                                         ; $4376: $ff
	rst  $38                                         ; $4377: $ff
	rst  $38                                         ; $4378: $ff
	rst  $38                                         ; $4379: $ff
	call z, Call_0aa_68eb                            ; $437a: $cc $eb $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $437d: $cf
	db   $db                                         ; $437e: $db
	rst  JumpTable                                         ; $437f: $df
	rst  $38                                         ; $4380: $ff
	cp   d                                           ; $4381: $ba
	sub  a                                           ; $4382: $97
	add  l                                           ; $4383: $85
	ld   de, $1111                                   ; $4384: $11 $11 $11
	ld   de, $1111                                   ; $4387: $11 $11 $11
	ld   de, $5911                                   ; $438a: $11 $11 $59
	rst  JumpTable                                         ; $438d: $df
	rst  $38                                         ; $438e: $ff
	rst  $38                                         ; $438f: $ff
	rst  $38                                         ; $4390: $ff
	rst  $38                                         ; $4391: $ff
	rst  $38                                         ; $4392: $ff
	db   $dd                                         ; $4393: $dd
	xor  e                                           ; $4394: $ab
	cp   c                                           ; $4395: $b9
	set  3, a                                        ; $4396: $cb $df
	rst  $38                                         ; $4398: $ff
	rst  $38                                         ; $4399: $ff
	db   $fc                                         ; $439a: $fc
	and  a                                           ; $439b: $a7
	ld   d, l                                        ; $439c: $55
	ld   hl, $1111                                   ; $439d: $21 $11 $11
	ld   de, $1111                                   ; $43a0: $11 $11 $11
	ld   de, $1411                                   ; $43a3: $11 $11 $14
	rst  JumpTable                                         ; $43a6: $df
	rst  $38                                         ; $43a7: $ff
	rst  $38                                         ; $43a8: $ff
	rst  $38                                         ; $43a9: $ff
	rst  $38                                         ; $43aa: $ff
	rst  $38                                         ; $43ab: $ff
	cp   $dc                                         ; $43ac: $fe $dc
	cp   e                                           ; $43ae: $bb
	sbc  d                                           ; $43af: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43b0: $cf
	call c, $fcde                                    ; $43b1: $dc $de $fc
	xor  d                                           ; $43b4: $aa
	sub  [hl]                                        ; $43b5: $96
	ld   [hl-], a                                    ; $43b6: $32
	ld   de, $1111                                   ; $43b7: $11 $11 $11
	ld   de, $1111                                   ; $43ba: $11 $11 $11
	ld   de, $7c11                                   ; $43bd: $11 $11 $7c
	cp   a                                           ; $43c0: $bf
	rst  $38                                         ; $43c1: $ff
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	rst  $38                                         ; $43c4: $ff
	rst  $38                                         ; $43c5: $ff
	xor  $d9                                         ; $43c6: $ee $d9
	sbc  c                                           ; $43c8: $99
	xor  e                                           ; $43c9: $ab
	cp   h                                           ; $43ca: $bc
	call z, $cbed                                    ; $43cb: $cc $ed $cb
	xor  b                                           ; $43ce: $a8
	ld   [hl], l                                     ; $43cf: $75
	inc  sp                                          ; $43d0: $33
	ld   de, $1111                                   ; $43d1: $11 $11 $11
	ld   de, $1111                                   ; $43d4: $11 $11 $11
	ld   de, $6912                                   ; $43d7: $11 $12 $69
	xor  e                                           ; $43da: $ab
	rst  JumpTable                                         ; $43db: $df
	rst  $38                                         ; $43dc: $ff
	rst  $38                                         ; $43dd: $ff
	rst  $38                                         ; $43de: $ff
	rst  $38                                         ; $43df: $ff
	xor  $dd                                         ; $43e0: $ee $dd
	cp   c                                           ; $43e2: $b9
	sbc  c                                           ; $43e3: $99
	sbc  c                                           ; $43e4: $99
	ld   [hl], a                                     ; $43e5: $77
	adc  d                                           ; $43e6: $8a
	sbc  d                                           ; $43e7: $9a
	sbc  b                                           ; $43e8: $98
	sbc  d                                           ; $43e9: $9a
	add  [hl]                                        ; $43ea: $86
	ld   h, h                                        ; $43eb: $64
	ld   h, h                                        ; $43ec: $64
	ld   [hl-], a                                    ; $43ed: $32
	ld   [de], a                                     ; $43ee: $12
	ld   de, $1101                                   ; $43ef: $11 $01 $11
	ld   [hl+], a                                    ; $43f2: $22
	inc  hl                                          ; $43f3: $23
	ld   [hl], $78                                   ; $43f4: $36 $78
	sbc  c                                           ; $43f6: $99
	cp   l                                           ; $43f7: $bd
	sbc  $ef                                         ; $43f8: $de $ef
	cp   $ec                                         ; $43fa: $fe $ec
	call z, $a9aa                                    ; $43fc: $cc $aa $a9
	sbc  d                                           ; $43ff: $9a
	sbc  c                                           ; $4400: $99
	sbc  d                                           ; $4401: $9a
	xor  c                                           ; $4402: $a9
	sbc  e                                           ; $4403: $9b
	xor  c                                           ; $4404: $a9
	cp   d                                           ; $4405: $ba
	cp   d                                           ; $4406: $ba
	sbc  c                                           ; $4407: $99
	xor  c                                           ; $4408: $a9
	sbc  c                                           ; $4409: $99
	adc  b                                           ; $440a: $88
	ld   [hl], a                                     ; $440b: $77
	ld   h, [hl]                                     ; $440c: $66
	ld   h, l                                        ; $440d: $65
	ld   d, h                                        ; $440e: $54
	ld   b, h                                        ; $440f: $44
	ld   b, h                                        ; $4410: $44
	ld   b, h                                        ; $4411: $44
	ld   b, h                                        ; $4412: $44
	ld   b, l                                        ; $4413: $45
	ld   d, l                                        ; $4414: $55
	ld   d, [hl]                                     ; $4415: $56
	ld   [hl], a                                     ; $4416: $77
	sbc  c                                           ; $4417: $99
	adc  c                                           ; $4418: $89
	xor  d                                           ; $4419: $aa
	xor  e                                           ; $441a: $ab
	xor  d                                           ; $441b: $aa
	cp   h                                           ; $441c: $bc
	call z, $cdbc                                    ; $441d: $cc $bc $cd
	call $cbcc                                       ; $4420: $cd $cc $cb
	res  7, d                                        ; $4423: $cb $ba
	cp   c                                           ; $4425: $b9
	sbc  c                                           ; $4426: $99
	sbc  b                                           ; $4427: $98
	add  a                                           ; $4428: $87
	ld   [hl], a                                     ; $4429: $77
	ld   h, [hl]                                     ; $442a: $66
	ld   h, [hl]                                     ; $442b: $66
	ld   d, h                                        ; $442c: $54
	ld   d, l                                        ; $442d: $55
	ld   b, l                                        ; $442e: $45
	ld   b, h                                        ; $442f: $44
	ld   b, h                                        ; $4430: $44
	ld   b, h                                        ; $4431: $44
	ld   b, h                                        ; $4432: $44
	ld   b, h                                        ; $4433: $44
	ld   d, l                                        ; $4434: $55
	ld   d, [hl]                                     ; $4435: $56
	ld   h, a                                        ; $4436: $67
	ld   a, b                                        ; $4437: $78
	sbc  c                                           ; $4438: $99
	sbc  d                                           ; $4439: $9a
	xor  e                                           ; $443a: $ab
	cp   e                                           ; $443b: $bb
	cp   e                                           ; $443c: $bb
	res  7, e                                        ; $443d: $cb $bb
	call z, $bbbb                                    ; $443f: $cc $bb $bb
	cp   e                                           ; $4442: $bb
	cp   d                                           ; $4443: $ba
	sbc  e                                           ; $4444: $9b
	sbc  d                                           ; $4445: $9a
	sbc  b                                           ; $4446: $98
	sbc  b                                           ; $4447: $98
	ld   [hl], a                                     ; $4448: $77
	halt                                             ; $4449: $76
	ld   h, [hl]                                     ; $444a: $66
	ld   h, l                                        ; $444b: $65
	ld   d, [hl]                                     ; $444c: $56
	ld   h, l                                        ; $444d: $65
	ld   d, l                                        ; $444e: $55
	ld   d, l                                        ; $444f: $55
	ld   d, [hl]                                     ; $4450: $56
	ld   d, l                                        ; $4451: $55
	ld   d, [hl]                                     ; $4452: $56
	ld   h, [hl]                                     ; $4453: $66
	ld   h, l                                        ; $4454: $65
	ld   h, [hl]                                     ; $4455: $66
	ld   h, [hl]                                     ; $4456: $66
	ld   [hl], a                                     ; $4457: $77
	ld   [hl], a                                     ; $4458: $77
	adc  c                                           ; $4459: $89
	adc  b                                           ; $445a: $88
	sbc  c                                           ; $445b: $99
	sbc  c                                           ; $445c: $99
	xor  d                                           ; $445d: $aa
	xor  d                                           ; $445e: $aa
	xor  d                                           ; $445f: $aa
	cp   d                                           ; $4460: $ba
	cp   d                                           ; $4461: $ba
	xor  d                                           ; $4462: $aa
	xor  d                                           ; $4463: $aa
	sbc  c                                           ; $4464: $99
	xor  d                                           ; $4465: $aa
	xor  c                                           ; $4466: $a9
	sbc  b                                           ; $4467: $98
	sbc  c                                           ; $4468: $99
	adc  c                                           ; $4469: $89
	adc  c                                           ; $446a: $89
	sub  a                                           ; $446b: $97
	sbc  b                                           ; $446c: $98
	adc  b                                           ; $446d: $88
	sub  a                                           ; $446e: $97
	ld   a, c                                        ; $446f: $79
	ld   a, b                                        ; $4470: $78
	ld   h, a                                        ; $4471: $67
	ld   d, [hl]                                     ; $4472: $56
	ld   d, l                                        ; $4473: $55
	ld   d, h                                        ; $4474: $54
	ld   d, h                                        ; $4475: $54
	ld   h, l                                        ; $4476: $65
	ld   d, l                                        ; $4477: $55
	ld   b, [hl]                                     ; $4478: $46
	halt                                             ; $4479: $76
	ld   a, b                                        ; $447a: $78
	ld   l, c                                        ; $447b: $69
	adc  b                                           ; $447c: $88
	adc  d                                           ; $447d: $8a
	xor  b                                           ; $447e: $a8
	sbc  c                                           ; $447f: $99
	sbc  c                                           ; $4480: $99
	sbc  d                                           ; $4481: $9a
	xor  d                                           ; $4482: $aa
	cp   e                                           ; $4483: $bb
	xor  e                                           ; $4484: $ab
	xor  d                                           ; $4485: $aa
	cp   e                                           ; $4486: $bb
	cp   e                                           ; $4487: $bb
	cp   l                                           ; $4488: $bd
	jp   z, $9baa                                    ; $4489: $ca $aa $9b

	add  [hl]                                        ; $448c: $86
	ld   a, b                                        ; $448d: $78
	add  [hl]                                        ; $448e: $86
	ld   d, l                                        ; $448f: $55
	ld   d, [hl]                                     ; $4490: $56
	ld   d, h                                        ; $4491: $54
	ld   b, e                                        ; $4492: $43
	ld   b, h                                        ; $4493: $44
	ld   b, e                                        ; $4494: $43
	ld   [hl+], a                                    ; $4495: $22
	ld   de, $3322                                   ; $4496: $11 $22 $33
	inc  [hl]                                        ; $4499: $34
	ld   b, [hl]                                     ; $449a: $46
	ld   a, b                                        ; $449b: $78
	ld   a, c                                        ; $449c: $79
	xor  e                                           ; $449d: $ab
	call c, $ddcc                                    ; $449e: $dc $cc $dd
	call c, $cccc                                    ; $44a1: $dc $cc $cc
	res  7, d                                        ; $44a4: $cb $ba
	cp   h                                           ; $44a6: $bc
	cp   d                                           ; $44a7: $ba
	xor  e                                           ; $44a8: $ab
	xor  e                                           ; $44a9: $ab
	cp   d                                           ; $44aa: $ba
	sbc  c                                           ; $44ab: $99
	xor  c                                           ; $44ac: $a9
	halt                                             ; $44ad: $76
	ld   h, [hl]                                     ; $44ae: $66
	ld   d, h                                        ; $44af: $54
	inc  sp                                          ; $44b0: $33
	ld   b, e                                        ; $44b1: $43
	ld   hl, $1111                                   ; $44b2: $21 $11 $11
	ld   de, $3311                                   ; $44b5: $11 $11 $33
	ld   b, l                                        ; $44b8: $45
	adc  h                                           ; $44b9: $8c
	call $ffff                                       ; $44ba: $cd $ff $ff
	rst  $38                                         ; $44bd: $ff
	rst  $38                                         ; $44be: $ff
	db   $ed                                         ; $44bf: $ed
	jp   c, $bbab                                    ; $44c0: $da $ab $bb

	xor  c                                           ; $44c3: $a9
	xor  e                                           ; $44c4: $ab
	call z, $cdcc                                    ; $44c5: $cc $cc $cd
	call c, $babb                                    ; $44c8: $dc $bb $ba
	add  [hl]                                        ; $44cb: $86
	ld   b, e                                        ; $44cc: $43
	ld   de, $1111                                   ; $44cd: $11 $11 $11
	ld   de, $1111                                   ; $44d0: $11 $11 $11
	ld   de, $6824                                   ; $44d3: $11 $24 $68
	cp   [hl]                                        ; $44d6: $be
	rst  $38                                         ; $44d7: $ff
	rst  $38                                         ; $44d8: $ff
	rst  $38                                         ; $44d9: $ff
	rst  $38                                         ; $44da: $ff
	rst  $38                                         ; $44db: $ff
	db   $dd                                         ; $44dc: $dd
	cp   d                                           ; $44dd: $ba
	add  [hl]                                        ; $44de: $86
	adc  c                                           ; $44df: $89
	xor  d                                           ; $44e0: $aa
	xor  h                                           ; $44e1: $ac
	adc  $ff                                         ; $44e2: $ce $ff
	xor  $ef                                         ; $44e4: $ee $ef
	db   $ed                                         ; $44e6: $ed
	and  a                                           ; $44e7: $a7
	ld   h, h                                        ; $44e8: $64
	ld   hl, $1111                                   ; $44e9: $21 $11 $11
	ld   de, $1111                                   ; $44ec: $11 $11 $11
	ld   de, $6a14                                   ; $44ef: $11 $14 $6a
	rst  JumpTable                                         ; $44f2: $df
	rst  $38                                         ; $44f3: $ff
	rst  $38                                         ; $44f4: $ff
	rst  $38                                         ; $44f5: $ff
	rst  $38                                         ; $44f6: $ff
	db   $ed                                         ; $44f7: $ed
	cp   d                                           ; $44f8: $ba
	halt                                             ; $44f9: $76
	halt                                             ; $44fa: $76
	adc  c                                           ; $44fb: $89
	cp   l                                           ; $44fc: $bd
	rst  JumpTable                                         ; $44fd: $df
	rst  $38                                         ; $44fe: $ff
	rst  $38                                         ; $44ff: $ff
	cp   $dd                                         ; $4500: $fe $dd
	res  0, a                                        ; $4502: $cb $87
	ld   h, h                                        ; $4504: $64
	ld   hl, $1111                                   ; $4505: $21 $11 $11
	ld   de, $1111                                   ; $4508: $11 $11 $11
	ld   de, $7a12                                   ; $450b: $11 $12 $7a
	rst  $28                                         ; $450e: $ef
	rst  $38                                         ; $450f: $ff
	rst  $38                                         ; $4510: $ff
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	call c, Call_0aa_6598                            ; $4513: $dc $98 $65
	ld   d, l                                        ; $4516: $55
	ld   a, d                                        ; $4517: $7a
	call $ffff                                       ; $4518: $cd $ff $ff
	rst  $38                                         ; $451b: $ff
	db   $fd                                         ; $451c: $fd
	call c, Call_0aa_76ba                            ; $451d: $dc $ba $76
	ld   d, e                                        ; $4520: $53
	ld   sp, $1111                                   ; $4521: $31 $11 $11
	ld   de, $1111                                   ; $4524: $11 $11 $11
	ld   de, $7a14                                   ; $4527: $11 $14 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $452a: $cf
	rst  $38                                         ; $452b: $ff
	rst  $38                                         ; $452c: $ff
	rst  $38                                         ; $452d: $ff
	rst  $38                                         ; $452e: $ff
	call c, Call_0aa_7695                            ; $452f: $dc $95 $76
	ld   h, a                                        ; $4532: $67
	ld   l, c                                        ; $4533: $69
	cp   a                                           ; $4534: $bf
	rst  $38                                         ; $4535: $ff
	rst  $38                                         ; $4536: $ff
	rst  $38                                         ; $4537: $ff
	rst  $38                                         ; $4538: $ff
	db   $db                                         ; $4539: $db
	xor  d                                           ; $453a: $aa
	xor  c                                           ; $453b: $a9
	ld   h, h                                        ; $453c: $64
	ld   hl, $1111                                   ; $453d: $21 $11 $11
	ld   de, $1111                                   ; $4540: $11 $11 $11
	ld   de, $6a11                                   ; $4543: $11 $11 $6a
	cp   [hl]                                        ; $4546: $be
	rst  $38                                         ; $4547: $ff
	rst  $38                                         ; $4548: $ff
	rst  $38                                         ; $4549: $ff
	rst  $38                                         ; $454a: $ff
	db   $dd                                         ; $454b: $dd
	and  a                                           ; $454c: $a7
	halt                                             ; $454d: $76
	ld   h, [hl]                                     ; $454e: $66
	ld   a, d                                        ; $454f: $7a
	cp   a                                           ; $4550: $bf
	rst  $38                                         ; $4551: $ff
	rst  $38                                         ; $4552: $ff
	rst  $38                                         ; $4553: $ff
	cp   $cc                                         ; $4554: $fe $cc
	cp   d                                           ; $4556: $ba
	sbc  c                                           ; $4557: $99
	ld   h, [hl]                                     ; $4558: $66
	ld   b, e                                        ; $4559: $43
	ld   hl, $1111                                   ; $455a: $21 $11 $11
	ld   de, $1111                                   ; $455d: $11 $11 $11
	ld   de, $dd5a                                   ; $4560: $11 $5a $dd
	rst  $38                                         ; $4563: $ff
	rst  $38                                         ; $4564: $ff
	rst  $38                                         ; $4565: $ff
	cp   $ec                                         ; $4566: $fe $ec
	cp   c                                           ; $4568: $b9
	halt                                             ; $4569: $76
	ld   h, [hl]                                     ; $456a: $66
	xor  e                                           ; $456b: $ab
	sbc  $ff                                         ; $456c: $de $ff
	rst  $38                                         ; $456e: $ff
	rst  $38                                         ; $456f: $ff
	db   $ec                                         ; $4570: $ec
	cp   e                                           ; $4571: $bb
	cp   e                                           ; $4572: $bb
	xor  c                                           ; $4573: $a9
	add  a                                           ; $4574: $87
	ld   h, l                                        ; $4575: $65
	ld   b, d                                        ; $4576: $42
	ld   de, $1111                                   ; $4577: $11 $11 $11
	ld   de, $1111                                   ; $457a: $11 $11 $11
	dec  d                                           ; $457d: $15
	sbc  h                                           ; $457e: $9c
	rst  $28                                         ; $457f: $ef
	rst  $38                                         ; $4580: $ff
	rst  $38                                         ; $4581: $ff
	rst  $38                                         ; $4582: $ff
	db   $fd                                         ; $4583: $fd
	jp   z, Jump_0aa_6787                            ; $4584: $ca $87 $67

	sbc  d                                           ; $4587: $9a
	call z, $ffef                                    ; $4588: $cc $ef $ff
	rst  $38                                         ; $458b: $ff
	db   $ec                                         ; $458c: $ec
	cp   e                                           ; $458d: $bb
	xor  d                                           ; $458e: $aa
	xor  d                                           ; $458f: $aa
	adc  c                                           ; $4590: $89
	halt                                             ; $4591: $76
	ld   d, h                                        ; $4592: $54
	ld   [hl-], a                                    ; $4593: $32
	ld   de, $1111                                   ; $4594: $11 $11 $11
	ld   de, $1211                                   ; $4597: $11 $11 $12
	ld   a, h                                        ; $459a: $7c
	rst  $28                                         ; $459b: $ef
	rst  $38                                         ; $459c: $ff
	rst  $38                                         ; $459d: $ff
	rst  $38                                         ; $459e: $ff
	cp   $ba                                         ; $459f: $fe $ba
	cp   c                                           ; $45a1: $b9
	sbc  c                                           ; $45a2: $99
	adc  d                                           ; $45a3: $8a
	xor  h                                           ; $45a4: $ac
	rst  JumpTable                                         ; $45a5: $df
	rst  $38                                         ; $45a6: $ff
	db   $fd                                         ; $45a7: $fd
	db   $dd                                         ; $45a8: $dd
	cp   h                                           ; $45a9: $bc
	xor  c                                           ; $45aa: $a9
	xor  c                                           ; $45ab: $a9
	xor  d                                           ; $45ac: $aa
	sbc  c                                           ; $45ad: $99
	ld   h, h                                        ; $45ae: $64
	ld   [hl-], a                                    ; $45af: $32
	ld   de, $1111                                   ; $45b0: $11 $11 $11
	ld   de, $1111                                   ; $45b3: $11 $11 $11
	daa                                              ; $45b6: $27
	xor  l                                           ; $45b7: $ad
	rst  JumpTable                                         ; $45b8: $df
	rst  $38                                         ; $45b9: $ff
	rst  $38                                         ; $45ba: $ff
	rst  $38                                         ; $45bb: $ff
	db   $ec                                         ; $45bc: $ec
	res  5, c                                        ; $45bd: $cb $a9
	sbc  c                                           ; $45bf: $99
	sbc  d                                           ; $45c0: $9a
	cp   l                                           ; $45c1: $bd
	sbc  $ee                                         ; $45c2: $de $ee
	call c, $babb                                    ; $45c4: $dc $bb $ba
	xor  c                                           ; $45c7: $a9
	sbc  b                                           ; $45c8: $98
	adc  c                                           ; $45c9: $89
	sub  a                                           ; $45ca: $97
	ld   d, e                                        ; $45cb: $53
	ld   [hl+], a                                    ; $45cc: $22
	ld   hl, $1111                                   ; $45cd: $21 $11 $11
	ld   de, $1111                                   ; $45d0: $11 $11 $11
	scf                                              ; $45d3: $37
	cp   l                                           ; $45d4: $bd
	rst  $38                                         ; $45d5: $ff
	rst  $38                                         ; $45d6: $ff
	rst  $38                                         ; $45d7: $ff
	cp   $ec                                         ; $45d8: $fe $ec
	cp   d                                           ; $45da: $ba
	sbc  d                                           ; $45db: $9a
	sbc  d                                           ; $45dc: $9a
	cp   h                                           ; $45dd: $bc
	call z, $dddd                                    ; $45de: $cc $dd $dd
	res  5, c                                        ; $45e1: $cb $a9
	xor  c                                           ; $45e3: $a9
	xor  d                                           ; $45e4: $aa
	sbc  b                                           ; $45e5: $98
	add  a                                           ; $45e6: $87
	halt                                             ; $45e7: $76
	ld   d, h                                        ; $45e8: $54
	inc  sp                                          ; $45e9: $33
	ld   hl, $1111                                   ; $45ea: $21 $11 $11
	ld   de, $1111                                   ; $45ed: $11 $11 $11
	ld   b, [hl]                                     ; $45f0: $46
	sbc  h                                           ; $45f1: $9c
	rst  JumpTable                                         ; $45f2: $df
	cp   $ff                                         ; $45f3: $fe $ff
	xor  $ec                                         ; $45f5: $ee $ec
	jp   z, $9aab                                    ; $45f7: $ca $ab $9a

	cp   d                                           ; $45fa: $ba
	cp   e                                           ; $45fb: $bb
	cp   h                                           ; $45fc: $bc
	cp   h                                           ; $45fd: $bc
	call z, $9aba                                    ; $45fe: $cc $ba $9a
	sbc  c                                           ; $4601: $99
	sbc  c                                           ; $4602: $99
	adc  b                                           ; $4603: $88
	ld   h, [hl]                                     ; $4604: $66
	ld   h, h                                        ; $4605: $64
	ld   b, e                                        ; $4606: $43
	ld   [hl+], a                                    ; $4607: $22
	ld   de, $1111                                   ; $4608: $11 $11 $11
	ld   [de], a                                     ; $460b: $12
	ld   de, $6933                                   ; $460c: $11 $33 $69
	cp   [hl]                                        ; $460f: $be
	rst  $28                                         ; $4610: $ef
	cp   $de                                         ; $4611: $fe $de
	db   $dd                                         ; $4613: $dd
	jp   z, $abba                                    ; $4614: $ca $ba $ab

	xor  c                                           ; $4617: $a9
	xor  c                                           ; $4618: $a9
	xor  d                                           ; $4619: $aa
	cp   h                                           ; $461a: $bc
	set  1, d                                        ; $461b: $cb $ca
	sbc  c                                           ; $461d: $99
	adc  b                                           ; $461e: $88
	adc  c                                           ; $461f: $89
	adc  b                                           ; $4620: $88
	add  a                                           ; $4621: $87
	ld   h, [hl]                                     ; $4622: $66
	ld   d, l                                        ; $4623: $55
	ld   b, e                                        ; $4624: $43
	ld   [hl-], a                                    ; $4625: $32
	ld   de, $1211                                   ; $4626: $11 $11 $12
	inc  hl                                          ; $4629: $23
	inc  sp                                          ; $462a: $33
	ld   d, [hl]                                     ; $462b: $56
	adc  d                                           ; $462c: $8a
	xor  h                                           ; $462d: $ac
	call z, $ddec                                    ; $462e: $cc $ec $dd
	res  7, d                                        ; $4631: $cb $ba
	res  5, d                                        ; $4633: $cb $aa
	sbc  c                                           ; $4635: $99
	xor  d                                           ; $4636: $aa
	xor  d                                           ; $4637: $aa
	cp   e                                           ; $4638: $bb
	res  7, d                                        ; $4639: $cb $ba
	sbc  b                                           ; $463b: $98
	sbc  c                                           ; $463c: $99
	sbc  c                                           ; $463d: $99
	sub  a                                           ; $463e: $97
	ld   [hl], a                                     ; $463f: $77
	ld   h, l                                        ; $4640: $65
	ld   d, l                                        ; $4641: $55
	ld   d, h                                        ; $4642: $54
	ld   b, h                                        ; $4643: $44
	inc  sp                                          ; $4644: $33
	inc  sp                                          ; $4645: $33
	ld   b, h                                        ; $4646: $44
	inc  sp                                          ; $4647: $33
	inc  sp                                          ; $4648: $33
	ld   b, [hl]                                     ; $4649: $46
	ld   a, b                                        ; $464a: $78
	sbc  e                                           ; $464b: $9b
	cp   d                                           ; $464c: $ba
	cp   h                                           ; $464d: $bc
	cp   h                                           ; $464e: $bc
	call $bacb                                       ; $464f: $cd $cb $ba
	sbc  c                                           ; $4652: $99
	sbc  d                                           ; $4653: $9a
	xor  d                                           ; $4654: $aa
	xor  d                                           ; $4655: $aa
	xor  d                                           ; $4656: $aa
	xor  d                                           ; $4657: $aa
	cp   c                                           ; $4658: $b9
	sbc  b                                           ; $4659: $98
	sbc  b                                           ; $465a: $98
	adc  c                                           ; $465b: $89
	add  a                                           ; $465c: $87
	ld   [hl], a                                     ; $465d: $77
	ld   h, [hl]                                     ; $465e: $66
	ld   h, [hl]                                     ; $465f: $66
	halt                                             ; $4660: $76
	ld   d, l                                        ; $4661: $55
	ld   b, h                                        ; $4662: $44
	ld   b, h                                        ; $4663: $44
	ld   d, l                                        ; $4664: $55
	ld   d, l                                        ; $4665: $55
	ld   b, h                                        ; $4666: $44
	ld   b, h                                        ; $4667: $44
	ld   d, [hl]                                     ; $4668: $56
	ld   a, c                                        ; $4669: $79
	sbc  d                                           ; $466a: $9a
	xor  d                                           ; $466b: $aa
	xor  e                                           ; $466c: $ab
	xor  d                                           ; $466d: $aa
	cp   d                                           ; $466e: $ba
	xor  d                                           ; $466f: $aa
	xor  d                                           ; $4670: $aa
	sbc  c                                           ; $4671: $99
	cp   d                                           ; $4672: $ba
	xor  d                                           ; $4673: $aa
	xor  d                                           ; $4674: $aa
	sbc  d                                           ; $4675: $9a
	cp   d                                           ; $4676: $ba
	sbc  c                                           ; $4677: $99
	adc  c                                           ; $4678: $89
	sbc  c                                           ; $4679: $99
	sbc  b                                           ; $467a: $98
	sbc  b                                           ; $467b: $98
	ld   [hl], a                                     ; $467c: $77
	ld   [hl], a                                     ; $467d: $77
	ld   [hl], a                                     ; $467e: $77
	ld   [hl], a                                     ; $467f: $77
	ld   h, [hl]                                     ; $4680: $66
	ld   h, l                                        ; $4681: $65
	ld   h, [hl]                                     ; $4682: $66
	ld   h, [hl]                                     ; $4683: $66
	ld   h, [hl]                                     ; $4684: $66
	ld   h, l                                        ; $4685: $65
	ld   d, l                                        ; $4686: $55
	ld   d, [hl]                                     ; $4687: $56
	ld   h, a                                        ; $4688: $67
	ld   [hl], a                                     ; $4689: $77
	add  a                                           ; $468a: $87
	adc  c                                           ; $468b: $89
	adc  c                                           ; $468c: $89
	sbc  c                                           ; $468d: $99
	xor  d                                           ; $468e: $aa
	xor  d                                           ; $468f: $aa
	sbc  c                                           ; $4690: $99
	sbc  c                                           ; $4691: $99
	xor  d                                           ; $4692: $aa
	sbc  d                                           ; $4693: $9a
	xor  c                                           ; $4694: $a9
	xor  c                                           ; $4695: $a9
	sbc  c                                           ; $4696: $99
	adc  c                                           ; $4697: $89
	adc  c                                           ; $4698: $89
	sbc  b                                           ; $4699: $98
	sbc  c                                           ; $469a: $99
	adc  b                                           ; $469b: $88
	adc  b                                           ; $469c: $88
	adc  b                                           ; $469d: $88
	adc  b                                           ; $469e: $88
	ld   [hl], a                                     ; $469f: $77
	ld   [hl], a                                     ; $46a0: $77
	ld   [hl], a                                     ; $46a1: $77
	ld   h, a                                        ; $46a2: $67
	ld   h, [hl]                                     ; $46a3: $66
	ld   [hl], a                                     ; $46a4: $77
	ld   [hl], a                                     ; $46a5: $77
	ld   [hl], a                                     ; $46a6: $77
	ld   h, [hl]                                     ; $46a7: $66
	ld   h, [hl]                                     ; $46a8: $66
	ld   [hl], a                                     ; $46a9: $77
	ld   h, a                                        ; $46aa: $67
	ld   [hl], a                                     ; $46ab: $77
	ld   [hl], a                                     ; $46ac: $77
	adc  b                                           ; $46ad: $88
	sbc  b                                           ; $46ae: $98
	sbc  c                                           ; $46af: $99
	xor  d                                           ; $46b0: $aa
	xor  d                                           ; $46b1: $aa
	sbc  c                                           ; $46b2: $99
	sbc  c                                           ; $46b3: $99
	sbc  c                                           ; $46b4: $99
	xor  d                                           ; $46b5: $aa
	sbc  d                                           ; $46b6: $9a
	sbc  c                                           ; $46b7: $99
	sbc  b                                           ; $46b8: $98
	sbc  c                                           ; $46b9: $99
	sbc  c                                           ; $46ba: $99
	adc  b                                           ; $46bb: $88
	adc  b                                           ; $46bc: $88
	adc  b                                           ; $46bd: $88
	adc  b                                           ; $46be: $88
	adc  b                                           ; $46bf: $88
	adc  b                                           ; $46c0: $88
	ld   [hl], a                                     ; $46c1: $77
	ld   [hl], a                                     ; $46c2: $77
	ld   [hl], a                                     ; $46c3: $77
	ld   [hl], a                                     ; $46c4: $77
	ld   [hl], a                                     ; $46c5: $77
	ld   [hl], a                                     ; $46c6: $77
	ld   [hl], a                                     ; $46c7: $77
	ld   [hl], a                                     ; $46c8: $77
	ld   [hl], a                                     ; $46c9: $77
	ld   [hl], a                                     ; $46ca: $77
	ld   [hl], a                                     ; $46cb: $77
	ld   [hl], a                                     ; $46cc: $77
	ld   [hl], a                                     ; $46cd: $77
	ld   [hl], a                                     ; $46ce: $77
	ld   [hl], a                                     ; $46cf: $77
	ld   a, b                                        ; $46d0: $78
	adc  c                                           ; $46d1: $89
	adc  c                                           ; $46d2: $89
	adc  b                                           ; $46d3: $88
	adc  b                                           ; $46d4: $88
	sbc  c                                           ; $46d5: $99
	sbc  b                                           ; $46d6: $98
	sbc  b                                           ; $46d7: $98
	adc  c                                           ; $46d8: $89
	sbc  c                                           ; $46d9: $99
	adc  c                                           ; $46da: $89
	sbc  c                                           ; $46db: $99
	sbc  b                                           ; $46dc: $98
	adc  b                                           ; $46dd: $88
	adc  b                                           ; $46de: $88
	sbc  c                                           ; $46df: $99
	adc  b                                           ; $46e0: $88
	adc  b                                           ; $46e1: $88
	sbc  b                                           ; $46e2: $98
	adc  b                                           ; $46e3: $88
	adc  b                                           ; $46e4: $88
	adc  b                                           ; $46e5: $88
	adc  b                                           ; $46e6: $88
	adc  b                                           ; $46e7: $88
	adc  b                                           ; $46e8: $88
	ld   [hl], a                                     ; $46e9: $77
	ld   [hl], a                                     ; $46ea: $77
	ld   [hl], a                                     ; $46eb: $77
	ld   [hl], a                                     ; $46ec: $77
	ld   [hl], a                                     ; $46ed: $77
	ld   [hl], a                                     ; $46ee: $77
	ld   [hl], a                                     ; $46ef: $77
	ld   [hl], a                                     ; $46f0: $77
	ld   a, b                                        ; $46f1: $78
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
	adc  c                                           ; $46fc: $89
	sbc  b                                           ; $46fd: $98
	adc  b                                           ; $46fe: $88
	adc  b                                           ; $46ff: $88
	adc  b                                           ; $4700: $88
	adc  b                                           ; $4701: $88
	sbc  b                                           ; $4702: $98
	sbc  b                                           ; $4703: $98
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
	adc  b                                           ; $4736: $88
	adc  b                                           ; $4737: $88
	adc  b                                           ; $4738: $88
	adc  b                                           ; $4739: $88
	adc  b                                           ; $473a: $88
	adc  b                                           ; $473b: $88
	adc  b                                           ; $473c: $88
	adc  b                                           ; $473d: $88
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
	adc  b                                           ; $4748: $88
	adc  b                                           ; $4749: $88
	adc  b                                           ; $474a: $88
	adc  b                                           ; $474b: $88
	adc  b                                           ; $474c: $88
	adc  b                                           ; $474d: $88
	adc  b                                           ; $474e: $88
	adc  b                                           ; $474f: $88
	adc  b                                           ; $4750: $88
	adc  b                                           ; $4751: $88
	adc  b                                           ; $4752: $88
	adc  b                                           ; $4753: $88
	adc  b                                           ; $4754: $88
	adc  b                                           ; $4755: $88
	adc  b                                           ; $4756: $88
	adc  b                                           ; $4757: $88
	adc  b                                           ; $4758: $88
	adc  b                                           ; $4759: $88
	adc  b                                           ; $475a: $88
	adc  b                                           ; $475b: $88
	adc  b                                           ; $475c: $88
	adc  b                                           ; $475d: $88
	adc  b                                           ; $475e: $88
	adc  b                                           ; $475f: $88
	adc  b                                           ; $4760: $88
	adc  b                                           ; $4761: $88
	adc  b                                           ; $4762: $88
	adc  b                                           ; $4763: $88
	adc  b                                           ; $4764: $88
	adc  b                                           ; $4765: $88
	adc  b                                           ; $4766: $88
	adc  b                                           ; $4767: $88
	adc  b                                           ; $4768: $88
	adc  b                                           ; $4769: $88
	adc  b                                           ; $476a: $88
	adc  b                                           ; $476b: $88
	adc  b                                           ; $476c: $88
	adc  b                                           ; $476d: $88
	adc  b                                           ; $476e: $88
	adc  b                                           ; $476f: $88
	adc  b                                           ; $4770: $88
	adc  b                                           ; $4771: $88
	adc  b                                           ; $4772: $88
	adc  b                                           ; $4773: $88
	adc  b                                           ; $4774: $88
	adc  b                                           ; $4775: $88
	adc  b                                           ; $4776: $88
	adc  b                                           ; $4777: $88
	adc  b                                           ; $4778: $88
	adc  b                                           ; $4779: $88
	adc  b                                           ; $477a: $88
	adc  b                                           ; $477b: $88
	adc  b                                           ; $477c: $88
	adc  b                                           ; $477d: $88
	adc  b                                           ; $477e: $88
	adc  b                                           ; $477f: $88
	adc  b                                           ; $4780: $88
	adc  b                                           ; $4781: $88
	adc  b                                           ; $4782: $88
	adc  b                                           ; $4783: $88
	adc  b                                           ; $4784: $88
	adc  b                                           ; $4785: $88
	adc  b                                           ; $4786: $88
	adc  b                                           ; $4787: $88
	adc  b                                           ; $4788: $88
	adc  b                                           ; $4789: $88
	adc  b                                           ; $478a: $88
	adc  b                                           ; $478b: $88
	adc  b                                           ; $478c: $88
	adc  b                                           ; $478d: $88
	adc  b                                           ; $478e: $88
	adc  b                                           ; $478f: $88
	adc  b                                           ; $4790: $88
	adc  b                                           ; $4791: $88
	adc  b                                           ; $4792: $88
	adc  b                                           ; $4793: $88
	adc  b                                           ; $4794: $88
	adc  b                                           ; $4795: $88
	adc  b                                           ; $4796: $88
	adc  b                                           ; $4797: $88
	adc  b                                           ; $4798: $88
	adc  b                                           ; $4799: $88
	adc  b                                           ; $479a: $88
	adc  b                                           ; $479b: $88
	adc  b                                           ; $479c: $88
	adc  b                                           ; $479d: $88
	adc  b                                           ; $479e: $88
	adc  b                                           ; $479f: $88
	adc  b                                           ; $47a0: $88
	adc  b                                           ; $47a1: $88
	adc  b                                           ; $47a2: $88
	adc  b                                           ; $47a3: $88
	adc  b                                           ; $47a4: $88
	adc  b                                           ; $47a5: $88
	adc  b                                           ; $47a6: $88
	adc  b                                           ; $47a7: $88
	adc  b                                           ; $47a8: $88
	adc  b                                           ; $47a9: $88
	adc  b                                           ; $47aa: $88
	adc  b                                           ; $47ab: $88
	adc  b                                           ; $47ac: $88
	adc  b                                           ; $47ad: $88
	adc  b                                           ; $47ae: $88
	adc  b                                           ; $47af: $88
	adc  b                                           ; $47b0: $88
	adc  b                                           ; $47b1: $88
	adc  b                                           ; $47b2: $88
	adc  b                                           ; $47b3: $88
	adc  b                                           ; $47b4: $88
	adc  b                                           ; $47b5: $88
	adc  b                                           ; $47b6: $88
	adc  b                                           ; $47b7: $88
	adc  b                                           ; $47b8: $88
	adc  b                                           ; $47b9: $88
	adc  b                                           ; $47ba: $88
	adc  b                                           ; $47bb: $88
	adc  b                                           ; $47bc: $88
	adc  b                                           ; $47bd: $88
	adc  b                                           ; $47be: $88
	adc  b                                           ; $47bf: $88
	adc  b                                           ; $47c0: $88
	adc  b                                           ; $47c1: $88
	adc  b                                           ; $47c2: $88
	adc  b                                           ; $47c3: $88
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88
	adc  b                                           ; $47c7: $88
	adc  b                                           ; $47c8: $88
	adc  b                                           ; $47c9: $88
	adc  b                                           ; $47ca: $88
	adc  b                                           ; $47cb: $88
	adc  b                                           ; $47cc: $88
	adc  b                                           ; $47cd: $88
	adc  b                                           ; $47ce: $88
	adc  b                                           ; $47cf: $88
	adc  b                                           ; $47d0: $88
	adc  b                                           ; $47d1: $88
	adc  b                                           ; $47d2: $88
	adc  b                                           ; $47d3: $88
	adc  b                                           ; $47d4: $88
	adc  b                                           ; $47d5: $88
	adc  b                                           ; $47d6: $88
	adc  b                                           ; $47d7: $88
	adc  b                                           ; $47d8: $88
	adc  b                                           ; $47d9: $88
	adc  b                                           ; $47da: $88
	adc  b                                           ; $47db: $88
	adc  b                                           ; $47dc: $88
	adc  b                                           ; $47dd: $88
	adc  b                                           ; $47de: $88
	adc  b                                           ; $47df: $88
	adc  b                                           ; $47e0: $88
	adc  b                                           ; $47e1: $88
	adc  b                                           ; $47e2: $88
	adc  b                                           ; $47e3: $88
	adc  b                                           ; $47e4: $88
	adc  b                                           ; $47e5: $88
	adc  b                                           ; $47e6: $88
	adc  b                                           ; $47e7: $88
	adc  b                                           ; $47e8: $88
	adc  b                                           ; $47e9: $88
	adc  b                                           ; $47ea: $88
	adc  b                                           ; $47eb: $88
	adc  b                                           ; $47ec: $88
	adc  b                                           ; $47ed: $88
	adc  b                                           ; $47ee: $88
	adc  b                                           ; $47ef: $88
	adc  b                                           ; $47f0: $88
	adc  b                                           ; $47f1: $88
	adc  b                                           ; $47f2: $88
	adc  b                                           ; $47f3: $88
	adc  b                                           ; $47f4: $88
	adc  b                                           ; $47f5: $88
	adc  b                                           ; $47f6: $88
	adc  b                                           ; $47f7: $88
	adc  b                                           ; $47f8: $88
	adc  b                                           ; $47f9: $88
	adc  b                                           ; $47fa: $88
	adc  b                                           ; $47fb: $88
	adc  b                                           ; $47fc: $88
	adc  b                                           ; $47fd: $88
	adc  b                                           ; $47fe: $88
	adc  b                                           ; $47ff: $88
	adc  b                                           ; $4800: $88
	adc  b                                           ; $4801: $88
	adc  b                                           ; $4802: $88
	adc  b                                           ; $4803: $88
	adc  b                                           ; $4804: $88
	adc  b                                           ; $4805: $88
	adc  b                                           ; $4806: $88
	adc  b                                           ; $4807: $88
	adc  b                                           ; $4808: $88
	adc  b                                           ; $4809: $88
	adc  b                                           ; $480a: $88
	adc  b                                           ; $480b: $88
	adc  b                                           ; $480c: $88
	adc  b                                           ; $480d: $88
	adc  b                                           ; $480e: $88
	adc  b                                           ; $480f: $88
	adc  b                                           ; $4810: $88
	adc  b                                           ; $4811: $88
	adc  b                                           ; $4812: $88
	adc  b                                           ; $4813: $88
	adc  b                                           ; $4814: $88
	adc  b                                           ; $4815: $88
	adc  b                                           ; $4816: $88
	adc  b                                           ; $4817: $88
	adc  b                                           ; $4818: $88
	adc  b                                           ; $4819: $88
	adc  b                                           ; $481a: $88
	adc  b                                           ; $481b: $88
	adc  b                                           ; $481c: $88
	adc  b                                           ; $481d: $88
	adc  b                                           ; $481e: $88
	adc  b                                           ; $481f: $88
	adc  b                                           ; $4820: $88
	adc  b                                           ; $4821: $88
	adc  b                                           ; $4822: $88
	adc  b                                           ; $4823: $88
	adc  b                                           ; $4824: $88
	adc  b                                           ; $4825: $88
	adc  b                                           ; $4826: $88
	adc  b                                           ; $4827: $88
	adc  b                                           ; $4828: $88
	adc  b                                           ; $4829: $88
	adc  b                                           ; $482a: $88
	adc  b                                           ; $482b: $88
	adc  b                                           ; $482c: $88
	adc  b                                           ; $482d: $88
	adc  b                                           ; $482e: $88
	adc  b                                           ; $482f: $88
	adc  b                                           ; $4830: $88
	adc  b                                           ; $4831: $88
	adc  b                                           ; $4832: $88
	adc  b                                           ; $4833: $88
	adc  b                                           ; $4834: $88
	adc  b                                           ; $4835: $88
	adc  b                                           ; $4836: $88
	adc  b                                           ; $4837: $88
	adc  b                                           ; $4838: $88
	adc  b                                           ; $4839: $88
	adc  b                                           ; $483a: $88
	adc  b                                           ; $483b: $88
	adc  b                                           ; $483c: $88
	adc  b                                           ; $483d: $88
	adc  b                                           ; $483e: $88
	adc  b                                           ; $483f: $88
	adc  b                                           ; $4840: $88
	adc  b                                           ; $4841: $88
	adc  b                                           ; $4842: $88
	adc  b                                           ; $4843: $88
	adc  b                                           ; $4844: $88
	adc  b                                           ; $4845: $88
	adc  b                                           ; $4846: $88
	adc  b                                           ; $4847: $88
	adc  b                                           ; $4848: $88
	adc  b                                           ; $4849: $88
	adc  b                                           ; $484a: $88
	adc  b                                           ; $484b: $88
	adc  b                                           ; $484c: $88
	adc  b                                           ; $484d: $88
	adc  b                                           ; $484e: $88
	adc  b                                           ; $484f: $88
	adc  b                                           ; $4850: $88
	adc  b                                           ; $4851: $88
	adc  b                                           ; $4852: $88
	adc  b                                           ; $4853: $88
	adc  b                                           ; $4854: $88
	adc  b                                           ; $4855: $88
	adc  b                                           ; $4856: $88
	adc  b                                           ; $4857: $88
	adc  b                                           ; $4858: $88
	adc  b                                           ; $4859: $88
	adc  b                                           ; $485a: $88
	adc  b                                           ; $485b: $88
	adc  b                                           ; $485c: $88
	adc  b                                           ; $485d: $88
	adc  b                                           ; $485e: $88
	adc  b                                           ; $485f: $88
	adc  b                                           ; $4860: $88
	adc  b                                           ; $4861: $88
	adc  b                                           ; $4862: $88
	adc  b                                           ; $4863: $88
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
	adc  b                                           ; $491c: $88
	adc  b                                           ; $491d: $88
	adc  b                                           ; $491e: $88
	adc  b                                           ; $491f: $88
	adc  b                                           ; $4920: $88
	adc  b                                           ; $4921: $88
	adc  b                                           ; $4922: $88
	adc  b                                           ; $4923: $88
	adc  b                                           ; $4924: $88
	adc  b                                           ; $4925: $88
	adc  b                                           ; $4926: $88
	adc  b                                           ; $4927: $88
	adc  b                                           ; $4928: $88
	adc  b                                           ; $4929: $88
	adc  b                                           ; $492a: $88
	adc  b                                           ; $492b: $88
	adc  b                                           ; $492c: $88
	adc  b                                           ; $492d: $88
	adc  b                                           ; $492e: $88
	adc  b                                           ; $492f: $88
	adc  b                                           ; $4930: $88
	adc  b                                           ; $4931: $88
	adc  b                                           ; $4932: $88
	adc  b                                           ; $4933: $88
	adc  b                                           ; $4934: $88
	adc  b                                           ; $4935: $88
	adc  b                                           ; $4936: $88
	adc  b                                           ; $4937: $88
	adc  b                                           ; $4938: $88
	adc  b                                           ; $4939: $88
	adc  b                                           ; $493a: $88
	adc  b                                           ; $493b: $88
	adc  b                                           ; $493c: $88
	adc  b                                           ; $493d: $88
	adc  b                                           ; $493e: $88
	adc  b                                           ; $493f: $88
	adc  b                                           ; $4940: $88
	adc  b                                           ; $4941: $88
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	adc  b                                           ; $4944: $88
	adc  b                                           ; $4945: $88
	adc  b                                           ; $4946: $88
	adc  b                                           ; $4947: $88
	adc  b                                           ; $4948: $88
	adc  b                                           ; $4949: $88
	adc  b                                           ; $494a: $88
	adc  b                                           ; $494b: $88
	adc  b                                           ; $494c: $88
	adc  b                                           ; $494d: $88
	adc  b                                           ; $494e: $88
	adc  b                                           ; $494f: $88
	adc  b                                           ; $4950: $88
	adc  b                                           ; $4951: $88
	adc  b                                           ; $4952: $88
	adc  b                                           ; $4953: $88
	adc  b                                           ; $4954: $88
	adc  b                                           ; $4955: $88
	adc  b                                           ; $4956: $88
	adc  b                                           ; $4957: $88
	adc  b                                           ; $4958: $88
	adc  b                                           ; $4959: $88
	adc  b                                           ; $495a: $88
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	adc  b                                           ; $495d: $88
	adc  b                                           ; $495e: $88
	adc  b                                           ; $495f: $88
	adc  b                                           ; $4960: $88
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
	adc  b                                           ; $496b: $88
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
	adc  b                                           ; $4986: $88
	adc  b                                           ; $4987: $88
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	adc  b                                           ; $498a: $88
	adc  b                                           ; $498b: $88
	adc  b                                           ; $498c: $88
	adc  b                                           ; $498d: $88
	adc  b                                           ; $498e: $88
	adc  b                                           ; $498f: $88
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
	adc  b                                           ; $49b7: $88
	adc  b                                           ; $49b8: $88
	adc  b                                           ; $49b9: $88
	adc  b                                           ; $49ba: $88
	adc  b                                           ; $49bb: $88
	adc  b                                           ; $49bc: $88
	adc  b                                           ; $49bd: $88
	adc  b                                           ; $49be: $88
	adc  b                                           ; $49bf: $88
	adc  b                                           ; $49c0: $88
	adc  b                                           ; $49c1: $88
	adc  b                                           ; $49c2: $88
	adc  b                                           ; $49c3: $88
	adc  b                                           ; $49c4: $88
	adc  b                                           ; $49c5: $88
	adc  b                                           ; $49c6: $88
	adc  b                                           ; $49c7: $88
	adc  b                                           ; $49c8: $88
	adc  b                                           ; $49c9: $88
	adc  b                                           ; $49ca: $88
	adc  b                                           ; $49cb: $88
	adc  b                                           ; $49cc: $88
	adc  b                                           ; $49cd: $88
	adc  b                                           ; $49ce: $88
	adc  b                                           ; $49cf: $88
	adc  b                                           ; $49d0: $88
	adc  b                                           ; $49d1: $88
	adc  b                                           ; $49d2: $88
	adc  b                                           ; $49d3: $88
	adc  b                                           ; $49d4: $88
	adc  b                                           ; $49d5: $88
	adc  b                                           ; $49d6: $88
	adc  b                                           ; $49d7: $88
	adc  b                                           ; $49d8: $88
	adc  b                                           ; $49d9: $88
	adc  b                                           ; $49da: $88
	adc  b                                           ; $49db: $88
	adc  b                                           ; $49dc: $88
	adc  b                                           ; $49dd: $88
	adc  b                                           ; $49de: $88
	adc  b                                           ; $49df: $88
	adc  b                                           ; $49e0: $88
	adc  b                                           ; $49e1: $88
	adc  b                                           ; $49e2: $88
	adc  b                                           ; $49e3: $88
	adc  b                                           ; $49e4: $88
	adc  b                                           ; $49e5: $88
	adc  b                                           ; $49e6: $88
	adc  b                                           ; $49e7: $88
	adc  b                                           ; $49e8: $88
	adc  b                                           ; $49e9: $88
	adc  b                                           ; $49ea: $88
	adc  b                                           ; $49eb: $88
	adc  b                                           ; $49ec: $88
	adc  b                                           ; $49ed: $88
	adc  b                                           ; $49ee: $88
	adc  b                                           ; $49ef: $88
	adc  b                                           ; $49f0: $88
	adc  b                                           ; $49f1: $88
	adc  b                                           ; $49f2: $88
	adc  b                                           ; $49f3: $88
	adc  b                                           ; $49f4: $88
	adc  b                                           ; $49f5: $88
	adc  b                                           ; $49f6: $88
	adc  b                                           ; $49f7: $88
	adc  b                                           ; $49f8: $88
	adc  b                                           ; $49f9: $88
	adc  b                                           ; $49fa: $88
	adc  b                                           ; $49fb: $88
	adc  b                                           ; $49fc: $88
	adc  b                                           ; $49fd: $88
	adc  b                                           ; $49fe: $88
	adc  b                                           ; $49ff: $88
	adc  b                                           ; $4a00: $88
	adc  b                                           ; $4a01: $88
	adc  b                                           ; $4a02: $88
	adc  b                                           ; $4a03: $88
	adc  b                                           ; $4a04: $88
	adc  b                                           ; $4a05: $88
	adc  b                                           ; $4a06: $88
	adc  b                                           ; $4a07: $88
	adc  b                                           ; $4a08: $88
	adc  b                                           ; $4a09: $88
	adc  b                                           ; $4a0a: $88
	adc  b                                           ; $4a0b: $88
	adc  b                                           ; $4a0c: $88
	adc  b                                           ; $4a0d: $88
	adc  b                                           ; $4a0e: $88
	adc  b                                           ; $4a0f: $88
	adc  b                                           ; $4a10: $88
	adc  b                                           ; $4a11: $88
	adc  b                                           ; $4a12: $88
	adc  b                                           ; $4a13: $88
	adc  b                                           ; $4a14: $88
	adc  b                                           ; $4a15: $88
	adc  b                                           ; $4a16: $88
	adc  b                                           ; $4a17: $88
	adc  b                                           ; $4a18: $88
	adc  b                                           ; $4a19: $88
	adc  b                                           ; $4a1a: $88
	adc  b                                           ; $4a1b: $88
	adc  b                                           ; $4a1c: $88
	adc  b                                           ; $4a1d: $88
	adc  b                                           ; $4a1e: $88
	adc  b                                           ; $4a1f: $88
	adc  b                                           ; $4a20: $88
	adc  b                                           ; $4a21: $88
	adc  b                                           ; $4a22: $88
	adc  b                                           ; $4a23: $88
	adc  b                                           ; $4a24: $88
	adc  b                                           ; $4a25: $88
	adc  b                                           ; $4a26: $88
	adc  b                                           ; $4a27: $88
	adc  b                                           ; $4a28: $88
	adc  b                                           ; $4a29: $88
	adc  b                                           ; $4a2a: $88
	adc  b                                           ; $4a2b: $88
	adc  b                                           ; $4a2c: $88
	adc  b                                           ; $4a2d: $88
	adc  b                                           ; $4a2e: $88
	adc  b                                           ; $4a2f: $88
	adc  b                                           ; $4a30: $88
	adc  b                                           ; $4a31: $88
	adc  b                                           ; $4a32: $88
	adc  b                                           ; $4a33: $88
	adc  b                                           ; $4a34: $88
	adc  b                                           ; $4a35: $88
	adc  b                                           ; $4a36: $88
	adc  b                                           ; $4a37: $88
	adc  b                                           ; $4a38: $88
	adc  b                                           ; $4a39: $88
	adc  b                                           ; $4a3a: $88
	adc  b                                           ; $4a3b: $88
	adc  b                                           ; $4a3c: $88
	adc  b                                           ; $4a3d: $88
	adc  b                                           ; $4a3e: $88
	adc  b                                           ; $4a3f: $88
	adc  b                                           ; $4a40: $88
	adc  b                                           ; $4a41: $88
	adc  b                                           ; $4a42: $88
	adc  b                                           ; $4a43: $88
	adc  b                                           ; $4a44: $88
	adc  b                                           ; $4a45: $88
	adc  b                                           ; $4a46: $88
	adc  b                                           ; $4a47: $88
	adc  b                                           ; $4a48: $88
	adc  b                                           ; $4a49: $88
	adc  b                                           ; $4a4a: $88
	adc  b                                           ; $4a4b: $88
	adc  b                                           ; $4a4c: $88
	adc  b                                           ; $4a4d: $88
	adc  b                                           ; $4a4e: $88
	adc  b                                           ; $4a4f: $88
	adc  b                                           ; $4a50: $88
	adc  b                                           ; $4a51: $88
	adc  b                                           ; $4a52: $88
	adc  b                                           ; $4a53: $88
	adc  b                                           ; $4a54: $88
	adc  b                                           ; $4a55: $88
	adc  b                                           ; $4a56: $88
	adc  b                                           ; $4a57: $88
	adc  b                                           ; $4a58: $88
	adc  b                                           ; $4a59: $88
	adc  b                                           ; $4a5a: $88
	adc  b                                           ; $4a5b: $88
	adc  b                                           ; $4a5c: $88
	adc  b                                           ; $4a5d: $88
	adc  b                                           ; $4a5e: $88
	adc  b                                           ; $4a5f: $88
	adc  b                                           ; $4a60: $88
	adc  b                                           ; $4a61: $88
	adc  b                                           ; $4a62: $88
	adc  b                                           ; $4a63: $88
	adc  b                                           ; $4a64: $88
	adc  b                                           ; $4a65: $88
	adc  b                                           ; $4a66: $88
	adc  b                                           ; $4a67: $88
	adc  b                                           ; $4a68: $88
	adc  b                                           ; $4a69: $88
	adc  b                                           ; $4a6a: $88
	adc  b                                           ; $4a6b: $88
	adc  b                                           ; $4a6c: $88
	adc  b                                           ; $4a6d: $88
	adc  b                                           ; $4a6e: $88
	adc  b                                           ; $4a6f: $88
	adc  b                                           ; $4a70: $88
	adc  b                                           ; $4a71: $88
	adc  b                                           ; $4a72: $88
	adc  b                                           ; $4a73: $88
	adc  b                                           ; $4a74: $88
	adc  b                                           ; $4a75: $88
	adc  b                                           ; $4a76: $88
	adc  b                                           ; $4a77: $88
	adc  b                                           ; $4a78: $88
	adc  b                                           ; $4a79: $88
	adc  b                                           ; $4a7a: $88
	adc  b                                           ; $4a7b: $88
	adc  b                                           ; $4a7c: $88
	adc  b                                           ; $4a7d: $88
	adc  b                                           ; $4a7e: $88
	adc  b                                           ; $4a7f: $88
	adc  b                                           ; $4a80: $88
	adc  b                                           ; $4a81: $88
	adc  b                                           ; $4a82: $88
	adc  b                                           ; $4a83: $88
	adc  b                                           ; $4a84: $88
	adc  b                                           ; $4a85: $88
	adc  b                                           ; $4a86: $88
	adc  b                                           ; $4a87: $88
	adc  b                                           ; $4a88: $88
	adc  b                                           ; $4a89: $88
	adc  b                                           ; $4a8a: $88
	adc  b                                           ; $4a8b: $88
	adc  b                                           ; $4a8c: $88
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
	adc  b                                           ; $4a90: $88
	adc  b                                           ; $4a91: $88
	adc  b                                           ; $4a92: $88
	adc  b                                           ; $4a93: $88
	adc  b                                           ; $4a94: $88
	adc  b                                           ; $4a95: $88
	adc  b                                           ; $4a96: $88
	adc  b                                           ; $4a97: $88
	adc  b                                           ; $4a98: $88
	adc  b                                           ; $4a99: $88
	adc  b                                           ; $4a9a: $88
	adc  b                                           ; $4a9b: $88
	adc  b                                           ; $4a9c: $88
	adc  b                                           ; $4a9d: $88
	adc  b                                           ; $4a9e: $88
	adc  b                                           ; $4a9f: $88
	adc  b                                           ; $4aa0: $88
	adc  b                                           ; $4aa1: $88
	adc  b                                           ; $4aa2: $88
	adc  b                                           ; $4aa3: $88
	adc  b                                           ; $4aa4: $88
	adc  b                                           ; $4aa5: $88
	adc  b                                           ; $4aa6: $88
	adc  b                                           ; $4aa7: $88
	adc  b                                           ; $4aa8: $88
	adc  b                                           ; $4aa9: $88
	adc  b                                           ; $4aaa: $88
	adc  b                                           ; $4aab: $88
	adc  b                                           ; $4aac: $88
	adc  b                                           ; $4aad: $88
	adc  b                                           ; $4aae: $88
	adc  b                                           ; $4aaf: $88
	adc  b                                           ; $4ab0: $88
	adc  b                                           ; $4ab1: $88
	adc  b                                           ; $4ab2: $88
	adc  b                                           ; $4ab3: $88
	adc  b                                           ; $4ab4: $88
	adc  b                                           ; $4ab5: $88
	adc  b                                           ; $4ab6: $88
	adc  b                                           ; $4ab7: $88
	adc  b                                           ; $4ab8: $88
	adc  b                                           ; $4ab9: $88
	adc  b                                           ; $4aba: $88
	adc  b                                           ; $4abb: $88
	adc  b                                           ; $4abc: $88
	adc  b                                           ; $4abd: $88
	adc  b                                           ; $4abe: $88
	adc  b                                           ; $4abf: $88
	adc  b                                           ; $4ac0: $88
	adc  b                                           ; $4ac1: $88
	adc  b                                           ; $4ac2: $88
	adc  b                                           ; $4ac3: $88
	adc  b                                           ; $4ac4: $88
	adc  b                                           ; $4ac5: $88
	adc  b                                           ; $4ac6: $88
	adc  b                                           ; $4ac7: $88
	adc  b                                           ; $4ac8: $88
	adc  b                                           ; $4ac9: $88
	adc  b                                           ; $4aca: $88
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	adc  b                                           ; $4acd: $88
	adc  b                                           ; $4ace: $88
	adc  b                                           ; $4acf: $88
	adc  b                                           ; $4ad0: $88
	adc  b                                           ; $4ad1: $88
	adc  b                                           ; $4ad2: $88
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  b                                           ; $4ad5: $88
	adc  b                                           ; $4ad6: $88
	adc  b                                           ; $4ad7: $88
	adc  b                                           ; $4ad8: $88
	adc  b                                           ; $4ad9: $88
	adc  b                                           ; $4ada: $88
	adc  b                                           ; $4adb: $88
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
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
	adc  b                                           ; $4af9: $88
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
	adc  b                                           ; $4b07: $88
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
	adc  b                                           ; $4b23: $88
	adc  b                                           ; $4b24: $88
	adc  b                                           ; $4b25: $88
	adc  b                                           ; $4b26: $88
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	adc  b                                           ; $4b2a: $88
	adc  b                                           ; $4b2b: $88
	adc  b                                           ; $4b2c: $88
	adc  b                                           ; $4b2d: $88
	adc  b                                           ; $4b2e: $88
	adc  b                                           ; $4b2f: $88
	adc  b                                           ; $4b30: $88
	adc  b                                           ; $4b31: $88
	adc  b                                           ; $4b32: $88
	adc  b                                           ; $4b33: $88
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
	adc  b                                           ; $4bb5: $88
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
	adc  b                                           ; $4bc4: $88
	adc  b                                           ; $4bc5: $88
	adc  b                                           ; $4bc6: $88
	adc  b                                           ; $4bc7: $88
	adc  b                                           ; $4bc8: $88
	adc  b                                           ; $4bc9: $88
	adc  b                                           ; $4bca: $88
	adc  b                                           ; $4bcb: $88
	adc  b                                           ; $4bcc: $88
	adc  b                                           ; $4bcd: $88
	adc  b                                           ; $4bce: $88
	adc  b                                           ; $4bcf: $88
	adc  b                                           ; $4bd0: $88
	adc  b                                           ; $4bd1: $88
	adc  b                                           ; $4bd2: $88
	adc  b                                           ; $4bd3: $88
	adc  b                                           ; $4bd4: $88
	adc  b                                           ; $4bd5: $88
	adc  b                                           ; $4bd6: $88
	adc  b                                           ; $4bd7: $88
	adc  b                                           ; $4bd8: $88
	adc  b                                           ; $4bd9: $88
	adc  b                                           ; $4bda: $88
	adc  b                                           ; $4bdb: $88
	adc  b                                           ; $4bdc: $88
	adc  b                                           ; $4bdd: $88
	adc  b                                           ; $4bde: $88
	adc  b                                           ; $4bdf: $88
	adc  b                                           ; $4be0: $88
	adc  b                                           ; $4be1: $88
	adc  b                                           ; $4be2: $88
	adc  b                                           ; $4be3: $88
	adc  b                                           ; $4be4: $88
	adc  b                                           ; $4be5: $88
	adc  b                                           ; $4be6: $88
	adc  b                                           ; $4be7: $88
	adc  b                                           ; $4be8: $88
	adc  b                                           ; $4be9: $88
	adc  b                                           ; $4bea: $88
	adc  b                                           ; $4beb: $88
	adc  b                                           ; $4bec: $88
	adc  b                                           ; $4bed: $88
	adc  b                                           ; $4bee: $88
	adc  b                                           ; $4bef: $88
	adc  b                                           ; $4bf0: $88
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	adc  b                                           ; $4bf3: $88
	adc  b                                           ; $4bf4: $88
	adc  b                                           ; $4bf5: $88
	adc  b                                           ; $4bf6: $88
	adc  b                                           ; $4bf7: $88
	adc  b                                           ; $4bf8: $88
	adc  b                                           ; $4bf9: $88
	adc  b                                           ; $4bfa: $88
	adc  b                                           ; $4bfb: $88
	adc  b                                           ; $4bfc: $88
	adc  b                                           ; $4bfd: $88
	adc  b                                           ; $4bfe: $88
	adc  b                                           ; $4bff: $88
	adc  b                                           ; $4c00: $88
	adc  b                                           ; $4c01: $88
	adc  b                                           ; $4c02: $88
	adc  b                                           ; $4c03: $88
	adc  b                                           ; $4c04: $88
	adc  b                                           ; $4c05: $88
	adc  b                                           ; $4c06: $88
	adc  b                                           ; $4c07: $88
	adc  b                                           ; $4c08: $88
	adc  b                                           ; $4c09: $88
	adc  b                                           ; $4c0a: $88
	adc  b                                           ; $4c0b: $88
	adc  b                                           ; $4c0c: $88
	adc  b                                           ; $4c0d: $88
	adc  b                                           ; $4c0e: $88
	adc  b                                           ; $4c0f: $88
	adc  b                                           ; $4c10: $88
	adc  b                                           ; $4c11: $88
	adc  b                                           ; $4c12: $88
	adc  b                                           ; $4c13: $88
	adc  b                                           ; $4c14: $88
	adc  b                                           ; $4c15: $88
	adc  b                                           ; $4c16: $88
	adc  b                                           ; $4c17: $88
	adc  b                                           ; $4c18: $88
	adc  b                                           ; $4c19: $88
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
	adc  b                                           ; $4c36: $88
	adc  b                                           ; $4c37: $88
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
	adc  b                                           ; $4c90: $88
	adc  b                                           ; $4c91: $88
	adc  b                                           ; $4c92: $88
	adc  b                                           ; $4c93: $88
	adc  b                                           ; $4c94: $88
	adc  b                                           ; $4c95: $88
	adc  b                                           ; $4c96: $88
	adc  b                                           ; $4c97: $88
	adc  b                                           ; $4c98: $88
	adc  b                                           ; $4c99: $88
	adc  b                                           ; $4c9a: $88
	adc  b                                           ; $4c9b: $88
	adc  b                                           ; $4c9c: $88
	adc  b                                           ; $4c9d: $88
	adc  b                                           ; $4c9e: $88
	adc  b                                           ; $4c9f: $88
	adc  b                                           ; $4ca0: $88
	adc  b                                           ; $4ca1: $88
	adc  b                                           ; $4ca2: $88
	adc  b                                           ; $4ca3: $88
	adc  b                                           ; $4ca4: $88
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
	adc  b                                           ; $4ed2: $88
	adc  b                                           ; $4ed3: $88
	adc  b                                           ; $4ed4: $88
	adc  b                                           ; $4ed5: $88
	adc  b                                           ; $4ed6: $88
	adc  b                                           ; $4ed7: $88
	adc  b                                           ; $4ed8: $88
	adc  b                                           ; $4ed9: $88
	adc  b                                           ; $4eda: $88
	adc  b                                           ; $4edb: $88
	adc  b                                           ; $4edc: $88
	adc  b                                           ; $4edd: $88
	adc  b                                           ; $4ede: $88
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	adc  b                                           ; $4ee1: $88
	adc  b                                           ; $4ee2: $88
	adc  b                                           ; $4ee3: $88
	adc  b                                           ; $4ee4: $88
	adc  b                                           ; $4ee5: $88
	adc  b                                           ; $4ee6: $88
	adc  b                                           ; $4ee7: $88
	adc  b                                           ; $4ee8: $88
	adc  b                                           ; $4ee9: $88
	adc  b                                           ; $4eea: $88
	adc  b                                           ; $4eeb: $88
	adc  b                                           ; $4eec: $88
	adc  b                                           ; $4eed: $88
	adc  b                                           ; $4eee: $88
	adc  b                                           ; $4eef: $88
	adc  b                                           ; $4ef0: $88
	adc  b                                           ; $4ef1: $88
	adc  b                                           ; $4ef2: $88
	adc  b                                           ; $4ef3: $88
	adc  b                                           ; $4ef4: $88
	adc  b                                           ; $4ef5: $88
	adc  b                                           ; $4ef6: $88
	adc  b                                           ; $4ef7: $88
	adc  b                                           ; $4ef8: $88
	adc  b                                           ; $4ef9: $88
	adc  b                                           ; $4efa: $88
	adc  b                                           ; $4efb: $88
	adc  b                                           ; $4efc: $88
	adc  b                                           ; $4efd: $88
	adc  b                                           ; $4efe: $88
	adc  b                                           ; $4eff: $88
	adc  b                                           ; $4f00: $88
	adc  b                                           ; $4f01: $88
	adc  b                                           ; $4f02: $88
	adc  b                                           ; $4f03: $88
	adc  b                                           ; $4f04: $88
	adc  b                                           ; $4f05: $88
	adc  b                                           ; $4f06: $88
	adc  b                                           ; $4f07: $88
	adc  b                                           ; $4f08: $88
	adc  b                                           ; $4f09: $88
	adc  b                                           ; $4f0a: $88
	adc  b                                           ; $4f0b: $88
	adc  b                                           ; $4f0c: $88
	adc  b                                           ; $4f0d: $88
	adc  b                                           ; $4f0e: $88
	adc  b                                           ; $4f0f: $88
	adc  b                                           ; $4f10: $88
	adc  b                                           ; $4f11: $88
	adc  b                                           ; $4f12: $88
	adc  b                                           ; $4f13: $88
	adc  b                                           ; $4f14: $88
	adc  b                                           ; $4f15: $88
	adc  b                                           ; $4f16: $88
	adc  b                                           ; $4f17: $88
	adc  b                                           ; $4f18: $88
	adc  b                                           ; $4f19: $88
	adc  b                                           ; $4f1a: $88
	adc  b                                           ; $4f1b: $88
	adc  b                                           ; $4f1c: $88
	adc  b                                           ; $4f1d: $88
	adc  b                                           ; $4f1e: $88
	adc  b                                           ; $4f1f: $88
	adc  b                                           ; $4f20: $88
	adc  b                                           ; $4f21: $88
	adc  b                                           ; $4f22: $88
	adc  b                                           ; $4f23: $88
	adc  b                                           ; $4f24: $88
	adc  b                                           ; $4f25: $88
	adc  b                                           ; $4f26: $88
	adc  b                                           ; $4f27: $88
	adc  b                                           ; $4f28: $88
	adc  b                                           ; $4f29: $88
	adc  b                                           ; $4f2a: $88
	adc  b                                           ; $4f2b: $88
	adc  b                                           ; $4f2c: $88
	adc  b                                           ; $4f2d: $88
	adc  b                                           ; $4f2e: $88
	adc  b                                           ; $4f2f: $88
	adc  b                                           ; $4f30: $88
	adc  b                                           ; $4f31: $88
	adc  b                                           ; $4f32: $88
	adc  b                                           ; $4f33: $88
	adc  b                                           ; $4f34: $88
	adc  b                                           ; $4f35: $88
	adc  b                                           ; $4f36: $88
	adc  b                                           ; $4f37: $88
	adc  b                                           ; $4f38: $88
	adc  b                                           ; $4f39: $88
	adc  b                                           ; $4f3a: $88
	adc  b                                           ; $4f3b: $88
	adc  b                                           ; $4f3c: $88
	adc  b                                           ; $4f3d: $88
	adc  b                                           ; $4f3e: $88
	adc  b                                           ; $4f3f: $88
	adc  b                                           ; $4f40: $88
	adc  b                                           ; $4f41: $88
	adc  b                                           ; $4f42: $88
	adc  b                                           ; $4f43: $88
	adc  b                                           ; $4f44: $88
	adc  b                                           ; $4f45: $88
	adc  b                                           ; $4f46: $88
	adc  b                                           ; $4f47: $88
	adc  b                                           ; $4f48: $88
	adc  b                                           ; $4f49: $88
	adc  b                                           ; $4f4a: $88
	adc  b                                           ; $4f4b: $88
	adc  b                                           ; $4f4c: $88
	adc  b                                           ; $4f4d: $88
	adc  b                                           ; $4f4e: $88
	adc  b                                           ; $4f4f: $88
	adc  b                                           ; $4f50: $88
	adc  b                                           ; $4f51: $88
	adc  b                                           ; $4f52: $88
	adc  b                                           ; $4f53: $88
	adc  b                                           ; $4f54: $88
	adc  b                                           ; $4f55: $88
	adc  b                                           ; $4f56: $88
	adc  b                                           ; $4f57: $88
	adc  b                                           ; $4f58: $88
	adc  b                                           ; $4f59: $88
	adc  b                                           ; $4f5a: $88
	adc  b                                           ; $4f5b: $88
	adc  b                                           ; $4f5c: $88
	adc  b                                           ; $4f5d: $88
	adc  b                                           ; $4f5e: $88
	adc  b                                           ; $4f5f: $88
	adc  b                                           ; $4f60: $88
	adc  b                                           ; $4f61: $88
	adc  b                                           ; $4f62: $88
	adc  b                                           ; $4f63: $88
	adc  b                                           ; $4f64: $88
	adc  b                                           ; $4f65: $88
	adc  b                                           ; $4f66: $88
	adc  b                                           ; $4f67: $88
	adc  b                                           ; $4f68: $88
	adc  b                                           ; $4f69: $88
	adc  b                                           ; $4f6a: $88
	adc  b                                           ; $4f6b: $88
	adc  b                                           ; $4f6c: $88
	adc  b                                           ; $4f6d: $88
	adc  b                                           ; $4f6e: $88
	adc  b                                           ; $4f6f: $88
	adc  b                                           ; $4f70: $88
	adc  b                                           ; $4f71: $88
	adc  b                                           ; $4f72: $88
	adc  b                                           ; $4f73: $88
	adc  b                                           ; $4f74: $88
	adc  b                                           ; $4f75: $88
	adc  b                                           ; $4f76: $88
	adc  b                                           ; $4f77: $88
	adc  b                                           ; $4f78: $88
	adc  b                                           ; $4f79: $88
	adc  b                                           ; $4f7a: $88
	adc  b                                           ; $4f7b: $88
	adc  b                                           ; $4f7c: $88
	adc  b                                           ; $4f7d: $88
	adc  b                                           ; $4f7e: $88
	adc  b                                           ; $4f7f: $88
	adc  b                                           ; $4f80: $88
	adc  b                                           ; $4f81: $88
	adc  b                                           ; $4f82: $88
	adc  b                                           ; $4f83: $88
	adc  b                                           ; $4f84: $88
	adc  b                                           ; $4f85: $88
	adc  b                                           ; $4f86: $88
	adc  b                                           ; $4f87: $88
	adc  b                                           ; $4f88: $88
	adc  b                                           ; $4f89: $88
	adc  b                                           ; $4f8a: $88
	adc  b                                           ; $4f8b: $88
	adc  b                                           ; $4f8c: $88
	adc  b                                           ; $4f8d: $88
	adc  b                                           ; $4f8e: $88
	adc  b                                           ; $4f8f: $88
	adc  b                                           ; $4f90: $88
	adc  b                                           ; $4f91: $88
	adc  b                                           ; $4f92: $88
	adc  b                                           ; $4f93: $88
	adc  b                                           ; $4f94: $88
	adc  b                                           ; $4f95: $88
	adc  b                                           ; $4f96: $88
	adc  b                                           ; $4f97: $88
	adc  b                                           ; $4f98: $88
	adc  b                                           ; $4f99: $88
	adc  b                                           ; $4f9a: $88
	adc  b                                           ; $4f9b: $88
	adc  b                                           ; $4f9c: $88
	adc  b                                           ; $4f9d: $88
	adc  b                                           ; $4f9e: $88
	adc  b                                           ; $4f9f: $88
	adc  b                                           ; $4fa0: $88
	adc  b                                           ; $4fa1: $88
	adc  b                                           ; $4fa2: $88
	adc  b                                           ; $4fa3: $88
	adc  b                                           ; $4fa4: $88
	adc  b                                           ; $4fa5: $88
	adc  b                                           ; $4fa6: $88
	adc  b                                           ; $4fa7: $88
	adc  b                                           ; $4fa8: $88
	adc  b                                           ; $4fa9: $88
	adc  b                                           ; $4faa: $88
	adc  b                                           ; $4fab: $88
	adc  b                                           ; $4fac: $88
	adc  b                                           ; $4fad: $88
	adc  b                                           ; $4fae: $88
	adc  b                                           ; $4faf: $88
	adc  b                                           ; $4fb0: $88
	adc  b                                           ; $4fb1: $88
	adc  b                                           ; $4fb2: $88
	adc  b                                           ; $4fb3: $88
	adc  b                                           ; $4fb4: $88
	adc  b                                           ; $4fb5: $88
	adc  b                                           ; $4fb6: $88
	adc  b                                           ; $4fb7: $88
	adc  b                                           ; $4fb8: $88
	adc  b                                           ; $4fb9: $88
	adc  b                                           ; $4fba: $88
	adc  b                                           ; $4fbb: $88
	adc  b                                           ; $4fbc: $88
	adc  b                                           ; $4fbd: $88
	adc  b                                           ; $4fbe: $88
	adc  b                                           ; $4fbf: $88
	adc  b                                           ; $4fc0: $88
	adc  b                                           ; $4fc1: $88
	adc  b                                           ; $4fc2: $88
	adc  b                                           ; $4fc3: $88
	adc  b                                           ; $4fc4: $88
	adc  b                                           ; $4fc5: $88
	adc  b                                           ; $4fc6: $88
	adc  b                                           ; $4fc7: $88
	adc  b                                           ; $4fc8: $88
	adc  b                                           ; $4fc9: $88
	adc  b                                           ; $4fca: $88
	adc  b                                           ; $4fcb: $88
	adc  b                                           ; $4fcc: $88
	adc  b                                           ; $4fcd: $88
	adc  b                                           ; $4fce: $88
	adc  b                                           ; $4fcf: $88
	adc  b                                           ; $4fd0: $88
	adc  b                                           ; $4fd1: $88
	adc  b                                           ; $4fd2: $88
	adc  b                                           ; $4fd3: $88
	adc  b                                           ; $4fd4: $88
	adc  b                                           ; $4fd5: $88
	adc  b                                           ; $4fd6: $88
	adc  b                                           ; $4fd7: $88
	adc  b                                           ; $4fd8: $88
	adc  b                                           ; $4fd9: $88
	adc  b                                           ; $4fda: $88
	adc  b                                           ; $4fdb: $88
	adc  b                                           ; $4fdc: $88
	adc  b                                           ; $4fdd: $88
	adc  b                                           ; $4fde: $88
	adc  b                                           ; $4fdf: $88
	adc  b                                           ; $4fe0: $88
	adc  b                                           ; $4fe1: $88
	adc  b                                           ; $4fe2: $88
	adc  b                                           ; $4fe3: $88
	adc  b                                           ; $4fe4: $88
	adc  b                                           ; $4fe5: $88
	adc  b                                           ; $4fe6: $88
	adc  b                                           ; $4fe7: $88
	adc  b                                           ; $4fe8: $88
	adc  b                                           ; $4fe9: $88
	adc  b                                           ; $4fea: $88
	adc  b                                           ; $4feb: $88
	adc  b                                           ; $4fec: $88
	adc  b                                           ; $4fed: $88
	adc  b                                           ; $4fee: $88
	adc  b                                           ; $4fef: $88
	adc  b                                           ; $4ff0: $88
	adc  b                                           ; $4ff1: $88
	adc  b                                           ; $4ff2: $88
	adc  b                                           ; $4ff3: $88
	adc  b                                           ; $4ff4: $88
	adc  b                                           ; $4ff5: $88
	adc  b                                           ; $4ff6: $88
	adc  b                                           ; $4ff7: $88
	adc  b                                           ; $4ff8: $88
	adc  b                                           ; $4ff9: $88
	adc  b                                           ; $4ffa: $88
	adc  b                                           ; $4ffb: $88
	adc  b                                           ; $4ffc: $88
	adc  b                                           ; $4ffd: $88
	adc  b                                           ; $4ffe: $88
	adc  b                                           ; $4fff: $88
	adc  b                                           ; $5000: $88
	adc  b                                           ; $5001: $88
	adc  b                                           ; $5002: $88
	adc  b                                           ; $5003: $88
	adc  b                                           ; $5004: $88
	adc  b                                           ; $5005: $88
	adc  b                                           ; $5006: $88
	adc  b                                           ; $5007: $88
	adc  b                                           ; $5008: $88
	adc  b                                           ; $5009: $88
	adc  b                                           ; $500a: $88
	adc  b                                           ; $500b: $88
	adc  b                                           ; $500c: $88
	adc  b                                           ; $500d: $88
	adc  b                                           ; $500e: $88
	adc  b                                           ; $500f: $88
	adc  b                                           ; $5010: $88
	adc  b                                           ; $5011: $88
	adc  b                                           ; $5012: $88
	adc  b                                           ; $5013: $88
	adc  b                                           ; $5014: $88
	adc  b                                           ; $5015: $88
	adc  b                                           ; $5016: $88
	adc  b                                           ; $5017: $88
	adc  b                                           ; $5018: $88
	adc  b                                           ; $5019: $88
	adc  b                                           ; $501a: $88
	adc  b                                           ; $501b: $88
	adc  b                                           ; $501c: $88
	adc  b                                           ; $501d: $88
	adc  b                                           ; $501e: $88
	adc  b                                           ; $501f: $88
	adc  b                                           ; $5020: $88
	adc  b                                           ; $5021: $88
	adc  b                                           ; $5022: $88
	adc  b                                           ; $5023: $88
	adc  b                                           ; $5024: $88
	adc  b                                           ; $5025: $88
	adc  b                                           ; $5026: $88
	adc  b                                           ; $5027: $88
	adc  b                                           ; $5028: $88
	adc  b                                           ; $5029: $88
	adc  b                                           ; $502a: $88
	adc  b                                           ; $502b: $88
	adc  b                                           ; $502c: $88
	adc  b                                           ; $502d: $88
	adc  b                                           ; $502e: $88
	adc  b                                           ; $502f: $88
	adc  b                                           ; $5030: $88
	adc  b                                           ; $5031: $88
	adc  b                                           ; $5032: $88
	adc  b                                           ; $5033: $88
	adc  b                                           ; $5034: $88
	adc  b                                           ; $5035: $88
	adc  b                                           ; $5036: $88
	adc  b                                           ; $5037: $88
	adc  b                                           ; $5038: $88
	adc  b                                           ; $5039: $88
	adc  b                                           ; $503a: $88
	adc  b                                           ; $503b: $88
	adc  b                                           ; $503c: $88
	adc  b                                           ; $503d: $88
	adc  b                                           ; $503e: $88
	adc  b                                           ; $503f: $88
	adc  b                                           ; $5040: $88
	adc  b                                           ; $5041: $88
	adc  b                                           ; $5042: $88
	adc  b                                           ; $5043: $88
	adc  b                                           ; $5044: $88
	adc  b                                           ; $5045: $88
	adc  b                                           ; $5046: $88
	adc  b                                           ; $5047: $88
	adc  b                                           ; $5048: $88
	adc  b                                           ; $5049: $88
	adc  b                                           ; $504a: $88
	adc  b                                           ; $504b: $88
	adc  b                                           ; $504c: $88
	adc  b                                           ; $504d: $88
	adc  b                                           ; $504e: $88
	adc  b                                           ; $504f: $88
	adc  b                                           ; $5050: $88
	adc  b                                           ; $5051: $88
	adc  b                                           ; $5052: $88
	adc  b                                           ; $5053: $88
	adc  b                                           ; $5054: $88
	adc  b                                           ; $5055: $88
	adc  b                                           ; $5056: $88
	adc  b                                           ; $5057: $88
	adc  b                                           ; $5058: $88
	adc  b                                           ; $5059: $88
	adc  b                                           ; $505a: $88
	adc  b                                           ; $505b: $88
	adc  b                                           ; $505c: $88
	adc  b                                           ; $505d: $88
	adc  b                                           ; $505e: $88
	adc  b                                           ; $505f: $88
	adc  b                                           ; $5060: $88
	adc  b                                           ; $5061: $88
	adc  b                                           ; $5062: $88
	adc  b                                           ; $5063: $88
	adc  b                                           ; $5064: $88
	adc  b                                           ; $5065: $88
	adc  b                                           ; $5066: $88
	adc  b                                           ; $5067: $88
	adc  b                                           ; $5068: $88
	adc  b                                           ; $5069: $88
	adc  b                                           ; $506a: $88
	adc  b                                           ; $506b: $88
	adc  b                                           ; $506c: $88
	adc  b                                           ; $506d: $88
	adc  b                                           ; $506e: $88
	adc  b                                           ; $506f: $88
	adc  b                                           ; $5070: $88
	adc  b                                           ; $5071: $88
	adc  b                                           ; $5072: $88
	adc  b                                           ; $5073: $88
	adc  b                                           ; $5074: $88
	adc  b                                           ; $5075: $88
	adc  b                                           ; $5076: $88
	adc  b                                           ; $5077: $88
	adc  b                                           ; $5078: $88
	adc  b                                           ; $5079: $88
	adc  b                                           ; $507a: $88
	adc  b                                           ; $507b: $88
	adc  b                                           ; $507c: $88
	adc  b                                           ; $507d: $88
	adc  b                                           ; $507e: $88
	adc  b                                           ; $507f: $88
	adc  b                                           ; $5080: $88
	adc  b                                           ; $5081: $88
	adc  b                                           ; $5082: $88
	adc  b                                           ; $5083: $88
	adc  b                                           ; $5084: $88
	adc  b                                           ; $5085: $88
	adc  b                                           ; $5086: $88
	adc  b                                           ; $5087: $88
	adc  b                                           ; $5088: $88
	adc  b                                           ; $5089: $88
	adc  b                                           ; $508a: $88
	adc  b                                           ; $508b: $88
	adc  b                                           ; $508c: $88
	adc  b                                           ; $508d: $88
	adc  b                                           ; $508e: $88
	adc  b                                           ; $508f: $88
	adc  b                                           ; $5090: $88
	adc  b                                           ; $5091: $88
	adc  b                                           ; $5092: $88
	adc  b                                           ; $5093: $88
	adc  b                                           ; $5094: $88
	adc  b                                           ; $5095: $88
	adc  b                                           ; $5096: $88
	adc  b                                           ; $5097: $88
	adc  b                                           ; $5098: $88
	adc  b                                           ; $5099: $88
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
	adc  b                                           ; $50a5: $88
	adc  b                                           ; $50a6: $88
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
	adc  b                                           ; $50b2: $88
	adc  b                                           ; $50b3: $88
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
	adc  b                                           ; $50bf: $88
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
	adc  b                                           ; $50d0: $88
	adc  b                                           ; $50d1: $88
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
	adc  b                                           ; $50dd: $88
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
	adc  b                                           ; $5175: $88
	adc  b                                           ; $5176: $88
	adc  b                                           ; $5177: $88
	adc  b                                           ; $5178: $88
	adc  b                                           ; $5179: $88
	adc  b                                           ; $517a: $88
	adc  b                                           ; $517b: $88
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
	adc  b                                           ; $518c: $88
	adc  b                                           ; $518d: $88
	adc  b                                           ; $518e: $88
	adc  b                                           ; $518f: $88
	adc  b                                           ; $5190: $88
	adc  b                                           ; $5191: $88
	adc  b                                           ; $5192: $88
	adc  b                                           ; $5193: $88
	adc  b                                           ; $5194: $88
	adc  b                                           ; $5195: $88
	adc  b                                           ; $5196: $88
	adc  b                                           ; $5197: $88
	adc  b                                           ; $5198: $88
	adc  b                                           ; $5199: $88
	adc  b                                           ; $519a: $88
	adc  b                                           ; $519b: $88
	adc  b                                           ; $519c: $88
	adc  b                                           ; $519d: $88
	adc  b                                           ; $519e: $88
	adc  b                                           ; $519f: $88
	adc  b                                           ; $51a0: $88
	adc  b                                           ; $51a1: $88
	adc  b                                           ; $51a2: $88
	adc  b                                           ; $51a3: $88
	adc  b                                           ; $51a4: $88
	adc  b                                           ; $51a5: $88
	adc  b                                           ; $51a6: $88
	adc  b                                           ; $51a7: $88
	adc  b                                           ; $51a8: $88
	adc  b                                           ; $51a9: $88
	adc  b                                           ; $51aa: $88
	adc  b                                           ; $51ab: $88
	adc  b                                           ; $51ac: $88
	adc  b                                           ; $51ad: $88
	adc  b                                           ; $51ae: $88
	adc  b                                           ; $51af: $88
	adc  b                                           ; $51b0: $88
	adc  b                                           ; $51b1: $88
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
	adc  b                                           ; $51be: $88
	adc  b                                           ; $51bf: $88
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
	adc  b                                           ; $51f8: $88
	adc  b                                           ; $51f9: $88
	adc  b                                           ; $51fa: $88
	adc  b                                           ; $51fb: $88
	adc  b                                           ; $51fc: $88
	adc  b                                           ; $51fd: $88
	adc  b                                           ; $51fe: $88
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

Jump_0aa_52a9:
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

Call_0aa_56c9:
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
	adc  c                                           ; $5ba0: $89
	adc  b                                           ; $5ba1: $88
	sbc  c                                           ; $5ba2: $99
	sbc  c                                           ; $5ba3: $99
	sbc  c                                           ; $5ba4: $99
	sbc  c                                           ; $5ba5: $99
	sbc  c                                           ; $5ba6: $99
	sbc  c                                           ; $5ba7: $99
	sbc  c                                           ; $5ba8: $99
	sbc  c                                           ; $5ba9: $99
	sbc  c                                           ; $5baa: $99
	sbc  b                                           ; $5bab: $98
	adc  b                                           ; $5bac: $88
	adc  b                                           ; $5bad: $88
	adc  b                                           ; $5bae: $88
	adc  b                                           ; $5baf: $88
	adc  b                                           ; $5bb0: $88
	adc  b                                           ; $5bb1: $88
	add  a                                           ; $5bb2: $87
	ld   [hl], a                                     ; $5bb3: $77
	ld   [hl], a                                     ; $5bb4: $77
	ld   [hl], a                                     ; $5bb5: $77
	ld   [hl], a                                     ; $5bb6: $77
	ld   [hl], a                                     ; $5bb7: $77
	ld   [hl], a                                     ; $5bb8: $77
	ld   [hl], a                                     ; $5bb9: $77
	ld   [hl], a                                     ; $5bba: $77
	ld   [hl], a                                     ; $5bbb: $77
	ld   [hl], a                                     ; $5bbc: $77
	ld   [hl], a                                     ; $5bbd: $77
	ld   a, b                                        ; $5bbe: $78
	adc  b                                           ; $5bbf: $88
	adc  b                                           ; $5bc0: $88
	adc  b                                           ; $5bc1: $88
	sbc  c                                           ; $5bc2: $99
	sbc  c                                           ; $5bc3: $99
	adc  b                                           ; $5bc4: $88
	sbc  c                                           ; $5bc5: $99
	sbc  c                                           ; $5bc6: $99
	sbc  c                                           ; $5bc7: $99
	sbc  c                                           ; $5bc8: $99
	xor  d                                           ; $5bc9: $aa
	xor  d                                           ; $5bca: $aa
	sbc  c                                           ; $5bcb: $99
	sbc  c                                           ; $5bcc: $99
	sbc  c                                           ; $5bcd: $99
	adc  b                                           ; $5bce: $88
	sbc  c                                           ; $5bcf: $99
	adc  b                                           ; $5bd0: $88
	adc  b                                           ; $5bd1: $88
	ld   [hl], a                                     ; $5bd2: $77
	ld   [hl], a                                     ; $5bd3: $77
	ld   [hl], a                                     ; $5bd4: $77
	halt                                             ; $5bd5: $76
	ld   h, [hl]                                     ; $5bd6: $66
	ld   h, [hl]                                     ; $5bd7: $66
	ld   h, [hl]                                     ; $5bd8: $66
	ld   d, l                                        ; $5bd9: $55
	ld   d, l                                        ; $5bda: $55
	ld   d, l                                        ; $5bdb: $55
	ld   d, l                                        ; $5bdc: $55
	ld   b, l                                        ; $5bdd: $45
	ld   d, l                                        ; $5bde: $55
	ld   d, [hl]                                     ; $5bdf: $56
	ld   h, a                                        ; $5be0: $67
	ld   a, b                                        ; $5be1: $78
	sbc  c                                           ; $5be2: $99
	xor  c                                           ; $5be3: $a9
	xor  d                                           ; $5be4: $aa
	cp   d                                           ; $5be5: $ba
	cp   e                                           ; $5be6: $bb
	cp   h                                           ; $5be7: $bc
	cp   h                                           ; $5be8: $bc
	call z, $cccd                                    ; $5be9: $cc $cd $cc
	call c, $dccc                                    ; $5bec: $dc $cc $dc
	call z, $aabb                                    ; $5bef: $cc $bb $aa
	sbc  c                                           ; $5bf2: $99
	add  a                                           ; $5bf3: $87
	halt                                             ; $5bf4: $76
	ld   h, l                                        ; $5bf5: $65
	ld   d, h                                        ; $5bf6: $54
	ld   b, h                                        ; $5bf7: $44
	inc  sp                                          ; $5bf8: $33
	ld   [hl-], a                                    ; $5bf9: $32
	ld   [hl+], a                                    ; $5bfa: $22
	ld   de, $2211                                   ; $5bfb: $11 $11 $22
	inc  sp                                          ; $5bfe: $33
	ld   b, l                                        ; $5bff: $45
	ld   h, [hl]                                     ; $5c00: $66
	ld   a, b                                        ; $5c01: $78
	sbc  c                                           ; $5c02: $99
	sbc  d                                           ; $5c03: $9a
	cp   d                                           ; $5c04: $ba
	cp   h                                           ; $5c05: $bc
	cp   h                                           ; $5c06: $bc
	db   $dd                                         ; $5c07: $dd
	db   $dd                                         ; $5c08: $dd
	call z, $cbdc                                    ; $5c09: $cc $dc $cb
	call z, $babb                                    ; $5c0c: $cc $bb $ba
	xor  d                                           ; $5c0f: $aa
	xor  d                                           ; $5c10: $aa
	cp   d                                           ; $5c11: $ba
	xor  c                                           ; $5c12: $a9
	sbc  d                                           ; $5c13: $9a
	sbc  d                                           ; $5c14: $9a
	jp   c, $8858                                    ; $5c15: $da $58 $88

	ld   h, h                                        ; $5c18: $64
	ld   d, h                                        ; $5c19: $54
	ld   d, e                                        ; $5c1a: $53
	inc  sp                                          ; $5c1b: $33
	ld   [hl-], a                                    ; $5c1c: $32
	ld   de, $2202                                   ; $5c1d: $11 $02 $22
	inc  sp                                          ; $5c20: $33
	ld   d, l                                        ; $5c21: $55
	ld   a, b                                        ; $5c22: $78
	adc  c                                           ; $5c23: $89
	xor  l                                           ; $5c24: $ad
	rst  $38                                         ; $5c25: $ff
	rst  $38                                         ; $5c26: $ff
	rst  $38                                         ; $5c27: $ff
	db   $fd                                         ; $5c28: $fd
	xor  d                                           ; $5c29: $aa
	sbc  d                                           ; $5c2a: $9a
	adc  b                                           ; $5c2b: $88
	cp   h                                           ; $5c2c: $bc
	db   $ed                                         ; $5c2d: $ed
	sbc  $ff                                         ; $5c2e: $de $ff
	rst  $38                                         ; $5c30: $ff
	rst  $28                                         ; $5c31: $ef
	cp   $b7                                         ; $5c32: $fe $b7
	halt                                             ; $5c34: $76
	ld   d, c                                        ; $5c35: $51
	ld   de, $1111                                   ; $5c36: $11 $11 $11
	ld   de, $1111                                   ; $5c39: $11 $11 $11
	ld   de, $ff1c                                   ; $5c3c: $11 $1c $ff
	rst  $38                                         ; $5c3f: $ff
	rst  $38                                         ; $5c40: $ff
	rst  $38                                         ; $5c41: $ff
	rst  $38                                         ; $5c42: $ff
	rst  $38                                         ; $5c43: $ff
	or   c                                           ; $5c44: $b1
	inc  de                                          ; $5c45: $13
	ld   de, $1611                                   ; $5c46: $11 $11 $16
	sub  a                                           ; $5c49: $97
	rst  $28                                         ; $5c4a: $ef
	rst  $38                                         ; $5c4b: $ff
	rst  $38                                         ; $5c4c: $ff
	rst  $38                                         ; $5c4d: $ff
	rst  $38                                         ; $5c4e: $ff
	db   $fd                                         ; $5c4f: $fd
	call nz, $1111                                   ; $5c50: $c4 $11 $11
	ld   de, $1111                                   ; $5c53: $11 $11 $11
	ld   de, $d114                                   ; $5c56: $11 $14 $d1
	rra                                              ; $5c59: $1f
	rst  $38                                         ; $5c5a: $ff
	rst  $38                                         ; $5c5b: $ff
	rst  $38                                         ; $5c5c: $ff
	rst  $38                                         ; $5c5d: $ff
	ld   hl, sp-$21                                  ; $5c5e: $f8 $df
	ld   de, $1111                                   ; $5c60: $11 $11 $11
	ld   de, $ff9f                                   ; $5c63: $11 $9f $ff
	rst  $38                                         ; $5c66: $ff
	rst  $38                                         ; $5c67: $ff
	rst  $38                                         ; $5c68: $ff
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	jp   c, $1161                                    ; $5c6b: $da $61 $11

	ld   de, $1111                                   ; $5c6e: $11 $11 $11
	ld   de, $1111                                   ; $5c71: $11 $11 $11
	ret                                              ; $5c74: $c9


	ld   de, $ffff                                   ; $5c75: $11 $ff $ff
	rst  $38                                         ; $5c78: $ff
	rst  $38                                         ; $5c79: $ff

Call_0aa_5c7a:
	ld   a, [$b19f]                                  ; $5c7a: $fa $9f $b1
	ld   de, $1131                                   ; $5c7d: $11 $31 $11
	sbc  a                                           ; $5c80: $9f
	rst  $38                                         ; $5c81: $ff
	rst  $38                                         ; $5c82: $ff
	rst  $38                                         ; $5c83: $ff
	rst  $38                                         ; $5c84: $ff
	rst  $38                                         ; $5c85: $ff
	db   $fd                                         ; $5c86: $fd
	xor  c                                           ; $5c87: $a9
	ld   [hl], e                                     ; $5c88: $73
	ld   de, $1111                                   ; $5c89: $11 $11 $11
	ld   de, $1111                                   ; $5c8c: $11 $11 $11
	ld   de, $1119                                   ; $5c8f: $11 $19 $11
	ld   a, a                                        ; $5c92: $7f
	rst  $38                                         ; $5c93: $ff
	rst  $38                                         ; $5c94: $ff
	rst  $38                                         ; $5c95: $ff
	rst  $38                                         ; $5c96: $ff
	call z, $11c1                                    ; $5c97: $cc $c1 $11
	ld   de, $3f11                                   ; $5c9a: $11 $11 $3f
	rst  $38                                         ; $5c9d: $ff
	rst  $38                                         ; $5c9e: $ff
	rst  $38                                         ; $5c9f: $ff
	rst  $38                                         ; $5ca0: $ff
	rst  $38                                         ; $5ca1: $ff
	cp   $99                                         ; $5ca2: $fe $99
	add  l                                           ; $5ca4: $85
	ld   de, $1111                                   ; $5ca5: $11 $11 $11
	ld   de, $1111                                   ; $5ca8: $11 $11 $11
	ld   de, $211a                                   ; $5cab: $11 $1a $21
	ld   c, a                                        ; $5cae: $4f
	rst  $38                                         ; $5caf: $ff
	rst  $38                                         ; $5cb0: $ff
	rst  $38                                         ; $5cb1: $ff
	rst  $38                                         ; $5cb2: $ff
	res  4, d                                        ; $5cb3: $cb $a2
	ld   de, $1112                                   ; $5cb5: $11 $12 $11
	ld   l, a                                        ; $5cb8: $6f
	rst  $38                                         ; $5cb9: $ff
	rst  $38                                         ; $5cba: $ff
	rst  $38                                         ; $5cbb: $ff
	rst  $38                                         ; $5cbc: $ff
	rst  $38                                         ; $5cbd: $ff
	ei                                               ; $5cbe: $fb
	ld   a, b                                        ; $5cbf: $78
	add  [hl]                                        ; $5cc0: $86
	ld   hl, $1123                                   ; $5cc1: $21 $23 $11
	ld   de, $1111                                   ; $5cc4: $11 $11 $11
	ld   de, $5111                                   ; $5cc7: $11 $11 $51
	rra                                              ; $5cca: $1f
	rst  $38                                         ; $5ccb: $ff
	rst  $38                                         ; $5ccc: $ff
	rst  $38                                         ; $5ccd: $ff
	rst  $38                                         ; $5cce: $ff
	db   $fc                                         ; $5ccf: $fc
	add  $11                                         ; $5cd0: $c6 $11
	inc  de                                          ; $5cd2: $13
	ld   de, $ff5f                                   ; $5cd3: $11 $5f $ff
	rst  $38                                         ; $5cd6: $ff
	rst  $38                                         ; $5cd7: $ff
	rst  $38                                         ; $5cd8: $ff
	rst  $38                                         ; $5cd9: $ff
	ei                                               ; $5cda: $fb
	ld   a, c                                        ; $5cdb: $79
	xor  b                                           ; $5cdc: $a8
	ld   b, d                                        ; $5cdd: $42
	ld   d, a                                        ; $5cde: $57
	ld   b, c                                        ; $5cdf: $41
	ld   de, $1111                                   ; $5ce0: $11 $11 $11
	ld   de, $1411                                   ; $5ce3: $11 $11 $14
	ld   de, $ffff                                   ; $5ce6: $11 $ff $ff
	rst  $38                                         ; $5ce9: $ff
	rst  $38                                         ; $5cea: $ff
	db   $fd                                         ; $5ceb: $fd
	xor  c                                           ; $5cec: $a9
	ld   b, c                                        ; $5ced: $41
	ld   de, $2b42                                   ; $5cee: $11 $42 $2b
	rst  $38                                         ; $5cf1: $ff
	rst  $38                                         ; $5cf2: $ff
	rst  $38                                         ; $5cf3: $ff
	rst  $38                                         ; $5cf4: $ff
	rst  $38                                         ; $5cf5: $ff
	db   $fd                                         ; $5cf6: $fd
	sub  [hl]                                        ; $5cf7: $96
	ld   a, b                                        ; $5cf8: $78
	halt                                             ; $5cf9: $76
	ld   d, a                                        ; $5cfa: $57
	and  a                                           ; $5cfb: $a7
	ld   b, d                                        ; $5cfc: $42
	ld   de, $1111                                   ; $5cfd: $11 $11 $11
	ld   de, $2111                                   ; $5d00: $11 $11 $21
	inc  d                                           ; $5d03: $14
	rst  $38                                         ; $5d04: $ff
	rst  $38                                         ; $5d05: $ff
	rst  $38                                         ; $5d06: $ff
	rst  $38                                         ; $5d07: $ff
	ld   sp, hl                                      ; $5d08: $f9
	add  [hl]                                        ; $5d09: $86
	ld   de, $5314                                   ; $5d0a: $11 $14 $53
	ld   a, a                                        ; $5d0d: $7f
	rst  $38                                         ; $5d0e: $ff
	rst  $38                                         ; $5d0f: $ff
	rst  $38                                         ; $5d10: $ff
	rst  $38                                         ; $5d11: $ff
	call c, Call_0aa_56c9                            ; $5d12: $dc $c9 $56
	adc  b                                           ; $5d15: $88
	adc  c                                           ; $5d16: $89
	xor  h                                           ; $5d17: $ac
	ret                                              ; $5d18: $c9


	ld   [hl], h                                     ; $5d19: $74
	ld   hl, $1111                                   ; $5d1a: $21 $11 $11
	ld   de, $1211                                   ; $5d1d: $11 $11 $12
	ld   de, $ffff                                   ; $5d20: $11 $ff $ff
	rst  $38                                         ; $5d23: $ff
	rst  $38                                         ; $5d24: $ff
	add  sp, $76                                     ; $5d25: $e8 $76
	ld   de, $7612                                   ; $5d27: $11 $12 $76
	sbc  a                                           ; $5d2a: $9f
	rst  $38                                         ; $5d2b: $ff
	rst  $38                                         ; $5d2c: $ff
	rst  $38                                         ; $5d2d: $ff
	rst  $38                                         ; $5d2e: $ff
	cp   c                                           ; $5d2f: $b9
	and  a                                           ; $5d30: $a7
	ld   b, h                                        ; $5d31: $44
	ld   a, e                                        ; $5d32: $7b
	cp   d                                           ; $5d33: $ba
	xor  [hl]                                        ; $5d34: $ae
	db   $fc                                         ; $5d35: $fc
	ld   [hl], h                                     ; $5d36: $74
	ld   hl, $1111                                   ; $5d37: $21 $11 $11
	ld   de, $1411                                   ; $5d3a: $11 $11 $14
	ld   de, $ffff                                   ; $5d3d: $11 $ff $ff
	rst  $38                                         ; $5d40: $ff
	rst  $38                                         ; $5d41: $ff
	jp   hl                                          ; $5d42: $e9


	ld   d, h                                        ; $5d43: $54
	ld   hl, $8c11                                   ; $5d44: $21 $11 $8c
	cp   a                                           ; $5d47: $bf
	rst  $38                                         ; $5d48: $ff
	rst  $38                                         ; $5d49: $ff
	rst  $38                                         ; $5d4a: $ff
	cp   $a7                                         ; $5d4b: $fe $a7
	ld   d, a                                        ; $5d4d: $57
	halt                                             ; $5d4e: $76
	ld   a, d                                        ; $5d4f: $7a
	rst  $28                                         ; $5d50: $ef
	sbc  $ff                                         ; $5d51: $de $ff
	push bc                                          ; $5d53: $c5
	ld   de, $1111                                   ; $5d54: $11 $11 $11
	ld   de, $1111                                   ; $5d57: $11 $11 $11
	ld   l, c                                        ; $5d5a: $69
	ld   l, e                                        ; $5d5b: $6b
	rst  $38                                         ; $5d5c: $ff
	rst  $38                                         ; $5d5d: $ff
	rst  $38                                         ; $5d5e: $ff
	db   $fd                                         ; $5d5f: $fd
	ld   [hl], d                                     ; $5d60: $72
	ld   h, $53                                      ; $5d61: $26 $53
	ld   c, e                                        ; $5d63: $4b
	rst  $38                                         ; $5d64: $ff
	rst  $38                                         ; $5d65: $ff
	rst  $38                                         ; $5d66: $ff
	rst  $38                                         ; $5d67: $ff
	call c, Call_0aa_42c8                            ; $5d68: $dc $c8 $42
	ld   l, d                                        ; $5d6b: $6a
	call $ffdf                                       ; $5d6c: $cd $df $ff
	db   $fd                                         ; $5d6f: $fd
	bit  4, c                                        ; $5d70: $cb $61
	ld   de, $1111                                   ; $5d72: $11 $11 $11
	ld   de, $1111                                   ; $5d75: $11 $11 $11
	adc  l                                           ; $5d78: $8d
	cp   e                                           ; $5d79: $bb
	rst  $38                                         ; $5d7a: $ff
	rst  $38                                         ; $5d7b: $ff
	call c, $a6cb                                    ; $5d7c: $dc $cb $a6
	ld   [hl], $ce                                   ; $5d7f: $36 $ce
	call c, $ffff                                    ; $5d81: $dc $ff $ff
	rst  $38                                         ; $5d84: $ff
	rst  $38                                         ; $5d85: $ff
	add  sp, $67                                     ; $5d86: $e8 $67
	add  a                                           ; $5d88: $87
	ld   a, c                                        ; $5d89: $79
	rst  JumpTable                                         ; $5d8a: $df
	rst  $38                                         ; $5d8b: $ff
	rst  $38                                         ; $5d8c: $ff
	db   $ec                                         ; $5d8d: $ec
	or   a                                           ; $5d8e: $b7
	ld   sp, $1111                                   ; $5d8f: $31 $11 $11
	ld   de, $1111                                   ; $5d92: $11 $11 $11
	ld   de, $8812                                   ; $5d95: $11 $12 $88
	adc  d                                           ; $5d98: $8a
	rst  $28                                         ; $5d99: $ef
	db   $fd                                         ; $5d9a: $fd
	xor  c                                           ; $5d9b: $a9
	cp   [hl]                                        ; $5d9c: $be
	reti                                             ; $5d9d: $d9


	ld   a, d                                        ; $5d9e: $7a
	rst  $28                                         ; $5d9f: $ef
	rst  $38                                         ; $5da0: $ff
	rst  $38                                         ; $5da1: $ff
	rst  $38                                         ; $5da2: $ff
	rst  $38                                         ; $5da3: $ff
	call c, $98bb                                    ; $5da4: $dc $bb $98
	ld   h, a                                        ; $5da7: $67
	xor  h                                           ; $5da8: $ac
	db   $dd                                         ; $5da9: $dd
	call $b9cc                                       ; $5daa: $cd $cc $b9
	add  l                                           ; $5dad: $85
	ld   b, d                                        ; $5dae: $42
	ld   de, $1111                                   ; $5daf: $11 $11 $11
	ld   de, $1111                                   ; $5db2: $11 $11 $11
	ld   de, $7757                                   ; $5db5: $11 $57 $77
	adc  e                                           ; $5db8: $8b
	db   $dd                                         ; $5db9: $dd
	jp   z, $bcaa                                    ; $5dba: $ca $aa $bc

	db   $db                                         ; $5dbd: $db
	call z, $ffef                                    ; $5dbe: $cc $ef $ff
	rst  $38                                         ; $5dc1: $ff
	rst  $38                                         ; $5dc2: $ff
	db   $dd                                         ; $5dc3: $dd
	xor  d                                           ; $5dc4: $aa
	sbc  b                                           ; $5dc5: $98
	adc  b                                           ; $5dc6: $88
	sbc  d                                           ; $5dc7: $9a
	xor  e                                           ; $5dc8: $ab
	xor  e                                           ; $5dc9: $ab
	xor  d                                           ; $5dca: $aa
	xor  d                                           ; $5dcb: $aa
	sbc  c                                           ; $5dcc: $99
	add  a                                           ; $5dcd: $87
	ld   [hl], a                                     ; $5dce: $77
	ld   h, l                                        ; $5dcf: $65
	ld   d, h                                        ; $5dd0: $54
	ld   b, e                                        ; $5dd1: $43
	ld   [hl-], a                                    ; $5dd2: $32
	ld   de, $1111                                   ; $5dd3: $11 $11 $11
	ld   de, $1211                                   ; $5dd6: $11 $11 $12
	inc  hl                                          ; $5dd9: $23
	ld   d, [hl]                                     ; $5dda: $56
	ld   a, c                                        ; $5ddb: $79
	xor  e                                           ; $5ddc: $ab
	call z, $fede                                    ; $5ddd: $cc $de $fe
	cp   $ee                                         ; $5de0: $fe $ee
	rst  $38                                         ; $5de2: $ff
	rst  $38                                         ; $5de3: $ff
	xor  $ed                                         ; $5de4: $ee $ed
	db   $dd                                         ; $5de6: $dd
	db   $ed                                         ; $5de7: $ed
	call c, $bacb                                    ; $5de8: $dc $cb $ba
	sbc  c                                           ; $5deb: $99
	sbc  c                                           ; $5dec: $99
	add  a                                           ; $5ded: $87
	halt                                             ; $5dee: $76
	ld   h, l                                        ; $5def: $65
	ld   d, h                                        ; $5df0: $54
	ld   [hl-], a                                    ; $5df1: $32
	ld   de, $1111                                   ; $5df2: $11 $11 $11
	ld   de, $1111                                   ; $5df5: $11 $11 $11
	ld   de, $3511                                   ; $5df8: $11 $11 $35
	ld   a, b                                        ; $5dfb: $78
	xor  h                                           ; $5dfc: $ac
	sbc  $ef                                         ; $5dfd: $de $ef
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	rst  $38                                         ; $5e01: $ff
	rst  $38                                         ; $5e02: $ff
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	rst  $38                                         ; $5e05: $ff
	xor  $dd                                         ; $5e06: $ee $dd
	cp   e                                           ; $5e08: $bb
	cp   d                                           ; $5e09: $ba
	sbc  c                                           ; $5e0a: $99
	add  a                                           ; $5e0b: $87
	ld   [hl], a                                     ; $5e0c: $77
	ld   h, [hl]                                     ; $5e0d: $66
	ld   h, l                                        ; $5e0e: $65
	ld   d, h                                        ; $5e0f: $54
	ld   b, e                                        ; $5e10: $43
	ld   hl, $1111                                   ; $5e11: $21 $11 $11
	ld   de, $1111                                   ; $5e14: $11 $11 $11
	ld   de, $1211                                   ; $5e17: $11 $11 $12
	dec  [hl]                                        ; $5e1a: $35
	ld   a, b                                        ; $5e1b: $78
	cp   e                                           ; $5e1c: $bb
	sbc  $ef                                         ; $5e1d: $de $ef
	rst  $38                                         ; $5e1f: $ff
	rst  $38                                         ; $5e20: $ff
	rst  $38                                         ; $5e21: $ff
	rst  $38                                         ; $5e22: $ff
	rst  $38                                         ; $5e23: $ff
	rst  $38                                         ; $5e24: $ff
	cp   $ee                                         ; $5e25: $fe $ee
	call c, $baca                                    ; $5e27: $dc $ca $ba
	xor  c                                           ; $5e2a: $a9
	add  a                                           ; $5e2b: $87
	halt                                             ; $5e2c: $76
	ld   h, [hl]                                     ; $5e2d: $66
	ld   h, [hl]                                     ; $5e2e: $66
	ld   d, h                                        ; $5e2f: $54
	ld   b, e                                        ; $5e30: $43
	ld   [hl-], a                                    ; $5e31: $32
	ld   hl, $1111                                   ; $5e32: $21 $11 $11
	ld   de, $1111                                   ; $5e35: $11 $11 $11
	ld   de, $3411                                   ; $5e38: $11 $11 $34
	ld   l, b                                        ; $5e3b: $68
	sbc  e                                           ; $5e3c: $9b
	adc  $ef                                         ; $5e3d: $ce $ef
	rst  $38                                         ; $5e3f: $ff
	rst  $38                                         ; $5e40: $ff
	rst  $38                                         ; $5e41: $ff
	rst  $38                                         ; $5e42: $ff
	rst  $38                                         ; $5e43: $ff
	rst  $38                                         ; $5e44: $ff
	rst  $38                                         ; $5e45: $ff
	xor  $ec                                         ; $5e46: $ee $ec
	call z, $99aa                                    ; $5e48: $cc $aa $99
	sbc  b                                           ; $5e4b: $98
	add  a                                           ; $5e4c: $87
	halt                                             ; $5e4d: $76
	ld   h, [hl]                                     ; $5e4e: $66
	ld   h, l                                        ; $5e4f: $65
	ld   d, h                                        ; $5e50: $54
	ld   b, e                                        ; $5e51: $43
	ld   [hl-], a                                    ; $5e52: $32
	ld   de, $1111                                   ; $5e53: $11 $11 $11
	ld   de, $1111                                   ; $5e56: $11 $11 $11
	ld   de, $4513                                   ; $5e59: $11 $13 $45
	ld   a, c                                        ; $5e5c: $79
	xor  h                                           ; $5e5d: $ac
	adc  $ff                                         ; $5e5e: $ce $ff
	rst  $38                                         ; $5e60: $ff
	rst  $38                                         ; $5e61: $ff
	rst  $38                                         ; $5e62: $ff
	rst  $38                                         ; $5e63: $ff
	rst  $38                                         ; $5e64: $ff
	rst  $38                                         ; $5e65: $ff
	xor  $dd                                         ; $5e66: $ee $dd
	call z, $b9bb                                    ; $5e68: $cc $bb $b9
	sbc  c                                           ; $5e6b: $99
	sbc  b                                           ; $5e6c: $98
	ld   [hl], a                                     ; $5e6d: $77
	ld   h, [hl]                                     ; $5e6e: $66
	ld   h, l                                        ; $5e6f: $65
	ld   d, l                                        ; $5e70: $55
	ld   b, h                                        ; $5e71: $44
	inc  sp                                          ; $5e72: $33
	ld   [hl-], a                                    ; $5e73: $32
	ld   de, $1111                                   ; $5e74: $11 $11 $11
	ld   de, $1111                                   ; $5e77: $11 $11 $11
	ld   de, $5724                                   ; $5e7a: $11 $24 $57
	sbc  d                                           ; $5e7d: $9a
	call $ffdf                                       ; $5e7e: $cd $df $ff
	rst  $38                                         ; $5e81: $ff
	rst  $38                                         ; $5e82: $ff
	rst  $38                                         ; $5e83: $ff
	rst  $38                                         ; $5e84: $ff
	rst  $38                                         ; $5e85: $ff
	xor  $ed                                         ; $5e86: $ee $ed
	db   $ed                                         ; $5e88: $ed
	call c, $a9ca                                    ; $5e89: $dc $ca $a9
	adc  b                                           ; $5e8c: $88
	add  a                                           ; $5e8d: $87
	halt                                             ; $5e8e: $76
	ld   h, [hl]                                     ; $5e8f: $66
	ld   h, [hl]                                     ; $5e90: $66
	ld   d, l                                        ; $5e91: $55
	ld   b, h                                        ; $5e92: $44
	ld   b, e                                        ; $5e93: $43
	ld   [hl-], a                                    ; $5e94: $32
	ld   hl, $1111                                   ; $5e95: $21 $11 $11
	ld   de, $1111                                   ; $5e98: $11 $11 $11
	ld   [hl+], a                                    ; $5e9b: $22
	inc  [hl]                                        ; $5e9c: $34
	ld   d, a                                        ; $5e9d: $57
	adc  d                                           ; $5e9e: $8a
	cp   l                                           ; $5e9f: $bd
	sbc  $ff                                         ; $5ea0: $de $ff
	rst  $38                                         ; $5ea2: $ff
	rst  $38                                         ; $5ea3: $ff
	rst  $38                                         ; $5ea4: $ff
	rst  $38                                         ; $5ea5: $ff
	rst  $38                                         ; $5ea6: $ff
	cp   $ee                                         ; $5ea7: $fe $ee
	db   $dd                                         ; $5ea9: $dd
	res  7, d                                        ; $5eaa: $cb $ba
	xor  d                                           ; $5eac: $aa
	sbc  c                                           ; $5ead: $99
	add  a                                           ; $5eae: $87
	ld   [hl], a                                     ; $5eaf: $77
	ld   [hl], a                                     ; $5eb0: $77
	ld   h, [hl]                                     ; $5eb1: $66
	ld   h, l                                        ; $5eb2: $65
	ld   d, h                                        ; $5eb3: $54
	ld   b, e                                        ; $5eb4: $43
	ld   [hl-], a                                    ; $5eb5: $32
	ld   [hl+], a                                    ; $5eb6: $22
	ld   de, $1111                                   ; $5eb7: $11 $11 $11
	ld   de, $2212                                   ; $5eba: $11 $12 $22
	inc  [hl]                                        ; $5ebd: $34
	ld   d, [hl]                                     ; $5ebe: $56
	ld   a, c                                        ; $5ebf: $79
	xor  h                                           ; $5ec0: $ac
	call $efdf                                       ; $5ec1: $cd $df $ef
	rst  $38                                         ; $5ec4: $ff
	rst  $38                                         ; $5ec5: $ff
	rst  $38                                         ; $5ec6: $ff
	rst  $38                                         ; $5ec7: $ff
	db   $ed                                         ; $5ec8: $ed
	db   $ed                                         ; $5ec9: $ed
	db   $dd                                         ; $5eca: $dd
	call z, $bacb                                    ; $5ecb: $cc $cb $ba
	xor  c                                           ; $5ece: $a9
	adc  b                                           ; $5ecf: $88
	ld   [hl], a                                     ; $5ed0: $77
	ld   [hl], a                                     ; $5ed1: $77
	ld   h, [hl]                                     ; $5ed2: $66
	ld   h, [hl]                                     ; $5ed3: $66
	ld   d, l                                        ; $5ed4: $55
	ld   b, h                                        ; $5ed5: $44
	ld   b, e                                        ; $5ed6: $43
	ld   [hl-], a                                    ; $5ed7: $32
	ld   hl, $1111                                   ; $5ed8: $21 $11 $11
	ld   de, $2312                                   ; $5edb: $11 $12 $23
	inc  [hl]                                        ; $5ede: $34
	ld   b, l                                        ; $5edf: $45
	ld   l, b                                        ; $5ee0: $68
	xor  e                                           ; $5ee1: $ab
	call $eedd                                       ; $5ee2: $cd $dd $ee
	xor  $ef                                         ; $5ee5: $ee $ef
	cp   $ee                                         ; $5ee7: $fe $ee
	db   $ed                                         ; $5ee9: $ed
	call $cbdc                                       ; $5eea: $cd $dc $cb
	res  5, d                                        ; $5eed: $cb $aa
	xor  d                                           ; $5eef: $aa
	sbc  b                                           ; $5ef0: $98
	adc  b                                           ; $5ef1: $88
	add  a                                           ; $5ef2: $87
	ld   [hl], a                                     ; $5ef3: $77
	ld   [hl], a                                     ; $5ef4: $77
	ld   h, [hl]                                     ; $5ef5: $66
	ld   h, l                                        ; $5ef6: $65
	ld   d, h                                        ; $5ef7: $54
	ld   b, e                                        ; $5ef8: $43
	ld   [hl-], a                                    ; $5ef9: $32
	ld   de, $1111                                   ; $5efa: $11 $11 $11
	ld   de, $4523                                   ; $5efd: $11 $23 $45
	ld   d, [hl]                                     ; $5f00: $56
	ld   [hl], a                                     ; $5f01: $77
	sbc  c                                           ; $5f02: $99
	cp   e                                           ; $5f03: $bb
	sbc  $ed                                         ; $5f04: $de $ed
	db   $ed                                         ; $5f06: $ed
	db   $dd                                         ; $5f07: $dd
	xor  $ed                                         ; $5f08: $ee $ed
	db   $dd                                         ; $5f0a: $dd
	call c, $bbbc                                    ; $5f0b: $dc $bc $bb
	res  7, d                                        ; $5f0e: $cb $ba
	xor  c                                           ; $5f10: $a9
	xor  c                                           ; $5f11: $a9
	sbc  c                                           ; $5f12: $99
	adc  c                                           ; $5f13: $89
	adc  b                                           ; $5f14: $88
	ld   [hl], a                                     ; $5f15: $77
	adc  b                                           ; $5f16: $88
	ld   [hl], a                                     ; $5f17: $77
	ld   h, [hl]                                     ; $5f18: $66
	ld   d, h                                        ; $5f19: $54
	ld   b, e                                        ; $5f1a: $43
	ld   [hl+], a                                    ; $5f1b: $22
	ld   de, $1111                                   ; $5f1c: $11 $11 $11
	ld   de, $5613                                   ; $5f1f: $11 $13 $56
	ld   a, b                                        ; $5f22: $78
	xor  d                                           ; $5f23: $aa
	xor  d                                           ; $5f24: $aa
	cp   h                                           ; $5f25: $bc
	db   $dd                                         ; $5f26: $dd
	db   $dd                                         ; $5f27: $dd
	call z, $bcba                                    ; $5f28: $cc $ba $bc
	cp   l                                           ; $5f2b: $bd
	db   $ed                                         ; $5f2c: $ed
	db   $dd                                         ; $5f2d: $dd
	call z, $bbcd                                    ; $5f2e: $cc $cd $bb
	cp   d                                           ; $5f31: $ba
	sbc  b                                           ; $5f32: $98
	sbc  b                                           ; $5f33: $98
	ld   [hl], a                                     ; $5f34: $77
	ld   [hl], a                                     ; $5f35: $77
	adc  b                                           ; $5f36: $88
	ld   [hl], a                                     ; $5f37: $77
	ld   a, b                                        ; $5f38: $78
	adc  b                                           ; $5f39: $88
	halt                                             ; $5f3a: $76
	ld   d, h                                        ; $5f3b: $54
	ld   [hl-], a                                    ; $5f3c: $32
	ld   de, $0111                                   ; $5f3d: $11 $11 $01
	ld   de, $1411                                   ; $5f40: $11 $11 $14
	ld   a, d                                        ; $5f43: $7a
	call z, $a8cb                                    ; $5f44: $cc $cb $a8
	adc  b                                           ; $5f47: $88
	xor  e                                           ; $5f48: $ab
	call z, $a9bb                                    ; $5f49: $cc $bb $a9
	cp   h                                           ; $5f4c: $bc
	call $feef                                       ; $5f4d: $cd $ef $fe
	res  3, c                                        ; $5f50: $cb $99
	xor  d                                           ; $5f52: $aa
	xor  e                                           ; $5f53: $ab
	cp   d                                           ; $5f54: $ba
	sbc  d                                           ; $5f55: $9a
	sbc  c                                           ; $5f56: $99
	sbc  c                                           ; $5f57: $99
	sbc  c                                           ; $5f58: $99
	sbc  b                                           ; $5f59: $98
	add  a                                           ; $5f5a: $87
	halt                                             ; $5f5b: $76
	ld   d, l                                        ; $5f5c: $55
	ld   b, e                                        ; $5f5d: $43
	ld   [hl-], a                                    ; $5f5e: $32
	ld   [hl+], a                                    ; $5f5f: $22
	ld   de, $1111                                   ; $5f60: $11 $11 $11
	ld   de, $6913                                   ; $5f63: $11 $13 $69
	call z, $98cb                                    ; $5f66: $cc $cb $98
	adc  c                                           ; $5f69: $89
	cp   h                                           ; $5f6a: $bc
	call c, $a9ba                                    ; $5f6b: $dc $ba $a9
	cp   e                                           ; $5f6e: $bb
	sbc  $fe                                         ; $5f6f: $de $fe
	call c, $88aa                                    ; $5f71: $dc $aa $88
	xor  e                                           ; $5f74: $ab
	xor  e                                           ; $5f75: $ab
	cp   e                                           ; $5f76: $bb
	xor  d                                           ; $5f77: $aa
	xor  c                                           ; $5f78: $a9
	sbc  d                                           ; $5f79: $9a
	sbc  c                                           ; $5f7a: $99
	adc  b                                           ; $5f7b: $88
	ld   [hl], a                                     ; $5f7c: $77
	ld   [hl], a                                     ; $5f7d: $77
	ld   [hl], a                                     ; $5f7e: $77
	ld   h, l                                        ; $5f7f: $65
	ld   b, e                                        ; $5f80: $43
	ld   [hl+], a                                    ; $5f81: $22
	ld   de, $1111                                   ; $5f82: $11 $11 $11
	ld   de, $4912                                   ; $5f85: $11 $12 $49
	cp   h                                           ; $5f88: $bc
	db   $db                                         ; $5f89: $db
	cp   b                                           ; $5f8a: $b8
	ld   [hl], a                                     ; $5f8b: $77
	ld   a, d                                        ; $5f8c: $7a
	cp   h                                           ; $5f8d: $bc
	res  5, d                                        ; $5f8e: $cb $aa
	xor  e                                           ; $5f90: $ab
	adc  $ef                                         ; $5f91: $ce $ef
	cp   $ba                                         ; $5f93: $fe $ba
	adc  b                                           ; $5f95: $88
	adc  d                                           ; $5f96: $8a
	cp   e                                           ; $5f97: $bb
	res  7, e                                        ; $5f98: $cb $bb
	xor  d                                           ; $5f9a: $aa
	sbc  c                                           ; $5f9b: $99
	xor  c                                           ; $5f9c: $a9
	sbc  b                                           ; $5f9d: $98
	ld   [hl], a                                     ; $5f9e: $77
	ld   h, [hl]                                     ; $5f9f: $66
	halt                                             ; $5fa0: $76
	ld   h, [hl]                                     ; $5fa1: $66
	ld   d, h                                        ; $5fa2: $54
	ld   [hl-], a                                    ; $5fa3: $32
	ld   hl, $0111                                   ; $5fa4: $21 $11 $01
	ld   de, $3611                                   ; $5fa7: $11 $11 $36
	sbc  e                                           ; $5faa: $9b
	call c, $87ca                                    ; $5fab: $dc $ca $87
	ld   a, c                                        ; $5fae: $79
	cp   e                                           ; $5faf: $bb
	call z, $9abb                                    ; $5fb0: $cc $bb $9a
	call $effe                                       ; $5fb3: $cd $fe $ef
	res  3, c                                        ; $5fb6: $cb $99
	adc  b                                           ; $5fb8: $88
	sbc  e                                           ; $5fb9: $9b
	cp   h                                           ; $5fba: $bc
	cp   e                                           ; $5fbb: $bb
	cp   d                                           ; $5fbc: $ba
	xor  d                                           ; $5fbd: $aa
	sbc  d                                           ; $5fbe: $9a
	sbc  c                                           ; $5fbf: $99
	add  a                                           ; $5fc0: $87
	halt                                             ; $5fc1: $76
	ld   h, [hl]                                     ; $5fc2: $66
	ld   h, [hl]                                     ; $5fc3: $66
	ld   h, l                                        ; $5fc4: $65
	ld   b, h                                        ; $5fc5: $44
	ld   [hl-], a                                    ; $5fc6: $32
	ld   de, $1111                                   ; $5fc7: $11 $11 $11
	ld   de, $4812                                   ; $5fca: $11 $12 $48
	xor  h                                           ; $5fcd: $ac
	call z, Call_0aa_77b9                            ; $5fce: $cc $b9 $77
	ld   a, d                                        ; $5fd1: $7a
	xor  h                                           ; $5fd2: $ac
	jp   z, $abb9                                    ; $5fd3: $ca $b9 $ab

	call $eefe                                       ; $5fd6: $cd $fe $ee
	cp   d                                           ; $5fd9: $ba
	adc  c                                           ; $5fda: $89
	sbc  c                                           ; $5fdb: $99
	xor  e                                           ; $5fdc: $ab
	cp   e                                           ; $5fdd: $bb
	xor  e                                           ; $5fde: $ab
	cp   e                                           ; $5fdf: $bb
	xor  c                                           ; $5fe0: $a9
	sbc  c                                           ; $5fe1: $99
	adc  b                                           ; $5fe2: $88
	ld   [hl], a                                     ; $5fe3: $77
	ld   [hl], a                                     ; $5fe4: $77
	halt                                             ; $5fe5: $76
	ld   h, l                                        ; $5fe6: $65
	ld   d, h                                        ; $5fe7: $54
	ld   b, h                                        ; $5fe8: $44
	ld   [hl-], a                                    ; $5fe9: $32
	ld   hl, $1111                                   ; $5fea: $21 $11 $11
	ld   de, $7913                                   ; $5fed: $11 $13 $79
	cp   h                                           ; $5ff0: $bc
	call z, Call_0aa_7798                            ; $5ff1: $cc $98 $77
	sbc  d                                           ; $5ff4: $9a
	cp   h                                           ; $5ff5: $bc
	cp   e                                           ; $5ff6: $bb
	xor  d                                           ; $5ff7: $aa
	cp   e                                           ; $5ff8: $bb
	db   $dd                                         ; $5ff9: $dd
	rst  $28                                         ; $5ffa: $ef
	db   $ed                                         ; $5ffb: $ed
	ret                                              ; $5ffc: $c9


	sbc  b                                           ; $5ffd: $98
	sbc  d                                           ; $5ffe: $9a
	cp   e                                           ; $5fff: $bb
	cp   e                                           ; $6000: $bb
	cp   d                                           ; $6001: $ba
	xor  d                                           ; $6002: $aa
	sbc  c                                           ; $6003: $99
	sbc  c                                           ; $6004: $99
	sub  a                                           ; $6005: $97
	ld   [hl], a                                     ; $6006: $77
	ld   h, [hl]                                     ; $6007: $66
	ld   h, [hl]                                     ; $6008: $66
	ld   h, l                                        ; $6009: $65
	ld   b, h                                        ; $600a: $44
	inc  sp                                          ; $600b: $33
	ld   [hl+], a                                    ; $600c: $22
	ld   [hl+], a                                    ; $600d: $22
	ld   de, $1111                                   ; $600e: $11 $11 $11
	inc  h                                           ; $6011: $24
	adc  d                                           ; $6012: $8a
	call c, $97ca                                    ; $6013: $dc $ca $97
	ld   a, b                                        ; $6016: $78
	sbc  e                                           ; $6017: $9b
	call z, $aabb                                    ; $6018: $cc $bb $aa
	cp   e                                           ; $601b: $bb
	db   $dd                                         ; $601c: $dd
	xor  $dc                                         ; $601d: $ee $dc
	xor  d                                           ; $601f: $aa
	sbc  c                                           ; $6020: $99
	sbc  d                                           ; $6021: $9a
	cp   h                                           ; $6022: $bc
	cp   e                                           ; $6023: $bb
	xor  d                                           ; $6024: $aa
	xor  c                                           ; $6025: $a9
	xor  c                                           ; $6026: $a9
	adc  b                                           ; $6027: $88
	add  a                                           ; $6028: $87
	halt                                             ; $6029: $76
	ld   h, [hl]                                     ; $602a: $66
	ld   h, [hl]                                     ; $602b: $66
	ld   d, h                                        ; $602c: $54
	ld   b, h                                        ; $602d: $44
	inc  sp                                          ; $602e: $33
	ld   [hl-], a                                    ; $602f: $32
	ld   hl, $1111                                   ; $6030: $21 $11 $11
	ld   de, $9b47                                   ; $6033: $11 $47 $9b
	res  5, c                                        ; $6036: $cb $a9
	ld   a, b                                        ; $6038: $78
	sbc  d                                           ; $6039: $9a
	cp   e                                           ; $603a: $bb
	cp   h                                           ; $603b: $bc
	cp   d                                           ; $603c: $ba
	xor  d                                           ; $603d: $aa
	call z, $eeee                                    ; $603e: $cc $ee $ee
	db   $db                                         ; $6041: $db
	xor  c                                           ; $6042: $a9
	sbc  d                                           ; $6043: $9a
	xor  e                                           ; $6044: $ab
	cp   e                                           ; $6045: $bb
	cp   d                                           ; $6046: $ba
	xor  c                                           ; $6047: $a9
	xor  c                                           ; $6048: $a9
	adc  b                                           ; $6049: $88
	sbc  b                                           ; $604a: $98
	ld   [hl], a                                     ; $604b: $77
	halt                                             ; $604c: $76
	ld   h, [hl]                                     ; $604d: $66
	ld   d, l                                        ; $604e: $55
	ld   b, h                                        ; $604f: $44
	ld   b, e                                        ; $6050: $43
	inc  sp                                          ; $6051: $33
	inc  hl                                          ; $6052: $23
	ld   hl, $1111                                   ; $6053: $21 $11 $11
	inc  de                                          ; $6056: $13
	ld   e, b                                        ; $6057: $58
	sbc  e                                           ; $6058: $9b
	cp   d                                           ; $6059: $ba
	sbc  c                                           ; $605a: $99
	adc  b                                           ; $605b: $88
	sbc  d                                           ; $605c: $9a
	call $bbcb                                       ; $605d: $cd $cb $bb
	cp   e                                           ; $6060: $bb
	cp   l                                           ; $6061: $bd
	sbc  $fd                                         ; $6062: $de $fd
	call z, $9aba                                    ; $6064: $cc $ba $9a
	xor  d                                           ; $6067: $aa
	cp   e                                           ; $6068: $bb
	xor  d                                           ; $6069: $aa
	xor  d                                           ; $606a: $aa
	sbc  c                                           ; $606b: $99
	adc  c                                           ; $606c: $89
	adc  b                                           ; $606d: $88
	ld   [hl], a                                     ; $606e: $77
	ld   h, [hl]                                     ; $606f: $66
	ld   d, l                                        ; $6070: $55
	ld   b, h                                        ; $6071: $44
	inc  sp                                          ; $6072: $33
	inc  sp                                          ; $6073: $33
	inc  sp                                          ; $6074: $33
	ld   [hl-], a                                    ; $6075: $32
	ld   hl, $1111                                   ; $6076: $21 $11 $11
	dec  [hl]                                        ; $6079: $35
	adc  d                                           ; $607a: $8a
	xor  e                                           ; $607b: $ab
	xor  d                                           ; $607c: $aa
	adc  b                                           ; $607d: $88
	adc  c                                           ; $607e: $89
	cp   h                                           ; $607f: $bc
	call c, $bbcb                                    ; $6080: $dc $cb $bb
	cp   h                                           ; $6083: $bc
	db   $dd                                         ; $6084: $dd
	xor  $ed                                         ; $6085: $ee $ed
	cp   e                                           ; $6087: $bb
	xor  c                                           ; $6088: $a9
	xor  e                                           ; $6089: $ab
	xor  e                                           ; $608a: $ab
	cp   e                                           ; $608b: $bb
	cp   d                                           ; $608c: $ba
	xor  c                                           ; $608d: $a9
	sbc  b                                           ; $608e: $98
	adc  b                                           ; $608f: $88
	ld   [hl], a                                     ; $6090: $77
	halt                                             ; $6091: $76
	ld   h, l                                        ; $6092: $65
	ld   d, h                                        ; $6093: $54
	ld   b, e                                        ; $6094: $43
	inc  sp                                          ; $6095: $33
	inc  sp                                          ; $6096: $33
	inc  sp                                          ; $6097: $33
	ld   [hl-], a                                    ; $6098: $32
	ld   de, $1311                                   ; $6099: $11 $11 $13
	ld   d, a                                        ; $609c: $57
	sbc  c                                           ; $609d: $99
	cp   d                                           ; $609e: $ba
	sbc  c                                           ; $609f: $99
	adc  b                                           ; $60a0: $88
	xor  e                                           ; $60a1: $ab
	cp   h                                           ; $60a2: $bc
	call c, $bacb                                    ; $60a3: $dc $cb $ba
	cp   h                                           ; $60a6: $bc
	db   $dd                                         ; $60a7: $dd
	db   $ed                                         ; $60a8: $ed
	call c, $9aaa                                    ; $60a9: $dc $aa $9a
	sbc  d                                           ; $60ac: $9a
	xor  e                                           ; $60ad: $ab
	res  7, c                                        ; $60ae: $cb $b9
	sbc  b                                           ; $60b0: $98
	adc  b                                           ; $60b1: $88
	ld   a, b                                        ; $60b2: $78
	ld   [hl], a                                     ; $60b3: $77
	halt                                             ; $60b4: $76
	ld   d, h                                        ; $60b5: $54
	inc  sp                                          ; $60b6: $33
	inc  sp                                          ; $60b7: $33
	ld   b, h                                        ; $60b8: $44
	ld   b, h                                        ; $60b9: $44
	ld   [hl-], a                                    ; $60ba: $32
	ld   de, $1211                                   ; $60bb: $11 $11 $12
	ld   b, [hl]                                     ; $60be: $46
	ld   a, c                                        ; $60bf: $79
	sbc  d                                           ; $60c0: $9a
	adc  c                                           ; $60c1: $89
	adc  b                                           ; $60c2: $88
	sbc  d                                           ; $60c3: $9a
	cp   e                                           ; $60c4: $bb
	call z, $bbcc                                    ; $60c5: $cc $cc $bb
	call z, $eddd                                    ; $60c8: $cc $dd $ed
	db   $dd                                         ; $60cb: $dd
	jp   z, $abaa                                    ; $60cc: $ca $aa $ab

	xor  e                                           ; $60cf: $ab
	cp   e                                           ; $60d0: $bb
	cp   d                                           ; $60d1: $ba
	xor  c                                           ; $60d2: $a9
	sbc  c                                           ; $60d3: $99
	add  a                                           ; $60d4: $87
	ld   [hl], a                                     ; $60d5: $77
	halt                                             ; $60d6: $76
	ld   d, l                                        ; $60d7: $55
	ld   b, h                                        ; $60d8: $44
	ld   b, e                                        ; $60d9: $43
	ld   b, h                                        ; $60da: $44
	ld   b, h                                        ; $60db: $44
	ld   b, e                                        ; $60dc: $43
	ld   hl, $1111                                   ; $60dd: $21 $11 $11
	inc  de                                          ; $60e0: $13
	ld   d, a                                        ; $60e1: $57
	adc  c                                           ; $60e2: $89
	xor  b                                           ; $60e3: $a8
	sbc  b                                           ; $60e4: $98
	sbc  c                                           ; $60e5: $99
	sbc  e                                           ; $60e6: $9b
	call z, $cbdb                                    ; $60e7: $cc $db $cb
	xor  e                                           ; $60ea: $ab
	cp   h                                           ; $60eb: $bc
	db   $dd                                         ; $60ec: $dd
	xor  $cb                                         ; $60ed: $ee $cb
	xor  e                                           ; $60ef: $ab
	xor  d                                           ; $60f0: $aa
	cp   e                                           ; $60f1: $bb
	cp   e                                           ; $60f2: $bb
	xor  e                                           ; $60f3: $ab
	xor  c                                           ; $60f4: $a9
	sbc  b                                           ; $60f5: $98
	add  a                                           ; $60f6: $87
	ld   [hl], a                                     ; $60f7: $77
	halt                                             ; $60f8: $76
	ld   h, l                                        ; $60f9: $65
	ld   b, h                                        ; $60fa: $44
	inc  sp                                          ; $60fb: $33
	inc  [hl]                                        ; $60fc: $34
	ld   b, h                                        ; $60fd: $44
	ld   d, h                                        ; $60fe: $54
	ld   [hl-], a                                    ; $60ff: $32
	ld   de, $1211                                   ; $6100: $11 $11 $12
	ld   b, [hl]                                     ; $6103: $46
	ld   [hl], a                                     ; $6104: $77
	ld   a, b                                        ; $6105: $78
	adc  c                                           ; $6106: $89
	adc  d                                           ; $6107: $8a
	xor  d                                           ; $6108: $aa
	cp   e                                           ; $6109: $bb
	cp   h                                           ; $610a: $bc
	cp   e                                           ; $610b: $bb
	cp   e                                           ; $610c: $bb
	call z, $cddc                                    ; $610d: $cc $dc $cd
	call $cacc                                       ; $6110: $cd $cc $ca
	xor  e                                           ; $6113: $ab
	xor  d                                           ; $6114: $aa
	cp   e                                           ; $6115: $bb
	cp   d                                           ; $6116: $ba
	xor  c                                           ; $6117: $a9
	adc  b                                           ; $6118: $88
	ld   [hl], a                                     ; $6119: $77
	ld   [hl], a                                     ; $611a: $77
	ld   h, [hl]                                     ; $611b: $66
	ld   h, l                                        ; $611c: $65
	ld   b, h                                        ; $611d: $44
	ld   b, h                                        ; $611e: $44
	ld   b, h                                        ; $611f: $44
	ld   b, h                                        ; $6120: $44
	ld   b, h                                        ; $6121: $44
	ld   [hl-], a                                    ; $6122: $32
	ld   de, $2211                                   ; $6123: $11 $11 $22
	ld   b, l                                        ; $6126: $45
	ld   l, b                                        ; $6127: $68
	adc  c                                           ; $6128: $89
	sbc  c                                           ; $6129: $99
	sbc  c                                           ; $612a: $99
	sbc  d                                           ; $612b: $9a
	xor  d                                           ; $612c: $aa
	set  1, e                                        ; $612d: $cb $cb
	cp   h                                           ; $612f: $bc
	call z, $dded                                    ; $6130: $cc $ed $dd
	db   $dd                                         ; $6133: $dd
	set  1, d                                        ; $6134: $cb $ca
	cp   e                                           ; $6136: $bb
	xor  e                                           ; $6137: $ab
	xor  d                                           ; $6138: $aa
	cp   d                                           ; $6139: $ba
	cp   c                                           ; $613a: $b9
	xor  b                                           ; $613b: $a8
	add  a                                           ; $613c: $87
	ld   h, [hl]                                     ; $613d: $66
	ld   h, l                                        ; $613e: $65
	ld   d, l                                        ; $613f: $55
	ld   d, l                                        ; $6140: $55
	ld   d, l                                        ; $6141: $55
	ld   d, h                                        ; $6142: $54
	ld   b, h                                        ; $6143: $44
	ld   b, e                                        ; $6144: $43
	ld   [hl-], a                                    ; $6145: $32
	ld   [hl+], a                                    ; $6146: $22
	ld   [hl+], a                                    ; $6147: $22
	ld   [hl+], a                                    ; $6148: $22
	ld   b, l                                        ; $6149: $45
	ld   l, b                                        ; $614a: $68
	adc  c                                           ; $614b: $89
	sbc  c                                           ; $614c: $99
	sbc  c                                           ; $614d: $99
	sbc  d                                           ; $614e: $9a
	xor  d                                           ; $614f: $aa
	cp   h                                           ; $6150: $bc
	cp   h                                           ; $6151: $bc
	call z, $cdcd                                    ; $6152: $cc $cd $cd
	call c, $dcdc                                    ; $6155: $dc $dc $dc
	cp   e                                           ; $6158: $bb
	cp   d                                           ; $6159: $ba
	xor  e                                           ; $615a: $ab
	cp   e                                           ; $615b: $bb
	xor  d                                           ; $615c: $aa
	cp   d                                           ; $615d: $ba
	xor  b                                           ; $615e: $a8
	add  a                                           ; $615f: $87
	halt                                             ; $6160: $76
	ld   h, [hl]                                     ; $6161: $66
	ld   h, [hl]                                     ; $6162: $66
	ld   d, l                                        ; $6163: $55
	ld   d, h                                        ; $6164: $54
	ld   d, l                                        ; $6165: $55
	ld   d, l                                        ; $6166: $55
	ld   d, h                                        ; $6167: $54
	ld   [hl-], a                                    ; $6168: $32
	ld   hl, $2312                                   ; $6169: $21 $12 $23
	ld   b, l                                        ; $616c: $45
	ld   h, a                                        ; $616d: $67
	ld   [hl], a                                     ; $616e: $77
	ld   a, b                                        ; $616f: $78
	adc  c                                           ; $6170: $89
	xor  d                                           ; $6171: $aa
	xor  d                                           ; $6172: $aa
	xor  e                                           ; $6173: $ab
	xor  e                                           ; $6174: $ab
	set  3, l                                        ; $6175: $cb $dd
	xor  $dd                                         ; $6177: $ee $dd
	set  1, e                                        ; $6179: $cb $cb
	call z, $babb                                    ; $617b: $cc $bb $ba
	cp   d                                           ; $617e: $ba
	xor  e                                           ; $617f: $ab
	xor  e                                           ; $6180: $ab
	xor  c                                           ; $6181: $a9
	add  a                                           ; $6182: $87
	add  a                                           ; $6183: $87
	ld   h, [hl]                                     ; $6184: $66
	ld   d, l                                        ; $6185: $55
	ld   d, l                                        ; $6186: $55
	ld   h, [hl]                                     ; $6187: $66
	ld   h, [hl]                                     ; $6188: $66
	ld   d, l                                        ; $6189: $55
	ld   d, h                                        ; $618a: $54
	inc  sp                                          ; $618b: $33
	inc  sp                                          ; $618c: $33
	inc  sp                                          ; $618d: $33
	inc  sp                                          ; $618e: $33
	ld   [hl+], a                                    ; $618f: $22
	inc  [hl]                                        ; $6190: $34
	ld   d, [hl]                                     ; $6191: $56
	ld   a, b                                        ; $6192: $78
	adc  b                                           ; $6193: $88
	add  a                                           ; $6194: $87
	ld   a, c                                        ; $6195: $79
	sbc  d                                           ; $6196: $9a
	cp   e                                           ; $6197: $bb
	res  7, e                                        ; $6198: $cb $bb
	cp   l                                           ; $619a: $bd
	call c, $eded                                    ; $619b: $dc $ed $ed
	res  7, e                                        ; $619e: $cb $bb
	res  7, e                                        ; $61a0: $cb $bb
	cp   h                                           ; $61a2: $bc
	xor  e                                           ; $61a3: $ab
	xor  c                                           ; $61a4: $a9
	sbc  b                                           ; $61a5: $98
	sbc  b                                           ; $61a6: $98
	add  a                                           ; $61a7: $87
	halt                                             ; $61a8: $76
	ld   h, l                                        ; $61a9: $65
	ld   d, l                                        ; $61aa: $55
	ld   b, l                                        ; $61ab: $45
	ld   d, l                                        ; $61ac: $55
	ld   h, [hl]                                     ; $61ad: $66
	ld   h, l                                        ; $61ae: $65
	ld   b, h                                        ; $61af: $44
	inc  hl                                          ; $61b0: $23
	inc  sp                                          ; $61b1: $33
	ld   d, h                                        ; $61b2: $54
	ld   b, l                                        ; $61b3: $45
	dec  [hl]                                        ; $61b4: $35
	ld   b, h                                        ; $61b5: $44
	ld   h, [hl]                                     ; $61b6: $66
	ld   a, c                                        ; $61b7: $79
	ld   a, c                                        ; $61b8: $79
	add  a                                           ; $61b9: $87
	sub  a                                           ; $61ba: $97
	sbc  d                                           ; $61bb: $9a
	cp   h                                           ; $61bc: $bc
	cp   e                                           ; $61bd: $bb
	cp   e                                           ; $61be: $bb
	set  1, l                                        ; $61bf: $cb $cd
	db   $dd                                         ; $61c1: $dd
	call z, $bbcb                                    ; $61c2: $cc $cb $bb
	cp   e                                           ; $61c5: $bb
	cp   e                                           ; $61c6: $bb
	cp   d                                           ; $61c7: $ba
	xor  c                                           ; $61c8: $a9
	sbc  b                                           ; $61c9: $98
	sbc  c                                           ; $61ca: $99
	sbc  c                                           ; $61cb: $99
	add  a                                           ; $61cc: $87
	halt                                             ; $61cd: $76
	ld   h, l                                        ; $61ce: $65
	ld   d, [hl]                                     ; $61cf: $56
	ld   h, a                                        ; $61d0: $67
	halt                                             ; $61d1: $76
	ld   h, l                                        ; $61d2: $65
	ld   b, h                                        ; $61d3: $44
	ld   b, h                                        ; $61d4: $44
	ld   b, l                                        ; $61d5: $45
	ld   d, l                                        ; $61d6: $55
	ld   b, h                                        ; $61d7: $44
	ld   b, h                                        ; $61d8: $44
	ld   b, l                                        ; $61d9: $45
	ld   d, [hl]                                     ; $61da: $56
	ld   h, a                                        ; $61db: $67
	ld   [hl], a                                     ; $61dc: $77
	halt                                             ; $61dd: $76
	ld   [hl], a                                     ; $61de: $77
	sbc  d                                           ; $61df: $9a
	sbc  d                                           ; $61e0: $9a
	xor  e                                           ; $61e1: $ab
	cp   e                                           ; $61e2: $bb
	xor  e                                           ; $61e3: $ab
	cp   e                                           ; $61e4: $bb
	call z, $bccc                                    ; $61e5: $cc $cc $bc
	xor  e                                           ; $61e8: $ab
	cp   e                                           ; $61e9: $bb
	cp   e                                           ; $61ea: $bb
	cp   e                                           ; $61eb: $bb
	xor  d                                           ; $61ec: $aa
	xor  c                                           ; $61ed: $a9
	adc  b                                           ; $61ee: $88
	adc  b                                           ; $61ef: $88
	adc  b                                           ; $61f0: $88
	add  a                                           ; $61f1: $87
	halt                                             ; $61f2: $76
	ld   h, [hl]                                     ; $61f3: $66
	ld   h, a                                        ; $61f4: $67
	ld   [hl], a                                     ; $61f5: $77
	halt                                             ; $61f6: $76
	ld   d, l                                        ; $61f7: $55
	ld   b, h                                        ; $61f8: $44
	ld   d, l                                        ; $61f9: $55
	ld   h, [hl]                                     ; $61fa: $66
	ld   h, l                                        ; $61fb: $65
	ld   d, l                                        ; $61fc: $55
	ld   d, l                                        ; $61fd: $55
	ld   d, l                                        ; $61fe: $55
	ld   d, [hl]                                     ; $61ff: $56
	ld   h, a                                        ; $6200: $67
	halt                                             ; $6201: $76
	ld   [hl], a                                     ; $6202: $77
	ld   a, b                                        ; $6203: $78
	ld   [hl], a                                     ; $6204: $77
	ld   a, b                                        ; $6205: $78
	sbc  c                                           ; $6206: $99
	sbc  d                                           ; $6207: $9a
	xor  d                                           ; $6208: $aa
	xor  d                                           ; $6209: $aa
	xor  d                                           ; $620a: $aa
	xor  d                                           ; $620b: $aa
	cp   d                                           ; $620c: $ba
	cp   d                                           ; $620d: $ba
	xor  d                                           ; $620e: $aa
	xor  d                                           ; $620f: $aa
	cp   d                                           ; $6210: $ba
	cp   d                                           ; $6211: $ba
	sbc  c                                           ; $6212: $99
	sbc  b                                           ; $6213: $98
	adc  b                                           ; $6214: $88
	sbc  c                                           ; $6215: $99
	adc  c                                           ; $6216: $89
	sbc  c                                           ; $6217: $99
	add  a                                           ; $6218: $87
	ld   [hl], a                                     ; $6219: $77
	ld   [hl], a                                     ; $621a: $77
	ld   [hl], a                                     ; $621b: $77
	ld   [hl], a                                     ; $621c: $77
	halt                                             ; $621d: $76
	ld   h, l                                        ; $621e: $65
	ld   d, [hl]                                     ; $621f: $56
	ld   h, a                                        ; $6220: $67
	ld   [hl], a                                     ; $6221: $77
	halt                                             ; $6222: $76
	ld   d, l                                        ; $6223: $55
	ld   d, l                                        ; $6224: $55
	ld   h, a                                        ; $6225: $67
	ld   a, b                                        ; $6226: $78
	ld   [hl], a                                     ; $6227: $77
	ld   h, [hl]                                     ; $6228: $66
	ld   [hl], a                                     ; $6229: $77
	adc  b                                           ; $622a: $88
	add  a                                           ; $622b: $87
	ld   [hl], a                                     ; $622c: $77
	adc  c                                           ; $622d: $89
	adc  c                                           ; $622e: $89
	adc  c                                           ; $622f: $89
	adc  b                                           ; $6230: $88
	adc  c                                           ; $6231: $89
	sbc  c                                           ; $6232: $99
	sbc  d                                           ; $6233: $9a
	sbc  c                                           ; $6234: $99
	adc  b                                           ; $6235: $88
	adc  b                                           ; $6236: $88
	sbc  c                                           ; $6237: $99
	sbc  c                                           ; $6238: $99
	xor  c                                           ; $6239: $a9
	sbc  c                                           ; $623a: $99
	adc  c                                           ; $623b: $89
	sbc  c                                           ; $623c: $99
	adc  c                                           ; $623d: $89
	sbc  b                                           ; $623e: $98
	adc  b                                           ; $623f: $88
	adc  b                                           ; $6240: $88
	add  a                                           ; $6241: $87
	ld   [hl], a                                     ; $6242: $77
	ld   [hl], a                                     ; $6243: $77
	ld   [hl], a                                     ; $6244: $77
	ld   [hl], a                                     ; $6245: $77
	ld   [hl], a                                     ; $6246: $77
	ld   [hl], a                                     ; $6247: $77
	add  a                                           ; $6248: $87
	ld   [hl], a                                     ; $6249: $77
	ld   [hl], a                                     ; $624a: $77
	ld   [hl], a                                     ; $624b: $77
	ld   [hl], a                                     ; $624c: $77
	adc  b                                           ; $624d: $88
	add  a                                           ; $624e: $87
	ld   [hl], a                                     ; $624f: $77
	ld   [hl], a                                     ; $6250: $77
	ld   [hl], a                                     ; $6251: $77
	ld   [hl], a                                     ; $6252: $77
	ld   [hl], a                                     ; $6253: $77
	adc  b                                           ; $6254: $88
	sbc  c                                           ; $6255: $99
	adc  b                                           ; $6256: $88
	adc  b                                           ; $6257: $88
	adc  b                                           ; $6258: $88
	sbc  b                                           ; $6259: $98
	sbc  b                                           ; $625a: $98
	sbc  c                                           ; $625b: $99
	adc  b                                           ; $625c: $88
	adc  c                                           ; $625d: $89
	adc  c                                           ; $625e: $89
	adc  b                                           ; $625f: $88
	adc  b                                           ; $6260: $88
	adc  b                                           ; $6261: $88
	sbc  b                                           ; $6262: $98
	adc  b                                           ; $6263: $88
	adc  b                                           ; $6264: $88
	adc  b                                           ; $6265: $88
	adc  b                                           ; $6266: $88
	adc  b                                           ; $6267: $88
	adc  b                                           ; $6268: $88
	adc  b                                           ; $6269: $88
	adc  b                                           ; $626a: $88
	adc  b                                           ; $626b: $88
	ld   [hl], a                                     ; $626c: $77
	ld   a, b                                        ; $626d: $78
	adc  b                                           ; $626e: $88
	adc  b                                           ; $626f: $88
	adc  b                                           ; $6270: $88
	adc  b                                           ; $6271: $88
	adc  b                                           ; $6272: $88
	adc  b                                           ; $6273: $88
	adc  b                                           ; $6274: $88
	adc  b                                           ; $6275: $88
	adc  b                                           ; $6276: $88
	adc  b                                           ; $6277: $88
	adc  b                                           ; $6278: $88
	adc  b                                           ; $6279: $88
	adc  b                                           ; $627a: $88
	adc  b                                           ; $627b: $88
	adc  b                                           ; $627c: $88
	adc  b                                           ; $627d: $88
	adc  b                                           ; $627e: $88
	adc  b                                           ; $627f: $88
	adc  b                                           ; $6280: $88
	adc  b                                           ; $6281: $88
	adc  b                                           ; $6282: $88
	adc  b                                           ; $6283: $88
	adc  b                                           ; $6284: $88
	adc  b                                           ; $6285: $88
	adc  b                                           ; $6286: $88
	adc  b                                           ; $6287: $88
	adc  b                                           ; $6288: $88
	adc  b                                           ; $6289: $88
	adc  b                                           ; $628a: $88
	adc  b                                           ; $628b: $88
	adc  b                                           ; $628c: $88
	adc  b                                           ; $628d: $88
	adc  b                                           ; $628e: $88
	adc  b                                           ; $628f: $88
	adc  b                                           ; $6290: $88
	adc  b                                           ; $6291: $88
	adc  b                                           ; $6292: $88
	adc  b                                           ; $6293: $88
	adc  b                                           ; $6294: $88
	adc  b                                           ; $6295: $88
	adc  b                                           ; $6296: $88
	adc  b                                           ; $6297: $88
	adc  b                                           ; $6298: $88
	adc  b                                           ; $6299: $88
	adc  b                                           ; $629a: $88
	adc  b                                           ; $629b: $88
	adc  b                                           ; $629c: $88
	adc  b                                           ; $629d: $88
	adc  b                                           ; $629e: $88
	adc  b                                           ; $629f: $88
	adc  b                                           ; $62a0: $88
	adc  b                                           ; $62a1: $88
	adc  b                                           ; $62a2: $88
	adc  b                                           ; $62a3: $88
	adc  b                                           ; $62a4: $88
	adc  b                                           ; $62a5: $88
	adc  b                                           ; $62a6: $88
	adc  b                                           ; $62a7: $88
	adc  b                                           ; $62a8: $88
	adc  b                                           ; $62a9: $88
	adc  b                                           ; $62aa: $88
	adc  b                                           ; $62ab: $88
	adc  b                                           ; $62ac: $88
	adc  b                                           ; $62ad: $88
	adc  b                                           ; $62ae: $88
	adc  b                                           ; $62af: $88
	adc  b                                           ; $62b0: $88
	adc  b                                           ; $62b1: $88
	adc  b                                           ; $62b2: $88
	adc  b                                           ; $62b3: $88
	adc  b                                           ; $62b4: $88
	adc  b                                           ; $62b5: $88
	adc  b                                           ; $62b6: $88
	adc  b                                           ; $62b7: $88
	adc  b                                           ; $62b8: $88
	adc  b                                           ; $62b9: $88
	adc  b                                           ; $62ba: $88
	adc  b                                           ; $62bb: $88
	adc  b                                           ; $62bc: $88
	adc  b                                           ; $62bd: $88
	adc  b                                           ; $62be: $88
	adc  b                                           ; $62bf: $88
	adc  b                                           ; $62c0: $88
	adc  b                                           ; $62c1: $88
	adc  b                                           ; $62c2: $88
	adc  b                                           ; $62c3: $88
	adc  b                                           ; $62c4: $88
	adc  b                                           ; $62c5: $88
	adc  b                                           ; $62c6: $88
	adc  b                                           ; $62c7: $88
	adc  b                                           ; $62c8: $88
	adc  b                                           ; $62c9: $88
	adc  b                                           ; $62ca: $88
	adc  b                                           ; $62cb: $88
	adc  b                                           ; $62cc: $88
	adc  b                                           ; $62cd: $88
	adc  b                                           ; $62ce: $88
	adc  b                                           ; $62cf: $88
	adc  b                                           ; $62d0: $88
	adc  b                                           ; $62d1: $88
	adc  b                                           ; $62d2: $88
	adc  b                                           ; $62d3: $88
	adc  b                                           ; $62d4: $88
	adc  b                                           ; $62d5: $88
	adc  b                                           ; $62d6: $88
	adc  b                                           ; $62d7: $88
	adc  b                                           ; $62d8: $88
	adc  b                                           ; $62d9: $88
	adc  b                                           ; $62da: $88
	adc  b                                           ; $62db: $88
	adc  b                                           ; $62dc: $88
	adc  b                                           ; $62dd: $88
	adc  b                                           ; $62de: $88
	adc  b                                           ; $62df: $88
	adc  b                                           ; $62e0: $88
	adc  b                                           ; $62e1: $88
	adc  b                                           ; $62e2: $88
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	adc  b                                           ; $62e5: $88
	adc  b                                           ; $62e6: $88
	adc  b                                           ; $62e7: $88
	adc  b                                           ; $62e8: $88
	adc  b                                           ; $62e9: $88
	adc  b                                           ; $62ea: $88
	adc  b                                           ; $62eb: $88
	adc  b                                           ; $62ec: $88
	adc  b                                           ; $62ed: $88
	adc  b                                           ; $62ee: $88
	adc  b                                           ; $62ef: $88
	adc  b                                           ; $62f0: $88
	adc  b                                           ; $62f1: $88
	adc  b                                           ; $62f2: $88
	adc  b                                           ; $62f3: $88
	adc  b                                           ; $62f4: $88
	adc  b                                           ; $62f5: $88
	adc  b                                           ; $62f6: $88
	adc  b                                           ; $62f7: $88
	adc  b                                           ; $62f8: $88
	adc  b                                           ; $62f9: $88
	adc  b                                           ; $62fa: $88
	adc  b                                           ; $62fb: $88
	adc  b                                           ; $62fc: $88
	adc  b                                           ; $62fd: $88
	adc  b                                           ; $62fe: $88
	adc  b                                           ; $62ff: $88
	adc  b                                           ; $6300: $88
	adc  b                                           ; $6301: $88
	adc  b                                           ; $6302: $88
	adc  b                                           ; $6303: $88
	adc  b                                           ; $6304: $88
	adc  b                                           ; $6305: $88
	adc  b                                           ; $6306: $88
	adc  b                                           ; $6307: $88
	adc  b                                           ; $6308: $88
	adc  b                                           ; $6309: $88
	adc  b                                           ; $630a: $88
	adc  b                                           ; $630b: $88
	adc  b                                           ; $630c: $88
	adc  b                                           ; $630d: $88
	adc  b                                           ; $630e: $88
	adc  b                                           ; $630f: $88
	adc  b                                           ; $6310: $88
	adc  b                                           ; $6311: $88
	adc  b                                           ; $6312: $88
	adc  b                                           ; $6313: $88
	adc  b                                           ; $6314: $88
	adc  b                                           ; $6315: $88
	adc  b                                           ; $6316: $88
	adc  b                                           ; $6317: $88
	adc  b                                           ; $6318: $88
	adc  b                                           ; $6319: $88
	adc  b                                           ; $631a: $88
	adc  b                                           ; $631b: $88
	adc  b                                           ; $631c: $88
	adc  b                                           ; $631d: $88
	adc  b                                           ; $631e: $88
	adc  b                                           ; $631f: $88
	adc  b                                           ; $6320: $88
	adc  b                                           ; $6321: $88
	adc  b                                           ; $6322: $88
	adc  b                                           ; $6323: $88
	adc  b                                           ; $6324: $88
	adc  b                                           ; $6325: $88
	adc  b                                           ; $6326: $88
	adc  b                                           ; $6327: $88
	adc  b                                           ; $6328: $88
	adc  b                                           ; $6329: $88
	adc  b                                           ; $632a: $88
	adc  b                                           ; $632b: $88
	adc  b                                           ; $632c: $88
	adc  b                                           ; $632d: $88
	adc  b                                           ; $632e: $88
	adc  b                                           ; $632f: $88
	adc  b                                           ; $6330: $88
	adc  b                                           ; $6331: $88
	adc  b                                           ; $6332: $88
	adc  b                                           ; $6333: $88
	adc  b                                           ; $6334: $88
	adc  b                                           ; $6335: $88
	adc  b                                           ; $6336: $88
	adc  b                                           ; $6337: $88
	adc  b                                           ; $6338: $88
	adc  b                                           ; $6339: $88
	adc  b                                           ; $633a: $88
	adc  b                                           ; $633b: $88
	adc  b                                           ; $633c: $88
	adc  b                                           ; $633d: $88
	adc  b                                           ; $633e: $88
	adc  b                                           ; $633f: $88
	adc  b                                           ; $6340: $88
	adc  b                                           ; $6341: $88
	adc  b                                           ; $6342: $88
	adc  b                                           ; $6343: $88
	adc  b                                           ; $6344: $88
	adc  b                                           ; $6345: $88
	adc  b                                           ; $6346: $88
	adc  b                                           ; $6347: $88
	adc  b                                           ; $6348: $88
	adc  b                                           ; $6349: $88
	adc  b                                           ; $634a: $88
	adc  b                                           ; $634b: $88
	adc  b                                           ; $634c: $88
	adc  b                                           ; $634d: $88
	adc  b                                           ; $634e: $88
	adc  b                                           ; $634f: $88
	adc  b                                           ; $6350: $88
	adc  b                                           ; $6351: $88
	adc  b                                           ; $6352: $88
	adc  b                                           ; $6353: $88
	adc  b                                           ; $6354: $88
	adc  b                                           ; $6355: $88
	adc  b                                           ; $6356: $88
	adc  b                                           ; $6357: $88
	adc  b                                           ; $6358: $88
	adc  b                                           ; $6359: $88
	adc  b                                           ; $635a: $88
	adc  b                                           ; $635b: $88
	adc  b                                           ; $635c: $88
	adc  b                                           ; $635d: $88
	adc  b                                           ; $635e: $88
	adc  b                                           ; $635f: $88
	adc  b                                           ; $6360: $88
	adc  b                                           ; $6361: $88
	adc  b                                           ; $6362: $88
	adc  b                                           ; $6363: $88
	adc  b                                           ; $6364: $88
	adc  b                                           ; $6365: $88
	adc  b                                           ; $6366: $88
	adc  b                                           ; $6367: $88
	adc  b                                           ; $6368: $88
	adc  b                                           ; $6369: $88
	adc  b                                           ; $636a: $88
	adc  b                                           ; $636b: $88
	adc  b                                           ; $636c: $88
	adc  b                                           ; $636d: $88
	adc  b                                           ; $636e: $88
	adc  b                                           ; $636f: $88
	adc  b                                           ; $6370: $88
	adc  b                                           ; $6371: $88
	adc  b                                           ; $6372: $88
	adc  b                                           ; $6373: $88
	adc  b                                           ; $6374: $88
	adc  b                                           ; $6375: $88
	adc  b                                           ; $6376: $88
	adc  b                                           ; $6377: $88
	adc  b                                           ; $6378: $88
	adc  b                                           ; $6379: $88
	adc  b                                           ; $637a: $88
	adc  b                                           ; $637b: $88
	adc  b                                           ; $637c: $88
	adc  b                                           ; $637d: $88
	adc  b                                           ; $637e: $88
	adc  b                                           ; $637f: $88
	adc  b                                           ; $6380: $88
	adc  b                                           ; $6381: $88
	adc  b                                           ; $6382: $88
	adc  b                                           ; $6383: $88
	adc  b                                           ; $6384: $88
	adc  b                                           ; $6385: $88
	adc  b                                           ; $6386: $88
	adc  b                                           ; $6387: $88
	adc  b                                           ; $6388: $88
	adc  b                                           ; $6389: $88
	adc  b                                           ; $638a: $88
	adc  b                                           ; $638b: $88
	adc  b                                           ; $638c: $88
	adc  b                                           ; $638d: $88
	adc  b                                           ; $638e: $88
	adc  b                                           ; $638f: $88
	adc  b                                           ; $6390: $88
	adc  b                                           ; $6391: $88
	adc  b                                           ; $6392: $88
	adc  b                                           ; $6393: $88
	adc  b                                           ; $6394: $88
	adc  b                                           ; $6395: $88
	adc  b                                           ; $6396: $88
	adc  b                                           ; $6397: $88
	adc  b                                           ; $6398: $88
	adc  b                                           ; $6399: $88
	adc  b                                           ; $639a: $88
	adc  b                                           ; $639b: $88
	adc  b                                           ; $639c: $88
	adc  b                                           ; $639d: $88
	adc  b                                           ; $639e: $88
	adc  b                                           ; $639f: $88
	adc  b                                           ; $63a0: $88
	adc  b                                           ; $63a1: $88
	adc  b                                           ; $63a2: $88
	adc  b                                           ; $63a3: $88
	adc  b                                           ; $63a4: $88
	adc  b                                           ; $63a5: $88
	adc  b                                           ; $63a6: $88
	adc  b                                           ; $63a7: $88
	adc  b                                           ; $63a8: $88
	adc  b                                           ; $63a9: $88
	adc  b                                           ; $63aa: $88
	adc  b                                           ; $63ab: $88
	adc  b                                           ; $63ac: $88
	adc  b                                           ; $63ad: $88
	adc  b                                           ; $63ae: $88
	adc  b                                           ; $63af: $88
	adc  b                                           ; $63b0: $88
	adc  b                                           ; $63b1: $88
	adc  b                                           ; $63b2: $88
	adc  b                                           ; $63b3: $88
	adc  b                                           ; $63b4: $88
	adc  b                                           ; $63b5: $88
	adc  b                                           ; $63b6: $88
	adc  b                                           ; $63b7: $88
	adc  b                                           ; $63b8: $88
	adc  b                                           ; $63b9: $88
	adc  b                                           ; $63ba: $88
	adc  b                                           ; $63bb: $88
	adc  b                                           ; $63bc: $88
	adc  b                                           ; $63bd: $88
	adc  b                                           ; $63be: $88
	adc  b                                           ; $63bf: $88
	adc  b                                           ; $63c0: $88
	adc  b                                           ; $63c1: $88
	adc  b                                           ; $63c2: $88
	adc  b                                           ; $63c3: $88
	adc  b                                           ; $63c4: $88
	adc  b                                           ; $63c5: $88
	adc  b                                           ; $63c6: $88
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	adc  b                                           ; $63c9: $88
	adc  b                                           ; $63ca: $88
	adc  b                                           ; $63cb: $88
	adc  b                                           ; $63cc: $88
	adc  b                                           ; $63cd: $88
	adc  b                                           ; $63ce: $88
	adc  b                                           ; $63cf: $88
	adc  b                                           ; $63d0: $88
	adc  b                                           ; $63d1: $88
	adc  b                                           ; $63d2: $88
	adc  b                                           ; $63d3: $88
	adc  b                                           ; $63d4: $88
	adc  b                                           ; $63d5: $88
	adc  b                                           ; $63d6: $88
	adc  b                                           ; $63d7: $88
	adc  b                                           ; $63d8: $88
	adc  b                                           ; $63d9: $88
	adc  b                                           ; $63da: $88
	adc  b                                           ; $63db: $88
	adc  b                                           ; $63dc: $88
	adc  b                                           ; $63dd: $88
	adc  b                                           ; $63de: $88
	adc  b                                           ; $63df: $88
	adc  b                                           ; $63e0: $88
	adc  b                                           ; $63e1: $88
	adc  b                                           ; $63e2: $88
	adc  b                                           ; $63e3: $88
	adc  b                                           ; $63e4: $88
	adc  b                                           ; $63e5: $88
	adc  b                                           ; $63e6: $88
	adc  b                                           ; $63e7: $88
	adc  b                                           ; $63e8: $88
	adc  b                                           ; $63e9: $88
	adc  b                                           ; $63ea: $88
	adc  b                                           ; $63eb: $88
	adc  b                                           ; $63ec: $88
	adc  b                                           ; $63ed: $88
	adc  b                                           ; $63ee: $88
	adc  b                                           ; $63ef: $88
	adc  b                                           ; $63f0: $88
	adc  b                                           ; $63f1: $88
	adc  b                                           ; $63f2: $88
	adc  b                                           ; $63f3: $88
	adc  b                                           ; $63f4: $88
	adc  b                                           ; $63f5: $88
	adc  b                                           ; $63f6: $88
	adc  b                                           ; $63f7: $88
	adc  b                                           ; $63f8: $88
	adc  b                                           ; $63f9: $88
	adc  b                                           ; $63fa: $88
	adc  b                                           ; $63fb: $88
	adc  b                                           ; $63fc: $88
	adc  b                                           ; $63fd: $88
	adc  b                                           ; $63fe: $88
	adc  b                                           ; $63ff: $88
	adc  b                                           ; $6400: $88
	adc  b                                           ; $6401: $88
	adc  b                                           ; $6402: $88
	adc  b                                           ; $6403: $88
	adc  b                                           ; $6404: $88
	adc  b                                           ; $6405: $88
	adc  b                                           ; $6406: $88
	adc  b                                           ; $6407: $88
	adc  b                                           ; $6408: $88
	adc  b                                           ; $6409: $88
	adc  b                                           ; $640a: $88
	adc  b                                           ; $640b: $88
	adc  b                                           ; $640c: $88
	adc  b                                           ; $640d: $88
	adc  b                                           ; $640e: $88
	adc  b                                           ; $640f: $88
	adc  b                                           ; $6410: $88
	adc  b                                           ; $6411: $88
	adc  b                                           ; $6412: $88
	adc  b                                           ; $6413: $88
	adc  b                                           ; $6414: $88
	adc  b                                           ; $6415: $88
	adc  b                                           ; $6416: $88
	adc  b                                           ; $6417: $88
	adc  b                                           ; $6418: $88
	adc  b                                           ; $6419: $88
	adc  b                                           ; $641a: $88
	adc  b                                           ; $641b: $88
	adc  b                                           ; $641c: $88
	adc  b                                           ; $641d: $88
	adc  b                                           ; $641e: $88
	adc  b                                           ; $641f: $88
	adc  b                                           ; $6420: $88
	adc  b                                           ; $6421: $88
	adc  b                                           ; $6422: $88
	adc  b                                           ; $6423: $88
	adc  b                                           ; $6424: $88
	adc  b                                           ; $6425: $88
	adc  b                                           ; $6426: $88
	adc  b                                           ; $6427: $88
	adc  b                                           ; $6428: $88
	adc  b                                           ; $6429: $88
	adc  b                                           ; $642a: $88
	adc  b                                           ; $642b: $88
	adc  b                                           ; $642c: $88
	adc  b                                           ; $642d: $88
	adc  b                                           ; $642e: $88
	adc  b                                           ; $642f: $88
	adc  b                                           ; $6430: $88
	adc  b                                           ; $6431: $88
	adc  b                                           ; $6432: $88
	adc  b                                           ; $6433: $88
	adc  b                                           ; $6434: $88
	adc  b                                           ; $6435: $88
	adc  b                                           ; $6436: $88
	adc  b                                           ; $6437: $88
	adc  b                                           ; $6438: $88
	adc  b                                           ; $6439: $88
	adc  b                                           ; $643a: $88
	adc  b                                           ; $643b: $88
	adc  b                                           ; $643c: $88
	adc  b                                           ; $643d: $88
	adc  b                                           ; $643e: $88
	adc  b                                           ; $643f: $88
	adc  b                                           ; $6440: $88
	adc  b                                           ; $6441: $88
	adc  b                                           ; $6442: $88
	adc  b                                           ; $6443: $88
	adc  b                                           ; $6444: $88
	adc  b                                           ; $6445: $88
	adc  b                                           ; $6446: $88
	adc  b                                           ; $6447: $88
	adc  b                                           ; $6448: $88
	adc  b                                           ; $6449: $88
	adc  b                                           ; $644a: $88
	adc  b                                           ; $644b: $88
	adc  b                                           ; $644c: $88
	adc  b                                           ; $644d: $88
	adc  b                                           ; $644e: $88
	adc  b                                           ; $644f: $88
	adc  b                                           ; $6450: $88
	adc  b                                           ; $6451: $88
	adc  b                                           ; $6452: $88
	adc  b                                           ; $6453: $88
	adc  b                                           ; $6454: $88
	adc  b                                           ; $6455: $88
	adc  b                                           ; $6456: $88
	adc  b                                           ; $6457: $88
	adc  b                                           ; $6458: $88
	adc  b                                           ; $6459: $88
	adc  b                                           ; $645a: $88
	adc  b                                           ; $645b: $88
	adc  b                                           ; $645c: $88
	adc  b                                           ; $645d: $88
	adc  b                                           ; $645e: $88
	adc  b                                           ; $645f: $88
	adc  b                                           ; $6460: $88
	adc  b                                           ; $6461: $88
	adc  b                                           ; $6462: $88
	adc  b                                           ; $6463: $88
	adc  b                                           ; $6464: $88
	adc  b                                           ; $6465: $88
	adc  b                                           ; $6466: $88
	adc  b                                           ; $6467: $88
	adc  b                                           ; $6468: $88
	adc  b                                           ; $6469: $88
	adc  b                                           ; $646a: $88
	adc  b                                           ; $646b: $88
	adc  b                                           ; $646c: $88
	adc  b                                           ; $646d: $88
	adc  b                                           ; $646e: $88
	adc  b                                           ; $646f: $88
	adc  b                                           ; $6470: $88
	adc  b                                           ; $6471: $88
	adc  b                                           ; $6472: $88
	adc  b                                           ; $6473: $88
	adc  b                                           ; $6474: $88
	adc  b                                           ; $6475: $88
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
	adc  b                                           ; $6480: $88
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
	adc  b                                           ; $64ad: $88
	adc  b                                           ; $64ae: $88
	adc  b                                           ; $64af: $88
	adc  b                                           ; $64b0: $88
	adc  b                                           ; $64b1: $88
	adc  b                                           ; $64b2: $88
	adc  b                                           ; $64b3: $88
	adc  b                                           ; $64b4: $88
	adc  b                                           ; $64b5: $88
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88
	adc  b                                           ; $64b8: $88
	adc  b                                           ; $64b9: $88
	adc  b                                           ; $64ba: $88
	adc  b                                           ; $64bb: $88
	adc  b                                           ; $64bc: $88
	adc  b                                           ; $64bd: $88
	adc  b                                           ; $64be: $88
	adc  b                                           ; $64bf: $88
	adc  b                                           ; $64c0: $88
	adc  b                                           ; $64c1: $88
	adc  b                                           ; $64c2: $88
	adc  b                                           ; $64c3: $88
	adc  b                                           ; $64c4: $88
	adc  b                                           ; $64c5: $88
	adc  b                                           ; $64c6: $88
	adc  b                                           ; $64c7: $88
	adc  b                                           ; $64c8: $88
	adc  b                                           ; $64c9: $88
	adc  b                                           ; $64ca: $88
	adc  b                                           ; $64cb: $88
	adc  b                                           ; $64cc: $88
	adc  b                                           ; $64cd: $88
	adc  b                                           ; $64ce: $88
	adc  b                                           ; $64cf: $88
	adc  b                                           ; $64d0: $88
	adc  b                                           ; $64d1: $88
	adc  b                                           ; $64d2: $88
	adc  b                                           ; $64d3: $88
	adc  b                                           ; $64d4: $88
	adc  b                                           ; $64d5: $88
	adc  b                                           ; $64d6: $88
	adc  b                                           ; $64d7: $88
	adc  b                                           ; $64d8: $88
	adc  b                                           ; $64d9: $88
	adc  b                                           ; $64da: $88
	adc  b                                           ; $64db: $88
	adc  b                                           ; $64dc: $88
	adc  b                                           ; $64dd: $88
	adc  b                                           ; $64de: $88
	adc  b                                           ; $64df: $88
	adc  b                                           ; $64e0: $88
	adc  b                                           ; $64e1: $88
	adc  b                                           ; $64e2: $88
	adc  b                                           ; $64e3: $88
	adc  b                                           ; $64e4: $88
	adc  b                                           ; $64e5: $88
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  b                                           ; $64ea: $88
	adc  b                                           ; $64eb: $88
	adc  b                                           ; $64ec: $88
	adc  b                                           ; $64ed: $88
	adc  b                                           ; $64ee: $88
	adc  b                                           ; $64ef: $88
	adc  b                                           ; $64f0: $88
	adc  b                                           ; $64f1: $88
	adc  b                                           ; $64f2: $88
	adc  b                                           ; $64f3: $88
	adc  b                                           ; $64f4: $88
	adc  b                                           ; $64f5: $88
	adc  b                                           ; $64f6: $88
	adc  b                                           ; $64f7: $88
	adc  b                                           ; $64f8: $88
	adc  b                                           ; $64f9: $88
	adc  b                                           ; $64fa: $88
	adc  b                                           ; $64fb: $88
	adc  b                                           ; $64fc: $88
	adc  b                                           ; $64fd: $88
	adc  b                                           ; $64fe: $88
	adc  b                                           ; $64ff: $88
	adc  b                                           ; $6500: $88
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	adc  b                                           ; $6503: $88
	adc  b                                           ; $6504: $88
	adc  b                                           ; $6505: $88
	adc  b                                           ; $6506: $88
	adc  b                                           ; $6507: $88
	adc  b                                           ; $6508: $88
	adc  b                                           ; $6509: $88
	adc  b                                           ; $650a: $88
	adc  b                                           ; $650b: $88
	adc  b                                           ; $650c: $88
	adc  b                                           ; $650d: $88
	adc  b                                           ; $650e: $88
	adc  b                                           ; $650f: $88
	adc  b                                           ; $6510: $88
	adc  b                                           ; $6511: $88
	adc  b                                           ; $6512: $88
	adc  b                                           ; $6513: $88
	adc  b                                           ; $6514: $88
	adc  b                                           ; $6515: $88
	adc  b                                           ; $6516: $88
	adc  b                                           ; $6517: $88
	adc  b                                           ; $6518: $88
	adc  b                                           ; $6519: $88
	adc  b                                           ; $651a: $88
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	adc  b                                           ; $651d: $88
	adc  b                                           ; $651e: $88
	adc  b                                           ; $651f: $88
	adc  b                                           ; $6520: $88
	adc  b                                           ; $6521: $88
	adc  b                                           ; $6522: $88
	adc  b                                           ; $6523: $88
	adc  b                                           ; $6524: $88
	adc  b                                           ; $6525: $88
	adc  b                                           ; $6526: $88
	adc  b                                           ; $6527: $88
	adc  b                                           ; $6528: $88
	adc  b                                           ; $6529: $88
	adc  b                                           ; $652a: $88
	adc  b                                           ; $652b: $88
	adc  b                                           ; $652c: $88
	adc  b                                           ; $652d: $88
	adc  b                                           ; $652e: $88
	adc  b                                           ; $652f: $88
	adc  b                                           ; $6530: $88
	adc  b                                           ; $6531: $88
	adc  b                                           ; $6532: $88
	adc  b                                           ; $6533: $88
	adc  b                                           ; $6534: $88
	adc  b                                           ; $6535: $88
	adc  b                                           ; $6536: $88
	adc  b                                           ; $6537: $88
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	adc  b                                           ; $653a: $88
	adc  b                                           ; $653b: $88
	adc  b                                           ; $653c: $88
	adc  b                                           ; $653d: $88
	adc  b                                           ; $653e: $88
	adc  b                                           ; $653f: $88
	adc  b                                           ; $6540: $88
	adc  b                                           ; $6541: $88
	adc  b                                           ; $6542: $88
	adc  b                                           ; $6543: $88
	adc  b                                           ; $6544: $88
	adc  b                                           ; $6545: $88
	adc  b                                           ; $6546: $88
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	adc  b                                           ; $6549: $88
	adc  b                                           ; $654a: $88
	adc  b                                           ; $654b: $88
	adc  b                                           ; $654c: $88
	adc  b                                           ; $654d: $88
	adc  b                                           ; $654e: $88
	adc  b                                           ; $654f: $88
	adc  b                                           ; $6550: $88
	adc  b                                           ; $6551: $88
	adc  b                                           ; $6552: $88
	adc  b                                           ; $6553: $88
	adc  b                                           ; $6554: $88
	adc  b                                           ; $6555: $88
	adc  b                                           ; $6556: $88
	adc  b                                           ; $6557: $88
	adc  b                                           ; $6558: $88
	adc  b                                           ; $6559: $88
	adc  b                                           ; $655a: $88
	adc  b                                           ; $655b: $88
	adc  b                                           ; $655c: $88
	adc  b                                           ; $655d: $88
	adc  b                                           ; $655e: $88
	adc  b                                           ; $655f: $88
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	adc  b                                           ; $6562: $88
	adc  b                                           ; $6563: $88
	adc  b                                           ; $6564: $88
	adc  b                                           ; $6565: $88
	adc  b                                           ; $6566: $88
	adc  b                                           ; $6567: $88
	adc  b                                           ; $6568: $88
	adc  b                                           ; $6569: $88
	adc  b                                           ; $656a: $88
	adc  b                                           ; $656b: $88
	adc  b                                           ; $656c: $88
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	adc  b                                           ; $656f: $88
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	adc  b                                           ; $6572: $88
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	adc  b                                           ; $6575: $88
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	adc  b                                           ; $6578: $88
	adc  b                                           ; $6579: $88
	adc  b                                           ; $657a: $88
	adc  b                                           ; $657b: $88
	adc  b                                           ; $657c: $88
	adc  b                                           ; $657d: $88
	adc  b                                           ; $657e: $88
	adc  b                                           ; $657f: $88
	adc  b                                           ; $6580: $88
	adc  b                                           ; $6581: $88
	adc  b                                           ; $6582: $88
	adc  b                                           ; $6583: $88
	adc  b                                           ; $6584: $88
	adc  b                                           ; $6585: $88
	adc  b                                           ; $6586: $88
	adc  b                                           ; $6587: $88
	adc  b                                           ; $6588: $88
	adc  b                                           ; $6589: $88
	adc  b                                           ; $658a: $88
	adc  b                                           ; $658b: $88
	adc  b                                           ; $658c: $88
	adc  b                                           ; $658d: $88
	adc  b                                           ; $658e: $88
	adc  b                                           ; $658f: $88
	adc  b                                           ; $6590: $88
	adc  b                                           ; $6591: $88
	adc  b                                           ; $6592: $88
	adc  b                                           ; $6593: $88
	adc  b                                           ; $6594: $88
	adc  b                                           ; $6595: $88
	adc  b                                           ; $6596: $88
	adc  b                                           ; $6597: $88

Call_0aa_6598:
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	adc  b                                           ; $659a: $88
	adc  b                                           ; $659b: $88
	adc  b                                           ; $659c: $88
	adc  b                                           ; $659d: $88
	adc  b                                           ; $659e: $88
	adc  b                                           ; $659f: $88
	adc  b                                           ; $65a0: $88
	adc  b                                           ; $65a1: $88
	adc  b                                           ; $65a2: $88
	adc  b                                           ; $65a3: $88
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	adc  b                                           ; $65a6: $88
	adc  b                                           ; $65a7: $88
	adc  b                                           ; $65a8: $88
	adc  b                                           ; $65a9: $88
	adc  b                                           ; $65aa: $88
	adc  b                                           ; $65ab: $88
	adc  b                                           ; $65ac: $88
	adc  b                                           ; $65ad: $88
	adc  b                                           ; $65ae: $88
	adc  b                                           ; $65af: $88
	adc  b                                           ; $65b0: $88
	adc  b                                           ; $65b1: $88
	adc  b                                           ; $65b2: $88
	adc  b                                           ; $65b3: $88
	adc  b                                           ; $65b4: $88
	adc  b                                           ; $65b5: $88
	adc  b                                           ; $65b6: $88
	adc  b                                           ; $65b7: $88
	adc  b                                           ; $65b8: $88
	adc  b                                           ; $65b9: $88
	adc  b                                           ; $65ba: $88
	adc  b                                           ; $65bb: $88
	adc  b                                           ; $65bc: $88
	adc  b                                           ; $65bd: $88
	adc  b                                           ; $65be: $88
	adc  b                                           ; $65bf: $88
	adc  b                                           ; $65c0: $88
	adc  b                                           ; $65c1: $88
	adc  b                                           ; $65c2: $88
	adc  b                                           ; $65c3: $88
	adc  b                                           ; $65c4: $88
	adc  b                                           ; $65c5: $88
	adc  b                                           ; $65c6: $88
	adc  b                                           ; $65c7: $88
	adc  b                                           ; $65c8: $88
	adc  b                                           ; $65c9: $88
	adc  b                                           ; $65ca: $88
	adc  b                                           ; $65cb: $88
	adc  b                                           ; $65cc: $88
	adc  b                                           ; $65cd: $88
	adc  b                                           ; $65ce: $88
	adc  b                                           ; $65cf: $88
	adc  b                                           ; $65d0: $88
	adc  b                                           ; $65d1: $88
	adc  b                                           ; $65d2: $88
	adc  b                                           ; $65d3: $88
	adc  b                                           ; $65d4: $88
	adc  b                                           ; $65d5: $88
	adc  b                                           ; $65d6: $88
	adc  b                                           ; $65d7: $88
	adc  b                                           ; $65d8: $88
	adc  b                                           ; $65d9: $88
	adc  b                                           ; $65da: $88
	adc  b                                           ; $65db: $88
	adc  b                                           ; $65dc: $88
	adc  b                                           ; $65dd: $88
	adc  b                                           ; $65de: $88
	adc  b                                           ; $65df: $88
	adc  b                                           ; $65e0: $88
	adc  b                                           ; $65e1: $88
	adc  b                                           ; $65e2: $88
	adc  b                                           ; $65e3: $88
	adc  b                                           ; $65e4: $88
	adc  b                                           ; $65e5: $88
	adc  b                                           ; $65e6: $88
	adc  b                                           ; $65e7: $88
	adc  b                                           ; $65e8: $88
	adc  b                                           ; $65e9: $88
	adc  b                                           ; $65ea: $88
	adc  b                                           ; $65eb: $88
	adc  b                                           ; $65ec: $88
	adc  b                                           ; $65ed: $88
	adc  b                                           ; $65ee: $88
	adc  b                                           ; $65ef: $88
	adc  b                                           ; $65f0: $88
	adc  b                                           ; $65f1: $88
	adc  b                                           ; $65f2: $88
	adc  b                                           ; $65f3: $88
	adc  b                                           ; $65f4: $88
	adc  b                                           ; $65f5: $88
	adc  b                                           ; $65f6: $88
	adc  b                                           ; $65f7: $88
	adc  b                                           ; $65f8: $88
	adc  b                                           ; $65f9: $88
	adc  b                                           ; $65fa: $88
	adc  b                                           ; $65fb: $88
	adc  b                                           ; $65fc: $88
	adc  b                                           ; $65fd: $88
	adc  b                                           ; $65fe: $88
	adc  b                                           ; $65ff: $88
	adc  b                                           ; $6600: $88
	adc  b                                           ; $6601: $88
	adc  b                                           ; $6602: $88
	adc  b                                           ; $6603: $88
	adc  b                                           ; $6604: $88
	adc  b                                           ; $6605: $88
	adc  b                                           ; $6606: $88
	adc  b                                           ; $6607: $88
	adc  b                                           ; $6608: $88
	adc  b                                           ; $6609: $88
	adc  b                                           ; $660a: $88
	adc  b                                           ; $660b: $88
	adc  b                                           ; $660c: $88
	adc  b                                           ; $660d: $88
	adc  b                                           ; $660e: $88
	adc  b                                           ; $660f: $88
	adc  b                                           ; $6610: $88
	adc  b                                           ; $6611: $88
	adc  b                                           ; $6612: $88
	adc  b                                           ; $6613: $88
	adc  b                                           ; $6614: $88
	adc  b                                           ; $6615: $88
	adc  b                                           ; $6616: $88
	adc  b                                           ; $6617: $88
	adc  b                                           ; $6618: $88
	adc  b                                           ; $6619: $88
	adc  b                                           ; $661a: $88
	adc  b                                           ; $661b: $88
	adc  b                                           ; $661c: $88
	adc  b                                           ; $661d: $88
	adc  b                                           ; $661e: $88
	adc  b                                           ; $661f: $88
	adc  b                                           ; $6620: $88
	adc  b                                           ; $6621: $88
	adc  b                                           ; $6622: $88
	adc  b                                           ; $6623: $88
	adc  b                                           ; $6624: $88
	adc  b                                           ; $6625: $88
	adc  b                                           ; $6626: $88
	adc  b                                           ; $6627: $88
	adc  b                                           ; $6628: $88
	adc  b                                           ; $6629: $88
	adc  b                                           ; $662a: $88
	adc  b                                           ; $662b: $88
	adc  b                                           ; $662c: $88
	adc  b                                           ; $662d: $88
	adc  b                                           ; $662e: $88
	adc  b                                           ; $662f: $88
	adc  b                                           ; $6630: $88
	adc  b                                           ; $6631: $88
	adc  b                                           ; $6632: $88
	adc  b                                           ; $6633: $88
	adc  b                                           ; $6634: $88
	adc  b                                           ; $6635: $88
	adc  b                                           ; $6636: $88
	adc  b                                           ; $6637: $88
	adc  b                                           ; $6638: $88
	adc  b                                           ; $6639: $88
	adc  b                                           ; $663a: $88
	adc  b                                           ; $663b: $88
	adc  b                                           ; $663c: $88
	adc  b                                           ; $663d: $88
	adc  b                                           ; $663e: $88
	adc  b                                           ; $663f: $88
	adc  b                                           ; $6640: $88
	adc  b                                           ; $6641: $88
	adc  b                                           ; $6642: $88
	adc  b                                           ; $6643: $88
	adc  b                                           ; $6644: $88
	adc  b                                           ; $6645: $88
	adc  b                                           ; $6646: $88
	adc  b                                           ; $6647: $88
	adc  b                                           ; $6648: $88
	adc  b                                           ; $6649: $88
	adc  b                                           ; $664a: $88
	adc  b                                           ; $664b: $88
	adc  b                                           ; $664c: $88
	adc  b                                           ; $664d: $88
	adc  b                                           ; $664e: $88
	adc  b                                           ; $664f: $88
	adc  b                                           ; $6650: $88
	adc  b                                           ; $6651: $88
	adc  b                                           ; $6652: $88
	adc  b                                           ; $6653: $88
	adc  b                                           ; $6654: $88
	adc  b                                           ; $6655: $88
	adc  b                                           ; $6656: $88
	adc  b                                           ; $6657: $88
	adc  b                                           ; $6658: $88
	adc  b                                           ; $6659: $88
	adc  b                                           ; $665a: $88
	adc  b                                           ; $665b: $88
	adc  b                                           ; $665c: $88
	adc  b                                           ; $665d: $88
	adc  b                                           ; $665e: $88
	adc  b                                           ; $665f: $88
	adc  b                                           ; $6660: $88
	adc  b                                           ; $6661: $88
	adc  b                                           ; $6662: $88
	adc  b                                           ; $6663: $88
	adc  b                                           ; $6664: $88
	adc  b                                           ; $6665: $88
	adc  b                                           ; $6666: $88
	adc  b                                           ; $6667: $88
	adc  b                                           ; $6668: $88
	adc  b                                           ; $6669: $88
	adc  b                                           ; $666a: $88
	adc  b                                           ; $666b: $88
	adc  b                                           ; $666c: $88
	adc  b                                           ; $666d: $88
	adc  b                                           ; $666e: $88
	adc  b                                           ; $666f: $88
	adc  b                                           ; $6670: $88
	adc  b                                           ; $6671: $88
	adc  b                                           ; $6672: $88
	adc  b                                           ; $6673: $88
	adc  b                                           ; $6674: $88
	adc  b                                           ; $6675: $88
	adc  b                                           ; $6676: $88
	adc  b                                           ; $6677: $88
	adc  b                                           ; $6678: $88
	adc  b                                           ; $6679: $88
	adc  b                                           ; $667a: $88
	adc  b                                           ; $667b: $88
	adc  b                                           ; $667c: $88
	adc  b                                           ; $667d: $88
	adc  b                                           ; $667e: $88
	adc  b                                           ; $667f: $88
	adc  b                                           ; $6680: $88
	adc  b                                           ; $6681: $88
	adc  b                                           ; $6682: $88
	adc  b                                           ; $6683: $88
	adc  b                                           ; $6684: $88
	adc  b                                           ; $6685: $88
	adc  b                                           ; $6686: $88
	adc  b                                           ; $6687: $88
	adc  b                                           ; $6688: $88
	adc  b                                           ; $6689: $88
	adc  b                                           ; $668a: $88
	adc  b                                           ; $668b: $88
	adc  b                                           ; $668c: $88
	adc  b                                           ; $668d: $88
	adc  b                                           ; $668e: $88
	adc  b                                           ; $668f: $88
	adc  b                                           ; $6690: $88
	adc  b                                           ; $6691: $88
	adc  b                                           ; $6692: $88
	adc  b                                           ; $6693: $88
	adc  b                                           ; $6694: $88
	adc  b                                           ; $6695: $88
	adc  b                                           ; $6696: $88
	adc  b                                           ; $6697: $88
	adc  b                                           ; $6698: $88
	adc  b                                           ; $6699: $88
	adc  b                                           ; $669a: $88
	adc  b                                           ; $669b: $88
	adc  b                                           ; $669c: $88
	adc  b                                           ; $669d: $88
	adc  b                                           ; $669e: $88
	adc  b                                           ; $669f: $88
	adc  b                                           ; $66a0: $88
	adc  b                                           ; $66a1: $88
	adc  b                                           ; $66a2: $88
	adc  b                                           ; $66a3: $88
	adc  b                                           ; $66a4: $88
	adc  b                                           ; $66a5: $88
	adc  b                                           ; $66a6: $88
	adc  b                                           ; $66a7: $88
	adc  b                                           ; $66a8: $88
	adc  b                                           ; $66a9: $88
	adc  b                                           ; $66aa: $88
	adc  b                                           ; $66ab: $88
	adc  b                                           ; $66ac: $88
	adc  b                                           ; $66ad: $88
	adc  b                                           ; $66ae: $88
	adc  b                                           ; $66af: $88
	adc  b                                           ; $66b0: $88
	adc  b                                           ; $66b1: $88
	adc  b                                           ; $66b2: $88
	adc  b                                           ; $66b3: $88
	adc  b                                           ; $66b4: $88
	adc  b                                           ; $66b5: $88
	adc  b                                           ; $66b6: $88
	adc  b                                           ; $66b7: $88
	adc  b                                           ; $66b8: $88
	adc  b                                           ; $66b9: $88
	adc  b                                           ; $66ba: $88
	adc  b                                           ; $66bb: $88
	adc  b                                           ; $66bc: $88
	adc  b                                           ; $66bd: $88
	adc  b                                           ; $66be: $88
	adc  b                                           ; $66bf: $88
	adc  b                                           ; $66c0: $88
	adc  b                                           ; $66c1: $88
	adc  b                                           ; $66c2: $88
	adc  b                                           ; $66c3: $88
	adc  b                                           ; $66c4: $88
	adc  b                                           ; $66c5: $88
	adc  b                                           ; $66c6: $88
	adc  b                                           ; $66c7: $88
	adc  b                                           ; $66c8: $88
	adc  b                                           ; $66c9: $88
	adc  b                                           ; $66ca: $88
	adc  b                                           ; $66cb: $88
	adc  b                                           ; $66cc: $88
	adc  b                                           ; $66cd: $88
	adc  b                                           ; $66ce: $88
	adc  b                                           ; $66cf: $88
	adc  b                                           ; $66d0: $88
	adc  b                                           ; $66d1: $88
	adc  b                                           ; $66d2: $88
	adc  b                                           ; $66d3: $88
	adc  b                                           ; $66d4: $88
	adc  b                                           ; $66d5: $88
	adc  b                                           ; $66d6: $88
	adc  b                                           ; $66d7: $88
	adc  b                                           ; $66d8: $88
	adc  b                                           ; $66d9: $88
	adc  b                                           ; $66da: $88
	adc  b                                           ; $66db: $88
	adc  b                                           ; $66dc: $88
	adc  b                                           ; $66dd: $88
	adc  b                                           ; $66de: $88
	adc  b                                           ; $66df: $88
	adc  b                                           ; $66e0: $88
	adc  b                                           ; $66e1: $88
	adc  b                                           ; $66e2: $88
	adc  b                                           ; $66e3: $88
	adc  b                                           ; $66e4: $88
	adc  b                                           ; $66e5: $88
	adc  b                                           ; $66e6: $88
	adc  b                                           ; $66e7: $88
	adc  b                                           ; $66e8: $88
	adc  b                                           ; $66e9: $88
	adc  b                                           ; $66ea: $88
	adc  b                                           ; $66eb: $88
	adc  b                                           ; $66ec: $88
	adc  b                                           ; $66ed: $88
	adc  b                                           ; $66ee: $88
	adc  b                                           ; $66ef: $88
	adc  b                                           ; $66f0: $88
	adc  b                                           ; $66f1: $88
	adc  b                                           ; $66f2: $88
	adc  b                                           ; $66f3: $88
	adc  b                                           ; $66f4: $88
	adc  b                                           ; $66f5: $88
	adc  b                                           ; $66f6: $88
	adc  b                                           ; $66f7: $88
	adc  b                                           ; $66f8: $88
	adc  b                                           ; $66f9: $88
	adc  b                                           ; $66fa: $88
	adc  b                                           ; $66fb: $88
	adc  b                                           ; $66fc: $88
	adc  b                                           ; $66fd: $88
	adc  b                                           ; $66fe: $88
	adc  b                                           ; $66ff: $88
	adc  b                                           ; $6700: $88
	adc  b                                           ; $6701: $88
	adc  b                                           ; $6702: $88
	adc  b                                           ; $6703: $88
	adc  b                                           ; $6704: $88
	adc  b                                           ; $6705: $88
	adc  b                                           ; $6706: $88
	adc  b                                           ; $6707: $88
	adc  b                                           ; $6708: $88
	adc  b                                           ; $6709: $88
	adc  b                                           ; $670a: $88
	adc  b                                           ; $670b: $88
	adc  b                                           ; $670c: $88
	adc  b                                           ; $670d: $88
	adc  b                                           ; $670e: $88
	adc  b                                           ; $670f: $88
	adc  b                                           ; $6710: $88
	adc  b                                           ; $6711: $88
	adc  b                                           ; $6712: $88
	adc  b                                           ; $6713: $88
	adc  b                                           ; $6714: $88
	adc  b                                           ; $6715: $88
	adc  b                                           ; $6716: $88
	adc  b                                           ; $6717: $88
	adc  b                                           ; $6718: $88
	adc  b                                           ; $6719: $88
	adc  b                                           ; $671a: $88
	adc  b                                           ; $671b: $88
	adc  b                                           ; $671c: $88
	adc  b                                           ; $671d: $88
	adc  b                                           ; $671e: $88
	adc  b                                           ; $671f: $88
	adc  b                                           ; $6720: $88
	adc  b                                           ; $6721: $88
	adc  b                                           ; $6722: $88
	adc  b                                           ; $6723: $88
	adc  b                                           ; $6724: $88
	adc  b                                           ; $6725: $88
	adc  b                                           ; $6726: $88
	adc  b                                           ; $6727: $88
	adc  b                                           ; $6728: $88
	adc  b                                           ; $6729: $88
	adc  b                                           ; $672a: $88
	adc  b                                           ; $672b: $88
	adc  b                                           ; $672c: $88
	adc  b                                           ; $672d: $88
	adc  b                                           ; $672e: $88
	adc  b                                           ; $672f: $88
	adc  b                                           ; $6730: $88
	adc  b                                           ; $6731: $88
	adc  b                                           ; $6732: $88
	adc  b                                           ; $6733: $88
	adc  b                                           ; $6734: $88
	adc  b                                           ; $6735: $88
	adc  b                                           ; $6736: $88
	adc  b                                           ; $6737: $88
	adc  b                                           ; $6738: $88
	adc  b                                           ; $6739: $88
	adc  b                                           ; $673a: $88
	adc  b                                           ; $673b: $88
	adc  b                                           ; $673c: $88
	adc  b                                           ; $673d: $88
	adc  b                                           ; $673e: $88
	adc  b                                           ; $673f: $88
	adc  b                                           ; $6740: $88
	adc  b                                           ; $6741: $88
	adc  b                                           ; $6742: $88
	adc  b                                           ; $6743: $88
	adc  b                                           ; $6744: $88
	adc  b                                           ; $6745: $88
	adc  b                                           ; $6746: $88
	adc  b                                           ; $6747: $88
	adc  b                                           ; $6748: $88
	adc  b                                           ; $6749: $88
	adc  b                                           ; $674a: $88
	adc  b                                           ; $674b: $88
	adc  b                                           ; $674c: $88
	adc  b                                           ; $674d: $88
	adc  b                                           ; $674e: $88
	adc  b                                           ; $674f: $88
	adc  b                                           ; $6750: $88
	adc  b                                           ; $6751: $88
	adc  b                                           ; $6752: $88
	adc  b                                           ; $6753: $88
	adc  b                                           ; $6754: $88
	adc  b                                           ; $6755: $88
	adc  b                                           ; $6756: $88
	adc  b                                           ; $6757: $88
	adc  b                                           ; $6758: $88
	adc  b                                           ; $6759: $88
	adc  b                                           ; $675a: $88
	adc  b                                           ; $675b: $88
	adc  b                                           ; $675c: $88
	adc  b                                           ; $675d: $88
	adc  b                                           ; $675e: $88
	adc  b                                           ; $675f: $88
	adc  b                                           ; $6760: $88
	adc  b                                           ; $6761: $88
	adc  b                                           ; $6762: $88
	adc  b                                           ; $6763: $88
	adc  b                                           ; $6764: $88
	adc  b                                           ; $6765: $88
	adc  b                                           ; $6766: $88
	adc  b                                           ; $6767: $88
	adc  b                                           ; $6768: $88
	adc  b                                           ; $6769: $88
	adc  b                                           ; $676a: $88
	adc  b                                           ; $676b: $88
	adc  b                                           ; $676c: $88
	adc  b                                           ; $676d: $88
	adc  b                                           ; $676e: $88
	adc  b                                           ; $676f: $88
	adc  b                                           ; $6770: $88
	adc  b                                           ; $6771: $88
	adc  b                                           ; $6772: $88
	adc  b                                           ; $6773: $88
	adc  b                                           ; $6774: $88
	adc  b                                           ; $6775: $88
	adc  b                                           ; $6776: $88
	adc  b                                           ; $6777: $88
	adc  b                                           ; $6778: $88
	adc  b                                           ; $6779: $88
	adc  b                                           ; $677a: $88
	adc  b                                           ; $677b: $88
	adc  b                                           ; $677c: $88
	adc  b                                           ; $677d: $88
	adc  b                                           ; $677e: $88
	adc  b                                           ; $677f: $88
	adc  b                                           ; $6780: $88
	adc  b                                           ; $6781: $88
	adc  b                                           ; $6782: $88
	adc  b                                           ; $6783: $88
	adc  b                                           ; $6784: $88
	adc  b                                           ; $6785: $88
	adc  b                                           ; $6786: $88

Jump_0aa_6787:
	adc  b                                           ; $6787: $88
	adc  b                                           ; $6788: $88
	adc  b                                           ; $6789: $88
	adc  b                                           ; $678a: $88
	adc  b                                           ; $678b: $88
	adc  b                                           ; $678c: $88
	adc  b                                           ; $678d: $88
	adc  b                                           ; $678e: $88
	adc  b                                           ; $678f: $88
	adc  b                                           ; $6790: $88
	adc  b                                           ; $6791: $88
	adc  b                                           ; $6792: $88
	adc  b                                           ; $6793: $88
	adc  b                                           ; $6794: $88
	adc  b                                           ; $6795: $88
	adc  b                                           ; $6796: $88
	adc  b                                           ; $6797: $88
	adc  b                                           ; $6798: $88
	adc  b                                           ; $6799: $88
	adc  b                                           ; $679a: $88
	adc  b                                           ; $679b: $88
	adc  b                                           ; $679c: $88
	adc  b                                           ; $679d: $88
	adc  b                                           ; $679e: $88
	adc  b                                           ; $679f: $88
	adc  b                                           ; $67a0: $88
	adc  b                                           ; $67a1: $88
	adc  b                                           ; $67a2: $88
	adc  b                                           ; $67a3: $88
	adc  b                                           ; $67a4: $88
	adc  b                                           ; $67a5: $88
	adc  b                                           ; $67a6: $88
	adc  b                                           ; $67a7: $88
	adc  b                                           ; $67a8: $88
	adc  b                                           ; $67a9: $88
	adc  b                                           ; $67aa: $88
	adc  b                                           ; $67ab: $88
	adc  b                                           ; $67ac: $88
	adc  b                                           ; $67ad: $88
	adc  b                                           ; $67ae: $88
	adc  b                                           ; $67af: $88
	adc  b                                           ; $67b0: $88
	adc  b                                           ; $67b1: $88
	adc  b                                           ; $67b2: $88
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
	adc  b                                           ; $67bd: $88
	adc  b                                           ; $67be: $88
	adc  b                                           ; $67bf: $88
	adc  b                                           ; $67c0: $88
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

Call_0aa_68eb:
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
	adc  b                                           ; $68f7: $88
	adc  b                                           ; $68f8: $88
	adc  b                                           ; $68f9: $88
	adc  b                                           ; $68fa: $88
	adc  b                                           ; $68fb: $88
	adc  b                                           ; $68fc: $88
	adc  b                                           ; $68fd: $88
	adc  b                                           ; $68fe: $88
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

Call_0aa_69a7:
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

Jump_0aa_6afd:
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
	adc  b                                           ; $6be4: $88
	adc  b                                           ; $6be5: $88
	adc  b                                           ; $6be6: $88
	adc  b                                           ; $6be7: $88
	adc  b                                           ; $6be8: $88
	adc  b                                           ; $6be9: $88
	adc  b                                           ; $6bea: $88
	adc  b                                           ; $6beb: $88
	adc  b                                           ; $6bec: $88
	adc  b                                           ; $6bed: $88
	adc  b                                           ; $6bee: $88
	adc  b                                           ; $6bef: $88
	adc  b                                           ; $6bf0: $88
	adc  b                                           ; $6bf1: $88
	adc  b                                           ; $6bf2: $88
	adc  b                                           ; $6bf3: $88
	adc  b                                           ; $6bf4: $88
	adc  b                                           ; $6bf5: $88
	adc  b                                           ; $6bf6: $88
	adc  b                                           ; $6bf7: $88
	adc  b                                           ; $6bf8: $88
	adc  b                                           ; $6bf9: $88
	adc  b                                           ; $6bfa: $88
	adc  b                                           ; $6bfb: $88
	adc  b                                           ; $6bfc: $88
	adc  b                                           ; $6bfd: $88
	adc  b                                           ; $6bfe: $88
	adc  b                                           ; $6bff: $88
	adc  b                                           ; $6c00: $88
	adc  b                                           ; $6c01: $88
	adc  b                                           ; $6c02: $88
	adc  b                                           ; $6c03: $88
	adc  b                                           ; $6c04: $88
	adc  b                                           ; $6c05: $88
	adc  b                                           ; $6c06: $88
	adc  b                                           ; $6c07: $88
	adc  b                                           ; $6c08: $88
	adc  b                                           ; $6c09: $88
	adc  b                                           ; $6c0a: $88
	adc  b                                           ; $6c0b: $88
	adc  b                                           ; $6c0c: $88
	adc  b                                           ; $6c0d: $88
	adc  b                                           ; $6c0e: $88
	adc  b                                           ; $6c0f: $88
	adc  b                                           ; $6c10: $88
	adc  b                                           ; $6c11: $88
	adc  b                                           ; $6c12: $88
	adc  b                                           ; $6c13: $88
	adc  b                                           ; $6c14: $88
	adc  b                                           ; $6c15: $88
	adc  b                                           ; $6c16: $88
	adc  b                                           ; $6c17: $88
	adc  b                                           ; $6c18: $88
	adc  b                                           ; $6c19: $88
	adc  b                                           ; $6c1a: $88
	adc  b                                           ; $6c1b: $88
	adc  b                                           ; $6c1c: $88
	adc  b                                           ; $6c1d: $88
	adc  b                                           ; $6c1e: $88
	adc  b                                           ; $6c1f: $88
	adc  b                                           ; $6c20: $88
	adc  b                                           ; $6c21: $88
	adc  b                                           ; $6c22: $88
	adc  b                                           ; $6c23: $88
	adc  b                                           ; $6c24: $88
	adc  b                                           ; $6c25: $88
	adc  b                                           ; $6c26: $88
	adc  b                                           ; $6c27: $88
	adc  b                                           ; $6c28: $88
	adc  b                                           ; $6c29: $88
	adc  b                                           ; $6c2a: $88
	adc  b                                           ; $6c2b: $88
	adc  b                                           ; $6c2c: $88
	adc  b                                           ; $6c2d: $88
	adc  b                                           ; $6c2e: $88
	adc  b                                           ; $6c2f: $88
	adc  b                                           ; $6c30: $88
	adc  b                                           ; $6c31: $88
	adc  b                                           ; $6c32: $88
	adc  b                                           ; $6c33: $88
	adc  b                                           ; $6c34: $88
	adc  b                                           ; $6c35: $88
	adc  b                                           ; $6c36: $88
	adc  b                                           ; $6c37: $88
	adc  b                                           ; $6c38: $88
	adc  b                                           ; $6c39: $88
	adc  b                                           ; $6c3a: $88
	adc  b                                           ; $6c3b: $88
	adc  b                                           ; $6c3c: $88
	adc  b                                           ; $6c3d: $88
	adc  b                                           ; $6c3e: $88
	adc  b                                           ; $6c3f: $88
	adc  b                                           ; $6c40: $88
	adc  b                                           ; $6c41: $88
	adc  b                                           ; $6c42: $88
	adc  b                                           ; $6c43: $88
	adc  b                                           ; $6c44: $88
	adc  b                                           ; $6c45: $88
	adc  b                                           ; $6c46: $88
	adc  b                                           ; $6c47: $88
	adc  b                                           ; $6c48: $88
	adc  b                                           ; $6c49: $88
	adc  b                                           ; $6c4a: $88
	adc  b                                           ; $6c4b: $88
	adc  b                                           ; $6c4c: $88
	adc  b                                           ; $6c4d: $88
	adc  b                                           ; $6c4e: $88
	adc  b                                           ; $6c4f: $88
	adc  b                                           ; $6c50: $88
	adc  b                                           ; $6c51: $88
	adc  b                                           ; $6c52: $88
	adc  b                                           ; $6c53: $88
	adc  b                                           ; $6c54: $88
	adc  b                                           ; $6c55: $88
	adc  b                                           ; $6c56: $88
	adc  b                                           ; $6c57: $88
	adc  b                                           ; $6c58: $88
	adc  b                                           ; $6c59: $88
	adc  b                                           ; $6c5a: $88
	adc  b                                           ; $6c5b: $88
	adc  b                                           ; $6c5c: $88
	adc  b                                           ; $6c5d: $88
	adc  b                                           ; $6c5e: $88
	adc  b                                           ; $6c5f: $88
	adc  b                                           ; $6c60: $88
	adc  b                                           ; $6c61: $88
	adc  b                                           ; $6c62: $88
	adc  b                                           ; $6c63: $88
	adc  b                                           ; $6c64: $88
	adc  b                                           ; $6c65: $88
	adc  b                                           ; $6c66: $88
	adc  b                                           ; $6c67: $88
	adc  b                                           ; $6c68: $88
	adc  b                                           ; $6c69: $88
	adc  b                                           ; $6c6a: $88
	adc  b                                           ; $6c6b: $88
	adc  b                                           ; $6c6c: $88
	adc  b                                           ; $6c6d: $88
	adc  b                                           ; $6c6e: $88
	adc  b                                           ; $6c6f: $88
	adc  b                                           ; $6c70: $88
	adc  b                                           ; $6c71: $88
	adc  b                                           ; $6c72: $88
	adc  b                                           ; $6c73: $88
	adc  b                                           ; $6c74: $88
	adc  b                                           ; $6c75: $88
	adc  b                                           ; $6c76: $88
	adc  b                                           ; $6c77: $88
	adc  b                                           ; $6c78: $88
	adc  b                                           ; $6c79: $88
	adc  b                                           ; $6c7a: $88
	adc  b                                           ; $6c7b: $88
	adc  b                                           ; $6c7c: $88
	adc  b                                           ; $6c7d: $88
	adc  b                                           ; $6c7e: $88
	adc  b                                           ; $6c7f: $88
	adc  b                                           ; $6c80: $88
	adc  b                                           ; $6c81: $88
	adc  b                                           ; $6c82: $88
	adc  b                                           ; $6c83: $88
	adc  b                                           ; $6c84: $88
	adc  b                                           ; $6c85: $88
	adc  b                                           ; $6c86: $88
	adc  b                                           ; $6c87: $88
	adc  b                                           ; $6c88: $88
	adc  b                                           ; $6c89: $88
	adc  b                                           ; $6c8a: $88
	adc  b                                           ; $6c8b: $88
	adc  b                                           ; $6c8c: $88
	adc  b                                           ; $6c8d: $88
	adc  b                                           ; $6c8e: $88
	adc  b                                           ; $6c8f: $88
	adc  b                                           ; $6c90: $88
	adc  b                                           ; $6c91: $88
	adc  b                                           ; $6c92: $88
	adc  b                                           ; $6c93: $88
	adc  b                                           ; $6c94: $88
	adc  b                                           ; $6c95: $88
	adc  b                                           ; $6c96: $88
	adc  b                                           ; $6c97: $88
	adc  b                                           ; $6c98: $88
	adc  b                                           ; $6c99: $88
	adc  b                                           ; $6c9a: $88
	adc  b                                           ; $6c9b: $88
	adc  b                                           ; $6c9c: $88
	adc  b                                           ; $6c9d: $88
	adc  b                                           ; $6c9e: $88
	adc  b                                           ; $6c9f: $88
	adc  b                                           ; $6ca0: $88
	adc  b                                           ; $6ca1: $88
	adc  b                                           ; $6ca2: $88
	adc  b                                           ; $6ca3: $88
	adc  b                                           ; $6ca4: $88
	adc  b                                           ; $6ca5: $88
	adc  b                                           ; $6ca6: $88
	adc  b                                           ; $6ca7: $88
	adc  b                                           ; $6ca8: $88
	adc  b                                           ; $6ca9: $88
	adc  b                                           ; $6caa: $88
	adc  b                                           ; $6cab: $88
	adc  b                                           ; $6cac: $88
	adc  b                                           ; $6cad: $88
	adc  b                                           ; $6cae: $88
	adc  b                                           ; $6caf: $88
	adc  b                                           ; $6cb0: $88
	adc  b                                           ; $6cb1: $88
	adc  b                                           ; $6cb2: $88
	adc  b                                           ; $6cb3: $88
	adc  b                                           ; $6cb4: $88
	adc  b                                           ; $6cb5: $88
	adc  b                                           ; $6cb6: $88
	adc  b                                           ; $6cb7: $88
	adc  b                                           ; $6cb8: $88
	adc  b                                           ; $6cb9: $88
	adc  b                                           ; $6cba: $88
	adc  b                                           ; $6cbb: $88
	adc  b                                           ; $6cbc: $88
	adc  b                                           ; $6cbd: $88
	adc  b                                           ; $6cbe: $88
	adc  b                                           ; $6cbf: $88
	adc  b                                           ; $6cc0: $88
	adc  b                                           ; $6cc1: $88
	adc  b                                           ; $6cc2: $88
	adc  b                                           ; $6cc3: $88
	adc  b                                           ; $6cc4: $88
	adc  b                                           ; $6cc5: $88
	adc  b                                           ; $6cc6: $88
	adc  b                                           ; $6cc7: $88
	adc  b                                           ; $6cc8: $88
	adc  b                                           ; $6cc9: $88
	adc  b                                           ; $6cca: $88
	adc  b                                           ; $6ccb: $88
	adc  b                                           ; $6ccc: $88
	adc  b                                           ; $6ccd: $88
	adc  b                                           ; $6cce: $88
	adc  b                                           ; $6ccf: $88
	adc  b                                           ; $6cd0: $88
	adc  b                                           ; $6cd1: $88
	adc  b                                           ; $6cd2: $88
	adc  b                                           ; $6cd3: $88
	adc  b                                           ; $6cd4: $88
	adc  b                                           ; $6cd5: $88
	adc  b                                           ; $6cd6: $88
	adc  b                                           ; $6cd7: $88
	adc  b                                           ; $6cd8: $88
	adc  b                                           ; $6cd9: $88
	adc  b                                           ; $6cda: $88
	adc  b                                           ; $6cdb: $88
	adc  b                                           ; $6cdc: $88
	adc  b                                           ; $6cdd: $88
	adc  b                                           ; $6cde: $88
	adc  b                                           ; $6cdf: $88
	adc  b                                           ; $6ce0: $88
	adc  b                                           ; $6ce1: $88
	adc  b                                           ; $6ce2: $88
	adc  b                                           ; $6ce3: $88
	adc  b                                           ; $6ce4: $88
	adc  b                                           ; $6ce5: $88
	adc  b                                           ; $6ce6: $88
	adc  b                                           ; $6ce7: $88
	adc  b                                           ; $6ce8: $88
	adc  b                                           ; $6ce9: $88
	adc  b                                           ; $6cea: $88
	adc  b                                           ; $6ceb: $88
	adc  b                                           ; $6cec: $88
	adc  b                                           ; $6ced: $88
	adc  b                                           ; $6cee: $88
	adc  b                                           ; $6cef: $88
	adc  b                                           ; $6cf0: $88
	adc  b                                           ; $6cf1: $88
	adc  b                                           ; $6cf2: $88
	adc  b                                           ; $6cf3: $88
	adc  b                                           ; $6cf4: $88
	adc  b                                           ; $6cf5: $88
	adc  b                                           ; $6cf6: $88
	adc  b                                           ; $6cf7: $88
	adc  b                                           ; $6cf8: $88
	adc  b                                           ; $6cf9: $88
	adc  b                                           ; $6cfa: $88
	adc  b                                           ; $6cfb: $88
	adc  b                                           ; $6cfc: $88
	adc  b                                           ; $6cfd: $88
	adc  b                                           ; $6cfe: $88
	adc  b                                           ; $6cff: $88
	adc  b                                           ; $6d00: $88
	adc  b                                           ; $6d01: $88
	adc  b                                           ; $6d02: $88
	adc  b                                           ; $6d03: $88
	adc  b                                           ; $6d04: $88
	adc  b                                           ; $6d05: $88
	adc  b                                           ; $6d06: $88
	adc  b                                           ; $6d07: $88
	adc  b                                           ; $6d08: $88
	adc  b                                           ; $6d09: $88
	adc  b                                           ; $6d0a: $88
	adc  b                                           ; $6d0b: $88
	adc  b                                           ; $6d0c: $88
	adc  b                                           ; $6d0d: $88
	adc  b                                           ; $6d0e: $88
	adc  b                                           ; $6d0f: $88
	adc  b                                           ; $6d10: $88
	adc  b                                           ; $6d11: $88
	adc  b                                           ; $6d12: $88
	adc  b                                           ; $6d13: $88
	adc  b                                           ; $6d14: $88
	adc  b                                           ; $6d15: $88
	adc  b                                           ; $6d16: $88
	adc  b                                           ; $6d17: $88
	adc  b                                           ; $6d18: $88
	adc  b                                           ; $6d19: $88
	adc  b                                           ; $6d1a: $88
	adc  b                                           ; $6d1b: $88
	adc  b                                           ; $6d1c: $88
	adc  b                                           ; $6d1d: $88
	adc  b                                           ; $6d1e: $88
	adc  b                                           ; $6d1f: $88
	adc  b                                           ; $6d20: $88
	adc  b                                           ; $6d21: $88
	adc  b                                           ; $6d22: $88
	adc  b                                           ; $6d23: $88
	adc  b                                           ; $6d24: $88
	adc  b                                           ; $6d25: $88
	adc  b                                           ; $6d26: $88
	adc  b                                           ; $6d27: $88
	adc  b                                           ; $6d28: $88
	adc  b                                           ; $6d29: $88
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
	adc  b                                           ; $6e0c: $88
	adc  b                                           ; $6e0d: $88
	adc  b                                           ; $6e0e: $88
	adc  b                                           ; $6e0f: $88
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
	adc  b                                           ; $6e37: $88
	adc  b                                           ; $6e38: $88
	adc  b                                           ; $6e39: $88
	adc  b                                           ; $6e3a: $88
	adc  b                                           ; $6e3b: $88
	adc  b                                           ; $6e3c: $88
	adc  b                                           ; $6e3d: $88
	adc  b                                           ; $6e3e: $88
	adc  b                                           ; $6e3f: $88
	adc  b                                           ; $6e40: $88
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
	adc  b                                           ; $6e50: $88
	adc  b                                           ; $6e51: $88
	adc  b                                           ; $6e52: $88
	adc  b                                           ; $6e53: $88
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	adc  b                                           ; $6e56: $88
	adc  b                                           ; $6e57: $88
	adc  b                                           ; $6e58: $88
	adc  b                                           ; $6e59: $88
	adc  b                                           ; $6e5a: $88
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
	adc  b                                           ; $6e66: $88
	adc  b                                           ; $6e67: $88
	adc  b                                           ; $6e68: $88
	adc  b                                           ; $6e69: $88
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	adc  b                                           ; $6e6c: $88
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	adc  b                                           ; $6e6f: $88
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
	adc  b                                           ; $6e8b: $88
	adc  b                                           ; $6e8c: $88
	adc  b                                           ; $6e8d: $88
	adc  b                                           ; $6e8e: $88
	adc  b                                           ; $6e8f: $88
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
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
	adc  b                                           ; $6eaa: $88
	adc  b                                           ; $6eab: $88
	adc  b                                           ; $6eac: $88
	adc  b                                           ; $6ead: $88
	adc  b                                           ; $6eae: $88
	adc  b                                           ; $6eaf: $88
	adc  b                                           ; $6eb0: $88
	adc  b                                           ; $6eb1: $88
	adc  b                                           ; $6eb2: $88
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
	adc  b                                           ; $6ebe: $88
	adc  b                                           ; $6ebf: $88
	adc  b                                           ; $6ec0: $88
	adc  b                                           ; $6ec1: $88
	adc  b                                           ; $6ec2: $88
	adc  b                                           ; $6ec3: $88
	adc  b                                           ; $6ec4: $88
	adc  b                                           ; $6ec5: $88
	adc  b                                           ; $6ec6: $88
	adc  b                                           ; $6ec7: $88
	adc  b                                           ; $6ec8: $88
	adc  b                                           ; $6ec9: $88
	adc  b                                           ; $6eca: $88
	adc  b                                           ; $6ecb: $88
	adc  b                                           ; $6ecc: $88
	adc  b                                           ; $6ecd: $88
	adc  b                                           ; $6ece: $88
	adc  b                                           ; $6ecf: $88
	adc  b                                           ; $6ed0: $88
	adc  b                                           ; $6ed1: $88
	adc  b                                           ; $6ed2: $88
	adc  b                                           ; $6ed3: $88
	adc  b                                           ; $6ed4: $88
	adc  b                                           ; $6ed5: $88
	adc  b                                           ; $6ed6: $88
	adc  b                                           ; $6ed7: $88
	adc  b                                           ; $6ed8: $88
	adc  b                                           ; $6ed9: $88
	adc  b                                           ; $6eda: $88
	adc  b                                           ; $6edb: $88
	adc  b                                           ; $6edc: $88
	adc  b                                           ; $6edd: $88
	adc  b                                           ; $6ede: $88
	adc  b                                           ; $6edf: $88
	adc  b                                           ; $6ee0: $88
	adc  b                                           ; $6ee1: $88
	adc  b                                           ; $6ee2: $88
	adc  b                                           ; $6ee3: $88
	adc  b                                           ; $6ee4: $88
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	adc  b                                           ; $6ee7: $88
	adc  b                                           ; $6ee8: $88
	adc  b                                           ; $6ee9: $88
	adc  b                                           ; $6eea: $88
	adc  b                                           ; $6eeb: $88
	adc  b                                           ; $6eec: $88
	adc  b                                           ; $6eed: $88
	adc  b                                           ; $6eee: $88
	adc  b                                           ; $6eef: $88
	adc  b                                           ; $6ef0: $88
	adc  b                                           ; $6ef1: $88
	adc  b                                           ; $6ef2: $88
	adc  b                                           ; $6ef3: $88
	adc  b                                           ; $6ef4: $88
	adc  b                                           ; $6ef5: $88
	adc  b                                           ; $6ef6: $88
	adc  b                                           ; $6ef7: $88
	adc  b                                           ; $6ef8: $88
	adc  b                                           ; $6ef9: $88
	adc  b                                           ; $6efa: $88
	adc  b                                           ; $6efb: $88
	adc  b                                           ; $6efc: $88
	adc  b                                           ; $6efd: $88
	adc  b                                           ; $6efe: $88
	adc  b                                           ; $6eff: $88
	adc  b                                           ; $6f00: $88
	adc  b                                           ; $6f01: $88
	adc  b                                           ; $6f02: $88
	adc  b                                           ; $6f03: $88
	adc  b                                           ; $6f04: $88
	adc  b                                           ; $6f05: $88
	adc  b                                           ; $6f06: $88
	adc  b                                           ; $6f07: $88
	adc  b                                           ; $6f08: $88
	adc  b                                           ; $6f09: $88
	adc  b                                           ; $6f0a: $88
	adc  b                                           ; $6f0b: $88
	adc  b                                           ; $6f0c: $88
	adc  b                                           ; $6f0d: $88
	adc  b                                           ; $6f0e: $88
	adc  b                                           ; $6f0f: $88
	adc  b                                           ; $6f10: $88
	adc  b                                           ; $6f11: $88
	adc  b                                           ; $6f12: $88
	adc  b                                           ; $6f13: $88
	adc  b                                           ; $6f14: $88
	adc  b                                           ; $6f15: $88
	adc  b                                           ; $6f16: $88
	adc  b                                           ; $6f17: $88
	adc  b                                           ; $6f18: $88
	adc  b                                           ; $6f19: $88
	adc  b                                           ; $6f1a: $88
	adc  b                                           ; $6f1b: $88
	adc  b                                           ; $6f1c: $88
	adc  b                                           ; $6f1d: $88
	adc  b                                           ; $6f1e: $88
	adc  b                                           ; $6f1f: $88
	adc  b                                           ; $6f20: $88
	adc  b                                           ; $6f21: $88
	adc  b                                           ; $6f22: $88
	adc  b                                           ; $6f23: $88
	adc  b                                           ; $6f24: $88
	adc  b                                           ; $6f25: $88
	adc  b                                           ; $6f26: $88
	adc  b                                           ; $6f27: $88
	adc  b                                           ; $6f28: $88
	adc  b                                           ; $6f29: $88
	adc  b                                           ; $6f2a: $88
	adc  b                                           ; $6f2b: $88
	adc  b                                           ; $6f2c: $88
	adc  b                                           ; $6f2d: $88
	adc  b                                           ; $6f2e: $88
	adc  b                                           ; $6f2f: $88
	adc  b                                           ; $6f30: $88
	adc  b                                           ; $6f31: $88
	adc  b                                           ; $6f32: $88
	adc  b                                           ; $6f33: $88
	adc  b                                           ; $6f34: $88
	adc  b                                           ; $6f35: $88
	adc  b                                           ; $6f36: $88
	adc  b                                           ; $6f37: $88
	adc  b                                           ; $6f38: $88
	adc  b                                           ; $6f39: $88
	adc  b                                           ; $6f3a: $88
	adc  b                                           ; $6f3b: $88
	adc  b                                           ; $6f3c: $88
	adc  b                                           ; $6f3d: $88
	adc  b                                           ; $6f3e: $88
	adc  b                                           ; $6f3f: $88
	adc  b                                           ; $6f40: $88
	adc  b                                           ; $6f41: $88
	adc  b                                           ; $6f42: $88
	adc  b                                           ; $6f43: $88
	adc  b                                           ; $6f44: $88
	adc  b                                           ; $6f45: $88
	adc  b                                           ; $6f46: $88
	adc  b                                           ; $6f47: $88
	adc  b                                           ; $6f48: $88
	adc  b                                           ; $6f49: $88
	adc  b                                           ; $6f4a: $88
	adc  b                                           ; $6f4b: $88
	adc  b                                           ; $6f4c: $88
	adc  b                                           ; $6f4d: $88
	adc  b                                           ; $6f4e: $88
	adc  b                                           ; $6f4f: $88
	adc  b                                           ; $6f50: $88
	adc  b                                           ; $6f51: $88
	adc  b                                           ; $6f52: $88
	adc  b                                           ; $6f53: $88
	adc  b                                           ; $6f54: $88
	adc  b                                           ; $6f55: $88
	adc  b                                           ; $6f56: $88
	adc  b                                           ; $6f57: $88
	adc  b                                           ; $6f58: $88
	adc  b                                           ; $6f59: $88
	adc  b                                           ; $6f5a: $88
	adc  b                                           ; $6f5b: $88
	adc  b                                           ; $6f5c: $88
	adc  b                                           ; $6f5d: $88
	adc  b                                           ; $6f5e: $88
	adc  b                                           ; $6f5f: $88
	adc  b                                           ; $6f60: $88
	adc  b                                           ; $6f61: $88
	adc  b                                           ; $6f62: $88
	adc  b                                           ; $6f63: $88
	adc  b                                           ; $6f64: $88
	adc  b                                           ; $6f65: $88
	adc  b                                           ; $6f66: $88
	adc  b                                           ; $6f67: $88
	adc  b                                           ; $6f68: $88
	adc  b                                           ; $6f69: $88
	adc  b                                           ; $6f6a: $88
	adc  b                                           ; $6f6b: $88
	adc  b                                           ; $6f6c: $88
	adc  b                                           ; $6f6d: $88
	adc  b                                           ; $6f6e: $88
	adc  b                                           ; $6f6f: $88
	adc  b                                           ; $6f70: $88
	adc  b                                           ; $6f71: $88
	adc  b                                           ; $6f72: $88
	adc  b                                           ; $6f73: $88
	adc  b                                           ; $6f74: $88
	adc  b                                           ; $6f75: $88
	adc  b                                           ; $6f76: $88
	adc  b                                           ; $6f77: $88
	adc  b                                           ; $6f78: $88
	adc  b                                           ; $6f79: $88
	adc  b                                           ; $6f7a: $88
	adc  b                                           ; $6f7b: $88
	adc  b                                           ; $6f7c: $88
	adc  b                                           ; $6f7d: $88
	adc  b                                           ; $6f7e: $88
	adc  b                                           ; $6f7f: $88
	adc  b                                           ; $6f80: $88
	adc  b                                           ; $6f81: $88
	adc  b                                           ; $6f82: $88
	adc  b                                           ; $6f83: $88
	adc  b                                           ; $6f84: $88
	adc  b                                           ; $6f85: $88
	adc  b                                           ; $6f86: $88
	adc  b                                           ; $6f87: $88
	adc  b                                           ; $6f88: $88
	adc  b                                           ; $6f89: $88
	adc  b                                           ; $6f8a: $88
	adc  b                                           ; $6f8b: $88
	adc  b                                           ; $6f8c: $88
	adc  b                                           ; $6f8d: $88
	adc  b                                           ; $6f8e: $88
	adc  b                                           ; $6f8f: $88
	adc  b                                           ; $6f90: $88
	adc  b                                           ; $6f91: $88
	adc  b                                           ; $6f92: $88
	adc  b                                           ; $6f93: $88
	adc  b                                           ; $6f94: $88
	adc  b                                           ; $6f95: $88
	adc  b                                           ; $6f96: $88
	adc  b                                           ; $6f97: $88
	adc  b                                           ; $6f98: $88
	adc  b                                           ; $6f99: $88
	adc  b                                           ; $6f9a: $88
	adc  b                                           ; $6f9b: $88
	adc  b                                           ; $6f9c: $88
	adc  b                                           ; $6f9d: $88
	adc  b                                           ; $6f9e: $88
	adc  b                                           ; $6f9f: $88
	adc  b                                           ; $6fa0: $88
	adc  b                                           ; $6fa1: $88
	adc  b                                           ; $6fa2: $88
	adc  b                                           ; $6fa3: $88
	adc  b                                           ; $6fa4: $88
	adc  b                                           ; $6fa5: $88
	adc  b                                           ; $6fa6: $88
	adc  b                                           ; $6fa7: $88
	adc  b                                           ; $6fa8: $88
	adc  b                                           ; $6fa9: $88
	adc  b                                           ; $6faa: $88
	adc  b                                           ; $6fab: $88
	adc  b                                           ; $6fac: $88
	adc  b                                           ; $6fad: $88
	adc  b                                           ; $6fae: $88
	adc  b                                           ; $6faf: $88
	adc  b                                           ; $6fb0: $88
	adc  b                                           ; $6fb1: $88
	adc  b                                           ; $6fb2: $88
	adc  b                                           ; $6fb3: $88
	adc  b                                           ; $6fb4: $88
	adc  b                                           ; $6fb5: $88
	adc  b                                           ; $6fb6: $88
	adc  b                                           ; $6fb7: $88
	adc  b                                           ; $6fb8: $88
	adc  b                                           ; $6fb9: $88
	adc  b                                           ; $6fba: $88
	adc  b                                           ; $6fbb: $88
	adc  b                                           ; $6fbc: $88
	adc  b                                           ; $6fbd: $88
	adc  b                                           ; $6fbe: $88
	adc  b                                           ; $6fbf: $88
	adc  b                                           ; $6fc0: $88
	adc  b                                           ; $6fc1: $88
	adc  b                                           ; $6fc2: $88
	adc  b                                           ; $6fc3: $88
	adc  b                                           ; $6fc4: $88
	adc  b                                           ; $6fc5: $88
	adc  b                                           ; $6fc6: $88
	adc  b                                           ; $6fc7: $88
	adc  b                                           ; $6fc8: $88
	adc  b                                           ; $6fc9: $88
	adc  b                                           ; $6fca: $88
	adc  b                                           ; $6fcb: $88
	adc  b                                           ; $6fcc: $88
	adc  b                                           ; $6fcd: $88
	adc  b                                           ; $6fce: $88
	adc  b                                           ; $6fcf: $88
	adc  b                                           ; $6fd0: $88
	adc  b                                           ; $6fd1: $88
	adc  b                                           ; $6fd2: $88
	adc  b                                           ; $6fd3: $88
	adc  b                                           ; $6fd4: $88
	adc  b                                           ; $6fd5: $88
	adc  b                                           ; $6fd6: $88
	adc  b                                           ; $6fd7: $88
	adc  b                                           ; $6fd8: $88
	adc  b                                           ; $6fd9: $88
	adc  b                                           ; $6fda: $88
	adc  b                                           ; $6fdb: $88
	adc  b                                           ; $6fdc: $88
	adc  b                                           ; $6fdd: $88
	adc  b                                           ; $6fde: $88
	adc  b                                           ; $6fdf: $88
	adc  b                                           ; $6fe0: $88
	adc  b                                           ; $6fe1: $88
	adc  b                                           ; $6fe2: $88
	adc  b                                           ; $6fe3: $88
	adc  b                                           ; $6fe4: $88
	adc  b                                           ; $6fe5: $88
	adc  b                                           ; $6fe6: $88
	adc  b                                           ; $6fe7: $88
	adc  b                                           ; $6fe8: $88
	adc  b                                           ; $6fe9: $88
	adc  b                                           ; $6fea: $88
	adc  b                                           ; $6feb: $88
	adc  b                                           ; $6fec: $88
	adc  b                                           ; $6fed: $88
	adc  b                                           ; $6fee: $88
	adc  b                                           ; $6fef: $88
	adc  b                                           ; $6ff0: $88
	adc  b                                           ; $6ff1: $88
	adc  b                                           ; $6ff2: $88
	adc  b                                           ; $6ff3: $88
	adc  b                                           ; $6ff4: $88
	adc  b                                           ; $6ff5: $88
	adc  b                                           ; $6ff6: $88
	adc  b                                           ; $6ff7: $88
	adc  b                                           ; $6ff8: $88
	adc  b                                           ; $6ff9: $88
	adc  b                                           ; $6ffa: $88
	adc  b                                           ; $6ffb: $88
	adc  b                                           ; $6ffc: $88
	adc  b                                           ; $6ffd: $88
	adc  b                                           ; $6ffe: $88
	adc  b                                           ; $6fff: $88
	adc  b                                           ; $7000: $88
	adc  b                                           ; $7001: $88
	adc  b                                           ; $7002: $88
	adc  b                                           ; $7003: $88
	adc  b                                           ; $7004: $88
	adc  b                                           ; $7005: $88
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	adc  b                                           ; $7008: $88
	adc  b                                           ; $7009: $88
	adc  b                                           ; $700a: $88
	adc  b                                           ; $700b: $88
	adc  b                                           ; $700c: $88
	adc  b                                           ; $700d: $88
	adc  b                                           ; $700e: $88
	adc  b                                           ; $700f: $88
	adc  b                                           ; $7010: $88
	adc  b                                           ; $7011: $88
	adc  b                                           ; $7012: $88
	adc  b                                           ; $7013: $88
	adc  b                                           ; $7014: $88
	adc  b                                           ; $7015: $88
	adc  b                                           ; $7016: $88
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	adc  b                                           ; $701e: $88
	adc  b                                           ; $701f: $88
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
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
	adc  b                                           ; $7125: $88
	adc  b                                           ; $7126: $88
	adc  b                                           ; $7127: $88
	adc  b                                           ; $7128: $88
	adc  b                                           ; $7129: $88
	adc  b                                           ; $712a: $88
	adc  b                                           ; $712b: $88
	adc  b                                           ; $712c: $88
	adc  b                                           ; $712d: $88
	adc  b                                           ; $712e: $88
	adc  b                                           ; $712f: $88
	adc  b                                           ; $7130: $88
	adc  b                                           ; $7131: $88
	adc  b                                           ; $7132: $88
	adc  b                                           ; $7133: $88
	adc  b                                           ; $7134: $88
	adc  b                                           ; $7135: $88
	adc  b                                           ; $7136: $88
	adc  b                                           ; $7137: $88
	adc  b                                           ; $7138: $88
	adc  b                                           ; $7139: $88
	adc  b                                           ; $713a: $88
	adc  b                                           ; $713b: $88
	adc  b                                           ; $713c: $88
	adc  b                                           ; $713d: $88
	adc  b                                           ; $713e: $88
	adc  b                                           ; $713f: $88
	adc  b                                           ; $7140: $88
	adc  b                                           ; $7141: $88
	adc  b                                           ; $7142: $88
	adc  b                                           ; $7143: $88
	adc  b                                           ; $7144: $88
	adc  b                                           ; $7145: $88
	adc  b                                           ; $7146: $88
	adc  b                                           ; $7147: $88
	adc  b                                           ; $7148: $88
	adc  b                                           ; $7149: $88
	adc  b                                           ; $714a: $88
	adc  b                                           ; $714b: $88
	adc  b                                           ; $714c: $88
	adc  b                                           ; $714d: $88
	adc  b                                           ; $714e: $88
	adc  b                                           ; $714f: $88
	adc  b                                           ; $7150: $88
	adc  b                                           ; $7151: $88
	adc  b                                           ; $7152: $88
	adc  b                                           ; $7153: $88
	adc  b                                           ; $7154: $88
	adc  b                                           ; $7155: $88
	adc  b                                           ; $7156: $88
	adc  b                                           ; $7157: $88
	adc  b                                           ; $7158: $88
	adc  b                                           ; $7159: $88
	adc  b                                           ; $715a: $88
	adc  b                                           ; $715b: $88
	adc  b                                           ; $715c: $88
	adc  b                                           ; $715d: $88
	adc  b                                           ; $715e: $88
	adc  b                                           ; $715f: $88
	adc  b                                           ; $7160: $88
	adc  b                                           ; $7161: $88
	adc  b                                           ; $7162: $88
	adc  b                                           ; $7163: $88
	adc  b                                           ; $7164: $88
	adc  b                                           ; $7165: $88
	adc  b                                           ; $7166: $88
	adc  b                                           ; $7167: $88
	adc  b                                           ; $7168: $88
	adc  b                                           ; $7169: $88
	adc  b                                           ; $716a: $88
	adc  b                                           ; $716b: $88
	adc  b                                           ; $716c: $88
	adc  b                                           ; $716d: $88
	adc  b                                           ; $716e: $88
	adc  b                                           ; $716f: $88
	adc  b                                           ; $7170: $88
	adc  b                                           ; $7171: $88
	adc  b                                           ; $7172: $88
	adc  b                                           ; $7173: $88
	adc  b                                           ; $7174: $88
	adc  b                                           ; $7175: $88
	adc  b                                           ; $7176: $88
	adc  b                                           ; $7177: $88
	adc  b                                           ; $7178: $88
	adc  b                                           ; $7179: $88
	adc  b                                           ; $717a: $88
	adc  b                                           ; $717b: $88
	adc  b                                           ; $717c: $88
	adc  b                                           ; $717d: $88
	adc  b                                           ; $717e: $88
	adc  b                                           ; $717f: $88
	adc  b                                           ; $7180: $88
	adc  b                                           ; $7181: $88
	adc  b                                           ; $7182: $88
	adc  b                                           ; $7183: $88
	adc  b                                           ; $7184: $88
	adc  b                                           ; $7185: $88
	adc  b                                           ; $7186: $88
	adc  b                                           ; $7187: $88
	adc  b                                           ; $7188: $88
	adc  b                                           ; $7189: $88
	adc  b                                           ; $718a: $88
	adc  b                                           ; $718b: $88
	adc  b                                           ; $718c: $88
	adc  b                                           ; $718d: $88
	adc  b                                           ; $718e: $88
	adc  b                                           ; $718f: $88
	adc  b                                           ; $7190: $88
	adc  b                                           ; $7191: $88
	adc  b                                           ; $7192: $88
	adc  b                                           ; $7193: $88
	adc  b                                           ; $7194: $88
	adc  b                                           ; $7195: $88
	adc  b                                           ; $7196: $88
	adc  b                                           ; $7197: $88
	adc  b                                           ; $7198: $88
	adc  b                                           ; $7199: $88
	adc  b                                           ; $719a: $88
	adc  b                                           ; $719b: $88
	adc  b                                           ; $719c: $88
	adc  b                                           ; $719d: $88
	adc  b                                           ; $719e: $88
	adc  b                                           ; $719f: $88
	adc  b                                           ; $71a0: $88
	adc  b                                           ; $71a1: $88
	adc  b                                           ; $71a2: $88
	adc  b                                           ; $71a3: $88
	adc  b                                           ; $71a4: $88
	adc  b                                           ; $71a5: $88
	adc  b                                           ; $71a6: $88
	adc  b                                           ; $71a7: $88
	adc  b                                           ; $71a8: $88
	adc  b                                           ; $71a9: $88
	adc  b                                           ; $71aa: $88
	adc  b                                           ; $71ab: $88
	adc  b                                           ; $71ac: $88
	adc  b                                           ; $71ad: $88
	adc  b                                           ; $71ae: $88
	adc  b                                           ; $71af: $88
	adc  b                                           ; $71b0: $88
	adc  b                                           ; $71b1: $88
	adc  b                                           ; $71b2: $88
	adc  b                                           ; $71b3: $88
	adc  b                                           ; $71b4: $88
	adc  b                                           ; $71b5: $88
	adc  b                                           ; $71b6: $88
	adc  b                                           ; $71b7: $88
	adc  b                                           ; $71b8: $88
	adc  b                                           ; $71b9: $88
	adc  b                                           ; $71ba: $88
	adc  b                                           ; $71bb: $88
	adc  b                                           ; $71bc: $88
	adc  b                                           ; $71bd: $88
	adc  b                                           ; $71be: $88
	adc  b                                           ; $71bf: $88
	adc  b                                           ; $71c0: $88
	adc  b                                           ; $71c1: $88
	adc  b                                           ; $71c2: $88
	adc  b                                           ; $71c3: $88
	adc  b                                           ; $71c4: $88
	adc  b                                           ; $71c5: $88
	adc  b                                           ; $71c6: $88
	adc  b                                           ; $71c7: $88
	adc  b                                           ; $71c8: $88
	adc  b                                           ; $71c9: $88
	adc  b                                           ; $71ca: $88
	adc  b                                           ; $71cb: $88
	adc  b                                           ; $71cc: $88
	adc  b                                           ; $71cd: $88
	adc  b                                           ; $71ce: $88
	adc  b                                           ; $71cf: $88
	adc  b                                           ; $71d0: $88
	adc  b                                           ; $71d1: $88
	adc  b                                           ; $71d2: $88
	adc  b                                           ; $71d3: $88
	adc  b                                           ; $71d4: $88
	adc  b                                           ; $71d5: $88
	adc  b                                           ; $71d6: $88
	adc  b                                           ; $71d7: $88
	adc  b                                           ; $71d8: $88
	adc  b                                           ; $71d9: $88
	adc  b                                           ; $71da: $88
	adc  b                                           ; $71db: $88
	adc  b                                           ; $71dc: $88
	adc  b                                           ; $71dd: $88
	adc  b                                           ; $71de: $88
	adc  b                                           ; $71df: $88
	adc  b                                           ; $71e0: $88
	adc  b                                           ; $71e1: $88
	adc  b                                           ; $71e2: $88
	adc  b                                           ; $71e3: $88
	adc  b                                           ; $71e4: $88
	adc  b                                           ; $71e5: $88
	adc  b                                           ; $71e6: $88
	adc  b                                           ; $71e7: $88
	adc  b                                           ; $71e8: $88
	adc  b                                           ; $71e9: $88
	adc  b                                           ; $71ea: $88
	adc  b                                           ; $71eb: $88
	adc  b                                           ; $71ec: $88
	adc  b                                           ; $71ed: $88
	adc  b                                           ; $71ee: $88
	adc  b                                           ; $71ef: $88
	adc  b                                           ; $71f0: $88
	adc  b                                           ; $71f1: $88
	adc  b                                           ; $71f2: $88
	adc  b                                           ; $71f3: $88
	adc  b                                           ; $71f4: $88
	adc  b                                           ; $71f5: $88
	adc  b                                           ; $71f6: $88
	adc  b                                           ; $71f7: $88
	adc  b                                           ; $71f8: $88
	adc  b                                           ; $71f9: $88
	adc  b                                           ; $71fa: $88
	adc  b                                           ; $71fb: $88
	adc  b                                           ; $71fc: $88
	adc  b                                           ; $71fd: $88
	adc  b                                           ; $71fe: $88
	adc  b                                           ; $71ff: $88
	adc  b                                           ; $7200: $88
	adc  b                                           ; $7201: $88
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
	adc  b                                           ; $720e: $88
	adc  b                                           ; $720f: $88
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
	adc  b                                           ; $7247: $88
	adc  b                                           ; $7248: $88
	adc  b                                           ; $7249: $88
	adc  b                                           ; $724a: $88
	adc  b                                           ; $724b: $88
	adc  b                                           ; $724c: $88
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	adc  b                                           ; $724f: $88
	adc  b                                           ; $7250: $88
	adc  b                                           ; $7251: $88
	adc  b                                           ; $7252: $88
	adc  b                                           ; $7253: $88
	adc  b                                           ; $7254: $88
	adc  b                                           ; $7255: $88
	adc  b                                           ; $7256: $88
	adc  b                                           ; $7257: $88
	adc  b                                           ; $7258: $88
	adc  b                                           ; $7259: $88
	adc  b                                           ; $725a: $88
	adc  b                                           ; $725b: $88
	adc  b                                           ; $725c: $88
	adc  b                                           ; $725d: $88
	adc  b                                           ; $725e: $88
	adc  b                                           ; $725f: $88
	adc  b                                           ; $7260: $88
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	adc  b                                           ; $7263: $88
	adc  b                                           ; $7264: $88
	adc  b                                           ; $7265: $88
	adc  b                                           ; $7266: $88
	adc  b                                           ; $7267: $88
	adc  b                                           ; $7268: $88
	adc  b                                           ; $7269: $88
	adc  b                                           ; $726a: $88
	adc  b                                           ; $726b: $88
	adc  b                                           ; $726c: $88
	adc  b                                           ; $726d: $88
	adc  b                                           ; $726e: $88
	adc  b                                           ; $726f: $88
	adc  b                                           ; $7270: $88
	adc  b                                           ; $7271: $88
	adc  b                                           ; $7272: $88
	adc  b                                           ; $7273: $88
	adc  b                                           ; $7274: $88
	adc  b                                           ; $7275: $88
	adc  b                                           ; $7276: $88
	adc  b                                           ; $7277: $88
	adc  b                                           ; $7278: $88
	adc  b                                           ; $7279: $88
	adc  b                                           ; $727a: $88
	adc  b                                           ; $727b: $88
	adc  b                                           ; $727c: $88
	adc  b                                           ; $727d: $88
	adc  b                                           ; $727e: $88
	adc  b                                           ; $727f: $88
	adc  b                                           ; $7280: $88
	adc  b                                           ; $7281: $88
	adc  b                                           ; $7282: $88
	adc  b                                           ; $7283: $88
	adc  b                                           ; $7284: $88
	adc  b                                           ; $7285: $88
	adc  b                                           ; $7286: $88
	adc  b                                           ; $7287: $88
	adc  b                                           ; $7288: $88
	adc  b                                           ; $7289: $88
	adc  b                                           ; $728a: $88
	adc  b                                           ; $728b: $88
	adc  b                                           ; $728c: $88
	adc  b                                           ; $728d: $88
	adc  b                                           ; $728e: $88
	adc  b                                           ; $728f: $88
	adc  b                                           ; $7290: $88
	adc  b                                           ; $7291: $88
	adc  b                                           ; $7292: $88
	adc  b                                           ; $7293: $88
	adc  b                                           ; $7294: $88
	adc  b                                           ; $7295: $88
	adc  b                                           ; $7296: $88
	adc  b                                           ; $7297: $88
	adc  b                                           ; $7298: $88
	adc  b                                           ; $7299: $88
	adc  b                                           ; $729a: $88
	adc  b                                           ; $729b: $88
	adc  b                                           ; $729c: $88
	adc  b                                           ; $729d: $88
	adc  b                                           ; $729e: $88
	adc  b                                           ; $729f: $88
	adc  b                                           ; $72a0: $88
	adc  b                                           ; $72a1: $88
	adc  b                                           ; $72a2: $88
	adc  b                                           ; $72a3: $88
	adc  b                                           ; $72a4: $88
	adc  b                                           ; $72a5: $88
	adc  b                                           ; $72a6: $88
	adc  b                                           ; $72a7: $88
	adc  b                                           ; $72a8: $88
	adc  b                                           ; $72a9: $88
	adc  b                                           ; $72aa: $88
	adc  b                                           ; $72ab: $88
	adc  b                                           ; $72ac: $88
	adc  b                                           ; $72ad: $88
	adc  b                                           ; $72ae: $88
	adc  b                                           ; $72af: $88
	adc  b                                           ; $72b0: $88
	adc  b                                           ; $72b1: $88
	adc  b                                           ; $72b2: $88
	adc  b                                           ; $72b3: $88
	adc  b                                           ; $72b4: $88
	adc  b                                           ; $72b5: $88
	adc  b                                           ; $72b6: $88
	adc  b                                           ; $72b7: $88
	adc  b                                           ; $72b8: $88
	adc  b                                           ; $72b9: $88
	adc  b                                           ; $72ba: $88
	adc  b                                           ; $72bb: $88
	adc  b                                           ; $72bc: $88
	adc  b                                           ; $72bd: $88
	adc  b                                           ; $72be: $88
	adc  b                                           ; $72bf: $88
	adc  b                                           ; $72c0: $88
	adc  b                                           ; $72c1: $88
	adc  b                                           ; $72c2: $88
	adc  b                                           ; $72c3: $88
	adc  b                                           ; $72c4: $88
	adc  b                                           ; $72c5: $88
	adc  b                                           ; $72c6: $88
	adc  b                                           ; $72c7: $88
	adc  b                                           ; $72c8: $88
	adc  b                                           ; $72c9: $88
	adc  b                                           ; $72ca: $88
	adc  b                                           ; $72cb: $88
	adc  b                                           ; $72cc: $88
	adc  b                                           ; $72cd: $88
	adc  b                                           ; $72ce: $88
	adc  b                                           ; $72cf: $88
	adc  b                                           ; $72d0: $88
	adc  b                                           ; $72d1: $88
	adc  b                                           ; $72d2: $88
	adc  b                                           ; $72d3: $88
	adc  b                                           ; $72d4: $88
	adc  b                                           ; $72d5: $88
	adc  b                                           ; $72d6: $88
	adc  b                                           ; $72d7: $88
	adc  b                                           ; $72d8: $88
	adc  b                                           ; $72d9: $88
	adc  b                                           ; $72da: $88
	adc  b                                           ; $72db: $88
	adc  b                                           ; $72dc: $88
	adc  b                                           ; $72dd: $88
	adc  b                                           ; $72de: $88
	adc  b                                           ; $72df: $88
	adc  b                                           ; $72e0: $88
	adc  b                                           ; $72e1: $88
	adc  b                                           ; $72e2: $88
	adc  b                                           ; $72e3: $88
	adc  b                                           ; $72e4: $88
	adc  b                                           ; $72e5: $88
	adc  b                                           ; $72e6: $88
	adc  b                                           ; $72e7: $88
	adc  b                                           ; $72e8: $88
	adc  b                                           ; $72e9: $88
	adc  b                                           ; $72ea: $88
	adc  b                                           ; $72eb: $88
	adc  b                                           ; $72ec: $88
	adc  b                                           ; $72ed: $88
	adc  b                                           ; $72ee: $88
	adc  b                                           ; $72ef: $88
	adc  b                                           ; $72f0: $88
	adc  b                                           ; $72f1: $88
	adc  b                                           ; $72f2: $88
	adc  b                                           ; $72f3: $88
	adc  b                                           ; $72f4: $88
	adc  b                                           ; $72f5: $88
	adc  b                                           ; $72f6: $88
	adc  b                                           ; $72f7: $88
	adc  b                                           ; $72f8: $88
	adc  b                                           ; $72f9: $88
	adc  b                                           ; $72fa: $88
	adc  b                                           ; $72fb: $88
	adc  b                                           ; $72fc: $88
	adc  b                                           ; $72fd: $88
	adc  b                                           ; $72fe: $88
	adc  b                                           ; $72ff: $88
	adc  b                                           ; $7300: $88
	adc  b                                           ; $7301: $88
	adc  b                                           ; $7302: $88
	adc  b                                           ; $7303: $88
	adc  b                                           ; $7304: $88
	adc  b                                           ; $7305: $88
	adc  b                                           ; $7306: $88
	adc  b                                           ; $7307: $88
	adc  b                                           ; $7308: $88
	adc  b                                           ; $7309: $88
	adc  b                                           ; $730a: $88
	adc  b                                           ; $730b: $88
	adc  b                                           ; $730c: $88
	adc  b                                           ; $730d: $88
	adc  b                                           ; $730e: $88
	adc  b                                           ; $730f: $88
	adc  b                                           ; $7310: $88
	adc  b                                           ; $7311: $88
	adc  b                                           ; $7312: $88
	adc  b                                           ; $7313: $88
	adc  b                                           ; $7314: $88
	adc  b                                           ; $7315: $88
	adc  b                                           ; $7316: $88
	adc  b                                           ; $7317: $88
	adc  b                                           ; $7318: $88
	adc  b                                           ; $7319: $88
	adc  b                                           ; $731a: $88
	adc  b                                           ; $731b: $88
	adc  b                                           ; $731c: $88
	adc  b                                           ; $731d: $88
	adc  b                                           ; $731e: $88
	adc  b                                           ; $731f: $88
	adc  b                                           ; $7320: $88
	adc  b                                           ; $7321: $88
	adc  b                                           ; $7322: $88
	adc  b                                           ; $7323: $88
	adc  b                                           ; $7324: $88
	adc  b                                           ; $7325: $88
	adc  b                                           ; $7326: $88
	adc  b                                           ; $7327: $88
	adc  b                                           ; $7328: $88
	adc  b                                           ; $7329: $88
	adc  b                                           ; $732a: $88
	adc  b                                           ; $732b: $88
	adc  b                                           ; $732c: $88
	adc  b                                           ; $732d: $88
	adc  b                                           ; $732e: $88
	adc  b                                           ; $732f: $88
	adc  b                                           ; $7330: $88
	adc  b                                           ; $7331: $88
	adc  b                                           ; $7332: $88
	adc  b                                           ; $7333: $88
	adc  b                                           ; $7334: $88
	adc  b                                           ; $7335: $88
	adc  b                                           ; $7336: $88
	adc  b                                           ; $7337: $88
	adc  b                                           ; $7338: $88
	adc  b                                           ; $7339: $88
	adc  b                                           ; $733a: $88
	adc  b                                           ; $733b: $88
	adc  b                                           ; $733c: $88
	adc  b                                           ; $733d: $88
	adc  b                                           ; $733e: $88
	adc  b                                           ; $733f: $88
	adc  b                                           ; $7340: $88
	adc  b                                           ; $7341: $88
	adc  b                                           ; $7342: $88
	adc  b                                           ; $7343: $88
	adc  b                                           ; $7344: $88
	adc  b                                           ; $7345: $88
	adc  b                                           ; $7346: $88
	adc  b                                           ; $7347: $88
	adc  b                                           ; $7348: $88
	adc  b                                           ; $7349: $88
	adc  b                                           ; $734a: $88
	adc  b                                           ; $734b: $88
	adc  b                                           ; $734c: $88
	adc  b                                           ; $734d: $88
	adc  b                                           ; $734e: $88
	adc  b                                           ; $734f: $88
	adc  b                                           ; $7350: $88
	adc  b                                           ; $7351: $88
	adc  b                                           ; $7352: $88
	adc  b                                           ; $7353: $88
	adc  b                                           ; $7354: $88
	adc  b                                           ; $7355: $88
	adc  b                                           ; $7356: $88
	adc  b                                           ; $7357: $88
	adc  b                                           ; $7358: $88
	adc  b                                           ; $7359: $88
	adc  b                                           ; $735a: $88
	adc  b                                           ; $735b: $88
	adc  b                                           ; $735c: $88
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
	sbc  c                                           ; $745b: $99
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
	ld   [hl], a                                     ; $7466: $77
	ld   [hl], a                                     ; $7467: $77
	ld   [hl], a                                     ; $7468: $77
	ld   [hl], a                                     ; $7469: $77
	ld   [hl], a                                     ; $746a: $77
	ld   [hl], a                                     ; $746b: $77
	ld   [hl], a                                     ; $746c: $77
	ld   [hl], a                                     ; $746d: $77
	ld   [hl], a                                     ; $746e: $77
	ld   [hl], a                                     ; $746f: $77
	ld   [hl], a                                     ; $7470: $77
	ld   [hl], a                                     ; $7471: $77
	ld   [hl], a                                     ; $7472: $77
	ld   [hl], a                                     ; $7473: $77
	ld   [hl], a                                     ; $7474: $77
	ld   a, b                                        ; $7475: $78
	adc  c                                           ; $7476: $89
	adc  c                                           ; $7477: $89
	sbc  d                                           ; $7478: $9a
	sbc  d                                           ; $7479: $9a
	cp   d                                           ; $747a: $ba
	cp   e                                           ; $747b: $bb
	set  1, h                                        ; $747c: $cb $cc
	call z, $cbcb                                    ; $747e: $cc $cb $cb
	cp   e                                           ; $7481: $bb
	xor  d                                           ; $7482: $aa
	sbc  c                                           ; $7483: $99
	add  a                                           ; $7484: $87
	ld   h, l                                        ; $7485: $65
	ld   d, h                                        ; $7486: $54
	inc  sp                                          ; $7487: $33
	ld   hl, $1111                                   ; $7488: $21 $11 $11
	ld   de, $1111                                   ; $748b: $11 $11 $11
	ld   [de], a                                     ; $748e: $12
	inc  [hl]                                        ; $748f: $34
	ld   l, b                                        ; $7490: $68
	cp   h                                           ; $7491: $bc
	rst  $28                                         ; $7492: $ef
	rst  $38                                         ; $7493: $ff
	rst  $38                                         ; $7494: $ff
	rst  $38                                         ; $7495: $ff
	rst  $38                                         ; $7496: $ff
	rst  $38                                         ; $7497: $ff
	rst  $38                                         ; $7498: $ff
	rst  $38                                         ; $7499: $ff
	rst  $38                                         ; $749a: $ff
	xor  $cb                                         ; $749b: $ee $cb
	sub  a                                           ; $749d: $97
	ld   h, h                                        ; $749e: $64
	ld   sp, $1111                                   ; $749f: $31 $11 $11
	ld   de, $1111                                   ; $74a2: $11 $11 $11
	ld   de, $1111                                   ; $74a5: $11 $11 $11
	ld   de, $5812                                   ; $74a8: $11 $12 $58
	xor  l                                           ; $74ab: $ad
	rst  $38                                         ; $74ac: $ff
	rst  $38                                         ; $74ad: $ff
	rst  $38                                         ; $74ae: $ff
	rst  $38                                         ; $74af: $ff
	rst  $38                                         ; $74b0: $ff
	rst  $38                                         ; $74b1: $ff
	rst  $38                                         ; $74b2: $ff
	rst  $38                                         ; $74b3: $ff
	rst  $38                                         ; $74b4: $ff
	rst  $38                                         ; $74b5: $ff
	jp   z, Jump_0aa_4286                            ; $74b6: $ca $86 $42

	ld   bc, $1111                                   ; $74b9: $01 $11 $11
	ld   de, $1111                                   ; $74bc: $11 $11 $11
	ld   de, $1111                                   ; $74bf: $11 $11 $11
	ld   de, $3711                                   ; $74c2: $11 $11 $37
	xor  [hl]                                        ; $74c5: $ae
	rst  $38                                         ; $74c6: $ff
	rst  $38                                         ; $74c7: $ff
	rst  $38                                         ; $74c8: $ff
	rst  $38                                         ; $74c9: $ff
	rst  $38                                         ; $74ca: $ff
	rst  $38                                         ; $74cb: $ff
	rst  $38                                         ; $74cc: $ff
	rst  $38                                         ; $74cd: $ff
	rst  $38                                         ; $74ce: $ff
	cp   $ba                                         ; $74cf: $fe $ba
	add  [hl]                                        ; $74d1: $86
	ld   b, d                                        ; $74d2: $42
	ld   de, $1111                                   ; $74d3: $11 $11 $11
	ld   de, $1111                                   ; $74d6: $11 $11 $11
	ld   de, $1111                                   ; $74d9: $11 $11 $11
	ld   h, $9c                                      ; $74dc: $26 $9c
	rst  $38                                         ; $74de: $ff
	rst  $38                                         ; $74df: $ff
	rst  $38                                         ; $74e0: $ff
	rst  $38                                         ; $74e1: $ff
	rst  $38                                         ; $74e2: $ff
	rst  $38                                         ; $74e3: $ff
	rst  $38                                         ; $74e4: $ff
	rst  $38                                         ; $74e5: $ff
	rst  $38                                         ; $74e6: $ff
	rst  $38                                         ; $74e7: $ff
	db   $ed                                         ; $74e8: $ed
	db   $db                                         ; $74e9: $db
	ld   [hl], h                                     ; $74ea: $74
	ld   hl, $1111                                   ; $74eb: $21 $11 $11
	ld   de, $1111                                   ; $74ee: $11 $11 $11
	ld   de, $1111                                   ; $74f1: $11 $11 $11
	ld   [de], a                                     ; $74f4: $12
	rst  JumpTable                                         ; $74f5: $df
	rst  $38                                         ; $74f6: $ff
	rst  $38                                         ; $74f7: $ff
	rst  $38                                         ; $74f8: $ff
	rst  $38                                         ; $74f9: $ff
	rst  $38                                         ; $74fa: $ff
	rst  $38                                         ; $74fb: $ff
	rst  $38                                         ; $74fc: $ff
	rst  $38                                         ; $74fd: $ff
	rst  $38                                         ; $74fe: $ff
	db   $fd                                         ; $74ff: $fd
	jp   z, $85bb                                    ; $7500: $ca $bb $85

	ld   de, $1111                                   ; $7503: $11 $11 $11
	ld   de, $1111                                   ; $7506: $11 $11 $11
	ld   de, $1111                                   ; $7509: $11 $11 $11
	ld   de, $ff4e                                   ; $750c: $11 $4e $ff
	rst  $38                                         ; $750f: $ff
	rst  $38                                         ; $7510: $ff
	cp   $cf                                         ; $7511: $fe $cf
	rst  $38                                         ; $7513: $ff
	rst  $38                                         ; $7514: $ff
	rst  $38                                         ; $7515: $ff
	rst  $38                                         ; $7516: $ff
	rst  $38                                         ; $7517: $ff
	jp   hl                                          ; $7518: $e9


	sbc  c                                           ; $7519: $99
	halt                                             ; $751a: $76
	ld   hl, $1111                                   ; $751b: $21 $11 $11
	ld   de, $1111                                   ; $751e: $11 $11 $11
	ld   de, $1111                                   ; $7521: $11 $11 $11
	ld   de, $ef1a                                   ; $7524: $11 $1a $ef
	rst  $38                                         ; $7527: $ff
	rst  $38                                         ; $7528: $ff
	adc  [hl]                                        ; $7529: $8e
	adc  [hl]                                        ; $752a: $8e
	rst  $38                                         ; $752b: $ff
	rst  $38                                         ; $752c: $ff
	rst  $38                                         ; $752d: $ff
	rst  $38                                         ; $752e: $ff
	cp   $eb                                         ; $752f: $fe $eb
	adc  h                                           ; $7531: $8c
	sbc  d                                           ; $7532: $9a
	sub  c                                           ; $7533: $91
	ld   de, $1112                                   ; $7534: $11 $12 $11
	ld   de, $1111                                   ; $7537: $11 $11 $11
	ld   de, $1211                                   ; $753a: $11 $11 $12
	ld   de, $ff5a                                   ; $753d: $11 $5a $ff
	rst  $38                                         ; $7540: $ff
	xor  d                                           ; $7541: $aa
	db   $fd                                         ; $7542: $fd
	rst  $38                                         ; $7543: $ff
	rst  $38                                         ; $7544: $ff
	rst  $38                                         ; $7545: $ff
	rst  $38                                         ; $7546: $ff
	rst  $38                                         ; $7547: $ff
	xor  a                                           ; $7548: $af
	db   $fd                                         ; $7549: $fd
	db   $fc                                         ; $754a: $fc
	halt                                             ; $754b: $76
	ld   b, [hl]                                     ; $754c: $46
	ld   d, e                                        ; $754d: $53
	ld   b, c                                        ; $754e: $41
	ld   de, $1111                                   ; $754f: $11 $11 $11
	ld   de, $1711                                   ; $7552: $11 $11 $17
	ld   de, $1211                                   ; $7555: $11 $11 $12
	adc  a                                           ; $7558: $8f
	rst  $28                                         ; $7559: $ef
	rst  $38                                         ; $755a: $ff
	rst  $38                                         ; $755b: $ff
	rst  $38                                         ; $755c: $ff
	rst  $38                                         ; $755d: $ff
	rst  $38                                         ; $755e: $ff
	rst  $38                                         ; $755f: $ff
	rst  $38                                         ; $7560: $ff
	cp   $ff                                         ; $7561: $fe $ff
	rst  $38                                         ; $7563: $ff
	or   $71                                         ; $7564: $f6 $71
	inc  [hl]                                        ; $7566: $34
	ld   de, $1111                                   ; $7567: $11 $11 $11
	ld   de, $1111                                   ; $756a: $11 $11 $11
	ld   hl, $1152                                   ; $756d: $21 $52 $11
	ld   de, $ff36                                   ; $7570: $11 $36 $ff
	rst  $38                                         ; $7573: $ff
	rst  $38                                         ; $7574: $ff
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	rst  $38                                         ; $7577: $ff
	rst  $38                                         ; $7578: $ff
	rst  $38                                         ; $7579: $ff
	rst  $38                                         ; $757a: $ff
	db   $fc                                         ; $757b: $fc
	rst  $38                                         ; $757c: $ff
	rst  $38                                         ; $757d: $ff
	ld   b, c                                        ; $757e: $41
	ld   de, $1144                                   ; $757f: $11 $44 $11
	ld   de, $1111                                   ; $7582: $11 $11 $11
	ld   de, $1661                                   ; $7585: $11 $61 $16
	inc  de                                          ; $7588: $13
	ld   de, $1c11                                   ; $7589: $11 $11 $1c
	sbc  a                                           ; $758c: $9f
	rst  $38                                         ; $758d: $ff
	rst  $38                                         ; $758e: $ff
	rst  $38                                         ; $758f: $ff
	ld   a, a                                        ; $7590: $7f
	rst  $38                                         ; $7591: $ff
	rst  $38                                         ; $7592: $ff
	rst  $38                                         ; $7593: $ff
	rst  $38                                         ; $7594: $ff
	db   $fd                                         ; $7595: $fd
	jp   z, $da8e                                    ; $7596: $ca $8e $da

	ld   b, c                                        ; $7599: $41
	inc  d                                           ; $759a: $14
	dec  d                                           ; $759b: $15
	ld   de, $1111                                   ; $759c: $11 $11 $11
	ld   de, $1111                                   ; $759f: $11 $11 $11
	rla                                              ; $75a2: $17
	ld   d, c                                        ; $75a3: $51
	ld   de, $ff1d                                   ; $75a4: $11 $1d $ff
	rst  $38                                         ; $75a7: $ff
	rst  $38                                         ; $75a8: $ff
	rst  $38                                         ; $75a9: $ff
	ei                                               ; $75aa: $fb
	rst  $38                                         ; $75ab: $ff
	rst  $38                                         ; $75ac: $ff
	rst  $38                                         ; $75ad: $ff
	ld   a, [$fffe]                                  ; $75ae: $fa $fe $ff
	ld   [hl], a                                     ; $75b1: $77
	inc  hl                                          ; $75b2: $23
	ld   [hl], l                                     ; $75b3: $75
	ld   sp, $1142                                   ; $75b4: $31 $42 $11
	ld   de, $1111                                   ; $75b7: $11 $11 $11
	ld   de, $1631                                   ; $75ba: $11 $31 $16
	ld   de, $1111                                   ; $75bd: $11 $11 $11
	rst  $38                                         ; $75c0: $ff
	rst  $38                                         ; $75c1: $ff
	db   $fc                                         ; $75c2: $fc
	adc  $cc                                         ; $75c3: $ce $cc
	rst  $38                                         ; $75c5: $ff
	rst  $38                                         ; $75c6: $ff
	rst  $38                                         ; $75c7: $ff
	rst  $38                                         ; $75c8: $ff
	db   $fc                                         ; $75c9: $fc
	db   $db                                         ; $75ca: $db
	xor  h                                           ; $75cb: $ac
	jp   z, $1462                                    ; $75cc: $ca $62 $14

	sub  [hl]                                        ; $75cf: $96
	ld   de, $1111                                   ; $75d0: $11 $11 $11
	ld   de, $1311                                   ; $75d3: $11 $11 $13
	ld   de, $1111                                   ; $75d6: $11 $11 $11
	ld   de, $ff4d                                   ; $75d9: $11 $4d $ff
	rst  $38                                         ; $75dc: $ff
	db   $fc                                         ; $75dd: $fc
	sbc  l                                           ; $75de: $9d
	rst  $38                                         ; $75df: $ff
	rst  $38                                         ; $75e0: $ff
	rst  $38                                         ; $75e1: $ff
	rst  $38                                         ; $75e2: $ff
	db   $fd                                         ; $75e3: $fd
	cp   [hl]                                        ; $75e4: $be
	db   $eb                                         ; $75e5: $eb
	bit  0, [hl]                                     ; $75e6: $cb $46
	ld   h, d                                        ; $75e8: $62
	ld   b, l                                        ; $75e9: $45
	ld   sp, $1111                                   ; $75ea: $31 $11 $11
	ld   de, $1111                                   ; $75ed: $11 $11 $11
	ld   [de], a                                     ; $75f0: $12
	ld   sp, $1111                                   ; $75f1: $31 $11 $11
	ld   e, b                                        ; $75f4: $58
	cp   a                                           ; $75f5: $bf
	rst  $38                                         ; $75f6: $ff
	rst  $38                                         ; $75f7: $ff
	rst  $30                                         ; $75f8: $f7
	cp   e                                           ; $75f9: $bb
	rst  $28                                         ; $75fa: $ef
	rst  $38                                         ; $75fb: $ff
	rst  $38                                         ; $75fc: $ff
	rst  $38                                         ; $75fd: $ff
	db   $fd                                         ; $75fe: $fd
	xor  d                                           ; $75ff: $aa
	cp   [hl]                                        ; $7600: $be
	or   $3a                                         ; $7601: $f6 $3a
	ld   b, e                                        ; $7603: $43
	ld   d, e                                        ; $7604: $53
	ld   [hl], d                                     ; $7605: $72
	ld   de, $1111                                   ; $7606: $11 $11 $11
	ld   de, $1111                                   ; $7609: $11 $11 $11
	ld   sp, $1111                                   ; $760c: $31 $11 $11
	ld   e, e                                        ; $760f: $5b
	rst  $38                                         ; $7610: $ff
	di                                               ; $7611: $f3
	rst  $38                                         ; $7612: $ff
	rst  $38                                         ; $7613: $ff
	jr   @+$01                                       ; $7614: $18 $ff

	rst  $38                                         ; $7616: $ff
	rst  $38                                         ; $7617: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7618: $cf
	ld   a, [$df97]                                  ; $7619: $fa $97 $df
	ld   l, d                                        ; $761c: $6a
	or   d                                           ; $761d: $b2
	ld   b, [hl]                                     ; $761e: $46
	ld   a, [hl+]                                    ; $761f: $2a
	ld   d, d                                        ; $7620: $52
	ld   hl, $1111                                   ; $7621: $21 $11 $11
	ld   de, $5111                                   ; $7624: $11 $11 $51
	dec  d                                           ; $7627: $15
	ld   l, h                                        ; $7628: $6c
	ld   de, $ff5b                                   ; $7629: $11 $5b $ff
	adc  e                                           ; $762c: $8b
	rst  $38                                         ; $762d: $ff
	rst  $38                                         ; $762e: $ff
	inc  a                                           ; $762f: $3c
	rst  $38                                         ; $7630: $ff
	db   $fd                                         ; $7631: $fd
	rst  $38                                         ; $7632: $ff
	rst  $28                                         ; $7633: $ef
	ei                                               ; $7634: $fb
	sub  [hl]                                        ; $7635: $96
	db   $fc                                         ; $7636: $fc
	ld   l, c                                        ; $7637: $69
	ld   a, a                                        ; $7638: $7f
	ld   h, c                                        ; $7639: $61
	ld   d, c                                        ; $763a: $51
	halt                                             ; $763b: $76
	ld   de, $2111                                   ; $763c: $11 $11 $21
	ld   de, $1112                                   ; $763f: $11 $12 $11
	ld   de, $1a61                                   ; $7642: $11 $61 $1a
	reti                                             ; $7645: $d9


	db   $fc                                         ; $7646: $fc
	rst  $38                                         ; $7647: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7648: $cf
	cp   $fa                                         ; $7649: $fe $fa
	xor  $ff                                         ; $764b: $ee $ff
	rst  $38                                         ; $764d: $ff
	ld   a, [$ffff]                                  ; $764e: $fa $ff $ff
	xor  d                                           ; $7651: $aa
	cp   b                                           ; $7652: $b8
	and  h                                           ; $7653: $a4
	scf                                              ; $7654: $37
	ld   c, c                                        ; $7655: $49
	push bc                                          ; $7656: $c5
	ld   b, c                                        ; $7657: $41
	ld   de, $1111                                   ; $7658: $11 $11 $11
	ld   de, $1b11                                   ; $765b: $11 $11 $1b
	inc  d                                           ; $765e: $14
	and  e                                           ; $765f: $a3
	db   $dd                                         ; $7660: $dd
	rst  $38                                         ; $7661: $ff
	xor  a                                           ; $7662: $af
	ld   sp, hl                                      ; $7663: $f9
	db   $fc                                         ; $7664: $fc
	rst  $28                                         ; $7665: $ef
	adc  a                                           ; $7666: $8f
	rst  JumpTable                                         ; $7667: $df
	ld   sp, hl                                      ; $7668: $f9
	db   $fc                                         ; $7669: $fc
	cp   $bf                                         ; $766a: $fe $bf
	jp   z, Jump_0aa_6afd                            ; $766c: $ca $fd $6a

	xor  e                                           ; $766f: $ab
	or   h                                           ; $7670: $b4
	scf                                              ; $7671: $37
	or   l                                           ; $7672: $b5
	ld   de, $1111                                   ; $7673: $11 $11 $11
	ld   de, $1111                                   ; $7676: $11 $11 $11
	ld   de, $f56f                                   ; $7679: $11 $6f $f5
	ld   h, [hl]                                     ; $767c: $66
	rst  $38                                         ; $767d: $ff
	sbc  a                                           ; $767e: $9f
	rst  JumpTable                                         ; $767f: $df
	cp   $eb                                         ; $7680: $fe $eb
	rst  $38                                         ; $7682: $ff
	db   $fc                                         ; $7683: $fc
	db   $fc                                         ; $7684: $fc
	rst  $38                                         ; $7685: $ff
	sbc  [hl]                                        ; $7686: $9e
	xor  a                                           ; $7687: $af
	rst  $28                                         ; $7688: $ef
	ld   sp, hl                                      ; $7689: $f9
	cp   h                                           ; $768a: $bc
	cp   c                                           ; $768b: $b9
	ld   d, c                                        ; $768c: $51
	ld   [de], a                                     ; $768d: $12
	ld   h, h                                        ; $768e: $64
	ld   de, $1101                                   ; $768f: $11 $01 $11
	ld   de, $1111                                   ; $7692: $11 $11 $11

Call_0aa_7695:
	ld   d, $58                                      ; $7695: $16 $58
	pop  bc                                          ; $7697: $c1
	sbc  a                                           ; $7698: $9f
	rst  $38                                         ; $7699: $ff
	ld   a, b                                        ; $769a: $78
	rst  $38                                         ; $769b: $ff
	or   $3c                                         ; $769c: $f6 $3c
	rst  $38                                         ; $769e: $ff
	ei                                               ; $769f: $fb
	adc  a                                           ; $76a0: $8f
	rst  $38                                         ; $76a1: $ff
	cp   e                                           ; $76a2: $bb
	rst  $28                                         ; $76a3: $ef
	db   $fd                                         ; $76a4: $fd
	ld   l, e                                        ; $76a5: $6b
	db   $eb                                         ; $76a6: $eb
	ld   h, c                                        ; $76a7: $61
	ld   l, b                                        ; $76a8: $68
	ld   [hl], l                                     ; $76a9: $75
	ld   de, $3113                                   ; $76aa: $11 $13 $31
	ld   de, $1111                                   ; $76ad: $11 $11 $11
	ld   de, $4215                                   ; $76b0: $11 $15 $42
	ld   a, c                                        ; $76b3: $79
	ld   l, d                                        ; $76b4: $6a
	cp   b                                           ; $76b5: $b8
	xor  e                                           ; $76b6: $ab
	jp   z, $9cad                                    ; $76b7: $ca $ad $9c

Call_0aa_76ba:
	cp   d                                           ; $76ba: $ba
	xor  b                                           ; $76bb: $a8
	cp   d                                           ; $76bc: $ba
	adc  b                                           ; $76bd: $88
	ld   [hl], a                                     ; $76be: $77
	ld   [hl], l                                     ; $76bf: $75
	ld   b, l                                        ; $76c0: $45
	inc  [hl]                                        ; $76c1: $34
	ld   b, l                                        ; $76c2: $45
	xor  c                                           ; $76c3: $a9
	cp   [hl]                                        ; $76c4: $be
	db   $dd                                         ; $76c5: $dd
	rst  $38                                         ; $76c6: $ff
	rst  $38                                         ; $76c7: $ff
	ld   [$a8dc], a                                  ; $76c8: $ea $dc $a8
	adc  b                                           ; $76cb: $88
	ld   h, a                                        ; $76cc: $67
	halt                                             ; $76cd: $76
	ld   h, a                                        ; $76ce: $67
	ld   d, [hl]                                     ; $76cf: $56
	ld   d, [hl]                                     ; $76d0: $56
	sub  a                                           ; $76d1: $97
	ld   h, a                                        ; $76d2: $67
	sbc  e                                           ; $76d3: $9b
	sbc  c                                           ; $76d4: $99
	xor  h                                           ; $76d5: $ac
	res  5, h                                        ; $76d6: $cb $ac
	cp   c                                           ; $76d8: $b9
	call z, $ac99                                    ; $76d9: $cc $99 $ac
	cp   c                                           ; $76dc: $b9
	xor  e                                           ; $76dd: $ab
	cp   c                                           ; $76de: $b9
	sbc  d                                           ; $76df: $9a
	sbc  b                                           ; $76e0: $98
	sbc  d                                           ; $76e1: $9a
	sub  a                                           ; $76e2: $97
	sbc  d                                           ; $76e3: $9a
	ld   [hl], a                                     ; $76e4: $77
	adc  c                                           ; $76e5: $89
	ld   [hl], a                                     ; $76e6: $77
	ld   a, c                                        ; $76e7: $79
	ld   [hl], a                                     ; $76e8: $77
	ld   a, b                                        ; $76e9: $78
	add  a                                           ; $76ea: $87
	ld   a, c                                        ; $76eb: $79
	adc  b                                           ; $76ec: $88
	adc  c                                           ; $76ed: $89
	sbc  c                                           ; $76ee: $99
	adc  c                                           ; $76ef: $89
	xor  c                                           ; $76f0: $a9
	sbc  d                                           ; $76f1: $9a
	xor  d                                           ; $76f2: $aa
	xor  e                                           ; $76f3: $ab
	xor  d                                           ; $76f4: $aa
	sbc  c                                           ; $76f5: $99
	sbc  c                                           ; $76f6: $99
	sbc  c                                           ; $76f7: $99
	sbc  b                                           ; $76f8: $98
	adc  b                                           ; $76f9: $88
	add  a                                           ; $76fa: $87
	ld   [hl], a                                     ; $76fb: $77
	ld   [hl], a                                     ; $76fc: $77
	ld   h, [hl]                                     ; $76fd: $66
	ld   h, [hl]                                     ; $76fe: $66
	ld   h, [hl]                                     ; $76ff: $66
	ld   h, [hl]                                     ; $7700: $66
	ld   [hl], a                                     ; $7701: $77
	ld   [hl], a                                     ; $7702: $77
	ld   a, b                                        ; $7703: $78
	ld   [hl], a                                     ; $7704: $77
	ld   a, b                                        ; $7705: $78
	adc  b                                           ; $7706: $88
	adc  b                                           ; $7707: $88
	adc  b                                           ; $7708: $88
	adc  b                                           ; $7709: $88
	adc  b                                           ; $770a: $88
	sbc  c                                           ; $770b: $99
	sbc  c                                           ; $770c: $99
	adc  b                                           ; $770d: $88
	adc  b                                           ; $770e: $88
	sbc  b                                           ; $770f: $98
	adc  b                                           ; $7710: $88
	adc  c                                           ; $7711: $89
	adc  b                                           ; $7712: $88
	add  a                                           ; $7713: $87
	adc  b                                           ; $7714: $88
	ld   [hl], a                                     ; $7715: $77
	ld   a, b                                        ; $7716: $78
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
	add  a                                           ; $7721: $87
	adc  b                                           ; $7722: $88
	ld   [hl], a                                     ; $7723: $77
	ld   [hl], a                                     ; $7724: $77
	ld   [hl], a                                     ; $7725: $77
	ld   [hl], a                                     ; $7726: $77
	ld   [hl], a                                     ; $7727: $77
	ld   [hl], a                                     ; $7728: $77
	ld   [hl], a                                     ; $7729: $77
	ld   [hl], a                                     ; $772a: $77
	ld   [hl], a                                     ; $772b: $77
	ld   [hl], a                                     ; $772c: $77
	ld   a, b                                        ; $772d: $78
	adc  b                                           ; $772e: $88
	adc  b                                           ; $772f: $88
	sbc  c                                           ; $7730: $99
	adc  c                                           ; $7731: $89
	sbc  b                                           ; $7732: $98
	adc  b                                           ; $7733: $88
	adc  b                                           ; $7734: $88
	sbc  b                                           ; $7735: $98
	adc  b                                           ; $7736: $88
	adc  b                                           ; $7737: $88
	add  a                                           ; $7738: $87
	ld   [hl], a                                     ; $7739: $77
	ld   [hl], a                                     ; $773a: $77
	ld   [hl], a                                     ; $773b: $77
	ld   [hl], a                                     ; $773c: $77
	ld   [hl], a                                     ; $773d: $77
	ld   [hl], a                                     ; $773e: $77
	ld   [hl], a                                     ; $773f: $77
	ld   [hl], a                                     ; $7740: $77
	ld   [hl], a                                     ; $7741: $77
	ld   a, b                                        ; $7742: $78
	adc  b                                           ; $7743: $88
	adc  b                                           ; $7744: $88
	sbc  b                                           ; $7745: $98
	sbc  c                                           ; $7746: $99
	adc  b                                           ; $7747: $88
	sbc  b                                           ; $7748: $98
	adc  b                                           ; $7749: $88
	adc  c                                           ; $774a: $89
	adc  b                                           ; $774b: $88
	sbc  c                                           ; $774c: $99
	adc  b                                           ; $774d: $88
	adc  b                                           ; $774e: $88
	ld   [hl], a                                     ; $774f: $77
	ld   [hl], a                                     ; $7750: $77
	ld   [hl], a                                     ; $7751: $77
	ld   [hl], a                                     ; $7752: $77
	ld   [hl], a                                     ; $7753: $77
	ld   [hl], a                                     ; $7754: $77
	ld   [hl], a                                     ; $7755: $77
	ld   h, [hl]                                     ; $7756: $66
	ld   h, a                                        ; $7757: $67
	ld   [hl], a                                     ; $7758: $77
	ld   [hl], a                                     ; $7759: $77
	adc  b                                           ; $775a: $88
	adc  b                                           ; $775b: $88
	adc  b                                           ; $775c: $88
	adc  b                                           ; $775d: $88
	adc  b                                           ; $775e: $88
	adc  b                                           ; $775f: $88
	adc  b                                           ; $7760: $88
	sbc  b                                           ; $7761: $98
	adc  b                                           ; $7762: $88
	adc  b                                           ; $7763: $88
	adc  b                                           ; $7764: $88
	add  a                                           ; $7765: $87
	ld   [hl], a                                     ; $7766: $77
	ld   [hl], a                                     ; $7767: $77
	ld   [hl], a                                     ; $7768: $77
	ld   [hl], a                                     ; $7769: $77
	ld   [hl], a                                     ; $776a: $77
	ld   [hl], a                                     ; $776b: $77
	ld   [hl], a                                     ; $776c: $77
	ld   [hl], a                                     ; $776d: $77
	ld   [hl], a                                     ; $776e: $77
	ld   [hl], a                                     ; $776f: $77
	ld   [hl], a                                     ; $7770: $77
	ld   [hl], a                                     ; $7771: $77
	ld   [hl], a                                     ; $7772: $77
	ld   [hl], a                                     ; $7773: $77
	adc  b                                           ; $7774: $88
	ld   [hl], a                                     ; $7775: $77
	adc  b                                           ; $7776: $88
	add  a                                           ; $7777: $87
	adc  b                                           ; $7778: $88
	adc  b                                           ; $7779: $88
	adc  b                                           ; $777a: $88
	adc  b                                           ; $777b: $88
	adc  b                                           ; $777c: $88
	adc  b                                           ; $777d: $88
	adc  b                                           ; $777e: $88
	adc  b                                           ; $777f: $88
	ld   a, b                                        ; $7780: $78
	adc  b                                           ; $7781: $88
	adc  b                                           ; $7782: $88
	adc  b                                           ; $7783: $88
	adc  b                                           ; $7784: $88
	adc  b                                           ; $7785: $88
	ld   [hl], a                                     ; $7786: $77
	adc  b                                           ; $7787: $88
	ld   [hl], a                                     ; $7788: $77
	adc  b                                           ; $7789: $88
	adc  b                                           ; $778a: $88
	add  a                                           ; $778b: $87
	adc  b                                           ; $778c: $88
	adc  b                                           ; $778d: $88
	sbc  b                                           ; $778e: $98
	ld   a, b                                        ; $778f: $78
	ld   [hl], a                                     ; $7790: $77
	add  a                                           ; $7791: $87
	adc  b                                           ; $7792: $88
	ld   a, b                                        ; $7793: $78
	adc  c                                           ; $7794: $89
	adc  b                                           ; $7795: $88
	sbc  b                                           ; $7796: $98
	adc  b                                           ; $7797: $88

Call_0aa_7798:
	adc  b                                           ; $7798: $88
	adc  b                                           ; $7799: $88
	adc  b                                           ; $779a: $88
	add  a                                           ; $779b: $87
	add  a                                           ; $779c: $87
	ld   [hl], a                                     ; $779d: $77
	ld   [hl], a                                     ; $779e: $77
	ld   [hl], a                                     ; $779f: $77
	add  a                                           ; $77a0: $87
	adc  b                                           ; $77a1: $88
	adc  b                                           ; $77a2: $88
	adc  b                                           ; $77a3: $88
	adc  b                                           ; $77a4: $88
	sbc  b                                           ; $77a5: $98
	adc  b                                           ; $77a6: $88
	sbc  b                                           ; $77a7: $98
	adc  c                                           ; $77a8: $89
	adc  c                                           ; $77a9: $89
	adc  b                                           ; $77aa: $88
	adc  b                                           ; $77ab: $88
	add  a                                           ; $77ac: $87
	adc  b                                           ; $77ad: $88
	ld   a, b                                        ; $77ae: $78
	adc  b                                           ; $77af: $88
	adc  b                                           ; $77b0: $88
	adc  b                                           ; $77b1: $88
	adc  c                                           ; $77b2: $89
	adc  c                                           ; $77b3: $89
	sbc  c                                           ; $77b4: $99
	sbc  c                                           ; $77b5: $99
	add  a                                           ; $77b6: $87
	sbc  c                                           ; $77b7: $99
	sbc  c                                           ; $77b8: $99

Call_0aa_77b9:
	adc  e                                           ; $77b9: $8b
	sub  [hl]                                        ; $77ba: $96
	ld   a, b                                        ; $77bb: $78
	sbc  b                                           ; $77bc: $98
	adc  b                                           ; $77bd: $88
	ld   a, b                                        ; $77be: $78
	adc  b                                           ; $77bf: $88
	sbc  b                                           ; $77c0: $98
	ld   a, b                                        ; $77c1: $78
	sbc  b                                           ; $77c2: $98
	adc  b                                           ; $77c3: $88
	adc  b                                           ; $77c4: $88
	ld   a, b                                        ; $77c5: $78
	ld   a, b                                        ; $77c6: $78
	ld   [hl], a                                     ; $77c7: $77
	add  a                                           ; $77c8: $87
	ld   a, b                                        ; $77c9: $78
	adc  d                                           ; $77ca: $8a
	and  l                                           ; $77cb: $a5
	sbc  c                                           ; $77cc: $99
	ld   a, c                                        ; $77cd: $79
	ld   [hl], a                                     ; $77ce: $77
	sbc  b                                           ; $77cf: $98
	adc  b                                           ; $77d0: $88
	adc  c                                           ; $77d1: $89
	adc  b                                           ; $77d2: $88
	xor  d                                           ; $77d3: $aa
	ld   a, d                                        ; $77d4: $7a
	and  a                                           ; $77d5: $a7
	sbc  e                                           ; $77d6: $9b
	xor  b                                           ; $77d7: $a8
	jp   hl                                          ; $77d8: $e9


	ld   c, c                                        ; $77d9: $49
	adc  d                                           ; $77da: $8a
	and  a                                           ; $77db: $a7
	adc  c                                           ; $77dc: $89
	xor  c                                           ; $77dd: $a9
	adc  h                                           ; $77de: $8c
	ld   [$babf], a                                  ; $77df: $ea $bf $ba
	res  5, c                                        ; $77e2: $cb $a9
	ld   l, c                                        ; $77e4: $69
	ret  z                                           ; $77e5: $c8

	ld   h, h                                        ; $77e6: $64
	add  a                                           ; $77e7: $87
	ld   b, [hl]                                     ; $77e8: $46
	add  l                                           ; $77e9: $85
	ld   [hl], a                                     ; $77ea: $77
	ld   d, a                                        ; $77eb: $57
	ld   h, [hl]                                     ; $77ec: $66
	ld   a, b                                        ; $77ed: $78
	ld   a, b                                        ; $77ee: $78
	sub  a                                           ; $77ef: $97
	sbc  b                                           ; $77f0: $98
	ld   e, b                                        ; $77f1: $58
	add  a                                           ; $77f2: $87
	add  e                                           ; $77f3: $83
	ld   b, [hl]                                     ; $77f4: $46
	ld   d, l                                        ; $77f5: $55
	inc  [hl]                                        ; $77f6: $34
	ld   b, a                                        ; $77f7: $47
	ld   [hl], a                                     ; $77f8: $77
	add  a                                           ; $77f9: $87
	ld   a, c                                        ; $77fa: $79
	xor  b                                           ; $77fb: $a8
	ld   b, a                                        ; $77fc: $47
	ld   [hl], a                                     ; $77fd: $77
	ld   h, h                                        ; $77fe: $64
	ld   h, a                                        ; $77ff: $67
	sbc  d                                           ; $7800: $9a
	ld   [hl], h                                     ; $7801: $74
	ld   l, h                                        ; $7802: $6c
	xor  b                                           ; $7803: $a8
	ld   d, [hl]                                     ; $7804: $56
	add  [hl]                                        ; $7805: $86
	ld   [hl], h                                     ; $7806: $74
	ld   b, e                                        ; $7807: $43
	ld   d, [hl]                                     ; $7808: $56
	ld   [hl-], a                                    ; $7809: $32
	ld   [hl+], a                                    ; $780a: $22
	inc  de                                          ; $780b: $13
	ld   de, $1123                                   ; $780c: $11 $23 $11
	ld   l, e                                        ; $780f: $6b
	ld   [hl], l                                     ; $7810: $75
	adc  l                                           ; $7811: $8d
	rst  JumpTable                                         ; $7812: $df
	db   $fc                                         ; $7813: $fc
	xor  [hl]                                        ; $7814: $ae
	rst  $38                                         ; $7815: $ff
	ld   sp, hl                                      ; $7816: $f9
	ld   a, l                                        ; $7817: $7d
	db   $fd                                         ; $7818: $fd
	sbc  d                                           ; $7819: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $781a: $cf
	db   $ec                                         ; $781b: $ec
	inc  [hl]                                        ; $781c: $34
	adc  b                                           ; $781d: $88
	ld   hl, $1211                                   ; $781e: $21 $11 $12
	ld   de, $1111                                   ; $7821: $11 $11 $11
	ld   d, $47                                      ; $7824: $16 $47
	sbc  h                                           ; $7826: $9c
	ei                                               ; $7827: $fb
	rst  $38                                         ; $7828: $ff
	db   $fd                                         ; $7829: $fd
	cp   a                                           ; $782a: $bf
	rst  $38                                         ; $782b: $ff
	call $fcff                                       ; $782c: $cd $ff $fc
	rst  $38                                         ; $782f: $ff
	rst  $38                                         ; $7830: $ff
	adc  c                                           ; $7831: $89
	sbc  e                                           ; $7832: $9b
	add  d                                           ; $7833: $82
	inc  d                                           ; $7834: $14
	ld   h, [hl]                                     ; $7835: $66
	ld   b, c                                        ; $7836: $41
	ld   de, $1111                                   ; $7837: $11 $11 $11
	ld   de, $4879                                   ; $783a: $11 $79 $48
	ccf                                              ; $783d: $3f
	rst  $38                                         ; $783e: $ff
	add  [hl]                                        ; $783f: $86
	rst  $38                                         ; $7840: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7841: $cf
	cp   c                                           ; $7842: $b9
	rst  $38                                         ; $7843: $ff
	rst  $38                                         ; $7844: $ff
	rst  $38                                         ; $7845: $ff
	rst  $38                                         ; $7846: $ff
	call z, $92ec                                    ; $7847: $cc $ec $92
	ld   c, c                                        ; $784a: $49
	adc  d                                           ; $784b: $8a
	ld   b, c                                        ; $784c: $41
	inc  hl                                          ; $784d: $23
	ld   sp, $1111                                   ; $784e: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $7851: $11 $11 $ff
	dec  d                                           ; $7854: $15
	rst  $38                                         ; $7855: $ff
	ld   a, e                                        ; $7856: $7b
	db   $fc                                         ; $7857: $fc
	cp   d                                           ; $7858: $ba
	rst  $28                                         ; $7859: $ef
	db   $ec                                         ; $785a: $ec
	rst  $38                                         ; $785b: $ff
	rst  $38                                         ; $785c: $ff
	rst  JumpTable                                         ; $785d: $df
	rst  $38                                         ; $785e: $ff
	ld   a, [$e869]                                  ; $785f: $fa $69 $e8
	ld   de, $747c                                   ; $7862: $11 $7c $74
	inc  [hl]                                        ; $7865: $34
	ld   hl, $1111                                   ; $7866: $21 $11 $11
	ld   de, $1179                                   ; $7869: $11 $79 $11
	db   $db                                         ; $786c: $db
	ret  z                                           ; $786d: $c8

	cp   a                                           ; $786e: $bf
	rst  $28                                         ; $786f: $ef
	set  3, c                                        ; $7870: $cb $d9
	xor  [hl]                                        ; $7872: $ae
	rst  $38                                         ; $7873: $ff
	rst  $28                                         ; $7874: $ef
	rst  $38                                         ; $7875: $ff
	ld   hl, sp-$52                                  ; $7876: $f8 $ae
	xor  [hl]                                        ; $7878: $ae
	cp   d                                           ; $7879: $ba
	ld   hl, $918c                                   ; $787a: $21 $8c $91
	jr   jr_0aa_78d0                                 ; $787d: $18 $51

	ld   de, $1111                                   ; $787f: $11 $11 $11
	inc  de                                          ; $7882: $13
	ld   b, l                                        ; $7883: $45
	inc  de                                          ; $7884: $13
	sbc  h                                           ; $7885: $9c
	push af                                          ; $7886: $f5
	ld   c, a                                        ; $7887: $4f
	rst  $38                                         ; $7888: $ff
	ld   e, l                                        ; $7889: $5d
	db   $f4                                         ; $788a: $f4
	adc  a                                           ; $788b: $8f
	rst  $38                                         ; $788c: $ff
	sbc  h                                           ; $788d: $9c
	rst  $38                                         ; $788e: $ff
	db   $fc                                         ; $788f: $fc
	xor  [hl]                                        ; $7890: $ae
	sbc  $56                                         ; $7891: $de $56
	sub  c                                           ; $7893: $91
	xor  [hl]                                        ; $7894: $ae
	inc  hl                                          ; $7895: $23
	ld   b, a                                        ; $7896: $47
	ld   d, c                                        ; $7897: $51
	ld   de, $1111                                   ; $7898: $11 $11 $11
	dec  d                                           ; $789b: $15
	adc  b                                           ; $789c: $88
	ld   b, h                                        ; $789d: $44
	db   $ec                                         ; $789e: $ec
	sbc  e                                           ; $789f: $9b
	ld   a, l                                        ; $78a0: $7d
	db   $db                                         ; $78a1: $db
	jp   z, $afff                                    ; $78a2: $ca $ff $af

	db   $eb                                         ; $78a5: $eb
	rst  $38                                         ; $78a6: $ff
	db   $fc                                         ; $78a7: $fc

Jump_0aa_78a8:
	rst  JumpTable                                         ; $78a8: $df
	ld   a, [hl]                                     ; $78a9: $7e
	rst  $30                                         ; $78aa: $f7
	add  l                                           ; $78ab: $85
	add  a                                           ; $78ac: $87
	ld   a, c                                        ; $78ad: $79
	dec  [hl]                                        ; $78ae: $35
	ld   h, c                                        ; $78af: $61
	inc  d                                           ; $78b0: $14
	ld   h, c                                        ; $78b1: $61
	ld   de, $d119                                   ; $78b2: $11 $19 $d1
	inc  de                                          ; $78b5: $13
	rst  $38                                         ; $78b6: $ff
	ld   de, $fcfe                                   ; $78b7: $11 $fe $fc
	rra                                              ; $78ba: $1f
	rst  $38                                         ; $78bb: $ff
	ld   de, $fffe                                   ; $78bc: $11 $fe $ff
	ld   e, a                                        ; $78bf: $5f
	rst  $38                                         ; $78c0: $ff
	di                                               ; $78c1: $f3
	db   $db                                         ; $78c2: $db
	rst  $28                                         ; $78c3: $ef
	ld   b, c                                        ; $78c4: $41
	ld   l, [hl]                                     ; $78c5: $6e
	pop  hl                                          ; $78c6: $e1
	daa                                              ; $78c7: $27
	ld   [hl-], a                                    ; $78c8: $32
	ld   de, $1111                                   ; $78c9: $11 $11 $11
	ld   de, $215f                                   ; $78cc: $11 $5f $21
	cpl                                              ; $78cf: $2f

jr_0aa_78d0:
	pop  af                                          ; $78d0: $f1
	dec  e                                           ; $78d1: $1d
	jp   c, $8dfc                                    ; $78d2: $da $fc $8d

	cp   $6f                                         ; $78d5: $fe $6f
	rst  $38                                         ; $78d7: $ff
	db   $fd                                         ; $78d8: $fd
	cp   a                                           ; $78d9: $bf
	rst  $38                                         ; $78da: $ff
	ld   h, l                                        ; $78db: $65
	cp   [hl]                                        ; $78dc: $be
	ld   [$6f61], a                                  ; $78dd: $ea $61 $6f
	ld   d, c                                        ; $78e0: $51
	ld   [hl+], a                                    ; $78e1: $22
	ld   sp, $1111                                   ; $78e2: $31 $11 $11
	ld   b, c                                        ; $78e5: $41
	ld   de, $c11b                                   ; $78e6: $11 $1b $c1
	ld   d, $ff                                      ; $78e9: $16 $ff
	pop  bc                                          ; $78eb: $c1
	ld   e, a                                        ; $78ec: $5f
	di                                               ; $78ed: $f3
	adc  a                                           ; $78ee: $8f
	db   $ed                                         ; $78ef: $ed
	adc  $ff                                         ; $78f0: $ce $ff
	rst  $38                                         ; $78f2: $ff
	db   $db                                         ; $78f3: $db
	sbc  a                                           ; $78f4: $9f
	ei                                               ; $78f5: $fb
	ld   de, $11ff                                   ; $78f6: $11 $ff $11
	ld   e, h                                        ; $78f9: $5c
	pop  de                                          ; $78fa: $d1
	ld   d, $e4                                      ; $78fb: $16 $e4
	ld   de, $5113                                   ; $78fd: $11 $13 $51
	inc  d                                           ; $7900: $14
	ld   de, $caa3                                   ; $7901: $11 $a3 $ca
	dec  e                                           ; $7904: $1d
	rst  JumpTable                                         ; $7905: $df
	push af                                          ; $7906: $f5
	adc  [hl]                                        ; $7907: $8e
	rst  $28                                         ; $7908: $ef
	and  a                                           ; $7909: $a7
	rst  $38                                         ; $790a: $ff
	db   $ec                                         ; $790b: $ec
	xor  a                                           ; $790c: $af
	ld   sp, hl                                      ; $790d: $f9
	ld   l, c                                        ; $790e: $69
	rst  $38                                         ; $790f: $ff
	ld   [hl], a                                     ; $7910: $77
	cp   b                                           ; $7911: $b8
	ld   b, l                                        ; $7912: $45
	sbc  c                                           ; $7913: $99
	ld   hl, $3278                                   ; $7914: $21 $78 $32
	ld   [de], a                                     ; $7917: $12
	ld   b, c                                        ; $7918: $41
	ld   de, $1433                                   ; $7919: $11 $33 $14
	ld   sp, $c76e                                   ; $791c: $31 $6e $c7
	dec  de                                          ; $791f: $1b
	rst  $38                                         ; $7920: $ff
	ld   d, d                                        ; $7921: $52
	rst  $38                                         ; $7922: $ff
	rst  $10                                         ; $7923: $d7
	cp   a                                           ; $7924: $bf
	ei                                               ; $7925: $fb
	sbc  e                                           ; $7926: $9b
	xor  l                                           ; $7927: $ad
	db   $ec                                         ; $7928: $ec
	sub  l                                           ; $7929: $95
	sbc  a                                           ; $792a: $9f
	and  $16                                         ; $792b: $e6 $16
	jp   c, $3841                                    ; $792d: $da $41 $38

	sub  l                                           ; $7930: $95
	ld   [de], a                                     ; $7931: $12
	ld   a, c                                        ; $7932: $79
	ld   b, c                                        ; $7933: $41
	ld   de, $3257                                   ; $7934: $11 $57 $32
	dec  h                                           ; $7937: $25
	add  a                                           ; $7938: $87
	ld   d, h                                        ; $7939: $54
	ld   a, e                                        ; $793a: $7b
	ld   a, [$fe7c]                                  ; $793b: $fa $7c $fe
	ld   c, b                                        ; $793e: $48
	cp   $a7                                         ; $793f: $fe $a7
	xor  e                                           ; $7941: $ab
	jp   c, $b969                                    ; $7942: $da $69 $b9

	ld   a, b                                        ; $7945: $78
	cp   h                                           ; $7946: $bc
	ld   [hl], a                                     ; $7947: $77
	adc  c                                           ; $7948: $89
	add  l                                           ; $7949: $85
	ld   e, b                                        ; $794a: $58
	and  l                                           ; $794b: $a5
	ld   h, a                                        ; $794c: $67
	sub  l                                           ; $794d: $95
	ld   b, [hl]                                     ; $794e: $46
	ld   h, a                                        ; $794f: $67
	ld   d, l                                        ; $7950: $55
	ld   h, [hl]                                     ; $7951: $66
	ld   h, a                                        ; $7952: $67
	ld   b, h                                        ; $7953: $44
	ld   a, c                                        ; $7954: $79
	ld   h, e                                        ; $7955: $63
	ld   a, c                                        ; $7956: $79
	sbc  c                                           ; $7957: $99
	ld   h, l                                        ; $7958: $65
	cp   [hl]                                        ; $7959: $be
	add  [hl]                                        ; $795a: $86
	xor  h                                           ; $795b: $ac
	cp   d                                           ; $795c: $ba
	adc  c                                           ; $795d: $89
	sbc  d                                           ; $795e: $9a
	adc  c                                           ; $795f: $89
	adc  b                                           ; $7960: $88
	sbc  c                                           ; $7961: $99
	and  a                                           ; $7962: $a7
	ld   a, b                                        ; $7963: $78
	sbc  c                                           ; $7964: $99
	adc  c                                           ; $7965: $89
	ld   a, b                                        ; $7966: $78
	add  a                                           ; $7967: $87
	ld   h, a                                        ; $7968: $67
	ld   [hl], a                                     ; $7969: $77
	halt                                             ; $796a: $76
	ld   h, a                                        ; $796b: $67
	add  [hl]                                        ; $796c: $86
	adc  c                                           ; $796d: $89
	adc  b                                           ; $796e: $88
	ld   a, b                                        ; $796f: $78
	sbc  d                                           ; $7970: $9a
	halt                                             ; $7971: $76
	sbc  e                                           ; $7972: $9b
	ld   [hl], h                                     ; $7973: $74
	sbc  e                                           ; $7974: $9b
	add  l                                           ; $7975: $85
	ld   a, d                                        ; $7976: $7a
	and  a                                           ; $7977: $a7
	ld   l, c                                        ; $7978: $69
	cp   c                                           ; $7979: $b9
	adc  d                                           ; $797a: $8a
	xor  c                                           ; $797b: $a9
	sbc  e                                           ; $797c: $9b
	xor  c                                           ; $797d: $a9
	sbc  c                                           ; $797e: $99
	xor  d                                           ; $797f: $aa
	sbc  b                                           ; $7980: $98
	sbc  d                                           ; $7981: $9a
	xor  d                                           ; $7982: $aa
	xor  e                                           ; $7983: $ab
	sbc  b                                           ; $7984: $98
	sbc  d                                           ; $7985: $9a
	sbc  c                                           ; $7986: $99
	xor  c                                           ; $7987: $a9
	sbc  c                                           ; $7988: $99
	sbc  d                                           ; $7989: $9a
	sbc  b                                           ; $798a: $98
	ld   a, c                                        ; $798b: $79
	sub  a                                           ; $798c: $97
	adc  c                                           ; $798d: $89
	adc  b                                           ; $798e: $88
	ld   [hl], a                                     ; $798f: $77
	add  a                                           ; $7990: $87
	ld   [hl], a                                     ; $7991: $77
	ld   [hl], a                                     ; $7992: $77
	adc  b                                           ; $7993: $88
	adc  b                                           ; $7994: $88
	adc  b                                           ; $7995: $88
	sbc  b                                           ; $7996: $98
	adc  c                                           ; $7997: $89
	sbc  b                                           ; $7998: $98
	adc  b                                           ; $7999: $88
	sbc  b                                           ; $799a: $98
	adc  c                                           ; $799b: $89
	sbc  c                                           ; $799c: $99
	adc  b                                           ; $799d: $88
	sbc  b                                           ; $799e: $98
	sbc  b                                           ; $799f: $98
	adc  b                                           ; $79a0: $88
	sbc  c                                           ; $79a1: $99
	adc  b                                           ; $79a2: $88
	sbc  b                                           ; $79a3: $98
	sbc  b                                           ; $79a4: $98
	ld   a, b                                        ; $79a5: $78
	sbc  b                                           ; $79a6: $98
	add  a                                           ; $79a7: $87
	adc  b                                           ; $79a8: $88
	ld   [hl], a                                     ; $79a9: $77
	ld   a, b                                        ; $79aa: $78
	add  a                                           ; $79ab: $87
	ld   a, b                                        ; $79ac: $78
	adc  b                                           ; $79ad: $88
	adc  b                                           ; $79ae: $88
	adc  c                                           ; $79af: $89
	sbc  b                                           ; $79b0: $98
	adc  c                                           ; $79b1: $89
	sbc  c                                           ; $79b2: $99
	adc  c                                           ; $79b3: $89
	adc  c                                           ; $79b4: $89
	sbc  b                                           ; $79b5: $98
	sbc  b                                           ; $79b6: $98
	adc  c                                           ; $79b7: $89
	adc  b                                           ; $79b8: $88
	adc  b                                           ; $79b9: $88
	adc  b                                           ; $79ba: $88
	ld   [hl], a                                     ; $79bb: $77
	ld   [hl], a                                     ; $79bc: $77
	ld   [hl], a                                     ; $79bd: $77
	ld   [hl], a                                     ; $79be: $77
	ld   [hl], a                                     ; $79bf: $77
	ld   [hl], a                                     ; $79c0: $77
	ld   [hl], a                                     ; $79c1: $77
	adc  b                                           ; $79c2: $88
	ld   [hl], a                                     ; $79c3: $77
	ld   a, b                                        ; $79c4: $78
	ld   [hl], a                                     ; $79c5: $77
	ld   [hl], a                                     ; $79c6: $77
	ld   [hl], a                                     ; $79c7: $77
	ld   [hl], a                                     ; $79c8: $77
	add  a                                           ; $79c9: $87
	ld   a, b                                        ; $79ca: $78
	adc  b                                           ; $79cb: $88
	ld   [hl], a                                     ; $79cc: $77
	adc  b                                           ; $79cd: $88
	ld   [hl], a                                     ; $79ce: $77
	adc  b                                           ; $79cf: $88
	adc  b                                           ; $79d0: $88
	adc  b                                           ; $79d1: $88
	adc  b                                           ; $79d2: $88
	adc  b                                           ; $79d3: $88
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	ld   [hl], a                                     ; $79d6: $77
	ld   [hl], a                                     ; $79d7: $77
	ld   [hl], a                                     ; $79d8: $77
	ld   [hl], a                                     ; $79d9: $77
	ld   [hl], a                                     ; $79da: $77
	ld   [hl], a                                     ; $79db: $77
	ld   [hl], a                                     ; $79dc: $77
	add  a                                           ; $79dd: $87
	ld   [hl], a                                     ; $79de: $77
	ld   [hl], a                                     ; $79df: $77
	ld   [hl], a                                     ; $79e0: $77
	ld   [hl], a                                     ; $79e1: $77
	ld   [hl], a                                     ; $79e2: $77
	ld   [hl], a                                     ; $79e3: $77
	ld   a, b                                        ; $79e4: $78
	ld   [hl], a                                     ; $79e5: $77
	add  a                                           ; $79e6: $87
	add  a                                           ; $79e7: $87
	ld   a, b                                        ; $79e8: $78
	ld   a, b                                        ; $79e9: $78
	ld   [hl], a                                     ; $79ea: $77
	add  a                                           ; $79eb: $87
	adc  b                                           ; $79ec: $88
	ld   a, b                                        ; $79ed: $78
	add  a                                           ; $79ee: $87
	add  a                                           ; $79ef: $87
	adc  b                                           ; $79f0: $88
	ld   a, b                                        ; $79f1: $78
	ld   [hl], a                                     ; $79f2: $77
	add  a                                           ; $79f3: $87
	ld   [hl], a                                     ; $79f4: $77
	ld   [hl], a                                     ; $79f5: $77
	ld   [hl], a                                     ; $79f6: $77
	ld   [hl], a                                     ; $79f7: $77
	ld   [hl], a                                     ; $79f8: $77
	ld   [hl], a                                     ; $79f9: $77
	ld   [hl], a                                     ; $79fa: $77
	ld   [hl], a                                     ; $79fb: $77
	ld   [hl], a                                     ; $79fc: $77
	ld   [hl], a                                     ; $79fd: $77
	ld   [hl], a                                     ; $79fe: $77
	ld   [hl], a                                     ; $79ff: $77
	ld   a, b                                        ; $7a00: $78
	add  a                                           ; $7a01: $87
	add  a                                           ; $7a02: $87
	ld   a, b                                        ; $7a03: $78
	adc  b                                           ; $7a04: $88
	ld   [hl], a                                     ; $7a05: $77
	adc  b                                           ; $7a06: $88
	add  a                                           ; $7a07: $87
	adc  b                                           ; $7a08: $88
	add  a                                           ; $7a09: $87
	adc  b                                           ; $7a0a: $88
	ld   a, b                                        ; $7a0b: $78
	add  a                                           ; $7a0c: $87
	ld   a, b                                        ; $7a0d: $78
	ld   [hl], a                                     ; $7a0e: $77
	ld   [hl], a                                     ; $7a0f: $77
	ld   a, b                                        ; $7a10: $78
	ld   [hl], a                                     ; $7a11: $77
	ld   [hl], a                                     ; $7a12: $77
	add  a                                           ; $7a13: $87
	ld   [hl], a                                     ; $7a14: $77
	adc  b                                           ; $7a15: $88
	add  a                                           ; $7a16: $87
	adc  b                                           ; $7a17: $88
	adc  b                                           ; $7a18: $88
	adc  b                                           ; $7a19: $88
	add  a                                           ; $7a1a: $87
	adc  b                                           ; $7a1b: $88
	adc  b                                           ; $7a1c: $88
	adc  b                                           ; $7a1d: $88
	adc  b                                           ; $7a1e: $88
	adc  b                                           ; $7a1f: $88
	adc  b                                           ; $7a20: $88
	adc  b                                           ; $7a21: $88
	adc  b                                           ; $7a22: $88
	adc  b                                           ; $7a23: $88
	adc  b                                           ; $7a24: $88
	adc  b                                           ; $7a25: $88
	ld   [hl], a                                     ; $7a26: $77
	ld   [hl], a                                     ; $7a27: $77
	ld   [hl], a                                     ; $7a28: $77
	ld   a, b                                        ; $7a29: $78
	adc  b                                           ; $7a2a: $88
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	adc  b                                           ; $7a32: $88
	adc  b                                           ; $7a33: $88
	adc  b                                           ; $7a34: $88
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	adc  b                                           ; $7a38: $88
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	adc  b                                           ; $7a42: $88
	adc  b                                           ; $7a43: $88
	adc  b                                           ; $7a44: $88
	adc  b                                           ; $7a45: $88
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	sbc  b                                           ; $7a51: $98
	adc  c                                           ; $7a52: $89
	adc  b                                           ; $7a53: $88
	sbc  b                                           ; $7a54: $98
	adc  b                                           ; $7a55: $88
	adc  b                                           ; $7a56: $88
	adc  b                                           ; $7a57: $88
	adc  b                                           ; $7a58: $88
	adc  b                                           ; $7a59: $88
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
	adc  b                                           ; $7a5d: $88
	adc  c                                           ; $7a5e: $89
	adc  b                                           ; $7a5f: $88
	adc  b                                           ; $7a60: $88
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	adc  b                                           ; $7a64: $88
	adc  b                                           ; $7a65: $88
	adc  b                                           ; $7a66: $88
	adc  b                                           ; $7a67: $88
	adc  b                                           ; $7a68: $88
	adc  b                                           ; $7a69: $88
	adc  b                                           ; $7a6a: $88
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	adc  b                                           ; $7a6d: $88
	adc  b                                           ; $7a6e: $88
	adc  b                                           ; $7a6f: $88
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	adc  b                                           ; $7a74: $88
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	adc  b                                           ; $7a77: $88
	adc  b                                           ; $7a78: $88
	adc  b                                           ; $7a79: $88
	adc  b                                           ; $7a7a: $88
	adc  b                                           ; $7a7b: $88
	adc  b                                           ; $7a7c: $88
	adc  b                                           ; $7a7d: $88
	adc  b                                           ; $7a7e: $88
	adc  b                                           ; $7a7f: $88
	adc  b                                           ; $7a80: $88
	adc  b                                           ; $7a81: $88
	adc  b                                           ; $7a82: $88
	adc  b                                           ; $7a83: $88
	adc  b                                           ; $7a84: $88
	adc  b                                           ; $7a85: $88
	adc  b                                           ; $7a86: $88
	adc  b                                           ; $7a87: $88
	adc  b                                           ; $7a88: $88
	adc  b                                           ; $7a89: $88
	adc  b                                           ; $7a8a: $88
	adc  b                                           ; $7a8b: $88
	adc  b                                           ; $7a8c: $88
	adc  b                                           ; $7a8d: $88
	adc  b                                           ; $7a8e: $88
	adc  b                                           ; $7a8f: $88
	adc  b                                           ; $7a90: $88
	adc  b                                           ; $7a91: $88
	adc  b                                           ; $7a92: $88
	adc  b                                           ; $7a93: $88
	adc  b                                           ; $7a94: $88
	adc  b                                           ; $7a95: $88
	adc  b                                           ; $7a96: $88
	adc  b                                           ; $7a97: $88
	adc  b                                           ; $7a98: $88
	add  a                                           ; $7a99: $87
	ld   [hl], a                                     ; $7a9a: $77
	ld   [hl], a                                     ; $7a9b: $77
	ld   a, b                                        ; $7a9c: $78
	adc  b                                           ; $7a9d: $88
	adc  b                                           ; $7a9e: $88
	adc  b                                           ; $7a9f: $88
	adc  b                                           ; $7aa0: $88
	adc  b                                           ; $7aa1: $88
	adc  b                                           ; $7aa2: $88
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	adc  b                                           ; $7aa6: $88
	adc  b                                           ; $7aa7: $88
	adc  b                                           ; $7aa8: $88
	adc  b                                           ; $7aa9: $88
	adc  b                                           ; $7aaa: $88
	adc  b                                           ; $7aab: $88

Call_0aa_7aac:
	adc  b                                           ; $7aac: $88
	adc  b                                           ; $7aad: $88
	adc  b                                           ; $7aae: $88
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	adc  b                                           ; $7ab1: $88
	adc  b                                           ; $7ab2: $88
	adc  b                                           ; $7ab3: $88
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	adc  b                                           ; $7ab7: $88
	adc  b                                           ; $7ab8: $88
	adc  b                                           ; $7ab9: $88
	adc  b                                           ; $7aba: $88
	adc  b                                           ; $7abb: $88
	adc  b                                           ; $7abc: $88
	adc  b                                           ; $7abd: $88
	adc  b                                           ; $7abe: $88
	adc  b                                           ; $7abf: $88
	adc  b                                           ; $7ac0: $88
	adc  b                                           ; $7ac1: $88
	adc  b                                           ; $7ac2: $88
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
	adc  c                                           ; $7ad4: $89
	adc  c                                           ; $7ad5: $89
	ld   [hl], a                                     ; $7ad6: $77
	push bc                                          ; $7ad7: $c5
	sbc  d                                           ; $7ad8: $9a
	ld   l, d                                        ; $7ad9: $6a
	ld   [hl], a                                     ; $7ada: $77
	and  a                                           ; $7adb: $a7
	adc  b                                           ; $7adc: $88
	ld   a, c                                        ; $7add: $79
	ld   a, c                                        ; $7ade: $79
	sbc  b                                           ; $7adf: $98
	sub  a                                           ; $7ae0: $97
	adc  d                                           ; $7ae1: $8a
	sbc  b                                           ; $7ae2: $98
	ld   a, b                                        ; $7ae3: $78
	xor  c                                           ; $7ae4: $a9
	adc  c                                           ; $7ae5: $89
	ld   a, d                                        ; $7ae6: $7a
	adc  b                                           ; $7ae7: $88
	ld   a, c                                        ; $7ae8: $79
	adc  b                                           ; $7ae9: $88
	add  a                                           ; $7aea: $87
	sub  a                                           ; $7aeb: $97
	add  a                                           ; $7aec: $87
	adc  b                                           ; $7aed: $88
	ld   a, c                                        ; $7aee: $79
	ld   a, c                                        ; $7aef: $79
	ld   a, b                                        ; $7af0: $78
	sub  a                                           ; $7af1: $97
	sbc  b                                           ; $7af2: $98
	ld   a, c                                        ; $7af3: $79
	adc  b                                           ; $7af4: $88
	sub  a                                           ; $7af5: $97
	sub  a                                           ; $7af6: $97
	adc  b                                           ; $7af7: $88
	ld   a, b                                        ; $7af8: $78
	ld   a, b                                        ; $7af9: $78
	adc  b                                           ; $7afa: $88
	add  a                                           ; $7afb: $87
	add  a                                           ; $7afc: $87
	sub  a                                           ; $7afd: $97
	adc  b                                           ; $7afe: $88
	ld   a, c                                        ; $7aff: $79
	ld   a, c                                        ; $7b00: $79
	sub  a                                           ; $7b01: $97
	sub  a                                           ; $7b02: $97
	adc  b                                           ; $7b03: $88
	ld   a, c                                        ; $7b04: $79
	adc  b                                           ; $7b05: $88
	sbc  b                                           ; $7b06: $98
	add  a                                           ; $7b07: $87
	sub  a                                           ; $7b08: $97
	ld   a, c                                        ; $7b09: $79
	ld   a, b                                        ; $7b0a: $78
	adc  b                                           ; $7b0b: $88
	sub  a                                           ; $7b0c: $97
	adc  b                                           ; $7b0d: $88
	ld   a, c                                        ; $7b0e: $79
	adc  b                                           ; $7b0f: $88
	ld   a, b                                        ; $7b10: $78
	adc  c                                           ; $7b11: $89
	adc  c                                           ; $7b12: $89
	sub  a                                           ; $7b13: $97
	and  a                                           ; $7b14: $a7
	sbc  b                                           ; $7b15: $98
	adc  b                                           ; $7b16: $88
	ld   a, c                                        ; $7b17: $79
	ld   l, b                                        ; $7b18: $68
	add  a                                           ; $7b19: $87
	adc  b                                           ; $7b1a: $88
	add  a                                           ; $7b1b: $87
	sbc  b                                           ; $7b1c: $98
	ld   a, b                                        ; $7b1d: $78
	add  a                                           ; $7b1e: $87
	adc  c                                           ; $7b1f: $89
	ld   a, c                                        ; $7b20: $79
	sub  a                                           ; $7b21: $97
	adc  b                                           ; $7b22: $88
	sbc  b                                           ; $7b23: $98
	adc  c                                           ; $7b24: $89
	sbc  b                                           ; $7b25: $98
	adc  b                                           ; $7b26: $88
	adc  c                                           ; $7b27: $89
	ld   a, b                                        ; $7b28: $78
	sub  a                                           ; $7b29: $97
	adc  b                                           ; $7b2a: $88
	add  a                                           ; $7b2b: $87
	adc  b                                           ; $7b2c: $88
	adc  c                                           ; $7b2d: $89
	ld   a, b                                        ; $7b2e: $78
	adc  b                                           ; $7b2f: $88
	adc  c                                           ; $7b30: $89
	ld   a, c                                        ; $7b31: $79
	add  [hl]                                        ; $7b32: $86
	and  [hl]                                        ; $7b33: $a6
	sbc  b                                           ; $7b34: $98
	ld   a, d                                        ; $7b35: $7a
	ld   a, c                                        ; $7b36: $79
	ld   a, b                                        ; $7b37: $78
	add  a                                           ; $7b38: $87
	sub  a                                           ; $7b39: $97
	adc  b                                           ; $7b3a: $88
	ld   a, c                                        ; $7b3b: $79
	sub  [hl]                                        ; $7b3c: $96
	and  a                                           ; $7b3d: $a7
	adc  c                                           ; $7b3e: $89
	ld   l, d                                        ; $7b3f: $6a
	adc  b                                           ; $7b40: $88
	ld   [hl], a                                     ; $7b41: $77
	sbc  b                                           ; $7b42: $98
	add  a                                           ; $7b43: $87
	sbc  b                                           ; $7b44: $98
	ld   a, c                                        ; $7b45: $79
	ld   a, c                                        ; $7b46: $79
	add  h                                           ; $7b47: $84
	cp   c                                           ; $7b48: $b9
	ld   a, b                                        ; $7b49: $78
	ld   a, b                                        ; $7b4a: $78
	adc  c                                           ; $7b4b: $89
	ld   a, d                                        ; $7b4c: $7a
	ld   h, a                                        ; $7b4d: $67
	and  a                                           ; $7b4e: $a7
	sub  [hl]                                        ; $7b4f: $96
	sbc  d                                           ; $7b50: $9a
	add  a                                           ; $7b51: $87
	sub  a                                           ; $7b52: $97
	ld   l, d                                        ; $7b53: $6a
	ld   l, c                                        ; $7b54: $69
	and  l                                           ; $7b55: $a5
	sbc  c                                           ; $7b56: $99
	ld   l, c                                        ; $7b57: $69
	ld   l, c                                        ; $7b58: $69
	add  a                                           ; $7b59: $87
	adc  b                                           ; $7b5a: $88
	sub  a                                           ; $7b5b: $97
	add  a                                           ; $7b5c: $87
	sbc  b                                           ; $7b5d: $98
	ld   a, b                                        ; $7b5e: $78
	add  a                                           ; $7b5f: $87
	adc  b                                           ; $7b60: $88
	ld   l, d                                        ; $7b61: $6a
	adc  b                                           ; $7b62: $88
	add  a                                           ; $7b63: $87
	adc  b                                           ; $7b64: $88
	adc  b                                           ; $7b65: $88
	ld   a, b                                        ; $7b66: $78
	sub  [hl]                                        ; $7b67: $96
	sub  a                                           ; $7b68: $97
	adc  c                                           ; $7b69: $89
	ld   a, d                                        ; $7b6a: $7a
	ld   l, b                                        ; $7b6b: $68
	and  a                                           ; $7b6c: $a7
	sub  [hl]                                        ; $7b6d: $96
	ld   a, b                                        ; $7b6e: $78
	ld   l, c                                        ; $7b6f: $69
	adc  b                                           ; $7b70: $88
	add  [hl]                                        ; $7b71: $86
	xor  b                                           ; $7b72: $a8
	add  a                                           ; $7b73: $87
	ld   l, e                                        ; $7b74: $6b
	add  a                                           ; $7b75: $87
	add  a                                           ; $7b76: $87
	or   a                                           ; $7b77: $b7
	ld   e, l                                        ; $7b78: $5d
	ld   e, c                                        ; $7b79: $59
	ld   a, b                                        ; $7b7a: $78
	and  e                                           ; $7b7b: $a3
	call nc, Call_0aa_5c7a                           ; $7b7c: $d4 $7a $5c
	ld   e, b                                        ; $7b7f: $58
	ld   [hl], a                                     ; $7b80: $77
	xor  b                                           ; $7b81: $a8
	ld   a, b                                        ; $7b82: $78
	add  a                                           ; $7b83: $87
	sub  [hl]                                        ; $7b84: $96
	xor  b                                           ; $7b85: $a8
	ld   a, c                                        ; $7b86: $79
	ld   l, e                                        ; $7b87: $6b
	ld   a, b                                        ; $7b88: $78
	add  [hl]                                        ; $7b89: $86
	or   l                                           ; $7b8a: $b5
	ld   a, c                                        ; $7b8b: $79
	ld   l, d                                        ; $7b8c: $6a
	add  l                                           ; $7b8d: $85
	xor  b                                           ; $7b8e: $a8
	ld   a, c                                        ; $7b8f: $79
	ld   l, c                                        ; $7b90: $69
	sub  l                                           ; $7b91: $95
	adc  c                                           ; $7b92: $89
	sub  a                                           ; $7b93: $97
	ld   a, b                                        ; $7b94: $78
	ld   a, d                                        ; $7b95: $7a
	ld   [hl], a                                     ; $7b96: $77
	and  l                                           ; $7b97: $a5
	ld   a, c                                        ; $7b98: $79
	adc  c                                           ; $7b99: $89
	ld   e, c                                        ; $7b9a: $59
	ld   l, b                                        ; $7b9b: $68
	sub  a                                           ; $7b9c: $97
	ld   [hl], a                                     ; $7b9d: $77
	sub  a                                           ; $7b9e: $97
	xor  b                                           ; $7b9f: $a8
	adc  e                                           ; $7ba0: $8b
	ld   l, e                                        ; $7ba1: $6b
	add  a                                           ; $7ba2: $87
	sbc  b                                           ; $7ba3: $98
	add  l                                           ; $7ba4: $85
	sbc  d                                           ; $7ba5: $9a
	ld   a, d                                        ; $7ba6: $7a
	ld   l, c                                        ; $7ba7: $69
	sub  [hl]                                        ; $7ba8: $96
	and  a                                           ; $7ba9: $a7
	ld   a, c                                        ; $7baa: $79
	ld   l, c                                        ; $7bab: $69
	adc  b                                           ; $7bac: $88
	and  [hl]                                        ; $7bad: $a6
	xor  c                                           ; $7bae: $a9
	add  a                                           ; $7baf: $87
	ld   a, c                                        ; $7bb0: $79
	ld   l, c                                        ; $7bb1: $69
	ld   e, d                                        ; $7bb2: $5a
	ld   [hl], h                                     ; $7bb3: $74
	call nz, Call_0aa_69a7                           ; $7bb4: $c4 $a7 $69
	adc  d                                           ; $7bb7: $8a
	ld   c, h                                        ; $7bb8: $4c
	add  h                                           ; $7bb9: $84
	push bc                                          ; $7bba: $c5
	sbc  b                                           ; $7bbb: $98
	ld   e, h                                        ; $7bbc: $5c
	ld   a, b                                        ; $7bbd: $78
	ld   a, c                                        ; $7bbe: $79
	sub  [hl]                                        ; $7bbf: $96
	or   l                                           ; $7bc0: $b5
	adc  d                                           ; $7bc1: $8a
	ld   e, b                                        ; $7bc2: $58
	ld   a, b                                        ; $7bc3: $78
	ld   a, d                                        ; $7bc4: $7a
	ld   a, b                                        ; $7bc5: $78
	sub  [hl]                                        ; $7bc6: $96
	rst  ToBoot                                         ; $7bc7: $c7
	ld   a, e                                        ; $7bc8: $7b
	ld   l, c                                        ; $7bc9: $69
	ld   a, b                                        ; $7bca: $78
	sub  a                                           ; $7bcb: $97
	or   l                                           ; $7bcc: $b5
	xor  b                                           ; $7bcd: $a8
	ld   l, e                                        ; $7bce: $6b
	ld   c, d                                        ; $7bcf: $4a
	halt                                             ; $7bd0: $76
	and  l                                           ; $7bd1: $a5
	add  $79                                         ; $7bd2: $c6 $79
	ld   l, e                                        ; $7bd4: $6b
	ld   e, d                                        ; $7bd5: $5a
	sub  a                                           ; $7bd6: $97
	adc  c                                           ; $7bd7: $89
	sub  a                                           ; $7bd8: $97
	sbc  c                                           ; $7bd9: $99
	sub  a                                           ; $7bda: $97
	sub  a                                           ; $7bdb: $97
	sbc  b                                           ; $7bdc: $98
	ld   l, d                                        ; $7bdd: $6a
	ld   l, c                                        ; $7bde: $69
	halt                                             ; $7bdf: $76
	and  e                                           ; $7be0: $a3
	or   [hl]                                        ; $7be1: $b6
	ld   l, h                                        ; $7be2: $6c
	dec  a                                           ; $7be3: $3d
	ld   a, e                                        ; $7be4: $7b
	sub  a                                           ; $7be5: $97
	call nc, $8bb6                                   ; $7be6: $d4 $b6 $8b
	ld   a, b                                        ; $7be9: $78
	ld   l, c                                        ; $7bea: $69
	ld   l, d                                        ; $7beb: $6a
	sub  a                                           ; $7bec: $97
	or   [hl]                                        ; $7bed: $b6
	ret  z                                           ; $7bee: $c8

	ld   a, d                                        ; $7bef: $7a
	ld   e, l                                        ; $7bf0: $5d
	ld   b, a                                        ; $7bf1: $47
	sub  [hl]                                        ; $7bf2: $96
	call nz, $99b8                                   ; $7bf3: $c4 $b8 $99
	ld   l, e                                        ; $7bf6: $6b
	ld   a, b                                        ; $7bf7: $78
	and  a                                           ; $7bf8: $a7
	adc  c                                           ; $7bf9: $89
	ld   l, c                                        ; $7bfa: $69
	adc  c                                           ; $7bfb: $89
	add  [hl]                                        ; $7bfc: $86
	and  l                                           ; $7bfd: $a5
	xor  c                                           ; $7bfe: $a9
	ld   a, c                                        ; $7bff: $79
	ld   c, c                                        ; $7c00: $49
	add  a                                           ; $7c01: $87
	or   [hl]                                        ; $7c02: $b6
	ld   [hl], a                                     ; $7c03: $77
	adc  d                                           ; $7c04: $8a
	ld   a, d                                        ; $7c05: $7a
	ld   l, c                                        ; $7c06: $69
	add  [hl]                                        ; $7c07: $86
	and  a                                           ; $7c08: $a7
	sub  a                                           ; $7c09: $97
	sbc  b                                           ; $7c0a: $98
	ld   a, b                                        ; $7c0b: $78
	ld   a, c                                        ; $7c0c: $79
	ld   a, c                                        ; $7c0d: $79
	ld   [hl], a                                     ; $7c0e: $77
	and  [hl]                                        ; $7c0f: $a6
	add  l                                           ; $7c10: $85
	xor  e                                           ; $7c11: $ab
	ld   e, d                                        ; $7c12: $5a
	ld   a, c                                        ; $7c13: $79
	adc  b                                           ; $7c14: $88
	add  a                                           ; $7c15: $87
	add  a                                           ; $7c16: $87
	sub  a                                           ; $7c17: $97
	and  a                                           ; $7c18: $a7
	ld   a, d                                        ; $7c19: $7a
	ld   h, a                                        ; $7c1a: $67
	ld   a, c                                        ; $7c1b: $79
	and  [hl]                                        ; $7c1c: $a6
	and  [hl]                                        ; $7c1d: $a6
	ld   a, c                                        ; $7c1e: $79
	ld   l, c                                        ; $7c1f: $69
	ld   l, l                                        ; $7c20: $6d
	ld   e, b                                        ; $7c21: $58
	sub  a                                           ; $7c22: $97
	and  [hl]                                        ; $7c23: $a6
	xor  b                                           ; $7c24: $a8
	ld   [hl], a                                     ; $7c25: $77
	and  a                                           ; $7c26: $a7
	ld   a, d                                        ; $7c27: $7a
	ld   [hl], a                                     ; $7c28: $77
	and  a                                           ; $7c29: $a7
	add  a                                           ; $7c2a: $87
	ld   l, d                                        ; $7c2b: $6a
	ld   l, d                                        ; $7c2c: $6a
	add  a                                           ; $7c2d: $87
	adc  c                                           ; $7c2e: $89
	adc  b                                           ; $7c2f: $88
	ld   a, b                                        ; $7c30: $78
	add  [hl]                                        ; $7c31: $86
	sub  a                                           ; $7c32: $97
	add  a                                           ; $7c33: $87
	xor  c                                           ; $7c34: $a9
	ld   e, e                                        ; $7c35: $5b
	ld   e, c                                        ; $7c36: $59
	and  h                                           ; $7c37: $a4
	xor  c                                           ; $7c38: $a9
	ld   l, c                                        ; $7c39: $69
	adc  c                                           ; $7c3a: $89
	add  a                                           ; $7c3b: $87
	sub  [hl]                                        ; $7c3c: $96
	and  l                                           ; $7c3d: $a5
	ld   l, h                                        ; $7c3e: $6c
	ld   c, e                                        ; $7c3f: $4b
	ld   l, c                                        ; $7c40: $69
	sub  [hl]                                        ; $7c41: $96
	push bc                                          ; $7c42: $c5
	sbc  b                                           ; $7c43: $98
	adc  c                                           ; $7c44: $89
	ld   a, b                                        ; $7c45: $78
	ld   h, a                                        ; $7c46: $67
	sub  a                                           ; $7c47: $97
	and  [hl]                                        ; $7c48: $a6
	xor  c                                           ; $7c49: $a9
	ld   e, [hl]                                     ; $7c4a: $5e
	ld   c, c                                        ; $7c4b: $49
	add  a                                           ; $7c4c: $87
	sub  [hl]                                        ; $7c4d: $96
	sub  [hl]                                        ; $7c4e: $96
	sub  a                                           ; $7c4f: $97
	ld   [hl], a                                     ; $7c50: $77
	adc  b                                           ; $7c51: $88
	ld   a, b                                        ; $7c52: $78
	and  a                                           ; $7c53: $a7
	ld   l, d                                        ; $7c54: $6a
	ld   l, d                                        ; $7c55: $6a
	adc  b                                           ; $7c56: $88
	add  [hl]                                        ; $7c57: $86
	sub  l                                           ; $7c58: $95
	sbc  c                                           ; $7c59: $99
	add  a                                           ; $7c5a: $87
	ld   e, d                                        ; $7c5b: $5a
	ld   [hl], a                                     ; $7c5c: $77
	sub  a                                           ; $7c5d: $97
	sub  a                                           ; $7c5e: $97
	add  a                                           ; $7c5f: $87
	sbc  c                                           ; $7c60: $99
	ld   l, c                                        ; $7c61: $69
	ld   a, c                                        ; $7c62: $79
	and  a                                           ; $7c63: $a7
	sub  [hl]                                        ; $7c64: $96
	and  a                                           ; $7c65: $a7
	ld   l, d                                        ; $7c66: $6a
	ld   l, b                                        ; $7c67: $68
	ld   [hl], a                                     ; $7c68: $77
	sub  a                                           ; $7c69: $97
	sbc  b                                           ; $7c6a: $98
	ld   a, c                                        ; $7c6b: $79
	add  a                                           ; $7c6c: $87
	ld   a, c                                        ; $7c6d: $79
	sub  l                                           ; $7c6e: $95
	sbc  b                                           ; $7c6f: $98
	add  a                                           ; $7c70: $87
	and  [hl]                                        ; $7c71: $a6
	adc  b                                           ; $7c72: $88
	ld   e, e                                        ; $7c73: $5b
	ld   l, e                                        ; $7c74: $6b
	ld   [hl], a                                     ; $7c75: $77
	add  a                                           ; $7c76: $87
	and  l                                           ; $7c77: $a5
	and  a                                           ; $7c78: $a7
	sub  a                                           ; $7c79: $97
	ld   a, c                                        ; $7c7a: $79
	ld   e, e                                        ; $7c7b: $5b
	ld   [hl], a                                     ; $7c7c: $77
	ld   a, b                                        ; $7c7d: $78
	sub  a                                           ; $7c7e: $97
	sbc  c                                           ; $7c7f: $99
	add  a                                           ; $7c80: $87
	ld   a, c                                        ; $7c81: $79
	ld   a, b                                        ; $7c82: $78
	add  a                                           ; $7c83: $87
	ld   a, c                                        ; $7c84: $79
	add  a                                           ; $7c85: $87
	sbc  b                                           ; $7c86: $98
	ld   l, c                                        ; $7c87: $69
	ld   [hl], a                                     ; $7c88: $77
	add  a                                           ; $7c89: $87
	sub  [hl]                                        ; $7c8a: $96
	adc  b                                           ; $7c8b: $88
	adc  b                                           ; $7c8c: $88
	ld   a, d                                        ; $7c8d: $7a
	ld   l, c                                        ; $7c8e: $69
	add  a                                           ; $7c8f: $87
	and  a                                           ; $7c90: $a7
	ld   a, d                                        ; $7c91: $7a
	ld   l, c                                        ; $7c92: $69
	add  a                                           ; $7c93: $87
	add  [hl]                                        ; $7c94: $86
	and  [hl]                                        ; $7c95: $a6
	sbc  b                                           ; $7c96: $98
	ld   a, b                                        ; $7c97: $78
	ld   l, d                                        ; $7c98: $6a
	ld   a, c                                        ; $7c99: $79
	ld   a, d                                        ; $7c9a: $7a
	ld   a, b                                        ; $7c9b: $78
	sub  a                                           ; $7c9c: $97
	add  [hl]                                        ; $7c9d: $86
	sbc  b                                           ; $7c9e: $98
	add  a                                           ; $7c9f: $87
	sub  a                                           ; $7ca0: $97
	adc  b                                           ; $7ca1: $88
	adc  d                                           ; $7ca2: $8a
	ld   [hl], a                                     ; $7ca3: $77
	cp   b                                           ; $7ca4: $b8
	ld   a, c                                        ; $7ca5: $79
	ld   a, d                                        ; $7ca6: $7a
	ld   l, c                                        ; $7ca7: $69
	adc  b                                           ; $7ca8: $88
	ld   a, b                                        ; $7ca9: $78
	sub  a                                           ; $7caa: $97
	ld   a, b                                        ; $7cab: $78
	and  [hl]                                        ; $7cac: $a6
	adc  c                                           ; $7cad: $89
	ld   a, c                                        ; $7cae: $79
	ld   l, c                                        ; $7caf: $69
	sbc  c                                           ; $7cb0: $99
	add  a                                           ; $7cb1: $87
	ld   a, c                                        ; $7cb2: $79
	add  a                                           ; $7cb3: $87
	adc  d                                           ; $7cb4: $8a
	sub  [hl]                                        ; $7cb5: $96
	adc  c                                           ; $7cb6: $89
	sub  a                                           ; $7cb7: $97
	adc  b                                           ; $7cb8: $88
	add  [hl]                                        ; $7cb9: $86
	sbc  b                                           ; $7cba: $98
	ld   a, c                                        ; $7cbb: $79
	ld   l, c                                        ; $7cbc: $69
	add  a                                           ; $7cbd: $87
	ld   a, b                                        ; $7cbe: $78
	sub  a                                           ; $7cbf: $97
	sub  a                                           ; $7cc0: $97
	and  a                                           ; $7cc1: $a7
	ld   a, c                                        ; $7cc2: $79
	adc  b                                           ; $7cc3: $88
	ld   l, e                                        ; $7cc4: $6b
	ld   h, a                                        ; $7cc5: $67
	add  a                                           ; $7cc6: $87
	sub  a                                           ; $7cc7: $97
	add  a                                           ; $7cc8: $87
	sbc  b                                           ; $7cc9: $98
	ld   a, d                                        ; $7cca: $7a
	ld   a, c                                        ; $7ccb: $79
	adc  b                                           ; $7ccc: $88
	add  a                                           ; $7ccd: $87
	sub  a                                           ; $7cce: $97
	sub  a                                           ; $7ccf: $97
	adc  c                                           ; $7cd0: $89
	ld   a, c                                        ; $7cd1: $79
	ld   a, c                                        ; $7cd2: $79
	adc  b                                           ; $7cd3: $88
	adc  b                                           ; $7cd4: $88
	add  [hl]                                        ; $7cd5: $86
	sbc  b                                           ; $7cd6: $98
	adc  b                                           ; $7cd7: $88
	adc  c                                           ; $7cd8: $89
	adc  c                                           ; $7cd9: $89
	adc  b                                           ; $7cda: $88
	ld   a, b                                        ; $7cdb: $78
	adc  b                                           ; $7cdc: $88
	adc  c                                           ; $7cdd: $89
	adc  b                                           ; $7cde: $88
	sbc  b                                           ; $7cdf: $98
	adc  b                                           ; $7ce0: $88
	sbc  b                                           ; $7ce1: $98
	adc  b                                           ; $7ce2: $88
	sbc  b                                           ; $7ce3: $98
	adc  c                                           ; $7ce4: $89
	adc  b                                           ; $7ce5: $88
	adc  c                                           ; $7ce6: $89
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
	ld   a, b                                        ; $7f67: $78
	sbc  c                                           ; $7f68: $99
	sbc  b                                           ; $7f69: $98
	adc  c                                           ; $7f6a: $89
	sbc  d                                           ; $7f6b: $9a
	sbc  c                                           ; $7f6c: $99
	xor  b                                           ; $7f6d: $a8
	adc  d                                           ; $7f6e: $8a
	sbc  c                                           ; $7f6f: $99
	cp   c                                           ; $7f70: $b9
	sbc  c                                           ; $7f71: $99
	sbc  d                                           ; $7f72: $9a
	and  a                                           ; $7f73: $a7
	ld   a, c                                        ; $7f74: $79
	sbc  b                                           ; $7f75: $98
	ld   h, [hl]                                     ; $7f76: $66
	sbc  c                                           ; $7f77: $99
	xor  c                                           ; $7f78: $a9
	ld   a, b                                        ; $7f79: $78
	adc  b                                           ; $7f7a: $88
	add  [hl]                                        ; $7f7b: $86
	ld   d, l                                        ; $7f7c: $55
	ld   h, l                                        ; $7f7d: $65
	ld   b, e                                        ; $7f7e: $43
	ld   b, l                                        ; $7f7f: $45
	ld   d, [hl]                                     ; $7f80: $56
	ld   d, l                                        ; $7f81: $55
	ld   a, b                                        ; $7f82: $78
	sbc  b                                           ; $7f83: $98
	ld   a, b                                        ; $7f84: $78
	adc  c                                           ; $7f85: $89
	sbc  c                                           ; $7f86: $99
	sbc  b                                           ; $7f87: $98
	sbc  c                                           ; $7f88: $99
	sbc  c                                           ; $7f89: $99
	adc  c                                           ; $7f8a: $89
	sbc  c                                           ; $7f8b: $99
	sbc  b                                           ; $7f8c: $98
	sbc  b                                           ; $7f8d: $98
	add  a                                           ; $7f8e: $87
	ld   h, [hl]                                     ; $7f8f: $66
	halt                                             ; $7f90: $76
	ld   b, d                                        ; $7f91: $42
	ld   [hl+], a                                    ; $7f92: $22
	ld   de, $1111                                   ; $7f93: $11 $11 $11
	ld   de, $4512                                   ; $7f96: $11 $12 $45
	adc  e                                           ; $7f99: $8b
	rst  $38                                         ; $7f9a: $ff
	rst  $38                                         ; $7f9b: $ff
	rst  $38                                         ; $7f9c: $ff
	rst  $38                                         ; $7f9d: $ff
	rst  $38                                         ; $7f9e: $ff
	db   $fd                                         ; $7f9f: $fd
	xor  c                                           ; $7fa0: $a9
	ld   h, h                                        ; $7fa1: $64
	ld   b, h                                        ; $7fa2: $44
	ld   d, a                                        ; $7fa3: $57
	sbc  c                                           ; $7fa4: $99
	xor  d                                           ; $7fa5: $aa
	and  a                                           ; $7fa6: $a7
	ld   d, e                                        ; $7fa7: $53
	ld   de, $1111                                   ; $7fa8: $11 $11 $11
	ld   de, $1211                                   ; $7fab: $11 $11 $12
	sbc  a                                           ; $7fae: $9f
	rst  $38                                         ; $7faf: $ff
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	cp   $85                                         ; $7fb3: $fe $85
	ld   h, l                                        ; $7fb5: $65
	ld   hl, $af13                                   ; $7fb6: $21 $13 $af
	rst  $38                                         ; $7fb9: $ff
	rst  $38                                         ; $7fba: $ff
	db   $fc                                         ; $7fbb: $fc
	add  c                                           ; $7fbc: $81
	ld   de, $1111                                   ; $7fbd: $11 $11 $11
	ld   de, $4c11                                   ; $7fc0: $11 $11 $4c
	rst  $38                                         ; $7fc3: $ff
	rst  $38                                         ; $7fc4: $ff
	rst  $38                                         ; $7fc5: $ff
	rst  $38                                         ; $7fc6: $ff
	rst  $38                                         ; $7fc7: $ff
	ld   sp, hl                                      ; $7fc8: $f9
	ld   sp, $3711                                   ; $7fc9: $31 $11 $37
	xor  l                                           ; $7fcc: $ad
	rst  $38                                         ; $7fcd: $ff
	rst  $38                                         ; $7fce: $ff
	rst  $38                                         ; $7fcf: $ff
	and  e                                           ; $7fd0: $a3
	ld   de, $1111                                   ; $7fd1: $11 $11 $11
	ld   de, $1111                                   ; $7fd4: $11 $11 $11
	cp   a                                           ; $7fd7: $bf
	rst  $38                                         ; $7fd8: $ff
	rst  $38                                         ; $7fd9: $ff
	rst  $38                                         ; $7fda: $ff
	rst  $38                                         ; $7fdb: $ff
	push bc                                          ; $7fdc: $c5
	ld   [hl-], a                                    ; $7fdd: $32
	inc  hl                                          ; $7fde: $23
	scf                                              ; $7fdf: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fe0: $cf
	rst  $38                                         ; $7fe1: $ff
	rst  $38                                         ; $7fe2: $ff
	rst  $38                                         ; $7fe3: $ff
	ld   sp, hl                                      ; $7fe4: $f9
	ld   hl, $1111                                   ; $7fe5: $21 $11 $11
	ld   de, $1111                                   ; $7fe8: $11 $11 $11
	add  hl, de                                      ; $7feb: $19
	rst  $38                                         ; $7fec: $ff
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	rst  $38                                         ; $7fef: $ff
	db   $fd                                         ; $7ff0: $fd
	jp   z, $aa57                                    ; $7ff1: $ca $57 $aa

	rst  $38                                         ; $7ff4: $ff
	rst  $38                                         ; $7ff5: $ff
	rst  $38                                         ; $7ff6: $ff
	rst  $38                                         ; $7ff7: $ff
	rst  $38                                         ; $7ff8: $ff
	and  l                                           ; $7ff9: $a5
	ld   de, $1111                                   ; $7ffa: $11 $11 $11
	ld   de, $1111                                   ; $7ffd: $11 $11 $11
