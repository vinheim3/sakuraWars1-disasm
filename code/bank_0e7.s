; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e7", ROMX[$4000], BANK[$e7]

	ld   sp, $8a25                                   ; $4000: $31 $25 $8a
	sbc  c                                           ; $4003: $99
	adc  c                                           ; $4004: $89
	cp   l                                           ; $4005: $bd
	ret                                              ; $4006: $c9


	ld   [hl], a                                     ; $4007: $77
	adc  d                                           ; $4008: $8a
	sub  [hl]                                        ; $4009: $96
	ld   sp, $8a25                                   ; $400a: $31 $25 $8a
	sbc  c                                           ; $400d: $99
	adc  c                                           ; $400e: $89
	cp   h                                           ; $400f: $bc
	ret                                              ; $4010: $c9


	ld   [hl], a                                     ; $4011: $77
	adc  e                                           ; $4012: $8b
	sub  [hl]                                        ; $4013: $96
	ld   sp, $8b25                                   ; $4014: $31 $25 $8b
	xor  d                                           ; $4017: $aa
	sbc  c                                           ; $4018: $99
	cp   h                                           ; $4019: $bc
	or   a                                           ; $401a: $b7
	ld   h, [hl]                                     ; $401b: $66
	sbc  d                                           ; $401c: $9a
	sub  [hl]                                        ; $401d: $96
	ld   [hl-], a                                    ; $401e: $32
	ld   b, a                                        ; $401f: $47
	cp   l                                           ; $4020: $bd
	cp   d                                           ; $4021: $ba
	adc  c                                           ; $4022: $89
	xor  d                                           ; $4023: $aa
	add  h                                           ; $4024: $84
	inc  [hl]                                        ; $4025: $34
	adc  e                                           ; $4026: $8b
	and  a                                           ; $4027: $a7
	ld   b, h                                        ; $4028: $44
	ld   a, d                                        ; $4029: $7a
	db   $dd                                         ; $402a: $dd
	cp   c                                           ; $402b: $b9
	ld   a, b                                        ; $402c: $78
	add  a                                           ; $402d: $87
	ld   sp, $bc26                                   ; $402e: $31 $26 $bc
	ret                                              ; $4031: $c9


	ld   h, a                                        ; $4032: $67
	xor  e                                           ; $4033: $ab
	res  2, [hl]                                     ; $4034: $cb $96
	ld   h, a                                        ; $4036: $67
	ld   d, e                                        ; $4037: $53
	ld   de, $ff6c                                   ; $4038: $11 $6c $ff
	ret  z                                           ; $403b: $c8

	ld   [hl], a                                     ; $403c: $77
	sbc  e                                           ; $403d: $9b
	xor  c                                           ; $403e: $a9
	ld   h, l                                        ; $403f: $65
	ld   h, l                                        ; $4040: $65
	ld   sp, $cf15                                   ; $4041: $31 $15 $cf
	rst  $38                                         ; $4044: $ff
	and  l                                           ; $4045: $a5
	ld   d, [hl]                                     ; $4046: $56
	adc  b                                           ; $4047: $88
	add  [hl]                                        ; $4048: $86
	ld   h, a                                        ; $4049: $67
	ld   h, h                                        ; $404a: $64
	ld   de, $ff5d                                   ; $404b: $11 $5d $ff
	ld   a, [$5743]                                  ; $404e: $fa $43 $57
	sbc  b                                           ; $4051: $98
	add  a                                           ; $4052: $87
	halt                                             ; $4053: $76
	ld   sp, $df14                                   ; $4054: $31 $14 $df
	rst  $38                                         ; $4057: $ff
	sub  h                                           ; $4058: $94
	inc  h                                           ; $4059: $24
	ld   a, c                                        ; $405a: $79
	xor  c                                           ; $405b: $a9
	ld   [hl], a                                     ; $405c: $77
	ld   h, e                                        ; $405d: $63
	ld   de, $ff3c                                   ; $405e: $11 $3c $ff
	ld   a, [$3631]                                  ; $4061: $fa $31 $36
	xor  e                                           ; $4064: $ab
	sbc  b                                           ; $4065: $98
	ld   [hl], l                                     ; $4066: $75
	ld   hl, $df14                                   ; $4067: $21 $14 $df
	rst  $38                                         ; $406a: $ff

jr_0e7_406b:
	sub  d                                           ; $406b: $92
	ld   [de], a                                     ; $406c: $12
	ld   a, d                                        ; $406d: $7a
	cp   d                                           ; $406e: $ba
	sbc  b                                           ; $406f: $98
	ld   d, d                                        ; $4070: $52
	ld   de, $ff4d                                   ; $4071: $11 $4d $ff
	ld   sp, hl                                      ; $4074: $f9
	ld   hl, $9c26                                   ; $4075: $21 $26 $9c
	cp   d                                           ; $4078: $ba
	add  l                                           ; $4079: $85
	ld   de, $ef14                                   ; $407a: $11 $14 $ef
	rst  $38                                         ; $407d: $ff
	add  c                                           ; $407e: $81
	ld   [de], a                                     ; $407f: $12
	ld   a, d                                        ; $4080: $7a
	cp   e                                           ; $4081: $bb
	sub  a                                           ; $4082: $97
	ld   d, c                                        ; $4083: $51
	ld   de, $ff4f                                   ; $4084: $11 $4f $ff
	rst  $30                                         ; $4087: $f7
	ld   de, $bc27                                   ; $4088: $11 $27 $bc
	xor  d                                           ; $408b: $aa
	ld   [hl], h                                     ; $408c: $74
	ld   de, rAUD1HIGH                                   ; $408d: $11 $14 $ff
	rst  $38                                         ; $4090: $ff
	ld   [hl], c                                     ; $4091: $71
	ld   [de], a                                     ; $4092: $12
	ld   a, e                                        ; $4093: $7b
	res  4, a                                        ; $4094: $cb $a7
	ld   b, c                                        ; $4096: $41
	ld   de, $ff5f                                   ; $4097: $11 $5f $ff
	or   $11                                         ; $409a: $f6 $11
	jr   z, jr_0e7_406b                              ; $409c: $28 $cd

	cp   d                                           ; $409e: $ba
	ld   h, e                                        ; $409f: $63
	ld   de, $ff16                                   ; $40a0: $11 $16 $ff
	rst  $38                                         ; $40a3: $ff
	ld   d, c                                        ; $40a4: $51
	inc  de                                          ; $40a5: $13
	sbc  e                                           ; $40a6: $9b
	jp   c, $31a6                                    ; $40a7: $da $a6 $31

	ld   de, $ff7f                                   ; $40aa: $11 $7f $ff
	db   $f4                                         ; $40ad: $f4
	ld   de, $dd49                                   ; $40ae: $11 $49 $dd
	cp   c                                           ; $40b1: $b9
	ld   d, d                                        ; $40b2: $52
	ld   de, $ff18                                   ; $40b3: $11 $18 $ff
	db   $fd                                         ; $40b6: $fd
	ld   sp, $9d14                                   ; $40b7: $31 $14 $9d
	db   $db                                         ; $40ba: $db
	sub  l                                           ; $40bb: $95
	ld   de, $bf11                                   ; $40bc: $11 $11 $bf
	rst  $38                                         ; $40bf: $ff
	or   d                                           ; $40c0: $b2
	ld   de, $dc6a                                   ; $40c1: $11 $6a $dc
	sbc  b                                           ; $40c4: $98
	ld   b, c                                        ; $40c5: $41
	ld   de, $ff3d                                   ; $40c6: $11 $3d $ff
	ld   hl, sp+$01                                  ; $40c9: $f8 $01
	rla                                              ; $40cb: $17
	cp   l                                           ; $40cc: $bd
	jp   z, $1173                                    ; $40cd: $ca $73 $11

	dec  d                                           ; $40d0: $15
	rst  $38                                         ; $40d1: $ff
	rst  $38                                         ; $40d2: $ff
	ld   h, c                                        ; $40d3: $61
	ld   [de], a                                     ; $40d4: $12
	sbc  e                                           ; $40d5: $9b
	jp   c, $3196                                    ; $40d6: $da $96 $31

	ld   de, $ff6f                                   ; $40d9: $11 $6f $ff
	push af                                          ; $40dc: $f5
	ld   de, $cd39                                   ; $40dd: $11 $39 $cd
	xor  b                                           ; $40e0: $a8
	ld   d, d                                        ; $40e1: $52
	ld   de, $ff1a                                   ; $40e2: $11 $1a $ff
	db   $fd                                         ; $40e5: $fd
	ld   hl, $ac15                                   ; $40e6: $21 $15 $ac
	jp   c, $1184                                    ; $40e9: $da $84 $11

	ld   [de], a                                     ; $40ec: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ed: $cf
	rst  $38                                         ; $40ee: $ff
	and  c                                           ; $40ef: $a1
	ld   de, $db7b                                   ; $40f0: $11 $7b $db
	sub  a                                           ; $40f3: $97
	ld   sp, $5f11                                   ; $40f4: $31 $11 $5f
	rst  $38                                         ; $40f7: $ff
	rst  $30                                         ; $40f8: $f7
	ld   de, $cd29                                   ; $40f9: $11 $29 $cd
	xor  c                                           ; $40fc: $a9
	ld   h, d                                        ; $40fd: $62
	ld   de, $ff17                                   ; $40fe: $11 $17 $ff
	rst  $38                                         ; $4101: $ff
	ld   b, c                                        ; $4102: $41
	inc  d                                           ; $4103: $14
	sbc  l                                           ; $4104: $9d
	reti                                             ; $4105: $d9


	add  h                                           ; $4106: $84
	ld   hl, $af12                                   ; $4107: $21 $12 $af
	rst  $38                                         ; $410a: $ff
	jp   nc, Jump_0e7_6a11                           ; $410b: $d2 $11 $6a

	call z, Call_0e7_4187                            ; $410e: $cc $87 $41
	ld   de, $ff3e                                   ; $4111: $11 $3e $ff
	ld   hl, sp+$11                                  ; $4114: $f8 $11
	add  hl, de                                      ; $4116: $19
	cp   [hl]                                        ; $4117: $be
	xor  b                                           ; $4118: $a8
	ld   h, d                                        ; $4119: $62
	ld   de, $ff16                                   ; $411a: $11 $16 $ff
	rst  $38                                         ; $411d: $ff
	ld   d, c                                        ; $411e: $51
	inc  d                                           ; $411f: $14
	sbc  e                                           ; $4120: $9b
	jp   c, $1184                                    ; $4121: $da $84 $11

	ld   [de], a                                     ; $4124: $12
	xor  a                                           ; $4125: $af
	rst  $38                                         ; $4126: $ff
	or   c                                           ; $4127: $b1
	ld   de, $dc7a                                   ; $4128: $11 $7a $dc
	add  a                                           ; $412b: $87
	ld   sp, $4f11                                   ; $412c: $31 $11 $4f
	rst  $38                                         ; $412f: $ff
	ld   hl, sp+$11                                  ; $4130: $f8 $11
	add  hl, hl                                      ; $4132: $29
	cp   l                                           ; $4133: $bd
	cp   b                                           ; $4134: $b8
	ld   [hl], d                                     ; $4135: $72
	ld   de, $ff17                                   ; $4136: $11 $17 $ff
	rst  $38                                         ; $4139: $ff
	ld   b, c                                        ; $413a: $41
	dec  d                                           ; $413b: $15
	xor  h                                           ; $413c: $ac
	reti                                             ; $413d: $d9


	add  h                                           ; $413e: $84
	ld   de, $cf12                                   ; $413f: $11 $12 $cf
	rst  $38                                         ; $4142: $ff
	or   c                                           ; $4143: $b1
	ld   de, $db8b                                   ; $4144: $11 $8b $db
	sub  a                                           ; $4147: $97
	ld   sp, $5f11                                   ; $4148: $31 $11 $5f
	rst  $38                                         ; $414b: $ff
	or   $11                                         ; $414c: $f6 $11
	add  hl, sp                                      ; $414e: $39
	cp   [hl]                                        ; $414f: $be
	xor  c                                           ; $4150: $a9
	ld   d, c                                        ; $4151: $51
	ld   de, $ff2c                                   ; $4152: $11 $2c $ff
	db   $fc                                         ; $4155: $fc
	ld   de, $ac18                                   ; $4156: $11 $18 $ac
	cp   b                                           ; $4159: $b8
	ld   [hl], h                                     ; $415a: $74
	ld   de, rAUD1HIGH                                   ; $415b: $11 $14 $ff
	rst  $38                                         ; $415e: $ff
	ld   [hl], c                                     ; $415f: $71
	ld   [de], a                                     ; $4160: $12
	sbc  e                                           ; $4161: $9b
	ld   [$1186], a                                  ; $4162: $ea $86 $11
	ld   de, $ffbf                                   ; $4165: $11 $bf $ff
	jp   nz, $7911                                   ; $4168: $c2 $11 $79

	db   $db                                         ; $416b: $db
	sbc  c                                           ; $416c: $99
	ld   b, c                                        ; $416d: $41
	ld   de, $ff4f                                   ; $416e: $11 $4f $ff
	or   $11                                         ; $4171: $f6 $11
	ld   a, [hl-]                                    ; $4173: $3a
	cp   l                                           ; $4174: $bd
	sbc  c                                           ; $4175: $99
	ld   d, c                                        ; $4176: $51
	ld   de, $ff2a                                   ; $4177: $11 $2a $ff
	ei                                               ; $417a: $fb
	ld   hl, $9c18                                   ; $417b: $21 $18 $9c
	xor  c                                           ; $417e: $a9
	ld   [hl], e                                     ; $417f: $73
	ld   de, $ff16                                   ; $4180: $11 $16 $ff
	rst  $38                                         ; $4183: $ff
	ld   b, c                                        ; $4184: $41
	ld   d, $ab                                      ; $4185: $16 $ab

Call_0e7_4187:
	ret  z                                           ; $4187: $c8

	add  e                                           ; $4188: $83
	ld   de, $ff15                                   ; $4189: $11 $15 $ff
	rst  $38                                         ; $418c: $ff
	ld   h, c                                        ; $418d: $61
	inc  d                                           ; $418e: $14
	xor  e                                           ; $418f: $ab
	ret  z                                           ; $4190: $c8

	add  l                                           ; $4191: $85
	ld   de, $cf12                                   ; $4192: $11 $12 $cf
	rst  $38                                         ; $4195: $ff
	sub  c                                           ; $4196: $91
	ld   [de], a                                     ; $4197: $12
	sbc  e                                           ; $4198: $9b
	reti                                             ; $4199: $d9


	ld   [hl], l                                     ; $419a: $75
	ld   de, $af11                                   ; $419b: $11 $11 $af
	rst  $38                                         ; $419e: $ff
	or   d                                           ; $419f: $b2
	ld   de, $c98a                                   ; $41a0: $11 $8a $c9
	halt                                             ; $41a3: $76
	ld   hl, $8f11                                   ; $41a4: $21 $11 $8f
	rst  $38                                         ; $41a7: $ff
	db   $e3                                         ; $41a8: $e3
	ld   de, $da7a                                   ; $41a9: $11 $7a $da
	halt                                             ; $41ac: $76
	ld   hl, $6f11                                   ; $41ad: $21 $11 $6f
	rst  $38                                         ; $41b0: $ff
	db   $f4                                         ; $41b1: $f4
	ld   de, $cb69                                   ; $41b2: $11 $69 $cb
	ld   [hl], a                                     ; $41b5: $77
	ld   hl, $7f11                                   ; $41b6: $21 $11 $7f
	rst  $38                                         ; $41b9: $ff
	db   $f4                                         ; $41ba: $f4
	ld   de, $ca7a                                   ; $41bb: $11 $7a $ca
	ld   [hl], a                                     ; $41be: $77
	ld   hl, $7f11                                   ; $41bf: $21 $11 $7f
	rst  $38                                         ; $41c2: $ff
	db   $f4                                         ; $41c3: $f4
	ld   de, $ca7a                                   ; $41c4: $11 $7a $ca
	halt                                             ; $41c7: $76
	ld   de, $8f11                                   ; $41c8: $11 $11 $8f
	rst  $38                                         ; $41cb: $ff
	db   $e3                                         ; $41cc: $e3
	ld   de, $ca89                                   ; $41cd: $11 $89 $ca
	halt                                             ; $41d0: $76
	ld   de, $9f11                                   ; $41d1: $11 $11 $9f
	rst  $38                                         ; $41d4: $ff
	db   $d3                                         ; $41d5: $d3
	ld   bc, $ca9a                                   ; $41d6: $01 $9a $ca
	ld   [hl], l                                     ; $41d9: $75
	ld   de, $bf11                                   ; $41da: $11 $11 $bf
	rst  $38                                         ; $41dd: $ff
	or   d                                           ; $41de: $b2
	ld   [de], a                                     ; $41df: $12
	sbc  d                                           ; $41e0: $9a
	ret                                              ; $41e1: $c9


	ld   h, h                                        ; $41e2: $64
	ld   de, $cf13                                   ; $41e3: $11 $13 $cf
	rst  $38                                         ; $41e6: $ff
	sub  d                                           ; $41e7: $92
	inc  d                                           ; $41e8: $14
	cp   e                                           ; $41e9: $bb
	rst  ToBoot                                         ; $41ea: $c7
	ld   h, e                                        ; $41eb: $63
	ld   de, $ff15                                   ; $41ec: $11 $15 $ff
	rst  $38                                         ; $41ef: $ff
	ld   h, c                                        ; $41f0: $61
	ld   d, $bb                                      ; $41f1: $16 $bb
	add  $61                                         ; $41f3: $c6 $61
	ld   de, $ff18                                   ; $41f5: $11 $18 $ff
	rst  $38                                         ; $41f8: $ff
	ld   sp, $bd18                                   ; $41f9: $31 $18 $bd
	and  [hl]                                        ; $41fc: $a6
	ld   b, c                                        ; $41fd: $41
	ld   de, $ff2d                                   ; $41fe: $11 $2d $ff
	ld   a, [$4b21]                                  ; $4201: $fa $21 $4b
	cp   h                                           ; $4204: $bc
	halt                                             ; $4205: $76
	ld   sp, $5f11                                   ; $4206: $31 $11 $5f
	rst  $38                                         ; $4209: $ff
	rst  $30                                         ; $420a: $f7
	ld   de, $cb7b                                   ; $420b: $11 $7b $cb
	ld   h, l                                        ; $420e: $65
	ld   de, $af11                                   ; $420f: $11 $11 $af
	rst  $38                                         ; $4212: $ff
	db   $d3                                         ; $4213: $d3
	inc  de                                          ; $4214: $13
	xor  e                                           ; $4215: $ab
	ret                                              ; $4216: $c9


	ld   h, h                                        ; $4217: $64
	ld   de, rAUD1HIGH                                   ; $4218: $11 $14 $ff
	rst  $38                                         ; $421b: $ff
	add  d                                           ; $421c: $82
	ld   d, $cd                                      ; $421d: $16 $cd
	or   [hl]                                        ; $421f: $b6
	ld   d, c                                        ; $4220: $51
	ld   de, $ff1a                                   ; $4221: $11 $1a $ff
	db   $fd                                         ; $4224: $fd
	ld   b, c                                        ; $4225: $41
	ld   c, d                                        ; $4226: $4a
	call $2185                                       ; $4227: $cd $85 $21
	ld   de, $ff5f                                   ; $422a: $11 $5f $ff
	or   $22                                         ; $422d: $f6 $22
	adc  h                                           ; $422f: $8c
	jp   c, $1154                                    ; $4230: $da $54 $11

	ld   de, $ffcf                                   ; $4233: $11 $cf $ff
	and  d                                           ; $4236: $a2
	ld   d, $de                                      ; $4237: $16 $de
	rst  $10                                         ; $4239: $d7
	ld   b, c                                        ; $423a: $41
	ld   de, $ff1a                                   ; $423b: $11 $1a $ff
	ei                                               ; $423e: $fb
	ld   sp, $ed4c                                   ; $423f: $31 $4c $ed
	add  l                                           ; $4242: $85
	ld   sp, $5f11                                   ; $4243: $31 $11 $5f
	rst  $38                                         ; $4246: $ff
	or   $12                                         ; $4247: $f6 $12
	sbc  h                                           ; $4249: $9c
	call c, $1164                                    ; $424a: $dc $64 $11
	ld   [de], a                                     ; $424d: $12
	rst  $38                                         ; $424e: $ff
	rst  $38                                         ; $424f: $ff
	ld   h, c                                        ; $4250: $61
	add  hl, de                                      ; $4251: $19
	rst  $28                                         ; $4252: $ef
	push bc                                          ; $4253: $c5
	ld   b, c                                        ; $4254: $41
	ld   de, $ff1c                                   ; $4255: $11 $1c $ff
	ld   sp, hl                                      ; $4258: $f9
	ld   sp, $ec7c                                   ; $4259: $31 $7c $ec
	ld   [hl], l                                     ; $425c: $75
	ld   de, $bf11                                   ; $425d: $11 $11 $bf
	rst  $38                                         ; $4260: $ff
	sub  e                                           ; $4261: $93
	ld   d, $dd                                      ; $4262: $16 $dd
	rst  ToBoot                                         ; $4264: $c7
	ld   b, d                                        ; $4265: $42
	ld   de, $ff19                                   ; $4266: $11 $19 $ff
	ei                                               ; $4269: $fb
	ld   b, d                                        ; $426a: $42
	ld   l, l                                        ; $426b: $6d
	call c, $2174                                    ; $426c: $dc $74 $21
	ld   de, $ff9f                                   ; $426f: $11 $9f $ff
	or   e                                           ; $4272: $b3
	dec  d                                           ; $4273: $15
	sbc  $d7                                         ; $4274: $de $d7
	ld   b, d                                        ; $4276: $42
	ld   de, $ff18                                   ; $4277: $11 $18 $ff
	db   $fc                                         ; $427a: $fc
	ld   sp, $fe5d                                   ; $427b: $31 $5d $fe
	add  h                                           ; $427e: $84
	ld   de, $8f11                                   ; $427f: $11 $11 $8f
	rst  $38                                         ; $4282: $ff
	or   e                                           ; $4283: $b3

Jump_0e7_4284:
	ld   d, $ef                                      ; $4284: $16 $ef
	rst  $10                                         ; $4286: $d7
	ld   b, c                                        ; $4287: $41
	ld   de, $ff1a                                   ; $4288: $11 $1a $ff
	ld   a, [$6d32]                                  ; $428b: $fa $32 $6d
	db   $ed                                         ; $428e: $ed
	ld   [hl], h                                     ; $428f: $74
	ld   de, $cf11                                   ; $4290: $11 $11 $cf
	rst  $38                                         ; $4293: $ff
	add  e                                           ; $4294: $83
	jr   z, @-$10                                    ; $4295: $28 $ee

	or   l                                           ; $4297: $b5
	ld   b, c                                        ; $4298: $41
	ld   de, $ff1e                                   ; $4299: $11 $1e $ff
	or   $32                                         ; $429c: $f6 $32
	xor  l                                           ; $429e: $ad
	db   $db                                         ; $429f: $db
	ld   d, h                                        ; $42a0: $54
	ld   de, rAUD1HIGH                                   ; $42a1: $11 $14 $ff
	cp   $42                                         ; $42a4: $fe $42
	ld   e, l                                        ; $42a6: $5d
	call c, $2174                                    ; $42a7: $dc $74 $21
	ld   de, $ff8f                                   ; $42aa: $11 $8f $ff
	or   h                                           ; $42ad: $b4
	scf                                              ; $42ae: $37
	db   $ed                                         ; $42af: $ed
	or   [hl]                                        ; $42b0: $b6
	ld   d, c                                        ; $42b1: $51
	ld   de, $ff1e                                   ; $42b2: $11 $1e $ff
	rst  $30                                         ; $42b5: $f7
	ld   b, h                                        ; $42b6: $44
	cp   [hl]                                        ; $42b7: $be
	ret  c                                           ; $42b8: $d8

	ld   b, h                                        ; $42b9: $44
	ld   de, rAUD1HIGH                                   ; $42ba: $11 $14 $ff
	db   $fd                                         ; $42bd: $fd
	ld   h, h                                        ; $42be: $64
	ld   l, l                                        ; $42bf: $6d
	bit  4, l                                        ; $42c0: $cb $65
	ld   de, $cf11                                   ; $42c2: $11 $11 $cf
	rst  $38                                         ; $42c5: $ff
	add  [hl]                                        ; $42c6: $86
	ld   e, h                                        ; $42c7: $5c
	db   $db                                         ; $42c8: $db
	add  h                                           ; $42c9: $84
	ld   d, c                                        ; $42ca: $51
	ld   de, $ff4f                                   ; $42cb: $11 $4f $ff
	ret                                              ; $42ce: $c9


	ld   a, c                                        ; $42cf: $79
	db   $eb                                         ; $42d0: $eb
	and  h                                           ; $42d1: $a4
	ld   d, c                                        ; $42d2: $51
	ld   de, $ff1b                                   ; $42d3: $11 $1b $ff
	ld   hl, sp-$68                                  ; $42d6: $f8 $98
	db   $ed                                         ; $42d8: $ed
	and  [hl]                                        ; $42d9: $a6
	ld   b, h                                        ; $42da: $44
	ld   de, $ef14                                   ; $42db: $11 $14 $ef
	ld   a, [$ce98]                                  ; $42de: $fa $98 $ce
	cp   c                                           ; $42e1: $b9
	ld   b, l                                        ; $42e2: $45
	ld   de, $be11                                   ; $42e3: $11 $11 $be
	db   $fc                                         ; $42e6: $fc
	adc  d                                           ; $42e7: $8a
	cp   [hl]                                        ; $42e8: $be
	cp   d                                           ; $42e9: $ba
	ld   d, l                                        ; $42ea: $55
	ld   b, c                                        ; $42eb: $41
	ld   de, $fd6c                                   ; $42ec: $11 $6c $fd
	sbc  b                                           ; $42ef: $98
	sbc  h                                           ; $42f0: $9c
	res  0, l                                        ; $42f1: $cb $85
	ld   [hl], h                                     ; $42f3: $74
	ld   [hl-], a                                    ; $42f4: $32
	ld   c, c                                        ; $42f5: $49
	cp   l                                           ; $42f6: $bd
	add  a                                           ; $42f7: $87
	ld   a, d                                        ; $42f8: $7a
	cp   e                                           ; $42f9: $bb
	and  a                                           ; $42fa: $a7
	ld   [hl], a                                     ; $42fb: $77
	ld   h, l                                        ; $42fc: $65
	ld   d, a                                        ; $42fd: $57
	xor  e                                           ; $42fe: $ab
	and  a                                           ; $42ff: $a7
	ld   h, a                                        ; $4300: $67
	sbc  c                                           ; $4301: $99
	sub  a                                           ; $4302: $97
	ld   [hl], a                                     ; $4303: $77
	add  a                                           ; $4304: $87
	ld   a, b                                        ; $4305: $78
	xor  e                                           ; $4306: $ab
	xor  b                                           ; $4307: $a8
	halt                                             ; $4308: $76
	ld   a, b                                        ; $4309: $78
	add  a                                           ; $430a: $87
	ld   [hl], a                                     ; $430b: $77
	ld   a, b                                        ; $430c: $78
	adc  b                                           ; $430d: $88
	sbc  c                                           ; $430e: $99
	cp   c                                           ; $430f: $b9
	add  a                                           ; $4310: $87
	ld   [hl], a                                     ; $4311: $77
	ld   [hl], a                                     ; $4312: $77
	ld   [hl], a                                     ; $4313: $77
	ld   a, b                                        ; $4314: $78
	adc  c                                           ; $4315: $89
	sbc  d                                           ; $4316: $9a
	sbc  c                                           ; $4317: $99
	sub  a                                           ; $4318: $97
	ld   [hl], a                                     ; $4319: $77
	ld   [hl], a                                     ; $431a: $77
	ld   [hl], a                                     ; $431b: $77
	adc  b                                           ; $431c: $88
	adc  c                                           ; $431d: $89
	adc  c                                           ; $431e: $89
	sbc  b                                           ; $431f: $98
	adc  b                                           ; $4320: $88
	ld   [hl], a                                     ; $4321: $77
	ld   [hl], a                                     ; $4322: $77
	ld   a, b                                        ; $4323: $78
	adc  c                                           ; $4324: $89
	adc  b                                           ; $4325: $88
	sbc  c                                           ; $4326: $99
	sbc  c                                           ; $4327: $99
	adc  b                                           ; $4328: $88
	ld   [hl], a                                     ; $4329: $77
	ld   [hl], a                                     ; $432a: $77
	ld   a, b                                        ; $432b: $78
	adc  c                                           ; $432c: $89
	adc  b                                           ; $432d: $88
	sbc  b                                           ; $432e: $98
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	add  a                                           ; $4331: $87
	ld   [hl], a                                     ; $4332: $77
	adc  b                                           ; $4333: $88
	adc  c                                           ; $4334: $89
	sbc  c                                           ; $4335: $99
	adc  b                                           ; $4336: $88
	adc  b                                           ; $4337: $88
	sbc  b                                           ; $4338: $98
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	adc  b                                           ; $433b: $88
	adc  b                                           ; $433c: $88
	adc  c                                           ; $433d: $89
	adc  b                                           ; $433e: $88
	adc  b                                           ; $433f: $88
	adc  c                                           ; $4340: $89
	sbc  b                                           ; $4341: $98
	adc  b                                           ; $4342: $88
	ld   [hl], a                                     ; $4343: $77
	adc  b                                           ; $4344: $88
	adc  c                                           ; $4345: $89
	adc  b                                           ; $4346: $88
	add  a                                           ; $4347: $87
	adc  b                                           ; $4348: $88
	sbc  c                                           ; $4349: $99
	sbc  b                                           ; $434a: $98
	add  a                                           ; $434b: $87
	ld   a, b                                        ; $434c: $78
	adc  c                                           ; $434d: $89
	sbc  b                                           ; $434e: $98
	add  a                                           ; $434f: $87
	ld   a, b                                        ; $4350: $78
	adc  c                                           ; $4351: $89
	adc  c                                           ; $4352: $89

Jump_0e7_4353:
	adc  b                                           ; $4353: $88
	ld   [hl], a                                     ; $4354: $77
	adc  c                                           ; $4355: $89
	sbc  b                                           ; $4356: $98
	adc  b                                           ; $4357: $88
	ld   [hl], a                                     ; $4358: $77
	adc  b                                           ; $4359: $88
	sbc  b                                           ; $435a: $98
	sbc  b                                           ; $435b: $98
	add  a                                           ; $435c: $87
	adc  b                                           ; $435d: $88
	sbc  c                                           ; $435e: $99
	adc  b                                           ; $435f: $88
	adc  b                                           ; $4360: $88
	adc  b                                           ; $4361: $88
	adc  c                                           ; $4362: $89
	adc  c                                           ; $4363: $89
	adc  b                                           ; $4364: $88
	ld   a, b                                        ; $4365: $78
	adc  b                                           ; $4366: $88
	adc  b                                           ; $4367: $88
	adc  b                                           ; $4368: $88
	adc  b                                           ; $4369: $88
	adc  b                                           ; $436a: $88
	sbc  c                                           ; $436b: $99
	sbc  b                                           ; $436c: $98
	adc  b                                           ; $436d: $88
	adc  b                                           ; $436e: $88
	adc  b                                           ; $436f: $88
	adc  b                                           ; $4370: $88
	adc  b                                           ; $4371: $88
	adc  b                                           ; $4372: $88
	adc  c                                           ; $4373: $89
	sbc  b                                           ; $4374: $98
	adc  b                                           ; $4375: $88
	adc  b                                           ; $4376: $88
	adc  b                                           ; $4377: $88
	adc  b                                           ; $4378: $88
	adc  c                                           ; $4379: $89
	adc  b                                           ; $437a: $88
	adc  b                                           ; $437b: $88
	adc  b                                           ; $437c: $88
	adc  b                                           ; $437d: $88
	adc  b                                           ; $437e: $88
	adc  b                                           ; $437f: $88
	adc  b                                           ; $4380: $88
	adc  c                                           ; $4381: $89
	adc  b                                           ; $4382: $88
	adc  b                                           ; $4383: $88
	adc  b                                           ; $4384: $88
	adc  b                                           ; $4385: $88
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	sbc  b                                           ; $438a: $98
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

Jump_0e7_4475:
	adc  b                                           ; $4475: $88
	adc  b                                           ; $4476: $88
	adc  b                                           ; $4477: $88
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

Call_0e7_4495:
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
	adc  b                                           ; $4586: $88
	adc  b                                           ; $4587: $88
	adc  b                                           ; $4588: $88
	adc  b                                           ; $4589: $88
	adc  b                                           ; $458a: $88
	adc  b                                           ; $458b: $88
	adc  b                                           ; $458c: $88
	adc  b                                           ; $458d: $88
	adc  b                                           ; $458e: $88
	adc  b                                           ; $458f: $88
	adc  b                                           ; $4590: $88
	adc  b                                           ; $4591: $88
	adc  b                                           ; $4592: $88
	adc  b                                           ; $4593: $88
	adc  b                                           ; $4594: $88
	adc  b                                           ; $4595: $88
	adc  b                                           ; $4596: $88
	adc  b                                           ; $4597: $88
	adc  b                                           ; $4598: $88
	adc  b                                           ; $4599: $88
	adc  b                                           ; $459a: $88
	adc  b                                           ; $459b: $88
	adc  b                                           ; $459c: $88
	adc  c                                           ; $459d: $89
	adc  b                                           ; $459e: $88
	add  a                                           ; $459f: $87
	adc  b                                           ; $45a0: $88
	ld   a, b                                        ; $45a1: $78
	sbc  b                                           ; $45a2: $98
	add  a                                           ; $45a3: $87
	ld   a, c                                        ; $45a4: $79
	sbc  d                                           ; $45a5: $9a
	add  a                                           ; $45a6: $87
	sbc  c                                           ; $45a7: $99
	adc  b                                           ; $45a8: $88
	adc  c                                           ; $45a9: $89
	ld   a, c                                        ; $45aa: $79
	sub  a                                           ; $45ab: $97
	adc  c                                           ; $45ac: $89
	sub  a                                           ; $45ad: $97
	ld   h, a                                        ; $45ae: $67
	adc  b                                           ; $45af: $88
	halt                                             ; $45b0: $76
	ld   a, d                                        ; $45b1: $7a
	add  a                                           ; $45b2: $87
	ld   h, a                                        ; $45b3: $67
	add  a                                           ; $45b4: $87
	ld   h, a                                        ; $45b5: $67
	ld   [hl], a                                     ; $45b6: $77
	ld   a, d                                        ; $45b7: $7a
	xor  e                                           ; $45b8: $ab
	res  2, l                                        ; $45b9: $cb $95
	ld   sp, $6658                                   ; $45bb: $31 $58 $66
	ld   c, c                                        ; $45be: $49
	xor  d                                           ; $45bf: $aa
	cp   e                                           ; $45c0: $bb
	db   $fd                                         ; $45c1: $fd
	call c, $31b8                                    ; $45c2: $dc $b8 $31
	ld   de, $7445                                   ; $45c5: $11 $45 $74
	rst  $28                                         ; $45c8: $ef
	rst  $38                                         ; $45c9: $ff
	rst  $38                                         ; $45ca: $ff
	jp   z, $3197                                    ; $45cb: $ca $97 $31

	ld   de, $bb15                                   ; $45ce: $11 $15 $bb
	adc  a                                           ; $45d1: $8f
	rst  $38                                         ; $45d2: $ff
	db   $fd                                         ; $45d3: $fd
	and  $81                                         ; $45d4: $e6 $81
	ld   b, c                                        ; $45d6: $41
	ld   de, $9f1a                                   ; $45d7: $11 $1a $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45da: $cf
	rst  $38                                         ; $45db: $ff
	ld   a, [$41d4]                                  ; $45dc: $fa $d4 $41
	ld   de, $1d11                                   ; $45df: $11 $11 $1d
	rst  JumpTable                                         ; $45e2: $df
	rst  $38                                         ; $45e3: $ff
	rst  $38                                         ; $45e4: $ff
	ld   sp, hl                                      ; $45e5: $f9
	push bc                                          ; $45e6: $c5
	ld   de, $1111                                   ; $45e7: $11 $11 $11
	ld   c, a                                        ; $45ea: $4f
	rst  $38                                         ; $45eb: $ff
	rst  $38                                         ; $45ec: $ff
	rst  $38                                         ; $45ed: $ff
	xor  d                                           ; $45ee: $aa
	add  c                                           ; $45ef: $81
	ld   de, $1211                                   ; $45f0: $11 $11 $12
	rst  JumpTable                                         ; $45f3: $df
	rst  $38                                         ; $45f4: $ff
	rst  $38                                         ; $45f5: $ff
	db   $fd                                         ; $45f6: $fd
	sbc  b                                           ; $45f7: $98
	ld   hl, $1111                                   ; $45f8: $21 $11 $11
	ld   e, h                                        ; $45fb: $5c
	rst  $38                                         ; $45fc: $ff
	rst  $38                                         ; $45fd: $ff
	rst  $38                                         ; $45fe: $ff
	call c, $1171                                    ; $45ff: $dc $71 $11
	ld   de, $ff19                                   ; $4602: $11 $19 $ff
	rst  $38                                         ; $4605: $ff
	rst  $38                                         ; $4606: $ff
	call z, $11c6                                    ; $4607: $cc $c6 $11
	ld   de, $cf11                                   ; $460a: $11 $11 $cf
	rst  $38                                         ; $460d: $ff
	rst  $38                                         ; $460e: $ff
	db   $ed                                         ; $460f: $ed
	bit  0, c                                        ; $4610: $cb $41
	ld   de, $4e11                                   ; $4612: $11 $11 $4e
	rst  $38                                         ; $4615: $ff
	rst  $38                                         ; $4616: $ff
	cp   $cc                                         ; $4617: $fe $cc
	and  e                                           ; $4619: $a3
	ld   de, $1611                                   ; $461a: $11 $11 $16
	rst  $38                                         ; $461d: $ff
	rst  $38                                         ; $461e: $ff
	rst  $38                                         ; $461f: $ff
	set  1, b                                        ; $4620: $cb $c8
	ld   sp, $1111                                   ; $4622: $31 $11 $11
	adc  a                                           ; $4625: $8f
	rst  $38                                         ; $4626: $ff
	rst  $38                                         ; $4627: $ff
	jp   c, $85ac                                    ; $4628: $da $ac $85

	ld   de, $1411                                   ; $462b: $11 $11 $14
	rst  $38                                         ; $462e: $ff
	rst  $38                                         ; $462f: $ff
	cp   $9a                                         ; $4630: $fe $9a
	xor  c                                           ; $4632: $a9
	ld   d, d                                        ; $4633: $52
	ld   de, $1d11                                   ; $4634: $11 $11 $1d
	rst  $38                                         ; $4637: $ff
	rst  $38                                         ; $4638: $ff
	db   $fc                                         ; $4639: $fc
	xor  e                                           ; $463a: $ab
	xor  b                                           ; $463b: $a8
	ld   b, c                                        ; $463c: $41
	ld   de, $4f11                                   ; $463d: $11 $11 $4f
	rst  $38                                         ; $4640: $ff
	rst  $38                                         ; $4641: $ff
	db   $db                                         ; $4642: $db
	sbc  d                                           ; $4643: $9a
	sub  a                                           ; $4644: $97
	ld   hl, $1111                                   ; $4645: $21 $11 $11
	ld   a, a                                        ; $4648: $7f
	rst  $38                                         ; $4649: $ff
	rst  $38                                         ; $464a: $ff
	cp   e                                           ; $464b: $bb
	sbc  d                                           ; $464c: $9a
	sbc  b                                           ; $464d: $98
	ld   b, c                                        ; $464e: $41
	ld   de, $4f11                                   ; $464f: $11 $11 $4f
	rst  $38                                         ; $4652: $ff
	rst  $38                                         ; $4653: $ff
	ret                                              ; $4654: $c9


	adc  c                                           ; $4655: $89
	sub  a                                           ; $4656: $97
	ld   d, c                                        ; $4657: $51
	ld   de, $3d11                                   ; $4658: $11 $11 $3d
	rst  $38                                         ; $465b: $ff
	rst  $38                                         ; $465c: $ff
	db   $db                                         ; $465d: $db
	cp   c                                           ; $465e: $b9
	sub  [hl]                                        ; $465f: $96
	ld   d, c                                        ; $4660: $51
	ld   de, $1c11                                   ; $4661: $11 $11 $1c
	rst  $38                                         ; $4664: $ff
	rst  $38                                         ; $4665: $ff
	ei                                               ; $4666: $fb
	xor  d                                           ; $4667: $aa
	xor  b                                           ; $4668: $a8
	ld   [hl], c                                     ; $4669: $71
	ld   de, $1711                                   ; $466a: $11 $11 $17
	rst  $38                                         ; $466d: $ff
	rst  $38                                         ; $466e: $ff
	ei                                               ; $466f: $fb
	and  a                                           ; $4670: $a7
	sbc  d                                           ; $4671: $9a
	add  [hl]                                        ; $4672: $86
	ld   de, $1211                                   ; $4673: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4676: $cf
	rst  $38                                         ; $4677: $ff
	rst  $38                                         ; $4678: $ff
	xor  b                                           ; $4679: $a8
	adc  h                                           ; $467a: $8c
	sub  a                                           ; $467b: $97
	ld   sp, $1111                                   ; $467c: $31 $11 $11
	ld   l, [hl]                                     ; $467f: $6e
	rst  $38                                         ; $4680: $ff
	rst  $38                                         ; $4681: $ff
	jp   c, $ca79                                    ; $4682: $da $79 $ca

	ld   [hl], c                                     ; $4685: $71
	ld   de, $1811                                   ; $4686: $11 $11 $18
	rst  $28                                         ; $4689: $ef
	rst  $38                                         ; $468a: $ff
	db   $fc                                         ; $468b: $fc
	sbc  c                                           ; $468c: $99
	xor  d                                           ; $468d: $aa
	add  l                                           ; $468e: $85
	ld   hl, $1211                                   ; $468f: $21 $11 $12
	cp   a                                           ; $4692: $bf
	rst  $38                                         ; $4693: $ff
	rst  $38                                         ; $4694: $ff
	jp   hl                                          ; $4695: $e9


	ld   a, c                                        ; $4696: $79
	adc  b                                           ; $4697: $88
	ld   h, e                                        ; $4698: $63
	ld   de, $1b11                                   ; $4699: $11 $11 $1b
	rst  $38                                         ; $469c: $ff
	rst  $38                                         ; $469d: $ff
	db   $fd                                         ; $469e: $fd
	xor  b                                           ; $469f: $a8
	adc  d                                           ; $46a0: $8a
	add  a                                           ; $46a1: $87
	ld   sp, $1111                                   ; $46a2: $31 $11 $11
	adc  a                                           ; $46a5: $8f
	rst  $38                                         ; $46a6: $ff
	rst  $38                                         ; $46a7: $ff
	cp   $87                                         ; $46a8: $fe $87
	adc  d                                           ; $46aa: $8a
	and  h                                           ; $46ab: $a4
	ld   de, $1511                                   ; $46ac: $11 $11 $15
	rst  JumpTable                                         ; $46af: $df
	rst  $38                                         ; $46b0: $ff
	rst  $38                                         ; $46b1: $ff
	ld   [$8996], a                                  ; $46b2: $ea $96 $89
	ld   h, e                                        ; $46b5: $63
	ld   de, $1b11                                   ; $46b6: $11 $11 $1b
	rst  $38                                         ; $46b9: $ff
	xor  $ff                                         ; $46ba: $ee $ff
	ret  z                                           ; $46bc: $c8

	ld   a, b                                        ; $46bd: $78
	sbc  c                                           ; $46be: $99
	ld   h, e                                        ; $46bf: $63
	ld   de, $6d11                                   ; $46c0: $11 $11 $6d
	db   $fc                                         ; $46c3: $fc
	rst  $28                                         ; $46c4: $ef
	db   $fc                                         ; $46c5: $fc
	adc  b                                           ; $46c6: $88
	adc  c                                           ; $46c7: $89
	xor  c                                           ; $46c8: $a9
	ld   h, c                                        ; $46c9: $61
	ld   de, $af11                                   ; $46ca: $11 $11 $af
	db   $eb                                         ; $46cd: $eb
	rst  JumpTable                                         ; $46ce: $df
	db   $fc                                         ; $46cf: $fc
	xor  d                                           ; $46d0: $aa
	xor  d                                           ; $46d1: $aa
	sub  a                                           ; $46d2: $97
	ld   d, d                                        ; $46d3: $52
	ld   de, $bf11                                   ; $46d4: $11 $11 $bf
	reti                                             ; $46d7: $d9


	rst  $28                                         ; $46d8: $ef
	ei                                               ; $46d9: $fb
	sbc  c                                           ; $46da: $99
	xor  d                                           ; $46db: $aa
	sbc  b                                           ; $46dc: $98
	ld   d, d                                        ; $46dd: $52
	ld   de, $9f11                                   ; $46de: $11 $11 $9f
	ld   [$fddf], a                                  ; $46e1: $ea $df $fd
	adc  d                                           ; $46e4: $8a
	adc  b                                           ; $46e5: $88
	adc  b                                           ; $46e6: $88
	ld   [hl], e                                     ; $46e7: $73
	ld   de, $8d11                                   ; $46e8: $11 $11 $8d
	db   $eb                                         ; $46eb: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46ec: $cf
	rst  $38                                         ; $46ed: $ff
	xor  b                                           ; $46ee: $a8
	sbc  b                                           ; $46ef: $98
	sbc  b                                           ; $46f0: $98
	ld   [hl], h                                     ; $46f1: $74
	ld   de, $6f11                                   ; $46f2: $11 $11 $6f
	ei                                               ; $46f5: $fb
	xor  a                                           ; $46f6: $af
	rst  $38                                         ; $46f7: $ff
	or   a                                           ; $46f8: $b7
	ld   [hl], a                                     ; $46f9: $77
	adc  b                                           ; $46fa: $88
	add  [hl]                                        ; $46fb: $86
	ld   hl, $2d11                                   ; $46fc: $21 $11 $2d
	cp   $ac                                         ; $46ff: $fe $ac
	rst  $38                                         ; $4701: $ff
	reti                                             ; $4702: $d9


	adc  c                                           ; $4703: $89
	ld   [hl], a                                     ; $4704: $77
	adc  b                                           ; $4705: $88
	ld   h, d                                        ; $4706: $62
	ld   de, $df14                                   ; $4707: $11 $14 $df
	jp   c, $fbef                                    ; $470a: $da $ef $fb

	adc  c                                           ; $470d: $89
	add  a                                           ; $470e: $87
	adc  c                                           ; $470f: $89
	sub  h                                           ; $4710: $94
	ld   de, $7f11                                   ; $4711: $11 $11 $7f
	ld   a, [$ff9e]                                  ; $4714: $fa $9e $ff
	ret                                              ; $4717: $c9


	sbc  c                                           ; $4718: $99
	add  a                                           ; $4719: $87
	sbc  b                                           ; $471a: $98
	ld   b, c                                        ; $471b: $41
	ld   de, $ff15                                   ; $471c: $11 $15 $ff
	ld   [$fddf], a                                  ; $471f: $ea $df $fd
	sub  a                                           ; $4722: $97
	ld   h, a                                        ; $4723: $67
	sub  a                                           ; $4724: $97
	ld   h, e                                        ; $4725: $63
	ld   de, $7f11                                   ; $4726: $11 $11 $7f
	db   $fd                                         ; $4729: $fd
	sbc  h                                           ; $472a: $9c
	rst  $38                                         ; $472b: $ff
	jp   z, Jump_0e7_5787                            ; $472c: $ca $87 $57

	sbc  c                                           ; $472f: $99
	ld   d, c                                        ; $4730: $51
	ld   de, $df13                                   ; $4731: $11 $13 $df
	db   $fc                                         ; $4734: $fc
	xor  [hl]                                        ; $4735: $ae
	db   $fc                                         ; $4736: $fc
	sub  [hl]                                        ; $4737: $96
	sbc  b                                           ; $4738: $98
	sbc  b                                           ; $4739: $98
	add  [hl]                                        ; $473a: $86
	ld   [hl+], a                                    ; $473b: $22
	ld   de, $ef16                                   ; $473c: $11 $16 $ef
	db   $eb                                         ; $473f: $eb
	cp   a                                           ; $4740: $bf
	ei                                               ; $4741: $fb
	ld   h, [hl]                                     ; $4742: $66
	adc  c                                           ; $4743: $89
	sbc  d                                           ; $4744: $9a
	ld   [hl], h                                     ; $4745: $74
	ld   de, $3c11                                   ; $4746: $11 $11 $3c
	cp   $dc                                         ; $4749: $fe $dc
	db   $dd                                         ; $474b: $dd
	xor  e                                           ; $474c: $ab
	ld   a, c                                        ; $474d: $79
	sbc  c                                           ; $474e: $99
	xor  b                                           ; $474f: $a8
	add  d                                           ; $4750: $82
	ld   de, $3f11                                   ; $4751: $11 $11 $3f
	rst  $38                                         ; $4754: $ff
	jp   c, $bacc                                    ; $4755: $da $cc $ba

	ld   a, d                                        ; $4758: $7a
	xor  e                                           ; $4759: $ab
	and  a                                           ; $475a: $a7
	ld   b, c                                        ; $475b: $41
	ld   de, $5f11                                   ; $475c: $11 $11 $5f
	rst  $38                                         ; $475f: $ff
	ret                                              ; $4760: $c9


	cp   e                                           ; $4761: $bb
	ld   [$aa99], a                                  ; $4762: $ea $99 $aa
	ld   a, b                                        ; $4765: $78
	ld   b, d                                        ; $4766: $42
	ld   hl, $4f11                                   ; $4767: $21 $11 $4f
	rst  $38                                         ; $476a: $ff
	ret  z                                           ; $476b: $c8

	set  5, c                                        ; $476c: $cb $e9
	adc  d                                           ; $476e: $8a
	xor  h                                           ; $476f: $ac
	sbc  c                                           ; $4770: $99
	ld   sp, $1111                                   ; $4771: $31 $11 $11
	inc  l                                           ; $4774: $2c
	rst  $38                                         ; $4775: $ff
	ld   a, [$cb98]                                  ; $4776: $fa $98 $cb
	sbc  d                                           ; $4779: $9a
	sbc  d                                           ; $477a: $9a
	adc  b                                           ; $477b: $88
	ld   b, d                                        ; $477c: $42
	ld   sp, $1b11                                   ; $477d: $31 $11 $1b
	rst  $38                                         ; $4780: $ff
	ld   a, [$ccaa]                                  ; $4781: $fa $aa $cc
	adc  b                                           ; $4784: $88
	adc  e                                           ; $4785: $8b
	xor  b                                           ; $4786: $a8
	ld   h, e                                        ; $4787: $63
	ld   sp, $1711                                   ; $4788: $31 $11 $17
	rst  $38                                         ; $478b: $ff
	ld   sp, hl                                      ; $478c: $f9
	ld   a, h                                        ; $478d: $7c
	xor  h                                           ; $478e: $ac
	sbc  d                                           ; $478f: $9a
	sbc  d                                           ; $4790: $9a
	and  a                                           ; $4791: $a7
	ld   [hl], h                                     ; $4792: $74
	ld   b, d                                        ; $4793: $42
	ld   de, rAUD1LEN                                   ; $4794: $11 $11 $ff
	db   $fc                                         ; $4797: $fc
	ld   l, d                                        ; $4798: $6a
	xor  l                                           ; $4799: $ad
	jp   z, $d89a                                    ; $479a: $ca $9a $d8

	ld   [hl], e                                     ; $479d: $73
	inc  sp                                          ; $479e: $33
	ld   hl, $af11                                   ; $479f: $21 $11 $af
	rst  $38                                         ; $47a2: $ff
	sub  [hl]                                        ; $47a3: $96
	cp   e                                           ; $47a4: $bb
	ret  c                                           ; $47a5: $d8

	cp   d                                           ; $47a6: $ba
	xor  d                                           ; $47a7: $aa
	ld   h, a                                        ; $47a8: $67
	ld   b, [hl]                                     ; $47a9: $46
	ld   d, h                                        ; $47aa: $54
	ld   de, $ff19                                   ; $47ab: $11 $19 $ff
	ld   a, [$9cba]                                  ; $47ae: $fa $ba $9c
	sbc  h                                           ; $47b1: $9c
	cp   h                                           ; $47b2: $bc
	add  [hl]                                        ; $47b3: $86
	ld   [hl], l                                     ; $47b4: $75
	ld   [hl], h                                     ; $47b5: $74
	ld   hl, $7f11                                   ; $47b6: $21 $11 $7f
	rst  $38                                         ; $47b9: $ff
	cp   d                                           ; $47ba: $ba
	xor  b                                           ; $47bb: $a8
	cp   c                                           ; $47bc: $b9
	cp   e                                           ; $47bd: $bb
	cp   b                                           ; $47be: $b8
	ld   l, b                                        ; $47bf: $68
	ld   l, b                                        ; $47c0: $68
	ld   b, e                                        ; $47c1: $43
	ld   de, rAUD1LEN                                   ; $47c2: $11 $11 $ff
	cp   $88                                         ; $47c5: $fe $88
	ld   l, e                                        ; $47c7: $6b
	xor  l                                           ; $47c8: $ad
	call c, Call_0e7_75a6                            ; $47c9: $dc $a6 $75
	ld   h, l                                        ; $47cc: $65
	ld   d, d                                        ; $47cd: $52
	ld   de, $ff18                                   ; $47ce: $11 $18 $ff
	ld   a, [$9a88]                                  ; $47d1: $fa $88 $9a
	xor  h                                           ; $47d4: $ac
	call z, Call_0e7_64a7                            ; $47d5: $cc $a7 $64
	ld   h, l                                        ; $47d8: $65
	ld   b, c                                        ; $47d9: $41
	ld   de, $ff1f                                   ; $47da: $11 $1f $ff
	ld   sp, hl                                      ; $47dd: $f9
	ld   h, [hl]                                     ; $47de: $66
	res  7, h                                        ; $47df: $cb $bc
	bit  4, [hl]                                     ; $47e1: $cb $66
	ld   b, a                                        ; $47e3: $47
	sub  [hl]                                        ; $47e4: $96
	ld   b, c                                        ; $47e5: $41
	ld   de, $ff3e                                   ; $47e6: $11 $3e $ff
	ld   a, [$aa66]                                  ; $47e9: $fa $66 $aa
	call c, Call_0e7_66ba                            ; $47ec: $dc $ba $66
	ld   l, c                                        ; $47ef: $69
	xor  d                                           ; $47f0: $aa
	ld   d, c                                        ; $47f1: $51
	ld   de, $ff1c                                   ; $47f2: $11 $1c $ff
	ld   a, [$8965]                                  ; $47f5: $fa $65 $89
	xor  l                                           ; $47f8: $ad
	db   $dd                                         ; $47f9: $dd
	sub  [hl]                                        ; $47fa: $96
	ld   d, a                                        ; $47fb: $57
	sub  a                                           ; $47fc: $97
	ld   h, c                                        ; $47fd: $61
	ld   de, $ff17                                   ; $47fe: $11 $17 $ff
	db   $fc                                         ; $4801: $fc
	add  [hl]                                        ; $4802: $86
	ld   a, d                                        ; $4803: $7a
	xor  l                                           ; $4804: $ad
	db   $dd                                         ; $4805: $dd
	and  a                                           ; $4806: $a7
	ld   d, l                                        ; $4807: $55
	sbc  c                                           ; $4808: $99
	add  h                                           ; $4809: $84
	ld   de, $cf11                                   ; $480a: $11 $11 $cf
	rst  $38                                         ; $480d: $ff
	ret  z                                           ; $480e: $c8

	ld   e, c                                        ; $480f: $59
	adc  e                                           ; $4810: $8b
	sbc  $e8                                         ; $4811: $de $e8
	ld   d, e                                        ; $4813: $53
	ld   l, b                                        ; $4814: $68
	adc  b                                           ; $4815: $88
	ld   sp, $1f11                                   ; $4816: $31 $11 $1f
	rst  $38                                         ; $4819: $ff
	jp   hl                                          ; $481a: $e9


	ld   h, l                                        ; $481b: $65
	and  a                                           ; $481c: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $481d: $cf
	db   $ec                                         ; $481e: $ec
	ld   h, l                                        ; $481f: $65
	scf                                              ; $4820: $37
	xor  d                                           ; $4821: $aa
	sub  d                                           ; $4822: $92
	ld   de, $df11                                   ; $4823: $11 $11 $df
	rst  $38                                         ; $4826: $ff
	and  a                                           ; $4827: $a7
	ld   l, c                                        ; $4828: $69
	xor  h                                           ; $4829: $ac
	db   $fd                                         ; $482a: $fd
	cp   c                                           ; $482b: $b9
	ld   d, h                                        ; $482c: $54
	ld   l, b                                        ; $482d: $68
	cp   e                                           ; $482e: $bb
	ld   h, c                                        ; $482f: $61
	ld   de, $ff17                                   ; $4830: $11 $17 $ff
	db   $fc                                         ; $4833: $fc
	ld   h, h                                        ; $4834: $64
	sbc  e                                           ; $4835: $9b
	sbc  l                                           ; $4836: $9d
	sbc  $95                                         ; $4837: $de $95
	dec  [hl]                                        ; $4839: $35
	sbc  d                                           ; $483a: $9a
	or   a                                           ; $483b: $b7
	ld   hl, $3d11                                   ; $483c: $21 $11 $3d
	rst  $38                                         ; $483f: $ff
	ld   a, [$8b66]                                  ; $4840: $fa $66 $8b
	call Call_0e7_74da                               ; $4843: $cd $da $74
	ld   b, a                                        ; $4846: $47
	call $11b5                                       ; $4847: $cd $b5 $11
	ld   de, $ff3e                                   ; $484a: $11 $3e $ff
	ei                                               ; $484d: $fb
	ld   [hl], l                                     ; $484e: $75
	ld   a, d                                        ; $484f: $7a
	rst  JumpTable                                         ; $4850: $df
	ret                                              ; $4851: $c9


	ld   h, h                                        ; $4852: $64
	ld   d, a                                        ; $4853: $57
	adc  $d8                                         ; $4854: $ce $d8
	ld   de, $1d11                                   ; $4856: $11 $11 $1d
	rst  $38                                         ; $4859: $ff
	db   $fd                                         ; $485a: $fd
	ld   h, h                                        ; $485b: $64
	ld   a, b                                        ; $485c: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $485d: $cf
	ld   [$3695], a                                  ; $485e: $ea $95 $36
	xor  [hl]                                        ; $4861: $ae
	db   $eb                                         ; $4862: $eb
	ld   b, c                                        ; $4863: $41
	ld   de, rAUD1HIGH                                   ; $4864: $11 $14 $ff
	cp   $98                                         ; $4867: $fe $98
	ld   a, c                                        ; $4869: $79
	xor  h                                           ; $486a: $ac
	call c, Call_0e7_56b7                            ; $486b: $dc $b7 $56
	xor  h                                           ; $486e: $ac
	cp   h                                           ; $486f: $bc
	sub  h                                           ; $4870: $94
	ld   de, $6e11                                   ; $4871: $11 $11 $6e
	db   $fd                                         ; $4874: $fd
	db   $db                                         ; $4875: $db
	sub  a                                           ; $4876: $97
	xor  d                                           ; $4877: $aa
	db   $dd                                         ; $4878: $dd
	cp   c                                           ; $4879: $b9
	halt                                             ; $487a: $76
	ld   l, c                                        ; $487b: $69
	cp   l                                           ; $487c: $bd
	ld   [$1141], a                                  ; $487d: $ea $41 $11
	ld   [de], a                                     ; $4880: $12
	cp   a                                           ; $4881: $bf
	rst  $38                                         ; $4882: $ff
	ret  c                                           ; $4883: $d8

	ld   [hl], a                                     ; $4884: $77
	adc  h                                           ; $4885: $8c
	db   $fd                                         ; $4886: $fd
	xor  b                                           ; $4887: $a8
	ld   h, [hl]                                     ; $4888: $66
	adc  d                                           ; $4889: $8a
	sbc  $c7                                         ; $488a: $de $c7
	ld   de, $1311                                   ; $488c: $11 $11 $13
	cp   a                                           ; $488f: $bf
	rst  $38                                         ; $4890: $ff
	ret                                              ; $4891: $c9


	ld   d, [hl]                                     ; $4892: $56
	sbc  h                                           ; $4893: $9c
	db   $fc                                         ; $4894: $fc
	or   a                                           ; $4895: $b7
	ld   h, [hl]                                     ; $4896: $66
	ld   a, d                                        ; $4897: $7a
	rst  JumpTable                                         ; $4898: $df
	ret                                              ; $4899: $c9


	ld   sp, $1111                                   ; $489a: $31 $11 $11
	ld   l, [hl]                                     ; $489d: $6e
	rst  $38                                         ; $489e: $ff
	ld   [$9a66], a                                  ; $489f: $ea $66 $9a
	db   $dd                                         ; $48a2: $dd
	and  a                                           ; $48a3: $a7
	ld   d, [hl]                                     ; $48a4: $56
	ld   a, c                                        ; $48a5: $79
	adc  $fc                                         ; $48a6: $ce $fc
	ld   [hl], c                                     ; $48a8: $71
	ld   de, $1611                                   ; $48a9: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ac: $cf
	cp   $a6                                         ; $48ad: $fe $a6
	sbc  c                                           ; $48af: $99
	sbc  d                                           ; $48b0: $9a
	xor  d                                           ; $48b1: $aa
	sbc  c                                           ; $48b2: $99
	ld   a, b                                        ; $48b3: $78
	sbc  h                                           ; $48b4: $9c
	call z, Call_0e7_51c8                            ; $48b5: $cc $c8 $51
	ld   de, $3911                                   ; $48b8: $11 $11 $39
	rst  $28                                         ; $48bb: $ef
	db   $fd                                         ; $48bc: $fd
	add  [hl]                                        ; $48bd: $86
	ld   a, c                                        ; $48be: $79
	sbc  e                                           ; $48bf: $9b
	res  5, b                                        ; $48c0: $cb $a8
	ld   h, a                                        ; $48c2: $67
	xor  h                                           ; $48c3: $ac
	db   $dd                                         ; $48c4: $dd
	or   a                                           ; $48c5: $b7
	ld   sp, $1111                                   ; $48c6: $31 $11 $11
	dec  sp                                          ; $48c9: $3b
	rst  $38                                         ; $48ca: $ff
	db   $db                                         ; $48cb: $db
	and  a                                           ; $48cc: $a7
	ld   a, c                                        ; $48cd: $79
	xor  h                                           ; $48ce: $ac
	cp   c                                           ; $48cf: $b9
	add  a                                           ; $48d0: $87
	ld   a, b                                        ; $48d1: $78
	xor  e                                           ; $48d2: $ab
	sbc  $c8                                         ; $48d3: $de $c8
	ld   b, c                                        ; $48d5: $41
	ld   de, $2711                                   ; $48d6: $11 $11 $27
	rst  $28                                         ; $48d9: $ef
	db   $ec                                         ; $48da: $ec
	sub  a                                           ; $48db: $97
	ld   a, b                                        ; $48dc: $78
	adc  e                                           ; $48dd: $8b
	cp   d                                           ; $48de: $ba
	adc  b                                           ; $48df: $88
	ld   a, c                                        ; $48e0: $79
	cp   h                                           ; $48e1: $bc
	sbc  $c9                                         ; $48e2: $de $c9
	ld   h, d                                        ; $48e4: $62
	ld   de, $1511                                   ; $48e5: $11 $11 $15
	cp   a                                           ; $48e8: $bf
	db   $fc                                         ; $48e9: $fc
	or   a                                           ; $48ea: $b7
	ld   h, a                                        ; $48eb: $67
	adc  c                                           ; $48ec: $89
	xor  h                                           ; $48ed: $ac
	cp   e                                           ; $48ee: $bb
	sbc  b                                           ; $48ef: $98
	sbc  d                                           ; $48f0: $9a
	call $95ec                                       ; $48f1: $cd $ec $95
	ld   hl, $1111                                   ; $48f4: $21 $11 $11
	add  hl, hl                                      ; $48f7: $29
	rst  $38                                         ; $48f8: $ff
	jp   c, Jump_0e7_7798                            ; $48f9: $da $98 $77

	ld   a, d                                        ; $48fc: $7a
	cp   d                                           ; $48fd: $ba
	sbc  c                                           ; $48fe: $99
	adc  c                                           ; $48ff: $89
	xor  e                                           ; $4900: $ab
	rst  JumpTable                                         ; $4901: $df
	jp   c, $2173                                    ; $4902: $da $73 $21

	ld   de, $3c11                                   ; $4905: $11 $11 $3c
	rst  $38                                         ; $4908: $ff
	ld   [$7598], a                                  ; $4909: $ea $98 $75
	ld   l, d                                        ; $490c: $6a
	cp   c                                           ; $490d: $b9
	sbc  c                                           ; $490e: $99
	xor  d                                           ; $490f: $aa
	xor  h                                           ; $4910: $ac
	rst  $38                                         ; $4911: $ff
	jp   c, $2163                                    ; $4912: $da $63 $21

	ld   de, $1611                                   ; $4915: $11 $11 $16
	rst  $28                                         ; $4918: $ef
	db   $fd                                         ; $4919: $fd
	sbc  b                                           ; $491a: $98
	halt                                             ; $491b: $76
	ld   d, [hl]                                     ; $491c: $56
	adc  d                                           ; $491d: $8a
	xor  d                                           ; $491e: $aa
	xor  e                                           ; $491f: $ab
	cp   e                                           ; $4920: $bb
	rst  JumpTable                                         ; $4921: $df
	db   $eb                                         ; $4922: $eb
	add  l                                           ; $4923: $85
	ld   hl, $1112                                   ; $4924: $21 $12 $11
	inc  de                                          ; $4927: $13
	cp   a                                           ; $4928: $bf
	cp   $cb                                         ; $4929: $fe $cb
	sub  l                                           ; $492b: $95
	inc  [hl]                                        ; $492c: $34
	ld   a, c                                        ; $492d: $79
	sbc  d                                           ; $492e: $9a
	cp   h                                           ; $492f: $bc
	xor  d                                           ; $4930: $aa
	cp   [hl]                                        ; $4931: $be
	rst  $38                                         ; $4932: $ff
	or   a                                           ; $4933: $b7
	ld   b, c                                        ; $4934: $41
	ld   de, $1111                                   ; $4935: $11 $11 $11
	ld   l, h                                        ; $4938: $6c
	rst  $38                                         ; $4939: $ff
	db   $fc                                         ; $493a: $fc
	sub  [hl]                                        ; $493b: $96
	ld   d, h                                        ; $493c: $54
	ld   d, a                                        ; $493d: $57
	sbc  d                                           ; $493e: $9a
	xor  e                                           ; $493f: $ab
	xor  e                                           ; $4940: $ab
	adc  $ef                                         ; $4941: $ce $ef
	jp   c, $1173                                    ; $4943: $da $73 $11

	ld   [de], a                                     ; $4946: $12
	ld   de, $bf14                                   ; $4947: $11 $14 $bf
	cp   $b9                                         ; $494a: $fe $b9
	add  [hl]                                        ; $494c: $86
	ld   b, h                                        ; $494d: $44
	ld   e, b                                        ; $494e: $58
	sbc  e                                           ; $494f: $9b
	cp   e                                           ; $4950: $bb
	call $dcdd                                       ; $4951: $cd $dd $dc
	or   a                                           ; $4954: $b7
	ld   b, d                                        ; $4955: $42
	ld   de, $1111                                   ; $4956: $11 $11 $11
	ld   c, h                                        ; $4959: $4c
	rst  $38                                         ; $495a: $ff
	db   $fd                                         ; $495b: $fd
	cp   b                                           ; $495c: $b8
	ld   h, h                                        ; $495d: $64
	dec  [hl]                                        ; $495e: $35
	ld   a, c                                        ; $495f: $79
	sbc  e                                           ; $4960: $9b
	call z, $dccd                                    ; $4961: $cc $cd $dc
	jp   z, $3185                                    ; $4964: $ca $85 $31

	ld   de, $1211                                   ; $4967: $11 $11 $12
	adc  [hl]                                        ; $496a: $8e
	cp   $db                                         ; $496b: $fe $db
	and  a                                           ; $496d: $a7
	ld   d, h                                        ; $496e: $54
	ld   d, a                                        ; $496f: $57
	ld   a, c                                        ; $4970: $79
	xor  h                                           ; $4971: $ac
	call z, $dcdd                                    ; $4972: $cc $dd $dc
	cp   b                                           ; $4975: $b8
	ld   h, l                                        ; $4976: $65
	ld   sp, $1111                                   ; $4977: $31 $11 $11
	dec  d                                           ; $497a: $15
	cp   a                                           ; $497b: $bf
	rst  $38                                         ; $497c: $ff
	res  2, a                                        ; $497d: $cb $97
	ld   d, h                                        ; $497f: $54
	ld   d, [hl]                                     ; $4980: $56
	ld   a, b                                        ; $4981: $78
	sbc  h                                           ; $4982: $9c
	sbc  $ee                                         ; $4983: $de $ee
	db   $db                                         ; $4985: $db
	and  a                                           ; $4986: $a7
	ld   d, h                                        ; $4987: $54
	ld   hl, $1111                                   ; $4988: $21 $11 $11
	scf                                              ; $498b: $37
	adc  $fe                                         ; $498c: $ce $fe
	db   $db                                         ; $498e: $db
	add  [hl]                                        ; $498f: $86
	ld   b, h                                        ; $4990: $44
	ld   d, [hl]                                     ; $4991: $56
	ld   a, d                                        ; $4992: $7a
	cp   h                                           ; $4993: $bc
	db   $dd                                         ; $4994: $dd
	db   $dd                                         ; $4995: $dd
	res  2, a                                        ; $4996: $cb $97
	ld   d, e                                        ; $4998: $53
	ld   hl, $1111                                   ; $4999: $21 $11 $11
	ld   e, d                                        ; $499c: $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $499d: $cf
	cp   $ca                                         ; $499e: $fe $ca
	add  [hl]                                        ; $49a0: $86
	ld   d, l                                        ; $49a1: $55
	ld   h, [hl]                                     ; $49a2: $66
	ld   a, d                                        ; $49a3: $7a
	cp   h                                           ; $49a4: $bc
	adc  $ec                                         ; $49a5: $ce $ec
	jp   z, $5386                                    ; $49a7: $ca $86 $53

	ld   [hl-], a                                    ; $49aa: $32
	ld   de, $6b12                                   ; $49ab: $11 $12 $6b
	adc  $ee                                         ; $49ae: $ce $ee
	jp   z, $5586                                    ; $49b0: $ca $86 $55

	ld   d, [hl]                                     ; $49b3: $56
	ld   a, c                                        ; $49b4: $79
	cp   h                                           ; $49b5: $bc
	adc  $dc                                         ; $49b6: $ce $dc
	cp   c                                           ; $49b8: $b9
	add  [hl]                                        ; $49b9: $86
	ld   d, h                                        ; $49ba: $54
	ld   hl, $1411                                   ; $49bb: $21 $11 $14
	adc  e                                           ; $49be: $8b
	call $cadd                                       ; $49bf: $cd $dd $ca
	halt                                             ; $49c2: $76
	ld   h, [hl]                                     ; $49c3: $66
	ld   h, [hl]                                     ; $49c4: $66
	adc  d                                           ; $49c5: $8a
	cp   e                                           ; $49c6: $bb
	call $a9cc                                       ; $49c7: $cd $cc $a9
	halt                                             ; $49ca: $76
	ld   d, h                                        ; $49cb: $54
	ld   [hl-], a                                    ; $49cc: $32
	ld   bc, $9b36                                   ; $49cd: $01 $36 $9b
	cp   h                                           ; $49d0: $bc
	call c, $87b9                                    ; $49d1: $dc $b9 $87
	halt                                             ; $49d4: $76
	ld   h, a                                        ; $49d5: $67
	sbc  c                                           ; $49d6: $99
	xor  e                                           ; $49d7: $ab
	call z, $98ca                                    ; $49d8: $cc $ca $98
	halt                                             ; $49db: $76
	ld   d, l                                        ; $49dc: $55
	ld   b, e                                        ; $49dd: $43
	inc  hl                                          ; $49de: $23
	ld   b, a                                        ; $49df: $47
	sbc  d                                           ; $49e0: $9a
	sbc  d                                           ; $49e1: $9a
	cp   d                                           ; $49e2: $ba
	xor  b                                           ; $49e3: $a8
	adc  b                                           ; $49e4: $88
	adc  b                                           ; $49e5: $88
	ld   a, b                                        ; $49e6: $78
	sbc  d                                           ; $49e7: $9a
	xor  d                                           ; $49e8: $aa
	cp   e                                           ; $49e9: $bb
	xor  d                                           ; $49ea: $aa
	sbc  c                                           ; $49eb: $99
	add  a                                           ; $49ec: $87
	ld   h, [hl]                                     ; $49ed: $66
	ld   h, l                                        ; $49ee: $65
	ld   b, l                                        ; $49ef: $45
	ld   d, a                                        ; $49f0: $57
	adc  b                                           ; $49f1: $88
	sbc  b                                           ; $49f2: $98
	sbc  c                                           ; $49f3: $99
	sbc  b                                           ; $49f4: $98
	sbc  c                                           ; $49f5: $99
	adc  b                                           ; $49f6: $88
	sbc  c                                           ; $49f7: $99
	sbc  c                                           ; $49f8: $99
	sbc  c                                           ; $49f9: $99
	xor  d                                           ; $49fa: $aa
	xor  c                                           ; $49fb: $a9
	adc  c                                           ; $49fc: $89
	add  a                                           ; $49fd: $87
	ld   [hl], a                                     ; $49fe: $77
	halt                                             ; $49ff: $76
	ld   h, [hl]                                     ; $4a00: $66
	ld   h, a                                        ; $4a01: $67
	ld   a, b                                        ; $4a02: $78
	ld   a, b                                        ; $4a03: $78
	adc  b                                           ; $4a04: $88
	adc  b                                           ; $4a05: $88
	adc  c                                           ; $4a06: $89
	adc  c                                           ; $4a07: $89
	adc  c                                           ; $4a08: $89
	xor  d                                           ; $4a09: $aa
	sbc  c                                           ; $4a0a: $99
	sbc  c                                           ; $4a0b: $99
	sbc  c                                           ; $4a0c: $99
	adc  b                                           ; $4a0d: $88
	adc  b                                           ; $4a0e: $88
	add  a                                           ; $4a0f: $87
	ld   [hl], a                                     ; $4a10: $77
	ld   h, a                                        ; $4a11: $67
	ld   [hl], a                                     ; $4a12: $77
	ld   [hl], a                                     ; $4a13: $77
	ld   [hl], a                                     ; $4a14: $77
	ld   a, b                                        ; $4a15: $78
	add  a                                           ; $4a16: $87
	adc  c                                           ; $4a17: $89
	sbc  b                                           ; $4a18: $98
	sbc  c                                           ; $4a19: $99
	sbc  c                                           ; $4a1a: $99
	sbc  c                                           ; $4a1b: $99
	sbc  b                                           ; $4a1c: $98
	adc  c                                           ; $4a1d: $89
	adc  c                                           ; $4a1e: $89
	adc  b                                           ; $4a1f: $88
	adc  b                                           ; $4a20: $88
	ld   [hl], a                                     ; $4a21: $77
	ld   [hl], a                                     ; $4a22: $77
	ld   [hl], a                                     ; $4a23: $77
	ld   [hl], a                                     ; $4a24: $77
	ld   [hl], a                                     ; $4a25: $77
	ld   [hl], a                                     ; $4a26: $77
	ld   a, b                                        ; $4a27: $78
	ld   a, b                                        ; $4a28: $78
	adc  c                                           ; $4a29: $89
	sbc  b                                           ; $4a2a: $98
	adc  b                                           ; $4a2b: $88
	adc  b                                           ; $4a2c: $88
	sbc  b                                           ; $4a2d: $98
	sbc  c                                           ; $4a2e: $99
	sbc  b                                           ; $4a2f: $98
	adc  b                                           ; $4a30: $88
	adc  b                                           ; $4a31: $88
	ld   a, b                                        ; $4a32: $78
	add  a                                           ; $4a33: $87
	adc  b                                           ; $4a34: $88
	add  a                                           ; $4a35: $87
	ld   [hl], a                                     ; $4a36: $77
	ld   [hl], a                                     ; $4a37: $77
	ld   [hl], a                                     ; $4a38: $77
	ld   a, b                                        ; $4a39: $78
	adc  b                                           ; $4a3a: $88
	adc  c                                           ; $4a3b: $89
	sbc  b                                           ; $4a3c: $98
	adc  c                                           ; $4a3d: $89
	sbc  b                                           ; $4a3e: $98
	sbc  c                                           ; $4a3f: $99
	adc  b                                           ; $4a40: $88
	adc  b                                           ; $4a41: $88
	adc  b                                           ; $4a42: $88
	adc  b                                           ; $4a43: $88
	adc  b                                           ; $4a44: $88
	adc  b                                           ; $4a45: $88
	adc  b                                           ; $4a46: $88
	add  a                                           ; $4a47: $87
	ld   a, b                                        ; $4a48: $78
	ld   [hl], a                                     ; $4a49: $77
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
	ld   a, b                                        ; $4a64: $78
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
	ld   a, b                                        ; $4a93: $78
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
	adc  c                                           ; $4b3b: $89
	sbc  b                                           ; $4b3c: $98
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
	sbc  b                                           ; $4b8b: $98
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
	adc  c                                           ; $4ba0: $89
	adc  b                                           ; $4ba1: $88
	adc  b                                           ; $4ba2: $88
	adc  b                                           ; $4ba3: $88
	sbc  c                                           ; $4ba4: $99
	adc  b                                           ; $4ba5: $88
	adc  b                                           ; $4ba6: $88
	ld   a, b                                        ; $4ba7: $78
	adc  b                                           ; $4ba8: $88
	adc  b                                           ; $4ba9: $88
	adc  b                                           ; $4baa: $88
	adc  b                                           ; $4bab: $88
	adc  b                                           ; $4bac: $88
	adc  b                                           ; $4bad: $88
	adc  b                                           ; $4bae: $88
	adc  b                                           ; $4baf: $88
	adc  c                                           ; $4bb0: $89
	sub  a                                           ; $4bb1: $97
	adc  b                                           ; $4bb2: $88
	adc  b                                           ; $4bb3: $88
	xor  b                                           ; $4bb4: $a8
	ld   a, b                                        ; $4bb5: $78
	adc  b                                           ; $4bb6: $88
	adc  b                                           ; $4bb7: $88
	adc  b                                           ; $4bb8: $88
	ld   a, b                                        ; $4bb9: $78
	adc  b                                           ; $4bba: $88
	adc  b                                           ; $4bbb: $88
	sbc  b                                           ; $4bbc: $98
	adc  b                                           ; $4bbd: $88
	adc  b                                           ; $4bbe: $88
	ld   a, b                                        ; $4bbf: $78
	adc  b                                           ; $4bc0: $88
	adc  b                                           ; $4bc1: $88
	adc  b                                           ; $4bc2: $88
	adc  b                                           ; $4bc3: $88
	adc  c                                           ; $4bc4: $89
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
	adc  c                                           ; $4bd1: $89
	adc  b                                           ; $4bd2: $88
	adc  b                                           ; $4bd3: $88
	add  a                                           ; $4bd4: $87
	adc  b                                           ; $4bd5: $88
	adc  b                                           ; $4bd6: $88
	ld   a, b                                        ; $4bd7: $78
	adc  b                                           ; $4bd8: $88
	adc  b                                           ; $4bd9: $88
	sbc  b                                           ; $4bda: $98
	adc  c                                           ; $4bdb: $89
	adc  c                                           ; $4bdc: $89
	sbc  b                                           ; $4bdd: $98
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
	sbc  c                                           ; $4beb: $99
	adc  b                                           ; $4bec: $88
	sbc  c                                           ; $4bed: $99
	sbc  b                                           ; $4bee: $98
	add  a                                           ; $4bef: $87
	ld   [hl], a                                     ; $4bf0: $77
	ld   [hl], a                                     ; $4bf1: $77
	ld   [hl], a                                     ; $4bf2: $77
	ld   [hl], a                                     ; $4bf3: $77
	adc  b                                           ; $4bf4: $88
	sbc  b                                           ; $4bf5: $98
	sbc  c                                           ; $4bf6: $99
	xor  d                                           ; $4bf7: $aa
	sbc  c                                           ; $4bf8: $99
	sbc  b                                           ; $4bf9: $98
	adc  b                                           ; $4bfa: $88
	halt                                             ; $4bfb: $76
	ld   h, [hl]                                     ; $4bfc: $66
	ld   [hl], a                                     ; $4bfd: $77
	ld   [hl], a                                     ; $4bfe: $77
	ld   a, b                                        ; $4bff: $78
	sbc  d                                           ; $4c00: $9a
	sbc  d                                           ; $4c01: $9a
	sbc  d                                           ; $4c02: $9a
	cp   d                                           ; $4c03: $ba
	sbc  c                                           ; $4c04: $99
	sbc  c                                           ; $4c05: $99
	ld   h, l                                        ; $4c06: $65
	ld   b, l                                        ; $4c07: $45
	ld   h, [hl]                                     ; $4c08: $66
	halt                                             ; $4c09: $76
	ld   a, b                                        ; $4c0a: $78
	adc  e                                           ; $4c0b: $8b
	xor  d                                           ; $4c0c: $aa
	xor  d                                           ; $4c0d: $aa
	cp   d                                           ; $4c0e: $ba
	cp   d                                           ; $4c0f: $ba
	sbc  c                                           ; $4c10: $99
	ld   [hl], l                                     ; $4c11: $75
	ld   [hl-], a                                    ; $4c12: $32
	ld   [hl], $78                                   ; $4c13: $36 $78
	ld   h, a                                        ; $4c15: $67
	sbc  d                                           ; $4c16: $9a
	jp   z, $cbbb                                    ; $4c17: $ca $bb $cb

	sbc  c                                           ; $4c1a: $99
	sbc  c                                           ; $4c1b: $99
	add  [hl]                                        ; $4c1c: $86
	ld   b, c                                        ; $4c1d: $41
	inc  de                                          ; $4c1e: $13
	ld   h, a                                        ; $4c1f: $67
	add  a                                           ; $4c20: $87
	sbc  d                                           ; $4c21: $9a
	adc  $bc                                         ; $4c22: $ce $bc
	xor  e                                           ; $4c24: $ab
	ret                                              ; $4c25: $c9


	add  a                                           ; $4c26: $87
	add  a                                           ; $4c27: $87
	ld   b, c                                        ; $4c28: $41
	ld   de, $a677                                   ; $4c29: $11 $77 $a6
	adc  e                                           ; $4c2c: $8b
	rst  JumpTable                                         ; $4c2d: $df
	cp   h                                           ; $4c2e: $bc
	set  1, b                                        ; $4c2f: $cb $c8
	add  [hl]                                        ; $4c31: $86
	ld   a, b                                        ; $4c32: $78
	ld   b, c                                        ; $4c33: $41
	ld   de, $b778                                   ; $4c34: $11 $78 $b7
	adc  h                                           ; $4c37: $8c
	rst  JumpTable                                         ; $4c38: $df
	res  7, c                                        ; $4c39: $cb $b9
	rst  ToBoot                                         ; $4c3b: $c7
	sub  [hl]                                        ; $4c3c: $96
	ld   h, a                                        ; $4c3d: $67
	ld   sp, $9911                                   ; $4c3e: $31 $11 $99
	sub  $9e                                         ; $4c41: $d6 $9e
	rst  $28                                         ; $4c43: $ef
	cp   e                                           ; $4c44: $bb
	xor  d                                           ; $4c45: $aa
	or   l                                           ; $4c46: $b5
	ld   [hl], h                                     ; $4c47: $74
	ld   [hl], a                                     ; $4c48: $77
	ld   de, $bc14                                   ; $4c49: $11 $14 $bc
	push bc                                          ; $4c4c: $c5
	call $8aff                                       ; $4c4d: $cd $ff $8a
	ld   a, e                                        ; $4c50: $7b
	sub  l                                           ; $4c51: $95
	ld   [hl], e                                     ; $4c52: $73
	add  e                                           ; $4c53: $83
	ld   de, $cf1b                                   ; $4c54: $11 $1b $cf
	add  a                                           ; $4c57: $87
	rst  $38                                         ; $4c58: $ff
	ld   a, [$9c78]                                  ; $4c59: $fa $78 $9c
	ld   d, l                                        ; $4c5c: $55
	ld   b, l                                        ; $4c5d: $45
	ld   h, c                                        ; $4c5e: $61
	ld   de, $eb8e                                   ; $4c5f: $11 $8e $eb
	ld   l, [hl]                                     ; $4c62: $6e
	rst  $38                                         ; $4c63: $ff
	sub  $67                                         ; $4c64: $d6 $67
	cp   b                                           ; $4c66: $b8
	ld   b, h                                        ; $4c67: $44
	ld   b, l                                        ; $4c68: $45
	ld   bc, $ff18                                   ; $4c69: $01 $18 $ff
	rst  ToBoot                                         ; $4c6c: $c7

jr_0e7_4c6d:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c6d: $cf
	db   $fc                                         ; $4c6e: $fc
	ld   h, l                                        ; $4c6f: $65
	ld   l, e                                        ; $4c70: $6b
	add  l                                           ; $4c71: $85

jr_0e7_4c72:
	inc  sp                                          ; $4c72: $33
	ld   sp, $af11                                   ; $4c73: $31 $11 $af
	ei                                               ; $4c76: $fb
	xor  h                                           ; $4c77: $ac
	rst  $38                                         ; $4c78: $ff
	or   [hl]                                        ; $4c79: $b6
	ld   b, a                                        ; $4c7a: $47
	xor  b                                           ; $4c7b: $a8
	ld   d, d                                        ; $4c7c: $52
	ld   hl, $7c11                                   ; $4c7d: $21 $11 $7c
	cp   $ac                                         ; $4c80: $fe $ac
	rst  $28                                         ; $4c82: $ef
	rst  $10                                         ; $4c83: $d7
	ld   b, l                                        ; $4c84: $45
	sbc  c                                           ; $4c85: $99
	ld   [hl], h                                     ; $4c86: $74
	ld   hl, $6b11                                   ; $4c87: $21 $11 $6b
	cp   $bd                                         ; $4c8a: $fe $bd
	rst  JumpTable                                         ; $4c8c: $df
	ret  c                                           ; $4c8d: $d8

	ld   d, h                                        ; $4c8e: $54
	adc  b                                           ; $4c8f: $88
	add  h                                           ; $4c90: $84
	ld   hl, $6c11                                   ; $4c91: $21 $11 $6c
	rst  $38                                         ; $4c94: $ff
	xor  [hl]                                        ; $4c95: $ae
	rst  JumpTable                                         ; $4c96: $df
	rst  $10                                         ; $4c97: $d7
	ld   d, e                                        ; $4c98: $53
	add  a                                           ; $4c99: $87
	add  h                                           ; $4c9a: $84
	ld   de, $8e11                                   ; $4c9b: $11 $11 $8e
	cp   $ae                                         ; $4c9e: $fe $ae
	rst  $28                                         ; $4ca0: $ef
	add  $43                                         ; $4ca1: $c6 $43
	sub  a                                           ; $4ca3: $97
	ld   [hl], d                                     ; $4ca4: $72
	ld   de, $bf14                                   ; $4ca5: $11 $14 $bf
	db   $fd                                         ; $4ca8: $fd
	xor  l                                           ; $4ca9: $ad
	rst  $28                                         ; $4caa: $ef
	sub  l                                           ; $4cab: $95
	dec  h                                           ; $4cac: $25
	adc  b                                           ; $4cad: $88
	ld   h, c                                        ; $4cae: $61
	ld   de, $df17                                   ; $4caf: $11 $17 $df
	ei                                               ; $4cb2: $fb
	cp   [hl]                                        ; $4cb3: $be
	db   $fd                                         ; $4cb4: $fd
	ld   [hl], h                                     ; $4cb5: $74
	scf                                              ; $4cb6: $37
	adc  b                                           ; $4cb7: $88
	ld   b, c                                        ; $4cb8: $41
	ld   de, $ff4c                                   ; $4cb9: $11 $4c $ff
	set  3, a                                        ; $4cbc: $cb $df
	ld   a, [$5852]                                  ; $4cbe: $fa $52 $58
	add  [hl]                                        ; $4cc1: $86
	ld   de, $af12                                   ; $4cc2: $11 $12 $af
	db   $fd                                         ; $4cc5: $fd
	xor  e                                           ; $4cc6: $ab
	rst  $28                                         ; $4cc7: $ef
	add  $14                                         ; $4cc8: $c6 $14
	sbc  b                                           ; $4cca: $98
	ld   [hl], c                                     ; $4ccb: $71
	ld   de, $ff1a                                   ; $4ccc: $11 $1a $ff
	db   $db                                         ; $4ccf: $db
	xor  l                                           ; $4cd0: $ad
	db   $fc                                         ; $4cd1: $fc
	add  d                                           ; $4cd2: $82
	jr   c, jr_0e7_4c6d                              ; $4cd3: $38 $98

	ld   de, $af11                                   ; $4cd5: $11 $11 $af
	cp   $99                                         ; $4cd8: $fe $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cda: $cf
	reti                                             ; $4cdb: $d9


	ld   [hl+], a                                    ; $4cdc: $22
	adc  b                                           ; $4cdd: $88
	sub  c                                           ; $4cde: $91
	ld   de, $ff1c                                   ; $4cdf: $11 $1c $ff
	ret                                              ; $4ce2: $c9


	sbc  h                                           ; $4ce3: $9c
	db   $fd                                         ; $4ce4: $fd
	add  c                                           ; $4ce5: $81
	jr   z, jr_0e7_4c72                              ; $4ce6: $28 $8a

	ld   de, $cf11                                   ; $4ce8: $11 $11 $cf
	ei                                               ; $4ceb: $fb
	sub  a                                           ; $4cec: $97
	rst  JumpTable                                         ; $4ced: $df
	ret                                              ; $4cee: $c9


	inc  d                                           ; $4cef: $14
	ld   a, c                                        ; $4cf0: $79
	add  c                                           ; $4cf1: $81
	ld   de, $ff5f                                   ; $4cf2: $11 $5f $ff
	sbc  b                                           ; $4cf5: $98
	ld   l, [hl]                                     ; $4cf6: $6e
	ei                                               ; $4cf7: $fb
	ld   [hl], c                                     ; $4cf8: $71
	ld   d, a                                        ; $4cf9: $57
	or   [hl]                                        ; $4cfa: $b6
	ld   de, $ff19                                   ; $4cfb: $11 $19 $ff
	ld   hl, sp+$66                                  ; $4cfe: $f8 $66
	rst  $38                                         ; $4d00: $ff
	call nz, Call_0e7_7b16                           ; $4d01: $c4 $16 $7b
	ld   hl, $df11                                   ; $4d04: $21 $11 $df
	db   $fd                                         ; $4d07: $fd
	add  h                                           ; $4d08: $84
	xor  a                                           ; $4d09: $af
	jp   z, Jump_0e7_5803                            ; $4d0a: $ca $03 $58

	add  c                                           ; $4d0d: $81
	ld   de, $ff8f                                   ; $4d0e: $11 $8f $ff
	and  l                                           ; $4d11: $a5
	ld   c, [hl]                                     ; $4d12: $4e
	db   $ed                                         ; $4d13: $ed
	ld   d, c                                        ; $4d14: $51
	ld   b, l                                        ; $4d15: $45
	add  e                                           ; $4d16: $83
	ld   de, $ff3f                                   ; $4d17: $11 $3f $ff
	rst  $10                                         ; $4d1a: $d7
	ld   a, [hl-]                                    ; $4d1b: $3a
	db   $ed                                         ; $4d1c: $ed
	sub  e                                           ; $4d1d: $93
	inc  sp                                          ; $4d1e: $33
	ld   h, h                                        ; $4d1f: $64
	ld   de, $ff2c                                   ; $4d20: $11 $2c $ff
	ld   sp, hl                                      ; $4d23: $f9
	ld   b, a                                        ; $4d24: $47
	cp   l                                           ; $4d25: $bd
	and  l                                           ; $4d26: $a5
	inc  sp                                          ; $4d27: $33
	ld   b, d                                        ; $4d28: $42
	ld   de, $ff4d                                   ; $4d29: $11 $4d $ff
	ld   sp, hl                                      ; $4d2c: $f9
	ld   c, b                                        ; $4d2d: $48
	xor  h                                           ; $4d2e: $ac
	sub  [hl]                                        ; $4d2f: $96
	ld   b, d                                        ; $4d30: $42
	ld   sp, $7f11                                   ; $4d31: $31 $11 $7f
	rst  $38                                         ; $4d34: $ff
	add  sp, $69                                     ; $4d35: $e8 $69
	xor  e                                           ; $4d37: $ab
	sub  [hl]                                        ; $4d38: $96
	ld   b, d                                        ; $4d39: $42
	ld   de, $bf12                                   ; $4d3a: $11 $12 $bf
	rst  $38                                         ; $4d3d: $ff
	rst  ToBoot                                         ; $4d3e: $c7
	ld   a, c                                        ; $4d3f: $79
	xor  e                                           ; $4d40: $ab
	ld   [hl], l                                     ; $4d41: $75
	ld   [hl-], a                                    ; $4d42: $32
	ld   de, $ef15                                   ; $4d43: $11 $15 $ef
	rst  $38                                         ; $4d46: $ff
	sub  a                                           ; $4d47: $97
	sbc  e                                           ; $4d48: $9b
	cp   c                                           ; $4d49: $b9
	ld   h, h                                        ; $4d4a: $64
	ld   hl, $3a11                                   ; $4d4b: $21 $11 $3a
	rst  $38                                         ; $4d4e: $ff
	db   $fc                                         ; $4d4f: $fc
	adc  b                                           ; $4d50: $88
	xor  e                                           ; $4d51: $ab
	and  a                                           ; $4d52: $a7
	ld   d, e                                        ; $4d53: $53
	ld   de, $7f11                                   ; $4d54: $11 $11 $7f
	rst  $38                                         ; $4d57: $ff
	reti                                             ; $4d58: $d9


	adc  d                                           ; $4d59: $8a
	xor  h                                           ; $4d5a: $ac
	sub  a                                           ; $4d5b: $97
	ld   sp, $1511                                   ; $4d5c: $31 $11 $15
	rst  $28                                         ; $4d5f: $ef
	rst  $38                                         ; $4d60: $ff
	sub  a                                           ; $4d61: $97
	adc  e                                           ; $4d62: $8b
	cp   c                                           ; $4d63: $b9
	ld   [hl], h                                     ; $4d64: $74
	ld   hl, $4c11                                   ; $4d65: $21 $11 $4c
	rst  $38                                         ; $4d68: $ff
	ei                                               ; $4d69: $fb
	ld   a, c                                        ; $4d6a: $79
	xor  e                                           ; $4d6b: $ab
	cp   c                                           ; $4d6c: $b9
	ld   d, d                                        ; $4d6d: $52
	ld   de, $af13                                   ; $4d6e: $11 $13 $af
	rst  $38                                         ; $4d71: $ff
	or   a                                           ; $4d72: $b7
	adc  c                                           ; $4d73: $89
	cp   d                                           ; $4d74: $ba
	add  [hl]                                        ; $4d75: $86
	ld   hl, $2a11                                   ; $4d76: $21 $11 $2a
	rst  $38                                         ; $4d79: $ff
	db   $fc                                         ; $4d7a: $fc
	adc  b                                           ; $4d7b: $88
	xor  h                                           ; $4d7c: $ac
	cp   c                                           ; $4d7d: $b9
	ld   h, d                                        ; $4d7e: $62
	ld   de, $af13                                   ; $4d7f: $11 $13 $af
	rst  $38                                         ; $4d82: $ff
	cp   b                                           ; $4d83: $b8
	sbc  d                                           ; $4d84: $9a
	db   $db                                         ; $4d85: $db
	sub  l                                           ; $4d86: $95
	ld   de, $4c11                                   ; $4d87: $11 $11 $4c
	rst  $38                                         ; $4d8a: $ff
	ld   sp, hl                                      ; $4d8b: $f9
	ld   a, b                                        ; $4d8c: $78
	cp   l                                           ; $4d8d: $bd
	cp   b                                           ; $4d8e: $b8
	ld   b, c                                        ; $4d8f: $41
	ld   de, $ff16                                   ; $4d90: $11 $16 $ff
	cp   $98                                         ; $4d93: $fe $98
	sbc  e                                           ; $4d95: $9b
	jp   c, $1172                                    ; $4d96: $da $72 $11

	inc  de                                          ; $4d99: $13
	sbc  a                                           ; $4d9a: $9f
	rst  $38                                         ; $4d9b: $ff
	rst  ToBoot                                         ; $4d9c: $c7
	sbc  d                                           ; $4d9d: $9a
	call c, $1195                                    ; $4d9e: $dc $95 $11
	ld   de, $ff6e                                   ; $4da1: $11 $6e $ff
	ld   sp, hl                                      ; $4da4: $f9
	ld   a, b                                        ; $4da5: $78
	cp   l                                           ; $4da6: $bd
	cp   b                                           ; $4da7: $b8
	ld   hl, $3a11                                   ; $4da8: $21 $11 $3a
	rst  $38                                         ; $4dab: $ff
	db   $fc                                         ; $4dac: $fc
	ld   a, c                                        ; $4dad: $79
	xor  l                                           ; $4dae: $ad
	cp   c                                           ; $4daf: $b9
	ld   d, c                                        ; $4db0: $51
	ld   de, $ff17                                   ; $4db1: $11 $17 $ff
	cp   $98                                         ; $4db4: $fe $98
	xor  h                                           ; $4db6: $ac
	jp   c, $1161                                    ; $4db7: $da $61 $11

	ld   d, $ef                                      ; $4dba: $16 $ef
	rst  $38                                         ; $4dbc: $ff
	cp   c                                           ; $4dbd: $b9
	xor  e                                           ; $4dbe: $ab
	jp   c, $1161                                    ; $4dbf: $da $61 $11

	inc  de                                          ; $4dc2: $13
	cp   a                                           ; $4dc3: $bf
	rst  $38                                         ; $4dc4: $ff
	res  7, h                                        ; $4dc5: $cb $bc
	jp   z, $1172                                    ; $4dc7: $ca $72 $11

	ld   [de], a                                     ; $4dca: $12
	adc  a                                           ; $4dcb: $8f
	rst  $38                                         ; $4dcc: $ff
	ld   [$eccb], a                                  ; $4dcd: $ea $cb $ec
	add  h                                           ; $4dd0: $84
	ld   de, $5c11                                   ; $4dd1: $11 $11 $5c
	rst  $38                                         ; $4dd4: $ff
	db   $eb                                         ; $4dd5: $eb
	db   $dd                                         ; $4dd6: $dd
	cp   $b6                                         ; $4dd7: $fe $b6
	ld   de, $1611                                   ; $4dd9: $11 $11 $16
	cp   [hl]                                        ; $4ddc: $be
	db   $ed                                         ; $4ddd: $ed
	call $eaef                                       ; $4dde: $cd $ef $ea
	ld   h, c                                        ; $4de1: $61
	ld   de, $6a12                                   ; $4de2: $11 $12 $6a
	call $cdbc                                       ; $4de5: $cd $bc $cd
	xor  $b7                                         ; $4de8: $ee $b7
	ld   b, c                                        ; $4dea: $41
	ld   de, $9925                                   ; $4deb: $11 $25 $99
	xor  d                                           ; $4dee: $aa
	xor  e                                           ; $4def: $ab
	adc  $db                                         ; $4df0: $ce $db
	sub  [hl]                                        ; $4df2: $96
	ld   b, e                                        ; $4df3: $43
	inc  [hl]                                        ; $4df4: $34
	ld   d, a                                        ; $4df5: $57
	adc  c                                           ; $4df6: $89
	sbc  b                                           ; $4df7: $98
	adc  c                                           ; $4df8: $89
	cp   h                                           ; $4df9: $bc
	cp   e                                           ; $4dfa: $bb
	sub  a                                           ; $4dfb: $97
	ld   h, [hl]                                     ; $4dfc: $66
	ld   h, [hl]                                     ; $4dfd: $66
	ld   [hl], a                                     ; $4dfe: $77
	add  a                                           ; $4dff: $87
	ld   [hl], a                                     ; $4e00: $77
	ld   a, b                                        ; $4e01: $78
	adc  d                                           ; $4e02: $8a
	xor  c                                           ; $4e03: $a9
	sub  a                                           ; $4e04: $97
	adc  b                                           ; $4e05: $88
	adc  c                                           ; $4e06: $89
	sbc  c                                           ; $4e07: $99
	sbc  b                                           ; $4e08: $98
	ld   [hl], a                                     ; $4e09: $77
	ld   [hl], a                                     ; $4e0a: $77
	ld   a, b                                        ; $4e0b: $78
	sbc  b                                           ; $4e0c: $98
	adc  b                                           ; $4e0d: $88
	sbc  b                                           ; $4e0e: $98
	adc  b                                           ; $4e0f: $88
	adc  c                                           ; $4e10: $89
	sbc  c                                           ; $4e11: $99
	adc  b                                           ; $4e12: $88
	ld   [hl], a                                     ; $4e13: $77
	ld   [hl], a                                     ; $4e14: $77
	ld   a, b                                        ; $4e15: $78
	adc  b                                           ; $4e16: $88
	adc  c                                           ; $4e17: $89
	sbc  c                                           ; $4e18: $99
	adc  b                                           ; $4e19: $88
	sbc  c                                           ; $4e1a: $99
	adc  b                                           ; $4e1b: $88
	ld   [hl], a                                     ; $4e1c: $77
	ld   [hl], a                                     ; $4e1d: $77
	ld   a, b                                        ; $4e1e: $78
	adc  b                                           ; $4e1f: $88
	adc  b                                           ; $4e20: $88
	adc  c                                           ; $4e21: $89
	sbc  c                                           ; $4e22: $99
	sbc  c                                           ; $4e23: $99
	sbc  b                                           ; $4e24: $98
	ld   [hl], a                                     ; $4e25: $77
	ld   [hl], a                                     ; $4e26: $77
	adc  b                                           ; $4e27: $88
	add  a                                           ; $4e28: $87
	ld   [hl], a                                     ; $4e29: $77
	adc  b                                           ; $4e2a: $88
	sbc  d                                           ; $4e2b: $9a
	sbc  c                                           ; $4e2c: $99
	add  a                                           ; $4e2d: $87
	ld   [hl], a                                     ; $4e2e: $77
	ld   a, b                                        ; $4e2f: $78
	adc  b                                           ; $4e30: $88
	ld   [hl], a                                     ; $4e31: $77
	ld   a, b                                        ; $4e32: $78
	sbc  c                                           ; $4e33: $99
	sbc  c                                           ; $4e34: $99
	sbc  b                                           ; $4e35: $98
	ld   [hl], a                                     ; $4e36: $77
	ld   a, b                                        ; $4e37: $78
	adc  b                                           ; $4e38: $88
	add  a                                           ; $4e39: $87
	ld   a, b                                        ; $4e3a: $78
	adc  b                                           ; $4e3b: $88
	sbc  c                                           ; $4e3c: $99
	adc  b                                           ; $4e3d: $88
	ld   [hl], a                                     ; $4e3e: $77
	ld   [hl], a                                     ; $4e3f: $77
	adc  b                                           ; $4e40: $88
	adc  b                                           ; $4e41: $88
	adc  b                                           ; $4e42: $88
	adc  c                                           ; $4e43: $89
	adc  c                                           ; $4e44: $89
	adc  b                                           ; $4e45: $88
	add  a                                           ; $4e46: $87
	ld   [hl], a                                     ; $4e47: $77
	ld   a, b                                        ; $4e48: $78
	adc  b                                           ; $4e49: $88
	adc  b                                           ; $4e4a: $88
	adc  c                                           ; $4e4b: $89
	sbc  c                                           ; $4e4c: $99
	sbc  c                                           ; $4e4d: $99
	add  a                                           ; $4e4e: $87
	ld   [hl], a                                     ; $4e4f: $77
	ld   [hl], a                                     ; $4e50: $77
	adc  b                                           ; $4e51: $88
	adc  b                                           ; $4e52: $88
	adc  c                                           ; $4e53: $89
	sbc  c                                           ; $4e54: $99
	sbc  b                                           ; $4e55: $98
	adc  b                                           ; $4e56: $88
	ld   [hl], a                                     ; $4e57: $77
	ld   [hl], a                                     ; $4e58: $77
	ld   a, b                                        ; $4e59: $78
	adc  b                                           ; $4e5a: $88
	adc  c                                           ; $4e5b: $89
	adc  c                                           ; $4e5c: $89
	sbc  b                                           ; $4e5d: $98
	adc  b                                           ; $4e5e: $88
	ld   [hl], a                                     ; $4e5f: $77
	ld   [hl], a                                     ; $4e60: $77
	ld   [hl], a                                     ; $4e61: $77
	adc  b                                           ; $4e62: $88
	adc  c                                           ; $4e63: $89
	adc  c                                           ; $4e64: $89
	sbc  b                                           ; $4e65: $98
	adc  b                                           ; $4e66: $88
	ld   [hl], a                                     ; $4e67: $77
	ld   a, b                                        ; $4e68: $78
	add  a                                           ; $4e69: $87
	ld   a, b                                        ; $4e6a: $78
	adc  c                                           ; $4e6b: $89
	adc  c                                           ; $4e6c: $89
	sbc  c                                           ; $4e6d: $99
	adc  b                                           ; $4e6e: $88
	ld   [hl], a                                     ; $4e6f: $77
	adc  b                                           ; $4e70: $88
	adc  b                                           ; $4e71: $88
	ld   a, b                                        ; $4e72: $78
	adc  c                                           ; $4e73: $89
	sbc  c                                           ; $4e74: $99
	adc  c                                           ; $4e75: $89
	add  a                                           ; $4e76: $87
	ld   [hl], a                                     ; $4e77: $77
	adc  b                                           ; $4e78: $88
	adc  b                                           ; $4e79: $88
	ld   a, b                                        ; $4e7a: $78
	adc  b                                           ; $4e7b: $88
	sbc  c                                           ; $4e7c: $99
	adc  b                                           ; $4e7d: $88
	add  a                                           ; $4e7e: $87
	ld   [hl], a                                     ; $4e7f: $77
	adc  b                                           ; $4e80: $88
	adc  b                                           ; $4e81: $88
	adc  b                                           ; $4e82: $88
	sbc  b                                           ; $4e83: $98
	adc  b                                           ; $4e84: $88
	sbc  b                                           ; $4e85: $98
	adc  b                                           ; $4e86: $88
	ld   a, b                                        ; $4e87: $78
	adc  b                                           ; $4e88: $88
	adc  b                                           ; $4e89: $88
	adc  b                                           ; $4e8a: $88
	sbc  b                                           ; $4e8b: $98
	adc  c                                           ; $4e8c: $89
	adc  b                                           ; $4e8d: $88
	adc  b                                           ; $4e8e: $88
	adc  b                                           ; $4e8f: $88
	adc  b                                           ; $4e90: $88
	adc  b                                           ; $4e91: $88
	adc  b                                           ; $4e92: $88
	adc  b                                           ; $4e93: $88
	sbc  b                                           ; $4e94: $98
	adc  b                                           ; $4e95: $88
	adc  b                                           ; $4e96: $88
	adc  b                                           ; $4e97: $88
	adc  b                                           ; $4e98: $88
	adc  b                                           ; $4e99: $88
	sbc  b                                           ; $4e9a: $98
	sbc  b                                           ; $4e9b: $98
	sbc  b                                           ; $4e9c: $98
	ld   [hl], a                                     ; $4e9d: $77
	adc  b                                           ; $4e9e: $88
	adc  b                                           ; $4e9f: $88
	adc  b                                           ; $4ea0: $88
	adc  b                                           ; $4ea1: $88
	sbc  b                                           ; $4ea2: $98
	sbc  b                                           ; $4ea3: $98
	adc  b                                           ; $4ea4: $88
	ld   [hl], a                                     ; $4ea5: $77
	adc  b                                           ; $4ea6: $88
	adc  b                                           ; $4ea7: $88
	adc  b                                           ; $4ea8: $88
	adc  c                                           ; $4ea9: $89
	adc  b                                           ; $4eaa: $88
	adc  c                                           ; $4eab: $89
	adc  b                                           ; $4eac: $88
	adc  b                                           ; $4ead: $88
	adc  b                                           ; $4eae: $88
	adc  b                                           ; $4eaf: $88
	adc  b                                           ; $4eb0: $88
	sbc  b                                           ; $4eb1: $98
	adc  c                                           ; $4eb2: $89
	adc  b                                           ; $4eb3: $88
	adc  b                                           ; $4eb4: $88
	adc  b                                           ; $4eb5: $88
	adc  b                                           ; $4eb6: $88
	adc  b                                           ; $4eb7: $88
	adc  c                                           ; $4eb8: $89
	adc  b                                           ; $4eb9: $88
	adc  b                                           ; $4eba: $88
	add  a                                           ; $4ebb: $87
	ld   a, b                                        ; $4ebc: $78
	adc  b                                           ; $4ebd: $88
	adc  b                                           ; $4ebe: $88
	adc  b                                           ; $4ebf: $88
	sbc  b                                           ; $4ec0: $98
	sbc  b                                           ; $4ec1: $98
	sbc  b                                           ; $4ec2: $98
	ld   [hl], a                                     ; $4ec3: $77
	ld   a, b                                        ; $4ec4: $78
	adc  b                                           ; $4ec5: $88
	adc  b                                           ; $4ec6: $88
	adc  c                                           ; $4ec7: $89
	adc  c                                           ; $4ec8: $89
	sbc  c                                           ; $4ec9: $99
	adc  b                                           ; $4eca: $88
	ld   [hl], a                                     ; $4ecb: $77
	adc  b                                           ; $4ecc: $88
	ld   [hl], a                                     ; $4ecd: $77
	ld   a, b                                        ; $4ece: $78
	sbc  b                                           ; $4ecf: $98
	sbc  c                                           ; $4ed0: $99
	adc  b                                           ; $4ed1: $88
	adc  b                                           ; $4ed2: $88
	adc  b                                           ; $4ed3: $88
	ld   [hl], a                                     ; $4ed4: $77
	ld   [hl], a                                     ; $4ed5: $77
	adc  c                                           ; $4ed6: $89
	adc  c                                           ; $4ed7: $89
	adc  c                                           ; $4ed8: $89
	adc  b                                           ; $4ed9: $88
	adc  b                                           ; $4eda: $88
	adc  b                                           ; $4edb: $88
	ld   [hl], a                                     ; $4edc: $77
	ld   a, b                                        ; $4edd: $78
	adc  b                                           ; $4ede: $88
	adc  b                                           ; $4edf: $88
	sbc  b                                           ; $4ee0: $98
	adc  b                                           ; $4ee1: $88
	adc  b                                           ; $4ee2: $88
	add  a                                           ; $4ee3: $87
	ld   [hl], a                                     ; $4ee4: $77
	adc  c                                           ; $4ee5: $89
	adc  b                                           ; $4ee6: $88
	sbc  b                                           ; $4ee7: $98
	adc  b                                           ; $4ee8: $88
	adc  b                                           ; $4ee9: $88
	adc  b                                           ; $4eea: $88
	ld   [hl], a                                     ; $4eeb: $77
	adc  b                                           ; $4eec: $88
	sbc  b                                           ; $4eed: $98
	adc  c                                           ; $4eee: $89
	adc  b                                           ; $4eef: $88
	adc  b                                           ; $4ef0: $88
	adc  b                                           ; $4ef1: $88
	adc  b                                           ; $4ef2: $88
	ld   a, b                                        ; $4ef3: $78
	adc  c                                           ; $4ef4: $89
	adc  b                                           ; $4ef5: $88
	adc  b                                           ; $4ef6: $88
	adc  b                                           ; $4ef7: $88
	adc  b                                           ; $4ef8: $88
	adc  b                                           ; $4ef9: $88
	ld   a, b                                        ; $4efa: $78
	adc  c                                           ; $4efb: $89
	adc  b                                           ; $4efc: $88
	sbc  b                                           ; $4efd: $98
	adc  b                                           ; $4efe: $88
	adc  b                                           ; $4eff: $88
	add  a                                           ; $4f00: $87
	ld   [hl], a                                     ; $4f01: $77
	adc  b                                           ; $4f02: $88
	sbc  b                                           ; $4f03: $98
	adc  c                                           ; $4f04: $89
	adc  b                                           ; $4f05: $88
	adc  b                                           ; $4f06: $88
	adc  b                                           ; $4f07: $88
	ld   [hl], a                                     ; $4f08: $77
	ld   [hl], a                                     ; $4f09: $77
	adc  b                                           ; $4f0a: $88
	sbc  c                                           ; $4f0b: $99
	sbc  b                                           ; $4f0c: $98
	adc  b                                           ; $4f0d: $88
	adc  b                                           ; $4f0e: $88
	add  a                                           ; $4f0f: $87
	ld   [hl], a                                     ; $4f10: $77
	ld   a, b                                        ; $4f11: $78
	adc  c                                           ; $4f12: $89
	adc  c                                           ; $4f13: $89
	adc  b                                           ; $4f14: $88
	adc  b                                           ; $4f15: $88
	adc  b                                           ; $4f16: $88
	ld   [hl], a                                     ; $4f17: $77
	ld   [hl], a                                     ; $4f18: $77
	adc  b                                           ; $4f19: $88
	sbc  b                                           ; $4f1a: $98
	sbc  b                                           ; $4f1b: $98
	adc  b                                           ; $4f1c: $88
	adc  b                                           ; $4f1d: $88
	ld   [hl], a                                     ; $4f1e: $77
	ld   [hl], a                                     ; $4f1f: $77
	adc  c                                           ; $4f20: $89
	adc  b                                           ; $4f21: $88
	sbc  b                                           ; $4f22: $98
	adc  b                                           ; $4f23: $88
	adc  b                                           ; $4f24: $88
	add  a                                           ; $4f25: $87
	ld   [hl], a                                     ; $4f26: $77
	ld   a, b                                        ; $4f27: $78
	adc  c                                           ; $4f28: $89
	adc  c                                           ; $4f29: $89
	adc  b                                           ; $4f2a: $88
	adc  b                                           ; $4f2b: $88
	adc  b                                           ; $4f2c: $88
	ld   [hl], a                                     ; $4f2d: $77
	ld   [hl], a                                     ; $4f2e: $77
	sbc  b                                           ; $4f2f: $98
	sbc  b                                           ; $4f30: $98
	sbc  b                                           ; $4f31: $98
	adc  b                                           ; $4f32: $88
	adc  b                                           ; $4f33: $88
	ld   [hl], a                                     ; $4f34: $77
	ld   [hl], a                                     ; $4f35: $77
	adc  c                                           ; $4f36: $89
	sbc  c                                           ; $4f37: $99
	adc  b                                           ; $4f38: $88
	adc  b                                           ; $4f39: $88
	adc  b                                           ; $4f3a: $88
	add  a                                           ; $4f3b: $87
	ld   [hl], a                                     ; $4f3c: $77
	ld   a, b                                        ; $4f3d: $78
	adc  c                                           ; $4f3e: $89
	sbc  c                                           ; $4f3f: $99
	adc  b                                           ; $4f40: $88
	adc  c                                           ; $4f41: $89
	adc  b                                           ; $4f42: $88
	ld   [hl], a                                     ; $4f43: $77
	ld   [hl], a                                     ; $4f44: $77
	adc  c                                           ; $4f45: $89
	sbc  c                                           ; $4f46: $99
	sbc  b                                           ; $4f47: $98
	adc  c                                           ; $4f48: $89
	sbc  b                                           ; $4f49: $98
	ld   [hl], a                                     ; $4f4a: $77
	ld   h, [hl]                                     ; $4f4b: $66
	ld   a, b                                        ; $4f4c: $78
	sbc  c                                           ; $4f4d: $99
	sbc  c                                           ; $4f4e: $99
	adc  b                                           ; $4f4f: $88
	sbc  c                                           ; $4f50: $99
	add  a                                           ; $4f51: $87
	halt                                             ; $4f52: $76
	ld   h, a                                        ; $4f53: $67
	sbc  c                                           ; $4f54: $99
	xor  c                                           ; $4f55: $a9
	sbc  b                                           ; $4f56: $98
	sbc  b                                           ; $4f57: $98
	adc  c                                           ; $4f58: $89
	halt                                             ; $4f59: $76
	ld   h, [hl]                                     ; $4f5a: $66
	ld   a, c                                        ; $4f5b: $79
	sbc  d                                           ; $4f5c: $9a
	sbc  c                                           ; $4f5d: $99
	adc  c                                           ; $4f5e: $89
	sbc  c                                           ; $4f5f: $99
	add  a                                           ; $4f60: $87
	ld   h, [hl]                                     ; $4f61: $66
	ld   h, a                                        ; $4f62: $67
	adc  c                                           ; $4f63: $89
	sbc  c                                           ; $4f64: $99
	sbc  b                                           ; $4f65: $98
	sbc  c                                           ; $4f66: $99
	sbc  c                                           ; $4f67: $99
	add  [hl]                                        ; $4f68: $86
	ld   d, l                                        ; $4f69: $55
	ld   l, b                                        ; $4f6a: $68
	sbc  c                                           ; $4f6b: $99
	xor  c                                           ; $4f6c: $a9
	sbc  c                                           ; $4f6d: $99
	sbc  c                                           ; $4f6e: $99
	sbc  b                                           ; $4f6f: $98
	ld   [hl], l                                     ; $4f70: $75
	ld   d, [hl]                                     ; $4f71: $56
	ld   a, c                                        ; $4f72: $79
	sbc  c                                           ; $4f73: $99
	sbc  b                                           ; $4f74: $98
	adc  c                                           ; $4f75: $89
	xor  c                                           ; $4f76: $a9
	add  a                                           ; $4f77: $87
	ld   d, h                                        ; $4f78: $54
	ld   d, [hl]                                     ; $4f79: $56
	adc  d                                           ; $4f7a: $8a
	sbc  c                                           ; $4f7b: $99
	adc  b                                           ; $4f7c: $88
	sbc  c                                           ; $4f7d: $99
	cp   c                                           ; $4f7e: $b9
	add  [hl]                                        ; $4f7f: $86
	ld   b, h                                        ; $4f80: $44
	ld   d, [hl]                                     ; $4f81: $56
	adc  c                                           ; $4f82: $89
	sbc  c                                           ; $4f83: $99
	adc  b                                           ; $4f84: $88
	sbc  e                                           ; $4f85: $9b
	cp   d                                           ; $4f86: $ba
	sub  l                                           ; $4f87: $95
	inc  sp                                          ; $4f88: $33
	ld   b, [hl]                                     ; $4f89: $46
	sbc  d                                           ; $4f8a: $9a
	xor  c                                           ; $4f8b: $a9
	ld   a, c                                        ; $4f8c: $79
	sbc  h                                           ; $4f8d: $9c
	db   $ed                                         ; $4f8e: $ed
	sub  [hl]                                        ; $4f8f: $96
	ld   [hl-], a                                    ; $4f90: $32
	dec  [hl]                                        ; $4f91: $35
	adc  d                                           ; $4f92: $8a
	sbc  b                                           ; $4f93: $98
	ld   [hl], a                                     ; $4f94: $77
	sbc  e                                           ; $4f95: $9b
	rst  $28                                         ; $4f96: $ef
	ret  c                                           ; $4f97: $d8

	ld   b, c                                        ; $4f98: $41
	inc  de                                          ; $4f99: $13
	ld   l, c                                        ; $4f9a: $69
	sbc  c                                           ; $4f9b: $99
	halt                                             ; $4f9c: $76
	adc  d                                           ; $4f9d: $8a
	rst  JumpTable                                         ; $4f9e: $df
	db   $fc                                         ; $4f9f: $fc
	sub  h                                           ; $4fa0: $94
	ld   de, $7835                                   ; $4fa1: $11 $35 $78
	add  a                                           ; $4fa4: $87
	ld   a, b                                        ; $4fa5: $78
	xor  l                                           ; $4fa6: $ad
	rst  $38                                         ; $4fa7: $ff
	jp   c, $1151                                    ; $4fa8: $da $51 $11

	ld   b, a                                        ; $4fab: $47
	sbc  b                                           ; $4fac: $98
	halt                                             ; $4fad: $76
	adc  d                                           ; $4fae: $8a
	rst  JumpTable                                         ; $4faf: $df
	cp   $b6                                         ; $4fb0: $fe $b6
	ld   de, $6813                                   ; $4fb2: $11 $13 $68
	add  a                                           ; $4fb5: $87
	ld   l, b                                        ; $4fb6: $68
	xor  l                                           ; $4fb7: $ad
	rst  $38                                         ; $4fb8: $ff
	db   $fc                                         ; $4fb9: $fc
	ld   [hl], d                                     ; $4fba: $72
	ld   de, $7814                                   ; $4fbb: $11 $14 $78
	add  a                                           ; $4fbe: $87
	ld   a, c                                        ; $4fbf: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fc0: $cf
	rst  $38                                         ; $4fc1: $ff
	reti                                             ; $4fc2: $d9


	ld   sp, $3711                                   ; $4fc3: $31 $11 $37
	sbc  c                                           ; $4fc6: $99
	add  a                                           ; $4fc7: $87
	xor  e                                           ; $4fc8: $ab
	rst  $38                                         ; $4fc9: $ff
	cp   $94                                         ; $4fca: $fe $94
	ld   de, $5811                                   ; $4fcc: $11 $11 $58
	xor  c                                           ; $4fcf: $a9
	adc  c                                           ; $4fd0: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fd1: $cf
	rst  $38                                         ; $4fd2: $ff
	ld   a, [$1151]                                  ; $4fd3: $fa $51 $11
	dec  d                                           ; $4fd6: $15
	sbc  d                                           ; $4fd7: $9a
	xor  c                                           ; $4fd8: $a9
	xor  h                                           ; $4fd9: $ac
	rst  $28                                         ; $4fda: $ef
	rst  $38                                         ; $4fdb: $ff
	or   l                                           ; $4fdc: $b5
	ld   de, $3911                                   ; $4fdd: $11 $11 $39
	xor  e                                           ; $4fe0: $ab
	xor  d                                           ; $4fe1: $aa
	adc  $ff                                         ; $4fe2: $ce $ff
	ei                                               ; $4fe4: $fb
	ld   h, c                                        ; $4fe5: $61
	ld   de, $8c13                                   ; $4fe6: $11 $13 $8c
	jp   z, $cf9b                                    ; $4fe9: $ca $9b $cf

	rst  $38                                         ; $4fec: $ff
	rst  $10                                         ; $4fed: $d7
	ld   de, $1811                                   ; $4fee: $11 $11 $18
	adc  $ca                                         ; $4ff1: $ce $ca
	cp   e                                           ; $4ff3: $bb
	rst  JumpTable                                         ; $4ff4: $df
	cp   $93                                         ; $4ff5: $fe $93
	ld   de, $7c11                                   ; $4ff7: $11 $11 $7c
	xor  $ba                                         ; $4ffa: $ee $ba
	cp   h                                           ; $4ffc: $bc
	rst  $38                                         ; $4ffd: $ff
	ld   [$1151], a                                  ; $4ffe: $ea $51 $11
	inc  d                                           ; $5001: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5002: $cf
	db   $fd                                         ; $5003: $fd
	sbc  e                                           ; $5004: $9b
	xor  l                                           ; $5005: $ad
	cp   $c7                                         ; $5006: $fe $c7
	ld   hl, $1a11                                   ; $5008: $21 $11 $1a
	rst  $38                                         ; $500b: $ff
	ld   a, [$aea9]                                  ; $500c: $fa $a9 $ae
	db   $fd                                         ; $500f: $fd
	and  l                                           ; $5010: $a5
	ld   de, $5e11                                   ; $5011: $11 $11 $5e
	rst  $38                                         ; $5014: $ff
	ret                                              ; $5015: $c9


	xor  b                                           ; $5016: $a8
	cp   a                                           ; $5017: $bf
	db   $ec                                         ; $5018: $ec
	ld   [hl], d                                     ; $5019: $72
	ld   de, $cf12                                   ; $501a: $11 $12 $cf
	rst  $38                                         ; $501d: $ff
	sbc  b                                           ; $501e: $98
	ld   a, d                                        ; $501f: $7a
	rst  JumpTable                                         ; $5020: $df
	jp   c, $1141                                    ; $5021: $da $41 $11

	jr   @+$01                                       ; $5024: $18 $ff

	ld   a, [$7c87]                                  ; $5026: $fa $87 $7c
	db   $ed                                         ; $5029: $ed
	or   [hl]                                        ; $502a: $b6
	ld   de, $4f11                                   ; $502b: $11 $11 $4f
	rst  $38                                         ; $502e: $ff
	rst  $20                                         ; $502f: $e7
	ld   [hl], l                                     ; $5030: $75
	xor  l                                           ; $5031: $ad
	cp   $93                                         ; $5032: $fe $93
	ld   de, $ef12                                   ; $5034: $11 $12 $ef
	rst  $38                                         ; $5037: $ff
	halt                                             ; $5038: $76
	ld   d, a                                        ; $5039: $57
	rst  $28                                         ; $503a: $ef
	ld   [$1141], a                                  ; $503b: $ea $41 $11
	ld   a, [de]                                     ; $503e: $1a
	rst  $38                                         ; $503f: $ff
	ld   a, [$5c55]                                  ; $5040: $fa $55 $5c
	rst  $28                                         ; $5043: $ef
	add  $01                                         ; $5044: $c6 $01
	ld   de, $ff6f                                   ; $5046: $11 $6f $ff
	push de                                          ; $5049: $d5
	ld   d, h                                        ; $504a: $54
	xor  [hl]                                        ; $504b: $ae
	db   $fd                                         ; $504c: $fd
	add  d                                           ; $504d: $82
	ld   de, rAUD1HIGH                                   ; $504e: $11 $14 $ff
	rst  $38                                         ; $5051: $ff
	ld   d, l                                        ; $5052: $55
	ld   c, c                                        ; $5053: $49
	rst  $38                                         ; $5054: $ff
	ld   sp, hl                                      ; $5055: $f9
	ld   sp, $3e11                                   ; $5056: $31 $11 $3e
	rst  $38                                         ; $5059: $ff
	or   $44                                         ; $505a: $f6 $44
	ld   a, [hl]                                     ; $505c: $7e
	rst  $38                                         ; $505d: $ff
	and  l                                           ; $505e: $a5
	ld   de, $cf11                                   ; $505f: $11 $11 $cf
	rst  $38                                         ; $5062: $ff
	add  h                                           ; $5063: $84
	ld   b, l                                        ; $5064: $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5065: $cf
	db   $fd                                         ; $5066: $fd
	ld   h, c                                        ; $5067: $61
	ld   de, $ff1b                                   ; $5068: $11 $1b $ff
	ld   sp, hl                                      ; $506b: $f9
	ld   [hl+], a                                    ; $506c: $22
	ld   c, h                                        ; $506d: $4c
	rst  $38                                         ; $506e: $ff
	and  $11                                         ; $506f: $e6 $11
	ld   de, $ffcf                                   ; $5071: $11 $cf $ff
	add  c                                           ; $5074: $81
	inc  de                                          ; $5075: $13
	rst  JumpTable                                         ; $5076: $df
	cp   $61                                         ; $5077: $fe $61
	ld   de, $ff1c                                   ; $5079: $11 $1c $ff
	ld   hl, sp+$11                                  ; $507c: $f8 $11
	inc  a                                           ; $507e: $3c
	rst  $38                                         ; $507f: $ff
	rst  $30                                         ; $5080: $f7
	ld   de, $bf11                                   ; $5081: $11 $11 $bf
	rst  $38                                         ; $5084: $ff
	add  c                                           ; $5085: $81
	inc  de                                          ; $5086: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5087: $cf
	cp   $61                                         ; $5088: $fe $61
	ld   de, $ff1d                                   ; $508a: $11 $1d $ff
	rst  $30                                         ; $508d: $f7
	ld   de, $ff3d                                   ; $508e: $11 $3d $ff
	and  $11                                         ; $5091: $e6 $11
	ld   de, $ffdf                                   ; $5093: $11 $df $ff
	ld   h, c                                        ; $5096: $61
	inc  de                                          ; $5097: $13
	rst  $28                                         ; $5098: $ef
	cp   $61                                         ; $5099: $fe $61
	ld   de, $ff1f                                   ; $509b: $11 $1f $ff
	db   $f4                                         ; $509e: $f4
	ld   de, $ff5f                                   ; $509f: $11 $5f $ff
	or   e                                           ; $50a2: $b3
	ld   de, rAUD1LOW                                   ; $50a3: $11 $13 $ff
	rst  $38                                         ; $50a6: $ff
	ld   de, $ff19                                   ; $50a7: $11 $19 $ff
	ld   a, [$1121]                                  ; $50aa: $fa $21 $11
	ld   l, a                                        ; $50ad: $6f
	rst  $38                                         ; $50ae: $ff
	pop  bc                                          ; $50af: $c1
	ld   de, $ffbf                                   ; $50b0: $11 $bf $ff
	ld   [hl], c                                     ; $50b3: $71
	ld   de, $ff1c                                   ; $50b4: $11 $1c $ff
	rst  $30                                         ; $50b7: $f7
	ld   de, $ff3e                                   ; $50b8: $11 $3e $ff
	push af                                          ; $50bb: $f5
	ld   de, rAUD1LEN                                   ; $50bc: $11 $11 $ff
	rst  $38                                         ; $50bf: $ff
	ld   sp, $ff16                                   ; $50c0: $31 $16 $ff
	db   $fc                                         ; $50c3: $fc
	ld   sp, $5f11                                   ; $50c4: $31 $11 $5f
	rst  $38                                         ; $50c7: $ff
	or   c                                           ; $50c8: $b1
	ld   de, $ffcf                                   ; $50c9: $11 $cf $ff
	ld   [hl], c                                     ; $50cc: $71
	ld   de, $ff1c                                   ; $50cd: $11 $1c $ff
	push af                                          ; $50d0: $f5
	ld   de, $ff4f                                   ; $50d1: $11 $4f $ff
	db   $d3                                         ; $50d4: $d3
	ld   de, rAUD1LOW                                   ; $50d5: $11 $13 $ff
	cp   $11                                         ; $50d8: $fe $11
	ld   a, [de]                                     ; $50da: $1a
	rst  $38                                         ; $50db: $ff
	ld   hl, sp+$11                                  ; $50dc: $f8 $11
	ld   de, $ffcf                                   ; $50de: $11 $cf $ff
	ld   d, c                                        ; $50e1: $51
	inc  de                                          ; $50e2: $13
	rst  $38                                         ; $50e3: $ff
	db   $fd                                         ; $50e4: $fd
	ld   hl, $5f11                                   ; $50e5: $21 $11 $5f
	rst  $38                                         ; $50e8: $ff
	pop  bc                                          ; $50e9: $c1
	ld   de, $ffcf                                   ; $50ea: $11 $cf $ff
	ld   h, c                                        ; $50ed: $61
	ld   de, $ff1e                                   ; $50ee: $11 $1e $ff
	ldh  a, [c]                                      ; $50f1: $f2
	ld   de, $ff6f                                   ; $50f2: $11 $6f $ff
	and  c                                           ; $50f5: $a1
	ld   de, $ff17                                   ; $50f6: $11 $17 $ff
	ld   sp, hl                                      ; $50f9: $f9
	ld   de, $ff1d                                   ; $50fa: $11 $1d $ff
	db   $f4                                         ; $50fd: $f4
	ld   de, rAUD1ENV                                   ; $50fe: $11 $12 $ff
	rst  $38                                         ; $5101: $ff
	ld   de, $ff19                                   ; $5102: $11 $19 $ff
	ld   hl, sp+$11                                  ; $5105: $f8 $11
	ld   de, $ffcf                                   ; $5107: $11 $cf $ff
	ld   sp, $ff15                                   ; $510a: $31 $15 $ff
	ei                                               ; $510d: $fb
	ld   de, $9f11                                   ; $510e: $11 $11 $9f
	rst  $38                                         ; $5111: $ff
	ld   [hl], c                                     ; $5112: $71
	ld   [de], a                                     ; $5113: $12
	rst  $38                                         ; $5114: $ff
	db   $fd                                         ; $5115: $fd
	ld   sp, $5f11                                   ; $5116: $31 $11 $5f
	rst  $38                                         ; $5119: $ff
	or   c                                           ; $511a: $b1
	ld   de, $ffcf                                   ; $511b: $11 $cf $ff
	ld   d, c                                        ; $511e: $51
	ld   de, $ff2f                                   ; $511f: $11 $2f $ff
	pop  hl                                          ; $5122: $e1
	ld   de, $ffaf                                   ; $5123: $11 $af $ff
	ld   d, c                                        ; $5126: $51
	ld   de, $ff2f                                   ; $5127: $11 $2f $ff
	pop  af                                          ; $512a: $f1
	ld   de, $ff8f                                   ; $512b: $11 $8f $ff
	ld   [hl], c                                     ; $512e: $71
	ld   de, $ff1d                                   ; $512f: $11 $1d $ff
	di                                               ; $5132: $f3
	ld   de, $ff7f                                   ; $5133: $11 $7f $ff
	sub  c                                           ; $5136: $91
	ld   de, $ff1b                                   ; $5137: $11 $1b $ff
	db   $f4                                         ; $513a: $f4
	ld   de, $ff6f                                   ; $513b: $11 $6f $ff
	sub  c                                           ; $513e: $91
	ld   de, $ff1b                                   ; $513f: $11 $1b $ff
	push af                                          ; $5142: $f5
	ld   de, $ff5f                                   ; $5143: $11 $5f $ff
	and  c                                           ; $5146: $a1
	ld   de, $ff1b                                   ; $5147: $11 $1b $ff
	db   $f4                                         ; $514a: $f4
	ld   de, $ff5f                                   ; $514b: $11 $5f $ff
	and  c                                           ; $514e: $a1
	ld   de, $ff1b                                   ; $514f: $11 $1b $ff
	db   $f4                                         ; $5152: $f4
	ld   de, $ff6f                                   ; $5153: $11 $6f $ff
	sub  c                                           ; $5156: $91
	ld   de, $ff1c                                   ; $5157: $11 $1c $ff
	di                                               ; $515a: $f3
	ld   de, $ff7f                                   ; $515b: $11 $7f $ff
	add  c                                           ; $515e: $81
	ld   de, $ff1c                                   ; $515f: $11 $1c $ff
	di                                               ; $5162: $f3
	ld   de, $ff6f                                   ; $5163: $11 $6f $ff
	sub  c                                           ; $5166: $91
	ld   de, $ff1f                                   ; $5167: $11 $1f $ff
	pop  af                                          ; $516a: $f1
	ld   de, $ff9f                                   ; $516b: $11 $9f $ff
	ld   h, c                                        ; $516e: $61
	ld   de, $ff3f                                   ; $516f: $11 $3f $ff
	pop  hl                                          ; $5172: $e1
	ld   [de], a                                     ; $5173: $12
	xor  a                                           ; $5174: $af
	rst  $38                                         ; $5175: $ff
	ld   b, c                                        ; $5176: $41
	ld   de, $ff6f                                   ; $5177: $11 $6f $ff
	or   c                                           ; $517a: $b1
	inc  de                                          ; $517b: $13
	rst  $28                                         ; $517c: $ef
	rst  $38                                         ; $517d: $ff
	ld   de, $af11                                   ; $517e: $11 $11 $af
	rst  $38                                         ; $5181: $ff
	ld   h, c                                        ; $5182: $61
	dec  d                                           ; $5183: $15
	rst  $38                                         ; $5184: $ff
	ei                                               ; $5185: $fb
	ld   de, $ef11                                   ; $5186: $11 $11 $ef
	rst  $38                                         ; $5189: $ff
	ld   de, $ff19                                   ; $518a: $11 $19 $ff
	or   $11                                         ; $518d: $f6 $11
	inc  d                                           ; $518f: $14
	rst  $38                                         ; $5190: $ff
	db   $fc                                         ; $5191: $fc
	ld   de, $ff3d                                   ; $5192: $11 $3d $ff
	pop  af                                          ; $5195: $f1
	ld   de, $ff1b                                   ; $5196: $11 $1b $ff
	db   $f4                                         ; $5199: $f4
	ld   de, $ff7f                                   ; $519a: $11 $7f $ff
	ld   [hl], c                                     ; $519d: $71
	ld   de, $ff5f                                   ; $519e: $11 $5f $ff
	and  c                                           ; $51a1: $a1
	inc  d                                           ; $51a2: $14
	rst  $28                                         ; $51a3: $ef
	db   $fd                                         ; $51a4: $fd
	ld   de, rAUD1LEN                                   ; $51a5: $11 $11 $ff
	cp   $11                                         ; $51a8: $fe $11
	dec  hl                                          ; $51aa: $2b
	rst  $38                                         ; $51ab: $ff
	di                                               ; $51ac: $f3
	ld   de, $ff1a                                   ; $51ad: $11 $1a $ff
	push af                                          ; $51b0: $f5
	ld   de, $ff7f                                   ; $51b1: $11 $7f $ff
	add  c                                           ; $51b4: $81
	ld   de, $ff5f                                   ; $51b5: $11 $5f $ff
	add  c                                           ; $51b8: $81

Call_0e7_51b9:
	inc  d                                           ; $51b9: $14
	rst  $38                                         ; $51ba: $ff
	db   $fc                                         ; $51bb: $fc
	ld   de, rAUD1LEN                                   ; $51bc: $11 $11 $ff
	ei                                               ; $51bf: $fb
	ld   de, $ff2b                                   ; $51c0: $11 $2b $ff
	ldh  a, [c]                                      ; $51c3: $f2
	ld   de, $ff1c                                   ; $51c4: $11 $1c $ff

Call_0e7_51c7:
	di                                               ; $51c7: $f3

Call_0e7_51c8:
	ld   de, $ff8f                                   ; $51c8: $11 $8f $ff
	ld   h, c                                        ; $51cb: $61
	ld   de, $ffaf                                   ; $51cc: $11 $af $ff
	ld   b, c                                        ; $51cf: $41
	rla                                              ; $51d0: $17
	rst  $38                                         ; $51d1: $ff
	ld   sp, hl                                      ; $51d2: $f9
	ld   de, $ff16                                   ; $51d3: $11 $16 $ff
	rst  $30                                         ; $51d6: $f7
	ld   de, $ff5f                                   ; $51d7: $11 $5f $ff
	or   c                                           ; $51da: $b1
	ld   de, $ff3f                                   ; $51db: $11 $3f $ff
	add  c                                           ; $51de: $81
	inc  d                                           ; $51df: $14
	rst  $38                                         ; $51e0: $ff
	db   $fc                                         ; $51e1: $fc
	ld   de, rAUD1ENV                                   ; $51e2: $11 $12 $ff
	ld   sp, hl                                      ; $51e5: $f9
	ld   de, $ff3f                                   ; $51e6: $11 $3f $ff
	pop  bc                                          ; $51e9: $c1
	ld   de, $ff2f                                   ; $51ea: $11 $2f $ff
	sub  c                                           ; $51ed: $91
	inc  de                                          ; $51ee: $13
	rst  $38                                         ; $51ef: $ff
	db   $fc                                         ; $51f0: $fc
	ld   de, rAUD1ENV                                   ; $51f1: $11 $12 $ff
	ld   a, [$3f11]                                  ; $51f4: $fa $11 $3f
	rst  $38                                         ; $51f7: $ff
	pop  de                                          ; $51f8: $d1
	ld   de, $ff1f                                   ; $51f9: $11 $1f $ff
	and  c                                           ; $51fc: $a1
	inc  de                                          ; $51fd: $13
	rst  JumpTable                                         ; $51fe: $df
	cp   $11                                         ; $51ff: $fe $11
	ld   de, $faff                                   ; $5201: $11 $ff $fa
	ld   de, $ff2d                                   ; $5204: $11 $2d $ff
	pop  hl                                          ; $5207: $e1
	ld   de, $ff1f                                   ; $5208: $11 $1f $ff
	and  c                                           ; $520b: $a1
	ld   [de], a                                     ; $520c: $12
	rst  $28                                         ; $520d: $ef
	db   $fd                                         ; $520e: $fd
	ld   de, rAUD1LEN                                   ; $520f: $11 $11 $ff
	ld   sp, hl                                      ; $5212: $f9
	ld   de, $ff3d                                   ; $5213: $11 $3d $ff
	pop  hl                                          ; $5216: $e1
	ld   de, $ff1f                                   ; $5217: $11 $1f $ff
	and  c                                           ; $521a: $a1
	inc  de                                          ; $521b: $13
	rst  $28                                         ; $521c: $ef
	db   $fc                                         ; $521d: $fc
	ld   de, rAUD1LOW                                   ; $521e: $11 $13 $ff
	ld   hl, sp+$11                                  ; $5221: $f8 $11
	ld   c, a                                        ; $5223: $4f
	rst  $38                                         ; $5224: $ff
	and  c                                           ; $5225: $a1
	ld   de, $ff5f                                   ; $5226: $11 $5f $ff
	ld   h, c                                        ; $5229: $61
	ld   d, $ff                                      ; $522a: $16 $ff
	ld   sp, hl                                      ; $522c: $f9
	ld   de, $ff17                                   ; $522d: $11 $17 $ff
	db   $f4                                         ; $5230: $f4
	ld   de, $ff7f                                   ; $5231: $11 $7f $ff
	ld   [hl], c                                     ; $5234: $71
	ld   de, $ff9f                                   ; $5235: $11 $9f $ff
	ld   hl, $ff18                                   ; $5238: $21 $18 $ff
	push af                                          ; $523b: $f5
	ld   de, $ff1c                                   ; $523c: $11 $1c $ff
	pop  af                                          ; $523f: $f1
	ld   de, $ffaf                                   ; $5240: $11 $af $ff
	ld   b, c                                        ; $5243: $41
	ld   de, $fedf                                   ; $5244: $11 $df $fe
	ld   de, $ff1c                                   ; $5247: $11 $1c $ff
	ldh  [c], a                                      ; $524a: $e2
	ld   de, $ff1f                                   ; $524b: $11 $1f $ff
	or   c                                           ; $524e: $b1
	ld   de, $fddf                                   ; $524f: $11 $df $fd
	ld   de, rAUD1LOW                                   ; $5252: $11 $13 $ff
	rst  $30                                         ; $5255: $f7
	ld   de, $ff4f                                   ; $5256: $11 $4f $ff
	or   c                                           ; $5259: $b1
	ld   de, $ff5f                                   ; $525a: $11 $5f $ff
	ld   h, c                                        ; $525d: $61
	dec  d                                           ; $525e: $15
	rst  $38                                         ; $525f: $ff
	ld   sp, hl                                      ; $5260: $f9
	ld   de, $ff18                                   ; $5261: $11 $18 $ff
	di                                               ; $5264: $f3
	ld   de, $ff8f                                   ; $5265: $11 $8f $ff
	ld   h, c                                        ; $5268: $61
	ld   de, $ffcf                                   ; $5269: $11 $cf $ff
	ld   de, $ff1a                                   ; $526c: $11 $1a $ff
	di                                               ; $526f: $f3
	ld   de, $ff1f                                   ; $5270: $11 $1f $ff
	pop  bc                                          ; $5273: $c1
	ld   de, $fecf                                   ; $5274: $11 $cf $fe
	ld   de, rAUD1ENV                                   ; $5277: $11 $12 $ff
	ld   sp, hl                                      ; $527a: $f9
	ld   de, $ff3f                                   ; $527b: $11 $3f $ff
	and  c                                           ; $527e: $a1
	ld   de, $ff5f                                   ; $527f: $11 $5f $ff
	ld   d, c                                        ; $5282: $51
	ld   d, $ff                                      ; $5283: $16 $ff
	ld   hl, sp+$11                                  ; $5285: $f8 $11
	ld   a, [de]                                     ; $5287: $1a
	rst  $38                                         ; $5288: $ff
	pop  af                                          ; $5289: $f1
	ld   de, $ff9f                                   ; $528a: $11 $9f $ff
	ld   b, c                                        ; $528d: $41
	ld   de, $fdef                                   ; $528e: $11 $ef $fd
	ld   de, $ff1c                                   ; $5291: $11 $1c $ff
	pop  af                                          ; $5294: $f1
	ld   de, $ff1f                                   ; $5295: $11 $1f $ff
	and  c                                           ; $5298: $a1
	ld   de, $fcef                                   ; $5299: $11 $ef $fc
	ld   de, rAUD1HIGH                                   ; $529c: $11 $14 $ff
	rst  $30                                         ; $529f: $f7
	ld   de, $ff5f                                   ; $52a0: $11 $5f $ff
	and  c                                           ; $52a3: $a1
	ld   de, $ff9f                                   ; $52a4: $11 $9f $ff
	ld   sp, $ff18                                   ; $52a7: $31 $18 $ff
	push af                                          ; $52aa: $f5
	ld   de, $ff1d                                   ; $52ab: $11 $1d $ff
	pop  hl                                          ; $52ae: $e1
	ld   de, $ffcf                                   ; $52af: $11 $cf $ff
	ld   de, rAUD1LEN                                   ; $52b2: $11 $11 $ff
	ld   a, [$2e11]                                  ; $52b5: $fa $11 $2e
	rst  $38                                         ; $52b8: $ff
	pop  de                                          ; $52b9: $d1
	ld   de, $ff4f                                   ; $52ba: $11 $4f $ff
	ld   h, c                                        ; $52bd: $61
	dec  d                                           ; $52be: $15
	rst  $38                                         ; $52bf: $ff
	ld   a, [$1711]                                  ; $52c0: $fa $11 $17
	rst  $38                                         ; $52c3: $ff
	di                                               ; $52c4: $f3
	ld   de, $ff7f                                   ; $52c5: $11 $7f $ff
	ld   h, c                                        ; $52c8: $61
	ld   de, $ffbf                                   ; $52c9: $11 $bf $ff
	ld   de, $ff1b                                   ; $52cc: $11 $1b $ff
	db   $f4                                         ; $52cf: $f4
	ld   de, $ff1d                                   ; $52d0: $11 $1d $ff
	pop  de                                          ; $52d3: $d1
	ld   de, $fedf                                   ; $52d4: $11 $df $fe
	ld   de, rAUD1LEN                                   ; $52d7: $11 $11 $ff
	ld   sp, hl                                      ; $52da: $f9
	ld   de, $ff3f                                   ; $52db: $11 $3f $ff
	or   c                                           ; $52de: $b1
	ld   de, $ff5f                                   ; $52df: $11 $5f $ff
	ld   d, c                                        ; $52e2: $51
	ld   d, $ff                                      ; $52e3: $16 $ff
	ld   hl, sp+$11                                  ; $52e5: $f8 $11
	jr   @+$01                                       ; $52e7: $18 $ff

	di                                               ; $52e9: $f3
	ld   de, $ff8f                                   ; $52ea: $11 $8f $ff
	ld   h, c                                        ; $52ed: $61
	ld   de, $ffbf                                   ; $52ee: $11 $bf $ff
	ld   de, $ff1a                                   ; $52f1: $11 $1a $ff
	db   $f4                                         ; $52f4: $f4
	ld   de, $ff1e                                   ; $52f5: $11 $1e $ff
	pop  bc                                          ; $52f8: $c1
	ld   de, $ffcf                                   ; $52f9: $11 $cf $ff
	ld   hl, rAUD1LEN                                   ; $52fc: $21 $11 $ff
	ld   a, [$2f11]                                  ; $52ff: $fa $11 $2f
	rst  $38                                         ; $5302: $ff
	pop  de                                          ; $5303: $d1
	ld   de, $ff3f                                   ; $5304: $11 $3f $ff
	ld   [hl], c                                     ; $5307: $71
	dec  d                                           ; $5308: $15
	rst  $38                                         ; $5309: $ff
	ld   a, [$1611]                                  ; $530a: $fa $11 $16
	rst  $38                                         ; $530d: $ff
	db   $f4                                         ; $530e: $f4
	ld   de, $ff7f                                   ; $530f: $11 $7f $ff
	ld   [hl], c                                     ; $5312: $71
	ld   de, $ffaf                                   ; $5313: $11 $af $ff
	ld   de, $ff1a                                   ; $5316: $11 $1a $ff
	db   $f4                                         ; $5319: $f4
	ld   de, $ff1e                                   ; $531a: $11 $1e $ff
	pop  de                                          ; $531d: $d1
	ld   de, $ffcf                                   ; $531e: $11 $cf $ff
	ld   de, rAUD1LEN                                   ; $5321: $11 $11 $ff
	ld   sp, hl                                      ; $5324: $f9
	ld   de, $ff3f                                   ; $5325: $11 $3f $ff
	pop  bc                                          ; $5328: $c1
	ld   de, $ff4f                                   ; $5329: $11 $4f $ff
	ld   h, c                                        ; $532c: $61
	ld   d, $ff                                      ; $532d: $16 $ff
	ld   sp, hl                                      ; $532f: $f9
	ld   de, $ff19                                   ; $5330: $11 $19 $ff
	ldh  a, [c]                                      ; $5333: $f2
	ld   de, $ff9f                                   ; $5334: $11 $9f $ff
	ld   h, c                                        ; $5337: $61
	ld   de, $ffcf                                   ; $5338: $11 $cf $ff
	ld   de, $ff1c                                   ; $533b: $11 $1c $ff
	pop  hl                                          ; $533e: $e1
	ld   de, $ff1f                                   ; $533f: $11 $1f $ff
	or   c                                           ; $5342: $b1
	inc  de                                          ; $5343: $13
	rst  $38                                         ; $5344: $ff
	db   $fc                                         ; $5345: $fc
	ld   de, rAUD1HIGH                                   ; $5346: $11 $14 $ff
	push af                                          ; $5349: $f5
	ld   de, $ff7f                                   ; $534a: $11 $7f $ff
	ld   [hl], c                                     ; $534d: $71
	ld   de, $ffbf                                   ; $534e: $11 $bf $ff
	ld   de, $ff1b                                   ; $5351: $11 $1b $ff
	ldh  a, [c]                                      ; $5354: $f2
	ld   de, $ff1f                                   ; $5355: $11 $1f $ff
	and  c                                           ; $5358: $a1
	inc  de                                          ; $5359: $13
	rst  $38                                         ; $535a: $ff
	db   $fc                                         ; $535b: $fc
	ld   de, $ff15                                   ; $535c: $11 $15 $ff
	db   $f4                                         ; $535f: $f4
	ld   de, $ff7f                                   ; $5360: $11 $7f $ff
	ld   [hl], c                                     ; $5363: $71
	ld   de, $ffcf                                   ; $5364: $11 $cf $ff
	ld   de, $ff1c                                   ; $5367: $11 $1c $ff
	pop  hl                                          ; $536a: $e1
	ld   de, $ff2f                                   ; $536b: $11 $2f $ff
	add  c                                           ; $536e: $81
	dec  d                                           ; $536f: $15
	rst  $38                                         ; $5370: $ff
	ld   sp, hl                                      ; $5371: $f9
	ld   de, $ff18                                   ; $5372: $11 $18 $ff
	pop  af                                          ; $5375: $f1
	ld   de, $ffaf                                   ; $5376: $11 $af $ff
	ld   hl, rAUD1LEN                                   ; $5379: $21 $11 $ff
	ei                                               ; $537c: $fb
	ld   de, $ff4f                                   ; $537d: $11 $4f $ff
	and  c                                           ; $5380: $a1
	ld   de, $ff8f                                   ; $5381: $11 $8f $ff
	ld   de, $ff2b                                   ; $5384: $11 $2b $ff
	pop  de                                          ; $5387: $d1
	ld   de, $ff1f                                   ; $5388: $11 $1f $ff
	and  c                                           ; $538b: $a1
	ld   d, $ff                                      ; $538c: $16 $ff
	ld   sp, hl                                      ; $538e: $f9
	ld   de, $ff1a                                   ; $538f: $11 $1a $ff
	pop  af                                          ; $5392: $f1
	inc  de                                          ; $5393: $13
	cp   a                                           ; $5394: $bf
	db   $fd                                         ; $5395: $fd
	ld   de, rAUD1LEN                                   ; $5396: $11 $11 $ff
	ld   hl, sp+$11                                  ; $5399: $f8 $11
	ld   l, a                                        ; $539b: $6f
	rst  $38                                         ; $539c: $ff
	ld   [hl], c                                     ; $539d: $71
	ld   de, $fecf                                   ; $539e: $11 $cf $fe
	ld   de, $ff5e                                   ; $53a1: $11 $5e $ff
	and  c                                           ; $53a4: $a1
	ld   de, $ff6f                                   ; $53a5: $11 $6f $ff

jr_0e7_53a8:
	ld   hl, $ff4a                                   ; $53a8: $21 $4a $ff
	pop  bc                                          ; $53ab: $c1
	ld   de, $ff1f                                   ; $53ac: $11 $1f $ff
	sub  c                                           ; $53af: $91
	jr   @+$01                                       ; $53b0: $18 $ff

	add  $11                                         ; $53b2: $c6 $11
	dec  e                                           ; $53b4: $1d
	rst  $38                                         ; $53b5: $ff
	pop  de                                          ; $53b6: $d1
	jr   jr_0e7_53a8                                 ; $53b7: $18 $ef

	reti                                             ; $53b9: $d9


	ld   de, $ff17                                   ; $53ba: $11 $17 $ff
	pop  hl                                          ; $53bd: $e1
	rla                                              ; $53be: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53bf: $cf
	ld   sp, hl                                      ; $53c0: $f9
	ld   de, rAUD1HIGH                                   ; $53c1: $11 $14 $ff
	push hl                                          ; $53c4: $e5
	dec  d                                           ; $53c5: $15
	xor  a                                           ; $53c6: $af
	ld   a, [$1331]                                  ; $53c7: $fa $31 $13
	rst  $38                                         ; $53ca: $ff
	ld   a, [$bf12]                                  ; $53cb: $fa $12 $bf
	ld   sp, hl                                      ; $53ce: $f9
	ld   d, c                                        ; $53cf: $51
	inc  de                                          ; $53d0: $13
	rst  $38                                         ; $53d1: $ff
	ei                                               ; $53d2: $fb
	ld   de, $f9bf                                   ; $53d3: $11 $bf $f9
	ld   h, c                                        ; $53d6: $61
	inc  d                                           ; $53d7: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53d8: $cf
	ei                                               ; $53d9: $fb
	ld   de, $fbce                                   ; $53da: $11 $ce $fb
	ld   d, c                                        ; $53dd: $51
	dec  d                                           ; $53de: $15
	cp   a                                           ; $53df: $bf
	ld   a, [$cd11]                                  ; $53e0: $fa $11 $cd
	db   $fc                                         ; $53e3: $fc
	ld   b, c                                        ; $53e4: $41
	ld   d, $af                                      ; $53e5: $16 $af
	ld   sp, hl                                      ; $53e7: $f9
	ld   de, $fddd                                   ; $53e8: $11 $dd $fd
	ld   sp, $bf16                                   ; $53eb: $31 $16 $bf
	rst  $30                                         ; $53ee: $f7
	ld   de, $fddf                                   ; $53ef: $11 $df $fd
	ld   hl, $bf17                                   ; $53f2: $21 $17 $bf
	rst  $30                                         ; $53f5: $f7
	ld   de, $fddf                                   ; $53f6: $11 $df $fd
	ld   de, $cf17                                   ; $53f9: $11 $17 $cf
	or   $11                                         ; $53fc: $f6 $11
	rst  $28                                         ; $53fe: $ef
	ei                                               ; $53ff: $fb
	ld   de, $ef19                                   ; $5400: $11 $19 $ef
	or   $11                                         ; $5403: $f6 $11
	rst  $38                                         ; $5405: $ff
	ld   sp, hl                                      ; $5406: $f9
	ld   de, $ff1b                                   ; $5407: $11 $1b $ff
	push de                                          ; $540a: $d5
	ld   de, $f6ff                                   ; $540b: $11 $ff $f6
	ld   de, $ff1b                                   ; $540e: $11 $1b $ff
	and  l                                           ; $5411: $a5
	inc  de                                          ; $5412: $13
	rst  $38                                         ; $5413: $ff
	db   $f4                                         ; $5414: $f4
	ld   de, $ff1c                                   ; $5415: $11 $1c $ff
	add  l                                           ; $5418: $85
	rla                                              ; $5419: $17
	rst  $38                                         ; $541a: $ff
	pop  af                                          ; $541b: $f1
	ld   de, $ff2d                                   ; $541c: $11 $2d $ff
	ld   d, h                                        ; $541f: $54
	inc  e                                           ; $5420: $1c
	rst  $38                                         ; $5421: $ff
	pop  af                                          ; $5422: $f1
	ld   de, $ff7e                                   ; $5423: $11 $7e $ff
	ld   b, d                                        ; $5426: $42
	rra                                              ; $5427: $1f
	rst  $38                                         ; $5428: $ff
	and  c                                           ; $5429: $a1
	ld   de, $fccf                                   ; $542a: $11 $cf $fc
	ld   sp, $ff1f                                   ; $542d: $31 $1f $ff
	ld   d, c                                        ; $5430: $51
	ld   de, $f7ff                                   ; $5431: $11 $ff $f7
	ld   sp, $ff6f                                   ; $5434: $31 $6f $ff
	ld   de, rAUD1LOW                                   ; $5437: $11 $13 $ff
	db   $f4                                         ; $543a: $f4
	ld   sp, $fcdf                                   ; $543b: $31 $df $fc
	ld   de, $ff1a                                   ; $543e: $11 $1a $ff
	ldh  a, [c]                                      ; $5441: $f2
	ld   hl, $f6ff                                   ; $5442: $21 $ff $f6
	ld   de, $ff1e                                   ; $5445: $11 $1e $ff
	add  e                                           ; $5448: $83
	ld   d, $ff                                      ; $5449: $16 $ff
	pop  de                                          ; $544b: $d1
	ld   de, $ff4f                                   ; $544c: $11 $4f $ff
	ld   [hl-], a                                    ; $544f: $32
	ld   e, $ff                                      ; $5450: $1e $ff
	sub  c                                           ; $5452: $91
	ld   de, $fbcf                                   ; $5453: $11 $cf $fb
	ld   [hl-], a                                    ; $5456: $32
	ld   e, a                                        ; $5457: $5f
	cp   $11                                         ; $5458: $fe $11
	ld   [de], a                                     ; $545a: $12
	rst  $38                                         ; $545b: $ff
	db   $f4                                         ; $545c: $f4
	ld   d, d                                        ; $545d: $52
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $545e: $cf
	reti                                             ; $545f: $d9


	ld   de, $ff1a                                   ; $5460: $11 $1a $ff
	or   e                                           ; $5463: $b3
	ld   d, [hl]                                     ; $5464: $56
	cp   $b2                                         ; $5465: $fe $b2
	ld   de, $ff3f                                   ; $5467: $11 $3f $ff
	ld   d, [hl]                                     ; $546a: $56
	ld   e, l                                        ; $546b: $5d
	db   $fc                                         ; $546c: $fc
	ld   [hl], c                                     ; $546d: $71
	ld   de, $f9cf                                   ; $546e: $11 $cf $f9
	ld   b, [hl]                                     ; $5471: $46
	sbc  a                                           ; $5472: $9f
	ret  z                                           ; $5473: $c8

	ld   de, $ff18                                   ; $5474: $11 $18 $ff
	call nz, $fd77                                   ; $5477: $c4 $77 $fd
	sub  d                                           ; $547a: $92
	ld   de, $ff5f                                   ; $547b: $11 $5f $ff
	ld   d, [hl]                                     ; $547e: $56
	ld   a, l                                        ; $547f: $7d
	ld   hl, sp+$41                                  ; $5480: $f8 $41
	inc  de                                          ; $5482: $13
	rst  $38                                         ; $5483: $ff
	rst  $30                                         ; $5484: $f7
	ld   e, c                                        ; $5485: $59
	adc  $85                                         ; $5486: $ce $85
	ld   de, $ff2b                                   ; $5488: $11 $2b $ff
	and  [hl]                                        ; $548b: $a6
	adc  d                                           ; $548c: $8a
	jp   hl                                          ; $548d: $e9


	ld   h, c                                        ; $548e: $61
	ld   [de], a                                     ; $548f: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5490: $cf
	ld   sp, hl                                      ; $5491: $f9
	ld   l, d                                        ; $5492: $6a
	cp   [hl]                                        ; $5493: $be
	add  l                                           ; $5494: $85
	ld   de, $ff2b                                   ; $5495: $11 $2b $ff
	and  a                                           ; $5498: $a7
	xor  h                                           ; $5499: $ac
	add  sp, $51                                     ; $549a: $e8 $51
	ld   [de], a                                     ; $549c: $12
	cp   a                                           ; $549d: $bf
	ld   a, [$cd7a]                                  ; $549e: $fa $7a $cd
	add  l                                           ; $54a1: $85
	ld   de, $ff2b                                   ; $54a2: $11 $2b $ff
	and  a                                           ; $54a5: $a7
	xor  h                                           ; $54a6: $ac
	add  sp, $51                                     ; $54a7: $e8 $51
	ld   [de], a                                     ; $54a9: $12
	xor  a                                           ; $54aa: $af
	ld   a, [$cd8b]                                  ; $54ab: $fa $8b $cd
	sub  l                                           ; $54ae: $95
	ld   de, $ef2b                                   ; $54af: $11 $2b $ef
	xor  c                                           ; $54b2: $a9
	cp   h                                           ; $54b3: $bc
	rst  ToBoot                                         ; $54b4: $c7
	ld   b, c                                        ; $54b5: $41
	inc  de                                          ; $54b6: $13
	cp   [hl]                                        ; $54b7: $be
	ld   [wPostPrologueScriptEngineGameSubstate], a                                  ; $54b8: $ea $9b $cc
	ld   [hl], l                                     ; $54bb: $75
	ld   de, $fd3b                                   ; $54bc: $11 $3b $fd
	xor  c                                           ; $54bf: $a9
	call z, Call_0e7_51c7                            ; $54c0: $cc $c7 $51
	inc  de                                          ; $54c3: $13
	cp   a                                           ; $54c4: $bf
	ld   [$db9c], a                                  ; $54c5: $ea $9c $db
	ld   [hl], l                                     ; $54c8: $75
	ld   de, $fe3b                                   ; $54c9: $11 $3b $fe
	xor  d                                           ; $54cc: $aa
	call c, $51b6                                    ; $54cd: $dc $b6 $51
	inc  de                                          ; $54d0: $13
	xor  [hl]                                        ; $54d1: $ae
	jp   c, $cbad                                    ; $54d2: $da $ad $cb

	ld   h, l                                        ; $54d5: $65
	ld   de, $ed2a                                   ; $54d6: $11 $2a $ed
	xor  d                                           ; $54d9: $aa
	db   $ed                                         ; $54da: $ed
	or   [hl]                                        ; $54db: $b6
	ld   d, c                                        ; $54dc: $51
	ld   [de], a                                     ; $54dd: $12
	sbc  [hl]                                        ; $54de: $9e
	db   $db                                         ; $54df: $db
	cp   l                                           ; $54e0: $bd
	db   $db                                         ; $54e1: $db
	ld   h, l                                        ; $54e2: $65
	ld   de, $dd29                                   ; $54e3: $11 $29 $dd
	xor  e                                           ; $54e6: $ab
	db   $ed                                         ; $54e7: $ed
	or   [hl]                                        ; $54e8: $b6
	ld   h, c                                        ; $54e9: $61
	ld   de, $eaad                                   ; $54ea: $11 $ad $ea
	adc  $db                                         ; $54ed: $ce $db
	ld   h, [hl]                                     ; $54ef: $66
	ld   de, $de18                                   ; $54f0: $11 $18 $de
	cp   h                                           ; $54f3: $bc
	db   $fc                                         ; $54f4: $fc
	or   a                                           ; $54f5: $b7
	ld   h, c                                        ; $54f6: $61
	ld   de, $db8d                                   ; $54f7: $11 $8d $db
	rst  JumpTable                                         ; $54fa: $df
	db   $db                                         ; $54fb: $db
	halt                                             ; $54fc: $76
	ld   de, $dd17                                   ; $54fd: $11 $17 $dd
	cp   l                                           ; $5500: $bd
	db   $fd                                         ; $5501: $fd
	or   a                                           ; $5502: $b7
	ld   h, e                                        ; $5503: $63
	ld   de, $cb6c                                   ; $5504: $11 $6c $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5507: $cf
	db   $db                                         ; $5508: $db
	halt                                             ; $5509: $76
	ld   b, c                                        ; $550a: $41
	dec  d                                           ; $550b: $15
	cp   h                                           ; $550c: $bc
	cp   h                                           ; $550d: $bc
	rst  $38                                         ; $550e: $ff
	ret                                              ; $550f: $c9


	halt                                             ; $5510: $76
	ld   de, $ca3a                                   ; $5511: $11 $3a $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5514: $cf
	ei                                               ; $5515: $fb
	and  a                                           ; $5516: $a7
	ld   [hl], c                                     ; $5517: $71
	ld   de, $ab9a                                   ; $5518: $11 $9a $ab
	rst  $38                                         ; $551b: $ff
	cp   e                                           ; $551c: $bb
	ld   a, c                                        ; $551d: $79
	ld   de, $a917                                   ; $551e: $11 $17 $a9
	xor  a                                           ; $5521: $af
	db   $fc                                         ; $5522: $fc
	ret                                              ; $5523: $c9


	sub  e                                           ; $5524: $93
	ld   de, $7a59                                   ; $5525: $11 $59 $7a
	rst  $28                                         ; $5528: $ef
	ei                                               ; $5529: $fb
	cp   d                                           ; $552a: $ba
	ld   h, c                                        ; $552b: $61
	ld   [de], a                                     ; $552c: $12
	sub  [hl]                                        ; $552d: $96
	adc  h                                           ; $552e: $8c
	rst  $38                                         ; $552f: $ff
	call $11a8                                       ; $5530: $cd $a8 $11
	ld   d, $65                                      ; $5533: $16 $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5535: $cf
	db   $fd                                         ; $5536: $fd
	db   $ec                                         ; $5537: $ec
	sub  h                                           ; $5538: $94
	ld   de, $3927                                   ; $5539: $11 $27 $39
	rst  JumpTable                                         ; $553c: $df
	db   $fd                                         ; $553d: $fd
	ei                                               ; $553e: $fb
	add  c                                           ; $553f: $81
	ld   de, $4c44                                   ; $5540: $11 $44 $4c
	rst  $38                                         ; $5543: $ff
	rst  JumpTable                                         ; $5544: $df
	ld   [$1161], a                                  ; $5545: $ea $61 $11
	ld   b, d                                        ; $5548: $42
	ld   a, h                                        ; $5549: $7c
	rst  $38                                         ; $554a: $ff
	rst  $38                                         ; $554b: $ff
	cp   c                                           ; $554c: $b9
	ld   b, c                                        ; $554d: $41
	ld   de, $ad32                                   ; $554e: $11 $32 $ad
	rst  $38                                         ; $5551: $ff
	rst  $38                                         ; $5552: $ff
	cp   c                                           ; $5553: $b9
	ld   hl, $1312                                   ; $5554: $21 $12 $13
	sbc  a                                           ; $5557: $9f
	rst  $38                                         ; $5558: $ff
	rst  $38                                         ; $5559: $ff
	or   a                                           ; $555a: $b7
	ld   de, $1411                                   ; $555b: $11 $11 $14
	xor  a                                           ; $555e: $af
	rst  $38                                         ; $555f: $ff
	cp   $a5                                         ; $5560: $fe $a5
	ld   de, $1411                                   ; $5562: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5565: $cf
	rst  $38                                         ; $5566: $ff
	cp   $84                                         ; $5567: $fe $84
	ld   de, $1511                                   ; $5569: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $556c: $cf
	rst  $38                                         ; $556d: $ff
	db   $fd                                         ; $556e: $fd
	ld   [hl], l                                     ; $556f: $75
	ld   de, $2411                                   ; $5570: $11 $11 $24
	rst  JumpTable                                         ; $5573: $df
	rst  $38                                         ; $5574: $ff
	db   $fc                                         ; $5575: $fc
	ld   [hl], l                                     ; $5576: $75
	ld   de, $2411                                   ; $5577: $11 $11 $24
	rst  JumpTable                                         ; $557a: $df
	rst  $38                                         ; $557b: $ff
	db   $fd                                         ; $557c: $fd
	ld   [hl], l                                     ; $557d: $75
	ld   de, $2311                                   ; $557e: $11 $11 $23
	rst  $28                                         ; $5581: $ef
	rst  $38                                         ; $5582: $ff
	db   $fd                                         ; $5583: $fd
	add  [hl]                                        ; $5584: $86
	ld   de, $2201                                   ; $5585: $11 $01 $22
	rst  JumpTable                                         ; $5588: $df
	rst  $38                                         ; $5589: $ff
	cp   $96                                         ; $558a: $fe $96
	ld   hl, $2111                                   ; $558c: $21 $11 $21
	cp   a                                           ; $558f: $bf
	rst  $38                                         ; $5590: $ff
	rst  $38                                         ; $5591: $ff
	and  a                                           ; $5592: $a7
	ld   b, c                                        ; $5593: $41
	ld   de, $7e11                                   ; $5594: $11 $11 $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5597: $cf
	rst  $38                                         ; $5598: $ff
	reti                                             ; $5599: $d9


	ld   h, c                                        ; $559a: $61
	ld   hl, $3b11                                   ; $559b: $21 $11 $3b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $559e: $cf
	rst  $38                                         ; $559f: $ff
	db   $fc                                         ; $55a0: $fc
	sub  d                                           ; $55a1: $92
	ld   hl, $1611                                   ; $55a2: $21 $11 $16
	xor  l                                           ; $55a5: $ad
	rst  $38                                         ; $55a6: $ff
	rst  $38                                         ; $55a7: $ff
	and  a                                           ; $55a8: $a7
	inc  hl                                          ; $55a9: $23
	ld   de, $6911                                   ; $55aa: $11 $11 $69
	rst  $38                                         ; $55ad: $ff
	rst  $38                                         ; $55ae: $ff
	jp   c, $2163                                    ; $55af: $da $63 $21

	ld   de, $cf17                                   ; $55b2: $11 $17 $cf
	rst  $38                                         ; $55b5: $ff
	db   $fc                                         ; $55b6: $fc
	sub  a                                           ; $55b7: $97
	ld   sp, $1111                                   ; $55b8: $31 $11 $11
	ld   a, e                                        ; $55bb: $7b
	rst  $38                                         ; $55bc: $ff
	rst  $38                                         ; $55bd: $ff
	bit  6, e                                        ; $55be: $cb $73
	ld   de, $1611                                   ; $55c0: $11 $11 $16
	sbc  a                                           ; $55c3: $9f
	rst  $38                                         ; $55c4: $ff
	cp   $b7                                         ; $55c5: $fe $b7
	ld   d, e                                        ; $55c7: $53
	ld   de, $5711                                   ; $55c8: $11 $11 $57
	rst  JumpTable                                         ; $55cb: $df
	rst  $38                                         ; $55cc: $ff
	db   $fc                                         ; $55cd: $fc
	and  [hl]                                        ; $55ce: $a6
	ld   b, c                                        ; $55cf: $41
	ld   de, $7a12                                   ; $55d0: $11 $12 $7a
	rst  $28                                         ; $55d3: $ef
	rst  $38                                         ; $55d4: $ff
	ei                                               ; $55d5: $fb
	add  l                                           ; $55d6: $85
	ld   b, c                                        ; $55d7: $41
	ld   de, $7b15                                   ; $55d8: $11 $15 $7b
	rst  $38                                         ; $55db: $ff
	rst  $38                                         ; $55dc: $ff
	db   $db                                         ; $55dd: $db
	halt                                             ; $55de: $76
	ld   hl, $1611                                   ; $55df: $21 $11 $16
	adc  h                                           ; $55e2: $8c
	cp   $ff                                         ; $55e3: $fe $ff
	jp   z, $1185                                    ; $55e5: $ca $85 $11

	ld   de, $7f27                                   ; $55e8: $11 $27 $7f
	cp   $ff                                         ; $55eb: $fe $ff
	jp   c, $1184                                    ; $55ed: $da $84 $11

	ld   de, $6f27                                   ; $55f0: $11 $27 $6f
	rst  $38                                         ; $55f3: $ff
	rst  $38                                         ; $55f4: $ff
	res  0, h                                        ; $55f5: $cb $84
	ld   bc, $1711                                   ; $55f7: $01 $11 $17
	ld   l, a                                        ; $55fa: $6f
	cp   $ff                                         ; $55fb: $fe $ff
	cp   h                                           ; $55fd: $bc
	sub  l                                           ; $55fe: $95
	ld   de, $1511                                   ; $55ff: $11 $11 $15
	ld   l, e                                        ; $5602: $6b
	cp   $ff                                         ; $5603: $fe $ff
	adc  $96                                         ; $5605: $ce $96
	ld   sp, $1311                                   ; $5607: $31 $11 $13
	ld   h, a                                        ; $560a: $67
	rst  $38                                         ; $560b: $ff
	rst  $38                                         ; $560c: $ff
	db   $ed                                         ; $560d: $ed
	rst  ToBoot                                         ; $560e: $c7
	ld   d, d                                        ; $560f: $52
	ld   de, $5611                                   ; $5610: $11 $11 $56
	sbc  a                                           ; $5613: $9f
	rst  $38                                         ; $5614: $ff
	cp   $da                                         ; $5615: $fe $da
	ld   [hl], h                                     ; $5617: $74
	ld   hl, $1511                                   ; $5618: $21 $11 $15
	ld   a, d                                        ; $561b: $7a
	rst  $38                                         ; $561c: $ff
	rst  $38                                         ; $561d: $ff
	call c, $52b7                                    ; $561e: $dc $b7 $52
	ld   de, $4811                                   ; $5621: $11 $11 $48
	adc  a                                           ; $5624: $8f
	cp   $fe                                         ; $5625: $fe $fe
	res  0, [hl]                                     ; $5627: $cb $86
	ld   [hl-], a                                    ; $5629: $32
	ld   bc, $7812                                   ; $562a: $01 $12 $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $562d: $cf
	rst  JumpTable                                         ; $562e: $df
	db   $fd                                         ; $562f: $fd
	ret                                              ; $5630: $c9


	ld   [hl], h                                     ; $5631: $74
	ld   hl, $1611                                   ; $5632: $21 $11 $16
	ld   l, c                                        ; $5635: $69
	db   $ed                                         ; $5636: $ed
	rst  $38                                         ; $5637: $ff
	db   $dd                                         ; $5638: $dd
	cp   c                                           ; $5639: $b9
	ld   h, h                                        ; $563a: $64
	ld   hl, $2611                                   ; $563b: $21 $11 $26
	ld   a, d                                        ; $563e: $7a
	db   $fd                                         ; $563f: $fd
	rst  $28                                         ; $5640: $ef
	adc  $c8                                         ; $5641: $ce $c8
	ld   [hl], h                                     ; $5643: $74
	ld   de, $2511                                   ; $5644: $11 $11 $25
	ld   l, d                                        ; $5647: $6a
	xor  $ff                                         ; $5648: $ee $ff
	sbc  $c8                                         ; $564a: $de $c8
	ld   [hl], h                                     ; $564c: $74
	ld   de, $1411                                   ; $564d: $11 $11 $14
	ld   l, d                                        ; $5650: $6a
	cp   $ff                                         ; $5651: $fe $ff
	xor  $d8                                         ; $5653: $ee $d8
	ld   [hl], h                                     ; $5655: $74
	ld   de, $1511                                   ; $5656: $11 $11 $15
	ld   e, c                                        ; $5659: $59
	db   $fc                                         ; $565a: $fc
	rst  $38                                         ; $565b: $ff
	rst  $28                                         ; $565c: $ef
	reti                                             ; $565d: $d9


	add  [hl]                                        ; $565e: $86
	ld   de, $1321                                   ; $565f: $11 $21 $13
	ld   b, a                                        ; $5662: $47
	cp   [hl]                                        ; $5663: $be
	rst  JumpTable                                         ; $5664: $df
	cp   $ec                                         ; $5665: $fe $ec
	sbc  b                                           ; $5667: $98
	ld   d, c                                        ; $5668: $51
	ld   de, $2411                                   ; $5669: $11 $11 $24
	ld   a, e                                        ; $566c: $7b
	cp   $ff                                         ; $566d: $fe $ff
	rst  $28                                         ; $566f: $ef
	ret                                              ; $5670: $c9


	add  e                                           ; $5671: $83
	ld   de, $1311                                   ; $5672: $11 $11 $13
	ld   c, c                                        ; $5675: $49
	sbc  $ff                                         ; $5676: $de $ff
	rst  $38                                         ; $5678: $ff
	db   $fc                                         ; $5679: $fc
	sub  a                                           ; $567a: $97
	ld   sp, $1111                                   ; $567b: $31 $11 $11
	inc  [hl]                                        ; $567e: $34
	adc  e                                           ; $567f: $8b
	rst  $28                                         ; $5680: $ef
	rst  $28                                         ; $5681: $ef
	xor  $db                                         ; $5682: $ee $db
	sub  l                                           ; $5684: $95
	ld   sp, $1111                                   ; $5685: $31 $11 $11
	ld   b, h                                        ; $5688: $44
	adc  h                                           ; $5689: $8c
	sbc  $ff                                         ; $568a: $de $ff
	rst  $38                                         ; $568c: $ff
	jp   c, $2184                                    ; $568d: $da $84 $21

	ld   de, $3611                                   ; $5690: $11 $11 $36
	sbc  l                                           ; $5693: $9d
	rst  $38                                         ; $5694: $ff
	rst  $38                                         ; $5695: $ff
	rst  $28                                         ; $5696: $ef
	jp   c, $2175                                    ; $5697: $da $75 $21

	ld   de, $2611                                   ; $569a: $11 $11 $26
	adc  e                                           ; $569d: $8b
	rst  $28                                         ; $569e: $ef
	rst  $38                                         ; $569f: $ff
	rst  $38                                         ; $56a0: $ff
	db   $eb                                         ; $56a1: $eb
	sub  l                                           ; $56a2: $95
	ld   b, c                                        ; $56a3: $41
	ld   de, $1411                                   ; $56a4: $11 $11 $14
	ld   a, c                                        ; $56a7: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56a8: $cf
	rst  $38                                         ; $56a9: $ff
	rst  $38                                         ; $56aa: $ff
	db   $fd                                         ; $56ab: $fd
	and  a                                           ; $56ac: $a7
	ld   b, d                                        ; $56ad: $42
	ld   de, $1111                                   ; $56ae: $11 $11 $11
	ld   l, b                                        ; $56b1: $68
	xor  [hl]                                        ; $56b2: $ae
	rst  $38                                         ; $56b3: $ff
	rst  $38                                         ; $56b4: $ff
	rst  $28                                         ; $56b5: $ef
	reti                                             ; $56b6: $d9


Call_0e7_56b7:
	ld   h, e                                        ; $56b7: $63
	ld   de, $1111                                   ; $56b8: $11 $11 $11
	ld   h, $ab                                      ; $56bb: $26 $ab
	rst  $38                                         ; $56bd: $ff
	rst  $38                                         ; $56be: $ff
	rst  $38                                         ; $56bf: $ff
	call c, $2176                                    ; $56c0: $dc $76 $21
	ld   de, $2211                                   ; $56c3: $11 $11 $22
	ld   l, e                                        ; $56c6: $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56c7: $cf
	rst  $38                                         ; $56c8: $ff
	rst  $38                                         ; $56c9: $ff
	db   $fd                                         ; $56ca: $fd
	cp   c                                           ; $56cb: $b9
	ld   d, e                                        ; $56cc: $53
	ld   de, $1211                                   ; $56cd: $11 $11 $12
	ld   b, h                                        ; $56d0: $44
	cp   l                                           ; $56d1: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56d2: $cf
	rst  $38                                         ; $56d3: $ff
	rst  $38                                         ; $56d4: $ff
	cp   d                                           ; $56d5: $ba
	and  l                                           ; $56d6: $a5
	ld   b, e                                        ; $56d7: $43
	ld   de, $1311                                   ; $56d8: $11 $11 $13
	ld   d, [hl]                                     ; $56db: $56
	cp   l                                           ; $56dc: $bd
	rst  $38                                         ; $56dd: $ff
	rst  $38                                         ; $56de: $ff
	rst  $38                                         ; $56df: $ff
	cp   e                                           ; $56e0: $bb
	sub  l                                           ; $56e1: $95
	ld   sp, $1111                                   ; $56e2: $31 $11 $11
	dec  d                                           ; $56e5: $15
	ld   e, b                                        ; $56e6: $58
	sbc  $ff                                         ; $56e7: $de $ff
	rst  $38                                         ; $56e9: $ff
	db   $fd                                         ; $56ea: $fd
	xor  d                                           ; $56eb: $aa
	ld   [hl], l                                     ; $56ec: $75
	ld   hl, $1111                                   ; $56ed: $21 $11 $11
	dec  d                                           ; $56f0: $15
	ld   a, c                                        ; $56f1: $79
	rst  $28                                         ; $56f2: $ef
	rst  $38                                         ; $56f3: $ff
	rst  $38                                         ; $56f4: $ff
	db   $fd                                         ; $56f5: $fd
	xor  c                                           ; $56f6: $a9
	ld   h, l                                        ; $56f7: $65
	ld   hl, $1111                                   ; $56f8: $21 $11 $11
	ld   h, $79                                      ; $56fb: $26 $79
	xor  $ff                                         ; $56fd: $ee $ff
	cp   $fd                                         ; $56ff: $fe $fd
	xor  c                                           ; $5701: $a9
	ld   h, h                                        ; $5702: $64
	ld   hl, $1111                                   ; $5703: $21 $11 $11
	ld   h, $79                                      ; $5706: $26 $79
	rst  $28                                         ; $5708: $ef
	rst  $38                                         ; $5709: $ff
	cp   $fd                                         ; $570a: $fe $fd
	xor  c                                           ; $570c: $a9
	ld   h, h                                        ; $570d: $64
	ld   hl, $1111                                   ; $570e: $21 $11 $11
	ld   h, $89                                      ; $5711: $26 $89
	rst  JumpTable                                         ; $5713: $df
	rst  $38                                         ; $5714: $ff
	rst  $38                                         ; $5715: $ff
	db   $fd                                         ; $5716: $fd
	cp   b                                           ; $5717: $b8
	ld   h, l                                        ; $5718: $65
	ld   de, $1111                                   ; $5719: $11 $11 $11
	ld   d, $88                                      ; $571c: $16 $88
	rst  $28                                         ; $571e: $ef
	rst  $38                                         ; $571f: $ff
	rst  $38                                         ; $5720: $ff
	db   $fd                                         ; $5721: $fd
	or   a                                           ; $5722: $b7
	ld   d, h                                        ; $5723: $54
	ld   de, $1211                                   ; $5724: $11 $11 $12
	ld   d, $a9                                      ; $5727: $16 $a9
	rst  $28                                         ; $5729: $ef
	rst  $38                                         ; $572a: $ff
	rst  $38                                         ; $572b: $ff
	db   $ec                                         ; $572c: $ec
	xor  b                                           ; $572d: $a8
	ld   d, h                                        ; $572e: $54
	ld   hl, $1211                                   ; $572f: $21 $11 $12
	dec  h                                           ; $5732: $25
	cp   d                                           ; $5733: $ba
	rst  JumpTable                                         ; $5734: $df
	rst  $38                                         ; $5735: $ff
	rst  $38                                         ; $5736: $ff
	call c, $54a8                                    ; $5737: $dc $a8 $54
	ld   hl, $1211                                   ; $573a: $21 $11 $12
	inc  h                                           ; $573d: $24
	cp   c                                           ; $573e: $b9
	cp   a                                           ; $573f: $bf
	rst  $38                                         ; $5740: $ff
	rst  $38                                         ; $5741: $ff
	db   $ec                                         ; $5742: $ec
	sbc  c                                           ; $5743: $99
	ld   d, e                                        ; $5744: $53
	ld   sp, $1211                                   ; $5745: $31 $11 $12
	inc  [hl]                                        ; $5748: $34
	cp   e                                           ; $5749: $bb
	cp   a                                           ; $574a: $bf
	rst  $38                                         ; $574b: $ff
	rst  $38                                         ; $574c: $ff
	db   $eb                                         ; $574d: $eb
	adc  c                                           ; $574e: $89
	ld   h, h                                        ; $574f: $64
	ld   b, c                                        ; $5750: $41
	ld   de, $4312                                   ; $5751: $11 $12 $43
	sbc  d                                           ; $5754: $9a
	cp   a                                           ; $5755: $bf
	rst  $38                                         ; $5756: $ff
	rst  $38                                         ; $5757: $ff
	call c, $75aa                                    ; $5758: $dc $aa $75
	ld   b, c                                        ; $575b: $41
	ld   de, $4311                                   ; $575c: $11 $11 $43
	ld   l, e                                        ; $575f: $6b
	cp   [hl]                                        ; $5760: $be
	rst  $38                                         ; $5761: $ff
	rst  $38                                         ; $5762: $ff
	db   $ed                                         ; $5763: $ed
	xor  c                                           ; $5764: $a9
	add  [hl]                                        ; $5765: $86
	ld   b, d                                        ; $5766: $42
	ld   de, $2511                                   ; $5767: $11 $11 $25
	add  hl, sp                                      ; $576a: $39
	call z, $ffff                                    ; $576b: $cc $ff $ff
	db   $fd                                         ; $576e: $fd
	ret                                              ; $576f: $c9


	add  a                                           ; $5770: $87
	ld   d, h                                        ; $5771: $54
	ld   bc, $1411                                   ; $5772: $01 $11 $14
	ld   b, a                                        ; $5775: $47
	call z, $ffef                                    ; $5776: $cc $ef $ff
	db   $ec                                         ; $5779: $ec
	reti                                             ; $577a: $d9


	sbc  b                                           ; $577b: $98
	ld   d, l                                        ; $577c: $55
	ld   sp, $1311                                   ; $577d: $31 $11 $13
	ld   b, l                                        ; $5780: $45
	sbc  e                                           ; $5781: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5782: $cf
	rst  $38                                         ; $5783: $ff
	rst  $38                                         ; $5784: $ff
	db   $db                                         ; $5785: $db
	sbc  c                                           ; $5786: $99

Jump_0e7_5787:
	ld   h, [hl]                                     ; $5787: $66
	ld   [hl-], a                                    ; $5788: $32
	ld   de, $4411                                   ; $5789: $11 $11 $44
	ld   a, e                                        ; $578c: $7b
	call $feff                                       ; $578d: $cd $ff $fe
	call $8699                                       ; $5790: $cd $99 $86
	ld   d, d                                        ; $5793: $52
	ld   de, $4511                                   ; $5794: $11 $11 $45
	ld   e, d                                        ; $5797: $5a
	cp   e                                           ; $5798: $bb
	rst  $28                                         ; $5799: $ef
	rst  $38                                         ; $579a: $ff
	call $97a8                                       ; $579b: $cd $a8 $97
	ld   h, l                                        ; $579e: $65
	ld   sp, $1411                                   ; $579f: $31 $11 $14
	ld   b, [hl]                                     ; $57a2: $46
	xor  e                                           ; $57a3: $ab
	rst  JumpTable                                         ; $57a4: $df
	rst  $38                                         ; $57a5: $ff
	db   $fc                                         ; $57a6: $fc
	jp   z, Jump_0e7_7798                            ; $57a7: $ca $98 $77

	ld   d, e                                        ; $57aa: $53
	ld   de, $4511                                   ; $57ab: $11 $11 $45
	ld   a, d                                        ; $57ae: $7a
	call $feff                                       ; $57af: $cd $ff $fe
	call z, $87a9                                    ; $57b2: $cc $a9 $87
	ld   h, l                                        ; $57b5: $65
	ld   hl, $2511                                   ; $57b6: $21 $11 $25
	ld   d, a                                        ; $57b9: $57
	cp   h                                           ; $57ba: $bc
	rst  $28                                         ; $57bb: $ef
	rst  $38                                         ; $57bc: $ff
	res  7, c                                        ; $57bd: $cb $b9
	sbc  c                                           ; $57bf: $99
	ld   [hl], a                                     ; $57c0: $77
	ld   d, d                                        ; $57c1: $52
	ld   de, $5413                                   ; $57c2: $11 $13 $54
	ld   a, d                                        ; $57c5: $7a
	adc  $ff                                         ; $57c6: $ce $ff
	db   $ec                                         ; $57c8: $ec
	cp   e                                           ; $57c9: $bb
	adc  c                                           ; $57ca: $89
	add  a                                           ; $57cb: $87
	ld   h, h                                        ; $57cc: $64
	ld   de, $4511                                   ; $57cd: $11 $11 $45
	ld   l, c                                        ; $57d0: $69
	cp   l                                           ; $57d1: $bd
	sbc  $ee                                         ; $57d2: $de $ee
	jp   z, $a8ba                                    ; $57d4: $ca $ba $a8

	halt                                             ; $57d7: $76
	ld   d, c                                        ; $57d8: $51
	ld   de, $6415                                   ; $57d9: $11 $15 $64
	adc  h                                           ; $57dc: $8c
	rst  $28                                         ; $57dd: $ef
	xor  $da                                         ; $57de: $ee $da
	cp   c                                           ; $57e0: $b9
	sbc  d                                           ; $57e1: $9a
	add  a                                           ; $57e2: $87
	ld   d, h                                        ; $57e3: $54
	ld   de, $5512                                   ; $57e4: $11 $12 $55
	ld   e, c                                        ; $57e7: $59
	adc  $fe                                         ; $57e8: $ce $fe
	xor  $bb                                         ; $57ea: $ee $bb
	sbc  d                                           ; $57ec: $9a
	xor  c                                           ; $57ed: $a9
	ld   [hl], l                                     ; $57ee: $75
	ld   b, c                                        ; $57ef: $41
	ld   de, $6635                                   ; $57f0: $11 $35 $66
	adc  h                                           ; $57f3: $8c
	rst  $28                                         ; $57f4: $ef
	call $b8dc                                       ; $57f5: $cd $dc $b8
	xor  d                                           ; $57f8: $aa
	and  a                                           ; $57f9: $a7
	ld   h, h                                        ; $57fa: $64
	ld   de, $4711                                   ; $57fb: $11 $11 $47
	ld   a, b                                        ; $57fe: $78
	xor  l                                           ; $57ff: $ad
	xor  $dc                                         ; $5800: $ee $dc
	cp   e                                           ; $5802: $bb

Jump_0e7_5803:
	cp   d                                           ; $5803: $ba
	sbc  b                                           ; $5804: $98
	add  a                                           ; $5805: $87
	ld   b, c                                        ; $5806: $41
	ld   de, $6724                                   ; $5807: $11 $24 $67
	sbc  e                                           ; $580a: $9b
	adc  $dd                                         ; $580b: $ce $dd
	ld   [$a9aa], a                                  ; $580d: $ea $aa $a9
	adc  b                                           ; $5810: $88
	ld   h, l                                        ; $5811: $65
	ld   de, $3712                                   ; $5812: $11 $12 $37
	ld   l, b                                        ; $5815: $68
	xor  h                                           ; $5816: $ac
	xor  $dd                                         ; $5817: $ee $dd
	cp   e                                           ; $5819: $bb
	xor  d                                           ; $581a: $aa
	sbc  c                                           ; $581b: $99
	sub  a                                           ; $581c: $97
	ld   d, d                                        ; $581d: $52
	ld   de, $6624                                   ; $581e: $11 $24 $66
	sbc  c                                           ; $5821: $99
	call z, $dcce                                    ; $5822: $cc $ce $dc
	xor  c                                           ; $5825: $a9
	xor  d                                           ; $5826: $aa
	sbc  b                                           ; $5827: $98
	ld   h, l                                        ; $5828: $65
	ld   sp, $3611                                   ; $5829: $31 $11 $36
	ld   [hl], a                                     ; $582c: $77
	adc  e                                           ; $582d: $8b
	xor  $db                                         ; $582e: $ee $db
	cp   e                                           ; $5830: $bb
	xor  d                                           ; $5831: $aa
	sbc  c                                           ; $5832: $99
	sbc  c                                           ; $5833: $99
	ld   h, e                                        ; $5834: $63
	ld   de, $5713                                   ; $5835: $11 $13 $57
	xor  c                                           ; $5838: $a9
	sbc  d                                           ; $5839: $9a
	call $aadd                                       ; $583a: $cd $dd $aa
	res  1, b                                        ; $583d: $cb $88
	ld   [hl], a                                     ; $583f: $77
	ld   d, c                                        ; $5840: $51
	ld   de, $6535                                   ; $5841: $11 $35 $65
	ld   a, d                                        ; $5844: $7a
	call c, $ddcc                                    ; $5845: $dc $cc $dd
	cp   c                                           ; $5848: $b9
	sbc  b                                           ; $5849: $98
	sbc  c                                           ; $584a: $99
	ld   [hl], l                                     ; $584b: $75
	ld   hl, $3611                                   ; $584c: $21 $11 $36
	adc  c                                           ; $584f: $89
	adc  e                                           ; $5850: $8b
	cp   l                                           ; $5851: $bd
	db   $ed                                         ; $5852: $ed
	cp   e                                           ; $5853: $bb
	cp   e                                           ; $5854: $bb
	xor  c                                           ; $5855: $a9
	ld   [hl], a                                     ; $5856: $77
	ld   [hl], h                                     ; $5857: $74
	ld   de, $5713                                   ; $5858: $11 $13 $57
	adc  b                                           ; $585b: $88
	sbc  e                                           ; $585c: $9b
	db   $dd                                         ; $585d: $dd
	db   $db                                         ; $585e: $db
	cp   e                                           ; $585f: $bb
	cp   d                                           ; $5860: $ba
	sbc  b                                           ; $5861: $98
	halt                                             ; $5862: $76
	ld   b, c                                        ; $5863: $41
	ld   de, $7635                                   ; $5864: $11 $35 $76
	ld   a, c                                        ; $5867: $79
	cp   h                                           ; $5868: $bc
	db   $dd                                         ; $5869: $dd
	call z, $98ca                                    ; $586a: $cc $ca $98
	sbc  b                                           ; $586d: $98
	halt                                             ; $586e: $76
	ld   hl, $4612                                   ; $586f: $21 $12 $46
	ld   a, b                                        ; $5872: $78
	sbc  c                                           ; $5873: $99
	cp   e                                           ; $5874: $bb
	call $a9dc                                       ; $5875: $cd $dc $a9
	sbc  c                                           ; $5878: $99
	sbc  b                                           ; $5879: $98
	ld   [hl], h                                     ; $587a: $74
	ld   hl, $5712                                   ; $587b: $21 $12 $57
	ld   a, b                                        ; $587e: $78
	sbc  d                                           ; $587f: $9a
	call $cadc                                       ; $5880: $cd $dc $ca
	cp   d                                           ; $5883: $ba
	sub  a                                           ; $5884: $97
	ld   [hl], a                                     ; $5885: $77
	ld   d, h                                        ; $5886: $54
	ld   de, $8824                                   ; $5887: $11 $24 $88
	sub  a                                           ; $588a: $97
	adc  d                                           ; $588b: $8a
	call $bbed                                       ; $588c: $cd $ed $bb
	xor  b                                           ; $588f: $a8
	adc  c                                           ; $5890: $89
	adc  b                                           ; $5891: $88
	ld   d, d                                        ; $5892: $52
	ld   de, $7825                                   ; $5893: $11 $25 $78
	sbc  c                                           ; $5896: $99
	xor  h                                           ; $5897: $ac
	call z, $bcca                                    ; $5898: $cc $ca $bc
	cp   d                                           ; $589b: $ba
	add  a                                           ; $589c: $87
	ld   h, l                                        ; $589d: $65
	ld   b, c                                        ; $589e: $41
	ld   [de], a                                     ; $589f: $12
	ld   b, a                                        ; $58a0: $47
	sbc  c                                           ; $58a1: $99
	add  a                                           ; $58a2: $87
	xor  h                                           ; $58a3: $ac
	db   $ed                                         ; $58a4: $ed
	res  5, d                                        ; $58a5: $cb $aa
	sbc  b                                           ; $58a7: $98
	ld   [hl], a                                     ; $58a8: $77
	ld   [hl], l                                     ; $58a9: $75
	ld   sp, $6812                                   ; $58aa: $31 $12 $68
	adc  b                                           ; $58ad: $88
	adc  d                                           ; $58ae: $8a
	xor  h                                           ; $58af: $ac
	call z, $babc                                    ; $58b0: $cc $bc $ba
	and  a                                           ; $58b3: $a7
	adc  b                                           ; $58b4: $88
	ld   [hl], l                                     ; $58b5: $75
	ld   de, $6813                                   ; $58b6: $11 $13 $68
	sub  a                                           ; $58b9: $97
	ld   a, c                                        ; $58ba: $79
	adc  $ec                                         ; $58bb: $ce $ec
	cp   c                                           ; $58bd: $b9
	cp   e                                           ; $58be: $bb
	sub  a                                           ; $58bf: $97
	halt                                             ; $58c0: $76
	ld   h, l                                        ; $58c1: $65
	ld   hl, $7924                                   ; $58c2: $21 $24 $79
	sbc  b                                           ; $58c5: $98
	adc  c                                           ; $58c6: $89
	cp   l                                           ; $58c7: $bd
	call z, $a9cb                                    ; $58c8: $cc $cb $a9
	sub  a                                           ; $58cb: $97
	add  a                                           ; $58cc: $87
	ld   d, e                                        ; $58cd: $53
	ld   [de], a                                     ; $58ce: $12
	dec  [hl]                                        ; $58cf: $35
	ld   a, b                                        ; $58d0: $78
	adc  b                                           ; $58d1: $88
	sbc  d                                           ; $58d2: $9a
	cp   l                                           ; $58d3: $bd
	db   $dd                                         ; $58d4: $dd
	cp   d                                           ; $58d5: $ba
	xor  c                                           ; $58d6: $a9
	add  a                                           ; $58d7: $87
	halt                                             ; $58d8: $76
	ld   d, e                                        ; $58d9: $53
	ld   [de], a                                     ; $58da: $12
	dec  [hl]                                        ; $58db: $35
	adc  c                                           ; $58dc: $89
	sbc  c                                           ; $58dd: $99
	sbc  c                                           ; $58de: $99
	call $bbed                                       ; $58df: $cd $ed $bb
	sbc  c                                           ; $58e2: $99
	adc  b                                           ; $58e3: $88
	halt                                             ; $58e4: $76
	ld   d, d                                        ; $58e5: $52
	ld   [hl+], a                                    ; $58e6: $22
	dec  [hl]                                        ; $58e7: $35
	ld   a, d                                        ; $58e8: $7a
	sbc  d                                           ; $58e9: $9a
	sbc  d                                           ; $58ea: $9a
	call z, $aadb                                    ; $58eb: $cc $db $aa
	xor  c                                           ; $58ee: $a9
	ld   [hl], a                                     ; $58ef: $77
	ld   h, l                                        ; $58f0: $65
	ld   b, e                                        ; $58f1: $43
	inc  sp                                          ; $58f2: $33
	ld   b, [hl]                                     ; $58f3: $46
	adc  b                                           ; $58f4: $88
	adc  b                                           ; $58f5: $88
	sbc  e                                           ; $58f6: $9b
	xor  $db                                         ; $58f7: $ee $db
	xor  d                                           ; $58f9: $aa
	xor  c                                           ; $58fa: $a9
	sub  a                                           ; $58fb: $97
	ld   h, l                                        ; $58fc: $65
	ld   b, c                                        ; $58fd: $41
	ld   bc, $bb48                                   ; $58fe: $01 $48 $bb
	sbc  b                                           ; $5901: $98
	adc  e                                           ; $5902: $8b
	sbc  $cb                                         ; $5903: $de $cb
	xor  c                                           ; $5905: $a9
	sbc  b                                           ; $5906: $98
	ld   h, [hl]                                     ; $5907: $66
	ld   h, [hl]                                     ; $5908: $66
	ld   b, d                                        ; $5909: $42
	ld   [de], a                                     ; $590a: $12
	ld   e, b                                        ; $590b: $58
	cp   d                                           ; $590c: $ba
	adc  b                                           ; $590d: $88
	sbc  l                                           ; $590e: $9d
	sbc  $b9                                         ; $590f: $de $b9
	sbc  d                                           ; $5911: $9a
	xor  b                                           ; $5912: $a8
	halt                                             ; $5913: $76
	ld   h, l                                        ; $5914: $65
	ld   [hl-], a                                    ; $5915: $32
	inc  de                                          ; $5916: $13
	ld   l, c                                        ; $5917: $69
	xor  c                                           ; $5918: $a9
	adc  c                                           ; $5919: $89
	cp   [hl]                                        ; $591a: $be
	db   $ec                                         ; $591b: $ec
	xor  d                                           ; $591c: $aa
	cp   c                                           ; $591d: $b9
	sub  [hl]                                        ; $591e: $96
	ld   h, l                                        ; $591f: $65
	ld   d, h                                        ; $5920: $54
	ld   [hl+], a                                    ; $5921: $22
	ld   h, $8a                                      ; $5922: $26 $8a
	and  a                                           ; $5924: $a7
	sbc  d                                           ; $5925: $9a
	rst  JumpTable                                         ; $5926: $df
	db   $db                                         ; $5927: $db
	sbc  d                                           ; $5928: $9a
	xor  d                                           ; $5929: $aa
	add  [hl]                                        ; $592a: $86
	ld   h, [hl]                                     ; $592b: $66
	ld   d, e                                        ; $592c: $53
	ld   de, $9a36                                   ; $592d: $11 $36 $9a
	sbc  c                                           ; $5930: $99
	sbc  e                                           ; $5931: $9b
	sbc  $ca                                         ; $5932: $de $ca
	xor  c                                           ; $5934: $a9
	xor  c                                           ; $5935: $a9
	halt                                             ; $5936: $76
	ld   d, h                                        ; $5937: $54
	ld   [hl-], a                                    ; $5938: $32
	inc  hl                                          ; $5939: $23
	ld   e, b                                        ; $593a: $58
	sbc  c                                           ; $593b: $99
	sbc  c                                           ; $593c: $99
	xor  h                                           ; $593d: $ac
	db   $ed                                         ; $593e: $ed
	jp   z, $9999                                    ; $593f: $ca $99 $99

	halt                                             ; $5942: $76
	ld   d, e                                        ; $5943: $53
	ld   [hl+], a                                    ; $5944: $22
	dec  [hl]                                        ; $5945: $35
	ld   a, d                                        ; $5946: $7a
	xor  c                                           ; $5947: $a9
	sbc  d                                           ; $5948: $9a
	call $99dc                                       ; $5949: $cd $dc $99
	adc  c                                           ; $594c: $89
	sub  a                                           ; $594d: $97
	ld   h, h                                        ; $594e: $64
	ld   b, d                                        ; $594f: $42
	inc  sp                                          ; $5950: $33
	ld   b, a                                        ; $5951: $47
	sbc  d                                           ; $5952: $9a
	sbc  d                                           ; $5953: $9a
	xor  h                                           ; $5954: $ac
	db   $ed                                         ; $5955: $ed
	jp   z, $a9a9                                    ; $5956: $ca $a9 $a9

	halt                                             ; $5959: $76
	ld   d, l                                        ; $595a: $55
	inc  sp                                          ; $595b: $33
	ld   [hl+], a                                    ; $595c: $22
	ld   e, c                                        ; $595d: $59
	cp   d                                           ; $595e: $ba
	adc  b                                           ; $595f: $88
	xor  [hl]                                        ; $5960: $ae
	cp   $a8                                         ; $5961: $fe $a8
	adc  d                                           ; $5963: $8a
	cp   c                                           ; $5964: $b9
	ld   h, h                                        ; $5965: $64
	ld   b, e                                        ; $5966: $43
	ld   [hl-], a                                    ; $5967: $32
	dec  h                                           ; $5968: $25
	sbc  e                                           ; $5969: $9b
	sbc  b                                           ; $596a: $98
	sbc  e                                           ; $596b: $9b
	cp   $c8                                         ; $596c: $fe $c8
	adc  d                                           ; $596e: $8a
	cp   e                                           ; $596f: $bb
	add  [hl]                                        ; $5970: $86
	ld   b, h                                        ; $5971: $44
	ld   b, e                                        ; $5972: $43
	ld   hl, $aa58                                   ; $5973: $21 $58 $aa
	sbc  c                                           ; $5976: $99
	xor  [hl]                                        ; $5977: $ae
	db   $fd                                         ; $5978: $fd
	cp   c                                           ; $5979: $b9
	xor  c                                           ; $597a: $a9
	or   a                                           ; $597b: $b7
	ld   h, l                                        ; $597c: $65
	ld   d, h                                        ; $597d: $54
	ld   hl, $8c14                                   ; $597e: $21 $14 $8c
	ret                                              ; $5981: $c9


	sbc  c                                           ; $5982: $99
	sbc  $dc                                         ; $5983: $de $dc
	sbc  c                                           ; $5985: $99
	sbc  d                                           ; $5986: $9a
	add  a                                           ; $5987: $87
	ld   d, l                                        ; $5988: $55
	ld   b, e                                        ; $5989: $43
	ld   [hl-], a                                    ; $598a: $32
	ld   b, [hl]                                     ; $598b: $46
	xor  e                                           ; $598c: $ab
	xor  c                                           ; $598d: $a9
	xor  h                                           ; $598e: $ac
	db   $ed                                         ; $598f: $ed
	cp   c                                           ; $5990: $b9
	sbc  d                                           ; $5991: $9a
	xor  c                                           ; $5992: $a9
	ld   [hl], l                                     ; $5993: $75
	ld   b, e                                        ; $5994: $43
	inc  hl                                          ; $5995: $23
	dec  [hl]                                        ; $5996: $35
	ld   a, c                                        ; $5997: $79
	xor  c                                           ; $5998: $a9
	xor  e                                           ; $5999: $ab
	sbc  $ca                                         ; $599a: $de $ca
	sbc  d                                           ; $599c: $9a
	sbc  c                                           ; $599d: $99
	add  [hl]                                        ; $599e: $86
	ld   d, l                                        ; $599f: $55
	ld   [hl-], a                                    ; $59a0: $32
	ld   hl, $bb49                                   ; $59a1: $21 $49 $bb
	adc  d                                           ; $59a4: $8a
	cp   [hl]                                        ; $59a5: $be
	db   $fc                                         ; $59a6: $fc
	xor  b                                           ; $59a7: $a8
	sbc  d                                           ; $59a8: $9a
	xor  b                                           ; $59a9: $a8
	ld   h, l                                        ; $59aa: $65
	ld   b, h                                        ; $59ab: $44
	ld   [hl-], a                                    ; $59ac: $32
	inc  h                                           ; $59ad: $24
	adc  e                                           ; $59ae: $8b
	cp   c                                           ; $59af: $b9
	sbc  c                                           ; $59b0: $99
	adc  $db                                         ; $59b1: $ce $db
	sbc  c                                           ; $59b3: $99
	sbc  d                                           ; $59b4: $9a
	sub  [hl]                                        ; $59b5: $96
	ld   d, h                                        ; $59b6: $54
	ld   b, e                                        ; $59b7: $43
	ld   hl, $bc37                                   ; $59b8: $21 $37 $bc
	xor  c                                           ; $59bb: $a9
	sbc  h                                           ; $59bc: $9c
	rst  $38                                         ; $59bd: $ff
	or   a                                           ; $59be: $b7
	ld   a, c                                        ; $59bf: $79
	jp   z, $3474                                    ; $59c0: $ca $74 $34

	inc  sp                                          ; $59c3: $33
	inc  de                                          ; $59c4: $13
	ld   a, e                                        ; $59c5: $7b
	jp   z, $bd98                                    ; $59c6: $ca $98 $bd

	db   $fc                                         ; $59c9: $fc
	sbc  b                                           ; $59ca: $98
	adc  d                                           ; $59cb: $8a
	sbc  b                                           ; $59cc: $98
	ld   d, h                                        ; $59cd: $54
	ld   b, e                                        ; $59ce: $43
	ld   hl, $ab36                                   ; $59cf: $21 $36 $ab
	sbc  c                                           ; $59d2: $99
	adc  h                                           ; $59d3: $8c
	rst  $28                                         ; $59d4: $ef
	ret  z                                           ; $59d5: $c8

	adc  c                                           ; $59d6: $89
	cp   c                                           ; $59d7: $b9
	ld   [hl], l                                     ; $59d8: $75
	ld   b, l                                        ; $59d9: $45
	ld   [hl-], a                                    ; $59da: $32
	ld   [de], a                                     ; $59db: $12
	ld   l, e                                        ; $59dc: $6b
	jp   z, $cf99                                    ; $59dd: $ca $99 $cf

	ei                                               ; $59e0: $fb
	ld   [hl], a                                     ; $59e1: $77
	sbc  h                                           ; $59e2: $9c
	ret                                              ; $59e3: $c9


	ld   b, e                                        ; $59e4: $43
	ld   [hl-], a                                    ; $59e5: $32
	ld   hl, $cd37                                   ; $59e6: $21 $37 $cd
	xor  c                                           ; $59e9: $a9
	adc  h                                           ; $59ea: $8c
	rst  $28                                         ; $59eb: $ef
	ret  z                                           ; $59ec: $c8

	ld   a, b                                        ; $59ed: $78
	cp   d                                           ; $59ee: $ba
	ld   [hl], l                                     ; $59ef: $75
	ld   b, h                                        ; $59f0: $44
	ld   b, e                                        ; $59f1: $43
	ld   [de], a                                     ; $59f2: $12
	ld   l, d                                        ; $59f3: $6a
	res  5, c                                        ; $59f4: $cb $a9
	cp   [hl]                                        ; $59f6: $be
	db   $ec                                         ; $59f7: $ec
	adc  b                                           ; $59f8: $88
	adc  d                                           ; $59f9: $8a
	and  a                                           ; $59fa: $a7
	ld   h, h                                        ; $59fb: $64
	ld   b, d                                        ; $59fc: $42
	ld   de, $bc37                                   ; $59fd: $11 $37 $bc
	sbc  b                                           ; $5a00: $98
	sbc  e                                           ; $5a01: $9b
	cp   $c9                                         ; $5a02: $fe $c9
	adc  c                                           ; $5a04: $89
	xor  e                                           ; $5a05: $ab
	ld   [hl], l                                     ; $5a06: $75
	ld   b, h                                        ; $5a07: $44
	ld   b, e                                        ; $5a08: $43
	ld   de, $eb5a                                   ; $5a09: $11 $5a $eb
	xor  b                                           ; $5a0c: $a8
	xor  l                                           ; $5a0d: $ad
	cp   $a8                                         ; $5a0e: $fe $a8
	adc  d                                           ; $5a10: $8a
	sbc  c                                           ; $5a11: $99
	ld   h, h                                        ; $5a12: $64
	ld   b, e                                        ; $5a13: $43
	ld   hl, $ac25                                   ; $5a14: $21 $25 $ac
	cp   d                                           ; $5a17: $ba
	xor  h                                           ; $5a18: $ac
	rst  $28                                         ; $5a19: $ef
	ret  z                                           ; $5a1a: $c8

	ld   a, b                                        ; $5a1b: $78
	xor  e                                           ; $5a1c: $ab
	add  l                                           ; $5a1d: $85
	ld   b, e                                        ; $5a1e: $43
	ld   [hl+], a                                    ; $5a1f: $22
	ld   [de], a                                     ; $5a20: $12
	ld   l, e                                        ; $5a21: $6b
	db   $db                                         ; $5a22: $db
	sub  a                                           ; $5a23: $97
	cp   [hl]                                        ; $5a24: $be
	db   $fd                                         ; $5a25: $fd
	add  a                                           ; $5a26: $87
	ld   a, e                                        ; $5a27: $7b
	cp   c                                           ; $5a28: $b9
	ld   d, e                                        ; $5a29: $53
	ld   [hl-], a                                    ; $5a2a: $32
	ld   sp, $ae25                                   ; $5a2b: $31 $25 $ae
	res  3, d                                        ; $5a2e: $cb $9a
	sbc  $da                                         ; $5a30: $de $da
	sub  a                                           ; $5a32: $97
	xor  d                                           ; $5a33: $aa
	add  l                                           ; $5a34: $85
	inc  sp                                          ; $5a35: $33
	ld   [hl+], a                                    ; $5a36: $22
	ld   [de], a                                     ; $5a37: $12
	ld   e, d                                        ; $5a38: $5a
	res  7, d                                        ; $5a39: $cb $ba
	cp   h                                           ; $5a3b: $bc
	db   $dd                                         ; $5a3c: $dd
	xor  b                                           ; $5a3d: $a8
	sbc  d                                           ; $5a3e: $9a
	sbc  b                                           ; $5a3f: $98
	ld   d, e                                        ; $5a40: $53
	ld   [hl-], a                                    ; $5a41: $32
	ld   hl, $ac26                                   ; $5a42: $21 $26 $ac
	cp   d                                           ; $5a45: $ba
	xor  h                                           ; $5a46: $ac
	rst  $38                                         ; $5a47: $ff
	ret  z                                           ; $5a48: $c8

	ld   [hl], a                                     ; $5a49: $77
	cp   e                                           ; $5a4a: $bb
	add  l                                           ; $5a4b: $85
	inc  sp                                          ; $5a4c: $33
	ld   [hl+], a                                    ; $5a4d: $22
	inc  de                                          ; $5a4e: $13
	ld   l, e                                        ; $5a4f: $6b
	db   $db                                         ; $5a50: $db
	xor  c                                           ; $5a51: $a9
	cp   l                                           ; $5a52: $bd
	ei                                               ; $5a53: $fb
	adc  b                                           ; $5a54: $88
	adc  e                                           ; $5a55: $8b
	xor  b                                           ; $5a56: $a8
	ld   b, e                                        ; $5a57: $43
	ld   [hl-], a                                    ; $5a58: $32
	ld   hl, $ce25                                   ; $5a59: $21 $25 $ce
	db   $db                                         ; $5a5c: $db
	sbc  d                                           ; $5a5d: $9a
	adc  $ca                                         ; $5a5e: $ce $ca
	sbc  b                                           ; $5a60: $98
	xor  b                                           ; $5a61: $a8
	ld   [hl], h                                     ; $5a62: $74
	inc  sp                                          ; $5a63: $33
	ld   [hl+], a                                    ; $5a64: $22
	inc  d                                           ; $5a65: $14
	adc  l                                           ; $5a66: $8d
	db   $db                                         ; $5a67: $db
	sbc  c                                           ; $5a68: $99
	rst  JumpTable                                         ; $5a69: $df
	ld   a, [$8b77]                                  ; $5a6a: $fa $77 $8b
	xor  b                                           ; $5a6d: $a8
	ld   d, h                                        ; $5a6e: $54
	ld   [hl-], a                                    ; $5a6f: $32
	ld   de, $dd27                                   ; $5a70: $11 $27 $dd
	jp   z, $ef9c                                    ; $5a73: $ca $9c $ef

	xor  b                                           ; $5a76: $a8
	ld   a, c                                        ; $5a77: $79
	ret                                              ; $5a78: $c9


	ld   [hl], e                                     ; $5a79: $73
	ld   [hl+], a                                    ; $5a7a: $22
	ld   [hl+], a                                    ; $5a7b: $22
	inc  d                                           ; $5a7c: $14
	adc  l                                           ; $5a7d: $8d
	call c, $ceaa                                    ; $5a7e: $dc $aa $ce
	jp   c, $9b77                                    ; $5a81: $da $77 $9b

	and  a                                           ; $5a84: $a7
	ld   [hl-], a                                    ; $5a85: $32
	ld   [de], a                                     ; $5a86: $12
	ld   de, $cc59                                   ; $5a87: $11 $59 $cc
	jp   z, $ddbc                                    ; $5a8a: $ca $bc $dd

	xor  b                                           ; $5a8d: $a8
	adc  d                                           ; $5a8e: $8a
	xor  b                                           ; $5a8f: $a8
	ld   h, e                                        ; $5a90: $63
	ld   [hl-], a                                    ; $5a91: $32
	ld   de, $ae16                                   ; $5a92: $11 $16 $ae
	res  5, e                                        ; $5a95: $cb $ab
	xor  $c8                                         ; $5a97: $ee $c8
	ld   [hl], a                                     ; $5a99: $77
	cp   d                                           ; $5a9a: $ba
	sub  l                                           ; $5a9b: $95
	ld   [hl+], a                                    ; $5a9c: $22
	ld   [de], a                                     ; $5a9d: $12
	inc  d                                           ; $5a9e: $14
	ld   l, e                                        ; $5a9f: $6b
	db   $ec                                         ; $5aa0: $ec
	cp   d                                           ; $5aa1: $ba
	call z, $88db                                    ; $5aa2: $cc $db $88
	sbc  e                                           ; $5aa5: $9b
	sbc  b                                           ; $5aa6: $98
	ld   b, d                                        ; $5aa7: $42
	ld   de, $5911                                   ; $5aa8: $11 $11 $59
	xor  $c9                                         ; $5aab: $ee $c9
	xor  l                                           ; $5aad: $ad
	sbc  $a8                                         ; $5aae: $de $a8
	adc  d                                           ; $5ab0: $8a
	cp   c                                           ; $5ab1: $b9
	ld   h, e                                        ; $5ab2: $63
	inc  sp                                          ; $5ab3: $33
	ld   sp, $9e13                                   ; $5ab4: $31 $13 $9e
	db   $eb                                         ; $5ab7: $eb
	sbc  d                                           ; $5ab8: $9a
	rst  JumpTable                                         ; $5ab9: $df
	jp   hl                                          ; $5aba: $e9


	ld   [hl], a                                     ; $5abb: $77
	sbc  d                                           ; $5abc: $9a
	and  a                                           ; $5abd: $a7
	ld   [hl-], a                                    ; $5abe: $32
	ld   [de], a                                     ; $5abf: $12
	ld   [de], a                                     ; $5ac0: $12
	ld   l, c                                        ; $5ac1: $69
	db   $ed                                         ; $5ac2: $ed
	jp   z, $edbc                                    ; $5ac3: $ca $bc $ed

	sub  a                                           ; $5ac6: $97
	ld   a, d                                        ; $5ac7: $7a
	cp   c                                           ; $5ac8: $b9
	ld   h, e                                        ; $5ac9: $63
	ld   hl, $3711                                   ; $5aca: $21 $11 $37
	cp   a                                           ; $5acd: $bf
	call c, wPostPrologueScriptEngineGameState                                    ; $5ace: $dc $9a $cc
	ret                                              ; $5ad1: $c9


	adc  c                                           ; $5ad2: $89
	xor  d                                           ; $5ad3: $aa
	ld   [hl], l                                     ; $5ad4: $75
	inc  hl                                          ; $5ad5: $23
	ld   [hl+], a                                    ; $5ad6: $22
	inc  bc                                          ; $5ad7: $03
	ld   a, h                                        ; $5ad8: $7c
	db   $fd                                         ; $5ad9: $fd
	cp   c                                           ; $5ada: $b9
	cp   h                                           ; $5adb: $bc
	db   $ec                                         ; $5adc: $ec
	sbc  b                                           ; $5add: $98
	adc  d                                           ; $5ade: $8a
	sub  a                                           ; $5adf: $97
	ld   b, d                                        ; $5ae0: $42
	ld   [hl-], a                                    ; $5ae1: $32
	ld   hl, $ce37                                   ; $5ae2: $21 $37 $ce
	res  3, e                                        ; $5ae5: $cb $9b
	adc  $c8                                         ; $5ae7: $ce $c8
	sbc  b                                           ; $5ae9: $98
	cp   c                                           ; $5aea: $b9
	ld   [hl], h                                     ; $5aeb: $74
	ld   de, $2512                                   ; $5aec: $11 $12 $25
	sbc  l                                           ; $5aef: $9d
	db   $db                                         ; $5af0: $db
	cp   d                                           ; $5af1: $ba
	call z, $77da                                    ; $5af2: $cc $da $77
	sbc  e                                           ; $5af5: $9b
	sub  a                                           ; $5af6: $97
	ld   [hl-], a                                    ; $5af7: $32
	ld   [hl+], a                                    ; $5af8: $22
	ld   [hl+], a                                    ; $5af9: $22
	ld   e, c                                        ; $5afa: $59
	call z, $bdcb                                    ; $5afb: $cc $cb $bd
	db   $dd                                         ; $5afe: $dd
	sbc  c                                           ; $5aff: $99
	adc  c                                           ; $5b00: $89
	cp   b                                           ; $5b01: $b8
	ld   h, e                                        ; $5b02: $63
	ld   hl, $2611                                   ; $5b03: $21 $11 $26
	xor  l                                           ; $5b06: $ad
	call c, $ccaa                                    ; $5b07: $dc $aa $cc
	jp   z, $aa89                                    ; $5b0a: $ca $89 $aa

	add  [hl]                                        ; $5b0d: $86
	ld   b, e                                        ; $5b0e: $43
	ld   hl, $6a13                                   ; $5b0f: $21 $13 $6a
	call $bcb9                                       ; $5b12: $cd $b9 $bc
	call c, $8aa9                                    ; $5b15: $dc $a9 $8a
	sbc  b                                           ; $5b18: $98
	ld   d, e                                        ; $5b19: $53
	ld   [hl+], a                                    ; $5b1a: $22
	ld   de, $ce37                                   ; $5b1b: $11 $37 $ce
	db   $db                                         ; $5b1e: $db
	sbc  d                                           ; $5b1f: $9a
	db   $dd                                         ; $5b20: $dd
	ret  z                                           ; $5b21: $c8

	ld   a, b                                        ; $5b22: $78
	xor  d                                           ; $5b23: $aa
	add  l                                           ; $5b24: $85
	ld   hl, $1411                                   ; $5b25: $21 $11 $14
	adc  h                                           ; $5b28: $8c
	call c, $ada9                                    ; $5b29: $dc $a9 $ad
	db   $eb                                         ; $5b2c: $eb
	sub  a                                           ; $5b2d: $97
	ld   a, c                                        ; $5b2e: $79
	sbc  c                                           ; $5b2f: $99
	ld   d, h                                        ; $5b30: $54
	ld   [hl-], a                                    ; $5b31: $32
	ld   de, $cd47                                   ; $5b32: $11 $47 $cd
	cp   e                                           ; $5b35: $bb
	sbc  h                                           ; $5b36: $9c
	db   $dd                                         ; $5b37: $dd
	xor  c                                           ; $5b38: $a9
	adc  c                                           ; $5b39: $89
	xor  c                                           ; $5b3a: $a9
	ld   [hl], h                                     ; $5b3b: $74
	ld   hl, $2511                                   ; $5b3c: $21 $11 $25
	sbc  h                                           ; $5b3f: $9c
	db   $db                                         ; $5b40: $db
	cp   h                                           ; $5b41: $bc
	db   $dd                                         ; $5b42: $dd
	ret                                              ; $5b43: $c9


	adc  b                                           ; $5b44: $88
	sbc  e                                           ; $5b45: $9b
	sub  [hl]                                        ; $5b46: $96
	ld   b, e                                        ; $5b47: $43
	ld   hl, $5a12                                   ; $5b48: $21 $12 $5a
	db   $dd                                         ; $5b4b: $dd
	ret                                              ; $5b4c: $c9


	xor  h                                           ; $5b4d: $ac
	call c, $8998                                    ; $5b4e: $dc $98 $89
	cp   b                                           ; $5b51: $b8
	ld   h, h                                        ; $5b52: $64
	ld   [hl-], a                                    ; $5b53: $32
	ld   hl, $9c25                                   ; $5b54: $21 $25 $9c
	res  7, h                                        ; $5b57: $cb $bc
	call $99c9                                       ; $5b59: $cd $c9 $99
	xor  d                                           ; $5b5c: $aa
	sub  [hl]                                        ; $5b5d: $96
	ld   b, e                                        ; $5b5e: $43
	ld   hl, $6a12                                   ; $5b5f: $21 $12 $6a
	call z, $cccb                                    ; $5b62: $cc $cb $cc
	res  3, b                                        ; $5b65: $cb $98
	sbc  c                                           ; $5b67: $99
	xor  c                                           ; $5b68: $a9
	ld   [hl], h                                     ; $5b69: $74
	ld   [hl-], a                                    ; $5b6a: $32
	ld   de, $ad26                                   ; $5b6b: $11 $26 $ad
	call z, wCurrAudChannelTimes5                                    ; $5b6e: $cc $ab $cd
	reti                                             ; $5b71: $d9


	sbc  b                                           ; $5b72: $98
	sbc  d                                           ; $5b73: $9a
	sub  [hl]                                        ; $5b74: $96
	ld   [hl-], a                                    ; $5b75: $32
	ld   de, $7b14                                   ; $5b76: $11 $14 $7b
	call c, $cbbb                                    ; $5b79: $dc $bb $cb
	res  3, c                                        ; $5b7c: $cb $99
	sbc  d                                           ; $5b7e: $9a
	xor  c                                           ; $5b7f: $a9
	ld   h, h                                        ; $5b80: $64
	ld   [hl-], a                                    ; $5b81: $32
	ld   de, $ad37                                   ; $5b82: $11 $37 $ad
	cp   e                                           ; $5b85: $bb
	xor  h                                           ; $5b86: $ac
	db   $ed                                         ; $5b87: $ed
	cp   c                                           ; $5b88: $b9
	adc  b                                           ; $5b89: $88
	xor  d                                           ; $5b8a: $aa
	add  [hl]                                        ; $5b8b: $86
	ld   [hl-], a                                    ; $5b8c: $32
	ld   de, $8c14                                   ; $5b8d: $11 $14 $8c
	call z, $cccb                                    ; $5b90: $cc $cb $cc
	jp   z, $8a99                                    ; $5b93: $ca $99 $8a

	sbc  c                                           ; $5b96: $99
	ld   h, l                                        ; $5b97: $65
	ld   [hl-], a                                    ; $5b98: $32
	ld   de, $bc47                                   ; $5b99: $11 $47 $bc
	cp   e                                           ; $5b9c: $bb
	cp   l                                           ; $5b9d: $bd
	db   $dd                                         ; $5b9e: $dd
	cp   c                                           ; $5b9f: $b9
	adc  c                                           ; $5ba0: $89
	xor  d                                           ; $5ba1: $aa
	sub  l                                           ; $5ba2: $95
	ld   sp, $1511                                   ; $5ba3: $31 $11 $15
	sbc  h                                           ; $5ba6: $9c
	call z, $bcbb                                    ; $5ba7: $cc $bb $bc
	res  5, c                                        ; $5baa: $cb $a9
	sbc  d                                           ; $5bac: $9a
	sub  a                                           ; $5bad: $97
	ld   h, l                                        ; $5bae: $65
	ld   [hl-], a                                    ; $5baf: $32
	ld   de, $cd48                                   ; $5bb0: $11 $48 $cd
	jp   c, $cdac                                    ; $5bb3: $da $ac $cd

	xor  c                                           ; $5bb6: $a9
	sbc  c                                           ; $5bb7: $99
	xor  c                                           ; $5bb8: $a9
	add  l                                           ; $5bb9: $85
	ld   [hl-], a                                    ; $5bba: $32
	ld   de, $7c15                                   ; $5bbb: $11 $15 $7c
	call c, $cccb                                    ; $5bbe: $dc $cb $cc
	ret                                              ; $5bc1: $c9


	sbc  c                                           ; $5bc2: $99
	sbc  d                                           ; $5bc3: $9a
	sbc  c                                           ; $5bc4: $99
	ld   d, h                                        ; $5bc5: $54
	ld   hl, $6801                                   ; $5bc6: $21 $01 $68
	call z, $becb                                    ; $5bc9: $cc $cb $be
	call z, $9a99                                    ; $5bcc: $cc $99 $9a
	cp   c                                           ; $5bcf: $b9
	add  h                                           ; $5bd0: $84
	ld   sp, $1611                                   ; $5bd1: $31 $11 $16
	sbc  [hl]                                        ; $5bd4: $9e
	res  5, e                                        ; $5bd5: $cb $ab
	call z, $88ca                                    ; $5bd7: $cc $ca $88
	sbc  d                                           ; $5bda: $9a
	sub  a                                           ; $5bdb: $97
	ld   b, e                                        ; $5bdc: $43
	ld   de, $7a13                                   ; $5bdd: $11 $13 $7a
	set  1, e                                        ; $5be0: $cb $cb
	cp   l                                           ; $5be2: $bd
	cp   h                                           ; $5be3: $bc
	sbc  c                                           ; $5be4: $99
	adc  d                                           ; $5be5: $8a
	xor  b                                           ; $5be6: $a8
	ld   h, e                                        ; $5be7: $63
	ld   sp, $2611                                   ; $5be8: $31 $11 $26
	xor  [hl]                                        ; $5beb: $ae
	db   $dd                                         ; $5bec: $dd
	cp   e                                           ; $5bed: $bb
	res  5, b                                        ; $5bee: $cb $a8
	adc  b                                           ; $5bf0: $88
	cp   e                                           ; $5bf1: $bb
	sub  [hl]                                        ; $5bf2: $96
	ld   [hl-], a                                    ; $5bf3: $32
	ld   [de], a                                     ; $5bf4: $12
	inc  de                                          ; $5bf5: $13
	ld   e, c                                        ; $5bf6: $59
	call $bbcb                                       ; $5bf7: $cd $cb $bb
	cp   e                                           ; $5bfa: $bb
	sbc  d                                           ; $5bfb: $9a
	adc  c                                           ; $5bfc: $89
	sbc  c                                           ; $5bfd: $99
	ld   [hl], h                                     ; $5bfe: $74
	ld   sp, $3711                                   ; $5bff: $31 $11 $37
	call $9bdb                                       ; $5c02: $cd $db $9b
	call z, $87ba                                    ; $5c05: $cc $ba $87
	sbc  c                                           ; $5c08: $99
	sub  a                                           ; $5c09: $97
	ld   b, d                                        ; $5c0a: $42
	ld   de, $8c14                                   ; $5c0b: $11 $14 $8c
	set  1, e                                        ; $5c0e: $cb $cb
	call $99ca                                       ; $5c10: $cd $ca $99
	adc  d                                           ; $5c13: $8a
	xor  b                                           ; $5c14: $a8
	ld   d, e                                        ; $5c15: $53
	ld   hl, $4801                                   ; $5c16: $21 $01 $48
	call z, $bccc                                    ; $5c19: $cc $cc $bc
	res  3, b                                        ; $5c1c: $cb $98
	adc  b                                           ; $5c1e: $88
	sbc  c                                           ; $5c1f: $99
	sub  [hl]                                        ; $5c20: $96
	ld   d, d                                        ; $5c21: $52
	ld   de, $9c14                                   ; $5c22: $11 $14 $9c
	call $cbbb                                       ; $5c25: $cd $bb $cb
	cp   d                                           ; $5c28: $ba
	sbc  b                                           ; $5c29: $98
	sbc  d                                           ; $5c2a: $9a
	sub  a                                           ; $5c2b: $97
	ld   d, e                                        ; $5c2c: $53
	ld   hl, $4811                                   ; $5c2d: $21 $11 $48
	cp   l                                           ; $5c30: $bd
	call c, $bccc                                    ; $5c31: $dc $cc $bc
	xor  c                                           ; $5c34: $a9
	adc  c                                           ; $5c35: $89
	sbc  c                                           ; $5c36: $99
	ld   [hl], l                                     ; $5c37: $75
	ld   sp, $2611                                   ; $5c38: $31 $11 $26
	xor  l                                           ; $5c3b: $ad
	call c, $bbab                                    ; $5c3c: $dc $ab $bb
	jp   z, $9987                                    ; $5c3f: $ca $87 $99

	xor  b                                           ; $5c42: $a8
	ld   d, e                                        ; $5c43: $53
	ld   de, $7a13                                   ; $5c44: $11 $13 $7a
	call c, $ccdb                                    ; $5c47: $dc $db $cc
	jp   z, $8989                                    ; $5c4a: $ca $89 $89

	xor  c                                           ; $5c4d: $a9
	ld   [hl], h                                     ; $5c4e: $74
	ld   hl, $4811                                   ; $5c4f: $21 $11 $48
	cp   h                                           ; $5c52: $bc
	set  1, l                                        ; $5c53: $cb $cd
	call z, $89b9                                    ; $5c55: $cc $b9 $89
	sbc  d                                           ; $5c58: $9a
	add  [hl]                                        ; $5c59: $86
	ld   sp, $1511                                   ; $5c5a: $31 $11 $15
	xor  h                                           ; $5c5d: $ac
	call $dccc                                       ; $5c5e: $cd $cc $dc
	ret                                              ; $5c61: $c9


	add  a                                           ; $5c62: $87
	adc  c                                           ; $5c63: $89
	sbc  b                                           ; $5c64: $98
	ld   d, e                                        ; $5c65: $53
	ld   de, $5912                                   ; $5c66: $11 $12 $59
	call $bccb                                       ; $5c69: $cd $cb $bc
	res  3, c                                        ; $5c6c: $cb $99
	adc  c                                           ; $5c6e: $89
	xor  c                                           ; $5c6f: $a9
	ld   [hl], h                                     ; $5c70: $74
	ld   sp, $3711                                   ; $5c71: $31 $11 $37
	xor  h                                           ; $5c74: $ac
	call c, $dccc                                    ; $5c75: $dc $cc $dc
	cp   c                                           ; $5c78: $b9
	ld   a, b                                        ; $5c79: $78
	sbc  d                                           ; $5c7a: $9a
	sub  [hl]                                        ; $5c7b: $96
	ld   b, d                                        ; $5c7c: $42
	ld   de, $9b14                                   ; $5c7d: $11 $14 $9b
	db   $dd                                         ; $5c80: $dd
	set  3, l                                        ; $5c81: $cb $dd
	ret                                              ; $5c83: $c9


	adc  b                                           ; $5c84: $88
	adc  c                                           ; $5c85: $89
	xor  b                                           ; $5c86: $a8
	ld   h, e                                        ; $5c87: $63
	ld   hl, $5b11                                   ; $5c88: $21 $11 $5b
	db   $ed                                         ; $5c8b: $ed
	jp   z, $dcab                                    ; $5c8c: $ca $ab $dc

	cp   b                                           ; $5c8f: $b8
	ld   [hl], a                                     ; $5c90: $77
	sbc  d                                           ; $5c91: $9a
	add  l                                           ; $5c92: $85
	ld   hl, $3711                                   ; $5c93: $21 $11 $37
	xor  h                                           ; $5c96: $ac
	res  7, h                                        ; $5c97: $cb $bc
	call c, Call_0e7_77a8                            ; $5c99: $dc $a8 $77
	xor  d                                           ; $5c9c: $aa
	and  [hl]                                        ; $5c9d: $a6
	ld   b, c                                        ; $5c9e: $41
	ld   de, $9c15                                   ; $5c9f: $11 $15 $9c
	call c, $cdbb                                    ; $5ca2: $dc $bb $cd
	ret                                              ; $5ca5: $c9


	ld   [hl], a                                     ; $5ca6: $77
	adc  d                                           ; $5ca7: $8a
	xor  c                                           ; $5ca8: $a9
	ld   h, e                                        ; $5ca9: $63
	ld   de, $6a12                                   ; $5caa: $11 $12 $6a
	call z, $ddcc                                    ; $5cad: $cc $cc $dd
	db   $db                                         ; $5cb0: $db
	add  [hl]                                        ; $5cb1: $86
	ld   a, b                                        ; $5cb2: $78
	xor  d                                           ; $5cb3: $aa
	ld   [hl], h                                     ; $5cb4: $74
	ld   hl, $5911                                   ; $5cb5: $21 $11 $59
	call z, $bdca                                    ; $5cb8: $cc $ca $bd
	call c, Call_0e7_67a7                            ; $5cbb: $dc $a7 $67
	sbc  d                                           ; $5cbe: $9a
	and  a                                           ; $5cbf: $a7
	ld   b, c                                        ; $5cc0: $41
	ld   de, $8b15                                   ; $5cc1: $11 $15 $8b
	call $cdcb                                       ; $5cc4: $cd $cb $cd
	ret                                              ; $5cc7: $c9


	ld   [hl], a                                     ; $5cc8: $77
	adc  d                                           ; $5cc9: $8a
	xor  c                                           ; $5cca: $a9
	ld   h, d                                        ; $5ccb: $62
	ld   de, $7a12                                   ; $5ccc: $11 $12 $7a
	call z, $dddc                                    ; $5ccf: $cc $dc $dd
	jp   c, $7987                                    ; $5cd2: $da $87 $79

	xor  c                                           ; $5cd5: $a9
	ld   [hl], h                                     ; $5cd6: $74
	ld   de, $5a11                                   ; $5cd7: $11 $11 $5a
	db   $dd                                         ; $5cda: $dd
	res  7, h                                        ; $5cdb: $cb $bc
	call c, Call_0e7_6897                            ; $5cdd: $dc $97 $68
	xor  e                                           ; $5ce0: $ab
	and  [hl]                                        ; $5ce1: $a6
	ld   hl, $2611                                   ; $5ce2: $21 $11 $26
	xor  h                                           ; $5ce5: $ac
	cp   h                                           ; $5ce6: $bc
	call $b8dd                                       ; $5ce7: $cd $dd $b8
	halt                                             ; $5cea: $76
	adc  d                                           ; $5ceb: $8a
	sbc  b                                           ; $5cec: $98
	ld   d, d                                        ; $5ced: $52
	ld   de, $8c13                                   ; $5cee: $11 $13 $8c
	db   $ed                                         ; $5cf1: $ed
	res  7, l                                        ; $5cf2: $cb $bd
	jp   c, $7986                                    ; $5cf4: $da $86 $79

	xor  d                                           ; $5cf7: $aa
	ld   h, e                                        ; $5cf8: $63
	ld   de, $5911                                   ; $5cf9: $11 $11 $59
	db   $dd                                         ; $5cfc: $dd
	call z, $ddcd                                    ; $5cfd: $cc $cd $dd
	sub  a                                           ; $5d00: $97
	ld   h, a                                        ; $5d01: $67
	sbc  d                                           ; $5d02: $9a
	sub  [hl]                                        ; $5d03: $96
	ld   sp, $2611                                   ; $5d04: $31 $11 $26
	call $bbec                                       ; $5d07: $cd $ec $bb
	call z, Call_0e7_77b9                            ; $5d0a: $cc $b9 $77
	sbc  c                                           ; $5d0d: $99
	sub  a                                           ; $5d0e: $97
	ld   b, c                                        ; $5d0f: $41
	ld   de, $9c14                                   ; $5d10: $11 $14 $9c
	call z, $decd                                    ; $5d13: $cc $cd $de
	ret                                              ; $5d16: $c9


	ld   h, l                                        ; $5d17: $65
	ld   a, d                                        ; $5d18: $7a
	cp   d                                           ; $5d19: $ba
	ld   h, d                                        ; $5d1a: $62
	ld   de, $7b13                                   ; $5d1b: $11 $13 $7b
	db   $db                                         ; $5d1e: $db
	set  3, [hl]                                     ; $5d1f: $cb $de
	db   $db                                         ; $5d21: $db
	halt                                             ; $5d22: $76
	ld   l, b                                        ; $5d23: $68
	xor  d                                           ; $5d24: $aa
	add  h                                           ; $5d25: $84
	ld   de, $4911                                   ; $5d26: $11 $11 $49
	call $bddc                                       ; $5d29: $cd $dc $bd
	call z, Call_0e7_78a7                            ; $5d2c: $cc $a7 $78
	xor  d                                           ; $5d2f: $aa
	sub  [hl]                                        ; $5d30: $96
	ld   sp, $1511                                   ; $5d31: $31 $11 $15
	xor  h                                           ; $5d34: $ac
	call c, $eddc                                    ; $5d35: $dc $dc $ed
	cp   b                                           ; $5d38: $b8
	ld   h, a                                        ; $5d39: $67
	adc  e                                           ; $5d3a: $8b
	cp   b                                           ; $5d3b: $b8
	ld   d, d                                        ; $5d3c: $52
	ld   de, $7c13                                   ; $5d3d: $11 $13 $7c
	call z, $eecd                                    ; $5d40: $cc $cd $ee
	jp   z, $8a77                                    ; $5d43: $ca $77 $8a

	cp   c                                           ; $5d46: $b9
	ld   h, e                                        ; $5d47: $63
	ld   de, $4911                                   ; $5d48: $11 $11 $49
	call z, $cedc                                    ; $5d4b: $cc $dc $ce
	db   $ec                                         ; $5d4e: $ec
	and  a                                           ; $5d4f: $a7
	ld   h, a                                        ; $5d50: $67
	sbc  e                                           ; $5d51: $9b
	sub  [hl]                                        ; $5d52: $96
	ld   sp, $2711                                   ; $5d53: $31 $11 $27
	cp   l                                           ; $5d56: $bd
	call c, $edcd                                    ; $5d57: $dc $cd $ed
	xor  b                                           ; $5d5a: $a8
	ld   [hl], a                                     ; $5d5b: $77
	sbc  e                                           ; $5d5c: $9b
	xor  b                                           ; $5d5d: $a8
	ld   d, d                                        ; $5d5e: $52
	ld   de, $8b13                                   ; $5d5f: $11 $13 $8b
	db   $dd                                         ; $5d62: $dd
	call c, $b9dd                                    ; $5d63: $dc $dd $b9
	add  a                                           ; $5d66: $87
	adc  d                                           ; $5d67: $8a
	sbc  c                                           ; $5d68: $99
	ld   [hl], h                                     ; $5d69: $74
	ld   de, $4911                                   ; $5d6a: $11 $11 $49
	db   $dd                                         ; $5d6d: $dd
	call c, $dcde                                    ; $5d6e: $dc $de $dc
	sub  a                                           ; $5d71: $97
	ld   l, b                                        ; $5d72: $68
	xor  e                                           ; $5d73: $ab
	sub  [hl]                                        ; $5d74: $96
	ld   sp, $1611                                   ; $5d75: $31 $11 $16
	xor  l                                           ; $5d78: $ad
	call c, $decc                                    ; $5d79: $dc $cc $de
	ret                                              ; $5d7c: $c9


	halt                                             ; $5d7d: $76
	adc  e                                           ; $5d7e: $8b
	xor  c                                           ; $5d7f: $a9
	ld   d, d                                        ; $5d80: $52
	ld   de, $7b13                                   ; $5d81: $11 $13 $7b
	call $cddc                                       ; $5d84: $cd $dc $cd
	jp   z, Jump_0e7_7a87                            ; $5d87: $ca $87 $7a

	xor  d                                           ; $5d8a: $aa
	ld   [hl], h                                     ; $5d8b: $74
	ld   de, $4811                                   ; $5d8c: $11 $11 $48
	cp   e                                           ; $5d8f: $bb
	cp   h                                           ; $5d90: $bc
	sbc  $ed                                         ; $5d91: $de $ed
	sub  a                                           ; $5d93: $97
	ld   l, c                                        ; $5d94: $69
	cp   e                                           ; $5d95: $bb
	and  a                                           ; $5d96: $a7
	ld   sp, $1511                                   ; $5d97: $31 $11 $15
	xor  l                                           ; $5d9a: $ad
	res  7, l                                        ; $5d9b: $cb $bd
	xor  $c9                                         ; $5d9d: $ee $c9
	ld   [hl], a                                     ; $5d9f: $77
	adc  d                                           ; $5da0: $8a
	xor  b                                           ; $5da1: $a8
	ld   d, e                                        ; $5da2: $53
	ld   bc, $4911                                   ; $5da3: $01 $11 $49
	call $dcdc                                       ; $5da6: $cd $dc $dc
	res  4, a                                        ; $5da9: $cb $a7
	ld   a, b                                        ; $5dab: $78
	xor  d                                           ; $5dac: $aa
	sub  l                                           ; $5dad: $95
	ld   hl, $2711                                   ; $5dae: $21 $11 $27
	cp   h                                           ; $5db1: $bc
	call z, $ddcd                                    ; $5db2: $cc $cd $dd
	xor  b                                           ; $5db5: $a8
	ld   a, b                                        ; $5db6: $78
	sbc  e                                           ; $5db7: $9b
	and  a                                           ; $5db8: $a7
	ld   b, d                                        ; $5db9: $42
	ld   de, $6b12                                   ; $5dba: $11 $12 $6b
	db   $dd                                         ; $5dbd: $dd
	db   $dd                                         ; $5dbe: $dd
	call c, $88ca                                    ; $5dbf: $dc $ca $88
	sbc  d                                           ; $5dc2: $9a
	xor  d                                           ; $5dc3: $aa
	ld   [hl], h                                     ; $5dc4: $74
	ld   de, $4711                                   ; $5dc5: $11 $11 $47
	cp   h                                           ; $5dc8: $bc
	call c, $ccbd                                    ; $5dc9: $dc $bd $cc
	cp   c                                           ; $5dcc: $b9
	adc  c                                           ; $5dcd: $89
	xor  d                                           ; $5dce: $aa
	sub  [hl]                                        ; $5dcf: $96
	ld   b, d                                        ; $5dd0: $42
	ld   de, $7a13                                   ; $5dd1: $11 $13 $7a
	adc  $dc                                         ; $5dd4: $ce $dc
	call z, $88ca                                    ; $5dd6: $cc $ca $88
	sbc  c                                           ; $5dd9: $99
	xor  d                                           ; $5dda: $aa
	ld   [hl], l                                     ; $5ddb: $75
	ld   sp, $2511                                   ; $5ddc: $31 $11 $25
	sbc  e                                           ; $5ddf: $9b
	call $ecde                                       ; $5de0: $cd $de $ec
	xor  b                                           ; $5de3: $a8
	ld   a, b                                        ; $5de4: $78
	xor  d                                           ; $5de5: $aa
	sub  a                                           ; $5de6: $97
	ld   b, d                                        ; $5de7: $42
	ld   de, $7a13                                   ; $5de8: $11 $13 $7a
	call z, $cdcb                                    ; $5deb: $cc $cb $cd
	db   $db                                         ; $5dee: $db
	sub  a                                           ; $5def: $97
	ld   a, c                                        ; $5df0: $79
	xor  e                                           ; $5df1: $ab
	add  l                                           ; $5df2: $85
	ld   hl, $1511                                   ; $5df3: $21 $11 $15
	sbc  h                                           ; $5df6: $9c
	db   $dd                                         ; $5df7: $dd
	call z, $c8ed                                    ; $5df8: $cc $ed $c8
	halt                                             ; $5dfb: $76
	sbc  e                                           ; $5dfc: $9b
	cp   c                                           ; $5dfd: $b9
	ld   d, d                                        ; $5dfe: $52
	ld   de, $6913                                   ; $5dff: $11 $13 $69
	cp   e                                           ; $5e02: $bb
	call z, $cbdd                                    ; $5e03: $cc $dd $cb
	adc  b                                           ; $5e06: $88
	ld   a, c                                        ; $5e07: $79
	xor  e                                           ; $5e08: $ab
	and  a                                           ; $5e09: $a7
	ld   b, c                                        ; $5e0a: $41
	ld   de, $8b14                                   ; $5e0b: $11 $14 $8b
	cp   h                                           ; $5e0e: $bc
	call $c9dd                                       ; $5e0f: $cd $dd $c9
	add  a                                           ; $5e12: $87
	sbc  d                                           ; $5e13: $9a
	xor  d                                           ; $5e14: $aa
	ld   [hl], l                                     ; $5e15: $75
	ld   sp, $2611                                   ; $5e16: $31 $11 $26
	xor  h                                           ; $5e19: $ac
	call $dcbd                                       ; $5e1a: $cd $bd $dc
	xor  b                                           ; $5e1d: $a8
	ld   [hl], a                                     ; $5e1e: $77
	sbc  d                                           ; $5e1f: $9a
	cp   c                                           ; $5e20: $b9
	ld   h, e                                        ; $5e21: $63
	ld   de, $4912                                   ; $5e22: $11 $12 $49
	cp   h                                           ; $5e25: $bc
	call c, $dcde                                    ; $5e26: $dc $de $dc
	sub  a                                           ; $5e29: $97
	ld   a, c                                        ; $5e2a: $79
	xor  d                                           ; $5e2b: $aa
	sub  a                                           ; $5e2c: $97
	ld   b, d                                        ; $5e2d: $42
	ld   de, $7b13                                   ; $5e2e: $11 $13 $7b
	call $dedd                                       ; $5e31: $cd $dd $de
	ret                                              ; $5e34: $c9


	ld   [hl], a                                     ; $5e35: $77
	sbc  d                                           ; $5e36: $9a
	cp   d                                           ; $5e37: $ba
	ld   [hl], h                                     ; $5e38: $74
	ld   hl, $2611                                   ; $5e39: $21 $11 $26
	xor  h                                           ; $5e3c: $ac
	call c, $bbcc                                    ; $5e3d: $dc $cc $bb
	cp   c                                           ; $5e40: $b9
	adc  b                                           ; $5e41: $88
	xor  e                                           ; $5e42: $ab
	cp   c                                           ; $5e43: $b9
	ld   h, h                                        ; $5e44: $64
	ld   hl, $3611                                   ; $5e45: $21 $11 $36
	sbc  e                                           ; $5e48: $9b
	call c, $dbcd                                    ; $5e49: $dc $cd $db
	xor  b                                           ; $5e4c: $a8
	adc  b                                           ; $5e4d: $88
	xor  d                                           ; $5e4e: $aa
	cp   c                                           ; $5e4f: $b9
	ld   d, d                                        ; $5e50: $52
	ld   de, $6a12                                   ; $5e51: $11 $12 $6a
	db   $dd                                         ; $5e54: $dd
	jp   z, $dbbb                                    ; $5e55: $ca $bb $db

	xor  c                                           ; $5e58: $a9
	sbc  d                                           ; $5e59: $9a
	xor  d                                           ; $5e5a: $aa
	add  [hl]                                        ; $5e5b: $86
	ld   d, e                                        ; $5e5c: $53
	ld   hl, $5911                                   ; $5e5d: $21 $11 $59
	call $ccdc                                       ; $5e60: $cd $dc $cc
	res  3, c                                        ; $5e63: $cb $99
	adc  d                                           ; $5e65: $8a
	xor  e                                           ; $5e66: $ab
	sub  a                                           ; $5e67: $97
	ld   b, d                                        ; $5e68: $42
	ld   de, $7a13                                   ; $5e69: $11 $13 $7a
	res  7, e                                        ; $5e6c: $cb $bb
	call $a8db                                       ; $5e6e: $cd $db $a8
	sbc  d                                           ; $5e71: $9a
	cp   c                                           ; $5e72: $b9
	add  [hl]                                        ; $5e73: $86
	ld   b, d                                        ; $5e74: $42
	ld   de, $6a12                                   ; $5e75: $11 $12 $6a
	call $bccb                                       ; $5e78: $cd $cb $bc
	call c, $89b9                                    ; $5e7b: $dc $b9 $89
	sbc  d                                           ; $5e7e: $9a
	sub  a                                           ; $5e7f: $97
	ld   b, d                                        ; $5e80: $42
	ld   de, $9c14                                   ; $5e81: $11 $14 $9c
	call c, $bcca                                    ; $5e84: $dc $ca $bc
	jp   z, $8a88                                    ; $5e87: $ca $88 $8a

	xor  d                                           ; $5e8a: $aa
	add  l                                           ; $5e8b: $85
	ld   [hl-], a                                    ; $5e8c: $32
	ld   de, $7a24                                   ; $5e8d: $11 $24 $7a
	cp   l                                           ; $5e90: $bd
	cp   h                                           ; $5e91: $bc
	call z, $a9cb                                    ; $5e92: $cc $cb $a9
	sbc  b                                           ; $5e95: $98
	sbc  b                                           ; $5e96: $98
	halt                                             ; $5e97: $76
	ld   b, d                                        ; $5e98: $42
	ld   de, $7b14                                   ; $5e99: $11 $14 $7b
	call c, $bbbb                                    ; $5e9c: $dc $bb $bb
	res  3, b                                        ; $5e9f: $cb $98
	sbc  c                                           ; $5ea1: $99
	sbc  d                                           ; $5ea2: $9a
	sub  a                                           ; $5ea3: $97
	ld   d, e                                        ; $5ea4: $53
	ld   hl, $5a11                                   ; $5ea5: $21 $11 $5a
	cp   l                                           ; $5ea8: $bd
	set  1, l                                        ; $5ea9: $cb $cd
	call z, $9999                                    ; $5eab: $cc $99 $99
	xor  d                                           ; $5eae: $aa
	add  l                                           ; $5eaf: $85
	ld   [hl-], a                                    ; $5eb0: $32
	ld   [hl+], a                                    ; $5eb1: $22
	inc  hl                                          ; $5eb2: $23
	ld   d, a                                        ; $5eb3: $57
	cp   e                                           ; $5eb4: $bb
	db   $dd                                         ; $5eb5: $dd
	call z, $a9bb                                    ; $5eb6: $cc $bb $a9
	sbc  d                                           ; $5eb9: $9a
	xor  c                                           ; $5eba: $a9
	add  a                                           ; $5ebb: $87
	ld   h, h                                        ; $5ebc: $64
	ld   hl, $4812                                   ; $5ebd: $21 $12 $48
	cp   h                                           ; $5ec0: $bc
	cp   h                                           ; $5ec1: $bc
	call $b9cc                                       ; $5ec2: $cd $cc $b9
	ld   a, b                                        ; $5ec5: $78
	xor  d                                           ; $5ec6: $aa
	xor  b                                           ; $5ec7: $a8
	ld   h, h                                        ; $5ec8: $64
	ld   hl, $3711                                   ; $5ec9: $21 $11 $37
	cp   l                                           ; $5ecc: $bd
	call z, $bcab                                    ; $5ecd: $cc $ab $bc
	cp   d                                           ; $5ed0: $ba
	xor  b                                           ; $5ed1: $a8
	adc  d                                           ; $5ed2: $8a
	xor  b                                           ; $5ed3: $a8
	ld   h, h                                        ; $5ed4: $64
	ld   hl, $4612                                   ; $5ed5: $21 $12 $46
	sbc  d                                           ; $5ed8: $9a
	cp   h                                           ; $5ed9: $bc
	call z, $b9cc                                    ; $5eda: $cc $cc $b9
	sbc  b                                           ; $5edd: $98
	sbc  c                                           ; $5ede: $99
	sbc  b                                           ; $5edf: $98
	halt                                             ; $5ee0: $76
	ld   d, e                                        ; $5ee1: $53
	ld   de, $9b14                                   ; $5ee2: $11 $14 $9b
	call z, $bca9                                    ; $5ee5: $cc $a9 $bc
	db   $db                                         ; $5ee8: $db
	cp   c                                           ; $5ee9: $b9
	sbc  b                                           ; $5eea: $98
	sbc  c                                           ; $5eeb: $99
	add  a                                           ; $5eec: $87
	ld   d, e                                        ; $5eed: $53
	ld   de, $6913                                   ; $5eee: $11 $13 $69
	xor  e                                           ; $5ef1: $ab
	set  1, e                                        ; $5ef2: $cb $cb
	jp   z, $99a9                                    ; $5ef4: $ca $a9 $99

	sbc  c                                           ; $5ef7: $99
	add  a                                           ; $5ef8: $87
	ld   h, h                                        ; $5ef9: $64
	ld   [hl-], a                                    ; $5efa: $32
	ld   [hl+], a                                    ; $5efb: $22
	ld   b, [hl]                                     ; $5efc: $46
	sbc  e                                           ; $5efd: $9b
	cp   h                                           ; $5efe: $bc
	set  1, e                                        ; $5eff: $cb $cb
	cp   c                                           ; $5f01: $b9
	sbc  c                                           ; $5f02: $99
	adc  c                                           ; $5f03: $89
	sbc  b                                           ; $5f04: $98
	ld   [hl], l                                     ; $5f05: $75
	ld   b, d                                        ; $5f06: $42
	ld   [hl+], a                                    ; $5f07: $22
	dec  [hl]                                        ; $5f08: $35
	ld   a, c                                        ; $5f09: $79
	cp   h                                           ; $5f0a: $bc
	res  7, e                                        ; $5f0b: $cb $bb
	xor  d                                           ; $5f0d: $aa
	xor  c                                           ; $5f0e: $a9
	sbc  b                                           ; $5f0f: $98
	sbc  b                                           ; $5f10: $98
	sub  a                                           ; $5f11: $97
	ld   d, e                                        ; $5f12: $53
	ld   [hl+], a                                    ; $5f13: $22
	inc  h                                           ; $5f14: $24
	ld   l, d                                        ; $5f15: $6a
	xor  h                                           ; $5f16: $ac
	cp   e                                           ; $5f17: $bb
	cp   h                                           ; $5f18: $bc
	res  3, b                                        ; $5f19: $cb $98
	adc  b                                           ; $5f1b: $88
	sbc  d                                           ; $5f1c: $9a
	add  a                                           ; $5f1d: $87
	ld   h, l                                        ; $5f1e: $65
	ld   b, e                                        ; $5f1f: $43
	ld   [hl+], a                                    ; $5f20: $22
	ld   [hl], $9b                                   ; $5f21: $36 $9b
	call c, $bbdb                                    ; $5f23: $dc $db $bb
	xor  c                                           ; $5f26: $a9
	sbc  c                                           ; $5f27: $99
	sbc  c                                           ; $5f28: $99
	sub  a                                           ; $5f29: $97
	ld   h, [hl]                                     ; $5f2a: $66
	ld   b, e                                        ; $5f2b: $43
	ld   hl, $7a25                                   ; $5f2c: $21 $25 $7a
	call z, $cccc                                    ; $5f2f: $cc $cc $cc
	cp   d                                           ; $5f32: $ba
	sbc  b                                           ; $5f33: $98
	adc  c                                           ; $5f34: $89
	sbc  d                                           ; $5f35: $9a
	add  a                                           ; $5f36: $87
	ld   d, e                                        ; $5f37: $53
	ld   [hl+], a                                    ; $5f38: $22
	ld   [de], a                                     ; $5f39: $12
	ld   e, b                                        ; $5f3a: $58
	xor  e                                           ; $5f3b: $ab
	set  1, h                                        ; $5f3c: $cb $cc
	cp   e                                           ; $5f3e: $bb
	xor  c                                           ; $5f3f: $a9
	adc  b                                           ; $5f40: $88
	sbc  c                                           ; $5f41: $99
	adc  b                                           ; $5f42: $88
	ld   [hl], l                                     ; $5f43: $75
	ld   [hl-], a                                    ; $5f44: $32
	ld   [de], a                                     ; $5f45: $12
	ld   [hl], $9b                                   ; $5f46: $36 $9b
	call z, $cbcc                                    ; $5f48: $cc $cc $cb
	xor  c                                           ; $5f4b: $a9
	sbc  c                                           ; $5f4c: $99
	sbc  c                                           ; $5f4d: $99
	adc  b                                           ; $5f4e: $88
	add  a                                           ; $5f4f: $87
	ld   d, e                                        ; $5f50: $53
	ld   de, $7924                                   ; $5f51: $11 $24 $79
	cp   h                                           ; $5f54: $bc
	cp   e                                           ; $5f55: $bb
	res  7, d                                        ; $5f56: $cb $ba
	xor  c                                           ; $5f58: $a9
	adc  b                                           ; $5f59: $88
	sbc  b                                           ; $5f5a: $98
	sub  a                                           ; $5f5b: $97
	ld   h, l                                        ; $5f5c: $65
	ld   sp, $4711                                   ; $5f5d: $31 $11 $47
	xor  e                                           ; $5f60: $ab
	call z, $bacc                                    ; $5f61: $cc $cc $ba
	xor  b                                           ; $5f64: $a8
	sbc  d                                           ; $5f65: $9a
	sbc  d                                           ; $5f66: $9a
	sub  a                                           ; $5f67: $97
	ld   h, l                                        ; $5f68: $65
	ld   [hl-], a                                    ; $5f69: $32
	ld   de, $aa36                                   ; $5f6a: $11 $36 $aa
	call z, $bbbc                                    ; $5f6d: $cc $bc $bb
	cp   d                                           ; $5f70: $ba
	adc  c                                           ; $5f71: $89
	sbc  c                                           ; $5f72: $99
	sbc  b                                           ; $5f73: $98
	add  [hl]                                        ; $5f74: $86
	ld   d, e                                        ; $5f75: $53
	ld   hl, $6823                                   ; $5f76: $21 $23 $68
	xor  h                                           ; $5f79: $ac
	call $bacb                                       ; $5f7a: $cd $cb $ba
	sbc  b                                           ; $5f7d: $98
	adc  c                                           ; $5f7e: $89
	xor  c                                           ; $5f7f: $a9
	add  a                                           ; $5f80: $87
	ld   d, h                                        ; $5f81: $54
	ld   [hl-], a                                    ; $5f82: $32
	ld   [de], a                                     ; $5f83: $12
	ld   b, a                                        ; $5f84: $47
	sbc  h                                           ; $5f85: $9c
	db   $dd                                         ; $5f86: $dd
	res  7, e                                        ; $5f87: $cb $bb
	xor  c                                           ; $5f89: $a9
	sbc  c                                           ; $5f8a: $99
	sbc  c                                           ; $5f8b: $99
	xor  c                                           ; $5f8c: $a9
	add  [hl]                                        ; $5f8d: $86
	ld   b, d                                        ; $5f8e: $42
	ld   de, $7924                                   ; $5f8f: $11 $24 $79
	cp   h                                           ; $5f92: $bc
	call z, $b9cb                                    ; $5f93: $cc $cb $b9
	sbc  c                                           ; $5f96: $99
	sbc  d                                           ; $5f97: $9a
	sbc  b                                           ; $5f98: $98
	add  [hl]                                        ; $5f99: $86
	ld   h, h                                        ; $5f9a: $64
	ld   [hl-], a                                    ; $5f9b: $32
	ld   [de], a                                     ; $5f9c: $12
	ld   b, a                                        ; $5f9d: $47
	xor  h                                           ; $5f9e: $ac
	call z, $cbcb                                    ; $5f9f: $cc $cb $cb
	xor  c                                           ; $5fa2: $a9
	sbc  c                                           ; $5fa3: $99
	xor  d                                           ; $5fa4: $aa
	sbc  b                                           ; $5fa5: $98
	ld   h, l                                        ; $5fa6: $65
	ld   [hl-], a                                    ; $5fa7: $32
	ld   de, $8a35                                   ; $5fa8: $11 $35 $8a
	call $cbdd                                       ; $5fab: $cd $dd $cb
	xor  d                                           ; $5fae: $aa
	sbc  c                                           ; $5faf: $99
	xor  c                                           ; $5fb0: $a9
	sbc  b                                           ; $5fb1: $98
	halt                                             ; $5fb2: $76
	ld   d, h                                        ; $5fb3: $54
	ld   hl, $5813                                   ; $5fb4: $21 $13 $58
	cp   l                                           ; $5fb7: $bd
	call z, $badb                                    ; $5fb8: $cc $db $ba
	sbc  b                                           ; $5fbb: $98
	sbc  c                                           ; $5fbc: $99
	sbc  c                                           ; $5fbd: $99
	sbc  b                                           ; $5fbe: $98
	ld   [hl], l                                     ; $5fbf: $75
	ld   sp, $3611                                   ; $5fc0: $31 $11 $36
	sbc  h                                           ; $5fc3: $9c
	call z, $bbcb                                    ; $5fc4: $cc $cb $bb
	cp   c                                           ; $5fc7: $b9
	sbc  b                                           ; $5fc8: $98
	sbc  d                                           ; $5fc9: $9a
	xor  c                                           ; $5fca: $a9
	halt                                             ; $5fcb: $76
	ld   d, e                                        ; $5fcc: $53
	ld   hl, $6913                                   ; $5fcd: $21 $13 $69
	call $cbdc                                       ; $5fd0: $cd $dc $cb
	cp   c                                           ; $5fd3: $b9
	adc  b                                           ; $5fd4: $88
	sbc  d                                           ; $5fd5: $9a
	xor  d                                           ; $5fd6: $aa
	add  a                                           ; $5fd7: $87
	ld   h, h                                        ; $5fd8: $64
	ld   [hl-], a                                    ; $5fd9: $32
	ld   de, $9c36                                   ; $5fda: $11 $36 $9c
	call $bacc                                       ; $5fdd: $cd $cc $ba
	xor  c                                           ; $5fe0: $a9
	adc  b                                           ; $5fe1: $88
	sbc  c                                           ; $5fe2: $99
	sbc  c                                           ; $5fe3: $99
	halt                                             ; $5fe4: $76
	ld   b, e                                        ; $5fe5: $43
	ld   hl, $6923                                   ; $5fe6: $21 $23 $69
	call z, $cbdc                                    ; $5fe9: $cc $dc $cb
	xor  d                                           ; $5fec: $aa
	sbc  c                                           ; $5fed: $99
	sbc  d                                           ; $5fee: $9a
	sbc  c                                           ; $5fef: $99
	add  a                                           ; $5ff0: $87
	ld   h, l                                        ; $5ff1: $65
	ld   [hl-], a                                    ; $5ff2: $32
	ld   de, $9b36                                   ; $5ff3: $11 $36 $9b
	call $cbcd                                       ; $5ff6: $cd $cd $cb
	xor  c                                           ; $5ff9: $a9
	adc  c                                           ; $5ffa: $89
	sbc  c                                           ; $5ffb: $99
	sbc  c                                           ; $5ffc: $99
	halt                                             ; $5ffd: $76
	ld   b, d                                        ; $5ffe: $42
	ld   de, $7924                                   ; $5fff: $11 $24 $79
	cp   h                                           ; $6002: $bc
	call $b9db                                       ; $6003: $cd $db $b9
	sbc  b                                           ; $6006: $98
	xor  c                                           ; $6007: $a9
	sbc  c                                           ; $6008: $99
	add  a                                           ; $6009: $87
	ld   [hl], l                                     ; $600a: $75
	ld   [hl-], a                                    ; $600b: $32
	ld   [de], a                                     ; $600c: $12
	ld   b, [hl]                                     ; $600d: $46
	sbc  e                                           ; $600e: $9b
	cp   h                                           ; $600f: $bc
	call c, $a9cb                                    ; $6010: $dc $cb $a9
	adc  c                                           ; $6013: $89
	xor  d                                           ; $6014: $aa
	xor  c                                           ; $6015: $a9
	halt                                             ; $6016: $76
	ld   d, h                                        ; $6017: $54
	ld   hl, $6813                                   ; $6018: $21 $13 $68
	xor  e                                           ; $601b: $ab
	call $cadd                                       ; $601c: $cd $dd $ca
	sbc  c                                           ; $601f: $99
	sbc  c                                           ; $6020: $99
	sbc  c                                           ; $6021: $99
	add  a                                           ; $6022: $87
	ld   h, l                                        ; $6023: $65
	ld   b, e                                        ; $6024: $43
	ld   de, $7a24                                   ; $6025: $11 $24 $7a
	call $cbdc                                       ; $6028: $cd $dc $cb
	xor  b                                           ; $602b: $a8
	sbc  c                                           ; $602c: $99
	sbc  c                                           ; $602d: $99
	sbc  b                                           ; $602e: $98
	add  a                                           ; $602f: $87
	ld   h, l                                        ; $6030: $65
	ld   sp, $4711                                   ; $6031: $31 $11 $47
	xor  e                                           ; $6034: $ab
	cp   h                                           ; $6035: $bc
	db   $dd                                         ; $6036: $dd
	jp   z, $8999                                    ; $6037: $ca $99 $89

	xor  d                                           ; $603a: $aa
	adc  b                                           ; $603b: $88
	ld   [hl], a                                     ; $603c: $77
	ld   d, h                                        ; $603d: $54
	ld   hl, $6913                                   ; $603e: $21 $13 $69
	xor  h                                           ; $6041: $ac
	cp   h                                           ; $6042: $bc
	call $98ba                                       ; $6043: $cd $ba $98
	sbc  c                                           ; $6046: $99
	xor  c                                           ; $6047: $a9
	sub  a                                           ; $6048: $97
	halt                                             ; $6049: $76
	ld   d, e                                        ; $604a: $53
	ld   de, $7914                                   ; $604b: $11 $14 $79
	cp   h                                           ; $604e: $bc
	db   $dd                                         ; $604f: $dd
	call z, $98a9                                    ; $6050: $cc $a9 $98
	sbc  c                                           ; $6053: $99
	sbc  c                                           ; $6054: $99
	sbc  b                                           ; $6055: $98
	ld   [hl], l                                     ; $6056: $75
	ld   [hl-], a                                    ; $6057: $32
	ld   [de], a                                     ; $6058: $12
	ld   [hl], $79                                   ; $6059: $36 $79
	call z, $caed                                    ; $605b: $cc $ed $ca
	xor  b                                           ; $605e: $a8
	sbc  c                                           ; $605f: $99
	sbc  c                                           ; $6060: $99
	adc  c                                           ; $6061: $89
	add  a                                           ; $6062: $87
	ld   h, h                                        ; $6063: $64
	ld   hl, $4712                                   ; $6064: $21 $12 $47
	sbc  e                                           ; $6067: $9b
	call $cbcc                                       ; $6068: $cd $cc $cb
	sbc  c                                           ; $606b: $99
	sbc  c                                           ; $606c: $99
	sbc  b                                           ; $606d: $98
	adc  c                                           ; $606e: $89
	add  a                                           ; $606f: $87
	ld   h, h                                        ; $6070: $64
	ld   [hl-], a                                    ; $6071: $32
	inc  hl                                          ; $6072: $23
	ld   d, a                                        ; $6073: $57
	sbc  e                                           ; $6074: $9b
	call $a9dd                                       ; $6075: $cd $dd $a9
	adc  b                                           ; $6078: $88
	sbc  d                                           ; $6079: $9a
	sbc  c                                           ; $607a: $99
	adc  b                                           ; $607b: $88
	add  a                                           ; $607c: $87
	ld   h, h                                        ; $607d: $64
	ld   hl, $6813                                   ; $607e: $21 $13 $68
	xor  e                                           ; $6081: $ab
	call z, $bacc                                    ; $6082: $cc $cc $ba
	adc  b                                           ; $6085: $88
	adc  b                                           ; $6086: $88
	xor  d                                           ; $6087: $aa
	sbc  b                                           ; $6088: $98
	add  a                                           ; $6089: $87
	ld   h, h                                        ; $608a: $64
	ld   sp, $5712                                   ; $608b: $31 $12 $57
	xor  e                                           ; $608e: $ab
	call z, $cacc                                    ; $608f: $cc $cc $ca
	sbc  b                                           ; $6092: $98
	adc  b                                           ; $6093: $88
	sbc  c                                           ; $6094: $99
	sbc  b                                           ; $6095: $98
	adc  b                                           ; $6096: $88
	ld   [hl], l                                     ; $6097: $75
	ld   sp, $4712                                   ; $6098: $31 $12 $47
	sbc  e                                           ; $609b: $9b
	cp   l                                           ; $609c: $bd
	call c, $a9cb                                    ; $609d: $dc $cb $a9
	sbc  c                                           ; $60a0: $99
	sbc  c                                           ; $60a1: $99
	sbc  c                                           ; $60a2: $99
	adc  b                                           ; $60a3: $88
	halt                                             ; $60a4: $76
	ld   b, d                                        ; $60a5: $42
	ld   de, $8a36                                   ; $60a6: $11 $36 $8a
	cp   h                                           ; $60a9: $bc
	call c, $99ca                                    ; $60aa: $dc $ca $99
	adc  c                                           ; $60ad: $89
	sbc  c                                           ; $60ae: $99
	sbc  b                                           ; $60af: $98
	adc  b                                           ; $60b0: $88
	halt                                             ; $60b1: $76
	ld   d, e                                        ; $60b2: $53
	ld   hl, $7a24                                   ; $60b3: $21 $24 $7a
	xor  e                                           ; $60b6: $ab
	call z, $b9cb                                    ; $60b7: $cc $cb $b9
	adc  b                                           ; $60ba: $88
	sbc  d                                           ; $60bb: $9a
	xor  d                                           ; $60bc: $aa
	adc  b                                           ; $60bd: $88
	ld   [hl], a                                     ; $60be: $77
	ld   h, h                                        ; $60bf: $64
	ld   [hl-], a                                    ; $60c0: $32
	inc  hl                                          ; $60c1: $23
	ld   l, b                                        ; $60c2: $68
	sbc  d                                           ; $60c3: $9a
	cp   h                                           ; $60c4: $bc
	call z, $a8cb                                    ; $60c5: $cc $cb $a8
	sbc  c                                           ; $60c8: $99
	sbc  c                                           ; $60c9: $99
	sbc  c                                           ; $60ca: $99
	add  a                                           ; $60cb: $87
	halt                                             ; $60cc: $76
	ld   b, e                                        ; $60cd: $43
	ld   [hl+], a                                    ; $60ce: $22
	dec  [hl]                                        ; $60cf: $35
	adc  d                                           ; $60d0: $8a
	cp   e                                           ; $60d1: $bb
	call z, $b9cb                                    ; $60d2: $cc $cb $b9
	sbc  c                                           ; $60d5: $99
	xor  c                                           ; $60d6: $a9
	sbc  c                                           ; $60d7: $99
	ld   [hl], a                                     ; $60d8: $77
	ld   [hl], a                                     ; $60d9: $77
	ld   [hl], l                                     ; $60da: $75
	ld   b, d                                        ; $60db: $42
	ld   [hl+], a                                    ; $60dc: $22
	ld   d, a                                        ; $60dd: $57
	xor  d                                           ; $60de: $aa
	xor  e                                           ; $60df: $ab
	cp   e                                           ; $60e0: $bb
	call z, $99b9                                    ; $60e1: $cc $b9 $99
	xor  c                                           ; $60e4: $a9
	adc  b                                           ; $60e5: $88
	ld   [hl], a                                     ; $60e6: $77
	add  a                                           ; $60e7: $87
	ld   h, h                                        ; $60e8: $64
	ld   [hl-], a                                    ; $60e9: $32
	inc  h                                           ; $60ea: $24
	ld   a, b                                        ; $60eb: $78
	xor  d                                           ; $60ec: $aa
	cp   e                                           ; $60ed: $bb
	call z, $a8cb                                    ; $60ee: $cc $cb $a8
	adc  c                                           ; $60f1: $89
	sbc  c                                           ; $60f2: $99
	adc  b                                           ; $60f3: $88
	adc  b                                           ; $60f4: $88
	add  a                                           ; $60f5: $87
	ld   d, e                                        ; $60f6: $53
	ld   [hl+], a                                    ; $60f7: $22
	dec  [hl]                                        ; $60f8: $35
	ld   a, c                                        ; $60f9: $79
	xor  e                                           ; $60fa: $ab
	cp   h                                           ; $60fb: $bc
	res  7, d                                        ; $60fc: $cb $ba
	adc  c                                           ; $60fe: $89
	adc  c                                           ; $60ff: $89
	adc  b                                           ; $6100: $88
	adc  c                                           ; $6101: $89
	adc  c                                           ; $6102: $89
	add  [hl]                                        ; $6103: $86
	ld   d, e                                        ; $6104: $53
	ld   [hl+], a                                    ; $6105: $22
	dec  [hl]                                        ; $6106: $35
	adc  c                                           ; $6107: $89
	xor  e                                           ; $6108: $ab
	cp   e                                           ; $6109: $bb
	cp   e                                           ; $610a: $bb
	xor  c                                           ; $610b: $a9
	adc  b                                           ; $610c: $88
	adc  c                                           ; $610d: $89
	sbc  c                                           ; $610e: $99
	adc  c                                           ; $610f: $89
	sbc  b                                           ; $6110: $98
	add  a                                           ; $6111: $87
	ld   d, h                                        ; $6112: $54
	ld   [hl+], a                                    ; $6113: $22
	dec  [hl]                                        ; $6114: $35
	adc  c                                           ; $6115: $89
	xor  d                                           ; $6116: $aa
	cp   d                                           ; $6117: $ba
	res  7, d                                        ; $6118: $cb $ba
	sbc  b                                           ; $611a: $98
	adc  c                                           ; $611b: $89
	sbc  c                                           ; $611c: $99
	adc  b                                           ; $611d: $88
	adc  b                                           ; $611e: $88
	add  a                                           ; $611f: $87
	ld   h, l                                        ; $6120: $65
	inc  sp                                          ; $6121: $33
	dec  [hl]                                        ; $6122: $35
	ld   l, b                                        ; $6123: $68
	xor  c                                           ; $6124: $a9
	xor  d                                           ; $6125: $aa
	cp   d                                           ; $6126: $ba
	cp   e                                           ; $6127: $bb
	sbc  c                                           ; $6128: $99
	sbc  c                                           ; $6129: $99
	sbc  c                                           ; $612a: $99
	sbc  b                                           ; $612b: $98
	adc  c                                           ; $612c: $89
	add  a                                           ; $612d: $87
	ld   h, l                                        ; $612e: $65
	ld   b, h                                        ; $612f: $44
	ld   b, h                                        ; $6130: $44
	ld   d, a                                        ; $6131: $57
	adc  d                                           ; $6132: $8a
	xor  d                                           ; $6133: $aa
	xor  d                                           ; $6134: $aa
	cp   d                                           ; $6135: $ba
	sbc  c                                           ; $6136: $99
	sbc  b                                           ; $6137: $98
	adc  c                                           ; $6138: $89
	adc  b                                           ; $6139: $88
	sbc  b                                           ; $613a: $98
	adc  c                                           ; $613b: $89
	halt                                             ; $613c: $76
	ld   d, h                                        ; $613d: $54
	inc  [hl]                                        ; $613e: $34
	ld   b, [hl]                                     ; $613f: $46
	ld   a, c                                        ; $6140: $79
	sbc  c                                           ; $6141: $99
	xor  e                                           ; $6142: $ab
	xor  d                                           ; $6143: $aa
	xor  d                                           ; $6144: $aa
	adc  b                                           ; $6145: $88
	adc  b                                           ; $6146: $88
	adc  c                                           ; $6147: $89
	adc  b                                           ; $6148: $88
	sbc  b                                           ; $6149: $98
	sub  a                                           ; $614a: $97
	ld   h, l                                        ; $614b: $65
	ld   d, h                                        ; $614c: $54
	ld   b, h                                        ; $614d: $44
	ld   h, a                                        ; $614e: $67
	adc  c                                           ; $614f: $89
	xor  d                                           ; $6150: $aa
	cp   e                                           ; $6151: $bb
	cp   e                                           ; $6152: $bb
	sbc  b                                           ; $6153: $98
	sbc  c                                           ; $6154: $99
	adc  b                                           ; $6155: $88
	sbc  b                                           ; $6156: $98
	sbc  b                                           ; $6157: $98
	adc  b                                           ; $6158: $88
	add  a                                           ; $6159: $87
	ld   d, l                                        ; $615a: $55
	ld   b, h                                        ; $615b: $44
	ld   b, l                                        ; $615c: $45
	ld   l, b                                        ; $615d: $68
	sbc  d                                           ; $615e: $9a
	sbc  d                                           ; $615f: $9a
	xor  e                                           ; $6160: $ab
	xor  d                                           ; $6161: $aa
	xor  b                                           ; $6162: $a8
	adc  b                                           ; $6163: $88
	sbc  b                                           ; $6164: $98
	adc  c                                           ; $6165: $89
	sbc  c                                           ; $6166: $99
	adc  c                                           ; $6167: $89
	halt                                             ; $6168: $76
	ld   d, h                                        ; $6169: $54
	ld   b, h                                        ; $616a: $44
	ld   d, [hl]                                     ; $616b: $56
	ld   a, b                                        ; $616c: $78
	adc  c                                           ; $616d: $89
	sbc  d                                           ; $616e: $9a
	xor  e                                           ; $616f: $ab
	xor  c                                           ; $6170: $a9
	sbc  b                                           ; $6171: $98
	adc  b                                           ; $6172: $88
	adc  b                                           ; $6173: $88
	sbc  c                                           ; $6174: $99
	sbc  b                                           ; $6175: $98
	adc  b                                           ; $6176: $88
	halt                                             ; $6177: $76
	ld   d, l                                        ; $6178: $55
	ld   b, l                                        ; $6179: $45
	ld   d, [hl]                                     ; $617a: $56
	ld   a, b                                        ; $617b: $78
	adc  c                                           ; $617c: $89
	sbc  d                                           ; $617d: $9a
	xor  d                                           ; $617e: $aa
	sbc  d                                           ; $617f: $9a
	sbc  c                                           ; $6180: $99
	sbc  b                                           ; $6181: $98
	sbc  c                                           ; $6182: $99
	adc  c                                           ; $6183: $89
	adc  c                                           ; $6184: $89
	sbc  c                                           ; $6185: $99
	halt                                             ; $6186: $76
	ld   d, l                                        ; $6187: $55
	ld   d, l                                        ; $6188: $55
	ld   d, [hl]                                     ; $6189: $56
	ld   [hl], a                                     ; $618a: $77
	adc  b                                           ; $618b: $88
	xor  d                                           ; $618c: $aa
	xor  d                                           ; $618d: $aa
	cp   c                                           ; $618e: $b9
	sbc  c                                           ; $618f: $99
	sbc  b                                           ; $6190: $98
	sbc  c                                           ; $6191: $99
	adc  c                                           ; $6192: $89
	adc  b                                           ; $6193: $88
	sbc  b                                           ; $6194: $98
	add  a                                           ; $6195: $87
	ld   h, l                                        ; $6196: $65
	ld   d, h                                        ; $6197: $54
	ld   d, l                                        ; $6198: $55
	ld   a, b                                        ; $6199: $78
	sbc  b                                           ; $619a: $98
	adc  c                                           ; $619b: $89
	xor  d                                           ; $619c: $aa
	xor  d                                           ; $619d: $aa
	sbc  c                                           ; $619e: $99
	sbc  c                                           ; $619f: $99
	sbc  b                                           ; $61a0: $98
	sbc  b                                           ; $61a1: $98
	sbc  c                                           ; $61a2: $99
	adc  c                                           ; $61a3: $89
	add  a                                           ; $61a4: $87
	ld   h, [hl]                                     ; $61a5: $66
	ld   d, l                                        ; $61a6: $55
	ld   d, l                                        ; $61a7: $55
	ld   h, a                                        ; $61a8: $67
	ld   a, b                                        ; $61a9: $78
	adc  c                                           ; $61aa: $89
	xor  c                                           ; $61ab: $a9
	xor  d                                           ; $61ac: $aa
	sbc  d                                           ; $61ad: $9a
	sbc  c                                           ; $61ae: $99
	sbc  c                                           ; $61af: $99
	adc  c                                           ; $61b0: $89
	sbc  b                                           ; $61b1: $98
	adc  c                                           ; $61b2: $89
	adc  b                                           ; $61b3: $88
	halt                                             ; $61b4: $76
	ld   h, [hl]                                     ; $61b5: $66
	ld   d, l                                        ; $61b6: $55
	ld   h, [hl]                                     ; $61b7: $66
	ld   a, b                                        ; $61b8: $78
	sbc  b                                           ; $61b9: $98
	sbc  c                                           ; $61ba: $99
	sbc  c                                           ; $61bb: $99
	sbc  d                                           ; $61bc: $9a
	sbc  b                                           ; $61bd: $98
	adc  b                                           ; $61be: $88
	sbc  b                                           ; $61bf: $98
	adc  c                                           ; $61c0: $89
	adc  b                                           ; $61c1: $88
	sbc  c                                           ; $61c2: $99
	adc  b                                           ; $61c3: $88
	halt                                             ; $61c4: $76
	ld   h, l                                        ; $61c5: $65
	ld   d, l                                        ; $61c6: $55
	ld   h, [hl]                                     ; $61c7: $66
	ld   a, b                                        ; $61c8: $78
	sbc  b                                           ; $61c9: $98
	adc  c                                           ; $61ca: $89
	sbc  d                                           ; $61cb: $9a
	xor  d                                           ; $61cc: $aa
	sbc  b                                           ; $61cd: $98
	sbc  c                                           ; $61ce: $99
	adc  c                                           ; $61cf: $89
	adc  b                                           ; $61d0: $88
	sbc  c                                           ; $61d1: $99
	sbc  b                                           ; $61d2: $98
	add  a                                           ; $61d3: $87
	halt                                             ; $61d4: $76
	ld   h, [hl]                                     ; $61d5: $66
	ld   d, [hl]                                     ; $61d6: $56
	ld   h, a                                        ; $61d7: $67
	adc  b                                           ; $61d8: $88
	adc  b                                           ; $61d9: $88

Call_0e7_61da:
	sbc  c                                           ; $61da: $99
	xor  d                                           ; $61db: $aa
	sbc  c                                           ; $61dc: $99
	sbc  c                                           ; $61dd: $99
	adc  c                                           ; $61de: $89
	adc  c                                           ; $61df: $89
	adc  c                                           ; $61e0: $89
	adc  c                                           ; $61e1: $89
	sbc  c                                           ; $61e2: $99
	add  a                                           ; $61e3: $87
	halt                                             ; $61e4: $76
	ld   h, [hl]                                     ; $61e5: $66
	ld   h, [hl]                                     ; $61e6: $66
	ld   h, a                                        ; $61e7: $67
	adc  b                                           ; $61e8: $88
	sbc  c                                           ; $61e9: $99
	adc  c                                           ; $61ea: $89
	xor  c                                           ; $61eb: $a9
	xor  c                                           ; $61ec: $a9
	adc  c                                           ; $61ed: $89
	sbc  b                                           ; $61ee: $98
	adc  b                                           ; $61ef: $88
	adc  b                                           ; $61f0: $88
	adc  b                                           ; $61f1: $88
	adc  c                                           ; $61f2: $89
	add  a                                           ; $61f3: $87
	halt                                             ; $61f4: $76
	ld   h, [hl]                                     ; $61f5: $66
	ld   h, [hl]                                     ; $61f6: $66
	ld   h, a                                        ; $61f7: $67
	adc  c                                           ; $61f8: $89
	sbc  b                                           ; $61f9: $98
	adc  c                                           ; $61fa: $89
	sbc  d                                           ; $61fb: $9a
	xor  c                                           ; $61fc: $a9
	sbc  b                                           ; $61fd: $98
	adc  b                                           ; $61fe: $88
	adc  c                                           ; $61ff: $89
	sbc  c                                           ; $6200: $99
	adc  b                                           ; $6201: $88
	adc  c                                           ; $6202: $89
	add  a                                           ; $6203: $87
	halt                                             ; $6204: $76
	ld   h, [hl]                                     ; $6205: $66
	ld   h, [hl]                                     ; $6206: $66
	ld   h, a                                        ; $6207: $67
	adc  b                                           ; $6208: $88
	sbc  c                                           ; $6209: $99
	adc  c                                           ; $620a: $89
	sbc  c                                           ; $620b: $99
	sbc  c                                           ; $620c: $99
	adc  c                                           ; $620d: $89
	adc  c                                           ; $620e: $89
	adc  c                                           ; $620f: $89
	adc  b                                           ; $6210: $88
	adc  b                                           ; $6211: $88
	adc  b                                           ; $6212: $88
	add  a                                           ; $6213: $87
	halt                                             ; $6214: $76
	ld   h, [hl]                                     ; $6215: $66
	ld   h, [hl]                                     ; $6216: $66
	ld   h, a                                        ; $6217: $67
	ld   [hl], a                                     ; $6218: $77
	adc  b                                           ; $6219: $88
	sbc  c                                           ; $621a: $99
	sbc  c                                           ; $621b: $99
	sbc  c                                           ; $621c: $99
	adc  c                                           ; $621d: $89
	sbc  b                                           ; $621e: $98
	adc  c                                           ; $621f: $89
	sbc  b                                           ; $6220: $98
	sbc  c                                           ; $6221: $99
	sbc  c                                           ; $6222: $99
	add  a                                           ; $6223: $87
	ld   [hl], a                                     ; $6224: $77
	halt                                             ; $6225: $76
	ld   h, [hl]                                     ; $6226: $66
	ld   h, [hl]                                     ; $6227: $66
	ld   a, b                                        ; $6228: $78
	sbc  c                                           ; $6229: $99
	sbc  b                                           ; $622a: $98
	adc  b                                           ; $622b: $88
	sbc  d                                           ; $622c: $9a
	sbc  c                                           ; $622d: $99
	sbc  c                                           ; $622e: $99
	sbc  b                                           ; $622f: $98
	sbc  b                                           ; $6230: $98
	adc  b                                           ; $6231: $88
	adc  c                                           ; $6232: $89
	sbc  b                                           ; $6233: $98
	add  a                                           ; $6234: $87
	halt                                             ; $6235: $76
	ld   h, a                                        ; $6236: $67
	ld   [hl], a                                     ; $6237: $77
	ld   [hl], a                                     ; $6238: $77
	ld   a, b                                        ; $6239: $78
	adc  c                                           ; $623a: $89
	adc  b                                           ; $623b: $88
	sbc  c                                           ; $623c: $99
	sbc  c                                           ; $623d: $99
	adc  b                                           ; $623e: $88
	adc  b                                           ; $623f: $88
	adc  b                                           ; $6240: $88
	sbc  c                                           ; $6241: $99
	adc  b                                           ; $6242: $88
	adc  c                                           ; $6243: $89
	add  a                                           ; $6244: $87
	ld   [hl], a                                     ; $6245: $77
	ld   [hl], a                                     ; $6246: $77
	halt                                             ; $6247: $76
	ld   h, [hl]                                     ; $6248: $66
	ld   [hl], a                                     ; $6249: $77
	adc  b                                           ; $624a: $88
	adc  c                                           ; $624b: $89
	adc  c                                           ; $624c: $89
	adc  c                                           ; $624d: $89
	sbc  c                                           ; $624e: $99
	adc  c                                           ; $624f: $89
	sbc  c                                           ; $6250: $99
	adc  c                                           ; $6251: $89
	sbc  b                                           ; $6252: $98
	sbc  c                                           ; $6253: $99
	sbc  b                                           ; $6254: $98
	add  a                                           ; $6255: $87
	ld   [hl], a                                     ; $6256: $77
	halt                                             ; $6257: $76
	ld   h, [hl]                                     ; $6258: $66
	ld   h, a                                        ; $6259: $67
	ld   a, b                                        ; $625a: $78
	adc  c                                           ; $625b: $89
	sbc  c                                           ; $625c: $99
	sbc  b                                           ; $625d: $98
	sbc  c                                           ; $625e: $99
	sbc  b                                           ; $625f: $98
	adc  b                                           ; $6260: $88
	adc  b                                           ; $6261: $88
	adc  b                                           ; $6262: $88
	adc  b                                           ; $6263: $88
	sbc  c                                           ; $6264: $99
	sbc  b                                           ; $6265: $98
	add  a                                           ; $6266: $87
	ld   [hl], a                                     ; $6267: $77
	ld   [hl], a                                     ; $6268: $77
	halt                                             ; $6269: $76
	ld   [hl], a                                     ; $626a: $77
	ld   a, b                                        ; $626b: $78
	sbc  c                                           ; $626c: $99
	sbc  b                                           ; $626d: $98
	adc  b                                           ; $626e: $88
	sbc  c                                           ; $626f: $99
	sbc  b                                           ; $6270: $98
	sbc  c                                           ; $6271: $99
	sbc  b                                           ; $6272: $98
	adc  b                                           ; $6273: $88
	adc  b                                           ; $6274: $88
	sbc  c                                           ; $6275: $99
	adc  b                                           ; $6276: $88
	add  a                                           ; $6277: $87
	ld   [hl], a                                     ; $6278: $77
	ld   [hl], a                                     ; $6279: $77
	ld   [hl], a                                     ; $627a: $77
	ld   [hl], a                                     ; $627b: $77
	ld   a, b                                        ; $627c: $78
	sbc  b                                           ; $627d: $98
	adc  b                                           ; $627e: $88
	sbc  c                                           ; $627f: $99
	adc  b                                           ; $6280: $88
	sbc  c                                           ; $6281: $99
	sbc  b                                           ; $6282: $98
	sbc  c                                           ; $6283: $99
	sbc  c                                           ; $6284: $99
	adc  b                                           ; $6285: $88
	sbc  c                                           ; $6286: $99
	adc  b                                           ; $6287: $88
	ld   [hl], a                                     ; $6288: $77
	ld   [hl], a                                     ; $6289: $77
	ld   [hl], a                                     ; $628a: $77
	ld   h, [hl]                                     ; $628b: $66
	ld   [hl], a                                     ; $628c: $77
	adc  b                                           ; $628d: $88
	adc  c                                           ; $628e: $89
	sbc  c                                           ; $628f: $99
	adc  b                                           ; $6290: $88
	adc  b                                           ; $6291: $88
	adc  c                                           ; $6292: $89
	adc  b                                           ; $6293: $88
	adc  b                                           ; $6294: $88
	adc  b                                           ; $6295: $88
	sbc  c                                           ; $6296: $99
	sbc  c                                           ; $6297: $99
	sbc  b                                           ; $6298: $98
	add  a                                           ; $6299: $87
	ld   [hl], a                                     ; $629a: $77
	ld   [hl], a                                     ; $629b: $77
	ld   [hl], a                                     ; $629c: $77
	ld   [hl], a                                     ; $629d: $77
	ld   a, b                                        ; $629e: $78
	adc  c                                           ; $629f: $89
	sbc  c                                           ; $62a0: $99
	sbc  c                                           ; $62a1: $99
	sbc  b                                           ; $62a2: $98
	sbc  c                                           ; $62a3: $99
	adc  c                                           ; $62a4: $89
	sbc  b                                           ; $62a5: $98
	sbc  b                                           ; $62a6: $98
	adc  b                                           ; $62a7: $88
	sbc  c                                           ; $62a8: $99
	sbc  b                                           ; $62a9: $98
	adc  b                                           ; $62aa: $88
	ld   [hl], a                                     ; $62ab: $77
	ld   [hl], a                                     ; $62ac: $77
	ld   [hl], a                                     ; $62ad: $77
	ld   [hl], a                                     ; $62ae: $77
	ld   [hl], a                                     ; $62af: $77
	adc  c                                           ; $62b0: $89
	sbc  c                                           ; $62b1: $99
	adc  c                                           ; $62b2: $89
	sbc  b                                           ; $62b3: $98
	adc  c                                           ; $62b4: $89
	adc  b                                           ; $62b5: $88
	sbc  c                                           ; $62b6: $99
	sbc  c                                           ; $62b7: $99
	adc  b                                           ; $62b8: $88
	adc  c                                           ; $62b9: $89
	sbc  b                                           ; $62ba: $98
	adc  b                                           ; $62bb: $88
	ld   [hl], a                                     ; $62bc: $77
	ld   [hl], a                                     ; $62bd: $77
	ld   [hl], a                                     ; $62be: $77
	ld   [hl], a                                     ; $62bf: $77
	ld   [hl], a                                     ; $62c0: $77
	ld   a, b                                        ; $62c1: $78
	sbc  c                                           ; $62c2: $99
	sbc  b                                           ; $62c3: $98
	sbc  c                                           ; $62c4: $99
	adc  c                                           ; $62c5: $89
	adc  b                                           ; $62c6: $88
	sbc  c                                           ; $62c7: $99
	adc  b                                           ; $62c8: $88
	adc  c                                           ; $62c9: $89
	sbc  c                                           ; $62ca: $99
	sbc  c                                           ; $62cb: $99
	adc  b                                           ; $62cc: $88
	adc  b                                           ; $62cd: $88
	ld   [hl], a                                     ; $62ce: $77
	ld   [hl], a                                     ; $62cf: $77
	ld   [hl], a                                     ; $62d0: $77
	ld   [hl], a                                     ; $62d1: $77
	ld   a, b                                        ; $62d2: $78
	adc  b                                           ; $62d3: $88
	adc  c                                           ; $62d4: $89
	sbc  c                                           ; $62d5: $99
	sbc  c                                           ; $62d6: $99
	adc  b                                           ; $62d7: $88
	sbc  b                                           ; $62d8: $98
	adc  c                                           ; $62d9: $89
	sbc  c                                           ; $62da: $99
	adc  b                                           ; $62db: $88
	adc  c                                           ; $62dc: $89
	adc  b                                           ; $62dd: $88
	adc  b                                           ; $62de: $88
	add  a                                           ; $62df: $87
	ld   [hl], a                                     ; $62e0: $77
	ld   [hl], a                                     ; $62e1: $77
	ld   [hl], a                                     ; $62e2: $77
	ld   a, b                                        ; $62e3: $78
	adc  b                                           ; $62e4: $88
	adc  b                                           ; $62e5: $88
	adc  c                                           ; $62e6: $89
	sbc  b                                           ; $62e7: $98
	adc  b                                           ; $62e8: $88
	sbc  c                                           ; $62e9: $99
	sbc  b                                           ; $62ea: $98
	adc  b                                           ; $62eb: $88
	adc  c                                           ; $62ec: $89
	sbc  c                                           ; $62ed: $99
	sbc  c                                           ; $62ee: $99
	adc  b                                           ; $62ef: $88
	add  a                                           ; $62f0: $87
	ld   [hl], a                                     ; $62f1: $77
	ld   [hl], a                                     ; $62f2: $77
	ld   [hl], a                                     ; $62f3: $77
	ld   [hl], a                                     ; $62f4: $77
	ld   a, b                                        ; $62f5: $78
	adc  b                                           ; $62f6: $88
	adc  b                                           ; $62f7: $88
	adc  c                                           ; $62f8: $89
	sbc  b                                           ; $62f9: $98
	adc  b                                           ; $62fa: $88
	sbc  c                                           ; $62fb: $99
	sbc  c                                           ; $62fc: $99
	adc  b                                           ; $62fd: $88
	adc  b                                           ; $62fe: $88
	sbc  c                                           ; $62ff: $99
	adc  b                                           ; $6300: $88
	adc  b                                           ; $6301: $88
	ld   [hl], a                                     ; $6302: $77
	ld   [hl], a                                     ; $6303: $77
	ld   [hl], a                                     ; $6304: $77
	ld   [hl], a                                     ; $6305: $77
	ld   [hl], a                                     ; $6306: $77
	ld   a, b                                        ; $6307: $78
	adc  c                                           ; $6308: $89
	sbc  b                                           ; $6309: $98
	adc  c                                           ; $630a: $89
	sbc  b                                           ; $630b: $98
	adc  c                                           ; $630c: $89
	sbc  c                                           ; $630d: $99
	sbc  c                                           ; $630e: $99
	adc  b                                           ; $630f: $88
	sbc  c                                           ; $6310: $99
	adc  b                                           ; $6311: $88
	adc  b                                           ; $6312: $88
	adc  b                                           ; $6313: $88
	ld   [hl], a                                     ; $6314: $77
	ld   [hl], a                                     ; $6315: $77
	ld   [hl], a                                     ; $6316: $77
	ld   [hl], a                                     ; $6317: $77
	ld   a, b                                        ; $6318: $78
	adc  b                                           ; $6319: $88
	adc  b                                           ; $631a: $88
	adc  b                                           ; $631b: $88
	sbc  c                                           ; $631c: $99
	sbc  c                                           ; $631d: $99
	sbc  c                                           ; $631e: $99
	sbc  b                                           ; $631f: $98
	sbc  c                                           ; $6320: $99
	sbc  c                                           ; $6321: $99
	sbc  c                                           ; $6322: $99
	sbc  b                                           ; $6323: $98
	adc  b                                           ; $6324: $88
	ld   [hl], a                                     ; $6325: $77
	ld   [hl], a                                     ; $6326: $77
	ld   [hl], a                                     ; $6327: $77
	ld   [hl], a                                     ; $6328: $77
	ld   [hl], a                                     ; $6329: $77
	ld   a, b                                        ; $632a: $78
	adc  b                                           ; $632b: $88
	adc  b                                           ; $632c: $88
	adc  c                                           ; $632d: $89
	sbc  c                                           ; $632e: $99
	sbc  c                                           ; $632f: $99
	sbc  c                                           ; $6330: $99
	sbc  c                                           ; $6331: $99
	sbc  c                                           ; $6332: $99
	sbc  b                                           ; $6333: $98
	adc  b                                           ; $6334: $88
	adc  b                                           ; $6335: $88
	adc  b                                           ; $6336: $88
	add  a                                           ; $6337: $87
	ld   [hl], a                                     ; $6338: $77
	ld   [hl], a                                     ; $6339: $77
	ld   [hl], a                                     ; $633a: $77
	ld   [hl], a                                     ; $633b: $77
	ld   a, b                                        ; $633c: $78
	adc  b                                           ; $633d: $88
	adc  b                                           ; $633e: $88
	adc  b                                           ; $633f: $88
	adc  c                                           ; $6340: $89
	sbc  c                                           ; $6341: $99
	sbc  c                                           ; $6342: $99
	sbc  c                                           ; $6343: $99
	sbc  c                                           ; $6344: $99
	sbc  c                                           ; $6345: $99
	adc  b                                           ; $6346: $88
	adc  b                                           ; $6347: $88
	adc  b                                           ; $6348: $88
	ld   [hl], a                                     ; $6349: $77
	ld   [hl], a                                     ; $634a: $77
	ld   [hl], a                                     ; $634b: $77
	ld   [hl], a                                     ; $634c: $77
	ld   [hl], a                                     ; $634d: $77
	ld   a, b                                        ; $634e: $78
	adc  b                                           ; $634f: $88
	adc  b                                           ; $6350: $88
	adc  b                                           ; $6351: $88
	adc  c                                           ; $6352: $89
	adc  b                                           ; $6353: $88
	adc  c                                           ; $6354: $89
	sbc  c                                           ; $6355: $99
	sbc  c                                           ; $6356: $99
	sbc  c                                           ; $6357: $99
	adc  b                                           ; $6358: $88
	adc  b                                           ; $6359: $88
	adc  b                                           ; $635a: $88
	ld   [hl], a                                     ; $635b: $77
	ld   [hl], a                                     ; $635c: $77
	ld   [hl], a                                     ; $635d: $77
	ld   [hl], a                                     ; $635e: $77
	ld   [hl], a                                     ; $635f: $77
	ld   a, b                                        ; $6360: $78
	adc  b                                           ; $6361: $88
	adc  b                                           ; $6362: $88
	adc  b                                           ; $6363: $88
	adc  b                                           ; $6364: $88
	adc  b                                           ; $6365: $88
	sbc  c                                           ; $6366: $99
	sbc  c                                           ; $6367: $99
	sbc  c                                           ; $6368: $99
	sbc  c                                           ; $6369: $99
	adc  b                                           ; $636a: $88
	adc  b                                           ; $636b: $88
	adc  b                                           ; $636c: $88
	add  a                                           ; $636d: $87
	ld   [hl], a                                     ; $636e: $77
	ld   [hl], a                                     ; $636f: $77
	ld   [hl], a                                     ; $6370: $77
	ld   [hl], a                                     ; $6371: $77
	ld   a, b                                        ; $6372: $78
	adc  b                                           ; $6373: $88
	adc  b                                           ; $6374: $88
	adc  b                                           ; $6375: $88
	adc  b                                           ; $6376: $88
	adc  b                                           ; $6377: $88
	adc  b                                           ; $6378: $88
	adc  c                                           ; $6379: $89
	sbc  c                                           ; $637a: $99
	sbc  b                                           ; $637b: $98
	adc  b                                           ; $637c: $88
	adc  b                                           ; $637d: $88
	adc  b                                           ; $637e: $88
	add  a                                           ; $637f: $87
	ld   [hl], a                                     ; $6380: $77
	ld   [hl], a                                     ; $6381: $77
	ld   [hl], a                                     ; $6382: $77
	ld   [hl], a                                     ; $6383: $77
	ld   a, b                                        ; $6384: $78
	adc  b                                           ; $6385: $88
	adc  b                                           ; $6386: $88
	adc  b                                           ; $6387: $88
	adc  b                                           ; $6388: $88
	adc  b                                           ; $6389: $88
	adc  b                                           ; $638a: $88
	adc  b                                           ; $638b: $88
	adc  c                                           ; $638c: $89
	sbc  c                                           ; $638d: $99
	adc  b                                           ; $638e: $88
	adc  b                                           ; $638f: $88
	adc  b                                           ; $6390: $88
	adc  b                                           ; $6391: $88
	ld   [hl], a                                     ; $6392: $77
	ld   [hl], a                                     ; $6393: $77
	ld   [hl], a                                     ; $6394: $77
	ld   [hl], a                                     ; $6395: $77
	adc  b                                           ; $6396: $88
	adc  b                                           ; $6397: $88

Jump_0e7_6398:
	adc  b                                           ; $6398: $88
	adc  b                                           ; $6399: $88
	adc  b                                           ; $639a: $88
	adc  b                                           ; $639b: $88
	adc  b                                           ; $639c: $88
	adc  b                                           ; $639d: $88
	adc  b                                           ; $639e: $88
	adc  b                                           ; $639f: $88
	adc  c                                           ; $63a0: $89
	adc  b                                           ; $63a1: $88
	adc  b                                           ; $63a2: $88
	adc  b                                           ; $63a3: $88
	adc  b                                           ; $63a4: $88
	ld   [hl], a                                     ; $63a5: $77
	ld   [hl], a                                     ; $63a6: $77
	ld   a, b                                        ; $63a7: $78
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
	add  a                                           ; $63b8: $87
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
	ld   de, $1111                                   ; $6406: $11 $11 $11
	ld   de, $1111                                   ; $6409: $11 $11 $11
	ld   de, $1111                                   ; $640c: $11 $11 $11
	ld   de, $1111                                   ; $640f: $11 $11 $11
	ld   de, $1111                                   ; $6412: $11 $11 $11
	ld   de, $1111                                   ; $6415: $11 $11 $11
	ld   de, $1111                                   ; $6418: $11 $11 $11
	ld   de, $1111                                   ; $641b: $11 $11 $11
	ld   de, $1111                                   ; $641e: $11 $11 $11
	ld   de, $1111                                   ; $6421: $11 $11 $11
	ld   de, $1111                                   ; $6424: $11 $11 $11
	ld   de, $1111                                   ; $6427: $11 $11 $11
	ld   de, $1111                                   ; $642a: $11 $11 $11
	ld   de, $1111                                   ; $642d: $11 $11 $11
	ld   de, $1111                                   ; $6430: $11 $11 $11
	ld   de, $1111                                   ; $6433: $11 $11 $11
	ld   de, $1111                                   ; $6436: $11 $11 $11
	ld   de, $4800                                   ; $6439: $11 $00 $48
	ld   de, $1111                                   ; $643c: $11 $11 $11
	ld   de, $1111                                   ; $643f: $11 $11 $11
	ld   de, $1111                                   ; $6442: $11 $11 $11
	ld   de, $5413                                   ; $6445: $11 $13 $54
	ld   d, h                                        ; $6448: $54
	ld   d, h                                        ; $6449: $54
	ld   b, c                                        ; $644a: $41
	rra                                              ; $644b: $1f
	rst  $38                                         ; $644c: $ff
	pop  af                                          ; $644d: $f1
	ld   de, $1511                                   ; $644e: $11 $11 $15
	ld   [hl], c                                     ; $6451: $71
	ld   de, $de1c                                   ; $6452: $11 $1c $de
	cp   h                                           ; $6455: $bc
	sbc  $b1                                         ; $6456: $de $b1
	ld   de, $1111                                   ; $6458: $11 $11 $11
	ld   de, $1111                                   ; $645b: $11 $11 $11
	ld   de, $1111                                   ; $645e: $11 $11 $11
	ld   de, $1111                                   ; $6461: $11 $11 $11
	ld   de, $5411                                   ; $6464: $11 $11 $54
	ld   b, h                                        ; $6467: $44
	ld   [hl], l                                     ; $6468: $75
	ld   de, $5454                                   ; $6469: $11 $54 $54
	ld   h, a                                        ; $646c: $67
	ld   [hl], d                                     ; $646d: $72
	ld   de, $1111                                   ; $646e: $11 $11 $11
	ld   de, $1112                                   ; $6471: $11 $12 $11
	ld   [de], a                                     ; $6474: $12
	ld   de, $1111                                   ; $6475: $11 $11 $11
	ld   h, [hl]                                     ; $6478: $66
	halt                                             ; $6479: $76
	ld   d, l                                        ; $647a: $55
	ld   de, $8888                                   ; $647b: $11 $88 $88
	adc  b                                           ; $647e: $88
	adc  b                                           ; $647f: $88
	adc  b                                           ; $6480: $88
	adc  b                                           ; $6481: $88
	adc  b                                           ; $6482: $88
	adc  b                                           ; $6483: $88
	adc  b                                           ; $6484: $88
	adc  b                                           ; $6485: $88
	adc  b                                           ; $6486: $88
	add  a                                           ; $6487: $87
	ld   [hl], a                                     ; $6488: $77
	adc  c                                           ; $6489: $89
	adc  b                                           ; $648a: $88
	adc  b                                           ; $648b: $88
	ld   a, b                                        ; $648c: $78
	adc  c                                           ; $648d: $89
	sbc  b                                           ; $648e: $98
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	ld   [hl], a                                     ; $6491: $77
	ld   [hl], a                                     ; $6492: $77
	ld   a, c                                        ; $6493: $79
	xor  d                                           ; $6494: $aa
	add  a                                           ; $6495: $87
	ld   h, a                                        ; $6496: $67
	adc  c                                           ; $6497: $89

Call_0e7_6498:
	sbc  b                                           ; $6498: $98
	ld   [hl], a                                     ; $6499: $77
	ld   [hl], a                                     ; $649a: $77
	ld   [hl], a                                     ; $649b: $77
	sbc  c                                           ; $649c: $99
	xor  b                                           ; $649d: $a8
	add  a                                           ; $649e: $87
	ld   a, b                                        ; $649f: $78
	adc  b                                           ; $64a0: $88
	adc  b                                           ; $64a1: $88
	adc  b                                           ; $64a2: $88
	adc  b                                           ; $64a3: $88
	ld   a, b                                        ; $64a4: $78
	adc  c                                           ; $64a5: $89
	sbc  b                                           ; $64a6: $98

Call_0e7_64a7:
	adc  b                                           ; $64a7: $88

Call_0e7_64a8:
	adc  b                                           ; $64a8: $88
	adc  b                                           ; $64a9: $88
	adc  b                                           ; $64aa: $88
	sbc  c                                           ; $64ab: $99
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

Call_0e7_64b9:
	adc  c                                           ; $64b9: $89
	sbc  b                                           ; $64ba: $98
	adc  b                                           ; $64bb: $88
	add  a                                           ; $64bc: $87
	adc  c                                           ; $64bd: $89
	adc  b                                           ; $64be: $88
	add  a                                           ; $64bf: $87
	ld   [hl], a                                     ; $64c0: $77
	halt                                             ; $64c1: $76
	ld   h, [hl]                                     ; $64c2: $66
	sbc  e                                           ; $64c3: $9b
	cp   d                                           ; $64c4: $ba
	ld   [hl], l                                     ; $64c5: $75
	ld   l, b                                        ; $64c6: $68
	sbc  d                                           ; $64c7: $9a
	sbc  b                                           ; $64c8: $98
	adc  c                                           ; $64c9: $89
	sub  a                                           ; $64ca: $97
	halt                                             ; $64cb: $76
	ld   h, l                                        ; $64cc: $65
	ld   e, b                                        ; $64cd: $58
	db   $dd                                         ; $64ce: $dd
	rst  ToBoot                                         ; $64cf: $c7
	inc  h                                           ; $64d0: $24
	ld   a, e                                        ; $64d1: $7b
	ret                                              ; $64d2: $c9


	ld   [hl], l                                     ; $64d3: $75
	ld   h, a                                        ; $64d4: $67
	ld   a, c                                        ; $64d5: $79
	xor  d                                           ; $64d6: $aa
	cp   b                                           ; $64d7: $b8
	ld   [hl], l                                     ; $64d8: $75

Call_0e7_64d9:
	ld   h, a                                        ; $64d9: $67
	sbc  c                                           ; $64da: $99
	sbc  c                                           ; $64db: $99
	sbc  b                                           ; $64dc: $98
	add  a                                           ; $64dd: $87
	ld   h, [hl]                                     ; $64de: $66
	ld   d, [hl]                                     ; $64df: $56
	ld   a, c                                        ; $64e0: $79
	cp   h                                           ; $64e1: $bc
	and  a                                           ; $64e2: $a7
	ld   d, [hl]                                     ; $64e3: $56
	adc  d                                           ; $64e4: $8a
	cp   d                                           ; $64e5: $ba
	add  a                                           ; $64e6: $87
	halt                                             ; $64e7: $76
	ld   b, d                                        ; $64e8: $42
	jr   @+$01                                       ; $64e9: $18 $ff

	and  $14                                         ; $64eb: $e6 $14
	ld   a, h                                        ; $64ed: $7c
	rst  $10                                         ; $64ee: $d7
	ld   h, [hl]                                     ; $64ef: $66
	xor  d                                           ; $64f0: $aa
	ld   h, e                                        ; $64f1: $63
	ld   e, d                                        ; $64f2: $5a
	db   $dd                                         ; $64f3: $dd
	sub  [hl]                                        ; $64f4: $96
	ld   d, [hl]                                     ; $64f5: $56
	adc  c                                           ; $64f6: $89
	add  a                                           ; $64f7: $87
	sbc  d                                           ; $64f8: $9a
	sbc  b                                           ; $64f9: $98
	ld   h, [hl]                                     ; $64fa: $66
	ld   a, c                                        ; $64fb: $79
	xor  d                                           ; $64fc: $aa
	adc  b                                           ; $64fd: $88
	sbc  b                                           ; $64fe: $98
	halt                                             ; $64ff: $76
	ld   l, b                                        ; $6500: $68
	adc  b                                           ; $6501: $88
	add  a                                           ; $6502: $87
	halt                                             ; $6503: $76
	ld   h, [hl]                                     ; $6504: $66
	ld   h, a                                        ; $6505: $67

jr_0e7_6506:
	cp   h                                           ; $6506: $bc
	xor  c                                           ; $6507: $a9
	ld   h, [hl]                                     ; $6508: $66
	ld   a, b                                        ; $6509: $78
	xor  c                                           ; $650a: $a9
	sub  a                                           ; $650b: $97
	ld   h, l                                        ; $650c: $65
	ld   de, $ff1f                                   ; $650d: $11 $1f $ff
	pop  de                                          ; $6510: $d1
	inc  de                                          ; $6511: $13
	ld   a, [hl]                                     ; $6512: $7e
	and  a                                           ; $6513: $a7
	adc  c                                           ; $6514: $89
	or   [hl]                                        ; $6515: $b6
	inc  hl                                          ; $6516: $23
	ld   a, l                                        ; $6517: $7d
	ei                                               ; $6518: $fb
	ld   [hl], h                                     ; $6519: $74
	ld   h, a                                        ; $651a: $67
	adc  b                                           ; $651b: $88
	ld   a, d                                        ; $651c: $7a
	cp   d                                           ; $651d: $ba
	sub  [hl]                                        ; $651e: $96
	ld   d, [hl]                                     ; $651f: $56
	sbc  c                                           ; $6520: $99
	add  a                                           ; $6521: $87
	ld   [hl], a                                     ; $6522: $77
	add  a                                           ; $6523: $87
	ld   d, l                                        ; $6524: $55
	adc  [hl]                                        ; $6525: $8e
	db   $fd                                         ; $6526: $fd
	ld   [hl], l                                     ; $6527: $75
	ld   d, [hl]                                     ; $6528: $56
	ld   [hl], l                                     ; $6529: $75
	ld   hl, $ff1e                                   ; $652a: $21 $1e $ff
	pop  hl                                          ; $652d: $e1
	ld   d, $7f                                      ; $652e: $16 $7f
	or   l                                           ; $6530: $b5
	add  a                                           ; $6531: $87
	or   a                                           ; $6532: $b7
	inc  h                                           ; $6533: $24
	adc  a                                           ; $6534: $8f
	ei                                               ; $6535: $fb
	sub  l                                           ; $6536: $95
	ld   h, a                                        ; $6537: $67
	ld   l, b                                        ; $6538: $68
	sbc  d                                           ; $6539: $9a
	ret  z                                           ; $653a: $c8

	ld   h, l                                        ; $653b: $65
	ld   h, a                                        ; $653c: $67
	add  a                                           ; $653d: $87
	ld   d, e                                        ; $653e: $53
	add  hl, sp                                      ; $653f: $39
	db   $fd                                         ; $6540: $fd
	call nz, $9d26                                   ; $6541: $c4 $26 $9d
	cp   d                                           ; $6544: $ba
	sub  [hl]                                        ; $6545: $96
	ld   h, e                                        ; $6546: $63
	ld   de, rAUD1HIGH                                   ; $6547: $11 $14 $ff
	ld   a, [$4911]                                  ; $654a: $fa $11 $49
	ld   sp, hl                                      ; $654d: $f9
	xor  c                                           ; $654e: $a9
	adc  e                                           ; $654f: $8b
	inc  hl                                          ; $6550: $23
	adc  l                                           ; $6551: $8d
	cp   $93                                         ; $6552: $fe $93
	inc  d                                           ; $6554: $14
	ld   d, l                                        ; $6555: $55
	ld   d, e                                        ; $6556: $53
	adc  a                                           ; $6557: $8f
	ld   a, [$6a51]                                  ; $6558: $fa $51 $6a
	adc  $78                                         ; $655b: $ce $78
	sbc  c                                           ; $655d: $99
	ld   [hl], e                                     ; $655e: $73
	ld   e, b                                        ; $655f: $58
	sub  l                                           ; $6560: $95
	ld   de, $ff5f                                   ; $6561: $11 $5f $ff
	ld   sp, $ff6b                                   ; $6564: $31 $6b $ff
	jr   z, jr_0e7_6506                              ; $6567: $28 $9d

	sub  c                                           ; $6569: $91
	ld   c, c                                        ; $656a: $49
	db   $ed                                         ; $656b: $ed
	ld   b, c                                        ; $656c: $41
	ld   de, $fdef                                   ; $656d: $11 $ef $fd
	ld   de, $ecb6                                   ; $6570: $11 $b6 $ec
	ld   e, l                                        ; $6573: $5d
	xor  e                                           ; $6574: $ab
	ld   d, c                                        ; $6575: $51
	ld   [hl], a                                     ; $6576: $77
	ld   [hl], c                                     ; $6577: $71
	ld   de, $fccf                                   ; $6578: $11 $cf $fc
	ld   de, $fdcb                                   ; $657b: $11 $cb $fd
	ld   a, [hl-]                                    ; $657e: $3a
	adc  h                                           ; $657f: $8c
	ld   b, c                                        ; $6580: $41
	ld   a, h                                        ; $6581: $7c
	push de                                          ; $6582: $d5
	ld   de, $ff1f                                   ; $6583: $11 $1f $ff
	ld   d, c                                        ; $6586: $51
	ccf                                              ; $6587: $3f

Jump_0e7_6588:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6588: $cf
	ld   b, [hl]                                     ; $6589: $46
	res  4, c                                        ; $658a: $cb $a1
	jr   z, @+$64                                    ; $658c: $28 $62

	ld   de, $fbdf                                   ; $658e: $11 $df $fb
	ld   de, $fbbf                                   ; $6591: $11 $bf $fb
	ld   a, [hl-]                                    ; $6594: $3a
	xor  e                                           ; $6595: $ab
	ld   hl, $926a                                   ; $6596: $21 $6a $92
	ld   de, $f5ff                                   ; $6599: $11 $ff $f5
	ld   de, $f6ef                                   ; $659c: $11 $ef $f6
	ld   l, d                                        ; $659f: $6a
	and  a                                           ; $65a0: $a7
	ld   [de], a                                     ; $65a1: $12
	ld   b, l                                        ; $65a2: $45
	ld   hl, $ff4f                                   ; $65a3: $21 $4f $ff
	ld   d, c                                        ; $65a6: $51
	dec  e                                           ; $65a7: $1d
	rst  $38                                         ; $65a8: $ff

jr_0e7_65a9:
	ld   a, b                                        ; $65a9: $78
	sbc  c                                           ; $65aa: $99
	ld   d, c                                        ; $65ab: $51
	dec  h                                           ; $65ac: $25
	ld   d, h                                        ; $65ad: $54
	dec  h                                           ; $65ae: $25
	rst  $38                                         ; $65af: $ff
	push hl                                          ; $65b0: $e5
	rla                                              ; $65b1: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65b2: $cf
	or   $a7                                         ; $65b3: $f6 $a7
	sub  e                                           ; $65b5: $93
	inc  de                                          ; $65b6: $13
	ld   b, d                                        ; $65b7: $42

Call_0e7_65b8:
	ld   [de], a                                     ; $65b8: $12
	rst  $38                                         ; $65b9: $ff
	ld   sp, hl                                      ; $65ba: $f9
	ld   de, $f9af                                   ; $65bb: $11 $af $f9
	adc  d                                           ; $65be: $8a
	sub  l                                           ; $65bf: $95
	ld   de, $2134                                   ; $65c0: $11 $34 $21
	xor  a                                           ; $65c3: $af
	rst  $38                                         ; $65c4: $ff
	ld   de, $fd5e                                   ; $65c5: $11 $5e $fd
	ld   a, c                                        ; $65c8: $79
	sub  a                                           ; $65c9: $97
	ld   de, $2213                                   ; $65ca: $11 $13 $22
	ld   a, a                                        ; $65cd: $7f
	rst  $38                                         ; $65ce: $ff
	ld   d, c                                        ; $65cf: $51
	ld   a, [de]                                     ; $65d0: $1a
	rst  $38                                         ; $65d1: $ff
	xor  e                                           ; $65d2: $ab
	sub  [hl]                                        ; $65d3: $96
	ld   de, $2212                                   ; $65d4: $11 $12 $22
	sbc  a                                           ; $65d7: $9f
	rst  $38                                         ; $65d8: $ff
	ld   d, c                                        ; $65d9: $51
	jr   z, jr_0e7_65a9                              ; $65da: $28 $cd

	cp   h                                           ; $65dc: $bc
	and  a                                           ; $65dd: $a7
	ld   de, $3311                                   ; $65de: $11 $11 $33

jr_0e7_65e1:
	adc  a                                           ; $65e1: $8f
	rst  $38                                         ; $65e2: $ff
	ld   h, c                                        ; $65e3: $61
	scf                                              ; $65e4: $37
	cp   h                                           ; $65e5: $bc
	call z, $1196                                    ; $65e6: $cc $96 $11
	ld   de, $cf34                                   ; $65e9: $11 $34 $cf
	rst  $38                                         ; $65ec: $ff
	ld   d, c                                        ; $65ed: $51
	ld   b, [hl]                                     ; $65ee: $46
	call z, $85cc                                    ; $65ef: $cc $cc $85
	ld   de, $2611                                   ; $65f2: $11 $11 $26
	rst  $38                                         ; $65f5: $ff
	db   $fd                                         ; $65f6: $fd
	inc  hl                                          ; $65f7: $23
	ld   b, [hl]                                     ; $65f8: $46
	xor  d                                           ; $65f9: $aa
	db   $fc                                         ; $65fa: $fc
	and  d                                           ; $65fb: $a2
	ld   de, $4a12                                   ; $65fc: $11 $12 $4a
	rst  $38                                         ; $65ff: $ff
	ld   a, [$4724]                                  ; $6600: $fa $24 $47
	sbc  e                                           ; $6603: $9b
	db   $ec                                         ; $6604: $ec
	add  c                                           ; $6605: $81
	ld   de, $7f13                                   ; $6606: $11 $13 $7f
	rst  $38                                         ; $6609: $ff
	and  $44                                         ; $660a: $e6 $44
	ld   b, a                                        ; $660c: $47
	xor  [hl]                                        ; $660d: $ae
	ld   [$1131], a                                  ; $660e: $ea $31 $11
	ld   d, $ff                                      ; $6611: $16 $ff
	rst  $38                                         ; $6613: $ff
	sub  l                                           ; $6614: $95
	ld   b, d                                        ; $6615: $42
	ld   e, b                                        ; $6616: $58
	rst  JumpTable                                         ; $6617: $df
	add  $11                                         ; $6618: $c6 $11
	ld   de, $ff3b                                   ; $661a: $11 $3b $ff
	db   $fc                                         ; $661d: $fc
	add  [hl]                                        ; $661e: $86
	inc  [hl]                                        ; $661f: $34
	ld   l, e                                        ; $6620: $6b
	sbc  $81                                         ; $6621: $de $81
	ld   de, $af11                                   ; $6623: $11 $11 $af
	rst  $38                                         ; $6626: $ff
	ld   [$3483], a                                  ; $6627: $ea $83 $34
	xor  h                                           ; $662a: $ac
	reti                                             ; $662b: $d9


	ld   sp, $1711                                   ; $662c: $31 $11 $17
	rst  $38                                         ; $662f: $ff
	rst  $38                                         ; $6630: $ff
	db   $db                                         ; $6631: $db
	ld   d, e                                        ; $6632: $53
	jr   c, jr_0e7_65e1                              ; $6633: $38 $ac

	and  l                                           ; $6635: $a5
	ld   de, $6f11                                   ; $6636: $11 $11 $6f
	rst  $38                                         ; $6639: $ff
	db   $fd                                         ; $663a: $fd
	or   [hl]                                        ; $663b: $b6
	ld   b, h                                        ; $663c: $44
	ld   a, d                                        ; $663d: $7a
	cp   d                                           ; $663e: $ba
	ld   h, e                                        ; $663f: $63
	ld   de, $ff17                                   ; $6640: $11 $17 $ff
	db   $fd                                         ; $6643: $fd
	db   $fd                                         ; $6644: $fd
	ld   h, h                                        ; $6645: $64
	jr   c, @-$55                                    ; $6646: $38 $a9

	add  [hl]                                        ; $6648: $86
	ld   b, c                                        ; $6649: $41
	ld   de, $fe8f                                   ; $664a: $11 $8f $fe
	rst  JumpTable                                         ; $664d: $df
	rst  ToBoot                                         ; $664e: $c7
	ld   b, l                                        ; $664f: $45
	sub  a                                           ; $6650: $97
	add  a                                           ; $6651: $87
	ld   [hl], h                                     ; $6652: $74
	ld   de, $ff0b                                   ; $6653: $11 $0b $ff
	db   $dd                                         ; $6656: $dd
	db   $fc                                         ; $6657: $fc
	ld   h, h                                        ; $6658: $64
	ld   l, c                                        ; $6659: $69
	ld   a, b                                        ; $665a: $78
	ld   [hl], a                                     ; $665b: $77
	ld   sp, $cf12                                   ; $665c: $31 $12 $cf
	db   $ec                                         ; $665f: $ec
	rst  $28                                         ; $6660: $ef
	and  l                                           ; $6661: $a5
	ld   b, a                                        ; $6662: $47
	add  [hl]                                        ; $6663: $86
	ld   a, b                                        ; $6664: $78
	add  d                                           ; $6665: $82
	ld   de, $fd5d                                   ; $6666: $11 $5d $fd
	rst  JumpTable                                         ; $6669: $df
	ld   sp, hl                                      ; $666a: $f9
	ld   d, [hl]                                     ; $666b: $56
	add  [hl]                                        ; $666c: $86
	ld   d, a                                        ; $666d: $57
	sub  a                                           ; $666e: $97
	ld   de, $ec19                                   ; $666f: $11 $19 $ec
	cp   [hl]                                        ; $6672: $be
	db   $fc                                         ; $6673: $fc
	halt                                             ; $6674: $76
	ld   a, b                                        ; $6675: $78
	ld   b, l                                        ; $6676: $45
	ld   a, b                                        ; $6677: $78
	ld   d, c                                        ; $6678: $51
	inc  d                                           ; $6679: $14
	cp   h                                           ; $667a: $bc
	xor  e                                           ; $667b: $ab
	rst  $38                                         ; $667c: $ff
	and  a                                           ; $667d: $a7
	ld   a, c                                        ; $667e: $79
	ld   h, h                                        ; $667f: $64
	ld   l, b                                        ; $6680: $68
	add  e                                           ; $6681: $83
	ld   [de], a                                     ; $6682: $12
	ld   a, e                                        ; $6683: $7b
	xor  d                                           ; $6684: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6685: $cf
	reti                                             ; $6686: $d9


	sbc  c                                           ; $6687: $99
	sub  h                                           ; $6688: $94
	ld   b, [hl]                                     ; $6689: $46
	add  [hl]                                        ; $668a: $86
	ld   [hl+], a                                    ; $668b: $22
	ld   c, d                                        ; $668c: $4a
	cp   c                                           ; $668d: $b9
	xor  l                                           ; $668e: $ad
	db   $eb                                         ; $668f: $eb
	sbc  c                                           ; $6690: $99
	and  a                                           ; $6691: $a7
	ld   b, l                                        ; $6692: $45
	ld   [hl], a                                     ; $6693: $77
	ld   b, e                                        ; $6694: $43
	ld   b, [hl]                                     ; $6695: $46
	xor  c                                           ; $6696: $a9
	adc  d                                           ; $6697: $8a
	db   $dd                                         ; $6698: $dd
	sbc  c                                           ; $6699: $99
	xor  d                                           ; $669a: $aa
	ld   h, l                                        ; $669b: $65
	ld   a, b                                        ; $669c: $78
	ld   [hl], l                                     ; $669d: $75
	ld   d, [hl]                                     ; $669e: $56
	adc  b                                           ; $669f: $88
	adc  b                                           ; $66a0: $88
	sbc  d                                           ; $66a1: $9a
	xor  b                                           ; $66a2: $a8
	sbc  c                                           ; $66a3: $99
	sub  a                                           ; $66a4: $97
	ld   a, c                                        ; $66a5: $79
	sub  a                                           ; $66a6: $97
	ld   a, b                                        ; $66a7: $78
	sbc  c                                           ; $66a8: $99
	adc  b                                           ; $66a9: $88
	adc  b                                           ; $66aa: $88
	add  a                                           ; $66ab: $87
	ld   [hl], a                                     ; $66ac: $77
	ld   [hl], a                                     ; $66ad: $77
	ld   a, b                                        ; $66ae: $78
	adc  b                                           ; $66af: $88
	adc  c                                           ; $66b0: $89
	sbc  d                                           ; $66b1: $9a
	sbc  c                                           ; $66b2: $99
	sbc  c                                           ; $66b3: $99
	add  a                                           ; $66b4: $87
	ld   [hl], a                                     ; $66b5: $77
	ld   [hl], a                                     ; $66b6: $77
	ld   [hl], a                                     ; $66b7: $77
	adc  b                                           ; $66b8: $88
	adc  c                                           ; $66b9: $89

Call_0e7_66ba:
	adc  c                                           ; $66ba: $89
	sbc  b                                           ; $66bb: $98
	adc  b                                           ; $66bc: $88
	adc  b                                           ; $66bd: $88
	add  a                                           ; $66be: $87
	ld   [hl], a                                     ; $66bf: $77
	ld   [hl], a                                     ; $66c0: $77
	ld   a, b                                        ; $66c1: $78
	adc  b                                           ; $66c2: $88
	adc  c                                           ; $66c3: $89
	adc  b                                           ; $66c4: $88
	sbc  c                                           ; $66c5: $99
	adc  c                                           ; $66c6: $89
	sbc  b                                           ; $66c7: $98
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

Call_0e7_67a7:
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

Call_0e7_6897:
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
	adc  c                                           ; $68ae: $89
	sub  a                                           ; $68af: $97
	adc  c                                           ; $68b0: $89
	ld   a, c                                        ; $68b1: $79
	sub  a                                           ; $68b2: $97
	adc  b                                           ; $68b3: $88
	ld   a, b                                        ; $68b4: $78
	adc  b                                           ; $68b5: $88
	sub  a                                           ; $68b6: $97
	ld   a, b                                        ; $68b7: $78
	adc  c                                           ; $68b8: $89
	adc  b                                           ; $68b9: $88
	add  a                                           ; $68ba: $87
	adc  b                                           ; $68bb: $88
	adc  c                                           ; $68bc: $89
	adc  b                                           ; $68bd: $88
	add  a                                           ; $68be: $87
	adc  b                                           ; $68bf: $88
	adc  c                                           ; $68c0: $89
	ld   a, b                                        ; $68c1: $78
	adc  b                                           ; $68c2: $88
	sbc  c                                           ; $68c3: $99
	sub  a                                           ; $68c4: $97
	adc  b                                           ; $68c5: $88
	add  a                                           ; $68c6: $87
	adc  b                                           ; $68c7: $88
	ld   a, b                                        ; $68c8: $78
	ld   a, b                                        ; $68c9: $78
	add  a                                           ; $68ca: $87
	adc  c                                           ; $68cb: $89
	adc  b                                           ; $68cc: $88
	ld   a, b                                        ; $68cd: $78
	adc  b                                           ; $68ce: $88
	add  a                                           ; $68cf: $87
	ld   [hl], a                                     ; $68d0: $77
	ld   [hl], a                                     ; $68d1: $77
	adc  b                                           ; $68d2: $88
	sbc  c                                           ; $68d3: $99
	sbc  c                                           ; $68d4: $99
	xor  c                                           ; $68d5: $a9
	xor  c                                           ; $68d6: $a9
	add  a                                           ; $68d7: $87
	ld   h, l                                        ; $68d8: $65
	ld   b, [hl]                                     ; $68d9: $46
	ld   [hl], l                                     ; $68da: $75
	ld   [hl], h                                     ; $68db: $74
	ld   a, c                                        ; $68dc: $79
	adc  e                                           ; $68dd: $8b
	xor  h                                           ; $68de: $ac
	xor  h                                           ; $68df: $ac
	xor  h                                           ; $68e0: $ac
	cp   b                                           ; $68e1: $b8
	sub  [hl]                                        ; $68e2: $96
	ld   h, c                                        ; $68e3: $61
	inc  de                                          ; $68e4: $13
	add  h                                           ; $68e5: $84
	add  e                                           ; $68e6: $83
	ld   a, l                                        ; $68e7: $7d
	xor  a                                           ; $68e8: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68e9: $cf
	adc  $dc                                         ; $68ea: $ce $dc
	or   [hl]                                        ; $68ec: $b6
	ld   [hl], h                                     ; $68ed: $74
	ld   sp, $7411                                   ; $68ee: $31 $11 $74
	add  l                                           ; $68f1: $85
	ld   a, a                                        ; $68f2: $7f
	rst  $28                                         ; $68f3: $ef
	rst  $38                                         ; $68f4: $ff
	db   $ed                                         ; $68f5: $ed
	ld   sp, hl                                      ; $68f6: $f9
	add  c                                           ; $68f7: $81
	ld   de, $1111                                   ; $68f8: $11 $11 $11
	sbc  b                                           ; $68fb: $98
	ld   l, a                                        ; $68fc: $6f
	rst  $38                                         ; $68fd: $ff
	rst  $38                                         ; $68fe: $ff
	db   $fd                                         ; $68ff: $fd
	ei                                               ; $6900: $fb
	ld   [hl], e                                     ; $6901: $73
	ld   de, $1211                                   ; $6902: $11 $11 $12
	sbc  c                                           ; $6905: $99
	adc  a                                           ; $6906: $8f
	rst  $38                                         ; $6907: $ff
	rst  $38                                         ; $6908: $ff
	db   $fc                                         ; $6909: $fc
	ld   a, [$1161]                                  ; $690a: $fa $61 $11
	ld   de, $cb13                                   ; $690d: $11 $13 $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6910: $cf
	rst  $38                                         ; $6911: $ff
	rst  $38                                         ; $6912: $ff
	db   $ec                                         ; $6913: $ec
	rst  $10                                         ; $6914: $d7
	ld   b, c                                        ; $6915: $41
	ld   de, $2811                                   ; $6916: $11 $11 $28
	db   $db                                         ; $6919: $db
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	rst  $38                                         ; $691c: $ff
	cp   h                                           ; $691d: $bc
	and  [hl]                                        ; $691e: $a6
	ld   hl, $1111                                   ; $691f: $21 $11 $11
	ld   c, h                                        ; $6922: $4c
	adc  $ff                                         ; $6923: $ce $ff
	rst  $38                                         ; $6925: $ff
	db   $fc                                         ; $6926: $fc
	xor  e                                           ; $6927: $ab
	ld   [hl], l                                     ; $6928: $75
	ld   de, $1111                                   ; $6929: $11 $11 $11
	ld   a, l                                        ; $692c: $7d
	rst  JumpTable                                         ; $692d: $df
	rst  $38                                         ; $692e: $ff
	rst  $38                                         ; $692f: $ff
	ld   sp, hl                                      ; $6930: $f9
	xor  d                                           ; $6931: $aa
	ld   h, e                                        ; $6932: $63
	ld   de, $1311                                   ; $6933: $11 $11 $13
	adc  $df                                         ; $6936: $ce $df
	rst  $38                                         ; $6938: $ff
	rst  $38                                         ; $6939: $ff
	reti                                             ; $693a: $d9


	cp   c                                           ; $693b: $b9
	ld   h, c                                        ; $693c: $61
	ld   de, $1511                                   ; $693d: $11 $11 $15
	db   $ed                                         ; $6940: $ed
	rst  $28                                         ; $6941: $ef
	rst  $38                                         ; $6942: $ff
	rst  $38                                         ; $6943: $ff
	ret                                              ; $6944: $c9


	sub  a                                           ; $6945: $97
	ld   b, c                                        ; $6946: $41
	ld   de, $1911                                   ; $6947: $11 $11 $19
	db   $fd                                         ; $694a: $fd
	rst  $38                                         ; $694b: $ff
	rst  $38                                         ; $694c: $ff
	rst  $38                                         ; $694d: $ff
	xor  c                                           ; $694e: $a9
	sub  a                                           ; $694f: $97
	ld   sp, $1111                                   ; $6950: $31 $11 $11
	ld   c, e                                        ; $6953: $4b
	db   $ec                                         ; $6954: $ec
	rst  $38                                         ; $6955: $ff
	rst  $38                                         ; $6956: $ff
	db   $fc                                         ; $6957: $fc
	adc  b                                           ; $6958: $88
	add  [hl]                                        ; $6959: $86
	ld   hl, $1111                                   ; $695a: $21 $11 $11
	ld   e, h                                        ; $695d: $5c
	sbc  $ff                                         ; $695e: $de $ff
	rst  $38                                         ; $6960: $ff
	db   $fd                                         ; $6961: $fd
	sbc  b                                           ; $6962: $98
	add  h                                           ; $6963: $84
	ld   de, $1111                                   ; $6964: $11 $11 $11
	ld   l, l                                        ; $6967: $6d
	rst  JumpTable                                         ; $6968: $df
	rst  $38                                         ; $6969: $ff
	rst  $38                                         ; $696a: $ff
	db   $eb                                         ; $696b: $eb
	adc  c                                           ; $696c: $89
	ld   [hl], h                                     ; $696d: $74
	ld   de, $1111                                   ; $696e: $11 $11 $11
	sbc  [hl]                                        ; $6971: $9e
	rst  $28                                         ; $6972: $ef
	rst  $38                                         ; $6973: $ff
	rst  $38                                         ; $6974: $ff
	jp   hl                                          ; $6975: $e9


	add  a                                           ; $6976: $87
	ld   h, h                                        ; $6977: $64
	ld   de, $1411                                   ; $6978: $11 $11 $14
	cp   [hl]                                        ; $697b: $be
	rst  $28                                         ; $697c: $ef
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	ret  z                                           ; $697f: $c8

	ld   [hl], a                                     ; $6980: $77
	ld   d, e                                        ; $6981: $53
	ld   de, $1511                                   ; $6982: $11 $11 $15
	cp   l                                           ; $6985: $bd
	rst  $38                                         ; $6986: $ff
	rst  $38                                         ; $6987: $ff
	rst  $38                                         ; $6988: $ff
	cp   b                                           ; $6989: $b8
	add  [hl]                                        ; $698a: $86
	ld   b, c                                        ; $698b: $41
	ld   de, $1711                                   ; $698c: $11 $11 $17
	rst  JumpTable                                         ; $698f: $df
	rst  $38                                         ; $6990: $ff
	rst  $38                                         ; $6991: $ff
	cp   $a7                                         ; $6992: $fe $a7
	ld   [hl], l                                     ; $6994: $75
	ld   b, c                                        ; $6995: $41
	ld   de, $2911                                   ; $6996: $11 $11 $29
	xor  $ff                                         ; $6999: $ee $ff
	rst  $38                                         ; $699b: $ff
	db   $fd                                         ; $699c: $fd
	sub  a                                           ; $699d: $97
	ld   [hl], l                                     ; $699e: $75
	ld   sp, $1111                                   ; $699f: $31 $11 $11
	ld   a, [hl-]                                    ; $69a2: $3a
	sbc  $ff                                         ; $69a3: $de $ff
	rst  $38                                         ; $69a5: $ff
	cp   $98                                         ; $69a6: $fe $98
	ld   h, h                                        ; $69a8: $64
	ld   hl, $1111                                   ; $69a9: $21 $11 $11
	ld   c, d                                        ; $69ac: $4a
	rst  $28                                         ; $69ad: $ef
	rst  $38                                         ; $69ae: $ff
	rst  $38                                         ; $69af: $ff
	db   $fd                                         ; $69b0: $fd
	add  a                                           ; $69b1: $87
	ld   h, l                                        ; $69b2: $65
	ld   hl, $1111                                   ; $69b3: $21 $11 $11
	ld   l, e                                        ; $69b6: $6b
	rst  $28                                         ; $69b7: $ef
	rst  $38                                         ; $69b8: $ff
	rst  $38                                         ; $69b9: $ff
	db   $fc                                         ; $69ba: $fc
	ld   [hl], a                                     ; $69bb: $77
	ld   h, l                                        ; $69bc: $65
	ld   hl, $1111                                   ; $69bd: $21 $11 $11
	ld   l, h                                        ; $69c0: $6c
	rst  $28                                         ; $69c1: $ef

jr_0e7_69c2:
	rst  $38                                         ; $69c2: $ff
	rst  $38                                         ; $69c3: $ff
	ei                                               ; $69c4: $fb
	ld   [hl], a                                     ; $69c5: $77
	ld   h, l                                        ; $69c6: $65
	ld   hl, $1111                                   ; $69c7: $21 $11 $11
	ld   l, e                                        ; $69ca: $6b
	rst  JumpTable                                         ; $69cb: $df
	rst  $38                                         ; $69cc: $ff
	rst  $38                                         ; $69cd: $ff
	ei                                               ; $69ce: $fb
	add  a                                           ; $69cf: $87
	ld   d, l                                        ; $69d0: $55
	ld   de, $1111                                   ; $69d1: $11 $11 $11
	ld   l, e                                        ; $69d4: $6b
	rst  JumpTable                                         ; $69d5: $df
	rst  $38                                         ; $69d6: $ff
	rst  $38                                         ; $69d7: $ff
	db   $fc                                         ; $69d8: $fc
	sub  a                                           ; $69d9: $97
	ld   h, l                                        ; $69da: $65
	ld   hl, $1111                                   ; $69db: $21 $11 $11
	ld   l, e                                        ; $69de: $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69df: $cf
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	db   $fc                                         ; $69e2: $fc
	add  a                                           ; $69e3: $87
	ld   h, [hl]                                     ; $69e4: $66
	ld   sp, $1111                                   ; $69e5: $31 $11 $11
	ld   e, d                                        ; $69e8: $5a
	adc  $ff                                         ; $69e9: $ce $ff
	rst  $38                                         ; $69eb: $ff
	db   $fd                                         ; $69ec: $fd
	sbc  b                                           ; $69ed: $98
	ld   h, [hl]                                     ; $69ee: $66
	ld   sp, $1111                                   ; $69ef: $31 $11 $11
	jr   c, jr_0e7_69c2                              ; $69f2: $38 $ce

	rst  $38                                         ; $69f4: $ff

jr_0e7_69f5:
	rst  $38                                         ; $69f5: $ff
	cp   $a7                                         ; $69f6: $fe $a7
	ld   h, [hl]                                     ; $69f8: $66
	ld   b, c                                        ; $69f9: $41
	ld   de, $2711                                   ; $69fa: $11 $11 $27
	cp   l                                           ; $69fd: $bd
	rst  $38                                         ; $69fe: $ff
	rst  $38                                         ; $69ff: $ff
	rst  $38                                         ; $6a00: $ff
	xor  b                                           ; $6a01: $a8
	halt                                             ; $6a02: $76
	ld   d, d                                        ; $6a03: $52
	ld   de, $1511                                   ; $6a04: $11 $11 $15
	sbc  l                                           ; $6a07: $9d
	rst  $28                                         ; $6a08: $ef
	rst  $38                                         ; $6a09: $ff
	rst  $38                                         ; $6a0a: $ff
	ret                                              ; $6a0b: $c9


	ld   [hl], a                                     ; $6a0c: $77
	ld   h, h                                        ; $6a0d: $64
	ld   de, $1311                                   ; $6a0e: $11 $11 $13

Jump_0e7_6a11:
	adc  e                                           ; $6a11: $8b
	rst  $28                                         ; $6a12: $ef
	rst  $38                                         ; $6a13: $ff
	rst  $38                                         ; $6a14: $ff
	ld   [$7587], a                                  ; $6a15: $ea $87 $75
	ld   hl, $1111                                   ; $6a18: $21 $11 $11
	ld   l, d                                        ; $6a1b: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a1c: $cf
	rst  $38                                         ; $6a1d: $ff
	rst  $38                                         ; $6a1e: $ff
	db   $fc                                         ; $6a1f: $fc
	adc  b                                           ; $6a20: $88
	halt                                             ; $6a21: $76
	ld   b, c                                        ; $6a22: $41
	ld   de, $3711                                   ; $6a23: $11 $11 $37
	cp   h                                           ; $6a26: $bc
	rst  $38                                         ; $6a27: $ff
	rst  $38                                         ; $6a28: $ff
	rst  $38                                         ; $6a29: $ff
	cp   c                                           ; $6a2a: $b9
	add  a                                           ; $6a2b: $87
	ld   h, e                                        ; $6a2c: $63
	ld   de, $1411                                   ; $6a2d: $11 $11 $14
	adc  e                                           ; $6a30: $8b
	rst  JumpTable                                         ; $6a31: $df
	rst  $38                                         ; $6a32: $ff
	rst  $38                                         ; $6a33: $ff
	jp   hl                                          ; $6a34: $e9


	sub  a                                           ; $6a35: $97
	ld   h, l                                        ; $6a36: $65
	ld   hl, $1111                                   ; $6a37: $21 $11 $11
	ld   e, e                                        ; $6a3a: $5b
	cp   [hl]                                        ; $6a3b: $be
	rst  $38                                         ; $6a3c: $ff
	rst  $38                                         ; $6a3d: $ff
	db   $fd                                         ; $6a3e: $fd
	sbc  c                                           ; $6a3f: $99
	add  a                                           ; $6a40: $87
	ld   b, c                                        ; $6a41: $41
	ld   de, $3711                                   ; $6a42: $11 $11 $37
	cp   e                                           ; $6a45: $bb
	rst  $28                                         ; $6a46: $ef
	rst  $38                                         ; $6a47: $ff
	rst  $38                                         ; $6a48: $ff
	ret                                              ; $6a49: $c9


	sub  a                                           ; $6a4a: $97
	ld   h, e                                        ; $6a4b: $63
	ld   de, $1211                                   ; $6a4c: $11 $11 $12
	ld   a, d                                        ; $6a4f: $7a
	cp   a                                           ; $6a50: $bf
	rst  $38                                         ; $6a51: $ff
	rst  $38                                         ; $6a52: $ff
	db   $eb                                         ; $6a53: $eb
	sbc  c                                           ; $6a54: $99
	halt                                             ; $6a55: $76
	ld   sp, $1111                                   ; $6a56: $31 $11 $11
	jr   c, jr_0e7_69f5                              ; $6a59: $38 $9a

	rst  $38                                         ; $6a5b: $ff
	rst  $38                                         ; $6a5c: $ff
	cp   $b9                                         ; $6a5d: $fe $b9
	sub  a                                           ; $6a5f: $97
	ld   [hl], e                                     ; $6a60: $73
	ld   de, $1311                                   ; $6a61: $11 $11 $13
	ld   a, b                                        ; $6a64: $78
	xor  [hl]                                        ; $6a65: $ae
	rst  $38                                         ; $6a66: $ff
	rst  $38                                         ; $6a67: $ff
	db   $fc                                         ; $6a68: $fc
	xor  d                                           ; $6a69: $aa
	add  a                                           ; $6a6a: $87
	ld   b, c                                        ; $6a6b: $41
	ld   de, $2611                                   ; $6a6c: $11 $11 $26
	adc  c                                           ; $6a6f: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a70: $cf
	rst  $38                                         ; $6a71: $ff
	cp   $cb                                         ; $6a72: $fe $cb
	xor  c                                           ; $6a74: $a9
	ld   [hl], l                                     ; $6a75: $75
	ld   sp, $1111                                   ; $6a76: $31 $11 $11
	ld   d, a                                        ; $6a79: $57
	sbc  d                                           ; $6a7a: $9a
	rst  $38                                         ; $6a7b: $ff
	rst  $38                                         ; $6a7c: $ff
	db   $fd                                         ; $6a7d: $fd
	call z, Call_0e7_64b9                            ; $6a7e: $cc $b9 $64
	ld   hl, $1311                                   ; $6a81: $21 $11 $13
	ld   h, a                                        ; $6a84: $67
	sbc  l                                           ; $6a85: $9d
	rst  $38                                         ; $6a86: $ff
	rst  $38                                         ; $6a87: $ff
	db   $ed                                         ; $6a88: $ed
	call z, Call_0e7_6498                            ; $6a89: $cc $98 $64
	ld   de, $1411                                   ; $6a8c: $11 $11 $14
	ld   h, [hl]                                     ; $6a8f: $66
	sbc  l                                           ; $6a90: $9d
	rst  $38                                         ; $6a91: $ff
	cp   $ed                                         ; $6a92: $fe $ed
	call c, Call_0e7_64a8                            ; $6a94: $dc $a8 $64
	ld   de, $2411                                   ; $6a97: $11 $11 $24
	ld   d, [hl]                                     ; $6a9a: $56
	sbc  h                                           ; $6a9b: $9c
	rst  $28                                         ; $6a9c: $ef
	cp   $ee                                         ; $6a9d: $fe $ee
	db   $db                                         ; $6a9f: $db
	sbc  b                                           ; $6aa0: $98
	ld   h, l                                        ; $6aa1: $65
	ld   hl, $3411                                   ; $6aa2: $21 $11 $34
	ld   d, l                                        ; $6aa5: $55
	ld   a, d                                        ; $6aa6: $7a
	xor  $fd                                         ; $6aa7: $ee $fd
	xor  $dc                                         ; $6aa9: $ee $dc
	sbc  c                                           ; $6aab: $99
	ld   [hl], a                                     ; $6aac: $77
	ld   b, c                                        ; $6aad: $41
	ld   de, $4434                                   ; $6aae: $11 $34 $44
	ld   e, c                                        ; $6ab1: $59
	cp   l                                           ; $6ab2: $bd
	call c, $dcdd                                    ; $6ab3: $dc $dd $dc
	xor  c                                           ; $6ab6: $a9
	sbc  c                                           ; $6ab7: $99
	ld   [hl], l                                     ; $6ab8: $75
	ld   [hl+], a                                    ; $6ab9: $22
	inc  h                                           ; $6aba: $24
	ld   d, h                                        ; $6abb: $54
	ld   d, l                                        ; $6abc: $55
	adc  d                                           ; $6abd: $8a
	xor  e                                           ; $6abe: $ab
	cp   h                                           ; $6abf: $bc
	call z, $aaba                                    ; $6ac0: $cc $ba $aa
	sbc  b                                           ; $6ac3: $98
	ld   h, h                                        ; $6ac4: $64
	ld   b, h                                        ; $6ac5: $44
	ld   h, [hl]                                     ; $6ac6: $66
	ld   d, l                                        ; $6ac7: $55
	ld   d, [hl]                                     ; $6ac8: $56
	adc  b                                           ; $6ac9: $88
	adc  c                                           ; $6aca: $89
	xor  d                                           ; $6acb: $aa
	xor  d                                           ; $6acc: $aa
	xor  e                                           ; $6acd: $ab
	xor  d                                           ; $6ace: $aa
	xor  c                                           ; $6acf: $a9
	ld   [hl], a                                     ; $6ad0: $77
	ld   h, [hl]                                     ; $6ad1: $66
	halt                                             ; $6ad2: $76
	ld   h, l                                        ; $6ad3: $65
	ld   d, [hl]                                     ; $6ad4: $56
	ld   h, [hl]                                     ; $6ad5: $66
	ld   [hl], a                                     ; $6ad6: $77
	adc  b                                           ; $6ad7: $88
	sbc  d                                           ; $6ad8: $9a
	xor  d                                           ; $6ad9: $aa
	xor  d                                           ; $6ada: $aa
	xor  d                                           ; $6adb: $aa
	xor  c                                           ; $6adc: $a9
	adc  b                                           ; $6add: $88
	ld   [hl], a                                     ; $6ade: $77
	halt                                             ; $6adf: $76
	ld   h, l                                        ; $6ae0: $65
	ld   h, [hl]                                     ; $6ae1: $66
	ld   h, [hl]                                     ; $6ae2: $66
	ld   h, a                                        ; $6ae3: $67
	adc  b                                           ; $6ae4: $88
	sbc  c                                           ; $6ae5: $99
	sbc  c                                           ; $6ae6: $99
	xor  d                                           ; $6ae7: $aa
	sbc  c                                           ; $6ae8: $99
	sbc  b                                           ; $6ae9: $98
	adc  c                                           ; $6aea: $89
	adc  b                                           ; $6aeb: $88
	ld   [hl], a                                     ; $6aec: $77
	ld   h, [hl]                                     ; $6aed: $66
	ld   h, [hl]                                     ; $6aee: $66
	ld   h, [hl]                                     ; $6aef: $66
	ld   [hl], a                                     ; $6af0: $77
	ld   a, b                                        ; $6af1: $78
	adc  c                                           ; $6af2: $89
	adc  c                                           ; $6af3: $89
	sbc  d                                           ; $6af4: $9a
	sbc  d                                           ; $6af5: $9a
	sbc  c                                           ; $6af6: $99
	sbc  c                                           ; $6af7: $99
	sbc  c                                           ; $6af8: $99
	adc  b                                           ; $6af9: $88
	ld   [hl], a                                     ; $6afa: $77
	halt                                             ; $6afb: $76
	ld   h, [hl]                                     ; $6afc: $66
	ld   h, [hl]                                     ; $6afd: $66
	ld   [hl], a                                     ; $6afe: $77
	ld   a, b                                        ; $6aff: $78
	sbc  b                                           ; $6b00: $98
	sbc  c                                           ; $6b01: $99
	sbc  c                                           ; $6b02: $99
	xor  d                                           ; $6b03: $aa
	sbc  c                                           ; $6b04: $99
	adc  c                                           ; $6b05: $89
	adc  b                                           ; $6b06: $88
	ld   [hl], a                                     ; $6b07: $77
	ld   [hl], a                                     ; $6b08: $77
	ld   [hl], a                                     ; $6b09: $77
	ld   [hl], a                                     ; $6b0a: $77
	ld   [hl], a                                     ; $6b0b: $77
	adc  b                                           ; $6b0c: $88
	adc  c                                           ; $6b0d: $89
	sbc  c                                           ; $6b0e: $99
	sbc  c                                           ; $6b0f: $99
	sbc  c                                           ; $6b10: $99
	sbc  c                                           ; $6b11: $99
	sbc  b                                           ; $6b12: $98
	adc  b                                           ; $6b13: $88
	adc  b                                           ; $6b14: $88
	adc  b                                           ; $6b15: $88
	adc  b                                           ; $6b16: $88
	adc  b                                           ; $6b17: $88
	adc  b                                           ; $6b18: $88
	adc  b                                           ; $6b19: $88
	ld   [hl], a                                     ; $6b1a: $77
	ld   a, b                                        ; $6b1b: $78
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	sbc  c                                           ; $6b20: $99
	sbc  c                                           ; $6b21: $99
	sbc  c                                           ; $6b22: $99
	adc  b                                           ; $6b23: $88
	adc  b                                           ; $6b24: $88
	add  a                                           ; $6b25: $87
	ld   [hl], a                                     ; $6b26: $77
	ld   [hl], a                                     ; $6b27: $77
	adc  b                                           ; $6b28: $88
	adc  b                                           ; $6b29: $88
	adc  b                                           ; $6b2a: $88
	adc  c                                           ; $6b2b: $89
	sbc  c                                           ; $6b2c: $99
	sbc  b                                           ; $6b2d: $98
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
	add  a                                           ; $6d67: $87
	adc  b                                           ; $6d68: $88
	ld   a, c                                        ; $6d69: $79
	adc  b                                           ; $6d6a: $88
	sbc  b                                           ; $6d6b: $98
	adc  b                                           ; $6d6c: $88
	adc  b                                           ; $6d6d: $88
	sub  a                                           ; $6d6e: $97
	sbc  b                                           ; $6d6f: $98
	adc  b                                           ; $6d70: $88
	adc  b                                           ; $6d71: $88
	adc  b                                           ; $6d72: $88
	adc  b                                           ; $6d73: $88
	adc  b                                           ; $6d74: $88
	adc  b                                           ; $6d75: $88
	adc  b                                           ; $6d76: $88
	adc  b                                           ; $6d77: $88
	sub  a                                           ; $6d78: $97
	sbc  b                                           ; $6d79: $98
	adc  b                                           ; $6d7a: $88
	ld   a, b                                        ; $6d7b: $78
	ld   a, b                                        ; $6d7c: $78
	adc  b                                           ; $6d7d: $88
	adc  b                                           ; $6d7e: $88
	add  a                                           ; $6d7f: $87
	adc  b                                           ; $6d80: $88
	adc  b                                           ; $6d81: $88
	adc  b                                           ; $6d82: $88
	adc  b                                           ; $6d83: $88
	ld   a, c                                        ; $6d84: $79
	adc  b                                           ; $6d85: $88
	add  a                                           ; $6d86: $87
	sub  a                                           ; $6d87: $97
	sbc  b                                           ; $6d88: $98
	adc  c                                           ; $6d89: $89
	ld   a, c                                        ; $6d8a: $79
	adc  b                                           ; $6d8b: $88
	add  a                                           ; $6d8c: $87
	adc  c                                           ; $6d8d: $89
	ld   a, c                                        ; $6d8e: $79
	sub  a                                           ; $6d8f: $97
	and  a                                           ; $6d90: $a7
	sbc  b                                           ; $6d91: $98
	ld   a, b                                        ; $6d92: $78
	ld   a, c                                        ; $6d93: $79
	adc  b                                           ; $6d94: $88
	ld   a, b                                        ; $6d95: $78
	adc  b                                           ; $6d96: $88
	adc  b                                           ; $6d97: $88
	add  a                                           ; $6d98: $87
	add  a                                           ; $6d99: $87
	sub  a                                           ; $6d9a: $97
	sbc  c                                           ; $6d9b: $99
	ld   a, c                                        ; $6d9c: $79
	ld   a, b                                        ; $6d9d: $78
	ld   a, c                                        ; $6d9e: $79
	adc  b                                           ; $6d9f: $88
	adc  b                                           ; $6da0: $88
	add  [hl]                                        ; $6da1: $86
	sub  a                                           ; $6da2: $97
	adc  b                                           ; $6da3: $88
	ld   a, c                                        ; $6da4: $79
	ld   a, b                                        ; $6da5: $78
	add  a                                           ; $6da6: $87
	add  a                                           ; $6da7: $87
	adc  b                                           ; $6da8: $88
	ld   a, c                                        ; $6da9: $79
	add  a                                           ; $6daa: $87
	and  [hl]                                        ; $6dab: $a6
	and  a                                           ; $6dac: $a7
	adc  d                                           ; $6dad: $8a
	ld   l, c                                        ; $6dae: $69
	add  a                                           ; $6daf: $87
	sub  a                                           ; $6db0: $97
	adc  b                                           ; $6db1: $88
	ld   l, c                                        ; $6db2: $69
	ld   a, b                                        ; $6db3: $78
	and  a                                           ; $6db4: $a7
	add  a                                           ; $6db5: $87
	ld   a, b                                        ; $6db6: $78
	adc  b                                           ; $6db7: $88
	add  a                                           ; $6db8: $87
	add  a                                           ; $6db9: $87
	ld   a, c                                        ; $6dba: $79
	adc  b                                           ; $6dbb: $88
	ld   a, b                                        ; $6dbc: $78
	adc  b                                           ; $6dbd: $88
	adc  c                                           ; $6dbe: $89
	ld   a, b                                        ; $6dbf: $78
	ld   a, b                                        ; $6dc0: $78
	sub  a                                           ; $6dc1: $97
	and  a                                           ; $6dc2: $a7
	add  a                                           ; $6dc3: $87
	ld   a, c                                        ; $6dc4: $79
	ld   a, b                                        ; $6dc5: $78
	sub  [hl]                                        ; $6dc6: $96
	sub  a                                           ; $6dc7: $97
	ld   a, c                                        ; $6dc8: $79
	ld   e, c                                        ; $6dc9: $59
	add  [hl]                                        ; $6dca: $86
	and  [hl]                                        ; $6dcb: $a6
	adc  b                                           ; $6dcc: $88
	ld   a, c                                        ; $6dcd: $79
	ld   [hl], a                                     ; $6dce: $77
	and  [hl]                                        ; $6dcf: $a6
	sbc  b                                           ; $6dd0: $98
	ld   a, c                                        ; $6dd1: $79
	ld   l, c                                        ; $6dd2: $69
	add  [hl]                                        ; $6dd3: $86
	and  a                                           ; $6dd4: $a7
	adc  b                                           ; $6dd5: $88
	adc  b                                           ; $6dd6: $88
	ld   a, b                                        ; $6dd7: $78
	ld   a, c                                        ; $6dd8: $79
	ld   [hl], a                                     ; $6dd9: $77
	sub  a                                           ; $6dda: $97
	add  a                                           ; $6ddb: $87
	adc  b                                           ; $6ddc: $88
	ld   a, c                                        ; $6ddd: $79
	ld   a, b                                        ; $6dde: $78
	add  a                                           ; $6ddf: $87
	sub  a                                           ; $6de0: $97
	adc  c                                           ; $6de1: $89
	ld   l, d                                        ; $6de2: $6a
	ld   l, c                                        ; $6de3: $69
	ld   a, c                                        ; $6de4: $79
	sub  h                                           ; $6de5: $94
	rst  ToBoot                                         ; $6de6: $c7
	ld   a, e                                        ; $6de7: $7b
	ld   c, d                                        ; $6de8: $4a
	sub  h                                           ; $6de9: $94
	rst  ToBoot                                         ; $6dea: $c7
	ld   l, c                                        ; $6deb: $69
	adc  c                                           ; $6dec: $89
	ld   a, c                                        ; $6ded: $79
	adc  b                                           ; $6dee: $88
	ld   l, b                                        ; $6def: $68
	and  l                                           ; $6df0: $a5
	sbc  c                                           ; $6df1: $99
	ld   l, c                                        ; $6df2: $69
	ld   a, c                                        ; $6df3: $79
	sub  l                                           ; $6df4: $95
	and  a                                           ; $6df5: $a7
	ld   l, d                                        ; $6df6: $6a
	ld   l, d                                        ; $6df7: $6a
	ld   [hl], a                                     ; $6df8: $77
	add  $8a                                         ; $6df9: $c6 $8a
	ld   a, b                                        ; $6dfb: $78
	ld   h, a                                        ; $6dfc: $67
	sub  l                                           ; $6dfd: $95
	ld   a, c                                        ; $6dfe: $79
	ld   h, [hl]                                     ; $6dff: $66
	ld   a, d                                        ; $6e00: $7a
	ld   [hl], a                                     ; $6e01: $77
	jp   z, $ba9a                                    ; $6e02: $ca $9a $ba

	adc  c                                           ; $6e05: $89
	sub  [hl]                                        ; $6e06: $96
	ld   d, [hl]                                     ; $6e07: $56
	ld   b, h                                        ; $6e08: $44
	ld   d, l                                        ; $6e09: $55
	ld   d, l                                        ; $6e0a: $55
	adc  b                                           ; $6e0b: $88
	sbc  e                                           ; $6e0c: $9b
	call z, $dccc                                    ; $6e0d: $cc $cc $dc
	sbc  h                                           ; $6e10: $9c
	add  l                                           ; $6e11: $85
	ld   d, d                                        ; $6e12: $52
	inc  de                                          ; $6e13: $13
	ld   [hl-], a                                    ; $6e14: $32
	ld   h, l                                        ; $6e15: $65
	sbc  d                                           ; $6e16: $9a
	xor  [hl]                                        ; $6e17: $ae
	xor  $ed                                         ; $6e18: $ee $ed
	call c, Call_0e7_7499                            ; $6e1a: $dc $99 $74
	ld   hl, $1212                                   ; $6e1d: $21 $12 $12
	ld   a, c                                        ; $6e20: $79
	sbc  h                                           ; $6e21: $9c
	rst  $38                                         ; $6e22: $ff
	cp   $ff                                         ; $6e23: $fe $ff
	cp   e                                           ; $6e25: $bb
	sub  [hl]                                        ; $6e26: $96
	ld   sp, $1211                                   ; $6e27: $31 $11 $12
	rla                                              ; $6e2a: $17
	sbc  h                                           ; $6e2b: $9c
	rst  $38                                         ; $6e2c: $ff
	rst  $38                                         ; $6e2d: $ff
	rst  $38                                         ; $6e2e: $ff
	db   $ec                                         ; $6e2f: $ec
	and  a                                           ; $6e30: $a7
	ld   h, c                                        ; $6e31: $61
	ld   de, $1211                                   ; $6e32: $11 $11 $12
	xor  d                                           ; $6e35: $aa
	rst  $28                                         ; $6e36: $ef
	rst  $38                                         ; $6e37: $ff
	rst  $38                                         ; $6e38: $ff
	db   $fd                                         ; $6e39: $fd
	xor  c                                           ; $6e3a: $a9
	ld   h, e                                        ; $6e3b: $63
	ld   de, $1111                                   ; $6e3c: $11 $11 $11
	ld   l, h                                        ; $6e3f: $6c
	rst  $28                                         ; $6e40: $ef
	rst  $38                                         ; $6e41: $ff
	rst  $38                                         ; $6e42: $ff
	sbc  $b8                                         ; $6e43: $de $b8
	ld   h, h                                        ; $6e45: $64
	ld   hl, $1111                                   ; $6e46: $21 $11 $11
	dec  sp                                          ; $6e49: $3b
	rst  $38                                         ; $6e4a: $ff
	rst  $38                                         ; $6e4b: $ff
	rst  $38                                         ; $6e4c: $ff
	set  1, b                                        ; $6e4d: $cb $c8
	ld   d, h                                        ; $6e4f: $54
	ld   b, c                                        ; $6e50: $41
	ld   de, $1913                                   ; $6e51: $11 $13 $19
	rst  $38                                         ; $6e54: $ff
	rst  $38                                         ; $6e55: $ff
	rst  $38                                         ; $6e56: $ff
	ret  z                                           ; $6e57: $c8

	jp   z, $3364                                    ; $6e58: $ca $64 $33

	ld   de, $3513                                   ; $6e5b: $11 $13 $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e5e: $cf
	rst  $38                                         ; $6e5f: $ff
	rst  $38                                         ; $6e60: $ff
	ld   sp, hl                                      ; $6e61: $f9
	adc  e                                           ; $6e62: $8b
	sub  l                                           ; $6e63: $95
	inc  sp                                          ; $6e64: $33
	ld   de, $5511                                   ; $6e65: $11 $11 $55
	xor  a                                           ; $6e68: $af
	rst  $38                                         ; $6e69: $ff
	rst  $38                                         ; $6e6a: $ff
	ei                                               ; $6e6b: $fb
	ld   e, b                                        ; $6e6c: $58
	sbc  b                                           ; $6e6d: $98
	ld   [hl-], a                                    ; $6e6e: $32
	ld   de, $6611                                   ; $6e6f: $11 $11 $66
	xor  [hl]                                        ; $6e72: $ae
	rst  $38                                         ; $6e73: $ff
	rst  $38                                         ; $6e74: $ff
	db   $fd                                         ; $6e75: $fd
	ld   d, [hl]                                     ; $6e76: $56
	sbc  b                                           ; $6e77: $98
	ld   h, d                                        ; $6e78: $62
	ld   de, $5611                                   ; $6e79: $11 $11 $56
	cp   a                                           ; $6e7c: $bf
	rst  $38                                         ; $6e7d: $ff
	rst  $38                                         ; $6e7e: $ff
	db   $fd                                         ; $6e7f: $fd
	halt                                             ; $6e80: $76
	ld   [hl], a                                     ; $6e81: $77
	ld   [hl], h                                     ; $6e82: $74
	ld   de, $4711                                   ; $6e83: $11 $11 $47
	sbc  a                                           ; $6e86: $9f
	rst  $38                                         ; $6e87: $ff
	rst  $38                                         ; $6e88: $ff
	xor  $75                                         ; $6e89: $ee $75
	ld   a, b                                        ; $6e8b: $78
	ld   [hl], h                                     ; $6e8c: $74
	ld   de, $2911                                   ; $6e8d: $11 $11 $29
	sbc  [hl]                                        ; $6e90: $9e
	rst  $38                                         ; $6e91: $ff
	rst  $38                                         ; $6e92: $ff
	sbc  $94                                         ; $6e93: $de $94
	ld   l, b                                        ; $6e95: $68
	add  l                                           ; $6e96: $85
	ld   de, $1911                                   ; $6e97: $11 $11 $19
	cp   [hl]                                        ; $6e9a: $be
	rst  $38                                         ; $6e9b: $ff
	rst  $38                                         ; $6e9c: $ff
	db   $db                                         ; $6e9d: $db
	sub  l                                           ; $6e9e: $95
	ld   e, b                                        ; $6e9f: $58
	add  [hl]                                        ; $6ea0: $86
	ld   hl, $2911                                   ; $6ea1: $21 $11 $29
	xor  a                                           ; $6ea4: $af
	rst  $38                                         ; $6ea5: $ff
	rst  $38                                         ; $6ea6: $ff
	res  0, h                                        ; $6ea7: $cb $84
	ld   e, b                                        ; $6ea9: $58
	sub  [hl]                                        ; $6eaa: $96
	ld   de, $3911                                   ; $6eab: $11 $11 $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eae: $cf
	rst  $38                                         ; $6eaf: $ff
	cp   $ba                                         ; $6eb0: $fe $ba
	ld   [hl], l                                     ; $6eb2: $75
	ld   l, c                                        ; $6eb3: $69
	add  [hl]                                        ; $6eb4: $86
	ld   de, $4a11                                   ; $6eb5: $11 $11 $4a
	rst  JumpTable                                         ; $6eb8: $df
	rst  $38                                         ; $6eb9: $ff
	db   $fd                                         ; $6eba: $fd
	xor  c                                           ; $6ebb: $a9
	ld   h, l                                        ; $6ebc: $65
	ld   a, c                                        ; $6ebd: $79
	sub  l                                           ; $6ebe: $95
	ld   de, $7c11                                   ; $6ebf: $11 $11 $7c
	rst  JumpTable                                         ; $6ec2: $df
	rst  $38                                         ; $6ec3: $ff
	db   $fc                                         ; $6ec4: $fc
	adc  b                                           ; $6ec5: $88
	ld   h, [hl]                                     ; $6ec6: $66
	ld   a, b                                        ; $6ec7: $78
	add  h                                           ; $6ec8: $84
	ld   de, $ae11                                   ; $6ec9: $11 $11 $ae
	rst  $28                                         ; $6ecc: $ef
	rst  $38                                         ; $6ecd: $ff
	ld   a, [$6776]                                  ; $6ece: $fa $76 $67
	sbc  b                                           ; $6ed1: $98
	ld   [hl], d                                     ; $6ed2: $72
	ld   de, $df12                                   ; $6ed3: $11 $12 $df
	rst  $38                                         ; $6ed6: $ff
	rst  $38                                         ; $6ed7: $ff
	ld   sp, hl                                      ; $6ed8: $f9
	ld   d, [hl]                                     ; $6ed9: $56
	ld   a, c                                        ; $6eda: $79
	sub  a                                           ; $6edb: $97
	ld   d, c                                        ; $6edc: $51
	ld   de, $ff17                                   ; $6edd: $11 $17 $ff
	rst  $38                                         ; $6ee0: $ff
	rst  $38                                         ; $6ee1: $ff
	rst  $10                                         ; $6ee2: $d7
	ld   d, [hl]                                     ; $6ee3: $56
	adc  e                                           ; $6ee4: $8b
	sub  l                                           ; $6ee5: $95
	ld   hl, $2d11                                   ; $6ee6: $21 $11 $2d
	rst  $38                                         ; $6ee9: $ff
	rst  $38                                         ; $6eea: $ff
	rst  $38                                         ; $6eeb: $ff
	sub  l                                           ; $6eec: $95
	ld   b, a                                        ; $6eed: $47
	cp   d                                           ; $6eee: $ba
	ld   [hl], e                                     ; $6eef: $73
	ld   de, $af11                                   ; $6ef0: $11 $11 $af
	rst  $38                                         ; $6ef3: $ff
	rst  $38                                         ; $6ef4: $ff
	ei                                               ; $6ef5: $fb
	ld   h, l                                        ; $6ef6: $65
	ld   l, d                                        ; $6ef7: $6a
	ret  z                                           ; $6ef8: $c8

	ld   d, c                                        ; $6ef9: $51
	ld   de, $ff17                                   ; $6efa: $11 $17 $ff
	rst  $38                                         ; $6efd: $ff
	rst  $38                                         ; $6efe: $ff
	rst  ToBoot                                         ; $6eff: $c7
	ld   d, l                                        ; $6f00: $55
	adc  e                                           ; $6f01: $8b
	sub  [hl]                                        ; $6f02: $96
	ld   de, $6f11                                   ; $6f03: $11 $11 $6f
	rst  $38                                         ; $6f06: $ff
	rst  $38                                         ; $6f07: $ff
	db   $fc                                         ; $6f08: $fc
	add  l                                           ; $6f09: $85
	ld   e, c                                        ; $6f0a: $59
	db   $db                                         ; $6f0b: $db
	ld   h, c                                        ; $6f0c: $61
	ld   de, $ef13                                   ; $6f0d: $11 $13 $ef
	rst  $38                                         ; $6f10: $ff
	rst  $38                                         ; $6f11: $ff
	ret  c                                           ; $6f12: $d8

	ld   d, l                                        ; $6f13: $55
	adc  e                                           ; $6f14: $8b
	rst  ToBoot                                         ; $6f15: $c7
	ld   de, $4f11                                   ; $6f16: $11 $11 $4f
	rst  $38                                         ; $6f19: $ff
	cp   $fc                                         ; $6f1a: $fe $fc
	ld   [hl], l                                     ; $6f1c: $75
	ld   e, c                                        ; $6f1d: $59
	db   $ec                                         ; $6f1e: $ec
	ld   h, c                                        ; $6f1f: $61
	ld   de, $ff15                                   ; $6f20: $11 $15 $ff
	rst  $38                                         ; $6f23: $ff
	rst  $38                                         ; $6f24: $ff
	or   a                                           ; $6f25: $b7
	ld   d, [hl]                                     ; $6f26: $56
	sbc  l                                           ; $6f27: $9d
	or   [hl]                                        ; $6f28: $b6
	ld   de, $8f11                                   ; $6f29: $11 $11 $8f
	rst  $38                                         ; $6f2c: $ff
	cp   $fb                                         ; $6f2d: $fe $fb
	ld   h, l                                        ; $6f2f: $65

jr_0e7_6f30:
	ld   e, d                                        ; $6f30: $5a
	db   $eb                                         ; $6f31: $eb
	ld   b, c                                        ; $6f32: $41
	ld   de, $ff1d                                   ; $6f33: $11 $1d $ff
	cp   $fd                                         ; $6f36: $fe $fd
	add  l                                           ; $6f38: $85
	ld   b, l                                        ; $6f39: $45
	call $1192                                       ; $6f3a: $cd $92 $11
	dec  d                                           ; $6f3d: $15
	rst  $38                                         ; $6f3e: $ff
	rst  $38                                         ; $6f3f: $ff
	xor  $c7                                         ; $6f40: $ee $c7
	ld   d, h                                        ; $6f42: $54
	adc  [hl]                                        ; $6f43: $8e
	add  $11                                         ; $6f44: $c6 $11
	ld   de, $ffdf                                   ; $6f46: $11 $df $ff
	rst  $28                                         ; $6f49: $ef
	ld   [$5b64], a                                  ; $6f4a: $ea $64 $5b
	ret  c                                           ; $6f4d: $d8

	ld   de, $9f11                                   ; $6f4e: $11 $11 $9f
	rst  $38                                         ; $6f51: $ff
	cp   $eb                                         ; $6f52: $fe $eb
	ld   [hl], l                                     ; $6f54: $75
	jr   c, jr_0e7_6f30                              ; $6f55: $38 $d9

	ld   sp, $4f11                                   ; $6f57: $31 $11 $4f
	rst  $38                                         ; $6f5a: $ff

jr_0e7_6f5b:
	db   $fd                                         ; $6f5b: $fd
	db   $fd                                         ; $6f5c: $fd
	add  [hl]                                        ; $6f5d: $86
	ld   [hl], $cb                                   ; $6f5e: $36 $cb
	ld   b, c                                        ; $6f60: $41
	ld   de, $ff1f                                   ; $6f61: $11 $1f $ff
	db   $fd                                         ; $6f64: $fd
	db   $ed                                         ; $6f65: $ed
	sub  [hl]                                        ; $6f66: $96
	ld   b, l                                        ; $6f67: $45
	cp   e                                           ; $6f68: $bb
	ld   d, c                                        ; $6f69: $51
	ld   de, $ff1f                                   ; $6f6a: $11 $1f $ff
	db   $fd                                         ; $6f6d: $fd
	rst  $28                                         ; $6f6e: $ef
	sub  [hl]                                        ; $6f6f: $96
	ld   b, h                                        ; $6f70: $44
	bit  2, c                                        ; $6f71: $cb $51
	ld   de, $ff1f                                   ; $6f73: $11 $1f $ff
	db   $fc                                         ; $6f76: $fc
	rst  $28                                         ; $6f77: $ef
	and  [hl]                                        ; $6f78: $a6
	inc  [hl]                                        ; $6f79: $34
	cp   h                                           ; $6f7a: $bc
	ld   b, c                                        ; $6f7b: $41
	ld   de, $ff2f                                   ; $6f7c: $11 $2f $ff
	db   $fc                                         ; $6f7f: $fc
	cp   $96                                         ; $6f80: $fe $96
	dec  [hl]                                        ; $6f82: $35
	jp   c, $1131                                    ; $6f83: $da $31 $11

	ld   l, a                                        ; $6f86: $6f
	rst  $38                                         ; $6f87: $ff
	db   $fc                                         ; $6f88: $fc
	cp   $85                                         ; $6f89: $fe $85
	scf                                              ; $6f8b: $37
	reti                                             ; $6f8c: $d9


	ld   de, $df11                                   ; $6f8d: $11 $11 $df
	rst  $38                                         ; $6f90: $ff
	db   $dd                                         ; $6f91: $dd
	db   $fd                                         ; $6f92: $fd
	add  h                                           ; $6f93: $84
	jr   z, jr_0e7_6f5b                              ; $6f94: $28 $c5

	ld   de, rAUD1LEN                                   ; $6f96: $11 $11 $ff
	rst  $38                                         ; $6f99: $ff
	cp   a                                           ; $6f9a: $bf
	db   $fc                                         ; $6f9b: $fc
	ld   [hl], e                                     ; $6f9c: $73
	ld   c, e                                        ; $6f9d: $4b
	and  c                                           ; $6f9e: $a1
	ld   de, $ff1b                                   ; $6f9f: $11 $1b $ff
	db   $fd                                         ; $6fa2: $fd
	rst  JumpTable                                         ; $6fa3: $df
	ld   sp, hl                                      ; $6fa4: $f9
	ld   d, d                                        ; $6fa5: $52
	ld   a, h                                        ; $6fa6: $7c
	ld   d, c                                        ; $6fa7: $51
	ld   de, $ff1f                                   ; $6fa8: $11 $1f $ff
	ld   a, [$b7ff]                                  ; $6fab: $fa $ff $b7
	ld   b, h                                        ; $6fae: $44
	cp   b                                           ; $6faf: $b8
	ld   de, rAUD1LEN                                   ; $6fb0: $11 $11 $ff
	rst  $38                                         ; $6fb3: $ff
	cp   [hl]                                        ; $6fb4: $be
	rst  $38                                         ; $6fb5: $ff
	add  l                                           ; $6fb6: $85
	add  hl, sp                                      ; $6fb7: $39
	or   d                                           ; $6fb8: $b2
	ld   de, $ff19                                   ; $6fb9: $11 $19 $ff
	cp   $bf                                         ; $6fbc: $fe $bf
	ld   sp, hl                                      ; $6fbe: $f9
	ld   h, e                                        ; $6fbf: $63
	ld   l, e                                        ; $6fc0: $6b
	ld   b, c                                        ; $6fc1: $41
	ld   de, $ff3f                                   ; $6fc2: $11 $3f $ff
	db   $fc                                         ; $6fc5: $fc
	rst  $38                                         ; $6fc6: $ff
	or   a                                           ; $6fc7: $b7
	ld   b, l                                        ; $6fc8: $45
	or   l                                           ; $6fc9: $b5
	ld   de, rAUD1LEN                                   ; $6fca: $11 $11 $ff
	rst  $38                                         ; $6fcd: $ff
	cp   a                                           ; $6fce: $bf
	ei                                               ; $6fcf: $fb
	ld   [hl], h                                     ; $6fd0: $74
	ld   e, e                                        ; $6fd1: $5b
	ld   h, c                                        ; $6fd2: $61
	ld   de, $ff1f                                   ; $6fd3: $11 $1f $ff
	ei                                               ; $6fd6: $fb
	rst  $38                                         ; $6fd7: $ff
	or   a                                           ; $6fd8: $b7
	ld   d, l                                        ; $6fd9: $55
	or   [hl]                                        ; $6fda: $b6
	ld   de, rAUD1LEN                                   ; $6fdb: $11 $11 $ff
	rst  $38                                         ; $6fde: $ff
	cp   a                                           ; $6fdf: $bf
	ei                                               ; $6fe0: $fb
	ld   h, l                                        ; $6fe1: $65
	ld   e, d                                        ; $6fe2: $5a
	ld   d, c                                        ; $6fe3: $51
	ld   de, $ff3f                                   ; $6fe4: $11 $3f $ff
	db   $ec                                         ; $6fe7: $ec
	rst  $38                                         ; $6fe8: $ff
	or   a                                           ; $6fe9: $b7
	ld   d, [hl]                                     ; $6fea: $56
	and  e                                           ; $6feb: $a3
	ld   de, $ff17                                   ; $6fec: $11 $17 $ff
	db   $fd                                         ; $6fef: $fd
	rst  JumpTable                                         ; $6ff0: $df
	ld   a, [$7975]                                  ; $6ff1: $fa $75 $79
	ld   de, $bf11                                   ; $6ff4: $11 $11 $bf
	rst  $38                                         ; $6ff7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ff8: $cf
	rst  $38                                         ; $6ff9: $ff
	sub  [hl]                                        ; $6ffa: $96
	ld   e, b                                        ; $6ffb: $58
	sub  c                                           ; $6ffc: $91
	ld   de, $ff1f                                   ; $6ffd: $11 $1f $ff
	db   $fc                                         ; $7000: $fc
	rst  $38                                         ; $7001: $ff
	rst  $20                                         ; $7002: $e7
	ld   h, l                                        ; $7003: $65
	xor  b                                           ; $7004: $a8
	ld   de, rAUD1LEN                                   ; $7005: $11 $11 $ff
	rst  $38                                         ; $7008: $ff
	rst  JumpTable                                         ; $7009: $df
	db   $fd                                         ; $700a: $fd
	ld   [hl], a                                     ; $700b: $77
	ld   l, d                                        ; $700c: $6a
	ld   d, c                                        ; $700d: $51
	ld   de, $fe4f                                   ; $700e: $11 $4f $fe
	db   $ed                                         ; $7011: $ed
	rst  $38                                         ; $7012: $ff
	or   a                                           ; $7013: $b7
	ld   [hl], a                                     ; $7014: $77
	and  d                                           ; $7015: $a2
	ld   de, $fd17                                   ; $7016: $11 $17 $fd
	db   $ed                                         ; $7019: $ed
	rst  $28                                         ; $701a: $ef
	ld   a, [$7897]                                  ; $701b: $fa $97 $78
	ld   de, $9f11                                   ; $701e: $11 $11 $9f
	cp   l                                           ; $7021: $bd
	rst  JumpTable                                         ; $7022: $df
	rst  $38                                         ; $7023: $ff
	sbc  d                                           ; $7024: $9a
	sbc  b                                           ; $7025: $98
	add  c                                           ; $7026: $81
	ld   de, $c818                                   ; $7027: $11 $18 $c8
	cp   e                                           ; $702a: $bb
	rst  JumpTable                                         ; $702b: $df
	ld   a, [$78aa]                                  ; $702c: $fa $aa $78
	ld   b, c                                        ; $702f: $41
	ld   de, $875b                                   ; $7030: $11 $5b $87
	cp   d                                           ; $7033: $ba
	rst  $28                                         ; $7034: $ef
	cp   c                                           ; $7035: $b9
	and  a                                           ; $7036: $a7
	ld   [hl], a                                     ; $7037: $77
	ld   b, h                                        ; $7038: $44
	ld   b, h                                        ; $7039: $44
	adc  d                                           ; $703a: $8a
	ld   l, b                                        ; $703b: $68
	adc  b                                           ; $703c: $88
	res  3, b                                        ; $703d: $cb $98
	add  a                                           ; $703f: $87
	add  a                                           ; $7040: $87
	ld   l, b                                        ; $7041: $68
	halt                                             ; $7042: $76
	sbc  c                                           ; $7043: $99
	ld   a, b                                        ; $7044: $78
	adc  b                                           ; $7045: $88
	adc  c                                           ; $7046: $89
	add  a                                           ; $7047: $87
	ld   [hl], a                                     ; $7048: $77
	adc  b                                           ; $7049: $88
	sbc  c                                           ; $704a: $99
	adc  c                                           ; $704b: $89
	adc  c                                           ; $704c: $89
	adc  b                                           ; $704d: $88
	ld   [hl], a                                     ; $704e: $77
	ld   [hl], a                                     ; $704f: $77
	ld   [hl], a                                     ; $7050: $77
	ld   [hl], a                                     ; $7051: $77
	adc  c                                           ; $7052: $89
	adc  b                                           ; $7053: $88
	sbc  c                                           ; $7054: $99
	sbc  c                                           ; $7055: $99
	sbc  c                                           ; $7056: $99
	add  a                                           ; $7057: $87
	ld   [hl], a                                     ; $7058: $77
	ld   [hl], a                                     ; $7059: $77
	ld   [hl], a                                     ; $705a: $77
	adc  b                                           ; $705b: $88
	sbc  c                                           ; $705c: $99
	adc  c                                           ; $705d: $89
	sbc  c                                           ; $705e: $99
	sbc  c                                           ; $705f: $99
	adc  b                                           ; $7060: $88
	ld   [hl], a                                     ; $7061: $77
	ld   [hl], a                                     ; $7062: $77
	ld   [hl], a                                     ; $7063: $77
	adc  b                                           ; $7064: $88
	adc  b                                           ; $7065: $88
	sbc  b                                           ; $7066: $98
	sbc  b                                           ; $7067: $98
	adc  c                                           ; $7068: $89
	adc  b                                           ; $7069: $88
	add  a                                           ; $706a: $87
	ld   [hl], a                                     ; $706b: $77
	ld   [hl], a                                     ; $706c: $77
	add  a                                           ; $706d: $87
	adc  b                                           ; $706e: $88
	sbc  b                                           ; $706f: $98
	sbc  c                                           ; $7070: $99
	sbc  c                                           ; $7071: $99
	adc  b                                           ; $7072: $88
	add  a                                           ; $7073: $87
	ld   [hl], a                                     ; $7074: $77
	ld   [hl], a                                     ; $7075: $77
	ld   [hl], a                                     ; $7076: $77
	adc  b                                           ; $7077: $88
	sbc  c                                           ; $7078: $99
	adc  c                                           ; $7079: $89
	sbc  c                                           ; $707a: $99
	sbc  b                                           ; $707b: $98
	adc  b                                           ; $707c: $88
	adc  b                                           ; $707d: $88
	add  a                                           ; $707e: $87
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
	adc  c                                           ; $72d8: $89
	sbc  b                                           ; $72d9: $98
	adc  b                                           ; $72da: $88
	ld   [hl], a                                     ; $72db: $77
	ld   h, [hl]                                     ; $72dc: $66
	ld   a, c                                        ; $72dd: $79
	adc  b                                           ; $72de: $88
	ld   a, c                                        ; $72df: $79
	xor  b                                           ; $72e0: $a8
	sbc  c                                           ; $72e1: $99
	xor  d                                           ; $72e2: $aa
	sbc  c                                           ; $72e3: $99
	halt                                             ; $72e4: $76
	ld   b, h                                        ; $72e5: $44
	sub  a                                           ; $72e6: $97
	adc  c                                           ; $72e7: $89
	ld   l, c                                        ; $72e8: $69
	cp   d                                           ; $72e9: $ba
	xor  c                                           ; $72ea: $a9
	xor  e                                           ; $72eb: $ab
	cp   b                                           ; $72ec: $b8
	ld   h, [hl]                                     ; $72ed: $66
	ld   de, $7a78                                   ; $72ee: $11 $78 $7a
	ld   l, d                                        ; $72f1: $6a
	db   $db                                         ; $72f2: $db
	jp   z, $ba89                                    ; $72f3: $ca $89 $ba

	ld   h, [hl]                                     ; $72f6: $66
	ld   de, $7918                                   ; $72f7: $11 $18 $79
	rst  ToBoot                                         ; $72fa: $c7
	rst  $28                                         ; $72fb: $ef
	db   $ec                                         ; $72fc: $ec
	sbc  c                                           ; $72fd: $99
	sbc  h                                           ; $72fe: $9c
	ld   h, [hl]                                     ; $72ff: $66
	ld   hl, $b716                                   ; $7300: $21 $16 $b7
	rst  $30                                         ; $7303: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7304: $cf
	cp   $97                                         ; $7305: $fe $97
	adc  [hl]                                        ; $7307: $8e
	ld   h, [hl]                                     ; $7308: $66
	ld   hl, $e713                                   ; $7309: $21 $13 $e7
	ld   a, [$ffbf]                                  ; $730c: $fa $bf $ff

jr_0e7_730f:
	and  [hl]                                        ; $730f: $a6
	ld   e, [hl]                                     ; $7310: $5e
	add  l                                           ; $7311: $85
	ld   hl, $f911                                   ; $7312: $21 $11 $f9
	db   $fd                                         ; $7315: $fd
	sbc  a                                           ; $7316: $9f
	rst  $38                                         ; $7317: $ff
	or   a                                           ; $7318: $b7
	ld   a, $b5                                      ; $7319: $3e $b5
	ld   sp, $fb11                                   ; $731b: $31 $11 $fb
	rst  $38                                         ; $731e: $ff
	ld   a, a                                        ; $731f: $7f
	rst  $38                                         ; $7320: $ff
	ret  z                                           ; $7321: $c8

	ld   a, [de]                                     ; $7322: $1a
	sub  $51                                         ; $7323: $d6 $51
	ld   de, $cfbe                                   ; $7325: $11 $be $cf
	ld   a, [hl]                                     ; $7328: $7e
	rst  $38                                         ; $7329: $ff
	jp   c, $f725                                    ; $732a: $da $25 $f7

	ld   h, c                                        ; $732d: $61
	ld   de, $cf3f                                   ; $732e: $11 $3f $cf
	jp   z, $dbff                                    ; $7331: $ca $ff $db

	ld   d, c                                        ; $7334: $51
	jp   c, $1163                                    ; $7335: $da $63 $11

	dec  e                                           ; $7338: $1d
	rst  JumpTable                                         ; $7339: $df
	ld   sp, hl                                      ; $733a: $f9
	rst  $28                                         ; $733b: $ef
	db   $fc                                         ; $733c: $fc
	and  c                                           ; $733d: $a1
	ld   a, l                                        ; $733e: $7d
	halt                                             ; $733f: $76
	ld   de, rAUD1LOW                                   ; $7340: $11 $13 $ff
	db   $fc                                         ; $7343: $fc
	sbc  a                                           ; $7344: $9f
	db   $fd                                         ; $7345: $fd
	push bc                                          ; $7346: $c5
	dec  de                                          ; $7347: $1b
	and  a                                           ; $7348: $a7
	ld   b, c                                        ; $7349: $41
	ld   de, $ffcf                                   ; $734a: $11 $cf $ff
	adc  h                                           ; $734d: $8c
	rst  $38                                         ; $734e: $ff
	jp   c, $c815                                    ; $734f: $da $15 $c8

	ld   [hl], c                                     ; $7352: $71
	ld   de, $ff3f                                   ; $7353: $11 $3f $ff
	ret  z                                           ; $7356: $c8

	rst  $38                                         ; $7357: $ff
	db   $ed                                         ; $7358: $ed
	ld   b, c                                        ; $7359: $41
	cp   c                                           ; $735a: $b9
	add  l                                           ; $735b: $85
	ld   de, $ff1d                                   ; $735c: $11 $1d $ff
	rst  $30                                         ; $735f: $f7
	cp   a                                           ; $7360: $bf
	cp   $b1                                         ; $7361: $fe $b1
	ld   e, e                                        ; $7363: $5b
	adc  b                                           ; $7364: $88
	ld   de, $ff16                                   ; $7365: $11 $16 $ff
	ld   a, [$fe8f]                                  ; $7368: $fa $8f $fe
	ldh  [c], a                                      ; $736b: $e2
	dec  de                                          ; $736c: $1b
	sbc  b                                           ; $736d: $98
	ld   sp, rAUD1LEN                                   ; $736e: $31 $11 $ff
	cp   $6d                                         ; $7371: $fe $6d
	rst  $38                                         ; $7373: $ff
	rst  $30                                         ; $7374: $f7
	jr   jr_0e7_730f                                 ; $7375: $18 $98

	ld   h, c                                        ; $7377: $61
	ld   de, $ffef                                   ; $7378: $11 $ef $ff
	ld   l, e                                        ; $737b: $6b
	rst  $38                                         ; $737c: $ff
	ld   a, [$9816]                                  ; $737d: $fa $16 $98
	ld   [hl], c                                     ; $7380: $71
	ld   de, $ffdf                                   ; $7381: $11 $df $ff
	ld   l, c                                        ; $7384: $69
	rst  $38                                         ; $7385: $ff
	db   $ec                                         ; $7386: $ec
	inc  d                                           ; $7387: $14
	sub  a                                           ; $7388: $97
	add  c                                           ; $7389: $81
	ld   de, $ffcf                                   ; $738a: $11 $cf $ff
	ld   l, d                                        ; $738d: $6a
	rst  $38                                         ; $738e: $ff
	db   $fc                                         ; $738f: $fc
	inc  d                                           ; $7390: $14
	sub  a                                           ; $7391: $97
	ld   [hl], c                                     ; $7392: $71
	ld   de, $ffdf                                   ; $7393: $11 $df $ff
	ld   e, e                                        ; $7396: $5b
	rst  $38                                         ; $7397: $ff
	ld   [$8715], a                                  ; $7398: $ea $15 $87
	ld   h, c                                        ; $739b: $61
	ld   de, $ffff                                   ; $739c: $11 $ff $ff
	ld   e, l                                        ; $739f: $5d
	rst  $38                                         ; $73a0: $ff
	or   $18                                         ; $73a1: $f6 $18
	halt                                             ; $73a3: $76
	ld   sp, rAUD1HIGH                                   ; $73a4: $31 $14 $ff
	ld   sp, hl                                      ; $73a7: $f9
	ld   a, a                                        ; $73a8: $7f
	rst  $38                                         ; $73a9: $ff
	pop  bc                                          ; $73aa: $c1
	ld   a, [hl+]                                    ; $73ab: $2a
	ld   d, l                                        ; $73ac: $55
	ld   de, $ff1f                                   ; $73ad: $11 $1f $ff
	push af                                          ; $73b0: $f5
	rst  $28                                         ; $73b1: $ef
	cp   $51                                         ; $73b2: $fe $51
	add  a                                           ; $73b4: $87
	ld   sp, $bf11                                   ; $73b5: $31 $11 $bf
	rst  $38                                         ; $73b8: $ff
	ld   a, e                                        ; $73b9: $7b
	rst  $38                                         ; $73ba: $ff
	rst  $20                                         ; $73bb: $e7
	dec  d                                           ; $73bc: $15
	sub  d                                           ; $73bd: $92
	ld   de, $ff1a                                   ; $73be: $11 $1a $ff
	ld   sp, hl                                      ; $73c1: $f9
	cp   a                                           ; $73c2: $bf
	db   $fc                                         ; $73c3: $fc
	add  c                                           ; $73c4: $81
	ld   e, d                                        ; $73c5: $5a
	ld   de, $af11                                   ; $73c6: $11 $11 $af
	rst  $38                                         ; $73c9: $ff
	cp   e                                           ; $73ca: $bb
	rst  $38                                         ; $73cb: $ff
	or   a                                           ; $73cc: $b7
	ld   h, $91                                      ; $73cd: $26 $91
	ld   de, $ff1e                                   ; $73cf: $11 $1e $ff
	ld   a, [$f9ff]                                  ; $73d2: $fa $ff $f9
	ld   h, d                                        ; $73d5: $62
	adc  b                                           ; $73d6: $88
	ld   de, rAUD1LEN                                   ; $73d7: $11 $11 $ff
	cp   $af                                         ; $73da: $fe $af
	db   $fd                                         ; $73dc: $fd
	ld   [hl], h                                     ; $73dd: $74
	ld   c, d                                        ; $73de: $4a
	ld   d, c                                        ; $73df: $51
	ld   de, $ff3f                                   ; $73e0: $11 $3f $ff
	call c, $b6ff                                    ; $73e3: $dc $ff $b6
	ld   b, [hl]                                     ; $73e6: $46
	or   c                                           ; $73e7: $b1
	ld   de, $ff18                                   ; $73e8: $11 $18 $ff
	cp   $ff                                         ; $73eb: $fe $ff
	ld   hl, sp+$74                                  ; $73ed: $f8 $74
	ld   a, c                                        ; $73ef: $79
	ld   de, $cf11                                   ; $73f0: $11 $11 $cf
	rst  $38                                         ; $73f3: $ff
	rst  $28                                         ; $73f4: $ef
	rst  $38                                         ; $73f5: $ff
	ld   [hl], a                                     ; $73f6: $77
	ld   e, b                                        ; $73f7: $58
	ld   h, c                                        ; $73f8: $61
	ld   de, $ff1f                                   ; $73f9: $11 $1f $ff
	rst  $38                                         ; $73fc: $ff
	rst  $38                                         ; $73fd: $ff
	rst  $10                                         ; $73fe: $d7
	sub  l                                           ; $73ff: $95
	add  h                                           ; $7400: $84
	ld   de, rAUD1LEN                                   ; $7401: $11 $11 $ff
	rst  $38                                         ; $7404: $ff
	rst  $38                                         ; $7405: $ff
	ei                                               ; $7406: $fb
	sbc  c                                           ; $7407: $99
	ld   e, b                                        ; $7408: $58
	ld   de, $1f11                                   ; $7409: $11 $11 $1f
	rst  $38                                         ; $740c: $ff
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	cp   d                                           ; $740f: $ba
	add  l                                           ; $7410: $85
	ld   [hl], c                                     ; $7411: $71
	ld   de, $fd11                                   ; $7412: $11 $11 $fd
	rst  $38                                         ; $7415: $ff
	rst  $38                                         ; $7416: $ff
	ld   a, [$57b9]                                  ; $7417: $fa $b9 $57
	ld   de, $1e11                                   ; $741a: $11 $11 $1e
	cp   a                                           ; $741d: $bf
	rst  $38                                         ; $741e: $ff
	rst  $38                                         ; $741f: $ff
	cp   l                                           ; $7420: $bd
	and  [hl]                                        ; $7421: $a6
	ld   h, c                                        ; $7422: $61
	ld   de, $bb11                                   ; $7423: $11 $11 $bb
	rst  $38                                         ; $7426: $ff
	rst  $38                                         ; $7427: $ff
	db   $fd                                         ; $7428: $fd
	ld   [$1167], a                                  ; $7429: $ea $67 $11
	ld   de, $ad17                                   ; $742c: $11 $17 $ad
	rst  $38                                         ; $742f: $ff
	rst  $38                                         ; $7430: $ff
	rst  $38                                         ; $7431: $ff
	rst  ToBoot                                         ; $7432: $c7
	ld   [hl], c                                     ; $7433: $71
	ld   de, $2911                                   ; $7434: $11 $11 $29
	xor  a                                           ; $7437: $af
	rst  $38                                         ; $7438: $ff
	rst  $38                                         ; $7439: $ff
	rst  $38                                         ; $743a: $ff
	sub  a                                           ; $743b: $97
	ld   sp, $1111                                   ; $743c: $31 $11 $11
	ld   [hl], a                                     ; $743f: $77
	sbc  $ff                                         ; $7440: $de $ff
	rst  $38                                         ; $7442: $ff
	db   $fc                                         ; $7443: $fc
	sub  [hl]                                        ; $7444: $96
	ld   de, $1111                                   ; $7445: $11 $11 $11
	ld   h, a                                        ; $7448: $67
	adc  $ff                                         ; $7449: $ce $ff
	rst  $38                                         ; $744b: $ff
	db   $fc                                         ; $744c: $fc
	add  e                                           ; $744d: $83
	ld   [de], a                                     ; $744e: $12
	ld   de, $5713                                   ; $744f: $11 $13 $57
	cp   h                                           ; $7452: $bc
	rst  $38                                         ; $7453: $ff
	rst  $38                                         ; $7454: $ff
	db   $fc                                         ; $7455: $fc
	ld   [hl], h                                     ; $7456: $74
	ld   b, l                                        ; $7457: $45
	ld   de, $4514                                   ; $7458: $11 $14 $45
	adc  c                                           ; $745b: $89
	rst  $38                                         ; $745c: $ff
	rst  $28                                         ; $745d: $ef
	db   $fc                                         ; $745e: $fc
	ld   [hl], l                                     ; $745f: $75
	ld   h, a                                        ; $7460: $67
	ld   b, c                                        ; $7461: $41
	inc  d                                           ; $7462: $14
	ld   h, h                                        ; $7463: $64
	ld   e, b                                        ; $7464: $58
	cp   l                                           ; $7465: $bd
	call c, $86ec                                    ; $7466: $dc $ec $86
	ld   a, c                                        ; $7469: $79
	halt                                             ; $746a: $76
	ld   d, [hl]                                     ; $746b: $56
	ld   [hl], l                                     ; $746c: $75
	ld   d, a                                        ; $746d: $57
	ld   a, c                                        ; $746e: $79
	sbc  c                                           ; $746f: $99
	cp   d                                           ; $7470: $ba
	ld   [hl], a                                     ; $7471: $77
	adc  c                                           ; $7472: $89
	sbc  c                                           ; $7473: $99
	adc  c                                           ; $7474: $89
	sbc  c                                           ; $7475: $99
	ld   [hl], a                                     ; $7476: $77
	ld   [hl], a                                     ; $7477: $77
	ld   [hl], a                                     ; $7478: $77
	ld   [hl], a                                     ; $7479: $77
	halt                                             ; $747a: $76
	ld   a, b                                        ; $747b: $78
	adc  c                                           ; $747c: $89
	xor  d                                           ; $747d: $aa
	xor  c                                           ; $747e: $a9
	xor  c                                           ; $747f: $a9
	sbc  b                                           ; $7480: $98
	ld   [hl], a                                     ; $7481: $77
	ld   h, l                                        ; $7482: $65
	ld   h, [hl]                                     ; $7483: $66
	ld   h, [hl]                                     ; $7484: $66
	ld   a, b                                        ; $7485: $78
	sbc  d                                           ; $7486: $9a
	sbc  d                                           ; $7487: $9a
	sbc  d                                           ; $7488: $9a
	cp   c                                           ; $7489: $b9
	sbc  b                                           ; $748a: $98
	halt                                             ; $748b: $76
	ld   h, l                                        ; $748c: $65
	ld   h, l                                        ; $748d: $65
	ld   h, a                                        ; $748e: $67
	ld   a, b                                        ; $748f: $78
	adc  c                                           ; $7490: $89
	xor  e                                           ; $7491: $ab
	cp   e                                           ; $7492: $bb
	xor  c                                           ; $7493: $a9
	adc  c                                           ; $7494: $89
	ld   [hl], a                                     ; $7495: $77
	ld   h, [hl]                                     ; $7496: $66
	ld   h, [hl]                                     ; $7497: $66
	ld   h, [hl]                                     ; $7498: $66

Call_0e7_7499:
	ld   [hl], a                                     ; $7499: $77
	sbc  c                                           ; $749a: $99
	sbc  d                                           ; $749b: $9a
	xor  d                                           ; $749c: $aa
	xor  d                                           ; $749d: $aa
	sbc  c                                           ; $749e: $99
	ld   [hl], a                                     ; $749f: $77
	ld   h, [hl]                                     ; $74a0: $66
	ld   h, [hl]                                     ; $74a1: $66
	ld   h, [hl]                                     ; $74a2: $66
	ld   a, b                                        ; $74a3: $78
	adc  c                                           ; $74a4: $89
	sbc  c                                           ; $74a5: $99
	xor  d                                           ; $74a6: $aa
	xor  d                                           ; $74a7: $aa
	sbc  b                                           ; $74a8: $98
	ld   [hl], a                                     ; $74a9: $77
	ld   h, [hl]                                     ; $74aa: $66
	ld   h, [hl]                                     ; $74ab: $66
	ld   h, a                                        ; $74ac: $67
	ld   [hl], a                                     ; $74ad: $77
	adc  c                                           ; $74ae: $89
	sbc  d                                           ; $74af: $9a
	sbc  d                                           ; $74b0: $9a
	xor  c                                           ; $74b1: $a9
	adc  b                                           ; $74b2: $88
	ld   [hl], a                                     ; $74b3: $77
	ld   [hl], a                                     ; $74b4: $77
	halt                                             ; $74b5: $76
	ld   h, a                                        ; $74b6: $67
	ld   a, b                                        ; $74b7: $78
	adc  b                                           ; $74b8: $88
	adc  c                                           ; $74b9: $89
	sbc  c                                           ; $74ba: $99
	adc  b                                           ; $74bb: $88
	sbc  c                                           ; $74bc: $99
	adc  b                                           ; $74bd: $88
	ld   [hl], a                                     ; $74be: $77
	ld   [hl], a                                     ; $74bf: $77
	ld   [hl], a                                     ; $74c0: $77
	ld   a, b                                        ; $74c1: $78
	adc  b                                           ; $74c2: $88
	sbc  b                                           ; $74c3: $98
	adc  c                                           ; $74c4: $89
	sbc  c                                           ; $74c5: $99
	sbc  b                                           ; $74c6: $98
	adc  b                                           ; $74c7: $88
	adc  b                                           ; $74c8: $88
	adc  b                                           ; $74c9: $88
	add  a                                           ; $74ca: $87
	ld   a, b                                        ; $74cb: $78
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
	add  a                                           ; $74d7: $87
	ld   a, b                                        ; $74d8: $78
	adc  b                                           ; $74d9: $88

Call_0e7_74da:
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	adc  b                                           ; $74dc: $88
	adc  c                                           ; $74dd: $89
	sbc  c                                           ; $74de: $99
	adc  b                                           ; $74df: $88
	ld   [hl], a                                     ; $74e0: $77
	adc  b                                           ; $74e1: $88
	adc  b                                           ; $74e2: $88
	adc  b                                           ; $74e3: $88
	adc  b                                           ; $74e4: $88
	adc  b                                           ; $74e5: $88
	adc  c                                           ; $74e6: $89
	adc  c                                           ; $74e7: $89
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
	sbc  b                                           ; $74f4: $98
	adc  b                                           ; $74f5: $88
	adc  b                                           ; $74f6: $88
	sbc  c                                           ; $74f7: $99
	adc  b                                           ; $74f8: $88
	ld   [hl], a                                     ; $74f9: $77
	add  a                                           ; $74fa: $87
	ld   a, b                                        ; $74fb: $78
	adc  b                                           ; $74fc: $88
	sbc  b                                           ; $74fd: $98
	adc  b                                           ; $74fe: $88
	adc  c                                           ; $74ff: $89
	sbc  b                                           ; $7500: $98
	adc  b                                           ; $7501: $88
	ld   [hl], a                                     ; $7502: $77
	ld   [hl], a                                     ; $7503: $77
	adc  b                                           ; $7504: $88
	adc  b                                           ; $7505: $88
	adc  b                                           ; $7506: $88
	sbc  c                                           ; $7507: $99
	sbc  b                                           ; $7508: $98
	sbc  c                                           ; $7509: $99
	adc  b                                           ; $750a: $88
	adc  b                                           ; $750b: $88
	ld   a, b                                        ; $750c: $78
	adc  b                                           ; $750d: $88
	adc  b                                           ; $750e: $88
	adc  b                                           ; $750f: $88
	adc  c                                           ; $7510: $89
	adc  c                                           ; $7511: $89
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	add  a                                           ; $7514: $87
	adc  b                                           ; $7515: $88
	adc  b                                           ; $7516: $88
	adc  b                                           ; $7517: $88
	adc  c                                           ; $7518: $89
	sbc  b                                           ; $7519: $98
	sbc  b                                           ; $751a: $98
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	adc  b                                           ; $751d: $88
	adc  b                                           ; $751e: $88
	adc  b                                           ; $751f: $88
	adc  b                                           ; $7520: $88
	sbc  c                                           ; $7521: $99
	sbc  c                                           ; $7522: $99
	adc  b                                           ; $7523: $88
	adc  b                                           ; $7524: $88
	adc  b                                           ; $7525: $88
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	adc  c                                           ; $7529: $89
	sbc  c                                           ; $752a: $99
	sbc  b                                           ; $752b: $98
	adc  b                                           ; $752c: $88
	adc  b                                           ; $752d: $88
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	adc  b                                           ; $7530: $88
	adc  c                                           ; $7531: $89
	adc  c                                           ; $7532: $89
	sbc  b                                           ; $7533: $98
	adc  b                                           ; $7534: $88
	ld   a, b                                        ; $7535: $78
	adc  b                                           ; $7536: $88
	adc  b                                           ; $7537: $88
	adc  b                                           ; $7538: $88
	adc  b                                           ; $7539: $88
	sbc  b                                           ; $753a: $98
	sbc  b                                           ; $753b: $98
	adc  c                                           ; $753c: $89
	sub  a                                           ; $753d: $97
	add  a                                           ; $753e: $87
	adc  c                                           ; $753f: $89
	adc  c                                           ; $7540: $89
	adc  b                                           ; $7541: $88
	sbc  b                                           ; $7542: $98
	ld   a, b                                        ; $7543: $78
	adc  c                                           ; $7544: $89
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	add  a                                           ; $7547: $87
	adc  b                                           ; $7548: $88
	ld   a, c                                        ; $7549: $79
	sub  a                                           ; $754a: $97
	add  a                                           ; $754b: $87
	ld   a, c                                        ; $754c: $79
	ld   a, b                                        ; $754d: $78
	add  a                                           ; $754e: $87
	ld   [hl], a                                     ; $754f: $77
	adc  b                                           ; $7550: $88
	add  a                                           ; $7551: $87
	adc  c                                           ; $7552: $89
	adc  b                                           ; $7553: $88
	sbc  c                                           ; $7554: $99
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	adc  b                                           ; $7557: $88
	adc  b                                           ; $7558: $88
	ld   [hl], a                                     ; $7559: $77
	ld   [hl], a                                     ; $755a: $77
	ld   [hl], a                                     ; $755b: $77
	ld   [hl], a                                     ; $755c: $77
	adc  b                                           ; $755d: $88
	adc  b                                           ; $755e: $88
	sbc  c                                           ; $755f: $99
	adc  c                                           ; $7560: $89
	sbc  c                                           ; $7561: $99
	sbc  b                                           ; $7562: $98
	add  a                                           ; $7563: $87
	ld   h, [hl]                                     ; $7564: $66
	ld   d, l                                        ; $7565: $55
	ld   b, l                                        ; $7566: $45
	ld   d, l                                        ; $7567: $55
	ld   h, a                                        ; $7568: $67
	sbc  d                                           ; $7569: $9a
	call z, $bbed                                    ; $756a: $cc $ed $bb
	xor  b                                           ; $756d: $a8
	ld   h, l                                        ; $756e: $65
	ld   sp, $1323                                   ; $756f: $31 $23 $13
	ld   d, a                                        ; $7572: $57
	xor  e                                           ; $7573: $ab
	rst  $38                                         ; $7574: $ff
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	jp   z, $3186                                    ; $7577: $ca $86 $31

	ld   de, $2611                                   ; $757a: $11 $11 $26
	xor  l                                           ; $757d: $ad
	rst  JumpTable                                         ; $757e: $df
	rst  $38                                         ; $757f: $ff
	rst  $38                                         ; $7580: $ff
	ld   a, [$3196]                                  ; $7581: $fa $96 $31
	ld   de, $1411                                   ; $7584: $11 $11 $14
	sbc  h                                           ; $7587: $9c
	rst  $38                                         ; $7588: $ff
	rst  $38                                         ; $7589: $ff
	rst  $38                                         ; $758a: $ff
	cp   $86                                         ; $758b: $fe $86
	ld   b, c                                        ; $758d: $41
	ld   de, $1111                                   ; $758e: $11 $11 $11
	adc  h                                           ; $7591: $8c
	rst  $38                                         ; $7592: $ff
	rst  $38                                         ; $7593: $ff
	rst  $38                                         ; $7594: $ff
	rst  $38                                         ; $7595: $ff
	and  l                                           ; $7596: $a5
	ld   b, c                                        ; $7597: $41
	ld   de, $1111                                   ; $7598: $11 $11 $11
	ld   l, h                                        ; $759b: $6c
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	rst  $38                                         ; $759e: $ff
	cp   $a6                                         ; $759f: $fe $a6
	ld   b, c                                        ; $75a1: $41
	ld   de, $1111                                   ; $75a2: $11 $11 $11
	inc  a                                           ; $75a5: $3c

Call_0e7_75a6:
	rst  $38                                         ; $75a6: $ff
	rst  $38                                         ; $75a7: $ff
	rst  $38                                         ; $75a8: $ff
	cp   $c7                                         ; $75a9: $fe $c7
	ld   [hl-], a                                    ; $75ab: $32
	ld   de, $1111                                   ; $75ac: $11 $11 $11
	add  hl, de                                      ; $75af: $19
	rst  $38                                         ; $75b0: $ff
	rst  $38                                         ; $75b1: $ff
	rst  $38                                         ; $75b2: $ff
	rst  $38                                         ; $75b3: $ff
	cp   c                                           ; $75b4: $b9
	ld   b, e                                        ; $75b5: $43
	ld   de, $1111                                   ; $75b6: $11 $11 $11
	dec  d                                           ; $75b9: $15
	rst  JumpTable                                         ; $75ba: $df
	rst  $38                                         ; $75bb: $ff
	rst  $38                                         ; $75bc: $ff
	rst  $38                                         ; $75bd: $ff
	bit  4, e                                        ; $75be: $cb $63
	ld   sp, $1111                                   ; $75c0: $31 $11 $11
	ld   [de], a                                     ; $75c3: $12
	xor  [hl]                                        ; $75c4: $ae
	rst  $38                                         ; $75c5: $ff
	rst  $38                                         ; $75c6: $ff
	rst  $38                                         ; $75c7: $ff
	ld   [$32a5], a                                  ; $75c8: $ea $a5 $32
	ld   de, $1111                                   ; $75cb: $11 $11 $11
	ld   a, [hl-]                                    ; $75ce: $3a
	rst  $38                                         ; $75cf: $ff
	rst  $38                                         ; $75d0: $ff
	rst  $38                                         ; $75d1: $ff
	db   $fd                                         ; $75d2: $fd
	xor  c                                           ; $75d3: $a9
	ld   b, h                                        ; $75d4: $44
	ld   hl, $1111                                   ; $75d5: $21 $11 $11
	inc  h                                           ; $75d8: $24
	xor  a                                           ; $75d9: $af
	rst  $38                                         ; $75da: $ff
	rst  $38                                         ; $75db: $ff
	rst  $38                                         ; $75dc: $ff
	jp   c, Jump_0e7_4284                            ; $75dd: $da $84 $42

	ld   de, $1211                                   ; $75e0: $11 $11 $12
	ld   c, e                                        ; $75e3: $4b
	rst  $38                                         ; $75e4: $ff
	rst  $38                                         ; $75e5: $ff
	rst  $38                                         ; $75e6: $ff
	db   $fd                                         ; $75e7: $fd
	adc  c                                           ; $75e8: $89
	ld   b, h                                        ; $75e9: $44
	ld   sp, $1111                                   ; $75ea: $31 $11 $11
	dec  d                                           ; $75ed: $15
	xor  a                                           ; $75ee: $af
	rst  $38                                         ; $75ef: $ff
	rst  $38                                         ; $75f0: $ff
	rst  $38                                         ; $75f1: $ff
	cp   b                                           ; $75f2: $b8
	ld   [hl], l                                     ; $75f3: $75
	ld   d, h                                        ; $75f4: $54
	ld   de, $1211                                   ; $75f5: $11 $11 $12
	ld   d, [hl]                                     ; $75f8: $56
	rst  $28                                         ; $75f9: $ef
	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff
	db   $ed                                         ; $75fc: $ed
	adc  c                                           ; $75fd: $89
	ld   h, l                                        ; $75fe: $65
	ld   h, e                                        ; $75ff: $63
	ld   de, $1411                                   ; $7600: $11 $11 $14
	ld   e, d                                        ; $7603: $5a
	rst  JumpTable                                         ; $7604: $df
	rst  $38                                         ; $7605: $ff
	rst  $38                                         ; $7606: $ff
	db   $ec                                         ; $7607: $ec
	sbc  c                                           ; $7608: $99
	ld   h, [hl]                                     ; $7609: $66
	ld   d, e                                        ; $760a: $53
	ld   de, $1411                                   ; $760b: $11 $11 $14
	ld   e, e                                        ; $760e: $5b
	rst  $38                                         ; $760f: $ff
	rst  $38                                         ; $7610: $ff
	rst  $38                                         ; $7611: $ff
	ld   [$5699], a                                  ; $7612: $ea $99 $56
	ld   b, d                                        ; $7615: $42
	ld   de, $2411                                   ; $7616: $11 $11 $24
	ld   a, l                                        ; $7619: $7d
	rst  $38                                         ; $761a: $ff
	rst  $38                                         ; $761b: $ff
	cp   $d9                                         ; $761c: $fe $d9
	sub  a                                           ; $761e: $97
	ld   h, [hl]                                     ; $761f: $66
	ld   b, e                                        ; $7620: $43
	ld   de, $4311                                   ; $7621: $11 $11 $43
	sbc  h                                           ; $7624: $9c
	rst  $28                                         ; $7625: $ef
	rst  $38                                         ; $7626: $ff
	cp   $d9                                         ; $7627: $fe $d9
	sub  a                                           ; $7629: $97
	ld   [hl], a                                     ; $762a: $77
	ld   b, e                                        ; $762b: $43
	ld   de, $3311                                   ; $762c: $11 $11 $33
	ld   a, e                                        ; $762f: $7b
	rst  $28                                         ; $7630: $ef
	rst  $38                                         ; $7631: $ff
	rst  $38                                         ; $7632: $ff
	jp   z, Jump_0e7_76a8                            ; $7633: $ca $a8 $76

	ld   b, e                                        ; $7636: $43
	ld   de, $1311                                   ; $7637: $11 $11 $13
	ld   a, c                                        ; $763a: $79
	rst  $28                                         ; $763b: $ef
	rst  $38                                         ; $763c: $ff
	rst  $38                                         ; $763d: $ff
	reti                                             ; $763e: $d9


	and  a                                           ; $763f: $a7
	ld   h, [hl]                                     ; $7640: $66
	ld   b, e                                        ; $7641: $43
	ld   de, $1311                                   ; $7642: $11 $11 $13
	ld   l, c                                        ; $7645: $69
	rst  JumpTable                                         ; $7646: $df
	rst  $38                                         ; $7647: $ff
	rst  $38                                         ; $7648: $ff
	jp   hl                                          ; $7649: $e9


	sub  a                                           ; $764a: $97
	halt                                             ; $764b: $76
	ld   d, h                                        ; $764c: $54
	ld   hl, $1311                                   ; $764d: $21 $11 $13
	ld   d, a                                        ; $7650: $57
	cp   a                                           ; $7651: $bf
	rst  $38                                         ; $7652: $ff
	rst  $38                                         ; $7653: $ff
	ld   [$67a8], a                                  ; $7654: $ea $a8 $67
	ld   h, l                                        ; $7657: $65
	ld   [hl-], a                                    ; $7658: $32
	ld   de, $4611                                   ; $7659: $11 $11 $46
	ld   a, [hl]                                     ; $765c: $7e
	cp   $ff                                         ; $765d: $fe $ff
	db   $fd                                         ; $765f: $fd
	xor  e                                           ; $7660: $ab
	ld   [hl], a                                     ; $7661: $77
	ld   h, [hl]                                     ; $7662: $66
	ld   d, e                                        ; $7663: $53
	ld   sp, $2611                                   ; $7664: $31 $11 $26
	ld   e, b                                        ; $7667: $58
	rst  $38                                         ; $7668: $ff
	rst  $38                                         ; $7669: $ff
	rst  $38                                         ; $766a: $ff
	res  4, a                                        ; $766b: $cb $a7
	add  [hl]                                        ; $766d: $86
	ld   [hl], l                                     ; $766e: $75
	ld   [hl-], a                                    ; $766f: $32
	ld   de, $4513                                   ; $7670: $11 $13 $45
	xor  a                                           ; $7673: $af
	rst  $28                                         ; $7674: $ef
	rst  $38                                         ; $7675: $ff
	db   $ec                                         ; $7676: $ec
	xor  b                                           ; $7677: $a8
	ld   a, b                                        ; $7678: $78
	halt                                             ; $7679: $76
	ld   d, h                                        ; $767a: $54
	ld   sp, $2411                                   ; $767b: $31 $11 $24
	ld   l, c                                        ; $767e: $69
	xor  $ff                                         ; $767f: $ee $ff
	rst  $38                                         ; $7681: $ff
	cp   d                                           ; $7682: $ba
	and  a                                           ; $7683: $a7
	add  a                                           ; $7684: $87
	ld   h, h                                        ; $7685: $64
	ld   [hl-], a                                    ; $7686: $32
	ld   de, $4613                                   ; $7687: $11 $13 $46
	cp   [hl]                                        ; $768a: $be
	rst  $38                                         ; $768b: $ff
	rst  $38                                         ; $768c: $ff
	db   $db                                         ; $768d: $db
	sbc  c                                           ; $768e: $99
	add  a                                           ; $768f: $87
	add  a                                           ; $7690: $87
	ld   d, l                                        ; $7691: $55
	ld   hl, $3411                                   ; $7692: $21 $11 $34
	ld   c, c                                        ; $7695: $49
	db   $dd                                         ; $7696: $dd
	rst  $38                                         ; $7697: $ff
	cp   $ab                                         ; $7698: $fe $ab
	sub  a                                           ; $769a: $97
	adc  b                                           ; $769b: $88
	add  l                                           ; $769c: $85
	ld   d, h                                        ; $769d: $54
	ld   de, $6412                                   ; $769e: $11 $12 $64
	sbc  h                                           ; $76a1: $9c
	adc  $df                                         ; $76a2: $ce $df
	call c, $99ba                                    ; $76a4: $dc $ba $99
	adc  b                                           ; $76a7: $88

Jump_0e7_76a8:
	ld   h, l                                        ; $76a8: $65
	ld   d, d                                        ; $76a9: $52
	ld   hl, $5413                                   ; $76aa: $21 $13 $54
	sbc  l                                           ; $76ad: $9d
	adc  $ff                                         ; $76ae: $ce $ff
	db   $db                                         ; $76b0: $db
	cp   c                                           ; $76b1: $b9
	adc  b                                           ; $76b2: $88
	adc  b                                           ; $76b3: $88
	ld   h, [hl]                                     ; $76b4: $66
	ld   b, d                                        ; $76b5: $42
	ld   hl, $5615                                   ; $76b6: $21 $15 $56
	cp   h                                           ; $76b9: $bc
	sbc  $ee                                         ; $76ba: $de $ee
	cp   e                                           ; $76bc: $bb
	xor  b                                           ; $76bd: $a8
	xor  c                                           ; $76be: $a9
	xor  b                                           ; $76bf: $a8
	ld   h, [hl]                                     ; $76c0: $66
	ld   sp, $1521                                   ; $76c1: $31 $21 $15
	ld   d, a                                        ; $76c4: $57
	sbc  h                                           ; $76c5: $9c
	call z, $dcfd                                    ; $76c6: $cc $fd $dc
	xor  d                                           ; $76c9: $aa
	sbc  c                                           ; $76ca: $99
	sub  [hl]                                        ; $76cb: $96
	ld   h, l                                        ; $76cc: $65
	ld   [hl-], a                                    ; $76cd: $32
	ld   de, $4725                                   ; $76ce: $11 $25 $47
	call z, $fece                                    ; $76d1: $cc $ce $fe
	call z, $aaba                                    ; $76d4: $cc $ba $aa
	add  a                                           ; $76d7: $87
	ld   h, h                                        ; $76d8: $64
	ld   de, $3511                                   ; $76d9: $11 $11 $35
	ld   l, b                                        ; $76dc: $68
	cp   [hl]                                        ; $76dd: $be
	db   $fd                                         ; $76de: $fd
	db   $dd                                         ; $76df: $dd
	cp   e                                           ; $76e0: $bb
	sbc  d                                           ; $76e1: $9a
	cp   c                                           ; $76e2: $b9
	sub  a                                           ; $76e3: $97
	ld   [hl], l                                     ; $76e4: $75
	ld   de, $2511                                   ; $76e5: $11 $11 $25
	ld   d, a                                        ; $76e8: $57
	cp   l                                           ; $76e9: $bd
	sbc  $ee                                         ; $76ea: $de $ee
	res  7, d                                        ; $76ec: $cb $ba
	sbc  c                                           ; $76ee: $99
	sub  a                                           ; $76ef: $97
	ld   h, l                                        ; $76f0: $65
	ld   [hl+], a                                    ; $76f1: $22
	ld   de, $6734                                   ; $76f2: $11 $34 $67
	cp   [hl]                                        ; $76f5: $be
	sbc  $ed                                         ; $76f6: $de $ed
	jp   z, $99b9                                    ; $76f8: $ca $b9 $99

	sbc  c                                           ; $76fb: $99
	ld   h, h                                        ; $76fc: $64
	ld   hl, $1411                                   ; $76fd: $21 $11 $14
	ld   [hl], a                                     ; $7700: $77
	xor  a                                           ; $7701: $af
	db   $ed                                         ; $7702: $ed
	db   $dd                                         ; $7703: $dd
	jp   z, $baaa                                    ; $7704: $ca $aa $ba

	adc  b                                           ; $7707: $88
	add  [hl]                                        ; $7708: $86
	ld   sp, $1411                                   ; $7709: $31 $11 $14
	ld   l, b                                        ; $770c: $68
	xor  e                                           ; $770d: $ab
	xor  $dd                                         ; $770e: $ee $dd
	call c, $b9ba                                    ; $7710: $dc $ba $b9
	sub  a                                           ; $7713: $97
	ld   h, [hl]                                     ; $7714: $66
	ld   sp, $1211                                   ; $7715: $31 $11 $12
	ld   d, a                                        ; $7718: $57
	xor  l                                           ; $7719: $ad
	rst  $28                                         ; $771a: $ef
	db   $ed                                         ; $771b: $ed
	db   $eb                                         ; $771c: $eb
	cp   d                                           ; $771d: $ba
	xor  d                                           ; $771e: $aa
	sbc  b                                           ; $771f: $98
	ld   h, [hl]                                     ; $7720: $66
	ld   b, d                                        ; $7721: $42
	ld   hl, $5512                                   ; $7722: $21 $12 $55
	ld   l, e                                        ; $7725: $6b
	rst  $28                                         ; $7726: $ef
	rst  $38                                         ; $7727: $ff
	db   $fc                                         ; $7728: $fc
	adc  b                                           ; $7729: $88
	ld   a, d                                        ; $772a: $7a
	adc  b                                           ; $772b: $88
	sbc  b                                           ; $772c: $98
	ld   [hl], d                                     ; $772d: $72
	ld   de, $4611                                   ; $772e: $11 $11 $46
	ld   a, c                                        ; $7731: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7732: $cf
	cp   $cd                                         ; $7733: $fe $cd
	cp   d                                           ; $7735: $ba
	adc  c                                           ; $7736: $89
	xor  c                                           ; $7737: $a9
	add  [hl]                                        ; $7738: $86
	ld   [hl], h                                     ; $7739: $74
	ld   de, $2511                                   ; $773a: $11 $11 $25
	ld   a, c                                        ; $773d: $79
	rst  JumpTable                                         ; $773e: $df
	cp   $dd                                         ; $773f: $fe $dd
	cp   b                                           ; $7741: $b8
	adc  d                                           ; $7742: $8a
	xor  c                                           ; $7743: $a9
	sbc  b                                           ; $7744: $98
	ld   h, l                                        ; $7745: $65
	ld   de, $1311                                   ; $7746: $11 $11 $13
	ld   a, c                                        ; $7749: $79
	xor  [hl]                                        ; $774a: $ae
	rst  $38                                         ; $774b: $ff
	db   $db                                         ; $774c: $db
	cp   e                                           ; $774d: $bb
	xor  c                                           ; $774e: $a9
	sbc  d                                           ; $774f: $9a
	xor  b                                           ; $7750: $a8
	ld   d, l                                        ; $7751: $55
	ld   hl, $1411                                   ; $7752: $21 $11 $14
	ld   [hl], a                                     ; $7755: $77
	adc  [hl]                                        ; $7756: $8e
	rst  $38                                         ; $7757: $ff
	db   $fc                                         ; $7758: $fc
	jp   z, $9b99                                    ; $7759: $ca $99 $9b

	sbc  b                                           ; $775c: $98
	ld   [hl], a                                     ; $775d: $77
	ld   h, d                                        ; $775e: $62
	ld   de, $5712                                   ; $775f: $11 $12 $57
	adc  e                                           ; $7762: $8b
	rst  JumpTable                                         ; $7763: $df
	db   $fd                                         ; $7764: $fd
	db   $dd                                         ; $7765: $dd
	cp   b                                           ; $7766: $b8
	adc  d                                           ; $7767: $8a
	sbc  c                                           ; $7768: $99
	sub  a                                           ; $7769: $97
	ld   [hl], e                                     ; $776a: $73
	ld   de, $3611                                   ; $776b: $11 $11 $36
	xor  e                                           ; $776e: $ab
	sbc  $ee                                         ; $776f: $de $ee
	call z, $aaaa                                    ; $7771: $cc $aa $aa
	xor  d                                           ; $7774: $aa
	sub  [hl]                                        ; $7775: $96
	ld   d, h                                        ; $7776: $54
	ld   de, $1611                                   ; $7777: $11 $11 $16
	xor  c                                           ; $777a: $a9
	xor  [hl]                                        ; $777b: $ae
	rst  $38                                         ; $777c: $ff
	call c, $98ca                                    ; $777d: $dc $ca $98
	sbc  c                                           ; $7780: $99
	sbc  b                                           ; $7781: $98
	ld   h, l                                        ; $7782: $65
	ld   sp, $1311                                   ; $7783: $31 $11 $13
	ld   a, c                                        ; $7786: $79
	cp   l                                           ; $7787: $bd
	rst  $28                                         ; $7788: $ef
	db   $ec                                         ; $7789: $ec
	res  5, b                                        ; $778a: $cb $a8
	xor  d                                           ; $778c: $aa
	xor  c                                           ; $778d: $a9
	ld   [hl], l                                     ; $778e: $75
	ld   b, d                                        ; $778f: $42
	ld   de, $5a11                                   ; $7790: $11 $11 $5a
	xor  e                                           ; $7793: $ab
	sbc  $fe                                         ; $7794: $de $fe
	res  5, e                                        ; $7796: $cb $ab

Jump_0e7_7798:
	adc  c                                           ; $7798: $89
	xor  d                                           ; $7799: $aa
	and  a                                           ; $779a: $a7
	ld   d, e                                        ; $779b: $53
	ld   de, $2511                                   ; $779c: $11 $11 $25
	adc  d                                           ; $779f: $8a
	rst  $28                                         ; $77a0: $ef
	rst  $38                                         ; $77a1: $ff
	call z, $99a8                                    ; $77a2: $cc $a8 $99
	cp   e                                           ; $77a5: $bb
	xor  c                                           ; $77a6: $a9
	ld   d, h                                        ; $77a7: $54

Call_0e7_77a8:
	ld   de, $1411                                   ; $77a8: $11 $11 $14
	ld   l, c                                        ; $77ab: $69
	xor  [hl]                                        ; $77ac: $ae
	rst  $38                                         ; $77ad: $ff
	db   $fc                                         ; $77ae: $fc
	cp   d                                           ; $77af: $ba
	adc  c                                           ; $77b0: $89
	adc  d                                           ; $77b1: $8a
	xor  c                                           ; $77b2: $a9
	add  l                                           ; $77b3: $85
	ld   sp, $1311                                   ; $77b4: $31 $11 $13
	ld   l, c                                        ; $77b7: $69
	sbc  e                                           ; $77b8: $9b

Call_0e7_77b9:
	rst  $28                                         ; $77b9: $ef
	cp   $db                                         ; $77ba: $fe $db
	adc  d                                           ; $77bc: $8a
	adc  c                                           ; $77bd: $89
	xor  c                                           ; $77be: $a9
	and  a                                           ; $77bf: $a7
	ld   d, d                                        ; $77c0: $52
	ld   de, $4811                                   ; $77c1: $11 $11 $48
	sbc  c                                           ; $77c4: $99
	adc  $ff                                         ; $77c5: $ce $ff
	call c, $9899                                    ; $77c7: $dc $99 $98
	sbc  c                                           ; $77ca: $99
	sbc  c                                           ; $77cb: $99
	ld   [hl], l                                     ; $77cc: $75
	ld   de, $1411                                   ; $77cd: $11 $11 $14
	ld   l, d                                        ; $77d0: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77d1: $cf
	rst  $38                                         ; $77d2: $ff
	db   $eb                                         ; $77d3: $eb
	cp   c                                           ; $77d4: $b9
	sbc  c                                           ; $77d5: $99
	sbc  c                                           ; $77d6: $99
	xor  d                                           ; $77d7: $aa
	add  l                                           ; $77d8: $85
	ld   sp, $1311                                   ; $77d9: $31 $11 $13
	ld   l, d                                        ; $77dc: $6a
	xor  e                                           ; $77dd: $ab
	call $caff                                       ; $77de: $cd $ff $ca
	sbc  c                                           ; $77e1: $99
	sbc  c                                           ; $77e2: $99
	sbc  c                                           ; $77e3: $99
	sbc  b                                           ; $77e4: $98
	ld   [hl], h                                     ; $77e5: $74
	ld   de, $3611                                   ; $77e6: $11 $11 $36
	sbc  e                                           ; $77e9: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77ea: $cf
	rst  $38                                         ; $77eb: $ff
	res  5, c                                        ; $77ec: $cb $a9
	xor  d                                           ; $77ee: $aa
	xor  c                                           ; $77ef: $a9
	sbc  c                                           ; $77f0: $99
	add  [hl]                                        ; $77f1: $86
	ld   sp, $1311                                   ; $77f2: $31 $11 $13
	ld   a, e                                        ; $77f5: $7b
	cp   h                                           ; $77f6: $bc
	sbc  $fe                                         ; $77f7: $de $fe
	res  3, c                                        ; $77f9: $cb $99
	sbc  d                                           ; $77fb: $9a
	xor  d                                           ; $77fc: $aa
	sub  a                                           ; $77fd: $97
	ld   h, h                                        ; $77fe: $64
	ld   de, $3811                                   ; $77ff: $11 $11 $38
	cp   e                                           ; $7802: $bb
	cp   h                                           ; $7803: $bc
	rst  $28                                         ; $7804: $ef
	db   $ed                                         ; $7805: $ed
	sbc  c                                           ; $7806: $99
	sbc  d                                           ; $7807: $9a
	xor  c                                           ; $7808: $a9
	sbc  c                                           ; $7809: $99
	ld   [hl], a                                     ; $780a: $77
	ld   b, c                                        ; $780b: $41
	ld   de, $7904                                   ; $780c: $11 $04 $79
	sbc  e                                           ; $780f: $9b
	xor  $fe                                         ; $7810: $ee $fe
	jp   z, $aa9a                                    ; $7812: $ca $9a $aa

	sbc  b                                           ; $7815: $98
	xor  b                                           ; $7816: $a8
	ld   [hl], h                                     ; $7817: $74
	ld   de, $3611                                   ; $7818: $11 $11 $36
	xor  e                                           ; $781b: $ab
	call z, $ddcd                                    ; $781c: $cc $cd $dd
	jp   z, $9a99                                    ; $781f: $ca $99 $9a

	xor  c                                           ; $7822: $a9
	add  a                                           ; $7823: $87
	ld   h, e                                        ; $7824: $63
	ld   bc, $6911                                   ; $7825: $01 $11 $69
	cp   c                                           ; $7828: $b9
	xor  h                                           ; $7829: $ac
	rst  $28                                         ; $782a: $ef
	db   $ec                                         ; $782b: $ec
	xor  b                                           ; $782c: $a8
	sbc  d                                           ; $782d: $9a
	sbc  c                                           ; $782e: $99
	sbc  c                                           ; $782f: $99
	sub  a                                           ; $7830: $97
	ld   b, c                                        ; $7831: $41
	ld   de, $7914                                   ; $7832: $11 $14 $79
	sbc  d                                           ; $7835: $9a
	cp   [hl]                                        ; $7836: $be
	rst  $28                                         ; $7837: $ef
	db   $db                                         ; $7838: $db
	sbc  c                                           ; $7839: $99
	xor  d                                           ; $783a: $aa
	sbc  c                                           ; $783b: $99
	sbc  c                                           ; $783c: $99
	halt                                             ; $783d: $76
	ld   sp, $2611                                   ; $783e: $31 $11 $26
	sbc  d                                           ; $7841: $9a
	xor  e                                           ; $7842: $ab
	cp   l                                           ; $7843: $bd
	xor  $ca                                         ; $7844: $ee $ca
	sbc  c                                           ; $7846: $99
	xor  d                                           ; $7847: $aa
	xor  c                                           ; $7848: $a9
	sbc  b                                           ; $7849: $98
	ld   [hl], l                                     ; $784a: $75
	ld   sp, $3611                                   ; $784b: $31 $11 $36
	adc  d                                           ; $784e: $8a
	xor  d                                           ; $784f: $aa
	call $caee                                       ; $7850: $cd $ee $ca
	sbc  d                                           ; $7853: $9a
	xor  d                                           ; $7854: $aa
	xor  c                                           ; $7855: $a9
	sbc  b                                           ; $7856: $98
	ld   h, h                                        ; $7857: $64
	ld   hl, $3711                                   ; $7858: $21 $11 $37
	sbc  c                                           ; $785b: $99
	xor  e                                           ; $785c: $ab
	sbc  $fc                                         ; $785d: $de $fc
	cp   b                                           ; $785f: $b8
	sbc  c                                           ; $7860: $99
	cp   d                                           ; $7861: $ba
	sbc  c                                           ; $7862: $99
	adc  b                                           ; $7863: $88
	ld   [hl], h                                     ; $7864: $74
	ld   hl, $4712                                   ; $7865: $21 $12 $47
	adc  c                                           ; $7868: $89
	sbc  d                                           ; $7869: $9a
	cp   l                                           ; $786a: $bd
	db   $ec                                         ; $786b: $ec
	xor  c                                           ; $786c: $a9
	sbc  c                                           ; $786d: $99
	xor  e                                           ; $786e: $ab
	sbc  d                                           ; $786f: $9a
	sbc  c                                           ; $7870: $99
	ld   [hl], h                                     ; $7871: $74
	ld   hl, $4711                                   ; $7872: $21 $11 $47
	sbc  c                                           ; $7875: $99
	sbc  d                                           ; $7876: $9a
	cp   [hl]                                        ; $7877: $be
	db   $dd                                         ; $7878: $dd
	cp   d                                           ; $7879: $ba
	sbc  d                                           ; $787a: $9a
	xor  c                                           ; $787b: $a9
	sbc  c                                           ; $787c: $99
	adc  c                                           ; $787d: $89
	ld   [hl], h                                     ; $787e: $74
	ld   hl, $4712                                   ; $787f: $21 $12 $47
	sbc  b                                           ; $7882: $98
	sbc  d                                           ; $7883: $9a
	cp   h                                           ; $7884: $bc
	call $99cb                                       ; $7885: $cd $cb $99
	sbc  c                                           ; $7888: $99
	sbc  c                                           ; $7889: $99
	sbc  c                                           ; $788a: $99
	ld   [hl], l                                     ; $788b: $75
	ld   sp, $4611                                   ; $788c: $31 $11 $46
	adc  c                                           ; $788f: $89
	xor  c                                           ; $7890: $a9
	xor  h                                           ; $7891: $ac
	db   $dd                                         ; $7892: $dd
	cp   d                                           ; $7893: $ba
	xor  d                                           ; $7894: $aa
	xor  d                                           ; $7895: $aa
	sbc  c                                           ; $7896: $99
	sbc  c                                           ; $7897: $99
	add  l                                           ; $7898: $85
	ld   sp, $3511                                   ; $7899: $31 $11 $35
	adc  c                                           ; $789c: $89
	sbc  d                                           ; $789d: $9a
	xor  e                                           ; $789e: $ab
	db   $dd                                         ; $789f: $dd
	res  5, d                                        ; $78a0: $cb $aa
	sbc  d                                           ; $78a2: $9a
	xor  c                                           ; $78a3: $a9
	xor  c                                           ; $78a4: $a9
	add  [hl]                                        ; $78a5: $86
	ld   b, c                                        ; $78a6: $41

Call_0e7_78a7:
	ld   de, $7935                                   ; $78a7: $11 $35 $79
	sbc  c                                           ; $78aa: $99
	xor  h                                           ; $78ab: $ac
	call c, $aadb                                    ; $78ac: $dc $db $aa
	sbc  d                                           ; $78af: $9a
	xor  e                                           ; $78b0: $ab
	xor  c                                           ; $78b1: $a9
	add  [hl]                                        ; $78b2: $86
	ld   b, d                                        ; $78b3: $42
	ld   bc, $7824                                   ; $78b4: $01 $24 $78
	adc  c                                           ; $78b7: $89
	xor  e                                           ; $78b8: $ab
	adc  $db                                         ; $78b9: $ce $db
	sbc  c                                           ; $78bb: $99
	sbc  d                                           ; $78bc: $9a
	xor  e                                           ; $78bd: $ab
	xor  c                                           ; $78be: $a9
	add  [hl]                                        ; $78bf: $86
	ld   d, e                                        ; $78c0: $53
	ld   de, $6814                                   ; $78c1: $11 $14 $68
	sbc  c                                           ; $78c4: $99
	sbc  d                                           ; $78c5: $9a
	cp   l                                           ; $78c6: $bd
	res  5, c                                        ; $78c7: $cb $a9
	sbc  d                                           ; $78c9: $9a
	cp   d                                           ; $78ca: $ba
	xor  c                                           ; $78cb: $a9
	sbc  b                                           ; $78cc: $98
	ld   d, e                                        ; $78cd: $53
	ld   de, $5813                                   ; $78ce: $11 $13 $58
	adc  c                                           ; $78d1: $89
	xor  d                                           ; $78d2: $aa
	cp   l                                           ; $78d3: $bd
	call c, $abaa                                    ; $78d4: $dc $aa $ab
	xor  d                                           ; $78d7: $aa
	xor  d                                           ; $78d8: $aa
	adc  b                                           ; $78d9: $88
	ld   h, h                                        ; $78da: $64
	ld   hl, $4702                                   ; $78db: $21 $02 $47
	sbc  c                                           ; $78de: $99
	xor  d                                           ; $78df: $aa
	cp   h                                           ; $78e0: $bc
	call z, $9aba                                    ; $78e1: $cc $ba $9a
	xor  d                                           ; $78e4: $aa
	cp   d                                           ; $78e5: $ba
	sub  a                                           ; $78e6: $97
	ld   h, h                                        ; $78e7: $64
	ld   sp, $4712                                   ; $78e8: $31 $12 $47
	adc  c                                           ; $78eb: $89
	sbc  d                                           ; $78ec: $9a
	cp   h                                           ; $78ed: $bc
	call z, $a9ba                                    ; $78ee: $cc $ba $a9
	xor  e                                           ; $78f1: $ab
	xor  e                                           ; $78f2: $ab
	sbc  c                                           ; $78f3: $99
	ld   [hl], h                                     ; $78f4: $74
	ld   sp, $4612                                   ; $78f5: $31 $12 $46
	sbc  b                                           ; $78f8: $98
	sbc  d                                           ; $78f9: $9a
	xor  h                                           ; $78fa: $ac
	call $aacb                                       ; $78fb: $cd $cb $aa
	cp   e                                           ; $78fe: $bb
	xor  d                                           ; $78ff: $aa
	sbc  b                                           ; $7900: $98
	ld   [hl], l                                     ; $7901: $75
	ld   sp, $3612                                   ; $7902: $31 $12 $36
	adc  c                                           ; $7905: $89
	xor  d                                           ; $7906: $aa
	cp   h                                           ; $7907: $bc
	db   $dd                                         ; $7908: $dd
	res  5, d                                        ; $7909: $cb $aa
	xor  e                                           ; $790b: $ab
	xor  d                                           ; $790c: $aa
	sbc  c                                           ; $790d: $99
	ld   [hl], l                                     ; $790e: $75
	ld   sp, $3611                                   ; $790f: $31 $11 $36
	adc  c                                           ; $7912: $89
	sbc  d                                           ; $7913: $9a
	xor  e                                           ; $7914: $ab
	call $bacb                                       ; $7915: $cd $cb $ba
	xor  d                                           ; $7918: $aa
	xor  d                                           ; $7919: $aa
	sbc  b                                           ; $791a: $98
	ld   [hl], l                                     ; $791b: $75
	ld   sp, $3511                                   ; $791c: $31 $11 $35
	adc  c                                           ; $791f: $89
	xor  d                                           ; $7920: $aa
	xor  e                                           ; $7921: $ab
	db   $dd                                         ; $7922: $dd
	jp   z, $9baa                                    ; $7923: $ca $aa $9b

	xor  d                                           ; $7926: $aa
	sbc  c                                           ; $7927: $99
	ld   [hl], l                                     ; $7928: $75
	ld   sp, $3511                                   ; $7929: $31 $11 $35
	adc  b                                           ; $792c: $88
	sbc  d                                           ; $792d: $9a
	xor  h                                           ; $792e: $ac
	db   $dd                                         ; $792f: $dd
	res  5, d                                        ; $7930: $cb $aa
	xor  d                                           ; $7932: $aa
	xor  d                                           ; $7933: $aa
	sbc  b                                           ; $7934: $98
	ld   [hl], l                                     ; $7935: $75
	ld   hl, $3611                                   ; $7936: $21 $11 $36
	sbc  c                                           ; $7939: $99
	xor  d                                           ; $793a: $aa
	cp   l                                           ; $793b: $bd
	call $aaca                                       ; $793c: $cd $ca $aa
	xor  e                                           ; $793f: $ab
	cp   d                                           ; $7940: $ba
	xor  b                                           ; $7941: $a8
	ld   h, h                                        ; $7942: $64
	ld   de, $3611                                   ; $7943: $11 $11 $36
	sbc  c                                           ; $7946: $99
	cp   e                                           ; $7947: $bb
	adc  $dc                                         ; $7948: $ce $dc
	cp   d                                           ; $794a: $ba
	sbc  d                                           ; $794b: $9a
	xor  e                                           ; $794c: $ab
	xor  d                                           ; $794d: $aa
	sbc  b                                           ; $794e: $98
	ld   d, d                                        ; $794f: $52
	ld   de, $4811                                   ; $7950: $11 $11 $48
	xor  d                                           ; $7953: $aa
	cp   e                                           ; $7954: $bb
	call $aadc                                       ; $7955: $cd $dc $aa
	sbc  d                                           ; $7958: $9a
	cp   d                                           ; $7959: $ba
	xor  d                                           ; $795a: $aa
	halt                                             ; $795b: $76
	ld   sp, $1311                                   ; $795c: $31 $11 $13
	ld   a, e                                        ; $795f: $7b
	cp   h                                           ; $7960: $bc
	call z, $dbed                                    ; $7961: $cc $ed $db
	sbc  c                                           ; $7964: $99
	xor  e                                           ; $7965: $ab
	cp   d                                           ; $7966: $ba
	sbc  b                                           ; $7967: $98
	ld   h, h                                        ; $7968: $64
	ld   de, $2711                                   ; $7969: $11 $11 $27
	xor  e                                           ; $796c: $ab
	call $dcce                                       ; $796d: $cd $ce $dc
	cp   b                                           ; $7970: $b8
	sbc  c                                           ; $7971: $99
	xor  e                                           ; $7972: $ab
	xor  d                                           ; $7973: $aa
	sub  a                                           ; $7974: $97
	ld   b, c                                        ; $7975: $41
	ld   de, $7c12                                   ; $7976: $11 $12 $7c
	db   $dd                                         ; $7979: $dd
	db   $dd                                         ; $797a: $dd
	xor  $c9                                         ; $797b: $ee $c9
	ld   a, b                                        ; $797d: $78
	xor  d                                           ; $797e: $aa
	jp   z, Jump_0e7_6398                            ; $797f: $ca $98 $63

	ld   de, $3711                                   ; $7982: $11 $11 $37
	call $eedf                                       ; $7985: $cd $df $ee
	db   $db                                         ; $7988: $db
	and  a                                           ; $7989: $a7
	adc  c                                           ; $798a: $89
	xor  e                                           ; $798b: $ab
	xor  c                                           ; $798c: $a9
	ld   [hl], h                                     ; $798d: $74
	ld   hl, $1411                                   ; $798e: $21 $11 $14
	sbc  [hl]                                        ; $7991: $9e
	rst  $38                                         ; $7992: $ff
	cp   $dc                                         ; $7993: $fe $dc
	sbc  b                                           ; $7995: $98
	ld   a, b                                        ; $7996: $78
	xor  e                                           ; $7997: $ab
	jp   z, $3196                                    ; $7998: $ca $96 $31

	ld   de, $6b11                                   ; $799b: $11 $11 $6b
	rst  $28                                         ; $799e: $ef
	rst  $38                                         ; $799f: $ff
	db   $fd                                         ; $79a0: $fd
	cp   b                                           ; $79a1: $b8
	ld   d, a                                        ; $79a2: $57
	sbc  h                                           ; $79a3: $9c
	res  4, a                                        ; $79a4: $cb $a7
	ld   d, c                                        ; $79a6: $51
	ld   de, $4a11                                   ; $79a7: $11 $11 $4a
	rst  $38                                         ; $79aa: $ff
	rst  $38                                         ; $79ab: $ff
	db   $ed                                         ; $79ac: $ed
	jp   z, $8a76                                    ; $79ad: $ca $76 $8a

	call z, Call_0e7_51b9                            ; $79b0: $cc $b9 $51
	ld   de, $1911                                   ; $79b3: $11 $11 $19
	rst  $38                                         ; $79b6: $ff
	rst  $38                                         ; $79b7: $ff
	cp   $c9                                         ; $79b8: $fe $c9
	ld   d, l                                        ; $79ba: $55
	ld   a, e                                        ; $79bb: $7b
	db   $dd                                         ; $79bc: $dd
	jp   z, $1161                                    ; $79bd: $ca $61 $11

	ld   de, $ff17                                   ; $79c0: $11 $17 $ff
	rst  $38                                         ; $79c3: $ff
	rst  $38                                         ; $79c4: $ff
	ret  z                                           ; $79c5: $c8

	ld   d, l                                        ; $79c6: $55
	ld   a, d                                        ; $79c7: $7a
	sbc  $d9                                         ; $79c8: $de $d9
	ld   h, c                                        ; $79ca: $61
	ld   de, $1811                                   ; $79cb: $11 $11 $18
	rst  $38                                         ; $79ce: $ff
	rst  $38                                         ; $79cf: $ff
	db   $fd                                         ; $79d0: $fd
	and  a                                           ; $79d1: $a7
	ld   d, l                                        ; $79d2: $55
	adc  h                                           ; $79d3: $8c
	rst  $28                                         ; $79d4: $ef
	ret                                              ; $79d5: $c9


	ld   d, c                                        ; $79d6: $51
	ld   de, $2a11                                   ; $79d7: $11 $11 $2a
	rst  $38                                         ; $79da: $ff
	rst  $38                                         ; $79db: $ff
	cp   $95                                         ; $79dc: $fe $95
	ld   b, l                                        ; $79de: $45
	sbc  l                                           ; $79df: $9d
	db   $fd                                         ; $79e0: $fd
	or   a                                           ; $79e1: $b7
	ld   b, c                                        ; $79e2: $41
	ld   de, $2c11                                   ; $79e3: $11 $11 $2c
	rst  $38                                         ; $79e6: $ff
	rst  $38                                         ; $79e7: $ff
	db   $eb                                         ; $79e8: $eb
	ld   [hl], l                                     ; $79e9: $75
	ld   d, a                                        ; $79ea: $57
	adc  $fd                                         ; $79eb: $ce $fd
	and  [hl]                                        ; $79ed: $a6
	ld   hl, $1111                                   ; $79ee: $21 $11 $11
	ld   e, [hl]                                     ; $79f1: $5e
	rst  $38                                         ; $79f2: $ff
	rst  $38                                         ; $79f3: $ff
	jp   c, $5865                                    ; $79f4: $da $65 $58

	sbc  $fc                                         ; $79f7: $de $fc
	sub  h                                           ; $79f9: $94
	ld   de, $1111                                   ; $79fa: $11 $11 $11
	ld   l, [hl]                                     ; $79fd: $6e
	rst  $38                                         ; $79fe: $ff
	rst  $38                                         ; $79ff: $ff
	ret                                              ; $7a00: $c9


	ld   h, l                                        ; $7a01: $65
	ld   l, d                                        ; $7a02: $6a
	rst  $28                                         ; $7a03: $ef
	ld   a, [$1163]                                  ; $7a04: $fa $63 $11
	ld   de, $9f11                                   ; $7a07: $11 $11 $9f
	rst  $38                                         ; $7a0a: $ff
	db   $fd                                         ; $7a0b: $fd
	cp   b                                           ; $7a0c: $b8
	ld   h, [hl]                                     ; $7a0d: $66
	adc  h                                           ; $7a0e: $8c
	rst  $38                                         ; $7a0f: $ff
	reti                                             ; $7a10: $d9


	ld   d, d                                        ; $7a11: $52
	ld   de, $1111                                   ; $7a12: $11 $11 $11
	xor  a                                           ; $7a15: $af
	rst  $38                                         ; $7a16: $ff
	db   $fc                                         ; $7a17: $fc
	add  l                                           ; $7a18: $85
	ld   d, a                                        ; $7a19: $57
	sbc  a                                           ; $7a1a: $9f
	rst  $38                                         ; $7a1b: $ff
	ret  z                                           ; $7a1c: $c8

	ld   b, c                                        ; $7a1d: $41
	ld   de, $1111                                   ; $7a1e: $11 $11 $11
	cp   a                                           ; $7a21: $bf
	rst  $38                                         ; $7a22: $ff
	ld   sp, hl                                      ; $7a23: $f9
	add  [hl]                                        ; $7a24: $86
	ld   [hl], a                                     ; $7a25: $77
	xor  [hl]                                        ; $7a26: $ae
	rst  $38                                         ; $7a27: $ff
	or   [hl]                                        ; $7a28: $b6
	ld   hl, $1111                                   ; $7a29: $21 $11 $11
	inc  de                                          ; $7a2c: $13
	rst  JumpTable                                         ; $7a2d: $df
	rst  $38                                         ; $7a2e: $ff
	reti                                             ; $7a2f: $d9


	ld   [hl], a                                     ; $7a30: $77
	ld   a, b                                        ; $7a31: $78
	cp   [hl]                                        ; $7a32: $be
	rst  $38                                         ; $7a33: $ff
	and  l                                           ; $7a34: $a5
	ld   hl, $1111                                   ; $7a35: $21 $11 $11
	rla                                              ; $7a38: $17
	rst  $38                                         ; $7a39: $ff
	rst  $38                                         ; $7a3a: $ff
	cp   c                                           ; $7a3b: $b9
	halt                                             ; $7a3c: $76
	ld   l, b                                        ; $7a3d: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a3e: $cf
	db   $fd                                         ; $7a3f: $fd
	ld   [hl], h                                     ; $7a40: $74
	ld   hl, $1111                                   ; $7a41: $21 $11 $11
	add  hl, bc                                      ; $7a44: $09
	rst  $38                                         ; $7a45: $ff
	cp   $a8                                         ; $7a46: $fe $a8
	ld   [hl], a                                     ; $7a48: $77
	ld   a, c                                        ; $7a49: $79
	rst  $28                                         ; $7a4a: $ef
	ei                                               ; $7a4b: $fb
	ld   h, e                                        ; $7a4c: $63
	ld   [hl+], a                                    ; $7a4d: $22
	ld   de, $3e11                                   ; $7a4e: $11 $11 $3e
	rst  $38                                         ; $7a51: $ff
	ei                                               ; $7a52: $fb
	sbc  c                                           ; $7a53: $99
	adc  b                                           ; $7a54: $88
	ld   a, e                                        ; $7a55: $7b
	rst  $38                                         ; $7a56: $ff
	reti                                             ; $7a57: $d9


	ld   d, e                                        ; $7a58: $53
	ld   hl, $1111                                   ; $7a59: $21 $11 $11
	ld   a, a                                        ; $7a5c: $7f
	rst  $38                                         ; $7a5d: $ff
	db   $fc                                         ; $7a5e: $fc
	xor  c                                           ; $7a5f: $a9
	ld   [hl], a                                     ; $7a60: $77
	sbc  h                                           ; $7a61: $9c
	rst  $38                                         ; $7a62: $ff
	rst  ToBoot                                         ; $7a63: $c7
	ld   b, d                                        ; $7a64: $42
	ld   de, $1111                                   ; $7a65: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a68: $cf
	rst  $38                                         ; $7a69: $ff
	jp   c, Jump_0e7_7798                            ; $7a6a: $da $98 $77

	cp   a                                           ; $7a6d: $bf
	db   $fd                                         ; $7a6e: $fd
	sub  l                                           ; $7a6f: $95
	inc  sp                                          ; $7a70: $33
	ld   hl, $1611                                   ; $7a71: $21 $11 $16
	rst  $28                                         ; $7a74: $ef
	rst  $38                                         ; $7a75: $ff
	db   $db                                         ; $7a76: $db
	sub  [hl]                                        ; $7a77: $96
	ld   l, c                                        ; $7a78: $69
	rst  $28                                         ; $7a79: $ef
	db   $eb                                         ; $7a7a: $eb
	ld   [hl], h                                     ; $7a7b: $74
	ld   [hl-], a                                    ; $7a7c: $32
	ld   de, $1911                                   ; $7a7d: $11 $11 $19
	rst  $38                                         ; $7a80: $ff
	rst  $38                                         ; $7a81: $ff
	xor  c                                           ; $7a82: $a9
	ld   [hl], a                                     ; $7a83: $77
	adc  e                                           ; $7a84: $8b
	rst  $28                                         ; $7a85: $ef
	db   $eb                                         ; $7a86: $eb

Jump_0e7_7a87:
	ld   h, d                                        ; $7a87: $62
	ld   de, $1111                                   ; $7a88: $11 $11 $11
	ld   e, [hl]                                     ; $7a8b: $5e
	rst  $38                                         ; $7a8c: $ff
	ei                                               ; $7a8d: $fb
	xor  d                                           ; $7a8e: $aa
	sbc  b                                           ; $7a8f: $98
	adc  e                                           ; $7a90: $8b
	sbc  $b7                                         ; $7a91: $de $b7
	ld   b, e                                        ; $7a93: $43
	inc  sp                                          ; $7a94: $33
	ld   de, $8f11                                   ; $7a95: $11 $11 $8f
	rst  $38                                         ; $7a98: $ff
	db   $db                                         ; $7a99: $db
	cp   d                                           ; $7a9a: $ba
	adc  b                                           ; $7a9b: $88
	sbc  h                                           ; $7a9c: $9c
	db   $ed                                         ; $7a9d: $ed
	and  [hl]                                        ; $7a9e: $a6
	ld   b, e                                        ; $7a9f: $43
	ld   sp, $1511                                   ; $7aa0: $31 $11 $15
	rst  $28                                         ; $7aa3: $ef
	rst  $38                                         ; $7aa4: $ff
	db   $db                                         ; $7aa5: $db
	xor  b                                           ; $7aa6: $a8
	adc  d                                           ; $7aa7: $8a
	adc  $da                                         ; $7aa8: $ce $da
	ld   [hl], l                                     ; $7aaa: $75
	ld   b, e                                        ; $7aab: $43
	ld   sp, $1811                                   ; $7aac: $31 $11 $18
	rst  $38                                         ; $7aaf: $ff
	db   $fd                                         ; $7ab0: $fd
	cp   e                                           ; $7ab1: $bb
	xor  c                                           ; $7ab2: $a9
	adc  d                                           ; $7ab3: $8a
	call Call_0e7_64d9                               ; $7ab4: $cd $d9 $64
	ld   b, h                                        ; $7ab7: $44
	ld   hl, $3d11                                   ; $7ab8: $21 $11 $3d
	rst  $38                                         ; $7abb: $ff
	ei                                               ; $7abc: $fb
	xor  d                                           ; $7abd: $aa
	xor  d                                           ; $7abe: $aa
	xor  e                                           ; $7abf: $ab
	db   $dd                                         ; $7ac0: $dd
	or   a                                           ; $7ac1: $b7
	ld   b, h                                        ; $7ac2: $44
	ld   b, h                                        ; $7ac3: $44
	ld   de, $7d11                                   ; $7ac4: $11 $11 $7d
	rst  $38                                         ; $7ac7: $ff
	db   $fc                                         ; $7ac8: $fc
	cp   c                                           ; $7ac9: $b9
	adc  b                                           ; $7aca: $88
	cp   l                                           ; $7acb: $bd
	db   $ec                                         ; $7acc: $ec
	sub  [hl]                                        ; $7acd: $96
	ld   b, h                                        ; $7ace: $44
	ld   sp, $1411                                   ; $7acf: $31 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad2: $cf
	cp   $db                                         ; $7ad3: $fe $db
	cp   e                                           ; $7ad5: $bb
	adc  b                                           ; $7ad6: $88
	cp   h                                           ; $7ad7: $bc
	call c, Call_0e7_4495                            ; $7ad8: $dc $95 $44
	ld   b, d                                        ; $7adb: $42
	ld   de, $ef15                                   ; $7adc: $11 $15 $ef
	db   $ec                                         ; $7adf: $ec
	cp   l                                           ; $7ae0: $bd
	jp   c, $ac88                                    ; $7ae1: $da $88 $ac

	jp   c, Jump_0e7_4475                            ; $7ae4: $da $75 $44

	ld   sp, $2911                                   ; $7ae7: $31 $11 $29
	rst  $28                                         ; $7aea: $ef
	xor  $cd                                         ; $7aeb: $ee $cd
	cp   c                                           ; $7aed: $b9
	sbc  d                                           ; $7aee: $9a
	call Call_0e7_65b8                               ; $7aef: $cd $b8 $65
	ld   d, h                                        ; $7af2: $54
	ld   de, $4b11                                   ; $7af3: $11 $11 $4b
	rst  $28                                         ; $7af6: $ef
	cp   $cb                                         ; $7af7: $fe $cb
	xor  c                                           ; $7af9: $a9
	sbc  e                                           ; $7afa: $9b
	res  7, c                                        ; $7afb: $cb $b9
	ld   h, l                                        ; $7afd: $65
	ld   b, e                                        ; $7afe: $43
	ld   de, $6b11                                   ; $7aff: $11 $11 $6b
	cp   $cb                                         ; $7b02: $fe $cb
	call $9bba                                       ; $7b04: $cd $ba $9b
	cp   e                                           ; $7b07: $bb
	xor  b                                           ; $7b08: $a8
	ld   h, l                                        ; $7b09: $65
	ld   d, e                                        ; $7b0a: $53
	ld   de, $6c11                                   ; $7b0b: $11 $11 $6c
	xor  $ed                                         ; $7b0e: $ee $ed
	res  3, c                                        ; $7b10: $cb $99
	cp   e                                           ; $7b12: $bb
	jp   z, Jump_0e7_6588                            ; $7b13: $ca $88 $65

Call_0e7_7b16:
	ld   b, e                                        ; $7b16: $43
	ld   de, $6b11                                   ; $7b17: $11 $11 $6b
	call c, $cccd                                    ; $7b1a: $dc $cd $cc
	jp   z, $abab                                    ; $7b1d: $ca $ab $ab

	xor  b                                           ; $7b20: $a8
	ld   h, l                                        ; $7b21: $65
	ld   b, e                                        ; $7b22: $43
	ld   de, $6a12                                   ; $7b23: $11 $12 $6a
	cp   h                                           ; $7b26: $bc
	sbc  $db                                         ; $7b27: $de $db
	xor  d                                           ; $7b29: $aa
	xor  e                                           ; $7b2a: $ab
	cp   d                                           ; $7b2b: $ba
	xor  b                                           ; $7b2c: $a8
	halt                                             ; $7b2d: $76
	ld   b, d                                        ; $7b2e: $42
	ld   de, $6813                                   ; $7b2f: $11 $13 $68
	cp   h                                           ; $7b32: $bc
	sbc  $db                                         ; $7b33: $de $db
	xor  d                                           ; $7b35: $aa
	cp   h                                           ; $7b36: $bc
	xor  c                                           ; $7b37: $a9
	xor  c                                           ; $7b38: $a9
	ld   [hl], l                                     ; $7b39: $75
	inc  sp                                          ; $7b3a: $33
	ld   [hl+], a                                    ; $7b3b: $22
	ld   [de], a                                     ; $7b3c: $12
	ld   b, a                                        ; $7b3d: $47
	cp   e                                           ; $7b3e: $bb
	call z, $bbdd                                    ; $7b3f: $cc $dd $bb
	cp   d                                           ; $7b42: $ba
	xor  e                                           ; $7b43: $ab
	xor  c                                           ; $7b44: $a9
	halt                                             ; $7b45: $76
	ld   d, h                                        ; $7b46: $54
	ld   sp, $4712                                   ; $7b47: $31 $12 $47
	adc  d                                           ; $7b4a: $8a
	cp   l                                           ; $7b4b: $bd
	call c, $aaca                                    ; $7b4c: $dc $ca $aa
	cp   d                                           ; $7b4f: $ba
	sbc  c                                           ; $7b50: $99
	add  a                                           ; $7b51: $87
	ld   h, h                                        ; $7b52: $64
	ld   [hl-], a                                    ; $7b53: $32
	ld   [hl+], a                                    ; $7b54: $22
	ld   b, l                                        ; $7b55: $45
	ld   a, c                                        ; $7b56: $79
	sbc  e                                           ; $7b57: $9b
	call z, $bbcb                                    ; $7b58: $cc $cb $bb
	cp   d                                           ; $7b5b: $ba
	sbc  c                                           ; $7b5c: $99
	xor  c                                           ; $7b5d: $a9
	ld   [hl], l                                     ; $7b5e: $75
	ld   b, h                                        ; $7b5f: $44
	inc  sp                                          ; $7b60: $33
	inc  [hl]                                        ; $7b61: $34
	ld   d, a                                        ; $7b62: $57
	adc  c                                           ; $7b63: $89
	xor  e                                           ; $7b64: $ab
	set  1, e                                        ; $7b65: $cb $cb
	xor  e                                           ; $7b67: $ab
	xor  d                                           ; $7b68: $aa
	sbc  b                                           ; $7b69: $98
	add  a                                           ; $7b6a: $87
	ld   h, l                                        ; $7b6b: $65
	ld   d, h                                        ; $7b6c: $54
	ld   b, h                                        ; $7b6d: $44
	ld   b, l                                        ; $7b6e: $45
	ld   h, a                                        ; $7b6f: $67
	adc  c                                           ; $7b70: $89
	xor  e                                           ; $7b71: $ab
	cp   e                                           ; $7b72: $bb
	cp   e                                           ; $7b73: $bb
	cp   d                                           ; $7b74: $ba
	sbc  b                                           ; $7b75: $98
	sbc  c                                           ; $7b76: $99
	add  a                                           ; $7b77: $87
	ld   h, l                                        ; $7b78: $65
	ld   h, [hl]                                     ; $7b79: $66
	ld   h, [hl]                                     ; $7b7a: $66
	ld   h, a                                        ; $7b7b: $67
	adc  b                                           ; $7b7c: $88
	add  a                                           ; $7b7d: $87
	sbc  c                                           ; $7b7e: $99
	cp   d                                           ; $7b7f: $ba
	sbc  b                                           ; $7b80: $98
	sbc  c                                           ; $7b81: $99
	sbc  b                                           ; $7b82: $98
	ld   a, b                                        ; $7b83: $78
	sbc  b                                           ; $7b84: $98
	ld   [hl], a                                     ; $7b85: $77
	ld   [hl], a                                     ; $7b86: $77
	adc  b                                           ; $7b87: $88
	add  a                                           ; $7b88: $87
	adc  c                                           ; $7b89: $89
	sbc  b                                           ; $7b8a: $98
	ld   [hl], a                                     ; $7b8b: $77
	sbc  c                                           ; $7b8c: $99
	adc  b                                           ; $7b8d: $88
	ld   a, b                                        ; $7b8e: $78
	adc  c                                           ; $7b8f: $89
	adc  b                                           ; $7b90: $88
	sbc  b                                           ; $7b91: $98
	adc  b                                           ; $7b92: $88
	adc  b                                           ; $7b93: $88
	adc  b                                           ; $7b94: $88
	add  a                                           ; $7b95: $87
	adc  c                                           ; $7b96: $89
	adc  c                                           ; $7b97: $89
	add  a                                           ; $7b98: $87
	ld   [hl], a                                     ; $7b99: $77
	ld   [hl], a                                     ; $7b9a: $77
	ld   a, b                                        ; $7b9b: $78
	adc  c                                           ; $7b9c: $89
	adc  b                                           ; $7b9d: $88
	sbc  b                                           ; $7b9e: $98
	adc  b                                           ; $7b9f: $88
	adc  b                                           ; $7ba0: $88
	adc  c                                           ; $7ba1: $89
	sbc  c                                           ; $7ba2: $99
	sbc  c                                           ; $7ba3: $99
	sbc  b                                           ; $7ba4: $98
	adc  b                                           ; $7ba5: $88
	adc  b                                           ; $7ba6: $88
	adc  b                                           ; $7ba7: $88
	adc  b                                           ; $7ba8: $88
	adc  c                                           ; $7ba9: $89
	sbc  c                                           ; $7baa: $99
	adc  c                                           ; $7bab: $89
	sbc  c                                           ; $7bac: $99
	sbc  c                                           ; $7bad: $99
	sbc  c                                           ; $7bae: $99
	adc  b                                           ; $7baf: $88
	sbc  b                                           ; $7bb0: $98
	adc  b                                           ; $7bb1: $88
	adc  b                                           ; $7bb2: $88
	adc  b                                           ; $7bb3: $88
	adc  b                                           ; $7bb4: $88
	adc  c                                           ; $7bb5: $89
	sbc  b                                           ; $7bb6: $98
	adc  b                                           ; $7bb7: $88
	sbc  c                                           ; $7bb8: $99
	sbc  c                                           ; $7bb9: $99
	sbc  b                                           ; $7bba: $98
	sbc  b                                           ; $7bbb: $98
	adc  b                                           ; $7bbc: $88
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
	adc  b                                           ; $7bd2: $88
	adc  b                                           ; $7bd3: $88
	adc  b                                           ; $7bd4: $88
	adc  b                                           ; $7bd5: $88
	adc  b                                           ; $7bd6: $88
	adc  b                                           ; $7bd7: $88
	adc  b                                           ; $7bd8: $88
	adc  b                                           ; $7bd9: $88
	adc  b                                           ; $7bda: $88
	adc  b                                           ; $7bdb: $88
	adc  b                                           ; $7bdc: $88
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	adc  b                                           ; $7bdf: $88
	adc  b                                           ; $7be0: $88
	adc  b                                           ; $7be1: $88
	adc  b                                           ; $7be2: $88
	adc  b                                           ; $7be3: $88
	adc  b                                           ; $7be4: $88
	adc  b                                           ; $7be5: $88
	adc  b                                           ; $7be6: $88
	adc  b                                           ; $7be7: $88
	adc  b                                           ; $7be8: $88
	adc  b                                           ; $7be9: $88
	adc  b                                           ; $7bea: $88
	adc  b                                           ; $7beb: $88
	adc  b                                           ; $7bec: $88
	adc  b                                           ; $7bed: $88
	adc  b                                           ; $7bee: $88
	adc  b                                           ; $7bef: $88
	adc  b                                           ; $7bf0: $88
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	adc  b                                           ; $7bf5: $88
	adc  b                                           ; $7bf6: $88
	adc  b                                           ; $7bf7: $88
	adc  b                                           ; $7bf8: $88
	adc  b                                           ; $7bf9: $88
	adc  b                                           ; $7bfa: $88
	adc  b                                           ; $7bfb: $88
	adc  b                                           ; $7bfc: $88
	adc  b                                           ; $7bfd: $88
	adc  b                                           ; $7bfe: $88
	adc  b                                           ; $7bff: $88
	adc  b                                           ; $7c00: $88
	adc  b                                           ; $7c01: $88
	adc  b                                           ; $7c02: $88
	adc  b                                           ; $7c03: $88
	adc  b                                           ; $7c04: $88
	adc  b                                           ; $7c05: $88
	adc  b                                           ; $7c06: $88
	adc  b                                           ; $7c07: $88
	adc  b                                           ; $7c08: $88
	adc  b                                           ; $7c09: $88
	adc  b                                           ; $7c0a: $88
	adc  b                                           ; $7c0b: $88
	adc  b                                           ; $7c0c: $88
	adc  b                                           ; $7c0d: $88
	adc  b                                           ; $7c0e: $88
	adc  b                                           ; $7c0f: $88
	adc  b                                           ; $7c10: $88
	adc  b                                           ; $7c11: $88
	adc  b                                           ; $7c12: $88
	adc  b                                           ; $7c13: $88
	adc  b                                           ; $7c14: $88
	adc  b                                           ; $7c15: $88
	adc  b                                           ; $7c16: $88
	adc  b                                           ; $7c17: $88
	adc  b                                           ; $7c18: $88
	adc  b                                           ; $7c19: $88
	adc  b                                           ; $7c1a: $88
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
	adc  b                                           ; $7c28: $88
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
	adc  b                                           ; $7c3a: $88
	adc  b                                           ; $7c3b: $88
	adc  b                                           ; $7c3c: $88
	adc  b                                           ; $7c3d: $88
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
	adc  b                                           ; $7c4a: $88
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	adc  b                                           ; $7c51: $88
	adc  b                                           ; $7c52: $88
	adc  b                                           ; $7c53: $88
	adc  b                                           ; $7c54: $88
	adc  b                                           ; $7c55: $88
	adc  b                                           ; $7c56: $88
	adc  b                                           ; $7c57: $88
	adc  b                                           ; $7c58: $88
	adc  b                                           ; $7c59: $88
	adc  b                                           ; $7c5a: $88
	adc  b                                           ; $7c5b: $88
	adc  b                                           ; $7c5c: $88
	adc  b                                           ; $7c5d: $88
	adc  b                                           ; $7c5e: $88
	adc  b                                           ; $7c5f: $88
	adc  b                                           ; $7c60: $88
	adc  b                                           ; $7c61: $88
	adc  b                                           ; $7c62: $88
	adc  b                                           ; $7c63: $88
	adc  b                                           ; $7c64: $88
	adc  b                                           ; $7c65: $88
	adc  b                                           ; $7c66: $88
	adc  b                                           ; $7c67: $88
	adc  b                                           ; $7c68: $88
	adc  b                                           ; $7c69: $88
	adc  b                                           ; $7c6a: $88
	adc  b                                           ; $7c6b: $88
	adc  b                                           ; $7c6c: $88
	adc  b                                           ; $7c6d: $88
	adc  b                                           ; $7c6e: $88
	adc  b                                           ; $7c6f: $88
	adc  b                                           ; $7c70: $88
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
	adc  b                                           ; $7c7b: $88
	adc  b                                           ; $7c7c: $88
	adc  b                                           ; $7c7d: $88
	adc  b                                           ; $7c7e: $88
	adc  b                                           ; $7c7f: $88
	adc  b                                           ; $7c80: $88
	adc  b                                           ; $7c81: $88
	adc  b                                           ; $7c82: $88
	adc  b                                           ; $7c83: $88
	adc  b                                           ; $7c84: $88
	adc  b                                           ; $7c85: $88
	adc  b                                           ; $7c86: $88
	adc  b                                           ; $7c87: $88
	adc  b                                           ; $7c88: $88
	adc  b                                           ; $7c89: $88
	adc  b                                           ; $7c8a: $88
	adc  b                                           ; $7c8b: $88
	adc  b                                           ; $7c8c: $88
	adc  b                                           ; $7c8d: $88
	adc  b                                           ; $7c8e: $88
	adc  b                                           ; $7c8f: $88
	adc  b                                           ; $7c90: $88
	adc  b                                           ; $7c91: $88
	adc  b                                           ; $7c92: $88
	adc  b                                           ; $7c93: $88
	adc  b                                           ; $7c94: $88
	adc  b                                           ; $7c95: $88
	adc  b                                           ; $7c96: $88
	adc  b                                           ; $7c97: $88
	adc  b                                           ; $7c98: $88
	adc  b                                           ; $7c99: $88
	adc  b                                           ; $7c9a: $88
	adc  b                                           ; $7c9b: $88
	adc  b                                           ; $7c9c: $88
	adc  b                                           ; $7c9d: $88
	adc  b                                           ; $7c9e: $88
	adc  b                                           ; $7c9f: $88
	adc  b                                           ; $7ca0: $88
	adc  b                                           ; $7ca1: $88
	adc  b                                           ; $7ca2: $88
	adc  b                                           ; $7ca3: $88
	adc  b                                           ; $7ca4: $88
	adc  b                                           ; $7ca5: $88
	adc  b                                           ; $7ca6: $88
	adc  b                                           ; $7ca7: $88
	adc  b                                           ; $7ca8: $88
	adc  b                                           ; $7ca9: $88
	adc  b                                           ; $7caa: $88
	adc  b                                           ; $7cab: $88
	adc  b                                           ; $7cac: $88
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
	adc  b                                           ; $7cbf: $88
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
	adc  b                                           ; $7d32: $88
	adc  b                                           ; $7d33: $88
	adc  b                                           ; $7d34: $88
	adc  b                                           ; $7d35: $88
	adc  b                                           ; $7d36: $88
	adc  b                                           ; $7d37: $88
	adc  b                                           ; $7d38: $88
	sbc  d                                           ; $7d39: $9a
	and  l                                           ; $7d3a: $a5
	ld   c, d                                        ; $7d3b: $4a
	sub  $36                                         ; $7d3c: $d6 $36
	cp   e                                           ; $7d3e: $bb
	ld   h, h                                        ; $7d3f: $64
	sbc  d                                           ; $7d40: $9a
	adc  b                                           ; $7d41: $88
	adc  h                                           ; $7d42: $8c
	and  d                                           ; $7d43: $a2
	ld   c, a                                        ; $7d44: $4f
	jp   nz, $fc39                                   ; $7d45: $c2 $39 $fc

	ld   [hl], $c6                                   ; $7d48: $36 $c6
	ld   c, d                                        ; $7d4a: $4a
	xor  b                                           ; $7d4b: $a8
	add  l                                           ; $7d4c: $85
	sbc  l                                           ; $7d4d: $9d
	halt                                             ; $7d4e: $76
	adc  c                                           ; $7d4f: $89
	adc  e                                           ; $7d50: $8b
	and  [hl]                                        ; $7d51: $a6
	add  [hl]                                        ; $7d52: $86
	ld   l, c                                        ; $7d53: $69
	ld   h, l                                        ; $7d54: $65
	ld   c, c                                        ; $7d55: $49
	db   $fd                                         ; $7d56: $fd
	add  e                                           ; $7d57: $83
	ld   a, d                                        ; $7d58: $7a
	xor  b                                           ; $7d59: $a8
	ld   b, a                                        ; $7d5a: $47
	ld   h, h                                        ; $7d5b: $64
	ld   a, l                                        ; $7d5c: $7d
	sub  d                                           ; $7d5d: $92
	ld   e, d                                        ; $7d5e: $5a
	and  l                                           ; $7d5f: $a5
	ld   e, c                                        ; $7d60: $59
	jp   c, $ab56                                    ; $7d61: $da $56 $ab

	ld   d, h                                        ; $7d64: $54
	sbc  e                                           ; $7d65: $9b
	ld   [hl], h                                     ; $7d66: $74
	ld   l, b                                        ; $7d67: $68
	ld   h, h                                        ; $7d68: $64
	ld   l, b                                        ; $7d69: $68
	add  a                                           ; $7d6a: $87
	ld   a, d                                        ; $7d6b: $7a
	cp   d                                           ; $7d6c: $ba
	sbc  e                                           ; $7d6d: $9b
	jp   z, $8989                                    ; $7d6e: $ca $89 $89

	halt                                             ; $7d71: $76
	ld   d, e                                        ; $7d72: $53
	ld   de, $6825                                   ; $7d73: $11 $25 $68
	sbc  l                                           ; $7d76: $9d
	db   $ec                                         ; $7d77: $ec
	xor  $ba                                         ; $7d78: $ee $ba
	sbc  d                                           ; $7d7a: $9a
	sbc  d                                           ; $7d7b: $9a
	sbc  b                                           ; $7d7c: $98
	halt                                             ; $7d7d: $76
	ld   sp, $5611                                   ; $7d7e: $31 $11 $56
	ld   a, c                                        ; $7d81: $79
	rst  JumpTable                                         ; $7d82: $df
	call c, $99dd                                    ; $7d83: $dc $dd $99
	sbc  e                                           ; $7d86: $9b
	xor  d                                           ; $7d87: $aa
	adc  c                                           ; $7d88: $89
	ld   [hl], l                                     ; $7d89: $75
	ld   hl, $2711                                   ; $7d8a: $21 $11 $27
	sbc  d                                           ; $7d8d: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d8e: $cf
	cp   $db                                         ; $7d8f: $fe $db
	sbc  b                                           ; $7d91: $98
	sbc  d                                           ; $7d92: $9a
	xor  d                                           ; $7d93: $aa
	sub  a                                           ; $7d94: $97
	ld   h, e                                        ; $7d95: $63
	ld   de, $4811                                   ; $7d96: $11 $11 $48
	cp   l                                           ; $7d99: $bd
	rst  $28                                         ; $7d9a: $ef
	db   $fd                                         ; $7d9b: $fd
	cp   d                                           ; $7d9c: $ba
	adc  b                                           ; $7d9d: $88
	sbc  h                                           ; $7d9e: $9c
	xor  e                                           ; $7d9f: $ab
	add  a                                           ; $7da0: $87
	ld   b, c                                        ; $7da1: $41
	ld   de, $6b11                                   ; $7da2: $11 $11 $6b
	db   $ed                                         ; $7da5: $ed
	rst  $38                                         ; $7da6: $ff
	ei                                               ; $7da7: $fb
	adc  b                                           ; $7da8: $88
	adc  c                                           ; $7da9: $89
	cp   e                                           ; $7daa: $bb
	cp   d                                           ; $7dab: $ba
	ld   h, h                                        ; $7dac: $64
	ld   de, $1611                                   ; $7dad: $11 $11 $16
	adc  $df                                         ; $7db0: $ce $df
	cp   $c7                                         ; $7db2: $fe $c7
	ld   a, b                                        ; $7db4: $78
	xor  e                                           ; $7db5: $ab
	cp   h                                           ; $7db6: $bc
	and  [hl]                                        ; $7db7: $a6
	ld   b, d                                        ; $7db8: $42
	ld   de, $5b11                                   ; $7db9: $11 $11 $5b
	cp   $ff                                         ; $7dbc: $fe $ff
	ei                                               ; $7dbe: $fb
	ld   [hl], a                                     ; $7dbf: $77
	sbc  d                                           ; $7dc0: $9a
	xor  h                                           ; $7dc1: $ac
	cp   d                                           ; $7dc2: $ba
	ld   [hl], h                                     ; $7dc3: $74
	ld   de, $1311                                   ; $7dc4: $11 $11 $13
	xor  a                                           ; $7dc7: $af
	rst  $38                                         ; $7dc8: $ff
	rst  $38                                         ; $7dc9: $ff
	rst  $10                                         ; $7dca: $d7
	ld   e, b                                        ; $7dcb: $58
	cp   h                                           ; $7dcc: $bc
	cp   e                                           ; $7dcd: $bb
	cp   b                                           ; $7dce: $b8
	ld   b, c                                        ; $7dcf: $41
	ld   [de], a                                     ; $7dd0: $12
	ld   de, $ff08                                   ; $7dd1: $11 $08 $ff
	rst  JumpTable                                         ; $7dd4: $df
	cp   $85                                         ; $7dd5: $fe $85
	ld   a, d                                        ; $7dd7: $7a
	cp   d                                           ; $7dd8: $ba
	cp   h                                           ; $7dd9: $bc
	and  l                                           ; $7dda: $a5
	ld   hl, $1121                                   ; $7ddb: $21 $21 $11
	ld   l, a                                        ; $7dde: $6f
	db   $fd                                         ; $7ddf: $fd
	rst  $28                                         ; $7de0: $ef
	ld   sp, hl                                      ; $7de1: $f9
	ld   d, [hl]                                     ; $7de2: $56
	sbc  e                                           ; $7de3: $9b
	call z, Call_0e7_61da                            ; $7de4: $cc $da $61
	ld   [de], a                                     ; $7de7: $12
	ld   de, $cf14                                   ; $7de8: $11 $14 $cf
	cp   $fe                                         ; $7deb: $fe $fe
	or   l                                           ; $7ded: $b5
	ld   e, c                                        ; $7dee: $59
	call c, $a7bc                                    ; $7def: $dc $bc $a7
	ld   hl, $1122                                   ; $7df2: $21 $22 $11
	add  hl, de                                      ; $7df5: $19
	rst  $38                                         ; $7df6: $ff
	sbc  $fd                                         ; $7df7: $de $fd
	ld   h, h                                        ; $7df9: $64
	ld   a, e                                        ; $7dfa: $7b
	jp   z, $94bb                                    ; $7dfb: $ca $bb $94

	ld   [hl+], a                                    ; $7dfe: $22
	ld   hl, $6f11                                   ; $7dff: $21 $11 $6f
	cp   $de                                         ; $7e02: $fe $de
	jp   hl                                          ; $7e04: $e9


	ld   b, [hl]                                     ; $7e05: $46
	xor  h                                           ; $7e06: $ac
	cp   h                                           ; $7e07: $bc
	cp   c                                           ; $7e08: $b9
	ld   h, d                                        ; $7e09: $62
	ld   [hl+], a                                    ; $7e0a: $22
	ld   de, $df13                                   ; $7e0b: $11 $13 $df
	db   $ed                                         ; $7e0e: $ed
	rst  JumpTable                                         ; $7e0f: $df
	and  h                                           ; $7e10: $a4
	ld   l, d                                        ; $7e11: $6a
	db   $ec                                         ; $7e12: $ec
	cp   e                                           ; $7e13: $bb
	sub  a                                           ; $7e14: $97
	ld   hl, $1132                                   ; $7e15: $21 $32 $11
	add  hl, sp                                      ; $7e18: $39
	rst  $38                                         ; $7e19: $ff
	rst  JumpTable                                         ; $7e1a: $df
	db   $ed                                         ; $7e1b: $ed
	ld   [hl], l                                     ; $7e1c: $75
	sbc  h                                           ; $7e1d: $9c
	reti                                             ; $7e1e: $d9


	cp   e                                           ; $7e1f: $bb
	add  h                                           ; $7e20: $84
	inc  h                                           ; $7e21: $24
	ld   sp, $7d11                                   ; $7e22: $31 $11 $7d
	cp   $df                                         ; $7e25: $fe $df
	rst  $10                                         ; $7e27: $d7
	ld   b, a                                        ; $7e28: $47
	cp   h                                           ; $7e29: $bc
	cp   e                                           ; $7e2a: $bb
	cp   b                                           ; $7e2b: $b8
	ld   d, e                                        ; $7e2c: $53
	inc  [hl]                                        ; $7e2d: $34
	ld   de, $bf13                                   ; $7e2e: $11 $13 $bf
	cp   $ef                                         ; $7e31: $fe $ef
	or   h                                           ; $7e33: $b4
	ld   e, b                                        ; $7e34: $58
	cp   e                                           ; $7e35: $bb
	cp   l                                           ; $7e36: $bd
	or   a                                           ; $7e37: $b7
	ld   hl, $1123                                   ; $7e38: $21 $23 $11
	add  hl, de                                      ; $7e3b: $19
	rst  $38                                         ; $7e3c: $ff
	call $65fd                                       ; $7e3d: $cd $fd $65
	adc  h                                           ; $7e40: $8c
	cp   c                                           ; $7e41: $b9
	cp   e                                           ; $7e42: $bb
	add  e                                           ; $7e43: $83
	inc  h                                           ; $7e44: $24
	ld   b, c                                        ; $7e45: $41
	ld   de, $fe6c                                   ; $7e46: $11 $6c $fe
	rst  $28                                         ; $7e49: $ef
	reti                                             ; $7e4a: $d9


	ld   b, a                                        ; $7e4b: $47
	xor  h                                           ; $7e4c: $ac
	cp   e                                           ; $7e4d: $bb
	reti                                             ; $7e4e: $d9


	ld   d, d                                        ; $7e4f: $52
	inc  [hl]                                        ; $7e50: $34
	ld   de, $9f12                                   ; $7e51: $11 $12 $9f
	db   $fd                                         ; $7e54: $fd
	rst  $38                                         ; $7e55: $ff
	or   a                                           ; $7e56: $b7
	ld   e, c                                        ; $7e57: $59
	cp   e                                           ; $7e58: $bb
	cp   h                                           ; $7e59: $bc
	or   [hl]                                        ; $7e5a: $b6
	ld   [hl-], a                                    ; $7e5b: $32
	ld   b, e                                        ; $7e5c: $43
	ld   de, $df17                                   ; $7e5d: $11 $17 $df
	cp   $fd                                         ; $7e60: $fe $fd
	ld   [hl], l                                     ; $7e62: $75
	ld   a, d                                        ; $7e63: $7a
	xor  d                                           ; $7e64: $aa
	cp   h                                           ; $7e65: $bc
	sub  h                                           ; $7e66: $94
	inc  [hl]                                        ; $7e67: $34
	ld   b, c                                        ; $7e68: $41
	ld   de, $fe3a                                   ; $7e69: $11 $3a $fe
	rst  JumpTable                                         ; $7e6c: $df
	ld   a, [$ab67]                                  ; $7e6d: $fa $67 $ab
	xor  d                                           ; $7e70: $aa
	db   $db                                         ; $7e71: $db
	ld   h, d                                        ; $7e72: $62
	inc  de                                          ; $7e73: $13
	ld   hl, $8e11                                   ; $7e74: $21 $11 $8e
	db   $fd                                         ; $7e77: $fd
	rst  $38                                         ; $7e78: $ff
	rst  $10                                         ; $7e79: $d7
	ld   e, c                                        ; $7e7a: $59
	xor  d                                           ; $7e7b: $aa
	xor  e                                           ; $7e7c: $ab
	reti                                             ; $7e7d: $d9


	ld   d, e                                        ; $7e7e: $53
	ld   b, e                                        ; $7e7f: $43
	ld   de, $cf16                                   ; $7e80: $11 $16 $cf
	rst  $38                                         ; $7e83: $ff
	cp   $86                                         ; $7e84: $fe $86
	ld   a, d                                        ; $7e86: $7a
	xor  d                                           ; $7e87: $aa
	cp   l                                           ; $7e88: $bd
	and  [hl]                                        ; $7e89: $a6
	ld   b, e                                        ; $7e8a: $43
	ld   hl, $2711                                   ; $7e8b: $21 $11 $27
	rst  JumpTable                                         ; $7e8e: $df
	db   $fd                                         ; $7e8f: $fd
	db   $ed                                         ; $7e90: $ed
	sub  [hl]                                        ; $7e91: $96
	adc  d                                           ; $7e92: $8a
	cp   d                                           ; $7e93: $ba
	call z, $3295                                    ; $7e94: $cc $95 $32
	ld   de, $6c11                                   ; $7e97: $11 $11 $6c
	cp   $ef                                         ; $7e9a: $fe $ef
	ld   [$ab58], a                                  ; $7e9c: $ea $58 $ab
	sbc  d                                           ; $7e9f: $9a
	jp   c, Jump_0e7_4353                            ; $7ea0: $da $53 $43

	ld   de, $9d14                                   ; $7ea3: $11 $14 $9d
	rst  $38                                         ; $7ea6: $ff
	rst  $38                                         ; $7ea7: $ff
	or   a                                           ; $7ea8: $b7
	ld   a, c                                        ; $7ea9: $79
	sbc  c                                           ; $7eaa: $99
	xor  [hl]                                        ; $7eab: $ae
	or   a                                           ; $7eac: $b7
	ld   d, e                                        ; $7ead: $53
	ld   sp, $2711                                   ; $7eae: $31 $11 $27
	cp   a                                           ; $7eb1: $bf
	rst  $38                                         ; $7eb2: $ff
	db   $fc                                         ; $7eb3: $fc
	sub  a                                           ; $7eb4: $97
	adc  c                                           ; $7eb5: $89
	xor  d                                           ; $7eb6: $aa
	call z, $4285                                    ; $7eb7: $cc $85 $42
	ld   de, $5b11                                   ; $7eba: $11 $11 $5b
	rst  $38                                         ; $7ebd: $ff
	rst  JumpTable                                         ; $7ebe: $df
	ei                                               ; $7ebf: $fb
	ld   l, b                                        ; $7ec0: $68
	sbc  d                                           ; $7ec1: $9a
	adc  d                                           ; $7ec2: $8a
	ld   [$4254], a                                  ; $7ec3: $ea $54 $42
	ld   de, $8c15                                   ; $7ec6: $11 $15 $8c
	rst  $28                                         ; $7ec9: $ef
	rst  $38                                         ; $7eca: $ff
	ret                                              ; $7ecb: $c9


	sbc  c                                           ; $7ecc: $99
	ld   a, b                                        ; $7ecd: $78
	cp   h                                           ; $7ece: $bc
	and  a                                           ; $7ecf: $a7
	ld   d, h                                        ; $7ed0: $54
	ld   hl, $3711                                   ; $7ed1: $21 $11 $37
	cp   [hl]                                        ; $7ed4: $be
	rst  $38                                         ; $7ed5: $ff
	db   $fd                                         ; $7ed6: $fd
	sbc  b                                           ; $7ed7: $98
	add  a                                           ; $7ed8: $87
	adc  c                                           ; $7ed9: $89
	call c, $5297                                    ; $7eda: $dc $97 $52
	ld   de, $6a11                                   ; $7edd: $11 $11 $6a
	rst  $28                                         ; $7ee0: $ef
	rst  $38                                         ; $7ee1: $ff
	ld   [$9789], a                                  ; $7ee2: $ea $89 $97
	adc  e                                           ; $7ee5: $8b
	ret                                              ; $7ee6: $c9


	halt                                             ; $7ee7: $76
	ld   b, c                                        ; $7ee8: $41
	ld   de, $8c14                                   ; $7ee9: $11 $14 $8c
	rst  $28                                         ; $7eec: $ef
	rst  $38                                         ; $7eed: $ff
	reti                                             ; $7eee: $d9


	sbc  c                                           ; $7eef: $99
	add  a                                           ; $7ef0: $87
	sbc  h                                           ; $7ef1: $9c
	and  a                                           ; $7ef2: $a7
	ld   d, l                                        ; $7ef3: $55
	ld   de, $5611                                   ; $7ef4: $11 $11 $56
	xor  l                                           ; $7ef7: $ad
	rst  $38                                         ; $7ef8: $ff
	db   $fd                                         ; $7ef9: $fd
	cp   c                                           ; $7efa: $b9
	adc  b                                           ; $7efb: $88
	adc  c                                           ; $7efc: $89
	xor  e                                           ; $7efd: $ab
	sub  a                                           ; $7efe: $97
	ld   d, d                                        ; $7eff: $52
	ld   de, $6a13                                   ; $7f00: $11 $13 $6a
	call $fcff                                       ; $7f03: $cd $ff $fc
	xor  c                                           ; $7f06: $a9
	sub  a                                           ; $7f07: $97
	ld   a, d                                        ; $7f08: $7a
	cp   c                                           ; $7f09: $b9
	halt                                             ; $7f0a: $76
	ld   sp, $4511                                   ; $7f0b: $31 $11 $45
	adc  d                                           ; $7f0e: $8a
	sbc  $ef                                         ; $7f0f: $de $ef
	db   $eb                                         ; $7f11: $eb
	sbc  c                                           ; $7f12: $99
	adc  b                                           ; $7f13: $88
	adc  c                                           ; $7f14: $89
	sbc  b                                           ; $7f15: $98
	ld   h, e                                        ; $7f16: $63
	ld   de, $5713                                   ; $7f17: $11 $13 $57
	sbc  h                                           ; $7f1a: $9c
	call $caed                                       ; $7f1b: $cd $ed $ca
	sbc  c                                           ; $7f1e: $99
	ld   a, c                                        ; $7f1f: $79
	xor  c                                           ; $7f20: $a9
	add  a                                           ; $7f21: $87
	ld   h, e                                        ; $7f22: $63
	ld   de, $6736                                   ; $7f23: $11 $36 $67
	sbc  h                                           ; $7f26: $9c
	call z, $b8dd                                    ; $7f27: $cc $dd $b8
	xor  d                                           ; $7f2a: $aa
	sbc  c                                           ; $7f2b: $99
	xor  c                                           ; $7f2c: $a9
	add  a                                           ; $7f2d: $87
	ld   h, h                                        ; $7f2e: $64
	ld   hl, $6557                                   ; $7f2f: $21 $57 $65
	sbc  e                                           ; $7f32: $9b
	xor  c                                           ; $7f33: $a9
	cp   h                                           ; $7f34: $bc
	cp   c                                           ; $7f35: $b9
	xor  e                                           ; $7f36: $ab
	sbc  b                                           ; $7f37: $98
	sbc  e                                           ; $7f38: $9b
	sub  a                                           ; $7f39: $97
	ld   h, [hl]                                     ; $7f3a: $66
	ld   b, e                                        ; $7f3b: $43
	ld   b, a                                        ; $7f3c: $47
	ld   h, l                                        ; $7f3d: $65
	ld   l, c                                        ; $7f3e: $69
	xor  b                                           ; $7f3f: $a8
	xor  h                                           ; $7f40: $ac
	cp   c                                           ; $7f41: $b9
	sbc  e                                           ; $7f42: $9b
	cp   c                                           ; $7f43: $b9
	xor  d                                           ; $7f44: $aa
	xor  b                                           ; $7f45: $a8
	halt                                             ; $7f46: $76
	ld   d, h                                        ; $7f47: $54
	ld   b, [hl]                                     ; $7f48: $46
	ld   h, l                                        ; $7f49: $65
	ld   d, a                                        ; $7f4a: $57
	adc  c                                           ; $7f4b: $89
	adc  d                                           ; $7f4c: $8a
	cp   d                                           ; $7f4d: $ba
	sbc  e                                           ; $7f4e: $9b
	cp   d                                           ; $7f4f: $ba
	sbc  c                                           ; $7f50: $99
	cp   c                                           ; $7f51: $b9
	ld   [hl], a                                     ; $7f52: $77
	ld   h, l                                        ; $7f53: $65
	ld   b, l                                        ; $7f54: $45
	ld   h, [hl]                                     ; $7f55: $66
	ld   d, l                                        ; $7f56: $55
	adc  c                                           ; $7f57: $89
	adc  b                                           ; $7f58: $88
	cp   e                                           ; $7f59: $bb
	xor  c                                           ; $7f5a: $a9
	xor  e                                           ; $7f5b: $ab
	xor  c                                           ; $7f5c: $a9
	sbc  d                                           ; $7f5d: $9a
	add  a                                           ; $7f5e: $87
	halt                                             ; $7f5f: $76
	ld   d, h                                        ; $7f60: $54
	ld   d, a                                        ; $7f61: $57
	ld   h, l                                        ; $7f62: $65
	ld   l, c                                        ; $7f63: $69
	sbc  b                                           ; $7f64: $98
	sbc  e                                           ; $7f65: $9b
	xor  d                                           ; $7f66: $aa
	xor  e                                           ; $7f67: $ab
	xor  c                                           ; $7f68: $a9
	sbc  d                                           ; $7f69: $9a
	sbc  b                                           ; $7f6a: $98
	halt                                             ; $7f6b: $76
	ld   h, h                                        ; $7f6c: $64
	ld   b, l                                        ; $7f6d: $45
	halt                                             ; $7f6e: $76
	ld   h, a                                        ; $7f6f: $67
	adc  b                                           ; $7f70: $88
	sbc  d                                           ; $7f71: $9a
	xor  d                                           ; $7f72: $aa
	sbc  c                                           ; $7f73: $99
	xor  d                                           ; $7f74: $aa
	sbc  d                                           ; $7f75: $9a
	xor  c                                           ; $7f76: $a9
	add  [hl]                                        ; $7f77: $86
	ld   h, l                                        ; $7f78: $65
	ld   b, h                                        ; $7f79: $44
	ld   h, a                                        ; $7f7a: $67
	ld   h, [hl]                                     ; $7f7b: $66
	adc  c                                           ; $7f7c: $89
	adc  c                                           ; $7f7d: $89
	xor  e                                           ; $7f7e: $ab
	sbc  c                                           ; $7f7f: $99
	xor  e                                           ; $7f80: $ab
	xor  c                                           ; $7f81: $a9
	xor  d                                           ; $7f82: $aa
	sub  a                                           ; $7f83: $97
	ld   h, [hl]                                     ; $7f84: $66
	ld   d, h                                        ; $7f85: $54
	ld   h, a                                        ; $7f86: $67
	ld   h, [hl]                                     ; $7f87: $66
	ld   a, c                                        ; $7f88: $79
	add  a                                           ; $7f89: $87
	sbc  d                                           ; $7f8a: $9a
	sbc  c                                           ; $7f8b: $99
	sbc  d                                           ; $7f8c: $9a
	xor  b                                           ; $7f8d: $a8
	xor  e                                           ; $7f8e: $ab
	sbc  b                                           ; $7f8f: $98
	ld   [hl], a                                     ; $7f90: $77
	ld   h, h                                        ; $7f91: $64
	ld   d, [hl]                                     ; $7f92: $56
	halt                                             ; $7f93: $76
	ld   h, a                                        ; $7f94: $67
	adc  b                                           ; $7f95: $88
	adc  c                                           ; $7f96: $89
	cp   c                                           ; $7f97: $b9
	sbc  d                                           ; $7f98: $9a
	xor  d                                           ; $7f99: $aa
	sbc  c                                           ; $7f9a: $99
	xor  c                                           ; $7f9b: $a9
	ld   [hl], a                                     ; $7f9c: $77
	ld   [hl], l                                     ; $7f9d: $75
	dec  [hl]                                        ; $7f9e: $35
	add  a                                           ; $7f9f: $87
	ld   d, a                                        ; $7fa0: $57
	sbc  c                                           ; $7fa1: $99
	ld   a, b                                        ; $7fa2: $78
	cp   e                                           ; $7fa3: $bb
	sbc  c                                           ; $7fa4: $99
	cp   e                                           ; $7fa5: $bb
	sbc  c                                           ; $7fa6: $99
	xor  d                                           ; $7fa7: $aa
	add  a                                           ; $7fa8: $87
	ld   h, l                                        ; $7fa9: $65
	inc  sp                                          ; $7faa: $33
	ld   h, [hl]                                     ; $7fab: $66
	ld   d, [hl]                                     ; $7fac: $56
	adc  c                                           ; $7fad: $89
	adc  b                                           ; $7fae: $88
	cp   e                                           ; $7faf: $bb
	xor  d                                           ; $7fb0: $aa
	cp   e                                           ; $7fb1: $bb
	sbc  c                                           ; $7fb2: $99
	xor  c                                           ; $7fb3: $a9
	add  a                                           ; $7fb4: $87
	ld   h, l                                        ; $7fb5: $65
	ld   [hl+], a                                    ; $7fb6: $22
	ld   d, [hl]                                     ; $7fb7: $56
	ld   d, [hl]                                     ; $7fb8: $56
	adc  d                                           ; $7fb9: $8a
	adc  c                                           ; $7fba: $89
	db   $dd                                         ; $7fbb: $dd
	xor  d                                           ; $7fbc: $aa
	call z, $ca88                                    ; $7fbd: $cc $88 $ca
	ld   [hl], a                                     ; $7fc0: $77
	ld   [hl], h                                     ; $7fc1: $74
	ld   de, $3655                                   ; $7fc2: $11 $55 $36
	sbc  d                                           ; $7fc5: $9a
	adc  d                                           ; $7fc6: $8a
	rst  $38                                         ; $7fc7: $ff
	cp   c                                           ; $7fc8: $b9
	db   $db                                         ; $7fc9: $db
	adc  b                                           ; $7fca: $88
	jp   z, $7467                                    ; $7fcb: $ca $67 $74

	ld   de, $3655                                   ; $7fce: $11 $55 $36
	xor  l                                           ; $7fd1: $ad
	sbc  e                                           ; $7fd2: $9b
	rst  $38                                         ; $7fd3: $ff
	cp   d                                           ; $7fd4: $ba
	db   $eb                                         ; $7fd5: $eb
	ld   h, a                                        ; $7fd6: $67
	ret                                              ; $7fd7: $c9


	ld   d, [hl]                                     ; $7fd8: $56
	ld   h, c                                        ; $7fd9: $61
	ld   de, $2964                                   ; $7fda: $11 $64 $29
	db   $ed                                         ; $7fdd: $ed
	xor  l                                           ; $7fde: $ad
	cp   $9b                                         ; $7fdf: $fe $9b
	jp   hl                                          ; $7fe1: $e9


	ld   e, b                                        ; $7fe2: $58
	rst  ToBoot                                         ; $7fe3: $c7
	ld   b, [hl]                                     ; $7fe4: $46
	ld   b, c                                        ; $7fe5: $41
	ld   [de], a                                     ; $7fe6: $12
	ld   h, d                                        ; $7fe7: $62
	ld   e, e                                        ; $7fe8: $5b
	ei                                               ; $7fe9: $fb
	xor  a                                           ; $7fea: $af
	ei                                               ; $7feb: $fb
	sbc  l                                           ; $7fec: $9d
	or   [hl]                                        ; $7fed: $b6
	ld   l, d                                        ; $7fee: $6a
	and  h                                           ; $7fef: $a4
	ld   d, [hl]                                     ; $7ff0: $56
	ld   de, $4316                                   ; $7ff1: $11 $16 $43
	sbc  [hl]                                        ; $7ff4: $9e
	jp   hl                                          ; $7ff5: $e9


	rst  $38                                         ; $7ff6: $ff
	add  sp, -$33                                    ; $7ff7: $e8 $cd
	add  l                                           ; $7ff9: $85
	adc  h                                           ; $7ffa: $8c
	ld   h, h                                        ; $7ffb: $64
	ld   [hl], e                                     ; $7ffc: $73
	ld   de, $2637                                   ; $7ffd: $11 $37 $26
