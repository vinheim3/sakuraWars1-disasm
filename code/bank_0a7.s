; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0a7", ROMX[$4000], BANK[$a7]

	sbc  c                                           ; $4000: $99
	adc  b                                           ; $4001: $88
	add  [hl]                                        ; $4002: $86
	add  a                                           ; $4003: $87
	ld   h, a                                        ; $4004: $67
	ld   h, [hl]                                     ; $4005: $66
	ld   h, [hl]                                     ; $4006: $66
	ld   d, l                                        ; $4007: $55
	ld   h, l                                        ; $4008: $65
	ld   b, l                                        ; $4009: $45
	ld   b, h                                        ; $400a: $44
	ld   d, h                                        ; $400b: $54
	ld   d, [hl]                                     ; $400c: $56
	ld   a, b                                        ; $400d: $78
	ld   a, b                                        ; $400e: $78
	sbc  d                                           ; $400f: $9a
	adc  b                                           ; $4010: $88
	xor  c                                           ; $4011: $a9
	call z, $acaa                                    ; $4012: $cc $aa $ac
	cp   d                                           ; $4015: $ba
	xor  d                                           ; $4016: $aa
	cp   d                                           ; $4017: $ba
	sbc  d                                           ; $4018: $9a
	adc  c                                           ; $4019: $89
	xor  b                                           ; $401a: $a8
	sbc  c                                           ; $401b: $99
	sbc  b                                           ; $401c: $98
	add  [hl]                                        ; $401d: $86
	ld   h, a                                        ; $401e: $67
	ld   h, [hl]                                     ; $401f: $66
	ld   d, a                                        ; $4020: $57
	ld   d, h                                        ; $4021: $54
	ld   d, e                                        ; $4022: $53
	ld   b, e                                        ; $4023: $43
	inc  [hl]                                        ; $4024: $34
	ld   d, [hl]                                     ; $4025: $56
	ld   d, a                                        ; $4026: $57
	sbc  b                                           ; $4027: $98
	adc  d                                           ; $4028: $8a
	adc  b                                           ; $4029: $88
	xor  h                                           ; $402a: $ac
	jp   z, $abbb                                    ; $402b: $ca $bb $ab

	res  5, d                                        ; $402e: $cb $aa
	xor  d                                           ; $4030: $aa
	xor  d                                           ; $4031: $aa
	xor  c                                           ; $4032: $a9
	sbc  d                                           ; $4033: $9a
	sbc  b                                           ; $4034: $98
	sbc  b                                           ; $4035: $98
	sub  a                                           ; $4036: $97
	ld   h, [hl]                                     ; $4037: $66
	ld   h, [hl]                                     ; $4038: $66
	ld   d, [hl]                                     ; $4039: $56
	ld   h, h                                        ; $403a: $64
	ld   b, h                                        ; $403b: $44
	ld   [hl-], a                                    ; $403c: $32
	inc  de                                          ; $403d: $13
	ld   h, l                                        ; $403e: $65
	ld   h, a                                        ; $403f: $67
	ld   h, a                                        ; $4040: $67
	cp   d                                           ; $4041: $ba
	adc  d                                           ; $4042: $8a
	xor  d                                           ; $4043: $aa
	call z, $cbab                                    ; $4044: $cc $ab $cb
	xor  d                                           ; $4047: $aa
	cp   e                                           ; $4048: $bb
	cp   d                                           ; $4049: $ba
	sbc  d                                           ; $404a: $9a
	cp   d                                           ; $404b: $ba
	xor  d                                           ; $404c: $aa
	ld   [hl], a                                     ; $404d: $77
	adc  c                                           ; $404e: $89
	ld   [hl], a                                     ; $404f: $77
	ld   h, a                                        ; $4050: $67
	ld   d, h                                        ; $4051: $54
	ld   d, h                                        ; $4052: $54
	ld   d, e                                        ; $4053: $53
	ld   hl, $4611                                   ; $4054: $21 $11 $46
	ld   b, [hl]                                     ; $4057: $46
	adc  b                                           ; $4058: $88
	sbc  d                                           ; $4059: $9a
	sbc  d                                           ; $405a: $9a
	cp   d                                           ; $405b: $ba
	xor  h                                           ; $405c: $ac
	set  1, e                                        ; $405d: $cb $cb
	call z, $abca                                    ; $405f: $cc $ca $ab
	jp   z, $a99a                                    ; $4062: $ca $9a $a9

	adc  c                                           ; $4065: $89
	sbc  b                                           ; $4066: $98
	ld   h, [hl]                                     ; $4067: $66
	ld   [hl], a                                     ; $4068: $77
	ld   h, h                                        ; $4069: $64
	ld   h, h                                        ; $406a: $64
	ld   hl, $1111                                   ; $406b: $21 $11 $11
	ld   h, $58                                      ; $406e: $26 $58
	sbc  c                                           ; $4070: $99
	cp   e                                           ; $4071: $bb
	sbc  d                                           ; $4072: $9a
	cp   d                                           ; $4073: $ba
	cp   l                                           ; $4074: $bd
	cp   c                                           ; $4075: $b9
	sbc  $cc                                         ; $4076: $de $cc
	cp   e                                           ; $4078: $bb
	call z, $bc98                                    ; $4079: $cc $98 $bc
	xor  b                                           ; $407c: $a8
	ld   [hl], a                                     ; $407d: $77
	add  l                                           ; $407e: $85
	ld   h, a                                        ; $407f: $67
	halt                                             ; $4080: $76
	ld   d, e                                        ; $4081: $53
	inc  sp                                          ; $4082: $33
	ld   de, $1511                                   ; $4083: $11 $11 $15
	ld   [hl], h                                     ; $4086: $74
	sbc  e                                           ; $4087: $9b
	add  a                                           ; $4088: $87
	res  7, h                                        ; $4089: $cb $bc
	xor  c                                           ; $408b: $a9
	cp   h                                           ; $408c: $bc
	rst  JumpTable                                         ; $408d: $df
	jp   z, $bbcd                                    ; $408e: $ca $cd $bb

	cp   h                                           ; $4091: $bc
	xor  c                                           ; $4092: $a9
	adc  d                                           ; $4093: $8a
	ld   a, b                                        ; $4094: $78
	and  a                                           ; $4095: $a7
	ld   d, a                                        ; $4096: $57
	ld   h, l                                        ; $4097: $65
	ld   [hl], l                                     ; $4098: $75
	ld   [de], a                                     ; $4099: $12
	ld   b, c                                        ; $409a: $41
	ld   de, $6711                                   ; $409b: $11 $11 $67
	ld   l, e                                        ; $409e: $6b
	sub  $9e                                         ; $409f: $d6 $9e
	ret                                              ; $40a1: $c9


	sbc  e                                           ; $40a2: $9b
	db   $ed                                         ; $40a3: $ed
	cp   a                                           ; $40a4: $bf
	db   $ed                                         ; $40a5: $ed
	res  7, l                                        ; $40a6: $cb $bd
	ret                                              ; $40a8: $c9


	xor  d                                           ; $40a9: $aa
	db   $db                                         ; $40aa: $db
	sbc  b                                           ; $40ab: $98
	ld   [hl], a                                     ; $40ac: $77
	ld   d, a                                        ; $40ad: $57
	sbc  b                                           ; $40ae: $98
	ld   h, l                                        ; $40af: $65
	ld   de, $1132                                   ; $40b0: $11 $32 $11
	ld   de, $336a                                   ; $40b3: $11 $6a $33
	cp   l                                           ; $40b6: $bd
	ld   a, d                                        ; $40b7: $7a
	db   $db                                         ; $40b8: $db
	adc  b                                           ; $40b9: $88
	sbc  h                                           ; $40ba: $9c
	rst  $38                                         ; $40bb: $ff
	ld   [$accb], a                                  ; $40bc: $ea $cb $ac
	cp   h                                           ; $40bf: $bc
	sbc  d                                           ; $40c0: $9a
	cp   h                                           ; $40c1: $bc
	ld   [hl], a                                     ; $40c2: $77
	sbc  b                                           ; $40c3: $98
	add  h                                           ; $40c4: $84
	ld   a, d                                        ; $40c5: $7a
	add  [hl]                                        ; $40c6: $86
	ld   sp, $1123                                   ; $40c7: $31 $23 $11
	ld   de, $a717                                   ; $40ca: $11 $17 $a7
	ld   a, b                                        ; $40cd: $78
	ld   a, d                                        ; $40ce: $7a
	cp   l                                           ; $40cf: $bd
	sbc  b                                           ; $40d0: $98
	cp   e                                           ; $40d1: $bb
	ld   a, a                                        ; $40d2: $7f
	db   $fd                                         ; $40d3: $fd
	xor  c                                           ; $40d4: $a9
	cp   e                                           ; $40d5: $bb
	xor  h                                           ; $40d6: $ac
	db   $fd                                         ; $40d7: $fd
	xor  e                                           ; $40d8: $ab
	and  [hl]                                        ; $40d9: $a6
	ld   c, b                                        ; $40da: $48
	and  a                                           ; $40db: $a7
	sbc  l                                           ; $40dc: $9d
	ld   d, e                                        ; $40dd: $53
	ld   d, d                                        ; $40de: $52
	ld   [hl-], a                                    ; $40df: $32
	ld   b, e                                        ; $40e0: $43
	ld   de, $9516                                   ; $40e1: $11 $16 $95
	ld   l, h                                        ; $40e4: $6c
	ld   l, b                                        ; $40e5: $68
	or   a                                           ; $40e6: $b7
	xor  e                                           ; $40e7: $ab
	sbc  d                                           ; $40e8: $9a
	db   $fd                                         ; $40e9: $fd
	cp   [hl]                                        ; $40ea: $be
	db   $db                                         ; $40eb: $db
	cp   d                                           ; $40ec: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ed: $cf
	xor  b                                           ; $40ee: $a8
	cp   d                                           ; $40ef: $ba
	xor  h                                           ; $40f0: $ac
	ld   [hl], a                                     ; $40f1: $77
	cp   b                                           ; $40f2: $b8
	ld   d, a                                        ; $40f3: $57
	sbc  b                                           ; $40f4: $98
	ld   h, d                                        ; $40f5: $62
	inc  de                                          ; $40f6: $13
	ld   b, e                                        ; $40f7: $43
	ld   de, $4b11                                   ; $40f8: $11 $11 $4b
	add  a                                           ; $40fb: $87
	sbc  e                                           ; $40fc: $9b
	sub  a                                           ; $40fd: $97
	cp   e                                           ; $40fe: $bb
	ld   l, b                                        ; $40ff: $68
	adc  $ff                                         ; $4100: $ce $ff
	db   $db                                         ; $4102: $db
	cp   h                                           ; $4103: $bc
	cp   l                                           ; $4104: $bd
	cp   e                                           ; $4105: $bb
	ret                                              ; $4106: $c9


	adc  e                                           ; $4107: $8b
	cp   b                                           ; $4108: $b8
	and  h                                           ; $4109: $a4
	ld   e, e                                        ; $410a: $5b
	ret  z                                           ; $410b: $c8

	ld   d, h                                        ; $410c: $54
	inc  de                                          ; $410d: $13
	inc  h                                           ; $410e: $24
	ld   sp, $1911                                   ; $410f: $31 $11 $19
	sub  $8c                                         ; $4112: $d6 $8c
	sub  a                                           ; $4114: $97
	ld   h, [hl]                                     ; $4115: $66
	ld   e, [hl]                                     ; $4116: $5e
	sbc  e                                           ; $4117: $9b
	rst  $38                                         ; $4118: $ff
	add  $9b                                         ; $4119: $c6 $9b
	cp   e                                           ; $411b: $bb
	rst  JumpTable                                         ; $411c: $df
	reti                                             ; $411d: $d9


	ld   e, d                                        ; $411e: $5a
	xor  b                                           ; $411f: $a8
	ld   a, b                                        ; $4120: $78
	sbc  d                                           ; $4121: $9a
	ret  c                                           ; $4122: $d8

	ld   b, e                                        ; $4123: $43
	ld   sp, $8513                                   ; $4124: $31 $13 $85
	ld   de, $9911                                   ; $4127: $11 $11 $99
	ld   b, [hl]                                     ; $412a: $46
	adc  d                                           ; $412b: $8a
	adc  b                                           ; $412c: $88
	and  [hl]                                        ; $412d: $a6
	ld   l, h                                        ; $412e: $6c
	rst  $38                                         ; $412f: $ff
	xor  a                                           ; $4130: $af
	db   $eb                                         ; $4131: $eb
	add  [hl]                                        ; $4132: $86
	xor  a                                           ; $4133: $af
	ld   a, [$e959]                                  ; $4134: $fa $59 $e9
	adc  d                                           ; $4137: $8a
	ld   a, c                                        ; $4138: $79
	or   [hl]                                        ; $4139: $b6
	ld   a, d                                        ; $413a: $7a
	ld   b, h                                        ; $413b: $44
	ld   hl, $5336                                   ; $413c: $21 $36 $53
	ld   de, $b12f                                   ; $413f: $11 $2f $b1
	ld   c, b                                        ; $4142: $48
	xor  b                                           ; $4143: $a8
	adc  d                                           ; $4144: $8a
	xor  h                                           ; $4145: $ac
	add  hl, sp                                      ; $4146: $39
	rst  $38                                         ; $4147: $ff
	sub  l                                           ; $4148: $95
	cp   a                                           ; $4149: $bf
	set  3, d                                        ; $414a: $cb $da
	jp   z, $eb3b                                    ; $414c: $ca $3b $eb

	add  a                                           ; $414f: $87
	ld   l, b                                        ; $4150: $68
	adc  c                                           ; $4151: $89
	sub  h                                           ; $4152: $94
	ld   sp, $5127                                   ; $4153: $31 $27 $51
	ld   de, $4811                                   ; $4156: $11 $11 $48
	cp   l                                           ; $4159: $bd
	sub  l                                           ; $415a: $95
	ld   c, b                                        ; $415b: $48
	ld   [$af78], a                                  ; $415c: $ea $78 $af
	db   $fd                                         ; $415f: $fd
	ld   l, b                                        ; $4160: $68
	cp   c                                           ; $4161: $b9
	xor  l                                           ; $4162: $ad
	cp   $97                                         ; $4163: $fe $97
	ld   l, b                                        ; $4165: $68
	adc  e                                           ; $4166: $8b
	and  a                                           ; $4167: $a7
	cp   e                                           ; $4168: $bb
	ld   h, h                                        ; $4169: $64
	ld   [hl-], a                                    ; $416a: $32
	ld   h, h                                        ; $416b: $64
	ld   h, e                                        ; $416c: $63
	ld   [de], a                                     ; $416d: $12
	ld   de, $9a38                                   ; $416e: $11 $38 $9a
	rst  ToBoot                                         ; $4171: $c7
	ld   b, [hl]                                     ; $4172: $46
	ld   l, c                                        ; $4173: $69
	db   $ed                                         ; $4174: $ed
	ld   l, h                                        ; $4175: $6c
	rst  $38                                         ; $4176: $ff
	or   l                                           ; $4177: $b5
	xor  d                                           ; $4178: $aa
	sbc  $bf                                         ; $4179: $de $bf
	sbc  c                                           ; $417b: $99
	ld   d, e                                        ; $417c: $53
	sbc  a                                           ; $417d: $9f
	jp   z, $84a6                                    ; $417e: $ca $a6 $84

	inc  [hl]                                        ; $4181: $34
	ld   b, l                                        ; $4182: $45
	ld   b, [hl]                                     ; $4183: $46
	ld   sp, $1311                                   ; $4184: $31 $11 $13

Jump_0a7_4187:
	db   $ed                                         ; $4187: $ed
	ld   h, h                                        ; $4188: $64
	sub  [hl]                                        ; $4189: $96
	ld   l, b                                        ; $418a: $68
	cp   [hl]                                        ; $418b: $be
	adc  c                                           ; $418c: $89
	rst  $28                                         ; $418d: $ef
	db   $db                                         ; $418e: $db
	add  a                                           ; $418f: $87
	set  5, [hl]                                     ; $4190: $cb $ee
	jp   hl                                          ; $4192: $e9


	ld   l, c                                        ; $4193: $69
	add  [hl]                                        ; $4194: $86
	sbc  d                                           ; $4195: $9a
	call $3365                                       ; $4196: $cd $65 $33
	ld   h, d                                        ; $4199: $62
	ld   h, l                                        ; $419a: $65
	ld   d, d                                        ; $419b: $52
	ld   de, $a717                                   ; $419c: $11 $17 $a7
	dec  d                                           ; $419f: $15
	ld   sp, hl                                      ; $41a0: $f9
	ld   l, b                                        ; $41a1: $68
	ld   l, b                                        ; $41a2: $68
	xor  h                                           ; $41a3: $ac
	rst  $28                                         ; $41a4: $ef
	ld   a, [$bd78]                                  ; $41a5: $fa $78 $bd
	adc  $f8                                         ; $41a8: $ce $f8
	ld   l, c                                        ; $41aa: $69
	rst  $10                                         ; $41ab: $d7
	adc  e                                           ; $41ac: $8b
	sbc  b                                           ; $41ad: $98
	ld   [hl], a                                     ; $41ae: $77
	ld   h, a                                        ; $41af: $67
	ld   b, h                                        ; $41b0: $44
	ld   [de], a                                     ; $41b1: $12
	ld   h, h                                        ; $41b2: $64
	ld   d, c                                        ; $41b3: $51
	ld   de, $fa1e                                   ; $41b4: $11 $1e $fa
	dec  h                                           ; $41b7: $25
	ld   e, c                                        ; $41b8: $59
	cp   [hl]                                        ; $41b9: $be
	sub  l                                           ; $41ba: $95
	xor  a                                           ; $41bb: $af
	db   $fd                                         ; $41bc: $fd
	ld   hl, sp+$7c                                  ; $41bd: $f8 $7c
	cp   a                                           ; $41bf: $bf
	xor  [hl]                                        ; $41c0: $ae
	sub  $67                                         ; $41c1: $d6 $67
	sbc  [hl]                                        ; $41c3: $9e
	call nc, $9867                                   ; $41c4: $d4 $67 $98
	inc  [hl]                                        ; $41c7: $34
	dec  d                                           ; $41c8: $15
	ld   [hl], l                                     ; $41c9: $75
	ld   sp, $3411                                   ; $41ca: $31 $11 $34
	ld   d, a                                        ; $41cd: $57
	sbc  l                                           ; $41ce: $9d
	or   d                                           ; $41cf: $b2
	ld   c, b                                        ; $41d0: $48
	xor  l                                           ; $41d1: $ad
	ld   [$97ef], a                                  ; $41d2: $ea $ef $97
	sbc  e                                           ; $41d5: $9b
	call c, $f6cd                                    ; $41d6: $dc $cd $f6
	ld   a, d                                        ; $41d9: $7a
	sbc  d                                           ; $41da: $9a
	ld   e, b                                        ; $41db: $58
	xor  d                                           ; $41dc: $aa
	sub  [hl]                                        ; $41dd: $96
	ld   sp, $5736                                   ; $41de: $31 $36 $57
	ld   h, c                                        ; $41e1: $61
	ld   [de], a                                     ; $41e2: $12
	inc  sp                                          ; $41e3: $33
	add  hl, sp                                      ; $41e4: $39
	jp   z, $9776                                    ; $41e5: $ca $76 $97

	or   a                                           ; $41e8: $b7
	xor  a                                           ; $41e9: $af
	rst  JumpTable                                         ; $41ea: $df
	sub  $7c                                         ; $41eb: $d6 $7c
	ld   [$fa9e], a                                  ; $41ed: $ea $9e $fa
	ld   h, [hl]                                     ; $41f0: $66
	ld   a, d                                        ; $41f1: $7a
	ret  c                                           ; $41f2: $d8

	ld   e, e                                        ; $41f3: $5b
	add  h                                           ; $41f4: $84
	ld   d, c                                        ; $41f5: $51
	add  hl, sp                                      ; $41f6: $39
	ld   [hl], a                                     ; $41f7: $77
	ld   de, $4311                                   ; $41f8: $11 $11 $43
	ld   a, [hl+]                                    ; $41fb: $2a
	db   $eb                                         ; $41fc: $eb
	xor  b                                           ; $41fd: $a8
	ld   hl, $fc7e                                   ; $41fe: $21 $7e $fc
	rst  $38                                         ; $4201: $ff
	ld   a, b                                        ; $4202: $78
	ld   d, h                                        ; $4203: $54
	rst  JumpTable                                         ; $4204: $df
	ei                                               ; $4205: $fb
	and  h                                           ; $4206: $a4
	ld   [hl], a                                     ; $4207: $77
	add  a                                           ; $4208: $87
	cp   l                                           ; $4209: $bd
	xor  c                                           ; $420a: $a9
	dec  h                                           ; $420b: $25
	ld   d, e                                        ; $420c: $53
	dec  [hl]                                        ; $420d: $35
	sub  e                                           ; $420e: $93
	ld   sp, $2711                                   ; $420f: $31 $11 $27
	xor  l                                           ; $4212: $ad
	and  [hl]                                        ; $4213: $a6
	ld   h, l                                        ; $4214: $65
	ld   l, l                                        ; $4215: $6d
	cp   b                                           ; $4216: $b8
	rst  $38                                         ; $4217: $ff
	db   $db                                         ; $4218: $db
	cp   b                                           ; $4219: $b8
	xor  l                                           ; $421a: $ad
	xor  h                                           ; $421b: $ac
	rst  JumpTable                                         ; $421c: $df
	jp   $ab36                                       ; $421d: $c3 $36 $ab


	ret  c                                           ; $4220: $d8

	ld   d, [hl]                                     ; $4221: $56
	ld   b, [hl]                                     ; $4222: $46
	dec  h                                           ; $4223: $25
	ld   h, a                                        ; $4224: $67
	ld   d, c                                        ; $4225: $51
	ld   de, $5266                                   ; $4226: $11 $66 $52
	dec  a                                           ; $4229: $3d
	db   $fc                                         ; $422a: $fc
	ld   d, c                                        ; $422b: $51
	call $cf6a                                       ; $422c: $cd $6a $cf
	ei                                               ; $422f: $fb
	or   [hl]                                        ; $4230: $b6
	ld   e, d                                        ; $4231: $5a
	rst  JumpTable                                         ; $4232: $df
	reti                                             ; $4233: $d9


	adc  h                                           ; $4234: $8c
	sub  [hl]                                        ; $4235: $96
	ld   h, e                                        ; $4236: $63
	cp   c                                           ; $4237: $b9
	add  [hl]                                        ; $4238: $86
	inc  [hl]                                        ; $4239: $34
	inc  [hl]                                        ; $423a: $34
	ld   b, [hl]                                     ; $423b: $46
	ld   de, $ac11                                   ; $423c: $11 $11 $ac
	sub  [hl]                                        ; $423f: $96
	ld   h, a                                        ; $4240: $67
	xor  d                                           ; $4241: $aa
	ld   [hl], a                                     ; $4242: $77
	xor  h                                           ; $4243: $ac
	rst  $38                                         ; $4244: $ff
	ld   h, [hl]                                     ; $4245: $66
	adc  a                                           ; $4246: $8f
	ld   sp, hl                                      ; $4247: $f9
	sbc  e                                           ; $4248: $9b
	db   $fd                                         ; $4249: $fd
	ld   d, l                                        ; $424a: $55
	ld   c, b                                        ; $424b: $48
	ld   [$5755], a                                  ; $424c: $ea $55 $57

jr_0a7_424f:
	ld   [hl], c                                     ; $424f: $71
	ld   [de], a                                     ; $4250: $12
	ld   c, b                                        ; $4251: $48
	ld   sp, $7b11                                   ; $4252: $31 $11 $7b
	call c, Call_0a7_7c56                            ; $4255: $dc $56 $7c
	sbc  c                                           ; $4258: $99
	jp   hl                                          ; $4259: $e9


	rst  $38                                         ; $425a: $ff
	db   $fd                                         ; $425b: $fd
	ld   c, e                                        ; $425c: $4b
	db   $ec                                         ; $425d: $ec
	or   a                                           ; $425e: $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $425f: $cf
	or   h                                           ; $4260: $b4
	dec  [hl]                                        ; $4261: $35
	adc  h                                           ; $4262: $8c
	ld   [hl], l                                     ; $4263: $75
	ld   sp, $6139                                   ; $4264: $31 $39 $61
	ld   de, $7a13                                   ; $4267: $11 $13 $7a
	halt                                             ; $426a: $76
	db   $db                                         ; $426b: $db
	ld   a, e                                        ; $426c: $7b
	rla                                              ; $426d: $17
	rst  $38                                         ; $426e: $ff
	ld   sp, hl                                      ; $426f: $f9
	ld   e, a                                        ; $4270: $5f
	cp   h                                           ; $4271: $bc
	jp   z, $eaaf                                    ; $4272: $ca $af $ea

	add  l                                           ; $4275: $85
	ld   h, a                                        ; $4276: $67
	ld   d, [hl]                                     ; $4277: $56
	ld   h, a                                        ; $4278: $67
	ld   [hl], h                                     ; $4279: $74
	ld   de, $3364                                   ; $427a: $11 $64 $33
	ld   de, $c88c                                   ; $427d: $11 $8c $c8
	ld   [hl+], a                                    ; $4280: $22
	db   $db                                         ; $4281: $db
	rst  JumpTable                                         ; $4282: $df
	ld   a, [hl]                                     ; $4283: $7e
	db   $ed                                         ; $4284: $ed
	rst  $30                                         ; $4285: $f7
	ld   e, c                                        ; $4286: $59
	rst  $38                                         ; $4287: $ff
	reti                                             ; $4288: $d9


	ld   a, c                                        ; $4289: $79
	push bc                                          ; $428a: $c5
	ld   hl, $a46d                                   ; $428b: $21 $6d $a4
	ld   sp, $2312                                   ; $428e: $31 $12 $23
	ld   [hl-], a                                    ; $4291: $32
	ld   c, b                                        ; $4292: $48
	ld   [hl], l                                     ; $4293: $75
	jr   c, jr_0a7_424f                              ; $4294: $38 $b9

	xor  d                                           ; $4296: $aa
	db   $ec                                         ; $4297: $ec
	db   $dd                                         ; $4298: $dd
	xor  l                                           ; $4299: $ad
	call z, $cfae                                    ; $429a: $cc $ae $cf
	or   a                                           ; $429d: $b7
	and  h                                           ; $429e: $a4
	and  h                                           ; $429f: $a4
	ld   b, [hl]                                     ; $42a0: $46
	jr   c, jr_0a7_42e8                              ; $42a1: $38 $45

	ld   [bc], a                                     ; $42a3: $02
	ld   sp, $a533                                   ; $42a4: $31 $33 $a5
	dec  [hl]                                        ; $42a7: $35
	dec  e                                           ; $42a8: $1d
	ld   hl, sp-$67                                  ; $42a9: $f8 $99
	inc  l                                           ; $42ab: $2c
	rst  $38                                         ; $42ac: $ff
	jp   c, $fd6a                                    ; $42ad: $da $6a $fd

	rst  JumpTable                                         ; $42b0: $df
	adc  e                                           ; $42b1: $8b
	sub  c                                           ; $42b2: $91
	ld   [hl], h                                     ; $42b3: $74
	sbc  b                                           ; $42b4: $98
	ld   h, l                                        ; $42b5: $65
	ld   h, $32                                      ; $42b6: $26 $32
	ld   de, $b725                                   ; $42b8: $11 $25 $b7
	sub  d                                           ; $42bb: $92
	ld   a, b                                        ; $42bc: $78
	ld   e, a                                        ; $42bd: $5f
	ld   d, a                                        ; $42be: $57
	xor  $fa                                         ; $42bf: $ee $fa
	adc  b                                           ; $42c1: $88
	xor  [hl]                                        ; $42c2: $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42c3: $cf
	ei                                               ; $42c4: $fb
	add  [hl]                                        ; $42c5: $86
	ld   [hl], l                                     ; $42c6: $75
	ld   c, b                                        ; $42c7: $48
	ld   c, c                                        ; $42c8: $49
	ld   d, d                                        ; $42c9: $52
	ld   d, c                                        ; $42ca: $51
	ld   d, c                                        ; $42cb: $51
	ld   sp, $af16                                   ; $42cc: $31 $16 $af
	ld   [hl], e                                     ; $42cf: $73
	ld   [hl], $7b                                   ; $42d0: $36 $7b
	rst  $38                                         ; $42d2: $ff
	add  a                                           ; $42d3: $87
	ld   e, e                                        ; $42d4: $5b
	db   $fd                                         ; $42d5: $fd
	xor  b                                           ; $42d6: $a8
	xor  a                                           ; $42d7: $af
	jp   z, $6a43                                    ; $42d8: $ca $43 $6a

	xor  c                                           ; $42db: $a9
	ld   [hl], c                                     ; $42dc: $71
	ld   b, c                                        ; $42dd: $41
	ld   h, $37                                      ; $42de: $26 $37
	ld   c, b                                        ; $42e0: $48
	ld   l, b                                        ; $42e1: $68
	add  c                                           ; $42e2: $81
	sbc  h                                           ; $42e3: $9c
	rst  $30                                         ; $42e4: $f7
	add  h                                           ; $42e5: $84
	xor  a                                           ; $42e6: $af
	ld   l, d                                        ; $42e7: $6a

jr_0a7_42e8:
	cp   d                                           ; $42e8: $ba
	ei                                               ; $42e9: $fb
	ld   [hl], l                                     ; $42ea: $75
	and  [hl]                                        ; $42eb: $a6
	sbc  b                                           ; $42ec: $98
	dec  l                                           ; $42ed: $2d
	xor  c                                           ; $42ee: $a9
	ld   h, c                                        ; $42ef: $61
	dec  d                                           ; $42f0: $15
	db   $dd                                         ; $42f1: $dd
	ld   [hl], c                                     ; $42f2: $71
	add  hl, de                                      ; $42f3: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42f4: $cf
	ld   d, c                                        ; $42f5: $51
	ld   a, e                                        ; $42f6: $7b
	rst  $38                                         ; $42f7: $ff
	or   e                                           ; $42f8: $b3
	cpl                                              ; $42f9: $2f
	call c, $bf65                                    ; $42fa: $dc $65 $bf
	pop  af                                          ; $42fd: $f1
	ld   [hl+], a                                    ; $42fe: $22
	xor  a                                           ; $42ff: $af
	rst  ToBoot                                         ; $4300: $c7
	dec  d                                           ; $4301: $15
	ld   l, c                                        ; $4302: $69
	and  h                                           ; $4303: $a4
	ld   h, d                                        ; $4304: $62
	ld   l, d                                        ; $4305: $6a
	ld   [hl], a                                     ; $4306: $77
	ld   a, d                                        ; $4307: $7a
	cp   d                                           ; $4308: $ba
	ld   l, d                                        ; $4309: $6a
	xor  b                                           ; $430a: $a8
	add  $9b                                         ; $430b: $c6 $9b
	sbc  [hl]                                        ; $430d: $9e
	and  l                                           ; $430e: $a5
	ld   d, h                                        ; $430f: $54
	ld   l, c                                        ; $4310: $69
	and  a                                           ; $4311: $a7
	ld   h, l                                        ; $4312: $65
	ld   [hl], a                                     ; $4313: $77
	ld   h, a                                        ; $4314: $67
	ld   h, a                                        ; $4315: $67
	adc  b                                           ; $4316: $88
	ld   a, c                                        ; $4317: $79
	ld   h, a                                        ; $4318: $67
	and  a                                           ; $4319: $a7
	rst  ToBoot                                         ; $431a: $c7
	ld   e, h                                        ; $431b: $5c
	rst  $38                                         ; $431c: $ff
	ld   [hl], c                                     ; $431d: $71
	dec  bc                                          ; $431e: $0b
	ei                                               ; $431f: $fb
	jp   Jump_0a7_4747                               ; $4320: $c3 $47 $47


	ld   l, e                                        ; $4323: $6b
	adc  c                                           ; $4324: $89
	add  l                                           ; $4325: $85
	ld   d, c                                        ; $4326: $51
	ld   a, b                                        ; $4327: $78
	xor  e                                           ; $4328: $ab
	ld   h, l                                        ; $4329: $65
	ld   [hl], a                                     ; $432a: $77
	sbc  a                                           ; $432b: $9f
	sbc  b                                           ; $432c: $98
	sbc  b                                           ; $432d: $98
	xor  a                                           ; $432e: $af
	sbc  c                                           ; $432f: $99
	add  c                                           ; $4330: $81
	sbc  c                                           ; $4331: $99
	xor  e                                           ; $4332: $ab
	ld   d, l                                        ; $4333: $55
	ld   l, b                                        ; $4334: $68
	ld   a, d                                        ; $4335: $7a
	ld   b, [hl]                                     ; $4336: $46
	ld   [hl], h                                     ; $4337: $74
	sub  l                                           ; $4338: $95
	sbc  h                                           ; $4339: $9c
	halt                                             ; $433a: $76
	inc  [hl]                                        ; $433b: $34
	cp   a                                           ; $433c: $bf
	db   $fc                                         ; $433d: $fc
	ld   d, c                                        ; $433e: $51
	ld   e, l                                        ; $433f: $5d
	ei                                               ; $4340: $fb
	add  h                                           ; $4341: $84
	ld   e, d                                        ; $4342: $5a
	ld   e, c                                        ; $4343: $59
	sub  a                                           ; $4344: $97
	ld   d, [hl]                                     ; $4345: $56
	ld   l, d                                        ; $4346: $6a
	add  $74                                         ; $4347: $c6 $74
	dec  h                                           ; $4349: $25
	adc  l                                           ; $434a: $8d
	ret  c                                           ; $434b: $d8

	ld   b, d                                        ; $434c: $42
	ld   l, [hl]                                     ; $434d: $6e
	db   $ec                                         ; $434e: $ec
	ld   [hl], h                                     ; $434f: $74
	add  hl, sp                                      ; $4350: $39
	sbc  $b5                                         ; $4351: $de $b5
	ld   d, h                                        ; $4353: $54
	ld   a, c                                        ; $4354: $79
	sbc  d                                           ; $4355: $9a
	sbc  c                                           ; $4356: $99
	ld   b, l                                        ; $4357: $45
	ld   e, c                                        ; $4358: $59
	cp   b                                           ; $4359: $b8
	ld   h, c                                        ; $435a: $61
	ld   c, e                                        ; $435b: $4b
	bit  4, [hl]                                     ; $435c: $cb $66
	ld   l, c                                        ; $435e: $69
	sbc  c                                           ; $435f: $99
	or   [hl]                                        ; $4360: $b6
	add  l                                           ; $4361: $85
	xor  l                                           ; $4362: $ad
	ld   a, b                                        ; $4363: $78
	ld   e, b                                        ; $4364: $58
	and  a                                           ; $4365: $a7
	ld   [hl], a                                     ; $4366: $77
	adc  c                                           ; $4367: $89
	sub  l                                           ; $4368: $95
	sbc  b                                           ; $4369: $98
	ld   a, d                                        ; $436a: $7a
	ld   d, a                                        ; $436b: $57
	ld   h, l                                        ; $436c: $65
	sbc  e                                           ; $436d: $9b
	ld   a, b                                        ; $436e: $78
	ld   [hl], a                                     ; $436f: $77
	sub  h                                           ; $4370: $94
	ld   l, e                                        ; $4371: $6b
	cp   d                                           ; $4372: $ba
	ld   [hl], d                                     ; $4373: $72
	ld   a, c                                        ; $4374: $79
	ld   a, [hl]                                     ; $4375: $7e
	sbc  c                                           ; $4376: $99
	add  l                                           ; $4377: $85
	halt                                             ; $4378: $76
	ld   [hl], a                                     ; $4379: $77
	xor  c                                           ; $437a: $a9
	adc  e                                           ; $437b: $8b
	ld   a, d                                        ; $437c: $7a
	add  h                                           ; $437d: $84
	halt                                             ; $437e: $76
	xor  d                                           ; $437f: $aa
	cp   b                                           ; $4380: $b8
	adc  b                                           ; $4381: $88
	ld   c, b                                        ; $4382: $48
	ld   l, b                                        ; $4383: $68
	adc  d                                           ; $4384: $8a
	or   [hl]                                        ; $4385: $b6
	sub  a                                           ; $4386: $97
	adc  d                                           ; $4387: $8a
	ld   h, [hl]                                     ; $4388: $66
	ld   h, a                                        ; $4389: $67
	sbc  h                                           ; $438a: $9c
	xor  e                                           ; $438b: $ab
	ld   [hl], e                                     ; $438c: $73
	ld   h, l                                        ; $438d: $65
	sbc  l                                           ; $438e: $9d
	xor  c                                           ; $438f: $a9
	and  a                                           ; $4390: $a7
	halt                                             ; $4391: $76
	scf                                              ; $4392: $37
	adc  c                                           ; $4393: $89
	res  1, b                                        ; $4394: $cb $88
	ld   d, e                                        ; $4396: $53
	ld   a, b                                        ; $4397: $78
	xor  h                                           ; $4398: $ac
	xor  b                                           ; $4399: $a8
	ld   h, [hl]                                     ; $439a: $66
	ld   l, d                                        ; $439b: $6a
	adc  b                                           ; $439c: $88
	sbc  d                                           ; $439d: $9a
	sub  a                                           ; $439e: $97
	add  [hl]                                        ; $439f: $86
	add  a                                           ; $43a0: $87
	ld   l, b                                        ; $43a1: $68
	adc  d                                           ; $43a2: $8a
	sbc  b                                           ; $43a3: $98
	ld   [hl], a                                     ; $43a4: $77
	ld   [hl], a                                     ; $43a5: $77
	sub  a                                           ; $43a6: $97
	ld   [hl], a                                     ; $43a7: $77
	adc  d                                           ; $43a8: $8a
	xor  c                                           ; $43a9: $a9
	halt                                             ; $43aa: $76
	ld   a, b                                        ; $43ab: $78
	xor  b                                           ; $43ac: $a8
	add  a                                           ; $43ad: $87
	add  a                                           ; $43ae: $87
	ld   a, b                                        ; $43af: $78
	ld   l, b                                        ; $43b0: $68
	ld   [hl], a                                     ; $43b1: $77
	sbc  d                                           ; $43b2: $9a
	sbc  c                                           ; $43b3: $99
	halt                                             ; $43b4: $76
	add  a                                           ; $43b5: $87
	sbc  c                                           ; $43b6: $99
	ld   a, b                                        ; $43b7: $78
	sbc  b                                           ; $43b8: $98
	sbc  b                                           ; $43b9: $98
	ld   a, b                                        ; $43ba: $78
	ld   [hl], a                                     ; $43bb: $77
	adc  c                                           ; $43bc: $89
	xor  d                                           ; $43bd: $aa
	add  a                                           ; $43be: $87
	ld   h, [hl]                                     ; $43bf: $66
	ld   a, c                                        ; $43c0: $79
	adc  c                                           ; $43c1: $89
	sbc  d                                           ; $43c2: $9a
	sbc  b                                           ; $43c3: $98
	ld   [hl], l                                     ; $43c4: $75
	ld   a, c                                        ; $43c5: $79
	ld   a, c                                        ; $43c6: $79
	ld   [hl], a                                     ; $43c7: $77
	sbc  b                                           ; $43c8: $98
	adc  b                                           ; $43c9: $88
	ld   a, b                                        ; $43ca: $78
	sbc  c                                           ; $43cb: $99
	adc  b                                           ; $43cc: $88
	adc  b                                           ; $43cd: $88
	add  a                                           ; $43ce: $87
	ld   [hl], a                                     ; $43cf: $77
	adc  c                                           ; $43d0: $89
	adc  b                                           ; $43d1: $88
	adc  b                                           ; $43d2: $88
	adc  b                                           ; $43d3: $88
	ld   [hl], a                                     ; $43d4: $77
	add  a                                           ; $43d5: $87
	adc  c                                           ; $43d6: $89
	sbc  c                                           ; $43d7: $99
	ld   [hl], a                                     ; $43d8: $77
	ld   [hl], a                                     ; $43d9: $77
	sbc  c                                           ; $43da: $99
	add  a                                           ; $43db: $87
	ld   a, b                                        ; $43dc: $78
	sbc  c                                           ; $43dd: $99
	adc  b                                           ; $43de: $88
	adc  b                                           ; $43df: $88
	sbc  c                                           ; $43e0: $99
	add  a                                           ; $43e1: $87
	adc  b                                           ; $43e2: $88
	add  a                                           ; $43e3: $87
	adc  b                                           ; $43e4: $88
	sbc  c                                           ; $43e5: $99
	add  a                                           ; $43e6: $87
	sbc  b                                           ; $43e7: $98
	adc  b                                           ; $43e8: $88
	ld   a, b                                        ; $43e9: $78
	sbc  b                                           ; $43ea: $98
	add  a                                           ; $43eb: $87
	ld   [hl], a                                     ; $43ec: $77
	adc  b                                           ; $43ed: $88
	adc  b                                           ; $43ee: $88
	adc  c                                           ; $43ef: $89
	sbc  b                                           ; $43f0: $98
	adc  b                                           ; $43f1: $88
	adc  b                                           ; $43f2: $88
	add  a                                           ; $43f3: $87
	adc  b                                           ; $43f4: $88
	adc  c                                           ; $43f5: $89
	adc  b                                           ; $43f6: $88
	adc  b                                           ; $43f7: $88
	sbc  c                                           ; $43f8: $99
	add  a                                           ; $43f9: $87
	ld   [hl], a                                     ; $43fa: $77
	adc  b                                           ; $43fb: $88
	adc  b                                           ; $43fc: $88
	adc  b                                           ; $43fd: $88
	adc  b                                           ; $43fe: $88
	adc  b                                           ; $43ff: $88
	adc  b                                           ; $4400: $88
	adc  b                                           ; $4401: $88
	ld   a, b                                        ; $4402: $78
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
	adc  b                                           ; $459d: $88
	adc  b                                           ; $459e: $88
	adc  b                                           ; $459f: $88
	adc  b                                           ; $45a0: $88
	adc  b                                           ; $45a1: $88
	adc  b                                           ; $45a2: $88
	adc  b                                           ; $45a3: $88
	adc  b                                           ; $45a4: $88
	adc  b                                           ; $45a5: $88
	adc  b                                           ; $45a6: $88
	adc  b                                           ; $45a7: $88
	adc  b                                           ; $45a8: $88
	adc  b                                           ; $45a9: $88
	adc  b                                           ; $45aa: $88
	adc  b                                           ; $45ab: $88
	adc  b                                           ; $45ac: $88
	adc  b                                           ; $45ad: $88
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	adc  b                                           ; $45b0: $88
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	adc  b                                           ; $45b3: $88
	adc  b                                           ; $45b4: $88
	adc  b                                           ; $45b5: $88
	adc  b                                           ; $45b6: $88
	adc  b                                           ; $45b7: $88
	adc  b                                           ; $45b8: $88
	adc  b                                           ; $45b9: $88
	adc  b                                           ; $45ba: $88
	adc  b                                           ; $45bb: $88
	adc  b                                           ; $45bc: $88
	adc  b                                           ; $45bd: $88
	adc  b                                           ; $45be: $88
	adc  b                                           ; $45bf: $88
	adc  b                                           ; $45c0: $88
	adc  b                                           ; $45c1: $88
	adc  b                                           ; $45c2: $88
	adc  b                                           ; $45c3: $88
	adc  b                                           ; $45c4: $88
	adc  b                                           ; $45c5: $88
	adc  b                                           ; $45c6: $88
	adc  b                                           ; $45c7: $88
	adc  b                                           ; $45c8: $88
	adc  b                                           ; $45c9: $88
	adc  b                                           ; $45ca: $88
	adc  b                                           ; $45cb: $88
	adc  b                                           ; $45cc: $88
	adc  b                                           ; $45cd: $88
	adc  b                                           ; $45ce: $88
	adc  b                                           ; $45cf: $88
	adc  b                                           ; $45d0: $88
	adc  b                                           ; $45d1: $88
	adc  b                                           ; $45d2: $88
	adc  b                                           ; $45d3: $88
	adc  b                                           ; $45d4: $88
	adc  b                                           ; $45d5: $88
	adc  b                                           ; $45d6: $88
	adc  b                                           ; $45d7: $88
	adc  b                                           ; $45d8: $88
	adc  b                                           ; $45d9: $88
	adc  b                                           ; $45da: $88
	adc  b                                           ; $45db: $88
	adc  b                                           ; $45dc: $88
	adc  b                                           ; $45dd: $88
	adc  b                                           ; $45de: $88
	adc  b                                           ; $45df: $88
	adc  b                                           ; $45e0: $88
	adc  b                                           ; $45e1: $88
	adc  b                                           ; $45e2: $88
	adc  b                                           ; $45e3: $88
	adc  b                                           ; $45e4: $88
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	adc  b                                           ; $45e7: $88
	adc  b                                           ; $45e8: $88
	adc  b                                           ; $45e9: $88
	adc  b                                           ; $45ea: $88
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	adc  b                                           ; $45ed: $88
	adc  b                                           ; $45ee: $88
	adc  b                                           ; $45ef: $88
	adc  b                                           ; $45f0: $88
	adc  b                                           ; $45f1: $88
	adc  b                                           ; $45f2: $88
	adc  b                                           ; $45f3: $88
	adc  b                                           ; $45f4: $88
	adc  b                                           ; $45f5: $88
	adc  b                                           ; $45f6: $88
	adc  b                                           ; $45f7: $88
	adc  b                                           ; $45f8: $88
	adc  b                                           ; $45f9: $88
	adc  b                                           ; $45fa: $88
	adc  b                                           ; $45fb: $88
	adc  b                                           ; $45fc: $88
	adc  b                                           ; $45fd: $88
	adc  b                                           ; $45fe: $88
	adc  b                                           ; $45ff: $88
	adc  b                                           ; $4600: $88
	adc  b                                           ; $4601: $88
	adc  b                                           ; $4602: $88
	adc  b                                           ; $4603: $88
	adc  b                                           ; $4604: $88
	adc  b                                           ; $4605: $88
	adc  b                                           ; $4606: $88
	adc  b                                           ; $4607: $88
	adc  b                                           ; $4608: $88
	adc  b                                           ; $4609: $88
	adc  b                                           ; $460a: $88
	adc  b                                           ; $460b: $88
	adc  b                                           ; $460c: $88
	adc  b                                           ; $460d: $88
	adc  b                                           ; $460e: $88
	adc  b                                           ; $460f: $88
	adc  b                                           ; $4610: $88
	adc  b                                           ; $4611: $88
	adc  b                                           ; $4612: $88
	adc  b                                           ; $4613: $88
	adc  b                                           ; $4614: $88
	adc  b                                           ; $4615: $88
	adc  b                                           ; $4616: $88
	adc  b                                           ; $4617: $88
	adc  b                                           ; $4618: $88
	adc  b                                           ; $4619: $88
	adc  b                                           ; $461a: $88
	adc  b                                           ; $461b: $88
	adc  b                                           ; $461c: $88
	adc  b                                           ; $461d: $88
	adc  b                                           ; $461e: $88
	adc  b                                           ; $461f: $88
	adc  b                                           ; $4620: $88
	adc  b                                           ; $4621: $88
	adc  b                                           ; $4622: $88
	adc  b                                           ; $4623: $88
	adc  b                                           ; $4624: $88
	adc  b                                           ; $4625: $88
	adc  b                                           ; $4626: $88
	adc  b                                           ; $4627: $88
	adc  b                                           ; $4628: $88
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	adc  b                                           ; $462b: $88
	adc  b                                           ; $462c: $88
	adc  b                                           ; $462d: $88
	adc  b                                           ; $462e: $88
	adc  b                                           ; $462f: $88
	adc  b                                           ; $4630: $88
	adc  b                                           ; $4631: $88
	adc  b                                           ; $4632: $88
	adc  b                                           ; $4633: $88
	adc  b                                           ; $4634: $88
	adc  b                                           ; $4635: $88
	adc  b                                           ; $4636: $88
	adc  b                                           ; $4637: $88
	adc  b                                           ; $4638: $88
	adc  b                                           ; $4639: $88
	adc  b                                           ; $463a: $88
	adc  b                                           ; $463b: $88
	adc  b                                           ; $463c: $88
	adc  b                                           ; $463d: $88
	adc  b                                           ; $463e: $88
	adc  b                                           ; $463f: $88
	adc  b                                           ; $4640: $88
	adc  b                                           ; $4641: $88
	adc  b                                           ; $4642: $88
	adc  b                                           ; $4643: $88
	adc  b                                           ; $4644: $88
	adc  b                                           ; $4645: $88
	adc  b                                           ; $4646: $88
	adc  b                                           ; $4647: $88
	adc  b                                           ; $4648: $88
	adc  b                                           ; $4649: $88
	adc  b                                           ; $464a: $88
	adc  b                                           ; $464b: $88
	adc  b                                           ; $464c: $88
	adc  b                                           ; $464d: $88
	adc  b                                           ; $464e: $88
	adc  b                                           ; $464f: $88
	adc  b                                           ; $4650: $88
	adc  b                                           ; $4651: $88
	adc  b                                           ; $4652: $88
	adc  b                                           ; $4653: $88
	adc  b                                           ; $4654: $88
	adc  b                                           ; $4655: $88
	adc  b                                           ; $4656: $88
	adc  b                                           ; $4657: $88
	adc  b                                           ; $4658: $88
	adc  b                                           ; $4659: $88
	adc  b                                           ; $465a: $88
	adc  b                                           ; $465b: $88
	adc  b                                           ; $465c: $88
	adc  b                                           ; $465d: $88
	adc  b                                           ; $465e: $88
	adc  b                                           ; $465f: $88
	adc  b                                           ; $4660: $88
	adc  b                                           ; $4661: $88
	adc  b                                           ; $4662: $88
	adc  b                                           ; $4663: $88
	adc  b                                           ; $4664: $88
	adc  b                                           ; $4665: $88
	adc  b                                           ; $4666: $88
	adc  b                                           ; $4667: $88
	adc  b                                           ; $4668: $88
	adc  b                                           ; $4669: $88
	adc  b                                           ; $466a: $88
	adc  b                                           ; $466b: $88
	adc  b                                           ; $466c: $88
	adc  b                                           ; $466d: $88
	adc  b                                           ; $466e: $88
	adc  b                                           ; $466f: $88
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  b                                           ; $4672: $88
	adc  b                                           ; $4673: $88
	adc  b                                           ; $4674: $88

Jump_0a7_4675:
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

Jump_0a7_4747:
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

Jump_0a7_4886:
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

Jump_0a7_4922:
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
	add  a                                           ; $5180: $87
	ld   [hl], a                                     ; $5181: $77
	ld   [hl], a                                     ; $5182: $77
	adc  b                                           ; $5183: $88
	adc  b                                           ; $5184: $88
	adc  b                                           ; $5185: $88
	adc  b                                           ; $5186: $88
	adc  c                                           ; $5187: $89
	sbc  c                                           ; $5188: $99
	sbc  c                                           ; $5189: $99
	sbc  c                                           ; $518a: $99
	sbc  c                                           ; $518b: $99
	sbc  c                                           ; $518c: $99
	adc  b                                           ; $518d: $88
	adc  b                                           ; $518e: $88
	add  a                                           ; $518f: $87
	ld   [hl], a                                     ; $5190: $77
	ld   [hl], a                                     ; $5191: $77
	ld   [hl], a                                     ; $5192: $77
	ld   [hl], a                                     ; $5193: $77
	ld   [hl], a                                     ; $5194: $77
	ld   [hl], a                                     ; $5195: $77
	ld   a, b                                        ; $5196: $78
	adc  b                                           ; $5197: $88
	sbc  b                                           ; $5198: $98
	sbc  c                                           ; $5199: $99
	sbc  c                                           ; $519a: $99
	xor  d                                           ; $519b: $aa
	xor  d                                           ; $519c: $aa
	sbc  c                                           ; $519d: $99
	sbc  b                                           ; $519e: $98
	sbc  b                                           ; $519f: $98
	ld   [hl], a                                     ; $51a0: $77
	ld   [hl], a                                     ; $51a1: $77
	ld   h, [hl]                                     ; $51a2: $66
	ld   h, [hl]                                     ; $51a3: $66
	ld   h, l                                        ; $51a4: $65
	ld   d, l                                        ; $51a5: $55
	ld   d, [hl]                                     ; $51a6: $56
	ld   h, [hl]                                     ; $51a7: $66
	ld   [hl], a                                     ; $51a8: $77
	adc  b                                           ; $51a9: $88
	xor  d                                           ; $51aa: $aa
	cp   e                                           ; $51ab: $bb
	call z, $dcdd                                    ; $51ac: $cc $dd $dc
	call z, $87ba                                    ; $51af: $cc $ba $87
	ld   d, h                                        ; $51b2: $54
	ld   [hl-], a                                    ; $51b3: $32
	ld   de, $1111                                   ; $51b4: $11 $11 $11
	dec  h                                           ; $51b7: $25
	ld   d, [hl]                                     ; $51b8: $56
	ld   h, [hl]                                     ; $51b9: $66
	xor  h                                           ; $51ba: $ac
	rst  $38                                         ; $51bb: $ff
	rst  $38                                         ; $51bc: $ff
	rst  $38                                         ; $51bd: $ff
	rst  $38                                         ; $51be: $ff
	rst  $28                                         ; $51bf: $ef
	db   $ed                                         ; $51c0: $ed
	sub  a                                           ; $51c1: $97
	ld   b, d                                        ; $51c2: $42
	inc  hl                                          ; $51c3: $23
	ld   b, l                                        ; $51c4: $45
	ld   b, e                                        ; $51c5: $43
	ld   bc, $1411                                   ; $51c6: $01 $11 $14
	ld   l, c                                        ; $51c9: $69
	halt                                             ; $51ca: $76
	ld   b, e                                        ; $51cb: $43
	ld   a, d                                        ; $51cc: $7a
	rst  $38                                         ; $51cd: $ff
	rst  $38                                         ; $51ce: $ff
	cp   $ec                                         ; $51cf: $fe $ec
	rst  JumpTable                                         ; $51d1: $df
	cp   $b6                                         ; $51d2: $fe $b6
	ld   [hl-], a                                    ; $51d4: $32
	ld   [hl], $78                                   ; $51d5: $36 $78
	ld   [hl], e                                     ; $51d7: $73
	ld   de, $1411                                   ; $51d8: $11 $11 $14
	ld   h, a                                        ; $51db: $67
	ld   d, e                                        ; $51dc: $53
	ld   de, $ff59                                   ; $51dd: $11 $59 $ff
	rst  $38                                         ; $51e0: $ff
	rst  $38                                         ; $51e1: $ff
	db   $ed                                         ; $51e2: $ed
	rst  $38                                         ; $51e3: $ff
	rst  $38                                         ; $51e4: $ff
	or   [hl]                                        ; $51e5: $b6
	ld   sp, $7a46                                   ; $51e6: $31 $46 $7a
	add  e                                           ; $51e9: $83
	ld   de, $1411                                   ; $51ea: $11 $11 $14
	ld   b, l                                        ; $51ed: $45
	ld   d, c                                        ; $51ee: $51
	ld   de, $cf28                                   ; $51ef: $11 $28 $cf
	rst  $38                                         ; $51f2: $ff
	rst  $38                                         ; $51f3: $ff
	rst  $38                                         ; $51f4: $ff
	rst  $38                                         ; $51f5: $ff
	rst  $38                                         ; $51f6: $ff
	jp   hl                                          ; $51f7: $e9


	ld   b, d                                        ; $51f8: $42
	dec  h                                           ; $51f9: $25
	ld   h, a                                        ; $51fa: $67
	add  h                                           ; $51fb: $84
	ld   de, $1111                                   ; $51fc: $11 $11 $11
	ld   b, e                                        ; $51ff: $43
	ld   d, e                                        ; $5200: $53
	ld   de, $af16                                   ; $5201: $11 $16 $af
	rst  $38                                         ; $5204: $ff
	rst  $38                                         ; $5205: $ff
	rst  $38                                         ; $5206: $ff
	rst  $38                                         ; $5207: $ff
	rst  $38                                         ; $5208: $ff
	ei                                               ; $5209: $fb
	ld   h, e                                        ; $520a: $63
	inc  hl                                          ; $520b: $23
	ld   d, [hl]                                     ; $520c: $56
	halt                                             ; $520d: $76
	ld   de, $1111                                   ; $520e: $11 $11 $11
	inc  sp                                          ; $5211: $33
	ld   b, l                                        ; $5212: $45
	ld   de, $8c12                                   ; $5213: $11 $12 $8c
	rst  $38                                         ; $5216: $ff
	rst  $38                                         ; $5217: $ff
	rst  $38                                         ; $5218: $ff
	rst  $38                                         ; $5219: $ff
	rst  $38                                         ; $521a: $ff
	cp   $83                                         ; $521b: $fe $83
	ld   [de], a                                     ; $521d: $12
	ld   b, l                                        ; $521e: $45
	ld   h, a                                        ; $521f: $67
	ld   sp, $1111                                   ; $5220: $31 $11 $11
	inc  hl                                          ; $5223: $23
	dec  [hl]                                        ; $5224: $35
	ld   hl, $6b11                                   ; $5225: $21 $11 $6b
	rst  $38                                         ; $5228: $ff
	rst  $38                                         ; $5229: $ff
	rst  $38                                         ; $522a: $ff
	rst  $38                                         ; $522b: $ff
	rst  $38                                         ; $522c: $ff
	cp   $a5                                         ; $522d: $fe $a5
	ld   hl, $5634                                   ; $522f: $21 $34 $56
	ld   b, c                                        ; $5232: $41
	ld   de, $1211                                   ; $5233: $11 $11 $12
	dec  [hl]                                        ; $5236: $35
	ld   b, c                                        ; $5237: $41
	ld   de, $ff5a                                   ; $5238: $11 $5a $ff
	rst  $38                                         ; $523b: $ff
	rst  $38                                         ; $523c: $ff
	rst  $38                                         ; $523d: $ff
	rst  $38                                         ; $523e: $ff
	rst  $38                                         ; $523f: $ff
	and  h                                           ; $5240: $a4
	ld   de, $4513                                   ; $5241: $11 $13 $45
	ld   sp, $1111                                   ; $5244: $31 $11 $11
	ld   [de], a                                     ; $5247: $12
	ld   d, [hl]                                     ; $5248: $56
	ld   b, d                                        ; $5249: $42
	ld   de, $ff8e                                   ; $524a: $11 $8e $ff
	rst  $38                                         ; $524d: $ff
	rst  $38                                         ; $524e: $ff
	cp   $ff                                         ; $524f: $fe $ff
	xor  $71                                         ; $5251: $ee $71
	ld   de, $3512                                   ; $5253: $11 $12 $35
	ld   hl, $1111                                   ; $5256: $21 $11 $11
	dec  d                                           ; $5259: $15
	xor  c                                           ; $525a: $a9
	ld   d, c                                        ; $525b: $51
	dec  d                                           ; $525c: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $525d: $cf
	rst  $38                                         ; $525e: $ff
	rst  $38                                         ; $525f: $ff
	rst  $38                                         ; $5260: $ff
	call $d9ff                                       ; $5261: $cd $ff $d9
	ld   de, $1311                                   ; $5264: $11 $11 $13
	ld   d, e                                        ; $5267: $53
	ld   de, $1211                                   ; $5268: $11 $11 $12
	ld   l, l                                        ; $526b: $6d
	rst  ToBoot                                         ; $526c: $c7
	ld   sp, $ff5f                                   ; $526d: $31 $5f $ff
	rst  $38                                         ; $5270: $ff
	rst  $38                                         ; $5271: $ff
	call z, $fabf                                    ; $5272: $cc $bf $fa
	ld   h, c                                        ; $5275: $61
	ld   de, $5512                                   ; $5276: $11 $12 $55
	ld   b, c                                        ; $5279: $41
	ld   de, $4811                                   ; $527a: $11 $11 $48
	sbc  $74                                         ; $527d: $de $74
	rla                                              ; $527f: $17
	rst  $38                                         ; $5280: $ff
	rst  $38                                         ; $5281: $ff
	rst  $38                                         ; $5282: $ff
	jp   hl                                          ; $5283: $e9


	sbc  d                                           ; $5284: $9a
	cp   $74                                         ; $5285: $fe $74
	ld   de, $4611                                   ; $5287: $11 $11 $46
	ld   d, h                                        ; $528a: $54
	ld   de, $1611                                   ; $528b: $11 $11 $16
	cp   a                                           ; $528e: $bf
	ld   a, [$bf65]                                  ; $528f: $fa $65 $bf
	rst  $38                                         ; $5292: $ff
	rst  $38                                         ; $5293: $ff
	ei                                               ; $5294: $fb
	ld   b, [hl]                                     ; $5295: $46

Call_0a7_5296:
	ld   l, e                                        ; $5296: $6b
	push bc                                          ; $5297: $c5
	ld   d, c                                        ; $5298: $51
	ld   [de], a                                     ; $5299: $12
	ld   e, d                                        ; $529a: $5a
	or   a                                           ; $529b: $b7
	ld   h, c                                        ; $529c: $61
	ld   de, $1211                                   ; $529d: $11 $11 $12
	ld   a, h                                        ; $52a0: $7c
	cp   $ce                                         ; $52a1: $fe $ce
	rst  $38                                         ; $52a3: $ff
	rst  $38                                         ; $52a4: $ff
	rst  $38                                         ; $52a5: $ff
	or   e                                           ; $52a6: $b3
	ld   de, $a819                                   ; $52a7: $11 $19 $a8
	ret  z                                           ; $52aa: $c8

Jump_0a7_52ab:
	ld   e, b                                        ; $52ab: $58
	cp   a                                           ; $52ac: $bf
	db   $ed                                         ; $52ad: $ed
	pop  bc                                          ; $52ae: $c1
	ld   de, $1111                                   ; $52af: $11 $11 $11
	xor  a                                           ; $52b2: $af
	rst  $38                                         ; $52b3: $ff
	rst  $28                                         ; $52b4: $ef
	rst  $38                                         ; $52b5: $ff
	rst  $38                                         ; $52b6: $ff
	ld   hl, sp+$11                                  ; $52b7: $f8 $11
	ld   de, $cb18                                   ; $52b9: $11 $18 $cb
	rst  $38                                         ; $52bc: $ff
	rst  $28                                         ; $52bd: $ef
	rst  $38                                         ; $52be: $ff
	cp   $d1                                         ; $52bf: $fe $d1
	ld   de, $1111                                   ; $52c1: $11 $11 $11
	adc  a                                           ; $52c4: $8f
	rst  $38                                         ; $52c5: $ff
	rst  $38                                         ; $52c6: $ff
	rst  $38                                         ; $52c7: $ff
	rst  $38                                         ; $52c8: $ff
	pop  af                                          ; $52c9: $f1
	ld   de, $1111                                   ; $52ca: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52cd: $cf
	rst  $38                                         ; $52ce: $ff
	rst  $38                                         ; $52cf: $ff
	rst  $38                                         ; $52d0: $ff
	call z, $11d4                                    ; $52d1: $cc $d4 $11
	ld   de, $6f11                                   ; $52d4: $11 $11 $6f
	rst  $38                                         ; $52d7: $ff
	rst  $38                                         ; $52d8: $ff
	rst  $38                                         ; $52d9: $ff
	rst  $38                                         ; $52da: $ff
	or   $11                                         ; $52db: $f6 $11
	ld   de, $cf12                                   ; $52dd: $11 $12 $cf
	rst  $38                                         ; $52e0: $ff
	rst  $38                                         ; $52e1: $ff
	db   $fd                                         ; $52e2: $fd
	ld   sp, $1158                                   ; $52e3: $31 $58 $11
	ld   de, $1f11                                   ; $52e6: $11 $11 $1f
	rst  $38                                         ; $52e9: $ff
	rst  $38                                         ; $52ea: $ff
	rst  $38                                         ; $52eb: $ff
	rst  $38                                         ; $52ec: $ff
	pop  af                                          ; $52ed: $f1
	ld   de, $1c11                                   ; $52ee: $11 $11 $1c
	rst  $38                                         ; $52f1: $ff
	rst  $38                                         ; $52f2: $ff
	rst  $38                                         ; $52f3: $ff
	rst  $38                                         ; $52f4: $ff
	ld   de, $5111                                   ; $52f5: $11 $11 $51
	ld   de, $1f11                                   ; $52f8: $11 $11 $1f
	rst  $38                                         ; $52fb: $ff
	rst  $38                                         ; $52fc: $ff
	ld   sp, hl                                      ; $52fd: $f9
	cp   [hl]                                        ; $52fe: $be
	or   c                                           ; $52ff: $b1
	ld   de, $9f11                                   ; $5300: $11 $11 $9f
	rst  $38                                         ; $5303: $ff
	rst  $38                                         ; $5304: $ff
	rst  $38                                         ; $5305: $ff
	db   $fc                                         ; $5306: $fc
	ld   de, $7311                                   ; $5307: $11 $11 $73
	ld   de, $1f11                                   ; $530a: $11 $11 $1f
	rst  $38                                         ; $530d: $ff
	rst  $38                                         ; $530e: $ff
	db   $f4                                         ; $530f: $f4
	cp   d                                           ; $5310: $ba
	ld   b, c                                        ; $5311: $41
	ld   de, rAUD1LEN                                   ; $5312: $11 $11 $ff
	rst  $38                                         ; $5315: $ff
	rst  $38                                         ; $5316: $ff
	rst  $38                                         ; $5317: $ff
	rst  $30                                         ; $5318: $f7
	ld   de, $6611                                   ; $5319: $11 $11 $66
	ld   de, $1b11                                   ; $531c: $11 $11 $1b
	rst  $38                                         ; $531f: $ff
	rst  $38                                         ; $5320: $ff
	ld   sp, hl                                      ; $5321: $f9
	adc  b                                           ; $5322: $88
	ld   [de], a                                     ; $5323: $12
	ld   de, $bf11                                   ; $5324: $11 $11 $bf
	rst  $38                                         ; $5327: $ff
	rst  $38                                         ; $5328: $ff
	rst  $38                                         ; $5329: $ff
	rst  $30                                         ; $532a: $f7
	ld   de, $5613                                   ; $532b: $11 $13 $56
	ld   de, $1611                                   ; $532e: $11 $11 $16
	rst  $38                                         ; $5331: $ff
	rst  $38                                         ; $5332: $ff
	db   $fd                                         ; $5333: $fd
	ld   h, l                                        ; $5334: $65
	ld   de, $3111                                   ; $5335: $11 $11 $31
	ld   l, a                                        ; $5338: $6f
	rst  $38                                         ; $5339: $ff
	rst  $38                                         ; $533a: $ff
	rst  $38                                         ; $533b: $ff
	ei                                               ; $533c: $fb
	ld   de, $6712                                   ; $533d: $11 $12 $67
	ld   de, $1411                                   ; $5340: $11 $11 $14
	cp   a                                           ; $5343: $bf
	rst  $38                                         ; $5344: $ff
	rst  $38                                         ; $5345: $ff
	ld   h, l                                        ; $5346: $65
	ld   de, $3311                                   ; $5347: $11 $11 $33
	cpl                                              ; $534a: $2f
	rst  $38                                         ; $534b: $ff
	rst  $38                                         ; $534c: $ff
	rst  $38                                         ; $534d: $ff
	rst  $38                                         ; $534e: $ff
	ld   de, $6611                                   ; $534f: $11 $11 $66
	ld   d, c                                        ; $5352: $51
	ld   de, $4f11                                   ; $5353: $11 $11 $4f
	rst  $38                                         ; $5356: $ff
	rst  $38                                         ; $5357: $ff
	call nc, $1131                                   ; $5358: $d4 $31 $11
	rla                                              ; $535b: $17
	add  hl, de                                      ; $535c: $19
	rst  $38                                         ; $535d: $ff
	rst  $38                                         ; $535e: $ff
	rst  $38                                         ; $535f: $ff
	rst  $38                                         ; $5360: $ff
	ld   [hl], c                                     ; $5361: $71
	ld   de, $7166                                   ; $5362: $11 $66 $71
	ld   de, $1511                                   ; $5365: $11 $11 $15
	rst  $38                                         ; $5368: $ff
	rst  $38                                         ; $5369: $ff
	push af                                          ; $536a: $f5
	ld   sp, $1212                                   ; $536b: $31 $12 $12
	ld   hl, $ffff                                   ; $536e: $21 $ff $ff
	rst  $38                                         ; $5371: $ff
	rst  $38                                         ; $5372: $ff
	ldh  a, [c]                                      ; $5373: $f2
	ld   de, $6516                                   ; $5374: $11 $16 $65
	ld   de, $1111                                   ; $5377: $11 $11 $11
	xor  a                                           ; $537a: $af
	rst  $38                                         ; $537b: $ff
	rst  $38                                         ; $537c: $ff
	ld   [bc], a                                     ; $537d: $02
	inc  de                                          ; $537e: $13
	ld   de, $7f51                                   ; $537f: $11 $51 $7f
	rst  $38                                         ; $5382: $ff
	rst  $38                                         ; $5383: $ff
	rst  $38                                         ; $5384: $ff
	db   $fc                                         ; $5385: $fc
	ld   de, $6715                                   ; $5386: $11 $15 $67
	ld   de, $1111                                   ; $5389: $11 $11 $11
	inc  e                                           ; $538c: $1c
	rst  $38                                         ; $538d: $ff
	rst  $38                                         ; $538e: $ff
	ld   h, c                                        ; $538f: $61
	ld   de, $1151                                   ; $5390: $11 $51 $11
	rra                                              ; $5393: $1f
	rst  $38                                         ; $5394: $ff
	cp   $ff                                         ; $5395: $fe $ff
	rst  $38                                         ; $5397: $ff
	ld   [hl], c                                     ; $5398: $71
	ld   de, $3166                                   ; $5399: $11 $66 $31
	ld   de, $1111                                   ; $539c: $11 $11 $11
	rst  $38                                         ; $539f: $ff
	rst  $38                                         ; $53a0: $ff
	pop  af                                          ; $53a1: $f1
	ld   [hl+], a                                    ; $53a2: $22
	ld   [hl+], a                                    ; $53a3: $22
	ld   de, rAUD1HIGH                                   ; $53a4: $11 $14 $ff
	rst  $38                                         ; $53a7: $ff
	rst  $38                                         ; $53a8: $ff
	rst  $38                                         ; $53a9: $ff
	di                                               ; $53aa: $f3
	ld   de, $4135                                   ; $53ab: $11 $35 $41
	ld   de, $1111                                   ; $53ae: $11 $11 $11
	rra                                              ; $53b1: $1f
	rst  $38                                         ; $53b2: $ff
	rst  $38                                         ; $53b3: $ff
	rla                                              ; $53b4: $17
	ld   b, e                                        ; $53b5: $43
	ld   de, $af14                                   ; $53b6: $11 $14 $af
	rst  $38                                         ; $53b9: $ff
	rst  $28                                         ; $53ba: $ef
	rst  $38                                         ; $53bb: $ff
	db   $fc                                         ; $53bc: $fc
	ld   hl, $2412                                   ; $53bd: $21 $12 $24
	ld   de, $1111                                   ; $53c0: $11 $11 $11
	inc  de                                          ; $53c3: $13
	rst  $38                                         ; $53c4: $ff
	rst  $38                                         ; $53c5: $ff
	or   l                                           ; $53c6: $b5
	and  e                                           ; $53c7: $a3
	ld   hl, $6c13                                   ; $53c8: $21 $13 $6c
	db   $fd                                         ; $53cb: $fd
	rst  $28                                         ; $53cc: $ef
	rst  $38                                         ; $53cd: $ff
	rst  $38                                         ; $53ce: $ff
	push bc                                          ; $53cf: $c5
	ld   de, $5412                                   ; $53d0: $11 $12 $54
	ld   de, $1111                                   ; $53d3: $11 $11 $11
	ld   e, a                                        ; $53d6: $5f
	rst  $38                                         ; $53d7: $ff
	db   $fc                                         ; $53d8: $fc
	xor  h                                           ; $53d9: $ac
	ld   hl, $5411                                   ; $53da: $21 $11 $54
	xor  e                                           ; $53dd: $ab
	xor  [hl]                                        ; $53de: $ae
	rst  $38                                         ; $53df: $ff
	rst  $38                                         ; $53e0: $ff
	cp   $71                                         ; $53e1: $fe $71
	ld   de, $3126                                   ; $53e3: $11 $26 $31
	ld   de, $1611                                   ; $53e6: $11 $11 $16
	rst  $38                                         ; $53e9: $ff
	rst  $38                                         ; $53ea: $ff
	cp   l                                           ; $53eb: $bd
	jp   nz, $1511                                   ; $53ec: $c2 $11 $15

	jr   z, @+$7c                                    ; $53ef: $28 $7a

	rst  $38                                         ; $53f1: $ff
	rst  $38                                         ; $53f2: $ff
	rst  $38                                         ; $53f3: $ff
	ld   a, [$1311]                                  ; $53f4: $fa $11 $13
	ld   h, d                                        ; $53f7: $62
	ld   de, $1111                                   ; $53f8: $11 $11 $11
	ld   e, a                                        ; $53fb: $5f
	rst  $38                                         ; $53fc: $ff
	db   $fd                                         ; $53fd: $fd
	db   $fd                                         ; $53fe: $fd
	ld   sp, $4111                                   ; $53ff: $31 $11 $41
	ld   d, h                                        ; $5402: $54
	sbc  a                                           ; $5403: $9f
	rst  $38                                         ; $5404: $ff
	rst  $38                                         ; $5405: $ff
	rst  $38                                         ; $5406: $ff
	or   c                                           ; $5407: $b1
	ld   de, $1136                                   ; $5408: $11 $36 $11
	ld   de, $1511                                   ; $540b: $11 $11 $15
	rst  $38                                         ; $540e: $ff
	rst  $38                                         ; $540f: $ff
	rst  $38                                         ; $5410: $ff
	push af                                          ; $5411: $f5
	ld   de, $1214                                   ; $5412: $11 $14 $12
	ld   d, $ef                                      ; $5415: $16 $ef
	rst  $38                                         ; $5417: $ff
	rst  $38                                         ; $5418: $ff
	cp   $21                                         ; $5419: $fe $21
	inc  d                                           ; $541b: $14
	ld   h, c                                        ; $541c: $61
	ld   de, $1111                                   ; $541d: $11 $11 $11
	ccf                                              ; $5420: $3f
	rst  $38                                         ; $5421: $ff
	rst  $38                                         ; $5422: $ff
	rst  $38                                         ; $5423: $ff
	ld   [hl], c                                     ; $5424: $71
	ld   de, $1161                                   ; $5425: $11 $61 $11
	inc  l                                           ; $5428: $2c
	rst  $38                                         ; $5429: $ff
	rst  $38                                         ; $542a: $ff
	rst  $38                                         ; $542b: $ff
	di                                               ; $542c: $f3
	inc  [hl]                                        ; $542d: $34
	ld   d, [hl]                                     ; $542e: $56
	ld   de, $1111                                   ; $542f: $11 $11 $11
	ld   de, $ffff                                   ; $5432: $11 $ff $ff
	rst  $38                                         ; $5435: $ff
	db   $fc                                         ; $5436: $fc
	ld   d, c                                        ; $5437: $51
	jr   jr_0a7_544b                                 ; $5438: $18 $11

	ld   de, $fc8e                                   ; $543a: $11 $8e $fc
	rst  $38                                         ; $543d: $ff
	rst  $38                                         ; $543e: $ff
	add  a                                           ; $543f: $87
	sbc  b                                           ; $5440: $98
	ld   [hl], c                                     ; $5441: $71
	ld   de, $1111                                   ; $5442: $11 $11 $11
	rra                                              ; $5445: $1f
	rst  $38                                         ; $5446: $ff
	rst  JumpTable                                         ; $5447: $df
	rst  $38                                         ; $5448: $ff
	ei                                               ; $5449: $fb
	ld   [de], a                                     ; $544a: $12

jr_0a7_544b:
	db   $f4                                         ; $544b: $f4
	ld   de, $5911                                   ; $544c: $11 $11 $59
	inc  a                                           ; $544f: $3c
	rst  $38                                         ; $5450: $ff
	rst  $38                                         ; $5451: $ff
	rst  $38                                         ; $5452: $ff
	db   $fc                                         ; $5453: $fc
	ld   hl, $1131                                   ; $5454: $21 $31 $11
	ld   de, $a11f                                   ; $5457: $11 $1f $a1
	rst  $38                                         ; $545a: $ff
	rst  $38                                         ; $545b: $ff
	ei                                               ; $545c: $fb
	rst  JumpTable                                         ; $545d: $df
	or   $41                                         ; $545e: $f6 $41
	ld   de, $1a11                                   ; $5460: $11 $11 $1a
	rst  $38                                         ; $5463: $ff
	rst  $38                                         ; $5464: $ff
	rst  $38                                         ; $5465: $ff
	db   $fd                                         ; $5466: $fd
	adc  e                                           ; $5467: $8b
	sub  l                                           ; $5468: $95
	ld   de, $1811                                   ; $5469: $11 $11 $18
	ld   de, $dd25                                   ; $546c: $11 $25 $dd
	add  sp, -$21                                    ; $546f: $e8 $df
	rst  $38                                         ; $5471: $ff
	jp   c, $949a                                    ; $5472: $da $9a $94

	ld   d, a                                        ; $5475: $57
	sub  a                                           ; $5476: $97
	ld   b, h                                        ; $5477: $44
	ld   a, c                                        ; $5478: $79
	sbc  d                                           ; $5479: $9a
	xor  h                                           ; $547a: $ac
	call z, $a9aa                                    ; $547b: $cc $aa $a9
	sub  a                                           ; $547e: $97
	ld   d, e                                        ; $547f: $53
	inc  [hl]                                        ; $5480: $34
	inc  sp                                          ; $5481: $33
	inc  [hl]                                        ; $5482: $34
	ld   [hl], a                                     ; $5483: $77
	ld   a, b                                        ; $5484: $78
	adc  d                                           ; $5485: $8a

Jump_0a7_5486:
	sbc  c                                           ; $5486: $99
	adc  b                                           ; $5487: $88

Jump_0a7_5488:
	sbc  c                                           ; $5488: $99
	xor  c                                           ; $5489: $a9
	xor  e                                           ; $548a: $ab
	cp   l                                           ; $548b: $bd
	call z, $bbcc                                    ; $548c: $cc $cc $bb
	xor  d                                           ; $548f: $aa
	xor  c                                           ; $5490: $a9
	add  a                                           ; $5491: $87
	ld   d, l                                        ; $5492: $55
	ld   d, l                                        ; $5493: $55
	ld   b, e                                        ; $5494: $43
	ld   b, l                                        ; $5495: $45
	ld   d, l                                        ; $5496: $55
	ld   d, l                                        ; $5497: $55
	ld   h, a                                        ; $5498: $67
	ld   [hl], a                                     ; $5499: $77
	ld   a, b                                        ; $549a: $78
	adc  c                                           ; $549b: $89
	sbc  b                                           ; $549c: $98
	sbc  d                                           ; $549d: $9a
	xor  d                                           ; $549e: $aa
	xor  e                                           ; $549f: $ab
	cp   e                                           ; $54a0: $bb
	cp   e                                           ; $54a1: $bb
	cp   h                                           ; $54a2: $bc
	cp   e                                           ; $54a3: $bb
	xor  c                                           ; $54a4: $a9
	add  a                                           ; $54a5: $87
	ld   [hl], a                                     ; $54a6: $77

Call_0a7_54a7:
	ld   h, a                                        ; $54a7: $67
	halt                                             ; $54a8: $76
	ld   h, [hl]                                     ; $54a9: $66
	ld   h, [hl]                                     ; $54aa: $66
	ld   d, l                                        ; $54ab: $55
	ld   d, l                                        ; $54ac: $55
	ld   d, l                                        ; $54ad: $55
	ld   h, [hl]                                     ; $54ae: $66
	ld   h, a                                        ; $54af: $67
	ld   a, b                                        ; $54b0: $78
	adc  c                                           ; $54b1: $89
	xor  c                                           ; $54b2: $a9
	xor  c                                           ; $54b3: $a9
	xor  d                                           ; $54b4: $aa
	xor  d                                           ; $54b5: $aa
	sbc  d                                           ; $54b6: $9a
	sbc  c                                           ; $54b7: $99
	sbc  c                                           ; $54b8: $99

Call_0a7_54b9:
	adc  b                                           ; $54b9: $88
	sbc  c                                           ; $54ba: $99
	adc  b                                           ; $54bb: $88
	adc  b                                           ; $54bc: $88
	add  a                                           ; $54bd: $87
	ld   [hl], a                                     ; $54be: $77
	ld   [hl], a                                     ; $54bf: $77
	ld   h, [hl]                                     ; $54c0: $66
	ld   h, [hl]                                     ; $54c1: $66
	ld   [hl], a                                     ; $54c2: $77
	ld   [hl], a                                     ; $54c3: $77
	ld   [hl], a                                     ; $54c4: $77
	ld   a, b                                        ; $54c5: $78
	adc  b                                           ; $54c6: $88
	adc  c                                           ; $54c7: $89
	sbc  c                                           ; $54c8: $99
	sbc  c                                           ; $54c9: $99
	sbc  c                                           ; $54ca: $99
	adc  c                                           ; $54cb: $89
	adc  c                                           ; $54cc: $89
	sbc  b                                           ; $54cd: $98
	adc  b                                           ; $54ce: $88
	add  a                                           ; $54cf: $87
	ld   [hl], a                                     ; $54d0: $77
	ld   [hl], a                                     ; $54d1: $77
	ld   [hl], a                                     ; $54d2: $77
	ld   [hl], a                                     ; $54d3: $77
	ld   [hl], a                                     ; $54d4: $77
	ld   a, b                                        ; $54d5: $78
	ld   [hl], a                                     ; $54d6: $77
	add  a                                           ; $54d7: $87
	ld   [hl], a                                     ; $54d8: $77
	ld   a, b                                        ; $54d9: $78
	adc  b                                           ; $54da: $88
	sbc  c                                           ; $54db: $99
	adc  b                                           ; $54dc: $88
	sbc  b                                           ; $54dd: $98
	sbc  b                                           ; $54de: $98
	adc  c                                           ; $54df: $89
	adc  b                                           ; $54e0: $88
	ld   [hl], a                                     ; $54e1: $77
	ld   [hl], a                                     ; $54e2: $77
	ld   [hl], a                                     ; $54e3: $77
	ld   a, b                                        ; $54e4: $78
	adc  b                                           ; $54e5: $88
	adc  b                                           ; $54e6: $88
	adc  b                                           ; $54e7: $88
	add  a                                           ; $54e8: $87
	adc  b                                           ; $54e9: $88
	add  a                                           ; $54ea: $87
	ld   [hl], a                                     ; $54eb: $77
	ld   a, b                                        ; $54ec: $78
	ld   a, b                                        ; $54ed: $78
	adc  b                                           ; $54ee: $88
	adc  b                                           ; $54ef: $88
	adc  c                                           ; $54f0: $89
	sbc  c                                           ; $54f1: $99
	sbc  c                                           ; $54f2: $99
	adc  b                                           ; $54f3: $88
	adc  b                                           ; $54f4: $88
	ld   [hl], a                                     ; $54f5: $77
	ld   [hl], a                                     ; $54f6: $77
	adc  b                                           ; $54f7: $88
	adc  b                                           ; $54f8: $88
	adc  b                                           ; $54f9: $88
	adc  b                                           ; $54fa: $88
	add  a                                           ; $54fb: $87
	adc  b                                           ; $54fc: $88
	ld   [hl], a                                     ; $54fd: $77
	ld   [hl], a                                     ; $54fe: $77
	ld   [hl], a                                     ; $54ff: $77
	adc  b                                           ; $5500: $88
	adc  c                                           ; $5501: $89
	adc  b                                           ; $5502: $88
	sbc  c                                           ; $5503: $99
	sbc  c                                           ; $5504: $99
	sbc  b                                           ; $5505: $98
	adc  b                                           ; $5506: $88
	add  a                                           ; $5507: $87
	ld   [hl], a                                     ; $5508: $77
	adc  b                                           ; $5509: $88
	sbc  b                                           ; $550a: $98
	adc  b                                           ; $550b: $88
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	adc  b                                           ; $550e: $88
	adc  b                                           ; $550f: $88
	ld   [hl], a                                     ; $5510: $77
	ld   [hl], a                                     ; $5511: $77
	ld   [hl], a                                     ; $5512: $77
	ld   [hl], a                                     ; $5513: $77
	adc  b                                           ; $5514: $88
	adc  b                                           ; $5515: $88
	sbc  b                                           ; $5516: $98
	adc  c                                           ; $5517: $89
	adc  b                                           ; $5518: $88
	adc  b                                           ; $5519: $88
	add  a                                           ; $551a: $87
	adc  b                                           ; $551b: $88
	sbc  b                                           ; $551c: $98
	sbc  b                                           ; $551d: $98
	sbc  c                                           ; $551e: $99
	sbc  b                                           ; $551f: $98
	adc  b                                           ; $5520: $88
	sbc  c                                           ; $5521: $99
	sbc  b                                           ; $5522: $98
	ld   a, b                                        ; $5523: $78
	adc  b                                           ; $5524: $88
	add  a                                           ; $5525: $87
	ld   a, b                                        ; $5526: $78
	sbc  b                                           ; $5527: $98
	adc  b                                           ; $5528: $88
	sbc  b                                           ; $5529: $98
	sbc  b                                           ; $552a: $98
	ld   [hl], a                                     ; $552b: $77
	adc  b                                           ; $552c: $88
	ld   [hl], a                                     ; $552d: $77
	adc  c                                           ; $552e: $89
	adc  c                                           ; $552f: $89
	adc  b                                           ; $5530: $88
	adc  c                                           ; $5531: $89
	adc  c                                           ; $5532: $89
	adc  c                                           ; $5533: $89
	adc  b                                           ; $5534: $88
	adc  b                                           ; $5535: $88
	adc  b                                           ; $5536: $88
	adc  b                                           ; $5537: $88
	adc  b                                           ; $5538: $88
	adc  c                                           ; $5539: $89
	sbc  b                                           ; $553a: $98
	adc  c                                           ; $553b: $89
	sbc  c                                           ; $553c: $99
	add  a                                           ; $553d: $87
	ld   [hl], a                                     ; $553e: $77
	add  a                                           ; $553f: $87
	ld   [hl], a                                     ; $5540: $77
	adc  b                                           ; $5541: $88
	sbc  b                                           ; $5542: $98
	adc  b                                           ; $5543: $88
	adc  c                                           ; $5544: $89
	sbc  b                                           ; $5545: $98
	adc  c                                           ; $5546: $89
	sbc  c                                           ; $5547: $99
	adc  b                                           ; $5548: $88
	adc  b                                           ; $5549: $88
	adc  b                                           ; $554a: $88
	adc  b                                           ; $554b: $88
	sbc  c                                           ; $554c: $99
	adc  b                                           ; $554d: $88
	sbc  c                                           ; $554e: $99
	sbc  b                                           ; $554f: $98
	add  a                                           ; $5550: $87
	ld   a, b                                        ; $5551: $78
	add  a                                           ; $5552: $87
	ld   a, b                                        ; $5553: $78
	adc  b                                           ; $5554: $88
	adc  b                                           ; $5555: $88
	adc  c                                           ; $5556: $89
	sbc  b                                           ; $5557: $98
	adc  b                                           ; $5558: $88
	adc  b                                           ; $5559: $88
	adc  b                                           ; $555a: $88
	adc  b                                           ; $555b: $88
	adc  b                                           ; $555c: $88
	adc  b                                           ; $555d: $88
	adc  b                                           ; $555e: $88
	sbc  c                                           ; $555f: $99
	sbc  c                                           ; $5560: $99
	adc  c                                           ; $5561: $89
	adc  b                                           ; $5562: $88
	adc  b                                           ; $5563: $88
	adc  b                                           ; $5564: $88
	ld   a, b                                        ; $5565: $78
	adc  b                                           ; $5566: $88
	adc  b                                           ; $5567: $88
	adc  b                                           ; $5568: $88
	adc  c                                           ; $5569: $89
	adc  b                                           ; $556a: $88
	sbc  b                                           ; $556b: $98
	adc  b                                           ; $556c: $88
	adc  b                                           ; $556d: $88
	adc  b                                           ; $556e: $88
	add  a                                           ; $556f: $87
	adc  b                                           ; $5570: $88
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	sbc  c                                           ; $5573: $99
	sbc  c                                           ; $5574: $99
	sbc  c                                           ; $5575: $99
	adc  b                                           ; $5576: $88
	adc  b                                           ; $5577: $88
	adc  b                                           ; $5578: $88
	adc  b                                           ; $5579: $88
	adc  b                                           ; $557a: $88
	adc  b                                           ; $557b: $88
	adc  b                                           ; $557c: $88
	adc  c                                           ; $557d: $89
	sbc  c                                           ; $557e: $99
	sbc  b                                           ; $557f: $98
	adc  b                                           ; $5580: $88
	adc  b                                           ; $5581: $88
	ld   [hl], a                                     ; $5582: $77
	add  a                                           ; $5583: $87
	adc  b                                           ; $5584: $88
	adc  b                                           ; $5585: $88
	adc  b                                           ; $5586: $88
	adc  c                                           ; $5587: $89
	sbc  c                                           ; $5588: $99
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
	add  a                                           ; $5594: $87
	adc  b                                           ; $5595: $88
	adc  b                                           ; $5596: $88
	adc  b                                           ; $5597: $88
	adc  b                                           ; $5598: $88
	adc  b                                           ; $5599: $88
	adc  c                                           ; $559a: $89
	sbc  b                                           ; $559b: $98
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
	adc  c                                           ; $562e: $89
	sbc  c                                           ; $562f: $99
	ld   a, b                                        ; $5630: $78
	adc  b                                           ; $5631: $88
	adc  b                                           ; $5632: $88
	adc  b                                           ; $5633: $88
	adc  b                                           ; $5634: $88
	adc  b                                           ; $5635: $88
	adc  c                                           ; $5636: $89
	xor  h                                           ; $5637: $ac
	db   $fc                                         ; $5638: $fc
	adc  c                                           ; $5639: $89
	sub  a                                           ; $563a: $97
	halt                                             ; $563b: $76
	ld   a, c                                        ; $563c: $79
	add  [hl]                                        ; $563d: $86
	ld   d, l                                        ; $563e: $55
	ld   h, a                                        ; $563f: $67
	ld   [hl], a                                     ; $5640: $77
	ld   [hl], a                                     ; $5641: $77
	sbc  d                                           ; $5642: $9a
	sbc  b                                           ; $5643: $98
	adc  b                                           ; $5644: $88
	adc  c                                           ; $5645: $89
	add  a                                           ; $5646: $87
	adc  b                                           ; $5647: $88
	add  a                                           ; $5648: $87
	ld   a, b                                        ; $5649: $78
	adc  b                                           ; $564a: $88
	ld   [hl], a                                     ; $564b: $77
	ld   [hl], a                                     ; $564c: $77
	ld   [hl], a                                     ; $564d: $77
	ld   [hl], a                                     ; $564e: $77
	ld   [hl], a                                     ; $564f: $77
	ld   [hl], a                                     ; $5650: $77
	ld   a, b                                        ; $5651: $78
	adc  c                                           ; $5652: $89
	adc  b                                           ; $5653: $88
	sbc  d                                           ; $5654: $9a
	xor  b                                           ; $5655: $a8
	ld   a, b                                        ; $5656: $78
	sbc  b                                           ; $5657: $98
	ld   [hl], a                                     ; $5658: $77
	ld   a, b                                        ; $5659: $78
	add  a                                           ; $565a: $87
	ld   [hl], a                                     ; $565b: $77
	adc  b                                           ; $565c: $88
	ld   [hl], a                                     ; $565d: $77
	ld   [hl], a                                     ; $565e: $77
	ld   [hl], a                                     ; $565f: $77
	ld   h, [hl]                                     ; $5660: $66
	halt                                             ; $5661: $76
	ld   [hl], a                                     ; $5662: $77
	ld   [hl], a                                     ; $5663: $77
	adc  b                                           ; $5664: $88

Jump_0a7_5665:
	adc  b                                           ; $5665: $88
	sbc  d                                           ; $5666: $9a
	sbc  c                                           ; $5667: $99
	sbc  c                                           ; $5668: $99
	adc  b                                           ; $5669: $88
	adc  b                                           ; $566a: $88
	adc  b                                           ; $566b: $88
	ld   [hl], a                                     ; $566c: $77
	ld   [hl], a                                     ; $566d: $77
	halt                                             ; $566e: $76
	ld   h, [hl]                                     ; $566f: $66
	ld   h, [hl]                                     ; $5670: $66
	ld   h, l                                        ; $5671: $65
	ld   h, [hl]                                     ; $5672: $66
	ld   h, [hl]                                     ; $5673: $66
	ld   h, a                                        ; $5674: $67
	add  a                                           ; $5675: $87
	adc  c                                           ; $5676: $89
	cp   h                                           ; $5677: $bc
	call z, $bbcd                                    ; $5678: $cc $cd $bb
	cp   c                                           ; $567b: $b9
	sbc  c                                           ; $567c: $99
	sbc  b                                           ; $567d: $98
	sbc  b                                           ; $567e: $98
	halt                                             ; $567f: $76
	ld   d, h                                        ; $5680: $54
	ld   hl, $1111                                   ; $5681: $21 $11 $11
	xor  a                                           ; $5684: $af
	db   $fd                                         ; $5685: $fd

Jump_0a7_5686:
	rst  $38                                         ; $5686: $ff
	rst  $38                                         ; $5687: $ff
	add  $6a                                         ; $5688: $c6 $6a
	ld   d, e                                        ; $568a: $53
	add  a                                           ; $568b: $87
	ld   [hl], a                                     ; $568c: $77
	xor  e                                           ; $568d: $ab
	rst  JumpTable                                         ; $568e: $df
	db   $db                                         ; $568f: $db
	cp   e                                           ; $5690: $bb
	add  a                                           ; $5691: $87
	ld   h, d                                        ; $5692: $62
	ld   de, $1111                                   ; $5693: $11 $11 $11
	cpl                                              ; $5696: $2f
	db   $fd                                         ; $5697: $fd
	rst  $38                                         ; $5698: $ff
	ld   a, [$1872]                                  ; $5699: $fa $72 $18
	ld   b, d                                        ; $569c: $42
	inc  a                                           ; $569d: $3c
	reti                                             ; $569e: $d9


	cp   l                                           ; $569f: $bd
	rst  $38                                         ; $56a0: $ff
	ld   a, [$7689]                                  ; $56a1: $fa $89 $76
	ld   [hl+], a                                    ; $56a4: $22
	ld   de, $1111                                   ; $56a5: $11 $11 $11
	adc  a                                           ; $56a8: $8f
	ei                                               ; $56a9: $fb
	rst  $38                                         ; $56aa: $ff
	di                                               ; $56ab: $f3
	ld   d, c                                        ; $56ac: $51
	jr   jr_0a7_56e2                                 ; $56ad: $18 $33

	ld   l, a                                        ; $56af: $6f
	ei                                               ; $56b0: $fb
	cp   l                                           ; $56b1: $bd
	ei                                               ; $56b2: $fb
	rst  $20                                         ; $56b3: $e7
	ld   a, d                                        ; $56b4: $7a
	ld   [hl], l                                     ; $56b5: $75
	inc  [hl]                                        ; $56b6: $34
	ld   de, $1111                                   ; $56b7: $11 $11 $11
	rra                                              ; $56ba: $1f
	ld   a, [$f3ff]                                  ; $56bb: $fa $ff $f3
	ld   hl, $6517                                   ; $56be: $21 $17 $65
	ld   a, a                                        ; $56c1: $7f
	ld   a, [$f9ab]                                  ; $56c2: $fa $ab $f9
	jp   z, $8679                                    ; $56c5: $ca $79 $86

	ld   b, h                                        ; $56c8: $44
	ld   de, $1111                                   ; $56c9: $11 $11 $11
	rra                                              ; $56cc: $1f
	db   $fd                                         ; $56cd: $fd
	rst  $38                                         ; $56ce: $ff
	db   $f4                                         ; $56cf: $f4
	ld   de, $8615                                   ; $56d0: $11 $15 $86
	ld   a, a                                        ; $56d3: $7f
	ei                                               ; $56d4: $fb
	ld   a, e                                        ; $56d5: $7b
	ld   hl, sp-$24                                  ; $56d6: $f8 $dc
	adc  b                                           ; $56d8: $88
	add  l                                           ; $56d9: $85
	ld   [hl-], a                                    ; $56da: $32
	ld   de, $1111                                   ; $56db: $11 $11 $11
	rst  JumpTable                                         ; $56de: $df
	db   $fc                                         ; $56df: $fc
	rst  $38                                         ; $56e0: $ff
	pop  af                                          ; $56e1: $f1

jr_0a7_56e2:
	ld   de, $a519                                   ; $56e2: $11 $19 $a5
	rst  $28                                         ; $56e5: $ef
	ld   sp, hl                                      ; $56e6: $f9
	ld   e, h                                        ; $56e7: $5c
	cp   c                                           ; $56e8: $b9
	db   $db                                         ; $56e9: $db
	ld   a, c                                        ; $56ea: $79
	ld   [hl], h                                     ; $56eb: $74
	ld   sp, $1111                                   ; $56ec: $31 $11 $11
	dec  de                                          ; $56ef: $1b
	rst  $38                                         ; $56f0: $ff
	rst  $38                                         ; $56f1: $ff
	rst  $38                                         ; $56f2: $ff
	ld   hl, $9a11                                   ; $56f3: $21 $11 $9a
	adc  h                                           ; $56f6: $8c
	cp   $a7                                         ; $56f7: $fe $a7
	xor  d                                           ; $56f9: $aa
	sbc  l                                           ; $56fa: $9d
	ret  z                                           ; $56fb: $c8

	add  a                                           ; $56fc: $87
	ld   b, d                                        ; $56fd: $42
	ld   de, $1111                                   ; $56fe: $11 $11 $11
	rst  $38                                         ; $5701: $ff
	rst  $38                                         ; $5702: $ff
	rst  $38                                         ; $5703: $ff
	ldh  [c], a                                      ; $5704: $e2
	ld   de, $9c4b                                   ; $5705: $11 $4b $9c
	rst  $28                                         ; $5708: $ef
	jp   z, $ab88                                    ; $5709: $ca $88 $ab

	jp   c, Jump_0a7_5488                            ; $570c: $da $88 $54

	ld   de, $1111                                   ; $570f: $11 $11 $11
	sbc  a                                           ; $5712: $9f
	rst  $38                                         ; $5713: $ff
	rst  $38                                         ; $5714: $ff
	di                                               ; $5715: $f3
	ld   sp, $ac1a                                   ; $5716: $31 $1a $ac
	db   $ed                                         ; $5719: $ed
	ret                                              ; $571a: $c9


	adc  c                                           ; $571b: $89
	sbc  d                                           ; $571c: $9a
	res  5, c                                        ; $571d: $cb $a9
	ld   d, e                                        ; $571f: $53
	ld   de, $1111                                   ; $5720: $11 $11 $11
	xor  a                                           ; $5723: $af
	rst  $38                                         ; $5724: $ff
	rst  $38                                         ; $5725: $ff
	and  $31                                         ; $5726: $e6 $31
	add  hl, sp                                      ; $5728: $39
	call c, $a9be                                    ; $5729: $dc $be $a9
	add  a                                           ; $572c: $87
	sbc  d                                           ; $572d: $9a
	db   $eb                                         ; $572e: $eb
	add  a                                           ; $572f: $87
	ld   d, c                                        ; $5730: $51
	ld   de, $1111                                   ; $5731: $11 $11 $11
	rst  $38                                         ; $5734: $ff
	rst  $38                                         ; $5735: $ff
	rst  $38                                         ; $5736: $ff
	adc  c                                           ; $5737: $89
	ld   b, c                                        ; $5738: $41
	sbc  d                                           ; $5739: $9a
	cp   h                                           ; $573a: $bc
	db   $dd                                         ; $573b: $dd
	sub  a                                           ; $573c: $97
	xor  d                                           ; $573d: $aa
	adc  h                                           ; $573e: $8c
	cp   e                                           ; $573f: $bb
	and  [hl]                                        ; $5740: $a6
	ld   hl, $1111                                   ; $5741: $21 $11 $11
	ld   e, $ff                                      ; $5744: $1e $ff
	rst  $38                                         ; $5746: $ff
	ld   a, [$2996]                                  ; $5747: $fa $96 $29
	cp   d                                           ; $574a: $ba
	xor  l                                           ; $574b: $ad
	jp   c, $a878                                    ; $574c: $da $78 $a8

	jp   z, Jump_0a7_52ab                            ; $574f: $ca $ab $52

	ld   de, $1211                                   ; $5752: $11 $11 $12
	cp   $cf                                         ; $5755: $fe $cf
	rst  $38                                         ; $5757: $ff
	xor  c                                           ; $5758: $a9
	halt                                             ; $5759: $76
	xor  c                                           ; $575a: $a9
	ld   a, c                                        ; $575b: $79
	db   $dd                                         ; $575c: $dd
	sbc  b                                           ; $575d: $98
	sbc  c                                           ; $575e: $99
	cp   d                                           ; $575f: $ba
	add  a                                           ; $5760: $87
	ld   [hl], l                                     ; $5761: $75
	ld   sp, $1111                                   ; $5762: $31 $11 $11
	xor  l                                           ; $5765: $ad
	cp   a                                           ; $5766: $bf
	rst  $38                                         ; $5767: $ff
	cp   h                                           ; $5768: $bc
	jp   z, $88b9                                    ; $5769: $ca $b9 $88

	cp   d                                           ; $576c: $ba
	ld   h, a                                        ; $576d: $67
	cp   d                                           ; $576e: $ba
	xor  d                                           ; $576f: $aa
	sbc  c                                           ; $5770: $99
	ld   d, h                                        ; $5771: $54
	ld   hl, $1111                                   ; $5772: $21 $11 $11
	xor  c                                           ; $5775: $a9
	sbc  a                                           ; $5776: $9f
	sbc  $de                                         ; $5777: $de $de
	jp   z, $abba                                    ; $5779: $ca $ba $ab

	and  [hl]                                        ; $577c: $a6
	adc  b                                           ; $577d: $88
	ld   a, b                                        ; $577e: $78
	adc  c                                           ; $577f: $89
	sbc  c                                           ; $5780: $99
	add  e                                           ; $5781: $83
	ld   [hl+], a                                    ; $5782: $22
	ld   de, $ba12                                   ; $5783: $11 $12 $ba
	cp   c                                           ; $5786: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5787: $cf
	db   $db                                         ; $5788: $db
	cp   h                                           ; $5789: $bc
	res  3, h                                        ; $578a: $cb $9c
	and  a                                           ; $578c: $a7
	sbc  b                                           ; $578d: $98
	sub  l                                           ; $578e: $95
	ld   l, c                                        ; $578f: $69
	add  [hl]                                        ; $5790: $86
	ld   d, h                                        ; $5791: $54
	dec  [hl]                                        ; $5792: $35
	ld   sp, $a618                                   ; $5793: $31 $18 $a6
	xor  d                                           ; $5796: $aa
	sbc  $b9                                         ; $5797: $de $b9
	sbc  [hl]                                        ; $5799: $9e
	jp   z, $b9ba                                    ; $579a: $ca $ba $b9

	adc  b                                           ; $579d: $88
	ld   a, b                                        ; $579e: $78
	halt                                             ; $579f: $76
	ld   b, l                                        ; $57a0: $45
	ld   h, l                                        ; $57a1: $65
	ld   b, e                                        ; $57a2: $43
	ld   de, $977a                                   ; $57a3: $11 $7a $97
	adc  e                                           ; $57a6: $8b
	xor  $88                                         ; $57a7: $ee $88
	cp   h                                           ; $57a9: $bc
	cp   c                                           ; $57aa: $b9
	cp   d                                           ; $57ab: $ba
	xor  c                                           ; $57ac: $a9
	ld   a, b                                        ; $57ad: $78
	adc  c                                           ; $57ae: $89
	add  l                                           ; $57af: $85
	ld   d, l                                        ; $57b0: $55
	ld   h, [hl]                                     ; $57b1: $66
	ld   sp, $a815                                   ; $57b2: $31 $15 $a8
	halt                                             ; $57b5: $76
	call $ab9a                                       ; $57b6: $cd $9a $ab
	xor  c                                           ; $57b9: $a9
	sbc  e                                           ; $57ba: $9b
	jp   z, $9697                                    ; $57bb: $ca $97 $96

	adc  c                                           ; $57be: $89
	ld   a, b                                        ; $57bf: $78
	ld   d, l                                        ; $57c0: $55
	ld   h, a                                        ; $57c1: $67
	ld   h, e                                        ; $57c2: $63
	ld   [hl], $98                                   ; $57c3: $36 $98
	ld   a, b                                        ; $57c5: $78
	xor  d                                           ; $57c6: $aa
	cp   b                                           ; $57c7: $b8
	adc  e                                           ; $57c8: $8b
	cp   e                                           ; $57c9: $bb
	sub  a                                           ; $57ca: $97
	adc  c                                           ; $57cb: $89
	sbc  d                                           ; $57cc: $9a
	sbc  b                                           ; $57cd: $98
	ld   [hl], a                                     ; $57ce: $77
	adc  b                                           ; $57cf: $88
	halt                                             ; $57d0: $76
	ld   h, a                                        ; $57d1: $67
	ld   h, l                                        ; $57d2: $65
	ld   h, [hl]                                     ; $57d3: $66
	ld   h, [hl]                                     ; $57d4: $66
	ld   a, b                                        ; $57d5: $78
	sbc  c                                           ; $57d6: $99
	adc  c                                           ; $57d7: $89
	sbc  d                                           ; $57d8: $9a
	sbc  c                                           ; $57d9: $99
	sbc  d                                           ; $57da: $9a
	adc  b                                           ; $57db: $88
	adc  b                                           ; $57dc: $88
	sbc  c                                           ; $57dd: $99
	adc  b                                           ; $57de: $88
	ld   [hl], a                                     ; $57df: $77
	ld   a, c                                        ; $57e0: $79
	adc  b                                           ; $57e1: $88
	ld   h, [hl]                                     ; $57e2: $66
	ld   a, b                                        ; $57e3: $78
	add  a                                           ; $57e4: $87
	ld   h, [hl]                                     ; $57e5: $66
	ld   [hl], a                                     ; $57e6: $77
	sbc  b                                           ; $57e7: $98
	adc  b                                           ; $57e8: $88
	adc  c                                           ; $57e9: $89
	adc  c                                           ; $57ea: $89
	ld   a, b                                        ; $57eb: $78
	sbc  c                                           ; $57ec: $99
	sub  a                                           ; $57ed: $97
	ld   a, c                                        ; $57ee: $79
	xor  b                                           ; $57ef: $a8
	halt                                             ; $57f0: $76
	adc  b                                           ; $57f1: $88
	ld   [hl], a                                     ; $57f2: $77
	ld   a, b                                        ; $57f3: $78
	adc  c                                           ; $57f4: $89
	halt                                             ; $57f5: $76
	ld   h, a                                        ; $57f6: $67
	sbc  c                                           ; $57f7: $99
	add  a                                           ; $57f8: $87
	ld   a, b                                        ; $57f9: $78
	sbc  b                                           ; $57fa: $98
	ld   [hl], a                                     ; $57fb: $77
	adc  c                                           ; $57fc: $89
	adc  b                                           ; $57fd: $88
	ld   a, b                                        ; $57fe: $78
	sbc  d                                           ; $57ff: $9a
	add  a                                           ; $5800: $87
	ld   a, b                                        ; $5801: $78
	sbc  c                                           ; $5802: $99
	add  a                                           ; $5803: $87
	ld   a, b                                        ; $5804: $78
	sbc  b                                           ; $5805: $98
	ld   [hl], a                                     ; $5806: $77
	sbc  b                                           ; $5807: $98
	add  a                                           ; $5808: $87
	ld   a, c                                        ; $5809: $79
	adc  b                                           ; $580a: $88
	ld   a, b                                        ; $580b: $78
	adc  c                                           ; $580c: $89
	adc  b                                           ; $580d: $88
	adc  c                                           ; $580e: $89
	sbc  b                                           ; $580f: $98
	sub  a                                           ; $5810: $97
	adc  b                                           ; $5811: $88
	adc  b                                           ; $5812: $88
	adc  c                                           ; $5813: $89
	sbc  b                                           ; $5814: $98
	ld   a, b                                        ; $5815: $78
	sbc  c                                           ; $5816: $99
	sbc  c                                           ; $5817: $99
	add  a                                           ; $5818: $87
	ld   a, b                                        ; $5819: $78
	adc  b                                           ; $581a: $88
	adc  b                                           ; $581b: $88
	ld   a, b                                        ; $581c: $78
	adc  b                                           ; $581d: $88
	add  a                                           ; $581e: $87
	adc  b                                           ; $581f: $88
	sbc  c                                           ; $5820: $99
	ld   [hl], a                                     ; $5821: $77
	adc  c                                           ; $5822: $89
	adc  b                                           ; $5823: $88
	adc  b                                           ; $5824: $88
	sbc  c                                           ; $5825: $99
	adc  b                                           ; $5826: $88
	adc  c                                           ; $5827: $89
	adc  b                                           ; $5828: $88
	adc  b                                           ; $5829: $88
	ld   [hl], a                                     ; $582a: $77
	ld   a, b                                        ; $582b: $78
	adc  b                                           ; $582c: $88
	adc  b                                           ; $582d: $88
	sbc  c                                           ; $582e: $99
	adc  b                                           ; $582f: $88
	adc  c                                           ; $5830: $89
	sbc  b                                           ; $5831: $98
	ld   a, b                                        ; $5832: $78
	adc  b                                           ; $5833: $88
	adc  b                                           ; $5834: $88
	adc  b                                           ; $5835: $88
	sbc  b                                           ; $5836: $98
	adc  b                                           ; $5837: $88
	adc  b                                           ; $5838: $88
	add  a                                           ; $5839: $87
	adc  b                                           ; $583a: $88
	sbc  b                                           ; $583b: $98
	add  a                                           ; $583c: $87
	adc  b                                           ; $583d: $88
	adc  b                                           ; $583e: $88
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	adc  c                                           ; $5841: $89
	add  a                                           ; $5842: $87
	adc  b                                           ; $5843: $88
	adc  b                                           ; $5844: $88
	adc  b                                           ; $5845: $88
	adc  b                                           ; $5846: $88
	sbc  b                                           ; $5847: $98
	adc  b                                           ; $5848: $88
	sbc  c                                           ; $5849: $99
	adc  b                                           ; $584a: $88
	adc  b                                           ; $584b: $88
	add  a                                           ; $584c: $87
	adc  b                                           ; $584d: $88
	add  a                                           ; $584e: $87
	adc  b                                           ; $584f: $88
	adc  c                                           ; $5850: $89
	adc  c                                           ; $5851: $89
	adc  b                                           ; $5852: $88
	adc  b                                           ; $5853: $88
	adc  b                                           ; $5854: $88
	adc  b                                           ; $5855: $88
	adc  b                                           ; $5856: $88
	adc  c                                           ; $5857: $89
	sbc  c                                           ; $5858: $99
	adc  b                                           ; $5859: $88
	adc  b                                           ; $585a: $88
	adc  b                                           ; $585b: $88
	adc  b                                           ; $585c: $88
	adc  c                                           ; $585d: $89
	sbc  b                                           ; $585e: $98
	ld   [hl], a                                     ; $585f: $77
	adc  c                                           ; $5860: $89
	sbc  b                                           ; $5861: $98
	ld   [hl], a                                     ; $5862: $77
	adc  b                                           ; $5863: $88
	sbc  b                                           ; $5864: $98
	ld   a, b                                        ; $5865: $78
	adc  b                                           ; $5866: $88
	add  a                                           ; $5867: $87
	adc  b                                           ; $5868: $88
	sbc  c                                           ; $5869: $99
	add  a                                           ; $586a: $87
	adc  b                                           ; $586b: $88
	sbc  b                                           ; $586c: $98
	adc  b                                           ; $586d: $88
	adc  b                                           ; $586e: $88
	add  a                                           ; $586f: $87
	ld   a, b                                        ; $5870: $78
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
	sbc  d                                           ; $5980: $9a
	xor  b                                           ; $5981: $a8
	ld   h, [hl]                                     ; $5982: $66
	adc  c                                           ; $5983: $89
	add  a                                           ; $5984: $87
	ld   [hl], a                                     ; $5985: $77
	adc  b                                           ; $5986: $88
	add  a                                           ; $5987: $87
	adc  c                                           ; $5988: $89
	xor  d                                           ; $5989: $aa
	halt                                             ; $598a: $76
	ld   a, b                                        ; $598b: $78
	xor  c                                           ; $598c: $a9
	ld   l, b                                        ; $598d: $68
	sbc  c                                           ; $598e: $99
	ld   h, [hl]                                     ; $598f: $66
	adc  d                                           ; $5990: $8a
	and  a                                           ; $5991: $a7
	ld   d, a                                        ; $5992: $57
	sbc  d                                           ; $5993: $9a
	halt                                             ; $5994: $76
	ld   a, b                                        ; $5995: $78
	sbc  h                                           ; $5996: $9c
	sub  h                                           ; $5997: $94
	ld   l, b                                        ; $5998: $68
	xor  b                                           ; $5999: $a8
	ld   a, b                                        ; $599a: $78
	db   $db                                         ; $599b: $db
	ld   d, h                                        ; $599c: $54
	ld   l, h                                        ; $599d: $6c
	or   a                                           ; $599e: $b7
	ld   b, [hl]                                     ; $599f: $46
	sbc  c                                           ; $59a0: $99
	halt                                             ; $59a1: $76
	ld   h, a                                        ; $59a2: $67
	adc  c                                           ; $59a3: $89
	ld   l, c                                        ; $59a4: $69
	jp   c, Jump_0a7_7a64                            ; $59a5: $da $64 $7a

	sub  a                                           ; $59a8: $97
	ld   a, b                                        ; $59a9: $78
	adc  b                                           ; $59aa: $88
	ld   h, a                                        ; $59ab: $67
	ld   a, c                                        ; $59ac: $79
	adc  b                                           ; $59ad: $88
	adc  b                                           ; $59ae: $88
	adc  c                                           ; $59af: $89
	sub  a                                           ; $59b0: $97
	adc  b                                           ; $59b1: $88
	adc  b                                           ; $59b2: $88
	halt                                             ; $59b3: $76
	halt                                             ; $59b4: $76
	ld   c, e                                        ; $59b5: $4b
	reti                                             ; $59b6: $d9


	ld   h, l                                        ; $59b7: $65
	xor  d                                           ; $59b8: $aa
	ld   h, l                                        ; $59b9: $65
	xor  d                                           ; $59ba: $aa
	jp   z, Jump_0a7_5665                            ; $59bb: $ca $65 $56

	ld   l, c                                        ; $59be: $69
	sbc  b                                           ; $59bf: $98
	ld   a, d                                        ; $59c0: $7a
	rst  ToBoot                                         ; $59c1: $c7
	ld   b, [hl]                                     ; $59c2: $46
	sub  a                                           ; $59c3: $97
	ld   a, b                                        ; $59c4: $78
	xor  c                                           ; $59c5: $a9
	ld   [hl], a                                     ; $59c6: $77
	halt                                             ; $59c7: $76
	ld   l, b                                        ; $59c8: $68
	cp   [hl]                                        ; $59c9: $be
	rst  ToBoot                                         ; $59ca: $c7
	ld   d, a                                        ; $59cb: $57
	xor  b                                           ; $59cc: $a8
	ld   [hl], a                                     ; $59cd: $77
	adc  c                                           ; $59ce: $89
	sub  a                                           ; $59cf: $97
	ld   [hl], a                                     ; $59d0: $77
	ld   [hl], a                                     ; $59d1: $77
	ld   [hl], a                                     ; $59d2: $77
	adc  d                                           ; $59d3: $8a
	and  a                                           ; $59d4: $a7
	ld   e, b                                        ; $59d5: $58
	sub  a                                           ; $59d6: $97
	ld   a, c                                        ; $59d7: $79
	add  a                                           ; $59d8: $87
	adc  c                                           ; $59d9: $89
	sub  a                                           ; $59da: $97
	adc  b                                           ; $59db: $88
	sub  a                                           ; $59dc: $97
	adc  d                                           ; $59dd: $8a
	add  [hl]                                        ; $59de: $86
	adc  c                                           ; $59df: $89
	ld   [hl], a                                     ; $59e0: $77
	ld   a, b                                        ; $59e1: $78
	add  a                                           ; $59e2: $87
	ld   a, b                                        ; $59e3: $78
	sub  a                                           ; $59e4: $97
	ld   a, b                                        ; $59e5: $78
	adc  b                                           ; $59e6: $88
	add  a                                           ; $59e7: $87
	sbc  b                                           ; $59e8: $98
	ld   a, b                                        ; $59e9: $78
	adc  c                                           ; $59ea: $89
	ld   [hl], a                                     ; $59eb: $77
	sbc  b                                           ; $59ec: $98
	ld   [hl], a                                     ; $59ed: $77
	ld   [hl], a                                     ; $59ee: $77
	add  a                                           ; $59ef: $87
	add  a                                           ; $59f0: $87
	ld   a, b                                        ; $59f1: $78
	add  a                                           ; $59f2: $87
	sbc  b                                           ; $59f3: $98
	sbc  c                                           ; $59f4: $99
	sbc  c                                           ; $59f5: $99
	sbc  b                                           ; $59f6: $98
	add  a                                           ; $59f7: $87
	ld   a, b                                        ; $59f8: $78
	add  [hl]                                        ; $59f9: $86
	ld   a, c                                        ; $59fa: $79
	sub  a                                           ; $59fb: $97
	ld   l, b                                        ; $59fc: $68
	sub  a                                           ; $59fd: $97
	ld   a, c                                        ; $59fe: $79
	sub  a                                           ; $59ff: $97
	adc  c                                           ; $5a00: $89
	adc  c                                           ; $5a01: $89
	sbc  b                                           ; $5a02: $98
	adc  b                                           ; $5a03: $88
	sub  a                                           ; $5a04: $97
	adc  b                                           ; $5a05: $88
	adc  b                                           ; $5a06: $88
	ld   [hl], a                                     ; $5a07: $77
	ld   a, c                                        ; $5a08: $79
	add  [hl]                                        ; $5a09: $86
	ld   a, b                                        ; $5a0a: $78
	sbc  b                                           ; $5a0b: $98
	ld   l, b                                        ; $5a0c: $68
	cp   b                                           ; $5a0d: $b8
	ld   [hl], a                                     ; $5a0e: $77
	xor  d                                           ; $5a0f: $aa
	add  [hl]                                        ; $5a10: $86
	adc  d                                           ; $5a11: $8a
	add  [hl]                                        ; $5a12: $86
	xor  c                                           ; $5a13: $a9
	ld   h, a                                        ; $5a14: $67
	sbc  b                                           ; $5a15: $98
	ld   h, a                                        ; $5a16: $67
	sbc  c                                           ; $5a17: $99
	halt                                             ; $5a18: $76
	xor  c                                           ; $5a19: $a9
	ld   h, a                                        ; $5a1a: $67
	xor  d                                           ; $5a1b: $aa
	ld   l, b                                        ; $5a1c: $68
	sbc  b                                           ; $5a1d: $98
	ld   [hl], a                                     ; $5a1e: $77
	sbc  c                                           ; $5a1f: $99
	ld   [hl], a                                     ; $5a20: $77
	sbc  c                                           ; $5a21: $99
	add  l                                           ; $5a22: $85
	adc  c                                           ; $5a23: $89
	halt                                             ; $5a24: $76
	sbc  c                                           ; $5a25: $99
	ld   h, a                                        ; $5a26: $67
	ld   a, c                                        ; $5a27: $79
	sub  l                                           ; $5a28: $95
	adc  h                                           ; $5a29: $8c
	halt                                             ; $5a2a: $76
	xor  d                                           ; $5a2b: $aa
	ld   a, b                                        ; $5a2c: $78
	sbc  b                                           ; $5a2d: $98
	adc  c                                           ; $5a2e: $89
	ld   a, b                                        ; $5a2f: $78
	sub  a                                           ; $5a30: $97
	ld   a, b                                        ; $5a31: $78
	add  a                                           ; $5a32: $87
	add  a                                           ; $5a33: $87
	adc  c                                           ; $5a34: $89
	ld   a, b                                        ; $5a35: $78
	add  a                                           ; $5a36: $87
	adc  b                                           ; $5a37: $88
	add  a                                           ; $5a38: $87
	adc  b                                           ; $5a39: $88
	sub  a                                           ; $5a3a: $97
	ld   a, d                                        ; $5a3b: $7a
	ld   [hl], a                                     ; $5a3c: $77
	sbc  b                                           ; $5a3d: $98
	adc  b                                           ; $5a3e: $88
	ld   a, b                                        ; $5a3f: $78
	sub  [hl]                                        ; $5a40: $96
	adc  c                                           ; $5a41: $89
	add  a                                           ; $5a42: $87
	ld   a, e                                        ; $5a43: $7b
	ld   h, a                                        ; $5a44: $67
	sbc  d                                           ; $5a45: $9a
	ld   [hl], a                                     ; $5a46: $77
	sub  a                                           ; $5a47: $97
	and  a                                           ; $5a48: $a7
	ld   a, d                                        ; $5a49: $7a
	add  a                                           ; $5a4a: $87
	adc  c                                           ; $5a4b: $89
	adc  b                                           ; $5a4c: $88
	ld   a, b                                        ; $5a4d: $78
	adc  b                                           ; $5a4e: $88
	adc  b                                           ; $5a4f: $88
	ld   a, c                                        ; $5a50: $79

Jump_0a7_5a51:
	add  [hl]                                        ; $5a51: $86
	and  a                                           ; $5a52: $a7
	adc  c                                           ; $5a53: $89
	ld   a, b                                        ; $5a54: $78
	sbc  b                                           ; $5a55: $98
	ld   a, d                                        ; $5a56: $7a
	add  [hl]                                        ; $5a57: $86
	sbc  b                                           ; $5a58: $98
	ld   l, c                                        ; $5a59: $69
	add  a                                           ; $5a5a: $87
	adc  b                                           ; $5a5b: $88
	sbc  b                                           ; $5a5c: $98
	add  a                                           ; $5a5d: $87
	adc  c                                           ; $5a5e: $89
	ld   [hl], a                                     ; $5a5f: $77
	adc  b                                           ; $5a60: $88
	adc  b                                           ; $5a61: $88
	ld   a, b                                        ; $5a62: $78
	adc  b                                           ; $5a63: $88
	ld   a, c                                        ; $5a64: $79
	sub  a                                           ; $5a65: $97
	adc  b                                           ; $5a66: $88
	sbc  b                                           ; $5a67: $98
	ld   [hl], a                                     ; $5a68: $77
	sbc  b                                           ; $5a69: $98
	ld   a, c                                        ; $5a6a: $79
	ld   a, b                                        ; $5a6b: $78
	ld   a, b                                        ; $5a6c: $78
	add  a                                           ; $5a6d: $87
	adc  b                                           ; $5a6e: $88
	sbc  c                                           ; $5a6f: $99
	ld   [hl], a                                     ; $5a70: $77
	and  a                                           ; $5a71: $a7
	ld   a, c                                        ; $5a72: $79
	adc  b                                           ; $5a73: $88
	adc  b                                           ; $5a74: $88
	sbc  c                                           ; $5a75: $99
	ld   [hl], a                                     ; $5a76: $77
	adc  b                                           ; $5a77: $88
	ld   a, c                                        ; $5a78: $79
	sbc  b                                           ; $5a79: $98
	sub  a                                           ; $5a7a: $97
	adc  c                                           ; $5a7b: $89
	adc  b                                           ; $5a7c: $88
	adc  b                                           ; $5a7d: $88
	sbc  b                                           ; $5a7e: $98
	ld   a, b                                        ; $5a7f: $78
	add  a                                           ; $5a80: $87
	adc  c                                           ; $5a81: $89
	ld   a, c                                        ; $5a82: $79
	adc  b                                           ; $5a83: $88
	ld   a, c                                        ; $5a84: $79
	add  a                                           ; $5a85: $87
	add  a                                           ; $5a86: $87
	adc  b                                           ; $5a87: $88
	add  a                                           ; $5a88: $87
	add  a                                           ; $5a89: $87
	adc  b                                           ; $5a8a: $88
	ld   a, c                                        ; $5a8b: $79
	ld   a, b                                        ; $5a8c: $78
	ld   a, c                                        ; $5a8d: $79
	sub  a                                           ; $5a8e: $97
	sbc  b                                           ; $5a8f: $98
	add  a                                           ; $5a90: $87
	adc  c                                           ; $5a91: $89
	adc  b                                           ; $5a92: $88
	adc  c                                           ; $5a93: $89
	adc  b                                           ; $5a94: $88
	ld   a, c                                        ; $5a95: $79
	sub  a                                           ; $5a96: $97
	sbc  b                                           ; $5a97: $98
	ld   [hl], a                                     ; $5a98: $77
	sub  a                                           ; $5a99: $97
	adc  b                                           ; $5a9a: $88
	sbc  b                                           ; $5a9b: $98
	ld   a, b                                        ; $5a9c: $78
	add  a                                           ; $5a9d: $87
	ld   a, c                                        ; $5a9e: $79
	ld   [hl], a                                     ; $5a9f: $77
	adc  b                                           ; $5aa0: $88
	sub  a                                           ; $5aa1: $97
	ld   [hl], a                                     ; $5aa2: $77
	and  a                                           ; $5aa3: $a7
	adc  b                                           ; $5aa4: $88
	sbc  b                                           ; $5aa5: $98
	ld   l, b                                        ; $5aa6: $68
	adc  b                                           ; $5aa7: $88
	ld   a, c                                        ; $5aa8: $79
	add  a                                           ; $5aa9: $87
	sub  a                                           ; $5aaa: $97
	sbc  b                                           ; $5aab: $98
	ld   a, c                                        ; $5aac: $79
	ld   [hl], a                                     ; $5aad: $77
	sbc  b                                           ; $5aae: $98
	sub  a                                           ; $5aaf: $97
	adc  b                                           ; $5ab0: $88
	sub  a                                           ; $5ab1: $97
	ld   a, c                                        ; $5ab2: $79
	add  a                                           ; $5ab3: $87
	adc  b                                           ; $5ab4: $88
	adc  b                                           ; $5ab5: $88
	ld   a, b                                        ; $5ab6: $78
	add  a                                           ; $5ab7: $87
	adc  b                                           ; $5ab8: $88
	adc  c                                           ; $5ab9: $89
	ld   [hl], a                                     ; $5aba: $77
	sbc  b                                           ; $5abb: $98
	add  a                                           ; $5abc: $87
	adc  b                                           ; $5abd: $88
	sub  a                                           ; $5abe: $97
	ld   a, d                                        ; $5abf: $7a
	add  a                                           ; $5ac0: $87
	adc  c                                           ; $5ac1: $89
	adc  b                                           ; $5ac2: $88
	adc  b                                           ; $5ac3: $88
	sbc  b                                           ; $5ac4: $98
	adc  b                                           ; $5ac5: $88
	adc  b                                           ; $5ac6: $88
	ld   a, c                                        ; $5ac7: $79
	adc  b                                           ; $5ac8: $88
	adc  b                                           ; $5ac9: $88
	adc  b                                           ; $5aca: $88
	add  a                                           ; $5acb: $87
	add  a                                           ; $5acc: $87
	sbc  c                                           ; $5acd: $99
	ld   a, c                                        ; $5ace: $79
	ld   a, b                                        ; $5acf: $78
	adc  b                                           ; $5ad0: $88
	adc  b                                           ; $5ad1: $88
	add  [hl]                                        ; $5ad2: $86
	sbc  b                                           ; $5ad3: $98
	ld   a, b                                        ; $5ad4: $78
	ld   a, c                                        ; $5ad5: $79
	add  a                                           ; $5ad6: $87
	adc  c                                           ; $5ad7: $89
	add  a                                           ; $5ad8: $87
	sub  a                                           ; $5ad9: $97
	sub  a                                           ; $5ada: $97
	adc  b                                           ; $5adb: $88
	ld   a, c                                        ; $5adc: $79
	adc  b                                           ; $5add: $88
	adc  b                                           ; $5ade: $88
	add  a                                           ; $5adf: $87
	sbc  b                                           ; $5ae0: $98
	adc  b                                           ; $5ae1: $88
	adc  b                                           ; $5ae2: $88
	adc  b                                           ; $5ae3: $88
	adc  b                                           ; $5ae4: $88
	add  a                                           ; $5ae5: $87
	sbc  b                                           ; $5ae6: $98
	add  a                                           ; $5ae7: $87
	adc  b                                           ; $5ae8: $88
	sbc  b                                           ; $5ae9: $98
	ld   a, c                                        ; $5aea: $79
	add  a                                           ; $5aeb: $87
	ld   a, b                                        ; $5aec: $78
	adc  c                                           ; $5aed: $89
	ld   a, c                                        ; $5aee: $79
	add  a                                           ; $5aef: $87
	add  a                                           ; $5af0: $87
	add  a                                           ; $5af1: $87
	adc  b                                           ; $5af2: $88
	ld   a, c                                        ; $5af3: $79
	add  a                                           ; $5af4: $87
	adc  b                                           ; $5af5: $88
	adc  b                                           ; $5af6: $88
	adc  b                                           ; $5af7: $88
	adc  b                                           ; $5af8: $88
	ld   a, c                                        ; $5af9: $79
	adc  b                                           ; $5afa: $88
	add  a                                           ; $5afb: $87
	sub  a                                           ; $5afc: $97
	sub  a                                           ; $5afd: $97
	adc  c                                           ; $5afe: $89
	adc  b                                           ; $5aff: $88
	adc  b                                           ; $5b00: $88
	add  a                                           ; $5b01: $87
	sbc  b                                           ; $5b02: $98
	ld   a, c                                        ; $5b03: $79
	adc  b                                           ; $5b04: $88
	adc  b                                           ; $5b05: $88
	adc  b                                           ; $5b06: $88
	adc  b                                           ; $5b07: $88
	adc  b                                           ; $5b08: $88
	sub  a                                           ; $5b09: $97
	sbc  b                                           ; $5b0a: $98
	ld   a, b                                        ; $5b0b: $78
	adc  c                                           ; $5b0c: $89
	ld   a, c                                        ; $5b0d: $79
	adc  b                                           ; $5b0e: $88
	add  a                                           ; $5b0f: $87
	adc  b                                           ; $5b10: $88
	add  a                                           ; $5b11: $87
	adc  b                                           ; $5b12: $88
	ld   a, b                                        ; $5b13: $78
	ld   a, b                                        ; $5b14: $78
	adc  b                                           ; $5b15: $88
	adc  b                                           ; $5b16: $88
	add  a                                           ; $5b17: $87
	sub  a                                           ; $5b18: $97
	ld   a, c                                        ; $5b19: $79
	ld   a, b                                        ; $5b1a: $78
	adc  c                                           ; $5b1b: $89
	adc  b                                           ; $5b1c: $88
	adc  c                                           ; $5b1d: $89
	add  a                                           ; $5b1e: $87
	adc  b                                           ; $5b1f: $88
	ld   a, b                                        ; $5b20: $78
	add  a                                           ; $5b21: $87
	adc  c                                           ; $5b22: $89
	ld   a, c                                        ; $5b23: $79
	sub  a                                           ; $5b24: $97
	adc  c                                           ; $5b25: $89
	adc  b                                           ; $5b26: $88
	adc  b                                           ; $5b27: $88
	add  a                                           ; $5b28: $87
	add  a                                           ; $5b29: $87
	add  a                                           ; $5b2a: $87
	ld   a, b                                        ; $5b2b: $78
	adc  b                                           ; $5b2c: $88
	ld   a, c                                        ; $5b2d: $79
	adc  b                                           ; $5b2e: $88
	add  a                                           ; $5b2f: $87
	adc  b                                           ; $5b30: $88
	sub  a                                           ; $5b31: $97
	sbc  b                                           ; $5b32: $98
	ld   a, b                                        ; $5b33: $78
	ld   a, b                                        ; $5b34: $78
	adc  b                                           ; $5b35: $88
	adc  c                                           ; $5b36: $89
	sub  a                                           ; $5b37: $97
	sub  a                                           ; $5b38: $97
	sbc  b                                           ; $5b39: $98
	ld   a, b                                        ; $5b3a: $78
	sbc  b                                           ; $5b3b: $98
	adc  b                                           ; $5b3c: $88
	ld   a, b                                        ; $5b3d: $78
	adc  b                                           ; $5b3e: $88
	adc  c                                           ; $5b3f: $89
	adc  b                                           ; $5b40: $88
	add  a                                           ; $5b41: $87
	adc  c                                           ; $5b42: $89
	ld   a, b                                        ; $5b43: $78
	adc  b                                           ; $5b44: $88
	adc  b                                           ; $5b45: $88
	ld   a, b                                        ; $5b46: $78
	add  a                                           ; $5b47: $87
	sub  a                                           ; $5b48: $97
	sbc  b                                           ; $5b49: $98
	ld   a, b                                        ; $5b4a: $78
	sbc  b                                           ; $5b4b: $98
	adc  c                                           ; $5b4c: $89
	ld   a, b                                        ; $5b4d: $78
	adc  b                                           ; $5b4e: $88
	sub  a                                           ; $5b4f: $97
	sbc  b                                           ; $5b50: $98
	ld   a, b                                        ; $5b51: $78
	ld   a, c                                        ; $5b52: $79
	adc  b                                           ; $5b53: $88
	adc  b                                           ; $5b54: $88
	sub  a                                           ; $5b55: $97
	adc  b                                           ; $5b56: $88
	adc  c                                           ; $5b57: $89
	ld   a, c                                        ; $5b58: $79
	add  a                                           ; $5b59: $87
	adc  c                                           ; $5b5a: $89
	ld   a, b                                        ; $5b5b: $78
	adc  b                                           ; $5b5c: $88
	add  a                                           ; $5b5d: $87
	adc  c                                           ; $5b5e: $89
	adc  b                                           ; $5b5f: $88
	ld   a, b                                        ; $5b60: $78
	ld   a, b                                        ; $5b61: $78
	sbc  b                                           ; $5b62: $98
	adc  b                                           ; $5b63: $88
	ld   a, b                                        ; $5b64: $78
	adc  b                                           ; $5b65: $88
	adc  b                                           ; $5b66: $88
	adc  b                                           ; $5b67: $88
	adc  b                                           ; $5b68: $88
	sbc  b                                           ; $5b69: $98
	adc  b                                           ; $5b6a: $88
	sbc  b                                           ; $5b6b: $98
	ld   a, b                                        ; $5b6c: $78
	adc  c                                           ; $5b6d: $89
	adc  c                                           ; $5b6e: $89
	ld   a, b                                        ; $5b6f: $78
	add  a                                           ; $5b70: $87
	adc  b                                           ; $5b71: $88
	adc  b                                           ; $5b72: $88
	adc  b                                           ; $5b73: $88
	adc  b                                           ; $5b74: $88
	ld   a, c                                        ; $5b75: $79
	adc  b                                           ; $5b76: $88
	adc  b                                           ; $5b77: $88
	sub  a                                           ; $5b78: $97
	adc  b                                           ; $5b79: $88
	adc  c                                           ; $5b7a: $89
	adc  b                                           ; $5b7b: $88
	ld   a, c                                        ; $5b7c: $79
	ld   a, c                                        ; $5b7d: $79
	adc  b                                           ; $5b7e: $88
	add  a                                           ; $5b7f: $87
	adc  b                                           ; $5b80: $88
	adc  b                                           ; $5b81: $88
	sbc  b                                           ; $5b82: $98
	add  a                                           ; $5b83: $87
	add  a                                           ; $5b84: $87
	adc  c                                           ; $5b85: $89
	ld   a, c                                        ; $5b86: $79
	ld   a, c                                        ; $5b87: $79
	ld   [hl], a                                     ; $5b88: $77
	sub  a                                           ; $5b89: $97
	sbc  b                                           ; $5b8a: $98
	adc  b                                           ; $5b8b: $88
	ld   a, c                                        ; $5b8c: $79
	ld   a, c                                        ; $5b8d: $79
	ld   a, b                                        ; $5b8e: $78
	sub  [hl]                                        ; $5b8f: $96
	and  a                                           ; $5b90: $a7
	sbc  b                                           ; $5b91: $98
	ld   a, c                                        ; $5b92: $79
	ld   a, b                                        ; $5b93: $78
	ld   a, b                                        ; $5b94: $78
	adc  b                                           ; $5b95: $88
	adc  b                                           ; $5b96: $88
	sub  a                                           ; $5b97: $97
	adc  b                                           ; $5b98: $88
	adc  b                                           ; $5b99: $88
	sbc  b                                           ; $5b9a: $98
	ld   a, b                                        ; $5b9b: $78
	adc  c                                           ; $5b9c: $89
	ld   a, b                                        ; $5b9d: $78
	adc  b                                           ; $5b9e: $88
	adc  b                                           ; $5b9f: $88
	add  a                                           ; $5ba0: $87
	adc  b                                           ; $5ba1: $88
	ld   a, b                                        ; $5ba2: $78
	adc  b                                           ; $5ba3: $88
	ld   a, b                                        ; $5ba4: $78
	adc  b                                           ; $5ba5: $88
	adc  b                                           ; $5ba6: $88
	sub  a                                           ; $5ba7: $97
	adc  b                                           ; $5ba8: $88
	adc  b                                           ; $5ba9: $88
	sbc  b                                           ; $5baa: $98
	adc  b                                           ; $5bab: $88
	sbc  b                                           ; $5bac: $98
	ld   a, c                                        ; $5bad: $79
	ld   a, b                                        ; $5bae: $78
	sbc  b                                           ; $5baf: $98
	adc  b                                           ; $5bb0: $88
	adc  b                                           ; $5bb1: $88
	adc  b                                           ; $5bb2: $88
	ld   a, b                                        ; $5bb3: $78
	adc  b                                           ; $5bb4: $88
	adc  b                                           ; $5bb5: $88
	add  a                                           ; $5bb6: $87
	sbc  b                                           ; $5bb7: $98
	adc  b                                           ; $5bb8: $88
	ld   a, b                                        ; $5bb9: $78
	adc  b                                           ; $5bba: $88
	add  a                                           ; $5bbb: $87
	sub  a                                           ; $5bbc: $97
	ld   a, b                                        ; $5bbd: $78
	adc  b                                           ; $5bbe: $88
	ld   [hl], a                                     ; $5bbf: $77
	add  a                                           ; $5bc0: $87
	adc  b                                           ; $5bc1: $88
	sbc  c                                           ; $5bc2: $99
	ld   a, c                                        ; $5bc3: $79
	adc  b                                           ; $5bc4: $88
	adc  b                                           ; $5bc5: $88
	adc  b                                           ; $5bc6: $88
	add  a                                           ; $5bc7: $87
	adc  b                                           ; $5bc8: $88
	ld   a, b                                        ; $5bc9: $78
	adc  b                                           ; $5bca: $88
	ld   a, b                                        ; $5bcb: $78
	sub  a                                           ; $5bcc: $97
	adc  b                                           ; $5bcd: $88
	adc  c                                           ; $5bce: $89
	add  a                                           ; $5bcf: $87
	adc  b                                           ; $5bd0: $88
	adc  b                                           ; $5bd1: $88
	adc  b                                           ; $5bd2: $88
	sbc  b                                           ; $5bd3: $98
	ld   a, b                                        ; $5bd4: $78
	adc  c                                           ; $5bd5: $89
	ld   a, b                                        ; $5bd6: $78
	adc  b                                           ; $5bd7: $88
	ld   a, b                                        ; $5bd8: $78
	adc  b                                           ; $5bd9: $88
	add  a                                           ; $5bda: $87
	sbc  b                                           ; $5bdb: $98
	ld   a, b                                        ; $5bdc: $78
	sub  a                                           ; $5bdd: $97
	ld   a, c                                        ; $5bde: $79
	ld   a, b                                        ; $5bdf: $78
	sub  a                                           ; $5be0: $97
	adc  c                                           ; $5be1: $89
	add  a                                           ; $5be2: $87
	sbc  b                                           ; $5be3: $98
	ld   a, b                                        ; $5be4: $78
	adc  b                                           ; $5be5: $88
	adc  b                                           ; $5be6: $88
	ld   a, b                                        ; $5be7: $78
	ld   [hl], a                                     ; $5be8: $77
	add  a                                           ; $5be9: $87
	sub  a                                           ; $5bea: $97
	add  a                                           ; $5beb: $87
	adc  b                                           ; $5bec: $88
	ld   a, c                                        ; $5bed: $79
	ld   a, c                                        ; $5bee: $79
	adc  b                                           ; $5bef: $88
	adc  b                                           ; $5bf0: $88
	sub  a                                           ; $5bf1: $97
	add  a                                           ; $5bf2: $87
	sbc  b                                           ; $5bf3: $98
	ld   a, b                                        ; $5bf4: $78
	adc  b                                           ; $5bf5: $88
	ld   a, c                                        ; $5bf6: $79
	adc  b                                           ; $5bf7: $88
	ld   [hl], a                                     ; $5bf8: $77
	sub  a                                           ; $5bf9: $97
	adc  b                                           ; $5bfa: $88
	adc  b                                           ; $5bfb: $88
	adc  b                                           ; $5bfc: $88
	ld   a, c                                        ; $5bfd: $79
	add  a                                           ; $5bfe: $87
	xor  b                                           ; $5bff: $a8
	ld   a, b                                        ; $5c00: $78
	adc  b                                           ; $5c01: $88
	adc  b                                           ; $5c02: $88
	ld   a, b                                        ; $5c03: $78
	add  a                                           ; $5c04: $87
	adc  b                                           ; $5c05: $88
	adc  c                                           ; $5c06: $89
	ld   a, c                                        ; $5c07: $79
	adc  b                                           ; $5c08: $88
	adc  c                                           ; $5c09: $89
	sbc  b                                           ; $5c0a: $98
	sbc  b                                           ; $5c0b: $98
	adc  b                                           ; $5c0c: $88
	adc  b                                           ; $5c0d: $88
	add  a                                           ; $5c0e: $87
	adc  c                                           ; $5c0f: $89
	ld   a, b                                        ; $5c10: $78
	add  a                                           ; $5c11: $87
	sbc  b                                           ; $5c12: $98
	adc  b                                           ; $5c13: $88
	adc  b                                           ; $5c14: $88
	sbc  c                                           ; $5c15: $99
	ld   a, c                                        ; $5c16: $79
	sbc  b                                           ; $5c17: $98
	ld   a, c                                        ; $5c18: $79
	add  [hl]                                        ; $5c19: $86
	adc  b                                           ; $5c1a: $88
	adc  b                                           ; $5c1b: $88
	adc  b                                           ; $5c1c: $88
	sbc  b                                           ; $5c1d: $98
	ld   a, c                                        ; $5c1e: $79
	add  a                                           ; $5c1f: $87
	adc  b                                           ; $5c20: $88
	add  a                                           ; $5c21: $87
	sbc  b                                           ; $5c22: $98
	ld   a, c                                        ; $5c23: $79
	ld   l, c                                        ; $5c24: $69
	sub  a                                           ; $5c25: $97
	adc  b                                           ; $5c26: $88
	add  a                                           ; $5c27: $87
	sub  a                                           ; $5c28: $97
	adc  c                                           ; $5c29: $89
	adc  b                                           ; $5c2a: $88
	add  a                                           ; $5c2b: $87
	ld   a, d                                        ; $5c2c: $7a
	ld   a, b                                        ; $5c2d: $78
	sub  a                                           ; $5c2e: $97
	add  a                                           ; $5c2f: $87
	sbc  b                                           ; $5c30: $98
	ld   a, c                                        ; $5c31: $79
	ld   a, c                                        ; $5c32: $79
	adc  b                                           ; $5c33: $88
	add  a                                           ; $5c34: $87
	add  a                                           ; $5c35: $87
	adc  b                                           ; $5c36: $88
	ld   a, c                                        ; $5c37: $79
	adc  b                                           ; $5c38: $88
	ld   a, b                                        ; $5c39: $78
	sub  a                                           ; $5c3a: $97
	sub  a                                           ; $5c3b: $97
	adc  c                                           ; $5c3c: $89
	ld   a, b                                        ; $5c3d: $78
	adc  c                                           ; $5c3e: $89
	add  a                                           ; $5c3f: $87
	adc  b                                           ; $5c40: $88
	sbc  b                                           ; $5c41: $98
	add  a                                           ; $5c42: $87
	add  a                                           ; $5c43: $87
	ld   a, c                                        ; $5c44: $79
	ld   a, c                                        ; $5c45: $79
	ld   l, c                                        ; $5c46: $69
	sub  [hl]                                        ; $5c47: $96
	and  a                                           ; $5c48: $a7
	sub  a                                           ; $5c49: $97
	adc  d                                           ; $5c4a: $8a
	ld   a, c                                        ; $5c4b: $79
	ld   a, c                                        ; $5c4c: $79
	sub  a                                           ; $5c4d: $97
	add  a                                           ; $5c4e: $87
	adc  b                                           ; $5c4f: $88
	adc  b                                           ; $5c50: $88
	ld   a, b                                        ; $5c51: $78
	ld   a, b                                        ; $5c52: $78
	adc  b                                           ; $5c53: $88
	sub  a                                           ; $5c54: $97
	sbc  b                                           ; $5c55: $98
	adc  c                                           ; $5c56: $89
	ld   l, d                                        ; $5c57: $6a
	ld   a, b                                        ; $5c58: $78
	add  a                                           ; $5c59: $87
	sub  a                                           ; $5c5a: $97
	add  a                                           ; $5c5b: $87
	and  a                                           ; $5c5c: $a7
	ld   a, c                                        ; $5c5d: $79
	ld   a, d                                        ; $5c5e: $7a
	ld   a, b                                        ; $5c5f: $78
	sbc  b                                           ; $5c60: $98
	ld   a, b                                        ; $5c61: $78
	add  a                                           ; $5c62: $87
	adc  c                                           ; $5c63: $89
	add  a                                           ; $5c64: $87
	sub  a                                           ; $5c65: $97
	sbc  b                                           ; $5c66: $98
	ld   a, b                                        ; $5c67: $78
	adc  b                                           ; $5c68: $88
	ld   a, c                                        ; $5c69: $79
	add  a                                           ; $5c6a: $87
	sub  a                                           ; $5c6b: $97
	sbc  b                                           ; $5c6c: $98
	add  a                                           ; $5c6d: $87
	ld   a, c                                        ; $5c6e: $79
	ld   a, c                                        ; $5c6f: $79
	ld   a, b                                        ; $5c70: $78
	sub  a                                           ; $5c71: $97
	sub  a                                           ; $5c72: $97
	sub  a                                           ; $5c73: $97
	sbc  c                                           ; $5c74: $99
	ld   l, c                                        ; $5c75: $69
	ld   a, b                                        ; $5c76: $78
	add  a                                           ; $5c77: $87
	add  a                                           ; $5c78: $87
	sub  [hl]                                        ; $5c79: $96
	add  a                                           ; $5c7a: $87
	adc  c                                           ; $5c7b: $89
	ld   l, c                                        ; $5c7c: $69
	ld   a, b                                        ; $5c7d: $78
	add  a                                           ; $5c7e: $87
	sbc  c                                           ; $5c7f: $99
	add  a                                           ; $5c80: $87
	adc  c                                           ; $5c81: $89
	ld   a, b                                        ; $5c82: $78
	ld   a, c                                        ; $5c83: $79
	add  a                                           ; $5c84: $87
	sub  a                                           ; $5c85: $97
	add  a                                           ; $5c86: $87
	ld   a, b                                        ; $5c87: $78
	sub  a                                           ; $5c88: $97
	ld   a, c                                        ; $5c89: $79
	ld   a, d                                        ; $5c8a: $7a
	ld   a, b                                        ; $5c8b: $78
	sub  a                                           ; $5c8c: $97
	adc  b                                           ; $5c8d: $88
	sub  a                                           ; $5c8e: $97
	add  a                                           ; $5c8f: $87
	sbc  b                                           ; $5c90: $98
	add  a                                           ; $5c91: $87
	adc  c                                           ; $5c92: $89
	ld   l, b                                        ; $5c93: $68
	add  a                                           ; $5c94: $87
	ld   a, b                                        ; $5c95: $78
	add  a                                           ; $5c96: $87
	sub  a                                           ; $5c97: $97
	adc  d                                           ; $5c98: $8a
	ld   l, b                                        ; $5c99: $68
	sbc  b                                           ; $5c9a: $98
	ld   a, b                                        ; $5c9b: $78
	sub  [hl]                                        ; $5c9c: $96
	adc  c                                           ; $5c9d: $89
	adc  c                                           ; $5c9e: $89
	ld   a, c                                        ; $5c9f: $79
	ld   a, b                                        ; $5ca0: $78
	add  [hl]                                        ; $5ca1: $86
	adc  c                                           ; $5ca2: $89
	ld   a, b                                        ; $5ca3: $78
	add  a                                           ; $5ca4: $87
	and  a                                           ; $5ca5: $a7
	ld   a, b                                        ; $5ca6: $78
	adc  b                                           ; $5ca7: $88
	ld   a, c                                        ; $5ca8: $79
	add  a                                           ; $5ca9: $87
	sbc  b                                           ; $5caa: $98
	ld   a, c                                        ; $5cab: $79
	add  [hl]                                        ; $5cac: $86
	sbc  c                                           ; $5cad: $99
	ld   a, b                                        ; $5cae: $78
	sbc  b                                           ; $5caf: $98
	add  a                                           ; $5cb0: $87
	adc  c                                           ; $5cb1: $89
	add  a                                           ; $5cb2: $87
	sbc  c                                           ; $5cb3: $99
	ld   l, b                                        ; $5cb4: $68
	adc  b                                           ; $5cb5: $88
	add  a                                           ; $5cb6: $87
	sub  a                                           ; $5cb7: $97
	adc  b                                           ; $5cb8: $88
	ld   a, b                                        ; $5cb9: $78
	halt                                             ; $5cba: $76
	sbc  c                                           ; $5cbb: $99
	ld   [hl], a                                     ; $5cbc: $77
	sbc  c                                           ; $5cbd: $99
	ld   l, b                                        ; $5cbe: $68

jr_0a7_5cbf:
	sub  a                                           ; $5cbf: $97
	adc  c                                           ; $5cc0: $89
	ld   l, c                                        ; $5cc1: $69
	add  a                                           ; $5cc2: $87
	adc  b                                           ; $5cc3: $88
	halt                                             ; $5cc4: $76
	xor  b                                           ; $5cc5: $a8
	ld   a, c                                        ; $5cc6: $79
	ld   a, c                                        ; $5cc7: $79
	ld   a, c                                        ; $5cc8: $79
	adc  b                                           ; $5cc9: $88
	sbc  b                                           ; $5cca: $98
	ld   a, c                                        ; $5ccb: $79
	sbc  b                                           ; $5ccc: $98
	adc  b                                           ; $5ccd: $88
	xor  b                                           ; $5cce: $a8
	adc  b                                           ; $5ccf: $88
	ld   a, c                                        ; $5cd0: $79
	ld   a, b                                        ; $5cd1: $78
	sbc  c                                           ; $5cd2: $99
	sub  a                                           ; $5cd3: $97
	sub  a                                           ; $5cd4: $97
	ld   a, c                                        ; $5cd5: $79
	ld   a, c                                        ; $5cd6: $79
	adc  c                                           ; $5cd7: $89
	add  [hl]                                        ; $5cd8: $86
	sub  a                                           ; $5cd9: $97
	add  a                                           ; $5cda: $87
	ld   a, d                                        ; $5cdb: $7a
	ld   a, c                                        ; $5cdc: $79
	ld   a, c                                        ; $5cdd: $79
	add  [hl]                                        ; $5cde: $86
	add  a                                           ; $5cdf: $87
	xor  b                                           ; $5ce0: $a8
	ld   a, c                                        ; $5ce1: $79
	ld   a, b                                        ; $5ce2: $78
	adc  b                                           ; $5ce3: $88
	adc  b                                           ; $5ce4: $88
	add  a                                           ; $5ce5: $87
	sbc  c                                           ; $5ce6: $99
	adc  c                                           ; $5ce7: $89
	sbc  b                                           ; $5ce8: $98
	adc  c                                           ; $5ce9: $89
	sbc  c                                           ; $5cea: $99
	ld   [hl], a                                     ; $5ceb: $77
	sub  a                                           ; $5cec: $97
	add  a                                           ; $5ced: $87
	adc  c                                           ; $5cee: $89
	ld   a, b                                        ; $5cef: $78
	ld   a, b                                        ; $5cf0: $78
	add  a                                           ; $5cf1: $87
	sbc  b                                           ; $5cf2: $98
	ld   a, c                                        ; $5cf3: $79
	sbc  b                                           ; $5cf4: $98
	sbc  c                                           ; $5cf5: $99
	adc  c                                           ; $5cf6: $89
	sbc  b                                           ; $5cf7: $98
	adc  c                                           ; $5cf8: $89
	adc  c                                           ; $5cf9: $89
	sbc  b                                           ; $5cfa: $98
	add  a                                           ; $5cfb: $87
	add  a                                           ; $5cfc: $87
	ld   a, b                                        ; $5cfd: $78
	ld   [hl], a                                     ; $5cfe: $77
	ld   [hl], a                                     ; $5cff: $77
	ld   a, b                                        ; $5d00: $78
	ld   [hl], a                                     ; $5d01: $77
	add  a                                           ; $5d02: $87
	add  a                                           ; $5d03: $87
	adc  b                                           ; $5d04: $88
	sbc  d                                           ; $5d05: $9a
	adc  c                                           ; $5d06: $89
	xor  d                                           ; $5d07: $aa
	sbc  d                                           ; $5d08: $9a
	cp   c                                           ; $5d09: $b9
	adc  d                                           ; $5d0a: $8a
	ld   l, b                                        ; $5d0b: $68
	add  [hl]                                        ; $5d0c: $86
	ld   h, l                                        ; $5d0d: $65
	ld   h, h                                        ; $5d0e: $64
	ld   d, l                                        ; $5d0f: $55
	ld   b, h                                        ; $5d10: $44
	ld   d, l                                        ; $5d11: $55
	ld   h, a                                        ; $5d12: $67
	adc  c                                           ; $5d13: $89
	cp   h                                           ; $5d14: $bc
	cp   l                                           ; $5d15: $bd
	db   $dd                                         ; $5d16: $dd
	db   $dd                                         ; $5d17: $dd
	db   $dd                                         ; $5d18: $dd
	cp   d                                           ; $5d19: $ba
	sbc  b                                           ; $5d1a: $98
	ld   [hl], h                                     ; $5d1b: $74
	ld   a, d                                        ; $5d1c: $7a
	ld   [de], a                                     ; $5d1d: $12
	ld   [hl], d                                     ; $5d1e: $72
	ld   de, $2744                                   ; $5d1f: $11 $44 $27
	ld   e, e                                        ; $5d22: $5b
	cp   b                                           ; $5d23: $b8
	adc  $fb                                         ; $5d24: $ce $fb
	rst  JumpTable                                         ; $5d26: $df
	call c, $b9bc                                    ; $5d27: $dc $bc $b9
	xor  b                                           ; $5d2a: $a8
	sub  h                                           ; $5d2b: $94
	ld   a, [hl-]                                    ; $5d2c: $3a
	ld   [hl], c                                     ; $5d2d: $71
	ld   d, [hl]                                     ; $5d2e: $56
	ld   de, $1315                                   ; $5d2f: $11 $15 $13
	ld   [hl], l                                     ; $5d32: $75
	jp   hl                                          ; $5d33: $e9


	sbc  l                                           ; $5d34: $9d
	rst  $38                                         ; $5d35: $ff
	xor  a                                           ; $5d36: $af
	db   $fc                                         ; $5d37: $fc
	jp   z, $a7d8                                    ; $5d38: $ca $d8 $a7

	ld   a, b                                        ; $5d3b: $78
	jr   jr_0a7_5cbf                                 ; $5d3c: $18 $81

	daa                                              ; $5d3e: $27
	ld   de, $1215                                   ; $5d3f: $11 $15 $12
	add  h                                           ; $5d42: $84
	db   $db                                         ; $5d43: $db
	xor  a                                           ; $5d44: $af
	rst  $28                                         ; $5d45: $ef
	cp   a                                           ; $5d46: $bf
	db   $fc                                         ; $5d47: $fc
	ld   a, [$98fa]                                  ; $5d48: $fa $fa $98
	jr   c, jr_0a7_5d62                              ; $5d4b: $38 $15

	add  c                                           ; $5d4d: $81
	dec  h                                           ; $5d4e: $25
	ld   de, $1115                                   ; $5d4f: $11 $15 $11
	sub  h                                           ; $5d52: $94
	db   $db                                         ; $5d53: $db
	xor  a                                           ; $5d54: $af
	rst  $38                                         ; $5d55: $ff
	rst  JumpTable                                         ; $5d56: $df
	cp   $fa                                         ; $5d57: $fe $fa
	ld   a, [$3699]                                  ; $5d59: $fa $99 $36
	inc  d                                           ; $5d5c: $14
	ld   [hl], c                                     ; $5d5d: $71
	inc  d                                           ; $5d5e: $14
	ld   de, $1114                                   ; $5d5f: $11 $14 $11

jr_0a7_5d62:
	sub  h                                           ; $5d62: $94
	db   $db                                         ; $5d63: $db
	cp   a                                           ; $5d64: $bf
	rst  $38                                         ; $5d65: $ff
	rst  $38                                         ; $5d66: $ff
	cp   $fc                                         ; $5d67: $fe $fc
	ei                                               ; $5d69: $fb
	sbc  b                                           ; $5d6a: $98
	ld   h, $14                                      ; $5d6b: $26 $14
	ld   d, c                                        ; $5d6d: $51
	inc  de                                          ; $5d6e: $13
	ld   de, $1114                                   ; $5d6f: $11 $14 $11
	add  l                                           ; $5d72: $85
	db   $eb                                         ; $5d73: $eb
	cp   a                                           ; $5d74: $bf
	rst  $38                                         ; $5d75: $ff
	rst  $28                                         ; $5d76: $ef
	rst  $38                                         ; $5d77: $ff
	db   $fd                                         ; $5d78: $fd
	ld   a, [$4698]                                  ; $5d79: $fa $98 $46
	inc  d                                           ; $5d7c: $14
	ld   b, c                                        ; $5d7d: $41
	ld   [de], a                                     ; $5d7e: $12
	ld   de, $1113                                   ; $5d7f: $11 $13 $11
	add  l                                           ; $5d82: $85
	db   $ec                                         ; $5d83: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d84: $cf
	rst  $38                                         ; $5d85: $ff
	rst  $38                                         ; $5d86: $ff
	rst  $38                                         ; $5d87: $ff
	db   $fd                                         ; $5d88: $fd
	ei                                               ; $5d89: $fb
	xor  b                                           ; $5d8a: $a8
	ld   b, [hl]                                     ; $5d8b: $46
	ld   [de], a                                     ; $5d8c: $12
	ld   d, c                                        ; $5d8d: $51
	ld   [de], a                                     ; $5d8e: $12
	ld   de, $1111                                   ; $5d8f: $11 $11 $11
	halt                                             ; $5d92: $76
	cp   [hl]                                        ; $5d93: $be
	cp   a                                           ; $5d94: $bf
	rst  $38                                         ; $5d95: $ff
	rst  $38                                         ; $5d96: $ff
	rst  $38                                         ; $5d97: $ff
	cp   $fd                                         ; $5d98: $fe $fd
	cp   c                                           ; $5d9a: $b9
	scf                                              ; $5d9b: $37
	ld   de, $1151                                   ; $5d9c: $11 $51 $11
	ld   de, $2111                                   ; $5d9f: $11 $11 $21
	ld   d, [hl]                                     ; $5da2: $56
	sbc  l                                           ; $5da3: $9d
	cp   a                                           ; $5da4: $bf
	rst  $38                                         ; $5da5: $ff
	rst  $38                                         ; $5da6: $ff
	rst  $38                                         ; $5da7: $ff
	rst  $38                                         ; $5da8: $ff
	rst  $28                                         ; $5da9: $ef
	cp   h                                           ; $5daa: $bc
	ld   d, [hl]                                     ; $5dab: $56
	ld   d, c                                        ; $5dac: $51
	ld   d, e                                        ; $5dad: $53
	ld   de, $1111                                   ; $5dae: $11 $11 $11
	ld   de, $4b15                                   ; $5db1: $11 $15 $4b
	call $ffef                                       ; $5db4: $cd $ef $ff
	rst  $38                                         ; $5db7: $ff
	rst  $38                                         ; $5db8: $ff
	rst  $28                                         ; $5db9: $ef
	call c, Call_0a7_74a6                            ; $5dba: $dc $a6 $74
	dec  [hl]                                        ; $5dbd: $35
	ld   de, $1111                                   ; $5dbe: $11 $11 $11
	ld   de, $4612                                   ; $5dc1: $11 $12 $46
	jp   z, $ffde                                    ; $5dc4: $ca $de $ff

	rst  $38                                         ; $5dc7: $ff
	rst  $38                                         ; $5dc8: $ff
	db   $fd                                         ; $5dc9: $fd
	db   $ec                                         ; $5dca: $ec
	jp   c, $6588                                    ; $5dcb: $da $88 $65

	ld   d, d                                        ; $5dce: $52
	ld   de, $1111                                   ; $5dcf: $11 $11 $11
	ld   de, $5923                                   ; $5dd2: $11 $23 $59
	xor  e                                           ; $5dd5: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dd6: $cf
	rst  $38                                         ; $5dd7: $ff
	rst  $38                                         ; $5dd8: $ff
	rst  $38                                         ; $5dd9: $ff
	rst  $28                                         ; $5dda: $ef
	xor  $db                                         ; $5ddb: $ee $db
	xor  c                                           ; $5ddd: $a9
	halt                                             ; $5dde: $76
	ld   d, c                                        ; $5ddf: $51
	ld   de, $1111                                   ; $5de0: $11 $11 $11
	ld   de, $6713                                   ; $5de3: $11 $13 $67
	sbc  e                                           ; $5de6: $9b
	rst  JumpTable                                         ; $5de7: $df
	rst  $38                                         ; $5de8: $ff
	rst  $38                                         ; $5de9: $ff
	rst  $38                                         ; $5dea: $ff
	rst  $38                                         ; $5deb: $ff
	rst  $38                                         ; $5dec: $ff
	db   $ed                                         ; $5ded: $ed
	jp   z, Jump_0a7_4187                            ; $5dee: $ca $87 $41

	ld   de, $1111                                   ; $5df1: $11 $11 $11
	ld   de, $6714                                   ; $5df4: $11 $14 $67
	xor  h                                           ; $5df7: $ac
	db   $dd                                         ; $5df8: $dd
	rst  $38                                         ; $5df9: $ff
	rst  $38                                         ; $5dfa: $ff
	rst  $38                                         ; $5dfb: $ff
	rst  $38                                         ; $5dfc: $ff
	rst  $38                                         ; $5dfd: $ff
	cp   $cb                                         ; $5dfe: $fe $cb
	add  [hl]                                        ; $5e00: $86
	ld   b, c                                        ; $5e01: $41
	ld   de, $1111                                   ; $5e02: $11 $11 $11
	ld   de, $5714                                   ; $5e05: $11 $14 $57
	xor  h                                           ; $5e08: $ac
	call $ffff                                       ; $5e09: $cd $ff $ff
	rst  $38                                         ; $5e0c: $ff
	rst  $38                                         ; $5e0d: $ff
	rst  $38                                         ; $5e0e: $ff
	cp   $db                                         ; $5e0f: $fe $db
	sub  [hl]                                        ; $5e11: $96
	ld   b, c                                        ; $5e12: $41
	ld   de, $1111                                   ; $5e13: $11 $11 $11
	ld   de, $5614                                   ; $5e16: $11 $14 $56
	cp   l                                           ; $5e19: $bd
	call $efff                                       ; $5e1a: $cd $ff $ef
	rst  $38                                         ; $5e1d: $ff
	rst  $38                                         ; $5e1e: $ff
	rst  $38                                         ; $5e1f: $ff
	rst  $38                                         ; $5e20: $ff
	call z, Call_0a7_5296                            ; $5e21: $cc $96 $52
	ld   de, $1111                                   ; $5e24: $11 $11 $11
	ld   de, $5614                                   ; $5e27: $11 $14 $56
	cp   l                                           ; $5e2a: $bd
	call $efff                                       ; $5e2b: $cd $ff $ef
	rst  $38                                         ; $5e2e: $ff
	rst  $38                                         ; $5e2f: $ff
	rst  $38                                         ; $5e30: $ff
	rst  $38                                         ; $5e31: $ff
	db   $ec                                         ; $5e32: $ec
	and  [hl]                                        ; $5e33: $a6
	ld   d, e                                        ; $5e34: $53
	ld   de, $1111                                   ; $5e35: $11 $11 $11
	ld   de, $5513                                   ; $5e38: $11 $13 $55
	sbc  l                                           ; $5e3b: $9d
	cp   h                                           ; $5e3c: $bc
	rst  $38                                         ; $5e3d: $ff
	rst  $28                                         ; $5e3e: $ef
	rst  $38                                         ; $5e3f: $ff
	rst  $38                                         ; $5e40: $ff
	rst  $38                                         ; $5e41: $ff
	rst  $38                                         ; $5e42: $ff
	db   $fd                                         ; $5e43: $fd
	or   a                                           ; $5e44: $b7
	ld   d, l                                        ; $5e45: $55
	ld   de, $1111                                   ; $5e46: $11 $11 $11
	ld   de, $4411                                   ; $5e49: $11 $11 $44
	ld   a, h                                        ; $5e4c: $7c
	call z, $ffef                                    ; $5e4d: $cc $ef $ff
	rst  $38                                         ; $5e50: $ff
	rst  $38                                         ; $5e51: $ff
	rst  $38                                         ; $5e52: $ff
	rst  $38                                         ; $5e53: $ff
	cp   $ea                                         ; $5e54: $fe $ea
	ld   d, l                                        ; $5e56: $55
	ld   sp, $1111                                   ; $5e57: $31 $11 $11
	ld   de, $3411                                   ; $5e5a: $11 $11 $34
	ld   e, d                                        ; $5e5d: $5a
	call z, $ffdf                                    ; $5e5e: $cc $df $ff
	rst  $38                                         ; $5e61: $ff
	rst  $38                                         ; $5e62: $ff
	rst  $38                                         ; $5e63: $ff
	rst  $38                                         ; $5e64: $ff
	rst  $38                                         ; $5e65: $ff
	db   $fd                                         ; $5e66: $fd
	ld   [hl], l                                     ; $5e67: $75
	ld   b, c                                        ; $5e68: $41
	ld   de, $1111                                   ; $5e69: $11 $11 $11
	ld   de, $4614                                   ; $5e6c: $11 $14 $46
	xor  h                                           ; $5e6f: $ac
	call $ffff                                       ; $5e70: $cd $ff $ff
	rst  $38                                         ; $5e73: $ff
	rst  $38                                         ; $5e74: $ff
	rst  $38                                         ; $5e75: $ff
	rst  $38                                         ; $5e76: $ff
	cp   $c7                                         ; $5e77: $fe $c7
	ld   b, h                                        ; $5e79: $44
	ld   de, $1111                                   ; $5e7a: $11 $11 $11
	ld   de, $4511                                   ; $5e7d: $11 $11 $45
	ld   l, d                                        ; $5e80: $6a
	db   $dd                                         ; $5e81: $dd
	rst  $28                                         ; $5e82: $ef
	rst  $38                                         ; $5e83: $ff
	rst  $38                                         ; $5e84: $ff
	rst  $38                                         ; $5e85: $ff
	rst  $38                                         ; $5e86: $ff
	rst  $38                                         ; $5e87: $ff
	rst  $38                                         ; $5e88: $ff
	db   $ec                                         ; $5e89: $ec
	ld   [hl], h                                     ; $5e8a: $74
	ld   sp, $1111                                   ; $5e8b: $31 $11 $11
	ld   de, $1311                                   ; $5e8e: $11 $11 $13
	ld   d, [hl]                                     ; $5e91: $56
	xor  l                                           ; $5e92: $ad
	db   $dd                                         ; $5e93: $dd
	rst  $38                                         ; $5e94: $ff
	rst  $28                                         ; $5e95: $ef
	rst  $38                                         ; $5e96: $ff
	rst  $38                                         ; $5e97: $ff
	rst  $38                                         ; $5e98: $ff
	rst  $38                                         ; $5e99: $ff
	cp   $c8                                         ; $5e9a: $fe $c8
	ld   b, e                                        ; $5e9c: $43
	ld   hl, $1111                                   ; $5e9d: $21 $11 $11
	ld   de, $2511                                   ; $5ea0: $11 $11 $25
	ld   l, c                                        ; $5ea3: $69
	cp   l                                           ; $5ea4: $bd
	rst  JumpTable                                         ; $5ea5: $df
	rst  $38                                         ; $5ea6: $ff
	rst  $38                                         ; $5ea7: $ff
	rst  $38                                         ; $5ea8: $ff
	rst  $38                                         ; $5ea9: $ff
	rst  $38                                         ; $5eaa: $ff
	rst  $38                                         ; $5eab: $ff
	db   $ed                                         ; $5eac: $ed
	and  [hl]                                        ; $5ead: $a6
	inc  sp                                          ; $5eae: $33
	ld   de, $1111                                   ; $5eaf: $11 $11 $11
	ld   de, $4511                                   ; $5eb2: $11 $11 $45
	ld   a, c                                        ; $5eb5: $79
	db   $dd                                         ; $5eb6: $dd
	rst  JumpTable                                         ; $5eb7: $df
	rst  $38                                         ; $5eb8: $ff
	rst  $38                                         ; $5eb9: $ff
	rst  $38                                         ; $5eba: $ff
	rst  $38                                         ; $5ebb: $ff
	rst  $38                                         ; $5ebc: $ff
	rst  $38                                         ; $5ebd: $ff
	db   $ed                                         ; $5ebe: $ed
	sub  h                                           ; $5ebf: $94
	ld   [hl-], a                                    ; $5ec0: $32
	ld   de, $1111                                   ; $5ec1: $11 $11 $11
	ld   de, $5611                                   ; $5ec4: $11 $11 $56
	ld   a, d                                        ; $5ec7: $7a
	call $ffdf                                       ; $5ec8: $cd $df $ff
	rst  $38                                         ; $5ecb: $ff
	rst  $38                                         ; $5ecc: $ff
	rst  $38                                         ; $5ecd: $ff
	rst  $38                                         ; $5ece: $ff
	rst  $38                                         ; $5ecf: $ff
	db   $ec                                         ; $5ed0: $ec
	ld   [hl], h                                     ; $5ed1: $74
	ld   hl, $1111                                   ; $5ed2: $21 $11 $11
	ld   de, $1211                                   ; $5ed5: $11 $11 $12
	ld   d, [hl]                                     ; $5ed8: $56
	adc  h                                           ; $5ed9: $8c
	call z, $ffff                                    ; $5eda: $cc $ff $ff
	rst  $38                                         ; $5edd: $ff
	rst  $38                                         ; $5ede: $ff
	rst  $38                                         ; $5edf: $ff
	rst  $38                                         ; $5ee0: $ff
	cp   $c7                                         ; $5ee1: $fe $c7
	ld   sp, $1111                                   ; $5ee3: $31 $11 $11
	ld   de, $1111                                   ; $5ee6: $11 $11 $11
	ld   d, a                                        ; $5ee9: $57
	ld   a, h                                        ; $5eea: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eeb: $cf
	rst  $38                                         ; $5eec: $ff
	rst  $38                                         ; $5eed: $ff
	rst  $38                                         ; $5eee: $ff
	rst  $38                                         ; $5eef: $ff
	rst  $38                                         ; $5ef0: $ff
	cp   a                                           ; $5ef1: $bf
	and  a                                           ; $5ef2: $a7
	ld   [hl], h                                     ; $5ef3: $74
	ld   hl, $1111                                   ; $5ef4: $21 $11 $11
	ld   de, $4112                                   ; $5ef7: $11 $12 $41
	ld   d, a                                        ; $5efa: $57
	rst  $38                                         ; $5efb: $ff
	rst  $38                                         ; $5efc: $ff
	rst  $38                                         ; $5efd: $ff
	rst  $38                                         ; $5efe: $ff
	db   $fd                                         ; $5eff: $fd
	rst  $38                                         ; $5f00: $ff
	sub  $34                                         ; $5f01: $d6 $34
	inc  [hl]                                        ; $5f03: $34
	ld   de, $1111                                   ; $5f04: $11 $11 $11
	ld   de, $1431                                   ; $5f07: $11 $31 $14
	adc  a                                           ; $5f0a: $8f
	db   $fd                                         ; $5f0b: $fd
	rst  $38                                         ; $5f0c: $ff
	rst  $38                                         ; $5f0d: $ff
	rst  $38                                         ; $5f0e: $ff
	rst  $38                                         ; $5f0f: $ff
	reti                                             ; $5f10: $d9


	ld   l, d                                        ; $5f11: $6a
	sub  $53                                         ; $5f12: $d6 $53
	dec  h                                           ; $5f14: $25
	ld   b, d                                        ; $5f15: $42
	ld   de, $1111                                   ; $5f16: $11 $11 $11
	ld   b, d                                        ; $5f19: $42
	ld   de, $fc5b                                   ; $5f1a: $11 $5b $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f1d: $cf
	rst  $38                                         ; $5f1e: $ff
	rst  $38                                         ; $5f1f: $ff
	rst  $38                                         ; $5f20: $ff
	rst  $30                                         ; $5f21: $f7
	ld   h, a                                        ; $5f22: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f23: $cf
	adc  d                                           ; $5f24: $8a
	sub  a                                           ; $5f25: $97
	cp   b                                           ; $5f26: $b8
	ld   b, e                                        ; $5f27: $43
	ld   sp, $1111                                   ; $5f28: $31 $11 $11
	ld   sp, $9f14                                   ; $5f2b: $31 $14 $9f
	rst  $38                                         ; $5f2e: $ff
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	rst  $38                                         ; $5f31: $ff
	cp   h                                           ; $5f32: $bc
	ld   d, c                                        ; $5f33: $51
	ld   b, [hl]                                     ; $5f34: $46
	rst  $38                                         ; $5f35: $ff
	xor  h                                           ; $5f36: $ac
	adc  h                                           ; $5f37: $8c
	ret  z                                           ; $5f38: $c8

	add  h                                           ; $5f39: $84
	ld   sp, $1311                                   ; $5f3a: $31 $11 $13
	ld   de, $ef36                                   ; $5f3d: $11 $36 $ef
	rst  $38                                         ; $5f40: $ff
	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	db   $fd                                         ; $5f43: $fd
	ld   d, l                                        ; $5f44: $55
	ld   de, $ff39                                   ; $5f45: $11 $39 $ff
	db   $fc                                         ; $5f48: $fc
	sbc  l                                           ; $5f49: $9d
	call c, $11a4                                    ; $5f4a: $dc $a4 $11
	ld   de, $1114                                   ; $5f4d: $11 $14 $11
	ld   [hl], a                                     ; $5f50: $77
	rst  $38                                         ; $5f51: $ff
	rst  $38                                         ; $5f52: $ff
	rst  $38                                         ; $5f53: $ff
	rst  $38                                         ; $5f54: $ff
	or   $11                                         ; $5f55: $f6 $11
	ld   de, $ff4a                                   ; $5f57: $11 $4a $ff
	rst  $38                                         ; $5f5a: $ff
	cp   a                                           ; $5f5b: $bf
	db   $fc                                         ; $5f5c: $fc
	jp   $1111                                       ; $5f5d: $c3 $11 $11


	inc  d                                           ; $5f60: $14
	ld   de, $ffab                                   ; $5f61: $11 $ab $ff
	rst  $38                                         ; $5f64: $ff
	rst  $38                                         ; $5f65: $ff
	rst  $38                                         ; $5f66: $ff
	pop  de                                          ; $5f67: $d1
	ld   de, $7d11                                   ; $5f68: $11 $11 $7d
	rst  $38                                         ; $5f6b: $ff
	rst  $38                                         ; $5f6c: $ff
	rst  $38                                         ; $5f6d: $ff
	db   $dd                                         ; $5f6e: $dd
	or   c                                           ; $5f6f: $b1
	ld   de, $1611                                   ; $5f70: $11 $11 $16
	ld   [hl-], a                                    ; $5f73: $32
	sbc  $ff                                         ; $5f74: $de $ff
	rst  $38                                         ; $5f76: $ff
	rst  $38                                         ; $5f77: $ff
	ld   sp, hl                                      ; $5f78: $f9
	and  c                                           ; $5f79: $a1
	ld   de, $cf11                                   ; $5f7a: $11 $11 $cf
	rst  $38                                         ; $5f7d: $ff
	rst  $38                                         ; $5f7e: $ff
	rst  $38                                         ; $5f7f: $ff
	db   $eb                                         ; $5f80: $eb
	sub  c                                           ; $5f81: $91
	ld   de, $1211                                   ; $5f82: $11 $11 $12
	and  [hl]                                        ; $5f85: $a6
	rst  $38                                         ; $5f86: $ff
	rst  $38                                         ; $5f87: $ff
	rst  $38                                         ; $5f88: $ff
	ei                                               ; $5f89: $fb
	di                                               ; $5f8a: $f3
	ld   b, h                                        ; $5f8b: $44
	ld   de, $ef11                                   ; $5f8c: $11 $11 $ef
	rst  $38                                         ; $5f8f: $ff
	rst  $38                                         ; $5f90: $ff
	rst  $38                                         ; $5f91: $ff

Jump_0a7_5f92:
	ei                                               ; $5f92: $fb
	sub  c                                           ; $5f93: $91
	ld   de, $1111                                   ; $5f94: $11 $11 $11
	ret                                              ; $5f97: $c9


	rst  $38                                         ; $5f98: $ff
	rst  $38                                         ; $5f99: $ff
	rst  $38                                         ; $5f9a: $ff
	ei                                               ; $5f9b: $fb
	pop  de                                          ; $5f9c: $d1
	inc  de                                          ; $5f9d: $13
	ld   de, $af11                                   ; $5f9e: $11 $11 $af
	rst  $38                                         ; $5fa1: $ff
	rst  $38                                         ; $5fa2: $ff
	cp   e                                           ; $5fa3: $bb
	db   $fd                                         ; $5fa4: $fd
	pop  de                                          ; $5fa5: $d1
	ld   de, $1311                                   ; $5fa6: $11 $11 $13
	jp   c, $ffff                                    ; $5fa9: $da $ff $ff

	rst  $38                                         ; $5fac: $ff
	ld   sp, hl                                      ; $5fad: $f9
	and  c                                           ; $5fae: $a1
	ld   de, $1111                                   ; $5faf: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb2: $cf
	rst  $38                                         ; $5fb3: $ff
	rst  $38                                         ; $5fb4: $ff
	or   l                                           ; $5fb5: $b5
	call z, $11c1                                    ; $5fb6: $cc $c1 $11
	ld   de, $ff15                                   ; $5fb9: $11 $15 $ff
	rst  $38                                         ; $5fbc: $ff
	rst  $38                                         ; $5fbd: $ff
	rst  $38                                         ; $5fbe: $ff
	or   $41                                         ; $5fbf: $f6 $41
	ld   de, $1111                                   ; $5fc1: $11 $11 $11
	xor  a                                           ; $5fc4: $af
	rst  $38                                         ; $5fc5: $ff
	rst  $38                                         ; $5fc6: $ff
	ld   [hl], c                                     ; $5fc7: $71
	sbc  d                                           ; $5fc8: $9a
	or   c                                           ; $5fc9: $b1
	ld   de, $1c11                                   ; $5fca: $11 $11 $1c
	rst  $38                                         ; $5fcd: $ff
	rst  $38                                         ; $5fce: $ff
	rst  $38                                         ; $5fcf: $ff
	rst  $38                                         ; $5fd0: $ff
	or   $11                                         ; $5fd1: $f6 $11
	ld   de, $1111                                   ; $5fd3: $11 $11 $11
	xor  a                                           ; $5fd6: $af
	rst  $38                                         ; $5fd7: $ff
	rst  $38                                         ; $5fd8: $ff
	ld   hl, $d259                                   ; $5fd9: $21 $59 $d2
	ld   de, $1f11                                   ; $5fdc: $11 $11 $1f
	rst  $38                                         ; $5fdf: $ff
	rst  $38                                         ; $5fe0: $ff
	rst  $38                                         ; $5fe1: $ff
	rst  $38                                         ; $5fe2: $ff
	ld   hl, sp+$11                                  ; $5fe3: $f8 $11
	ld   de, $1114                                   ; $5fe5: $11 $14 $11
	adc  a                                           ; $5fe8: $8f
	rst  $38                                         ; $5fe9: $ff
	rst  $38                                         ; $5fea: $ff
	ld   de, $c517                                   ; $5feb: $11 $17 $c5
	ld   de, $1f11                                   ; $5fee: $11 $11 $1f
	rst  $38                                         ; $5ff1: $ff
	ei                                               ; $5ff2: $fb
	rst  $28                                         ; $5ff3: $ef
	rst  $38                                         ; $5ff4: $ff
	ei                                               ; $5ff5: $fb
	ld   de, $3b11                                   ; $5ff6: $11 $11 $3b
	ld   d, l                                        ; $5ff9: $55
	sbc  a                                           ; $5ffa: $9f
	rst  $38                                         ; $5ffb: $ff
	rst  $38                                         ; $5ffc: $ff
	ld   de, $9513                                   ; $5ffd: $11 $13 $95
	ld   de, $1f11                                   ; $6000: $11 $11 $1f
	rst  $38                                         ; $6003: $ff
	db   $fd                                         ; $6004: $fd
	cp   l                                           ; $6005: $bd
	rst  $38                                         ; $6006: $ff
	cp   $11                                         ; $6007: $fe $11
	ld   de, $dd4c                                   ; $6009: $11 $4c $dd
	rst  JumpTable                                         ; $600c: $df
	rst  $38                                         ; $600d: $ff
	rst  $38                                         ; $600e: $ff
	ld   h, c                                        ; $600f: $61
	ld   de, $1131                                   ; $6010: $11 $31 $11
	ld   de, $ff1f                                   ; $6013: $11 $1f $ff
	rst  $38                                         ; $6016: $ff
	xor  l                                           ; $6017: $ad
	rst  $38                                         ; $6018: $ff
	ei                                               ; $6019: $fb
	ld   de, $1911                                   ; $601a: $11 $11 $19
	rst  $38                                         ; $601d: $ff
	rst  $38                                         ; $601e: $ff
	rst  $38                                         ; $601f: $ff
	rst  $38                                         ; $6020: $ff
	jp   nc, $1111                                   ; $6021: $d2 $11 $11

	ld   de, $2f11                                   ; $6024: $11 $11 $2f
	rst  $38                                         ; $6027: $ff
	rst  $38                                         ; $6028: $ff
	rst  $38                                         ; $6029: $ff
	rst  $38                                         ; $602a: $ff
	ldh  a, [c]                                      ; $602b: $f2
	ld   de, $1911                                   ; $602c: $11 $11 $19
	rst  $38                                         ; $602f: $ff
	rst  $38                                         ; $6030: $ff
	rst  $38                                         ; $6031: $ff
	cp   $c4                                         ; $6032: $fe $c4
	ld   d, c                                        ; $6034: $51
	ld   de, $1111                                   ; $6035: $11 $11 $11
	rst  $38                                         ; $6038: $ff
	rst  $38                                         ; $6039: $ff
	rst  $38                                         ; $603a: $ff
	rst  $38                                         ; $603b: $ff
	rst  $38                                         ; $603c: $ff
	sub  c                                           ; $603d: $91
	ld   de, $2e11                                   ; $603e: $11 $11 $2e
	rst  $38                                         ; $6041: $ff
	rst  $38                                         ; $6042: $ff
	rst  $38                                         ; $6043: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6044: $cf
	add  a                                           ; $6045: $87
	ld   b, c                                        ; $6046: $41
	ld   de, $1911                                   ; $6047: $11 $11 $19
	rst  $38                                         ; $604a: $ff
	rst  $38                                         ; $604b: $ff
	rst  $38                                         ; $604c: $ff
	rst  $38                                         ; $604d: $ff
	db   $fd                                         ; $604e: $fd
	ld   d, c                                        ; $604f: $51
	ld   de, $cd11                                   ; $6050: $11 $11 $cd
	rst  $38                                         ; $6053: $ff
	rst  $28                                         ; $6054: $ef
	db   $eb                                         ; $6055: $eb
	ld   a, [$11a6]                                  ; $6056: $fa $a6 $11
	ld   de, $9f11                                   ; $6059: $11 $11 $9f
	rst  $38                                         ; $605c: $ff
	rst  $38                                         ; $605d: $ff
	rst  $38                                         ; $605e: $ff
	rst  $38                                         ; $605f: $ff
	jp   c, $1111                                    ; $6060: $da $11 $11

	ld   a, [de]                                     ; $6063: $1a
	cp   a                                           ; $6064: $bf
	ei                                               ; $6065: $fb
	ld   sp, hl                                      ; $6066: $f9
	cp   a                                           ; $6067: $bf
	cp   e                                           ; $6068: $bb
	ld   d, c                                        ; $6069: $51
	ld   de, $1e11                                   ; $606a: $11 $11 $1e
	db   $fd                                         ; $606d: $fd
	db   $fd                                         ; $606e: $fd
	rst  $38                                         ; $606f: $ff
	rst  $38                                         ; $6070: $ff
	db   $fd                                         ; $6071: $fd
	and  c                                           ; $6072: $a1
	ld   de, $ac16                                   ; $6073: $11 $16 $ac
	ld   a, [$6bcb]                                  ; $6076: $fa $cb $6b
	cp   d                                           ; $6079: $ba
	or   d                                           ; $607a: $b2
	ld   de, $1511                                   ; $607b: $11 $11 $15
	db   $fd                                         ; $607e: $fd
	call $ffcf                                       ; $607f: $cd $cf $ff
	rst  $38                                         ; $6082: $ff
	push af                                          ; $6083: $f5
	ld   de, $8a12                                   ; $6084: $11 $12 $8a
	db   $eb                                         ; $6087: $eb
	sbc  d                                           ; $6088: $9a
	ld   h, a                                        ; $6089: $67
	ret                                              ; $608a: $c9


	and  [hl]                                        ; $608b: $a6
	ld   de, $1111                                   ; $608c: $11 $11 $11
	call $afab                                       ; $608f: $cd $ab $af
	rst  $38                                         ; $6092: $ff
	rst  $38                                         ; $6093: $ff
	ei                                               ; $6094: $fb
	ld   de, $6911                                   ; $6095: $11 $11 $69
	call c, $6489                                    ; $6098: $dc $89 $64
	sbc  c                                           ; $609b: $99
	xor  b                                           ; $609c: $a8
	ld   hl, $1111                                   ; $609d: $21 $11 $11
	sbc  [hl]                                        ; $60a0: $9e
	xor  d                                           ; $60a1: $aa
	sbc  h                                           ; $60a2: $9c
	rst  $38                                         ; $60a3: $ff
	rst  $38                                         ; $60a4: $ff
	cp   $51                                         ; $60a5: $fe $51
	ld   [hl+], a                                    ; $60a7: $22
	ld   l, b                                        ; $60a8: $68
	xor  h                                           ; $60a9: $ac
	adc  b                                           ; $60aa: $88
	ld   [hl], e                                     ; $60ab: $73
	ld   h, a                                        ; $60ac: $67
	adc  c                                           ; $60ad: $89
	ld   b, c                                        ; $60ae: $41
	ld   de, $6d11                                   ; $60af: $11 $11 $6d
	cp   d                                           ; $60b2: $ba
	sbc  c                                           ; $60b3: $99
	rst  $38                                         ; $60b4: $ff
	rst  $38                                         ; $60b5: $ff
	rst  $38                                         ; $60b6: $ff
	sub  d                                           ; $60b7: $92
	inc  sp                                          ; $60b8: $33
	ld   l, b                                        ; $60b9: $68
	xor  l                                           ; $60ba: $ad
	add  [hl]                                        ; $60bb: $86
	ld   [hl], e                                     ; $60bc: $73
	ld   b, [hl]                                     ; $60bd: $46
	ld   l, b                                        ; $60be: $68
	ld   d, c                                        ; $60bf: $51
	ld   de, $3c11                                   ; $60c0: $11 $11 $3c
	jp   z, $df99                                    ; $60c3: $ca $99 $df

	rst  $38                                         ; $60c6: $ff
	rst  $38                                         ; $60c7: $ff
	push hl                                          ; $60c8: $e5
	inc  sp                                          ; $60c9: $33
	ld   e, c                                        ; $60ca: $59
	xor  l                                           ; $60cb: $ad
	and  [hl]                                        ; $60cc: $a6
	ld   [hl], e                                     ; $60cd: $73
	dec  h                                           ; $60ce: $25
	ld   l, b                                        ; $60cf: $68
	ld   h, c                                        ; $60d0: $61
	ld   de, $2a11                                   ; $60d1: $11 $11 $2a
	db   $db                                         ; $60d4: $db
	xor  b                                           ; $60d5: $a8
	cp   a                                           ; $60d6: $bf
	rst  $38                                         ; $60d7: $ff
	rst  $38                                         ; $60d8: $ff
	rst  $30                                         ; $60d9: $f7
	ld   b, e                                        ; $60da: $43
	ld   c, b                                        ; $60db: $48
	sbc  e                                           ; $60dc: $9b
	rst  ToBoot                                         ; $60dd: $c7
	ld   h, h                                        ; $60de: $64
	inc  h                                           ; $60df: $24
	ld   d, a                                        ; $60e0: $57
	ld   [hl], e                                     ; $60e1: $73
	ld   de, $1711                                   ; $60e2: $11 $11 $17
	res  3, b                                        ; $60e5: $cb $98
	xor  [hl]                                        ; $60e7: $ae
	rst  $38                                         ; $60e8: $ff
	rst  $38                                         ; $60e9: $ff
	db   $fc                                         ; $60ea: $fc
	ld   d, h                                        ; $60eb: $54
	ld   b, a                                        ; $60ec: $47
	xor  e                                           ; $60ed: $ab
	reti                                             ; $60ee: $d9


	ld   h, [hl]                                     ; $60ef: $66
	inc  hl                                          ; $60f0: $23
	ld   b, l                                        ; $60f1: $45
	ld   [hl], h                                     ; $60f2: $74
	ld   de, $1311                                   ; $60f3: $11 $11 $13
	xor  e                                           ; $60f6: $ab
	sbc  c                                           ; $60f7: $99
	adc  h                                           ; $60f8: $8c
	rst  $38                                         ; $60f9: $ff
	rst  $38                                         ; $60fa: $ff
	rst  $38                                         ; $60fb: $ff
	add  [hl]                                        ; $60fc: $86
	ld   d, [hl]                                     ; $60fd: $56
	adc  c                                           ; $60fe: $89
	bit  6, a                                        ; $60ff: $cb $77
	ld   b, d                                        ; $6101: $42
	ld   b, h                                        ; $6102: $44
	ld   h, [hl]                                     ; $6103: $66
	ld   sp, $1111                                   ; $6104: $31 $11 $11
	ld   l, e                                        ; $6107: $6b
	xor  d                                           ; $6108: $aa
	adc  d                                           ; $6109: $8a
	rst  $28                                         ; $610a: $ef
	rst  $38                                         ; $610b: $ff
	rst  $38                                         ; $610c: $ff
	ret  c                                           ; $610d: $d8

	ld   h, l                                        ; $610e: $65
	adc  c                                           ; $610f: $89
	xor  e                                           ; $6110: $ab
	sub  a                                           ; $6111: $97
	ld   d, e                                        ; $6112: $53
	inc  hl                                          ; $6113: $23
	ld   d, [hl]                                     ; $6114: $56
	ld   b, d                                        ; $6115: $42
	ld   de, $2811                                   ; $6116: $11 $11 $28
	xor  c                                           ; $6119: $a9
	adc  b                                           ; $611a: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $611b: $cf
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	db   $fc                                         ; $611e: $fc
	add  [hl]                                        ; $611f: $86
	ld   a, b                                        ; $6120: $78
	sbc  d                                           ; $6121: $9a
	and  a                                           ; $6122: $a7
	ld   h, h                                        ; $6123: $64
	inc  sp                                          ; $6124: $33
	ld   b, l                                        ; $6125: $45
	ld   d, h                                        ; $6126: $54
	ld   de, $1411                                   ; $6127: $11 $11 $14
	sbc  d                                           ; $612a: $9a
	add  a                                           ; $612b: $87
	sbc  h                                           ; $612c: $9c
	rst  $38                                         ; $612d: $ff
	rst  $38                                         ; $612e: $ff
	rst  $38                                         ; $612f: $ff
	ret  z                                           ; $6130: $c8

	ld   a, c                                        ; $6131: $79
	adc  c                                           ; $6132: $89
	cp   c                                           ; $6133: $b9
	ld   h, l                                        ; $6134: $65
	ld   [hl-], a                                    ; $6135: $32
	inc  h                                           ; $6136: $24
	ld   d, h                                        ; $6137: $54
	ld   sp, $1111                                   ; $6138: $31 $11 $11
	ld   e, b                                        ; $613b: $58
	xor  b                                           ; $613c: $a8
	ld   a, d                                        ; $613d: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $613e: $cf
	rst  $38                                         ; $613f: $ff
	rst  $38                                         ; $6140: $ff
	ei                                               ; $6141: $fb
	adc  c                                           ; $6142: $89
	sbc  c                                           ; $6143: $99
	xor  d                                           ; $6144: $aa
	halt                                             ; $6145: $76
	ld   b, e                                        ; $6146: $43
	inc  hl                                          ; $6147: $23
	ld   b, h                                        ; $6148: $44
	ld   b, d                                        ; $6149: $42
	ld   de, $1511                                   ; $614a: $11 $11 $15
	adc  b                                           ; $614d: $88
	ld   [hl], a                                     ; $614e: $77
	xor  l                                           ; $614f: $ad
	rst  $38                                         ; $6150: $ff
	rst  $38                                         ; $6151: $ff
	rst  $38                                         ; $6152: $ff
	ret                                              ; $6153: $c9


	sbc  d                                           ; $6154: $9a
	xor  d                                           ; $6155: $aa
	and  a                                           ; $6156: $a7
	ld   d, e                                        ; $6157: $53
	ld   [hl-], a                                    ; $6158: $32
	inc  h                                           ; $6159: $24
	ld   b, e                                        ; $615a: $43
	ld   de, $1111                                   ; $615b: $11 $11 $11
	ld   e, b                                        ; $615e: $58
	sub  [hl]                                        ; $615f: $96
	ld   a, d                                        ; $6160: $7a
	rst  $28                                         ; $6161: $ef
	rst  $38                                         ; $6162: $ff
	rst  $38                                         ; $6163: $ff
	db   $fc                                         ; $6164: $fc
	xor  e                                           ; $6165: $ab
	cp   d                                           ; $6166: $ba
	cp   c                                           ; $6167: $b9
	ld   h, h                                        ; $6168: $64
	inc  sp                                          ; $6169: $33
	inc  hl                                          ; $616a: $23
	ld   b, e                                        ; $616b: $43
	ld   sp, $1111                                   ; $616c: $31 $11 $11
	dec  d                                           ; $616f: $15
	add  a                                           ; $6170: $87
	ld   h, a                                        ; $6171: $67
	xor  l                                           ; $6172: $ad
	rst  $38                                         ; $6173: $ff
	rst  $38                                         ; $6174: $ff
	rst  $38                                         ; $6175: $ff
	jp   c, $abbc                                    ; $6176: $da $bc $ab

	and  [hl]                                        ; $6179: $a6
	ld   b, e                                        ; $617a: $43
	ld   [hl+], a                                    ; $617b: $22
	inc  h                                           ; $617c: $24
	ld   [hl-], a                                    ; $617d: $32
	ld   de, $1111                                   ; $617e: $11 $11 $11
	ld   b, a                                        ; $6181: $47
	ld   [hl], l                                     ; $6182: $75
	ld   l, c                                        ; $6183: $69
	rst  JumpTable                                         ; $6184: $df
	rst  $38                                         ; $6185: $ff
	rst  $38                                         ; $6186: $ff
	rst  $38                                         ; $6187: $ff
	call $badb                                       ; $6188: $cd $db $ba
	ld   h, h                                        ; $618b: $64
	ld   [hl-], a                                    ; $618c: $32
	ld   [hl+], a                                    ; $618d: $22
	inc  sp                                          ; $618e: $33

Jump_0a7_618f:
	ld   hl, $1111                                   ; $618f: $21 $11 $11
	inc  d                                           ; $6192: $14
	ld   h, [hl]                                     ; $6193: $66
	ld   d, l                                        ; $6194: $55
	sbc  l                                           ; $6195: $9d
	rst  $38                                         ; $6196: $ff
	rst  $38                                         ; $6197: $ff
	rst  $38                                         ; $6198: $ff
	cp   $ef                                         ; $6199: $fe $ef
	db   $db                                         ; $619b: $db
	sub  [hl]                                        ; $619c: $96
	ld   b, e                                        ; $619d: $43
	ld   [hl-], a                                    ; $619e: $32
	inc  de                                          ; $619f: $13
	ld   [hl+], a                                    ; $61a0: $22
	ld   de, $1111                                   ; $61a1: $11 $11 $11
	dec  h                                           ; $61a4: $25
	ld   h, h                                        ; $61a5: $64
	ld   b, a                                        ; $61a6: $47
	cp   a                                           ; $61a7: $bf
	rst  $38                                         ; $61a8: $ff
	rst  $38                                         ; $61a9: $ff
	rst  $38                                         ; $61aa: $ff
	cp   $fe                                         ; $61ab: $fe $fe
	cp   d                                           ; $61ad: $ba
	ld   [hl], l                                     ; $61ae: $75
	ld   [hl-], a                                    ; $61af: $32
	ld   hl, $1122                                   ; $61b0: $21 $22 $11
	ld   de, $1111                                   ; $61b3: $11 $11 $11
	ld   b, l                                        ; $61b6: $45
	ld   d, e                                        ; $61b7: $53
	ld   e, d                                        ; $61b8: $5a
	rst  $38                                         ; $61b9: $ff
	rst  $38                                         ; $61ba: $ff
	rst  $38                                         ; $61bb: $ff
	rst  $38                                         ; $61bc: $ff
	rst  $38                                         ; $61bd: $ff
	db   $fd                                         ; $61be: $fd
	cp   c                                           ; $61bf: $b9
	ld   d, e                                        ; $61c0: $53
	ld   [hl+], a                                    ; $61c1: $22
	ld   de, $1121                                   ; $61c2: $11 $21 $11
	ld   de, $1211                                   ; $61c5: $11 $11 $12
	ld   d, h                                        ; $61c8: $54
	inc  [hl]                                        ; $61c9: $34
	adc  l                                           ; $61ca: $8d
	rst  $38                                         ; $61cb: $ff
	rst  $38                                         ; $61cc: $ff
	rst  $38                                         ; $61cd: $ff
	rst  $38                                         ; $61ce: $ff
	rst  $38                                         ; $61cf: $ff
	db   $ec                                         ; $61d0: $ec
	sub  [hl]                                        ; $61d1: $96
	ld   b, d                                        ; $61d2: $42
	ld   hl, $1111                                   ; $61d3: $21 $11 $11
	ld   de, $1111                                   ; $61d6: $11 $11 $11
	inc  de                                          ; $61d9: $13
	ld   b, e                                        ; $61da: $43
	dec  [hl]                                        ; $61db: $35
	cp   a                                           ; $61dc: $bf
	rst  $38                                         ; $61dd: $ff

jr_0a7_61de:
	rst  $38                                         ; $61de: $ff
	rst  $38                                         ; $61df: $ff
	rst  $38                                         ; $61e0: $ff
	rst  $38                                         ; $61e1: $ff
	db   $db                                         ; $61e2: $db
	add  l                                           ; $61e3: $85
	ld   [hl-], a                                    ; $61e4: $32
	ld   hl, $1111                                   ; $61e5: $21 $11 $11
	ld   de, $1111                                   ; $61e8: $11 $11 $11
	inc  de                                          ; $61eb: $13
	ld   [hl-], a                                    ; $61ec: $32
	jr   c, jr_0a7_61de                              ; $61ed: $38 $ef

	rst  $38                                         ; $61ef: $ff
	rst  $38                                         ; $61f0: $ff
	rst  $38                                         ; $61f1: $ff
	rst  $38                                         ; $61f2: $ff
	rst  $38                                         ; $61f3: $ff
	jp   z, $3274                                    ; $61f4: $ca $74 $32

	ld   de, $1111                                   ; $61f7: $11 $11 $11
	ld   de, $1111                                   ; $61fa: $11 $11 $11
	inc  sp                                          ; $61fd: $33
	ld   [hl+], a                                    ; $61fe: $22
	ld   c, d                                        ; $61ff: $4a
	rst  $38                                         ; $6200: $ff
	rst  $38                                         ; $6201: $ff
	rst  $38                                         ; $6202: $ff
	rst  $38                                         ; $6203: $ff
	rst  $38                                         ; $6204: $ff
	cp   $b9                                         ; $6205: $fe $b9
	ld   h, h                                        ; $6207: $64
	ld   [hl-], a                                    ; $6208: $32
	ld   bc, $1111                                   ; $6209: $01 $11 $11
	ld   de, $1111                                   ; $620c: $11 $11 $11
	ld   [hl-], a                                    ; $620f: $32
	ld   [hl+], a                                    ; $6210: $22
	ld   l, l                                        ; $6211: $6d
	rst  $38                                         ; $6212: $ff
	rst  $38                                         ; $6213: $ff
	rst  $38                                         ; $6214: $ff
	rst  $38                                         ; $6215: $ff
	rst  $38                                         ; $6216: $ff
	db   $fc                                         ; $6217: $fc
	and  a                                           ; $6218: $a7
	ld   d, e                                        ; $6219: $53
	ld   [hl+], a                                    ; $621a: $22
	ld   de, $1111                                   ; $621b: $11 $11 $11
	ld   de, $1111                                   ; $621e: $11 $11 $11
	ld   [hl-], a                                    ; $6221: $32
	ld   [de], a                                     ; $6222: $12
	adc  a                                           ; $6223: $8f
	rst  $38                                         ; $6224: $ff
	rst  $38                                         ; $6225: $ff
	rst  $38                                         ; $6226: $ff
	rst  $38                                         ; $6227: $ff
	rst  $38                                         ; $6228: $ff
	db   $fc                                         ; $6229: $fc
	sub  a                                           ; $622a: $97
	ld   h, h                                        ; $622b: $64
	ld   hl, $1111                                   ; $622c: $21 $11 $11
	ld   de, $1111                                   ; $622f: $11 $11 $11
	ld   de, $1221                                   ; $6232: $11 $21 $12
	xor  a                                           ; $6235: $af
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	rst  $38                                         ; $6238: $ff
	rst  $38                                         ; $6239: $ff
	rst  $38                                         ; $623a: $ff
	ei                                               ; $623b: $fb
	sbc  b                                           ; $623c: $98
	ld   h, h                                        ; $623d: $64
	ld   hl, $1111                                   ; $623e: $21 $11 $11
	ld   de, $1111                                   ; $6241: $11 $11 $11
	ld   de, $1411                                   ; $6244: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6247: $cf
	rst  $38                                         ; $6248: $ff
	rst  $38                                         ; $6249: $ff
	rst  $38                                         ; $624a: $ff
	rst  $38                                         ; $624b: $ff
	rst  $38                                         ; $624c: $ff
	db   $eb                                         ; $624d: $eb
	xor  c                                           ; $624e: $a9
	ld   h, e                                        ; $624f: $63
	ld   de, $1111                                   ; $6250: $11 $11 $11
	ld   de, $1111                                   ; $6253: $11 $11 $11
	ld   de, $1511                                   ; $6256: $11 $11 $15
	rst  $38                                         ; $6259: $ff
	rst  $38                                         ; $625a: $ff
	rst  $38                                         ; $625b: $ff
	rst  $38                                         ; $625c: $ff
	rst  $38                                         ; $625d: $ff
	rst  $38                                         ; $625e: $ff
	res  7, c                                        ; $625f: $cb $b9
	ld   h, d                                        ; $6261: $62
	ld   de, $1111                                   ; $6262: $11 $11 $11
	ld   de, $1111                                   ; $6265: $11 $11 $11
	ld   de, $1711                                   ; $6268: $11 $11 $17
	rst  $38                                         ; $626b: $ff
	rst  $38                                         ; $626c: $ff
	rst  $38                                         ; $626d: $ff
	rst  $38                                         ; $626e: $ff
	rst  $38                                         ; $626f: $ff
	rst  $38                                         ; $6270: $ff
	db   $dd                                         ; $6271: $dd
	cp   d                                           ; $6272: $ba
	ld   d, c                                        ; $6273: $51
	ld   de, $1111                                   ; $6274: $11 $11 $11
	ld   de, $1111                                   ; $6277: $11 $11 $11
	ld   de, $2a11                                   ; $627a: $11 $11 $2a
	rst  $38                                         ; $627d: $ff
	rst  $38                                         ; $627e: $ff
	rst  $38                                         ; $627f: $ff
	rst  $38                                         ; $6280: $ff
	rst  $38                                         ; $6281: $ff
	rst  $38                                         ; $6282: $ff
	sbc  $d9                                         ; $6283: $de $d9
	ld   b, c                                        ; $6285: $41
	ld   de, $1111                                   ; $6286: $11 $11 $11
	ld   de, $1111                                   ; $6289: $11 $11 $11
	ld   de, $4d11                                   ; $628c: $11 $11 $4d
	rst  $38                                         ; $628f: $ff
	rst  $38                                         ; $6290: $ff
	rst  $38                                         ; $6291: $ff
	rst  $38                                         ; $6292: $ff
	rst  $38                                         ; $6293: $ff
	rst  $38                                         ; $6294: $ff
	rst  $38                                         ; $6295: $ff
	ret  z                                           ; $6296: $c8

	ld   de, $1111                                   ; $6297: $11 $11 $11
	ld   de, $1111                                   ; $629a: $11 $11 $11
	ld   de, $1111                                   ; $629d: $11 $11 $11
	ld   l, [hl]                                     ; $62a0: $6e
	rst  $38                                         ; $62a1: $ff
	rst  $38                                         ; $62a2: $ff
	rst  $38                                         ; $62a3: $ff
	rst  $38                                         ; $62a4: $ff
	rst  $38                                         ; $62a5: $ff
	rst  $38                                         ; $62a6: $ff
	rst  $38                                         ; $62a7: $ff
	or   [hl]                                        ; $62a8: $b6
	ld   de, $1111                                   ; $62a9: $11 $11 $11
	ld   de, $1111                                   ; $62ac: $11 $11 $11
	ld   de, $1311                                   ; $62af: $11 $11 $13
	adc  [hl]                                        ; $62b2: $8e
	rst  $38                                         ; $62b3: $ff
	rst  $38                                         ; $62b4: $ff
	rst  $38                                         ; $62b5: $ff
	rst  $38                                         ; $62b6: $ff
	rst  $38                                         ; $62b7: $ff
	rst  $38                                         ; $62b8: $ff
	rst  $38                                         ; $62b9: $ff
	sub  h                                           ; $62ba: $94
	ld   de, $1111                                   ; $62bb: $11 $11 $11
	ld   de, $1111                                   ; $62be: $11 $11 $11
	ld   de, $1411                                   ; $62c1: $11 $11 $14
	sbc  a                                           ; $62c4: $9f
	rst  $38                                         ; $62c5: $ff
	rst  $38                                         ; $62c6: $ff
	rst  $38                                         ; $62c7: $ff
	rst  $38                                         ; $62c8: $ff
	rst  $38                                         ; $62c9: $ff
	rst  $38                                         ; $62ca: $ff
	cp   $83                                         ; $62cb: $fe $83
	ld   de, $1111                                   ; $62cd: $11 $11 $11
	ld   de, $1111                                   ; $62d0: $11 $11 $11
	ld   de, $1511                                   ; $62d3: $11 $11 $15
	xor  a                                           ; $62d6: $af
	rst  $38                                         ; $62d7: $ff
	rst  $38                                         ; $62d8: $ff
	rst  $38                                         ; $62d9: $ff
	rst  $38                                         ; $62da: $ff
	rst  $38                                         ; $62db: $ff
	rst  $38                                         ; $62dc: $ff
	ei                                               ; $62dd: $fb
	ld   [hl], d                                     ; $62de: $72
	ld   de, $1111                                   ; $62df: $11 $11 $11
	ld   de, $1111                                   ; $62e2: $11 $11 $11
	ld   de, $2611                                   ; $62e5: $11 $11 $26
	rst  JumpTable                                         ; $62e8: $df
	rst  $38                                         ; $62e9: $ff
	rst  $38                                         ; $62ea: $ff
	rst  $38                                         ; $62eb: $ff
	rst  $38                                         ; $62ec: $ff
	rst  $38                                         ; $62ed: $ff
	rst  $38                                         ; $62ee: $ff
	ld   a, [$1151]                                  ; $62ef: $fa $51 $11
	ld   de, $1111                                   ; $62f2: $11 $11 $11
	ld   de, $1111                                   ; $62f5: $11 $11 $11
	ld   de, $ef47                                   ; $62f8: $11 $47 $ef
	rst  $38                                         ; $62fb: $ff
	rst  $38                                         ; $62fc: $ff
	rst  $38                                         ; $62fd: $ff
	rst  $38                                         ; $62fe: $ff
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	ret  z                                           ; $6301: $c8

	ld   b, c                                        ; $6302: $41
	ld   de, $1111                                   ; $6303: $11 $11 $11
	ld   de, $1111                                   ; $6306: $11 $11 $11
	ld   de, $5c11                                   ; $6309: $11 $11 $5c
	rst  $38                                         ; $630c: $ff
	rst  $38                                         ; $630d: $ff
	rst  $38                                         ; $630e: $ff
	rst  $38                                         ; $630f: $ff
	rst  $38                                         ; $6310: $ff
	rst  $38                                         ; $6311: $ff
	rst  $38                                         ; $6312: $ff
	or   [hl]                                        ; $6313: $b6
	ld   de, $1111                                   ; $6314: $11 $11 $11
	ld   de, $1111                                   ; $6317: $11 $11 $11
	ld   de, $1311                                   ; $631a: $11 $11 $13
	adc  [hl]                                        ; $631d: $8e
	rst  $38                                         ; $631e: $ff
	rst  $38                                         ; $631f: $ff
	rst  $38                                         ; $6320: $ff
	rst  $38                                         ; $6321: $ff
	rst  $38                                         ; $6322: $ff
	rst  $38                                         ; $6323: $ff
	db   $fd                                         ; $6324: $fd
	add  h                                           ; $6325: $84
	ld   de, $1111                                   ; $6326: $11 $11 $11
	ld   de, $1111                                   ; $6329: $11 $11 $11
	ld   de, $2511                                   ; $632c: $11 $11 $25
	cp   a                                           ; $632f: $bf
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	rst  $38                                         ; $6332: $ff
	rst  $38                                         ; $6333: $ff
	rst  $38                                         ; $6334: $ff
	rst  $38                                         ; $6335: $ff
	ld   a, [$1153]                                  ; $6336: $fa $53 $11
	ld   de, $1111                                   ; $6339: $11 $11 $11
	ld   de, $1111                                   ; $633c: $11 $11 $11
	ld   de, $ff4a                                   ; $633f: $11 $4a $ff
	rst  $38                                         ; $6342: $ff
	rst  $38                                         ; $6343: $ff
	rst  $38                                         ; $6344: $ff
	rst  $38                                         ; $6345: $ff
	rst  $38                                         ; $6346: $ff
	rst  $38                                         ; $6347: $ff
	add  $31                                         ; $6348: $c6 $31
	ld   de, $1111                                   ; $634a: $11 $11 $11
	ld   de, $1111                                   ; $634d: $11 $11 $11
	ld   de, $9f14                                   ; $6350: $11 $14 $9f
	rst  $38                                         ; $6353: $ff
	rst  $38                                         ; $6354: $ff
	rst  $38                                         ; $6355: $ff
	rst  $38                                         ; $6356: $ff
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	cp   $74                                         ; $6359: $fe $74
	ld   hl, $1111                                   ; $635b: $21 $11 $11
	ld   de, $1111                                   ; $635e: $11 $11 $11
	ld   de, $4811                                   ; $6361: $11 $11 $48
	rst  $28                                         ; $6364: $ef
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	rst  $38                                         ; $6367: $ff
	rst  $38                                         ; $6368: $ff
	rst  $38                                         ; $6369: $ff
	rst  $38                                         ; $636a: $ff
	ld   a, [$0143]                          ; $636b: $fa $43 $01
	ld   de, $1111                                   ; $636e: $11 $11 $11
	ld   de, $1111                                   ; $6371: $11 $11 $11
	inc  de                                          ; $6374: $13
	adc  l                                           ; $6375: $8d
	rst  $28                                         ; $6376: $ef
	rst  $38                                         ; $6377: $ff
	rst  $38                                         ; $6378: $ff
	rst  $38                                         ; $6379: $ff
	rst  $38                                         ; $637a: $ff
	rst  $38                                         ; $637b: $ff
	rst  $38                                         ; $637c: $ff
	and  h                                           ; $637d: $a4
	ld   hl, $1111                                   ; $637e: $21 $11 $11
	ld   de, $1111                                   ; $6381: $11 $11 $11
	ld   de, $3711                                   ; $6384: $11 $11 $37
	sbc  $ff                                         ; $6387: $de $ff
	rst  $38                                         ; $6389: $ff
	rst  $38                                         ; $638a: $ff
	rst  $38                                         ; $638b: $ff
	rst  $38                                         ; $638c: $ff
	rst  $38                                         ; $638d: $ff
	ei                                               ; $638e: $fb
	ld   [hl-], a                                    ; $638f: $32
	ld   hl, $1111                                   ; $6390: $21 $11 $11
	ld   de, $1111                                   ; $6393: $11 $11 $11
	ld   de, $8d13                                   ; $6396: $11 $13 $8d
	rst  $38                                         ; $6399: $ff
	rst  $38                                         ; $639a: $ff
	rst  $38                                         ; $639b: $ff
	rst  $38                                         ; $639c: $ff
	rst  $38                                         ; $639d: $ff
	rst  $38                                         ; $639e: $ff
	rst  $38                                         ; $639f: $ff
	sub  e                                           ; $63a0: $93
	ld   sp, $1111                                   ; $63a1: $31 $11 $11
	ld   de, $1111                                   ; $63a4: $11 $11 $11
	ld   de, $2a11                                   ; $63a7: $11 $11 $2a
	rst  $28                                         ; $63aa: $ef
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	rst  $38                                         ; $63ad: $ff
	rst  $38                                         ; $63ae: $ff
	rst  $38                                         ; $63af: $ff
	rst  $38                                         ; $63b0: $ff
	and  [hl]                                        ; $63b1: $a6
	ld   h, h                                        ; $63b2: $64
	ld   de, $1111                                   ; $63b3: $11 $11 $11
	ld   de, $1111                                   ; $63b6: $11 $11 $11
	ld   de, $8a16                                   ; $63b9: $11 $16 $8a
	rst  $28                                         ; $63bc: $ef
	rst  $38                                         ; $63bd: $ff
	rst  $38                                         ; $63be: $ff
	rst  $38                                         ; $63bf: $ff
	rst  $38                                         ; $63c0: $ff
	sbc  $d9                                         ; $63c1: $de $d9
	ld   c, c                                        ; $63c3: $49
	db   $eb                                         ; $63c4: $eb
	add  [hl]                                        ; $63c5: $86
	ld   d, [hl]                                     ; $63c6: $56
	halt                                             ; $63c7: $76
	ld   d, l                                        ; $63c8: $55
	ld   sp, $1111                                   ; $63c9: $31 $11 $11
	ld   de, $5435                                   ; $63cc: $11 $35 $54
	ld   l, d                                        ; $63cf: $6a
	cp   c                                           ; $63d0: $b9
	adc  d                                           ; $63d1: $8a
	call z, $ceab                                    ; $63d2: $cc $ab $ce
	rst  $38                                         ; $63d5: $ff
	rst  $38                                         ; $63d6: $ff
	rst  $38                                         ; $63d7: $ff
	rst  $38                                         ; $63d8: $ff
	db   $ec                                         ; $63d9: $ec
	xor  b                                           ; $63da: $a8
	ld   h, h                                        ; $63db: $64
	ld   de, $1111                                   ; $63dc: $11 $11 $11
	ld   de, $5634                                   ; $63df: $11 $34 $56
	ld   h, a                                        ; $63e2: $67
	ld   [hl], a                                     ; $63e3: $77
	adc  b                                           ; $63e4: $88
	adc  b                                           ; $63e5: $88
	sbc  c                                           ; $63e6: $99
	xor  e                                           ; $63e7: $ab
	sbc  $ff                                         ; $63e8: $de $ff
	rst  $38                                         ; $63ea: $ff
	rst  $38                                         ; $63eb: $ff
	xor  $ca                                         ; $63ec: $ee $ca
	sub  [hl]                                        ; $63ee: $96
	ld   b, d                                        ; $63ef: $42
	ld   de, $1111                                   ; $63f0: $11 $11 $11
	inc  hl                                          ; $63f3: $23
	ld   d, l                                        ; $63f4: $55
	ld   h, [hl]                                     ; $63f5: $66
	ld   [hl], a                                     ; $63f6: $77
	ld   [hl], a                                     ; $63f7: $77
	ld   [hl], a                                     ; $63f8: $77
	ld   a, b                                        ; $63f9: $78
	sbc  d                                           ; $63fa: $9a
	xor  h                                           ; $63fb: $ac
	rst  $28                                         ; $63fc: $ef
	rst  $38                                         ; $63fd: $ff
	rst  $38                                         ; $63fe: $ff
	cp   $ec                                         ; $63ff: $fe $ec
	cp   c                                           ; $6401: $b9
	ld   [hl], l                                     ; $6402: $75
	ld   sp, $1101                                   ; $6403: $31 $01 $11
	ld   [de], a                                     ; $6406: $12
	inc  [hl]                                        ; $6407: $34
	ld   d, [hl]                                     ; $6408: $56
	ld   h, [hl]                                     ; $6409: $66
	ld   [hl], a                                     ; $640a: $77
	ld   [hl], a                                     ; $640b: $77
	ld   [hl], a                                     ; $640c: $77
	ld   a, b                                        ; $640d: $78
	sbc  d                                           ; $640e: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $640f: $cf
	db   $fd                                         ; $6410: $fd
	rst  $38                                         ; $6411: $ff
	rst  $38                                         ; $6412: $ff
	db   $ed                                         ; $6413: $ed
	db   $ec                                         ; $6414: $ec
	sbc  e                                           ; $6415: $9b
	ld   h, d                                        ; $6416: $62
	ld   b, c                                        ; $6417: $41
	ld   [de], a                                     ; $6418: $12
	ld   de, $3531                                   ; $6419: $11 $31 $35
	ld   b, [hl]                                     ; $641c: $46
	ld   h, [hl]                                     ; $641d: $66
	ld   [hl], a                                     ; $641e: $77
	ld   a, b                                        ; $641f: $78
	ld   h, a                                        ; $6420: $67
	add  a                                           ; $6421: $87
	sbc  e                                           ; $6422: $9b
	cp   l                                           ; $6423: $bd
	rst  $28                                         ; $6424: $ef
	rst  $38                                         ; $6425: $ff
	cp   $de                                         ; $6426: $fe $de
	res  5, d                                        ; $6428: $cb $aa
	ld   [hl], e                                     ; $642a: $73
	ld   [hl+], a                                    ; $642b: $22
	ld   de, $2211                                   ; $642c: $11 $11 $22
	ld   d, [hl]                                     ; $642f: $56
	ld   b, l                                        ; $6430: $45
	ld   h, a                                        ; $6431: $67
	ld   [hl], a                                     ; $6432: $77
	add  a                                           ; $6433: $87
	ld   a, c                                        ; $6434: $79
	add  a                                           ; $6435: $87
	adc  e                                           ; $6436: $8b
	db   $dd                                         ; $6437: $dd
	sbc  $fe                                         ; $6438: $de $fe
	rst  $38                                         ; $643a: $ff
	adc  $cb                                         ; $643b: $ce $cb
	cp   e                                           ; $643d: $bb
	ld   d, c                                        ; $643e: $51
	ld   sp, $1221                                   ; $643f: $31 $21 $12
	inc  de                                          ; $6442: $13
	ld   d, e                                        ; $6443: $53
	ld   b, l                                        ; $6444: $45
	ld   a, b                                        ; $6445: $78
	ld   l, c                                        ; $6446: $69
	xor  c                                           ; $6447: $a9
	jp   z, $ceaa                                    ; $6448: $ca $aa $ce

	db   $dd                                         ; $644b: $dd
	rst  $38                                         ; $644c: $ff
	rst  $38                                         ; $644d: $ff
	db   $fc                                         ; $644e: $fc
	cp   b                                           ; $644f: $b8
	adc  c                                           ; $6450: $89
	add  c                                           ; $6451: $81
	inc  de                                          ; $6452: $13
	ld   de, $1111                                   ; $6453: $11 $11 $11
	ld   b, l                                        ; $6456: $45
	ld   h, $9c                                      ; $6457: $26 $9c
	cp   b                                           ; $6459: $b8
	rst  JumpTable                                         ; $645a: $df
	cp   $dc                                         ; $645b: $fe $dc
	rst  JumpTable                                         ; $645d: $df
	cp   $bf                                         ; $645e: $fe $bf
	ld   [$4184], a                                  ; $6460: $ea $84 $41
	ld   l, d                                        ; $6463: $6a
	ld   de, $1111                                   ; $6464: $11 $11 $11
	inc  d                                           ; $6467: $14
	rla                                              ; $6468: $17
	push hl                                          ; $6469: $e5
	xor  a                                           ; $646a: $af
	rst  $38                                         ; $646b: $ff
	rst  $28                                         ; $646c: $ef
	rst  $38                                         ; $646d: $ff
	rst  $38                                         ; $646e: $ff
	xor  e                                           ; $646f: $ab
	xor  $b5                                         ; $6470: $ee $b5
	cp   e                                           ; $6472: $bb
	dec  h                                           ; $6473: $25
	ld   de, $1165                                   ; $6474: $11 $65 $11
	ld   de, $1411                                   ; $6477: $11 $11 $14
	dec  de                                          ; $647a: $1b
	add  sp, -$11                                    ; $647b: $e8 $ef
	rst  $38                                         ; $647d: $ff
	rst  $38                                         ; $647e: $ff
	rst  $38                                         ; $647f: $ff
	rst  $38                                         ; $6480: $ff
	sbc  d                                           ; $6481: $9a
	db   $eb                                         ; $6482: $eb
	sub  h                                           ; $6483: $94
	ld   d, e                                        ; $6484: $53
	ld   de, $1112                                   ; $6485: $11 $12 $11
	ld   de, $1111                                   ; $6488: $11 $11 $11
	ld   h, [hl]                                     ; $648b: $66
	rst  $38                                         ; $648c: $ff
	xor  a                                           ; $648d: $af
	rst  $38                                         ; $648e: $ff
	rst  $38                                         ; $648f: $ff
	rst  $38                                         ; $6490: $ff
	rst  $38                                         ; $6491: $ff
	ld   sp, hl                                      ; $6492: $f9
	cp   c                                           ; $6493: $b9
	ld   d, [hl]                                     ; $6494: $56
	ld   b, c                                        ; $6495: $41
	ld   de, $1112                                   ; $6496: $11 $12 $11
	ld   de, $1111                                   ; $6499: $11 $11 $11
	sbc  d                                           ; $649c: $9a
	rst  $38                                         ; $649d: $ff
	xor  a                                           ; $649e: $af
	rst  $38                                         ; $649f: $ff
	rst  $38                                         ; $64a0: $ff
	rst  $38                                         ; $64a1: $ff
	rst  $38                                         ; $64a2: $ff
	or   $db                                         ; $64a3: $f6 $db
	ld   de, $1111                                   ; $64a5: $11 $11 $11
	ld   [de], a                                     ; $64a8: $12
	ld   de, $1211                                   ; $64a9: $11 $11 $12
	ld   [de], a                                     ; $64ac: $12
	sbc  a                                           ; $64ad: $9f
	rst  $38                                         ; $64ae: $ff
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	rst  $38                                         ; $64b1: $ff
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	add  c                                           ; $64b4: $81
	and  e                                           ; $64b5: $a3
	ld   de, $1111                                   ; $64b6: $11 $11 $11
	ld   de, $1111                                   ; $64b9: $11 $11 $11
	ld   de, $ef9f                                   ; $64bc: $11 $9f $ef
	rst  $38                                         ; $64bf: $ff
	rst  $38                                         ; $64c0: $ff
	rst  $38                                         ; $64c1: $ff
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	ld   sp, hl                                      ; $64c4: $f9
	dec  h                                           ; $64c5: $25
	ld   de, $1111                                   ; $64c6: $11 $11 $11
	ld   de, $1111                                   ; $64c9: $11 $11 $11
	ld   de, $ff1f                                   ; $64cc: $11 $1f $ff
	rst  $38                                         ; $64cf: $ff
	rst  $38                                         ; $64d0: $ff
	rst  $38                                         ; $64d1: $ff
	rst  $38                                         ; $64d2: $ff
	rst  $38                                         ; $64d3: $ff
	ld   hl, sp+$01                                  ; $64d4: $f8 $01
	ld   de, $1111                                   ; $64d6: $11 $11 $11
	ld   de, $1311                                   ; $64d9: $11 $11 $13
	ld   de, $ff1d                                   ; $64dc: $11 $1d $ff
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	rst  $38                                         ; $64e2: $ff
	rst  $38                                         ; $64e3: $ff
	ld   sp, hl                                      ; $64e4: $f9
	ld   de, $1111                                   ; $64e5: $11 $11 $11
	ld   de, $1111                                   ; $64e8: $11 $11 $11
	dec  d                                           ; $64eb: $15
	halt                                             ; $64ec: $76
	ld   a, $ff                                      ; $64ed: $3e $ff
	rst  $38                                         ; $64ef: $ff
	rst  $38                                         ; $64f0: $ff
	rst  $38                                         ; $64f1: $ff
	rst  $38                                         ; $64f2: $ff
	rst  $38                                         ; $64f3: $ff
	ld   hl, sp+$11                                  ; $64f4: $f8 $11
	ld   de, $1111                                   ; $64f6: $11 $11 $11
	ld   de, $1511                                   ; $64f9: $11 $11 $15
	xor  e                                           ; $64fc: $ab
	adc  a                                           ; $64fd: $8f
	rst  $38                                         ; $64fe: $ff
	rst  $38                                         ; $64ff: $ff
	rst  $38                                         ; $6500: $ff
	rst  $38                                         ; $6501: $ff
	rst  $38                                         ; $6502: $ff
	rst  $38                                         ; $6503: $ff
	ret  c                                           ; $6504: $d8

	ld   de, $1111                                   ; $6505: $11 $11 $11
	ld   de, $1111                                   ; $6508: $11 $11 $11
	dec  d                                           ; $650b: $15
	call $ffef                                       ; $650c: $cd $ef $ff
	rst  $38                                         ; $650f: $ff
	rst  $38                                         ; $6510: $ff
	rst  $38                                         ; $6511: $ff
	rst  $38                                         ; $6512: $ff
	ld   a, [$11a8]                                  ; $6513: $fa $a8 $11
	ld   de, $1111                                   ; $6516: $11 $11 $11
	ld   de, $1411                                   ; $6519: $11 $11 $14
	xor  [hl]                                        ; $651c: $ae
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	rst  $38                                         ; $6521: $ff
	rst  $38                                         ; $6522: $ff
	add  sp, $75                                     ; $6523: $e8 $75
	ld   de, $1111                                   ; $6525: $11 $11 $11
	ld   de, $1111                                   ; $6528: $11 $11 $11
	dec  d                                           ; $652b: $15
	cp   [hl]                                        ; $652c: $be
	rst  $38                                         ; $652d: $ff
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	rst  $38                                         ; $6530: $ff
	rst  $38                                         ; $6531: $ff
	rst  $38                                         ; $6532: $ff
	rst  $10                                         ; $6533: $d7
	ld   [hl], d                                     ; $6534: $72
	ld   de, $1111                                   ; $6535: $11 $11 $11
	ld   de, $1111                                   ; $6538: $11 $11 $11
	ld   [hl], $cf                                   ; $653b: $36 $cf
	rst  $38                                         ; $653d: $ff
	rst  $38                                         ; $653e: $ff
	rst  $38                                         ; $653f: $ff
	rst  $38                                         ; $6540: $ff
	rst  $38                                         ; $6541: $ff
	rst  $38                                         ; $6542: $ff
	sub  [hl]                                        ; $6543: $96
	ld   d, c                                        ; $6544: $51
	ld   de, $1111                                   ; $6545: $11 $11 $11
	ld   de, $1211                                   ; $6548: $11 $11 $12
	ld   e, b                                        ; $654b: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $654c: $cf
	rst  $38                                         ; $654d: $ff
	rst  $38                                         ; $654e: $ff
	rst  $38                                         ; $654f: $ff
	rst  $38                                         ; $6550: $ff
	rst  $38                                         ; $6551: $ff
	rst  $38                                         ; $6552: $ff
	halt                                             ; $6553: $76
	ld   hl, $1111                                   ; $6554: $21 $11 $11
	ld   de, $1111                                   ; $6557: $11 $11 $11
	inc  d                                           ; $655a: $14
	ld   a, h                                        ; $655b: $7c
	rst  $38                                         ; $655c: $ff
	rst  $38                                         ; $655d: $ff
	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	ld   hl, sp+$54                                  ; $6562: $f8 $54
	ld   de, $1111                                   ; $6564: $11 $11 $11
	ld   de, $1111                                   ; $6567: $11 $11 $11
	ld   [hl], $bf                                   ; $656a: $36 $bf
	rst  $38                                         ; $656c: $ff
	rst  $38                                         ; $656d: $ff
	rst  $38                                         ; $656e: $ff
	rst  $38                                         ; $656f: $ff
	rst  $38                                         ; $6570: $ff
	rst  $38                                         ; $6571: $ff
	and  h                                           ; $6572: $a4
	ld   b, c                                        ; $6573: $41
	ld   de, $1111                                   ; $6574: $11 $11 $11
	ld   de, $1311                                   ; $6577: $11 $11 $13
	ld   l, e                                        ; $657a: $6b
	rst  $38                                         ; $657b: $ff
	rst  $38                                         ; $657c: $ff
	rst  $38                                         ; $657d: $ff
	rst  $38                                         ; $657e: $ff
	rst  $38                                         ; $657f: $ff
	rst  $38                                         ; $6580: $ff
	ld   sp, hl                                      ; $6581: $f9
	inc  sp                                          ; $6582: $33
	ld   de, $1111                                   ; $6583: $11 $11 $11
	ld   de, $1111                                   ; $6586: $11 $11 $11
	ld   b, a                                        ; $6589: $47
	cp   a                                           ; $658a: $bf
	rst  $38                                         ; $658b: $ff
	rst  $38                                         ; $658c: $ff
	rst  $38                                         ; $658d: $ff
	rst  $38                                         ; $658e: $ff
	rst  $38                                         ; $658f: $ff
	rst  $38                                         ; $6590: $ff
	sub  e                                           ; $6591: $93
	ld   hl, $1111                                   ; $6592: $21 $11 $11
	ld   de, $1111                                   ; $6595: $11 $11 $11
	inc  d                                           ; $6598: $14
	adc  l                                           ; $6599: $8d
	rst  $38                                         ; $659a: $ff
	rst  $38                                         ; $659b: $ff
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	rst  $30                                         ; $65a0: $f7
	ld   hl, $1111                                   ; $65a1: $21 $11 $11
	ld   de, $1111                                   ; $65a4: $11 $11 $11
	inc  de                                          ; $65a7: $13
	ld   e, d                                        ; $65a8: $5a
	rst  $38                                         ; $65a9: $ff
	rst  $38                                         ; $65aa: $ff
	rst  $38                                         ; $65ab: $ff
	rst  $38                                         ; $65ac: $ff
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	cp   $31                                         ; $65af: $fe $31
	ld   de, $1111                                   ; $65b1: $11 $11 $11
	ld   de, $1111                                   ; $65b4: $11 $11 $11

jr_0a7_65b7:
	add  hl, sp                                      ; $65b7: $39
	rst  $28                                         ; $65b8: $ef
	rst  $38                                         ; $65b9: $ff
	rst  $38                                         ; $65ba: $ff
	rst  $38                                         ; $65bb: $ff
	rst  $38                                         ; $65bc: $ff
	rst  $38                                         ; $65bd: $ff
	rst  $38                                         ; $65be: $ff
	ld   d, c                                        ; $65bf: $51
	ld   de, $1111                                   ; $65c0: $11 $11 $11
	ld   de, $1211                                   ; $65c3: $11 $11 $12
	jr   c, jr_0a7_65b7                              ; $65c6: $38 $ef

	rst  $38                                         ; $65c8: $ff
	rst  $38                                         ; $65c9: $ff
	rst  $38                                         ; $65ca: $ff
	rst  $38                                         ; $65cb: $ff
	rst  $38                                         ; $65cc: $ff
	rst  $38                                         ; $65cd: $ff
	ld   b, c                                        ; $65ce: $41
	ld   de, $1111                                   ; $65cf: $11 $11 $11
	ld   de, $1311                                   ; $65d2: $11 $11 $13
	ld   e, e                                        ; $65d5: $5b
	rst  $38                                         ; $65d6: $ff
	rst  $38                                         ; $65d7: $ff
	rst  $38                                         ; $65d8: $ff
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	rst  $38                                         ; $65db: $ff
	db   $fd                                         ; $65dc: $fd
	ld   hl, $1111                                   ; $65dd: $21 $11 $11
	ld   de, $1111                                   ; $65e0: $11 $11 $11
	inc  d                                           ; $65e3: $14
	adc  [hl]                                        ; $65e4: $8e
	rst  $38                                         ; $65e5: $ff
	rst  $38                                         ; $65e6: $ff
	rst  $38                                         ; $65e7: $ff
	rst  $38                                         ; $65e8: $ff
	rst  $38                                         ; $65e9: $ff
	db   $fd                                         ; $65ea: $fd
	ld   sp, hl                                      ; $65eb: $f9
	ld   de, $1111                                   ; $65ec: $11 $11 $11
	ld   de, $1111                                   ; $65ef: $11 $11 $11
	ld   [hl], $ef                                   ; $65f2: $36 $ef
	rst  $38                                         ; $65f4: $ff
	rst  $38                                         ; $65f5: $ff
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	xor  $a1                                         ; $65f9: $ee $a1
	ld   de, $1111                                   ; $65fb: $11 $11 $11
	ld   de, $1211                                   ; $65fe: $11 $11 $12
	ld   l, e                                        ; $6601: $6b
	rst  $38                                         ; $6602: $ff
	rst  $38                                         ; $6603: $ff
	rst  $38                                         ; $6604: $ff
	rst  $38                                         ; $6605: $ff
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	db   $db                                         ; $6608: $db
	ld   hl, $1111                                   ; $6609: $21 $11 $11
	ld   de, $1111                                   ; $660c: $11 $11 $11
	rla                                              ; $660f: $17
	xor  a                                           ; $6610: $af
	rst  $38                                         ; $6611: $ff
	rst  $38                                         ; $6612: $ff
	rst  $38                                         ; $6613: $ff
	rst  $38                                         ; $6614: $ff
	rst  $38                                         ; $6615: $ff
	db   $fc                                         ; $6616: $fc
	call nz, $1111                                   ; $6617: $c4 $11 $11
	ld   de, $1111                                   ; $661a: $11 $11 $11
	ld   de, $ff79                                   ; $661d: $11 $79 $ff
	rst  $38                                         ; $6620: $ff
	rst  $38                                         ; $6621: $ff
	rst  $38                                         ; $6622: $ff
	rst  $38                                         ; $6623: $ff
	rst  $38                                         ; $6624: $ff
	cp   e                                           ; $6625: $bb
	ld   d, c                                        ; $6626: $51
	ld   de, $1111                                   ; $6627: $11 $11 $11
	ld   de, $1711                                   ; $662a: $11 $11 $17
	sbc  a                                           ; $662d: $9f
	rst  $38                                         ; $662e: $ff
	rst  $38                                         ; $662f: $ff
	rst  $38                                         ; $6630: $ff
	rst  $38                                         ; $6631: $ff
	rst  $38                                         ; $6632: $ff
	ld   a, [$11a5]                                  ; $6633: $fa $a5 $11
	ld   de, $1111                                   ; $6636: $11 $11 $11
	ld   de, $7a11                                   ; $6639: $11 $11 $7a
	rst  $38                                         ; $663c: $ff
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	rst  $38                                         ; $6641: $ff
	sbc  c                                           ; $6642: $99
	ld   b, c                                        ; $6643: $41
	ld   de, $1111                                   ; $6644: $11 $11 $11
	ld   de, $1711                                   ; $6647: $11 $11 $17
	xor  a                                           ; $664a: $af
	rst  $38                                         ; $664b: $ff
	rst  $38                                         ; $664c: $ff
	rst  $38                                         ; $664d: $ff
	rst  $38                                         ; $664e: $ff
	rst  $38                                         ; $664f: $ff
	ld   a, [$1193]                                  ; $6650: $fa $93 $11
	ld   de, $1111                                   ; $6653: $11 $11 $11
	ld   de, $8b11                                   ; $6656: $11 $11 $8b
	rst  $38                                         ; $6659: $ff
	rst  $38                                         ; $665a: $ff
	rst  $38                                         ; $665b: $ff
	rst  $38                                         ; $665c: $ff
	rst  $38                                         ; $665d: $ff
	rst  $38                                         ; $665e: $ff
	sbc  b                                           ; $665f: $98
	ld   sp, $1111                                   ; $6660: $31 $11 $11
	ld   de, $1111                                   ; $6663: $11 $11 $11
	jr   @-$2f                                       ; $6666: $18 $cf

	rst  $38                                         ; $6668: $ff
	rst  $38                                         ; $6669: $ff
	rst  $38                                         ; $666a: $ff
	rst  $38                                         ; $666b: $ff
	rst  $38                                         ; $666c: $ff
	add  sp, $73                                     ; $666d: $e8 $73
	ld   de, $1111                                   ; $666f: $11 $11 $11
	ld   de, $1311                                   ; $6672: $11 $11 $13
	adc  l                                           ; $6675: $8d
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	rst  $38                                         ; $6678: $ff
	rst  $38                                         ; $6679: $ff
	rst  $38                                         ; $667a: $ff
	db   $fc                                         ; $667b: $fc
	ld   [hl], a                                     ; $667c: $77
	ld   hl, $1111                                   ; $667d: $21 $11 $11
	ld   de, $1111                                   ; $6680: $11 $11 $11
	ld   e, c                                        ; $6683: $59
	rst  $28                                         ; $6684: $ef
	rst  $38                                         ; $6685: $ff
	rst  $38                                         ; $6686: $ff
	rst  $38                                         ; $6687: $ff
	rst  $38                                         ; $6688: $ff
	rst  $38                                         ; $6689: $ff
	or   [hl]                                        ; $668a: $b6
	ld   d, c                                        ; $668b: $51
	ld   de, $1111                                   ; $668c: $11 $11 $11
	ld   de, $1711                                   ; $668f: $11 $11 $17
	xor  a                                           ; $6692: $af
	rst  $38                                         ; $6693: $ff
	rst  $38                                         ; $6694: $ff
	rst  $38                                         ; $6695: $ff
	rst  $38                                         ; $6696: $ff
	rst  $38                                         ; $6697: $ff
	ld   hl, sp+$53                                  ; $6698: $f8 $53
	ld   de, $1111                                   ; $669a: $11 $11 $11
	ld   de, $1512                                   ; $669d: $11 $12 $15
	sbc  e                                           ; $66a0: $9b
	rst  $38                                         ; $66a1: $ff
	rst  $38                                         ; $66a2: $ff
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	db   $fc                                         ; $66a6: $fc
	ld   d, e                                        ; $66a7: $53
	ld   de, $1111                                   ; $66a8: $11 $11 $11
	ld   de, $3511                                   ; $66ab: $11 $11 $35
	adc  c                                           ; $66ae: $89
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	rst  $38                                         ; $66b1: $ff
	rst  $38                                         ; $66b2: $ff
	rst  $38                                         ; $66b3: $ff
	rst  $38                                         ; $66b4: $ff
	ld   [hl], d                                     ; $66b5: $72
	ld   de, $1111                                   ; $66b6: $11 $11 $11
	ld   de, $4611                                   ; $66b9: $11 $11 $46
	xor  d                                           ; $66bc: $aa
	rst  JumpTable                                         ; $66bd: $df
	rst  $38                                         ; $66be: $ff
	rst  $38                                         ; $66bf: $ff
	rst  $38                                         ; $66c0: $ff
	rst  $38                                         ; $66c1: $ff
	rst  $38                                         ; $66c2: $ff
	and  e                                           ; $66c3: $a3
	ld   de, $1111                                   ; $66c4: $11 $11 $11
	ld   de, $4811                                   ; $66c7: $11 $11 $48
	call $ffcf                                       ; $66ca: $cd $cf $ff
	rst  $38                                         ; $66cd: $ff
	rst  $38                                         ; $66ce: $ff
	rst  $38                                         ; $66cf: $ff
	rst  $38                                         ; $66d0: $ff
	push de                                          ; $66d1: $d5
	ld   de, $1111                                   ; $66d2: $11 $11 $11
	ld   de, $3a11                                   ; $66d5: $11 $11 $3a
	rst  $38                                         ; $66d8: $ff
	rst  $28                                         ; $66d9: $ef
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	and  $11                                         ; $66df: $e6 $11
	ld   de, $1111                                   ; $66e1: $11 $11 $11
	ld   de, $ff2a                                   ; $66e4: $11 $2a $ff
	rst  $38                                         ; $66e7: $ff
	rst  $38                                         ; $66e8: $ff
	rst  $38                                         ; $66e9: $ff
	rst  $38                                         ; $66ea: $ff
	rst  $38                                         ; $66eb: $ff
	rst  $38                                         ; $66ec: $ff
	or   [hl]                                        ; $66ed: $b6
	ld   de, $1111                                   ; $66ee: $11 $11 $11
	ld   de, $3d11                                   ; $66f1: $11 $11 $3d
	rst  $38                                         ; $66f4: $ff
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	rst  $38                                         ; $66f8: $ff
	rst  $38                                         ; $66f9: $ff
	db   $db                                         ; $66fa: $db
	ld   [hl], d                                     ; $66fb: $72
	ld   de, $1111                                   ; $66fc: $11 $11 $11
	ld   de, $9f12                                   ; $66ff: $11 $12 $9f
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	rst  $38                                         ; $6704: $ff
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	rst  $38                                         ; $6707: $ff
	rst  ToBoot                                         ; $6708: $c7
	ld   hl, $1111                                   ; $6709: $21 $11 $11
	ld   de, $3b11                                   ; $670c: $11 $11 $3b
	rst  $38                                         ; $670f: $ff
	rst  $38                                         ; $6710: $ff
	rst  $38                                         ; $6711: $ff
	rst  $38                                         ; $6712: $ff
	rst  $38                                         ; $6713: $ff
	rst  $38                                         ; $6714: $ff
	db   $ec                                         ; $6715: $ec
	ld   [hl], d                                     ; $6716: $72
	ld   de, $1111                                   ; $6717: $11 $11 $11
	ld   de, $df14                                   ; $671a: $11 $14 $df
	rst  $38                                         ; $671d: $ff
	rst  $38                                         ; $671e: $ff
	rst  $38                                         ; $671f: $ff
	rst  $38                                         ; $6720: $ff
	rst  $38                                         ; $6721: $ff
	db   $fd                                         ; $6722: $fd
	sub  l                                           ; $6723: $95
	ld   de, $1111                                   ; $6724: $11 $11 $11
	ld   de, $8f11                                   ; $6727: $11 $11 $8f
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	rst  $38                                         ; $672c: $ff
	rst  $38                                         ; $672d: $ff
	rst  $38                                         ; $672e: $ff
	db   $fc                                         ; $672f: $fc
	and  a                                           ; $6730: $a7
	ld   sp, $1111                                   ; $6731: $31 $11 $11
	ld   de, $6f11                                   ; $6734: $11 $11 $6f
	rst  $38                                         ; $6737: $ff
	rst  $38                                         ; $6738: $ff
	rst  $38                                         ; $6739: $ff
	rst  $38                                         ; $673a: $ff
	rst  $38                                         ; $673b: $ff
	ei                                               ; $673c: $fb
	add  [hl]                                        ; $673d: $86
	ld   hl, $1111                                   ; $673e: $21 $11 $11
	ld   de, $6e11                                   ; $6741: $11 $11 $6e
	rst  $38                                         ; $6744: $ff
	rst  $38                                         ; $6745: $ff
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	rst  $38                                         ; $6748: $ff
	db   $fc                                         ; $6749: $fc
	halt                                             ; $674a: $76
	ld   hl, $1111                                   ; $674b: $21 $11 $11
	ld   de, $7f11                                   ; $674e: $11 $11 $7f
	rst  $38                                         ; $6751: $ff
	rst  $38                                         ; $6752: $ff
	rst  $38                                         ; $6753: $ff
	rst  $38                                         ; $6754: $ff
	rst  $38                                         ; $6755: $ff
	ld   [$1165], a                                  ; $6756: $ea $65 $11
	ld   de, $1111                                   ; $6759: $11 $11 $11
	ld   [de], a                                     ; $675c: $12
	sbc  a                                           ; $675d: $9f
	rst  $38                                         ; $675e: $ff
	rst  $38                                         ; $675f: $ff
	rst  $38                                         ; $6760: $ff
	rst  $38                                         ; $6761: $ff
	rst  $38                                         ; $6762: $ff
	ld   [$1164], a                                  ; $6763: $ea $64 $11
	ld   de, $1111                                   ; $6766: $11 $11 $11
	dec  d                                           ; $6769: $15
	rst  JumpTable                                         ; $676a: $df
	rst  $38                                         ; $676b: $ff
	rst  $38                                         ; $676c: $ff
	rst  $38                                         ; $676d: $ff
	rst  $38                                         ; $676e: $ff
	rst  $38                                         ; $676f: $ff
	ret  z                                           ; $6770: $c8

	ld   h, e                                        ; $6771: $63
	ld   de, $1111                                   ; $6772: $11 $11 $11
	ld   de, $ff1a                                   ; $6775: $11 $1a $ff
	rst  $38                                         ; $6778: $ff
	rst  $38                                         ; $6779: $ff
	rst  $38                                         ; $677a: $ff
	rst  $38                                         ; $677b: $ff
	db   $fd                                         ; $677c: $fd
	and  [hl]                                        ; $677d: $a6
	ld   d, c                                        ; $677e: $51
	ld   de, $1111                                   ; $677f: $11 $11 $11
	ld   de, $ff9f                                   ; $6782: $11 $9f $ff
	rst  $38                                         ; $6785: $ff
	rst  $38                                         ; $6786: $ff

Jump_0a7_6787:
	rst  $38                                         ; $6787: $ff
	db   $fd                                         ; $6788: $fd
	jp   z, $2175                                    ; $6789: $ca $75 $21

	ld   de, $1111                                   ; $678c: $11 $11 $11
	add  hl, de                                      ; $678f: $19
	rst  $38                                         ; $6790: $ff
	rst  $38                                         ; $6791: $ff
	rst  $38                                         ; $6792: $ff
	rst  $38                                         ; $6793: $ff
	rst  $38                                         ; $6794: $ff
	db   $db                                         ; $6795: $db
	and  a                                           ; $6796: $a7
	ld   h, e                                        ; $6797: $63
	ld   de, $1111                                   ; $6798: $11 $11 $11
	ld   [de], a                                     ; $679b: $12
	xor  a                                           ; $679c: $af
	rst  $38                                         ; $679d: $ff
	rst  $38                                         ; $679e: $ff
	rst  $38                                         ; $679f: $ff
	rst  $38                                         ; $67a0: $ff
	ld   a, [$87a9]                                  ; $67a1: $fa $a9 $87
	ld   b, c                                        ; $67a4: $41
	ld   de, $1111                                   ; $67a5: $11 $11 $11
	ld   c, h                                        ; $67a8: $4c
	rst  $38                                         ; $67a9: $ff
	rst  $38                                         ; $67aa: $ff
	rst  $38                                         ; $67ab: $ff
	rst  $38                                         ; $67ac: $ff
	db   $fc                                         ; $67ad: $fc
	sbc  c                                           ; $67ae: $99
	sbc  b                                           ; $67af: $98
	ld   h, e                                        ; $67b0: $63
	ld   de, $1111                                   ; $67b1: $11 $11 $11
	add  hl, de                                      ; $67b4: $19
	rst  $38                                         ; $67b5: $ff
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	rst  $38                                         ; $67b8: $ff
	db   $fd                                         ; $67b9: $fd
	sbc  b                                           ; $67ba: $98
	xor  b                                           ; $67bb: $a8
	add  [hl]                                        ; $67bc: $86
	ld   hl, $1111                                   ; $67bd: $21 $11 $11
	inc  de                                          ; $67c0: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67c1: $cf
	rst  $38                                         ; $67c2: $ff
	rst  $38                                         ; $67c3: $ff
	rst  $38                                         ; $67c4: $ff
	db   $fd                                         ; $67c5: $fd
	sub  a                                           ; $67c6: $97
	sbc  d                                           ; $67c7: $9a
	sbc  c                                           ; $67c8: $99
	ld   h, c                                        ; $67c9: $61
	ld   de, $1111                                   ; $67ca: $11 $11 $11
	xor  a                                           ; $67cd: $af
	rst  $38                                         ; $67ce: $ff
	rst  $38                                         ; $67cf: $ff
	rst  $38                                         ; $67d0: $ff
	db   $fc                                         ; $67d1: $fc
	and  a                                           ; $67d2: $a7
	ld   a, c                                        ; $67d3: $79
	sbc  d                                           ; $67d4: $9a
	add  d                                           ; $67d5: $82
	ld   de, $1111                                   ; $67d6: $11 $11 $11
	ld   l, a                                        ; $67d9: $6f
	rst  $38                                         ; $67da: $ff
	rst  $38                                         ; $67db: $ff
	rst  $38                                         ; $67dc: $ff
	db   $fc                                         ; $67dd: $fc
	and  [hl]                                        ; $67de: $a6
	ld   l, c                                        ; $67df: $69
	xor  d                                           ; $67e0: $aa
	sub  l                                           ; $67e1: $95
	ld   de, $1111                                   ; $67e2: $11 $11 $11
	ld   c, l                                        ; $67e5: $4d
	rst  $38                                         ; $67e6: $ff
	rst  $38                                         ; $67e7: $ff
	rst  $38                                         ; $67e8: $ff
	jp   hl                                          ; $67e9: $e9


	halt                                             ; $67ea: $76
	ld   e, e                                        ; $67eb: $5b
	res  4, l                                        ; $67ec: $cb $a5
	ld   de, $1111                                   ; $67ee: $11 $11 $11
	ld   c, l                                        ; $67f1: $4d
	rst  $38                                         ; $67f2: $ff
	rst  $38                                         ; $67f3: $ff
	rst  $38                                         ; $67f4: $ff
	ret  z                                           ; $67f5: $c8

	ld   [hl], a                                     ; $67f6: $77
	ld   l, d                                        ; $67f7: $6a
	call c, $11a6                                    ; $67f8: $dc $a6 $11
	ld   de, $4e11                                   ; $67fb: $11 $11 $4e
	rst  $38                                         ; $67fe: $ff
	rst  $38                                         ; $67ff: $ff
	rst  $38                                         ; $6800: $ff
	sub  [hl]                                        ; $6801: $96
	ld   [hl], a                                     ; $6802: $77
	ld   a, d                                        ; $6803: $7a
	db   $eb                                         ; $6804: $eb
	cp   b                                           ; $6805: $b8
	ld   de, $1111                                   ; $6806: $11 $11 $11
	ld   l, a                                        ; $6809: $6f
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	rst  $38                                         ; $680c: $ff
	sub  l                                           ; $680d: $95
	ld   [hl], l                                     ; $680e: $75
	ld   l, h                                        ; $680f: $6c
	cp   $b7                                         ; $6810: $fe $b7
	ld   de, $1111                                   ; $6812: $11 $11 $11
	xor  a                                           ; $6815: $af
	rst  $38                                         ; $6816: $ff
	rst  $38                                         ; $6817: $ff
	ei                                               ; $6818: $fb
	ld   d, h                                        ; $6819: $54
	ld   h, a                                        ; $681a: $67
	adc  a                                           ; $681b: $8f
	db   $fc                                         ; $681c: $fc
	and  d                                           ; $681d: $a2
	ld   de, $1211                                   ; $681e: $11 $11 $12
	cp   l                                           ; $6821: $bd
	rst  $38                                         ; $6822: $ff
	rst  $38                                         ; $6823: $ff
	ld   [$7544], a                                  ; $6824: $ea $44 $75
	xor  a                                           ; $6827: $af
	xor  $91                                         ; $6828: $ee $91
	ld   de, $1711                                   ; $682a: $11 $11 $17
	rst  JumpTable                                         ; $682d: $df
	rst  $38                                         ; $682e: $ff
	cp   $a2                                         ; $682f: $fe $a2
	inc  d                                           ; $6831: $14
	xor  [hl]                                        ; $6832: $ae
	rst  $28                                         ; $6833: $ef
	ret  c                                           ; $6834: $d8

	ld   b, c                                        ; $6835: $41
	ld   de, $1811                                   ; $6836: $11 $11 $18
	rst  $38                                         ; $6839: $ff
	rst  $38                                         ; $683a: $ff
	rst  $30                                         ; $683b: $f7
	ld   b, l                                        ; $683c: $45
	ld   e, b                                        ; $683d: $58
	cp   [hl]                                        ; $683e: $be
	rst  $38                                         ; $683f: $ff
	jp   hl                                          ; $6840: $e9


	ld   de, $1111                                   ; $6841: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6844: $cf
	rst  $38                                         ; $6845: $ff
	rst  $38                                         ; $6846: $ff
	ld   a, [$4a22]                                  ; $6847: $fa $22 $4a
	rst  $38                                         ; $684a: $ff
	ei                                               ; $684b: $fb
	and  c                                           ; $684c: $a1
	ld   de, $1611                                   ; $684d: $11 $11 $16
	rst  JumpTable                                         ; $6850: $df
	rst  $38                                         ; $6851: $ff
	db   $eb                                         ; $6852: $eb
	cp   b                                           ; $6853: $b8
	ld   h, a                                        ; $6854: $67
	sbc  e                                           ; $6855: $9b
	rst  JumpTable                                         ; $6856: $df
	cp   $41                                         ; $6857: $fe $41
	ld   de, $6912                                   ; $6859: $11 $12 $69
	rst  JumpTable                                         ; $685c: $df
	rst  $38                                         ; $685d: $ff
	rst  $30                                         ; $685e: $f7
	ld   hl, $ff6f                                   ; $685f: $21 $6f $ff
	rst  $38                                         ; $6862: $ff
	ld   [hl], e                                     ; $6863: $73
	ld   de, $2511                                   ; $6864: $11 $11 $25
	cp   a                                           ; $6867: $bf
	rst  $38                                         ; $6868: $ff
	db   $ed                                         ; $6869: $ed
	ld   de, $ff5b                                   ; $686a: $11 $5b $ff
	ei                                               ; $686d: $fb
	cp   l                                           ; $686e: $bd
	ld   b, c                                        ; $686f: $41
	ld   de, $8e12                                   ; $6870: $11 $12 $8e
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	ret  c                                           ; $6875: $d8

	ld   de, $ffcf                                   ; $6876: $11 $cf $ff
	jp   hl                                          ; $6879: $e9


	sub  e                                           ; $687a: $93
	ld   de, $4c11                                   ; $687b: $11 $11 $4c
	rst  $28                                         ; $687e: $ef
	db   $fd                                         ; $687f: $fd
	or   a                                           ; $6880: $b7
	ld   h, h                                        ; $6881: $64
	ld   c, d                                        ; $6882: $4a
	rst  $28                                         ; $6883: $ef
	rst  $38                                         ; $6884: $ff
	sub  l                                           ; $6885: $95
	ld   hl, $2511                                   ; $6886: $21 $11 $25
	rst  $38                                         ; $6889: $ff
	xor  h                                           ; $688a: $ac
	rst  $38                                         ; $688b: $ff
	and  c                                           ; $688c: $a1
	dec  e                                           ; $688d: $1d
	db   $fd                                         ; $688e: $fd
	cp   a                                           ; $688f: $bf
	cp   $b1                                         ; $6890: $fe $b1
	ld   de, $ef17                                   ; $6892: $11 $17 $ef
	xor  c                                           ; $6895: $a9
	xor  [hl]                                        ; $6896: $ae
	ld   hl, sp+$51                                  ; $6897: $f8 $51
	ld   e, $ff                                      ; $6899: $1e $ff
	cp   $51                                         ; $689b: $fe $51
	ld   de, $881a                                   ; $689d: $11 $1a $88
	and  a                                           ; $68a0: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68a1: $cf
	db   $f4                                         ; $68a2: $f4
	ld   [hl-], a                                    ; $68a3: $32
	dec  e                                           ; $68a4: $1d
	rst  $38                                         ; $68a5: $ff
	adc  $84                                         ; $68a6: $ce $84
	ld   de, $2311                                   ; $68a8: $11 $11 $23
	rst  JumpTable                                         ; $68ab: $df
	cp   $e8                                         ; $68ac: $fe $e8
	ld   hl, $ff1e                                   ; $68ae: $21 $1e $ff
	db   $ed                                         ; $68b1: $ed
	ld   l, e                                        ; $68b2: $6b
	pop  bc                                          ; $68b3: $c1
	ld   de, $fa5b                                   ; $68b4: $11 $5b $fa
	xor  e                                           ; $68b7: $ab
	call c, $1ac1                                    ; $68b8: $dc $c1 $1a
	rst  $38                                         ; $68bb: $ff
	ld   [$f19c], a                                  ; $68bc: $ea $9c $f1
	ld   de, $b58a                                   ; $68bf: $11 $8a $b5
	ld   e, a                                        ; $68c2: $5f
	ei                                               ; $68c3: $fb
	or   a                                           ; $68c4: $b7
	ld   de, $9eff                                   ; $68c5: $11 $ff $9e
	sbc  b                                           ; $68c8: $98
	or   $11                                         ; $68c9: $f6 $11
	ld   b, a                                        ; $68cb: $47
	ld   e, [hl]                                     ; $68cc: $5e
	call z, $d6ca                                    ; $68cd: $cc $ca $d6
	inc  d                                           ; $68d0: $14
	sbc  a                                           ; $68d1: $9f
	ei                                               ; $68d2: $fb
	ld   c, l                                        ; $68d3: $4d
	pop  hl                                          ; $68d4: $e1
	ld   de, $ab67                                   ; $68d5: $11 $67 $ab
	ld   d, a                                        ; $68d8: $57
	cp   $37                                         ; $68d9: $fe $37
	ret                                              ; $68db: $c9


	cp   h                                           ; $68dc: $bc
	ld   a, b                                        ; $68dd: $78
	rst  $30                                         ; $68de: $f7
	ld   a, b                                        ; $68df: $78
	ld   de, $ca68                                   ; $68e0: $11 $68 $ca
	ld   a, d                                        ; $68e3: $7a
	ld   e, h                                        ; $68e4: $5c
	ld   a, [$cf11]                                  ; $68e5: $fa $11 $cf
	call $53b8                                       ; $68e8: $cd $b8 $53
	ld   de, $aa6f                                   ; $68eb: $11 $6f $aa
	ld   b, d                                        ; $68ee: $42
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68ef: $cf
	add  c                                           ; $68f0: $81
	set  1, a                                        ; $68f1: $cb $cf
	sub  d                                           ; $68f3: $92
	ld   a, a                                        ; $68f4: $7f
	add  e                                           ; $68f5: $83
	ld   de, $b2bb                                   ; $68f6: $11 $bb $b2
	ccf                                              ; $68f9: $3f
	ld   sp, hl                                      ; $68fa: $f9
	ld   d, e                                        ; $68fb: $53
	dec  sp                                          ; $68fc: $3b
	rst  $38                                         ; $68fd: $ff
	ld   d, d                                        ; $68fe: $52
	sbc  a                                           ; $68ff: $9f
	pop  de                                          ; $6900: $d1
	ld   [de], a                                     ; $6901: $12
	adc  $36                                         ; $6902: $ce $36
	sbc  a                                           ; $6904: $9f
	pop  hl                                          ; $6905: $e1
	ld   [de], a                                     ; $6906: $12
	cp   [hl]                                        ; $6907: $be
	cp   $1b                                         ; $6908: $fe $1b
	ld   hl, sp+$11                                  ; $690a: $f8 $11
	rra                                              ; $690c: $1f
	pop  bc                                          ; $690d: $c1
	cp   e                                           ; $690e: $bb
	ld   a, l                                        ; $690f: $7d
	and  [hl]                                        ; $6910: $a6
	dec  a                                           ; $6911: $3d
	pop  de                                          ; $6912: $d1
	rst  $38                                         ; $6913: $ff
	ld   sp, $813e                                   ; $6914: $31 $3e $81
	inc  d                                           ; $6917: $14
	ld   sp, hl                                      ; $6918: $f9
	ld   a, c                                        ; $6919: $79
	rra                                              ; $691a: $1f
	ret                                              ; $691b: $c9


	add  c                                           ; $691c: $81
	xor  a                                           ; $691d: $af
	add  sp, $77                                     ; $691e: $e8 $77
	ld   [hl], a                                     ; $6920: $77
	ld   sp, $fd1a                                   ; $6921: $31 $1a $fd
	ld   hl, $cbcd                                   ; $6924: $21 $cd $cb
	sub  e                                           ; $6927: $93
	dec  a                                           ; $6928: $3d
	cp   $45                                         ; $6929: $fe $45
	and  $11                                         ; $692b: $e6 $11
	xor  a                                           ; $692d: $af
	sub  [hl]                                        ; $692e: $96
	ld   d, $fa                                      ; $692f: $16 $fa
	rla                                              ; $6931: $17
	rst  $38                                         ; $6932: $ff
	ld   b, e                                        ; $6933: $43
	inc  a                                           ; $6934: $3c
	pop  af                                          ; $6935: $f1
	ld   d, $78                                      ; $6936: $16 $78
	ld   b, a                                        ; $6938: $47
	ld   a, d                                        ; $6939: $7a
	ret  c                                           ; $693a: $d8

	ld   b, c                                        ; $693b: $41
	xor  $bf                                         ; $693c: $ee $bf
	add  l                                           ; $693e: $85
	ld   a, d                                        ; $693f: $7a
	db   $d3                                         ; $6940: $d3
	inc  d                                           ; $6941: $14
	push hl                                          ; $6942: $e5
	sub  [hl]                                        ; $6943: $96
	ld   a, a                                        ; $6944: $7f
	inc  de                                          ; $6945: $13
	xor  a                                           ; $6946: $af
	ld   h, [hl]                                     ; $6947: $66
	ld   sp, hl                                      ; $6948: $f9
	ld   h, l                                        ; $6949: $65
	cp   d                                           ; $694a: $ba
	ld   d, a                                        ; $694b: $57
	add  hl, de                                      ; $694c: $19
	or   $62                                         ; $694d: $f6 $62
	adc  e                                           ; $694f: $8b
	and  a                                           ; $6950: $a7
	ld   c, [hl]                                     ; $6951: $4e
	ld   sp, hl                                      ; $6952: $f9
	dec  sp                                          ; $6953: $3b
	sbc  c                                           ; $6954: $99
	ret  c                                           ; $6955: $d8

	ld   sp, $9827                                   ; $6956: $31 $27 $98
	ld   h, [hl]                                     ; $6959: $66
	adc  [hl]                                        ; $695a: $8e
	and  e                                           ; $695b: $a3
	cp   a                                           ; $695c: $bf
	and  c                                           ; $695d: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $695e: $cf
	db   $fc                                         ; $695f: $fc
	ld   de, $bb44                                   ; $6960: $11 $44 $bb
	adc  c                                           ; $6963: $89
	add  $3b                                         ; $6964: $c6 $3b

jr_0a7_6966:
	cp   b                                           ; $6966: $b8
	ld   h, a                                        ; $6967: $67
	xor  h                                           ; $6968: $ac
	cp   $61                                         ; $6969: $fe $61
	inc  e                                           ; $696b: $1c
	ld   h, c                                        ; $696c: $61
	sbc  d                                           ; $696d: $9a
	sbc  b                                           ; $696e: $98
	and  l                                           ; $696f: $a5

jr_0a7_6970:
	sbc  a                                           ; $6970: $9f
	ld   d, h                                        ; $6971: $54
	cp   b                                           ; $6972: $b8
	ei                                               ; $6973: $fb
	ld   l, [hl]                                     ; $6974: $6e
	ld   [de], a                                     ; $6975: $12
	pop  af                                          ; $6976: $f1
	rra                                              ; $6977: $1f
	db   $f4                                         ; $6978: $f4
	sub  e                                           ; $6979: $93
	ld   l, l                                        ; $697a: $6d
	and  h                                           ; $697b: $a4
	rst  $38                                         ; $697c: $ff
	ld   e, $f5                                      ; $697d: $1e $f5
	jr   z, jr_0a7_69e2                              ; $697f: $28 $61

	or   [hl]                                        ; $6981: $b6
	dec  sp                                          ; $6982: $3b
	reti                                             ; $6983: $d9


	add  hl, de                                      ; $6984: $19
	sbc  h                                           ; $6985: $9c
	cp   b                                           ; $6986: $b8
	ld   a, [$f329]                                  ; $6987: $fa $29 $f3
	ld   d, [hl]                                     ; $698a: $56
	inc  e                                           ; $698b: $1c
	sub  c                                           ; $698c: $91
	jp   hl                                          ; $698d: $e9


	dec  de                                          ; $698e: $1b
	db   $f4                                         ; $698f: $f4
	xor  d                                           ; $6990: $aa
	ld   c, h                                        ; $6991: $4c
	cp   l                                           ; $6992: $bd
	ld   a, [$f611]                                  ; $6993: $fa $11 $f6
	inc  e                                           ; $6996: $1c
	pop  hl                                          ; $6997: $e1
	ld   a, a                                        ; $6998: $7f
	ld   d, l                                        ; $6999: $55
	ld   c, h                                        ; $699a: $4c
	push af                                          ; $699b: $f5
	ccf                                              ; $699c: $3f
	ld   hl, sp+$24                                  ; $699d: $f8 $24
	ld   d, l                                        ; $699f: $55
	jr   jr_0a7_6966                                 ; $69a0: $18 $c4

	ld   a, d                                        ; $69a2: $7a
	ld   [hl], a                                     ; $69a3: $77
	sub  a                                           ; $69a4: $97
	res  1, e                                        ; $69a5: $cb $8b
	rst  $38                                         ; $69a7: $ff
	ld   d, $c1                                      ; $69a8: $16 $c1
	dec  e                                           ; $69aa: $1d
	ld   h, [hl]                                     ; $69ab: $66
	and  a                                           ; $69ac: $a7
	ld   e, h                                        ; $69ad: $5c
	call nz, $fc3b                                   ; $69ae: $c4 $3b $fc
	ld   h, l                                        ; $69b1: $65
	cp   a                                           ; $69b2: $bf
	ld   b, c                                        ; $69b3: $41
	ld   a, b                                        ; $69b4: $78
	jr   c, jr_0a7_6970                              ; $69b5: $38 $b9

	ld   c, b                                        ; $69b7: $48
	rst  ToBoot                                         ; $69b8: $c7
	dec  l                                           ; $69b9: $2d
	push hl                                          ; $69ba: $e5
	adc  a                                           ; $69bb: $8f
	and  d                                           ; $69bc: $a2
	ld   a, a                                        ; $69bd: $7f
	ld   d, c                                        ; $69be: $51
	ld   l, b                                        ; $69bf: $68
	ld   a, l                                        ; $69c0: $7d
	sub  c                                           ; $69c1: $91
	cp   [hl]                                        ; $69c2: $be
	inc  l                                           ; $69c3: $2c
	db   $d3                                         ; $69c4: $d3
	cpl                                              ; $69c5: $2f
	pop  af                                          ; $69c6: $f1
	xor  e                                           ; $69c7: $ab
	ld   e, $31                                      ; $69c8: $1e $31
	xor  a                                           ; $69ca: $af
	or   [hl]                                        ; $69cb: $b6
	dec  sp                                          ; $69cc: $3b
	db   $d3                                         ; $69cd: $d3
	ld   c, h                                        ; $69ce: $4c
	ei                                               ; $69cf: $fb
	inc  e                                           ; $69d0: $1c
	ldh  a, [c]                                      ; $69d1: $f2
	ld   c, h                                        ; $69d2: $4c
	dec  d                                           ; $69d3: $15
	and  c                                           ; $69d4: $a1
	xor  a                                           ; $69d5: $af
	ld   b, [hl]                                     ; $69d6: $46
	xor  d                                           ; $69d7: $aa
	or   h                                           ; $69d8: $b4
	ld   e, l                                        ; $69d9: $5d
	ld   hl, sp+$2a                                  ; $69da: $f8 $2a
	ld   a, [$7711]                                  ; $69dc: $fa $11 $77
	add  e                                           ; $69df: $83
	sbc  l                                           ; $69e0: $9d
	sub  h                                           ; $69e1: $94

jr_0a7_69e2:
	sbc  l                                           ; $69e2: $9d
	ld   l, b                                        ; $69e3: $68
	call c, $f14d                                    ; $69e4: $dc $4d $f1
	ld   c, l                                        ; $69e7: $4d
	inc  de                                          ; $69e8: $13
	and  $3e                                         ; $69e9: $e6 $3e
	and  h                                           ; $69eb: $a4
	sub  a                                           ; $69ec: $97
	sbc  e                                           ; $69ed: $9b
	sbc  l                                           ; $69ee: $9d
	jp   Jump_0a7_618f                               ; $69ef: $c3 $8f $61


	inc  de                                          ; $69f2: $13
	or   $3a                                         ; $69f3: $f6 $3a
	ld   e, h                                        ; $69f5: $5c
	jp   nc, $f81d                                   ; $69f6: $d2 $1d $f8

	ld   l, c                                        ; $69f9: $69
	ld   sp, hl                                      ; $69fa: $f9
	ld   b, a                                        ; $69fb: $47
	ld   [hl], e                                     ; $69fc: $73
	inc  d                                           ; $69fd: $14
	db   $eb                                         ; $69fe: $eb
	jr   c, jr_0a7_6a7d                              ; $69ff: $38 $7c

	or   c                                           ; $6a01: $b1
	ld   c, a                                        ; $6a02: $4f
	or   $1f                                         ; $6a03: $f6 $1f
	push af                                          ; $6a05: $f5
	inc  d                                           ; $6a06: $14
	pop  af                                          ; $6a07: $f1
	dec  de                                          ; $6a08: $1b
	xor  c                                           ; $6a09: $a9
	ld   a, c                                        ; $6a0a: $79
	ld   a, e                                        ; $6a0b: $7b
	or   c                                           ; $6a0c: $b1
	adc  a                                           ; $6a0d: $8f
	db   $e4                                         ; $6a0e: $e4
	ld   a, e                                        ; $6a0f: $7b
	and  h                                           ; $6a10: $a4
	inc  h                                           ; $6a11: $24
	ld   a, b                                        ; $6a12: $78
	ld   a, b                                        ; $6a13: $78
	ld   l, b                                        ; $6a14: $68
	sbc  e                                           ; $6a15: $9b
	ld   b, h                                        ; $6a16: $44
	xor  [hl]                                        ; $6a17: $ae
	di                                               ; $6a18: $f3
	adc  l                                           ; $6a19: $8d
	rl   h                                           ; $6a1a: $cb $14
	or   l                                           ; $6a1c: $b5
	ld   [hl], a                                     ; $6a1d: $77
	ld   a, [hl+]                                    ; $6a1e: $2a
	db   $f4                                         ; $6a1f: $f4
	dec  de                                          ; $6a20: $1b
	ld   hl, sp+$39                                  ; $6a21: $f8 $39
	ld   a, [$755d]                                  ; $6a23: $fa $5d $75
	ld   h, h                                        ; $6a26: $64
	sub  a                                           ; $6a27: $97
	ld   c, b                                        ; $6a28: $48
	and  a                                           ; $6a29: $a7
	ld   l, b                                        ; $6a2a: $68
	jp   z, $8c7b                                    ; $6a2b: $ca $7b $8c

	or   l                                           ; $6a2e: $b5
	adc  c                                           ; $6a2f: $89
	ld   h, [hl]                                     ; $6a30: $66
	ld   [hl], h                                     ; $6a31: $74
	sbc  e                                           ; $6a32: $9b
	ld   d, l                                        ; $6a33: $55
	cp   c                                           ; $6a34: $b9
	add  hl, hl                                      ; $6a35: $29
	sbc  e                                           ; $6a36: $9b
	jp   $94ae                                       ; $6a37: $c3 $ae $94


	ld   e, e                                        ; $6a3a: $5b
	sub  a                                           ; $6a3b: $97
	ld   b, l                                        ; $6a3c: $45
	cp   e                                           ; $6a3d: $bb
	ld   b, h                                        ; $6a3e: $44
	ret                                              ; $6a3f: $c9


	ld   [hl], a                                     ; $6a40: $77
	ld   c, d                                        ; $6a41: $4a
	and  $7b                                         ; $6a42: $e6 $7b
	add  a                                           ; $6a44: $87
	ld   [hl], a                                     ; $6a45: $77
	ld   h, a                                        ; $6a46: $67
	sbc  d                                           ; $6a47: $9a
	ld   [hl], h                                     ; $6a48: $74
	adc  d                                           ; $6a49: $8a
	ld   [hl], l                                     ; $6a4a: $75
	ld   c, c                                        ; $6a4b: $49
	and  a                                           ; $6a4c: $a7
	adc  c                                           ; $6a4d: $89
	cp   c                                           ; $6a4e: $b9
	ld   a, b                                        ; $6a4f: $78
	sbc  d                                           ; $6a50: $9a
	ld   a, b                                        ; $6a51: $78
	ld   d, [hl]                                     ; $6a52: $56
	xor  b                                           ; $6a53: $a8
	ld   b, a                                        ; $6a54: $47
	sub  [hl]                                        ; $6a55: $96
	adc  c                                           ; $6a56: $89
	ld   e, b                                        ; $6a57: $58
	and  a                                           ; $6a58: $a7
	sbc  b                                           ; $6a59: $98
	adc  d                                           ; $6a5a: $8a
	ld   d, [hl]                                     ; $6a5b: $56
	halt                                             ; $6a5c: $76
	cp   b                                           ; $6a5d: $b8
	ld   l, b                                        ; $6a5e: $68
	sbc  c                                           ; $6a5f: $99
	ld   d, [hl]                                     ; $6a60: $56
	adc  c                                           ; $6a61: $89
	sub  a                                           ; $6a62: $97
	ld   a, c                                        ; $6a63: $79
	sbc  c                                           ; $6a64: $99
	add  a                                           ; $6a65: $87
	ld   a, b                                        ; $6a66: $78
	xor  b                                           ; $6a67: $a8
	sbc  e                                           ; $6a68: $9b
	ld   a, d                                        ; $6a69: $7a
	or   h                                           ; $6a6a: $b4
	sbc  d                                           ; $6a6b: $9a
	ld   a, d                                        ; $6a6c: $7a
	ld   l, b                                        ; $6a6d: $68
	or   [hl]                                        ; $6a6e: $b6
	ld   a, c                                        ; $6a6f: $79
	ld   [hl], a                                     ; $6a70: $77
	and  a                                           ; $6a71: $a7
	adc  e                                           ; $6a72: $8b
	sbc  c                                           ; $6a73: $99
	sbc  b                                           ; $6a74: $98
	adc  c                                           ; $6a75: $89
	sub  a                                           ; $6a76: $97
	sbc  d                                           ; $6a77: $9a
	ld   a, b                                        ; $6a78: $78
	sub  a                                           ; $6a79: $97
	sbc  b                                           ; $6a7a: $98
	adc  b                                           ; $6a7b: $88
	sbc  b                                           ; $6a7c: $98

jr_0a7_6a7d:
	sbc  b                                           ; $6a7d: $98
	adc  c                                           ; $6a7e: $89
	ld   a, c                                        ; $6a7f: $79
	adc  c                                           ; $6a80: $89
	adc  b                                           ; $6a81: $88
	ld   a, b                                        ; $6a82: $78
	sub  [hl]                                        ; $6a83: $96
	sub  a                                           ; $6a84: $97
	ld   a, d                                        ; $6a85: $7a
	ld   [hl], a                                     ; $6a86: $77
	sbc  b                                           ; $6a87: $98
	ld   a, b                                        ; $6a88: $78
	ld   a, b                                        ; $6a89: $78
	sbc  b                                           ; $6a8a: $98
	adc  b                                           ; $6a8b: $88
	sbc  b                                           ; $6a8c: $98
	adc  b                                           ; $6a8d: $88
	ld   a, c                                        ; $6a8e: $79
	sub  a                                           ; $6a8f: $97
	adc  c                                           ; $6a90: $89
	adc  b                                           ; $6a91: $88
	add  a                                           ; $6a92: $87
	adc  b                                           ; $6a93: $88
	adc  c                                           ; $6a94: $89
	ld   a, b                                        ; $6a95: $78
	ld   [hl], a                                     ; $6a96: $77
	xor  b                                           ; $6a97: $a8
	adc  b                                           ; $6a98: $88
	sub  a                                           ; $6a99: $97
	sbc  b                                           ; $6a9a: $98
	ld   a, d                                        ; $6a9b: $7a
	ld   a, b                                        ; $6a9c: $78
	sub  a                                           ; $6a9d: $97
	sbc  b                                           ; $6a9e: $98
	sub  a                                           ; $6a9f: $97
	adc  b                                           ; $6aa0: $88
	sbc  c                                           ; $6aa1: $99
	adc  c                                           ; $6aa2: $89
	ld   a, d                                        ; $6aa3: $7a
	ld   a, b                                        ; $6aa4: $78
	sub  a                                           ; $6aa5: $97
	adc  b                                           ; $6aa6: $88
	adc  c                                           ; $6aa7: $89
	adc  b                                           ; $6aa8: $88
	adc  b                                           ; $6aa9: $88
	add  a                                           ; $6aaa: $87
	adc  b                                           ; $6aab: $88
	adc  b                                           ; $6aac: $88
	add  a                                           ; $6aad: $87
	adc  b                                           ; $6aae: $88
	ld   a, b                                        ; $6aaf: $78
	adc  b                                           ; $6ab0: $88
	adc  b                                           ; $6ab1: $88
	adc  b                                           ; $6ab2: $88
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	ld   a, c                                        ; $6ab5: $79
	ld   a, c                                        ; $6ab6: $79
	sub  [hl]                                        ; $6ab7: $96
	sbc  c                                           ; $6ab8: $99
	ld   a, c                                        ; $6ab9: $79
	ld   a, c                                        ; $6aba: $79
	ld   a, b                                        ; $6abb: $78
	sub  [hl]                                        ; $6abc: $96
	and  [hl]                                        ; $6abd: $a6
	sbc  b                                           ; $6abe: $98
	ld   a, b                                        ; $6abf: $78
	ld   a, d                                        ; $6ac0: $7a
	ld   l, b                                        ; $6ac1: $68
	adc  b                                           ; $6ac2: $88
	add  a                                           ; $6ac3: $87
	sub  a                                           ; $6ac4: $97
	sub  a                                           ; $6ac5: $97
	adc  b                                           ; $6ac6: $88
	adc  b                                           ; $6ac7: $88
	ld   a, c                                        ; $6ac8: $79
	ld   a, c                                        ; $6ac9: $79
	add  a                                           ; $6aca: $87
	adc  b                                           ; $6acb: $88
	add  a                                           ; $6acc: $87
	add  a                                           ; $6acd: $87
	add  a                                           ; $6ace: $87
	sub  a                                           ; $6acf: $97
	adc  b                                           ; $6ad0: $88
	ld   a, c                                        ; $6ad1: $79
	ld   a, c                                        ; $6ad2: $79
	ld   a, c                                        ; $6ad3: $79
	ld   [hl], a                                     ; $6ad4: $77
	add  a                                           ; $6ad5: $87
	sub  a                                           ; $6ad6: $97
	sub  a                                           ; $6ad7: $97
	sub  a                                           ; $6ad8: $97
	adc  b                                           ; $6ad9: $88
	ld   a, c                                        ; $6ada: $79
	ld   a, b                                        ; $6adb: $78
	adc  c                                           ; $6adc: $89
	ld   a, b                                        ; $6add: $78
	sub  a                                           ; $6ade: $97
	add  a                                           ; $6adf: $87
	adc  b                                           ; $6ae0: $88
	adc  b                                           ; $6ae1: $88
	ld   a, b                                        ; $6ae2: $78
	ld   a, b                                        ; $6ae3: $78
	ld   a, b                                        ; $6ae4: $78
	ld   a, b                                        ; $6ae5: $78
	sub  a                                           ; $6ae6: $97
	add  a                                           ; $6ae7: $87
	adc  b                                           ; $6ae8: $88
	ld   a, c                                        ; $6ae9: $79
	ld   a, c                                        ; $6aea: $79
	ld   a, b                                        ; $6aeb: $78
	adc  b                                           ; $6aec: $88
	add  a                                           ; $6aed: $87
	adc  b                                           ; $6aee: $88
	add  a                                           ; $6aef: $87
	sub  a                                           ; $6af0: $97
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	ld   a, b                                        ; $6af3: $78
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	ld   [hl], a                                     ; $6af6: $77
	add  a                                           ; $6af7: $87
	adc  b                                           ; $6af8: $88
	ld   a, b                                        ; $6af9: $78
	ld   a, b                                        ; $6afa: $78
	adc  b                                           ; $6afb: $88
	add  a                                           ; $6afc: $87
	adc  b                                           ; $6afd: $88
	add  a                                           ; $6afe: $87
	adc  b                                           ; $6aff: $88
	adc  b                                           ; $6b00: $88
	add  a                                           ; $6b01: $87
	adc  b                                           ; $6b02: $88
	adc  b                                           ; $6b03: $88
	ld   a, b                                        ; $6b04: $78
	adc  b                                           ; $6b05: $88
	adc  b                                           ; $6b06: $88
	adc  b                                           ; $6b07: $88
	ld   a, b                                        ; $6b08: $78
	add  a                                           ; $6b09: $87
	add  a                                           ; $6b0a: $87
	adc  b                                           ; $6b0b: $88
	ld   a, b                                        ; $6b0c: $78
	adc  b                                           ; $6b0d: $88
	adc  b                                           ; $6b0e: $88
	adc  b                                           ; $6b0f: $88
	adc  b                                           ; $6b10: $88
	ld   a, b                                        ; $6b11: $78
	ld   a, b                                        ; $6b12: $78
	adc  b                                           ; $6b13: $88
	add  a                                           ; $6b14: $87
	sbc  b                                           ; $6b15: $98
	adc  b                                           ; $6b16: $88
	adc  b                                           ; $6b17: $88
	adc  b                                           ; $6b18: $88
	add  a                                           ; $6b19: $87
	adc  b                                           ; $6b1a: $88
	adc  b                                           ; $6b1b: $88
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  c                                           ; $6b1e: $89
	ld   a, b                                        ; $6b1f: $78
	add  a                                           ; $6b20: $87
	add  a                                           ; $6b21: $87
	sub  a                                           ; $6b22: $97
	adc  b                                           ; $6b23: $88
	adc  c                                           ; $6b24: $89
	ld   a, c                                        ; $6b25: $79
	adc  c                                           ; $6b26: $89
	add  a                                           ; $6b27: $87
	adc  b                                           ; $6b28: $88
	adc  b                                           ; $6b29: $88
	adc  b                                           ; $6b2a: $88
	adc  c                                           ; $6b2b: $89
	ld   [hl], a                                     ; $6b2c: $77
	sub  a                                           ; $6b2d: $97
	add  a                                           ; $6b2e: $87
	adc  c                                           ; $6b2f: $89
	ld   a, b                                        ; $6b30: $78
	ld   a, b                                        ; $6b31: $78
	adc  b                                           ; $6b32: $88
	add  a                                           ; $6b33: $87
	sub  a                                           ; $6b34: $97
	sbc  b                                           ; $6b35: $98
	ld   a, b                                        ; $6b36: $78
	ld   a, c                                        ; $6b37: $79
	add  a                                           ; $6b38: $87
	sub  a                                           ; $6b39: $97
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	ld   a, d                                        ; $6b3d: $7a
	ld   a, b                                        ; $6b3e: $78
	sub  a                                           ; $6b3f: $97
	adc  b                                           ; $6b40: $88
	adc  b                                           ; $6b41: $88
	sub  a                                           ; $6b42: $97
	adc  c                                           ; $6b43: $89
	ld   a, c                                        ; $6b44: $79
	adc  b                                           ; $6b45: $88
	adc  b                                           ; $6b46: $88
	adc  b                                           ; $6b47: $88
	sub  a                                           ; $6b48: $97
	adc  b                                           ; $6b49: $88
	adc  b                                           ; $6b4a: $88
	adc  b                                           ; $6b4b: $88
	adc  b                                           ; $6b4c: $88
	adc  c                                           ; $6b4d: $89
	adc  b                                           ; $6b4e: $88
	sbc  c                                           ; $6b4f: $99
	adc  c                                           ; $6b50: $89
	adc  b                                           ; $6b51: $88
	adc  b                                           ; $6b52: $88
	adc  b                                           ; $6b53: $88
	add  a                                           ; $6b54: $87
	add  a                                           ; $6b55: $87
	sub  a                                           ; $6b56: $97
	sbc  b                                           ; $6b57: $98
	ld   a, c                                        ; $6b58: $79
	ld   a, b                                        ; $6b59: $78
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	sbc  b                                           ; $6b5c: $98
	sbc  b                                           ; $6b5d: $98
	sbc  b                                           ; $6b5e: $98
	adc  b                                           ; $6b5f: $88
	adc  b                                           ; $6b60: $88
	ld   a, b                                        ; $6b61: $78
	ld   a, b                                        ; $6b62: $78
	add  a                                           ; $6b63: $87
	adc  c                                           ; $6b64: $89
	ld   a, b                                        ; $6b65: $78
	sbc  b                                           ; $6b66: $98
	adc  b                                           ; $6b67: $88
	adc  c                                           ; $6b68: $89
	add  a                                           ; $6b69: $87
	adc  b                                           ; $6b6a: $88
	adc  c                                           ; $6b6b: $89
	adc  b                                           ; $6b6c: $88
	ld   a, b                                        ; $6b6d: $78
	sbc  b                                           ; $6b6e: $98
	adc  b                                           ; $6b6f: $88
	adc  b                                           ; $6b70: $88
	adc  b                                           ; $6b71: $88
	sbc  b                                           ; $6b72: $98
	adc  c                                           ; $6b73: $89
	adc  b                                           ; $6b74: $88
	add  a                                           ; $6b75: $87
	add  a                                           ; $6b76: $87
	sbc  b                                           ; $6b77: $98
	ld   a, c                                        ; $6b78: $79
	adc  b                                           ; $6b79: $88
	adc  c                                           ; $6b7a: $89
	ld   a, b                                        ; $6b7b: $78
	add  a                                           ; $6b7c: $87
	sbc  b                                           ; $6b7d: $98
	sbc  b                                           ; $6b7e: $98
	sbc  b                                           ; $6b7f: $98
	adc  b                                           ; $6b80: $88
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  c                                           ; $6b83: $89
	ld   a, b                                        ; $6b84: $78
	ld   a, b                                        ; $6b85: $78
	adc  c                                           ; $6b86: $89
	add  a                                           ; $6b87: $87
	sub  a                                           ; $6b88: $97
	sub  a                                           ; $6b89: $97
	add  a                                           ; $6b8a: $87
	add  a                                           ; $6b8b: $87
	adc  c                                           ; $6b8c: $89
	ld   a, c                                        ; $6b8d: $79
	ld   a, b                                        ; $6b8e: $78
	ld   a, c                                        ; $6b8f: $79
	ld   a, b                                        ; $6b90: $78
	sub  [hl]                                        ; $6b91: $96
	and  a                                           ; $6b92: $a7
	sbc  b                                           ; $6b93: $98
	adc  c                                           ; $6b94: $89
	ld   a, c                                        ; $6b95: $79
	ld   a, b                                        ; $6b96: $78
	sbc  b                                           ; $6b97: $98
	adc  b                                           ; $6b98: $88
	ld   a, b                                        ; $6b99: $78
	add  a                                           ; $6b9a: $87
	add  a                                           ; $6b9b: $87
	adc  b                                           ; $6b9c: $88
	adc  c                                           ; $6b9d: $89
	adc  b                                           ; $6b9e: $88
	adc  c                                           ; $6b9f: $89
	ld   a, b                                        ; $6ba0: $78
	adc  b                                           ; $6ba1: $88
	add  a                                           ; $6ba2: $87
	add  a                                           ; $6ba3: $87
	add  a                                           ; $6ba4: $87
	adc  c                                           ; $6ba5: $89
	ld   a, b                                        ; $6ba6: $78
	ld   a, b                                        ; $6ba7: $78
	adc  b                                           ; $6ba8: $88
	add  a                                           ; $6ba9: $87
	sbc  b                                           ; $6baa: $98
	adc  b                                           ; $6bab: $88
	ld   a, c                                        ; $6bac: $79
	adc  c                                           ; $6bad: $89
	ld   a, c                                        ; $6bae: $79
	adc  b                                           ; $6baf: $88
	sub  a                                           ; $6bb0: $97
	add  a                                           ; $6bb1: $87
	sbc  c                                           ; $6bb2: $99
	ld   a, c                                        ; $6bb3: $79
	adc  b                                           ; $6bb4: $88
	sbc  b                                           ; $6bb5: $98
	sbc  b                                           ; $6bb6: $98
	add  a                                           ; $6bb7: $87
	sbc  b                                           ; $6bb8: $98
	ld   a, c                                        ; $6bb9: $79
	ld   a, b                                        ; $6bba: $78
	sub  a                                           ; $6bbb: $97
	sbc  b                                           ; $6bbc: $98
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	sub  a                                           ; $6bbf: $97
	adc  b                                           ; $6bc0: $88
	adc  c                                           ; $6bc1: $89
	adc  b                                           ; $6bc2: $88
	ld   a, c                                        ; $6bc3: $79
	adc  b                                           ; $6bc4: $88
	adc  b                                           ; $6bc5: $88
	ld   a, b                                        ; $6bc6: $78
	add  a                                           ; $6bc7: $87
	sub  a                                           ; $6bc8: $97
	sbc  b                                           ; $6bc9: $98
	adc  c                                           ; $6bca: $89
	adc  b                                           ; $6bcb: $88
	adc  c                                           ; $6bcc: $89
	adc  c                                           ; $6bcd: $89
	adc  b                                           ; $6bce: $88
	adc  b                                           ; $6bcf: $88
	ld   a, c                                        ; $6bd0: $79
	sbc  b                                           ; $6bd1: $98
	add  a                                           ; $6bd2: $87
	sub  a                                           ; $6bd3: $97
	add  a                                           ; $6bd4: $87
	adc  c                                           ; $6bd5: $89
	ld   a, c                                        ; $6bd6: $79
	ld   a, b                                        ; $6bd7: $78
	sbc  b                                           ; $6bd8: $98
	adc  b                                           ; $6bd9: $88
	sub  a                                           ; $6bda: $97
	adc  b                                           ; $6bdb: $88
	adc  b                                           ; $6bdc: $88
	add  a                                           ; $6bdd: $87
	adc  c                                           ; $6bde: $89
	ld   a, b                                        ; $6bdf: $78
	ld   a, c                                        ; $6be0: $79
	adc  c                                           ; $6be1: $89
	adc  b                                           ; $6be2: $88
	add  a                                           ; $6be3: $87
	add  a                                           ; $6be4: $87
	sub  a                                           ; $6be5: $97
	adc  c                                           ; $6be6: $89
	ld   a, c                                        ; $6be7: $79
	ld   a, c                                        ; $6be8: $79
	ld   a, b                                        ; $6be9: $78
	adc  b                                           ; $6bea: $88
	add  a                                           ; $6beb: $87
	sbc  b                                           ; $6bec: $98
	adc  b                                           ; $6bed: $88
	sub  a                                           ; $6bee: $97
	sbc  b                                           ; $6bef: $98
	ld   a, c                                        ; $6bf0: $79
	adc  b                                           ; $6bf1: $88
	sbc  b                                           ; $6bf2: $98
	adc  c                                           ; $6bf3: $89
	ld   a, b                                        ; $6bf4: $78
	add  a                                           ; $6bf5: $87
	sub  a                                           ; $6bf6: $97
	sbc  c                                           ; $6bf7: $99
	adc  c                                           ; $6bf8: $89
	adc  c                                           ; $6bf9: $89
	adc  b                                           ; $6bfa: $88
	sbc  b                                           ; $6bfb: $98
	sbc  b                                           ; $6bfc: $98
	sbc  b                                           ; $6bfd: $98
	adc  b                                           ; $6bfe: $88
	adc  c                                           ; $6bff: $89
	adc  b                                           ; $6c00: $88
	sbc  b                                           ; $6c01: $98
	ld   a, c                                        ; $6c02: $79
	adc  b                                           ; $6c03: $88
	adc  b                                           ; $6c04: $88
	sub  a                                           ; $6c05: $97
	adc  b                                           ; $6c06: $88
	ld   a, c                                        ; $6c07: $79
	ld   l, c                                        ; $6c08: $69
	add  a                                           ; $6c09: $87
	and  a                                           ; $6c0a: $a7
	sub  a                                           ; $6c0b: $97
	sub  a                                           ; $6c0c: $97
	ld   a, c                                        ; $6c0d: $79
	adc  c                                           ; $6c0e: $89
	ld   l, d                                        ; $6c0f: $6a
	adc  b                                           ; $6c10: $88
	add  a                                           ; $6c11: $87
	and  a                                           ; $6c12: $a7
	adc  b                                           ; $6c13: $88
	add  a                                           ; $6c14: $87
	sub  a                                           ; $6c15: $97
	and  a                                           ; $6c16: $a7
	adc  c                                           ; $6c17: $89
	ld   a, d                                        ; $6c18: $7a
	ld   l, c                                        ; $6c19: $69
	sbc  b                                           ; $6c1a: $98
	add  a                                           ; $6c1b: $87
	sub  a                                           ; $6c1c: $97
	sub  a                                           ; $6c1d: $97
	adc  b                                           ; $6c1e: $88
	adc  c                                           ; $6c1f: $89
	ld   a, d                                        ; $6c20: $7a
	sub  a                                           ; $6c21: $97
	add  a                                           ; $6c22: $87
	adc  b                                           ; $6c23: $88
	adc  c                                           ; $6c24: $89
	ld   a, b                                        ; $6c25: $78
	add  a                                           ; $6c26: $87
	adc  c                                           ; $6c27: $89
	ld   a, c                                        ; $6c28: $79
	add  a                                           ; $6c29: $87
	add  a                                           ; $6c2a: $87
	sub  a                                           ; $6c2b: $97
	sbc  b                                           ; $6c2c: $98
	adc  b                                           ; $6c2d: $88
	ld   a, c                                        ; $6c2e: $79
	ld   a, c                                        ; $6c2f: $79
	ld   a, c                                        ; $6c30: $79
	sbc  b                                           ; $6c31: $98
	adc  b                                           ; $6c32: $88
	adc  b                                           ; $6c33: $88
	ld   a, c                                        ; $6c34: $79
	adc  b                                           ; $6c35: $88
	sub  a                                           ; $6c36: $97
	sub  a                                           ; $6c37: $97
	sub  a                                           ; $6c38: $97
	adc  b                                           ; $6c39: $88
	ld   a, c                                        ; $6c3a: $79
	adc  b                                           ; $6c3b: $88
	add  a                                           ; $6c3c: $87
	sbc  b                                           ; $6c3d: $98
	sbc  c                                           ; $6c3e: $99
	ld   l, d                                        ; $6c3f: $6a
	ld   a, b                                        ; $6c40: $78
	adc  b                                           ; $6c41: $88
	sub  a                                           ; $6c42: $97
	sub  [hl]                                        ; $6c43: $96
	sbc  b                                           ; $6c44: $98
	ld   a, c                                        ; $6c45: $79
	adc  d                                           ; $6c46: $8a
	ld   a, c                                        ; $6c47: $79
	add  a                                           ; $6c48: $87
	add  a                                           ; $6c49: $87
	adc  c                                           ; $6c4a: $89
	adc  b                                           ; $6c4b: $88
	adc  b                                           ; $6c4c: $88
	add  a                                           ; $6c4d: $87
	ld   a, c                                        ; $6c4e: $79
	ld   a, c                                        ; $6c4f: $79
	sub  a                                           ; $6c50: $97
	adc  b                                           ; $6c51: $88
	add  a                                           ; $6c52: $87
	adc  b                                           ; $6c53: $88
	sbc  b                                           ; $6c54: $98
	ld   l, c                                        ; $6c55: $69
	sbc  b                                           ; $6c56: $98
	ld   a, c                                        ; $6c57: $79
	sub  a                                           ; $6c58: $97
	add  a                                           ; $6c59: $87
	adc  c                                           ; $6c5a: $89
	ld   l, b                                        ; $6c5b: $68
	and  a                                           ; $6c5c: $a7
	sbc  b                                           ; $6c5d: $98
	adc  c                                           ; $6c5e: $89
	ld   a, b                                        ; $6c5f: $78
	adc  b                                           ; $6c60: $88
	adc  c                                           ; $6c61: $89
	ld   l, c                                        ; $6c62: $69
	add  a                                           ; $6c63: $87
	sub  a                                           ; $6c64: $97
	and  a                                           ; $6c65: $a7
	ld   a, c                                        ; $6c66: $79
	add  a                                           ; $6c67: $87
	adc  c                                           ; $6c68: $89
	adc  b                                           ; $6c69: $88
	adc  c                                           ; $6c6a: $89
	ld   a, d                                        ; $6c6b: $7a
	ld   a, b                                        ; $6c6c: $78
	sub  a                                           ; $6c6d: $97
	add  a                                           ; $6c6e: $87
	sub  a                                           ; $6c6f: $97
	sub  a                                           ; $6c70: $97
	sbc  c                                           ; $6c71: $99
	ld   l, c                                        ; $6c72: $69
	ld   a, b                                        ; $6c73: $78
	adc  b                                           ; $6c74: $88
	sub  a                                           ; $6c75: $97
	adc  c                                           ; $6c76: $89
	ld   l, b                                        ; $6c77: $68
	adc  c                                           ; $6c78: $89
	ld   [hl], a                                     ; $6c79: $77
	and  a                                           ; $6c7a: $a7
	add  a                                           ; $6c7b: $87
	sub  a                                           ; $6c7c: $97
	sbc  b                                           ; $6c7d: $98
	ld   a, d                                        ; $6c7e: $7a
	add  a                                           ; $6c7f: $87
	adc  b                                           ; $6c80: $88
	ld   a, c                                        ; $6c81: $79
	ld   l, c                                        ; $6c82: $69
	add  a                                           ; $6c83: $87
	and  a                                           ; $6c84: $a7
	ld   [hl], a                                     ; $6c85: $77
	and  a                                           ; $6c86: $a7
	adc  b                                           ; $6c87: $88
	ld   l, d                                        ; $6c88: $6a
	sub  [hl]                                        ; $6c89: $96
	ld   a, c                                        ; $6c8a: $79
	add  a                                           ; $6c8b: $87
	ld   a, b                                        ; $6c8c: $78
	adc  b                                           ; $6c8d: $88
	ld   a, b                                        ; $6c8e: $78
	sbc  c                                           ; $6c8f: $99
	ld   h, a                                        ; $6c90: $67
	or   [hl]                                        ; $6c91: $b6
	adc  b                                           ; $6c92: $88
	ld   a, b                                        ; $6c93: $78
	ld   a, c                                        ; $6c94: $79
	ld   [hl], a                                     ; $6c95: $77
	add  a                                           ; $6c96: $87
	and  a                                           ; $6c97: $a7
	adc  d                                           ; $6c98: $8a
	halt                                             ; $6c99: $76
	ld   a, d                                        ; $6c9a: $7a
	add  [hl]                                        ; $6c9b: $86
	sbc  c                                           ; $6c9c: $99
	add  a                                           ; $6c9d: $87
	ld   a, d                                        ; $6c9e: $7a
	ld   [hl], a                                     ; $6c9f: $77
	add  a                                           ; $6ca0: $87
	and  [hl]                                        ; $6ca1: $a6
	ld   a, d                                        ; $6ca2: $7a
	ld   a, b                                        ; $6ca3: $78
	ld   e, d                                        ; $6ca4: $5a
	sub  l                                           ; $6ca5: $95
	xor  b                                           ; $6ca6: $a8
	add  [hl]                                        ; $6ca7: $86
	ld   a, c                                        ; $6ca8: $79
	sub  a                                           ; $6ca9: $97
	adc  c                                           ; $6caa: $89
	sbc  b                                           ; $6cab: $98
	ld   a, c                                        ; $6cac: $79
	add  a                                           ; $6cad: $87
	sub  [hl]                                        ; $6cae: $96
	sbc  c                                           ; $6caf: $99
	ld   l, b                                        ; $6cb0: $68
	adc  c                                           ; $6cb1: $89
	ld   l, b                                        ; $6cb2: $68
	sbc  b                                           ; $6cb3: $98
	and  a                                           ; $6cb4: $a7
	adc  b                                           ; $6cb5: $88
	adc  b                                           ; $6cb6: $88
	ld   [hl], a                                     ; $6cb7: $77
	ld   a, c                                        ; $6cb8: $79
	adc  c                                           ; $6cb9: $89
	adc  c                                           ; $6cba: $89
	adc  b                                           ; $6cbb: $88
	add  a                                           ; $6cbc: $87
	add  a                                           ; $6cbd: $87
	sbc  b                                           ; $6cbe: $98
	sub  a                                           ; $6cbf: $97
	sbc  c                                           ; $6cc0: $99
	adc  b                                           ; $6cc1: $88
	ld   a, c                                        ; $6cc2: $79
	adc  b                                           ; $6cc3: $88
	adc  c                                           ; $6cc4: $89
	adc  b                                           ; $6cc5: $88
	ld   a, b                                        ; $6cc6: $78
	sbc  b                                           ; $6cc7: $98
	sub  a                                           ; $6cc8: $97
	sbc  b                                           ; $6cc9: $98
	adc  b                                           ; $6cca: $88
	adc  b                                           ; $6ccb: $88
	ld   a, b                                        ; $6ccc: $78
	adc  b                                           ; $6ccd: $88
	ld   a, b                                        ; $6cce: $78
	sub  a                                           ; $6ccf: $97
	adc  c                                           ; $6cd0: $89
	add  a                                           ; $6cd1: $87
	sbc  c                                           ; $6cd2: $99
	sub  a                                           ; $6cd3: $97
	sbc  b                                           ; $6cd4: $98
	add  a                                           ; $6cd5: $87
	ld   a, c                                        ; $6cd6: $79
	adc  b                                           ; $6cd7: $88
	ld   a, b                                        ; $6cd8: $78
	sbc  b                                           ; $6cd9: $98
	ld   [hl], a                                     ; $6cda: $77
	sbc  b                                           ; $6cdb: $98
	adc  b                                           ; $6cdc: $88
	adc  b                                           ; $6cdd: $88
	halt                                             ; $6cde: $76
	adc  c                                           ; $6cdf: $89
	sub  l                                           ; $6ce0: $95
	ld   l, l                                        ; $6ce1: $6d
	or   e                                           ; $6ce2: $b3
	ld   c, e                                        ; $6ce3: $4b
	rst  $20                                         ; $6ce4: $e7
	add  hl, hl                                      ; $6ce5: $29
	xor  b                                           ; $6ce6: $a8
	ld   h, [hl]                                     ; $6ce7: $66
	sbc  b                                           ; $6ce8: $98
	ld   a, b                                        ; $6ce9: $78
	and  [hl]                                        ; $6cea: $a6
	ld   l, d                                        ; $6ceb: $6a
	sub  a                                           ; $6cec: $97
	ld   a, c                                        ; $6ced: $79
	add  a                                           ; $6cee: $87
	adc  c                                           ; $6cef: $89
	add  a                                           ; $6cf0: $87
	adc  c                                           ; $6cf1: $89
	ld   [hl], a                                     ; $6cf2: $77
	adc  b                                           ; $6cf3: $88
	ld   a, b                                        ; $6cf4: $78
	sbc  c                                           ; $6cf5: $99
	ld   h, [hl]                                     ; $6cf6: $66
	adc  d                                           ; $6cf7: $8a
	add  h                                           ; $6cf8: $84
	xor  e                                           ; $6cf9: $ab
	ld   h, l                                        ; $6cfa: $65
	adc  c                                           ; $6cfb: $89
	ld   [hl], a                                     ; $6cfc: $77
	sbc  b                                           ; $6cfd: $98
	ld   [hl], a                                     ; $6cfe: $77
	add  a                                           ; $6cff: $87
	ld   [hl], a                                     ; $6d00: $77
	adc  b                                           ; $6d01: $88
	sub  a                                           ; $6d02: $97
	ld   a, b                                        ; $6d03: $78
	sbc  d                                           ; $6d04: $9a
	ld   d, [hl]                                     ; $6d05: $56
	sbc  b                                           ; $6d06: $98
	ld   [hl], a                                     ; $6d07: $77
	ld   a, d                                        ; $6d08: $7a
	sub  l                                           ; $6d09: $95
	ld   a, c                                        ; $6d0a: $79
	add  [hl]                                        ; $6d0b: $86
	adc  b                                           ; $6d0c: $88
	ld   [hl], a                                     ; $6d0d: $77
	ld   a, c                                        ; $6d0e: $79
	sub  l                                           ; $6d0f: $95
	adc  d                                           ; $6d10: $8a
	add  a                                           ; $6d11: $87
	ld   a, b                                        ; $6d12: $78
	xor  c                                           ; $6d13: $a9
	ld   h, a                                        ; $6d14: $67
	adc  b                                           ; $6d15: $88
	ld   [hl], a                                     ; $6d16: $77
	ld   [hl], a                                     ; $6d17: $77
	sbc  c                                           ; $6d18: $99
	ld   h, a                                        ; $6d19: $67
	ld   a, c                                        ; $6d1a: $79
	and  a                                           ; $6d1b: $a7
	ld   a, b                                        ; $6d1c: $78
	add  a                                           ; $6d1d: $87
	ld   [hl], a                                     ; $6d1e: $77
	ld   a, d                                        ; $6d1f: $7a
	sub  l                                           ; $6d20: $95
	adc  d                                           ; $6d21: $8a
	add  [hl]                                        ; $6d22: $86
	adc  b                                           ; $6d23: $88
	ld   a, c                                        ; $6d24: $79
	sub  a                                           ; $6d25: $97
	ld   a, c                                        ; $6d26: $79
	add  a                                           ; $6d27: $87
	ld   a, b                                        ; $6d28: $78
	sbc  b                                           ; $6d29: $98
	ld   a, c                                        ; $6d2a: $79
	add  a                                           ; $6d2b: $87
	adc  b                                           ; $6d2c: $88
	add  a                                           ; $6d2d: $87
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
	xor  b                                           ; $6e9f: $a8
	ld   a, b                                        ; $6ea0: $78
	adc  b                                           ; $6ea1: $88
	add  a                                           ; $6ea2: $87
	adc  b                                           ; $6ea3: $88
	adc  b                                           ; $6ea4: $88
	ld   [hl], a                                     ; $6ea5: $77
	and  a                                           ; $6ea6: $a7
	ld   a, e                                        ; $6ea7: $7b
	ld   l, c                                        ; $6ea8: $69
	sub  a                                           ; $6ea9: $97
	and  a                                           ; $6eaa: $a7
	adc  b                                           ; $6eab: $88
	adc  b                                           ; $6eac: $88
	sbc  b                                           ; $6ead: $98
	adc  b                                           ; $6eae: $88
	adc  b                                           ; $6eaf: $88
	adc  c                                           ; $6eb0: $89
	adc  b                                           ; $6eb1: $88
	add  a                                           ; $6eb2: $87
	sbc  c                                           ; $6eb3: $99
	ld   [hl], a                                     ; $6eb4: $77
	and  a                                           ; $6eb5: $a7
	adc  c                                           ; $6eb6: $89
	adc  b                                           ; $6eb7: $88
	adc  c                                           ; $6eb8: $89
	sbc  b                                           ; $6eb9: $98
	ld   a, b                                        ; $6eba: $78
	adc  b                                           ; $6ebb: $88
	sbc  b                                           ; $6ebc: $98
	adc  b                                           ; $6ebd: $88
	add  a                                           ; $6ebe: $87
	sbc  b                                           ; $6ebf: $98
	adc  b                                           ; $6ec0: $88
	ld   a, c                                        ; $6ec1: $79
	ld   a, b                                        ; $6ec2: $78
	add  a                                           ; $6ec3: $87
	adc  b                                           ; $6ec4: $88
	sbc  c                                           ; $6ec5: $99
	adc  c                                           ; $6ec6: $89
	add  a                                           ; $6ec7: $87
	add  a                                           ; $6ec8: $87
	ld   l, e                                        ; $6ec9: $6b
	ld   a, b                                        ; $6eca: $78
	sub  a                                           ; $6ecb: $97
	or   l                                           ; $6ecc: $b5
	sub  a                                           ; $6ecd: $97
	adc  c                                           ; $6ece: $89
	ld   l, e                                        ; $6ecf: $6b
	ld   c, c                                        ; $6ed0: $49
	adc  b                                           ; $6ed1: $88
	sub  a                                           ; $6ed2: $97
	add  l                                           ; $6ed3: $85
	sub  a                                           ; $6ed4: $97
	ld   hl, sp+$5e                                  ; $6ed5: $f8 $5e
	adc  d                                           ; $6ed7: $8a
	ret  c                                           ; $6ed8: $d8

	ld   a, d                                        ; $6ed9: $7a
	ld   d, a                                        ; $6eda: $57
	ld   h, a                                        ; $6edb: $67
	sub  l                                           ; $6edc: $95
	or   l                                           ; $6edd: $b5
	ld   [hl], a                                     ; $6ede: $77
	ld   l, d                                        ; $6edf: $6a
	ld   a, c                                        ; $6ee0: $79
	ld   a, d                                        ; $6ee1: $7a
	ld   l, b                                        ; $6ee2: $68
	sub  [hl]                                        ; $6ee3: $96
	and  [hl]                                        ; $6ee4: $a6
	add  a                                           ; $6ee5: $87
	xor  c                                           ; $6ee6: $a9
	ld   a, c                                        ; $6ee7: $79
	ld   a, c                                        ; $6ee8: $79
	adc  b                                           ; $6ee9: $88
	ld   l, c                                        ; $6eea: $69
	ld   h, a                                        ; $6eeb: $67
	add  a                                           ; $6eec: $87
	halt                                             ; $6eed: $76
	sub  [hl]                                        ; $6eee: $96
	sbc  b                                           ; $6eef: $98
	ld   a, c                                        ; $6ef0: $79
	ld   l, d                                        ; $6ef1: $6a
	sbc  d                                           ; $6ef2: $9a
	xor  b                                           ; $6ef3: $a8
	xor  b                                           ; $6ef4: $a8
	sub  [hl]                                        ; $6ef5: $96
	adc  b                                           ; $6ef6: $88
	ld   a, c                                        ; $6ef7: $79
	ld   h, a                                        ; $6ef8: $67
	ld   [hl], a                                     ; $6ef9: $77
	ld   a, b                                        ; $6efa: $78
	halt                                             ; $6efb: $76
	xor  c                                           ; $6efc: $a9
	adc  b                                           ; $6efd: $88
	and  a                                           ; $6efe: $a7
	adc  b                                           ; $6eff: $88
	ld   a, b                                        ; $6f00: $78
	ld   a, c                                        ; $6f01: $79
	ld   a, b                                        ; $6f02: $78
	ld   a, b                                        ; $6f03: $78
	sub  a                                           ; $6f04: $97
	add  a                                           ; $6f05: $87
	ld   l, c                                        ; $6f06: $69
	ld   l, b                                        ; $6f07: $68
	add  [hl]                                        ; $6f08: $86
	cp   b                                           ; $6f09: $b8
	ld   l, c                                        ; $6f0a: $69
	halt                                             ; $6f0b: $76
	ld   a, d                                        ; $6f0c: $7a
	ld   a, c                                        ; $6f0d: $79
	ld   [hl], a                                     ; $6f0e: $77
	sub  [hl]                                        ; $6f0f: $96
	ld   a, c                                        ; $6f10: $79
	jp   z, $898a                                    ; $6f11: $ca $8a $89

	ld   a, b                                        ; $6f14: $78
	sbc  b                                           ; $6f15: $98
	call nz, $3b89                                   ; $6f16: $c4 $89 $3b
	adc  b                                           ; $6f19: $88
	xor  b                                           ; $6f1a: $a8
	sbc  c                                           ; $6f1b: $99
	sbc  b                                           ; $6f1c: $98
	xor  b                                           ; $6f1d: $a8
	cp   b                                           ; $6f1e: $b8
	ld   e, h                                        ; $6f1f: $5c
	ld   h, l                                        ; $6f20: $65
	and  [hl]                                        ; $6f21: $a6
	ld   l, c                                        ; $6f22: $69
	ld   d, a                                        ; $6f23: $57
	jp   nz, $3ebb                                   ; $6f24: $c2 $bb $3e

	ld   h, a                                        ; $6f27: $67
	cp   d                                           ; $6f28: $ba
	ld   e, d                                        ; $6f29: $5a
	or   d                                           ; $6f2a: $b2
	ldh  [c], a                                      ; $6f2b: $e2
	ld   a, l                                        ; $6f2c: $7d
	ld   a, [de]                                     ; $6f2d: $1a
	add  h                                           ; $6f2e: $84
	ld   l, c                                        ; $6f2f: $69
	ld   h, [hl]                                     ; $6f30: $66
	jp   nc, $2aac                                   ; $6f31: $d2 $ac $2a

	or   h                                           ; $6f34: $b4
	cp   e                                           ; $6f35: $bb
	add  hl, sp                                      ; $6f36: $39
	add  $5a                                         ; $6f37: $c6 $5a
	and  a                                           ; $6f39: $a7
	halt                                             ; $6f3a: $76
	sub  a                                           ; $6f3b: $97
	ld   c, c                                        ; $6f3c: $49
	ld   h, [hl]                                     ; $6f3d: $66
	and  [hl]                                        ; $6f3e: $a6
	ld   l, d                                        ; $6f3f: $6a
	halt                                             ; $6f40: $76
	xor  c                                           ; $6f41: $a9
	ld   e, e                                        ; $6f42: $5b
	and  [hl]                                        ; $6f43: $a6
	sub  [hl]                                        ; $6f44: $96
	adc  d                                           ; $6f45: $8a
	halt                                             ; $6f46: $76
	sbc  c                                           ; $6f47: $99
	ld   l, c                                        ; $6f48: $69
	ld   l, b                                        ; $6f49: $68
	sub  a                                           ; $6f4a: $97
	ld   c, d                                        ; $6f4b: $4a
	sub  h                                           ; $6f4c: $94
	and  [hl]                                        ; $6f4d: $a6
	ld   l, d                                        ; $6f4e: $6a
	ld   l, b                                        ; $6f4f: $68
	sbc  b                                           ; $6f50: $98
	ld   l, d                                        ; $6f51: $6a
	sub  l                                           ; $6f52: $95
	rst  ToBoot                                         ; $6f53: $c7
	ld   l, e                                        ; $6f54: $6b
	ld   d, a                                        ; $6f55: $57
	sub  $6b                                         ; $6f56: $d6 $6b
	ld   [hl], a                                     ; $6f58: $77
	sub  l                                           ; $6f59: $95
	ld   l, d                                        ; $6f5a: $6a
	ld   d, [hl]                                     ; $6f5b: $56
	add  $6b                                         ; $6f5c: $c6 $6b
	ld   h, a                                        ; $6f5e: $67
	and  a                                           ; $6f5f: $a7
	ld   a, d                                        ; $6f60: $7a
	ld   [hl], l                                     ; $6f61: $75
	xor  c                                           ; $6f62: $a9
	ld   a, c                                        ; $6f63: $79
	sbc  c                                           ; $6f64: $99
	adc  c                                           ; $6f65: $89
	adc  b                                           ; $6f66: $88
	sub  a                                           ; $6f67: $97
	adc  b                                           ; $6f68: $88
	sbc  c                                           ; $6f69: $99
	sbc  d                                           ; $6f6a: $9a
	adc  b                                           ; $6f6b: $88
	and  [hl]                                        ; $6f6c: $a6
	adc  b                                           ; $6f6d: $88
	ld   l, b                                        ; $6f6e: $68
	ld   l, b                                        ; $6f6f: $68
	halt                                             ; $6f70: $76
	sub  [hl]                                        ; $6f71: $96
	sub  a                                           ; $6f72: $97
	ld   e, b                                        ; $6f73: $58
	ld   a, b                                        ; $6f74: $78
	ld   e, c                                        ; $6f75: $59
	sub  [hl]                                        ; $6f76: $96
	and  a                                           ; $6f77: $a7
	adc  e                                           ; $6f78: $8b
	ld   a, c                                        ; $6f79: $79
	jp   z, $abab                                    ; $6f7a: $ca $ab $ab

	xor  c                                           ; $6f7d: $a9
	sbc  d                                           ; $6f7e: $9a
	sbc  c                                           ; $6f7f: $99
	sub  a                                           ; $6f80: $97
	ld   h, a                                        ; $6f81: $67
	ld   h, h                                        ; $6f82: $64
	ld   d, l                                        ; $6f83: $55
	inc  sp                                          ; $6f84: $33
	ld   [hl+], a                                    ; $6f85: $22
	ld   [hl-], a                                    ; $6f86: $32
	ld   b, e                                        ; $6f87: $43
	ld   d, [hl]                                     ; $6f88: $56
	ld   c, c                                        ; $6f89: $49
	xor  c                                           ; $6f8a: $a9
	sbc  $ff                                         ; $6f8b: $de $ff
	rst  $38                                         ; $6f8d: $ff
	rst  $38                                         ; $6f8e: $ff
	rst  $38                                         ; $6f8f: $ff
	db   $fc                                         ; $6f90: $fc
	cp   b                                           ; $6f91: $b8
	ld   h, d                                        ; $6f92: $62
	ld   de, $1111                                   ; $6f93: $11 $11 $11
	ld   de, $2411                                   ; $6f96: $11 $11 $24
	add  hl, sp                                      ; $6f99: $39
	xor  h                                           ; $6f9a: $ac
	rst  $38                                         ; $6f9b: $ff
	rst  $38                                         ; $6f9c: $ff
	rst  $38                                         ; $6f9d: $ff
	rst  $38                                         ; $6f9e: $ff
	rst  $38                                         ; $6f9f: $ff
	db   $fd                                         ; $6fa0: $fd
	or   a                                           ; $6fa1: $b7
	ld   [hl-], a                                    ; $6fa2: $32
	ld   de, $1111                                   ; $6fa3: $11 $11 $11
	ld   de, $1411                                   ; $6fa6: $11 $11 $14
	ld   b, [hl]                                     ; $6fa9: $46
	xor  e                                           ; $6faa: $ab
	rst  $28                                         ; $6fab: $ef
	rst  $38                                         ; $6fac: $ff
	rst  $38                                         ; $6fad: $ff
	rst  $38                                         ; $6fae: $ff
	rst  $38                                         ; $6faf: $ff
	rst  $38                                         ; $6fb0: $ff
	cp   c                                           ; $6fb1: $b9
	ld   d, d                                        ; $6fb2: $52
	ld   de, $1111                                   ; $6fb3: $11 $11 $11
	ld   de, $1113                                   ; $6fb6: $11 $13 $11
	ld   b, [hl]                                     ; $6fb9: $46
	xor  e                                           ; $6fba: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fbb: $cf
	rst  $38                                         ; $6fbc: $ff
	rst  $38                                         ; $6fbd: $ff
	rst  $38                                         ; $6fbe: $ff
	rst  $38                                         ; $6fbf: $ff
	rst  $38                                         ; $6fc0: $ff
	ret                                              ; $6fc1: $c9


	ld   b, c                                        ; $6fc2: $41
	ld   de, $1111                                   ; $6fc3: $11 $11 $11
	ld   de, $1113                                   ; $6fc6: $11 $13 $11
	ld   d, a                                        ; $6fc9: $57
	xor  [hl]                                        ; $6fca: $ae
	rst  $28                                         ; $6fcb: $ef
	rst  $38                                         ; $6fcc: $ff
	rst  $38                                         ; $6fcd: $ff
	rst  $38                                         ; $6fce: $ff
	rst  $38                                         ; $6fcf: $ff
	rst  $38                                         ; $6fd0: $ff
	or   a                                           ; $6fd1: $b7
	ld   hl, $1111                                   ; $6fd2: $21 $11 $11
	ld   de, $1211                                   ; $6fd5: $11 $11 $12
	ld   de, $de7b                                   ; $6fd8: $11 $7b $de
	rst  $38                                         ; $6fdb: $ff
	rst  $38                                         ; $6fdc: $ff
	rst  $38                                         ; $6fdd: $ff
	rst  $38                                         ; $6fde: $ff
	rst  $38                                         ; $6fdf: $ff
	db   $fc                                         ; $6fe0: $fc
	sub  e                                           ; $6fe1: $93
	ld   de, $1111                                   ; $6fe2: $11 $11 $11
	ld   de, $2111                                   ; $6fe5: $11 $11 $21
	rla                                              ; $6fe8: $17
	cp   a                                           ; $6fe9: $bf
	rst  $38                                         ; $6fea: $ff
	rst  $38                                         ; $6feb: $ff
	rst  $38                                         ; $6fec: $ff
	rst  $38                                         ; $6fed: $ff
	rst  $38                                         ; $6fee: $ff
	rst  $38                                         ; $6fef: $ff
	and  a                                           ; $6ff0: $a7
	ld   sp, $1111                                   ; $6ff1: $31 $11 $11
	ld   de, $1211                                   ; $6ff4: $11 $11 $12
	ld   [de], a                                     ; $6ff7: $12
	adc  h                                           ; $6ff8: $8c
	rst  $38                                         ; $6ff9: $ff
	rst  $38                                         ; $6ffa: $ff
	rst  $38                                         ; $6ffb: $ff
	rst  $38                                         ; $6ffc: $ff
	rst  $38                                         ; $6ffd: $ff
	rst  $38                                         ; $6ffe: $ff
	ret  c                                           ; $6fff: $d8

	ld   d, c                                        ; $7000: $51
	ld   de, $1111                                   ; $7001: $11 $11 $11
	ld   de, $2111                                   ; $7004: $11 $11 $21
	ld   e, c                                        ; $7007: $59
	rst  JumpTable                                         ; $7008: $df
	rst  $38                                         ; $7009: $ff
	rst  $38                                         ; $700a: $ff
	rst  $38                                         ; $700b: $ff
	rst  $38                                         ; $700c: $ff

jr_0a7_700d:
	rst  $38                                         ; $700d: $ff
	db   $fc                                         ; $700e: $fc
	ld   h, h                                        ; $700f: $64
	ld   de, $1111                                   ; $7010: $11 $11 $11
	ld   de, $2111                                   ; $7013: $11 $11 $21
	ld   d, $af                                      ; $7016: $16 $af
	rst  $38                                         ; $7018: $ff
	rst  $38                                         ; $7019: $ff
	rst  $38                                         ; $701a: $ff
	rst  $38                                         ; $701b: $ff
	rst  $38                                         ; $701c: $ff
	rst  $38                                         ; $701d: $ff
	sub  l                                           ; $701e: $95
	ld   b, c                                        ; $701f: $41
	ld   de, $1111                                   ; $7020: $11 $11 $11
	ld   de, $1313                                   ; $7023: $11 $13 $13
	adc  e                                           ; $7026: $8b
	rst  $38                                         ; $7027: $ff
	rst  $38                                         ; $7028: $ff
	rst  $38                                         ; $7029: $ff
	rst  $38                                         ; $702a: $ff
	rst  $38                                         ; $702b: $ff
	rst  $38                                         ; $702c: $ff
	rst  $10                                         ; $702d: $d7
	ld   d, c                                        ; $702e: $51
	ld   de, $1111                                   ; $702f: $11 $11 $11
	ld   de, $3111                                   ; $7032: $11 $11 $31
	ld   c, d                                        ; $7035: $4a
	rst  $28                                         ; $7036: $ef
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	rst  $38                                         ; $7039: $ff
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	ei                                               ; $703c: $fb
	ld   d, h                                        ; $703d: $54
	ld   de, $1111                                   ; $703e: $11 $11 $11
	ld   de, $4211                                   ; $7041: $11 $11 $42
	rla                                              ; $7044: $17
	call c, $ffdf                                    ; $7045: $dc $df $ff
	rst  $38                                         ; $7048: $ff
	rst  $38                                         ; $7049: $ff
	rst  $38                                         ; $704a: $ff
	cp   $85                                         ; $704b: $fe $85
	ld   b, c                                        ; $704d: $41
	ld   de, $1111                                   ; $704e: $11 $11 $11
	ld   de, $1215                                   ; $7051: $11 $15 $12
	xor  l                                           ; $7054: $ad
	xor  a                                           ; $7055: $af
	rst  $38                                         ; $7056: $ff
	rst  $38                                         ; $7057: $ff
	rst  $38                                         ; $7058: $ff
	rst  $38                                         ; $7059: $ff
	rst  $38                                         ; $705a: $ff
	and  a                                           ; $705b: $a7
	ld   [hl], e                                     ; $705c: $73
	ld   de, $1111                                   ; $705d: $11 $11 $11
	ld   de, $3112                                   ; $7060: $11 $12 $31
	ld   e, c                                        ; $7063: $59
	xor  e                                           ; $7064: $ab
	rst  $28                                         ; $7065: $ef
	rst  $38                                         ; $7066: $ff
	rst  $38                                         ; $7067: $ff
	rst  $38                                         ; $7068: $ff
	rst  $38                                         ; $7069: $ff
	ei                                               ; $706a: $fb
	ld   [hl], a                                     ; $706b: $77
	ld   sp, $1111                                   ; $706c: $31 $11 $11
	ld   de, $3111                                   ; $706f: $11 $11 $31
	jr   c, jr_0a7_700d                              ; $7072: $38 $99

	rst  $28                                         ; $7074: $ef
	rst  $28                                         ; $7075: $ef
	rst  $38                                         ; $7076: $ff
	rst  $38                                         ; $7077: $ff
	rst  $38                                         ; $7078: $ff
	ei                                               ; $7079: $fb
	sbc  d                                           ; $707a: $9a
	ld   b, c                                        ; $707b: $41
	inc  hl                                          ; $707c: $23
	ld   de, $1111                                   ; $707d: $11 $11 $11
	ld   [hl+], a                                    ; $7080: $22
	inc  h                                           ; $7081: $24
	ld   l, d                                        ; $7082: $6a
	xor  e                                           ; $7083: $ab
	rst  $28                                         ; $7084: $ef
	rst  $38                                         ; $7085: $ff
	rst  $38                                         ; $7086: $ff
	rst  $38                                         ; $7087: $ff
	rst  $38                                         ; $7088: $ff
	cp   e                                           ; $7089: $bb
	add  h                                           ; $708a: $84
	ld   b, c                                        ; $708b: $41
	ld   de, $1111                                   ; $708c: $11 $11 $11
	inc  de                                          ; $708f: $13
	ld   [hl+], a                                    ; $7090: $22
	ld   d, a                                        ; $7091: $57
	adc  d                                           ; $7092: $8a
	cp   l                                           ; $7093: $bd
	rst  $38                                         ; $7094: $ff
	rst  $38                                         ; $7095: $ff
	rst  $38                                         ; $7096: $ff
	rst  $38                                         ; $7097: $ff
	db   $db                                         ; $7098: $db
	and  a                                           ; $7099: $a7
	ld   [hl], $31                                   ; $709a: $36 $31
	ld   de, $1111                                   ; $709c: $11 $11 $11
	inc  d                                           ; $709f: $14
	ld   b, l                                        ; $70a0: $45
	adc  c                                           ; $70a1: $89
	xor  h                                           ; $70a2: $ac
	sbc  $ff                                         ; $70a3: $de $ff
	rst  $38                                         ; $70a5: $ff
	db   $fd                                         ; $70a6: $fd
	db   $fd                                         ; $70a7: $fd
	sbc  c                                           ; $70a8: $99
	ld   [hl], h                                     ; $70a9: $74
	ld   d, h                                        ; $70aa: $54
	ld   hl, $1133                                   ; $70ab: $21 $33 $11
	ld   b, l                                        ; $70ae: $45
	inc  [hl]                                        ; $70af: $34
	ld   a, b                                        ; $70b0: $78
	adc  c                                           ; $70b1: $89
	cp   l                                           ; $70b2: $bd
	db   $dd                                         ; $70b3: $dd
	rst  JumpTable                                         ; $70b4: $df
	call c, $abdc                                    ; $70b5: $dc $dc $ab
	sub  e                                           ; $70b8: $93
	adc  b                                           ; $70b9: $88
	inc  [hl]                                        ; $70ba: $34
	ld   d, e                                        ; $70bb: $53
	ld   d, l                                        ; $70bc: $55
	dec  d                                           ; $70bd: $15
	ld   [hl], h                                     ; $70be: $74
	ld   h, a                                        ; $70bf: $67
	ld   h, a                                        ; $70c0: $67
	xor  c                                           ; $70c1: $a9
	ld   l, e                                        ; $70c2: $6b
	jp   z, $caba                                    ; $70c3: $ca $ba $ca

	sbc  d                                           ; $70c6: $9a
	sbc  d                                           ; $70c7: $9a
	sub  a                                           ; $70c8: $97
	add  a                                           ; $70c9: $87
	sub  [hl]                                        ; $70ca: $96
	add  a                                           ; $70cb: $87
	ld   b, a                                        ; $70cc: $47
	ld   [hl], a                                     ; $70cd: $77
	ld   d, [hl]                                     ; $70ce: $56
	ld   h, a                                        ; $70cf: $67
	ld   h, [hl]                                     ; $70d0: $66
	add  a                                           ; $70d1: $87
	add  [hl]                                        ; $70d2: $86
	adc  d                                           ; $70d3: $8a
	sbc  b                                           ; $70d4: $98
	sbc  d                                           ; $70d5: $9a
	xor  c                                           ; $70d6: $a9
	xor  c                                           ; $70d7: $a9
	xor  d                                           ; $70d8: $aa
	sbc  c                                           ; $70d9: $99
	xor  c                                           ; $70da: $a9
	add  a                                           ; $70db: $87
	sub  a                                           ; $70dc: $97
	halt                                             ; $70dd: $76
	ld   h, [hl]                                     ; $70de: $66
	ld   h, a                                        ; $70df: $67
	ld   h, [hl]                                     ; $70e0: $66
	ld   [hl], a                                     ; $70e1: $77
	ld   h, a                                        ; $70e2: $67
	ld   a, c                                        ; $70e3: $79
	adc  b                                           ; $70e4: $88
	ld   a, c                                        ; $70e5: $79
	xor  b                                           ; $70e6: $a8
	sbc  c                                           ; $70e7: $99
	xor  c                                           ; $70e8: $a9
	xor  d                                           ; $70e9: $aa
	adc  e                                           ; $70ea: $8b
	sbc  b                                           ; $70eb: $98
	and  a                                           ; $70ec: $a7
	sbc  b                                           ; $70ed: $98
	ld   [hl], a                                     ; $70ee: $77
	halt                                             ; $70ef: $76
	ld   h, l                                        ; $70f0: $65
	ld   [hl], a                                     ; $70f1: $77
	ld   l, b                                        ; $70f2: $68
	ld   a, b                                        ; $70f3: $78
	adc  b                                           ; $70f4: $88
	ld   a, b                                        ; $70f5: $78
	sbc  b                                           ; $70f6: $98
	adc  c                                           ; $70f7: $89
	xor  b                                           ; $70f8: $a8
	sbc  c                                           ; $70f9: $99
	sbc  b                                           ; $70fa: $98
	cp   b                                           ; $70fb: $b8
	adc  c                                           ; $70fc: $89
	ld   [hl], a                                     ; $70fd: $77
	adc  c                                           ; $70fe: $89
	ld   l, b                                        ; $70ff: $68
	add  [hl]                                        ; $7100: $86
	add  [hl]                                        ; $7101: $86
	adc  c                                           ; $7102: $89
	ld   [hl], a                                     ; $7103: $77
	adc  c                                           ; $7104: $89
	adc  b                                           ; $7105: $88
	adc  b                                           ; $7106: $88
	xor  b                                           ; $7107: $a8
	xor  b                                           ; $7108: $a8
	adc  b                                           ; $7109: $88
	ld   a, b                                        ; $710a: $78
	adc  c                                           ; $710b: $89
	ld   a, b                                        ; $710c: $78
	sbc  b                                           ; $710d: $98
	halt                                             ; $710e: $76
	add  a                                           ; $710f: $87
	add  a                                           ; $7110: $87
	ld   a, c                                        ; $7111: $79
	adc  b                                           ; $7112: $88
	ld   a, c                                        ; $7113: $79
	adc  b                                           ; $7114: $88
	adc  b                                           ; $7115: $88
	sbc  c                                           ; $7116: $99
	sbc  c                                           ; $7117: $99
	adc  b                                           ; $7118: $88
	sbc  b                                           ; $7119: $98
	ld   a, c                                        ; $711a: $79
	sbc  b                                           ; $711b: $98
	adc  b                                           ; $711c: $88
	ld   [hl], a                                     ; $711d: $77
	ld   [hl], a                                     ; $711e: $77
	add  a                                           ; $711f: $87
	ld   a, b                                        ; $7120: $78
	ld   [hl], a                                     ; $7121: $77
	ld   a, b                                        ; $7122: $78
	adc  b                                           ; $7123: $88
	ld   a, b                                        ; $7124: $78
	adc  b                                           ; $7125: $88
	adc  b                                           ; $7126: $88
	sbc  b                                           ; $7127: $98
	adc  c                                           ; $7128: $89
	adc  b                                           ; $7129: $88
	sbc  b                                           ; $712a: $98
	adc  b                                           ; $712b: $88
	ld   a, b                                        ; $712c: $78
	add  a                                           ; $712d: $87
	ld   [hl], a                                     ; $712e: $77
	ld   [hl], a                                     ; $712f: $77
	add  a                                           ; $7130: $87
	ld   a, c                                        ; $7131: $79
	adc  b                                           ; $7132: $88
	adc  b                                           ; $7133: $88
	adc  b                                           ; $7134: $88
	adc  c                                           ; $7135: $89
	sbc  b                                           ; $7136: $98
	adc  c                                           ; $7137: $89
	sbc  b                                           ; $7138: $98
	adc  b                                           ; $7139: $88
	adc  b                                           ; $713a: $88
	add  a                                           ; $713b: $87
	add  a                                           ; $713c: $87
	ld   [hl], a                                     ; $713d: $77
	ld   [hl], a                                     ; $713e: $77
	ld   a, b                                        ; $713f: $78
	add  a                                           ; $7140: $87
	adc  c                                           ; $7141: $89
	adc  c                                           ; $7142: $89
	adc  b                                           ; $7143: $88
	sbc  c                                           ; $7144: $99
	sbc  b                                           ; $7145: $98
	adc  c                                           ; $7146: $89
	sbc  b                                           ; $7147: $98
	adc  c                                           ; $7148: $89
	adc  c                                           ; $7149: $89
	ld   a, b                                        ; $714a: $78
	adc  b                                           ; $714b: $88
	ld   [hl], a                                     ; $714c: $77
	adc  b                                           ; $714d: $88
	add  a                                           ; $714e: $87
	adc  b                                           ; $714f: $88
	ld   a, b                                        ; $7150: $78
	adc  b                                           ; $7151: $88
	sbc  c                                           ; $7152: $99
	adc  b                                           ; $7153: $88
	adc  b                                           ; $7154: $88
	sbc  b                                           ; $7155: $98
	sbc  b                                           ; $7156: $98
	adc  b                                           ; $7157: $88
	adc  b                                           ; $7158: $88
	ld   a, c                                        ; $7159: $79
	add  a                                           ; $715a: $87
	add  a                                           ; $715b: $87
	add  a                                           ; $715c: $87
	ld   a, b                                        ; $715d: $78
	ld   [hl], a                                     ; $715e: $77
	ld   a, b                                        ; $715f: $78
	adc  b                                           ; $7160: $88
	adc  b                                           ; $7161: $88
	adc  c                                           ; $7162: $89
	adc  b                                           ; $7163: $88
	adc  b                                           ; $7164: $88
	adc  b                                           ; $7165: $88
	sbc  b                                           ; $7166: $98
	adc  b                                           ; $7167: $88
	adc  b                                           ; $7168: $88
	adc  b                                           ; $7169: $88
	adc  b                                           ; $716a: $88
	add  a                                           ; $716b: $87
	ld   a, b                                        ; $716c: $78
	add  a                                           ; $716d: $87
	adc  b                                           ; $716e: $88
	adc  b                                           ; $716f: $88
	adc  b                                           ; $7170: $88
	sbc  b                                           ; $7171: $98
	adc  c                                           ; $7172: $89
	adc  c                                           ; $7173: $89
	sbc  b                                           ; $7174: $98
	adc  c                                           ; $7175: $89
	sbc  b                                           ; $7176: $98
	adc  b                                           ; $7177: $88
	adc  b                                           ; $7178: $88
	add  a                                           ; $7179: $87
	adc  b                                           ; $717a: $88
	adc  b                                           ; $717b: $88
	ld   a, b                                        ; $717c: $78
	adc  b                                           ; $717d: $88
	adc  b                                           ; $717e: $88
	adc  b                                           ; $717f: $88
	adc  b                                           ; $7180: $88
	adc  b                                           ; $7181: $88
	adc  b                                           ; $7182: $88
	sbc  c                                           ; $7183: $99
	adc  c                                           ; $7184: $89
	sbc  b                                           ; $7185: $98
	adc  b                                           ; $7186: $88
	adc  b                                           ; $7187: $88
	adc  b                                           ; $7188: $88
	adc  b                                           ; $7189: $88
	adc  b                                           ; $718a: $88
	add  a                                           ; $718b: $87
	adc  b                                           ; $718c: $88
	ld   a, b                                        ; $718d: $78
	adc  b                                           ; $718e: $88
	adc  b                                           ; $718f: $88
	adc  b                                           ; $7190: $88
	adc  c                                           ; $7191: $89
	sbc  b                                           ; $7192: $98
	adc  c                                           ; $7193: $89
	adc  b                                           ; $7194: $88
	sbc  b                                           ; $7195: $98
	adc  c                                           ; $7196: $89
	adc  b                                           ; $7197: $88
	ld   a, b                                        ; $7198: $78
	adc  b                                           ; $7199: $88
	ld   a, b                                        ; $719a: $78
	add  a                                           ; $719b: $87
	add  a                                           ; $719c: $87
	adc  b                                           ; $719d: $88
	adc  b                                           ; $719e: $88
	adc  c                                           ; $719f: $89
	adc  b                                           ; $71a0: $88
	adc  c                                           ; $71a1: $89
	sbc  c                                           ; $71a2: $99
	adc  b                                           ; $71a3: $88
	sbc  b                                           ; $71a4: $98
	adc  b                                           ; $71a5: $88
	adc  b                                           ; $71a6: $88
	adc  b                                           ; $71a7: $88
	adc  b                                           ; $71a8: $88
	ld   a, b                                        ; $71a9: $78
	ld   a, b                                        ; $71aa: $78
	add  a                                           ; $71ab: $87
	ld   a, b                                        ; $71ac: $78
	sbc  b                                           ; $71ad: $98
	ld   a, b                                        ; $71ae: $78
	sbc  b                                           ; $71af: $98
	adc  b                                           ; $71b0: $88
	adc  c                                           ; $71b1: $89
	adc  c                                           ; $71b2: $89
	adc  b                                           ; $71b3: $88
	sbc  b                                           ; $71b4: $98
	adc  b                                           ; $71b5: $88
	adc  b                                           ; $71b6: $88
	add  a                                           ; $71b7: $87
	adc  b                                           ; $71b8: $88
	add  a                                           ; $71b9: $87
	adc  b                                           ; $71ba: $88
	ld   [hl], a                                     ; $71bb: $77
	add  a                                           ; $71bc: $87
	adc  b                                           ; $71bd: $88
	adc  b                                           ; $71be: $88
	adc  b                                           ; $71bf: $88
	sbc  b                                           ; $71c0: $98
	sbc  c                                           ; $71c1: $99
	adc  b                                           ; $71c2: $88
	adc  b                                           ; $71c3: $88
	adc  b                                           ; $71c4: $88
	adc  b                                           ; $71c5: $88
	adc  b                                           ; $71c6: $88
	ld   a, b                                        ; $71c7: $78
	adc  b                                           ; $71c8: $88
	ld   a, b                                        ; $71c9: $78
	adc  b                                           ; $71ca: $88
	adc  b                                           ; $71cb: $88
	add  a                                           ; $71cc: $87
	adc  b                                           ; $71cd: $88
	adc  b                                           ; $71ce: $88
	sbc  b                                           ; $71cf: $98
	adc  b                                           ; $71d0: $88
	adc  c                                           ; $71d1: $89
	adc  b                                           ; $71d2: $88
	adc  c                                           ; $71d3: $89
	add  a                                           ; $71d4: $87
	adc  c                                           ; $71d5: $89
	adc  b                                           ; $71d6: $88
	add  a                                           ; $71d7: $87
	adc  b                                           ; $71d8: $88
	ld   a, b                                        ; $71d9: $78
	ld   a, b                                        ; $71da: $78
	sbc  b                                           ; $71db: $98
	adc  b                                           ; $71dc: $88
	adc  b                                           ; $71dd: $88
	adc  b                                           ; $71de: $88
	adc  c                                           ; $71df: $89
	sbc  b                                           ; $71e0: $98
	adc  b                                           ; $71e1: $88
	sbc  b                                           ; $71e2: $98
	adc  b                                           ; $71e3: $88
	add  a                                           ; $71e4: $87
	cp   d                                           ; $71e5: $ba
	ld   a, c                                        ; $71e6: $79
	adc  b                                           ; $71e7: $88
	add  a                                           ; $71e8: $87
	adc  b                                           ; $71e9: $88
	sbc  b                                           ; $71ea: $98
	add  a                                           ; $71eb: $87
	sbc  b                                           ; $71ec: $98
	adc  b                                           ; $71ed: $88
	adc  b                                           ; $71ee: $88
	sbc  b                                           ; $71ef: $98
	sbc  c                                           ; $71f0: $99
	ld   a, b                                        ; $71f1: $78
	sbc  b                                           ; $71f2: $98
	adc  b                                           ; $71f3: $88
	adc  b                                           ; $71f4: $88
	adc  b                                           ; $71f5: $88
	adc  b                                           ; $71f6: $88
	sbc  b                                           ; $71f7: $98
	adc  b                                           ; $71f8: $88
	adc  c                                           ; $71f9: $89
	adc  b                                           ; $71fa: $88
	adc  b                                           ; $71fb: $88
	adc  c                                           ; $71fc: $89
	add  a                                           ; $71fd: $87
	adc  b                                           ; $71fe: $88
	adc  b                                           ; $71ff: $88
	adc  b                                           ; $7200: $88
	sbc  c                                           ; $7201: $99
	sbc  b                                           ; $7202: $98
	adc  b                                           ; $7203: $88
	ld   a, c                                        ; $7204: $79
	adc  b                                           ; $7205: $88
	adc  c                                           ; $7206: $89
	adc  b                                           ; $7207: $88
	ld   a, b                                        ; $7208: $78
	sbc  b                                           ; $7209: $98
	sbc  b                                           ; $720a: $98
	adc  b                                           ; $720b: $88
	adc  b                                           ; $720c: $88
	adc  b                                           ; $720d: $88
	adc  c                                           ; $720e: $89
	adc  b                                           ; $720f: $88
	adc  b                                           ; $7210: $88
	adc  b                                           ; $7211: $88
	adc  b                                           ; $7212: $88
	add  a                                           ; $7213: $87
	adc  b                                           ; $7214: $88
	adc  b                                           ; $7215: $88
	adc  b                                           ; $7216: $88
	adc  b                                           ; $7217: $88
	adc  c                                           ; $7218: $89
	adc  c                                           ; $7219: $89
	add  a                                           ; $721a: $87
	adc  b                                           ; $721b: $88
	sbc  b                                           ; $721c: $98
	adc  b                                           ; $721d: $88
	sbc  b                                           ; $721e: $98
	adc  c                                           ; $721f: $89
	adc  b                                           ; $7220: $88
	adc  b                                           ; $7221: $88
	adc  b                                           ; $7222: $88
	ld   a, b                                        ; $7223: $78
	ld   a, d                                        ; $7224: $7a
	sub  a                                           ; $7225: $97
	adc  b                                           ; $7226: $88
	adc  b                                           ; $7227: $88
	ld   a, b                                        ; $7228: $78
	adc  b                                           ; $7229: $88
	adc  b                                           ; $722a: $88
	adc  b                                           ; $722b: $88
	adc  b                                           ; $722c: $88
	add  a                                           ; $722d: $87
	sbc  c                                           ; $722e: $99
	adc  b                                           ; $722f: $88
	adc  b                                           ; $7230: $88
	sbc  c                                           ; $7231: $99
	adc  b                                           ; $7232: $88
	adc  b                                           ; $7233: $88
	sbc  b                                           ; $7234: $98
	adc  b                                           ; $7235: $88
	ld   a, b                                        ; $7236: $78
	add  a                                           ; $7237: $87
	adc  b                                           ; $7238: $88
	adc  b                                           ; $7239: $88
	adc  b                                           ; $723a: $88
	adc  b                                           ; $723b: $88
	adc  b                                           ; $723c: $88
	adc  b                                           ; $723d: $88
	adc  c                                           ; $723e: $89
	adc  c                                           ; $723f: $89
	add  a                                           ; $7240: $87
	adc  b                                           ; $7241: $88
	adc  b                                           ; $7242: $88
	adc  b                                           ; $7243: $88
	sbc  b                                           ; $7244: $98
	add  a                                           ; $7245: $87
	adc  b                                           ; $7246: $88
	adc  b                                           ; $7247: $88
	adc  b                                           ; $7248: $88
	adc  b                                           ; $7249: $88
	adc  c                                           ; $724a: $89
	adc  b                                           ; $724b: $88
	sub  a                                           ; $724c: $97
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	adc  b                                           ; $724f: $88
	adc  b                                           ; $7250: $88
	ld   a, c                                        ; $7251: $79
	adc  b                                           ; $7252: $88
	adc  b                                           ; $7253: $88
	adc  b                                           ; $7254: $88
	add  a                                           ; $7255: $87
	adc  b                                           ; $7256: $88
	adc  b                                           ; $7257: $88
	adc  b                                           ; $7258: $88
	adc  b                                           ; $7259: $88
	adc  b                                           ; $725a: $88
	adc  b                                           ; $725b: $88
	sub  a                                           ; $725c: $97
	adc  b                                           ; $725d: $88
	adc  b                                           ; $725e: $88
	adc  b                                           ; $725f: $88
	sbc  b                                           ; $7260: $98
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	adc  b                                           ; $7263: $88
	ld   a, b                                        ; $7264: $78
	sbc  b                                           ; $7265: $98
	add  a                                           ; $7266: $87
	adc  c                                           ; $7267: $89
	adc  b                                           ; $7268: $88
	adc  b                                           ; $7269: $88
	adc  b                                           ; $726a: $88
	adc  b                                           ; $726b: $88
	adc  b                                           ; $726c: $88
	adc  b                                           ; $726d: $88
	adc  b                                           ; $726e: $88
	adc  b                                           ; $726f: $88
	adc  b                                           ; $7270: $88
	sbc  b                                           ; $7271: $98
	ld   a, b                                        ; $7272: $78
	add  a                                           ; $7273: $87
	adc  b                                           ; $7274: $88
	adc  b                                           ; $7275: $88
	adc  b                                           ; $7276: $88
	ld   a, b                                        ; $7277: $78
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
	add  a                                           ; $7284: $87
	adc  b                                           ; $7285: $88
	sub  a                                           ; $7286: $97
	adc  c                                           ; $7287: $89
	adc  b                                           ; $7288: $88
	adc  b                                           ; $7289: $88
	ld   a, b                                        ; $728a: $78
	adc  c                                           ; $728b: $89
	adc  b                                           ; $728c: $88
	adc  b                                           ; $728d: $88
	adc  b                                           ; $728e: $88
	add  a                                           ; $728f: $87
	adc  c                                           ; $7290: $89
	adc  b                                           ; $7291: $88
	adc  b                                           ; $7292: $88
	add  a                                           ; $7293: $87
	ld   a, b                                        ; $7294: $78
	ld   a, b                                        ; $7295: $78
	sub  a                                           ; $7296: $97
	adc  b                                           ; $7297: $88
	adc  b                                           ; $7298: $88
	adc  b                                           ; $7299: $88
	sub  a                                           ; $729a: $97
	adc  b                                           ; $729b: $88
	adc  b                                           ; $729c: $88
	ld   a, b                                        ; $729d: $78
	adc  b                                           ; $729e: $88
	ld   a, b                                        ; $729f: $78
	adc  b                                           ; $72a0: $88
	add  a                                           ; $72a1: $87
	adc  b                                           ; $72a2: $88
	add  a                                           ; $72a3: $87
	add  a                                           ; $72a4: $87
	adc  b                                           ; $72a5: $88
	adc  c                                           ; $72a6: $89
	adc  b                                           ; $72a7: $88
	add  a                                           ; $72a8: $87
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
	ld   [hl], a                                     ; $72b4: $77
	adc  b                                           ; $72b5: $88
	adc  b                                           ; $72b6: $88
	adc  c                                           ; $72b7: $89
	add  a                                           ; $72b8: $87
	ld   [hl], a                                     ; $72b9: $77
	adc  b                                           ; $72ba: $88
	ld   [hl], a                                     ; $72bb: $77
	adc  b                                           ; $72bc: $88
	add  a                                           ; $72bd: $87
	ld   a, b                                        ; $72be: $78
	adc  b                                           ; $72bf: $88
	sbc  b                                           ; $72c0: $98
	add  a                                           ; $72c1: $87
	adc  b                                           ; $72c2: $88
	halt                                             ; $72c3: $76
	adc  d                                           ; $72c4: $8a
	adc  b                                           ; $72c5: $88
	ld   [hl], a                                     ; $72c6: $77
	sub  a                                           ; $72c7: $97
	ld   a, b                                        ; $72c8: $78
	adc  c                                           ; $72c9: $89
	add  a                                           ; $72ca: $87
	ld   a, b                                        ; $72cb: $78
	add  a                                           ; $72cc: $87
	adc  b                                           ; $72cd: $88
	adc  c                                           ; $72ce: $89
	add  a                                           ; $72cf: $87
	add  a                                           ; $72d0: $87
	adc  b                                           ; $72d1: $88
	adc  b                                           ; $72d2: $88
	adc  b                                           ; $72d3: $88
	adc  b                                           ; $72d4: $88
	adc  b                                           ; $72d5: $88
	add  a                                           ; $72d6: $87
	adc  c                                           ; $72d7: $89
	add  a                                           ; $72d8: $87
	ld   a, b                                        ; $72d9: $78
	adc  c                                           ; $72da: $89
	ld   [hl], a                                     ; $72db: $77
	sbc  b                                           ; $72dc: $98
	ld   [hl], a                                     ; $72dd: $77
	adc  c                                           ; $72de: $89
	sbc  c                                           ; $72df: $99
	ld   [hl], a                                     ; $72e0: $77
	sbc  b                                           ; $72e1: $98
	sub  a                                           ; $72e2: $97
	adc  c                                           ; $72e3: $89
	adc  b                                           ; $72e4: $88
	ld   a, b                                        ; $72e5: $78
	ld   a, b                                        ; $72e6: $78
	sbc  b                                           ; $72e7: $98
	adc  b                                           ; $72e8: $88
	adc  b                                           ; $72e9: $88
	adc  b                                           ; $72ea: $88
	adc  c                                           ; $72eb: $89
	adc  b                                           ; $72ec: $88
	add  a                                           ; $72ed: $87
	adc  b                                           ; $72ee: $88
	adc  b                                           ; $72ef: $88
	add  a                                           ; $72f0: $87
	sbc  b                                           ; $72f1: $98
	adc  b                                           ; $72f2: $88
	add  a                                           ; $72f3: $87
	adc  c                                           ; $72f4: $89
	ld   a, b                                        ; $72f5: $78
	add  a                                           ; $72f6: $87
	sbc  c                                           ; $72f7: $99
	adc  c                                           ; $72f8: $89
	add  a                                           ; $72f9: $87
	adc  b                                           ; $72fa: $88
	adc  b                                           ; $72fb: $88
	adc  b                                           ; $72fc: $88
	adc  b                                           ; $72fd: $88
	sbc  b                                           ; $72fe: $98
	sbc  c                                           ; $72ff: $99
	add  a                                           ; $7300: $87
	adc  c                                           ; $7301: $89
	adc  b                                           ; $7302: $88
	adc  c                                           ; $7303: $89
	sbc  b                                           ; $7304: $98
	adc  b                                           ; $7305: $88
	adc  c                                           ; $7306: $89
	adc  b                                           ; $7307: $88
	sub  a                                           ; $7308: $97
	adc  c                                           ; $7309: $89
	sbc  b                                           ; $730a: $98
	adc  b                                           ; $730b: $88
	adc  b                                           ; $730c: $88
	adc  b                                           ; $730d: $88
	sbc  c                                           ; $730e: $99
	adc  c                                           ; $730f: $89
	adc  b                                           ; $7310: $88
	adc  b                                           ; $7311: $88
	adc  b                                           ; $7312: $88
	ld   a, b                                        ; $7313: $78
	add  a                                           ; $7314: $87
	add  a                                           ; $7315: $87
	ld   a, b                                        ; $7316: $78
	halt                                             ; $7317: $76
	ld   a, b                                        ; $7318: $78
	add  [hl]                                        ; $7319: $86
	ld   a, b                                        ; $731a: $78
	ld   l, b                                        ; $731b: $68
	ld   [hl], a                                     ; $731c: $77
	ld   [hl], a                                     ; $731d: $77
	ld   [hl], a                                     ; $731e: $77
	sbc  b                                           ; $731f: $98
	add  a                                           ; $7320: $87
	sbc  b                                           ; $7321: $98
	ld   a, b                                        ; $7322: $78
	ld   a, c                                        ; $7323: $79
	sbc  b                                           ; $7324: $98
	add  a                                           ; $7325: $87
	sbc  c                                           ; $7326: $99
	sbc  c                                           ; $7327: $99
	adc  c                                           ; $7328: $89
	ld   [hl], a                                     ; $7329: $77
	adc  b                                           ; $732a: $88
	sbc  c                                           ; $732b: $99
	sbc  c                                           ; $732c: $99
	sbc  b                                           ; $732d: $98
	adc  b                                           ; $732e: $88
	adc  b                                           ; $732f: $88
	xor  c                                           ; $7330: $a9
	adc  b                                           ; $7331: $88
	ld   a, b                                        ; $7332: $78
	adc  b                                           ; $7333: $88
	adc  b                                           ; $7334: $88
	sbc  b                                           ; $7335: $98
	sbc  c                                           ; $7336: $99
	adc  c                                           ; $7337: $89
	adc  b                                           ; $7338: $88
	sbc  b                                           ; $7339: $98
	sub  a                                           ; $733a: $97
	add  a                                           ; $733b: $87
	halt                                             ; $733c: $76
	ld   h, a                                        ; $733d: $67
	ld   h, [hl]                                     ; $733e: $66
	ld   [hl], a                                     ; $733f: $77
	ld   [hl], a                                     ; $7340: $77
	ld   a, b                                        ; $7341: $78
	ld   [hl], a                                     ; $7342: $77
	adc  c                                           ; $7343: $89
	sbc  b                                           ; $7344: $98
	adc  c                                           ; $7345: $89
	adc  b                                           ; $7346: $88
	adc  c                                           ; $7347: $89
	adc  b                                           ; $7348: $88
	halt                                             ; $7349: $76
	add  a                                           ; $734a: $87
	ld   [hl], a                                     ; $734b: $77
	ld   [hl], a                                     ; $734c: $77
	ld   [hl], a                                     ; $734d: $77
	ld   h, a                                        ; $734e: $67
	ld   h, [hl]                                     ; $734f: $66
	ld   [hl], a                                     ; $7350: $77
	ld   [hl], a                                     ; $7351: $77
	ld   [hl], a                                     ; $7352: $77
	adc  b                                           ; $7353: $88
	adc  c                                           ; $7354: $89
	xor  d                                           ; $7355: $aa
	xor  d                                           ; $7356: $aa
	sbc  d                                           ; $7357: $9a
	xor  d                                           ; $7358: $aa
	cp   d                                           ; $7359: $ba
	xor  d                                           ; $735a: $aa
	cp   d                                           ; $735b: $ba
	sbc  b                                           ; $735c: $98
	add  a                                           ; $735d: $87
	halt                                             ; $735e: $76
	ld   h, l                                        ; $735f: $65
	ld   d, l                                        ; $7360: $55
	ld   d, h                                        ; $7361: $54
	ld   d, l                                        ; $7362: $55
	ld   d, [hl]                                     ; $7363: $56
	ld   [hl], a                                     ; $7364: $77
	adc  d                                           ; $7365: $8a
	cp   e                                           ; $7366: $bb
	db   $dd                                         ; $7367: $dd
	xor  $dd                                         ; $7368: $ee $dd
	cp   h                                           ; $736a: $bc
	xor  c                                           ; $736b: $a9
	add  a                                           ; $736c: $87
	ld   h, h                                        ; $736d: $64
	ld   b, h                                        ; $736e: $44
	ld   [hl-], a                                    ; $736f: $32
	ld   hl, $3412                                   ; $7370: $21 $12 $34
	ld   d, a                                        ; $7373: $57
	sbc  d                                           ; $7374: $9a
	sbc  $ef                                         ; $7375: $de $ef
	rst  $38                                         ; $7377: $ff
	cp   $dd                                         ; $7378: $fe $dd
	jp   z, $6487                                    ; $737a: $ca $87 $64

	inc  hl                                          ; $737d: $23
	ld   b, d                                        ; $737e: $42
	ld   de, $1211                                   ; $737f: $11 $11 $12
	dec  [hl]                                        ; $7382: $35
	adc  d                                           ; $7383: $8a
	adc  $ef                                         ; $7384: $ce $ef
	rst  $38                                         ; $7386: $ff
	rst  $38                                         ; $7387: $ff
	db   $fd                                         ; $7388: $fd
	jp   z, Jump_0a7_5486                            ; $7389: $ca $86 $54

	ld   hl, $1122                                   ; $738c: $21 $22 $11
	ld   de, $3412                                   ; $738f: $11 $12 $34
	ld   a, d                                        ; $7392: $7a
	call $ffff                                       ; $7393: $cd $ff $ff
	rst  $38                                         ; $7396: $ff
	cp   $cc                                         ; $7397: $fe $cc
	sub  [hl]                                        ; $7399: $96
	ld   b, h                                        ; $739a: $44
	ld   sp, $2113                                   ; $739b: $31 $13 $21
	ld   de, $4412                                   ; $739e: $11 $12 $44
	ld   e, b                                        ; $73a1: $58
	cp   l                                           ; $73a2: $bd
	rst  $38                                         ; $73a3: $ff
	rst  $38                                         ; $73a4: $ff
	rst  $38                                         ; $73a5: $ff
	rst  $38                                         ; $73a6: $ff
	db   $ec                                         ; $73a7: $ec
	cp   b                                           ; $73a8: $b8
	ld   d, e                                        ; $73a9: $53
	ld   sp, $2111                                   ; $73aa: $31 $11 $21
	ld   de, $2411                                   ; $73ad: $11 $11 $24
	ld   d, a                                        ; $73b0: $57
	cp   [hl]                                        ; $73b1: $be
	rst  $38                                         ; $73b2: $ff
	rst  $38                                         ; $73b3: $ff
	rst  $38                                         ; $73b4: $ff
	rst  $38                                         ; $73b5: $ff
	db   $fd                                         ; $73b6: $fd
	and  a                                           ; $73b7: $a7
	ld   b, d                                        ; $73b8: $42
	ld   de, $1111                                   ; $73b9: $11 $11 $11
	ld   de, $4512                                   ; $73bc: $11 $12 $45
	ld   e, c                                        ; $73bf: $59
	rst  $28                                         ; $73c0: $ef
	rst  $38                                         ; $73c1: $ff
	rst  $38                                         ; $73c2: $ff
	rst  $38                                         ; $73c3: $ff
	rst  $38                                         ; $73c4: $ff
	db   $ed                                         ; $73c5: $ed
	and  l                                           ; $73c6: $a5
	ld   de, $1111                                   ; $73c7: $11 $11 $11
	ld   de, $1211                                   ; $73ca: $11 $11 $12
	ld   b, [hl]                                     ; $73cd: $46
	adc  h                                           ; $73ce: $8c
	rst  $38                                         ; $73cf: $ff
	rst  $38                                         ; $73d0: $ff
	rst  $38                                         ; $73d1: $ff
	rst  $38                                         ; $73d2: $ff
	rst  $38                                         ; $73d3: $ff
	db   $ec                                         ; $73d4: $ec
	sub  h                                           ; $73d5: $94
	ld   de, $1111                                   ; $73d6: $11 $11 $11
	ld   de, $2311                                   ; $73d9: $11 $11 $23
	ld   h, a                                        ; $73dc: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73dd: $cf
	rst  $38                                         ; $73de: $ff
	rst  $38                                         ; $73df: $ff
	rst  $38                                         ; $73e0: $ff
	rst  $38                                         ; $73e1: $ff
	rst  $38                                         ; $73e2: $ff
	reti                                             ; $73e3: $d9


	ld   b, c                                        ; $73e4: $41
	ld   de, $1111                                   ; $73e5: $11 $11 $11
	ld   de, $3612                                   ; $73e8: $11 $12 $36
	sbc  h                                           ; $73eb: $9c
	rst  $38                                         ; $73ec: $ff
	rst  $38                                         ; $73ed: $ff
	rst  $38                                         ; $73ee: $ff
	rst  $38                                         ; $73ef: $ff
	rst  $38                                         ; $73f0: $ff
	db   $fd                                         ; $73f1: $fd
	sub  l                                           ; $73f2: $95
	ld   de, $1111                                   ; $73f3: $11 $11 $11
	ld   de, $1411                                   ; $73f6: $11 $11 $14
	ld   e, c                                        ; $73f9: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73fa: $cf
	rst  $38                                         ; $73fb: $ff
	rst  $38                                         ; $73fc: $ff
	rst  $38                                         ; $73fd: $ff
	rst  $38                                         ; $73fe: $ff
	rst  $38                                         ; $73ff: $ff
	ld   [$1141], a                                  ; $7400: $ea $41 $11
	ld   de, $1111                                   ; $7403: $11 $11 $11
	ld   de, $9c45                                   ; $7406: $11 $45 $9c
	rst  $38                                         ; $7409: $ff
	rst  $38                                         ; $740a: $ff
	rst  $38                                         ; $740b: $ff
	rst  $38                                         ; $740c: $ff
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	and  l                                           ; $740f: $a5
	ld   de, $1111                                   ; $7410: $11 $11 $11
	ld   de, $1311                                   ; $7413: $11 $11 $13
	ld   c, b                                        ; $7416: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7417: $cf
	rst  $38                                         ; $7418: $ff
	rst  $38                                         ; $7419: $ff
	rst  $38                                         ; $741a: $ff
	rst  $38                                         ; $741b: $ff
	rst  $38                                         ; $741c: $ff
	ld   a, [$1161]                                  ; $741d: $fa $61 $11
	ld   de, $1111                                   ; $7420: $11 $11 $11
	ld   de, $7a33                                   ; $7423: $11 $33 $7a
	rst  $38                                         ; $7426: $ff
	rst  $38                                         ; $7427: $ff
	rst  $38                                         ; $7428: $ff
	rst  $38                                         ; $7429: $ff
	rst  $38                                         ; $742a: $ff
	rst  $38                                         ; $742b: $ff
	cp   b                                           ; $742c: $b8
	ld   hl, $1111                                   ; $742d: $21 $11 $11
	ld   de, $1111                                   ; $7430: $11 $11 $11
	dec  h                                           ; $7433: $25
	adc  a                                           ; $7434: $8f
	rst  $38                                         ; $7435: $ff
	rst  $38                                         ; $7436: $ff
	rst  $38                                         ; $7437: $ff
	rst  $38                                         ; $7438: $ff
	rst  $38                                         ; $7439: $ff
	cp   $b6                                         ; $743a: $fe $b6
	ld   de, $1111                                   ; $743c: $11 $11 $11
	ld   de, $1111                                   ; $743f: $11 $11 $11
	inc  h                                           ; $7442: $24
	xor  a                                           ; $7443: $af
	rst  $38                                         ; $7444: $ff
	rst  $38                                         ; $7445: $ff
	rst  $38                                         ; $7446: $ff
	rst  $38                                         ; $7447: $ff
	rst  $38                                         ; $7448: $ff
	cp   $a5                                         ; $7449: $fe $a5
	ld   de, $1111                                   ; $744b: $11 $11 $11
	ld   de, $1111                                   ; $744e: $11 $11 $11
	inc  h                                           ; $7451: $24
	sbc  l                                           ; $7452: $9d
	rst  $38                                         ; $7453: $ff
	rst  $38                                         ; $7454: $ff
	rst  $38                                         ; $7455: $ff
	rst  $38                                         ; $7456: $ff
	rst  $38                                         ; $7457: $ff
	cp   $b6                                         ; $7458: $fe $b6
	ld   hl, $1111                                   ; $745a: $21 $11 $11
	ld   de, $1111                                   ; $745d: $11 $11 $11
	ld   [de], a                                     ; $7460: $12
	ld   l, d                                        ; $7461: $6a
	cp   a                                           ; $7462: $bf
	rst  $38                                         ; $7463: $ff
	rst  $38                                         ; $7464: $ff
	rst  $38                                         ; $7465: $ff
	rst  $38                                         ; $7466: $ff
	rst  $38                                         ; $7467: $ff
	reti                                             ; $7468: $d9


	ld   d, e                                        ; $7469: $53
	ld   hl, $1111                                   ; $746a: $21 $11 $11
	ld   de, $1111                                   ; $746d: $11 $11 $11
	ld   h, $9a                                      ; $7470: $26 $9a
	rst  $38                                         ; $7472: $ff
	rst  $38                                         ; $7473: $ff
	rst  $38                                         ; $7474: $ff
	rst  $38                                         ; $7475: $ff
	rst  $38                                         ; $7476: $ff
	db   $fd                                         ; $7477: $fd
	and  a                                           ; $7478: $a7
	ld   h, h                                        ; $7479: $64
	ld   hl, $1111                                   ; $747a: $21 $11 $11
	ld   de, $1111                                   ; $747d: $11 $11 $11
	ld   b, [hl]                                     ; $7480: $46
	adc  h                                           ; $7481: $8c
	xor  $ff                                         ; $7482: $ee $ff
	rst  $38                                         ; $7484: $ff
	rst  $38                                         ; $7485: $ff
	rst  $38                                         ; $7486: $ff
	db   $ec                                         ; $7487: $ec
	xor  b                                           ; $7488: $a8
	ld   [hl], l                                     ; $7489: $75
	ld   b, c                                        ; $748a: $41
	ld   de, $1111                                   ; $748b: $11 $11 $11
	ld   de, $3512                                   ; $748e: $11 $12 $35
	sbc  h                                           ; $7491: $9c
	sbc  $ff                                         ; $7492: $de $ff
	rst  $38                                         ; $7494: $ff
	rst  $38                                         ; $7495: $ff
	rst  $38                                         ; $7496: $ff
	cp   $c9                                         ; $7497: $fe $c9
	halt                                             ; $7499: $76
	ld   b, d                                        ; $749a: $42
	ld   bc, $1111                                   ; $749b: $01 $11 $11
	ld   de, $2411                                   ; $749e: $11 $11 $24
	adc  d                                           ; $74a1: $8a
	adc  $ff                                         ; $74a2: $ce $ff
	rst  $38                                         ; $74a4: $ff
	rst  $38                                         ; $74a5: $ff

Call_0a7_74a6:
	rst  $38                                         ; $74a6: $ff
	cp   $da                                         ; $74a7: $fe $da
	sub  a                                           ; $74a9: $97
	ld   d, e                                        ; $74aa: $53
	ld   de, $1111                                   ; $74ab: $11 $11 $11
	ld   de, $1311                                   ; $74ae: $11 $11 $13
	ld   l, c                                        ; $74b1: $69
	adc  $ff                                         ; $74b2: $ce $ff
	rst  $38                                         ; $74b4: $ff
	rst  $38                                         ; $74b5: $ff
	rst  $38                                         ; $74b6: $ff
	rst  $38                                         ; $74b7: $ff
	db   $ec                                         ; $74b8: $ec
	sbc  b                                           ; $74b9: $98
	ld   h, h                                        ; $74ba: $64
	ld   de, $1111                                   ; $74bb: $11 $11 $11
	ld   de, $0211                                   ; $74be: $11 $11 $02
	ld   c, b                                        ; $74c1: $48
	xor  h                                           ; $74c2: $ac
	rst  $28                                         ; $74c3: $ef
	rst  $38                                         ; $74c4: $ff
	rst  $38                                         ; $74c5: $ff
	rst  $38                                         ; $74c6: $ff
	rst  $38                                         ; $74c7: $ff
	db   $fd                                         ; $74c8: $fd
	cp   b                                           ; $74c9: $b8
	halt                                             ; $74ca: $76
	ld   sp, $1111                                   ; $74cb: $31 $11 $11
	ld   de, $1111                                   ; $74ce: $11 $11 $11
	dec  [hl]                                        ; $74d1: $35
	sbc  e                                           ; $74d2: $9b
	rst  JumpTable                                         ; $74d3: $df
	rst  $38                                         ; $74d4: $ff
	rst  $38                                         ; $74d5: $ff
	rst  $38                                         ; $74d6: $ff
	rst  $38                                         ; $74d7: $ff
	rst  $38                                         ; $74d8: $ff
	db   $db                                         ; $74d9: $db
	add  a                                           ; $74da: $87
	ld   d, d                                        ; $74db: $52
	ld   de, $1111                                   ; $74dc: $11 $11 $11
	ld   de, $1311                                   ; $74df: $11 $11 $13
	ld   e, b                                        ; $74e2: $58
	cp   h                                           ; $74e3: $bc
	rst  $28                                         ; $74e4: $ef
	rst  $38                                         ; $74e5: $ff
	rst  $38                                         ; $74e6: $ff
	rst  $38                                         ; $74e7: $ff
	rst  $38                                         ; $74e8: $ff
	db   $fc                                         ; $74e9: $fc
	cp   b                                           ; $74ea: $b8
	ld   [hl], l                                     ; $74eb: $75
	ld   sp, $1111                                   ; $74ec: $31 $11 $11
	ld   de, $1111                                   ; $74ef: $11 $11 $11
	dec  h                                           ; $74f2: $25
	ld   a, d                                        ; $74f3: $7a
	cp   l                                           ; $74f4: $bd
	rst  $38                                         ; $74f5: $ff
	rst  $38                                         ; $74f6: $ff
	rst  $38                                         ; $74f7: $ff
	rst  $38                                         ; $74f8: $ff
	rst  $38                                         ; $74f9: $ff
	db   $db                                         ; $74fa: $db
	sub  a                                           ; $74fb: $97
	ld   h, l                                        ; $74fc: $65
	ld   [hl-], a                                    ; $74fd: $32
	ld   de, $1111                                   ; $74fe: $11 $11 $11
	ld   de, $3511                                   ; $7501: $11 $11 $35
	ld   a, c                                        ; $7504: $79
	adc  $ff                                         ; $7505: $ce $ff
	rst  $38                                         ; $7507: $ff
	rst  $38                                         ; $7508: $ff
	rst  $38                                         ; $7509: $ff
	rst  $38                                         ; $750a: $ff
	res  2, a                                        ; $750b: $cb $97
	ld   h, l                                        ; $750d: $65
	ld   b, d                                        ; $750e: $42
	ld   de, $1111                                   ; $750f: $11 $11 $11
	ld   de, $3511                                   ; $7512: $11 $11 $35
	ld   l, c                                        ; $7515: $69
	cp   l                                           ; $7516: $bd
	rst  $28                                         ; $7517: $ef
	rst  $38                                         ; $7518: $ff
	rst  $38                                         ; $7519: $ff
	rst  $38                                         ; $751a: $ff
	rst  $38                                         ; $751b: $ff
	res  5, b                                        ; $751c: $cb $a8
	ld   h, l                                        ; $751e: $65
	ld   b, h                                        ; $751f: $44
	ld   sp, $1111                                   ; $7520: $31 $11 $11
	ld   de, $2411                                   ; $7523: $11 $11 $24
	ld   h, a                                        ; $7526: $67
	sbc  e                                           ; $7527: $9b
	xor  $ff                                         ; $7528: $ee $ff
	rst  $38                                         ; $752a: $ff
	rst  $38                                         ; $752b: $ff
	rst  $38                                         ; $752c: $ff
	db   $db                                         ; $752d: $db
	cp   d                                           ; $752e: $ba
	add  [hl]                                        ; $752f: $86
	ld   d, l                                        ; $7530: $55
	ld   b, e                                        ; $7531: $43
	ld   hl, $1111                                   ; $7532: $21 $11 $11
	ld   [de], a                                     ; $7535: $12
	inc  sp                                          ; $7536: $33
	ld   b, [hl]                                     ; $7537: $46
	adc  c                                           ; $7538: $89
	xor  h                                           ; $7539: $ac
	rst  $28                                         ; $753a: $ef
	rst  $38                                         ; $753b: $ff
	rst  $38                                         ; $753c: $ff
	rst  $38                                         ; $753d: $ff
	db   $ec                                         ; $753e: $ec
	res  3, c                                        ; $753f: $cb $99
	add  a                                           ; $7541: $87
	ld   h, h                                        ; $7542: $64
	inc  sp                                          ; $7543: $33
	ld   hl, $1111                                   ; $7544: $21 $11 $11
	inc  hl                                          ; $7547: $23
	ld   b, h                                        ; $7548: $44
	ld   d, a                                        ; $7549: $57
	adc  d                                           ; $754a: $8a
	call $ffef                                       ; $754b: $cd $ef $ff
	xor  $ed                                         ; $754e: $ee $ed
	res  5, d                                        ; $7550: $cb $aa
	sbc  b                                           ; $7552: $98
	halt                                             ; $7553: $76
	ld   d, l                                        ; $7554: $55
	ld   d, h                                        ; $7555: $54
	ld   sp, $2212                                   ; $7556: $31 $12 $22
	inc  hl                                          ; $7559: $23
	ld   d, l                                        ; $755a: $55
	ld   d, a                                        ; $755b: $57
	adc  d                                           ; $755c: $8a
	cp   h                                           ; $755d: $bc
	db   $dd                                         ; $755e: $dd
	rst  $38                                         ; $755f: $ff
	db   $ed                                         ; $7560: $ed
	call c, $a9bb                                    ; $7561: $dc $bb $a9
	sbc  b                                           ; $7564: $98
	halt                                             ; $7565: $76
	ld   h, l                                        ; $7566: $65
	ld   d, h                                        ; $7567: $54
	ld   [hl-], a                                    ; $7568: $32
	inc  hl                                          ; $7569: $23
	ld   [hl-], a                                    ; $756a: $32
	inc  h                                           ; $756b: $24
	ld   d, l                                        ; $756c: $55
	ld   d, a                                        ; $756d: $57
	sbc  c                                           ; $756e: $99
	xor  h                                           ; $756f: $ac
	sbc  $ee                                         ; $7570: $de $ee
	sbc  $ed                                         ; $7572: $de $ed
	db   $dd                                         ; $7574: $dd
	xor  c                                           ; $7575: $a9
	sbc  c                                           ; $7576: $99
	add  l                                           ; $7577: $85
	ld   b, h                                        ; $7578: $44
	ld   b, e                                        ; $7579: $43
	ld   de, $2111                                   ; $757a: $11 $11 $21
	dec  h                                           ; $757d: $25
	ld   a, b                                        ; $757e: $78
	ld   a, c                                        ; $757f: $79
	xor  e                                           ; $7580: $ab
	call z, $ffdf                                    ; $7581: $cc $df $ff
	cp   $fd                                         ; $7584: $fe $fd
	jp   z, Jump_0a7_7599                            ; $7586: $ca $99 $75

	ld   b, e                                        ; $7589: $43
	ld   hl, $1111                                   ; $758a: $21 $11 $11
	ld   de, $5933                                   ; $758d: $11 $33 $59
	cp   e                                           ; $7590: $bb
	call z, $dedd                                    ; $7591: $cc $dd $de
	rst  $28                                         ; $7594: $ef
	rst  $38                                         ; $7595: $ff
	cp   $cb                                         ; $7596: $fe $cb
	add  a                                           ; $7598: $87

Jump_0a7_7599:
	halt                                             ; $7599: $76
	ld   b, h                                        ; $759a: $44
	ld   sp, $1111                                   ; $759b: $31 $11 $11
	ld   de, $5933                                   ; $759e: $11 $33 $59
	cp   l                                           ; $75a1: $bd
	db   $ed                                         ; $75a2: $ed
	cp   l                                           ; $75a3: $bd
	db   $ed                                         ; $75a4: $ed
	xor  $ef                                         ; $75a5: $ee $ef
	db   $fc                                         ; $75a7: $fc

Call_0a7_75a8:
	cp   d                                           ; $75a8: $ba
	sbc  b                                           ; $75a9: $98
	ld   h, [hl]                                     ; $75aa: $66
	ld   d, l                                        ; $75ab: $55
	ld   sp, $1111                                   ; $75ac: $31 $11 $11
	ld   de, $7a35                                   ; $75af: $11 $35 $7a
	rst  JumpTable                                         ; $75b2: $df
	call c, $dcbd                                    ; $75b3: $dc $bd $dc
	adc  $ff                                         ; $75b6: $ce $ff
	call c, $97bb                                    ; $75b8: $dc $bb $97
	ld   h, [hl]                                     ; $75bb: $66
	ld   d, h                                        ; $75bc: $54
	ld   sp, $1111                                   ; $75bd: $31 $11 $11
	ld   de, $ac48                                   ; $75c0: $11 $48 $ac
	db   $dd                                         ; $75c3: $dd
	call c, $accb                                    ; $75c4: $dc $cb $ac
	xor  $df                                         ; $75c7: $ee $df
	db   $eb                                         ; $75c9: $eb
	ret                                              ; $75ca: $c9


	adc  b                                           ; $75cb: $88
	ld   [hl], l                                     ; $75cc: $75
	ld   b, e                                        ; $75cd: $43
	ld   de, $1111                                   ; $75ce: $11 $11 $11
	inc  d                                           ; $75d1: $14
	adc  d                                           ; $75d2: $8a
	call $bafe                                       ; $75d3: $cd $fe $ba
	xor  e                                           ; $75d6: $ab
	cp   h                                           ; $75d7: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75d8: $cf
	db   $fc                                         ; $75d9: $fc
	res  5, c                                        ; $75da: $cb $a9
	add  a                                           ; $75dc: $87
	ld   d, h                                        ; $75dd: $54
	ld   sp, $1111                                   ; $75de: $31 $11 $11
	ld   [de], a                                     ; $75e1: $12
	sbc  c                                           ; $75e2: $99
	xor  [hl]                                        ; $75e3: $ae
	rst  JumpTable                                         ; $75e4: $df
	jp   hl                                          ; $75e5: $e9


	adc  c                                           ; $75e6: $89
	sbc  h                                           ; $75e7: $9c
	call c, $dadf                                    ; $75e8: $dc $df $da
	sbc  d                                           ; $75eb: $9a
	xor  d                                           ; $75ec: $aa
	add  [hl]                                        ; $75ed: $86
	ld   b, e                                        ; $75ee: $43
	ld   de, $1111                                   ; $75ef: $11 $11 $11
	ld   c, b                                        ; $75f2: $48
	sbc  l                                           ; $75f3: $9d
	db   $ed                                         ; $75f4: $ed
	db   $fd                                         ; $75f5: $fd
	sbc  c                                           ; $75f6: $99
	sub  a                                           ; $75f7: $97
	xor  h                                           ; $75f8: $ac
	rst  JumpTable                                         ; $75f9: $df
	db   $db                                         ; $75fa: $db
	cp   e                                           ; $75fb: $bb
	xor  d                                           ; $75fc: $aa
	sub  [hl]                                        ; $75fd: $96
	ld   h, l                                        ; $75fe: $65
	ld   hl, $1111                                   ; $75ff: $21 $11 $11
	ld   a, [de]                                     ; $7602: $1a
	jp   z, $bffd                                    ; $7603: $ca $fd $bf

	or   l                                           ; $7606: $b5
	adc  e                                           ; $7607: $8b
	xor  e                                           ; $7608: $ab
	call c, $9afe                                    ; $7609: $dc $fe $9a
	sbc  d                                           ; $760c: $9a
	xor  c                                           ; $760d: $a9
	ld   b, e                                        ; $760e: $43
	ld   hl, $1111                                   ; $760f: $21 $11 $11
	rla                                              ; $7612: $17
	db   $db                                         ; $7613: $db
	xor  e                                           ; $7614: $ab
	rst  $28                                         ; $7615: $ef
	and  [hl]                                        ; $7616: $a6
	adc  h                                           ; $7617: $8c
	xor  c                                           ; $7618: $a9
	xor  h                                           ; $7619: $ac
	db   $ec                                         ; $761a: $ec
	cp   e                                           ; $761b: $bb
	call z, $5388                                    ; $761c: $cc $88 $53
	ld   sp, $1111                                   ; $761f: $31 $11 $11
	ld   b, l                                        ; $7622: $45
	ld   a, e                                        ; $7623: $7b
	cp   e                                           ; $7624: $bb
	db   $dd                                         ; $7625: $dd
	ret  z                                           ; $7626: $c8

	ld   a, b                                        ; $7627: $78
	xor  e                                           ; $7628: $ab
	sbc  $dd                                         ; $7629: $de $dd
	jp   z, $97ab                                    ; $762b: $ca $ab $97

	ld   d, c                                        ; $762e: $51
	ld   de, $1111                                   ; $762f: $11 $11 $11

jr_0a7_7632:
	scf                                              ; $7632: $37
	adc  d                                           ; $7633: $8a
	sbc  $ec                                         ; $7634: $de $ec
	sub  e                                           ; $7636: $93
	ld   e, c                                        ; $7637: $59
	call c, $ef9e                                    ; $7638: $dc $9e $ef
	or   $89                                         ; $763b: $f6 $89
	adc  e                                           ; $763d: $8b
	ld   b, c                                        ; $763e: $41
	inc  sp                                          ; $763f: $33
	ld   [hl-], a                                    ; $7640: $32
	ld   de, $f83a                                   ; $7641: $11 $3a $f8
	ld   a, [hl]                                     ; $7644: $7e
	jp   c, Jump_0a7_5f92                            ; $7645: $da $92 $5f

	push bc                                          ; $7648: $c5
	db   $ec                                         ; $7649: $ec
	rst  $38                                         ; $764a: $ff
	adc  c                                           ; $764b: $89
	sbc  c                                           ; $764c: $99
	sub  [hl]                                        ; $764d: $96
	ld   hl, $2533                                   ; $764e: $21 $33 $25
	ld   de, $e87f                                   ; $7651: $11 $7f $e8
	ld   a, c                                        ; $7654: $79
	call c, $e845                                    ; $7655: $dc $45 $e8
	sbc  h                                           ; $7658: $9c
	xor  a                                           ; $7659: $af
	db   $fc                                         ; $765a: $fc
	and  [hl]                                        ; $765b: $a6

jr_0a7_765c:
	cp   d                                           ; $765c: $ba
	ld   [hl], a                                     ; $765d: $77
	ld   de, $3236                                   ; $765e: $11 $36 $32
	jr   jr_0a7_765c                                 ; $7661: $18 $f9

	ld   h, [hl]                                     ; $7663: $66
	sbc  l                                           ; $7664: $9d
	sub  $1b                                         ; $7665: $d6 $1b
	jp   z, $acfa                                    ; $7667: $ca $fa $ac

	cp   d                                           ; $766a: $ba
	ld   a, d                                        ; $766b: $7a
	rst  $10                                         ; $766c: $d7
	dec  [hl]                                        ; $766d: $35
	inc  d                                           ; $766e: $14
	ld   h, c                                        ; $766f: $61
	inc  hl                                          ; $7670: $23
	ld   e, e                                        ; $7671: $5b
	call nz, $fd3a                                   ; $7672: $c4 $3a $fd
	ld   e, b                                        ; $7675: $58
	ld   h, [hl]                                     ; $7676: $66
	ei                                               ; $7677: $fb
	ld   l, a                                        ; $7678: $6f
	or   a                                           ; $7679: $b7
	db   $fd                                         ; $767a: $fd
	dec  a                                           ; $767b: $3d
	pop  bc                                          ; $767c: $c1
	ld   [hl+], a                                    ; $767d: $22
	ld   l, h                                        ; $767e: $6c
	ld   d, e                                        ; $767f: $53
	ld   hl, $a87c                                   ; $7680: $21 $7c $a8
	ld   a, b                                        ; $7683: $78
	xor  d                                           ; $7684: $aa
	cp   c                                           ; $7685: $b9
	ld   [hl], a                                     ; $7686: $77
	adc  h                                           ; $7687: $8c
	xor  h                                           ; $7688: $ac
	ld   a, [$34aa]                                  ; $7689: $fa $aa $34
	ld   [hl], a                                     ; $768c: $77
	halt                                             ; $768d: $76
	ld   b, h                                        ; $768e: $44
	ld   d, l                                        ; $768f: $55
	ld   [hl], a                                     ; $7690: $77
	adc  c                                           ; $7691: $89
	ld   a, b                                        ; $7692: $78
	xor  h                                           ; $7693: $ac
	cp   c                                           ; $7694: $b9
	ld   d, e                                        ; $7695: $53
	ld   e, l                                        ; $7696: $5d
	ld   a, [$ff77]                                  ; $7697: $fa $77 $ff
	ld   hl, $7456                                   ; $769a: $21 $56 $74
	ld   l, e                                        ; $769d: $6b
	add  e                                           ; $769e: $83
	ld   [de], a                                     ; $769f: $12
	cp   [hl]                                        ; $76a0: $be
	ld   a, b                                        ; $76a1: $78
	adc  c                                           ; $76a2: $89
	cp   b                                           ; $76a3: $b8
	adc  c                                           ; $76a4: $89
	add  e                                           ; $76a5: $83
	ld   a, a                                        ; $76a6: $7f
	db   $f4                                         ; $76a7: $f4
	ld   a, b                                        ; $76a8: $78
	rst  $10                                         ; $76a9: $d7
	jr   z, jr_0a7_7632                              ; $76aa: $28 $86

	ld   h, h                                        ; $76ac: $64
	ld   l, b                                        ; $76ad: $68
	ld   h, h                                        ; $76ae: $64
	ld   h, $ba                                      ; $76af: $26 $ba
	sbc  b                                           ; $76b1: $98
	sbc  b                                           ; $76b2: $98
	ld   a, l                                        ; $76b3: $7d
	db   $e3                                         ; $76b4: $e3
	ld   a, $fa                                      ; $76b5: $3e $fa
	sub  $3d                                         ; $76b7: $d6 $3d
	push bc                                          ; $76b9: $c5
	inc  d                                           ; $76ba: $14
	jp   z, Jump_0a7_4922                            ; $76bb: $ca $22 $49

	sub  h                                           ; $76be: $94
	ld   h, [hl]                                     ; $76bf: $66
	ld   a, l                                        ; $76c0: $7d
	rst  $20                                         ; $76c1: $e7
	ld   c, c                                        ; $76c2: $49
	rst  ToBoot                                         ; $76c3: $c7
	db   $eb                                         ; $76c4: $eb
	inc  e                                           ; $76c5: $1c
	push af                                          ; $76c6: $f5
	dec  de                                          ; $76c7: $1b
	adc  e                                           ; $76c8: $8b
	sub  e                                           ; $76c9: $93
	jr   c, @-$48                                    ; $76ca: $38 $b6

	ld   b, d                                        ; $76cc: $42
	ld   c, e                                        ; $76cd: $4b
	xor  c                                           ; $76ce: $a9
	ld   h, d                                        ; $76cf: $62
	adc  h                                           ; $76d0: $8c
	ret  c                                           ; $76d1: $d8

	ld   a, $e6                                      ; $76d2: $3e $e6
	ld   e, b                                        ; $76d4: $58
	db   $ec                                         ; $76d5: $ec
	sbc  c                                           ; $76d6: $99
	ld   a, c                                        ; $76d7: $79
	ld   h, [hl]                                     ; $76d8: $66
	add  l                                           ; $76d9: $85

Call_0a7_76da:
	ld   l, c                                        ; $76da: $69
	ld   d, [hl]                                     ; $76db: $56
	and  [hl]                                        ; $76dc: $a6
	ld   h, l                                        ; $76dd: $65
	ld   c, b                                        ; $76de: $48
	jp   z, $fa36                                    ; $76df: $ca $36 $fa

	ld   b, a                                        ; $76e2: $47
	res  5, d                                        ; $76e3: $cb $aa
	ld   [hl], a                                     ; $76e5: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76e6: $cf
	ld   b, c                                        ; $76e7: $41
	ld   a, d                                        ; $76e8: $7a
	and  a                                           ; $76e9: $a7
	ld   d, $c7                                      ; $76ea: $16 $c7
	ld   b, l                                        ; $76ec: $45
	xor  e                                           ; $76ed: $ab
	add  l                                           ; $76ee: $85
	ld   c, e                                        ; $76ef: $4b
	sub  a                                           ; $76f0: $97
	reti                                             ; $76f1: $d9


	ld   e, b                                        ; $76f2: $58
	call $937a                                       ; $76f3: $cd $7a $93
	ld   a, c                                        ; $76f6: $79
	xor  d                                           ; $76f7: $aa
	dec  [hl]                                        ; $76f8: $35
	halt                                             ; $76f9: $76
	add  [hl]                                        ; $76fa: $86
	ld   e, e                                        ; $76fb: $5b
	and  h                                           ; $76fc: $a4
	ld   e, h                                        ; $76fd: $5c
	sub  [hl]                                        ; $76fe: $96
	add  [hl]                                        ; $76ff: $86
	adc  [hl]                                        ; $7700: $8e
	or   [hl]                                        ; $7701: $b6
	ret                                              ; $7702: $c9


	ld   e, e                                        ; $7703: $5b
	rst  $20                                         ; $7704: $e7
	ld   a, [hl+]                                    ; $7705: $2a
	sub  [hl]                                        ; $7706: $96
	add  h                                           ; $7707: $84
	ld   l, h                                        ; $7708: $6c
	ld   h, d                                        ; $7709: $62
	ld   c, b                                        ; $770a: $48
	ret  z                                           ; $770b: $c8

	ld   [hl-], a                                    ; $770c: $32
	ld   a, [hl]                                     ; $770d: $7e
	push hl                                          ; $770e: $e5
	ld   a, [hl-]                                    ; $770f: $3a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7710: $cf
	and  l                                           ; $7711: $a5
	ld   a, b                                        ; $7712: $78
	call $b844                                       ; $7713: $cd $44 $b8
	ld   [hl], e                                     ; $7716: $73
	ld   e, c                                        ; $7717: $59
	xor  b                                           ; $7718: $a8
	ld   d, h                                        ; $7719: $54
	ld   e, l                                        ; $771a: $5d
	or   a                                           ; $771b: $b7
	dec  [hl]                                        ; $771c: $35
	cp   e                                           ; $771d: $bb
	and  [hl]                                        ; $771e: $a6
	ld   a, h                                        ; $771f: $7c
	or   $89                                         ; $7720: $f6 $89
	ld   l, a                                        ; $7722: $6f
	pop  bc                                          ; $7723: $c1
	dec  de                                          ; $7724: $1b
	jp   z, $9d11                                    ; $7725: $ca $11 $9d

	or   h                                           ; $7728: $b4
	inc  [hl]                                        ; $7729: $34
	cp   l                                           ; $772a: $bd
	or   c                                           ; $772b: $b1
	dec  sp                                          ; $772c: $3b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $772d: $cf
	ld   d, c                                        ; $772e: $51
	sbc  a                                           ; $772f: $9f
	push hl                                          ; $7730: $e5
	ld   d, $ff                                      ; $7731: $16 $ff
	ld   hl, $f15f                                   ; $7733: $21 $5f $f1
	inc  d                                           ; $7736: $14
	rst  $38                                         ; $7737: $ff
	ld   d, c                                        ; $7738: $51
	ld   a, h                                        ; $7739: $7c
	ret                                              ; $773a: $c9


	ld   [hl+], a                                    ; $773b: $22
	rst  JumpTable                                         ; $773c: $df
	and  h                                           ; $773d: $a4
	inc  l                                           ; $773e: $2c
	ld   hl, sp+$54                                  ; $773f: $f8 $54
	sbc  l                                           ; $7741: $9d
	db   $d3                                         ; $7742: $d3
	rla                                              ; $7743: $17
	db   $db                                         ; $7744: $db
	ld   d, h                                        ; $7745: $54
	ld   a, l                                        ; $7746: $7d
	sub  c                                           ; $7747: $91
	ld   c, d                                        ; $7748: $4a
	cp   d                                           ; $7749: $ba
	ld   h, h                                        ; $774a: $64
	cp   a                                           ; $774b: $bf
	add  a                                           ; $774c: $87
	ld   e, b                                        ; $774d: $58
	ld   a, [$9a56]                                  ; $774e: $fa $56 $9a
	or   a                                           ; $7751: $b7
	ld   b, a                                        ; $7752: $47
	adc  c                                           ; $7753: $89
	ld   h, e                                        ; $7754: $63
	ld   e, d                                        ; $7755: $5a
	and  a                                           ; $7756: $a7
	ld   d, a                                        ; $7757: $57
	ret  z                                           ; $7758: $c8

	ld   d, l                                        ; $7759: $55
	adc  h                                           ; $775a: $8c
	or   [hl]                                        ; $775b: $b6
	ld   a, b                                        ; $775c: $78
	adc  h                                           ; $775d: $8c
	and  l                                           ; $775e: $a5
	ld   a, e                                        ; $775f: $7b
	adc  b                                           ; $7760: $88
	ld   h, e                                        ; $7761: $63
	adc  e                                           ; $7762: $8b
	halt                                             ; $7763: $76
	ld   h, a                                        ; $7764: $67
	sbc  b                                           ; $7765: $98
	ld   h, a                                        ; $7766: $67
	and  a                                           ; $7767: $a7
	adc  b                                           ; $7768: $88
	ld   l, c                                        ; $7769: $69
	cp   c                                           ; $776a: $b9
	sbc  c                                           ; $776b: $99
	ld   h, a                                        ; $776c: $67
	ld   l, c                                        ; $776d: $69
	ret  z                                           ; $776e: $c8

	ld   a, c                                        ; $776f: $79
	ld   a, b                                        ; $7770: $78
	sub  [hl]                                        ; $7771: $96
	ld   d, [hl]                                     ; $7772: $56
	ld   [hl], a                                     ; $7773: $77
	sub  a                                           ; $7774: $97
	ld   a, c                                        ; $7775: $79
	ld   a, b                                        ; $7776: $78
	ld   d, a                                        ; $7777: $57
	xor  c                                           ; $7778: $a9
	sbc  b                                           ; $7779: $98
	ld   [hl], a                                     ; $777a: $77
	sbc  c                                           ; $777b: $99
	sbc  b                                           ; $777c: $98
	ld   l, b                                        ; $777d: $68
	and  a                                           ; $777e: $a7
	adc  c                                           ; $777f: $89
	sbc  b                                           ; $7780: $98
	ld   h, l                                        ; $7781: $65
	ld   l, c                                        ; $7782: $69
	xor  c                                           ; $7783: $a9
	halt                                             ; $7784: $76
	ld   a, b                                        ; $7785: $78
	sub  a                                           ; $7786: $97
	ld   h, a                                        ; $7787: $67
	xor  c                                           ; $7788: $a9
	adc  b                                           ; $7789: $88
	ld   a, c                                        ; $778a: $79
	sub  a                                           ; $778b: $97
	ld   l, c                                        ; $778c: $69
	adc  b                                           ; $778d: $88
	xor  b                                           ; $778e: $a8
	ld   a, b                                        ; $778f: $78
	ld   [hl], a                                     ; $7790: $77
	halt                                             ; $7791: $76
	ld   a, b                                        ; $7792: $78
	adc  b                                           ; $7793: $88
	ld   a, b                                        ; $7794: $78
	ld   a, b                                        ; $7795: $78

Jump_0a7_7796:
	ld   [hl], a                                     ; $7796: $77
	ld   a, b                                        ; $7797: $78
	sbc  b                                           ; $7798: $98
	adc  b                                           ; $7799: $88
	add  a                                           ; $779a: $87
	ld   [hl], a                                     ; $779b: $77
	adc  b                                           ; $779c: $88
	adc  b                                           ; $779d: $88
	adc  b                                           ; $779e: $88
	adc  b                                           ; $779f: $88
	ld   h, [hl]                                     ; $77a0: $66
	ld   [hl], a                                     ; $77a1: $77
	ld   [hl], a                                     ; $77a2: $77
	ld   h, a                                        ; $77a3: $67
	halt                                             ; $77a4: $76
	ld   [hl], a                                     ; $77a5: $77
	ld   a, b                                        ; $77a6: $78
	sub  a                                           ; $77a7: $97
	sbc  c                                           ; $77a8: $99
	sbc  c                                           ; $77a9: $99
	sbc  b                                           ; $77aa: $98
	sbc  c                                           ; $77ab: $99
	adc  b                                           ; $77ac: $88
	sbc  b                                           ; $77ad: $98
	adc  b                                           ; $77ae: $88
	adc  b                                           ; $77af: $88
	sbc  c                                           ; $77b0: $99
	adc  b                                           ; $77b1: $88
	sbc  b                                           ; $77b2: $98
	sbc  c                                           ; $77b3: $99
	xor  c                                           ; $77b4: $a9
	sbc  c                                           ; $77b5: $99
	sbc  c                                           ; $77b6: $99
	xor  c                                           ; $77b7: $a9
	sbc  c                                           ; $77b8: $99
	adc  c                                           ; $77b9: $89
	adc  c                                           ; $77ba: $89
	sbc  c                                           ; $77bb: $99
	sbc  c                                           ; $77bc: $99
	adc  c                                           ; $77bd: $89
	sbc  c                                           ; $77be: $99
	adc  b                                           ; $77bf: $88
	adc  c                                           ; $77c0: $89
	sbc  c                                           ; $77c1: $99
	sbc  c                                           ; $77c2: $99
	xor  c                                           ; $77c3: $a9
	xor  c                                           ; $77c4: $a9
	sbc  c                                           ; $77c5: $99
	adc  b                                           ; $77c6: $88
	adc  b                                           ; $77c7: $88
	add  a                                           ; $77c8: $87
	ld   [hl], a                                     ; $77c9: $77
	ld   a, b                                        ; $77ca: $78
	adc  b                                           ; $77cb: $88
	sbc  c                                           ; $77cc: $99
	sbc  c                                           ; $77cd: $99
	sbc  b                                           ; $77ce: $98
	sbc  c                                           ; $77cf: $99
	sbc  b                                           ; $77d0: $98
	sbc  c                                           ; $77d1: $99
	add  a                                           ; $77d2: $87
	ld   [hl], a                                     ; $77d3: $77
	adc  c                                           ; $77d4: $89
	ld   [hl], a                                     ; $77d5: $77
	ld   [hl], a                                     ; $77d6: $77
	ld   [hl], a                                     ; $77d7: $77
	adc  b                                           ; $77d8: $88
	adc  c                                           ; $77d9: $89
	sbc  c                                           ; $77da: $99
	sbc  c                                           ; $77db: $99
	adc  b                                           ; $77dc: $88
	adc  b                                           ; $77dd: $88
	sbc  c                                           ; $77de: $99
	sub  a                                           ; $77df: $97
	add  a                                           ; $77e0: $87
	ld   a, b                                        ; $77e1: $78
	ld   [hl], a                                     ; $77e2: $77
	ld   [hl], a                                     ; $77e3: $77
	ld   [hl], a                                     ; $77e4: $77
	ld   [hl], a                                     ; $77e5: $77
	ld   a, b                                        ; $77e6: $78
	adc  b                                           ; $77e7: $88
	adc  b                                           ; $77e8: $88
	adc  b                                           ; $77e9: $88
	adc  b                                           ; $77ea: $88
	adc  b                                           ; $77eb: $88
	adc  b                                           ; $77ec: $88
	ld   [hl], a                                     ; $77ed: $77
	ld   [hl], a                                     ; $77ee: $77
	ld   [hl], a                                     ; $77ef: $77
	ld   [hl], a                                     ; $77f0: $77
	ld   [hl], a                                     ; $77f1: $77
	ld   [hl], a                                     ; $77f2: $77
	ld   a, b                                        ; $77f3: $78
	adc  b                                           ; $77f4: $88
	adc  b                                           ; $77f5: $88
	adc  b                                           ; $77f6: $88
	adc  b                                           ; $77f7: $88
	adc  b                                           ; $77f8: $88
	adc  b                                           ; $77f9: $88
	adc  b                                           ; $77fa: $88
	adc  b                                           ; $77fb: $88
	add  a                                           ; $77fc: $87
	ld   a, b                                        ; $77fd: $78
	adc  b                                           ; $77fe: $88
	add  a                                           ; $77ff: $87
	ld   [hl], a                                     ; $7800: $77
	ld   [hl], a                                     ; $7801: $77
	ld   [hl], a                                     ; $7802: $77
	adc  b                                           ; $7803: $88
	add  a                                           ; $7804: $87
	ld   a, b                                        ; $7805: $78
	adc  b                                           ; $7806: $88
	adc  b                                           ; $7807: $88
	adc  b                                           ; $7808: $88
	adc  b                                           ; $7809: $88
	ld   [hl], a                                     ; $780a: $77
	adc  b                                           ; $780b: $88
	ld   [hl], a                                     ; $780c: $77
	ld   [hl], a                                     ; $780d: $77
	add  a                                           ; $780e: $87
	ld   [hl], a                                     ; $780f: $77
	ld   a, b                                        ; $7810: $78
	adc  b                                           ; $7811: $88
	adc  b                                           ; $7812: $88
	adc  c                                           ; $7813: $89
	adc  b                                           ; $7814: $88
	adc  b                                           ; $7815: $88
	adc  b                                           ; $7816: $88
	adc  b                                           ; $7817: $88
	ld   a, b                                        ; $7818: $78
	ld   [hl], a                                     ; $7819: $77
	ld   [hl], a                                     ; $781a: $77
	ld   a, b                                        ; $781b: $78
	add  a                                           ; $781c: $87
	adc  b                                           ; $781d: $88
	adc  b                                           ; $781e: $88
	adc  b                                           ; $781f: $88
	adc  b                                           ; $7820: $88
	adc  b                                           ; $7821: $88
	adc  b                                           ; $7822: $88
	adc  b                                           ; $7823: $88
	adc  b                                           ; $7824: $88
	adc  b                                           ; $7825: $88
	adc  b                                           ; $7826: $88
	adc  b                                           ; $7827: $88
	adc  b                                           ; $7828: $88
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
	adc  b                                           ; $7850: $88
	adc  b                                           ; $7851: $88
	adc  b                                           ; $7852: $88
	adc  b                                           ; $7853: $88
	adc  b                                           ; $7854: $88
	adc  b                                           ; $7855: $88
	adc  b                                           ; $7856: $88
	adc  b                                           ; $7857: $88
	adc  b                                           ; $7858: $88
	adc  b                                           ; $7859: $88
	adc  b                                           ; $785a: $88
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
	adc  c                                           ; $7877: $89
	sbc  b                                           ; $7878: $98
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	adc  b                                           ; $787d: $88
	adc  b                                           ; $787e: $88
	adc  b                                           ; $787f: $88
	adc  b                                           ; $7880: $88
	adc  b                                           ; $7881: $88
	adc  c                                           ; $7882: $89
	adc  b                                           ; $7883: $88
	adc  b                                           ; $7884: $88
	adc  b                                           ; $7885: $88
	adc  b                                           ; $7886: $88
	adc  b                                           ; $7887: $88
	adc  b                                           ; $7888: $88
	adc  b                                           ; $7889: $88
	adc  b                                           ; $788a: $88
	adc  b                                           ; $788b: $88
	adc  b                                           ; $788c: $88
	adc  b                                           ; $788d: $88
	adc  b                                           ; $788e: $88
	adc  b                                           ; $788f: $88
	sbc  c                                           ; $7890: $99
	adc  b                                           ; $7891: $88
	adc  b                                           ; $7892: $88
	adc  b                                           ; $7893: $88
	adc  b                                           ; $7894: $88
	adc  b                                           ; $7895: $88
	adc  b                                           ; $7896: $88
	adc  b                                           ; $7897: $88
	adc  b                                           ; $7898: $88
	adc  b                                           ; $7899: $88
	adc  b                                           ; $789a: $88
	adc  b                                           ; $789b: $88
	adc  b                                           ; $789c: $88
	adc  b                                           ; $789d: $88
	adc  b                                           ; $789e: $88
	adc  b                                           ; $789f: $88
	adc  b                                           ; $78a0: $88
	adc  b                                           ; $78a1: $88
	adc  b                                           ; $78a2: $88
	adc  b                                           ; $78a3: $88
	adc  b                                           ; $78a4: $88
	adc  b                                           ; $78a5: $88
	adc  b                                           ; $78a6: $88
	adc  b                                           ; $78a7: $88
	adc  b                                           ; $78a8: $88
	adc  b                                           ; $78a9: $88
	adc  b                                           ; $78aa: $88
	adc  b                                           ; $78ab: $88
	adc  b                                           ; $78ac: $88
	adc  b                                           ; $78ad: $88
	adc  b                                           ; $78ae: $88
	adc  b                                           ; $78af: $88
	adc  b                                           ; $78b0: $88
	adc  b                                           ; $78b1: $88
	adc  b                                           ; $78b2: $88
	adc  b                                           ; $78b3: $88
	adc  b                                           ; $78b4: $88
	adc  b                                           ; $78b5: $88
	adc  b                                           ; $78b6: $88
	adc  b                                           ; $78b7: $88
	adc  b                                           ; $78b8: $88
	adc  b                                           ; $78b9: $88
	adc  b                                           ; $78ba: $88
	adc  b                                           ; $78bb: $88
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
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  b                                           ; $78da: $88
	sbc  b                                           ; $78db: $98
	adc  b                                           ; $78dc: $88
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	adc  b                                           ; $78e4: $88
	adc  b                                           ; $78e5: $88
	adc  b                                           ; $78e6: $88
	adc  b                                           ; $78e7: $88
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	sbc  c                                           ; $78ed: $99
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
	adc  b                                           ; $7913: $88
	adc  b                                           ; $7914: $88
	adc  b                                           ; $7915: $88
	adc  c                                           ; $7916: $89
	sbc  c                                           ; $7917: $99
	sbc  b                                           ; $7918: $98
	adc  b                                           ; $7919: $88
	adc  b                                           ; $791a: $88
	adc  b                                           ; $791b: $88
	add  a                                           ; $791c: $87
	ld   [hl], a                                     ; $791d: $77
	adc  b                                           ; $791e: $88
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	adc  b                                           ; $7921: $88
	adc  b                                           ; $7922: $88
	sbc  c                                           ; $7923: $99
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	adc  b                                           ; $7929: $88
	adc  b                                           ; $792a: $88
	adc  b                                           ; $792b: $88
	adc  b                                           ; $792c: $88
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  b                                           ; $7930: $88
	sbc  b                                           ; $7931: $98
	adc  c                                           ; $7932: $89
	sbc  b                                           ; $7933: $98
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	adc  b                                           ; $7938: $88
	add  a                                           ; $7939: $87
	ld   [hl], a                                     ; $793a: $77
	ld   [hl], a                                     ; $793b: $77
	adc  c                                           ; $793c: $89
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  c                                           ; $7940: $89
	sbc  c                                           ; $7941: $99
	sbc  b                                           ; $7942: $98
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	add  a                                           ; $7945: $87
	ld   a, b                                        ; $7946: $78
	adc  b                                           ; $7947: $88
	ld   a, b                                        ; $7948: $78
	adc  b                                           ; $7949: $88
	adc  b                                           ; $794a: $88
	adc  c                                           ; $794b: $89
	sbc  c                                           ; $794c: $99
	sbc  c                                           ; $794d: $99
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	add  a                                           ; $7951: $87
	ld   [hl], a                                     ; $7952: $77
	ld   [hl], a                                     ; $7953: $77
	adc  b                                           ; $7954: $88
	adc  b                                           ; $7955: $88
	adc  b                                           ; $7956: $88
	adc  b                                           ; $7957: $88
	adc  c                                           ; $7958: $89
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	add  a                                           ; $795e: $87
	ld   [hl], a                                     ; $795f: $77
	ld   a, b                                        ; $7960: $78
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  c                                           ; $7964: $89
	adc  b                                           ; $7965: $88
	adc  c                                           ; $7966: $89
	sbc  c                                           ; $7967: $99
	adc  b                                           ; $7968: $88
	adc  b                                           ; $7969: $88
	add  a                                           ; $796a: $87
	ld   [hl], a                                     ; $796b: $77
	ld   [hl], a                                     ; $796c: $77
	ld   a, b                                        ; $796d: $78
	adc  b                                           ; $796e: $88
	adc  b                                           ; $796f: $88
	adc  b                                           ; $7970: $88
	adc  c                                           ; $7971: $89
	adc  b                                           ; $7972: $88
	adc  c                                           ; $7973: $89
	adc  b                                           ; $7974: $88
	adc  b                                           ; $7975: $88
	adc  b                                           ; $7976: $88
	adc  b                                           ; $7977: $88
	ld   [hl], a                                     ; $7978: $77
	ld   [hl], a                                     ; $7979: $77
	ld   [hl], a                                     ; $797a: $77
	ld   a, b                                        ; $797b: $78
	adc  b                                           ; $797c: $88
	adc  c                                           ; $797d: $89
	sbc  b                                           ; $797e: $98
	sbc  b                                           ; $797f: $98
	adc  b                                           ; $7980: $88
	adc  c                                           ; $7981: $89
	adc  b                                           ; $7982: $88
	adc  b                                           ; $7983: $88
	adc  b                                           ; $7984: $88
	add  a                                           ; $7985: $87
	ld   [hl], a                                     ; $7986: $77
	ld   [hl], a                                     ; $7987: $77
	ld   [hl], a                                     ; $7988: $77
	ld   [hl], a                                     ; $7989: $77
	adc  b                                           ; $798a: $88
	adc  b                                           ; $798b: $88
	adc  c                                           ; $798c: $89
	sbc  c                                           ; $798d: $99
	sbc  c                                           ; $798e: $99
	sbc  c                                           ; $798f: $99
	sbc  c                                           ; $7990: $99
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	adc  b                                           ; $7993: $88
	add  a                                           ; $7994: $87
	ld   [hl], a                                     ; $7995: $77
	ld   [hl], a                                     ; $7996: $77
	adc  b                                           ; $7997: $88
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	sbc  c                                           ; $799b: $99
	sbc  c                                           ; $799c: $99
	sbc  b                                           ; $799d: $98
	adc  b                                           ; $799e: $88
	sbc  c                                           ; $799f: $99
	sbc  c                                           ; $79a0: $99
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
	adc  c                                           ; $79ad: $89
	sbc  c                                           ; $79ae: $99
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
	add  a                                           ; $79b9: $87
	adc  b                                           ; $79ba: $88
	adc  b                                           ; $79bb: $88
	adc  b                                           ; $79bc: $88
	adc  b                                           ; $79bd: $88
	adc  b                                           ; $79be: $88
	adc  b                                           ; $79bf: $88
	adc  b                                           ; $79c0: $88
	adc  c                                           ; $79c1: $89
	sbc  c                                           ; $79c2: $99
	cp   c                                           ; $79c3: $b9
	ld   l, b                                        ; $79c4: $68
	ld   a, b                                        ; $79c5: $78
	ld   [hl], a                                     ; $79c6: $77
	sbc  d                                           ; $79c7: $9a
	xor  d                                           ; $79c8: $aa
	add  a                                           ; $79c9: $87
	ld   a, b                                        ; $79ca: $78
	add  a                                           ; $79cb: $87
	adc  c                                           ; $79cc: $89
	cp   e                                           ; $79cd: $bb
	sub  a                                           ; $79ce: $97
	ld   [hl], a                                     ; $79cf: $77
	ld   [hl], a                                     ; $79d0: $77
	adc  c                                           ; $79d1: $89
	call z, $b889                                    ; $79d2: $cc $89 $b8
	adc  b                                           ; $79d5: $88
	ld   a, b                                        ; $79d6: $78
	sbc  d                                           ; $79d7: $9a
	sub  [hl]                                        ; $79d8: $96
	ld   h, a                                        ; $79d9: $67
	halt                                             ; $79da: $76
	ld   l, b                                        ; $79db: $68
	xor  c                                           ; $79dc: $a9
	ld   a, c                                        ; $79dd: $79
	ld   [hl], a                                     ; $79de: $77
	sub  [hl]                                        ; $79df: $96
	ld   [hl], a                                     ; $79e0: $77
	add  a                                           ; $79e1: $87
	halt                                             ; $79e2: $76
	ld   a, c                                        ; $79e3: $79
	xor  b                                           ; $79e4: $a8
	ld   [hl], a                                     ; $79e5: $77
	ld   [hl], a                                     ; $79e6: $77
	halt                                             ; $79e7: $76
	ld   l, b                                        ; $79e8: $68
	add  a                                           ; $79e9: $87
	ld   h, [hl]                                     ; $79ea: $66
	ld   a, b                                        ; $79eb: $78
	add  a                                           ; $79ec: $87
	ld   a, b                                        ; $79ed: $78
	adc  b                                           ; $79ee: $88
	halt                                             ; $79ef: $76
	ld   l, b                                        ; $79f0: $68
	ld   [hl], a                                     ; $79f1: $77
	ld   [hl], a                                     ; $79f2: $77
	ld   a, b                                        ; $79f3: $78
	ld   [hl], a                                     ; $79f4: $77
	sbc  b                                           ; $79f5: $98
	add  a                                           ; $79f6: $87
	ld   a, b                                        ; $79f7: $78
	sbc  b                                           ; $79f8: $98
	add  a                                           ; $79f9: $87
	ld   [hl], a                                     ; $79fa: $77
	ld   h, [hl]                                     ; $79fb: $66
	ld   [hl], a                                     ; $79fc: $77
	ld   [hl], a                                     ; $79fd: $77
	add  a                                           ; $79fe: $87
	adc  b                                           ; $79ff: $88
	adc  b                                           ; $7a00: $88
	adc  b                                           ; $7a01: $88
	ld   [hl], a                                     ; $7a02: $77
	sbc  b                                           ; $7a03: $98
	ld   a, b                                        ; $7a04: $78
	ld   [hl], a                                     ; $7a05: $77
	ld   [hl], a                                     ; $7a06: $77
	ld   h, a                                        ; $7a07: $67
	adc  b                                           ; $7a08: $88
	ld   [hl], a                                     ; $7a09: $77
	adc  c                                           ; $7a0a: $89
	sub  [hl]                                        ; $7a0b: $96
	ld   e, b                                        ; $7a0c: $58
	xor  b                                           ; $7a0d: $a8
	ld   [hl], a                                     ; $7a0e: $77
	ld   a, c                                        ; $7a0f: $79
	sub  a                                           ; $7a10: $97
	halt                                             ; $7a11: $76
	ld   a, e                                        ; $7a12: $7b
	sub  a                                           ; $7a13: $97
	ld   l, d                                        ; $7a14: $6a
	sbc  b                                           ; $7a15: $98
	ld   [hl], l                                     ; $7a16: $75
	adc  d                                           ; $7a17: $8a
	or   [hl]                                        ; $7a18: $b6
	ld   a, b                                        ; $7a19: $78
	ld   a, d                                        ; $7a1a: $7a
	sub  [hl]                                        ; $7a1b: $96
	ld   l, e                                        ; $7a1c: $6b
	sub  a                                           ; $7a1d: $97
	add  a                                           ; $7a1e: $87
	adc  d                                           ; $7a1f: $8a
	sub  [hl]                                        ; $7a20: $96
	adc  b                                           ; $7a21: $88
	ld   a, c                                        ; $7a22: $79
	sub  a                                           ; $7a23: $97
	sbc  d                                           ; $7a24: $9a
	ld   [hl], a                                     ; $7a25: $77
	ld   a, b                                        ; $7a26: $78
	sbc  d                                           ; $7a27: $9a
	ld   [hl], a                                     ; $7a28: $77
	sbc  b                                           ; $7a29: $98
	adc  c                                           ; $7a2a: $89
	ld   [hl], a                                     ; $7a2b: $77
	adc  d                                           ; $7a2c: $8a
	xor  d                                           ; $7a2d: $aa
	halt                                             ; $7a2e: $76
	xor  d                                           ; $7a2f: $aa
	xor  d                                           ; $7a30: $aa
	ld   h, l                                        ; $7a31: $65
	adc  e                                           ; $7a32: $8b
	or   a                                           ; $7a33: $b7
	ld   a, c                                        ; $7a34: $79
	and  a                                           ; $7a35: $a7
	ld   l, b                                        ; $7a36: $68
	xor  d                                           ; $7a37: $aa
	sub  a                                           ; $7a38: $97
	ld   e, d                                        ; $7a39: $5a
	cp   c                                           ; $7a3a: $b9
	ld   h, [hl]                                     ; $7a3b: $66
	ld   a, d                                        ; $7a3c: $7a
	sub  l                                           ; $7a3d: $95
	sbc  e                                           ; $7a3e: $9b
	add  a                                           ; $7a3f: $87
	ld   [hl], a                                     ; $7a40: $77
	xor  h                                           ; $7a41: $ac
	and  a                                           ; $7a42: $a7
	ld   e, b                                        ; $7a43: $58
	cp   c                                           ; $7a44: $b9
	add  a                                           ; $7a45: $87
	sbc  c                                           ; $7a46: $99
	sub  a                                           ; $7a47: $97
	ld   a, b                                        ; $7a48: $78
	xor  e                                           ; $7a49: $ab
	ld   [hl], l                                     ; $7a4a: $75
	adc  e                                           ; $7a4b: $8b
	cp   c                                           ; $7a4c: $b9
	ld   h, h                                        ; $7a4d: $64
	ld   a, c                                        ; $7a4e: $79
	add  [hl]                                        ; $7a4f: $86
	ld   a, c                                        ; $7a50: $79
	sbc  b                                           ; $7a51: $98
	halt                                             ; $7a52: $76
	ld   a, e                                        ; $7a53: $7b
	xor  c                                           ; $7a54: $a9
	ld   [hl], a                                     ; $7a55: $77
	sbc  d                                           ; $7a56: $9a
	sub  [hl]                                        ; $7a57: $96
	sbc  c                                           ; $7a58: $99
	xor  d                                           ; $7a59: $aa
	halt                                             ; $7a5a: $76
	sbc  h                                           ; $7a5b: $9c
	add  l                                           ; $7a5c: $85
	ld   l, c                                        ; $7a5d: $69
	sbc  d                                           ; $7a5e: $9a
	add  l                                           ; $7a5f: $85
	ld   d, a                                        ; $7a60: $57
	xor  b                                           ; $7a61: $a8
	halt                                             ; $7a62: $76
	ld   e, c                                        ; $7a63: $59

Jump_0a7_7a64:
	halt                                             ; $7a64: $76
	ld   l, b                                        ; $7a65: $68
	sub  a                                           ; $7a66: $97
	ld   h, [hl]                                     ; $7a67: $66
	sbc  d                                           ; $7a68: $9a
	adc  d                                           ; $7a69: $8a
	cp   d                                           ; $7a6a: $ba
	xor  b                                           ; $7a6b: $a8
	sbc  c                                           ; $7a6c: $99
	sbc  b                                           ; $7a6d: $98
	xor  l                                           ; $7a6e: $ad
	xor  c                                           ; $7a6f: $a9
	sbc  b                                           ; $7a70: $98
	xor  e                                           ; $7a71: $ab
	ld   [hl], h                                     ; $7a72: $74
	ld   l, c                                        ; $7a73: $69
	xor  c                                           ; $7a74: $a9
	ld   b, d                                        ; $7a75: $42
	ld   d, a                                        ; $7a76: $57
	ld   h, l                                        ; $7a77: $65
	inc  de                                          ; $7a78: $13
	add  [hl]                                        ; $7a79: $86
	ld   b, l                                        ; $7a7a: $45
	adc  h                                           ; $7a7b: $8c
	reti                                             ; $7a7c: $d9


	sbc  d                                           ; $7a7d: $9a
	cp   h                                           ; $7a7e: $bc
	reti                                             ; $7a7f: $d9


	ld   a, l                                        ; $7a80: $7d
	call c, $bdb8                                    ; $7a81: $dc $b8 $bd
	ret                                              ; $7a84: $c9


	sbc  b                                           ; $7a85: $98
	sbc  c                                           ; $7a86: $99
	ld   b, d                                        ; $7a87: $42
	ld   [hl+], a                                    ; $7a88: $22
	inc  sp                                          ; $7a89: $33
	ld   de, $7815                                   ; $7a8a: $11 $15 $78
	adc  d                                           ; $7a8d: $8a
	xor  $fa                                         ; $7a8e: $ee $fa
	sbc  d                                           ; $7a90: $9a
	and  [hl]                                        ; $7a91: $a6
	ld   a, l                                        ; $7a92: $7d
	sbc  $ed                                         ; $7a93: $de $ed
	call z, $97aa                                    ; $7a95: $cc $aa $97
	ld   [hl], a                                     ; $7a98: $77
	ld   [hl], l                                     ; $7a99: $75
	ld   sp, $1112                                   ; $7a9a: $31 $12 $11
	ld   de, $9c9d                                   ; $7a9d: $11 $9d $9c
	rst  $20                                         ; $7aa0: $e7
	xor  [hl]                                        ; $7aa1: $ae
	sub  a                                           ; $7aa2: $97
	halt                                             ; $7aa3: $76
	adc  [hl]                                        ; $7aa4: $8e
	db   $dd                                         ; $7aa5: $dd
	db   $fd                                         ; $7aa6: $fd
	db   $eb                                         ; $7aa7: $eb
	adc  b                                           ; $7aa8: $88
	xor  d                                           ; $7aa9: $aa
	sub  [hl]                                        ; $7aaa: $96
	ld   d, [hl]                                     ; $7aab: $56
	ld   d, d                                        ; $7aac: $52
	ld   de, $1121                                   ; $7aad: $11 $21 $11
	ld   c, d                                        ; $7ab0: $4a
	cp   d                                           ; $7ab1: $ba
	and  a                                           ; $7ab2: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab3: $cf
	and  [hl]                                        ; $7ab4: $a6
	ld   [hl], l                                     ; $7ab5: $75
	ld   l, h                                        ; $7ab6: $6c
	xor  $ee                                         ; $7ab7: $ee $ee
	cp   e                                           ; $7ab9: $bb
	cp   b                                           ; $7aba: $b8
	adc  c                                           ; $7abb: $89
	xor  b                                           ; $7abc: $a8
	halt                                             ; $7abd: $76
	ld   h, h                                        ; $7abe: $64
	ld   de, $1114                                   ; $7abf: $11 $14 $11
	rla                                              ; $7ac2: $17
	cp   c                                           ; $7ac3: $b9
	ret                                              ; $7ac4: $c9


	adc  e                                           ; $7ac5: $8b
	jp   z, Jump_0a7_4886                            ; $7ac6: $ca $86 $48

	rst  JumpTable                                         ; $7ac9: $df
	cp   $ba                                         ; $7aca: $fe $ba
	xor  c                                           ; $7acc: $a9
	xor  d                                           ; $7acd: $aa
	sbc  d                                           ; $7ace: $9a
	sub  a                                           ; $7acf: $97
	ld   d, e                                        ; $7ad0: $53
	ld   hl, $2211                                   ; $7ad1: $21 $11 $22
	ld   de, $bcad                                   ; $7ad4: $11 $ad $bc
	adc  e                                           ; $7ad7: $8b
	jp   c, Jump_0a7_7796                            ; $7ad8: $da $96 $77

	xor  l                                           ; $7adb: $ad
	xor  $de                                         ; $7adc: $ee $de
	ret                                              ; $7ade: $c9


	ld   a, c                                        ; $7adf: $79
	xor  d                                           ; $7ae0: $aa
	sub  a                                           ; $7ae1: $97
	ld   h, l                                        ; $7ae2: $65
	ld   d, c                                        ; $7ae3: $51
	ld   de, $2123                                   ; $7ae4: $11 $23 $21
	dec  hl                                          ; $7ae7: $2b
	cp   e                                           ; $7ae8: $bb
	ret  z                                           ; $7ae9: $c8

	cp   e                                           ; $7aea: $bb
	ret                                              ; $7aeb: $c9


	ld   b, [hl]                                     ; $7aec: $46
	ld   a, l                                        ; $7aed: $7d
	cp   $cb                                         ; $7aee: $fe $cb
	call z, $a8a9                                    ; $7af0: $cc $a9 $a8
	sbc  b                                           ; $7af3: $98
	ld   [hl], a                                     ; $7af4: $77
	ld   d, h                                        ; $7af5: $54
	ld   de, $4214                                   ; $7af6: $11 $14 $42
	ld   [de], a                                     ; $7af9: $12
	cp   h                                           ; $7afa: $bc
	db   $fd                                         ; $7afb: $fd
	sbc  e                                           ; $7afc: $9b
	sbc  c                                           ; $7afd: $99
	ld   a, b                                        ; $7afe: $78
	ld   [hl], a                                     ; $7aff: $77
	sbc  $fe                                         ; $7b00: $de $fe
	cp   d                                           ; $7b02: $ba
	xor  d                                           ; $7b03: $aa
	adc  c                                           ; $7b04: $89
	cp   d                                           ; $7b05: $ba
	add  a                                           ; $7b06: $87
	ld   d, l                                        ; $7b07: $55
	ld   b, c                                        ; $7b08: $41
	ld   de, $1132                                   ; $7b09: $11 $32 $11
	inc  l                                           ; $7b0c: $2c
	call z, $9aeb                                    ; $7b0d: $cc $eb $9a
	cp   b                                           ; $7b10: $b8
	ld   h, a                                        ; $7b11: $67
	ld   a, h                                        ; $7b12: $7c
	rst  $38                                         ; $7b13: $ff
	db   $db                                         ; $7b14: $db
	xor  d                                           ; $7b15: $aa
	xor  c                                           ; $7b16: $a9
	cp   c                                           ; $7b17: $b9
	xor  d                                           ; $7b18: $aa
	ld   h, [hl]                                     ; $7b19: $66
	ld   b, d                                        ; $7b1a: $42
	ld   de, $3113                                   ; $7b1b: $11 $13 $31
	ld   de, $bfac                                   ; $7b1e: $11 $ac $bf
	jp   z, $9899                                    ; $7b21: $ca $99 $98

	sub  a                                           ; $7b24: $97
	xor  l                                           ; $7b25: $ad
	sbc  $db                                         ; $7b26: $de $db
	xor  d                                           ; $7b28: $aa
	xor  d                                           ; $7b29: $aa
	cp   c                                           ; $7b2a: $b9
	halt                                             ; $7b2b: $76
	ld   h, l                                        ; $7b2c: $65
	ld   d, h                                        ; $7b2d: $54
	ld   hl, $2112                                   ; $7b2e: $21 $12 $21
	ld   d, $bb                                      ; $7b31: $16 $bb
	call c, $a9ab                                    ; $7b33: $dc $ab $a9
	sub  a                                           ; $7b36: $97
	ld   l, b                                        ; $7b37: $68
	rst  JumpTable                                         ; $7b38: $df
	db   $ed                                         ; $7b39: $ed
	cp   d                                           ; $7b3a: $ba
	xor  h                                           ; $7b3b: $ac
	jp   z, Jump_0a7_6787                            ; $7b3c: $ca $87 $67

	halt                                             ; $7b3f: $76
	ld   d, d                                        ; $7b40: $52
	ld   de, $1122                                   ; $7b41: $11 $22 $11
	add  hl, de                                      ; $7b44: $19
	db   $ed                                         ; $7b45: $ed
	db   $fc                                         ; $7b46: $fc
	xor  b                                           ; $7b47: $a8
	ld   a, c                                        ; $7b48: $79
	ld   l, c                                        ; $7b49: $69
	adc  c                                           ; $7b4a: $89
	xor  $fc                                         ; $7b4b: $ee $fc
	cp   c                                           ; $7b4d: $b9
	adc  d                                           ; $7b4e: $8a
	xor  e                                           ; $7b4f: $ab
	cp   d                                           ; $7b50: $ba
	ld   h, l                                        ; $7b51: $65
	ld   d, h                                        ; $7b52: $54
	ld   b, d                                        ; $7b53: $42
	ld   hl, $1122                                   ; $7b54: $21 $22 $11
	dec  de                                          ; $7b57: $1b
	call $a9fb                                       ; $7b58: $cd $fb $a9
	add  a                                           ; $7b5b: $87
	adc  b                                           ; $7b5c: $88
	ld   a, e                                        ; $7b5d: $7b
	rst  $28                                         ; $7b5e: $ef
	db   $ed                                         ; $7b5f: $ed
	xor  b                                           ; $7b60: $a8
	sbc  d                                           ; $7b61: $9a
	xor  h                                           ; $7b62: $ac
	and  a                                           ; $7b63: $a7
	ld   h, [hl]                                     ; $7b64: $66
	ld   h, l                                        ; $7b65: $65
	ld   b, e                                        ; $7b66: $43
	ld   de, $1131                                   ; $7b67: $11 $31 $11
	ld   a, [de]                                     ; $7b6a: $1a
	rst  $28                                         ; $7b6b: $ef
	ei                                               ; $7b6c: $fb
	sbc  b                                           ; $7b6d: $98
	ld   [hl], a                                     ; $7b6e: $77
	ld   l, c                                        ; $7b6f: $69
	adc  h                                           ; $7b70: $8c
	rst  $38                                         ; $7b71: $ff
	db   $eb                                         ; $7b72: $eb
	add  [hl]                                        ; $7b73: $86
	sbc  e                                           ; $7b74: $9b
	db   $dd                                         ; $7b75: $dd
	xor  b                                           ; $7b76: $a8
	ld   h, [hl]                                     ; $7b77: $66
	ld   d, h                                        ; $7b78: $54
	ld   b, d                                        ; $7b79: $42
	inc  hl                                          ; $7b7a: $23
	ld   [hl-], a                                    ; $7b7b: $32
	ld   de, $ce17                                   ; $7b7c: $11 $17 $ce
	cp   $a9                                         ; $7b7f: $fe $a9
	sub  a                                           ; $7b81: $97
	ld   [hl], a                                     ; $7b82: $77
	ld   a, e                                        ; $7b83: $7b
	rst  JumpTable                                         ; $7b84: $df
	db   $ec                                         ; $7b85: $ec
	cp   b                                           ; $7b86: $b8
	xor  e                                           ; $7b87: $ab
	cp   e                                           ; $7b88: $bb
	sbc  b                                           ; $7b89: $98
	ld   [hl], a                                     ; $7b8a: $77
	ld   h, l                                        ; $7b8b: $65
	ld   d, h                                        ; $7b8c: $54
	ld   [hl-], a                                    ; $7b8d: $32
	ld   hl, $1311                                   ; $7b8e: $21 $11 $13
	call $baff                                       ; $7b91: $cd $ff $ba
	ld   [hl], a                                     ; $7b94: $77
	ld   l, b                                        ; $7b95: $68
	sbc  b                                           ; $7b96: $98
	adc  $dd                                         ; $7b97: $ce $dd
	cp   b                                           ; $7b99: $b8
	adc  e                                           ; $7b9a: $8b
	cp   h                                           ; $7b9b: $bc
	jp   z, $6576                                    ; $7b9c: $ca $76 $65

	ld   d, h                                        ; $7b9f: $54
	inc  sp                                          ; $7ba0: $33
	ld   [hl+], a                                    ; $7ba1: $22
	ld   de, $9c11                                   ; $7ba2: $11 $11 $9c
	rst  $38                                         ; $7ba5: $ff
	jp   hl                                          ; $7ba6: $e9


	sub  l                                           ; $7ba7: $95
	ld   l, b                                        ; $7ba8: $68
	sub  a                                           ; $7ba9: $97
	xor  l                                           ; $7baa: $ad
	rst  $28                                         ; $7bab: $ef
	jp   z, $ab79                                    ; $7bac: $ca $79 $ab

	db   $db                                         ; $7baf: $db
	and  a                                           ; $7bb0: $a7
	ld   h, l                                        ; $7bb1: $65
	ld   d, l                                        ; $7bb2: $55
	inc  sp                                          ; $7bb3: $33
	ld   [hl-], a                                    ; $7bb4: $32
	ld   hl, $1811                                   ; $7bb5: $21 $11 $18
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bb8: $cf
	db   $fc                                         ; $7bb9: $fc
	and  a                                           ; $7bba: $a7
	ld   b, [hl]                                     ; $7bbb: $46
	adc  d                                           ; $7bbc: $8a
	adc  e                                           ; $7bbd: $8b
	sbc  $fe                                         ; $7bbe: $de $fe
	xor  b                                           ; $7bc0: $a8
	adc  c                                           ; $7bc1: $89
	cp   l                                           ; $7bc2: $bd
	jp   z, Jump_0a7_4675                            ; $7bc3: $ca $75 $46

	ld   h, l                                        ; $7bc6: $65
	ld   d, e                                        ; $7bc7: $53
	ld   de, $1111                                   ; $7bc8: $11 $11 $11
	ld   l, h                                        ; $7bcb: $6c
	rst  $38                                         ; $7bcc: $ff
	db   $fc                                         ; $7bcd: $fc
	add  e                                           ; $7bce: $83
	dec  h                                           ; $7bcf: $25
	xor  e                                           ; $7bd0: $ab
	rst  $28                                         ; $7bd1: $ef
	db   $ed                                         ; $7bd2: $ed
	ret                                              ; $7bd3: $c9


	adc  c                                           ; $7bd4: $89
	sbc  d                                           ; $7bd5: $9a
	call c, Call_0a7_75a8                            ; $7bd6: $dc $a8 $75
	ld   d, l                                        ; $7bd9: $55
	ld   d, l                                        ; $7bda: $55
	ld   b, d                                        ; $7bdb: $42
	ld   de, $1211                                   ; $7bdc: $11 $11 $12
	cp   a                                           ; $7bdf: $bf
	rst  $38                                         ; $7be0: $ff
	ei                                               ; $7be1: $fb
	ld   d, e                                        ; $7be2: $53
	ld   b, a                                        ; $7be3: $47
	sbc  e                                           ; $7be4: $9b
	rst  $28                                         ; $7be5: $ef
	xor  $c9                                         ; $7be6: $ee $c9
	adc  c                                           ; $7be8: $89
	xor  h                                           ; $7be9: $ac
	db   $db                                         ; $7bea: $db
	and  a                                           ; $7beb: $a7
	ld   d, h                                        ; $7bec: $54
	ld   d, [hl]                                     ; $7bed: $56
	ld   h, l                                        ; $7bee: $65
	ld   sp, $1111                                   ; $7bef: $31 $11 $11
	dec  d                                           ; $7bf2: $15
	cp   a                                           ; $7bf3: $bf
	rst  $38                                         ; $7bf4: $ff
	ld   sp, hl                                      ; $7bf5: $f9
	inc  sp                                          ; $7bf6: $33
	ld   e, b                                        ; $7bf7: $58
	xor  l                                           ; $7bf8: $ad
	cp   $ec                                         ; $7bf9: $fe $ec

jr_0a7_7bfb:
	xor  c                                           ; $7bfb: $a9
	sbc  c                                           ; $7bfc: $99
	xor  h                                           ; $7bfd: $ac
	res  2, a                                        ; $7bfe: $cb $97
	ld   h, l                                        ; $7c00: $65
	ld   d, l                                        ; $7c01: $55
	ld   d, l                                        ; $7c02: $55
	ld   hl, $1111                                   ; $7c03: $21 $11 $11
	ld   d, $df                                      ; $7c06: $16 $df
	rst  $38                                         ; $7c08: $ff
	ld   [$5823], a                                  ; $7c09: $ea $23 $58
	xor  l                                           ; $7c0c: $ad
	db   $ed                                         ; $7c0d: $ed
	db   $ed                                         ; $7c0e: $ed
	xor  d                                           ; $7c0f: $aa
	sbc  c                                           ; $7c10: $99
	xor  l                                           ; $7c11: $ad
	res  2, a                                        ; $7c12: $cb $97
	ld   d, l                                        ; $7c14: $55
	ld   d, l                                        ; $7c15: $55
	ld   d, h                                        ; $7c16: $54
	ld   de, $1111                                   ; $7c17: $11 $11 $11
	jr   jr_0a7_7bfb                                 ; $7c1a: $18 $df

	rst  $38                                         ; $7c1c: $ff
	ret  c                                           ; $7c1d: $d8

	inc  hl                                          ; $7c1e: $23
	ld   l, c                                        ; $7c1f: $69
	cp   [hl]                                        ; $7c20: $be
	db   $ed                                         ; $7c21: $ed
	db   $ec                                         ; $7c22: $ec
	xor  d                                           ; $7c23: $aa
	sbc  d                                           ; $7c24: $9a
	cp   l                                           ; $7c25: $bd
	res  2, [hl]                                     ; $7c26: $cb $96
	ld   d, l                                        ; $7c28: $55
	ld   d, l                                        ; $7c29: $55
	ld   d, h                                        ; $7c2a: $54
	ld   hl, $1111                                   ; $7c2b: $21 $11 $11
	rla                                              ; $7c2e: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c2f: $cf
	rst  $38                                         ; $7c30: $ff
	ei                                               ; $7c31: $fb
	ld   b, e                                        ; $7c32: $43
	ld   e, b                                        ; $7c33: $58
	xor  l                                           ; $7c34: $ad
	db   $fd                                         ; $7c35: $fd
	db   $ed                                         ; $7c36: $ed
	xor  c                                           ; $7c37: $a9
	sbc  e                                           ; $7c38: $9b
	xor  l                                           ; $7c39: $ad
	cp   c                                           ; $7c3a: $b9
	sub  a                                           ; $7c3b: $97
	ld   h, [hl]                                     ; $7c3c: $66
	ld   h, l                                        ; $7c3d: $65
	ld   b, h                                        ; $7c3e: $44
	ld   hl, $1111                                   ; $7c3f: $21 $11 $11
	ld   de, $ffbf                                   ; $7c42: $11 $bf $ff
	cp   $62                                         ; $7c45: $fe $62
	ld   h, $9c                                      ; $7c47: $26 $9c
	rst  $38                                         ; $7c49: $ff
	call c, $ab9a                                    ; $7c4a: $dc $9a $ab
	call z, $a8ca                                    ; $7c4d: $cc $ca $a8
	halt                                             ; $7c50: $76
	ld   h, l                                        ; $7c51: $65
	ld   d, l                                        ; $7c52: $55
	ld   sp, $1111                                   ; $7c53: $31 $11 $11

Call_0a7_7c56:
	ld   de, $ff7c                                   ; $7c56: $11 $7c $ff
	rst  $38                                         ; $7c59: $ff
	jp   $6922                                       ; $7c5a: $c3 $22 $69


	rst  $38                                         ; $7c5d: $ff
	cp   $a9                                         ; $7c5e: $fe $a9
	sbc  d                                           ; $7c60: $9a
	call $a8db                                       ; $7c61: $cd $db $a8
	ld   [hl], a                                     ; $7c64: $77
	halt                                             ; $7c65: $76
	ld   d, l                                        ; $7c66: $55
	ld   b, d                                        ; $7c67: $42
	ld   de, $1111                                   ; $7c68: $11 $11 $11
	add  hl, de                                      ; $7c6b: $19
	rst  $28                                         ; $7c6c: $ef
	rst  $38                                         ; $7c6d: $ff
	ei                                               ; $7c6e: $fb
	ld   hl, $cf47                                   ; $7c6f: $21 $47 $cf
	db   $fd                                         ; $7c72: $fd
	jp   z, $bc7a                                    ; $7c73: $ca $7a $bc

	db   $ec                                         ; $7c76: $ec
	cp   b                                           ; $7c77: $b8
	add  a                                           ; $7c78: $87
	ld   [hl], a                                     ; $7c79: $77
	ld   h, l                                        ; $7c7a: $65
	ld   d, e                                        ; $7c7b: $53
	ld   hl, $1111                                   ; $7c7c: $21 $11 $11
	ld   de, $ffaf                                   ; $7c7f: $11 $af $ff
	rst  $38                                         ; $7c82: $ff
	or   d                                           ; $7c83: $b2
	inc  h                                           ; $7c84: $24
	adc  e                                           ; $7c85: $8b
	rst  $38                                         ; $7c86: $ff
	call c, $9b97                                    ; $7c87: $dc $97 $9b
	adc  $db                                         ; $7c8a: $ce $db
	sbc  c                                           ; $7c8c: $99
	ld   [hl], a                                     ; $7c8d: $77
	add  a                                           ; $7c8e: $87
	ld   d, [hl]                                     ; $7c8f: $56
	ld   b, d                                        ; $7c90: $42
	ld   de, $1111                                   ; $7c91: $11 $11 $11
	rla                                              ; $7c94: $17
	rst  JumpTable                                         ; $7c95: $df
	rst  $38                                         ; $7c96: $ff
	db   $fd                                         ; $7c97: $fd
	ld   hl, $af26                                   ; $7c98: $21 $26 $af
	rst  $38                                         ; $7c9b: $ff
	reti                                             ; $7c9c: $d9


	ld   b, a                                        ; $7c9d: $47
	xor  h                                           ; $7c9e: $ac
	rst  $38                                         ; $7c9f: $ff
	ret                                              ; $7ca0: $c9


	ld   [hl], l                                     ; $7ca1: $75
	ld   l, c                                        ; $7ca2: $69
	sub  a                                           ; $7ca3: $97
	ld   [hl], h                                     ; $7ca4: $74
	ld   hl, $1111                                   ; $7ca5: $21 $11 $11
	ld   de, $ff1a                                   ; $7ca8: $11 $1a $ff
	rst  $38                                         ; $7cab: $ff
	rst  $30                                         ; $7cac: $f7
	ld   de, $ef28                                   ; $7cad: $11 $28 $ef
	db   $fd                                         ; $7cb0: $fd
	and  e                                           ; $7cb1: $a3
	ld   c, b                                        ; $7cb2: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cb3: $cf
	rst  $38                                         ; $7cb4: $ff
	ret  z                                           ; $7cb5: $c8

	ld   d, h                                        ; $7cb6: $54
	ld   h, a                                        ; $7cb7: $67
	adc  b                                           ; $7cb8: $88
	ld   [hl], h                                     ; $7cb9: $74
	ld   de, $1111                                   ; $7cba: $11 $11 $11
	ld   de, $ff6d                                   ; $7cbd: $11 $6d $ff
	rst  $38                                         ; $7cc0: $ff
	db   $f4                                         ; $7cc1: $f4
	ld   de, $ff38                                   ; $7cc2: $11 $38 $ff
	db   $ed                                         ; $7cc5: $ed
	ld   [hl], e                                     ; $7cc6: $73
	ld   e, c                                        ; $7cc7: $59
	rst  JumpTable                                         ; $7cc8: $df
	rst  $38                                         ; $7cc9: $ff
	or   a                                           ; $7cca: $b7
	ld   b, h                                        ; $7ccb: $44
	ld   l, c                                        ; $7ccc: $69
	sbc  c                                           ; $7ccd: $99
	ld   [hl], h                                     ; $7cce: $74
	ld   hl, $1111                                   ; $7ccf: $21 $11 $11
	ld   de, $ff7e                                   ; $7cd2: $11 $7e $ff
	rst  $38                                         ; $7cd5: $ff
	ldh  a, [c]                                      ; $7cd6: $f2
	ld   de, $ff4a                                   ; $7cd7: $11 $4a $ff
	jp   c, Jump_0a7_5a51                            ; $7cda: $da $51 $5a

	rst  $28                                         ; $7cdd: $ef
	rst  $38                                         ; $7cde: $ff
	or   [hl]                                        ; $7cdf: $b6
	inc  hl                                          ; $7ce0: $23
	ld   a, c                                        ; $7ce1: $79
	xor  e                                           ; $7ce2: $ab
	ld   [hl], d                                     ; $7ce3: $72
	ld   de, $1111                                   ; $7ce4: $11 $11 $11
	ld   de, $ffbf                                   ; $7ce7: $11 $bf $ff
	rst  $38                                         ; $7cea: $ff
	or   c                                           ; $7ceb: $b1
	ld   de, $ff5c                                   ; $7cec: $11 $5c $ff
	cp   c                                           ; $7cef: $b9
	ld   hl, $ff7b                                   ; $7cf0: $21 $7b $ff
	rst  $38                                         ; $7cf3: $ff
	sub  h                                           ; $7cf4: $94
	ld   [de], a                                     ; $7cf5: $12
	ld   a, c                                        ; $7cf6: $79
	cp   e                                           ; $7cf7: $bb
	ld   h, c                                        ; $7cf8: $61
	ld   de, $1111                                   ; $7cf9: $11 $11 $11
	add  hl, de                                      ; $7cfc: $19
	rst  $28                                         ; $7cfd: $ef
	rst  $38                                         ; $7cfe: $ff
	rst  $38                                         ; $7cff: $ff
	ld   de, $8e12                                   ; $7d00: $11 $12 $8e
	ld   a, [$1595]                                  ; $7d03: $fa $95 $15
	xor  a                                           ; $7d06: $af
	rst  $38                                         ; $7d07: $ff
	db   $fc                                         ; $7d08: $fc
	ld   [hl], c                                     ; $7d09: $71
	dec  d                                           ; $7d0a: $15
	adc  e                                           ; $7d0b: $8b
	jp   c, $1121                                    ; $7d0c: $da $21 $11

	ld   de, $df11                                   ; $7d0f: $11 $11 $df
	rst  $38                                         ; $7d12: $ff
	rst  $38                                         ; $7d13: $ff
	pop  af                                          ; $7d14: $f1
	ld   bc, $cf29                                   ; $7d15: $01 $29 $cf
	sbc  b                                           ; $7d18: $98
	ld   d, c                                        ; $7d19: $51
	ld   a, e                                        ; $7d1a: $7b
	rst  $38                                         ; $7d1b: $ff
	rst  $38                                         ; $7d1c: $ff
	or   a                                           ; $7d1d: $b7
	ld   de, $be57                                   ; $7d1e: $11 $57 $be
	sub  c                                           ; $7d21: $91
	ld   de, $1111                                   ; $7d22: $11 $11 $11
	ld   e, a                                        ; $7d25: $5f
	rst  $38                                         ; $7d26: $ff
	rst  $38                                         ; $7d27: $ff
	or   $13                                         ; $7d28: $f6 $13
	rla                                              ; $7d2a: $17
	cp   a                                           ; $7d2b: $bf
	or   h                                           ; $7d2c: $b4
	ld   [hl], c                                     ; $7d2d: $71
	dec  a                                           ; $7d2e: $3d
	rst  $28                                         ; $7d2f: $ef
	rst  $38                                         ; $7d30: $ff
	ld   hl, sp+$31                                  ; $7d31: $f8 $31
	daa                                              ; $7d33: $27
	sbc  h                                           ; $7d34: $9c
	or   d                                           ; $7d35: $b2
	ld   de, $1111                                   ; $7d36: $11 $11 $11
	adc  a                                           ; $7d39: $8f
	rst  $38                                         ; $7d3a: $ff
	rst  $38                                         ; $7d3b: $ff
	pop  af                                          ; $7d3c: $f1
	ld   de, $be1a                                   ; $7d3d: $11 $1a $be
	add  h                                           ; $7d40: $84
	ld   b, c                                        ; $7d41: $41
	ld   l, l                                        ; $7d42: $6d
	rst  $38                                         ; $7d43: $ff
	rst  $38                                         ; $7d44: $ff
	and  $11                                         ; $7d45: $e6 $11
	scf                                              ; $7d47: $37
	cp   [hl]                                        ; $7d48: $be
	sub  c                                           ; $7d49: $91
	ld   de, $1111                                   ; $7d4a: $11 $11 $11
	rst  $38                                         ; $7d4d: $ff
	rst  $38                                         ; $7d4e: $ff
	rst  $38                                         ; $7d4f: $ff
	ld   de, $ae21                                   ; $7d50: $11 $21 $ae
	jp   hl                                          ; $7d53: $e9


	ld   [hl+], a                                    ; $7d54: $22
	inc  de                                          ; $7d55: $13
	rst  $28                                         ; $7d56: $ef
	rst  $38                                         ; $7d57: $ff
	rst  $38                                         ; $7d58: $ff
	ld   h, c                                        ; $7d59: $61
	ld   de, $f96a                                   ; $7d5a: $11 $6a $f9
	ld   de, $1111                                   ; $7d5d: $11 $11 $11
	sbc  a                                           ; $7d60: $9f
	rst  $38                                         ; $7d61: $ff
	rst  $38                                         ; $7d62: $ff
	pop  hl                                          ; $7d63: $e1
	ld   de, $ed1f                                   ; $7d64: $11 $1f $ed
	ld   sp, $af11                                   ; $7d67: $31 $11 $af
	rst  $38                                         ; $7d6a: $ff
	rst  $38                                         ; $7d6b: $ff
	and  c                                           ; $7d6c: $a1
	ld   de, $ee47                                   ; $7d6d: $11 $47 $ee
	ld   sp, $1111                                   ; $7d70: $31 $11 $11
	xor  a                                           ; $7d73: $af
	rst  $38                                         ; $7d74: $ff
	rst  $38                                         ; $7d75: $ff
	and  c                                           ; $7d76: $a1
	ld   de, $fd2f                                   ; $7d77: $11 $2f $fd
	ld   sp, $9f11                                   ; $7d7a: $31 $11 $9f
	rst  $38                                         ; $7d7d: $ff
	rst  $38                                         ; $7d7e: $ff
	or   c                                           ; $7d7f: $b1
	ld   de, $fd48                                   ; $7d80: $11 $48 $fd
	ld   de, $1311                                   ; $7d83: $11 $11 $13
	rst  $38                                         ; $7d86: $ff
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	ld   de, $df11                                   ; $7d89: $11 $11 $df
	or   $11                                         ; $7d8c: $f6 $11
	inc  de                                          ; $7d8e: $13
	rst  $38                                         ; $7d8f: $ff
	rst  $38                                         ; $7d90: $ff
	db   $fc                                         ; $7d91: $fc
	ld   de, $6d12                                   ; $7d92: $11 $12 $6d
	ldh  a, [c]                                      ; $7d95: $f2
	ld   de, $6f11                                   ; $7d96: $11 $11 $6f
	rst  $38                                         ; $7d99: $ff
	rst  $38                                         ; $7d9a: $ff
	ld   de, $5c11                                   ; $7d9b: $11 $11 $5c
	rst  $38                                         ; $7d9e: $ff
	ld   b, c                                        ; $7d9f: $41
	ld   de, $ff6f                                   ; $7da0: $11 $6f $ff
	rst  $38                                         ; $7da3: $ff
	ld   d, c                                        ; $7da4: $51
	ld   de, $e918                                   ; $7da5: $11 $18 $e9
	ld   de, $1f11                                   ; $7da8: $11 $11 $1f
	rst  $38                                         ; $7dab: $ff
	rst  $38                                         ; $7dac: $ff
	ld   de, $2b11                                   ; $7dad: $11 $11 $2b
	rst  $38                                         ; $7db0: $ff
	sub  d                                           ; $7db1: $92
	ld   de, $ff6f                                   ; $7db2: $11 $6f $ff
	rst  $38                                         ; $7db5: $ff
	ld   sp, $1911                                   ; $7db6: $31 $11 $19
	db   $d3                                         ; $7db9: $d3
	ld   de, $9f11                                   ; $7dba: $11 $11 $9f
	rst  $38                                         ; $7dbd: $ff
	ei                                               ; $7dbe: $fb
	ld   de, $2f11                                   ; $7dbf: $11 $11 $2f
	rst  $38                                         ; $7dc2: $ff
	add  c                                           ; $7dc3: $81
	ld   de, $ff9f                                   ; $7dc4: $11 $9f $ff
	ld   a, [$1111]                                  ; $7dc7: $fa $11 $11
	ld   l, $71                                      ; $7dca: $2e $71
	ld   de, rAUD1LOW                                   ; $7dcc: $11 $13 $ff
	rst  $38                                         ; $7dcf: $ff
	db   $f4                                         ; $7dd0: $f4
	ld   de, $af11                                   ; $7dd1: $11 $11 $af
	cp   $11                                         ; $7dd4: $fe $11
	dec  d                                           ; $7dd6: $15
	rst  $38                                         ; $7dd7: $ff
	rst  $38                                         ; $7dd8: $ff
	pop  af                                          ; $7dd9: $f1
	ld   de, $9811                                   ; $7dda: $11 $11 $98
	ld   d, c                                        ; $7ddd: $51
	ld   de, $ff1f                                   ; $7dde: $11 $1f $ff
	rst  $38                                         ; $7de1: $ff
	or   c                                           ; $7de2: $b1
	ld   de, rAUD1LOW                                   ; $7de3: $11 $13 $ff
	push af                                          ; $7de6: $f5
	ld   de, $ff1f                                   ; $7de7: $11 $1f $ff
	rst  $38                                         ; $7dea: $ff
	sub  c                                           ; $7deb: $91
	ld   de, $6713                                   ; $7dec: $11 $13 $67
	ld   de, $bf11                                   ; $7def: $11 $11 $bf
	rst  $38                                         ; $7df2: $ff
	rst  $38                                         ; $7df3: $ff
	ld   hl, $1911                                   ; $7df4: $21 $11 $19
	rst  $28                                         ; $7df7: $ef
	or   h                                           ; $7df8: $b4
	ld   de, $ffcf                                   ; $7df9: $11 $cf $ff
	rst  $38                                         ; $7dfc: $ff
	ld   de, $1211                                   ; $7dfd: $11 $11 $12
	ld   d, e                                        ; $7e00: $53
	ld   de, $ff19                                   ; $7e01: $11 $19 $ff
	rst  $38                                         ; $7e04: $ff
	ld   a, [$1111]                                  ; $7e05: $fa $11 $11
	add  hl, sp                                      ; $7e08: $39
	db   $fc                                         ; $7e09: $fc
	halt                                             ; $7e0a: $76
	add  hl, hl                                      ; $7e0b: $29
	rst  $38                                         ; $7e0c: $ff
	rst  $38                                         ; $7e0d: $ff
	rst  $30                                         ; $7e0e: $f7
	ld   de, $1211                                   ; $7e0f: $11 $11 $12
	ld   sp, $6f11                                   ; $7e12: $31 $11 $6f
	rst  $38                                         ; $7e15: $ff
	rst  $38                                         ; $7e16: $ff
	pop  de                                          ; $7e17: $d1
	ld   de, $5c11                                   ; $7e18: $11 $11 $5c
	ret                                              ; $7e1b: $c9


	sub  l                                           ; $7e1c: $95
	sbc  a                                           ; $7e1d: $9f
	rst  $38                                         ; $7e1e: $ff
	rst  $38                                         ; $7e1f: $ff
	and  c                                           ; $7e20: $a1
	ld   de, $1311                                   ; $7e21: $11 $11 $13
	ld   de, rAUDTERM                                   ; $7e24: $11 $25 $ff
	rst  $38                                         ; $7e27: $ff
	rst  $38                                         ; $7e28: $ff
	ld   sp, $1311                                   ; $7e29: $31 $11 $13
	xor  e                                           ; $7e2c: $ab
	sbc  c                                           ; $7e2d: $99
	ld   l, c                                        ; $7e2e: $69
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	db   $fd                                         ; $7e31: $fd
	ld   hl, $1111                                   ; $7e32: $21 $11 $11
	ld   hl, $5e22                                   ; $7e35: $21 $22 $5e
	rst  $38                                         ; $7e38: $ff
	rst  $38                                         ; $7e39: $ff
	or   $11                                         ; $7e3a: $f6 $11
	ld   de, $a927                                   ; $7e3c: $11 $27 $a9
	and  a                                           ; $7e3f: $a7
	sbc  [hl]                                        ; $7e40: $9e
	rst  $38                                         ; $7e41: $ff
	rst  $38                                         ; $7e42: $ff
	db   $e4                                         ; $7e43: $e4
	ld   de, $1211                                   ; $7e44: $11 $11 $12
	ld   de, $cf34                                   ; $7e47: $11 $34 $cf
	rst  $38                                         ; $7e4a: $ff
	rst  $38                                         ; $7e4b: $ff
	sub  c                                           ; $7e4c: $91
	ld   de, $6a12                                   ; $7e4d: $11 $12 $6a
	adc  c                                           ; $7e50: $89
	ld   a, b                                        ; $7e51: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e52: $cf
	rst  $38                                         ; $7e53: $ff
	rst  $38                                         ; $7e54: $ff
	ld   [hl], c                                     ; $7e55: $71
	ld   de, $4411                                   ; $7e56: $11 $11 $44
	inc  hl                                          ; $7e59: $23
	ld   h, $df                                      ; $7e5a: $26 $df
	rst  $38                                         ; $7e5c: $ff
	cp   $51                                         ; $7e5d: $fe $51
	ld   de, $ab14                                   ; $7e5f: $11 $14 $ab
	xor  c                                           ; $7e62: $a9
	ld   a, c                                        ; $7e63: $79
	cp   a                                           ; $7e64: $bf
	rst  $38                                         ; $7e65: $ff
	db   $fd                                         ; $7e66: $fd
	ld   h, c                                        ; $7e67: $61
	ld   de, $7813                                   ; $7e68: $11 $13 $78
	ld   [hl], l                                     ; $7e6b: $75
	inc  sp                                          ; $7e6c: $33
	ld   a, l                                        ; $7e6d: $7d
	rst  $38                                         ; $7e6e: $ff
	rst  $38                                         ; $7e6f: $ff
	sub  d                                           ; $7e70: $92
	ld   de, $9d14                                   ; $7e71: $11 $14 $9d
	db   $dd                                         ; $7e74: $dd
	xor  c                                           ; $7e75: $a9
	sbc  e                                           ; $7e76: $9b
	rst  JumpTable                                         ; $7e77: $df
	cp   $94                                         ; $7e78: $fe $94
	ld   de, $6a11                                   ; $7e7a: $11 $11 $6a
	cp   e                                           ; $7e7d: $bb
	ld   [hl], h                                     ; $7e7e: $74
	inc  sp                                          ; $7e7f: $33
	ld   l, d                                        ; $7e80: $6a
	rst  $28                                         ; $7e81: $ef
	db   $fc                                         ; $7e82: $fc
	ld   [hl], e                                     ; $7e83: $73
	ld   de, $cf49                                   ; $7e84: $11 $49 $cf
	db   $eb                                         ; $7e87: $eb
	ld   [hl], h                                     ; $7e88: $74
	inc  [hl]                                        ; $7e89: $34
	ld   a, d                                        ; $7e8a: $7a
	call Call_0a7_54b9                               ; $7e8b: $cd $b9 $54
	ld   b, [hl]                                     ; $7e8e: $46
	sbc  d                                           ; $7e8f: $9a
	cp   c                                           ; $7e90: $b9
	ld   d, d                                        ; $7e91: $52
	ld   de, $9c16                                   ; $7e92: $11 $16 $9c
	rst  $38                                         ; $7e95: $ff
	ret                                              ; $7e96: $c9


	ld   [hl], l                                     ; $7e97: $75
	ld   h, a                                        ; $7e98: $67
	sbc  d                                           ; $7e99: $9a
	xor  c                                           ; $7e9a: $a9
	ld   [hl], l                                     ; $7e9b: $75
	ld   d, [hl]                                     ; $7e9c: $56
	xor  l                                           ; $7e9d: $ad
	rst  $38                                         ; $7e9e: $ff
	ld   [$1163], a                                  ; $7e9f: $ea $63 $11
	dec  [hl]                                        ; $7ea2: $35
	ld   h, [hl]                                     ; $7ea3: $66
	ld   d, e                                        ; $7ea4: $53
	ld   [hl], $9d                                   ; $7ea5: $36 $9d
	rst  $38                                         ; $7ea7: $ff
	db   $fc                                         ; $7ea8: $fc
	ld   h, d                                        ; $7ea9: $62
	ld   de, $9b37                                   ; $7eaa: $11 $37 $9b
	cp   d                                           ; $7ead: $ba
	sbc  c                                           ; $7eae: $99
	cp   l                                           ; $7eaf: $bd
	rst  JumpTable                                         ; $7eb0: $df
	reti                                             ; $7eb1: $d9


	ld   h, c                                        ; $7eb2: $61
	ld   de, $8b15                                   ; $7eb3: $11 $15 $8b
	call $bacb                                       ; $7eb6: $cd $cb $ba
	sbc  c                                           ; $7eb9: $99
	add  [hl]                                        ; $7eba: $86
	ld   b, d                                        ; $7ebb: $42
	ld   de, $8b25                                   ; $7ebc: $11 $25 $8b
	sbc  $ed                                         ; $7ebf: $de $ed
	cp   d                                           ; $7ec1: $ba
	add  a                                           ; $7ec2: $87
	halt                                             ; $7ec3: $76
	ld   h, l                                        ; $7ec4: $65
	ld   d, h                                        ; $7ec5: $54
	ld   b, h                                        ; $7ec6: $44
	ld   d, a                                        ; $7ec7: $57
	halt                                             ; $7ec8: $76
	ld   l, b                                        ; $7ec9: $68
	adc  e                                           ; $7eca: $8b
	call z, Call_0a7_76da                            ; $7ecb: $cc $da $76
	ld   b, l                                        ; $7ece: $45
	ld   l, b                                        ; $7ecf: $68
	sbc  d                                           ; $7ed0: $9a
	xor  b                                           ; $7ed1: $a8
	add  a                                           ; $7ed2: $87
	ld   a, d                                        ; $7ed3: $7a
	cp   h                                           ; $7ed4: $bc
	db   $ec                                         ; $7ed5: $ec
	xor  b                                           ; $7ed6: $a8
	ld   b, e                                        ; $7ed7: $43
	inc  [hl]                                        ; $7ed8: $34
	ld   l, c                                        ; $7ed9: $69
	xor  d                                           ; $7eda: $aa
	xor  b                                           ; $7edb: $a8
	sbc  c                                           ; $7edc: $99
	sbc  d                                           ; $7edd: $9a
	cp   d                                           ; $7ede: $ba
	sub  a                                           ; $7edf: $97
	ld   b, d                                        ; $7ee0: $42
	ld   de, $ad36                                   ; $7ee1: $11 $36 $ad
	rst  $38                                         ; $7ee4: $ff
	db   $db                                         ; $7ee5: $db
	add  [hl]                                        ; $7ee6: $86
	ld   d, h                                        ; $7ee7: $54
	ld   d, [hl]                                     ; $7ee8: $56
	ld   h, a                                        ; $7ee9: $67
	halt                                             ; $7eea: $76
	ld   a, b                                        ; $7eeb: $78
	sbc  e                                           ; $7eec: $9b
	call $96cb                                       ; $7eed: $cd $cb $96
	ld   b, d                                        ; $7ef0: $42
	ld   [hl+], a                                    ; $7ef1: $22
	inc  hl                                          ; $7ef2: $23
	ld   d, a                                        ; $7ef3: $57
	xor  h                                           ; $7ef4: $ac
	rst  $38                                         ; $7ef5: $ff
	db   $fd                                         ; $7ef6: $fd
	and  a                                           ; $7ef7: $a7
	ld   b, e                                        ; $7ef8: $43
	ld   [hl+], a                                    ; $7ef9: $22
	dec  [hl]                                        ; $7efa: $35
	ld   l, c                                        ; $7efb: $69
	xor  e                                           ; $7efc: $ab
	rst  $28                                         ; $7efd: $ef
	xor  $d9                                         ; $7efe: $ee $d9
	ld   [hl], l                                     ; $7f00: $75
	ld   [hl-], a                                    ; $7f01: $32
	inc  [hl]                                        ; $7f02: $34
	ld   h, a                                        ; $7f03: $67
	sbc  e                                           ; $7f04: $9b
	call z, $bacb                                    ; $7f05: $cc $cb $ba
	add  [hl]                                        ; $7f08: $86
	ld   d, h                                        ; $7f09: $54
	inc  sp                                          ; $7f0a: $33
	inc  [hl]                                        ; $7f0b: $34
	ld   l, b                                        ; $7f0c: $68
	xor  h                                           ; $7f0d: $ac
	db   $dd                                         ; $7f0e: $dd
	call c, Call_0a7_54a7                            ; $7f0f: $dc $a7 $54
	ld   b, l                                        ; $7f12: $45
	ld   h, a                                        ; $7f13: $67
	ld   a, c                                        ; $7f14: $79
	sbc  c                                           ; $7f15: $99
	sbc  b                                           ; $7f16: $98
	ld   h, h                                        ; $7f17: $64
	inc  [hl]                                        ; $7f18: $34
	ld   e, c                                        ; $7f19: $59
	cp   h                                           ; $7f1a: $bc
	jp   c, Jump_0a7_5686                            ; $7f1b: $da $86 $56

	adc  d                                           ; $7f1e: $8a
	cp   e                                           ; $7f1f: $bb
	sub  [hl]                                        ; $7f20: $96
	ld   d, e                                        ; $7f21: $53
	ld   b, a                                        ; $7f22: $47
	sbc  h                                           ; $7f23: $9c
	db   $ec                                         ; $7f24: $ec
	xor  b                                           ; $7f25: $a8
	ld   d, l                                        ; $7f26: $55
	ld   h, a                                        ; $7f27: $67
	sbc  d                                           ; $7f28: $9a
	cp   d                                           ; $7f29: $ba
	add  a                                           ; $7f2a: $87
	ld   a, b                                        ; $7f2b: $78
	xor  h                                           ; $7f2c: $ac
	res  2, a                                        ; $7f2d: $cb $97
	ld   d, h                                        ; $7f2f: $54
	ld   b, l                                        ; $7f30: $45
	ld   a, b                                        ; $7f31: $78
	xor  c                                           ; $7f32: $a9
	sbc  b                                           ; $7f33: $98
	adc  b                                           ; $7f34: $88
	adc  c                                           ; $7f35: $89
	xor  d                                           ; $7f36: $aa
	xor  b                                           ; $7f37: $a8
	ld   h, l                                        ; $7f38: $65
	ld   d, [hl]                                     ; $7f39: $56
	ld   a, b                                        ; $7f3a: $78
	sbc  e                                           ; $7f3b: $9b
	xor  c                                           ; $7f3c: $a9
	add  a                                           ; $7f3d: $87
	ld   [hl], a                                     ; $7f3e: $77
	ld   a, b                                        ; $7f3f: $78
	ld   [hl], a                                     ; $7f40: $77
	halt                                             ; $7f41: $76
	ld   [hl], a                                     ; $7f42: $77
	sbc  d                                           ; $7f43: $9a
	xor  d                                           ; $7f44: $aa
	sbc  c                                           ; $7f45: $99
	add  a                                           ; $7f46: $87
	halt                                             ; $7f47: $76
	ld   [hl], a                                     ; $7f48: $77
	ld   a, b                                        ; $7f49: $78
	add  a                                           ; $7f4a: $87
	ld   a, b                                        ; $7f4b: $78
	adc  b                                           ; $7f4c: $88
	sbc  d                                           ; $7f4d: $9a
	sbc  b                                           ; $7f4e: $98
	add  a                                           ; $7f4f: $87
	ld   [hl], a                                     ; $7f50: $77
	ld   a, b                                        ; $7f51: $78
	sbc  c                                           ; $7f52: $99
	sbc  c                                           ; $7f53: $99
	adc  c                                           ; $7f54: $89
	adc  b                                           ; $7f55: $88
	adc  b                                           ; $7f56: $88
	add  a                                           ; $7f57: $87
	ld   [hl], a                                     ; $7f58: $77
	ld   [hl], a                                     ; $7f59: $77
	ld   a, b                                        ; $7f5a: $78
	sbc  c                                           ; $7f5b: $99
	sbc  c                                           ; $7f5c: $99
	adc  c                                           ; $7f5d: $89
	adc  b                                           ; $7f5e: $88
	adc  b                                           ; $7f5f: $88
	adc  b                                           ; $7f60: $88
	adc  b                                           ; $7f61: $88
	adc  b                                           ; $7f62: $88
	adc  b                                           ; $7f63: $88
	sbc  b                                           ; $7f64: $98
	adc  c                                           ; $7f65: $89
	adc  b                                           ; $7f66: $88
	ld   [hl], a                                     ; $7f67: $77
	ld   [hl], a                                     ; $7f68: $77
	ld   a, b                                        ; $7f69: $78
	adc  b                                           ; $7f6a: $88
	sbc  c                                           ; $7f6b: $99
	sbc  c                                           ; $7f6c: $99
	adc  b                                           ; $7f6d: $88
	adc  c                                           ; $7f6e: $89
	adc  b                                           ; $7f6f: $88
	ld   [hl], a                                     ; $7f70: $77
	ld   [hl], a                                     ; $7f71: $77
	adc  b                                           ; $7f72: $88
	adc  c                                           ; $7f73: $89
	sbc  b                                           ; $7f74: $98
	adc  b                                           ; $7f75: $88
	adc  b                                           ; $7f76: $88
	adc  b                                           ; $7f77: $88
	adc  b                                           ; $7f78: $88
	adc  b                                           ; $7f79: $88
	adc  b                                           ; $7f7a: $88
	adc  c                                           ; $7f7b: $89
	sbc  b                                           ; $7f7c: $98
	adc  c                                           ; $7f7d: $89
	sbc  b                                           ; $7f7e: $98
	adc  b                                           ; $7f7f: $88
	adc  b                                           ; $7f80: $88
	adc  b                                           ; $7f81: $88
	ld   [hl], a                                     ; $7f82: $77
	ld   a, b                                        ; $7f83: $78
	adc  b                                           ; $7f84: $88
	adc  c                                           ; $7f85: $89
	sbc  c                                           ; $7f86: $99
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
	adc  c                                           ; $7faa: $89
	sbc  c                                           ; $7fab: $99
	sbc  b                                           ; $7fac: $98
	add  a                                           ; $7fad: $87
	ld   [hl], a                                     ; $7fae: $77
	ld   a, b                                        ; $7faf: $78
	adc  c                                           ; $7fb0: $89
	sbc  b                                           ; $7fb1: $98
	adc  b                                           ; $7fb2: $88
	adc  b                                           ; $7fb3: $88
	adc  c                                           ; $7fb4: $89
	sbc  c                                           ; $7fb5: $99
	adc  b                                           ; $7fb6: $88
	ld   [hl], a                                     ; $7fb7: $77
	ld   a, b                                        ; $7fb8: $78
	adc  c                                           ; $7fb9: $89
	sbc  c                                           ; $7fba: $99
	adc  b                                           ; $7fbb: $88
	adc  b                                           ; $7fbc: $88
	adc  b                                           ; $7fbd: $88
	adc  b                                           ; $7fbe: $88
	adc  b                                           ; $7fbf: $88
	ld   [hl], a                                     ; $7fc0: $77
	adc  b                                           ; $7fc1: $88
	adc  c                                           ; $7fc2: $89
	sbc  c                                           ; $7fc3: $99
	sbc  b                                           ; $7fc4: $98
	adc  b                                           ; $7fc5: $88
	adc  b                                           ; $7fc6: $88
	adc  b                                           ; $7fc7: $88
	adc  b                                           ; $7fc8: $88
	ld   [hl], a                                     ; $7fc9: $77
	ld   a, b                                        ; $7fca: $78
	adc  b                                           ; $7fcb: $88
	sbc  c                                           ; $7fcc: $99
	sbc  b                                           ; $7fcd: $98
	adc  b                                           ; $7fce: $88
	adc  b                                           ; $7fcf: $88
	adc  b                                           ; $7fd0: $88
	sbc  c                                           ; $7fd1: $99
	adc  b                                           ; $7fd2: $88
	add  a                                           ; $7fd3: $87
	adc  b                                           ; $7fd4: $88
	adc  c                                           ; $7fd5: $89
	adc  c                                           ; $7fd6: $89
	adc  b                                           ; $7fd7: $88
	ld   [hl], a                                     ; $7fd8: $77
	ld   [hl], a                                     ; $7fd9: $77
	adc  b                                           ; $7fda: $88
	adc  b                                           ; $7fdb: $88
	adc  b                                           ; $7fdc: $88
	adc  b                                           ; $7fdd: $88
	adc  c                                           ; $7fde: $89
	sbc  c                                           ; $7fdf: $99
	adc  b                                           ; $7fe0: $88
	ld   [hl], a                                     ; $7fe1: $77
	ld   [hl], a                                     ; $7fe2: $77
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
