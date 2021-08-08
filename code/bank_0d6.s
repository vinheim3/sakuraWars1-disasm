; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d6", ROMX[$4000], BANK[$d6]

	ld   sp, $1111                                   ; $4000: $31 $11 $11
	ld   d, $df                                      ; $4003: $16 $df
	rst  $38                                         ; $4005: $ff
	rst  $38                                         ; $4006: $ff
	cp   $9d                                         ; $4007: $fe $9d
	call $1171                                       ; $4009: $cd $71 $11
	ld   de, $8f11                                   ; $400c: $11 $11 $8f
	rst  $38                                         ; $400f: $ff
	rst  $38                                         ; $4010: $ff
	rst  $38                                         ; $4011: $ff
	rst  $38                                         ; $4012: $ff
	db   $fd                                         ; $4013: $fd
	ld   de, $1111                                   ; $4014: $11 $11 $11
	ld   a, a                                        ; $4017: $7f
	rst  $38                                         ; $4018: $ff
	rst  $38                                         ; $4019: $ff
	rst  $38                                         ; $401a: $ff
	push hl                                          ; $401b: $e5
	sbc  l                                           ; $401c: $9d
	ret                                              ; $401d: $c9


	ld   de, $1111                                   ; $401e: $11 $11 $11
	inc  d                                           ; $4021: $14
	rst  $38                                         ; $4022: $ff
	rst  $38                                         ; $4023: $ff
	rst  $38                                         ; $4024: $ff
	rst  $38                                         ; $4025: $ff
	rst  $38                                         ; $4026: $ff
	pop  de                                          ; $4027: $d1
	ld   de, $1511                                   ; $4028: $11 $11 $15
	rst  $38                                         ; $402b: $ff
	rst  $38                                         ; $402c: $ff
	rst  $38                                         ; $402d: $ff
	ld   a, [$dd46]                                  ; $402e: $fa $46 $dd
	sub  c                                           ; $4031: $91
	ld   de, $1111                                   ; $4032: $11 $11 $11
	ld   c, a                                        ; $4035: $4f
	rst  $38                                         ; $4036: $ff
	rst  $38                                         ; $4037: $ff
	rst  $38                                         ; $4038: $ff
	rst  $38                                         ; $4039: $ff
	db   $db                                         ; $403a: $db
	ld   de, $1111                                   ; $403b: $11 $11 $11
	ld   e, a                                        ; $403e: $5f
	rst  $38                                         ; $403f: $ff
	rst  $38                                         ; $4040: $ff
	db   $fd                                         ; $4041: $fd
	ld   h, e                                        ; $4042: $63
	ld   l, a                                        ; $4043: $6f
	rst  $10                                         ; $4044: $d7
	ld   de, $1111                                   ; $4045: $11 $11 $11
	ld   e, $ff                                      ; $4048: $1e $ff
	rst  $38                                         ; $404a: $ff
	rst  $38                                         ; $404b: $ff
	rst  $38                                         ; $404c: $ff
	db   $fc                                         ; $404d: $fc
	sub  c                                           ; $404e: $91
	ld   de, $1e11                                   ; $404f: $11 $11 $1e
	rst  $38                                         ; $4052: $ff
	rst  $38                                         ; $4053: $ff
	rst  $38                                         ; $4054: $ff
	sub  a                                           ; $4055: $97
	ld   e, c                                        ; $4056: $59
	rst  $30                                         ; $4057: $f7
	ld   de, $1111                                   ; $4058: $11 $11 $11
	ld   de, $ffff                                   ; $405b: $11 $ff $ff
	rst  $38                                         ; $405e: $ff
	rst  $38                                         ; $405f: $ff
	rst  $38                                         ; $4060: $ff
	pop  de                                          ; $4061: $d1
	ld   de, $1911                                   ; $4062: $11 $11 $19
	rst  $38                                         ; $4065: $ff
	rst  $38                                         ; $4066: $ff
	rst  $38                                         ; $4067: $ff
	cp   c                                           ; $4068: $b9
	halt                                             ; $4069: $76
	jp   hl                                          ; $406a: $e9


	ld   de, $1111                                   ; $406b: $11 $11 $11
	ld   de, $ffff                                   ; $406e: $11 $ff $ff
	rst  $38                                         ; $4071: $ff
	rst  $38                                         ; $4072: $ff
	rst  $38                                         ; $4073: $ff
	pop  de                                          ; $4074: $d1
	ld   de, $1811                                   ; $4075: $11 $11 $18
	rst  $38                                         ; $4078: $ff
	rst  $38                                         ; $4079: $ff
	rst  $38                                         ; $407a: $ff
	ld   [$a586], a                                  ; $407b: $ea $86 $a5
	ld   de, $1111                                   ; $407e: $11 $11 $11
	ld   de, $ffff                                   ; $4081: $11 $ff $ff
	rst  $38                                         ; $4084: $ff
	db   $fd                                         ; $4085: $fd
	rst  $38                                         ; $4086: $ff
	pop  bc                                          ; $4087: $c1
	ld   de, $3a11                                   ; $4088: $11 $11 $3a
	rst  $38                                         ; $408b: $ff
	rst  $38                                         ; $408c: $ff
	rst  $38                                         ; $408d: $ff
	jp   c, $6165                                    ; $408e: $da $65 $61

	ld   de, $1111                                   ; $4091: $11 $11 $11
	rra                                              ; $4094: $1f
	rst  $38                                         ; $4095: $ff
	rst  $38                                         ; $4096: $ff
	rst  $38                                         ; $4097: $ff
	rst  $38                                         ; $4098: $ff
	db   $fd                                         ; $4099: $fd
	ld   de, $1111                                   ; $409a: $11 $11 $11
	ld   l, d                                        ; $409d: $6a
	rst  $38                                         ; $409e: $ff
	rst  $38                                         ; $409f: $ff
	rst  $38                                         ; $40a0: $ff
	or   l                                           ; $40a1: $b5
	inc  sp                                          ; $40a2: $33
	ld   de, $1111                                   ; $40a3: $11 $11 $11
	ld   de, $ffff                                   ; $40a6: $11 $ff $ff
	rst  $38                                         ; $40a9: $ff
	rst  $38                                         ; $40aa: $ff
	rst  $38                                         ; $40ab: $ff
	ld   b, c                                        ; $40ac: $41
	ld   de, $4313                                   ; $40ad: $11 $13 $43
	ld   l, [hl]                                     ; $40b0: $6e
	rst  $38                                         ; $40b1: $ff
	rst  $38                                         ; $40b2: $ff
	rst  $10                                         ; $40b3: $d7
	ld   de, $1111                                   ; $40b4: $11 $11 $11
	ld   de, $df11                                   ; $40b7: $11 $11 $df
	rst  $38                                         ; $40ba: $ff
	rst  $38                                         ; $40bb: $ff
	rst  $38                                         ; $40bc: $ff
	jp   c, $1211                                    ; $40bd: $da $11 $12

	ld   [hl], l                                     ; $40c0: $75
	ld   sp, $ff3a                                   ; $40c1: $31 $3a $ff
	rst  $38                                         ; $40c4: $ff
	push de                                          ; $40c5: $d5
	ld   de, $1111                                   ; $40c6: $11 $11 $11
	ld   de, $ff18                                   ; $40c9: $11 $18 $ff
	rst  $38                                         ; $40cc: $ff
	rst  $38                                         ; $40cd: $ff
	db   $fc                                         ; $40ce: $fc
	ld   h, c                                        ; $40cf: $61
	ld   b, [hl]                                     ; $40d0: $46
	ld   [hl], a                                     ; $40d1: $77
	ld   sp, $8f13                                   ; $40d2: $31 $13 $8f
	rst  $38                                         ; $40d5: $ff
	db   $fd                                         ; $40d6: $fd
	ld   [hl], c                                     ; $40d7: $71
	ld   de, $1111                                   ; $40d8: $11 $11 $11
	jr   @+$01                                       ; $40db: $18 $ff

	rst  $38                                         ; $40dd: $ff
	rst  $38                                         ; $40de: $ff
	rst  $38                                         ; $40df: $ff
	sub  h                                           ; $40e0: $94
	adc  b                                           ; $40e1: $88
	and  a                                           ; $40e2: $a7
	ld   hl, $9e12                                   ; $40e3: $21 $12 $9e
	rst  $38                                         ; $40e6: $ff
	jp   c, $1162                                    ; $40e7: $da $62 $11

	ld   de, $7f11                                   ; $40ea: $11 $11 $7f
	rst  $38                                         ; $40ed: $ff
	rst  $38                                         ; $40ee: $ff
	rst  $38                                         ; $40ef: $ff
	ld   a, [$cd8c]                                  ; $40f0: $fa $8c $cd
	sub  h                                           ; $40f3: $94
	ld   de, $aa47                                   ; $40f4: $11 $47 $aa
	ld   h, [hl]                                     ; $40f7: $66
	ld   d, e                                        ; $40f8: $53
	ld   de, $1111                                   ; $40f9: $11 $11 $11
	ld   l, a                                        ; $40fc: $6f
	rst  $38                                         ; $40fd: $ff
	rst  $38                                         ; $40fe: $ff
	rst  $38                                         ; $40ff: $ff
	ld   hl, sp-$32                                  ; $4100: $f8 $ce
	db   $ec                                         ; $4102: $ec
	sub  [hl]                                        ; $4103: $96
	ld   b, a                                        ; $4104: $47
	adc  b                                           ; $4105: $88
	ld   h, h                                        ; $4106: $64
	inc  hl                                          ; $4107: $23
	ld   sp, $1111                                   ; $4108: $31 $11 $11
	inc  a                                           ; $410b: $3c
	db   $fc                                         ; $410c: $fc
	rst  $38                                         ; $410d: $ff
	rst  $38                                         ; $410e: $ff
	db   $fc                                         ; $410f: $fc
	ld   c, d                                        ; $4110: $4a
	rst  JumpTable                                         ; $4111: $df
	ei                                               ; $4112: $fb
	ld   b, d                                        ; $4113: $42
	ld   a, d                                        ; $4114: $7a
	cp   b                                           ; $4115: $b8
	ld   b, c                                        ; $4116: $41
	ld   [hl+], a                                    ; $4117: $22
	ld   de, $1311                                   ; $4118: $11 $11 $13
	rst  $28                                         ; $411b: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $411c: $cf
	rst  $38                                         ; $411d: $ff
	rst  $38                                         ; $411e: $ff
	or   a                                           ; $411f: $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4120: $cf
	db   $fd                                         ; $4121: $fd
	ld   [hl], e                                     ; $4122: $73
	ld   b, a                                        ; $4123: $47
	ld   h, [hl]                                     ; $4124: $66
	ld   d, d                                        ; $4125: $52
	inc  [hl]                                        ; $4126: $34
	ld   de, $1411                                   ; $4127: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $412a: $cf
	rst  $38                                         ; $412b: $ff
	rst  $38                                         ; $412c: $ff
	cp   $87                                         ; $412d: $fe $87
	xor  [hl]                                        ; $412f: $ae
	db   $fd                                         ; $4130: $fd
	sub  [hl]                                        ; $4131: $96
	ld   b, [hl]                                     ; $4132: $46
	ld   h, h                                        ; $4133: $64
	inc  hl                                          ; $4134: $23
	ld   b, e                                        ; $4135: $43
	ld   de, $5511                                   ; $4136: $11 $11 $55
	xor  e                                           ; $4139: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $413a: $cf
	rst  $38                                         ; $413b: $ff
	sbc  h                                           ; $413c: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $413d: $cf
	rst  $38                                         ; $413e: $ff
	cp   c                                           ; $413f: $b9
	xor  b                                           ; $4140: $a8
	ld   d, l                                        ; $4141: $55
	ld   sp, $4144                                   ; $4142: $31 $44 $41
	ld   de, $6415                                   ; $4145: $11 $15 $64
	ld   a, l                                        ; $4148: $7d
	rst  $28                                         ; $4149: $ef
	ld   a, [$fe9d]                                  ; $414a: $fa $9d $fe
	cp   $bd                                         ; $414d: $fe $bd
	xor  d                                           ; $414f: $aa
	ld   [hl], e                                     ; $4150: $73
	inc  hl                                          ; $4151: $23
	ld   d, e                                        ; $4152: $53
	ld   de, $1611                                   ; $4153: $11 $11 $16
	ld   b, h                                        ; $4156: $44
	xor  a                                           ; $4157: $af
	db   $eb                                         ; $4158: $eb
	xor  l                                           ; $4159: $ad
	db   $ed                                         ; $415a: $ed
	db   $db                                         ; $415b: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $415c: $cf
	ld   [$6588], a                                  ; $415d: $ea $88 $65
	ld   hl, $4324                                   ; $4160: $21 $24 $43
	ld   de, $aa59                                   ; $4163: $11 $59 $aa
	sbc  e                                           ; $4166: $9b
	call c, $9ac9                                    ; $4167: $dc $c9 $9a
	cp   l                                           ; $416a: $bd
	jp   z, $98cc                                    ; $416b: $ca $cc $98

	ld   [hl], e                                     ; $416e: $73
	dec  [hl]                                        ; $416f: $35
	ld   b, d                                        ; $4170: $42
	ld   de, $6722                                   ; $4171: $11 $22 $67
	adc  d                                           ; $4174: $8a
	db   $ec                                         ; $4175: $ec
	sbc  l                                           ; $4176: $9d
	rst  $38                                         ; $4177: $ff
	ret                                              ; $4178: $c9


	cp   h                                           ; $4179: $bc
	cp   d                                           ; $417a: $ba
	add  l                                           ; $417b: $85
	ld   a, b                                        ; $417c: $78
	ld   d, d                                        ; $417d: $52
	ld   b, [hl]                                     ; $417e: $46

jr_0d6_417f:
	ld   h, l                                        ; $417f: $65
	inc  hl                                          ; $4180: $23
	ld   c, b                                        ; $4181: $48
	sub  l                                           ; $4182: $95
	adc  d                                           ; $4183: $8a
	adc  e                                           ; $4184: $8b
	ret  c                                           ; $4185: $d8

	adc  h                                           ; $4186: $8c
	db   $eb                                         ; $4187: $eb
	jp   z, $b7ac                                    ; $4188: $ca $ac $b7

	ld   b, e                                        ; $418b: $43
	ld   d, a                                        ; $418c: $57
	ld   d, e                                        ; $418d: $53
	ld   [de], a                                     ; $418e: $12
	halt                                             ; $418f: $76
	ld   b, h                                        ; $4190: $44
	ld   a, h                                        ; $4191: $7c
	ret  c                                           ; $4192: $d8

	ld   e, c                                        ; $4193: $59
	db   $dd                                         ; $4194: $dd
	cp   b                                           ; $4195: $b8
	ld   a, [hl]                                     ; $4196: $7e

Jump_0d6_4197:
	rst  $10                                         ; $4197: $d7
	ld   a, d                                        ; $4198: $7a
	adc  b                                           ; $4199: $88
	ld   [hl], h                                     ; $419a: $74
	add  a                                           ; $419b: $87
	add  a                                           ; $419c: $87
	ld   b, d                                        ; $419d: $42
	ld   e, d                                        ; $419e: $5a
	ld   d, e                                        ; $419f: $53
	jr   c, jr_0d6_417f                              ; $41a0: $38 $dd

	ld   l, b                                        ; $41a2: $68
	jp   hl                                          ; $41a3: $e9


	sbc  d                                           ; $41a4: $9a
	adc  h                                           ; $41a5: $8c

Call_0d6_41a6:
	add  sp, $7a                                     ; $41a6: $e8 $7a
	and  l                                           ; $41a8: $a5
	ld   [hl], $78                                   ; $41a9: $36 $78
	ld   d, h                                        ; $41ab: $54
	ld   a, c                                        ; $41ac: $79
	ld   [hl], e                                     ; $41ad: $73
	ld   a, d                                        ; $41ae: $7a
	ld   h, a                                        ; $41af: $67
	sbc  c                                           ; $41b0: $99
	ld   l, b                                        ; $41b1: $68
	cp   d                                           ; $41b2: $ba
	xor  b                                           ; $41b3: $a8
	adc  e                                           ; $41b4: $8b
	and  a                                           ; $41b5: $a7
	add  a                                           ; $41b6: $87
	ld   [hl], a                                     ; $41b7: $77
	ld   d, a                                        ; $41b8: $57
	sub  [hl]                                        ; $41b9: $96
	ld   a, b                                        ; $41ba: $78
	ld   h, [hl]                                     ; $41bb: $66
	ld   b, [hl]                                     ; $41bc: $46
	or   a                                           ; $41bd: $b7
	ld   h, a                                        ; $41be: $67
	ld   a, e                                        ; $41bf: $7b
	sub  [hl]                                        ; $41c0: $96
	ld   [hl], a                                     ; $41c1: $77
	xor  b                                           ; $41c2: $a8
	ld   a, c                                        ; $41c3: $79
	ld   l, b                                        ; $41c4: $68
	or   [hl]                                        ; $41c5: $b6
	dec  hl                                          ; $41c6: $2b
	or   l                                           ; $41c7: $b5
	halt                                             ; $41c8: $76
	ld   a, b                                        ; $41c9: $78
	ld   h, [hl]                                     ; $41ca: $66
	ld   l, c                                        ; $41cb: $69
	ld   a, d                                        ; $41cc: $7a
	ld   [hl], a                                     ; $41cd: $77
	add  $a9                                         ; $41ce: $c6 $a9
	add  [hl]                                        ; $41d0: $86
	ld   l, c                                        ; $41d1: $69
	ld   e, c                                        ; $41d2: $59
	ld   a, c                                        ; $41d3: $79
	adc  b                                           ; $41d4: $88
	halt                                             ; $41d5: $76
	xor  b                                           ; $41d6: $a8
	sbc  c                                           ; $41d7: $99
	xor  b                                           ; $41d8: $a8
	and  a                                           ; $41d9: $a7
	sbc  c                                           ; $41da: $99
	adc  c                                           ; $41db: $89
	ld   l, d                                        ; $41dc: $6a
	ld   a, c                                        ; $41dd: $79
	sbc  b                                           ; $41de: $98
	xor  c                                           ; $41df: $a9
	adc  d                                           ; $41e0: $8a
	sub  a                                           ; $41e1: $97
	sub  [hl]                                        ; $41e2: $96
	ld   [hl], a                                     ; $41e3: $77
	adc  b                                           ; $41e4: $88
	adc  d                                           ; $41e5: $8a
	adc  b                                           ; $41e6: $88
	adc  d                                           ; $41e7: $8a
	xor  c                                           ; $41e8: $a9
	xor  d                                           ; $41e9: $aa
	adc  c                                           ; $41ea: $89
	adc  b                                           ; $41eb: $88
	add  a                                           ; $41ec: $87
	sbc  c                                           ; $41ed: $99
	sbc  d                                           ; $41ee: $9a
	ld   [hl], a                                     ; $41ef: $77
	adc  b                                           ; $41f0: $88
	sub  a                                           ; $41f1: $97
	xor  b                                           ; $41f2: $a8
	xor  b                                           ; $41f3: $a8
	ld   [hl], a                                     ; $41f4: $77
	adc  c                                           ; $41f5: $89
	ld   l, d                                        ; $41f6: $6a
	adc  d                                           ; $41f7: $8a
	ld   a, c                                        ; $41f8: $79
	xor  b                                           ; $41f9: $a8
	xor  b                                           ; $41fa: $a8
	xor  c                                           ; $41fb: $a9
	sbc  b                                           ; $41fc: $98
	sub  a                                           ; $41fd: $97
	ld   a, b                                        ; $41fe: $78
	adc  c                                           ; $41ff: $89
	ld   a, b                                        ; $4200: $78
	adc  d                                           ; $4201: $8a
	adc  b                                           ; $4202: $88
	adc  c                                           ; $4203: $89
	sbc  b                                           ; $4204: $98
	xor  c                                           ; $4205: $a9
	add  a                                           ; $4206: $87
	and  a                                           ; $4207: $a7
	xor  b                                           ; $4208: $a8
	sbc  e                                           ; $4209: $9b
	adc  d                                           ; $420a: $8a
	adc  c                                           ; $420b: $89
	adc  c                                           ; $420c: $89
	ld   a, c                                        ; $420d: $79
	sub  a                                           ; $420e: $97
	ld   a, b                                        ; $420f: $78
	sbc  b                                           ; $4210: $98
	add  a                                           ; $4211: $87
	and  a                                           ; $4212: $a7
	xor  c                                           ; $4213: $a9
	ld   a, d                                        ; $4214: $7a
	adc  b                                           ; $4215: $88
	ld   a, d                                        ; $4216: $7a
	add  a                                           ; $4217: $87
	adc  c                                           ; $4218: $89
	adc  b                                           ; $4219: $88
	sbc  b                                           ; $421a: $98
	adc  b                                           ; $421b: $88
	adc  c                                           ; $421c: $89
	adc  b                                           ; $421d: $88
	adc  b                                           ; $421e: $88
	sbc  b                                           ; $421f: $98
	ld   a, c                                        ; $4220: $79
	adc  b                                           ; $4221: $88
	sbc  b                                           ; $4222: $98
	sub  a                                           ; $4223: $97
	ld   a, b                                        ; $4224: $78
	ld   a, c                                        ; $4225: $79
	sbc  b                                           ; $4226: $98
	adc  c                                           ; $4227: $89
	ld   a, c                                        ; $4228: $79
	adc  b                                           ; $4229: $88
	adc  b                                           ; $422a: $88
	adc  b                                           ; $422b: $88
	sub  a                                           ; $422c: $97
	sub  a                                           ; $422d: $97
	sbc  b                                           ; $422e: $98
	ld   a, c                                        ; $422f: $79
	ld   a, b                                        ; $4230: $78
	adc  b                                           ; $4231: $88
	ld   a, c                                        ; $4232: $79
	adc  b                                           ; $4233: $88
	adc  b                                           ; $4234: $88
	ld   [hl], a                                     ; $4235: $77
	sub  a                                           ; $4236: $97
	ld   a, c                                        ; $4237: $79
	adc  b                                           ; $4238: $88
	sub  a                                           ; $4239: $97
	add  a                                           ; $423a: $87
	ld   a, c                                        ; $423b: $79
	ld   a, c                                        ; $423c: $79
	add  a                                           ; $423d: $87
	sub  a                                           ; $423e: $97
	ld   [hl], a                                     ; $423f: $77
	add  a                                           ; $4240: $87
	adc  b                                           ; $4241: $88
	ld   a, c                                        ; $4242: $79
	adc  b                                           ; $4243: $88
	adc  b                                           ; $4244: $88
	adc  b                                           ; $4245: $88
	add  a                                           ; $4246: $87
	sub  a                                           ; $4247: $97
	sbc  b                                           ; $4248: $98
	ld   a, b                                        ; $4249: $78
	add  a                                           ; $424a: $87
	adc  b                                           ; $424b: $88
	adc  b                                           ; $424c: $88
	sbc  c                                           ; $424d: $99
	adc  b                                           ; $424e: $88
	ld   a, b                                        ; $424f: $78
	add  a                                           ; $4250: $87
	adc  b                                           ; $4251: $88
	ld   a, b                                        ; $4252: $78
	ld   a, b                                        ; $4253: $78
	sub  a                                           ; $4254: $97
	sbc  b                                           ; $4255: $98
	adc  b                                           ; $4256: $88
	sbc  b                                           ; $4257: $98
	adc  b                                           ; $4258: $88
	ld   a, c                                        ; $4259: $79
	ld   a, b                                        ; $425a: $78
	adc  b                                           ; $425b: $88
	add  a                                           ; $425c: $87
	sub  a                                           ; $425d: $97
	sub  a                                           ; $425e: $97
	adc  b                                           ; $425f: $88
	adc  b                                           ; $4260: $88
	add  a                                           ; $4261: $87
	ld   a, c                                        ; $4262: $79
	ld   l, b                                        ; $4263: $68
	ld   a, b                                        ; $4264: $78

Jump_0d6_4265:
	adc  b                                           ; $4265: $88
	adc  b                                           ; $4266: $88
	sub  a                                           ; $4267: $97
	sub  a                                           ; $4268: $97
	adc  c                                           ; $4269: $89
	adc  b                                           ; $426a: $88
	adc  c                                           ; $426b: $89
	ld   a, b                                        ; $426c: $78
	ld   a, c                                        ; $426d: $79
	adc  b                                           ; $426e: $88
	add  a                                           ; $426f: $87
	sub  a                                           ; $4270: $97
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	ld   a, b                                        ; $4274: $78
	adc  b                                           ; $4275: $88
	add  a                                           ; $4276: $87
	adc  b                                           ; $4277: $88
	ld   a, b                                        ; $4278: $78
	adc  b                                           ; $4279: $88
	add  a                                           ; $427a: $87
	sub  a                                           ; $427b: $97
	add  a                                           ; $427c: $87
	add  a                                           ; $427d: $87
	adc  b                                           ; $427e: $88
	ld   a, b                                        ; $427f: $78
	ld   a, b                                        ; $4280: $78
	ld   a, b                                        ; $4281: $78
	add  a                                           ; $4282: $87
	add  a                                           ; $4283: $87
	adc  b                                           ; $4284: $88
	ld   a, b                                        ; $4285: $78
	add  a                                           ; $4286: $87
	adc  b                                           ; $4287: $88
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	ld   a, b                                        ; $428d: $78
	ld   a, b                                        ; $428e: $78
	ld   [hl], a                                     ; $428f: $77
	add  a                                           ; $4290: $87
	add  a                                           ; $4291: $87
	add  a                                           ; $4292: $87
	adc  b                                           ; $4293: $88
	ld   a, b                                        ; $4294: $78
	ld   a, b                                        ; $4295: $78
	ld   a, b                                        ; $4296: $78
	adc  b                                           ; $4297: $88
	ld   a, b                                        ; $4298: $78
	add  a                                           ; $4299: $87
	add  a                                           ; $429a: $87
	ld   a, b                                        ; $429b: $78
	adc  b                                           ; $429c: $88
	add  a                                           ; $429d: $87
	add  a                                           ; $429e: $87
	ld   a, b                                        ; $429f: $78
	ld   a, b                                        ; $42a0: $78
	ld   a, b                                        ; $42a1: $78
	add  a                                           ; $42a2: $87
	adc  b                                           ; $42a3: $88
	ld   a, b                                        ; $42a4: $78
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88
	adc  b                                           ; $42a7: $88
	add  a                                           ; $42a8: $87

Call_0d6_42a9:
	add  a                                           ; $42a9: $87
	adc  b                                           ; $42aa: $88
	adc  b                                           ; $42ab: $88
	adc  b                                           ; $42ac: $88
	ld   a, c                                        ; $42ad: $79
	ld   a, b                                        ; $42ae: $78
	adc  b                                           ; $42af: $88
	adc  b                                           ; $42b0: $88
	ld   a, b                                        ; $42b1: $78
	adc  b                                           ; $42b2: $88
	add  a                                           ; $42b3: $87
	sub  a                                           ; $42b4: $97
	add  a                                           ; $42b5: $87
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	ld   a, b                                        ; $42b9: $78
	adc  b                                           ; $42ba: $88
	add  a                                           ; $42bb: $87
	ld   a, b                                        ; $42bc: $78
	ld   a, b                                        ; $42bd: $78
	ld   a, b                                        ; $42be: $78
	adc  b                                           ; $42bf: $88
	add  a                                           ; $42c0: $87
	sbc  b                                           ; $42c1: $98
	add  a                                           ; $42c2: $87
	add  a                                           ; $42c3: $87
	adc  c                                           ; $42c4: $89
	ld   a, b                                        ; $42c5: $78
	ld   a, b                                        ; $42c6: $78
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	add  a                                           ; $42c9: $87
	adc  b                                           ; $42ca: $88
	ld   a, b                                        ; $42cb: $78
	add  a                                           ; $42cc: $87
	add  a                                           ; $42cd: $87
	ld   a, b                                        ; $42ce: $78
	adc  b                                           ; $42cf: $88
	adc  c                                           ; $42d0: $89
	adc  b                                           ; $42d1: $88
	adc  b                                           ; $42d2: $88
	sub  a                                           ; $42d3: $97
	ld   a, b                                        ; $42d4: $78
	add  a                                           ; $42d5: $87
	sub  a                                           ; $42d6: $97
	adc  b                                           ; $42d7: $88
	ld   a, b                                        ; $42d8: $78
	adc  b                                           ; $42d9: $88
	ld   a, c                                        ; $42da: $79
	ld   a, b                                        ; $42db: $78
	ld   a, b                                        ; $42dc: $78
	add  a                                           ; $42dd: $87
	add  a                                           ; $42de: $87
	sub  a                                           ; $42df: $97
	adc  b                                           ; $42e0: $88
	ld   a, b                                        ; $42e1: $78
	adc  c                                           ; $42e2: $89
	ld   a, c                                        ; $42e3: $79
	ld   a, b                                        ; $42e4: $78
	add  a                                           ; $42e5: $87
	sub  a                                           ; $42e6: $97
	adc  b                                           ; $42e7: $88
	add  a                                           ; $42e8: $87
	sub  a                                           ; $42e9: $97
	ld   a, c                                        ; $42ea: $79
	adc  b                                           ; $42eb: $88
	ld   a, c                                        ; $42ec: $79
	ld   a, b                                        ; $42ed: $78
	add  a                                           ; $42ee: $87
	add  a                                           ; $42ef: $87
	ld   a, c                                        ; $42f0: $79
	ld   [hl], a                                     ; $42f1: $77
	adc  b                                           ; $42f2: $88
	ld   a, b                                        ; $42f3: $78
	sbc  b                                           ; $42f4: $98
	adc  b                                           ; $42f5: $88
	add  a                                           ; $42f6: $87
	add  a                                           ; $42f7: $87
	adc  b                                           ; $42f8: $88
	ld   a, c                                        ; $42f9: $79
	ld   a, b                                        ; $42fa: $78
	ld   a, b                                        ; $42fb: $78
	add  a                                           ; $42fc: $87
	add  a                                           ; $42fd: $87
	sub  a                                           ; $42fe: $97
	add  a                                           ; $42ff: $87
	sbc  b                                           ; $4300: $98
	ld   a, b                                        ; $4301: $78
	ld   a, b                                        ; $4302: $78
	ld   a, b                                        ; $4303: $78
	ld   a, b                                        ; $4304: $78
	ld   [hl], a                                     ; $4305: $77
	sub  a                                           ; $4306: $97
	sub  a                                           ; $4307: $97
	add  a                                           ; $4308: $87
	sbc  b                                           ; $4309: $98
	ld   a, b                                        ; $430a: $78
	ld   a, c                                        ; $430b: $79
	ld   a, c                                        ; $430c: $79
	ld   a, b                                        ; $430d: $78
	adc  b                                           ; $430e: $88
	adc  b                                           ; $430f: $88
	add  a                                           ; $4310: $87
	sbc  b                                           ; $4311: $98
	adc  b                                           ; $4312: $88
	sub  a                                           ; $4313: $97
	add  a                                           ; $4314: $87
	ld   a, b                                        ; $4315: $78
	ld   a, b                                        ; $4316: $78
	ld   a, b                                        ; $4317: $78
	ld   a, b                                        ; $4318: $78
	adc  b                                           ; $4319: $88
	sub  a                                           ; $431a: $97
	sub  a                                           ; $431b: $97
	sbc  b                                           ; $431c: $98
	adc  c                                           ; $431d: $89
	ld   a, c                                        ; $431e: $79
	adc  b                                           ; $431f: $88
	ld   a, b                                        ; $4320: $78
	adc  b                                           ; $4321: $88
	adc  b                                           ; $4322: $88
	adc  b                                           ; $4323: $88
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	adc  c                                           ; $4326: $89
	ld   a, b                                        ; $4327: $78
	add  a                                           ; $4328: $87
	sub  a                                           ; $4329: $97
	sub  a                                           ; $432a: $97
	sbc  c                                           ; $432b: $99
	ld   a, c                                        ; $432c: $79
	ld   a, b                                        ; $432d: $78
	adc  c                                           ; $432e: $89
	ld   a, c                                        ; $432f: $79
	ld   a, b                                        ; $4330: $78
	adc  b                                           ; $4331: $88
	sbc  b                                           ; $4332: $98
	sub  a                                           ; $4333: $97
	add  a                                           ; $4334: $87
	sub  a                                           ; $4335: $97
	sbc  b                                           ; $4336: $98
	ld   a, c                                        ; $4337: $79
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	ld   a, c                                        ; $433a: $79
	ld   a, b                                        ; $433b: $78
	sub  a                                           ; $433c: $97
	sub  [hl]                                        ; $433d: $96
	sub  a                                           ; $433e: $97
	adc  b                                           ; $433f: $88
	ld   a, c                                        ; $4340: $79
	ld   l, d                                        ; $4341: $6a
	ld   a, c                                        ; $4342: $79
	sbc  b                                           ; $4343: $98
	sub  a                                           ; $4344: $97
	sbc  b                                           ; $4345: $98
	adc  b                                           ; $4346: $88
	add  a                                           ; $4347: $87
	sbc  b                                           ; $4348: $98
	ld   a, c                                        ; $4349: $79
	ld   a, c                                        ; $434a: $79
	ld   a, b                                        ; $434b: $78
	sbc  b                                           ; $434c: $98
	sbc  b                                           ; $434d: $98
	ld   a, c                                        ; $434e: $79
	ld   a, c                                        ; $434f: $79
	sub  a                                           ; $4350: $97
	adc  b                                           ; $4351: $88
	add  a                                           ; $4352: $87
	adc  b                                           ; $4353: $88
	adc  b                                           ; $4354: $88
	adc  b                                           ; $4355: $88
	ld   a, b                                        ; $4356: $78
	adc  b                                           ; $4357: $88
	add  a                                           ; $4358: $87
	sub  a                                           ; $4359: $97
	add  a                                           ; $435a: $87
	sbc  b                                           ; $435b: $98
	adc  b                                           ; $435c: $88
	ld   a, c                                        ; $435d: $79
	ld   a, c                                        ; $435e: $79
	ld   a, c                                        ; $435f: $79
	adc  b                                           ; $4360: $88
	sub  a                                           ; $4361: $97
	sbc  b                                           ; $4362: $98
	add  a                                           ; $4363: $87
	sbc  b                                           ; $4364: $98
	adc  c                                           ; $4365: $89
	adc  c                                           ; $4366: $89
	ld   a, c                                        ; $4367: $79
	ld   a, b                                        ; $4368: $78
	ld   a, b                                        ; $4369: $78
	sbc  b                                           ; $436a: $98
	add  a                                           ; $436b: $87
	and  a                                           ; $436c: $a7
	adc  c                                           ; $436d: $89
	ld   a, b                                        ; $436e: $78
	ld   a, c                                        ; $436f: $79
	ld   a, b                                        ; $4370: $78
	adc  b                                           ; $4371: $88
	sub  a                                           ; $4372: $97
	and  a                                           ; $4373: $a7
	adc  b                                           ; $4374: $88
	ld   a, b                                        ; $4375: $78

Jump_0d6_4376:
	adc  c                                           ; $4376: $89
	adc  c                                           ; $4377: $89
	sub  a                                           ; $4378: $97
	adc  b                                           ; $4379: $88
	adc  b                                           ; $437a: $88
	sub  a                                           ; $437b: $97
	adc  c                                           ; $437c: $89
	ld   a, c                                        ; $437d: $79
	ld   a, c                                        ; $437e: $79
	ld   a, b                                        ; $437f: $78
	add  a                                           ; $4380: $87
	sub  [hl]                                        ; $4381: $96
	sbc  b                                           ; $4382: $98
	adc  b                                           ; $4383: $88
	adc  c                                           ; $4384: $89
	adc  b                                           ; $4385: $88
	adc  c                                           ; $4386: $89
	ld   a, c                                        ; $4387: $79
	ld   a, c                                        ; $4388: $79
	sub  a                                           ; $4389: $97
	add  a                                           ; $438a: $87
	adc  b                                           ; $438b: $88
	adc  b                                           ; $438c: $88
	adc  b                                           ; $438d: $88
	adc  b                                           ; $438e: $88
	adc  c                                           ; $438f: $89
	ld   a, b                                        ; $4390: $78
	adc  c                                           ; $4391: $89
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
	adc  c                                           ; $4394: $89
	adc  b                                           ; $4395: $88
	add  a                                           ; $4396: $87

Call_0d6_4397:
	sub  a                                           ; $4397: $97
	add  a                                           ; $4398: $87
	sbc  b                                           ; $4399: $98
	adc  b                                           ; $439a: $88
	ld   a, c                                        ; $439b: $79
	ld   a, b                                        ; $439c: $78
	ld   a, c                                        ; $439d: $79
	ld   a, c                                        ; $439e: $79
	sub  a                                           ; $439f: $97
	sub  a                                           ; $43a0: $97
	sub  [hl]                                        ; $43a1: $96
	sub  a                                           ; $43a2: $97
	ld   a, c                                        ; $43a3: $79
	ld   a, d                                        ; $43a4: $7a
	ld   a, b                                        ; $43a5: $78
	ld   a, b                                        ; $43a6: $78
	add  a                                           ; $43a7: $87
	xor  b                                           ; $43a8: $a8
	add  a                                           ; $43a9: $87
	sub  a                                           ; $43aa: $97
	sbc  b                                           ; $43ab: $98
	adc  b                                           ; $43ac: $88
	ld   a, c                                        ; $43ad: $79
	ld   a, c                                        ; $43ae: $79
	ld   a, b                                        ; $43af: $78
	add  a                                           ; $43b0: $87
	sub  a                                           ; $43b1: $97
	sbc  b                                           ; $43b2: $98
	sbc  b                                           ; $43b3: $98
	adc  c                                           ; $43b4: $89
	add  a                                           ; $43b5: $87
	sbc  b                                           ; $43b6: $98
	adc  c                                           ; $43b7: $89
	ld   a, b                                        ; $43b8: $78
	ld   a, b                                        ; $43b9: $78
	ld   a, b                                        ; $43ba: $78
	adc  b                                           ; $43bb: $88
	sub  a                                           ; $43bc: $97
	add  a                                           ; $43bd: $87
	add  a                                           ; $43be: $87
	adc  b                                           ; $43bf: $88
	ld   a, c                                        ; $43c0: $79
	ld   a, c                                        ; $43c1: $79
	ld   l, c                                        ; $43c2: $69
	ld   a, b                                        ; $43c3: $78
	sub  a                                           ; $43c4: $97
	sbc  b                                           ; $43c5: $98
	add  a                                           ; $43c6: $87
	sbc  b                                           ; $43c7: $98
	ld   l, b                                        ; $43c8: $68
	add  a                                           ; $43c9: $87
	sbc  b                                           ; $43ca: $98
	sbc  b                                           ; $43cb: $98
	sbc  b                                           ; $43cc: $98
	ld   a, b                                        ; $43cd: $78
	adc  b                                           ; $43ce: $88
	adc  b                                           ; $43cf: $88
	ld   a, b                                        ; $43d0: $78
	add  a                                           ; $43d1: $87
	sbc  b                                           ; $43d2: $98
	sub  a                                           ; $43d3: $97
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  c                                           ; $43d7: $89
	ld   a, b                                        ; $43d8: $78
	adc  c                                           ; $43d9: $89
	ld   [hl], a                                     ; $43da: $77
	sbc  b                                           ; $43db: $98
	sbc  b                                           ; $43dc: $98
	ld   a, b                                        ; $43dd: $78
	adc  b                                           ; $43de: $88
	ld   a, c                                        ; $43df: $79
	add  a                                           ; $43e0: $87
	sub  a                                           ; $43e1: $97
	adc  c                                           ; $43e2: $89
	ld   a, c                                        ; $43e3: $79
	adc  b                                           ; $43e4: $88
	adc  b                                           ; $43e5: $88
	sub  a                                           ; $43e6: $97
	sbc  b                                           ; $43e7: $98
	sbc  c                                           ; $43e8: $99
	add  a                                           ; $43e9: $87
	ld   a, c                                        ; $43ea: $79
	ld   a, b                                        ; $43eb: $78
	ld   a, b                                        ; $43ec: $78
	adc  c                                           ; $43ed: $89
	add  a                                           ; $43ee: $87
	sub  a                                           ; $43ef: $97
	sbc  b                                           ; $43f0: $98
	sbc  b                                           ; $43f1: $98
	ld   a, c                                        ; $43f2: $79
	adc  b                                           ; $43f3: $88
	ld   a, b                                        ; $43f4: $78
	sbc  b                                           ; $43f5: $98
	add  a                                           ; $43f6: $87
	sub  a                                           ; $43f7: $97
	adc  c                                           ; $43f8: $89
	ld   a, c                                        ; $43f9: $79
	ld   [hl], a                                     ; $43fa: $77
	sub  [hl]                                        ; $43fb: $96
	add  a                                           ; $43fc: $87
	adc  d                                           ; $43fd: $8a
	ld   a, d                                        ; $43fe: $7a
	ld   a, b                                        ; $43ff: $78
	adc  b                                           ; $4400: $88
	sbc  b                                           ; $4401: $98
	add  a                                           ; $4402: $87
	sub  [hl]                                        ; $4403: $96
	sbc  c                                           ; $4404: $99
	adc  c                                           ; $4405: $89
	ld   a, b                                        ; $4406: $78
	add  a                                           ; $4407: $87
	adc  b                                           ; $4408: $88
	adc  c                                           ; $4409: $89
	add  a                                           ; $440a: $87
	sub  a                                           ; $440b: $97
	ld   a, b                                        ; $440c: $78
	ld   l, c                                        ; $440d: $69
	add  a                                           ; $440e: $87
	xor  b                                           ; $440f: $a8
	sbc  b                                           ; $4410: $98
	ld   [hl], a                                     ; $4411: $77
	sub  a                                           ; $4412: $97
	adc  c                                           ; $4413: $89
	adc  b                                           ; $4414: $88
	ld   a, c                                        ; $4415: $79
	ld   a, d                                        ; $4416: $7a
	ld   l, b                                        ; $4417: $68
	add  [hl]                                        ; $4418: $86
	sub  a                                           ; $4419: $97
	sub  [hl]                                        ; $441a: $96
	sbc  c                                           ; $441b: $99
	ld   a, c                                        ; $441c: $79
	ld   a, c                                        ; $441d: $79
	ld   a, c                                        ; $441e: $79
	adc  c                                           ; $441f: $89
	ld   a, b                                        ; $4420: $78
	sub  a                                           ; $4421: $97
	and  a                                           ; $4422: $a7
	ld   l, b                                        ; $4423: $68
	add  a                                           ; $4424: $87

Call_0d6_4425:
	adc  c                                           ; $4425: $89
	adc  c                                           ; $4426: $89
	ld   l, c                                        ; $4427: $69
	adc  b                                           ; $4428: $88
	ld   a, c                                        ; $4429: $79
	sub  a                                           ; $442a: $97
	sub  [hl]                                        ; $442b: $96
	xor  b                                           ; $442c: $a8
	ld   a, b                                        ; $442d: $78
	sub  a                                           ; $442e: $97
	ld   a, c                                        ; $442f: $79
	ld   l, c                                        ; $4430: $69
	ld   [hl], a                                     ; $4431: $77
	adc  c                                           ; $4432: $89
	and  l                                           ; $4433: $a5
	sbc  b                                           ; $4434: $98
	sbc  b                                           ; $4435: $98
	ld   a, b                                        ; $4436: $78
	adc  c                                           ; $4437: $89
	ld   a, c                                        ; $4438: $79
	ld   a, c                                        ; $4439: $79
	ld   a, b                                        ; $443a: $78
	sub  [hl]                                        ; $443b: $96
	and  a                                           ; $443c: $a7
	ld   [hl], a                                     ; $443d: $77
	adc  b                                           ; $443e: $88
	ld   a, d                                        ; $443f: $7a
	ld   l, d                                        ; $4440: $6a
	adc  c                                           ; $4441: $89
	add  a                                           ; $4442: $87
	and  [hl]                                        ; $4443: $a6
	sbc  c                                           ; $4444: $99
	add  a                                           ; $4445: $87
	cp   b                                           ; $4446: $b8
	ld   l, b                                        ; $4447: $68
	ld   a, d                                        ; $4448: $7a
	ld   a, d                                        ; $4449: $7a
	ld   l, b                                        ; $444a: $68
	or   h                                           ; $444b: $b4
	and  a                                           ; $444c: $a7
	xor  c                                           ; $444d: $a9
	ld   l, d                                        ; $444e: $6a
	ld   a, d                                        ; $444f: $7a
	ld   l, c                                        ; $4450: $69
	adc  b                                           ; $4451: $88
	and  [hl]                                        ; $4452: $a6
	sbc  b                                           ; $4453: $98
	and  [hl]                                        ; $4454: $a6
	adc  b                                           ; $4455: $88
	adc  d                                           ; $4456: $8a
	ld   a, d                                        ; $4457: $7a
	sbc  b                                           ; $4458: $98
	ld   a, e                                        ; $4459: $7b
	sub  l                                           ; $445a: $95
	sbc  e                                           ; $445b: $9b
	ld   h, a                                        ; $445c: $67
	sub  [hl]                                        ; $445d: $96
	sbc  b                                           ; $445e: $98
	add  a                                           ; $445f: $87
	adc  d                                           ; $4460: $8a
	ld   e, c                                        ; $4461: $59
	adc  b                                           ; $4462: $88
	add  a                                           ; $4463: $87
	and  a                                           ; $4464: $a7
	adc  c                                           ; $4465: $89
	ld   a, c                                        ; $4466: $79
	sub  [hl]                                        ; $4467: $96
	adc  e                                           ; $4468: $8b
	ld   [hl], a                                     ; $4469: $77
	cp   c                                           ; $446a: $b9
	adc  c                                           ; $446b: $89
	sbc  c                                           ; $446c: $99
	add  a                                           ; $446d: $87
	ld   [hl], a                                     ; $446e: $77
	or   a                                           ; $446f: $b7
	ld   l, c                                        ; $4470: $69
	adc  c                                           ; $4471: $89
	ld   l, c                                        ; $4472: $69
	ld   a, d                                        ; $4473: $7a
	add  a                                           ; $4474: $87
	sub  a                                           ; $4475: $97
	and  [hl]                                        ; $4476: $a6
	add  [hl]                                        ; $4477: $86
	sbc  d                                           ; $4478: $9a
	ld   c, e                                        ; $4479: $4b
	adc  c                                           ; $447a: $89
	add  a                                           ; $447b: $87
	sbc  b                                           ; $447c: $98
	or   l                                           ; $447d: $b5
	adc  d                                           ; $447e: $8a
	ld   [hl], a                                     ; $447f: $77
	adc  c                                           ; $4480: $89
	ld   l, b                                        ; $4481: $68
	and  a                                           ; $4482: $a7
	ld   a, c                                        ; $4483: $79
	add  a                                           ; $4484: $87
	sbc  b                                           ; $4485: $98
	adc  d                                           ; $4486: $8a
	ld   a, b                                        ; $4487: $78
	adc  b                                           ; $4488: $88
	add  [hl]                                        ; $4489: $86
	sub  a                                           ; $448a: $97
	adc  c                                           ; $448b: $89
	ld   l, b                                        ; $448c: $68
	add  a                                           ; $448d: $87
	add  [hl]                                        ; $448e: $86
	or   a                                           ; $448f: $b7
	ld   a, d                                        ; $4490: $7a
	ld   a, c                                        ; $4491: $79
	ld   a, c                                        ; $4492: $79
	ld   a, c                                        ; $4493: $79
	and  [hl]                                        ; $4494: $a6
	or   a                                           ; $4495: $b7
	sub  a                                           ; $4496: $97
	sbc  c                                           ; $4497: $99
	ld   a, d                                        ; $4498: $7a
	ld   a, c                                        ; $4499: $79
	sbc  b                                           ; $449a: $98
	adc  c                                           ; $449b: $89
	and  [hl]                                        ; $449c: $a6
	adc  c                                           ; $449d: $89
	ld   [hl], a                                     ; $449e: $77
	ld   a, b                                        ; $449f: $78
	add  a                                           ; $44a0: $87
	ld   [hl], a                                     ; $44a1: $77
	sub  a                                           ; $44a2: $97
	ld   [hl], a                                     ; $44a3: $77
	adc  b                                           ; $44a4: $88
	ld   h, a                                        ; $44a5: $67
	sbc  b                                           ; $44a6: $98
	add  a                                           ; $44a7: $87
	sbc  c                                           ; $44a8: $99
	sbc  b                                           ; $44a9: $98
	sbc  d                                           ; $44aa: $9a
	adc  d                                           ; $44ab: $8a
	sbc  d                                           ; $44ac: $9a
	xor  b                                           ; $44ad: $a8
	xor  d                                           ; $44ae: $aa
	adc  b                                           ; $44af: $88
	xor  b                                           ; $44b0: $a8
	add  [hl]                                        ; $44b1: $86
	ld   a, c                                        ; $44b2: $79
	ld   h, [hl]                                     ; $44b3: $66
	ld   h, a                                        ; $44b4: $67
	ld   d, l                                        ; $44b5: $55
	ld   h, h                                        ; $44b6: $64
	ld   h, l                                        ; $44b7: $65
	dec  [hl]                                        ; $44b8: $35
	ld   h, [hl]                                     ; $44b9: $66
	ld   b, [hl]                                     ; $44ba: $46
	add  [hl]                                        ; $44bb: $86
	adc  c                                           ; $44bc: $89
	xor  e                                           ; $44bd: $ab
	set  1, [hl]                                     ; $44be: $cb $ce
	xor  $fe                                         ; $44c0: $ee $fe
	db   $ec                                         ; $44c2: $ec
	res  7, c                                        ; $44c3: $cb $b9
	ld   a, b                                        ; $44c5: $78
	ld   b, c                                        ; $44c6: $41
	ld   [hl-], a                                    ; $44c7: $32
	ld   de, $1111                                   ; $44c8: $11 $11 $11
	ld   hl, $5812                                   ; $44cb: $21 $12 $58
	sbc  h                                           ; $44ce: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44cf: $cf
	rst  $38                                         ; $44d0: $ff
	rst  $38                                         ; $44d1: $ff
	rst  $38                                         ; $44d2: $ff
	rst  $38                                         ; $44d3: $ff
	cp   $a9                                         ; $44d4: $fe $a9
	ld   [hl], l                                     ; $44d6: $75
	ld   hl, $1111                                   ; $44d7: $21 $11 $11
	ld   de, $1111                                   ; $44da: $11 $11 $11
	inc  h                                           ; $44dd: $24
	inc  [hl]                                        ; $44de: $34
	ld   l, h                                        ; $44df: $6c
	xor  [hl]                                        ; $44e0: $ae
	rst  $38                                         ; $44e1: $ff
	rst  $38                                         ; $44e2: $ff
	rst  $38                                         ; $44e3: $ff
	rst  $38                                         ; $44e4: $ff
	rst  $38                                         ; $44e5: $ff
	db   $fc                                         ; $44e6: $fc
	and  a                                           ; $44e7: $a7
	ld   b, e                                        ; $44e8: $43
	ld   de, $1111                                   ; $44e9: $11 $11 $11
	ld   de, $1411                                   ; $44ec: $11 $11 $14
	ld   de, $4466                                   ; $44ef: $11 $66 $44
	xor  e                                           ; $44f2: $ab
	rst  JumpTable                                         ; $44f3: $df
	rst  $38                                         ; $44f4: $ff
	rst  $38                                         ; $44f5: $ff
	rst  $38                                         ; $44f6: $ff
	rst  $38                                         ; $44f7: $ff
	rst  $38                                         ; $44f8: $ff
	jp   hl                                          ; $44f9: $e9


	ld   [hl], h                                     ; $44fa: $74
	ld   [hl-], a                                    ; $44fb: $32
	ld   de, $1111                                   ; $44fc: $11 $11 $11
	ld   de, $4111                                   ; $44ff: $11 $11 $41
	ld   d, $64                                      ; $4502: $16 $64
	ld   c, d                                        ; $4504: $4a
	call c, $ffff                                    ; $4505: $dc $ff $ff
	rst  $38                                         ; $4508: $ff
	rst  $38                                         ; $4509: $ff
	rst  $38                                         ; $450a: $ff
	db   $fd                                         ; $450b: $fd
	sub  [hl]                                        ; $450c: $96
	ld   [hl-], a                                    ; $450d: $32
	ld   de, $1111                                   ; $450e: $11 $11 $11
	ld   de, $1411                                   ; $4511: $11 $11 $14
	ld   sp, $6527                                   ; $4514: $31 $27 $65
	ld   l, [hl]                                     ; $4517: $6e
	rst  JumpTable                                         ; $4518: $df
	rst  $38                                         ; $4519: $ff
	rst  $38                                         ; $451a: $ff
	rst  $38                                         ; $451b: $ff
	rst  $38                                         ; $451c: $ff
	cp   $da                                         ; $451d: $fe $da
	ld   h, e                                        ; $451f: $63
	ld   de, $1211                                   ; $4520: $11 $11 $12
	ld   de, $1111                                   ; $4523: $11 $11 $11
	dec  d                                           ; $4526: $15
	ld   sp, $6545                                   ; $4527: $31 $45 $65
	ld   l, h                                        ; $452a: $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $452b: $cf
	rst  $38                                         ; $452c: $ff
	rst  $38                                         ; $452d: $ff
	rst  $38                                         ; $452e: $ff
	rst  $38                                         ; $452f: $ff
	cp   $cb                                         ; $4530: $fe $cb
	ld   [hl], e                                     ; $4532: $73
	ld   [hl+], a                                    ; $4533: $22
	ld   hl, $1111                                   ; $4534: $21 $11 $11
	ld   de, $1211                                   ; $4537: $11 $11 $12
	ld   b, c                                        ; $453a: $41
	ld   h, $54                                      ; $453b: $26 $54
	ld   l, d                                        ; $453d: $6a
	cp   a                                           ; $453e: $bf
	rst  $38                                         ; $453f: $ff
	rst  $38                                         ; $4540: $ff
	rst  $38                                         ; $4541: $ff
	rst  $38                                         ; $4542: $ff
	db   $fd                                         ; $4543: $fd
	jp   z, $2184                                    ; $4544: $ca $84 $21

	ld   [hl+], a                                    ; $4547: $22
	ld   [de], a                                     ; $4548: $12
	inc  sp                                          ; $4549: $33
	ld   hl, $1121                                   ; $454a: $21 $21 $11
	ld   b, h                                        ; $454d: $44
	ld   de, $4554                                   ; $454e: $11 $54 $45
	sbc  e                                           ; $4551: $9b
	rst  JumpTable                                         ; $4552: $df
	rst  $38                                         ; $4553: $ff
	rst  $38                                         ; $4554: $ff
	rst  $38                                         ; $4555: $ff
	rst  $38                                         ; $4556: $ff
	call c, Call_0d6_5396                            ; $4557: $dc $96 $53
	ld   [hl+], a                                    ; $455a: $22
	inc  sp                                          ; $455b: $33
	inc  [hl]                                        ; $455c: $34
	ld   d, h                                        ; $455d: $54
	ld   b, e                                        ; $455e: $43
	ld   sp, $5111                                   ; $455f: $31 $11 $51
	ld   de, $3524                                   ; $4562: $11 $24 $35
	adc  c                                           ; $4565: $89
	rst  JumpTable                                         ; $4566: $df
	rst  $38                                         ; $4567: $ff
	rst  $38                                         ; $4568: $ff
	rst  $38                                         ; $4569: $ff
	rst  $38                                         ; $456a: $ff
	call c, $6597                                    ; $456b: $dc $97 $65
	ld   b, h                                        ; $456e: $44
	ld   d, [hl]                                     ; $456f: $56
	ld   d, [hl]                                     ; $4570: $56
	halt                                             ; $4571: $76
	ld   h, l                                        ; $4572: $65
	ld   d, e                                        ; $4573: $53

Jump_0d6_4574:
	ld   de, $1113                                   ; $4574: $11 $13 $11
	ld   de, $5634                                   ; $4577: $11 $34 $56
	sbc  h                                           ; $457a: $9c
	rst  $38                                         ; $457b: $ff
	rst  $38                                         ; $457c: $ff
	rst  $38                                         ; $457d: $ff
	rst  $38                                         ; $457e: $ff
	db   $fd                                         ; $457f: $fd
	jp   z, Jump_0d6_7798                            ; $4580: $ca $98 $77

	ld   [hl], a                                     ; $4583: $77
	ld   a, b                                        ; $4584: $78
	sbc  b                                           ; $4585: $98

Jump_0d6_4586:
	ld   [hl], a                                     ; $4586: $77
	ld   h, l                                        ; $4587: $65
	ld   d, e                                        ; $4588: $53
	ld   hl, $1111                                   ; $4589: $21 $11 $11
	ld   [de], a                                     ; $458c: $12
	ld   [de], a                                     ; $458d: $12
	ld   b, l                                        ; $458e: $45
	ld   h, a                                        ; $458f: $67
	sbc  e                                           ; $4590: $9b
	sbc  $ff                                         ; $4591: $de $ff
	rst  $38                                         ; $4593: $ff
	xor  $dc                                         ; $4594: $ee $dc
	set  1, d                                        ; $4596: $cb $ca
	adc  d                                           ; $4598: $8a
	sbc  c                                           ; $4599: $99
	adc  b                                           ; $459a: $88
	add  a                                           ; $459b: $87
	halt                                             ; $459c: $76
	ld   h, l                                        ; $459d: $65
	ld   d, h                                        ; $459e: $54
	ld   b, h                                        ; $459f: $44
	ld   [hl-], a                                    ; $45a0: $32
	inc  hl                                          ; $45a1: $23
	ld   [hl+], a                                    ; $45a2: $22
	inc  sp                                          ; $45a3: $33
	inc  sp                                          ; $45a4: $33
	ld   d, [hl]                                     ; $45a5: $56
	ld   l, b                                        ; $45a6: $68
	sbc  e                                           ; $45a7: $9b
	call $ffde                                       ; $45a8: $cd $de $ff
	db   $ed                                         ; $45ab: $ed
	db   $dd                                         ; $45ac: $dd
	res  7, d                                        ; $45ad: $cb $ba
	sbc  c                                           ; $45af: $99
	sbc  b                                           ; $45b0: $98
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	adc  b                                           ; $45b3: $88
	halt                                             ; $45b4: $76
	ld   h, a                                        ; $45b5: $67
	ld   h, [hl]                                     ; $45b6: $66
	ld   h, l                                        ; $45b7: $65
	ld   d, h                                        ; $45b8: $54
	inc  [hl]                                        ; $45b9: $34
	ld   b, e                                        ; $45ba: $43
	ld   b, e                                        ; $45bb: $43
	ld   b, h                                        ; $45bc: $44
	ld   d, [hl]                                     ; $45bd: $56
	ld   [hl], a                                     ; $45be: $77
	adc  c                                           ; $45bf: $89
	cp   h                                           ; $45c0: $bc
	call z, $cbcd                                    ; $45c1: $cc $cd $cb
	cp   d                                           ; $45c4: $ba
	xor  d                                           ; $45c5: $aa
	adc  b                                           ; $45c6: $88
	sbc  b                                           ; $45c7: $98
	adc  b                                           ; $45c8: $88
	sbc  c                                           ; $45c9: $99
	sbc  c                                           ; $45ca: $99
	xor  d                                           ; $45cb: $aa
	xor  c                                           ; $45cc: $a9
	sbc  b                                           ; $45cd: $98
	adc  c                                           ; $45ce: $89
	add  a                                           ; $45cf: $87
	halt                                             ; $45d0: $76
	ld   d, h                                        ; $45d1: $54
	ld   b, h                                        ; $45d2: $44
	ld   b, h                                        ; $45d3: $44
	ld   b, e                                        ; $45d4: $43
	inc  [hl]                                        ; $45d5: $34
	ld   b, l                                        ; $45d6: $45
	ld   h, [hl]                                     ; $45d7: $66
	ld   a, b                                        ; $45d8: $78
	adc  d                                           ; $45d9: $8a
	xor  d                                           ; $45da: $aa
	xor  e                                           ; $45db: $ab
	cp   d                                           ; $45dc: $ba
	xor  e                                           ; $45dd: $ab
	cp   d                                           ; $45de: $ba
	xor  d                                           ; $45df: $aa
	xor  d                                           ; $45e0: $aa
	xor  d                                           ; $45e1: $aa
	cp   d                                           ; $45e2: $ba
	xor  e                                           ; $45e3: $ab
	cp   e                                           ; $45e4: $bb
	cp   e                                           ; $45e5: $bb
	xor  c                                           ; $45e6: $a9
	adc  b                                           ; $45e7: $88
	add  a                                           ; $45e8: $87
	ld   h, [hl]                                     ; $45e9: $66
	ld   d, h                                        ; $45ea: $54
	ld   [hl-], a                                    ; $45eb: $32
	inc  sp                                          ; $45ec: $33
	inc  hl                                          ; $45ed: $23
	inc  sp                                          ; $45ee: $33
	ld   b, h                                        ; $45ef: $44
	ld   d, [hl]                                     ; $45f0: $56
	ld   a, b                                        ; $45f1: $78
	adc  d                                           ; $45f2: $8a
	xor  d                                           ; $45f3: $aa
	cp   e                                           ; $45f4: $bb
	call z, $bbcc                                    ; $45f5: $cc $cc $bb
	cp   e                                           ; $45f8: $bb
	cp   d                                           ; $45f9: $ba
	xor  e                                           ; $45fa: $ab
	cp   e                                           ; $45fb: $bb
	cp   d                                           ; $45fc: $ba
	xor  d                                           ; $45fd: $aa
	xor  d                                           ; $45fe: $aa
	sbc  c                                           ; $45ff: $99
	adc  b                                           ; $4600: $88
	halt                                             ; $4601: $76
	ld   h, [hl]                                     ; $4602: $66
	ld   d, l                                        ; $4603: $55
	ld   [hl-], a                                    ; $4604: $32
	ld   [hl+], a                                    ; $4605: $22
	ld   [hl-], a                                    ; $4606: $32
	inc  [hl]                                        ; $4607: $34
	inc  [hl]                                        ; $4608: $34
	ld   b, l                                        ; $4609: $45
	ld   a, b                                        ; $460a: $78
	adc  c                                           ; $460b: $89
	xor  h                                           ; $460c: $ac
	call z, $dcdc                                    ; $460d: $cc $dc $dc
	call z, $abbc                                    ; $4610: $cc $bc $ab
	xor  d                                           ; $4613: $aa
	xor  d                                           ; $4614: $aa
	xor  c                                           ; $4615: $a9
	sbc  d                                           ; $4616: $9a
	xor  d                                           ; $4617: $aa
	sbc  b                                           ; $4618: $98
	add  a                                           ; $4619: $87
	ld   h, l                                        ; $461a: $65
	ld   d, h                                        ; $461b: $54
	ld   b, e                                        ; $461c: $43
	ld   hl, $2211                                   ; $461d: $21 $11 $22
	inc  [hl]                                        ; $4620: $34
	ld   b, l                                        ; $4621: $45
	ld   l, c                                        ; $4622: $69
	xor  d                                           ; $4623: $aa
	cp   e                                           ; $4624: $bb
	adc  $ff                                         ; $4625: $ce $ff
	db   $dd                                         ; $4627: $dd
	call c, $aacb                                    ; $4628: $dc $cb $aa
	xor  c                                           ; $462b: $a9
	sbc  d                                           ; $462c: $9a
	xor  c                                           ; $462d: $a9
	sbc  d                                           ; $462e: $9a
	sbc  d                                           ; $462f: $9a
	adc  b                                           ; $4630: $88
	halt                                             ; $4631: $76
	ld   b, e                                        ; $4632: $43
	ld   [hl-], a                                    ; $4633: $32
	ld   de, $1111                                   ; $4634: $11 $11 $11
	inc  de                                          ; $4637: $13
	ld   d, [hl]                                     ; $4638: $56
	adc  c                                           ; $4639: $89
	cp   a                                           ; $463a: $bf
	rst  $38                                         ; $463b: $ff
	db   $dd                                         ; $463c: $dd
	rst  $38                                         ; $463d: $ff
	db   $fd                                         ; $463e: $fd
	cp   d                                           ; $463f: $ba
	cp   e                                           ; $4640: $bb
	cp   d                                           ; $4641: $ba
	xor  b                                           ; $4642: $a8
	sbc  d                                           ; $4643: $9a
	cp   e                                           ; $4644: $bb
	xor  d                                           ; $4645: $aa
	sbc  c                                           ; $4646: $99
	sbc  c                                           ; $4647: $99
	halt                                             ; $4648: $76
	ld   b, c                                        ; $4649: $41
	ld   de, $1111                                   ; $464a: $11 $11 $11
	ld   de, $9b25                                   ; $464d: $11 $25 $9b
	adc  $ff                                         ; $4650: $ce $ff

Jump_0d6_4652:
	rst  $38                                         ; $4652: $ff
	db   $ec                                         ; $4653: $ec
	db   $dd                                         ; $4654: $dd
	db   $db                                         ; $4655: $db
	adc  b                                           ; $4656: $88
	sbc  d                                           ; $4657: $9a
	cp   d                                           ; $4658: $ba
	xor  c                                           ; $4659: $a9
	xor  e                                           ; $465a: $ab
	res  7, d                                        ; $465b: $cb $ba
	sbc  c                                           ; $465d: $99
	sub  a                                           ; $465e: $97
	ld   b, d                                        ; $465f: $42
	ld   de, $1111                                   ; $4660: $11 $11 $11
	ld   de, $7c12                                   ; $4663: $11 $12 $7c
	cp   $ff                                         ; $4666: $fe $ff
	rst  $38                                         ; $4668: $ff
	db   $fd                                         ; $4669: $fd
	cp   e                                           ; $466a: $bb
	cp   h                                           ; $466b: $bc
	xor  b                                           ; $466c: $a8
	adc  d                                           ; $466d: $8a
	cp   e                                           ; $466e: $bb
	cp   d                                           ; $466f: $ba
	cp   d                                           ; $4670: $ba
	res  5, d                                        ; $4671: $cb $aa
	sbc  c                                           ; $4673: $99
	add  a                                           ; $4674: $87
	ld   d, d                                        ; $4675: $52
	ld   de, $1111                                   ; $4676: $11 $11 $11
	ld   de, $9c11                                   ; $4679: $11 $11 $9c
	rst  $28                                         ; $467c: $ef
	rst  $38                                         ; $467d: $ff
	rst  $38                                         ; $467e: $ff
	ld   a, [$ab99]                                  ; $467f: $fa $99 $ab
	xor  b                                           ; $4682: $a8
	sbc  h                                           ; $4683: $9c
	db   $dd                                         ; $4684: $dd
	cp   d                                           ; $4685: $ba
	xor  e                                           ; $4686: $ab
	cp   e                                           ; $4687: $bb
	sbc  b                                           ; $4688: $98
	adc  c                                           ; $4689: $89
	adc  b                                           ; $468a: $88
	ld   d, e                                        ; $468b: $53
	ld   [hl-], a                                    ; $468c: $32
	ld   de, $1111                                   ; $468d: $11 $11 $11
	ld   de, $cf3b                                   ; $4690: $11 $3b $cf
	rst  $38                                         ; $4693: $ff
	rst  $38                                         ; $4694: $ff
	db   $fc                                         ; $4695: $fc
	sub  a                                           ; $4696: $97
	ld   a, d                                        ; $4697: $7a
	res  1, d                                        ; $4698: $cb $8a
	call z, $aadc                                    ; $469a: $cc $dc $aa
	cp   e                                           ; $469d: $bb
	sbc  b                                           ; $469e: $98
	ld   a, b                                        ; $469f: $78
	adc  c                                           ; $46a0: $89
	ld   [hl], l                                     ; $46a1: $75
	ld   b, l                                        ; $46a2: $45
	ld   b, c                                        ; $46a3: $41
	ld   de, $1111                                   ; $46a4: $11 $11 $11
	rla                                              ; $46a7: $17
	rst  $28                                         ; $46a8: $ef
	rst  $38                                         ; $46a9: $ff
	rst  $38                                         ; $46aa: $ff
	rst  $38                                         ; $46ab: $ff
	add  [hl]                                        ; $46ac: $86
	ld   l, b                                        ; $46ad: $68
	cp   h                                           ; $46ae: $bc
	sbc  b                                           ; $46af: $98
	cp   a                                           ; $46b0: $bf
	db   $fd                                         ; $46b1: $fd
	cp   c                                           ; $46b2: $b9
	xor  d                                           ; $46b3: $aa
	sbc  b                                           ; $46b4: $98
	ld   h, a                                        ; $46b5: $67

Call_0d6_46b6:
	ld   a, b                                        ; $46b6: $78
	add  a                                           ; $46b7: $87
	ld   h, a                                        ; $46b8: $67
	ld   [hl], l                                     ; $46b9: $75
	ld   de, $1111                                   ; $46ba: $11 $11 $11
	ld   de, $ff2e                                   ; $46bd: $11 $2e $ff
	rst  $38                                         ; $46c0: $ff
	rst  $38                                         ; $46c1: $ff
	ld   sp, hl                                      ; $46c2: $f9
	ld   b, l                                        ; $46c3: $45
	ld   a, e                                        ; $46c4: $7b
	jp   z, $ef8b                                    ; $46c5: $ca $8b $ef

	db   $ec                                         ; $46c8: $ec
	sbc  c                                           ; $46c9: $99
	cp   d                                           ; $46ca: $ba
	halt                                             ; $46cb: $76
	ld   h, a                                        ; $46cc: $67
	sbc  d                                           ; $46cd: $9a
	adc  b                                           ; $46ce: $88
	adc  c                                           ; $46cf: $89
	and  [hl]                                        ; $46d0: $a6
	ld   de, $1111                                   ; $46d1: $11 $11 $11
	ld   de, $ff1f                                   ; $46d4: $11 $1f $ff
	rst  $38                                         ; $46d7: $ff
	rst  $38                                         ; $46d8: $ff
	rst  $30                                         ; $46d9: $f7
	ld   [de], a                                     ; $46da: $12
	ld   l, d                                        ; $46db: $6a
	db   $ec                                         ; $46dc: $ec
	xor  h                                           ; $46dd: $ac
	rst  $28                                         ; $46de: $ef
	jp   c, $b999                                    ; $46df: $da $99 $b9

	ld   [hl], l                                     ; $46e2: $75
	ld   h, a                                        ; $46e3: $67
	sbc  c                                           ; $46e4: $99
	adc  b                                           ; $46e5: $88
	xor  h                                           ; $46e6: $ac
	cp   b                                           ; $46e7: $b8
	ld   b, c                                        ; $46e8: $41
	ld   de, $1111                                   ; $46e9: $11 $11 $11
	rla                                              ; $46ec: $17
	rst  $38                                         ; $46ed: $ff
	rst  $38                                         ; $46ee: $ff
	rst  $38                                         ; $46ef: $ff
	ei                                               ; $46f0: $fb
	ld   sp, $de58                                   ; $46f1: $31 $58 $de
	set  1, a                                        ; $46f4: $cb $cf
	db   $eb                                         ; $46f6: $eb
	xor  d                                           ; $46f7: $aa
	xor  d                                           ; $46f8: $aa
	add  l                                           ; $46f9: $85
	ld   d, a                                        ; $46fa: $57
	sbc  d                                           ; $46fb: $9a
	xor  c                                           ; $46fc: $a9
	cp   l                                           ; $46fd: $bd
	db   $db                                         ; $46fe: $db
	ld   h, d                                        ; $46ff: $62
	ld   de, $1111                                   ; $4700: $11 $11 $11
	ld   de, $ff4f                                   ; $4703: $11 $4f $ff
	rst  $38                                         ; $4706: $ff
	db   $ed                                         ; $4707: $ed
	and  h                                           ; $4708: $a4
	inc  d                                           ; $4709: $14
	ld   a, e                                        ; $470a: $7b
	cp   $cd                                         ; $470b: $fe $cd
	db   $ed                                         ; $470d: $ed
	cp   d                                           ; $470e: $ba
	sbc  d                                           ; $470f: $9a
	xor  b                                           ; $4710: $a8
	ld   h, [hl]                                     ; $4711: $66
	ld   a, c                                        ; $4712: $79
	sbc  d                                           ; $4713: $9a
	xor  e                                           ; $4714: $ab
	db   $dd                                         ; $4715: $dd
	ret  c                                           ; $4716: $d8

	ld   b, c                                        ; $4717: $41
	ld   de, $1111                                   ; $4718: $11 $11 $11
	ld   de, $ff8f                                   ; $471b: $11 $8f $ff
	rst  $38                                         ; $471e: $ff
	jp   hl                                          ; $471f: $e9


	ld   [hl], d                                     ; $4720: $72
	dec  d                                           ; $4721: $15
	sbc  [hl]                                        ; $4722: $9e
	rst  $38                                         ; $4723: $ff
	call c, $aadd                                    ; $4724: $dc $dd $aa
	xor  d                                           ; $4727: $aa
	sub  a                                           ; $4728: $97
	ld   h, [hl]                                     ; $4729: $66
	adc  c                                           ; $472a: $89
	xor  e                                           ; $472b: $ab
	cp   h                                           ; $472c: $bc
	db   $dd                                         ; $472d: $dd
	and  [hl]                                        ; $472e: $a6
	ld   hl, $1111                                   ; $472f: $21 $11 $11
	ld   de, $8f11                                   ; $4732: $11 $11 $8f
	rst  $38                                         ; $4735: $ff
	rst  $38                                         ; $4736: $ff
	jp   z, $1782                                    ; $4737: $ca $82 $17

	xor  l                                           ; $473a: $ad
	rst  $38                                         ; $473b: $ff
	call c, $badc                                    ; $473c: $dc $dc $ba
	sbc  c                                           ; $473f: $99
	add  a                                           ; $4740: $87
	ld   h, [hl]                                     ; $4741: $66
	sbc  c                                           ; $4742: $99
	cp   h                                           ; $4743: $bc
	call $95ec                                       ; $4744: $cd $ec $95
	ld   hl, $1111                                   ; $4747: $21 $11 $11
	ld   de, $4f11                                   ; $474a: $11 $11 $4f
	rst  $38                                         ; $474d: $ff
	cp   $eb                                         ; $474e: $fe $eb
	add  d                                           ; $4750: $82
	inc  de                                          ; $4751: $13
	sbc  a                                           ; $4752: $9f
	rst  $38                                         ; $4753: $ff
	call c, $b8ed                                    ; $4754: $dc $ed $b8
	adc  b                                           ; $4757: $88
	add  a                                           ; $4758: $87
	ld   d, [hl]                                     ; $4759: $56
	adc  d                                           ; $475a: $8a
	cp   e                                           ; $475b: $bb
	call z, $a6dd                                    ; $475c: $cc $dd $a6
	ld   hl, $1111                                   ; $475f: $21 $11 $11
	ld   de, $3f11                                   ; $4762: $11 $11 $3f
	rst  $38                                         ; $4765: $ff
	rst  $38                                         ; $4766: $ff
	db   $db                                         ; $4767: $db
	ld   [hl], h                                     ; $4768: $74
	inc  d                                           ; $4769: $14
	ld   a, l                                        ; $476a: $7d
	rst  $38                                         ; $476b: $ff
	cp   $da                                         ; $476c: $fe $da
	cp   c                                           ; $476e: $b9
	adc  b                                           ; $476f: $88
	sbc  b                                           ; $4770: $98
	ld   [hl], a                                     ; $4771: $77
	ld   a, b                                        ; $4772: $78
	xor  e                                           ; $4773: $ab
	cp   h                                           ; $4774: $bc
	db   $ed                                         ; $4775: $ed
	cp   c                                           ; $4776: $b9
	ld   h, e                                        ; $4777: $63
	ld   de, $1111                                   ; $4778: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $477b: $11 $11 $ff
	rst  $38                                         ; $477e: $ff
	cp   $c9                                         ; $477f: $fe $c9
	ld   b, c                                        ; $4781: $41
	jr   z, @-$1f                                    ; $4782: $28 $df

	rst  $38                                         ; $4784: $ff
	sbc  $b9                                         ; $4785: $de $b9
	ld   l, b                                        ; $4787: $68
	xor  d                                           ; $4788: $aa
	sub  a                                           ; $4789: $97
	ld   h, a                                        ; $478a: $67
	sbc  c                                           ; $478b: $99
	xor  e                                           ; $478c: $ab
	call $97ec                                       ; $478d: $cd $ec $97
	ld   d, d                                        ; $4790: $52
	ld   de, $1111                                   ; $4791: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $4794: $11 $12 $ff
	rst  $38                                         ; $4797: $ff
	rst  $38                                         ; $4798: $ff
	cp   b                                           ; $4799: $b8
	ld   sp, $df39                                   ; $479a: $31 $39 $df
	rst  $38                                         ; $479d: $ff
	rst  $28                                         ; $479e: $ef
	reti                                             ; $479f: $d9


	ld   h, a                                        ; $47a0: $67
	sbc  b                                           ; $47a1: $98
	sub  a                                           ; $47a2: $97
	ld   a, c                                        ; $47a3: $79
	sbc  c                                           ; $47a4: $99
	xor  h                                           ; $47a5: $ac
	sbc  $cb                                         ; $47a6: $de $cb
	sub  a                                           ; $47a8: $97
	ld   d, d                                        ; $47a9: $52
	ld   de, $1111                                   ; $47aa: $11 $11 $11
	ld   de, $cf11                                   ; $47ad: $11 $11 $cf
	rst  $38                                         ; $47b0: $ff
	rst  $38                                         ; $47b1: $ff
	ret  z                                           ; $47b2: $c8

	ld   b, c                                        ; $47b3: $41
	rla                                              ; $47b4: $17
	call $ffff                                       ; $47b5: $cd $ff $ff
	jp   c, $8866                                    ; $47b8: $da $66 $88

	add  a                                           ; $47bb: $87
	ld   [hl], a                                     ; $47bc: $77
	sbc  c                                           ; $47bd: $99
	xor  e                                           ; $47be: $ab
	call $a8dc                                       ; $47bf: $cd $dc $a8
	ld   h, h                                        ; $47c2: $64
	ld   hl, $1111                                   ; $47c3: $21 $11 $11
	ld   de, $1d11                                   ; $47c6: $11 $11 $1d
	rst  $38                                         ; $47c9: $ff
	rst  $38                                         ; $47ca: $ff
	cp   $95                                         ; $47cb: $fe $95
	ld   [de], a                                     ; $47cd: $12
	ld   a, d                                        ; $47ce: $7a
	cp   [hl]                                        ; $47cf: $be
	cp   $fe                                         ; $47d0: $fe $fe
	and  a                                           ; $47d2: $a7
	adc  c                                           ; $47d3: $89
	ld   [hl], a                                     ; $47d4: $77
	ld   [hl], a                                     ; $47d5: $77
	adc  c                                           ; $47d6: $89
	xor  d                                           ; $47d7: $aa
	cp   h                                           ; $47d8: $bc
	res  7, e                                        ; $47d9: $cb $bb
	xor  b                                           ; $47db: $a8
	ld   h, e                                        ; $47dc: $63
	ld   de, $1111                                   ; $47dd: $11 $11 $11
	ld   de, $1f11                                   ; $47e0: $11 $11 $1f
	rst  $38                                         ; $47e3: $ff
	rst  $38                                         ; $47e4: $ff
	cp   $b4                                         ; $47e5: $fe $b4
	inc  de                                          ; $47e7: $13
	ld   a, b                                        ; $47e8: $78
	cp   l                                           ; $47e9: $bd
	rst  $28                                         ; $47ea: $ef
	cp   $a9                                         ; $47eb: $fe $a9
	sbc  b                                           ; $47ed: $98
	ld   [hl], a                                     ; $47ee: $77
	ld   d, [hl]                                     ; $47ef: $56
	adc  d                                           ; $47f0: $8a
	sbc  d                                           ; $47f1: $9a
	cp   h                                           ; $47f2: $bc
	call $a9ca                                       ; $47f3: $cd $ca $a9
	ld   [hl], l                                     ; $47f6: $75
	ld   sp, $1111                                   ; $47f7: $31 $11 $11
	ld   de, $1211                                   ; $47fa: $11 $11 $12
	rst  $38                                         ; $47fd: $ff
	rst  $38                                         ; $47fe: $ff
	rst  $38                                         ; $47ff: $ff
	ld   [$4541], a                                  ; $4800: $ea $41 $45
	ld   a, c                                        ; $4803: $79
	cp   [hl]                                        ; $4804: $be
	rst  $38                                         ; $4805: $ff
	res  7, d                                        ; $4806: $cb $ba
	sub  [hl]                                        ; $4808: $96
	ld   h, h                                        ; $4809: $64
	ld   a, b                                        ; $480a: $78
	adc  b                                           ; $480b: $88
	xor  l                                           ; $480c: $ad
	db   $dd                                         ; $480d: $dd
	res  7, e                                        ; $480e: $cb $bb
	sub  [hl]                                        ; $4810: $96
	ld   d, h                                        ; $4811: $54
	ld   hl, $1111                                   ; $4812: $21 $11 $11
	ld   de, $1e11                                   ; $4815: $11 $11 $1e
	rst  $38                                         ; $4818: $ff
	rst  $38                                         ; $4819: $ff
	rst  $38                                         ; $481a: $ff
	or   [hl]                                        ; $481b: $b6
	dec  h                                           ; $481c: $25
	ld   b, l                                        ; $481d: $45
	ld   l, b                                        ; $481e: $68
	call $cdec                                       ; $481f: $cd $ec $cd
	jp   z, Jump_0d6_6676                            ; $4822: $ca $76 $66

	ld   [hl], a                                     ; $4825: $77
	adc  c                                           ; $4826: $89
	call $cdcd                                       ; $4827: $cd $cd $cd
	jp   z, Jump_0d6_5386                            ; $482a: $ca $86 $53

	ld   bc, $1111                                   ; $482d: $01 $11 $11
	ld   de, $6f11                                   ; $4830: $11 $11 $6f
	rst  $38                                         ; $4833: $ff
	rst  $38                                         ; $4834: $ff
	rst  $38                                         ; $4835: $ff
	or   l                                           ; $4836: $b5
	ld   b, l                                        ; $4837: $45
	ld   b, h                                        ; $4838: $44
	ld   e, b                                        ; $4839: $58
	xor  e                                           ; $483a: $ab
	set  1, l                                        ; $483b: $cb $cd
	jp   z, Jump_0d6_7798                            ; $483d: $ca $98 $77

	ld   [hl], a                                     ; $4840: $77
	adc  d                                           ; $4841: $8a
	cp   e                                           ; $4842: $bb
	call z, $badc                                    ; $4843: $cc $dc $ba
	add  a                                           ; $4846: $87
	ld   h, e                                        ; $4847: $63
	ld   de, $1111                                   ; $4848: $11 $11 $11
	ld   de, $7f11                                   ; $484b: $11 $11 $7f
	rst  $38                                         ; $484e: $ff
	rst  $38                                         ; $484f: $ff
	rst  $38                                         ; $4850: $ff
	rst  ToBoot                                         ; $4851: $c7
	ld   h, [hl]                                     ; $4852: $66
	ld   b, e                                        ; $4853: $43
	dec  [hl]                                        ; $4854: $35
	ld   a, b                                        ; $4855: $78
	sbc  e                                           ; $4856: $9b
	rst  JumpTable                                         ; $4857: $df
	db   $ed                                         ; $4858: $ed
	cp   e                                           ; $4859: $bb
	xor  c                                           ; $485a: $a9
	sub  a                                           ; $485b: $97
	ld   a, c                                        ; $485c: $79
	sbc  c                                           ; $485d: $99
	sbc  e                                           ; $485e: $9b
	call z, $a9cb                                    ; $485f: $cc $cb $a9
	add  l                                           ; $4862: $85
	ld   hl, $1111                                   ; $4863: $21 $11 $11
	ld   de, $4f11                                   ; $4866: $11 $11 $4f
	rst  $38                                         ; $4869: $ff
	rst  $38                                         ; $486a: $ff
	rst  $38                                         ; $486b: $ff
	db   $fc                                         ; $486c: $fc
	cp   d                                           ; $486d: $ba
	ld   h, d                                        ; $486e: $62
	ld   [de], a                                     ; $486f: $12
	inc  sp                                          ; $4870: $33
	dec  [hl]                                        ; $4871: $35
	adc  l                                           ; $4872: $8d
	call c, $fedf                                    ; $4873: $dc $df $fe
	res  7, d                                        ; $4876: $cb $ba
	xor  b                                           ; $4878: $a8
	ld   a, b                                        ; $4879: $78
	sbc  c                                           ; $487a: $99
	adc  b                                           ; $487b: $88
	sbc  c                                           ; $487c: $99
	xor  b                                           ; $487d: $a8
	ld   h, e                                        ; $487e: $63
	ld   [hl-], a                                    ; $487f: $32
	ld   de, $1111                                   ; $4880: $11 $11 $11
	dec  d                                           ; $4883: $15
	xor  b                                           ; $4884: $a8
	cp   a                                           ; $4885: $bf
	rst  $38                                         ; $4886: $ff
	rst  $38                                         ; $4887: $ff
	rst  $38                                         ; $4888: $ff
	db   $fc                                         ; $4889: $fc
	add  a                                           ; $488a: $87
	ld   h, e                                        ; $488b: $63
	ld   de, $4312                                   ; $488c: $11 $12 $43
	ld   c, b                                        ; $488f: $48
	call $ffff                                       ; $4890: $cd $ff $ff
	rst  $38                                         ; $4893: $ff
	db   $ec                                         ; $4894: $ec
	res  0, [hl]                                     ; $4895: $cb $86
	ld   d, l                                        ; $4897: $55
	ld   d, h                                        ; $4898: $54
	ld   [hl-], a                                    ; $4899: $32
	inc  hl                                          ; $489a: $23
	ld   hl, $1111                                   ; $489b: $21 $11 $11
	ld   de, $5667                                   ; $489e: $11 $67 $56
	adc  e                                           ; $48a1: $8b
	cp   l                                           ; $48a2: $bd
	call z, $feff                                    ; $48a3: $cc $ff $fe
	db   $fd                                         ; $48a6: $fd
	db   $db                                         ; $48a7: $db
	xor  b                                           ; $48a8: $a8
	halt                                             ; $48a9: $76
	ld   d, l                                        ; $48aa: $55
	ld   b, l                                        ; $48ab: $45
	ld   h, a                                        ; $48ac: $67
	ld   [hl], a                                     ; $48ad: $77
	sbc  c                                           ; $48ae: $99
	cp   e                                           ; $48af: $bb
	cp   e                                           ; $48b0: $bb
	cp   e                                           ; $48b1: $bb
	cp   d                                           ; $48b2: $ba
	cp   e                                           ; $48b3: $bb
	cp   d                                           ; $48b4: $ba
	sbc  d                                           ; $48b5: $9a
	xor  c                                           ; $48b6: $a9
	adc  b                                           ; $48b7: $88
	ld   [hl], a                                     ; $48b8: $77
	ld   h, [hl]                                     ; $48b9: $66
	ld   d, h                                        ; $48ba: $54
	inc  sp                                          ; $48bb: $33
	ld   [hl+], a                                    ; $48bc: $22
	ld   de, $1211                                   ; $48bd: $11 $11 $12
	dec  [hl]                                        ; $48c0: $35
	ld   l, b                                        ; $48c1: $68
	sbc  d                                           ; $48c2: $9a
	cp   h                                           ; $48c3: $bc
	call z, $dddd                                    ; $48c4: $cc $dd $dd
	call c, $cddc                                    ; $48c7: $dc $dc $cd
	call z, $cbcb                                    ; $48ca: $cc $cb $cb
	cp   d                                           ; $48cd: $ba
	sbc  c                                           ; $48ce: $99
	sbc  b                                           ; $48cf: $98
	ld   [hl], a                                     ; $48d0: $77
	halt                                             ; $48d1: $76
	ld   h, l                                        ; $48d2: $65
	ld   d, l                                        ; $48d3: $55
	ld   b, h                                        ; $48d4: $44
	ld   b, e                                        ; $48d5: $43
	inc  sp                                          ; $48d6: $33
	ld   hl, $1111                                   ; $48d7: $21 $11 $11
	inc  h                                           ; $48da: $24
	ld   d, [hl]                                     ; $48db: $56
	adc  c                                           ; $48dc: $89
	xor  h                                           ; $48dd: $ac
	db   $dd                                         ; $48de: $dd
	db   $dd                                         ; $48df: $dd
	rst  $28                                         ; $48e0: $ef
	db   $ed                                         ; $48e1: $ed
	sbc  $de                                         ; $48e2: $de $de
	db   $dd                                         ; $48e4: $dd
	db   $dd                                         ; $48e5: $dd
	res  5, c                                        ; $48e6: $cb $a9
	sbc  b                                           ; $48e8: $98
	sub  a                                           ; $48e9: $97
	ld   [hl], a                                     ; $48ea: $77
	halt                                             ; $48eb: $76
	ld   h, [hl]                                     ; $48ec: $66
	ld   h, l                                        ; $48ed: $65
	ld   d, l                                        ; $48ee: $55
	ld   b, h                                        ; $48ef: $44
	ld   b, e                                        ; $48f0: $43
	ld   hl, $1121                                   ; $48f1: $21 $21 $11
	ld   [de], a                                     ; $48f4: $12
	ld   [de], a                                     ; $48f5: $12
	ld   h, a                                        ; $48f6: $67
	ld   a, d                                        ; $48f7: $7a
	set  1, [hl]                                     ; $48f8: $cb $ce
	xor  $ff                                         ; $48fa: $ee $ff
	db   $ed                                         ; $48fc: $ed
	db   $ec                                         ; $48fd: $ec
	db   $dd                                         ; $48fe: $dd
	call z, $babb                                    ; $48ff: $cc $bb $ba
	xor  c                                           ; $4902: $a9
	sbc  b                                           ; $4903: $98
	adc  b                                           ; $4904: $88
	ld   [hl], a                                     ; $4905: $77
	ld   [hl], a                                     ; $4906: $77
	ld   [hl], a                                     ; $4907: $77
	ld   [hl], a                                     ; $4908: $77
	halt                                             ; $4909: $76
	ld   h, [hl]                                     ; $490a: $66
	ld   d, l                                        ; $490b: $55
	ld   b, e                                        ; $490c: $43
	ld   [hl-], a                                    ; $490d: $32
	ld   [de], a                                     ; $490e: $12
	ld   hl, $2112                                   ; $490f: $21 $12 $21
	ld   b, a                                        ; $4912: $47
	ld   a, b                                        ; $4913: $78
	cp   e                                           ; $4914: $bb
	call $effd                                       ; $4915: $cd $fd $ef
	db   $ec                                         ; $4918: $ec
	db   $ed                                         ; $4919: $ed
	call $bcdc                                       ; $491a: $cd $dc $bc
	xor  d                                           ; $491d: $aa
	cp   c                                           ; $491e: $b9
	sbc  c                                           ; $491f: $99
	sbc  b                                           ; $4920: $98
	adc  b                                           ; $4921: $88
	ld   [hl], a                                     ; $4922: $77
	ld   [hl], a                                     ; $4923: $77
	ld   [hl], a                                     ; $4924: $77
	ld   [hl], a                                     ; $4925: $77
	ld   h, [hl]                                     ; $4926: $66
	ld   d, l                                        ; $4927: $55
	ld   d, h                                        ; $4928: $54
	ld   [hl-], a                                    ; $4929: $32
	ld   hl, $1112                                   ; $492a: $21 $12 $11
	inc  hl                                          ; $492d: $23
	inc  h                                           ; $492e: $24
	ld   [hl], a                                     ; $492f: $77
	sbc  h                                           ; $4930: $9c
	call z, $deef                                    ; $4931: $cc $ef $de
	xor  $cd                                         ; $4934: $ee $cd
	call z, $babc                                    ; $4936: $cc $bc $ba
	cp   e                                           ; $4939: $bb
	xor  d                                           ; $493a: $aa
	sbc  c                                           ; $493b: $99
	adc  c                                           ; $493c: $89
	sbc  b                                           ; $493d: $98
	adc  b                                           ; $493e: $88
	ld   a, b                                        ; $493f: $78
	ld   [hl], a                                     ; $4940: $77
	ld   [hl], a                                     ; $4941: $77
	ld   [hl], a                                     ; $4942: $77
	halt                                             ; $4943: $76
	ld   h, l                                        ; $4944: $65
	ld   d, h                                        ; $4945: $54
	inc  sp                                          ; $4946: $33
	ld   hl, $1122                                   ; $4947: $21 $22 $11
	inc  hl                                          ; $494a: $23
	inc  [hl]                                        ; $494b: $34
	ld   a, b                                        ; $494c: $78
	xor  e                                           ; $494d: $ab
	call z, $dedd                                    ; $494e: $cc $dd $de
	db   $ed                                         ; $4951: $ed
	db   $dd                                         ; $4952: $dd
	res  7, e                                        ; $4953: $cb $bb
	cp   e                                           ; $4955: $bb
	xor  d                                           ; $4956: $aa
	xor  d                                           ; $4957: $aa
	sbc  c                                           ; $4958: $99
	xor  d                                           ; $4959: $aa
	sbc  b                                           ; $495a: $98
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	sbc  c                                           ; $495d: $99
	sbc  b                                           ; $495e: $98
	adc  b                                           ; $495f: $88
	ld   [hl], a                                     ; $4960: $77
	ld   h, [hl]                                     ; $4961: $66
	ld   h, l                                        ; $4962: $65
	ld   b, h                                        ; $4963: $44
	ld   [hl-], a                                    ; $4964: $32
	ld   [de], a                                     ; $4965: $12
	ld   de, $2212                                   ; $4966: $11 $12 $22
	ld   b, [hl]                                     ; $4969: $46
	ld   a, c                                        ; $496a: $79
	xor  e                                           ; $496b: $ab
	adc  $dd                                         ; $496c: $ce $dd
	cp   $ed                                         ; $496e: $fe $ed
	db   $ec                                         ; $4970: $ec
	call z, $bbdc                                    ; $4971: $cc $dc $bb
	cp   e                                           ; $4974: $bb
	cp   c                                           ; $4975: $b9
	sbc  d                                           ; $4976: $9a
	adc  b                                           ; $4977: $88
	adc  b                                           ; $4978: $88
	ld   [hl], a                                     ; $4979: $77
	ld   [hl], a                                     ; $497a: $77
	ld   [hl], a                                     ; $497b: $77
	ld   h, [hl]                                     ; $497c: $66
	ld   d, l                                        ; $497d: $55
	ld   b, h                                        ; $497e: $44
	ld   [hl-], a                                    ; $497f: $32
	ld   de, $1111                                   ; $4980: $11 $11 $11
	ld   de, $6713                                   ; $4983: $11 $13 $67
	sbc  h                                           ; $4986: $9c
	db   $dd                                         ; $4987: $dd
	rst  $28                                         ; $4988: $ef
	rst  $38                                         ; $4989: $ff
	rst  $38                                         ; $498a: $ff
	rst  $28                                         ; $498b: $ef
	db   $ed                                         ; $498c: $ed
	call c, $bbbc                                    ; $498d: $dc $bc $bb
	xor  d                                           ; $4990: $aa
	xor  b                                           ; $4991: $a8
	adc  c                                           ; $4992: $89
	adc  b                                           ; $4993: $88
	add  a                                           ; $4994: $87
	ld   [hl], a                                     ; $4995: $77
	ld   [hl], a                                     ; $4996: $77
	halt                                             ; $4997: $76
	ld   h, l                                        ; $4998: $65
	ld   d, h                                        ; $4999: $54
	ld   [hl-], a                                    ; $499a: $32
	ld   de, $1111                                   ; $499b: $11 $11 $11
	ld   de, $4711                                   ; $499e: $11 $11 $47
	adc  e                                           ; $49a1: $8b
	db   $dd                                         ; $49a2: $dd
	rst  $28                                         ; $49a3: $ef
	rst  $38                                         ; $49a4: $ff
	rst  $38                                         ; $49a5: $ff
	rst  $38                                         ; $49a6: $ff
	db   $fd                                         ; $49a7: $fd
	db   $dd                                         ; $49a8: $dd
	db   $db                                         ; $49a9: $db
	cp   e                                           ; $49aa: $bb
	xor  d                                           ; $49ab: $aa
	xor  c                                           ; $49ac: $a9
	sbc  c                                           ; $49ad: $99
	ld   [hl], a                                     ; $49ae: $77
	ld   [hl], a                                     ; $49af: $77
	ld   [hl], a                                     ; $49b0: $77
	ld   [hl], a                                     ; $49b1: $77
	halt                                             ; $49b2: $76
	ld   h, l                                        ; $49b3: $65
	ld   d, h                                        ; $49b4: $54
	ld   [hl-], a                                    ; $49b5: $32
	ld   de, $1111                                   ; $49b6: $11 $11 $11
	ld   de, $4611                                   ; $49b9: $11 $11 $46
	adc  e                                           ; $49bc: $8b
	sbc  $ef                                         ; $49bd: $de $ef
	rst  $38                                         ; $49bf: $ff
	rst  $38                                         ; $49c0: $ff
	rst  $38                                         ; $49c1: $ff
	cp   $dc                                         ; $49c2: $fe $dc
	call c, $a9bb                                    ; $49c4: $dc $bb $a9
	sbc  c                                           ; $49c7: $99
	adc  b                                           ; $49c8: $88
	ld   [hl], a                                     ; $49c9: $77
	ld   [hl], a                                     ; $49ca: $77
	ld   [hl], a                                     ; $49cb: $77
	halt                                             ; $49cc: $76
	ld   h, [hl]                                     ; $49cd: $66
	ld   d, l                                        ; $49ce: $55
	ld   b, h                                        ; $49cf: $44
	ld   hl, $1101                                   ; $49d0: $21 $01 $11
	ld   de, $1311                                   ; $49d3: $11 $11 $13
	ld   h, a                                        ; $49d6: $67
	xor  h                                           ; $49d7: $ac
	sbc  $ff                                         ; $49d8: $de $ff
	rst  $38                                         ; $49da: $ff
	rst  $38                                         ; $49db: $ff

jr_0d6_49dc:
	rst  $38                                         ; $49dc: $ff
	cp   $dc                                         ; $49dd: $fe $dc
	cp   e                                           ; $49df: $bb
	cp   c                                           ; $49e0: $b9
	sbc  c                                           ; $49e1: $99
	sbc  b                                           ; $49e2: $98
	ld   [hl], a                                     ; $49e3: $77
	ld   [hl], a                                     ; $49e4: $77
	adc  b                                           ; $49e5: $88
	ld   [hl], a                                     ; $49e6: $77
	halt                                             ; $49e7: $76
	ld   d, h                                        ; $49e8: $54
	ld   [hl-], a                                    ; $49e9: $32
	ld   de, $1111                                   ; $49ea: $11 $11 $11
	ld   de, $7913                                   ; $49ed: $11 $13 $79
	cp   h                                           ; $49f0: $bc
	rst  $38                                         ; $49f1: $ff
	rst  $38                                         ; $49f2: $ff
	rst  $38                                         ; $49f3: $ff
	rst  $38                                         ; $49f4: $ff
	ei                                               ; $49f5: $fb
	sub  a                                           ; $49f6: $97
	add  [hl]                                        ; $49f7: $86
	ld   h, h                                        ; $49f8: $64
	ld   b, a                                        ; $49f9: $47
	sbc  d                                           ; $49fa: $9a
	sbc  e                                           ; $49fb: $9b
	rst  JumpTable                                         ; $49fc: $df
	rst  $38                                         ; $49fd: $ff
	call c, $97db                                    ; $49fe: $dc $db $97
	ld   b, h                                        ; $4a01: $44
	ld   hl, $1111                                   ; $4a02: $21 $11 $11
	ld   de, $1f11                                   ; $4a05: $11 $11 $1f
	sub  a                                           ; $4a08: $97
	rst  $38                                         ; $4a09: $ff
	rst  $38                                         ; $4a0a: $ff
	cp   $ff                                         ; $4a0b: $fe $ff
	add  sp, $45                                     ; $4a0d: $e8 $45
	ld   b, [hl]                                     ; $4a0f: $46
	ld   b, c                                        ; $4a10: $41
	jr   c, jr_0d6_49dc                              ; $4a11: $38 $c9

	sbc  e                                           ; $4a13: $9b
	rst  JumpTable                                         ; $4a14: $df
	rst  $38                                         ; $4a15: $ff
	rst  JumpTable                                         ; $4a16: $df
	rst  $38                                         ; $4a17: $ff
	jp   c, $93bb                                    ; $4a18: $da $bb $93

	inc  de                                          ; $4a1b: $13
	ld   hl, $1111                                   ; $4a1c: $21 $11 $11
	ld   de, $1f11                                   ; $4a1f: $11 $11 $1f
	ei                                               ; $4a22: $fb
	rst  $38                                         ; $4a23: $ff
	rst  $38                                         ; $4a24: $ff
	rst  $10                                         ; $4a25: $d7
	ld   c, e                                        ; $4a26: $4b
	sub  c                                           ; $4a27: $91
	ld   [de], a                                     ; $4a28: $12
	add  a                                           ; $4a29: $87
	and  a                                           ; $4a2a: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a2b: $cf
	cp   $9d                                         ; $4a2c: $fe $9d
	call $bfa8                                       ; $4a2e: $cd $a8 $bf
	db   $fc                                         ; $4a31: $fc
	adc  $ed                                         ; $4a32: $ce $ed
	sub  l                                           ; $4a34: $95
	ld   b, l                                        ; $4a35: $45
	ld   hl, $1111                                   ; $4a36: $21 $11 $11
	ld   de, $1f11                                   ; $4a39: $11 $11 $1f
	rst  $38                                         ; $4a3c: $ff
	rst  JumpTable                                         ; $4a3d: $df
	rst  $38                                         ; $4a3e: $ff
	ld   [hl], e                                     ; $4a3f: $73
	inc  de                                          ; $4a40: $13
	or   c                                           ; $4a41: $b1
	rla                                              ; $4a42: $17
	xor  $cf                                         ; $4a43: $ee $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a45: $cf
	ei                                               ; $4a46: $fb
	ld   b, a                                        ; $4a47: $47
	sub  a                                           ; $4a48: $97
	xor  d                                           ; $4a49: $aa
	rst  $38                                         ; $4a4a: $ff
	rst  $38                                         ; $4a4b: $ff
	xor  $db                                         ; $4a4c: $ee $db
	ld   h, l                                        ; $4a4e: $65
	ld   sp, $1111                                   ; $4a4f: $31 $11 $11
	ld   de, $1111                                   ; $4a52: $11 $11 $11
	ld   e, $ff                                      ; $4a55: $1e $ff
	adc  a                                           ; $4a57: $8f
	db   $fd                                         ; $4a58: $fd
	ld   b, d                                        ; $4a59: $42
	ld   de, $4ae3                                   ; $4a5a: $11 $e3 $4a
	rst  $38                                         ; $4a5d: $ff
	sbc  $8e                                         ; $4a5e: $de $8e
	ret                                              ; $4a60: $c9


	dec  h                                           ; $4a61: $25
	xor  b                                           ; $4a62: $a8
	call $ffff                                       ; $4a63: $cd $ff $ff
	call Call_0d6_65ba                               ; $4a66: $cd $ba $65
	ld   sp, $1111                                   ; $4a69: $31 $11 $11
	ld   de, $1111                                   ; $4a6c: $11 $11 $11
	ld   a, [de]                                     ; $4a6f: $1a
	rst  $38                                         ; $4a70: $ff
	ld   a, a                                        ; $4a71: $7f
	db   $fc                                         ; $4a72: $fc
	ld   d, c                                        ; $4a73: $51
	ld   de, $5bc6                                   ; $4a74: $11 $c6 $5b
	rst  $38                                         ; $4a77: $ff
	rst  JumpTable                                         ; $4a78: $df
	ld   l, c                                        ; $4a79: $69
	xor  c                                           ; $4a7a: $a9
	inc  d                                           ; $4a7b: $14
	jp   z, $ffff                                    ; $4a7c: $ca $ff $ff

	rst  $38                                         ; $4a7f: $ff
	cp   l                                           ; $4a80: $bd
	cp   h                                           ; $4a81: $bc
	halt                                             ; $4a82: $76
	ld   b, c                                        ; $4a83: $41
	ld   de, $1111                                   ; $4a84: $11 $11 $11
	ld   de, $1511                                   ; $4a87: $11 $11 $15
	rst  $38                                         ; $4a8a: $ff
	xor  $fb                                         ; $4a8b: $ee $fb
	ld   d, c                                        ; $4a8d: $51
	ld   de, $ab8e                                   ; $4a8e: $11 $8e $ab
	rst  $38                                         ; $4a91: $ff
	db   $ed                                         ; $4a92: $ed
	ld   h, e                                        ; $4a93: $63
	ld   a, d                                        ; $4a94: $7a
	ld   [hl], e                                     ; $4a95: $73
	cp   l                                           ; $4a96: $bd
	rst  $38                                         ; $4a97: $ff
	rst  $38                                         ; $4a98: $ff
	rst  $38                                         ; $4a99: $ff
	db   $db                                         ; $4a9a: $db
	call z, $41a7                                    ; $4a9b: $cc $a7 $41
	ld   de, $1111                                   ; $4a9e: $11 $11 $11
	ld   de, $1711                                   ; $4aa1: $11 $11 $17
	rst  $38                                         ; $4aa4: $ff
	db   $dd                                         ; $4aa5: $dd
	ld   hl, sp+$31                                  ; $4aa6: $f8 $31
	ld   de, $ebaf                                   ; $4aa8: $11 $af $eb
	rst  $38                                         ; $4aab: $ff
	db   $ec                                         ; $4aac: $ec
	ld   sp, $865b                                   ; $4aad: $31 $5b $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ab0: $cf
	rst  $38                                         ; $4ab1: $ff
	db   $fc                                         ; $4ab2: $fc
	sbc  $cc                                         ; $4ab3: $de $cc
	call c, $21a7                                    ; $4ab5: $dc $a7 $21
	ld   de, $1111                                   ; $4ab8: $11 $11 $11
	ld   de, $1e11                                   ; $4abb: $11 $11 $1e
	rst  $38                                         ; $4abe: $ff
	sbc  a                                           ; $4abf: $9f
	db   $f4                                         ; $4ac0: $f4
	ld   de, rAUD1LEN                                   ; $4ac1: $11 $11 $ff
	call c, $b9ff                                    ; $4ac4: $dc $ff $b9
	ld   [de], a                                     ; $4ac7: $12
	ld   l, h                                        ; $4ac8: $6c
	xor  c                                           ; $4ac9: $a9
	rst  $38                                         ; $4aca: $ff
	rst  $38                                         ; $4acb: $ff
	ld   [$eece], a                                  ; $4acc: $ea $ce $ee
	db   $dd                                         ; $4acf: $dd
	and  l                                           ; $4ad0: $a5
	ld   de, $1111                                   ; $4ad1: $11 $11 $11
	ld   de, $1111                                   ; $4ad4: $11 $11 $11
	cpl                                              ; $4ad7: $2f
	rst  $38                                         ; $4ad8: $ff
	ld   a, a                                        ; $4ad9: $7f
	and  c                                           ; $4ada: $a1
	ld   de, $ff15                                   ; $4adb: $11 $15 $ff
	rst  JumpTable                                         ; $4ade: $df
	db   $fd                                         ; $4adf: $fd
	or   l                                           ; $4ae0: $b5
	inc  de                                          ; $4ae1: $13
	ld   a, [hl]                                     ; $4ae2: $7e
	call $feff                                       ; $4ae3: $cd $ff $fe
	cp   b                                           ; $4ae6: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ae7: $cf
	cp   $fc                                         ; $4ae8: $fe $fc
	add  d                                           ; $4aea: $82
	ld   de, $1111                                   ; $4aeb: $11 $11 $11
	ld   de, $1111                                   ; $4aee: $11 $11 $11
	sbc  a                                           ; $4af1: $9f
	rst  $38                                         ; $4af2: $ff
	xor  a                                           ; $4af3: $af
	ld   b, c                                        ; $4af4: $41
	ld   de, $ff1b                                   ; $4af5: $11 $1b $ff
	rst  JumpTable                                         ; $4af8: $df
	ld   a, [$1391]                                  ; $4af9: $fa $91 $13
	cp   [hl]                                        ; $4afc: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4afd: $cf
	rst  $38                                         ; $4afe: $ff
	db   $fc                                         ; $4aff: $fc
	adc  c                                           ; $4b00: $89
	rst  JumpTable                                         ; $4b01: $df
	rst  $38                                         ; $4b02: $ff
	ld   a, [$1161]                                  ; $4b03: $fa $61 $11
	ld   de, $1111                                   ; $4b06: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4b09: $11 $11 $ff
	ld   a, [$11fa]                                  ; $4b0c: $fa $fa $11
	ld   de, $fd2f                                   ; $4b0f: $11 $2f $fd
	rst  $38                                         ; $4b12: $ff
	db   $db                                         ; $4b13: $db
	ld   d, c                                        ; $4b14: $51
	ld   d, $cc                                      ; $4b15: $16 $cc
	rst  JumpTable                                         ; $4b17: $df
	rst  $38                                         ; $4b18: $ff
	ld   [$df8c], a                                  ; $4b19: $ea $8c $df
	rst  $38                                         ; $4b1c: $ff
	ret  c                                           ; $4b1d: $d8

	ld   hl, $1111                                   ; $4b1e: $21 $11 $11
	ld   de, $1111                                   ; $4b21: $11 $11 $11
	inc  e                                           ; $4b24: $1c
	rst  $38                                         ; $4b25: $ff
	cp   $f3                                         ; $4b26: $fe $f3
	ld   de, $df11                                   ; $4b28: $11 $11 $df
	cp   $ff                                         ; $4b2b: $fe $ff
	ret  z                                           ; $4b2d: $c8

	ld   [de], a                                     ; $4b2e: $12
	ld   c, d                                        ; $4b2f: $4a
	call z, $feff                                    ; $4b30: $cc $ff $fe
	cp   d                                           ; $4b33: $ba
	cp   h                                           ; $4b34: $bc
	rst  $38                                         ; $4b35: $ff
	rst  $38                                         ; $4b36: $ff
	or   l                                           ; $4b37: $b5
	ld   de, $1111                                   ; $4b38: $11 $11 $11
	ld   de, $1111                                   ; $4b3b: $11 $11 $11
	ld   c, a                                        ; $4b3e: $4f
	rst  $38                                         ; $4b3f: $ff
	rst  JumpTable                                         ; $4b40: $df
	ld   [hl], e                                     ; $4b41: $73
	ld   de, $fe19                                   ; $4b42: $11 $19 $fe
	rst  JumpTable                                         ; $4b45: $df
	cp   $c3                                         ; $4b46: $fe $c3
	dec  h                                           ; $4b48: $25
	adc  c                                           ; $4b49: $89
	xor  [hl]                                        ; $4b4a: $ae
	rst  $38                                         ; $4b4b: $ff
	db   $fd                                         ; $4b4c: $fd
	xor  l                                           ; $4b4d: $ad
	call c, $fdef                                    ; $4b4e: $dc $ef $fd
	ld   [hl], c                                     ; $4b51: $71
	ld   de, $1111                                   ; $4b52: $11 $11 $11
	ld   de, $1111                                   ; $4b55: $11 $11 $11
	rst  $38                                         ; $4b58: $ff
	db   $fc                                         ; $4b59: $fc
	db   $fc                                         ; $4b5a: $fc
	ld   b, c                                        ; $4b5b: $41
	ld   de, $dd6f                                   ; $4b5c: $11 $6f $dd
	rst  $38                                         ; $4b5f: $ff
	db   $fd                                         ; $4b60: $fd
	ld   d, d                                        ; $4b61: $52
	ld   h, a                                        ; $4b62: $67
	ld   [hl], a                                     ; $4b63: $77
	rst  JumpTable                                         ; $4b64: $df
	rst  $38                                         ; $4b65: $ff
	call c, $cedd                                    ; $4b66: $dc $dd $ce
	rst  $38                                         ; $4b69: $ff
	reti                                             ; $4b6a: $d9


	ld   hl, $1111                                   ; $4b6b: $21 $11 $11
	ld   de, $1111                                   ; $4b6e: $11 $11 $11
	rra                                              ; $4b71: $1f
	rst  $38                                         ; $4b72: $ff
	rst  $28                                         ; $4b73: $ef
	and  $11                                         ; $4b74: $e6 $11
	dec  d                                           ; $4b76: $15
	ld   sp, hl                                      ; $4b77: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b78: $cf
	rst  $38                                         ; $4b79: $ff
	rst  $10                                         ; $4b7a: $d7
	ld   c, b                                        ; $4b7b: $48
	ld   [hl], l                                     ; $4b7c: $75
	ld   l, e                                        ; $4b7d: $6b
	rst  JumpTable                                         ; $4b7e: $df
	cp   $df                                         ; $4b7f: $fe $df
	ei                                               ; $4b81: $fb
	db   $dd                                         ; $4b82: $dd
	db   $fd                                         ; $4b83: $fd
	add  d                                           ; $4b84: $82
	ld   de, $1111                                   ; $4b85: $11 $11 $11
	ld   de, $1311                                   ; $4b88: $11 $11 $13
	rst  $38                                         ; $4b8b: $ff
	rst  $38                                         ; $4b8c: $ff
	rst  $38                                         ; $4b8d: $ff
	add  c                                           ; $4b8e: $81
	ld   de, $4b7d                                   ; $4b8f: $11 $7d $4b
	rst  $38                                         ; $4b92: $ff
	rst  $38                                         ; $4b93: $ff
	and  a                                           ; $4b94: $a7
	cp   b                                           ; $4b95: $b8
	dec  [hl]                                        ; $4b96: $35
	cp   e                                           ; $4b97: $bb
	rst  $28                                         ; $4b98: $ef
	rst  $28                                         ; $4b99: $ef
	rst  $38                                         ; $4b9a: $ff
	cp   l                                           ; $4b9b: $bd
	rst  JumpTable                                         ; $4b9c: $df
	cp   b                                           ; $4b9d: $b8
	ld   hl, $1111                                   ; $4b9e: $21 $11 $11
	ld   de, $1111                                   ; $4ba1: $11 $11 $11
	adc  a                                           ; $4ba4: $8f
	ld   a, [$f7ff]                                  ; $4ba5: $fa $ff $f7
	ld   de, $711b                                   ; $4ba8: $11 $1b $71
	sbc  a                                           ; $4bab: $9f
	rst  $38                                         ; $4bac: $ff
	ld   a, [$93df]                                  ; $4bad: $fa $df $93
	ld   e, d                                        ; $4bb0: $5a
	adc  d                                           ; $4bb1: $8a
	cp   l                                           ; $4bb2: $bd
	rst  $38                                         ; $4bb3: $ff
	db   $fd                                         ; $4bb4: $fd
	rst  $28                                         ; $4bb5: $ef
	ld   [$1171], a                                  ; $4bb6: $ea $71 $11
	ld   de, $1111                                   ; $4bb9: $11 $11 $11
	ld   de, $ff1f                                   ; $4bbc: $11 $1f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bbf: $cf
	cp   $71                                         ; $4bc0: $fe $71
	inc  d                                           ; $4bc2: $14
	or   c                                           ; $4bc3: $b1
	add  hl, de                                      ; $4bc4: $19
	rst  $28                                         ; $4bc5: $ef
	cp   $ef                                         ; $4bc6: $fe $ef
	ld   sp, hl                                      ; $4bc8: $f9
	ld   e, c                                        ; $4bc9: $59
	sub  [hl]                                        ; $4bca: $96
	adc  b                                           ; $4bcb: $88
	cp   a                                           ; $4bcc: $bf
	db   $fd                                         ; $4bcd: $fd
	rst  $38                                         ; $4bce: $ff
	cp   $a5                                         ; $4bcf: $fe $a5
	ld   hl, $1111                                   ; $4bd1: $21 $11 $11
	ld   de, $1511                                   ; $4bd4: $11 $11 $15
	rst  $38                                         ; $4bd7: $ff
	adc  a                                           ; $4bd8: $8f
	rst  $38                                         ; $4bd9: $ff
	ld   sp, hl                                      ; $4bda: $f9
	ld   de, $11c1                                   ; $4bdb: $11 $c1 $11
	ld   l, d                                        ; $4bde: $6a
	cp   l                                           ; $4bdf: $bd
	cp   a                                           ; $4be0: $bf
	rst  $38                                         ; $4be1: $ff
	cp   l                                           ; $4be2: $bd
	ret                                              ; $4be3: $c9


	add  l                                           ; $4be4: $85
	ld   e, d                                        ; $4be5: $5a
	ei                                               ; $4be6: $fb
	adc  $ff                                         ; $4be7: $ce $ff
	jp   c, $1165                                    ; $4be9: $da $65 $11

	ld   de, $1111                                   ; $4bec: $11 $11 $11
	ld   de, $beff                                   ; $4bef: $11 $ff $be
	rst  $38                                         ; $4bf2: $ff
	rst  $38                                         ; $4bf3: $ff
	ld   [hl], e                                     ; $4bf4: $73
	ld   a, [$1111]                                  ; $4bf5: $fa $11 $11
	ld   [hl], $27                                   ; $4bf8: $36 $27
	rst  $38                                         ; $4bfa: $ff
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	db   $fd                                         ; $4bfd: $fd
	sbc  b                                           ; $4bfe: $98
	jp   z, $9a78                                    ; $4bff: $ca $78 $9a

	cp   c                                           ; $4c02: $b9
	ld   d, [hl]                                     ; $4c03: $56
	ld   h, l                                        ; $4c04: $65
	ld   [hl-], a                                    ; $4c05: $32
	ld   de, $1111                                   ; $4c06: $11 $11 $11
	dec  de                                          ; $4c09: $1b
	pop  bc                                          ; $4c0a: $c1
	ld   l, [hl]                                     ; $4c0b: $6e
	ld   l, a                                        ; $4c0c: $6f
	db   $fc                                         ; $4c0d: $fc
	rst  JumpTable                                         ; $4c0e: $df
	cp   $fc                                         ; $4c0f: $fe $fc
	ld   a, e                                        ; $4c11: $7b
	call nc, Call_0d6_4425                           ; $4c12: $d4 $25 $44
	ld   [hl], h                                     ; $4c15: $74
	jr   z, @-$43                                    ; $4c16: $28 $bb

	adc  $cf                                         ; $4c18: $ce $cf
	db   $fc                                         ; $4c1a: $fc
	call z, $a7ca                                    ; $4c1b: $cc $ca $a7
	ld   h, a                                        ; $4c1e: $67
	ld   [hl], l                                     ; $4c1f: $75
	ld   b, h                                        ; $4c20: $44
	inc  hl                                          ; $4c21: $23
	ld   hl, $5211                                   ; $4c22: $21 $11 $52
	ld   [de], a                                     ; $4c25: $12
	inc  de                                          ; $4c26: $13
	add  a                                           ; $4c27: $87
	ld   l, b                                        ; $4c28: $68
	db   $dd                                         ; $4c29: $dd
	rst  JumpTable                                         ; $4c2a: $df
	rst  JumpTable                                         ; $4c2b: $df
	rst  $38                                         ; $4c2c: $ff
	call z, $b9ca                                    ; $4c2d: $cc $ca $b9
	ld   [hl], a                                     ; $4c30: $77
	sbc  d                                           ; $4c31: $9a
	sbc  c                                           ; $4c32: $99
	sbc  c                                           ; $4c33: $99
	xor  d                                           ; $4c34: $aa
	adc  b                                           ; $4c35: $88
	xor  e                                           ; $4c36: $ab
	cp   d                                           ; $4c37: $ba
	sbc  d                                           ; $4c38: $9a
	sbc  c                                           ; $4c39: $99
	halt                                             ; $4c3a: $76
	ld   h, l                                        ; $4c3b: $65
	ld   b, e                                        ; $4c3c: $43
	ld   [hl+], a                                    ; $4c3d: $22
	ld   hl, $1211                                   ; $4c3e: $21 $11 $12
	inc  hl                                          ; $4c41: $23
	ld   [hl], $78                                   ; $4c42: $36 $78
	sbc  e                                           ; $4c44: $9b
	call z, $cddd                                    ; $4c45: $cc $dd $cd
	call z, $bccc                                    ; $4c48: $cc $cc $bc
	db   $dd                                         ; $4c4b: $dd
	call z, $bacb                                    ; $4c4c: $cc $cb $ba
	xor  c                                           ; $4c4f: $a9
	sbc  b                                           ; $4c50: $98
	add  a                                           ; $4c51: $87
	ld   h, a                                        ; $4c52: $67
	halt                                             ; $4c53: $76
	ld   h, [hl]                                     ; $4c54: $66
	ld   d, l                                        ; $4c55: $55
	ld   b, h                                        ; $4c56: $44
	ld   b, e                                        ; $4c57: $43
	ld   hl, $1111                                   ; $4c58: $21 $11 $11
	ld   [de], a                                     ; $4c5b: $12
	ld   b, [hl]                                     ; $4c5c: $46
	ld   a, b                                        ; $4c5d: $78
	xor  e                                           ; $4c5e: $ab
	db   $dd                                         ; $4c5f: $dd
	xor  $dd                                         ; $4c60: $ee $dd
	db   $ed                                         ; $4c62: $ed
	set  1, h                                        ; $4c63: $cb $cc
	call z, $cccb                                    ; $4c65: $cc $cb $cc
	xor  d                                           ; $4c68: $aa
	sbc  c                                           ; $4c69: $99
	sbc  b                                           ; $4c6a: $98
	halt                                             ; $4c6b: $76
	halt                                             ; $4c6c: $76
	ld   h, l                                        ; $4c6d: $65
	ld   d, l                                        ; $4c6e: $55
	ld   d, h                                        ; $4c6f: $54
	ld   b, h                                        ; $4c70: $44
	ld   b, e                                        ; $4c71: $43
	ld   de, $1111                                   ; $4c72: $11 $11 $11
	inc  de                                          ; $4c75: $13
	ld   d, [hl]                                     ; $4c76: $56
	adc  c                                           ; $4c77: $89
	xor  h                                           ; $4c78: $ac
	call $eecd                                       ; $4c79: $cd $cd $ee
	call c, $cdcc                                    ; $4c7c: $dc $cc $cd
	call z, $bbbb                                    ; $4c7f: $cc $bb $bb
	cp   d                                           ; $4c82: $ba
	xor  c                                           ; $4c83: $a9
	add  a                                           ; $4c84: $87
	ld   [hl], a                                     ; $4c85: $77
	ld   [hl], a                                     ; $4c86: $77
	ld   h, [hl]                                     ; $4c87: $66
	ld   d, h                                        ; $4c88: $54
	ld   b, e                                        ; $4c89: $43
	ld   b, h                                        ; $4c8a: $44
	ld   sp, $1111                                   ; $4c8b: $31 $11 $11
	ld   de, $6725                                   ; $4c8e: $11 $25 $67
	sbc  c                                           ; $4c91: $99
	cp   l                                           ; $4c92: $bd
	db   $ed                                         ; $4c93: $ed
	rst  $28                                         ; $4c94: $ef
	db   $fd                                         ; $4c95: $fd
	call c, $dcbc                                    ; $4c96: $dc $bc $dc
	cp   h                                           ; $4c99: $bc
	cp   e                                           ; $4c9a: $bb
	set  3, e                                        ; $4c9b: $cb $db
	xor  h                                           ; $4c9d: $ac
	add  a                                           ; $4c9e: $87
	ld   h, [hl]                                     ; $4c9f: $66
	ld   [hl], l                                     ; $4ca0: $75
	inc  sp                                          ; $4ca1: $33
	ld   de, $5111                                   ; $4ca2: $11 $11 $51
	ld   de, $7713                                   ; $4ca5: $11 $13 $77
	ld   h, a                                        ; $4ca8: $67
	rst  $38                                         ; $4ca9: $ff
	rst  $38                                         ; $4caa: $ff
	rst  $38                                         ; $4cab: $ff
	rst  $38                                         ; $4cac: $ff
	adc  b                                           ; $4cad: $88
	ld   [$5564], a                                  ; $4cae: $ea $64 $55
	add  a                                           ; $4cb1: $87
	ld   c, c                                        ; $4cb2: $49
	xor  $de                                         ; $4cb3: $ee $de
	rst  JumpTable                                         ; $4cb5: $df
	db   $fc                                         ; $4cb6: $fc
	adc  b                                           ; $4cb7: $88
	ld   [hl], h                                     ; $4cb8: $74
	ld   hl, $1111                                   ; $4cb9: $21 $11 $11
	ld   de, $f112                                   ; $4cbc: $11 $12 $f1
	rra                                              ; $4cbf: $1f
	rst  $38                                         ; $4cc0: $ff
	rst  $38                                         ; $4cc1: $ff
	rst  $38                                         ; $4cc2: $ff
	ld   a, [$b5ad]                                  ; $4cc3: $fa $ad $b5
	ld   hl, $4117                                   ; $4cc6: $21 $17 $41
	dec  sp                                          ; $4cc9: $3b
	rst  JumpTable                                         ; $4cca: $df
	cp   $ff                                         ; $4ccb: $fe $ff
	cp   $ff                                         ; $4ccd: $fe $ff
	reti                                             ; $4ccf: $d9


	ld   b, c                                        ; $4cd0: $41
	ld   hl, $1111                                   ; $4cd1: $21 $11 $11
	ld   de, $af11                                   ; $4cd4: $11 $11 $af
	ld   d, $ff                                      ; $4cd7: $16 $ff
	rst  $38                                         ; $4cd9: $ff
	rst  $38                                         ; $4cda: $ff
	rst  $38                                         ; $4cdb: $ff
	ld   a, [de]                                     ; $4cdc: $1a
	sub  [hl]                                        ; $4cdd: $96
	ld   de, $b211                                   ; $4cde: $11 $11 $b2
	ld   a, [de]                                     ; $4ce1: $1a
	rst  $38                                         ; $4ce2: $ff
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	cp   $af                                         ; $4ce5: $fe $af
	cp   d                                           ; $4ce7: $ba
	ld   b, d                                        ; $4ce8: $42
	inc  sp                                          ; $4ce9: $33
	ld   de, $1111                                   ; $4cea: $11 $11 $11
	ld   de, $114f                                   ; $4ced: $11 $4f $11
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	rst  $38                                         ; $4cf2: $ff
	rst  $38                                         ; $4cf3: $ff
	rla                                              ; $4cf4: $17
	push bc                                          ; $4cf5: $c5
	ld   de, $b311                                   ; $4cf6: $11 $11 $b3
	dec  e                                           ; $4cf9: $1d
	rst  $38                                         ; $4cfa: $ff
	rst  $38                                         ; $4cfb: $ff
	rst  $38                                         ; $4cfc: $ff
	ld   a, [$878f]                                  ; $4cfd: $fa $8f $87
	ld   b, e                                        ; $4d00: $43
	ld   b, d                                        ; $4d01: $42
	ld   de, $1111                                   ; $4d02: $11 $11 $11
	ld   de, $1fff                                   ; $4d05: $11 $ff $1f
	rst  $38                                         ; $4d08: $ff
	rst  $38                                         ; $4d09: $ff
	rst  $38                                         ; $4d0a: $ff
	pop  af                                          ; $4d0b: $f1
	inc  e                                           ; $4d0c: $1c
	sub  c                                           ; $4d0d: $91
	ld   de, $721b                                   ; $4d0e: $11 $1b $72
	xor  a                                           ; $4d11: $af
	rst  $38                                         ; $4d12: $ff
	rst  $38                                         ; $4d13: $ff
	rst  $38                                         ; $4d14: $ff
	and  l                                           ; $4d15: $a5
	swap e                                           ; $4d16: $cb $33
	ld   b, [hl]                                     ; $4d18: $46
	ld   hl, $1111                                   ; $4d19: $21 $11 $11
	ld   de, $138f                                   ; $4d1c: $11 $8f $13
	rst  $38                                         ; $4d1f: $ff
	rst  $38                                         ; $4d20: $ff
	rst  $38                                         ; $4d21: $ff
	rst  $38                                         ; $4d22: $ff
	ld   a, [de]                                     ; $4d23: $1a
	and  d                                           ; $4d24: $a2
	ld   de, $b315                                   ; $4d25: $11 $15 $b3
	xor  a                                           ; $4d28: $af
	rst  $38                                         ; $4d29: $ff
	rst  $38                                         ; $4d2a: $ff
	rst  $38                                         ; $4d2b: $ff
	sub  [hl]                                        ; $4d2c: $96
	adc  h                                           ; $4d2d: $8c
	ld   b, h                                        ; $4d2e: $44
	scf                                              ; $4d2f: $37
	ld   sp, $1111                                   ; $4d30: $31 $11 $11
	ld   de, $17af                                   ; $4d33: $11 $af $17
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	rst  $38                                         ; $4d38: $ff
	ei                                               ; $4d39: $fb
	dec  e                                           ; $4d3a: $1d
	pop  bc                                          ; $4d3b: $c1
	ld   de, $9317                                   ; $4d3c: $11 $17 $93
	cp   a                                           ; $4d3f: $bf
	db   $fd                                         ; $4d40: $fd
	rst  $38                                         ; $4d41: $ff
	db   $fd                                         ; $4d42: $fd
	ld   [hl], a                                     ; $4d43: $77
	xor  c                                           ; $4d44: $a9
	dec  h                                           ; $4d45: $25
	ld   b, a                                        ; $4d46: $47
	ld   sp, $1111                                   ; $4d47: $31 $11 $11
	ld   de, $1ff1                                   ; $4d4a: $11 $f1 $1f
	rst  $38                                         ; $4d4d: $ff
	rst  $38                                         ; $4d4e: $ff
	rst  $38                                         ; $4d4f: $ff
	pop  af                                          ; $4d50: $f1
	cp   [hl]                                        ; $4d51: $be
	ld   sp, $7a12                                   ; $4d52: $31 $12 $7a
	ld   a, [hl+]                                    ; $4d55: $2a
	rst  $38                                         ; $4d56: $ff
	cp   a                                           ; $4d57: $bf
	rst  $38                                         ; $4d58: $ff
	and  $78                                         ; $4d59: $e6 $78
	sub  c                                           ; $4d5b: $91
	ld   b, [hl]                                     ; $4d5c: $46
	ld   b, e                                        ; $4d5d: $43
	ld   de, $1111                                   ; $4d5e: $11 $11 $11
	rst  $28                                         ; $4d61: $ef
	dec  de                                          ; $4d62: $1b
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	or   $1f                                         ; $4d66: $f6 $1f
	pop  bc                                          ; $4d68: $c1
	inc  de                                          ; $4d69: $13
	ld   l, e                                        ; $4d6a: $6b
	add  l                                           ; $4d6b: $85
	rst  $38                                         ; $4d6c: $ff
	ld   sp, hl                                      ; $4d6d: $f9
	cp   $d9                                         ; $4d6e: $fe $d9
	ld   d, a                                        ; $4d70: $57
	add  l                                           ; $4d71: $85
	ld   h, $53                                      ; $4d72: $26 $53
	ld   de, $1111                                   ; $4d74: $11 $11 $11
	cp   $1f                                         ; $4d77: $fe $1f
	rst  $38                                         ; $4d79: $ff
	rst  $38                                         ; $4d7a: $ff
	rst  $38                                         ; $4d7b: $ff
	pop  af                                          ; $4d7c: $f1
	ccf                                              ; $4d7d: $3f
	ld   [hl], c                                     ; $4d7e: $71
	ld   d, $9c                                      ; $4d7f: $16 $9c
	sbc  d                                           ; $4d81: $9a
	rst  $38                                         ; $4d82: $ff
	cp   e                                           ; $4d83: $bb
	db   $db                                         ; $4d84: $db
	sub  [hl]                                        ; $4d85: $96
	ld   h, [hl]                                     ; $4d86: $66
	ld   h, e                                        ; $4d87: $63
	inc  [hl]                                        ; $4d88: $34
	ld   hl, $1111                                   ; $4d89: $21 $11 $11
	rra                                              ; $4d8c: $1f
	pop  af                                          ; $4d8d: $f1
	rst  $38                                         ; $4d8e: $ff
	rst  $38                                         ; $4d8f: $ff
	rst  $38                                         ; $4d90: $ff
	rst  $38                                         ; $4d91: $ff
	inc  d                                           ; $4d92: $14
	rst  $20                                         ; $4d93: $e7
	inc  de                                          ; $4d94: $13
	adc  d                                           ; $4d95: $8a
	jp   c, $fadf                                    ; $4d96: $da $df $fa

	xor  l                                           ; $4d99: $ad
	cp   b                                           ; $4d9a: $b8
	ld   d, l                                        ; $4d9b: $55
	ld   h, l                                        ; $4d9c: $65
	ld   [hl-], a                                    ; $4d9d: $32
	ld   sp, $1111                                   ; $4d9e: $31 $11 $11
	ld   de, $5ff7                                   ; $4da1: $11 $f7 $5f
	rst  $38                                         ; $4da4: $ff
	rst  $38                                         ; $4da5: $ff
	rst  $38                                         ; $4da6: $ff
	and  c                                           ; $4da7: $a1
	xor  h                                           ; $4da8: $ac
	ld   d, d                                        ; $4da9: $52
	ld   l, e                                        ; $4daa: $6b
	call z, $fdaf                                    ; $4dab: $cc $af $fd
	sbc  d                                           ; $4dae: $9a
	xor  c                                           ; $4daf: $a9
	ld   h, h                                        ; $4db0: $64
	ld   h, l                                        ; $4db1: $65
	ld   [hl-], a                                    ; $4db2: $32
	ld   hl, $1111                                   ; $4db3: $21 $11 $11
	add  hl, de                                      ; $4db6: $19
	db   $f4                                         ; $4db7: $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db8: $cf
	rst  $38                                         ; $4db9: $ff
	cp   $ff                                         ; $4dba: $fe $ff
	ld   [hl], e                                     ; $4dbc: $73
	call z, $ac74                                    ; $4dbd: $cc $74 $ac
	db   $db                                         ; $4dc0: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dc1: $cf
	db   $fc                                         ; $4dc2: $fc
	ld   a, d                                        ; $4dc3: $7a
	xor  c                                           ; $4dc4: $a9
	ld   d, h                                        ; $4dc5: $54
	ld   d, h                                        ; $4dc6: $54
	ld   hl, $1111                                   ; $4dc7: $21 $11 $11
	ld   de, $4ffb                                   ; $4dca: $11 $fb $4f
	rst  $38                                         ; $4dcd: $ff
	db   $fc                                         ; $4dce: $fc
	db   $fd                                         ; $4dcf: $fd
	jp   nz, $b7ae                                   ; $4dd0: $c2 $ae $b7

	ld   l, [hl]                                     ; $4dd3: $6e
	xor  $bd                                         ; $4dd4: $ee $bd
	db   $ed                                         ; $4dd6: $ed
	add  a                                           ; $4dd7: $87
	and  a                                           ; $4dd8: $a7
	ld   [hl], d                                     ; $4dd9: $72
	ld   b, e                                        ; $4dda: $43
	ld   sp, $1111                                   ; $4ddb: $31 $11 $11
	ld   de, $5fce                                   ; $4dde: $11 $ce $5f
	rst  $38                                         ; $4de1: $ff
	db   $fd                                         ; $4de2: $fd
	sbc  $e4                                         ; $4de3: $de $e4
	sbc  a                                           ; $4de5: $9f
	jp   c, $ef9c                                    ; $4de6: $da $9c $ef

	xor  h                                           ; $4de9: $ac
	db   $ed                                         ; $4dea: $ed
	add  a                                           ; $4deb: $87
	sub  a                                           ; $4dec: $97
	ld   h, e                                        ; $4ded: $63
	inc  sp                                          ; $4dee: $33
	ld   de, $1111                                   ; $4def: $11 $11 $11
	inc  e                                           ; $4df2: $1c
	or   [hl]                                        ; $4df3: $b6
	rst  $38                                         ; $4df4: $ff
	rst  $38                                         ; $4df5: $ff
	db   $dd                                         ; $4df6: $dd
	db   $eb                                         ; $4df7: $eb
	ld   e, d                                        ; $4df8: $5a
	db   $ec                                         ; $4df9: $ec
	sbc  c                                           ; $4dfa: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dfb: $cf
	ld   [$d9df], a                                  ; $4dfc: $ea $df $d9
	adc  b                                           ; $4dff: $88
	add  l                                           ; $4e00: $85
	ld   [hl+], a                                    ; $4e01: $22
	ld   de, $1111                                   ; $4e02: $11 $11 $11
	dec  e                                           ; $4e05: $1d
	ld   [hl], a                                     ; $4e06: $77
	rst  $38                                         ; $4e07: $ff
	rst  $38                                         ; $4e08: $ff
	cp   l                                           ; $4e09: $bd
	jp   hl                                          ; $4e0a: $e9


	ld   c, e                                        ; $4e0b: $4b
	db   $ec                                         ; $4e0c: $ec
	sbc  d                                           ; $4e0d: $9a
	rst  $28                                         ; $4e0e: $ef
	jp   z, $b8ff                                    ; $4e0f: $ca $ff $b8

	ld   a, b                                        ; $4e12: $78
	ld   h, e                                        ; $4e13: $63
	ld   [de], a                                     ; $4e14: $12
	ld   de, $1111                                   ; $4e15: $11 $11 $11
	xor  e                                           ; $4e18: $ab
	ld   c, [hl]                                     ; $4e19: $4e
	rst  $38                                         ; $4e1a: $ff
	ld   sp, hl                                      ; $4e1b: $f9
	rst  JumpTable                                         ; $4e1c: $df
	or   l                                           ; $4e1d: $b5
	adc  a                                           ; $4e1e: $8f
	db   $db                                         ; $4e1f: $db
	adc  l                                           ; $4e20: $8d
	db   $fc                                         ; $4e21: $fc
	xor  h                                           ; $4e22: $ac
	db   $ed                                         ; $4e23: $ed
	sub  [hl]                                        ; $4e24: $96
	add  [hl]                                        ; $4e25: $86
	ld   b, c                                        ; $4e26: $41
	ld   de, $1111                                   ; $4e27: $11 $11 $11
	dec  e                                           ; $4e2a: $1d
	adc  c                                           ; $4e2b: $89
	rst  $38                                         ; $4e2c: $ff
	db   $fc                                         ; $4e2d: $fc
	xor  h                                           ; $4e2e: $ac
	ret  c                                           ; $4e2f: $d8

	ld   e, e                                        ; $4e30: $5b
	db   $ec                                         ; $4e31: $ec
	sbc  e                                           ; $4e32: $9b
	db   $dd                                         ; $4e33: $dd
	jp   z, $a6cd                                    ; $4e34: $ca $cd $a6

	halt                                             ; $4e37: $76
	ld   [hl-], a                                    ; $4e38: $32
	ld   de, $1111                                   ; $4e39: $11 $11 $11
	inc  l                                           ; $4e3c: $2c
	sbc  h                                           ; $4e3d: $9c
	rst  $38                                         ; $4e3e: $ff
	db   $fd                                         ; $4e3f: $fd
	xor  h                                           ; $4e40: $ac
	ret                                              ; $4e41: $c9


	ld   a, h                                        ; $4e42: $7c
	db   $ec                                         ; $4e43: $ec
	xor  e                                           ; $4e44: $ab
	call z, $bcbb                                    ; $4e45: $cc $bb $bc
	and  [hl]                                        ; $4e48: $a6
	ld   h, h                                        ; $4e49: $64
	ld   sp, $1111                                   ; $4e4a: $31 $11 $11
	ld   de, $9f7c                                   ; $4e4d: $11 $7c $9f
	rst  $38                                         ; $4e50: $ff
	db   $fc                                         ; $4e51: $fc
	cp   l                                           ; $4e52: $bd
	or   a                                           ; $4e53: $b7
	sbc  h                                           ; $4e54: $9c
	call z, $cdbb                                    ; $4e55: $cc $bb $cd
	cp   e                                           ; $4e58: $bb
	cp   e                                           ; $4e59: $bb
	ld   [hl], l                                     ; $4e5a: $75
	ld   b, d                                        ; $4e5b: $42
	ld   de, $1111                                   ; $4e5c: $11 $11 $11
	rla                                              ; $4e5f: $17
	xor  c                                           ; $4e60: $a9
	rst  $38                                         ; $4e61: $ff
	rst  $38                                         ; $4e62: $ff
	sbc  $eb                                         ; $4e63: $de $eb
	ld   a, e                                        ; $4e65: $7b
	db   $ec                                         ; $4e66: $ec
	cp   h                                           ; $4e67: $bc
	cp   l                                           ; $4e68: $bd
	reti                                             ; $4e69: $d9


	cp   e                                           ; $4e6a: $bb
	or   a                                           ; $4e6b: $b7
	ld   b, e                                        ; $4e6c: $43
	ld   hl, $1111                                   ; $4e6d: $21 $11 $11
	ld   de, $bf99                                   ; $4e70: $11 $99 $bf
	rst  $38                                         ; $4e73: $ff
	db   $ed                                         ; $4e74: $ed
	db   $ed                                         ; $4e75: $ed
	cp   c                                           ; $4e76: $b9
	xor  [hl]                                        ; $4e77: $ae
	db   $db                                         ; $4e78: $db
	cp   e                                           ; $4e79: $bb
	jp   c, $baaa                                    ; $4e7a: $da $aa $ba

	ld   d, e                                        ; $4e7d: $53
	ld   de, $1111                                   ; $4e7e: $11 $11 $11
	ld   de, $af89                                   ; $4e81: $11 $89 $af
	rst  $38                                         ; $4e84: $ff
	cp   $ed                                         ; $4e85: $fe $ed
	cp   d                                           ; $4e87: $ba
	cp   l                                           ; $4e88: $bd
	db   $ed                                         ; $4e89: $ed
	cp   h                                           ; $4e8a: $bc
	db   $eb                                         ; $4e8b: $eb
	xor  c                                           ; $4e8c: $a9
	sbc  c                                           ; $4e8d: $99
	ld   h, e                                        ; $4e8e: $63
	ld   de, $1111                                   ; $4e8f: $11 $11 $11
	ld   de, $af86                                   ; $4e92: $11 $86 $af
	rst  $38                                         ; $4e95: $ff
	db   $fd                                         ; $4e96: $fd
	adc  $ca                                         ; $4e97: $ce $ca
	cp   l                                           ; $4e99: $bd
	xor  $cb                                         ; $4e9a: $ee $cb
	call z, $87b9                                    ; $4e9c: $cc $b9 $87
	ld   d, e                                        ; $4e9f: $53
	ld   de, $1111                                   ; $4ea0: $11 $11 $11
	inc  de                                          ; $4ea3: $13
	sub  a                                           ; $4ea4: $97
	xor  [hl]                                        ; $4ea5: $ae
	rst  $38                                         ; $4ea6: $ff
	db   $ec                                         ; $4ea7: $ec
	adc  $db                                         ; $4ea8: $ce $db
	rst  JumpTable                                         ; $4eaa: $df
	db   $ed                                         ; $4eab: $ed
	res  7, e                                        ; $4eac: $cb $bb
	xor  c                                           ; $4eae: $a9
	add  [hl]                                        ; $4eaf: $86
	ld   b, e                                        ; $4eb0: $43
	ld   de, $1111                                   ; $4eb1: $11 $11 $11
	rla                                              ; $4eb4: $17
	ld   a, b                                        ; $4eb5: $78
	call z, $cdef                                    ; $4eb6: $cc $ef $cd
	call $dedd                                       ; $4eb9: $cd $dd $de
	db   $dd                                         ; $4ebc: $dd
	res  7, d                                        ; $4ebd: $cb $ba
	sub  a                                           ; $4ebf: $97
	ld   h, h                                        ; $4ec0: $64
	ld   [hl+], a                                    ; $4ec1: $22
	ld   de, $1111                                   ; $4ec2: $11 $11 $11
	ld   b, a                                        ; $4ec5: $47
	adc  e                                           ; $4ec6: $8b
	xor  h                                           ; $4ec7: $ac
	xor  $dc                                         ; $4ec8: $ee $dc
	call z, $edde                                    ; $4eca: $cc $de $ed
	call z, $a9bb                                    ; $4ecd: $cc $bb $a9
	ld   [hl], a                                     ; $4ed0: $77
	ld   h, h                                        ; $4ed1: $64
	ld   b, e                                        ; $4ed2: $43
	ld   hl, $1111                                   ; $4ed3: $21 $11 $11
	ld   d, a                                        ; $4ed6: $57
	adc  b                                           ; $4ed7: $88
	adc  c                                           ; $4ed8: $89
	cp   h                                           ; $4ed9: $bc
	cp   e                                           ; $4eda: $bb
	cp   h                                           ; $4edb: $bc
	adc  $ec                                         ; $4edc: $ce $ec
	set  1, e                                        ; $4ede: $cb $cb
	sbc  c                                           ; $4ee0: $99
	ld   [hl], a                                     ; $4ee1: $77
	ld   h, l                                        ; $4ee2: $65
	ld   d, h                                        ; $4ee3: $54
	ld   [hl-], a                                    ; $4ee4: $32
	ld   hl, $6614                                   ; $4ee5: $21 $14 $66
	ld   h, [hl]                                     ; $4ee8: $66
	ld   [hl], a                                     ; $4ee9: $77
	adc  d                                           ; $4eea: $8a
	xor  d                                           ; $4eeb: $aa
	xor  d                                           ; $4eec: $aa
	sbc  $dd                                         ; $4eed: $de $dd
	res  7, d                                        ; $4eef: $cb $ba
	xor  d                                           ; $4ef1: $aa
	adc  b                                           ; $4ef2: $88
	ld   [hl], a                                     ; $4ef3: $77
	halt                                             ; $4ef4: $76
	ld   h, l                                        ; $4ef5: $65
	ld   b, e                                        ; $4ef6: $43
	inc  [hl]                                        ; $4ef7: $34
	ld   d, l                                        ; $4ef8: $55
	ld   d, h                                        ; $4ef9: $54
	ld   b, l                                        ; $4efa: $45
	ld   h, a                                        ; $4efb: $67
	adc  b                                           ; $4efc: $88
	sbc  c                                           ; $4efd: $99
	cp   h                                           ; $4efe: $bc
	res  7, e                                        ; $4eff: $cb $bb
	call z, $bacb                                    ; $4f01: $cc $cb $ba
	xor  c                                           ; $4f04: $a9
	sbc  b                                           ; $4f05: $98
	add  [hl]                                        ; $4f06: $86
	ld   d, h                                        ; $4f07: $54
	ld   b, e                                        ; $4f08: $43
	ld   b, e                                        ; $4f09: $43
	inc  sp                                          ; $4f0a: $33
	inc  hl                                          ; $4f0b: $23
	ld   b, l                                        ; $4f0c: $45
	ld   h, [hl]                                     ; $4f0d: $66
	ld   a, b                                        ; $4f0e: $78
	sbc  e                                           ; $4f0f: $9b
	call z, $cdcd                                    ; $4f10: $cc $cd $cd
	db   $dd                                         ; $4f13: $dd
	db   $dd                                         ; $4f14: $dd
	res  5, d                                        ; $4f15: $cb $aa
	sbc  b                                           ; $4f17: $98
	ld   h, l                                        ; $4f18: $65
	ld   b, e                                        ; $4f19: $43
	inc  sp                                          ; $4f1a: $33
	ld   [hl-], a                                    ; $4f1b: $32
	ld   [hl+], a                                    ; $4f1c: $22
	inc  sp                                          ; $4f1d: $33
	ld   b, l                                        ; $4f1e: $45
	ld   h, [hl]                                     ; $4f1f: $66
	ld   a, c                                        ; $4f20: $79
	cp   e                                           ; $4f21: $bb
	call $dedd                                       ; $4f22: $cd $dd $de
	db   $ed                                         ; $4f25: $ed
	call c, $a9bb                                    ; $4f26: $dc $bb $a9
	add  [hl]                                        ; $4f29: $86
	ld   h, h                                        ; $4f2a: $64
	ld   b, e                                        ; $4f2b: $43
	inc  sp                                          ; $4f2c: $33
	ld   [hl+], a                                    ; $4f2d: $22
	inc  hl                                          ; $4f2e: $23
	inc  [hl]                                        ; $4f2f: $34
	ld   d, [hl]                                     ; $4f30: $56
	ld   h, a                                        ; $4f31: $67
	adc  c                                           ; $4f32: $89
	xor  e                                           ; $4f33: $ab
	call z, $ddcd                                    ; $4f34: $cc $cd $dd
	call c, $bacb                                    ; $4f37: $dc $cb $ba
	sbc  b                                           ; $4f3a: $98
	halt                                             ; $4f3b: $76
	ld   d, l                                        ; $4f3c: $55
	ld   b, h                                        ; $4f3d: $44
	inc  sp                                          ; $4f3e: $33
	inc  sp                                          ; $4f3f: $33
	inc  sp                                          ; $4f40: $33
	ld   b, h                                        ; $4f41: $44
	ld   d, [hl]                                     ; $4f42: $56
	ld   a, b                                        ; $4f43: $78
	sbc  d                                           ; $4f44: $9a
	cp   e                                           ; $4f45: $bb
	call $dccd                                       ; $4f46: $cd $cd $dc
	call z, $aaca                                    ; $4f49: $cc $ca $aa
	add  a                                           ; $4f4c: $87
	ld   h, l                                        ; $4f4d: $65
	ld   d, h                                        ; $4f4e: $54
	ld   b, e                                        ; $4f4f: $43
	inc  sp                                          ; $4f50: $33
	inc  sp                                          ; $4f51: $33
	inc  [hl]                                        ; $4f52: $34
	ld   d, l                                        ; $4f53: $55
	ld   h, a                                        ; $4f54: $67
	adc  c                                           ; $4f55: $89
	xor  e                                           ; $4f56: $ab
	call z, $cdcd                                    ; $4f57: $cc $cd $cd
	call c, $aacb                                    ; $4f5a: $dc $cb $aa
	xor  c                                           ; $4f5d: $a9
	ld   [hl], a                                     ; $4f5e: $77
	ld   h, l                                        ; $4f5f: $65
	ld   d, h                                        ; $4f60: $54
	ld   b, h                                        ; $4f61: $44
	inc  sp                                          ; $4f62: $33
	inc  [hl]                                        ; $4f63: $34
	ld   b, l                                        ; $4f64: $45
	ld   d, [hl]                                     ; $4f65: $56
	ld   [hl], a                                     ; $4f66: $77
	sbc  c                                           ; $4f67: $99
	cp   e                                           ; $4f68: $bb
	call z, $dcdd                                    ; $4f69: $cc $dd $dc
	call c, $bacb                                    ; $4f6c: $dc $cb $ba
	adc  b                                           ; $4f6f: $88
	halt                                             ; $4f70: $76
	ld   d, l                                        ; $4f71: $55
	ld   b, h                                        ; $4f72: $44
	ld   b, h                                        ; $4f73: $44
	inc  sp                                          ; $4f74: $33
	ld   b, h                                        ; $4f75: $44
	ld   d, l                                        ; $4f76: $55
	ld   h, a                                        ; $4f77: $67
	ld   a, b                                        ; $4f78: $78
	xor  d                                           ; $4f79: $aa
	cp   e                                           ; $4f7a: $bb
	call z, $cccc                                    ; $4f7b: $cc $cc $cc
	cp   h                                           ; $4f7e: $bc
	cp   d                                           ; $4f7f: $ba
	sbc  b                                           ; $4f80: $98
	add  a                                           ; $4f81: $87
	ld   h, [hl]                                     ; $4f82: $66
	ld   d, l                                        ; $4f83: $55
	ld   b, h                                        ; $4f84: $44
	ld   b, h                                        ; $4f85: $44
	ld   b, h                                        ; $4f86: $44
	ld   b, l                                        ; $4f87: $45
	ld   d, [hl]                                     ; $4f88: $56
	ld   [hl], a                                     ; $4f89: $77
	adc  c                                           ; $4f8a: $89
	xor  e                                           ; $4f8b: $ab
	cp   h                                           ; $4f8c: $bc
	call z, $cbcc                                    ; $4f8d: $cc $cc $cb
	res  5, c                                        ; $4f90: $cb $a9
	sbc  b                                           ; $4f92: $98
	ld   [hl], a                                     ; $4f93: $77
	ld   h, [hl]                                     ; $4f94: $66
	ld   d, l                                        ; $4f95: $55
	ld   b, e                                        ; $4f96: $43
	inc  [hl]                                        ; $4f97: $34
	ld   b, l                                        ; $4f98: $45
	ld   d, l                                        ; $4f99: $55
	ld   h, [hl]                                     ; $4f9a: $66
	ld   a, b                                        ; $4f9b: $78
	sbc  c                                           ; $4f9c: $99
	cp   e                                           ; $4f9d: $bb
	set  1, h                                        ; $4f9e: $cb $cc
	call z, $bbbb                                    ; $4fa0: $cc $bb $bb
	sbc  c                                           ; $4fa3: $99
	add  a                                           ; $4fa4: $87
	ld   h, [hl]                                     ; $4fa5: $66
	ld   d, l                                        ; $4fa6: $55
	ld   b, h                                        ; $4fa7: $44
	ld   b, h                                        ; $4fa8: $44
	ld   b, h                                        ; $4fa9: $44
	ld   b, l                                        ; $4faa: $45
	ld   h, [hl]                                     ; $4fab: $66
	ld   a, b                                        ; $4fac: $78
	adc  c                                           ; $4fad: $89
	xor  e                                           ; $4fae: $ab
	call z, $cccc                                    ; $4faf: $cc $cc $cc
	call z, $a9ba                                    ; $4fb2: $cc $ba $a9
	add  a                                           ; $4fb5: $87
	halt                                             ; $4fb6: $76
	ld   d, l                                        ; $4fb7: $55
	ld   b, h                                        ; $4fb8: $44
	ld   b, h                                        ; $4fb9: $44
	ld   b, h                                        ; $4fba: $44
	ld   b, l                                        ; $4fbb: $45
	ld   d, [hl]                                     ; $4fbc: $56
	ld   a, b                                        ; $4fbd: $78
	sbc  c                                           ; $4fbe: $99
	xor  d                                           ; $4fbf: $aa
	call z, $cddc                                    ; $4fc0: $cc $dc $cd
	call z, $a9ba                                    ; $4fc3: $cc $ba $a9
	add  a                                           ; $4fc6: $87
	ld   h, [hl]                                     ; $4fc7: $66
	ld   d, h                                        ; $4fc8: $54
	ld   b, h                                        ; $4fc9: $44
	ld   b, h                                        ; $4fca: $44
	ld   b, h                                        ; $4fcb: $44
	ld   b, l                                        ; $4fcc: $45
	ld   h, [hl]                                     ; $4fcd: $66
	ld   a, c                                        ; $4fce: $79
	sbc  d                                           ; $4fcf: $9a
	cp   e                                           ; $4fd0: $bb
	cp   h                                           ; $4fd1: $bc
	db   $dd                                         ; $4fd2: $dd
	db   $dd                                         ; $4fd3: $dd
	call z, $98bb                                    ; $4fd4: $cc $bb $98
	halt                                             ; $4fd7: $76
	ld   h, l                                        ; $4fd8: $65
	ld   d, h                                        ; $4fd9: $54
	ld   b, e                                        ; $4fda: $43
	inc  sp                                          ; $4fdb: $33
	ld   b, h                                        ; $4fdc: $44
	ld   d, [hl]                                     ; $4fdd: $56
	ld   h, a                                        ; $4fde: $67
	adc  c                                           ; $4fdf: $89
	xor  e                                           ; $4fe0: $ab
	cp   e                                           ; $4fe1: $bb
	call z, $ccdd                                    ; $4fe2: $cc $dd $cc
	cp   h                                           ; $4fe5: $bc
	cp   d                                           ; $4fe6: $ba
	sbc  b                                           ; $4fe7: $98
	halt                                             ; $4fe8: $76
	ld   d, h                                        ; $4fe9: $54
	ld   b, h                                        ; $4fea: $44
	ld   b, h                                        ; $4feb: $44
	ld   b, h                                        ; $4fec: $44
	ld   b, l                                        ; $4fed: $45
	ld   h, a                                        ; $4fee: $67
	adc  c                                           ; $4fef: $89
	xor  d                                           ; $4ff0: $aa
	cp   h                                           ; $4ff1: $bc
	set  1, e                                        ; $4ff2: $cb $cb
	call z, $a8cb                                    ; $4ff4: $cc $cb $a8
	ld   [hl], a                                     ; $4ff7: $77
	ld   h, l                                        ; $4ff8: $65
	ld   b, e                                        ; $4ff9: $43
	inc  sp                                          ; $4ffa: $33
	ld   b, h                                        ; $4ffb: $44
	ld   d, [hl]                                     ; $4ffc: $56
	ld   h, [hl]                                     ; $4ffd: $66
	adc  d                                           ; $4ffe: $8a
	xor  h                                           ; $4fff: $ac
	call c, $ccdc                                    ; $5000: $dc $dc $cc
	cp   d                                           ; $5003: $ba
	xor  b                                           ; $5004: $a8
	halt                                             ; $5005: $76
	ld   h, l                                        ; $5006: $65
	ld   d, e                                        ; $5007: $53
	ld   [hl+], a                                    ; $5008: $22
	inc  hl                                          ; $5009: $23
	ld   b, h                                        ; $500a: $44
	ld   d, [hl]                                     ; $500b: $56
	ld   a, b                                        ; $500c: $78
	xor  e                                           ; $500d: $ab
	cp   l                                           ; $500e: $bd
	rst  $28                                         ; $500f: $ef
	db   $fd                                         ; $5010: $fd
	db   $dd                                         ; $5011: $dd
	jp   z, Jump_0d6_53a7                            ; $5012: $ca $a7 $53

	ld   [hl+], a                                    ; $5015: $22
	ld   hl, $1111                                   ; $5016: $21 $11 $11
	ld   b, a                                        ; $5019: $47
	adc  b                                           ; $501a: $88
	adc  d                                           ; $501b: $8a
	cp   h                                           ; $501c: $bc
	db   $dd                                         ; $501d: $dd
	sbc  $ef                                         ; $501e: $de $ef
	xor  $b9                                         ; $5020: $ee $b9
	add  [hl]                                        ; $5022: $86
	ld   sp, $1111                                   ; $5023: $31 $11 $11
	ld   de, $9a15                                   ; $5026: $11 $15 $9a
	call z, $ccaa                                    ; $5029: $cc $aa $cc
	sbc  $ed                                         ; $502c: $de $ed
	sbc  $db                                         ; $502e: $de $db
	add  l                                           ; $5030: $85
	ld   sp, $2112                                   ; $5031: $31 $12 $21
	ld   de, $8b15                                   ; $5034: $11 $15 $8b
	cp   e                                           ; $5037: $bb
	cp   e                                           ; $5038: $bb
	db   $dd                                         ; $5039: $dd
	cp   l                                           ; $503a: $bd
	call $ecff                                       ; $503b: $cd $ff $ec
	sub  [hl]                                        ; $503e: $96
	ld   b, c                                        ; $503f: $41
	ld   de, $1112                                   ; $5040: $11 $12 $11
	inc  de                                          ; $5043: $13
	sbc  l                                           ; $5044: $9d
	db   $db                                         ; $5045: $db
	set  1, l                                        ; $5046: $cb $cd
	call c, $ffbd                                    ; $5048: $dc $bd $ff
	db   $fc                                         ; $504b: $fc
	sub  a                                           ; $504c: $97
	ld   b, c                                        ; $504d: $41
	ld   de, $1111                                   ; $504e: $11 $11 $11
	dec  d                                           ; $5051: $15
	xor  e                                           ; $5052: $ab
	call z, $deba                                    ; $5053: $cc $ba $de
	call c, $ffcd                                    ; $5056: $dc $cd $ff
	ei                                               ; $5059: $fb
	xor  b                                           ; $505a: $a8
	ld   b, c                                        ; $505b: $41
	ld   de, $1112                                   ; $505c: $11 $12 $11
	dec  d                                           ; $505f: $15
	sbc  [hl]                                        ; $5060: $9e
	ld   [$de89], a                                  ; $5061: $ea $89 $de
	db   $db                                         ; $5064: $db
	sbc  $ff                                         ; $5065: $de $ff
	db   $ec                                         ; $5067: $ec
	add  [hl]                                        ; $5068: $86
	ld   hl, $3112                                   ; $5069: $21 $12 $31
	ld   de, $dd27                                   ; $506c: $11 $27 $dd
	adc  b                                           ; $506f: $88
	sbc  h                                           ; $5070: $9c
	rst  $38                                         ; $5071: $ff
	sub  [hl]                                        ; $5072: $96
	cp   a                                           ; $5073: $bf
	rst  $38                                         ; $5074: $ff
	db   $eb                                         ; $5075: $eb
	add  l                                           ; $5076: $85
	ld   de, $2112                                   ; $5077: $11 $12 $21
	ld   [de], a                                     ; $507a: $12
	ld   e, c                                        ; $507b: $59
	call c, $7c97                                    ; $507c: $dc $97 $7c
	cp   $bc                                         ; $507f: $fe $bc
	rst  $28                                         ; $5081: $ef
	rst  $38                                         ; $5082: $ff
	cp   d                                           ; $5083: $ba
	ld   h, c                                        ; $5084: $61
	ld   de, $1143                                   ; $5085: $11 $43 $11
	dec  d                                           ; $5088: $15
	adc  $fa                                         ; $5089: $ce $fa
	ld   b, [hl]                                     ; $508b: $46
	sbc  [hl]                                        ; $508c: $9e
	xor  $cc                                         ; $508d: $ee $cc
	xor  $ee                                         ; $508f: $ee $ee
	and  [hl]                                        ; $5091: $a6
	ld   de, $5214                                   ; $5092: $11 $14 $52
	ld   de, $ec3b                                   ; $5095: $11 $3b $ec
	and  a                                           ; $5098: $a7
	adc  e                                           ; $5099: $8b
	call z, $efbc                                    ; $509a: $cc $bc $ef
	rst  $38                                         ; $509d: $ff
	jp   c, $1161                                    ; $509e: $da $61 $11

	ld   h, l                                        ; $50a1: $65
	ld   hl, $bd15                                   ; $50a2: $21 $15 $bd
	ret                                              ; $50a5: $c9


	ld   d, [hl]                                     ; $50a6: $56
	xor  [hl]                                        ; $50a7: $ae
	cp   $de                                         ; $50a8: $fe $de
	call $a5eb                                       ; $50aa: $cd $eb $a5
	ld   de, $3136                                   ; $50ad: $11 $36 $31
	inc  d                                           ; $50b0: $14
	adc  d                                           ; $50b1: $8a
	xor  d                                           ; $50b2: $aa
	adc  b                                           ; $50b3: $88
	cp   e                                           ; $50b4: $bb
	cp   e                                           ; $50b5: $bb
	call $cedc                                       ; $50b6: $cd $dc $ce
	ret  z                                           ; $50b9: $c8

	ld   sp, $4314                                   ; $50ba: $31 $14 $43
	inc  hl                                          ; $50bd: $23
	ld   e, d                                        ; $50be: $5a
	jp   z, Jump_0d6_6a97                            ; $50bf: $ca $97 $6a

	sbc  $fc                                         ; $50c2: $de $fc
	cp   h                                           ; $50c4: $bc
	call z, Call_0d6_5199                            ; $50c5: $cc $99 $51
	ld   [de], a                                     ; $50c8: $12
	ld   h, l                                        ; $50c9: $65
	ld   hl, $ba39                                   ; $50ca: $21 $39 $ba
	ld   a, b                                        ; $50cd: $78
	xor  h                                           ; $50ce: $ac
	cp   d                                           ; $50cf: $ba
	adc  $dc                                         ; $50d0: $ce $dc
	call c, Call_0d6_51ba                            ; $50d2: $dc $ba $51
	inc  d                                           ; $50d5: $14
	ld   [hl], l                                     ; $50d6: $75
	ld   de, $db17                                   ; $50d7: $11 $17 $db
	add  l                                           ; $50da: $85
	ld   a, l                                        ; $50db: $7d
	cp   d                                           ; $50dc: $ba
	call z, $eddd                                    ; $50dd: $cc $dd $ed
	xor  c                                           ; $50e0: $a9
	ld   d, c                                        ; $50e1: $51
	inc  de                                          ; $50e2: $13
	sub  [hl]                                        ; $50e3: $96
	ld   h, c                                        ; $50e4: $61
	ld   d, $bb                                      ; $50e5: $16 $bb
	add  h                                           ; $50e7: $84
	ld   l, h                                        ; $50e8: $6c
	db   $ed                                         ; $50e9: $ed
	xor  $8a                                         ; $50ea: $ee $8a
	call $21e9                                       ; $50ec: $cd $e9 $21
	dec  b                                           ; $50ef: $05
	add  a                                           ; $50f0: $87
	ld   [hl+], a                                    ; $50f1: $22
	ld   b, [hl]                                     ; $50f2: $46
	add  a                                           ; $50f3: $87
	adc  c                                           ; $50f4: $89
	ld   l, b                                        ; $50f5: $68
	cp   a                                           ; $50f6: $bf
	db   $fc                                         ; $50f7: $fc
	xor  e                                           ; $50f8: $ab
	db   $ed                                         ; $50f9: $ed
	sub  [hl]                                        ; $50fa: $96
	ld   sp, $6434                                   ; $50fb: $31 $34 $64
	dec  [hl]                                        ; $50fe: $35
	dec  [hl]                                        ; $50ff: $35
	ld   l, h                                        ; $5100: $6c
	call nz, $af89                                   ; $5101: $c4 $89 $af
	db   $eb                                         ; $5104: $eb
	cp   e                                           ; $5105: $bb
	cp   h                                           ; $5106: $bc
	sub  l                                           ; $5107: $95
	ld   [hl-], a                                    ; $5108: $32
	scf                                              ; $5109: $37
	ld   b, d                                        ; $510a: $42
	ld   [hl], e                                     ; $510b: $73
	ld   l, d                                        ; $510c: $6a
	ld   b, e                                        ; $510d: $43
	adc  l                                           ; $510e: $8d
	cp   d                                           ; $510f: $ba
	sbc  h                                           ; $5110: $9c
	rst  $38                                         ; $5111: $ff
	cp   c                                           ; $5112: $b9
	xor  c                                           ; $5113: $a9
	ld   [hl], c                                     ; $5114: $71
	ld   d, $ab                                      ; $5115: $16 $ab
	ld   hl, wResetDataBaseAnimSpriteSpecIdxUsed                                   ; $5117: $21 $16 $c9
	inc  h                                           ; $511a: $24
	adc  c                                           ; $511b: $89
	rst  JumpTable                                         ; $511c: $df
	set  3, c                                        ; $511d: $cb $d9
	sbc  h                                           ; $511f: $9c
	sbc  e                                           ; $5120: $9b
	add  d                                           ; $5121: $82
	ld   [de], a                                     ; $5122: $12
	ld   c, c                                        ; $5123: $49
	sub  e                                           ; $5124: $93
	rla                                              ; $5125: $17
	cp   d                                           ; $5126: $ba
	ld   b, c                                        ; $5127: $41
	xor  a                                           ; $5128: $af
	ld   a, [$ca9b]                                  ; $5129: $fa $9b $ca
	ld   l, b                                        ; $512c: $68
	ret  z                                           ; $512d: $c8

	ld   b, d                                        ; $512e: $42
	ld   b, a                                        ; $512f: $47
	sub  l                                           ; $5130: $95
	ld   h, $74                                      ; $5131: $26 $74
	ld   e, e                                        ; $5133: $5b
	xor  h                                           ; $5134: $ac
	and  h                                           ; $5135: $a4
	rst  JumpTable                                         ; $5136: $df
	sbc  c                                           ; $5137: $99
	jp   z, $17b3                                    ; $5138: $ca $b3 $17

	ret  z                                           ; $513b: $c8

	ld   h, h                                        ; $513c: $64
	add  hl, de                                      ; $513d: $19
	sub  d                                           ; $513e: $92
	ld   l, c                                        ; $513f: $69
	ld   l, b                                        ; $5140: $68
	ld   l, e                                        ; $5141: $6b
	db   $fc                                         ; $5142: $fc
	xor  b                                           ; $5143: $a8
	ld   a, d                                        ; $5144: $7a
	adc  b                                           ; $5145: $88
	and  a                                           ; $5146: $a7
	ld   d, h                                        ; $5147: $54
	ld   d, a                                        ; $5148: $57
	ld   h, [hl]                                     ; $5149: $66
	ld   h, a                                        ; $514a: $67
	ld   h, h                                        ; $514b: $64
	ld   l, e                                        ; $514c: $6b
	ld   [hl], a                                     ; $514d: $77
	rst  $38                                         ; $514e: $ff
	xor  b                                           ; $514f: $a8
	adc  c                                           ; $5150: $89
	xor  d                                           ; $5151: $aa
	ld   h, [hl]                                     ; $5152: $66
	ld   h, [hl]                                     ; $5153: $66
	ld   [hl], a                                     ; $5154: $77
	ld   h, l                                        ; $5155: $65
	ld   d, l                                        ; $5156: $55
	ld   h, [hl]                                     ; $5157: $66
	and  a                                           ; $5158: $a7
	ld   e, h                                        ; $5159: $5c
	db   $fc                                         ; $515a: $fc
	ld   e, c                                        ; $515b: $59
	cp   l                                           ; $515c: $bd
	and  a                                           ; $515d: $a7

jr_0d6_515e:
	ld   b, l                                        ; $515e: $45
	ld   a, b                                        ; $515f: $78
	sub  h                                           ; $5160: $94
	ld   c, c                                        ; $5161: $49
	ld   d, l                                        ; $5162: $55
	and  e                                           ; $5163: $a3
	ld   c, c                                        ; $5164: $49
	sbc  l                                           ; $5165: $9d
	adc  e                                           ; $5166: $8b
	ld   hl, sp+$5b                                  ; $5167: $f8 $5b
	sbc  h                                           ; $5169: $9c
	or   c                                           ; $516a: $b1
	ld   c, c                                        ; $516b: $49
	ld   l, c                                        ; $516c: $69
	add  h                                           ; $516d: $84
	add  l                                           ; $516e: $85
	dec  h                                           ; $516f: $25
	ld   a, d                                        ; $5170: $7a
	or   [hl]                                        ; $5171: $b6
	adc  a                                           ; $5172: $8f
	xor  d                                           ; $5173: $aa
	cp   e                                           ; $5174: $bb
	db   $e4                                         ; $5175: $e4
	inc  l                                           ; $5176: $2c
	ld   [hl], e                                     ; $5177: $73
	sub  [hl]                                        ; $5178: $96
	ld   l, b                                        ; $5179: $68
	ld   d, [hl]                                     ; $517a: $56
	sub  [hl]                                        ; $517b: $96
	add  a                                           ; $517c: $87
	jr   c, jr_0d6_515e                              ; $517d: $38 $df

	push de                                          ; $517f: $d5
	sbc  d                                           ; $5180: $9a
	jp   z, $c827                                    ; $5181: $ca $27 $c8

	ld   d, h                                        ; $5184: $54
	adc  c                                           ; $5185: $89
	ld   b, e                                        ; $5186: $43
	ld   a, b                                        ; $5187: $78
	ld   d, a                                        ; $5188: $57
	adc  d                                           ; $5189: $8a
	ret                                              ; $518a: $c9


	sbc  a                                           ; $518b: $9f
	push bc                                          ; $518c: $c5
	add  a                                           ; $518d: $87
	adc  d                                           ; $518e: $8a
	add  l                                           ; $518f: $85
	adc  d                                           ; $5190: $8a
	ld   b, h                                        ; $5191: $44
	ld   [hl], a                                     ; $5192: $77
	sub  a                                           ; $5193: $97
	dec  [hl]                                        ; $5194: $35
	call z, $f69c                                    ; $5195: $cc $9c $f6
	ld   a, a                                        ; $5198: $7f

Call_0d6_5199:
	ld   [hl], l                                     ; $5199: $75
	halt                                             ; $519a: $76
	sbc  b                                           ; $519b: $98
	ld   e, c                                        ; $519c: $59
	or   l                                           ; $519d: $b5
	inc  [hl]                                        ; $519e: $34
	ld   h, a                                        ; $519f: $67
	ld   l, d                                        ; $51a0: $6a
	cp   b                                           ; $51a1: $b8
	cp   e                                           ; $51a2: $bb
	call $8d64                                       ; $51a3: $cd $64 $8d
	sub  h                                           ; $51a6: $94

Call_0d6_51a7:
	ld   e, c                                        ; $51a7: $59
	or   l                                           ; $51a8: $b5
	dec  h                                           ; $51a9: $25
	swap h                                           ; $51aa: $cb $34
	ld   a, d                                        ; $51ac: $7a
	reti                                             ; $51ad: $d9


	sbc  d                                           ; $51ae: $9a
	or   [hl]                                        ; $51af: $b6
	sbc  a                                           ; $51b0: $9f
	ld   b, [hl]                                     ; $51b1: $46
	and  [hl]                                        ; $51b2: $a6
	or   h                                           ; $51b3: $b4
	ld   c, e                                        ; $51b4: $4b
	add  [hl]                                        ; $51b5: $86
	ld   b, l                                        ; $51b6: $45
	sbc  e                                           ; $51b7: $9b
	ld   d, l                                        ; $51b8: $55

Call_0d6_51b9:
	adc  h                                           ; $51b9: $8c

Call_0d6_51ba:
	ld   hl, sp+$3b                                  ; $51ba: $f8 $3b
	jp   hl                                          ; $51bc: $e9


	ld   d, [hl]                                     ; $51bd: $56
	ld   [hl], a                                     ; $51be: $77
	adc  b                                           ; $51bf: $88
	ld   a, b                                        ; $51c0: $78
	ld   [hl], l                                     ; $51c1: $75
	ld   d, [hl]                                     ; $51c2: $56
	sbc  c                                           ; $51c3: $99
	add  [hl]                                        ; $51c4: $86
	ld   l, [hl]                                     ; $51c5: $6e
	call nz, $8acb                                   ; $51c6: $c4 $cb $8a
	ld   c, c                                        ; $51c9: $49
	add  $67                                         ; $51ca: $c6 $67
	ld   l, b                                        ; $51cc: $68
	halt                                             ; $51cd: $76
	add  l                                           ; $51ce: $85
	ld   e, b                                        ; $51cf: $58
	ld   a, e                                        ; $51d0: $7b
	add  sp, $78                                     ; $51d1: $e8 $78
	xor  e                                           ; $51d3: $ab
	ld   l, c                                        ; $51d4: $69
	and  [hl]                                        ; $51d5: $a6
	ld   a, c                                        ; $51d6: $79
	ld   b, a                                        ; $51d7: $47
	add  $45                                         ; $51d8: $c6 $45
	ld   c, h                                        ; $51da: $4c
	and  a                                           ; $51db: $a7
	or   h                                           ; $51dc: $b4
	xor  a                                           ; $51dd: $af
	add  [hl]                                        ; $51de: $86
	sbc  h                                           ; $51df: $9c
	or   h                                           ; $51e0: $b4
	ld   e, c                                        ; $51e1: $59
	xor  b                                           ; $51e2: $a8
	ld   [hl], $b7                                   ; $51e3: $36 $b7
	ld   h, a                                        ; $51e5: $67
	ld   a, c                                        ; $51e6: $79
	ld   h, [hl]                                     ; $51e7: $66
	sbc  c                                           ; $51e8: $99
	xor  c                                           ; $51e9: $a9
	db   $db                                         ; $51ea: $db
	ld   a, [hl+]                                    ; $51eb: $2a
	db   $d3                                         ; $51ec: $d3
	xor  h                                           ; $51ed: $ac
	add  hl, sp                                      ; $51ee: $39
	ld   h, h                                        ; $51ef: $64
	and  a                                           ; $51f0: $a7
	ld   a, b                                        ; $51f1: $78
	add  hl, sp                                      ; $51f2: $39
	sbc  b                                           ; $51f3: $98
	cp   b                                           ; $51f4: $b8
	xor  b                                           ; $51f5: $a8
	ld   l, [hl]                                     ; $51f6: $6e
	ld   h, [hl]                                     ; $51f7: $66
	db   $d3                                         ; $51f8: $d3
	ld   e, e                                        ; $51f9: $5b
	ld   [hl], a                                     ; $51fa: $77
	adc  c                                           ; $51fb: $89
	ld   [hl], l                                     ; $51fc: $75
	halt                                             ; $51fd: $76
	ld   a, e                                        ; $51fe: $7b
	add  [hl]                                        ; $51ff: $86
	reti                                             ; $5200: $d9


	ld   a, c                                        ; $5201: $79
	ld   l, h                                        ; $5202: $6c
	add  l                                           ; $5203: $85
	or   a                                           ; $5204: $b7
	xor  c                                           ; $5205: $a9
	jr   c, jr_0d6_527f                              ; $5206: $38 $77

	add  h                                           ; $5208: $84
	ld   e, h                                        ; $5209: $5c
	and  l                                           ; $520a: $a5
	adc  d                                           ; $520b: $8a
	adc  c                                           ; $520c: $89
	sub  l                                           ; $520d: $95
	adc  [hl]                                        ; $520e: $8e
	sub  [hl]                                        ; $520f: $96
	sub  [hl]                                        ; $5210: $96
	sub  a                                           ; $5211: $97
	ld   l, d                                        ; $5212: $6a
	ld   h, a                                        ; $5213: $67
	sbc  b                                           ; $5214: $98
	ld   d, [hl]                                     ; $5215: $56
	xor  c                                           ; $5216: $a9
	halt                                             ; $5217: $76
	adc  d                                           ; $5218: $8a
	cp   b                                           ; $5219: $b8
	ld   c, h                                        ; $521a: $4c
	or   h                                           ; $521b: $b4
	halt                                             ; $521c: $76
	cp   d                                           ; $521d: $ba
	ld   d, [hl]                                     ; $521e: $56
	adc  b                                           ; $521f: $88
	ld   a, b                                        ; $5220: $78
	sbc  d                                           ; $5221: $9a
	add  [hl]                                        ; $5222: $86
	ld   a, c                                        ; $5223: $79
	add  a                                           ; $5224: $87
	ld   a, e                                        ; $5225: $7b
	ld   h, [hl]                                     ; $5226: $66
	and  [hl]                                        ; $5227: $a6
	adc  b                                           ; $5228: $88
	halt                                             ; $5229: $76
	sbc  b                                           ; $522a: $98
	ld   a, d                                        ; $522b: $7a
	ld   [hl], l                                     ; $522c: $75
	add  [hl]                                        ; $522d: $86
	sbc  c                                           ; $522e: $99
	adc  d                                           ; $522f: $8a
	sbc  b                                           ; $5230: $98
	ld   a, c                                        ; $5231: $79
	ld   a, d                                        ; $5232: $7a
	ld   [hl], e                                     ; $5233: $73
	rst  ToBoot                                         ; $5234: $c7
	ld   c, c                                        ; $5235: $49
	ld   a, d                                        ; $5236: $7a
	and  h                                           ; $5237: $a4
	adc  c                                           ; $5238: $89
	adc  d                                           ; $5239: $8a
	adc  b                                           ; $523a: $88
	ld   h, a                                        ; $523b: $67
	adc  c                                           ; $523c: $89
	add  [hl]                                        ; $523d: $86
	sub  a                                           ; $523e: $97
	ld   h, a                                        ; $523f: $67
	sbc  c                                           ; $5240: $99
	sub  a                                           ; $5241: $97
	ld   [hl], a                                     ; $5242: $77
	ld   a, b                                        ; $5243: $78
	ld   [hl], a                                     ; $5244: $77
	sbc  c                                           ; $5245: $99
	ld   [hl], l                                     ; $5246: $75
	adc  d                                           ; $5247: $8a
	ld   a, b                                        ; $5248: $78
	ld   [hl], a                                     ; $5249: $77
	sbc  b                                           ; $524a: $98
	ld   l, c                                        ; $524b: $69
	sub  l                                           ; $524c: $95
	and  a                                           ; $524d: $a7
	ld   l, b                                        ; $524e: $68
	adc  b                                           ; $524f: $88
	ld   a, c                                        ; $5250: $79
	ld   l, b                                        ; $5251: $68
	halt                                             ; $5252: $76
	sub  a                                           ; $5253: $97
	ld   a, b                                        ; $5254: $78
	adc  b                                           ; $5255: $88
	sub  a                                           ; $5256: $97
	sbc  c                                           ; $5257: $99
	ld   [hl], a                                     ; $5258: $77
	adc  d                                           ; $5259: $8a
	ld   [hl], a                                     ; $525a: $77
	sub  a                                           ; $525b: $97
	adc  c                                           ; $525c: $89
	ld   h, a                                        ; $525d: $67
	sbc  b                                           ; $525e: $98
	xor  c                                           ; $525f: $a9
	sbc  b                                           ; $5260: $98
	add  a                                           ; $5261: $87
	xor  b                                           ; $5262: $a8
	ld   a, d                                        ; $5263: $7a
	ld   a, d                                        ; $5264: $7a
	ld   a, b                                        ; $5265: $78
	sbc  c                                           ; $5266: $99
	sub  a                                           ; $5267: $97
	adc  b                                           ; $5268: $88
	or   [hl]                                        ; $5269: $b6
	sbc  e                                           ; $526a: $9b
	ld   a, c                                        ; $526b: $79
	ld   l, d                                        ; $526c: $6a
	sbc  b                                           ; $526d: $98
	ld   a, c                                        ; $526e: $79
	adc  b                                           ; $526f: $88
	sub  a                                           ; $5270: $97
	adc  b                                           ; $5271: $88
	adc  b                                           ; $5272: $88
	sbc  c                                           ; $5273: $99
	sbc  b                                           ; $5274: $98
	ld   a, c                                        ; $5275: $79
	adc  c                                           ; $5276: $89
	ld   l, d                                        ; $5277: $6a
	sub  a                                           ; $5278: $97
	sub  a                                           ; $5279: $97
	sbc  b                                           ; $527a: $98
	ld   a, b                                        ; $527b: $78
	add  a                                           ; $527c: $87
	adc  d                                           ; $527d: $8a
	ld   a, c                                        ; $527e: $79

jr_0d6_527f:
	adc  c                                           ; $527f: $89
	ld   a, b                                        ; $5280: $78
	add  a                                           ; $5281: $87
	sbc  b                                           ; $5282: $98
	sbc  b                                           ; $5283: $98
	ld   a, c                                        ; $5284: $79
	ld   [hl], a                                     ; $5285: $77
	sub  a                                           ; $5286: $97
	xor  c                                           ; $5287: $a9
	ld   a, b                                        ; $5288: $78
	sbc  b                                           ; $5289: $98
	adc  c                                           ; $528a: $89
	ld   a, b                                        ; $528b: $78
	ld   [hl], a                                     ; $528c: $77
	adc  b                                           ; $528d: $88
	add  a                                           ; $528e: $87
	add  a                                           ; $528f: $87
	adc  b                                           ; $5290: $88
	ld   l, c                                        ; $5291: $69
	add  a                                           ; $5292: $87
	sbc  c                                           ; $5293: $99
	adc  b                                           ; $5294: $88
	ld   [hl], a                                     ; $5295: $77
	sbc  b                                           ; $5296: $98
	ld   a, c                                        ; $5297: $79
	add  a                                           ; $5298: $87
	sbc  b                                           ; $5299: $98
	ld   a, d                                        ; $529a: $7a
	ld   [hl], a                                     ; $529b: $77
	and  a                                           ; $529c: $a7
	sbc  c                                           ; $529d: $99
	ld   a, b                                        ; $529e: $78
	adc  b                                           ; $529f: $88
	ld   a, d                                        ; $52a0: $7a
	add  a                                           ; $52a1: $87
	add  a                                           ; $52a2: $87
	adc  b                                           ; $52a3: $88
	sub  a                                           ; $52a4: $97
	ld   a, b                                        ; $52a5: $78
	ld   a, b                                        ; $52a6: $78
	ld   a, b                                        ; $52a7: $78
	ld   [hl], a                                     ; $52a8: $77
	sub  a                                           ; $52a9: $97
	adc  b                                           ; $52aa: $88
	ld   a, b                                        ; $52ab: $78
	ld   [hl], a                                     ; $52ac: $77
	add  a                                           ; $52ad: $87
	adc  c                                           ; $52ae: $89
	ld   [hl], a                                     ; $52af: $77
	sub  a                                           ; $52b0: $97
	adc  b                                           ; $52b1: $88
	adc  b                                           ; $52b2: $88
	adc  b                                           ; $52b3: $88
	adc  c                                           ; $52b4: $89
	ld   a, c                                        ; $52b5: $79
	ld   a, b                                        ; $52b6: $78
	adc  b                                           ; $52b7: $88
	ld   a, c                                        ; $52b8: $79
	add  a                                           ; $52b9: $87
	sub  [hl]                                        ; $52ba: $96
	adc  b                                           ; $52bb: $88
	ld   a, b                                        ; $52bc: $78
	adc  b                                           ; $52bd: $88
	ld   a, c                                        ; $52be: $79
	ld   a, b                                        ; $52bf: $78
	add  a                                           ; $52c0: $87
	adc  b                                           ; $52c1: $88
	adc  b                                           ; $52c2: $88
	add  a                                           ; $52c3: $87
	sub  a                                           ; $52c4: $97
	adc  b                                           ; $52c5: $88
	add  a                                           ; $52c6: $87
	ld   a, b                                        ; $52c7: $78
	adc  b                                           ; $52c8: $88
	ld   a, c                                        ; $52c9: $79
	add  a                                           ; $52ca: $87
	ld   a, b                                        ; $52cb: $78
	ld   a, b                                        ; $52cc: $78
	add  a                                           ; $52cd: $87
	add  [hl]                                        ; $52ce: $86
	adc  b                                           ; $52cf: $88
	add  a                                           ; $52d0: $87
	adc  b                                           ; $52d1: $88
	ld   a, b                                        ; $52d2: $78
	ld   a, b                                        ; $52d3: $78
	adc  c                                           ; $52d4: $89
	ld   a, b                                        ; $52d5: $78
	adc  b                                           ; $52d6: $88
	add  a                                           ; $52d7: $87
	sub  a                                           ; $52d8: $97
	adc  b                                           ; $52d9: $88
	adc  b                                           ; $52da: $88
	adc  c                                           ; $52db: $89
	ld   l, c                                        ; $52dc: $69
	ld   a, b                                        ; $52dd: $78
	ld   [hl], a                                     ; $52de: $77
	and  a                                           ; $52df: $a7
	sub  a                                           ; $52e0: $97
	sub  a                                           ; $52e1: $97
	adc  b                                           ; $52e2: $88
	ld   a, b                                        ; $52e3: $78
	ld   a, c                                        ; $52e4: $79
	ld   a, c                                        ; $52e5: $79
	ld   a, b                                        ; $52e6: $78
	adc  b                                           ; $52e7: $88
	ld   a, b                                        ; $52e8: $78
	add  a                                           ; $52e9: $87
	sbc  b                                           ; $52ea: $98
	add  a                                           ; $52eb: $87
	add  a                                           ; $52ec: $87
	sub  a                                           ; $52ed: $97
	sbc  b                                           ; $52ee: $98
	ld   a, c                                        ; $52ef: $79
	ld   a, b                                        ; $52f0: $78
	ld   a, b                                        ; $52f1: $78
	add  a                                           ; $52f2: $87
	adc  c                                           ; $52f3: $89
	add  a                                           ; $52f4: $87
	add  a                                           ; $52f5: $87
	sub  a                                           ; $52f6: $97
	adc  b                                           ; $52f7: $88
	adc  b                                           ; $52f8: $88
	ld   a, b                                        ; $52f9: $78
	ld   [hl], a                                     ; $52fa: $77
	add  a                                           ; $52fb: $87
	adc  b                                           ; $52fc: $88
	ld   a, b                                        ; $52fd: $78
	ld   a, b                                        ; $52fe: $78
	sub  a                                           ; $52ff: $97
	adc  b                                           ; $5300: $88
	adc  b                                           ; $5301: $88
	adc  b                                           ; $5302: $88
	adc  b                                           ; $5303: $88
	ld   a, b                                        ; $5304: $78
	add  a                                           ; $5305: $87
	sub  a                                           ; $5306: $97
	sub  a                                           ; $5307: $97
	adc  c                                           ; $5308: $89
	ld   a, b                                        ; $5309: $78
	ld   a, c                                        ; $530a: $79
	ld   a, b                                        ; $530b: $78
	adc  b                                           ; $530c: $88
	add  a                                           ; $530d: $87
	ld   a, c                                        ; $530e: $79
	ld   a, b                                        ; $530f: $78
	add  a                                           ; $5310: $87
	add  a                                           ; $5311: $87
	adc  b                                           ; $5312: $88
	adc  b                                           ; $5313: $88
	adc  b                                           ; $5314: $88
	adc  b                                           ; $5315: $88
	ld   a, b                                        ; $5316: $78
	add  a                                           ; $5317: $87
	adc  b                                           ; $5318: $88
	adc  b                                           ; $5319: $88
	add  a                                           ; $531a: $87
	adc  c                                           ; $531b: $89
	ld   a, b                                        ; $531c: $78
	add  a                                           ; $531d: $87
	sub  a                                           ; $531e: $97
	add  a                                           ; $531f: $87
	sbc  b                                           ; $5320: $98
	ld   a, c                                        ; $5321: $79
	ld   a, b                                        ; $5322: $78
	ld   a, b                                        ; $5323: $78
	add  a                                           ; $5324: $87
	sub  a                                           ; $5325: $97
	sub  a                                           ; $5326: $97
	sbc  b                                           ; $5327: $98
	ld   a, b                                        ; $5328: $78
	ld   a, c                                        ; $5329: $79
	ld   a, c                                        ; $532a: $79
	adc  b                                           ; $532b: $88
	add  a                                           ; $532c: $87
	add  a                                           ; $532d: $87
	sub  a                                           ; $532e: $97
	adc  b                                           ; $532f: $88
	ld   a, c                                        ; $5330: $79
	adc  b                                           ; $5331: $88
	adc  b                                           ; $5332: $88
	ld   a, b                                        ; $5333: $78
	sub  a                                           ; $5334: $97
	sub  a                                           ; $5335: $97
	ld   a, c                                        ; $5336: $79
	adc  b                                           ; $5337: $88
	adc  c                                           ; $5338: $89
	ld   a, b                                        ; $5339: $78
	adc  b                                           ; $533a: $88
	adc  c                                           ; $533b: $89
	ld   a, c                                        ; $533c: $79
	add  a                                           ; $533d: $87
	sub  [hl]                                        ; $533e: $96
	adc  b                                           ; $533f: $88
	ld   a, c                                        ; $5340: $79
	ld   a, c                                        ; $5341: $79
	adc  c                                           ; $5342: $89
	ld   a, c                                        ; $5343: $79
	add  a                                           ; $5344: $87
	sub  a                                           ; $5345: $97
	adc  b                                           ; $5346: $88
	add  a                                           ; $5347: $87
	adc  c                                           ; $5348: $89
	adc  b                                           ; $5349: $88
	ld   a, c                                        ; $534a: $79
	ld   a, b                                        ; $534b: $78
	adc  c                                           ; $534c: $89
	sbc  b                                           ; $534d: $98
	adc  c                                           ; $534e: $89
	add  a                                           ; $534f: $87
	sbc  b                                           ; $5350: $98
	ld   a, c                                        ; $5351: $79
	adc  c                                           ; $5352: $89
	sub  a                                           ; $5353: $97
	sbc  b                                           ; $5354: $98
	sub  a                                           ; $5355: $97
	sbc  c                                           ; $5356: $99
	adc  b                                           ; $5357: $88
	adc  b                                           ; $5358: $88
	ld   a, c                                        ; $5359: $79
	ld   a, d                                        ; $535a: $7a
	add  a                                           ; $535b: $87
	sub  a                                           ; $535c: $97
	sub  a                                           ; $535d: $97
	sub  a                                           ; $535e: $97
	sbc  b                                           ; $535f: $98
	adc  b                                           ; $5360: $88
	ld   a, c                                        ; $5361: $79
	ld   a, c                                        ; $5362: $79
	adc  b                                           ; $5363: $88
	adc  b                                           ; $5364: $88
	adc  b                                           ; $5365: $88
	sbc  b                                           ; $5366: $98
	add  a                                           ; $5367: $87
	adc  b                                           ; $5368: $88
	adc  c                                           ; $5369: $89
	ld   a, c                                        ; $536a: $79
	adc  b                                           ; $536b: $88
	sbc  c                                           ; $536c: $99
	adc  b                                           ; $536d: $88
	adc  c                                           ; $536e: $89
	sbc  b                                           ; $536f: $98
	adc  b                                           ; $5370: $88
	adc  b                                           ; $5371: $88
	sbc  b                                           ; $5372: $98
	adc  b                                           ; $5373: $88
	sbc  b                                           ; $5374: $98
	sbc  b                                           ; $5375: $98
	adc  c                                           ; $5376: $89
	add  a                                           ; $5377: $87
	adc  b                                           ; $5378: $88
	adc  c                                           ; $5379: $89
	adc  c                                           ; $537a: $89
	ld   a, c                                        ; $537b: $79
	ld   a, c                                        ; $537c: $79
	adc  b                                           ; $537d: $88
	sbc  b                                           ; $537e: $98
	sub  a                                           ; $537f: $97
	sub  a                                           ; $5380: $97
	adc  b                                           ; $5381: $88
	adc  c                                           ; $5382: $89
	add  a                                           ; $5383: $87
	sbc  b                                           ; $5384: $98
	adc  b                                           ; $5385: $88

Jump_0d6_5386:
	ld   a, c                                        ; $5386: $79
	adc  b                                           ; $5387: $88
	adc  b                                           ; $5388: $88
	adc  b                                           ; $5389: $88
	sbc  b                                           ; $538a: $98
	adc  b                                           ; $538b: $88
	adc  c                                           ; $538c: $89
	sbc  b                                           ; $538d: $98
	adc  b                                           ; $538e: $88
	ld   a, b                                        ; $538f: $78
	sbc  b                                           ; $5390: $98
	sbc  b                                           ; $5391: $98
	sbc  b                                           ; $5392: $98
	adc  b                                           ; $5393: $88
	sbc  b                                           ; $5394: $98
	adc  b                                           ; $5395: $88

Call_0d6_5396:
	adc  b                                           ; $5396: $88
	sbc  b                                           ; $5397: $98

Jump_0d6_5398:
	ld   a, d                                        ; $5398: $7a
	ld   a, b                                        ; $5399: $78
	adc  b                                           ; $539a: $88
	sub  a                                           ; $539b: $97
	sub  a                                           ; $539c: $97
	add  a                                           ; $539d: $87
	add  a                                           ; $539e: $87
	adc  b                                           ; $539f: $88
	adc  b                                           ; $53a0: $88
	ld   a, b                                        ; $53a1: $78
	ld   a, c                                        ; $53a2: $79
	ld   a, c                                        ; $53a3: $79
	adc  b                                           ; $53a4: $88
	ld   a, b                                        ; $53a5: $78
	sbc  b                                           ; $53a6: $98

Jump_0d6_53a7:
	sub  a                                           ; $53a7: $97
	sub  a                                           ; $53a8: $97
	add  a                                           ; $53a9: $87
	sbc  c                                           ; $53aa: $99
	ld   a, d                                        ; $53ab: $7a
	ld   a, c                                        ; $53ac: $79
	ld   a, c                                        ; $53ad: $79
	adc  c                                           ; $53ae: $89
	ld   a, b                                        ; $53af: $78
	and  [hl]                                        ; $53b0: $a6
	and  a                                           ; $53b1: $a7
	ld   a, c                                        ; $53b2: $79
	ld   a, b                                        ; $53b3: $78
	add  a                                           ; $53b4: $87
	adc  b                                           ; $53b5: $88
	adc  b                                           ; $53b6: $88
	sub  a                                           ; $53b7: $97
	sbc  b                                           ; $53b8: $98
	ld   l, d                                        ; $53b9: $6a
	ld   a, b                                        ; $53ba: $78
	adc  b                                           ; $53bb: $88
	adc  c                                           ; $53bc: $89
	add  a                                           ; $53bd: $87
	add  a                                           ; $53be: $87
	sub  a                                           ; $53bf: $97
	sbc  b                                           ; $53c0: $98
	adc  c                                           ; $53c1: $89
	ld   a, c                                        ; $53c2: $79
	ld   a, c                                        ; $53c3: $79
	ld   a, b                                        ; $53c4: $78
	sub  a                                           ; $53c5: $97
	sub  a                                           ; $53c6: $97
	adc  b                                           ; $53c7: $88
	add  a                                           ; $53c8: $87
	adc  c                                           ; $53c9: $89
	ld   a, c                                        ; $53ca: $79
	ld   a, c                                        ; $53cb: $79
	adc  b                                           ; $53cc: $88
	add  a                                           ; $53cd: $87
	sbc  b                                           ; $53ce: $98
	adc  b                                           ; $53cf: $88
	adc  b                                           ; $53d0: $88
	ld   a, c                                        ; $53d1: $79
	ld   a, c                                        ; $53d2: $79
	adc  b                                           ; $53d3: $88
	adc  b                                           ; $53d4: $88
	adc  b                                           ; $53d5: $88
	add  a                                           ; $53d6: $87
	sub  a                                           ; $53d7: $97
	sbc  b                                           ; $53d8: $98
	adc  b                                           ; $53d9: $88
	ld   a, c                                        ; $53da: $79
	ld   a, b                                        ; $53db: $78
	ld   a, b                                        ; $53dc: $78
	ld   a, b                                        ; $53dd: $78
	sbc  b                                           ; $53de: $98
	adc  b                                           ; $53df: $88
	adc  b                                           ; $53e0: $88
	add  a                                           ; $53e1: $87
	and  a                                           ; $53e2: $a7
	adc  b                                           ; $53e3: $88
	adc  b                                           ; $53e4: $88
	adc  b                                           ; $53e5: $88
	adc  c                                           ; $53e6: $89
	ld   l, c                                        ; $53e7: $69
	add  a                                           ; $53e8: $87
	sbc  b                                           ; $53e9: $98
	adc  b                                           ; $53ea: $88
	sub  a                                           ; $53eb: $97
	sub  a                                           ; $53ec: $97
	adc  c                                           ; $53ed: $89
	ld   a, b                                        ; $53ee: $78
	add  a                                           ; $53ef: $87
	adc  b                                           ; $53f0: $88
	ld   a, c                                        ; $53f1: $79
	ld   a, b                                        ; $53f2: $78
	add  a                                           ; $53f3: $87
	sbc  b                                           ; $53f4: $98
	adc  b                                           ; $53f5: $88
	adc  b                                           ; $53f6: $88
	adc  b                                           ; $53f7: $88
	adc  c                                           ; $53f8: $89
	ld   a, b                                        ; $53f9: $78
	add  a                                           ; $53fa: $87
	adc  b                                           ; $53fb: $88
	adc  b                                           ; $53fc: $88
	ld   a, b                                        ; $53fd: $78
	sbc  b                                           ; $53fe: $98
	adc  b                                           ; $53ff: $88
	ld   a, b                                        ; $5400: $78
	sub  a                                           ; $5401: $97
	adc  b                                           ; $5402: $88
	add  a                                           ; $5403: $87
	add  a                                           ; $5404: $87
	sbc  b                                           ; $5405: $98
	adc  c                                           ; $5406: $89
	ld   a, c                                        ; $5407: $79
	ld   a, b                                        ; $5408: $78
	ld   a, b                                        ; $5409: $78
	adc  b                                           ; $540a: $88
	add  a                                           ; $540b: $87
	and  a                                           ; $540c: $a7
	and  a                                           ; $540d: $a7
	adc  c                                           ; $540e: $89
	ld   a, b                                        ; $540f: $78
	sbc  b                                           ; $5410: $98
	ld   a, d                                        ; $5411: $7a
	ld   a, b                                        ; $5412: $78
	sub  a                                           ; $5413: $97
	adc  b                                           ; $5414: $88
	adc  b                                           ; $5415: $88
	sub  a                                           ; $5416: $97
	adc  b                                           ; $5417: $88
	adc  b                                           ; $5418: $88
	ld   a, c                                        ; $5419: $79
	ld   a, c                                        ; $541a: $79
	adc  b                                           ; $541b: $88
	add  a                                           ; $541c: $87
	sub  a                                           ; $541d: $97
	sub  a                                           ; $541e: $97
	ld   a, c                                        ; $541f: $79
	ld   a, b                                        ; $5420: $78
	sbc  b                                           ; $5421: $98
	adc  c                                           ; $5422: $89
	ld   a, b                                        ; $5423: $78
	add  a                                           ; $5424: $87
	sbc  b                                           ; $5425: $98
	adc  b                                           ; $5426: $88
	add  a                                           ; $5427: $87
	sub  a                                           ; $5428: $97
	adc  b                                           ; $5429: $88
	ld   a, b                                        ; $542a: $78
	ld   a, b                                        ; $542b: $78
	adc  b                                           ; $542c: $88
	add  a                                           ; $542d: $87
	sub  a                                           ; $542e: $97
	add  a                                           ; $542f: $87
	adc  b                                           ; $5430: $88
	ld   l, c                                        ; $5431: $69
	add  a                                           ; $5432: $87
	adc  c                                           ; $5433: $89
	ld   a, b                                        ; $5434: $78
	ld   a, b                                        ; $5435: $78
	sub  a                                           ; $5436: $97
	sub  a                                           ; $5437: $97
	sub  a                                           ; $5438: $97
	sbc  b                                           ; $5439: $98
	adc  b                                           ; $543a: $88
	adc  c                                           ; $543b: $89
	ld   a, b                                        ; $543c: $78
	adc  b                                           ; $543d: $88
	sub  a                                           ; $543e: $97
	adc  c                                           ; $543f: $89
	ld   a, b                                        ; $5440: $78
	add  a                                           ; $5441: $87
	adc  b                                           ; $5442: $88
	adc  b                                           ; $5443: $88
	sub  a                                           ; $5444: $97
	sbc  b                                           ; $5445: $98
	ld   a, c                                        ; $5446: $79
	ld   a, b                                        ; $5447: $78
	add  a                                           ; $5448: $87
	adc  b                                           ; $5449: $88
	ld   a, c                                        ; $544a: $79
	adc  b                                           ; $544b: $88
	adc  c                                           ; $544c: $89
	ld   a, b                                        ; $544d: $78
	add  a                                           ; $544e: $87
	sub  a                                           ; $544f: $97
	adc  b                                           ; $5450: $88
	sub  a                                           ; $5451: $97
	sbc  b                                           ; $5452: $98
	ld   a, b                                        ; $5453: $78
	ld   a, c                                        ; $5454: $79
	ld   a, c                                        ; $5455: $79
	adc  b                                           ; $5456: $88
	sub  a                                           ; $5457: $97
	sbc  b                                           ; $5458: $98
	ld   a, c                                        ; $5459: $79
	ld   a, b                                        ; $545a: $78
	adc  b                                           ; $545b: $88
	adc  c                                           ; $545c: $89
	add  a                                           ; $545d: $87
	sub  a                                           ; $545e: $97
	adc  b                                           ; $545f: $88
	adc  b                                           ; $5460: $88
	ld   a, c                                        ; $5461: $79
	ld   a, c                                        ; $5462: $79
	ld   a, b                                        ; $5463: $78
	adc  b                                           ; $5464: $88
	sub  a                                           ; $5465: $97
	sbc  b                                           ; $5466: $98
	adc  c                                           ; $5467: $89
	ld   a, b                                        ; $5468: $78
	ld   a, b                                        ; $5469: $78
	adc  b                                           ; $546a: $88
	add  a                                           ; $546b: $87
	sub  a                                           ; $546c: $97
	sub  a                                           ; $546d: $97
	adc  c                                           ; $546e: $89
	ld   a, b                                        ; $546f: $78
	adc  c                                           ; $5470: $89
	ld   a, c                                        ; $5471: $79
	adc  b                                           ; $5472: $88
	add  a                                           ; $5473: $87
	sub  a                                           ; $5474: $97
	adc  b                                           ; $5475: $88

Jump_0d6_5476:
	adc  b                                           ; $5476: $88
	adc  b                                           ; $5477: $88
	ld   a, c                                        ; $5478: $79
	adc  b                                           ; $5479: $88
	sub  a                                           ; $547a: $97
	adc  b                                           ; $547b: $88
	ld   a, c                                        ; $547c: $79
	adc  b                                           ; $547d: $88
	sub  a                                           ; $547e: $97
	sub  a                                           ; $547f: $97
	sbc  b                                           ; $5480: $98
	adc  b                                           ; $5481: $88
	ld   a, c                                        ; $5482: $79
	adc  c                                           ; $5483: $89
	ld   a, c                                        ; $5484: $79
	adc  b                                           ; $5485: $88
	sub  a                                           ; $5486: $97
	adc  b                                           ; $5487: $88
	adc  b                                           ; $5488: $88
	adc  b                                           ; $5489: $88
	adc  b                                           ; $548a: $88
	add  a                                           ; $548b: $87
	adc  b                                           ; $548c: $88
	adc  c                                           ; $548d: $89
	ld   a, c                                        ; $548e: $79
	adc  b                                           ; $548f: $88
	adc  b                                           ; $5490: $88
	adc  b                                           ; $5491: $88
	adc  b                                           ; $5492: $88
	add  a                                           ; $5493: $87
	adc  b                                           ; $5494: $88
	adc  b                                           ; $5495: $88
	adc  b                                           ; $5496: $88

Jump_0d6_5497:
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

Call_0d6_54a9:
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

Call_0d6_55b8:
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

Jump_0d6_5699:
	adc  b                                           ; $5699: $88
	adc  b                                           ; $569a: $88
	sbc  c                                           ; $569b: $99
	adc  b                                           ; $569c: $88
	adc  b                                           ; $569d: $88
	adc  b                                           ; $569e: $88
	adc  b                                           ; $569f: $88
	adc  b                                           ; $56a0: $88
	adc  b                                           ; $56a1: $88
	adc  b                                           ; $56a2: $88
	adc  b                                           ; $56a3: $88
	adc  c                                           ; $56a4: $89
	sbc  b                                           ; $56a5: $98
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
	adc  c                                           ; $56b5: $89
	sbc  c                                           ; $56b6: $99
	adc  b                                           ; $56b7: $88
	adc  b                                           ; $56b8: $88
	ld   a, b                                        ; $56b9: $78
	ld   [hl], a                                     ; $56ba: $77
	ld   [hl], a                                     ; $56bb: $77
	ld   [hl], a                                     ; $56bc: $77
	ld   a, b                                        ; $56bd: $78
	adc  b                                           ; $56be: $88
	adc  b                                           ; $56bf: $88
	adc  b                                           ; $56c0: $88
	adc  b                                           ; $56c1: $88
	adc  b                                           ; $56c2: $88
	adc  b                                           ; $56c3: $88
	ld   [hl], a                                     ; $56c4: $77
	ld   [hl], a                                     ; $56c5: $77
	ld   [hl], a                                     ; $56c6: $77
	adc  b                                           ; $56c7: $88
	adc  b                                           ; $56c8: $88
	adc  b                                           ; $56c9: $88
	adc  b                                           ; $56ca: $88
	adc  b                                           ; $56cb: $88
	adc  b                                           ; $56cc: $88
	adc  b                                           ; $56cd: $88
	adc  b                                           ; $56ce: $88
	ld   a, b                                        ; $56cf: $78
	ld   a, b                                        ; $56d0: $78
	adc  b                                           ; $56d1: $88
	adc  b                                           ; $56d2: $88
	adc  b                                           ; $56d3: $88
	add  a                                           ; $56d4: $87
	adc  b                                           ; $56d5: $88
	add  a                                           ; $56d6: $87
	ld   a, b                                        ; $56d7: $78
	ld   a, b                                        ; $56d8: $78
	ld   a, b                                        ; $56d9: $78
	adc  b                                           ; $56da: $88
	adc  b                                           ; $56db: $88
	adc  b                                           ; $56dc: $88
	adc  b                                           ; $56dd: $88
	adc  c                                           ; $56de: $89
	adc  b                                           ; $56df: $88
	adc  b                                           ; $56e0: $88
	adc  b                                           ; $56e1: $88
	adc  b                                           ; $56e2: $88
	adc  b                                           ; $56e3: $88
	adc  b                                           ; $56e4: $88
	adc  b                                           ; $56e5: $88
	adc  c                                           ; $56e6: $89
	adc  b                                           ; $56e7: $88
	adc  b                                           ; $56e8: $88
	add  a                                           ; $56e9: $87
	ld   a, b                                        ; $56ea: $78
	add  a                                           ; $56eb: $87
	ld   [hl], a                                     ; $56ec: $77
	adc  b                                           ; $56ed: $88
	ld   [hl], a                                     ; $56ee: $77
	adc  c                                           ; $56ef: $89
	adc  b                                           ; $56f0: $88
	sbc  c                                           ; $56f1: $99
	adc  b                                           ; $56f2: $88
	adc  c                                           ; $56f3: $89
	sbc  c                                           ; $56f4: $99
	sbc  c                                           ; $56f5: $99
	sbc  c                                           ; $56f6: $99
	adc  b                                           ; $56f7: $88
	sbc  b                                           ; $56f8: $98
	adc  c                                           ; $56f9: $89
	sbc  c                                           ; $56fa: $99
	adc  b                                           ; $56fb: $88
	adc  b                                           ; $56fc: $88
	ld   a, b                                        ; $56fd: $78
	add  a                                           ; $56fe: $87
	ld   [hl], a                                     ; $56ff: $77
	ld   [hl], a                                     ; $5700: $77
	ld   [hl], a                                     ; $5701: $77
	ld   [hl], a                                     ; $5702: $77
	ld   [hl], a                                     ; $5703: $77
	ld   [hl], a                                     ; $5704: $77
	sub  a                                           ; $5705: $97
	ld   a, b                                        ; $5706: $78
	sbc  c                                           ; $5707: $99
	adc  d                                           ; $5708: $8a
	cp   d                                           ; $5709: $ba
	xor  c                                           ; $570a: $a9
	cp   h                                           ; $570b: $bc
	sbc  c                                           ; $570c: $99
	xor  d                                           ; $570d: $aa
	xor  c                                           ; $570e: $a9
	sbc  b                                           ; $570f: $98
	sbc  b                                           ; $5710: $98
	ld   a, b                                        ; $5711: $78
	ld   [hl], a                                     ; $5712: $77
	ld   [hl], a                                     ; $5713: $77
	ld   h, l                                        ; $5714: $65
	ld   d, l                                        ; $5715: $55
	ld   b, e                                        ; $5716: $43
	inc  [hl]                                        ; $5717: $34
	ld   sp, $6725                                   ; $5718: $31 $25 $67
	adc  d                                           ; $571b: $8a
	sbc  $dd                                         ; $571c: $de $dd
	rst  $38                                         ; $571e: $ff
	db   $fd                                         ; $571f: $fd
	rst  JumpTable                                         ; $5720: $df
	db   $db                                         ; $5721: $db
	xor  e                                           ; $5722: $ab
	sbc  c                                           ; $5723: $99
	sbc  c                                           ; $5724: $99
	sbc  b                                           ; $5725: $98
	ld   [hl], a                                     ; $5726: $77
	ld   [hl], l                                     ; $5727: $75
	ld   [hl-], a                                    ; $5728: $32
	ld   de, $1111                                   ; $5729: $11 $11 $11
	ld   sp, $df1a                                   ; $572c: $31 $1a $df
	rst  $38                                         ; $572f: $ff
	rst  $38                                         ; $5730: $ff
	rst  $38                                         ; $5731: $ff
	rst  $38                                         ; $5732: $ff
	db   $fd                                         ; $5733: $fd
	cp   e                                           ; $5734: $bb
	cp   b                                           ; $5735: $b8
	ld   a, c                                        ; $5736: $79
	xor  e                                           ; $5737: $ab
	xor  e                                           ; $5738: $ab
	call z, $41a7                                    ; $5739: $cc $a7 $41
	ld   de, $1111                                   ; $573c: $11 $11 $11
	ld   de, $cf14                                   ; $573f: $11 $14 $cf
	rst  $38                                         ; $5742: $ff
	rst  $38                                         ; $5743: $ff
	cp   $ff                                         ; $5744: $fe $ff
	call c, $b9bb                                    ; $5746: $dc $bb $b9
	sbc  h                                           ; $5749: $9c
	cp   h                                           ; $574a: $bc
	call z, $b7dd                                    ; $574b: $cc $dd $b7
	ld   h, c                                        ; $574e: $61
	ld   de, $1111                                   ; $574f: $11 $11 $11
	ld   [de], a                                     ; $5752: $12
	ld   [de], a                                     ; $5753: $12
	xor  a                                           ; $5754: $af
	rst  $38                                         ; $5755: $ff
	rst  $38                                         ; $5756: $ff
	rst  $38                                         ; $5757: $ff
	cp   h                                           ; $5758: $bc
	xor  $ab                                         ; $5759: $ee $ab
	call $cdaa                                       ; $575b: $cd $aa $cd
	db   $ec                                         ; $575e: $ec
	db   $db                                         ; $575f: $db
	and  a                                           ; $5760: $a7
	ld   d, c                                        ; $5761: $51
	ld   de, $1111                                   ; $5762: $11 $11 $11
	inc  de                                          ; $5765: $13
	ld   b, c                                        ; $5766: $41
	cp   a                                           ; $5767: $bf
	rst  $38                                         ; $5768: $ff
	rst  $38                                         ; $5769: $ff
	db   $fd                                         ; $576a: $fd
	sbc  h                                           ; $576b: $9c
	db   $dd                                         ; $576c: $dd
	cp   d                                           ; $576d: $ba
	call z, $ddcb                                    ; $576e: $cc $cb $dd
	xor  $cd                                         ; $5771: $ee $cd
	and  [hl]                                        ; $5773: $a6

Call_0d6_5774:
	ld   hl, $1111                                   ; $5774: $21 $11 $11
	ld   de, $3317                                   ; $5777: $11 $17 $33
	rst  $38                                         ; $577a: $ff
	rst  $38                                         ; $577b: $ff
	rst  $38                                         ; $577c: $ff
	db   $fc                                         ; $577d: $fc
	ld   e, h                                        ; $577e: $5c
	db   $db                                         ; $577f: $db
	cp   h                                           ; $5780: $bc
	rst  JumpTable                                         ; $5781: $df
	call c, $dbde                                    ; $5782: $dc $de $db
	cp   b                                           ; $5785: $b8
	ld   [hl], d                                     ; $5786: $72
	ld   de, $1111                                   ; $5787: $11 $11 $11
	ld   de, $3f94                                   ; $578a: $11 $94 $3f
	rst  $38                                         ; $578d: $ff
	cp   $df                                         ; $578e: $fe $df
	rst  ToBoot                                         ; $5790: $c7
	sbc  d                                           ; $5791: $9a
	db   $dd                                         ; $5792: $dd
	cp   l                                           ; $5793: $bd
	cp   $dd                                         ; $5794: $fe $dd
	db   $ed                                         ; $5796: $ed
	ret  z                                           ; $5797: $c8

	ld   [hl], l                                     ; $5798: $75
	ld   de, $1111                                   ; $5799: $11 $11 $11
	ld   de, $6d39                                   ; $579c: $11 $39 $6d
	rst  $38                                         ; $579f: $ff
	cp   $dd                                         ; $57a0: $fe $dd
	rst  $10                                         ; $57a2: $d7
	sbc  e                                           ; $57a3: $9b
	call c, $efcc                                    ; $57a4: $dc $cc $ef
	adc  $de                                         ; $57a7: $ce $de
	xor  b                                           ; $57a9: $a8
	ld   h, e                                        ; $57aa: $63
	ld   hl, $1111                                   ; $57ab: $21 $11 $11
	ld   de, $794e                                   ; $57ae: $11 $4e $79
	rst  $38                                         ; $57b1: $ff
	db   $eb                                         ; $57b2: $eb
	db   $fd                                         ; $57b3: $fd
	rst  ToBoot                                         ; $57b4: $c7
	ld   a, h                                        ; $57b5: $7c
	db   $ec                                         ; $57b6: $ec
	adc  [hl]                                        ; $57b7: $8e
	db   $ed                                         ; $57b8: $ed
	call z, $a5ed                                    ; $57b9: $cc $ed $a5
	ld   d, d                                        ; $57bc: $52
	ld   de, $1111                                   ; $57bd: $11 $11 $11
	ld   [de], a                                     ; $57c0: $12
	ret                                              ; $57c1: $c9


	adc  a                                           ; $57c2: $8f
	rst  $38                                         ; $57c3: $ff
	db   $fd                                         ; $57c4: $fd
	cp   h                                           ; $57c5: $bc
	and  [hl]                                        ; $57c6: $a6
	cp   h                                           ; $57c7: $bc
	ei                                               ; $57c8: $fb
	cp   a                                           ; $57c9: $bf
	xor  $bd                                         ; $57ca: $ee $bd
	ret                                              ; $57cc: $c9


	ld   h, e                                        ; $57cd: $63
	ld   de, $1111                                   ; $57ce: $11 $11 $11
	ld   de, $bd7d                                   ; $57d1: $11 $7d $bd
	rst  $38                                         ; $57d4: $ff
	rst  $38                                         ; $57d5: $ff
	call z, $ceb3                                    ; $57d6: $cc $b3 $ce
	adc  $cf                                         ; $57d9: $ce $cf
	db   $eb                                         ; $57db: $eb
	db   $dd                                         ; $57dc: $dd
	jp   hl                                          ; $57dd: $e9


	ld   d, d                                        ; $57de: $52
	ld   de, $1111                                   ; $57df: $11 $11 $11
	ld   de, $9e8d                                   ; $57e2: $11 $8d $9e
	rst  $38                                         ; $57e5: $ff
	rst  $38                                         ; $57e6: $ff
	cp   b                                           ; $57e7: $b8
	ret                                              ; $57e8: $c9


	cp   l                                           ; $57e9: $bd
	db   $ec                                         ; $57ea: $ec
	rst  JumpTable                                         ; $57eb: $df
	call z, $a8eb                                    ; $57ec: $cc $eb $a8
	ld   b, d                                        ; $57ef: $42
	ld   de, $1111                                   ; $57f0: $11 $11 $11
	inc  d                                           ; $57f3: $14
	rst  ToBoot                                         ; $57f4: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57f5: $cf
	rst  $38                                         ; $57f6: $ff
	call z, $4cf7                                    ; $57f7: $cc $f7 $4c
	xor  [hl]                                        ; $57fa: $ae
	db   $ec                                         ; $57fb: $ec
	rst  $38                                         ; $57fc: $ff
	db   $eb                                         ; $57fd: $eb
	bit  4, h                                        ; $57fe: $cb $64
	ld   de, $1111                                   ; $5800: $11 $11 $11
	ld   de, $9d5d                                   ; $5803: $11 $5d $9d
	rst  $38                                         ; $5806: $ff
	db   $eb                                         ; $5807: $eb
	db   $dd                                         ; $5808: $dd
	ld   [hl], d                                     ; $5809: $72
	rst  $28                                         ; $580a: $ef
	cp   a                                           ; $580b: $bf
	cp   a                                           ; $580c: $bf
	ei                                               ; $580d: $fb
	set  0, h                                        ; $580e: $cb $c4
	ld   de, $1111                                   ; $5810: $11 $11 $11
	ld   de, $bf6b                                   ; $5813: $11 $6b $bf
	rst  $38                                         ; $5816: $ff
	sbc  $c8                                         ; $5817: $de $c8
	adc  b                                           ; $5819: $88
	cp   e                                           ; $581a: $bb
	cp   $bf                                         ; $581b: $fe $bf
	xor  e                                           ; $581d: $ab
	ld   sp, hl                                      ; $581e: $f9
	add  e                                           ; $581f: $83
	ld   de, $1111                                   ; $5820: $11 $11 $11
	ld   de, $cfba                                   ; $5823: $11 $ba $cf
	rst  $38                                         ; $5826: $ff
	call $98ab                                       ; $5827: $cd $ab $98
	db   $fd                                         ; $582a: $fd
	xor  h                                           ; $582b: $ac
	cp   l                                           ; $582c: $bd
	cp   e                                           ; $582d: $bb
	xor  d                                           ; $582e: $aa
	ld   h, c                                        ; $582f: $61
	ld   de, $1111                                   ; $5830: $11 $11 $11
	ld   e, l                                        ; $5833: $5d
	cp   d                                           ; $5834: $ba
	rst  $38                                         ; $5835: $ff
	db   $fd                                         ; $5836: $fd
	ld   l, e                                        ; $5837: $6b
	push hl                                          ; $5838: $e5
	rst  JumpTable                                         ; $5839: $df
	rst  JumpTable                                         ; $583a: $df
	xor  c                                           ; $583b: $a9
	xor  h                                           ; $583c: $ac
	sub  l                                           ; $583d: $95
	sub  c                                           ; $583e: $91
	ld   [hl-], a                                    ; $583f: $32
	ld   de, $6911                                   ; $5840: $11 $11 $69
	sbc  l                                           ; $5843: $9d
	sbc  $fc                                         ; $5844: $de $fc
	adc  [hl]                                        ; $5846: $8e
	xor  c                                           ; $5847: $a9
	jp   z, $8bff                                    ; $5848: $ca $ff $8b

	xor  l                                           ; $584b: $ad
	ld   d, h                                        ; $584c: $54
	ld   d, c                                        ; $584d: $51
	ld   d, c                                        ; $584e: $51
	ld   de, $4912                                   ; $584f: $11 $12 $49
	sbc  l                                           ; $5852: $9d
	rst  $38                                         ; $5853: $ff
	set  7, d                                        ; $5854: $cb $fa
	adc  l                                           ; $5856: $8d
	sbc  a                                           ; $5857: $9f
	ld   hl, sp-$33                                  ; $5858: $f8 $cd
	add  d                                           ; $585a: $82
	ld   h, $45                                      ; $585b: $26 $45
	ld   de, $2711                                   ; $585d: $11 $11 $27
	ld   [hl], l                                     ; $5860: $75
	ld   a, l                                        ; $5861: $7d
	db   $fc                                         ; $5862: $fc
	adc  $dd                                         ; $5863: $ce $dd
	cp   d                                           ; $5865: $ba
	rst  $38                                         ; $5866: $ff
	ld   a, l                                        ; $5867: $7d
	push bc                                          ; $5868: $c5
	ld   h, c                                        ; $5869: $61
	inc  d                                           ; $586a: $14
	ld   sp, $4511                                   ; $586b: $31 $11 $45
	cp   b                                           ; $586e: $b8
	ld   e, d                                        ; $586f: $5a
	cp   a                                           ; $5870: $bf
	adc  e                                           ; $5871: $8b
	sbc  $f9                                         ; $5872: $de $f9
	rst  JumpTable                                         ; $5874: $df
	cp   h                                           ; $5875: $bc
	ld   b, l                                        ; $5876: $45
	or   c                                           ; $5877: $b1
	inc  d                                           ; $5878: $14
	ld   [de], a                                     ; $5879: $12
	ld   de, $b51b                                   ; $587a: $11 $1b $b5
	or   l                                           ; $587d: $b5
	rst  $28                                         ; $587e: $ef
	ld   a, c                                        ; $587f: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5880: $cf
	xor  $db                                         ; $5881: $ee $db
	ld   sp, hl                                      ; $5883: $f9
	ld   d, l                                        ; $5884: $55
	rla                                              ; $5885: $17
	ld   hl, $1111                                   ; $5886: $21 $11 $11
	ld   e, c                                        ; $5889: $59
	sbc  e                                           ; $588a: $9b
	db   $eb                                         ; $588b: $eb
	ld   e, [hl]                                     ; $588c: $5e
	cp   $9d                                         ; $588d: $fe $9d
	ei                                               ; $588f: $fb
	db   $fc                                         ; $5890: $fc
	cp   h                                           ; $5891: $bc
	ld   de, $4113                                   ; $5892: $11 $13 $41
	ld   de, $8a14                                   ; $5895: $11 $14 $8a
	halt                                             ; $5898: $76
	adc  $f7                                         ; $5899: $ce $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $589b: $cf
	xor  $af                                         ; $589c: $ee $af
	or   $47                                         ; $589e: $f6 $47
	ld   [hl-], a                                    ; $58a0: $32
	ld   de, $2111                                   ; $58a1: $11 $11 $21
	xor  d                                           ; $58a4: $aa
	ld   l, l                                        ; $58a5: $6d
	adc  d                                           ; $58a6: $8a
	adc  d                                           ; $58a7: $8a
	ei                                               ; $58a8: $fb
	xor  a                                           ; $58a9: $af
	rst  $38                                         ; $58aa: $ff
	adc  h                                           ; $58ab: $8c
	and  c                                           ; $58ac: $a1
	ld   de, $1165                                   ; $58ad: $11 $65 $11
	ld   hl, $7b4c                                   ; $58b0: $21 $4c $7b
	cp   e                                           ; $58b3: $bb
	cp   e                                           ; $58b4: $bb
	db   $fc                                         ; $58b5: $fc
	call $9c9f                                       ; $58b6: $cd $9f $9c
	and  c                                           ; $58b9: $a1
	ld   de, $1345                                   ; $58ba: $11 $45 $13
	ld   b, l                                        ; $58bd: $45
	add  l                                           ; $58be: $85
	ld   c, [hl]                                     ; $58bf: $4e
	cp   d                                           ; $58c0: $ba
	sbc  h                                           ; $58c1: $9c
	rst  $38                                         ; $58c2: $ff
	di                                               ; $58c3: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58c4: $cf
	adc  l                                           ; $58c5: $8d
	inc  de                                          ; $58c6: $13
	ld   b, e                                        ; $58c7: $43
	ld   hl, $9812                                   ; $58c8: $21 $12 $98
	dec  h                                           ; $58cb: $25
	db   $fc                                         ; $58cc: $fc
	and  [hl]                                        ; $58cd: $a6
	cp   a                                           ; $58ce: $bf
	cp   a                                           ; $58cf: $bf
	ld   sp, hl                                      ; $58d0: $f9
	ei                                               ; $58d1: $fb
	ld   de, $a118                                   ; $58d2: $11 $18 $a1
	inc  d                                           ; $58d5: $14
	halt                                             ; $58d6: $76
	ld   h, [hl]                                     ; $58d7: $66
	ld   a, d                                        ; $58d8: $7a
	xor  d                                           ; $58d9: $aa
	rst  $38                                         ; $58da: $ff
	xor  e                                           ; $58db: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58dc: $cf
	db   $ed                                         ; $58dd: $ed
	or   c                                           ; $58de: $b1
	ld   [hl+], a                                    ; $58df: $22
	inc  [hl]                                        ; $58e0: $34
	inc  d                                           ; $58e1: $14
	inc  [hl]                                        ; $58e2: $34
	ld   d, l                                        ; $58e3: $55
	adc  [hl]                                        ; $58e4: $8e
	ld   l, c                                        ; $58e5: $69
	call $affd                                       ; $58e6: $cd $fd $af
	ret  c                                           ; $58e9: $d8

	ld   sp, $5193                                   ; $58ea: $31 $93 $51
	add  hl, de                                      ; $58ed: $19
	rla                                              ; $58ee: $17
	add  c                                           ; $58ef: $81
	reti                                             ; $58f0: $d9


	cp   h                                           ; $58f1: $bc
	xor  a                                           ; $58f2: $af
	rst  $38                                         ; $58f3: $ff
	db   $f4                                         ; $58f4: $f4
	ld   sp, hl                                      ; $58f5: $f9
	ld   hl, $512f                                   ; $58f6: $21 $2f $51
	ld   [de], a                                     ; $58f9: $12
	halt                                             ; $58fa: $76
	ld   h, h                                        ; $58fb: $64
	ld   l, a                                        ; $58fc: $6f
	ldh  a, [c]                                      ; $58fd: $f2
	rst  $28                                         ; $58fe: $ef
	cp   h                                           ; $58ff: $bc
	cp   h                                           ; $5900: $bc
	di                                               ; $5901: $f3
	inc  de                                          ; $5902: $13
	ld   h, a                                        ; $5903: $67
	ld   de, $c638                                   ; $5904: $11 $38 $c6
	dec  h                                           ; $5907: $25
	sbc  a                                           ; $5908: $9f
	push af                                          ; $5909: $f5
	db   $fd                                         ; $590a: $fd
	xor  a                                           ; $590b: $af
	ccf                                              ; $590c: $3f
	sub  c                                           ; $590d: $91
	ld   d, c                                        ; $590e: $51
	ld   b, h                                        ; $590f: $44
	dec  de                                          ; $5910: $1b
	ld   [hl], a                                     ; $5911: $77
	ld   [hl], h                                     ; $5912: $74
	call nz, $facf                                   ; $5913: $c4 $cf $fa
	ld   l, a                                        ; $5916: $6f
	db   $fc                                         ; $5917: $fc
	ld   de, $1197                                   ; $5918: $11 $97 $11
	daa                                              ; $591b: $27
	add  c                                           ; $591c: $81
	ld   l, [hl]                                     ; $591d: $6e
	db   $d3                                         ; $591e: $d3
	rra                                              ; $591f: $1f
	ld   a, [$ffea]                                  ; $5920: $fa $ea $ff
	rla                                              ; $5923: $17
	or   e                                           ; $5924: $b3
	ld   hl, $8645                                   ; $5925: $21 $45 $86
	ld   c, e                                        ; $5928: $4b
	ld   d, h                                        ; $5929: $54
	adc  $ff                                         ; $592a: $ce $ff
	sbc  [hl]                                        ; $592c: $9e
	ret  z                                           ; $592d: $c8

	pop  bc                                          ; $592e: $c1
	add  e                                           ; $592f: $83
	ld   [hl-], a                                    ; $5930: $32
	ld   a, [de]                                     ; $5931: $1a
	ld   [hl], a                                     ; $5932: $77

jr_0d6_5933:
	ld   h, a                                        ; $5933: $67
	sub  h                                           ; $5934: $94
	sbc  a                                           ; $5935: $9f
	db   $fc                                         ; $5936: $fc
	reti                                             ; $5937: $d9


	call $1346                                       ; $5938: $cd $46 $13
	ld   [hl], c                                     ; $593b: $71
	ld   b, a                                        ; $593c: $47
	ld   [hl], a                                     ; $593d: $77
	rla                                              ; $593e: $17
	ei                                               ; $593f: $fb
	cp   l                                           ; $5940: $bd
	cp   c                                           ; $5941: $b9
	ld   sp, hl                                      ; $5942: $f9
	ld   a, d                                        ; $5943: $7a
	jr   c, jr_0d6_59b8                              ; $5944: $38 $72

	ld   b, e                                        ; $5946: $43
	ld   l, e                                        ; $5947: $6b
	ld   d, [hl]                                     ; $5948: $56
	ld   h, l                                        ; $5949: $65
	db   $fd                                         ; $594a: $fd
	ld   l, e                                        ; $594b: $6b
	call c, Call_0d6_68a9                            ; $594c: $dc $a9 $68
	ld   b, d                                        ; $594f: $42
	ld   h, l                                        ; $5950: $65
	jr   jr_0d6_59c7                                 ; $5951: $18 $74

Jump_0d6_5953:
	cp   d                                           ; $5953: $ba
	adc  h                                           ; $5954: $8c
	xor  e                                           ; $5955: $ab
	db   $f4                                         ; $5956: $f4
	cp   e                                           ; $5957: $bb

jr_0d6_5958:
	sbc  h                                           ; $5958: $9c
	add  hl, de                                      ; $5959: $19
	add  h                                           ; $595a: $84
	ld   de, $759a                                   ; $595b: $11 $9a $75
	sbc  e                                           ; $595e: $9b
	reti                                             ; $595f: $d9


	ld   a, l                                        ; $5960: $7d
	db   $fc                                         ; $5961: $fc
	add  hl, sp                                      ; $5962: $39
	ld   h, a                                        ; $5963: $67
	inc  sp                                          ; $5964: $33
	ld   [hl], $a5                                   ; $5965: $36 $a5
	sbc  d                                           ; $5967: $9a
	halt                                             ; $5968: $76
	ld   c, e                                        ; $5969: $4b
	ei                                               ; $596a: $fb
	ld   a, e                                        ; $596b: $7b
	db   $ec                                         ; $596c: $ec
	ld   d, c                                        ; $596d: $51
	ld   a, [hl-]                                    ; $596e: $3a
	ld   hl, $7979                                   ; $596f: $21 $79 $79
	add  [hl]                                        ; $5972: $86
	cp   e                                           ; $5973: $bb
	sbc  e                                           ; $5974: $9b
	call $44d8                                       ; $5975: $cd $d8 $44
	jr   c, jr_0d6_59eb                              ; $5978: $38 $71

	ld   l, b                                        ; $597a: $68
	adc  d                                           ; $597b: $8a
	ld   [hl], l                                     ; $597c: $75
	sbc  l                                           ; $597d: $9d
	sub  h                                           ; $597e: $94
	rst  $28                                         ; $597f: $ef
	ld   e, h                                        ; $5980: $5c
	ld   b, e                                        ; $5981: $43
	call nc, Call_0d6_7656                           ; $5982: $d4 $56 $76
	or   h                                           ; $5985: $b4
	inc  a                                           ; $5986: $3c
	cp   h                                           ; $5987: $bc
	ld   l, b                                        ; $5988: $68
	db   $ed                                         ; $5989: $ed
	and  e                                           ; $598a: $a3
	ld   a, c                                        ; $598b: $79
	ld   b, l                                        ; $598c: $45
	ld   b, a                                        ; $598d: $47
	or   h                                           ; $598e: $b4
	ld   e, c                                        ; $598f: $59
	ld   h, [hl]                                     ; $5990: $66
	ret                                              ; $5991: $c9


	call $b69a                                       ; $5992: $cd $9a $b6
	dec  d                                           ; $5995: $15
	ld   h, [hl]                                     ; $5996: $66
	ld   c, e                                        ; $5997: $4b
	ld   h, [hl]                                     ; $5998: $66
	and  h                                           ; $5999: $a4
	and  a                                           ; $599a: $a7
	db   $ec                                         ; $599b: $ec
	ld   l, d                                        ; $599c: $6a
	cp   e                                           ; $599d: $bb
	halt                                             ; $599e: $76
	ld   h, a                                        ; $599f: $67
	ld   b, [hl]                                     ; $59a0: $46
	jr   c, jr_0d6_5958                              ; $59a1: $38 $b5

	sub  l                                           ; $59a3: $95
	ret  z                                           ; $59a4: $c8

	ld   e, a                                        ; $59a5: $5f
	xor  b                                           ; $59a6: $a8
	adc  b                                           ; $59a7: $88
	or   l                                           ; $59a8: $b5
	jr   jr_0d6_5933                                 ; $59a9: $18 $88

	or   h                                           ; $59ab: $b4
	adc  b                                           ; $59ac: $88
	ld   l, b                                        ; $59ad: $68
	adc  d                                           ; $59ae: $8a
	cp   d                                           ; $59af: $ba
	jp   z, Jump_0d6_5398                            ; $59b0: $ca $98 $53

	inc  [hl]                                        ; $59b3: $34
	xor  d                                           ; $59b4: $aa
	ld   d, l                                        ; $59b5: $55
	xor  e                                           ; $59b6: $ab
	dec  sp                                          ; $59b7: $3b

jr_0d6_59b8:
	cp   d                                           ; $59b8: $ba
	or   h                                           ; $59b9: $b4
	sbc  c                                           ; $59ba: $99
	adc  d                                           ; $59bb: $8a
	ld   b, [hl]                                     ; $59bc: $46
	ld   d, a                                        ; $59bd: $57
	ld   d, h                                        ; $59be: $54
	ld   hl, sp+$59                                  ; $59bf: $f8 $59
	ld   a, e                                        ; $59c1: $7b
	add  [hl]                                        ; $59c2: $86
	db   $dd                                         ; $59c3: $dd
	ld   [hl], l                                     ; $59c4: $75
	ld   [hl], a                                     ; $59c5: $77
	ld   h, l                                        ; $59c6: $65

jr_0d6_59c7:
	ld   [hl], $c8                                   ; $59c7: $36 $c8
	ld   a, d                                        ; $59c9: $7a
	and  a                                           ; $59ca: $a7
	and  e                                           ; $59cb: $a3
	adc  a                                           ; $59cc: $8f
	xor  b                                           ; $59cd: $a8
	ld   b, a                                        ; $59ce: $47
	ld   [hl], a                                     ; $59cf: $77
	ld   h, h                                        ; $59d0: $64
	ld   a, d                                        ; $59d1: $7a
	add  [hl]                                        ; $59d2: $86
	cp   e                                           ; $59d3: $bb
	call nz, $9b59                                   ; $59d4: $c4 $59 $9b
	ld   [hl], l                                     ; $59d7: $75
	ld   a, c                                        ; $59d8: $79
	halt                                             ; $59d9: $76
	scf                                              ; $59da: $37
	sub  [hl]                                        ; $59db: $96
	xor  d                                           ; $59dc: $aa
	ld   c, l                                        ; $59dd: $4d
	call nc, $bb88                                   ; $59de: $d4 $88 $bb
	ld   b, e                                        ; $59e1: $43
	ld   a, b                                        ; $59e2: $78
	adc  b                                           ; $59e3: $88
	ld   l, c                                        ; $59e4: $69
	ld   h, [hl]                                     ; $59e5: $66
	xor  c                                           ; $59e6: $a9
	cp   b                                           ; $59e7: $b8
	adc  e                                           ; $59e8: $8b
	add  l                                           ; $59e9: $85
	add  [hl]                                        ; $59ea: $86

jr_0d6_59eb:
	sub  [hl]                                        ; $59eb: $96
	scf                                              ; $59ec: $37
	cp   d                                           ; $59ed: $ba
	ld   e, c                                        ; $59ee: $59
	adc  c                                           ; $59ef: $89
	push de                                          ; $59f0: $d5
	ld   e, e                                        ; $59f1: $5b
	add  [hl]                                        ; $59f2: $86
	add  h                                           ; $59f3: $84
	xor  h                                           ; $59f4: $ac
	add  hl, sp                                      ; $59f5: $39
	and  l                                           ; $59f6: $a5
	xor  c                                           ; $59f7: $a9
	ld   a, e                                        ; $59f8: $7b
	sub  l                                           ; $59f9: $95
	adc  e                                           ; $59fa: $8b
	and  l                                           ; $59fb: $a5
	ld   l, b                                        ; $59fc: $68
	sbc  c                                           ; $59fd: $99
	add  hl, sp                                      ; $59fe: $39
	adc  c                                           ; $59ff: $89
	add  $69                                         ; $5a00: $c6 $69
	cp   c                                           ; $5a02: $b9
	halt                                             ; $5a03: $76
	sbc  b                                           ; $5a04: $98
	ld   a, b                                        ; $5a05: $78
	adc  b                                           ; $5a06: $88
	ld   [hl], a                                     ; $5a07: $77
	adc  e                                           ; $5a08: $8b
	adc  b                                           ; $5a09: $88
	sbc  b                                           ; $5a0a: $98
	sbc  d                                           ; $5a0b: $9a
	ld   [hl], a                                     ; $5a0c: $77
	ld   [hl], a                                     ; $5a0d: $77
	sub  l                                           ; $5a0e: $95
	ld   a, d                                        ; $5a0f: $7a
	ld   l, e                                        ; $5a10: $6b
	add  [hl]                                        ; $5a11: $86
	or   a                                           ; $5a12: $b7
	add  a                                           ; $5a13: $87
	ld   l, h                                        ; $5a14: $6c
	sub  [hl]                                        ; $5a15: $96
	sub  a                                           ; $5a16: $97
	sbc  b                                           ; $5a17: $98
	ld   l, b                                        ; $5a18: $68
	add  [hl]                                        ; $5a19: $86
	ld   a, d                                        ; $5a1a: $7a
	sbc  b                                           ; $5a1b: $98
	ld   a, c                                        ; $5a1c: $79
	add  a                                           ; $5a1d: $87
	adc  c                                           ; $5a1e: $89
	xor  b                                           ; $5a1f: $a8
	ld   h, [hl]                                     ; $5a20: $66
	adc  d                                           ; $5a21: $8a
	and  a                                           ; $5a22: $a7
	sbc  b                                           ; $5a23: $98
	add  a                                           ; $5a24: $87
	ld   a, b                                        ; $5a25: $78
	sbc  b                                           ; $5a26: $98
	add  a                                           ; $5a27: $87
	sbc  c                                           ; $5a28: $99
	ld   a, c                                        ; $5a29: $79
	ld   [hl], a                                     ; $5a2a: $77
	add  [hl]                                        ; $5a2b: $86
	adc  c                                           ; $5a2c: $89
	sbc  c                                           ; $5a2d: $99
	ld   l, c                                        ; $5a2e: $69
	or   a                                           ; $5a2f: $b7
	ld   [hl], a                                     ; $5a30: $77
	adc  b                                           ; $5a31: $88
	adc  d                                           ; $5a32: $8a
	adc  c                                           ; $5a33: $89
	sub  a                                           ; $5a34: $97
	sub  a                                           ; $5a35: $97
	ld   l, b                                        ; $5a36: $68
	ld   [hl], a                                     ; $5a37: $77
	cp   d                                           ; $5a38: $ba
	ld   a, c                                        ; $5a39: $79
	ld   a, b                                        ; $5a3a: $78
	add  [hl]                                        ; $5a3b: $86
	adc  d                                           ; $5a3c: $8a
	adc  c                                           ; $5a3d: $89
	ld   l, b                                        ; $5a3e: $68
	add  [hl]                                        ; $5a3f: $86
	sbc  c                                           ; $5a40: $99
	adc  b                                           ; $5a41: $88
	adc  b                                           ; $5a42: $88
	sub  a                                           ; $5a43: $97
	ld   a, b                                        ; $5a44: $78
	sbc  c                                           ; $5a45: $99
	ld   l, b                                        ; $5a46: $68
	add  a                                           ; $5a47: $87
	ld   a, c                                        ; $5a48: $79
	sbc  b                                           ; $5a49: $98
	adc  b                                           ; $5a4a: $88
	and  a                                           ; $5a4b: $a7
	adc  b                                           ; $5a4c: $88
	adc  b                                           ; $5a4d: $88
	adc  b                                           ; $5a4e: $88
	add  a                                           ; $5a4f: $87
	ld   l, c                                        ; $5a50: $69
	sbc  b                                           ; $5a51: $98
	ld   a, b                                        ; $5a52: $78
	sbc  b                                           ; $5a53: $98
	ld   a, b                                        ; $5a54: $78
	add  a                                           ; $5a55: $87
	add  a                                           ; $5a56: $87
	add  a                                           ; $5a57: $87
	sbc  b                                           ; $5a58: $98
	sbc  b                                           ; $5a59: $98
	adc  d                                           ; $5a5a: $8a
	ld   a, b                                        ; $5a5b: $78
	ld   a, b                                        ; $5a5c: $78
	ld   [hl], a                                     ; $5a5d: $77
	adc  c                                           ; $5a5e: $89
	sbc  b                                           ; $5a5f: $98
	adc  c                                           ; $5a60: $89
	add  a                                           ; $5a61: $87
	sbc  b                                           ; $5a62: $98
	adc  c                                           ; $5a63: $89
	ld   [hl], a                                     ; $5a64: $77
	add  a                                           ; $5a65: $87
	adc  b                                           ; $5a66: $88
	adc  b                                           ; $5a67: $88
	adc  b                                           ; $5a68: $88
	ld   [hl], a                                     ; $5a69: $77
	sbc  c                                           ; $5a6a: $99
	add  a                                           ; $5a6b: $87
	adc  c                                           ; $5a6c: $89
	ld   [hl], a                                     ; $5a6d: $77
	sbc  b                                           ; $5a6e: $98
	adc  c                                           ; $5a6f: $89
	ld   [hl], a                                     ; $5a70: $77
	add  a                                           ; $5a71: $87
	sbc  c                                           ; $5a72: $99
	ld   a, b                                        ; $5a73: $78
	sbc  b                                           ; $5a74: $98
	add  a                                           ; $5a75: $87
	adc  d                                           ; $5a76: $8a
	add  a                                           ; $5a77: $87
	adc  b                                           ; $5a78: $88
	ld   a, b                                        ; $5a79: $78
	adc  b                                           ; $5a7a: $88
	adc  b                                           ; $5a7b: $88
	adc  b                                           ; $5a7c: $88
	add  a                                           ; $5a7d: $87
	adc  c                                           ; $5a7e: $89
	ld   [hl], a                                     ; $5a7f: $77
	sbc  c                                           ; $5a80: $99
	ld   [hl], a                                     ; $5a81: $77
	adc  c                                           ; $5a82: $89
	sub  a                                           ; $5a83: $97
	ld   a, c                                        ; $5a84: $79
	sbc  b                                           ; $5a85: $98
	ld   [hl], a                                     ; $5a86: $77
	sbc  b                                           ; $5a87: $98
	sub  a                                           ; $5a88: $97
	adc  c                                           ; $5a89: $89
	ld   a, b                                        ; $5a8a: $78
	ld   [hl], a                                     ; $5a8b: $77
	adc  b                                           ; $5a8c: $88
	adc  b                                           ; $5a8d: $88
	adc  b                                           ; $5a8e: $88
	sub  a                                           ; $5a8f: $97
	ld   a, b                                        ; $5a90: $78
	add  a                                           ; $5a91: $87
	add  a                                           ; $5a92: $87
	adc  b                                           ; $5a93: $88
	add  a                                           ; $5a94: $87
	adc  c                                           ; $5a95: $89
	adc  b                                           ; $5a96: $88
	ld   a, b                                        ; $5a97: $78
	add  a                                           ; $5a98: $87
	adc  b                                           ; $5a99: $88
	adc  b                                           ; $5a9a: $88
	adc  b                                           ; $5a9b: $88
	adc  b                                           ; $5a9c: $88
	sub  a                                           ; $5a9d: $97
	ld   a, b                                        ; $5a9e: $78
	adc  b                                           ; $5a9f: $88
	ld   a, b                                        ; $5aa0: $78
	adc  b                                           ; $5aa1: $88
	ld   a, b                                        ; $5aa2: $78
	adc  b                                           ; $5aa3: $88
	add  a                                           ; $5aa4: $87
	sbc  c                                           ; $5aa5: $99
	ld   a, b                                        ; $5aa6: $78
	adc  b                                           ; $5aa7: $88
	add  a                                           ; $5aa8: $87
	ld   a, b                                        ; $5aa9: $78
	sbc  b                                           ; $5aaa: $98
	ld   a, b                                        ; $5aab: $78
	adc  c                                           ; $5aac: $89
	add  a                                           ; $5aad: $87
	adc  b                                           ; $5aae: $88
	adc  b                                           ; $5aaf: $88
	ld   [hl], a                                     ; $5ab0: $77
	adc  c                                           ; $5ab1: $89
	ld   a, b                                        ; $5ab2: $78
	sbc  b                                           ; $5ab3: $98
	sub  a                                           ; $5ab4: $97
	ld   a, b                                        ; $5ab5: $78
	adc  b                                           ; $5ab6: $88
	add  a                                           ; $5ab7: $87
	adc  b                                           ; $5ab8: $88
	ld   [hl], a                                     ; $5ab9: $77
	adc  b                                           ; $5aba: $88
	adc  b                                           ; $5abb: $88
	adc  b                                           ; $5abc: $88
	adc  b                                           ; $5abd: $88
	adc  c                                           ; $5abe: $89
	adc  b                                           ; $5abf: $88
	add  a                                           ; $5ac0: $87
	sbc  c                                           ; $5ac1: $99
	ld   a, b                                        ; $5ac2: $78
	ld   a, c                                        ; $5ac3: $79
	sbc  b                                           ; $5ac4: $98
	adc  b                                           ; $5ac5: $88
	adc  b                                           ; $5ac6: $88
	ld   [hl], a                                     ; $5ac7: $77
	adc  c                                           ; $5ac8: $89
	adc  b                                           ; $5ac9: $88
	ld   a, b                                        ; $5aca: $78
	adc  b                                           ; $5acb: $88
	add  a                                           ; $5acc: $87
	adc  c                                           ; $5acd: $89
	sbc  b                                           ; $5ace: $98
	adc  c                                           ; $5acf: $89
	adc  b                                           ; $5ad0: $88
	ld   [hl], a                                     ; $5ad1: $77
	adc  c                                           ; $5ad2: $89
	adc  b                                           ; $5ad3: $88
	adc  b                                           ; $5ad4: $88
	sub  a                                           ; $5ad5: $97
	adc  b                                           ; $5ad6: $88
	adc  b                                           ; $5ad7: $88

Call_0d6_5ad8:
	adc  b                                           ; $5ad8: $88
	adc  b                                           ; $5ad9: $88
	adc  b                                           ; $5ada: $88
	ld   a, b                                        ; $5adb: $78
	sbc  b                                           ; $5adc: $98
	adc  b                                           ; $5add: $88
	sbc  b                                           ; $5ade: $98
	adc  b                                           ; $5adf: $88
	adc  c                                           ; $5ae0: $89
	sbc  b                                           ; $5ae1: $98
	adc  b                                           ; $5ae2: $88
	adc  b                                           ; $5ae3: $88
	adc  b                                           ; $5ae4: $88
	adc  c                                           ; $5ae5: $89
	adc  b                                           ; $5ae6: $88
	adc  b                                           ; $5ae7: $88
	sbc  b                                           ; $5ae8: $98
	adc  b                                           ; $5ae9: $88
	adc  b                                           ; $5aea: $88
	adc  b                                           ; $5aeb: $88
	adc  b                                           ; $5aec: $88
	adc  b                                           ; $5aed: $88
	adc  b                                           ; $5aee: $88
	adc  c                                           ; $5aef: $89
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
	add  c                                           ; $5b0a: $81
	ld   de, $1111                                   ; $5b0b: $11 $11 $11
	ld   de, $1111                                   ; $5b0e: $11 $11 $11
	ld   de, $1111                                   ; $5b11: $11 $11 $11
	ld   de, $1111                                   ; $5b14: $11 $11 $11
	ld   de, $1111                                   ; $5b17: $11 $11 $11
	ld   de, $1111                                   ; $5b1a: $11 $11 $11
	ld   de, $1111                                   ; $5b1d: $11 $11 $11
	ld   de, $1111                                   ; $5b20: $11 $11 $11
	ld   de, $1111                                   ; $5b23: $11 $11 $11
	ld   de, $1111                                   ; $5b26: $11 $11 $11
	ld   de, $1111                                   ; $5b29: $11 $11 $11
	ld   de, $1111                                   ; $5b2c: $11 $11 $11
	ld   de, $1111                                   ; $5b2f: $11 $11 $11
	ld   de, $1111                                   ; $5b32: $11 $11 $11
	ld   de, $1111                                   ; $5b35: $11 $11 $11
	ld   de, $1111                                   ; $5b38: $11 $11 $11
	ld   de, $1111                                   ; $5b3b: $11 $11 $11
	ld   de, $1111                                   ; $5b3e: $11 $11 $11
	ld   de, $4800                                   ; $5b41: $11 $00 $48
	ld   de, $1111                                   ; $5b44: $11 $11 $11
	ld   de, $1111                                   ; $5b47: $11 $11 $11
	ld   de, $1111                                   ; $5b4a: $11 $11 $11
	ld   de, $5413                                   ; $5b4d: $11 $13 $54
	ld   d, h                                        ; $5b50: $54
	ld   d, h                                        ; $5b51: $54
	ld   b, c                                        ; $5b52: $41
	rra                                              ; $5b53: $1f
	rst  $38                                         ; $5b54: $ff
	pop  af                                          ; $5b55: $f1
	ld   de, $1611                                   ; $5b56: $11 $11 $16
	sub  c                                           ; $5b59: $91
	ld   de, $df1c                                   ; $5b5a: $11 $1c $df
	adc  h                                           ; $5b5d: $8c
	rst  JumpTable                                         ; $5b5e: $df
	add  c                                           ; $5b5f: $81
	ld   de, $1111                                   ; $5b60: $11 $11 $11
	ld   de, $1111                                   ; $5b63: $11 $11 $11
	ld   de, $1111                                   ; $5b66: $11 $11 $11
	ld   de, $1111                                   ; $5b69: $11 $11 $11
	ld   de, $5411                                   ; $5b6c: $11 $11 $54
	ld   b, h                                        ; $5b6f: $44
	add  [hl]                                        ; $5b70: $86
	ld   de, $5454                                   ; $5b71: $11 $54 $54
	ld   h, a                                        ; $5b74: $67
	ld   [hl], d                                     ; $5b75: $72
	ld   de, $1111                                   ; $5b76: $11 $11 $11
	ld   de, $1112                                   ; $5b79: $11 $12 $11
	ld   [de], a                                     ; $5b7c: $12
	ld   de, $1111                                   ; $5b7d: $11 $11 $11
	ld   h, [hl]                                     ; $5b80: $66
	halt                                             ; $5b81: $76
	ld   h, [hl]                                     ; $5b82: $66
	ld   de, $8888                                   ; $5b83: $11 $88 $88
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
	sbc  b                                           ; $5cf1: $98
	adc  b                                           ; $5cf2: $88
	adc  b                                           ; $5cf3: $88
	adc  b                                           ; $5cf4: $88
	adc  b                                           ; $5cf5: $88
	adc  b                                           ; $5cf6: $88
	adc  b                                           ; $5cf7: $88
	adc  b                                           ; $5cf8: $88
	adc  b                                           ; $5cf9: $88
	adc  c                                           ; $5cfa: $89
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
	sbc  b                                           ; $5d05: $98
	adc  c                                           ; $5d06: $89
	adc  b                                           ; $5d07: $88
	adc  b                                           ; $5d08: $88
	adc  b                                           ; $5d09: $88
	adc  b                                           ; $5d0a: $88
	adc  c                                           ; $5d0b: $89
	adc  b                                           ; $5d0c: $88
	adc  b                                           ; $5d0d: $88
	adc  c                                           ; $5d0e: $89
	adc  b                                           ; $5d0f: $88
	adc  c                                           ; $5d10: $89
	adc  b                                           ; $5d11: $88
	adc  b                                           ; $5d12: $88
	adc  b                                           ; $5d13: $88
	adc  b                                           ; $5d14: $88
	adc  b                                           ; $5d15: $88
	adc  b                                           ; $5d16: $88
	adc  b                                           ; $5d17: $88
	adc  b                                           ; $5d18: $88
	add  a                                           ; $5d19: $87
	adc  b                                           ; $5d1a: $88
	adc  b                                           ; $5d1b: $88
	sbc  b                                           ; $5d1c: $98
	adc  b                                           ; $5d1d: $88
	adc  b                                           ; $5d1e: $88
	adc  b                                           ; $5d1f: $88
	adc  b                                           ; $5d20: $88
	adc  b                                           ; $5d21: $88
	adc  c                                           ; $5d22: $89
	sbc  b                                           ; $5d23: $98
	adc  b                                           ; $5d24: $88
	ld   a, b                                        ; $5d25: $78
	adc  b                                           ; $5d26: $88
	adc  c                                           ; $5d27: $89
	ld   a, b                                        ; $5d28: $78
	sbc  b                                           ; $5d29: $98
	adc  b                                           ; $5d2a: $88
	adc  b                                           ; $5d2b: $88
	adc  b                                           ; $5d2c: $88
	sbc  c                                           ; $5d2d: $99
	ld   a, b                                        ; $5d2e: $78
	sbc  b                                           ; $5d2f: $98
	adc  b                                           ; $5d30: $88
	adc  b                                           ; $5d31: $88
	add  a                                           ; $5d32: $87
	adc  c                                           ; $5d33: $89
	sbc  b                                           ; $5d34: $98
	adc  b                                           ; $5d35: $88
	adc  b                                           ; $5d36: $88
	adc  b                                           ; $5d37: $88
	sub  a                                           ; $5d38: $97
	ld   a, b                                        ; $5d39: $78
	adc  b                                           ; $5d3a: $88
	ld   a, b                                        ; $5d3b: $78
	sbc  b                                           ; $5d3c: $98
	add  a                                           ; $5d3d: $87
	adc  c                                           ; $5d3e: $89
	sbc  c                                           ; $5d3f: $99
	sbc  b                                           ; $5d40: $98
	adc  b                                           ; $5d41: $88
	sbc  b                                           ; $5d42: $98
	adc  b                                           ; $5d43: $88
	adc  b                                           ; $5d44: $88
	add  a                                           ; $5d45: $87
	ld   [hl], a                                     ; $5d46: $77
	adc  b                                           ; $5d47: $88
	adc  b                                           ; $5d48: $88
	adc  b                                           ; $5d49: $88
	adc  c                                           ; $5d4a: $89
	adc  b                                           ; $5d4b: $88
	sbc  b                                           ; $5d4c: $98
	adc  c                                           ; $5d4d: $89
	ld   a, b                                        ; $5d4e: $78
	sbc  b                                           ; $5d4f: $98
	sbc  b                                           ; $5d50: $98
	ld   a, b                                        ; $5d51: $78
	adc  b                                           ; $5d52: $88
	add  a                                           ; $5d53: $87
	adc  b                                           ; $5d54: $88
	adc  b                                           ; $5d55: $88
	adc  b                                           ; $5d56: $88
	adc  b                                           ; $5d57: $88
	adc  b                                           ; $5d58: $88
	adc  b                                           ; $5d59: $88
	adc  b                                           ; $5d5a: $88
	adc  c                                           ; $5d5b: $89
	add  a                                           ; $5d5c: $87
	adc  c                                           ; $5d5d: $89
	sub  a                                           ; $5d5e: $97
	adc  b                                           ; $5d5f: $88
	ld   a, b                                        ; $5d60: $78
	ld   [hl], a                                     ; $5d61: $77
	adc  b                                           ; $5d62: $88
	ld   a, b                                        ; $5d63: $78
	adc  b                                           ; $5d64: $88
	adc  b                                           ; $5d65: $88
	sbc  c                                           ; $5d66: $99
	adc  b                                           ; $5d67: $88
	adc  c                                           ; $5d68: $89
	adc  b                                           ; $5d69: $88
	adc  b                                           ; $5d6a: $88
	adc  c                                           ; $5d6b: $89
	sub  a                                           ; $5d6c: $97
	sbc  c                                           ; $5d6d: $99
	sbc  b                                           ; $5d6e: $98
	add  a                                           ; $5d6f: $87
	ld   a, b                                        ; $5d70: $78
	ld   a, b                                        ; $5d71: $78
	sbc  b                                           ; $5d72: $98
	ld   a, c                                        ; $5d73: $79
	sub  a                                           ; $5d74: $97
	add  a                                           ; $5d75: $87
	adc  b                                           ; $5d76: $88
	sbc  b                                           ; $5d77: $98
	ld   a, b                                        ; $5d78: $78
	ld   a, c                                        ; $5d79: $79
	adc  b                                           ; $5d7a: $88
	ld   [hl], a                                     ; $5d7b: $77
	adc  b                                           ; $5d7c: $88
	adc  b                                           ; $5d7d: $88
	adc  c                                           ; $5d7e: $89
	sbc  b                                           ; $5d7f: $98
	sbc  c                                           ; $5d80: $99
	adc  c                                           ; $5d81: $89
	adc  b                                           ; $5d82: $88
	adc  c                                           ; $5d83: $89
	add  a                                           ; $5d84: $87
	ld   [hl], a                                     ; $5d85: $77
	ld   [hl], a                                     ; $5d86: $77
	ld   h, a                                        ; $5d87: $67
	ld   a, b                                        ; $5d88: $78
	ld   [hl], a                                     ; $5d89: $77
	ld   [hl], a                                     ; $5d8a: $77
	ld   a, b                                        ; $5d8b: $78
	sbc  b                                           ; $5d8c: $98
	adc  b                                           ; $5d8d: $88
	adc  c                                           ; $5d8e: $89
	sbc  c                                           ; $5d8f: $99
	sbc  c                                           ; $5d90: $99
	sbc  c                                           ; $5d91: $99
	sbc  b                                           ; $5d92: $98
	adc  b                                           ; $5d93: $88
	sub  a                                           ; $5d94: $97
	halt                                             ; $5d95: $76
	ld   h, l                                        ; $5d96: $65
	ld   d, l                                        ; $5d97: $55
	ld   b, e                                        ; $5d98: $43
	inc  sp                                          ; $5d99: $33
	inc  hl                                          ; $5d9a: $23
	ld   d, l                                        ; $5d9b: $55
	ld   a, c                                        ; $5d9c: $79
	adc  e                                           ; $5d9d: $8b
	sbc  $ef                                         ; $5d9e: $de $ef
	rst  $38                                         ; $5da0: $ff
	rst  $38                                         ; $5da1: $ff
	db   $ec                                         ; $5da2: $ec
	res  7, c                                        ; $5da3: $cb $b9
	ld   [hl], e                                     ; $5da5: $73
	ld   de, $1111                                   ; $5da6: $11 $11 $11
	ld   h, c                                        ; $5da9: $61
	inc  hl                                          ; $5daa: $23
	add  hl, de                                      ; $5dab: $19
	rst  $38                                         ; $5dac: $ff
	rst  $38                                         ; $5dad: $ff
	rst  $38                                         ; $5dae: $ff
	rst  $38                                         ; $5daf: $ff
	jp   hl                                          ; $5db0: $e9


	xor  e                                           ; $5db1: $ab
	sub  [hl]                                        ; $5db2: $96
	ld   h, c                                        ; $5db3: $61
	add  hl, hl                                      ; $5db4: $29
	sub  [hl]                                        ; $5db5: $96
	ld   a, b                                        ; $5db6: $78
	ld   d, [hl]                                     ; $5db7: $56
	ld   b, c                                        ; $5db8: $41
	ld   de, $321a                                   ; $5db9: $11 $1a $32
	ld   hl, $ffbf                                   ; $5dbc: $21 $bf $ff
	rst  $38                                         ; $5dbf: $ff
	rst  $38                                         ; $5dc0: $ff
	ei                                               ; $5dc1: $fb
	ld   d, [hl]                                     ; $5dc2: $56
	ld   h, [hl]                                     ; $5dc3: $66
	ld   sp, $bc12                                   ; $5dc4: $31 $12 $bc
	sbc  d                                           ; $5dc7: $9a
	or   a                                           ; $5dc8: $b7
	ld   [hl], l                                     ; $5dc9: $75
	ld   de, $9111                                   ; $5dca: $11 $11 $91
	ld   hl, $ff1f                                   ; $5dcd: $21 $1f $ff
	rst  $38                                         ; $5dd0: $ff
	rst  $38                                         ; $5dd1: $ff
	rst  $38                                         ; $5dd2: $ff
	ld   [hl], d                                     ; $5dd3: $72
	inc  de                                          ; $5dd4: $13
	ld   sp, $6d11                                   ; $5dd5: $31 $11 $6d
	rst  $38                                         ; $5dd8: $ff
	call c, Call_0d6_51b9                            ; $5dd9: $dc $b9 $51
	ld   de, $2114                                   ; $5ddc: $11 $14 $21
	ld   sp, $ffcf                                   ; $5ddf: $31 $cf $ff
	rst  $38                                         ; $5de2: $ff
	rst  $38                                         ; $5de3: $ff
	ld   a, [$1111]                                  ; $5de4: $fa $11 $11
	ld   de, $ef25                                   ; $5de7: $11 $25 $ef
	rst  $38                                         ; $5dea: $ff
	db   $fd                                         ; $5deb: $fd
	sub  a                                           ; $5dec: $97
	ld   de, $1111                                   ; $5ded: $11 $11 $11
	inc  de                                          ; $5df0: $13
	ld   d, h                                        ; $5df1: $54
	rst  $38                                         ; $5df2: $ff
	rst  $38                                         ; $5df3: $ff
	rst  $38                                         ; $5df4: $ff
	rst  $38                                         ; $5df5: $ff
	pop  af                                          ; $5df6: $f1
	ld   de, $1611                                   ; $5df7: $11 $11 $16
	sbc  l                                           ; $5dfa: $9d
	rst  $38                                         ; $5dfb: $ff
	rst  $38                                         ; $5dfc: $ff
	db   $fd                                         ; $5dfd: $fd
	sub  [hl]                                        ; $5dfe: $96
	ld   de, $1111                                   ; $5dff: $11 $11 $11
	ld   [hl], $c9                                   ; $5e02: $36 $c9
	rst  $38                                         ; $5e04: $ff
	rst  $38                                         ; $5e05: $ff
	rst  $38                                         ; $5e06: $ff
	set  4, c                                        ; $5e07: $cb $e1
	ld   de, $4e11                                   ; $5e09: $11 $11 $4e
	rst  $38                                         ; $5e0c: $ff
	rst  $38                                         ; $5e0d: $ff
	rst  $38                                         ; $5e0e: $ff
	db   $fd                                         ; $5e0f: $fd
	ld   h, c                                        ; $5e10: $61
	ld   de, $1111                                   ; $5e11: $11 $11 $11
	cp   h                                           ; $5e14: $bc
	rst  $38                                         ; $5e15: $ff
	rst  $38                                         ; $5e16: $ff
	rst  $38                                         ; $5e17: $ff
	ei                                               ; $5e18: $fb
	ld   d, c                                        ; $5e19: $51
	ld   b, c                                        ; $5e1a: $41
	ld   de, $8f11                                   ; $5e1b: $11 $11 $8f
	rst  $38                                         ; $5e1e: $ff
	rst  $38                                         ; $5e1f: $ff
	rst  $38                                         ; $5e20: $ff
	cp   $21                                         ; $5e21: $fe $21
	ld   de, $1111                                   ; $5e23: $11 $11 $11
	rst  $38                                         ; $5e26: $ff
	rst  $38                                         ; $5e27: $ff
	rst  $38                                         ; $5e28: $ff
	rst  $38                                         ; $5e29: $ff
	rst  $30                                         ; $5e2a: $f7
	ld   de, $1111                                   ; $5e2b: $11 $11 $11
	ld   de, $ffbf                                   ; $5e2e: $11 $bf $ff
	rst  $38                                         ; $5e31: $ff
	rst  $38                                         ; $5e32: $ff
	cp   $31                                         ; $5e33: $fe $31
	ld   de, $1111                                   ; $5e35: $11 $11 $11
	rst  $38                                         ; $5e38: $ff
	rst  $38                                         ; $5e39: $ff
	rst  $38                                         ; $5e3a: $ff
	rst  $38                                         ; $5e3b: $ff
	db   $f4                                         ; $5e3c: $f4
	ld   de, $1111                                   ; $5e3d: $11 $11 $11
	ld   de, $ffef                                   ; $5e40: $11 $ef $ff
	rst  $38                                         ; $5e43: $ff
	res  1, d                                        ; $5e44: $cb $8a
	ld   d, c                                        ; $5e46: $51
	ld   de, $1111                                   ; $5e47: $11 $11 $11
	rst  $38                                         ; $5e4a: $ff
	rst  $38                                         ; $5e4b: $ff
	rst  $38                                         ; $5e4c: $ff
	rst  $38                                         ; $5e4d: $ff
	pop  af                                          ; $5e4e: $f1
	ld   de, $1111                                   ; $5e4f: $11 $11 $11
	ld   [de], a                                     ; $5e52: $12
	rst  $38                                         ; $5e53: $ff
	rst  $38                                         ; $5e54: $ff
	rst  $38                                         ; $5e55: $ff
	add  h                                           ; $5e56: $84
	inc  d                                           ; $5e57: $14
	ld   b, c                                        ; $5e58: $41
	ld   de, $1611                                   ; $5e59: $11 $11 $16
	rst  $38                                         ; $5e5c: $ff
	rst  $38                                         ; $5e5d: $ff
	rst  $38                                         ; $5e5e: $ff
	rst  $38                                         ; $5e5f: $ff
	pop  bc                                          ; $5e60: $c1
	ld   de, $1111                                   ; $5e61: $11 $11 $11
	ld   d, l                                        ; $5e64: $55
	rst  $38                                         ; $5e65: $ff
	rst  $38                                         ; $5e66: $ff
	rst  $38                                         ; $5e67: $ff
	ld   d, c                                        ; $5e68: $51
	ld   de, $1141                                   ; $5e69: $11 $41 $11
	ld   de, $ff1a                                   ; $5e6c: $11 $1a $ff
	rst  $38                                         ; $5e6f: $ff
	rst  $38                                         ; $5e70: $ff
	rst  $38                                         ; $5e71: $ff
	sub  c                                           ; $5e72: $91
	ld   de, $2511                                   ; $5e73: $11 $11 $25
	sbc  c                                           ; $5e76: $99
	rst  $38                                         ; $5e77: $ff
	rst  $38                                         ; $5e78: $ff
	rst  $38                                         ; $5e79: $ff
	ld   sp, $3111                                   ; $5e7a: $31 $11 $31
	ld   de, $1f11                                   ; $5e7d: $11 $11 $1f
	rst  $38                                         ; $5e80: $ff
	rst  $38                                         ; $5e81: $ff
	rst  $38                                         ; $5e82: $ff
	rst  $38                                         ; $5e83: $ff
	ld   h, c                                        ; $5e84: $61
	ld   de, $5911                                   ; $5e85: $11 $11 $59
	xor  e                                           ; $5e88: $ab
	rst  $38                                         ; $5e89: $ff
	rst  $38                                         ; $5e8a: $ff
	db   $fd                                         ; $5e8b: $fd
	ld   de, $3111                                   ; $5e8c: $11 $11 $31
	ld   de, $1f11                                   ; $5e8f: $11 $11 $1f
	rst  $38                                         ; $5e92: $ff
	rst  $38                                         ; $5e93: $ff
	rst  $38                                         ; $5e94: $ff
	cp   $21                                         ; $5e95: $fe $21
	ld   de, $8b13                                   ; $5e97: $11 $13 $8b
	adc  $ff                                         ; $5e9a: $ce $ff
	rst  $38                                         ; $5e9c: $ff
	ld   hl, sp+$11                                  ; $5e9d: $f8 $11
	ld   [de], a                                     ; $5e9f: $12
	ld   hl, $1111                                   ; $5ea0: $21 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea3: $cf
	rst  $38                                         ; $5ea4: $ff
	rst  $38                                         ; $5ea5: $ff
	rst  $38                                         ; $5ea6: $ff
	ei                                               ; $5ea7: $fb
	ld   de, $1811                                   ; $5ea8: $11 $11 $18
	call z, $ffdf                                    ; $5eab: $cc $df $ff
	rst  $38                                         ; $5eae: $ff
	pop  bc                                          ; $5eaf: $c1
	ld   de, $1113                                   ; $5eb0: $11 $13 $11
	ld   de, $ff17                                   ; $5eb3: $11 $17 $ff
	rst  $38                                         ; $5eb6: $ff
	rst  $38                                         ; $5eb7: $ff
	rst  $38                                         ; $5eb8: $ff
	pop  af                                          ; $5eb9: $f1
	ld   de, $8c11                                   ; $5eba: $11 $11 $8c
	db   $ec                                         ; $5ebd: $ec
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	db   $fd                                         ; $5ec0: $fd
	ld   de, $4111                                   ; $5ec1: $11 $11 $41
	ld   de, $bf11                                   ; $5ec4: $11 $11 $bf
	rst  $38                                         ; $5ec7: $ff
	rst  $38                                         ; $5ec8: $ff
	rst  $38                                         ; $5ec9: $ff
	cp   $11                                         ; $5eca: $fe $11
	ld   de, $ed19                                   ; $5ecc: $11 $19 $ed
	rst  JumpTable                                         ; $5ecf: $df
	rst  $38                                         ; $5ed0: $ff
	rst  $38                                         ; $5ed1: $ff
	add  c                                           ; $5ed2: $81
	ld   de, $1143                                   ; $5ed3: $11 $43 $11
	ld   de, $ff1f                                   ; $5ed6: $11 $1f $ff
	rst  $38                                         ; $5ed9: $ff
	rst  JumpTable                                         ; $5eda: $df
	rst  $38                                         ; $5edb: $ff
	ld   d, c                                        ; $5edc: $51
	ld   de, $cd16                                   ; $5edd: $11 $16 $cd
	xor  a                                           ; $5ee0: $af
	rst  $38                                         ; $5ee1: $ff
	rst  $38                                         ; $5ee2: $ff
	pop  af                                          ; $5ee3: $f1
	ld   de, $1126                                   ; $5ee4: $11 $26 $11
	ld   de, $ff1f                                   ; $5ee7: $11 $1f $ff
	rst  $38                                         ; $5eea: $ff
	rst  $28                                         ; $5eeb: $ef
	rst  $38                                         ; $5eec: $ff
	pop  de                                          ; $5eed: $d1
	ld   de, $bc12                                   ; $5eee: $11 $12 $bc
	xor  h                                           ; $5ef1: $ac
	rst  $38                                         ; $5ef2: $ff
	rst  $38                                         ; $5ef3: $ff
	di                                               ; $5ef4: $f3
	ld   de, $1116                                   ; $5ef5: $11 $16 $11
	ld   de, $ff1b                                   ; $5ef8: $11 $1b $ff
	rst  $38                                         ; $5efb: $ff
	rst  JumpTable                                         ; $5efc: $df
	rst  $38                                         ; $5efd: $ff
	pop  af                                          ; $5efe: $f1
	ld   de, $ac13                                   ; $5eff: $11 $13 $ac
	ld   a, b                                        ; $5f02: $78
	rst  $38                                         ; $5f03: $ff
	rst  $38                                         ; $5f04: $ff
	di                                               ; $5f05: $f3
	ld   de, $1137                                   ; $5f06: $11 $37 $11
	ld   de, $ff1f                                   ; $5f09: $11 $1f $ff
	rst  $38                                         ; $5f0c: $ff
	rst  JumpTable                                         ; $5f0d: $df
	rst  $38                                         ; $5f0e: $ff
	pop  bc                                          ; $5f0f: $c1
	ld   de, $bb16                                   ; $5f10: $11 $16 $bb
	ld   e, b                                        ; $5f13: $58
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	ldh  a, [c]                                      ; $5f16: $f2
	ld   de, $1167                                   ; $5f17: $11 $67 $11
	ld   de, $ff1f                                   ; $5f1a: $11 $1f $ff
	rst  $38                                         ; $5f1d: $ff
	rst  $28                                         ; $5f1e: $ef
	rst  $38                                         ; $5f1f: $ff
	ld   sp, $1911                                   ; $5f20: $31 $11 $19
	cp   b                                           ; $5f23: $b8
	dec  de                                          ; $5f24: $1b
	rst  $38                                         ; $5f25: $ff
	rst  $38                                         ; $5f26: $ff
	or   c                                           ; $5f27: $b1
	inc  de                                          ; $5f28: $13
	sub  e                                           ; $5f29: $93
	ld   de, $7f11                                   ; $5f2a: $11 $11 $7f
	rst  $38                                         ; $5f2d: $ff
	db   $fd                                         ; $5f2e: $fd
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	ld   de, $6911                                   ; $5f31: $11 $11 $69
	add  c                                           ; $5f34: $81
	cpl                                              ; $5f35: $2f
	rst  $38                                         ; $5f36: $ff
	rst  $38                                         ; $5f37: $ff
	ld   b, c                                        ; $5f38: $41
	rla                                              ; $5f39: $17
	ld   h, c                                        ; $5f3a: $61
	ld   de, rAUD1LEN                                   ; $5f3b: $11 $11 $ff
	rst  $38                                         ; $5f3e: $ff
	rst  $28                                         ; $5f3f: $ef
	rst  $38                                         ; $5f40: $ff
	pop  af                                          ; $5f41: $f1
	ld   de, $5511                                   ; $5f42: $11 $11 $55
	ld   de, $ffcf                                   ; $5f45: $11 $cf $ff
	ld   sp, hl                                      ; $5f48: $f9
	ld   [hl+], a                                    ; $5f49: $22
	ld   h, l                                        ; $5f4a: $65
	ld   de, $1f11                                   ; $5f4b: $11 $11 $1f
	rst  $38                                         ; $5f4e: $ff
	rst  $38                                         ; $5f4f: $ff
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	ld   h, c                                        ; $5f52: $61
	ld   de, $1111                                   ; $5f53: $11 $11 $11
	jr   @+$01                                       ; $5f56: $18 $ff

	rst  $38                                         ; $5f58: $ff
	jp   hl                                          ; $5f59: $e9


	ld   h, [hl]                                     ; $5f5a: $66
	ld   b, c                                        ; $5f5b: $41
	ld   de, rAUD1LEN                                   ; $5f5c: $11 $11 $ff
	rst  $38                                         ; $5f5f: $ff
	rst  $28                                         ; $5f60: $ef
	rst  $38                                         ; $5f61: $ff
	ld   hl, sp+$11                                  ; $5f62: $f8 $11
	ld   de, $1111                                   ; $5f64: $11 $11 $11
	adc  a                                           ; $5f67: $8f
	rst  $38                                         ; $5f68: $ff
	db   $fd                                         ; $5f69: $fd
	cp   b                                           ; $5f6a: $b8
	ld   [hl], c                                     ; $5f6b: $71
	ld   de, $ad11                                   ; $5f6c: $11 $11 $ad
	cp   $ef                                         ; $5f6f: $fe $ef
	rst  $38                                         ; $5f71: $ff
	db   $fd                                         ; $5f72: $fd
	ld   sp, $1132                                   ; $5f73: $31 $32 $11
	ld   de, $ff6f                                   ; $5f76: $11 $6f $ff
	cp   d                                           ; $5f79: $ba
	xor  c                                           ; $5f7a: $a9
	ld   d, c                                        ; $5f7b: $51
	ld   de, $c967                                   ; $5f7c: $11 $67 $c9
	ld   e, d                                        ; $5f7f: $5a
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	add  $aa                                         ; $5f82: $c6 $aa
	sub  h                                           ; $5f84: $94
	ld   de, $bb18                                   ; $5f85: $11 $18 $bb
	ld   d, d                                        ; $5f88: $52
	ld   de, $4d11                                   ; $5f89: $11 $11 $4d
	cp   d                                           ; $5f8c: $ba
	call z, $ffcf                                    ; $5f8d: $cc $cf $ff
	ld   [$c78b], a                                  ; $5f90: $ea $8b $c7
	ld   d, e                                        ; $5f93: $53
	dec  h                                           ; $5f94: $25
	xor  e                                           ; $5f95: $ab
	cp   c                                           ; $5f96: $b9
	ld   h, [hl]                                     ; $5f97: $66
	ld   b, c                                        ; $5f98: $41
	ld   de, $da1c                                   ; $5f99: $11 $1c $da
	cp   d                                           ; $5f9c: $ba
	cp   a                                           ; $5f9d: $bf
	rst  $38                                         ; $5f9e: $ff
	ld   a, [$d66b]                                  ; $5f9f: $fa $6b $d6
	ld   hl, $8b11                                   ; $5fa2: $21 $11 $8b
	and  a                                           ; $5fa5: $a7
	ld   d, [hl]                                     ; $5fa6: $56
	ld   [hl], h                                     ; $5fa7: $74
	ld   de, $a75e                                   ; $5fa8: $11 $5e $a7
	add  h                                           ; $5fab: $84
	adc  a                                           ; $5fac: $8f
	rst  $38                                         ; $5fad: $ff
	ld   a, [$f9af]                                  ; $5fae: $fa $af $f9
	ld   b, c                                        ; $5fb1: $41
	inc  de                                          ; $5fb2: $13
	ld   h, a                                        ; $5fb3: $67
	ld   d, c                                        ; $5fb4: $51
	inc  de                                          ; $5fb5: $13
	ld   sp, $fb19                                   ; $5fb6: $31 $19 $fb
	sbc  e                                           ; $5fb9: $9b
	adc  e                                           ; $5fba: $8b
	xor  $ff                                         ; $5fbb: $ee $ff
	ld   [hl], a                                     ; $5fbd: $77
	cp   $76                                         ; $5fbe: $fe $76
	ld   d, h                                        ; $5fc0: $54
	halt                                             ; $5fc1: $76
	ld   h, a                                        ; $5fc2: $67
	ld   sp, $1122                                   ; $5fc3: $31 $22 $11
	ld   a, a                                        ; $5fc6: $7f
	ld   hl, sp+$66                                  ; $5fc7: $f8 $66
	sbc  l                                           ; $5fc9: $9d
	call Call_0d6_5ad8                               ; $5fca: $cd $d8 $5a
	call c, Call_0d6_7a86                            ; $5fcd: $dc $86 $7a
	add  [hl]                                        ; $5fd0: $86
	ld   [hl], a                                     ; $5fd1: $77
	ld   [hl], a                                     ; $5fd2: $77
	ld   d, h                                        ; $5fd3: $54
	ld   e, b                                        ; $5fd4: $58
	cp   e                                           ; $5fd5: $bb
	ld   [hl], l                                     ; $5fd6: $75
	ld   d, [hl]                                     ; $5fd7: $56
	ld   h, a                                        ; $5fd8: $67
	add  a                                           ; $5fd9: $87
	ld   d, [hl]                                     ; $5fda: $56
	adc  d                                           ; $5fdb: $8a
	cp   d                                           ; $5fdc: $ba
	adc  c                                           ; $5fdd: $89
	xor  e                                           ; $5fde: $ab
	cp   h                                           ; $5fdf: $bc
	cp   e                                           ; $5fe0: $bb
	xor  e                                           ; $5fe1: $ab
	cp   e                                           ; $5fe2: $bb
	and  a                                           ; $5fe3: $a7
	ld   h, [hl]                                     ; $5fe4: $66
	adc  c                                           ; $5fe5: $89
	ld   h, e                                        ; $5fe6: $63
	ld   de, $6425                                   ; $5fe7: $11 $25 $64
	ld   b, l                                        ; $5fea: $45
	ld   a, c                                        ; $5feb: $79
	res  5, d                                        ; $5fec: $cb $aa
	xor  h                                           ; $5fee: $ac
	db   $dd                                         ; $5fef: $dd
	cp   d                                           ; $5ff0: $ba
	xor  e                                           ; $5ff1: $ab
	xor  d                                           ; $5ff2: $aa
	sbc  b                                           ; $5ff3: $98
	ld   [hl], a                                     ; $5ff4: $77
	halt                                             ; $5ff5: $76
	halt                                             ; $5ff6: $76
	ld   sp, $4633                                   ; $5ff7: $31 $33 $46
	ld   h, [hl]                                     ; $5ffa: $66
	ld   h, a                                        ; $5ffb: $67
	sbc  e                                           ; $5ffc: $9b
	cp   e                                           ; $5ffd: $bb
	sbc  d                                           ; $5ffe: $9a
	cp   e                                           ; $5fff: $bb
	cp   e                                           ; $6000: $bb
	sbc  c                                           ; $6001: $99
	sbc  d                                           ; $6002: $9a
	adc  $81                                         ; $6003: $ce $81
	ld   a, e                                        ; $6005: $7b
	ld   [hl], h                                     ; $6006: $74
	ld   h, a                                        ; $6007: $67
	ld   hl, $6436                                   ; $6008: $21 $36 $64
	ld   d, a                                        ; $600b: $57
	adc  c                                           ; $600c: $89
	xor  e                                           ; $600d: $ab
	cp   d                                           ; $600e: $ba
	xor  h                                           ; $600f: $ac
	set  1, e                                        ; $6010: $cb $cb
	sbc  c                                           ; $6012: $99
	xor  d                                           ; $6013: $aa
	sbc  b                                           ; $6014: $98
	ld   [hl], l                                     ; $6015: $75
	ld   h, a                                        ; $6016: $67
	add  [hl]                                        ; $6017: $86
	ld   d, h                                        ; $6018: $54
	inc  hl                                          ; $6019: $23
	ld   d, [hl]                                     ; $601a: $56
	ld   h, l                                        ; $601b: $65
	ld   h, a                                        ; $601c: $67
	xor  h                                           ; $601d: $ac
	db   $db                                         ; $601e: $db
	sbc  d                                           ; $601f: $9a
	call c, $a8cc                                    ; $6020: $dc $cc $a8
	adc  d                                           ; $6023: $8a
	and  a                                           ; $6024: $a7
	ld   d, h                                        ; $6025: $54
	inc  [hl]                                        ; $6026: $34
	sub  a                                           ; $6027: $97
	ld   d, e                                        ; $6028: $53
	ld   [de], a                                     ; $6029: $12
	ld   e, b                                        ; $602a: $58
	sub  a                                           ; $602b: $97
	adc  d                                           ; $602c: $8a
	cp   [hl]                                        ; $602d: $be
	xor  $cd                                         ; $602e: $ee $cd
	rst  $38                                         ; $6030: $ff
	jp   c, Jump_0d6_4376                            ; $6031: $da $76 $43

	ld   de, $1811                                   ; $6034: $11 $11 $18
	ld   [hl], a                                     ; $6037: $77
	ld   h, a                                        ; $6038: $67
	rst  JumpTable                                         ; $6039: $df
	rst  $38                                         ; $603a: $ff
	db   $ed                                         ; $603b: $ed
	rst  JumpTable                                         ; $603c: $df
	jp   hl                                          ; $603d: $e9


	halt                                             ; $603e: $76
	ld   a, b                                        ; $603f: $78
	ld   [hl], l                                     ; $6040: $75
	ld   hl, $1111                                   ; $6041: $21 $11 $11
	ld   a, d                                        ; $6044: $7a
	adc  c                                           ; $6045: $89
	xor  e                                           ; $6046: $ab
	rst  $38                                         ; $6047: $ff
	rst  $38                                         ; $6048: $ff
	db   $ed                                         ; $6049: $ed
	rst  $28                                         ; $604a: $ef
	rst  ToBoot                                         ; $604b: $c7
	ld   b, e                                        ; $604c: $43
	ld   d, l                                        ; $604d: $55
	ld   hl, $1111                                   ; $604e: $21 $11 $11
	dec  a                                           ; $6051: $3d
	jp   z, $ffbd                                    ; $6052: $ca $bd $ff

	rst  $38                                         ; $6055: $ff
	call c, $d9ce                                    ; $6056: $dc $ce $d9
	ld   h, d                                        ; $6059: $62
	ld   [hl], $51                                   ; $605a: $36 $51
	ld   de, $1b11                                   ; $605c: $11 $11 $1b
	jp   z, $ffad                                    ; $605f: $ca $ad $ff

	rst  $38                                         ; $6062: $ff
	db   $fc                                         ; $6063: $fc
	sbc  $da                                         ; $6064: $de $da
	ld   h, d                                        ; $6066: $62
	inc  d                                           ; $6067: $14
	ld   sp, $1111                                   ; $6068: $31 $11 $11
	ld   l, $dc                                      ; $606b: $2e $dc
	call $ffff                                       ; $606d: $cd $ff $ff
	jp   z, $cabd                                    ; $6070: $ca $bd $ca

	ld   h, e                                        ; $6073: $63
	ld   b, [hl]                                     ; $6074: $46
	ld   sp, $1111                                   ; $6075: $31 $11 $11
	inc  a                                           ; $6078: $3c
	cp   d                                           ; $6079: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $607a: $cf
	rst  $38                                         ; $607b: $ff
	rst  $38                                         ; $607c: $ff
	call c, $b7de                                    ; $607d: $dc $de $b7
	ld   b, d                                        ; $6080: $42
	inc  sp                                          ; $6081: $33
	ld   de, $1111                                   ; $6082: $11 $11 $11
	cp   l                                           ; $6085: $bd
	cp   h                                           ; $6086: $bc
	rst  $28                                         ; $6087: $ef
	rst  $38                                         ; $6088: $ff
	db   $fd                                         ; $6089: $fd
	xor  h                                           ; $608a: $ac
	db   $dd                                         ; $608b: $dd
	sub  l                                           ; $608c: $95
	inc  sp                                          ; $608d: $33
	ld   d, d                                        ; $608e: $52
	ld   de, $1911                                   ; $608f: $11 $11 $19
	db   $fc                                         ; $6092: $fc
	xor  l                                           ; $6093: $ad
	rst  $38                                         ; $6094: $ff
	rst  $38                                         ; $6095: $ff
	jp   hl                                          ; $6096: $e9


	cp   l                                           ; $6097: $bd
	jp   hl                                          ; $6098: $e9


	ld   d, d                                        ; $6099: $52
	inc  h                                           ; $609a: $24
	ld   sp, $1111                                   ; $609b: $31 $11 $11
	sbc  a                                           ; $609e: $9f
	jp   c, $ffdf                                    ; $609f: $da $df $ff

	db   $fd                                         ; $60a2: $fd
	adc  d                                           ; $60a3: $8a
	db   $ed                                         ; $60a4: $ed
	sub  l                                           ; $60a5: $95
	ld   hl, $1132                                   ; $60a6: $21 $32 $11
	ld   de, $fe1b                                   ; $60a9: $11 $1b $fe
	cp   [hl]                                        ; $60ac: $be
	rst  $38                                         ; $60ad: $ff
	rst  $38                                         ; $60ae: $ff
	rst  ToBoot                                         ; $60af: $c7
	xor  [hl]                                        ; $60b0: $ae
	jp   c, $1351                                    ; $60b1: $da $51 $13

	ld   de, $1311                                   ; $60b4: $11 $11 $13
	rst  $38                                         ; $60b7: $ff
	db   $dd                                         ; $60b8: $dd
	rst  $38                                         ; $60b9: $ff
	rst  $38                                         ; $60ba: $ff
	rst  $30                                         ; $60bb: $f7
	ld   l, h                                        ; $60bc: $6c
	db   $fc                                         ; $60bd: $fc
	ld   [hl], e                                     ; $60be: $73
	ld   de, $1121                                   ; $60bf: $11 $21 $11
	ld   de, $fddf                                   ; $60c2: $11 $df $fd
	rst  $28                                         ; $60c5: $ef
	rst  $38                                         ; $60c6: $ff
	ld   sp, hl                                      ; $60c7: $f9
	ld   e, b                                        ; $60c8: $58
	rst  $38                                         ; $60c9: $ff
	and  h                                           ; $60ca: $a4
	ld   de, $1121                                   ; $60cb: $11 $21 $11
	ld   de, $febf                                   ; $60ce: $11 $bf $fe
	rst  JumpTable                                         ; $60d1: $df
	rst  $38                                         ; $60d2: $ff
	ld   sp, hl                                      ; $60d3: $f9
	scf                                              ; $60d4: $37
	adc  $b6                                         ; $60d5: $ce $b6
	ld   de, $1111                                   ; $60d7: $11 $11 $11
	ld   de, $ffcf                                   ; $60da: $11 $cf $ff
	rst  $38                                         ; $60dd: $ff
	rst  $38                                         ; $60de: $ff
	ld   hl, sp+$36                                  ; $60df: $f8 $36
	db   $dd                                         ; $60e1: $dd
	or   a                                           ; $60e2: $b7
	ld   de, $1111                                   ; $60e3: $11 $11 $11
	ld   de, $ffef                                   ; $60e6: $11 $ef $ff
	rst  $38                                         ; $60e9: $ff
	rst  $38                                         ; $60ea: $ff
	or   $37                                         ; $60eb: $f6 $37
	db   $dd                                         ; $60ed: $dd
	and  l                                           ; $60ee: $a5
	ld   de, $1111                                   ; $60ef: $11 $11 $11
	ld   [de], a                                     ; $60f2: $12
	rst  $38                                         ; $60f3: $ff
	rst  $38                                         ; $60f4: $ff
	rst  $38                                         ; $60f5: $ff
	rst  $38                                         ; $60f6: $ff
	push bc                                          ; $60f7: $c5
	ld   e, e                                        ; $60f8: $5b
	call z, $11a4                                    ; $60f9: $cc $a4 $11
	ld   de, $1b11                                   ; $60fc: $11 $11 $1b
	rst  $38                                         ; $60ff: $ff
	rst  $38                                         ; $6100: $ff
	rst  $38                                         ; $6101: $ff
	rst  $38                                         ; $6102: $ff
	add  h                                           ; $6103: $84
	ld   a, d                                        ; $6104: $7a
	call $1193                                       ; $6105: $cd $93 $11
	ld   de, $1f11                                   ; $6108: $11 $11 $1f
	rst  $38                                         ; $610b: $ff
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	db   $fd                                         ; $610e: $fd
	ld   h, [hl]                                     ; $610f: $66
	sbc  h                                           ; $6110: $9c
	db   $eb                                         ; $6111: $eb
	ld   h, c                                        ; $6112: $61
	ld   de, $1111                                   ; $6113: $11 $11 $11
	xor  a                                           ; $6116: $af
	rst  $38                                         ; $6117: $ff
	rst  $38                                         ; $6118: $ff
	rst  $38                                         ; $6119: $ff
	rst  $20                                         ; $611a: $e7
	ld   e, c                                        ; $611b: $59
	cp   l                                           ; $611c: $bd
	ret                                              ; $611d: $c9


	ld   sp, $1111                                   ; $611e: $31 $11 $11
	ld   d, $ff                                      ; $6121: $16 $ff
	rst  $38                                         ; $6123: $ff
	rst  $38                                         ; $6124: $ff
	db   $fd                                         ; $6125: $fd
	ld   [hl], l                                     ; $6126: $75
	sbc  h                                           ; $6127: $9c
	db   $ed                                         ; $6128: $ed
	or   h                                           ; $6129: $b4
	ld   de, $1111                                   ; $612a: $11 $11 $11
	dec  e                                           ; $612d: $1d
	rst  $38                                         ; $612e: $ff
	rst  $38                                         ; $612f: $ff
	db   $fd                                         ; $6130: $fd
	jp   c, $bd67                                    ; $6131: $da $67 $bd

	db   $ed                                         ; $6134: $ed
	ld   [hl], d                                     ; $6135: $72
	ld   de, $1111                                   ; $6136: $11 $11 $11
	rst  JumpTable                                         ; $6139: $df
	rst  $38                                         ; $613a: $ff
	rst  $38                                         ; $613b: $ff
	rst  $38                                         ; $613c: $ff
	or   a                                           ; $613d: $b7
	ld   l, b                                        ; $613e: $68
	adc  $e7                                         ; $613f: $ce $e7
	ld   de, $1111                                   ; $6141: $11 $11 $11
	rla                                              ; $6144: $17
	rst  $38                                         ; $6145: $ff
	rst  $38                                         ; $6146: $ff
	db   $fd                                         ; $6147: $fd
	db   $eb                                         ; $6148: $eb
	sub  [hl]                                        ; $6149: $96
	adc  e                                           ; $614a: $8b
	rst  $28                                         ; $614b: $ef
	or   h                                           ; $614c: $b4
	ld   de, $1111                                   ; $614d: $11 $11 $11
	ld   l, [hl]                                     ; $6150: $6e
	rst  $38                                         ; $6151: $ff
	rst  $38                                         ; $6152: $ff
	db   $fc                                         ; $6153: $fc
	xor  c                                           ; $6154: $a9
	ld   [hl], a                                     ; $6155: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6156: $cf
	db   $fc                                         ; $6157: $fc
	ld   b, c                                        ; $6158: $41
	ld   de, $1511                                   ; $6159: $11 $11 $15
	rst  JumpTable                                         ; $615c: $df
	rst  $38                                         ; $615d: $ff
	db   $fd                                         ; $615e: $fd
	call c, Call_0d6_7ba8                            ; $615f: $dc $a8 $7b
	rst  JumpTable                                         ; $6162: $df
	or   h                                           ; $6163: $b4
	ld   de, $1111                                   ; $6164: $11 $11 $11
	inc  a                                           ; $6167: $3c
	rst  $38                                         ; $6168: $ff
	rst  $38                                         ; $6169: $ff
	db   $ec                                         ; $616a: $ec
	sbc  c                                           ; $616b: $99
	xor  b                                           ; $616c: $a8
	call Call_0d6_61dc                               ; $616d: $cd $dc $61
	ld   de, $1311                                   ; $6170: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6173: $cf
	rst  $38                                         ; $6174: $ff
	db   $fd                                         ; $6175: $fd
	ret                                              ; $6176: $c9


	sbc  d                                           ; $6177: $9a
	xor  h                                           ; $6178: $ac
	db   $ed                                         ; $6179: $ed
	and  a                                           ; $617a: $a7
	ld   de, $1111                                   ; $617b: $11 $11 $11
	ld   c, l                                        ; $617e: $4d
	rst  $38                                         ; $617f: $ff
	db   $fd                                         ; $6180: $fd
	res  5, d                                        ; $6181: $cb $aa
	sbc  d                                           ; $6183: $9a
	adc  $fb                                         ; $6184: $ce $fb
	ld   h, c                                        ; $6186: $61
	ld   de, $1411                                   ; $6187: $11 $11 $14
	cp   a                                           ; $618a: $bf
	rst  $38                                         ; $618b: $ff
	db   $fc                                         ; $618c: $fc
	sub  [hl]                                        ; $618d: $96
	sbc  e                                           ; $618e: $9b
	xor  a                                           ; $618f: $af
	db   $fd                                         ; $6190: $fd
	or   h                                           ; $6191: $b4
	ld   de, $1111                                   ; $6192: $11 $11 $11
	ld   l, l                                        ; $6195: $6d
	rst  $38                                         ; $6196: $ff
	cp   $a8                                         ; $6197: $fe $a8
	ld   [hl], a                                     ; $6199: $77
	adc  $ed                                         ; $619a: $ce $ed
	ret                                              ; $619c: $c9


	ld   d, c                                        ; $619d: $51
	ld   de, $1611                                   ; $619e: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61a1: $cf
	rst  $38                                         ; $61a2: $ff
	db   $ec                                         ; $61a3: $ec
	adc  c                                           ; $61a4: $89
	xor  c                                           ; $61a5: $a9
	sbc  $df                                         ; $61a6: $de $df
	and  h                                           ; $61a8: $a4
	ld   de, $1111                                   ; $61a9: $11 $11 $11
	adc  h                                           ; $61ac: $8c
	rst  $38                                         ; $61ad: $ff
	ei                                               ; $61ae: $fb
	sbc  c                                           ; $61af: $99
	sbc  h                                           ; $61b0: $9c
	ret                                              ; $61b1: $c9


	sbc  $dc                                         ; $61b2: $de $dc
	ld   d, c                                        ; $61b4: $51
	ld   de, $4711                                   ; $61b5: $11 $11 $47
	xor  a                                           ; $61b8: $af
	rst  $38                                         ; $61b9: $ff
	sub  $68                                         ; $61ba: $d6 $68
	xor  a                                           ; $61bc: $af
	jp   c, $b6bc                                    ; $61bd: $da $bc $b6

	ld   de, $1511                                   ; $61c0: $11 $11 $15
	adc  $dd                                         ; $61c3: $ce $dd
	rst  $28                                         ; $61c5: $ef
	jp   z, $cf55                                    ; $61c6: $ca $55 $cf

	db   $ed                                         ; $61c9: $ed
	and  $21                                         ; $61ca: $e6 $21
	ld   de, $4812                                   ; $61cc: $11 $12 $48
	rst  JumpTable                                         ; $61cf: $df
	reti                                             ; $61d0: $d9


	db   $eb                                         ; $61d1: $eb
	ld   [hl], a                                     ; $61d2: $77
	db   $dd                                         ; $61d3: $dd
	cp   a                                           ; $61d4: $bf
	cp   c                                           ; $61d5: $b9
	and  c                                           ; $61d6: $a1
	ld   de, $4612                                   ; $61d7: $11 $12 $46
	adc  d                                           ; $61da: $8a
	db   $ed                                         ; $61db: $ed

Call_0d6_61dc:
	adc  $85                                         ; $61dc: $ce $85
	cp   l                                           ; $61de: $bd
	db   $fc                                         ; $61df: $fc
	adc  d                                           ; $61e0: $8a
	xor  c                                           ; $61e1: $a9
	ld   b, c                                        ; $61e2: $41
	ld   de, $7b15                                   ; $61e3: $11 $15 $7b
	cp   e                                           ; $61e6: $bb
	cp   h                                           ; $61e7: $bc
	db   $eb                                         ; $61e8: $eb
	ld   l, d                                        ; $61e9: $6a
	ret                                              ; $61ea: $c9


	db   $ed                                         ; $61eb: $ed
	cp   l                                           ; $61ec: $bd
	ld   b, c                                        ; $61ed: $41
	ld   [de], a                                     ; $61ee: $12
	ld   b, c                                        ; $61ef: $41
	inc  sp                                          ; $61f0: $33
	adc  e                                           ; $61f1: $8b
	call c, $9bda                                    ; $61f2: $dc $da $9b
	sbc  e                                           ; $61f5: $9b
	call $c4ac                                       ; $61f6: $cd $ac $c4
	ld   b, c                                        ; $61f9: $41
	ld   de, $7756                                   ; $61fa: $11 $56 $77
	ld   c, e                                        ; $61fd: $4b
	db   $fd                                         ; $61fe: $fd
	cp   e                                           ; $61ff: $bb
	ld   [hl], l                                     ; $6200: $75
	rst  $28                                         ; $6201: $ef
	sbc  [hl]                                        ; $6202: $9e
	and  $92                                         ; $6203: $e6 $92
	ld   de, $4833                                   ; $6205: $11 $33 $48
	sub  [hl]                                        ; $6208: $96
	ld   a, d                                        ; $6209: $7a
	db   $dd                                         ; $620a: $dd
	adc  b                                           ; $620b: $88
	db   $dd                                         ; $620c: $dd
	db   $dd                                         ; $620d: $dd
	or   a                                           ; $620e: $b7
	xor  c                                           ; $620f: $a9
	ld   hl, $3621                                   ; $6210: $21 $21 $36
	ld   d, a                                        ; $6213: $57
	ld   l, e                                        ; $6214: $6b
	xor  d                                           ; $6215: $aa
	reti                                             ; $6216: $d9


	xor  h                                           ; $6217: $ac
	cp   h                                           ; $6218: $bc
	ld   hl, sp-$35                                  ; $6219: $f8 $cb
	ld   d, l                                        ; $621b: $55
	inc  de                                          ; $621c: $13
	ld   b, h                                        ; $621d: $44
	add  l                                           ; $621e: $85
	dec  h                                           ; $621f: $25
	call $35ca                                       ; $6220: $cd $ca $35
	cp   l                                           ; $6223: $bd
	rst  $38                                         ; $6224: $ff
	xor  d                                           ; $6225: $aa
	sub  a                                           ; $6226: $97
	add  d                                           ; $6227: $82
	dec  d                                           ; $6228: $15
	ld   h, h                                        ; $6229: $64
	ld   [hl], l                                     ; $622a: $75
	inc  a                                           ; $622b: $3c
	cp   b                                           ; $622c: $b8
	add  h                                           ; $622d: $84
	ld   a, a                                        ; $622e: $7f
	cp   $b9                                         ; $622f: $fe $b9
	xor  d                                           ; $6231: $aa
	or   [hl]                                        ; $6232: $b6
	inc  de                                          ; $6233: $13
	ld   e, b                                        ; $6234: $58
	ld   d, h                                        ; $6235: $54
	dec  h                                           ; $6236: $25
	xor  b                                           ; $6237: $a8
	ld   e, d                                        ; $6238: $5a
	xor  e                                           ; $6239: $ab
	ld   sp, hl                                      ; $623a: $f9
	cp   e                                           ; $623b: $bb
	ld   a, d                                        ; $623c: $7a
	res  6, h                                        ; $623d: $cb $b4
	inc  de                                          ; $623f: $13
	scf                                              ; $6240: $37
	sub  a                                           ; $6241: $97
	ld   b, e                                        ; $6242: $43
	ld   l, d                                        ; $6243: $6a
	rst  ToBoot                                         ; $6244: $c7
	ld   h, a                                        ; $6245: $67
	xor  a                                           ; $6246: $af
	db   $ed                                         ; $6247: $ed
	adc  b                                           ; $6248: $88
	call c, $3155                                    ; $6249: $dc $55 $31
	sbc  b                                           ; $624c: $98
	ld   b, [hl]                                     ; $624d: $46
	ld   b, l                                        ; $624e: $45
	and  a                                           ; $624f: $a7
	ld   l, b                                        ; $6250: $68
	xor  a                                           ; $6251: $af
	xor  b                                           ; $6252: $a8
	sbc  h                                           ; $6253: $9c
	xor  e                                           ; $6254: $ab
	push bc                                          ; $6255: $c5
	ld   [hl], l                                     ; $6256: $75
	ld   b, l                                        ; $6257: $45
	ld   [hl], a                                     ; $6258: $77
	ld   h, a                                        ; $6259: $67
	ld   b, a                                        ; $625a: $47
	sub  a                                           ; $625b: $97
	ld   l, c                                        ; $625c: $69
	sbc  [hl]                                        ; $625d: $9e
	or   [hl]                                        ; $625e: $b6
	sbc  d                                           ; $625f: $9a
	ei                                               ; $6260: $fb
	ld   h, l                                        ; $6261: $65
	ld   h, a                                        ; $6262: $67
	ld   [hl], a                                     ; $6263: $77
	ld   b, [hl]                                     ; $6264: $46
	ld   [hl], a                                     ; $6265: $77
	ld   e, c                                        ; $6266: $59
	inc  hl                                          ; $6267: $23
	xor  c                                           ; $6268: $a9
	db   $eb                                         ; $6269: $eb
	and  [hl]                                        ; $626a: $a6
	cp   l                                           ; $626b: $bd
	xor  c                                           ; $626c: $a9
	ld   c, c                                        ; $626d: $49
	xor  c                                           ; $626e: $a9
	ld   [hl], h                                     ; $626f: $74
	ld   b, a                                        ; $6270: $47
	sub  a                                           ; $6271: $97
	ld   d, e                                        ; $6272: $53
	sbc  b                                           ; $6273: $98
	sub  a                                           ; $6274: $97
	ld   a, h                                        ; $6275: $7c
	cp   [hl]                                        ; $6276: $be
	sbc  b                                           ; $6277: $98
	sbc  d                                           ; $6278: $9a
	sbc  c                                           ; $6279: $99
	halt                                             ; $627a: $76
	sbc  b                                           ; $627b: $98
	ld   h, h                                        ; $627c: $64
	ld   h, [hl]                                     ; $627d: $66
	adc  c                                           ; $627e: $89
	ld   l, b                                        ; $627f: $68
	sub  a                                           ; $6280: $97
	ld   a, e                                        ; $6281: $7b
	xor  c                                           ; $6282: $a9
	cp   d                                           ; $6283: $ba
	sbc  c                                           ; $6284: $99
	xor  c                                           ; $6285: $a9
	and  a                                           ; $6286: $a7
	ld   d, l                                        ; $6287: $55
	halt                                             ; $6288: $76
	ld   a, b                                        ; $6289: $78
	ld   h, a                                        ; $628a: $67
	ld   h, a                                        ; $628b: $67
	ld   h, e                                        ; $628c: $63
	ld   l, h                                        ; $628d: $6c
	sub  a                                           ; $628e: $97
	rst  $20                                         ; $628f: $e7
	ld   a, l                                        ; $6290: $7d
	ld   a, b                                        ; $6291: $78
	and  a                                           ; $6292: $a7
	adc  d                                           ; $6293: $8a
	ld   [hl], l                                     ; $6294: $75
	halt                                             ; $6295: $76
	ld   a, c                                        ; $6296: $79
	ld   d, l                                        ; $6297: $55
	sbc  b                                           ; $6298: $98
	sbc  b                                           ; $6299: $98
	ld   a, b                                        ; $629a: $78
	adc  c                                           ; $629b: $89
	jp   c, Jump_0d6_5699                            ; $629c: $da $99 $56

	xor  d                                           ; $629f: $aa
	adc  e                                           ; $62a0: $8b
	ld   h, a                                        ; $62a1: $67
	ld   h, a                                        ; $62a2: $67
	sub  l                                           ; $62a3: $95
	ld   [hl], a                                     ; $62a4: $77
	ld   a, b                                        ; $62a5: $78
	xor  c                                           ; $62a6: $a9
	add  a                                           ; $62a7: $87
	ld   a, c                                        ; $62a8: $79
	cp   b                                           ; $62a9: $b8
	ld   a, b                                        ; $62aa: $78
	sbc  c                                           ; $62ab: $99
	add  a                                           ; $62ac: $87
	adc  c                                           ; $62ad: $89
	halt                                             ; $62ae: $76
	ld   l, c                                        ; $62af: $69
	add  a                                           ; $62b0: $87
	ld   [hl], a                                     ; $62b1: $77
	sub  [hl]                                        ; $62b2: $96
	ld   a, b                                        ; $62b3: $78
	add  a                                           ; $62b4: $87
	adc  b                                           ; $62b5: $88
	sbc  c                                           ; $62b6: $99
	adc  b                                           ; $62b7: $88
	ld   [hl], a                                     ; $62b8: $77
	ld   a, c                                        ; $62b9: $79
	sub  a                                           ; $62ba: $97
	sub  a                                           ; $62bb: $97
	ld   a, c                                        ; $62bc: $79
	ld   h, a                                        ; $62bd: $67
	sub  a                                           ; $62be: $97
	ld   a, b                                        ; $62bf: $78
	ld   l, b                                        ; $62c0: $68
	and  a                                           ; $62c1: $a7
	xor  b                                           ; $62c2: $a8
	ld   b, [hl]                                     ; $62c3: $46
	adc  d                                           ; $62c4: $8a
	and  a                                           ; $62c5: $a7
	adc  d                                           ; $62c6: $8a
	xor  b                                           ; $62c7: $a8
	ld   a, b                                        ; $62c8: $78
	ld   l, c                                        ; $62c9: $69
	xor  b                                           ; $62ca: $a8
	ld   a, b                                        ; $62cb: $78
	adc  b                                           ; $62cc: $88
	ld   [hl], a                                     ; $62cd: $77
	adc  c                                           ; $62ce: $89
	adc  b                                           ; $62cf: $88
	sub  a                                           ; $62d0: $97
	sbc  b                                           ; $62d1: $98
	sbc  b                                           ; $62d2: $98
	adc  b                                           ; $62d3: $88
	sbc  c                                           ; $62d4: $99
	ld   a, c                                        ; $62d5: $79
	adc  b                                           ; $62d6: $88
	adc  b                                           ; $62d7: $88
	adc  b                                           ; $62d8: $88
	adc  b                                           ; $62d9: $88
	adc  b                                           ; $62da: $88
	adc  b                                           ; $62db: $88
	adc  b                                           ; $62dc: $88
	adc  c                                           ; $62dd: $89
	sbc  c                                           ; $62de: $99
	adc  c                                           ; $62df: $89
	sbc  b                                           ; $62e0: $98
	adc  b                                           ; $62e1: $88
	sbc  b                                           ; $62e2: $98
	xor  b                                           ; $62e3: $a8
	adc  b                                           ; $62e4: $88
	adc  c                                           ; $62e5: $89
	sbc  c                                           ; $62e6: $99
	sbc  c                                           ; $62e7: $99
	adc  b                                           ; $62e8: $88
	sbc  c                                           ; $62e9: $99
	adc  c                                           ; $62ea: $89
	adc  b                                           ; $62eb: $88
	sbc  c                                           ; $62ec: $99
	adc  c                                           ; $62ed: $89
	sbc  c                                           ; $62ee: $99
	adc  c                                           ; $62ef: $89
	adc  b                                           ; $62f0: $88
	sbc  b                                           ; $62f1: $98
	adc  b                                           ; $62f2: $88
	adc  b                                           ; $62f3: $88
	adc  b                                           ; $62f4: $88
	sbc  c                                           ; $62f5: $99
	adc  c                                           ; $62f6: $89
	sbc  c                                           ; $62f7: $99
	sbc  b                                           ; $62f8: $98
	adc  c                                           ; $62f9: $89
	adc  c                                           ; $62fa: $89
	sbc  b                                           ; $62fb: $98
	sbc  c                                           ; $62fc: $99
	adc  b                                           ; $62fd: $88
	sbc  b                                           ; $62fe: $98
	adc  c                                           ; $62ff: $89
	adc  b                                           ; $6300: $88
	adc  c                                           ; $6301: $89
	adc  b                                           ; $6302: $88
	adc  b                                           ; $6303: $88
	adc  c                                           ; $6304: $89
	adc  b                                           ; $6305: $88
	adc  b                                           ; $6306: $88
	sbc  c                                           ; $6307: $99
	adc  b                                           ; $6308: $88
	adc  b                                           ; $6309: $88
	ld   a, b                                        ; $630a: $78
	adc  b                                           ; $630b: $88
	adc  b                                           ; $630c: $88
	adc  b                                           ; $630d: $88
	adc  b                                           ; $630e: $88
	add  a                                           ; $630f: $87
	adc  b                                           ; $6310: $88
	add  a                                           ; $6311: $87
	adc  c                                           ; $6312: $89
	adc  b                                           ; $6313: $88
	adc  b                                           ; $6314: $88
	adc  b                                           ; $6315: $88
	adc  b                                           ; $6316: $88
	adc  b                                           ; $6317: $88
	add  a                                           ; $6318: $87
	adc  b                                           ; $6319: $88
	ld   a, b                                        ; $631a: $78
	adc  b                                           ; $631b: $88
	ld   a, b                                        ; $631c: $78
	adc  b                                           ; $631d: $88
	add  a                                           ; $631e: $87
	adc  b                                           ; $631f: $88
	adc  b                                           ; $6320: $88
	adc  b                                           ; $6321: $88
	ld   a, b                                        ; $6322: $78
	adc  b                                           ; $6323: $88
	add  a                                           ; $6324: $87
	add  a                                           ; $6325: $87
	ld   a, b                                        ; $6326: $78
	adc  b                                           ; $6327: $88
	adc  b                                           ; $6328: $88
	ld   a, b                                        ; $6329: $78
	adc  b                                           ; $632a: $88
	add  a                                           ; $632b: $87
	adc  b                                           ; $632c: $88
	adc  b                                           ; $632d: $88
	add  a                                           ; $632e: $87
	adc  b                                           ; $632f: $88
	add  a                                           ; $6330: $87
	adc  b                                           ; $6331: $88
	ld   a, c                                        ; $6332: $79
	add  a                                           ; $6333: $87
	add  a                                           ; $6334: $87
	adc  b                                           ; $6335: $88
	adc  b                                           ; $6336: $88
	adc  b                                           ; $6337: $88
	add  a                                           ; $6338: $87
	ld   a, b                                        ; $6339: $78
	adc  b                                           ; $633a: $88
	adc  b                                           ; $633b: $88
	adc  b                                           ; $633c: $88
	add  a                                           ; $633d: $87
	adc  b                                           ; $633e: $88
	ld   a, b                                        ; $633f: $78
	adc  b                                           ; $6340: $88
	adc  b                                           ; $6341: $88
	adc  b                                           ; $6342: $88
	adc  b                                           ; $6343: $88
	adc  b                                           ; $6344: $88
	adc  b                                           ; $6345: $88
	adc  b                                           ; $6346: $88
	adc  b                                           ; $6347: $88
	ld   a, b                                        ; $6348: $78
	adc  b                                           ; $6349: $88
	add  a                                           ; $634a: $87
	adc  c                                           ; $634b: $89
	adc  b                                           ; $634c: $88
	adc  b                                           ; $634d: $88
	add  a                                           ; $634e: $87
	adc  b                                           ; $634f: $88
	ld   a, b                                        ; $6350: $78
	adc  b                                           ; $6351: $88
	adc  b                                           ; $6352: $88
	adc  b                                           ; $6353: $88
	adc  b                                           ; $6354: $88
	adc  b                                           ; $6355: $88
	adc  b                                           ; $6356: $88
	adc  b                                           ; $6357: $88
	add  a                                           ; $6358: $87
	adc  b                                           ; $6359: $88
	adc  b                                           ; $635a: $88
	adc  b                                           ; $635b: $88
	adc  b                                           ; $635c: $88
	adc  b                                           ; $635d: $88
	adc  b                                           ; $635e: $88
	add  a                                           ; $635f: $87
	adc  b                                           ; $6360: $88
	ld   a, b                                        ; $6361: $78
	adc  b                                           ; $6362: $88
	adc  b                                           ; $6363: $88
	adc  b                                           ; $6364: $88
	adc  b                                           ; $6365: $88
	adc  b                                           ; $6366: $88
	add  a                                           ; $6367: $87
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
	add  a                                           ; $6378: $87
	adc  b                                           ; $6379: $88
	adc  b                                           ; $637a: $88
	adc  b                                           ; $637b: $88
	add  a                                           ; $637c: $87
	adc  b                                           ; $637d: $88
	ld   a, b                                        ; $637e: $78
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
	add  a                                           ; $6397: $87

Call_0d6_6398:
	adc  b                                           ; $6398: $88
	adc  b                                           ; $6399: $88
	ld   a, b                                        ; $639a: $78
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
	ld   a, b                                        ; $63b0: $78
	adc  b                                           ; $63b1: $88
	adc  b                                           ; $63b2: $88
	adc  b                                           ; $63b3: $88
	adc  b                                           ; $63b4: $88
	adc  b                                           ; $63b5: $88
	adc  b                                           ; $63b6: $88
	adc  b                                           ; $63b7: $88
	adc  b                                           ; $63b8: $88
	adc  b                                           ; $63b9: $88
	adc  c                                           ; $63ba: $89
	sub  a                                           ; $63bb: $97
	adc  b                                           ; $63bc: $88
	adc  b                                           ; $63bd: $88
	adc  b                                           ; $63be: $88
	adc  b                                           ; $63bf: $88
	adc  b                                           ; $63c0: $88
	adc  b                                           ; $63c1: $88
	ld   a, b                                        ; $63c2: $78
	adc  b                                           ; $63c3: $88
	adc  b                                           ; $63c4: $88
	adc  b                                           ; $63c5: $88
	adc  b                                           ; $63c6: $88
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	adc  b                                           ; $63c9: $88
	adc  b                                           ; $63ca: $88
	sbc  b                                           ; $63cb: $98
	adc  b                                           ; $63cc: $88
	adc  b                                           ; $63cd: $88
	adc  b                                           ; $63ce: $88
	adc  b                                           ; $63cf: $88
	adc  b                                           ; $63d0: $88
	adc  b                                           ; $63d1: $88
	adc  c                                           ; $63d2: $89
	add  a                                           ; $63d3: $87
	adc  b                                           ; $63d4: $88
	adc  b                                           ; $63d5: $88
	adc  b                                           ; $63d6: $88
	add  a                                           ; $63d7: $87
	sbc  b                                           ; $63d8: $98
	adc  b                                           ; $63d9: $88
	adc  b                                           ; $63da: $88
	adc  b                                           ; $63db: $88
	adc  c                                           ; $63dc: $89
	ld   a, b                                        ; $63dd: $78
	adc  b                                           ; $63de: $88
	adc  b                                           ; $63df: $88
	adc  b                                           ; $63e0: $88
	adc  c                                           ; $63e1: $89
	adc  b                                           ; $63e2: $88
	ld   a, b                                        ; $63e3: $78
	adc  c                                           ; $63e4: $89
	add  a                                           ; $63e5: $87
	adc  b                                           ; $63e6: $88
	adc  c                                           ; $63e7: $89
	adc  b                                           ; $63e8: $88
	adc  b                                           ; $63e9: $88
	sbc  b                                           ; $63ea: $98
	adc  b                                           ; $63eb: $88
	ld   [hl], a                                     ; $63ec: $77
	adc  b                                           ; $63ed: $88
	adc  b                                           ; $63ee: $88
	adc  b                                           ; $63ef: $88
	ld   [hl], a                                     ; $63f0: $77
	adc  b                                           ; $63f1: $88
	adc  b                                           ; $63f2: $88
	ld   a, b                                        ; $63f3: $78
	sbc  c                                           ; $63f4: $99
	adc  b                                           ; $63f5: $88
	ld   a, b                                        ; $63f6: $78
	add  a                                           ; $63f7: $87
	adc  b                                           ; $63f8: $88
	adc  b                                           ; $63f9: $88
	ld   a, b                                        ; $63fa: $78
	ld   [hl], a                                     ; $63fb: $77
	adc  c                                           ; $63fc: $89
	adc  b                                           ; $63fd: $88
	adc  c                                           ; $63fe: $89
	adc  b                                           ; $63ff: $88
	add  a                                           ; $6400: $87
	ld   a, b                                        ; $6401: $78
	adc  b                                           ; $6402: $88
	sbc  b                                           ; $6403: $98
	ld   l, b                                        ; $6404: $68
	sub  a                                           ; $6405: $97
	adc  b                                           ; $6406: $88
	adc  b                                           ; $6407: $88
	add  a                                           ; $6408: $87
	ld   [hl], a                                     ; $6409: $77
	adc  b                                           ; $640a: $88
	ld   a, b                                        ; $640b: $78
	adc  b                                           ; $640c: $88
	ld   a, c                                        ; $640d: $79
	add  a                                           ; $640e: $87
	ld   a, c                                        ; $640f: $79
	add  a                                           ; $6410: $87
	add  a                                           ; $6411: $87
	ld   [hl], a                                     ; $6412: $77
	sbc  b                                           ; $6413: $98
	ld   [hl], a                                     ; $6414: $77
	ld   a, b                                        ; $6415: $78
	ld   [hl], a                                     ; $6416: $77
	sbc  b                                           ; $6417: $98
	adc  b                                           ; $6418: $88
	adc  b                                           ; $6419: $88
	adc  b                                           ; $641a: $88
	add  a                                           ; $641b: $87
	ld   [hl], a                                     ; $641c: $77
	sbc  b                                           ; $641d: $98
	ld   a, c                                        ; $641e: $79
	ld   [hl], a                                     ; $641f: $77
	add  a                                           ; $6420: $87
	adc  b                                           ; $6421: $88
	adc  b                                           ; $6422: $88
	xor  e                                           ; $6423: $ab
	and  a                                           ; $6424: $a7
	add  a                                           ; $6425: $87
	ld   h, a                                        ; $6426: $67
	sub  [hl]                                        ; $6427: $96
	adc  b                                           ; $6428: $88
	ld   l, b                                        ; $6429: $68
	sbc  c                                           ; $642a: $99
	sub  a                                           ; $642b: $97
	adc  b                                           ; $642c: $88
	ld   a, b                                        ; $642d: $78
	ld   [hl], a                                     ; $642e: $77
	add  a                                           ; $642f: $87
	ld   [hl], a                                     ; $6430: $77
	ld   a, b                                        ; $6431: $78
	add  a                                           ; $6432: $87
	ld   a, b                                        ; $6433: $78
	adc  c                                           ; $6434: $89
	sbc  c                                           ; $6435: $99
	sbc  b                                           ; $6436: $98
	ld   [hl], a                                     ; $6437: $77
	ld   [hl], a                                     ; $6438: $77
	ld   a, b                                        ; $6439: $78
	adc  b                                           ; $643a: $88
	ld   a, b                                        ; $643b: $78
	adc  b                                           ; $643c: $88
	sub  a                                           ; $643d: $97
	sbc  c                                           ; $643e: $99
	sub  a                                           ; $643f: $97
	adc  b                                           ; $6440: $88
	adc  b                                           ; $6441: $88
	ld   a, b                                        ; $6442: $78
	ld   [hl], a                                     ; $6443: $77
	adc  b                                           ; $6444: $88
	adc  c                                           ; $6445: $89
	sbc  b                                           ; $6446: $98
	sbc  b                                           ; $6447: $98
	ld   [hl], a                                     ; $6448: $77
	ld   a, c                                        ; $6449: $79
	sbc  b                                           ; $644a: $98
	ld   [hl], a                                     ; $644b: $77
	ld   a, c                                        ; $644c: $79
	sbc  b                                           ; $644d: $98
	sbc  c                                           ; $644e: $99
	add  a                                           ; $644f: $87
	sub  a                                           ; $6450: $97
	ld   a, b                                        ; $6451: $78
	adc  b                                           ; $6452: $88
	ld   [hl], a                                     ; $6453: $77
	adc  b                                           ; $6454: $88
	adc  b                                           ; $6455: $88
	sub  a                                           ; $6456: $97
	sbc  c                                           ; $6457: $99
	xor  c                                           ; $6458: $a9
	add  a                                           ; $6459: $87
	sbc  c                                           ; $645a: $99
	ld   [hl], a                                     ; $645b: $77
	ld   l, b                                        ; $645c: $68
	adc  c                                           ; $645d: $89
	ld   [hl], a                                     ; $645e: $77
	sbc  d                                           ; $645f: $9a
	and  a                                           ; $6460: $a7
	adc  d                                           ; $6461: $8a
	sub  a                                           ; $6462: $97
	ld   [hl], a                                     ; $6463: $77
	ld   l, c                                        ; $6464: $69
	ld   [hl], a                                     ; $6465: $77
	ld   a, c                                        ; $6466: $79
	ld   a, b                                        ; $6467: $78
	add  a                                           ; $6468: $87
	sub  a                                           ; $6469: $97
	sbc  b                                           ; $646a: $98
	sub  a                                           ; $646b: $97
	sbc  b                                           ; $646c: $98
	ld   a, c                                        ; $646d: $79
	sbc  c                                           ; $646e: $99
	ld   a, b                                        ; $646f: $78
	ld   a, b                                        ; $6470: $78
	sbc  c                                           ; $6471: $99
	adc  b                                           ; $6472: $88
	add  a                                           ; $6473: $87
	ld   [hl], a                                     ; $6474: $77
	add  a                                           ; $6475: $87
	sbc  b                                           ; $6476: $98

Jump_0d6_6477:
	add  a                                           ; $6477: $87
	ld   a, b                                        ; $6478: $78
	adc  c                                           ; $6479: $89
	ld   a, c                                        ; $647a: $79
	adc  b                                           ; $647b: $88
	ld   a, b                                        ; $647c: $78
	adc  b                                           ; $647d: $88
	ld   [hl], a                                     ; $647e: $77
	adc  b                                           ; $647f: $88
	xor  b                                           ; $6480: $a8
	adc  b                                           ; $6481: $88
	adc  b                                           ; $6482: $88
	add  a                                           ; $6483: $87
	adc  d                                           ; $6484: $8a
	adc  c                                           ; $6485: $89
	add  a                                           ; $6486: $87
	ld   a, b                                        ; $6487: $78
	adc  c                                           ; $6488: $89
	sub  a                                           ; $6489: $97
	sbc  b                                           ; $648a: $98
	ld   a, b                                        ; $648b: $78
	adc  c                                           ; $648c: $89
	add  a                                           ; $648d: $87
	add  a                                           ; $648e: $87
	adc  b                                           ; $648f: $88
	sbc  d                                           ; $6490: $9a
	ld   [hl], l                                     ; $6491: $75
	ld   e, c                                        ; $6492: $59
	cp   c                                           ; $6493: $b9
	add  [hl]                                        ; $6494: $86
	ld   a, e                                        ; $6495: $7b
	sbc  b                                           ; $6496: $98
	ld   [hl], a                                     ; $6497: $77
	adc  b                                           ; $6498: $88
	halt                                             ; $6499: $76
	adc  c                                           ; $649a: $89
	add  a                                           ; $649b: $87
	halt                                             ; $649c: $76
	ld   l, c                                        ; $649d: $69
	adc  d                                           ; $649e: $8a
	add  [hl]                                        ; $649f: $86
	sbc  d                                           ; $64a0: $9a
	xor  c                                           ; $64a1: $a9
	ld   h, [hl]                                     ; $64a2: $66
	cp   e                                           ; $64a3: $bb
	adc  b                                           ; $64a4: $88
	ld   [hl], a                                     ; $64a5: $77
	cp   b                                           ; $64a6: $b8
	ld   d, a                                        ; $64a7: $57
	sbc  d                                           ; $64a8: $9a
	sub  a                                           ; $64a9: $97
	ld   b, [hl]                                     ; $64aa: $46
	sbc  d                                           ; $64ab: $9a
	sub  h                                           ; $64ac: $94
	ld   e, b                                        ; $64ad: $58
	xor  c                                           ; $64ae: $a9
	ld   [hl], l                                     ; $64af: $75
	ld   a, d                                        ; $64b0: $7a
	cp   c                                           ; $64b1: $b9
	sub  [hl]                                        ; $64b2: $96
	ld   a, h                                        ; $64b3: $7c
	ret  z                                           ; $64b4: $c8

	ld   a, b                                        ; $64b5: $78
	adc  e                                           ; $64b6: $8b
	sub  [hl]                                        ; $64b7: $96
	ld   a, c                                        ; $64b8: $79
	sbc  b                                           ; $64b9: $98
	ld   [hl], h                                     ; $64ba: $74
	ld   a, d                                        ; $64bb: $7a
	add  l                                           ; $64bc: $85
	ld   b, l                                        ; $64bd: $45
	adc  b                                           ; $64be: $88
	halt                                             ; $64bf: $76
	ld   e, d                                        ; $64c0: $5a
	ret                                              ; $64c1: $c9


	sbc  d                                           ; $64c2: $9a
	ld   a, h                                        ; $64c3: $7c
	ld   [$9cb9], a                                  ; $64c4: $ea $b9 $9c
	or   a                                           ; $64c7: $b7
	sbc  c                                           ; $64c8: $99
	sbc  d                                           ; $64c9: $9a
	ld   h, c                                        ; $64ca: $61
	ld   e, c                                        ; $64cb: $59
	ld   h, h                                        ; $64cc: $64
	ld   hl, $3612                                   ; $64cd: $21 $12 $36
	adc  b                                           ; $64d0: $88
	xor  l                                           ; $64d1: $ad
	rst  $28                                         ; $64d2: $ef
	db   $ed                                         ; $64d3: $ed
	set  3, [hl]                                     ; $64d4: $cb $de
	db   $dd                                         ; $64d6: $dd
	xor  d                                           ; $64d7: $aa
	ld   a, c                                        ; $64d8: $79
	sub  a                                           ; $64d9: $97
	ld   h, l                                        ; $64da: $65
	ld   b, c                                        ; $64db: $41
	ld   de, $3311                                   ; $64dc: $11 $11 $33
	ld   e, d                                        ; $64df: $5a
	cp   a                                           ; $64e0: $bf
	db   $fd                                         ; $64e1: $fd
	rst  JumpTable                                         ; $64e2: $df
	db   $dd                                         ; $64e3: $dd
	call c, $dabc                                    ; $64e4: $dc $bc $da
	xor  b                                           ; $64e7: $a8
	sbc  c                                           ; $64e8: $99
	ld   h, l                                        ; $64e9: $65
	ld   b, d                                        ; $64ea: $42
	ld   de, $1511                                   ; $64eb: $11 $11 $15
	ld   a, d                                        ; $64ee: $7a
	set  7, a                                        ; $64ef: $cb $ff
	db   $ed                                         ; $64f1: $ed
	jp   c, $cddd                                    ; $64f2: $da $dd $cd

	cp   d                                           ; $64f5: $ba
	adc  d                                           ; $64f6: $8a
	ld   [hl], a                                     ; $64f7: $77
	ld   [hl], a                                     ; $64f8: $77
	ld   h, h                                        ; $64f9: $64
	ld   de, $1411                                   ; $64fa: $11 $11 $14
	ld   h, l                                        ; $64fd: $65
	sbc  h                                           ; $64fe: $9c
	rst  $38                                         ; $64ff: $ff
	db   $fd                                         ; $6500: $fd
	adc  $de                                         ; $6501: $ce $de
	cp   d                                           ; $6503: $ba
	xor  h                                           ; $6504: $ac
	sbc  b                                           ; $6505: $98
	halt                                             ; $6506: $76
	sbc  b                                           ; $6507: $98
	ld   h, h                                        ; $6508: $64
	ld   hl, $1111                                   ; $6509: $21 $11 $11
	inc  [hl]                                        ; $650c: $34
	sbc  l                                           ; $650d: $9d
	cp   a                                           ; $650e: $bf
	rst  $38                                         ; $650f: $ff
	cp   $99                                         ; $6510: $fe $99
	call z, Call_0d6_79ea                            ; $6512: $cc $ea $79
	xor  b                                           ; $6515: $a8
	add  [hl]                                        ; $6516: $86
	ld   d, a                                        ; $6517: $57
	ld   d, c                                        ; $6518: $51
	ld   de, $3411                                   ; $6519: $11 $11 $34
	ld   c, e                                        ; $651c: $4b
	cp   h                                           ; $651d: $bc
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	ret  z                                           ; $6520: $c8

	cp   l                                           ; $6521: $bd
	res  5, b                                        ; $6522: $cb $a8
	adc  c                                           ; $6524: $89
	ld   [hl], a                                     ; $6525: $77
	ld   h, a                                        ; $6526: $67
	ld   h, h                                        ; $6527: $64
	ld   hl, $1311                                   ; $6528: $21 $11 $13
	dec  [hl]                                        ; $652b: $35
	db   $db                                         ; $652c: $db
	rst  $38                                         ; $652d: $ff
	cp   $fd                                         ; $652e: $fe $fd
	xor  a                                           ; $6530: $af
	xor  h                                           ; $6531: $ac
	ret                                              ; $6532: $c9


	add  a                                           ; $6533: $87
	add  [hl]                                        ; $6534: $86
	xor  b                                           ; $6535: $a8
	ld   h, l                                        ; $6536: $65
	ld   de, $1111                                   ; $6537: $11 $11 $11
	ld   b, h                                        ; $653a: $44
	xor  d                                           ; $653b: $aa
	cp   a                                           ; $653c: $bf
	rst  $38                                         ; $653d: $ff
	rst  $38                                         ; $653e: $ff
	cp   e                                           ; $653f: $bb
	db   $eb                                         ; $6540: $eb
	cp   b                                           ; $6541: $b8
	sbc  c                                           ; $6542: $99
	sbc  b                                           ; $6543: $98
	ld   h, [hl]                                     ; $6544: $66
	ld   [hl], a                                     ; $6545: $77
	ld   d, e                                        ; $6546: $53
	ld   de, $1411                                   ; $6547: $11 $11 $14
	ld   c, b                                        ; $654a: $48
	call z, $feff                                    ; $654b: $cc $ff $fe
	db   $fc                                         ; $654e: $fc
	call c, $a9b9                                    ; $654f: $dc $b9 $a9
	ld   a, b                                        ; $6552: $78
	ld   a, b                                        ; $6553: $78
	ld   a, b                                        ; $6554: $78
	ld   h, l                                        ; $6555: $65
	ld   sp, $1111                                   ; $6556: $31 $11 $11
	inc  h                                           ; $6559: $24
	ret                                              ; $655a: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $655b: $cf
	rst  $38                                         ; $655c: $ff
	cp   $ac                                         ; $655d: $fe $ac
	cp   d                                           ; $655f: $ba
	cp   e                                           ; $6560: $bb
	ld   a, c                                        ; $6561: $79
	sub  [hl]                                        ; $6562: $96
	add  a                                           ; $6563: $87
	ld   [hl], a                                     ; $6564: $77
	ld   [hl], e                                     ; $6565: $73
	ld   de, $2311                                   ; $6566: $11 $11 $23
	ld   a, [hl-]                                    ; $6569: $3a
	xor  h                                           ; $656a: $ac
	rst  $38                                         ; $656b: $ff
	rst  $38                                         ; $656c: $ff
	ei                                               ; $656d: $fb
	db   $dd                                         ; $656e: $dd
	ret                                              ; $656f: $c9


	sbc  b                                           ; $6570: $98
	adc  b                                           ; $6571: $88
	ld   a, b                                        ; $6572: $78
	adc  b                                           ; $6573: $88
	ld   h, l                                        ; $6574: $65
	ld   sp, $1111                                   ; $6575: $31 $11 $11
	ld   d, h                                        ; $6578: $54
	ld   l, d                                        ; $6579: $6a
	rst  JumpTable                                         ; $657a: $df
	rst  $38                                         ; $657b: $ff
	cp   $ee                                         ; $657c: $fe $ee
	jp   z, $879b                                    ; $657e: $ca $9b $87

	halt                                             ; $6581: $76
	adc  b                                           ; $6582: $88
	add  [hl]                                        ; $6583: $86
	ld   h, h                                        ; $6584: $64
	ld   hl, $1511                                   ; $6585: $21 $11 $15
	ld   [hl], $8c                                   ; $6588: $36 $8c
	rst  $38                                         ; $658a: $ff
	db   $fc                                         ; $658b: $fc
	db   $fd                                         ; $658c: $fd
	db   $ed                                         ; $658d: $ed
	jp   z, Jump_0d6_78aa                            ; $658e: $ca $aa $78

	ld   h, a                                        ; $6591: $67
	ld   a, c                                        ; $6592: $79
	halt                                             ; $6593: $76
	ld   b, d                                        ; $6594: $42
	ld   hl, $3411                                   ; $6595: $21 $11 $34
	ld   l, b                                        ; $6598: $68
	xor  h                                           ; $6599: $ac
	rst  $38                                         ; $659a: $ff
	rst  $28                                         ; $659b: $ef
	call z, $bbdb                                    ; $659c: $cc $db $bb
	sbc  b                                           ; $659f: $98
	xor  b                                           ; $65a0: $a8
	ld   [hl], a                                     ; $65a1: $77
	ld   a, b                                        ; $65a2: $78
	add  l                                           ; $65a3: $85
	inc  sp                                          ; $65a4: $33
	ld   hl, $4411                                   ; $65a5: $21 $11 $44
	ld   l, b                                        ; $65a8: $68
	sbc  e                                           ; $65a9: $9b
	xor  $bd                                         ; $65aa: $ee $bd
	call z, $a9dc                                    ; $65ac: $cc $dc $a9
	sub  a                                           ; $65af: $97
	sbc  b                                           ; $65b0: $98
	ld   [hl], a                                     ; $65b1: $77
	sbc  b                                           ; $65b2: $98
	ld   [hl], a                                     ; $65b3: $77
	ld   d, l                                        ; $65b4: $55
	ld   [hl-], a                                    ; $65b5: $32
	ld   de, $5757                                   ; $65b6: $11 $57 $57
	ld   [hl], a                                     ; $65b9: $77

Call_0d6_65ba:
	sbc  e                                           ; $65ba: $9b
	xor  c                                           ; $65bb: $a9
	cp   d                                           ; $65bc: $ba
	xor  e                                           ; $65bd: $ab
	xor  c                                           ; $65be: $a9
	xor  c                                           ; $65bf: $a9
	cp   d                                           ; $65c0: $ba
	adc  c                                           ; $65c1: $89
	adc  c                                           ; $65c2: $89
	sbc  b                                           ; $65c3: $98
	ld   [hl], a                                     ; $65c4: $77
	add  a                                           ; $65c5: $87
	ld   h, l                                        ; $65c6: $65
	halt                                             ; $65c7: $76
	ld   l, b                                        ; $65c8: $68
	halt                                             ; $65c9: $76
	halt                                             ; $65ca: $76
	ld   h, a                                        ; $65cb: $67
	ld   [hl], a                                     ; $65cc: $77
	ld   a, b                                        ; $65cd: $78
	ld   a, b                                        ; $65ce: $78
	xor  d                                           ; $65cf: $aa
	xor  d                                           ; $65d0: $aa
	cp   e                                           ; $65d1: $bb
	xor  e                                           ; $65d2: $ab
	xor  d                                           ; $65d3: $aa
	cp   c                                           ; $65d4: $b9
	sbc  c                                           ; $65d5: $99
	adc  b                                           ; $65d6: $88
	adc  c                                           ; $65d7: $89
	sbc  c                                           ; $65d8: $99
	ld   a, b                                        ; $65d9: $78
	add  a                                           ; $65da: $87
	ld   [hl], a                                     ; $65db: $77
	ld   [hl], a                                     ; $65dc: $77
	ld   [hl], a                                     ; $65dd: $77
	ld   h, a                                        ; $65de: $67
	ld   h, a                                        ; $65df: $67
	ld   a, b                                        ; $65e0: $78
	adc  b                                           ; $65e1: $88
	sbc  b                                           ; $65e2: $98
	sbc  b                                           ; $65e3: $98
	adc  d                                           ; $65e4: $8a
	xor  c                                           ; $65e5: $a9
	xor  d                                           ; $65e6: $aa
	sbc  c                                           ; $65e7: $99
	sbc  c                                           ; $65e8: $99
	sbc  b                                           ; $65e9: $98
	adc  b                                           ; $65ea: $88
	xor  c                                           ; $65eb: $a9
	ld   a, b                                        ; $65ec: $78
	add  a                                           ; $65ed: $87
	halt                                             ; $65ee: $76
	ld   [hl], a                                     ; $65ef: $77
	ld   h, a                                        ; $65f0: $67
	ld   h, a                                        ; $65f1: $67
	add  [hl]                                        ; $65f2: $86
	ld   [hl], a                                     ; $65f3: $77
	ld   [hl], a                                     ; $65f4: $77
	ld   a, b                                        ; $65f5: $78
	ld   [hl], a                                     ; $65f6: $77
	adc  b                                           ; $65f7: $88
	sbc  b                                           ; $65f8: $98
	sbc  c                                           ; $65f9: $99
	adc  c                                           ; $65fa: $89
	xor  d                                           ; $65fb: $aa
	sbc  c                                           ; $65fc: $99
	adc  b                                           ; $65fd: $88
	sbc  c                                           ; $65fe: $99
	sbc  b                                           ; $65ff: $98
	sbc  b                                           ; $6600: $98
	ld   [hl], a                                     ; $6601: $77
	ld   h, [hl]                                     ; $6602: $66
	ld   h, [hl]                                     ; $6603: $66
	ld   d, l                                        ; $6604: $55
	ld   b, l                                        ; $6605: $45
	ld   h, [hl]                                     ; $6606: $66
	ld   d, l                                        ; $6607: $55
	ld   h, a                                        ; $6608: $67
	adc  b                                           ; $6609: $88
	sbc  b                                           ; $660a: $98
	xor  d                                           ; $660b: $aa
	xor  d                                           ; $660c: $aa
	sbc  d                                           ; $660d: $9a
	cp   d                                           ; $660e: $ba
	xor  d                                           ; $660f: $aa
	sbc  c                                           ; $6610: $99
	sbc  b                                           ; $6611: $98
	add  a                                           ; $6612: $87
	ld   [hl], a                                     ; $6613: $77
	halt                                             ; $6614: $76
	ld   d, h                                        ; $6615: $54
	ld   b, e                                        ; $6616: $43
	inc  hl                                          ; $6617: $23
	ld   b, [hl]                                     ; $6618: $46
	ld   h, a                                        ; $6619: $67
	ld   [hl], a                                     ; $661a: $77
	sbc  d                                           ; $661b: $9a
	xor  d                                           ; $661c: $aa
	xor  d                                           ; $661d: $aa
	cp   h                                           ; $661e: $bc
	cp   d                                           ; $661f: $ba
	xor  d                                           ; $6620: $aa
	xor  d                                           ; $6621: $aa
	xor  c                                           ; $6622: $a9
	sbc  c                                           ; $6623: $99
	add  a                                           ; $6624: $87
	halt                                             ; $6625: $76
	ld   h, [hl]                                     ; $6626: $66
	ld   b, e                                        ; $6627: $43
	inc  sp                                          ; $6628: $33
	inc  h                                           ; $6629: $24
	ld   h, l                                        ; $662a: $65
	ld   e, b                                        ; $662b: $58
	sbc  d                                           ; $662c: $9a
	cp   d                                           ; $662d: $ba
	sbc  d                                           ; $662e: $9a
	cp   e                                           ; $662f: $bb
	cp   e                                           ; $6630: $bb
	res  7, d                                        ; $6631: $cb $ba
	sbc  b                                           ; $6633: $98
	xor  c                                           ; $6634: $a9
	adc  b                                           ; $6635: $88
	ld   [hl], a                                     ; $6636: $77
	add  a                                           ; $6637: $87
	ld   d, h                                        ; $6638: $54
	ld   b, e                                        ; $6639: $43
	ld   [hl-], a                                    ; $663a: $32
	dec  h                                           ; $663b: $25
	ld   h, [hl]                                     ; $663c: $66
	sbc  b                                           ; $663d: $98
	adc  e                                           ; $663e: $8b
	cp   d                                           ; $663f: $ba
	xor  d                                           ; $6640: $aa
	cp   h                                           ; $6641: $bc
	call c, $baba                                    ; $6642: $dc $ba $ba
	sbc  b                                           ; $6645: $98
	adc  b                                           ; $6646: $88
	xor  c                                           ; $6647: $a9
	ld   [hl], a                                     ; $6648: $77
	ld   h, l                                        ; $6649: $65
	ld   h, l                                        ; $664a: $65
	ld   [hl+], a                                    ; $664b: $22
	ld   hl, $5647                                   ; $664c: $21 $47 $56
	xor  b                                           ; $664f: $a8
	cp   h                                           ; $6650: $bc
	xor  d                                           ; $6651: $aa
	call z, $dbcc                                    ; $6652: $cc $cc $db
	cp   e                                           ; $6655: $bb
	sbc  d                                           ; $6656: $9a
	sbc  b                                           ; $6657: $98
	ld   a, b                                        ; $6658: $78
	sbc  b                                           ; $6659: $98
	ld   [hl], a                                     ; $665a: $77
	ld   d, h                                        ; $665b: $54
	ld   b, d                                        ; $665c: $42
	ld   de, $7612                                   ; $665d: $11 $12 $76
	ld   a, d                                        ; $6660: $7a
	sbc  d                                           ; $6661: $9a
	db   $dd                                         ; $6662: $dd
	res  7, h                                        ; $6663: $cb $bc
	db   $dd                                         ; $6665: $dd
	res  5, d                                        ; $6666: $cb $aa
	sbc  b                                           ; $6668: $98
	adc  c                                           ; $6669: $89
	sbc  b                                           ; $666a: $98
	sub  [hl]                                        ; $666b: $96
	ld   h, [hl]                                     ; $666c: $66
	ld   b, d                                        ; $666d: $42
	ld   de, $5711                                   ; $666e: $11 $11 $57
	ld   l, c                                        ; $6671: $69
	cp   c                                           ; $6672: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6673: $cf
	db   $dd                                         ; $6674: $dd
	db   $ed                                         ; $6675: $ed

Jump_0d6_6676:
	db   $dd                                         ; $6676: $dd
	cp   d                                           ; $6677: $ba
	cp   e                                           ; $6678: $bb
	xor  b                                           ; $6679: $a8
	ld   a, b                                        ; $667a: $78
	adc  d                                           ; $667b: $8a
	add  [hl]                                        ; $667c: $86
	ld   d, l                                        ; $667d: $55
	ld   b, d                                        ; $667e: $42
	ld   de, $4a11                                   ; $667f: $11 $11 $4a
	ld   l, b                                        ; $6682: $68
	cp   d                                           ; $6683: $ba
	rst  JumpTable                                         ; $6684: $df
	db   $ed                                         ; $6685: $ed
	sbc  $cd                                         ; $6686: $de $cd
	reti                                             ; $6688: $d9


	sbc  e                                           ; $6689: $9b
	xor  b                                           ; $668a: $a8
	sbc  b                                           ; $668b: $98
	sbc  d                                           ; $668c: $9a
	and  l                                           ; $668d: $a5
	ld   b, l                                        ; $668e: $45
	ld   sp, $1111                                   ; $668f: $31 $11 $11
	ld   l, c                                        ; $6692: $69
	ld   l, e                                        ; $6693: $6b
	call c, $ecff                                    ; $6694: $dc $ff $ec
	call c, $c9cc                                    ; $6697: $dc $cc $c9
	sbc  d                                           ; $669a: $9a
	sbc  b                                           ; $669b: $98
	adc  b                                           ; $669c: $88
	xor  e                                           ; $669d: $ab
	cp   b                                           ; $669e: $b8
	ld   d, h                                        ; $669f: $54
	ld   de, $1111                                   ; $66a0: $11 $11 $11
	ld   a, d                                        ; $66a3: $7a
	sbc  l                                           ; $66a4: $9d
	cp   $ff                                         ; $66a5: $fe $ff
	db   $fc                                         ; $66a7: $fc
	res  3, e                                        ; $66a8: $cb $9b
	cp   b                                           ; $66aa: $b8
	adc  d                                           ; $66ab: $8a
	sbc  c                                           ; $66ac: $99
	sbc  e                                           ; $66ad: $9b
	cp   d                                           ; $66ae: $ba
	and  a                                           ; $66af: $a7
	ld   d, h                                        ; $66b0: $54
	ld   de, $1111                                   ; $66b1: $11 $11 $11
	xor  d                                           ; $66b4: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66b5: $cf
	rst  $38                                         ; $66b6: $ff
	rst  $38                                         ; $66b7: $ff
	call c, $acba                                    ; $66b8: $dc $ba $ac
	sub  [hl]                                        ; $66bb: $96
	ld   a, c                                        ; $66bc: $79
	sbc  c                                           ; $66bd: $99
	xor  e                                           ; $66be: $ab
	cp   e                                           ; $66bf: $bb
	and  [hl]                                        ; $66c0: $a6
	ld   [hl-], a                                    ; $66c1: $32
	ld   de, $1211                                   ; $66c2: $11 $11 $12
	set  7, a                                        ; $66c5: $cb $ff
	rst  $28                                         ; $66c7: $ef
	rst  $38                                         ; $66c8: $ff
	cp   d                                           ; $66c9: $ba
	sbc  b                                           ; $66ca: $98
	xor  d                                           ; $66cb: $aa
	add  a                                           ; $66cc: $87
	adc  c                                           ; $66cd: $89
	xor  d                                           ; $66ce: $aa
	xor  d                                           ; $66cf: $aa
	xor  e                                           ; $66d0: $ab
	or   a                                           ; $66d1: $b7
	ld   sp, $1111                                   ; $66d2: $31 $11 $11
	dec  d                                           ; $66d5: $15
	db   $dd                                         ; $66d6: $dd
	rst  $38                                         ; $66d7: $ff
	rst  $38                                         ; $66d8: $ff
	rst  $38                                         ; $66d9: $ff
	cp   c                                           ; $66da: $b9
	add  [hl]                                        ; $66db: $86
	xor  e                                           ; $66dc: $ab
	ld   [hl], a                                     ; $66dd: $77
	sbc  b                                           ; $66de: $98
	call z, $abbb                                    ; $66df: $cc $bb $ab
	and  [hl]                                        ; $66e2: $a6
	ld   hl, $1111                                   ; $66e3: $21 $11 $11
	ld   d, $ee                                      ; $66e6: $16 $ee
	rst  $38                                         ; $66e8: $ff
	rst  $38                                         ; $66e9: $ff
	rst  $38                                         ; $66ea: $ff
	and  a                                           ; $66eb: $a7
	ld   h, l                                        ; $66ec: $65
	sbc  e                                           ; $66ed: $9b
	sbc  b                                           ; $66ee: $98
	sbc  d                                           ; $66ef: $9a
	xor  e                                           ; $66f0: $ab
	call $95bb                                       ; $66f1: $cd $bb $95
	ld   hl, $1111                                   ; $66f4: $21 $11 $11
	inc  d                                           ; $66f7: $14
	rst  $28                                         ; $66f8: $ef
	rst  $38                                         ; $66f9: $ff
	rst  $38                                         ; $66fa: $ff
	cp   $87                                         ; $66fb: $fe $87
	ld   h, l                                        ; $66fd: $65
	sbc  h                                           ; $66fe: $9c
	xor  c                                           ; $66ff: $a9
	xor  d                                           ; $6700: $aa
	cp   l                                           ; $6701: $bd
	db   $ed                                         ; $6702: $ed
	call z, $1184                                    ; $6703: $cc $84 $11
	ld   de, $1111                                   ; $6706: $11 $11 $11
	rst  $28                                         ; $6709: $ef
	rst  $38                                         ; $670a: $ff
	cp   $ff                                         ; $670b: $fe $ff
	sub  l                                           ; $670d: $95
	ld   h, l                                        ; $670e: $65
	ld   a, h                                        ; $670f: $7c
	ret  c                                           ; $6710: $d8

	xor  h                                           ; $6711: $ac
	call $bced                                       ; $6712: $cd $ed $bc
	or   [hl]                                        ; $6715: $b6
	ld   hl, $1111                                   ; $6716: $21 $11 $11
	ld   de, $ff4f                                   ; $6719: $11 $4f $ff
	rst  $38                                         ; $671c: $ff
	cp   l                                           ; $671d: $bd
	ret  c                                           ; $671e: $d8

	ld   [hl], a                                     ; $671f: $77
	ld   e, b                                        ; $6720: $58
	res  5, h                                        ; $6721: $cb $ac
	set  1, [hl]                                     ; $6723: $cb $ce
	call z, Call_0d6_42a9                            ; $6725: $cc $a9 $42
	ld   bc, $1111                                   ; $6728: $01 $11 $11
	inc  d                                           ; $672b: $14
	rst  $38                                         ; $672c: $ff
	rst  $38                                         ; $672d: $ff
	db   $fc                                         ; $672e: $fc
	jp   c, Jump_0d6_7765                            ; $672f: $da $65 $77

	sbc  l                                           ; $6732: $9d
	jp   z, $bdbb                                    ; $6733: $ca $bb $bd

	call c, $85ba                                    ; $6736: $dc $ba $85
	ld   sp, $1111                                   ; $6739: $31 $11 $11
	ld   de, $ff1e                                   ; $673c: $11 $1e $ff
	rst  $38                                         ; $673f: $ff
	cp   d                                           ; $6740: $ba
	xor  c                                           ; $6741: $a9
	adc  c                                           ; $6742: $89
	ld   l, b                                        ; $6743: $68
	call $bacd                                       ; $6744: $cd $cd $ba
	adc  $dc                                         ; $6747: $ce $dc
	or   a                                           ; $6749: $b7
	ld   b, e                                        ; $674a: $43
	ld   hl, $1111                                   ; $674b: $21 $11 $11
	ld   de, $ff8f                                   ; $674e: $11 $8f $ff
	db   $fd                                         ; $6751: $fd
	cp   h                                           ; $6752: $bc
	sub  a                                           ; $6753: $97
	add  [hl]                                        ; $6754: $86
	ld   a, h                                        ; $6755: $7c
	db   $ec                                         ; $6756: $ec
	call z, $ddbb                                    ; $6757: $cc $bb $dd
	call z, Call_0d6_4397                            ; $675a: $cc $97 $43
	ld   de, $1111                                   ; $675d: $11 $11 $11
	ld   de, $ffbf                                   ; $6760: $11 $bf $ff
	ei                                               ; $6763: $fb
	xor  d                                           ; $6764: $aa
	sub  a                                           ; $6765: $97
	ld   [hl], a                                     ; $6766: $77
	sbc  h                                           ; $6767: $9c
	db   $fd                                         ; $6768: $fd
	db   $db                                         ; $6769: $db
	cp   e                                           ; $676a: $bb
	call z, $86ba                                    ; $676b: $cc $ba $86
	ld   b, e                                        ; $676e: $43
	ld   de, $1111                                   ; $676f: $11 $11 $11
	ld   de, $ffcf                                   ; $6772: $11 $cf $ff
	ei                                               ; $6775: $fb
	xor  d                                           ; $6776: $aa
	sbc  c                                           ; $6777: $99
	adc  b                                           ; $6778: $88
	sbc  l                                           ; $6779: $9d
	db   $fd                                         ; $677a: $fd
	cp   c                                           ; $677b: $b9
	xor  e                                           ; $677c: $ab
	call $86cb                                       ; $677d: $cd $cb $86
	ld   b, e                                        ; $6780: $43
	ld   de, $1111                                   ; $6781: $11 $11 $11
	ld   de, $ff9f                                   ; $6784: $11 $9f $ff
	ld   a, [$9aab]                                  ; $6787: $fa $ab $9a

jr_0d6_678a:
	and  a                                           ; $678a: $a7
	adc  h                                           ; $678b: $8c
	db   $dd                                         ; $678c: $dd
	res  5, d                                        ; $678d: $cb $aa
	db   $db                                         ; $678f: $db
	cp   e                                           ; $6790: $bb
	sub  [hl]                                        ; $6791: $96
	ld   d, h                                        ; $6792: $54
	ld   hl, $1111                                   ; $6793: $21 $11 $11
	ld   de, $ff6d                                   ; $6796: $11 $6d $ff
	db   $fd                                         ; $6799: $fd
	cp   d                                           ; $679a: $ba
	sbc  c                                           ; $679b: $99
	adc  b                                           ; $679c: $88
	xor  e                                           ; $679d: $ab
	db   $ed                                         ; $679e: $ed
	call z, $bcab                                    ; $679f: $cc $ab $bc
	cp   h                                           ; $67a2: $bc
	cp   b                                           ; $67a3: $b8
	ld   h, h                                        ; $67a4: $64
	ld   [hl-], a                                    ; $67a5: $32
	ld   de, $1111                                   ; $67a6: $11 $11 $11
	jr   jr_0d6_678a                                 ; $67a9: $18 $df

	cp   $aa                                         ; $67ab: $fe $aa
	jp   z, $7a99                                    ; $67ad: $ca $99 $7a

	rst  $28                                         ; $67b0: $ef
	res  7, d                                        ; $67b1: $cb $ba
	cp   h                                           ; $67b3: $bc
	db   $db                                         ; $67b4: $db
	jp   z, Jump_0d6_5476                            ; $67b5: $ca $76 $54

jr_0d6_67b8:
	ld   [hl-], a                                    ; $67b8: $32
	ld   de, $1111                                   ; $67b9: $11 $11 $11
	ld   a, e                                        ; $67bc: $7b
	rst  $28                                         ; $67bd: $ef
	ld   [$9aac], a                                  ; $67be: $ea $ac $9a
	xor  b                                           ; $67c1: $a8
	xor  l                                           ; $67c2: $ad
	cp   $da                                         ; $67c3: $fe $da
	xor  d                                           ; $67c5: $aa
	call z, $98cb                                    ; $67c6: $cc $cb $98
	halt                                             ; $67c9: $76
	ld   b, e                                        ; $67ca: $43
	ld   hl, $1111                                   ; $67cb: $21 $11 $11
	ld   [de], a                                     ; $67ce: $12
	sbc  e                                           ; $67cf: $9b
	rst  $38                                         ; $67d0: $ff
	cp   e                                           ; $67d1: $bb
	cp   e                                           ; $67d2: $bb
	xor  d                                           ; $67d3: $aa
	sbc  c                                           ; $67d4: $99
	cp   [hl]                                        ; $67d5: $be
	db   $dd                                         ; $67d6: $dd
	ret                                              ; $67d7: $c9


	sbc  e                                           ; $67d8: $9b
	call z, Call_0d6_77ca                            ; $67d9: $cc $ca $77
	ld   h, [hl]                                     ; $67dc: $66
	ld   d, h                                        ; $67dd: $54
	ld   hl, $1111                                   ; $67de: $21 $11 $11
	ld   [de], a                                     ; $67e1: $12
	sbc  e                                           ; $67e2: $9b
	cp   $bb                                         ; $67e3: $fe $bb
	res  7, e                                        ; $67e5: $cb $bb
	adc  d                                           ; $67e7: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67e8: $cf
	db   $ec                                         ; $67e9: $ec
	xor  c                                           ; $67ea: $a9
	cp   e                                           ; $67eb: $bb
	cp   e                                           ; $67ec: $bb
	xor  b                                           ; $67ed: $a8
	ld   [hl], a                                     ; $67ee: $77
	ld   h, l                                        ; $67ef: $65
	ld   d, l                                        ; $67f0: $55
	ld   b, e                                        ; $67f1: $43
	ld   de, $1211                                   ; $67f2: $11 $11 $12
	sbc  c                                           ; $67f5: $99
	sbc  $bc                                         ; $67f6: $de $bc
	res  5, e                                        ; $67f8: $cb $ab
	xor  e                                           ; $67fa: $ab
	sbc  $dc                                         ; $67fb: $de $dc
	cp   d                                           ; $67fd: $ba
	xor  d                                           ; $67fe: $aa
	xor  c                                           ; $67ff: $a9
	xor  c                                           ; $6800: $a9
	adc  b                                           ; $6801: $88
	ld   [hl], a                                     ; $6802: $77
	ld   h, [hl]                                     ; $6803: $66
	ld   d, h                                        ; $6804: $54
	ld   hl, $1111                                   ; $6805: $21 $11 $11
	jr   c, jr_0d6_67b8                              ; $6808: $38 $ae

	db   $db                                         ; $680a: $db
	call c, $baab                                    ; $680b: $dc $ab $ba
	cp   [hl]                                        ; $680e: $be
	db   $fd                                         ; $680f: $fd
	cp   c                                           ; $6810: $b9
	sbc  d                                           ; $6811: $9a
	xor  d                                           ; $6812: $aa
	sbc  d                                           ; $6813: $9a
	sbc  d                                           ; $6814: $9a
	sbc  b                                           ; $6815: $98
	ld   [hl], a                                     ; $6816: $77
	halt                                             ; $6817: $76
	ld   b, c                                        ; $6818: $41
	ld   de, $1411                                   ; $6819: $11 $11 $14
	ld   a, c                                        ; $681c: $79
	call c, $ccbd                                    ; $681d: $dc $bd $cc
	cp   e                                           ; $6820: $bb
	xor  h                                           ; $6821: $ac
	xor  $cb                                         ; $6822: $ee $cb
	sbc  c                                           ; $6824: $99
	xor  e                                           ; $6825: $ab
	xor  c                                           ; $6826: $a9
	xor  c                                           ; $6827: $a9
	xor  c                                           ; $6828: $a9
	sbc  b                                           ; $6829: $98
	add  a                                           ; $682a: $87
	ld   h, l                                        ; $682b: $65
	ld   hl, $1111                                   ; $682c: $21 $11 $11
	dec  d                                           ; $682f: $15
	adc  h                                           ; $6830: $8c
	jp   z, $ddcd                                    ; $6831: $ca $cd $dd

	xor  d                                           ; $6834: $aa
	cp   [hl]                                        ; $6835: $be
	db   $ed                                         ; $6836: $ed
	cp   d                                           ; $6837: $ba
	xor  h                                           ; $6838: $ac
	cp   d                                           ; $6839: $ba
	xor  c                                           ; $683a: $a9
	sbc  c                                           ; $683b: $99
	xor  b                                           ; $683c: $a8
	ld   a, b                                        ; $683d: $78
	adc  c                                           ; $683e: $89
	ld   [hl], h                                     ; $683f: $74
	ld   hl, $1111                                   ; $6840: $21 $11 $11
	ld   d, $7c                                      ; $6843: $16 $7c
	sbc  d                                           ; $6845: $9a
	call c, $cadc                                    ; $6846: $dc $dc $ca
	rst  JumpTable                                         ; $6849: $df
	db   $ed                                         ; $684a: $ed
	cp   e                                           ; $684b: $bb
	cp   e                                           ; $684c: $bb
	xor  c                                           ; $684d: $a9
	sbc  c                                           ; $684e: $99
	sbc  c                                           ; $684f: $99
	sbc  c                                           ; $6850: $99
	sbc  c                                           ; $6851: $99
	sbc  c                                           ; $6852: $99
	ld   [hl], l                                     ; $6853: $75
	ld   hl, $1111                                   ; $6854: $21 $11 $11
	dec  d                                           ; $6857: $15
	ld   l, e                                        ; $6858: $6b
	adc  c                                           ; $6859: $89
	db   $dd                                         ; $685a: $dd
	db   $ed                                         ; $685b: $ed
	call z, $fdff                                    ; $685c: $cc $ff $fd
	xor  d                                           ; $685f: $aa
	cp   e                                           ; $6860: $bb
	sbc  b                                           ; $6861: $98
	adc  b                                           ; $6862: $88
	xor  c                                           ; $6863: $a9
	sbc  b                                           ; $6864: $98
	sbc  d                                           ; $6865: $9a
	sbc  c                                           ; $6866: $99
	ld   [hl], h                                     ; $6867: $74
	ld   hl, $1111                                   ; $6868: $21 $11 $11
	inc  d                                           ; $686b: $14
	ld   c, b                                        ; $686c: $48
	ld   [hl], a                                     ; $686d: $77
	cp   l                                           ; $686e: $bd
	xor  $ed                                         ; $686f: $ee $ed
	rst  $38                                         ; $6871: $ff
	cp   $cb                                         ; $6872: $fe $cb
	res  3, b                                        ; $6874: $cb $98
	adc  b                                           ; $6876: $88
	xor  c                                           ; $6877: $a9
	adc  b                                           ; $6878: $88
	adc  c                                           ; $6879: $89
	xor  c                                           ; $687a: $a9
	halt                                             ; $687b: $76
	ld   b, e                                        ; $687c: $43
	ld   de, $1111                                   ; $687d: $11 $11 $11
	dec  [hl]                                        ; $6880: $35
	ld   d, l                                        ; $6881: $55
	xor  h                                           ; $6882: $ac
	sbc  $dd                                         ; $6883: $de $dd
	rst  $38                                         ; $6885: $ff
	rst  $38                                         ; $6886: $ff
	db   $ec                                         ; $6887: $ec
	call $88b8                                       ; $6888: $cd $b8 $88
	sbc  c                                           ; $688b: $99
	ld   [hl], a                                     ; $688c: $77
	adc  d                                           ; $688d: $8a
	xor  d                                           ; $688e: $aa
	add  a                                           ; $688f: $87
	ld   h, l                                        ; $6890: $65
	ld   sp, $1111                                   ; $6891: $31 $11 $11
	ld   de, $5934                                   ; $6894: $11 $34 $59
	cp   e                                           ; $6897: $bb
	adc  $ef                                         ; $6898: $ce $ef
	rst  $38                                         ; $689a: $ff
	cp   $ed                                         ; $689b: $fe $ed
	jp   c, $8899                                    ; $689d: $da $99 $88

	ld   [hl], a                                     ; $68a0: $77
	ld   h, a                                        ; $68a1: $67
	adc  b                                           ; $68a2: $88
	add  a                                           ; $68a3: $87
	ld   [hl], a                                     ; $68a4: $77
	ld   h, h                                        ; $68a5: $64
	ld   sp, $1111                                   ; $68a6: $31 $11 $11

Call_0d6_68a9:
	ld   [hl+], a                                    ; $68a9: $22
	inc  hl                                          ; $68aa: $23
	ld   d, [hl]                                     ; $68ab: $56
	ld   a, c                                        ; $68ac: $79
	cp   h                                           ; $68ad: $bc
	rst  JumpTable                                         ; $68ae: $df
	rst  $38                                         ; $68af: $ff
	cp   $ed                                         ; $68b0: $fe $ed
	call c, $baca                                    ; $68b2: $dc $ca $ba
	xor  d                                           ; $68b5: $aa
	sbc  c                                           ; $68b6: $99
	sbc  b                                           ; $68b7: $98
	adc  b                                           ; $68b8: $88
	add  a                                           ; $68b9: $87
	ld   h, l                                        ; $68ba: $65
	ld   b, h                                        ; $68bb: $44
	ld   [hl-], a                                    ; $68bc: $32
	ld   de, $1111                                   ; $68bd: $11 $11 $11
	ld   de, $4713                                   ; $68c0: $11 $13 $47
	sbc  e                                           ; $68c3: $9b
	rst  JumpTable                                         ; $68c4: $df
	rst  $38                                         ; $68c5: $ff
	rst  $38                                         ; $68c6: $ff
	rst  $38                                         ; $68c7: $ff
	rst  $38                                         ; $68c8: $ff
	rst  $38                                         ; $68c9: $ff
	call c, $87a9                                    ; $68ca: $dc $a9 $87
	ld   h, l                                        ; $68cd: $65
	ld   b, e                                        ; $68ce: $43
	ld   [hl-], a                                    ; $68cf: $32
	ld   [hl+], a                                    ; $68d0: $22
	ld   de, $1111                                   ; $68d1: $11 $11 $11
	ld   de, $1311                                   ; $68d4: $11 $11 $13
	ld   d, a                                        ; $68d7: $57
	xor  l                                           ; $68d8: $ad
	rst  $28                                         ; $68d9: $ef
	rst  $38                                         ; $68da: $ff
	rst  $38                                         ; $68db: $ff
	rst  $38                                         ; $68dc: $ff
	rst  $38                                         ; $68dd: $ff
	rst  $38                                         ; $68de: $ff
	db   $eb                                         ; $68df: $eb
	xor  c                                           ; $68e0: $a9
	add  a                                           ; $68e1: $87
	ld   h, l                                        ; $68e2: $65
	ld   b, e                                        ; $68e3: $43
	ld   [hl-], a                                    ; $68e4: $32
	ld   hl, $1111                                   ; $68e5: $21 $11 $11
	ld   de, $1111                                   ; $68e8: $11 $11 $11
	ld   [de], a                                     ; $68eb: $12
	ld   b, a                                        ; $68ec: $47
	xor  h                                           ; $68ed: $ac
	rst  $28                                         ; $68ee: $ef
	rst  $38                                         ; $68ef: $ff
	rst  $38                                         ; $68f0: $ff
	rst  $38                                         ; $68f1: $ff
	rst  $38                                         ; $68f2: $ff
	rst  $38                                         ; $68f3: $ff
	call c, $97b9                                    ; $68f4: $dc $b9 $97
	ld   h, l                                        ; $68f7: $65
	ld   b, e                                        ; $68f8: $43
	ld   [hl-], a                                    ; $68f9: $32
	ld   [hl+], a                                    ; $68fa: $22
	ld   de, $1111                                   ; $68fb: $11 $11 $11
	ld   de, $1111                                   ; $68fe: $11 $11 $11
	ld   [hl], $9b                                   ; $6901: $36 $9b
	rst  JumpTable                                         ; $6903: $df
	rst  $38                                         ; $6904: $ff
	rst  $38                                         ; $6905: $ff
	rst  $38                                         ; $6906: $ff
	rst  $38                                         ; $6907: $ff
	rst  $38                                         ; $6908: $ff
	db   $fd                                         ; $6909: $fd
	jp   z, Jump_0d6_7698                            ; $690a: $ca $98 $76

	ld   d, h                                        ; $690d: $54
	inc  sp                                          ; $690e: $33
	ld   [hl+], a                                    ; $690f: $22
	ld   hl, $1111                                   ; $6910: $21 $11 $11
	ld   de, $1111                                   ; $6913: $11 $11 $11
	inc  d                                           ; $6916: $14
	ld   a, d                                        ; $6917: $7a
	adc  $ff                                         ; $6918: $ce $ff
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	rst  $38                                         ; $691c: $ff
	rst  $38                                         ; $691d: $ff
	rst  $38                                         ; $691e: $ff
	call c, $87a9                                    ; $691f: $dc $a9 $87
	ld   h, l                                        ; $6922: $65
	ld   b, e                                        ; $6923: $43
	ld   [hl-], a                                    ; $6924: $32
	ld   [hl+], a                                    ; $6925: $22
	ld   de, $1111                                   ; $6926: $11 $11 $11
	ld   de, $1111                                   ; $6929: $11 $11 $11
	ld   b, [hl]                                     ; $692c: $46
	sbc  e                                           ; $692d: $9b
	rst  $28                                         ; $692e: $ef
	rst  $38                                         ; $692f: $ff
	rst  $38                                         ; $6930: $ff
	rst  $38                                         ; $6931: $ff
	rst  $38                                         ; $6932: $ff
	rst  $38                                         ; $6933: $ff
	cp   $cb                                         ; $6934: $fe $cb
	xor  b                                           ; $6936: $a8
	halt                                             ; $6937: $76
	ld   d, h                                        ; $6938: $54
	ld   [hl-], a                                    ; $6939: $32
	ld   [hl+], a                                    ; $693a: $22
	ld   hl, $1111                                   ; $693b: $21 $11 $11
	ld   de, $1111                                   ; $693e: $11 $11 $11
	inc  de                                          ; $6941: $13
	ld   l, c                                        ; $6942: $69
	cp   [hl]                                        ; $6943: $be
	rst  $38                                         ; $6944: $ff
	rst  $38                                         ; $6945: $ff
	rst  $38                                         ; $6946: $ff
	rst  $38                                         ; $6947: $ff
	rst  $38                                         ; $6948: $ff
	rst  $38                                         ; $6949: $ff
	db   $ed                                         ; $694a: $ed
	cp   d                                           ; $694b: $ba
	add  a                                           ; $694c: $87
	ld   h, l                                        ; $694d: $65
	ld   b, h                                        ; $694e: $44
	ld   [hl-], a                                    ; $694f: $32
	ld   [hl+], a                                    ; $6950: $22
	ld   hl, $1111                                   ; $6951: $21 $11 $11
	ld   de, $1111                                   ; $6954: $11 $11 $11
	inc  de                                          ; $6957: $13
	ld   a, c                                        ; $6958: $79
	cp   [hl]                                        ; $6959: $be
	rst  $38                                         ; $695a: $ff
	rst  $38                                         ; $695b: $ff
	rst  $38                                         ; $695c: $ff
	rst  $38                                         ; $695d: $ff
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	db   $db                                         ; $6960: $db
	cp   c                                           ; $6961: $b9
	add  a                                           ; $6962: $87
	ld   h, l                                        ; $6963: $65
	ld   b, h                                        ; $6964: $44
	inc  sp                                          ; $6965: $33
	inc  sp                                          ; $6966: $33
	ld   [hl+], a                                    ; $6967: $22
	ld   de, $1111                                   ; $6968: $11 $11 $11
	ld   de, $1211                                   ; $696b: $11 $11 $12
	ld   l, b                                        ; $696e: $68
	xor  l                                           ; $696f: $ad
	rst  $28                                         ; $6970: $ef
	rst  $38                                         ; $6971: $ff
	rst  $38                                         ; $6972: $ff
	rst  $38                                         ; $6973: $ff
	rst  $38                                         ; $6974: $ff
	cp   $dc                                         ; $6975: $fe $dc
	xor  c                                           ; $6977: $a9
	sub  a                                           ; $6978: $97
	ld   h, [hl]                                     ; $6979: $66
	ld   d, h                                        ; $697a: $54
	ld   b, e                                        ; $697b: $43
	inc  sp                                          ; $697c: $33
	ld   [hl-], a                                    ; $697d: $32
	ld   hl, $1111                                   ; $697e: $21 $11 $11
	ld   de, $1111                                   ; $6981: $11 $11 $11
	scf                                              ; $6984: $37
	sbc  h                                           ; $6985: $9c
	cp   $ff                                         ; $6986: $fe $ff
	rst  $38                                         ; $6988: $ff
	rst  $38                                         ; $6989: $ff
	rst  $38                                         ; $698a: $ff
	rst  $38                                         ; $698b: $ff
	db   $dd                                         ; $698c: $dd
	cp   d                                           ; $698d: $ba
	xor  b                                           ; $698e: $a8
	ld   [hl], a                                     ; $698f: $77
	ld   h, l                                        ; $6990: $65
	ld   b, h                                        ; $6991: $44
	ld   b, h                                        ; $6992: $44
	ld   b, e                                        ; $6993: $43
	inc  sp                                          ; $6994: $33
	ld   hl, $1111                                   ; $6995: $21 $11 $11
	ld   de, $1311                                   ; $6998: $11 $11 $13
	ld   a, b                                        ; $699b: $78
	cp   [hl]                                        ; $699c: $be
	rst  $38                                         ; $699d: $ff
	rst  $38                                         ; $699e: $ff
	rst  $38                                         ; $699f: $ff
	rst  $38                                         ; $69a0: $ff
	rst  $38                                         ; $69a1: $ff
	cp   $db                                         ; $69a2: $fe $db
	xor  d                                           ; $69a4: $aa
	add  a                                           ; $69a5: $87
	halt                                             ; $69a6: $76
	ld   d, l                                        ; $69a7: $55
	ld   d, h                                        ; $69a8: $54
	ld   b, h                                        ; $69a9: $44
	inc  sp                                          ; $69aa: $33
	ld   [hl-], a                                    ; $69ab: $32
	ld   de, $1111                                   ; $69ac: $11 $11 $11
	ld   de, $2611                                   ; $69af: $11 $11 $26
	ld   a, d                                        ; $69b2: $7a
	rst  JumpTable                                         ; $69b3: $df
	rst  $28                                         ; $69b4: $ef
	rst  $38                                         ; $69b5: $ff
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	sbc  $ba                                         ; $69b9: $de $ba
	xor  d                                           ; $69bb: $aa
	ld   [hl], a                                     ; $69bc: $77
	halt                                             ; $69bd: $76
	ld   d, l                                        ; $69be: $55
	ld   d, h                                        ; $69bf: $54
	ld   d, h                                        ; $69c0: $54
	inc  [hl]                                        ; $69c1: $34
	ld   sp, $1111                                   ; $69c2: $31 $11 $11
	ld   de, $1111                                   ; $69c5: $11 $11 $11
	ld   b, a                                        ; $69c8: $47
	ld   a, h                                        ; $69c9: $7c
	xor  $ff                                         ; $69ca: $ee $ff
	rst  $38                                         ; $69cc: $ff
	rst  $38                                         ; $69cd: $ff
	rst  $38                                         ; $69ce: $ff
	cp   $dd                                         ; $69cf: $fe $dd
	xor  d                                           ; $69d1: $aa
	cp   b                                           ; $69d2: $b8
	ld   a, b                                        ; $69d3: $78
	halt                                             ; $69d4: $76
	ld   h, [hl]                                     ; $69d5: $66
	ld   d, l                                        ; $69d6: $55
	ld   d, h                                        ; $69d7: $54
	ld   b, h                                        ; $69d8: $44
	ld   hl, $1111                                   ; $69d9: $21 $11 $11
	ld   de, $1111                                   ; $69dc: $11 $11 $11
	ld   d, a                                        ; $69df: $57
	adc  l                                           ; $69e0: $8d
	xor  $ff                                         ; $69e1: $ee $ff
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	rst  $38                                         ; $69e5: $ff
	cp   $dd                                         ; $69e6: $fe $dd
	cp   d                                           ; $69e8: $ba
	cp   b                                           ; $69e9: $b8
	ld   a, b                                        ; $69ea: $78
	halt                                             ; $69eb: $76
	ld   h, [hl]                                     ; $69ec: $66
	ld   d, l                                        ; $69ed: $55
	ld   d, h                                        ; $69ee: $54
	ld   b, h                                        ; $69ef: $44
	ld   hl, $1101                                   ; $69f0: $21 $01 $11
	ld   de, $1211                                   ; $69f3: $11 $11 $12
	ld   h, a                                        ; $69f6: $67
	sbc  l                                           ; $69f7: $9d
	rst  $38                                         ; $69f8: $ff
	rst  $38                                         ; $69f9: $ff
	rst  $38                                         ; $69fa: $ff
	rst  $38                                         ; $69fb: $ff
	rst  $38                                         ; $69fc: $ff
	cp   $dd                                         ; $69fd: $fe $dd
	xor  d                                           ; $69ff: $aa
	xor  c                                           ; $6a00: $a9
	adc  b                                           ; $6a01: $88
	halt                                             ; $6a02: $76
	ld   h, [hl]                                     ; $6a03: $66
	ld   d, l                                        ; $6a04: $55
	ld   d, h                                        ; $6a05: $54
	ld   b, h                                        ; $6a06: $44
	ld   hl, $1111                                   ; $6a07: $21 $11 $11
	ld   de, $1311                                   ; $6a0a: $11 $11 $13
	ld   d, a                                        ; $6a0d: $57
	xor  a                                           ; $6a0e: $af
	rst  $38                                         ; $6a0f: $ff
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	rst  $38                                         ; $6a12: $ff
	cp   $fe                                         ; $6a13: $fe $fe
	jp   z, $a978                                    ; $6a15: $ca $78 $a9

	sub  [hl]                                        ; $6a18: $96
	ld   [hl], a                                     ; $6a19: $77
	add  a                                           ; $6a1a: $87
	ld   b, d                                        ; $6a1b: $42
	ld   [de], a                                     ; $6a1c: $12
	ld   de, $1411                                   ; $6a1d: $11 $11 $14
	ld   de, $ad12                                   ; $6a20: $11 $12 $ad
	db   $fc                                         ; $6a23: $fc
	rst  $38                                         ; $6a24: $ff
	rst  $38                                         ; $6a25: $ff
	rst  $38                                         ; $6a26: $ff
	rst  JumpTable                                         ; $6a27: $df
	ld   a, [$4573]                                  ; $6a28: $fa $73 $45
	ld   h, e                                        ; $6a2b: $63
	dec  d                                           ; $6a2c: $15
	sbc  l                                           ; $6a2d: $9d
	call z, $ffcf                                    ; $6a2e: $cc $cf $ff
	jp   c, Jump_0d6_4197                            ; $6a31: $da $97 $41

	ld   de, $1111                                   ; $6a34: $11 $11 $11
	jr   jr_0d6_6a6f                                 ; $6a37: $18 $36

	rst  JumpTable                                         ; $6a39: $df
	rst  $38                                         ; $6a3a: $ff
	rst  $38                                         ; $6a3b: $ff
	rst  $38                                         ; $6a3c: $ff
	rst  $38                                         ; $6a3d: $ff
	sub  h                                           ; $6a3e: $94
	scf                                              ; $6a3f: $37
	ld   b, c                                        ; $6a40: $41
	ld   [de], a                                     ; $6a41: $12
	ld   d, a                                        ; $6a42: $57
	xor  b                                           ; $6a43: $a8
	cp   a                                           ; $6a44: $bf
	rst  $38                                         ; $6a45: $ff
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	rst  $20                                         ; $6a48: $e7
	ld   h, l                                        ; $6a49: $65
	ld   hl, $1111                                   ; $6a4a: $21 $11 $11
	ld   de, $f71f                                   ; $6a4d: $11 $1f $f7
	rst  $38                                         ; $6a50: $ff
	rst  $38                                         ; $6a51: $ff
	rst  $38                                         ; $6a52: $ff
	adc  a                                           ; $6a53: $8f
	db   $e4                                         ; $6a54: $e4
	ld   sp, $8112                                   ; $6a55: $31 $12 $81
	inc  e                                           ; $6a58: $1c
	db   $ed                                         ; $6a59: $ed
	rst  JumpTable                                         ; $6a5a: $df
	cp   a                                           ; $6a5b: $bf
	db   $fc                                         ; $6a5c: $fc
	call $c7ec                                       ; $6a5d: $cd $ec $c7
	ld   b, a                                        ; $6a60: $47
	ld   b, c                                        ; $6a61: $41
	ld   de, $1111                                   ; $6a62: $11 $11 $11
	rra                                              ; $6a65: $1f
	rst  $30                                         ; $6a66: $f7
	rst  $38                                         ; $6a67: $ff
	rst  $38                                         ; $6a68: $ff
	di                                               ; $6a69: $f3
	rra                                              ; $6a6a: $1f
	ld   d, c                                        ; $6a6b: $51
	ld   de, $d12a                                   ; $6a6c: $11 $2a $d1

jr_0d6_6a6f:
	xor  a                                           ; $6a6f: $af
	cp   $da                                         ; $6a70: $fe $da
	sbc  a                                           ; $6a72: $9f
	rst  $20                                         ; $6a73: $e7
	cp   [hl]                                        ; $6a74: $be
	db   $dd                                         ; $6a75: $dd
	or   a                                           ; $6a76: $b7
	adc  c                                           ; $6a77: $89
	ld   sp, $1111                                   ; $6a78: $31 $11 $11
	ld   de, $febf                                   ; $6a7b: $11 $bf $fe
	rst  $38                                         ; $6a7e: $ff
	rst  $38                                         ; $6a7f: $ff
	ld   h, c                                        ; $6a80: $61
	dec  l                                           ; $6a81: $2d
	ld   de, $ff15                                   ; $6a82: $11 $15 $ff
	ld   [$e9ff], a                                  ; $6a85: $ea $ff $e9
	rla                                              ; $6a88: $17
	sbc  e                                           ; $6a89: $9b
	xor  c                                           ; $6a8a: $a9
	rst  $28                                         ; $6a8b: $ef
	ei                                               ; $6a8c: $fb
	sbc  d                                           ; $6a8d: $9a
	add  a                                           ; $6a8e: $87
	ld   de, $1111                                   ; $6a8f: $11 $11 $11
	ld   de, $bfff                                   ; $6a92: $11 $ff $bf
	rst  $38                                         ; $6a95: $ff
	di                                               ; $6a96: $f3

Jump_0d6_6a97:
	ld   de, $16b2                                   ; $6a97: $11 $b2 $16
	ld   e, a                                        ; $6a9a: $5f
	rst  $38                                         ; $6a9b: $ff
	ret                                              ; $6a9c: $c9


	db   $fc                                         ; $6a9d: $fc
	ld   [hl], c                                     ; $6a9e: $71
	dec  [hl]                                        ; $6a9f: $35
	xor  a                                           ; $6aa0: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa1: $cf
	rst  $38                                         ; $6aa2: $ff
	jp   hl                                          ; $6aa3: $e9


	sub  [hl]                                        ; $6aa4: $96
	add  e                                           ; $6aa5: $83
	ld   de, $1111                                   ; $6aa6: $11 $11 $11
	rra                                              ; $6aa9: $1f
	rst  $38                                         ; $6aaa: $ff
	rst  $38                                         ; $6aab: $ff
	call $1621                                       ; $6aac: $cd $21 $16
	and  c                                           ; $6aaf: $a1
	ret                                              ; $6ab0: $c9


	rst  $38                                         ; $6ab1: $ff
	cp   $2b                                         ; $6ab2: $fe $2b
	or   [hl]                                        ; $6ab4: $b6
	inc  [hl]                                        ; $6ab5: $34
	ld   l, e                                        ; $6ab6: $6b
	rst  $38                                         ; $6ab7: $ff
	rst  JumpTable                                         ; $6ab8: $df
	db   $ed                                         ; $6ab9: $ed
	xor  c                                           ; $6aba: $a9
	ld   a, b                                        ; $6abb: $78
	ld   h, c                                        ; $6abc: $61
	ld   de, $1111                                   ; $6abd: $11 $11 $11
	rst  $38                                         ; $6ac0: $ff
	rst  $38                                         ; $6ac1: $ff
	ld   hl, sp-$5c                                  ; $6ac2: $f8 $a4
	ld   de, $4e1f                                   ; $6ac4: $11 $1f $4e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ac7: $cf
	rst  $38                                         ; $6ac8: $ff
	pop  af                                          ; $6ac9: $f1
	ld   e, d                                        ; $6aca: $5a
	add  [hl]                                        ; $6acb: $86
	ld   a, c                                        ; $6acc: $79
	sbc  a                                           ; $6acd: $9f
	db   $fc                                         ; $6ace: $fc
	res  5, d                                        ; $6acf: $cb $aa
	cp   b                                           ; $6ad1: $b8
	halt                                             ; $6ad2: $76
	ld   de, $1111                                   ; $6ad3: $11 $11 $11
	rra                                              ; $6ad6: $1f
	rst  $38                                         ; $6ad7: $ff
	rst  $38                                         ; $6ad8: $ff
	jr   z, @+$33                                    ; $6ad9: $28 $31

	dec  d                                           ; $6adb: $15
	ld   a, [$feff]                                  ; $6adc: $fa $ff $fe
	ld   hl, sp+$14                                  ; $6adf: $f8 $14
	ld   a, d                                        ; $6ae1: $7a
	adc  [hl]                                        ; $6ae2: $8e
	sbc  e                                           ; $6ae3: $9b
	rst  $38                                         ; $6ae4: $ff
	cp   c                                           ; $6ae5: $b9
	adc  c                                           ; $6ae6: $89
	call z, Call_0d6_51a7                            ; $6ae7: $cc $a7 $51
	ld   de, $1f11                                   ; $6aea: $11 $11 $1f
	rst  $38                                         ; $6aed: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aee: $cf
	ld   b, e                                        ; $6aef: $43
	ld   [hl], c                                     ; $6af0: $71
	ld   de, $efff                                   ; $6af1: $11 $ff $ef
	ld   a, [$11fd]                                  ; $6af4: $fa $fd $11
	ld   e, d                                        ; $6af7: $5a
	sbc  a                                           ; $6af8: $9f
	ret  c                                           ; $6af9: $d8

	rst  $38                                         ; $6afa: $ff
	xor  b                                           ; $6afb: $a8
	add  a                                           ; $6afc: $87
	call Call_0d6_41a6                               ; $6afd: $cd $a6 $41
	ld   de, $1f11                                   ; $6b00: $11 $11 $1f
	rst  $38                                         ; $6b03: $ff
	rst  $38                                         ; $6b04: $ff
	dec  d                                           ; $6b05: $15
	ld   b, c                                        ; $6b06: $41
	ld   de, $efff                                   ; $6b07: $11 $ff $ef
	ld   a, [$11f9]                                  ; $6b0a: $fa $f9 $11
	ld   l, e                                        ; $6b0d: $6b
	xor  a                                           ; $6b0e: $af
	xor  d                                           ; $6b0f: $aa
	cp   $88                                         ; $6b10: $fe $88
	sub  a                                           ; $6b12: $97
	db   $db                                         ; $6b13: $db
	add  e                                           ; $6b14: $83
	ld   hl, $1111                                   ; $6b15: $21 $11 $11
	rst  $38                                         ; $6b18: $ff
	ld   sp, hl                                      ; $6b19: $f9
	di                                               ; $6b1a: $f3
	inc  d                                           ; $6b1b: $14
	ld   de, $fc1f                                   ; $6b1c: $11 $1f $fc
	rst  $38                                         ; $6b1f: $ff
	adc  a                                           ; $6b20: $8f
	ldh  [c], a                                      ; $6b21: $e2
	ld   d, $d9                                      ; $6b22: $16 $d9
	db   $fd                                         ; $6b24: $fd
	ld   l, h                                        ; $6b25: $6c
	ld   hl, sp+$5a                                  ; $6b26: $f8 $5a
	sbc  h                                           ; $6b28: $9c
	cp   b                                           ; $6b29: $b8
	ld   de, $1111                                   ; $6b2a: $11 $11 $11
	rra                                              ; $6b2d: $1f
	cp   $df                                         ; $6b2e: $fe $df
	dec  d                                           ; $6b30: $15
	ld   de, rAUD1LEN                                   ; $6b31: $11 $11 $ff
	rst  $38                                         ; $6b34: $ff
	set  7, d                                        ; $6b35: $cb $fa
	ld   de, $bfbc                                   ; $6b37: $11 $bc $bf
	add  [hl]                                        ; $6b3a: $86
	db   $ec                                         ; $6b3b: $ec
	ld   d, [hl]                                     ; $6b3c: $56
	sbc  e                                           ; $6b3d: $9b
	cp   c                                           ; $6b3e: $b9
	ld   b, c                                        ; $6b3f: $41
	ld   de, $1f11                                   ; $6b40: $11 $11 $1f
	cp   $fd                                         ; $6b43: $fe $fd
	ld   d, $11                                      ; $6b45: $16 $11
	inc  d                                           ; $6b47: $14
	rst  $38                                         ; $6b48: $ff
	rst  $38                                         ; $6b49: $ff
	cp   l                                           ; $6b4a: $bd
	or   $11                                         ; $6b4b: $f6 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b4d: $cf
	rst  JumpTable                                         ; $6b4e: $df
	ld   l, b                                        ; $6b4f: $68
	ld   a, [$7a35]                                  ; $6b50: $fa $35 $7a
	or   a                                           ; $6b53: $b7
	ld   hl, $1111                                   ; $6b54: $21 $11 $11
	rst  $38                                         ; $6b57: $ff
	db   $fd                                         ; $6b58: $fd
	pop  af                                          ; $6b59: $f1
	ld   b, c                                        ; $6b5a: $41
	ld   de, $ff1f                                   ; $6b5b: $11 $1f $ff
	rst  $38                                         ; $6b5e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b5f: $cf
	ld   d, c                                        ; $6b60: $51
	dec  e                                           ; $6b61: $1d
	db   $fc                                         ; $6b62: $fc
	jp   hl                                          ; $6b63: $e9


	sbc  [hl]                                        ; $6b64: $9e
	or   h                                           ; $6b65: $b4
	ld   [hl], $9c                                   ; $6b66: $36 $9c
	ld   [hl], c                                     ; $6b68: $71
	ld   de, $1f11                                   ; $6b69: $11 $11 $1f
	rst  $30                                         ; $6b6c: $f7
	ld   hl, sp+$23                                  ; $6b6d: $f8 $23
	ld   de, $ff1f                                   ; $6b6f: $11 $1f $ff
	rst  $38                                         ; $6b72: $ff
	call c, $18c1                                    ; $6b73: $dc $c1 $18
	rst  $38                                         ; $6b76: $ff
	call $c55b                                       ; $6b77: $cd $5b $c5
	ld   b, [hl]                                     ; $6b7a: $46
	sbc  e                                           ; $6b7b: $9b
	add  h                                           ; $6b7c: $84
	ld   de, $1f11                                   ; $6b7d: $11 $11 $1f
	rst  $30                                         ; $6b80: $f7
	db   $fd                                         ; $6b81: $fd
	inc  [hl]                                        ; $6b82: $34
	ld   de, $ff1d                                   ; $6b83: $11 $1d $ff
	rst  $38                                         ; $6b86: $ff
	db   $fc                                         ; $6b87: $fc
	or   c                                           ; $6b88: $b1
	ld   a, [de]                                     ; $6b89: $1a
	rst  $28                                         ; $6b8a: $ef
	cp   [hl]                                        ; $6b8b: $be
	ld   l, c                                        ; $6b8c: $69
	push de                                          ; $6b8d: $d5
	ld   b, l                                        ; $6b8e: $45
	ld   a, b                                        ; $6b8f: $78
	add  h                                           ; $6b90: $84
	ld   de, rAUD1LEN                                   ; $6b91: $11 $11 $ff
	ld   hl, sp-$09                                  ; $6b94: $f8 $f7
	ld   d, c                                        ; $6b96: $51
	ld   de, $ff1f                                   ; $6b97: $11 $1f $ff
	rst  $38                                         ; $6b9a: $ff
	db   $ed                                         ; $6b9b: $ed
	ld   h, c                                        ; $6b9c: $61
	ld   c, e                                        ; $6b9d: $4b
	db   $fd                                         ; $6b9e: $fd
	jp   z, $a55c                                    ; $6b9f: $ca $5c $a5

	ld   [hl], a                                     ; $6ba2: $77
	add  a                                           ; $6ba3: $87
	ld   b, c                                        ; $6ba4: $41
	ld   de, rAUD1ENV                                   ; $6ba5: $11 $12 $ff
	sbc  a                                           ; $6ba8: $9f
	and  $31                                         ; $6ba9: $e6 $31
	ld   de, $ffdf                                   ; $6bab: $11 $df $ff
	rst  $38                                         ; $6bae: $ff
	db   $eb                                         ; $6baf: $eb
	inc  d                                           ; $6bb0: $14
	cp   d                                           ; $6bb1: $ba
	jp   c, $8ba4                                    ; $6bb2: $da $a4 $8b

	ld   l, d                                        ; $6bb5: $6a
	sbc  b                                           ; $6bb6: $98
	ld   [hl], e                                     ; $6bb7: $73
	ld   de, $7f11                                   ; $6bb8: $11 $11 $7f
	cp   $ff                                         ; $6bbb: $fe $ff
	or   e                                           ; $6bbd: $b3
	ld   de, $ff1c                                   ; $6bbe: $11 $1c $ff
	rst  $38                                         ; $6bc1: $ff
	rst  $38                                         ; $6bc2: $ff
	and  d                                           ; $6bc3: $a2
	ld   a, e                                        ; $6bc4: $7b
	cp   h                                           ; $6bc5: $bc
	sub  a                                           ; $6bc6: $97
	ld   d, a                                        ; $6bc7: $57
	halt                                             ; $6bc8: $76
	ld   a, b                                        ; $6bc9: $78
	add  l                                           ; $6bca: $85
	ld   de, $1f11                                   ; $6bcb: $11 $11 $1f
	ei                                               ; $6bce: $fb
	rst  $38                                         ; $6bcf: $ff
	or   [hl]                                        ; $6bd0: $b6
	ld   de, $bd1a                                   ; $6bd1: $11 $1a $bd
	rst  $38                                         ; $6bd4: $ff
	rst  $38                                         ; $6bd5: $ff
	call nc, $a97d                                   ; $6bd6: $d4 $7d $a9
	add  a                                           ; $6bd9: $87
	ld   d, a                                        ; $6bda: $57
	ld   [hl], l                                     ; $6bdb: $75
	ld   a, b                                        ; $6bdc: $78
	ld   h, c                                        ; $6bdd: $61
	ld   de, rAUD1LEN                                   ; $6bde: $11 $11 $ff
	cp   $fe                                         ; $6be1: $fe $fe
	sub  d                                           ; $6be3: $92
	ld   de, $ad9c                                   ; $6be4: $11 $9c $ad
	rst  $38                                         ; $6be7: $ff
	db   $ec                                         ; $6be8: $ec
	ld   l, b                                        ; $6be9: $68
	db   $dd                                         ; $6bea: $dd
	sub  [hl]                                        ; $6beb: $96
	ld   d, h                                        ; $6bec: $54
	ld   d, l                                        ; $6bed: $55
	ld   b, [hl]                                     ; $6bee: $46
	sub  l                                           ; $6bef: $95
	ld   de, $8f11                                   ; $6bf0: $11 $11 $8f
	db   $fd                                         ; $6bf3: $fd
	rst  $38                                         ; $6bf4: $ff
	add  sp, $11                                     ; $6bf5: $e8 $11
	ld   a, [de]                                     ; $6bf7: $1a
	xor  e                                           ; $6bf8: $ab
	rst  $38                                         ; $6bf9: $ff
	db   $fd                                         ; $6bfa: $fd
	sub  [hl]                                        ; $6bfb: $96
	xor  h                                           ; $6bfc: $ac
	and  a                                           ; $6bfd: $a7
	ld   h, l                                        ; $6bfe: $65
	ld   b, h                                        ; $6bff: $44
	ld   [hl+], a                                    ; $6c00: $22
	ld   d, e                                        ; $6c01: $53
	ld   de, rAUD1LEN                                   ; $6c02: $11 $11 $ff
	cp   $ff                                         ; $6c05: $fe $ff
	add  $11                                         ; $6c07: $c6 $11
	ld   a, b                                        ; $6c09: $78
	sbc  h                                           ; $6c0a: $9c
	rst  $38                                         ; $6c0b: $ff
	db   $fc                                         ; $6c0c: $fc
	sbc  d                                           ; $6c0d: $9a
	ret                                              ; $6c0e: $c9


	halt                                             ; $6c0f: $76
	ld   b, e                                        ; $6c10: $43
	ld   [hl-], a                                    ; $6c11: $32
	ld   de, $1111                                   ; $6c12: $11 $11 $11
	adc  a                                           ; $6c15: $8f
	db   $fd                                         ; $6c16: $fd
	rst  $38                                         ; $6c17: $ff
	jp   c, $3931                                    ; $6c18: $da $31 $39

	ld   a, c                                        ; $6c1b: $79
	rst  JumpTable                                         ; $6c1c: $df
	db   $ed                                         ; $6c1d: $ed
	set  1, e                                        ; $6c1e: $cb $cb
	add  a                                           ; $6c20: $87
	ld   h, h                                        ; $6c21: $64
	ld   hl, $1111                                   ; $6c22: $21 $11 $11
	ld   de, $ff9f                                   ; $6c25: $11 $9f $ff
	rst  $38                                         ; $6c28: $ff
	rst  $38                                         ; $6c29: $ff
	ld   h, c                                        ; $6c2a: $61
	ld   d, [hl]                                     ; $6c2b: $56
	ld   b, a                                        ; $6c2c: $47
	xor  h                                           ; $6c2d: $ac
	db   $dd                                         ; $6c2e: $dd
	call c, $a7cc                                    ; $6c2f: $dc $cc $a7
	ld   d, d                                        ; $6c32: $52
	ld   de, $1111                                   ; $6c33: $11 $11 $11
	ld   [de], a                                     ; $6c36: $12
	rst  $38                                         ; $6c37: $ff
	rst  JumpTable                                         ; $6c38: $df
	rst  $38                                         ; $6c39: $ff
	ei                                               ; $6c3a: $fb
	ld   [hl], $84                                   ; $6c3b: $36 $84
	ld   e, c                                        ; $6c3d: $59
	cp   d                                           ; $6c3e: $ba
	cp   d                                           ; $6c3f: $ba
	call z, $98ba                                    ; $6c40: $cc $ba $98
	ld   h, e                                        ; $6c43: $63
	ld   hl, $1111                                   ; $6c44: $21 $11 $11
	cpl                                              ; $6c47: $2f
	db   $eb                                         ; $6c48: $eb
	rst  $38                                         ; $6c49: $ff
	rst  $38                                         ; $6c4a: $ff
	add  $8a                                         ; $6c4b: $c6 $8a
	ld   [hl], a                                     ; $6c4d: $77
	sbc  d                                           ; $6c4e: $9a
	xor  c                                           ; $6c4f: $a9
	adc  b                                           ; $6c50: $88
	sbc  d                                           ; $6c51: $9a
	sbc  b                                           ; $6c52: $98
	adc  b                                           ; $6c53: $88
	halt                                             ; $6c54: $76
	ld   h, l                                        ; $6c55: $65
	ld   b, h                                        ; $6c56: $44
	ld   b, [hl]                                     ; $6c57: $46
	sub  a                                           ; $6c58: $97
	ld   h, a                                        ; $6c59: $67
	ld   h, [hl]                                     ; $6c5a: $66
	ld   a, b                                        ; $6c5b: $78
	ld   a, b                                        ; $6c5c: $78
	xor  c                                           ; $6c5d: $a9
	xor  d                                           ; $6c5e: $aa
	cp   d                                           ; $6c5f: $ba
	res  7, e                                        ; $6c60: $cb $bb
	xor  d                                           ; $6c62: $aa
	xor  d                                           ; $6c63: $aa
	sbc  b                                           ; $6c64: $98
	add  a                                           ; $6c65: $87
	ld   a, b                                        ; $6c66: $78
	add  a                                           ; $6c67: $87
	ld   h, [hl]                                     ; $6c68: $66
	ld   h, [hl]                                     ; $6c69: $66
	ld   h, l                                        ; $6c6a: $65
	ld   d, l                                        ; $6c6b: $55
	ld   d, l                                        ; $6c6c: $55
	ld   h, [hl]                                     ; $6c6d: $66
	ld   a, b                                        ; $6c6e: $78
	sbc  d                                           ; $6c6f: $9a
	cp   d                                           ; $6c70: $ba
	res  7, e                                        ; $6c71: $cb $bb
	cp   d                                           ; $6c73: $ba
	xor  d                                           ; $6c74: $aa
	sbc  b                                           ; $6c75: $98
	sbc  c                                           ; $6c76: $99
	sbc  c                                           ; $6c77: $99
	ld   [hl], a                                     ; $6c78: $77
	ld   h, [hl]                                     ; $6c79: $66
	ld   h, [hl]                                     ; $6c7a: $66
	halt                                             ; $6c7b: $76
	ld   h, [hl]                                     ; $6c7c: $66
	ld   d, l                                        ; $6c7d: $55
	ld   d, l                                        ; $6c7e: $55
	ld   d, [hl]                                     ; $6c7f: $56
	ld   a, c                                        ; $6c80: $79
	sbc  c                                           ; $6c81: $99
	xor  d                                           ; $6c82: $aa
	xor  d                                           ; $6c83: $aa
	xor  e                                           ; $6c84: $ab
	cp   e                                           ; $6c85: $bb
	xor  d                                           ; $6c86: $aa
	xor  c                                           ; $6c87: $a9
	xor  d                                           ; $6c88: $aa
	sbc  b                                           ; $6c89: $98
	sbc  b                                           ; $6c8a: $98
	add  [hl]                                        ; $6c8b: $86
	ld   h, [hl]                                     ; $6c8c: $66
	ld   [hl], a                                     ; $6c8d: $77
	halt                                             ; $6c8e: $76
	ld   h, l                                        ; $6c8f: $65
	ld   d, l                                        ; $6c90: $55
	ld   d, [hl]                                     ; $6c91: $56
	ld   h, a                                        ; $6c92: $67
	adc  b                                           ; $6c93: $88
	sbc  c                                           ; $6c94: $99
	sbc  c                                           ; $6c95: $99
	sbc  d                                           ; $6c96: $9a
	xor  c                                           ; $6c97: $a9
	xor  d                                           ; $6c98: $aa
	sbc  e                                           ; $6c99: $9b
	xor  c                                           ; $6c9a: $a9
	sbc  d                                           ; $6c9b: $9a
	adc  c                                           ; $6c9c: $89
	ld   [hl], a                                     ; $6c9d: $77
	ld   [hl], a                                     ; $6c9e: $77
	halt                                             ; $6c9f: $76
	ld   [hl], a                                     ; $6ca0: $77
	ld   h, l                                        ; $6ca1: $65
	ld   d, l                                        ; $6ca2: $55
	ld   d, [hl]                                     ; $6ca3: $56
	ld   h, [hl]                                     ; $6ca4: $66
	ld   a, b                                        ; $6ca5: $78
	sbc  c                                           ; $6ca6: $99
	sbc  b                                           ; $6ca7: $98
	xor  d                                           ; $6ca8: $aa
	sbc  d                                           ; $6ca9: $9a
	sbc  c                                           ; $6caa: $99
	sbc  e                                           ; $6cab: $9b
	cp   e                                           ; $6cac: $bb
	ret                                              ; $6cad: $c9


	sbc  c                                           ; $6cae: $99
	ld   a, b                                        ; $6caf: $78
	ld   [hl], a                                     ; $6cb0: $77
	halt                                             ; $6cb1: $76
	ld   h, l                                        ; $6cb2: $65
	ld   d, l                                        ; $6cb3: $55
	ld   d, l                                        ; $6cb4: $55
	ld   h, a                                        ; $6cb5: $67
	ld   [hl], a                                     ; $6cb6: $77
	ld   a, c                                        ; $6cb7: $79
	sbc  c                                           ; $6cb8: $99
	sbc  e                                           ; $6cb9: $9b
	cp   e                                           ; $6cba: $bb
	xor  d                                           ; $6cbb: $aa
	sbc  c                                           ; $6cbc: $99
	sbc  e                                           ; $6cbd: $9b
	sub  a                                           ; $6cbe: $97
	ld   [hl], a                                     ; $6cbf: $77
	halt                                             ; $6cc0: $76
	ld   d, l                                        ; $6cc1: $55
	ld   b, h                                        ; $6cc2: $44
	ld   b, h                                        ; $6cc3: $44
	ld   b, [hl]                                     ; $6cc4: $46
	ld   h, a                                        ; $6cc5: $67
	ld   a, c                                        ; $6cc6: $79
	sbc  d                                           ; $6cc7: $9a
	xor  e                                           ; $6cc8: $ab
	cp   e                                           ; $6cc9: $bb
	cp   e                                           ; $6cca: $bb
	xor  d                                           ; $6ccb: $aa
	xor  c                                           ; $6ccc: $a9
	adc  b                                           ; $6ccd: $88
	ld   [hl], a                                     ; $6cce: $77
	halt                                             ; $6ccf: $76
	ld   d, h                                        ; $6cd0: $54
	ld   [hl-], a                                    ; $6cd1: $32
	ld   de, $6735                                   ; $6cd2: $11 $35 $67
	sbc  d                                           ; $6cd5: $9a
	cp   h                                           ; $6cd6: $bc
	cp   e                                           ; $6cd7: $bb
	call z, $cbab                                    ; $6cd8: $cc $ab $cb
	cp   d                                           ; $6cdb: $ba
	xor  b                                           ; $6cdc: $a8
	halt                                             ; $6cdd: $76
	ld   d, h                                        ; $6cde: $54
	ld   [hl+], a                                    ; $6cdf: $22
	ld   de, $6713                                   ; $6ce0: $11 $13 $67
	adc  c                                           ; $6ce3: $89
	call $cded                                       ; $6ce4: $cd $ed $cd
	call z, $cacc                                    ; $6ce7: $cc $cc $ca
	sbc  b                                           ; $6cea: $98
	halt                                             ; $6ceb: $76
	ld   b, e                                        ; $6cec: $43
	ld   hl, $1511                                   ; $6ced: $21 $11 $15
	ld   h, [hl]                                     ; $6cf0: $66
	sbc  e                                           ; $6cf1: $9b
	rst  $28                                         ; $6cf2: $ef
	db   $fd                                         ; $6cf3: $fd
	xor  $cb                                         ; $6cf4: $ee $cb
	call $87bb                                       ; $6cf6: $cd $bb $87
	ld   h, l                                        ; $6cf9: $65
	ld   hl, $1111                                   ; $6cfa: $21 $11 $11
	scf                                              ; $6cfd: $37
	ld   a, c                                        ; $6cfe: $79
	xor  l                                           ; $6cff: $ad
	rst  $38                                         ; $6d00: $ff
	cp   $fd                                         ; $6d01: $fe $fd
	set  3, h                                        ; $6d03: $cb $dc
	cp   c                                           ; $6d05: $b9
	ld   [hl], a                                     ; $6d06: $77
	ld   b, d                                        ; $6d07: $42
	ld   de, $1211                                   ; $6d08: $11 $11 $12
	halt                                             ; $6d0b: $76
	sbc  e                                           ; $6d0c: $9b
	rst  $28                                         ; $6d0d: $ef
	rst  $38                                         ; $6d0e: $ff
	rst  $38                                         ; $6d0f: $ff
	db   $db                                         ; $6d10: $db
	cp   h                                           ; $6d11: $bc
	jp   c, Jump_0d6_5497                            ; $6d12: $da $97 $54

	ld   de, $1111                                   ; $6d15: $11 $11 $11
	ld   e, b                                        ; $6d18: $58
	ld   a, d                                        ; $6d19: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d1a: $cf
	rst  $38                                         ; $6d1b: $ff
	rst  $28                                         ; $6d1c: $ef
	db   $fc                                         ; $6d1d: $fc
	call z, $a7cc                                    ; $6d1e: $cc $cc $a7
	ld   h, h                                        ; $6d21: $64
	ld   hl, $1111                                   ; $6d22: $21 $11 $11
	jr   @+$7a                                       ; $6d25: $18 $78

	cp   a                                           ; $6d27: $bf
	rst  $38                                         ; $6d28: $ff
	rst  $38                                         ; $6d29: $ff
	cp   $cc                                         ; $6d2a: $fe $cc
	call z, Call_0d6_54a9                            ; $6d2c: $cc $a9 $54
	ld   de, $1111                                   ; $6d2f: $11 $11 $11
	jr   jr_0d6_6dac                                 ; $6d32: $18 $78

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d34: $cf
	rst  $38                                         ; $6d35: $ff
	rst  $38                                         ; $6d36: $ff
	cp   $aa                                         ; $6d37: $fe $aa
	call $65a7                                       ; $6d39: $cd $a7 $65
	ld   de, $1111                                   ; $6d3c: $11 $11 $11
	scf                                              ; $6d3f: $37
	ld   l, d                                        ; $6d40: $6a
	rst  $28                                         ; $6d41: $ef
	rst  $38                                         ; $6d42: $ff
	rst  $38                                         ; $6d43: $ff
	db   $fc                                         ; $6d44: $fc
	call $a7aa                                       ; $6d45: $cd $aa $a7
	ld   d, e                                        ; $6d48: $53
	ld   de, $1111                                   ; $6d49: $11 $11 $11
	halt                                             ; $6d4c: $76
	sbc  l                                           ; $6d4d: $9d
	rst  $38                                         ; $6d4e: $ff
	rst  $38                                         ; $6d4f: $ff
	rst  $38                                         ; $6d50: $ff
	db   $ec                                         ; $6d51: $ec
	res  7, c                                        ; $6d52: $cb $b9
	sub  l                                           ; $6d54: $95
	ld   sp, $1111                                   ; $6d55: $31 $11 $11
	dec  d                                           ; $6d58: $15
	ld   a, b                                        ; $6d59: $78
	xor  a                                           ; $6d5a: $af
	rst  $38                                         ; $6d5b: $ff
	rst  $38                                         ; $6d5c: $ff
	rst  $28                                         ; $6d5d: $ef
	db   $dd                                         ; $6d5e: $dd
	cp   e                                           ; $6d5f: $bb
	xor  b                                           ; $6d60: $a8
	ld   [hl], e                                     ; $6d61: $73
	ld   de, $1111                                   ; $6d62: $11 $11 $11
	ld   h, a                                        ; $6d65: $67
	ld   a, e                                        ; $6d66: $7b
	rst  $38                                         ; $6d67: $ff
	rst  $38                                         ; $6d68: $ff
	rst  $38                                         ; $6d69: $ff
	ld   sp, hl                                      ; $6d6a: $f9
	cp   h                                           ; $6d6b: $bc
	jp   z, Jump_0d6_4265                            ; $6d6c: $ca $65 $42

	ld   de, $1711                                   ; $6d6f: $11 $11 $17
	ld   h, a                                        ; $6d72: $67
	xor  h                                           ; $6d73: $ac
	rst  $38                                         ; $6d74: $ff
	xor  $ff                                         ; $6d75: $ee $ff
	xor  l                                           ; $6d77: $ad
	cp   [hl]                                        ; $6d78: $be
	or   a                                           ; $6d79: $b7
	ld   d, e                                        ; $6d7a: $53
	ld   de, $1111                                   ; $6d7b: $11 $11 $11
	sub  [hl]                                        ; $6d7e: $96
	ld   a, h                                        ; $6d7f: $7c
	rst  $38                                         ; $6d80: $ff
	rst  $38                                         ; $6d81: $ff
	rst  $28                                         ; $6d82: $ef
	cp   d                                           ; $6d83: $ba
	db   $ed                                         ; $6d84: $ed
	ret                                              ; $6d85: $c9


	ld   [hl], l                                     ; $6d86: $75
	ld   de, $1111                                   ; $6d87: $11 $11 $11
	scf                                              ; $6d8a: $37
	adc  e                                           ; $6d8b: $8b
	xor  [hl]                                        ; $6d8c: $ae
	rst  $38                                         ; $6d8d: $ff
	db   $dd                                         ; $6d8e: $dd
	db   $fc                                         ; $6d8f: $fc
	jp   c, $b5cd                                    ; $6d90: $da $cd $b5

	inc  sp                                          ; $6d93: $33
	ld   de, $1811                                   ; $6d94: $11 $11 $18
	ld   [hl], a                                     ; $6d97: $77
	sbc  $ee                                         ; $6d98: $de $ee
	db   $fd                                         ; $6d9a: $fd
	db   $fc                                         ; $6d9b: $fc
	adc  [hl]                                        ; $6d9c: $8e
	call z, Call_0d6_6398                            ; $6d9d: $cc $98 $63
	ld   de, $1211                                   ; $6da0: $11 $11 $12
	ld   a, c                                        ; $6da3: $79
	cp   h                                           ; $6da4: $bc
	db   $ed                                         ; $6da5: $ed
	xor  $dd                                         ; $6da6: $ee $dd
	cp   l                                           ; $6da8: $bd
	cp   l                                           ; $6da9: $bd
	or   a                                           ; $6daa: $b7
	ld   [hl], d                                     ; $6dab: $72

jr_0d6_6dac:
	ld   de, $1111                                   ; $6dac: $11 $11 $11
	ld   a, b                                        ; $6daf: $78
	xor  e                                           ; $6db0: $ab
	cp   a                                           ; $6db1: $bf
	cp   $bc                                         ; $6db2: $fe $bc
	call c, $bbdb                                    ; $6db4: $dc $db $bb
	ld   [hl], c                                     ; $6db7: $71
	ld   de, $1121                                   ; $6db8: $11 $21 $11
	ld   e, b                                        ; $6dbb: $58
	adc  d                                           ; $6dbc: $8a
	adc  $dc                                         ; $6dbd: $ce $dc
	cp   a                                           ; $6dbf: $bf
	db   $ec                                         ; $6dc0: $ec
	jp   c, Jump_0d6_73fa                            ; $6dc1: $da $fa $73

	ld   sp, $1111                                   ; $6dc4: $31 $11 $11
	dec  [hl]                                        ; $6dc7: $35
	adc  e                                           ; $6dc8: $8b
	call z, $defc                                    ; $6dc9: $cc $fc $de
	call z, $cbec                                    ; $6dcc: $cc $ec $cb
	add  a                                           ; $6dcf: $87
	ld   hl, $1111                                   ; $6dd0: $21 $11 $11
	ld   c, b                                        ; $6dd3: $48
	ld   a, b                                        ; $6dd4: $78
	cp   [hl]                                        ; $6dd5: $be
	db   $dd                                         ; $6dd6: $dd
	jp   c, $baef                                    ; $6dd7: $da $ef $ba

	ld   sp, hl                                      ; $6dda: $f9
	and  l                                           ; $6ddb: $a5
	ld   b, c                                        ; $6ddc: $41
	ld   [de], a                                     ; $6ddd: $12
	ld   de, $8a15                                   ; $6dde: $11 $15 $8a
	sbc  h                                           ; $6de1: $9c
	sbc  $dc                                         ; $6de2: $de $dc
	cp   a                                           ; $6de4: $bf
	ld   sp, hl                                      ; $6de5: $f9
	sbc  [hl]                                        ; $6de6: $9e
	or   l                                           ; $6de7: $b5
	ld   hl, $1123                                   ; $6de8: $21 $23 $11
	ld   d, $7b                                      ; $6deb: $16 $7b
	ld   a, c                                        ; $6ded: $79
	db   $eb                                         ; $6dee: $eb
	db   $ed                                         ; $6def: $ed
	call $8cfd                                       ; $6df0: $cd $fd $8c
	rst  $20                                         ; $6df3: $e7
	ld   b, c                                        ; $6df4: $41
	inc  de                                          ; $6df5: $13
	ld   de, $7617                                   ; $6df6: $11 $17 $76
	xor  d                                           ; $6df9: $aa
	call z, $cebd                                    ; $6dfa: $cc $bd $ce
	xor  $da                                         ; $6dfd: $ee $da
	ret                                              ; $6dff: $c9


	ld   b, c                                        ; $6e00: $41
	inc  d                                           ; $6e01: $14
	ld   de, $6416                                   ; $6e02: $11 $16 $64
	xor  e                                           ; $6e05: $ab
	cp   l                                           ; $6e06: $bd
	cp   h                                           ; $6e07: $bc
	db   $ed                                         ; $6e08: $ed
	sbc  $ca                                         ; $6e09: $de $ca
	and  a                                           ; $6e0b: $a7
	ld   [hl], d                                     ; $6e0c: $72
	inc  d                                           ; $6e0d: $14
	ld   bc, $6812                                   ; $6e0e: $01 $12 $68
	adc  c                                           ; $6e11: $89
	sbc  l                                           ; $6e12: $9d
	db   $db                                         ; $6e13: $db
	db   $ec                                         ; $6e14: $ec
	db   $fd                                         ; $6e15: $fd
	adc  [hl]                                        ; $6e16: $8e
	cp   c                                           ; $6e17: $b9
	ld   d, d                                        ; $6e18: $52
	inc  sp                                          ; $6e19: $33
	ld   sp, $4415                                   ; $6e1a: $31 $15 $44
	xor  c                                           ; $6e1d: $a9
	sbc  d                                           ; $6e1e: $9a
	call $dfdc                                       ; $6e1f: $cd $dc $df
	jp   c, $92ab                                    ; $6e22: $da $ab $92

	inc  de                                          ; $6e25: $13
	inc  sp                                          ; $6e26: $33
	ld   de, $7667                                   ; $6e27: $11 $67 $76
	adc  e                                           ; $6e2a: $8b
	call z, $dead                                    ; $6e2b: $cc $ad $de
	cp   e                                           ; $6e2e: $bb
	ret                                              ; $6e2f: $c9


	sub  h                                           ; $6e30: $94
	inc  h                                           ; $6e31: $24
	ld   b, c                                        ; $6e32: $41
	inc  hl                                          ; $6e33: $23
	ld   b, l                                        ; $6e34: $45
	ld   a, b                                        ; $6e35: $78
	ld   a, c                                        ; $6e36: $79
	xor  l                                           ; $6e37: $ad
	cp   d                                           ; $6e38: $ba
	rst  JumpTable                                         ; $6e39: $df
	jp   z, $b4bb                                    ; $6e3a: $ca $bb $b4

	dec  [hl]                                        ; $6e3d: $35
	ld   d, d                                        ; $6e3e: $52
	ld   [de], a                                     ; $6e3f: $12
	ld   b, a                                        ; $6e40: $47
	ld   h, [hl]                                     ; $6e41: $66
	ld   a, b                                        ; $6e42: $78
	sbc  d                                           ; $6e43: $9a
	db   $ec                                         ; $6e44: $ec
	xor  [hl]                                        ; $6e45: $ae
	ld   [$96bd], a                                  ; $6e46: $ea $bd $96
	ld   h, d                                        ; $6e49: $62
	ld   b, l                                        ; $6e4a: $45
	inc  sp                                          ; $6e4b: $33
	inc  [hl]                                        ; $6e4c: $34
	ld   e, b                                        ; $6e4d: $58
	ld   [hl], a                                     ; $6e4e: $77
	ld   a, c                                        ; $6e4f: $79
	call $dcba                                       ; $6e50: $cd $ba $dc
	db   $db                                         ; $6e53: $db
	ld   a, e                                        ; $6e54: $7b
	or   e                                           ; $6e55: $b3
	ld   h, $45                                      ; $6e56: $26 $45
	ld   sp, $7758                                   ; $6e58: $31 $58 $77
	sbc  b                                           ; $6e5b: $98
	sbc  h                                           ; $6e5c: $9c
	adc  c                                           ; $6e5d: $89
	rst  $28                                         ; $6e5e: $ef
	sbc  e                                           ; $6e5f: $9b
	cp   c                                           ; $6e60: $b9
	or   l                                           ; $6e61: $b5
	ld   d, [hl]                                     ; $6e62: $56
	ld   h, [hl]                                     ; $6e63: $66
	ld   b, l                                        ; $6e64: $45
	ld   d, [hl]                                     ; $6e65: $56
	ld   [hl], a                                     ; $6e66: $77
	ld   h, a                                        ; $6e67: $67
	sbc  d                                           ; $6e68: $9a
	sbc  d                                           ; $6e69: $9a
	cp   e                                           ; $6e6a: $bb
	cp   e                                           ; $6e6b: $bb
	xor  d                                           ; $6e6c: $aa
	xor  b                                           ; $6e6d: $a8
	halt                                             ; $6e6e: $76
	ld   h, a                                        ; $6e6f: $67
	ld   [hl], l                                     ; $6e70: $75
	ld   d, l                                        ; $6e71: $55
	ld   d, [hl]                                     ; $6e72: $56
	halt                                             ; $6e73: $76
	ld   a, b                                        ; $6e74: $78
	adc  d                                           ; $6e75: $8a
	xor  e                                           ; $6e76: $ab
	xor  e                                           ; $6e77: $ab
	xor  d                                           ; $6e78: $aa
	xor  c                                           ; $6e79: $a9
	xor  b                                           ; $6e7a: $a8
	ld   a, b                                        ; $6e7b: $78
	halt                                             ; $6e7c: $76
	ld   h, a                                        ; $6e7d: $67
	ld   h, l                                        ; $6e7e: $65
	ld   d, a                                        ; $6e7f: $57
	ld   [hl], a                                     ; $6e80: $77
	ld   [hl], a                                     ; $6e81: $77
	sbc  c                                           ; $6e82: $99
	sbc  c                                           ; $6e83: $99
	adc  c                                           ; $6e84: $89
	cp   b                                           ; $6e85: $b8
	xor  d                                           ; $6e86: $aa
	sbc  c                                           ; $6e87: $99
	ld   [hl], a                                     ; $6e88: $77
	ld   [hl], a                                     ; $6e89: $77
	halt                                             ; $6e8a: $76
	ld   [hl], a                                     ; $6e8b: $77
	ld   h, a                                        ; $6e8c: $67
	ld   [hl], a                                     ; $6e8d: $77
	ld   [hl], a                                     ; $6e8e: $77
	ld   a, b                                        ; $6e8f: $78
	adc  b                                           ; $6e90: $88
	adc  b                                           ; $6e91: $88
	sbc  d                                           ; $6e92: $9a
	sbc  b                                           ; $6e93: $98
	adc  c                                           ; $6e94: $89
	add  a                                           ; $6e95: $87
	adc  b                                           ; $6e96: $88
	add  a                                           ; $6e97: $87
	ld   [hl], a                                     ; $6e98: $77
	ld   [hl], a                                     ; $6e99: $77
	ld   [hl], a                                     ; $6e9a: $77
	ld   [hl], a                                     ; $6e9b: $77
	ld   h, a                                        ; $6e9c: $67
	ld   a, b                                        ; $6e9d: $78
	ld   a, b                                        ; $6e9e: $78
	add  a                                           ; $6e9f: $87
	adc  b                                           ; $6ea0: $88
	adc  b                                           ; $6ea1: $88
	sbc  b                                           ; $6ea2: $98
	adc  c                                           ; $6ea3: $89
	adc  b                                           ; $6ea4: $88
	sbc  c                                           ; $6ea5: $99
	sbc  c                                           ; $6ea6: $99
	adc  b                                           ; $6ea7: $88
	adc  b                                           ; $6ea8: $88
	sbc  b                                           ; $6ea9: $98
	sbc  b                                           ; $6eaa: $98
	adc  b                                           ; $6eab: $88
	sbc  c                                           ; $6eac: $99
	adc  b                                           ; $6ead: $88
	sbc  c                                           ; $6eae: $99
	adc  c                                           ; $6eaf: $89
	sbc  b                                           ; $6eb0: $98
	adc  b                                           ; $6eb1: $88
	adc  b                                           ; $6eb2: $88
	adc  c                                           ; $6eb3: $89
	sbc  c                                           ; $6eb4: $99
	adc  c                                           ; $6eb5: $89
	sbc  b                                           ; $6eb6: $98
	adc  c                                           ; $6eb7: $89
	sbc  b                                           ; $6eb8: $98
	adc  c                                           ; $6eb9: $89
	sbc  b                                           ; $6eba: $98
	adc  b                                           ; $6ebb: $88
	sbc  c                                           ; $6ebc: $99
	sbc  c                                           ; $6ebd: $99
	sbc  b                                           ; $6ebe: $98
	sbc  b                                           ; $6ebf: $98
	add  a                                           ; $6ec0: $87
	adc  b                                           ; $6ec1: $88
	adc  c                                           ; $6ec2: $89
	adc  c                                           ; $6ec3: $89
	adc  b                                           ; $6ec4: $88
	adc  c                                           ; $6ec5: $89
	adc  b                                           ; $6ec6: $88
	adc  b                                           ; $6ec7: $88
	adc  b                                           ; $6ec8: $88
	adc  b                                           ; $6ec9: $88
	adc  b                                           ; $6eca: $88
	sbc  b                                           ; $6ecb: $98
	adc  c                                           ; $6ecc: $89
	sbc  b                                           ; $6ecd: $98
	ld   a, b                                        ; $6ece: $78
	sbc  b                                           ; $6ecf: $98
	adc  b                                           ; $6ed0: $88
	adc  b                                           ; $6ed1: $88
	ld   a, b                                        ; $6ed2: $78
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
	ld   a, b                                        ; $6ee0: $78
	adc  b                                           ; $6ee1: $88
	adc  b                                           ; $6ee2: $88
	adc  b                                           ; $6ee3: $88
	adc  b                                           ; $6ee4: $88
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	ld   [hl], a                                     ; $6ee7: $77
	adc  b                                           ; $6ee8: $88
	adc  b                                           ; $6ee9: $88
	adc  b                                           ; $6eea: $88
	adc  b                                           ; $6eeb: $88
	adc  b                                           ; $6eec: $88
	sbc  c                                           ; $6eed: $99
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
	add  a                                           ; $6fad: $87
	adc  c                                           ; $6fae: $89
	adc  b                                           ; $6faf: $88
	sbc  c                                           ; $6fb0: $99
	adc  b                                           ; $6fb1: $88
	adc  b                                           ; $6fb2: $88
	add  a                                           ; $6fb3: $87
	adc  b                                           ; $6fb4: $88
	ld   a, b                                        ; $6fb5: $78
	ld   [hl], a                                     ; $6fb6: $77
	adc  b                                           ; $6fb7: $88
	adc  b                                           ; $6fb8: $88
	sbc  c                                           ; $6fb9: $99
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
	sbc  b                                           ; $6fc5: $98
	adc  b                                           ; $6fc6: $88
	sbc  c                                           ; $6fc7: $99
	adc  b                                           ; $6fc8: $88
	adc  b                                           ; $6fc9: $88
	ld   [hl], a                                     ; $6fca: $77
	adc  b                                           ; $6fcb: $88
	add  a                                           ; $6fcc: $87
	adc  b                                           ; $6fcd: $88
	adc  b                                           ; $6fce: $88
	adc  b                                           ; $6fcf: $88
	adc  b                                           ; $6fd0: $88
	adc  b                                           ; $6fd1: $88
	add  a                                           ; $6fd2: $87
	ld   [hl], a                                     ; $6fd3: $77
	adc  b                                           ; $6fd4: $88
	ld   a, b                                        ; $6fd5: $78
	adc  b                                           ; $6fd6: $88
	adc  b                                           ; $6fd7: $88
	adc  c                                           ; $6fd8: $89
	adc  b                                           ; $6fd9: $88
	adc  b                                           ; $6fda: $88
	add  a                                           ; $6fdb: $87
	ld   a, b                                        ; $6fdc: $78
	add  a                                           ; $6fdd: $87
	ld   [hl], a                                     ; $6fde: $77
	adc  b                                           ; $6fdf: $88
	ld   a, b                                        ; $6fe0: $78
	adc  b                                           ; $6fe1: $88
	adc  b                                           ; $6fe2: $88
	adc  b                                           ; $6fe3: $88
	add  a                                           ; $6fe4: $87
	adc  b                                           ; $6fe5: $88
	ld   [hl], a                                     ; $6fe6: $77
	adc  b                                           ; $6fe7: $88
	adc  b                                           ; $6fe8: $88
	ld   a, b                                        ; $6fe9: $78
	sbc  b                                           ; $6fea: $98
	ld   [hl], a                                     ; $6feb: $77
	ld   a, b                                        ; $6fec: $78
	add  a                                           ; $6fed: $87
	adc  b                                           ; $6fee: $88
	ld   a, b                                        ; $6fef: $78
	ld   [hl], a                                     ; $6ff0: $77
	sbc  c                                           ; $6ff1: $99
	ld   a, b                                        ; $6ff2: $78
	ld   a, b                                        ; $6ff3: $78
	sbc  b                                           ; $6ff4: $98
	adc  b                                           ; $6ff5: $88
	add  a                                           ; $6ff6: $87
	adc  b                                           ; $6ff7: $88
	add  a                                           ; $6ff8: $87
	adc  c                                           ; $6ff9: $89
	sbc  b                                           ; $6ffa: $98
	ld   a, b                                        ; $6ffb: $78
	adc  b                                           ; $6ffc: $88
	adc  b                                           ; $6ffd: $88
	adc  b                                           ; $6ffe: $88
	adc  b                                           ; $6fff: $88
	sbc  b                                           ; $7000: $98
	ld   a, b                                        ; $7001: $78
	sbc  b                                           ; $7002: $98
	ld   a, b                                        ; $7003: $78
	xor  b                                           ; $7004: $a8
	ld   [hl], a                                     ; $7005: $77
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	ld   a, c                                        ; $7008: $79
	sub  a                                           ; $7009: $97
	ld   a, c                                        ; $700a: $79
	adc  b                                           ; $700b: $88
	sbc  c                                           ; $700c: $99
	sbc  c                                           ; $700d: $99
	adc  b                                           ; $700e: $88
	sbc  c                                           ; $700f: $99
	ld   a, b                                        ; $7010: $78
	adc  b                                           ; $7011: $88
	sub  a                                           ; $7012: $97
	ld   a, b                                        ; $7013: $78
	sub  a                                           ; $7014: $97
	ld   a, b                                        ; $7015: $78
	adc  c                                           ; $7016: $89
	adc  b                                           ; $7017: $88
	adc  c                                           ; $7018: $89
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  c                                           ; $701b: $89
	adc  b                                           ; $701c: $88
	adc  c                                           ; $701d: $89
	sbc  c                                           ; $701e: $99
	adc  b                                           ; $701f: $88
	and  a                                           ; $7020: $a7
	sbc  c                                           ; $7021: $99
	ld   a, b                                        ; $7022: $78
	sub  a                                           ; $7023: $97
	ld   a, c                                        ; $7024: $79
	ld   [hl], a                                     ; $7025: $77
	sub  a                                           ; $7026: $97
	adc  c                                           ; $7027: $89
	ld   a, b                                        ; $7028: $78
	adc  b                                           ; $7029: $88
	adc  b                                           ; $702a: $88
	ld   a, b                                        ; $702b: $78
	adc  b                                           ; $702c: $88
	xor  c                                           ; $702d: $a9
	ld   a, c                                        ; $702e: $79
	sbc  d                                           ; $702f: $9a
	ld   a, b                                        ; $7030: $78
	xor  e                                           ; $7031: $ab
	add  a                                           ; $7032: $87
	adc  d                                           ; $7033: $8a
	sub  [hl]                                        ; $7034: $96
	sub  a                                           ; $7035: $97
	sbc  b                                           ; $7036: $98
	ld   [hl], a                                     ; $7037: $77
	ld   [hl], a                                     ; $7038: $77
	adc  b                                           ; $7039: $88
	ld   d, a                                        ; $703a: $57
	sub  a                                           ; $703b: $97
	ld   [hl], a                                     ; $703c: $77
	ld   a, d                                        ; $703d: $7a
	cp   b                                           ; $703e: $b8
	ld   a, d                                        ; $703f: $7a
	cp   c                                           ; $7040: $b9
	sbc  c                                           ; $7041: $99
	cp   d                                           ; $7042: $ba
	xor  b                                           ; $7043: $a8
	adc  e                                           ; $7044: $8b
	sub  a                                           ; $7045: $97
	sbc  c                                           ; $7046: $99
	add  l                                           ; $7047: $85
	ld   e, c                                        ; $7048: $59
	add  h                                           ; $7049: $84
	ld   d, a                                        ; $704a: $57
	ld   h, l                                        ; $704b: $65
	ld   b, [hl]                                     ; $704c: $46
	ld   h, [hl]                                     ; $704d: $66
	halt                                             ; $704e: $76
	xor  b                                           ; $704f: $a8
	xor  d                                           ; $7050: $aa
	xor  a                                           ; $7051: $af
	sbc  e                                           ; $7052: $9b
	db   $eb                                         ; $7053: $eb
	ret                                              ; $7054: $c9


	jp   z, Jump_0d6_7aa9                            ; $7055: $ca $a9 $7a

	ld   d, l                                        ; $7058: $55
	ld   b, d                                        ; $7059: $42
	ld   b, e                                        ; $705a: $43
	ld   hl, $1831                                   ; $705b: $21 $31 $18
	ld   d, [hl]                                     ; $705e: $56
	ld   a, h                                        ; $705f: $7c
	call $fdfc                                       ; $7060: $cd $fc $fd
	rst  $38                                         ; $7063: $ff
	rst  JumpTable                                         ; $7064: $df
	db   $fd                                         ; $7065: $fd
	ld   a, h                                        ; $7066: $7c
	xor  b                                           ; $7067: $a8
	ld   [hl], d                                     ; $7068: $72
	ld   d, c                                        ; $7069: $51
	ld   hl, $1211                                   ; $706a: $21 $11 $12
	ld   h, h                                        ; $706d: $64
	add  hl, de                                      ; $706e: $19
	db   $ed                                         ; $706f: $ed
	cp   h                                           ; $7070: $bc
	rst  $38                                         ; $7071: $ff
	db   $ed                                         ; $7072: $ed
	rst  $38                                         ; $7073: $ff
	db   $fc                                         ; $7074: $fc
	cp   l                                           ; $7075: $bd
	ret  z                                           ; $7076: $c8

	sbc  c                                           ; $7077: $99
	ld   h, h                                        ; $7078: $64
	ld   [hl+], a                                    ; $7079: $22
	ld   hl, $1111                                   ; $707a: $21 $11 $11
	ld   d, h                                        ; $707d: $54
	adc  c                                           ; $707e: $89
	cp   h                                           ; $707f: $bc
	rst  $38                                         ; $7080: $ff
	rst  $28                                         ; $7081: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7082: $cf
	cp   $fe                                         ; $7083: $fe $fe
	jp   z, Jump_0d6_7998                            ; $7085: $ca $98 $79

	ld   h, e                                        ; $7088: $63
	inc  de                                          ; $7089: $13
	ld   sp, $1511                                   ; $708a: $31 $11 $15
	inc  sp                                          ; $708d: $33
	sbc  c                                           ; $708e: $99
	db   $dd                                         ; $708f: $dd
	xor  [hl]                                        ; $7090: $ae
	rst  $38                                         ; $7091: $ff
	jp   hl                                          ; $7092: $e9


	rst  $38                                         ; $7093: $ff
	cp   h                                           ; $7094: $bc
	call c, $88a5                                    ; $7095: $dc $a5 $88
	ld   h, c                                        ; $7098: $61
	ld   b, l                                        ; $7099: $45
	ld   de, $1511                                   ; $709a: $11 $11 $15
	inc  hl                                          ; $709d: $23
	jp   hl                                          ; $709e: $e9


	cp   a                                           ; $709f: $bf
	cp   [hl]                                        ; $70a0: $be
	db   $ec                                         ; $70a1: $ec
	rst  JumpTable                                         ; $70a2: $df
	db   $fd                                         ; $70a3: $fd
	xor  h                                           ; $70a4: $ac
	ld   sp, hl                                      ; $70a5: $f9
	ld   c, d                                        ; $70a6: $4a
	and  [hl]                                        ; $70a7: $a6
	ld   [de], a                                     ; $70a8: $12
	ld   d, d                                        ; $70a9: $52
	ld   de, $6411                                   ; $70aa: $11 $11 $64
	ld   d, $bb                                      ; $70ad: $16 $bb
	cp   h                                           ; $70af: $bc
	rst  $28                                         ; $70b0: $ef
	cp   h                                           ; $70b1: $bc
	cp   $ee                                         ; $70b2: $fe $ee
	sbc  h                                           ; $70b4: $9c
	ret                                              ; $70b5: $c9


	ld   a, b                                        ; $70b6: $78
	and  h                                           ; $70b7: $a4
	inc  sp                                          ; $70b8: $33
	ld   b, e                                        ; $70b9: $43
	ld   de, $3312                                   ; $70ba: $11 $12 $33
	ld   [hl], $ac                                   ; $70bd: $36 $ac
	jp   z, $c5cf                                    ; $70bf: $ca $cf $c5

	rst  $38                                         ; $70c2: $ff
	sub  a                                           ; $70c3: $97
	rst  $38                                         ; $70c4: $ff
	ld   h, h                                        ; $70c5: $64
	xor  l                                           ; $70c6: $ad
	ld   [hl], c                                     ; $70c7: $71
	ld   [hl], $51                                   ; $70c8: $36 $51
	ld   [de], a                                     ; $70ca: $12
	ld   de, $5845                                   ; $70cb: $11 $45 $58
	adc  c                                           ; $70ce: $89
	jp   c, $dbbf                                    ; $70cf: $da $bf $db

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70d2: $cf
	db   $db                                         ; $70d3: $db
	ld   [$9799], a                                  ; $70d4: $ea $99 $97
	ld   d, l                                        ; $70d7: $55
	inc  [hl]                                        ; $70d8: $34
	ld   b, d                                        ; $70d9: $42
	ld   de, $6412                                   ; $70da: $11 $12 $64
	ld   e, c                                        ; $70dd: $59
	adc  c                                           ; $70de: $89
	xor  h                                           ; $70df: $ac
	call $ffb9                                       ; $70e0: $cd $b9 $ff
	set  3, d                                        ; $70e3: $cb $da
	adc  d                                           ; $70e5: $8a
	ld   l, c                                        ; $70e6: $69
	ld   h, [hl]                                     ; $70e7: $66
	ld   b, h                                        ; $70e8: $44
	ld   d, d                                        ; $70e9: $52
	ld   sp, $5224                                   ; $70ea: $31 $24 $52
	ld   e, e                                        ; $70ed: $5b
	ld   h, [hl]                                     ; $70ee: $66
	adc  l                                           ; $70ef: $8d
	xor  b                                           ; $70f0: $a8
	sbc  $ca                                         ; $70f1: $de $ca
	call $89db                                       ; $70f3: $cd $db $89
	and  a                                           ; $70f6: $a7
	ld   h, [hl]                                     ; $70f7: $66
	ld   [hl], l                                     ; $70f8: $75
	ld   b, l                                        ; $70f9: $45
	inc  sp                                          ; $70fa: $33
	inc  h                                           ; $70fb: $24
	ld   h, l                                        ; $70fc: $65
	ld   b, a                                        ; $70fd: $47
	add  a                                           ; $70fe: $87
	ld   a, c                                        ; $70ff: $79
	cp   d                                           ; $7100: $ba
	sbc  d                                           ; $7101: $9a
	call $cab9                                       ; $7102: $cd $b9 $ca
	sbc  d                                           ; $7105: $9a
	sbc  d                                           ; $7106: $9a
	sub  a                                           ; $7107: $97
	ld   h, a                                        ; $7108: $67
	ld   h, h                                        ; $7109: $64
	ld   b, l                                        ; $710a: $45
	ld   d, e                                        ; $710b: $53
	ld   b, l                                        ; $710c: $45
	ld   h, [hl]                                     ; $710d: $66
	ld   h, a                                        ; $710e: $67
	ld   a, b                                        ; $710f: $78
	xor  d                                           ; $7110: $aa
	ld   a, b                                        ; $7111: $78
	cp   d                                           ; $7112: $ba
	ld   a, d                                        ; $7113: $7a
	jp   c, $a889                                    ; $7114: $da $89 $a8

	ld   a, b                                        ; $7117: $78
	sub  a                                           ; $7118: $97
	ld   h, a                                        ; $7119: $67
	halt                                             ; $711a: $76
	ld   h, [hl]                                     ; $711b: $66
	ld   h, l                                        ; $711c: $65
	ld   h, [hl]                                     ; $711d: $66
	ld   h, a                                        ; $711e: $67
	ld   [hl], a                                     ; $711f: $77
	ld   h, a                                        ; $7120: $67
	sbc  b                                           ; $7121: $98
	ld   a, c                                        ; $7122: $79
	xor  c                                           ; $7123: $a9
	adc  b                                           ; $7124: $88
	xor  d                                           ; $7125: $aa
	adc  b                                           ; $7126: $88
	xor  d                                           ; $7127: $aa
	ld   [hl], a                                     ; $7128: $77
	sbc  b                                           ; $7129: $98
	ld   [hl], a                                     ; $712a: $77
	adc  b                                           ; $712b: $88
	ld   h, a                                        ; $712c: $67
	ld   [hl], a                                     ; $712d: $77
	ld   a, b                                        ; $712e: $78
	ld   [hl], a                                     ; $712f: $77
	ld   a, b                                        ; $7130: $78
	add  a                                           ; $7131: $87
	sbc  c                                           ; $7132: $99
	add  a                                           ; $7133: $87
	adc  c                                           ; $7134: $89
	add  a                                           ; $7135: $87
	adc  c                                           ; $7136: $89
	sbc  b                                           ; $7137: $98
	ld   a, b                                        ; $7138: $78
	sbc  c                                           ; $7139: $99
	sbc  c                                           ; $713a: $99
	adc  b                                           ; $713b: $88
	sbc  c                                           ; $713c: $99
	sbc  b                                           ; $713d: $98
	adc  c                                           ; $713e: $89
	adc  b                                           ; $713f: $88
	sbc  b                                           ; $7140: $98
	add  a                                           ; $7141: $87
	adc  b                                           ; $7142: $88
	adc  b                                           ; $7143: $88
	adc  b                                           ; $7144: $88
	sbc  b                                           ; $7145: $98
	sbc  b                                           ; $7146: $98
	adc  b                                           ; $7147: $88
	sbc  b                                           ; $7148: $98
	adc  b                                           ; $7149: $88
	adc  b                                           ; $714a: $88
	adc  b                                           ; $714b: $88
	adc  b                                           ; $714c: $88
	adc  b                                           ; $714d: $88
	adc  c                                           ; $714e: $89
	adc  b                                           ; $714f: $88
	sbc  b                                           ; $7150: $98
	ld   a, c                                        ; $7151: $79
	adc  b                                           ; $7152: $88
	adc  c                                           ; $7153: $89
	sbc  b                                           ; $7154: $98
	adc  c                                           ; $7155: $89
	adc  b                                           ; $7156: $88
	adc  c                                           ; $7157: $89
	adc  b                                           ; $7158: $88
	adc  b                                           ; $7159: $88
	adc  b                                           ; $715a: $88
	ld   a, b                                        ; $715b: $78
	add  a                                           ; $715c: $87
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
	sbc  b                                           ; $7167: $98
	ld   [hl], a                                     ; $7168: $77
	adc  b                                           ; $7169: $88
	ld   a, b                                        ; $716a: $78
	adc  b                                           ; $716b: $88
	ld   a, b                                        ; $716c: $78
	adc  b                                           ; $716d: $88
	adc  b                                           ; $716e: $88
	adc  b                                           ; $716f: $88
	adc  b                                           ; $7170: $88
	adc  b                                           ; $7171: $88
	ld   a, b                                        ; $7172: $78
	adc  b                                           ; $7173: $88
	adc  b                                           ; $7174: $88
	adc  b                                           ; $7175: $88
	adc  b                                           ; $7176: $88
	add  a                                           ; $7177: $87
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
	adc  c                                           ; $7241: $89
	adc  c                                           ; $7242: $89
	add  a                                           ; $7243: $87
	ld   a, d                                        ; $7244: $7a
	and  [hl]                                        ; $7245: $a6
	ld   a, d                                        ; $7246: $7a
	add  [hl]                                        ; $7247: $86
	sbc  c                                           ; $7248: $99
	ld   a, b                                        ; $7249: $78
	adc  b                                           ; $724a: $88
	adc  c                                           ; $724b: $89
	adc  d                                           ; $724c: $8a
	add  [hl]                                        ; $724d: $86
	xor  c                                           ; $724e: $a9
	ld   a, c                                        ; $724f: $79
	sub  a                                           ; $7250: $97
	adc  c                                           ; $7251: $89
	ld   h, [hl]                                     ; $7252: $66
	sbc  d                                           ; $7253: $9a
	and  l                                           ; $7254: $a5
	ld   l, h                                        ; $7255: $6c
	ld   a, c                                        ; $7256: $79
	adc  b                                           ; $7257: $88
	sub  $3a                                         ; $7258: $d6 $3a
	add  a                                           ; $725a: $87
	ld   hl, sp+$2a                                  ; $725b: $f8 $2a
	add  h                                           ; $725d: $84
	sbc  d                                           ; $725e: $9a
	ld   l, b                                        ; $725f: $68
	and  [hl]                                        ; $7260: $a6
	add  a                                           ; $7261: $87
	ld   l, e                                        ; $7262: $6b
	and  l                                           ; $7263: $a5
	xor  b                                           ; $7264: $a8
	ld   e, c                                        ; $7265: $59
	add  [hl]                                        ; $7266: $86
	ld   a, b                                        ; $7267: $78
	cp   b                                           ; $7268: $b8
	ld   a, d                                        ; $7269: $7a
	add  [hl]                                        ; $726a: $86
	xor  h                                           ; $726b: $ac
	ld   [hl], a                                     ; $726c: $77
	or   a                                           ; $726d: $b7
	ld   l, c                                        ; $726e: $69
	ld   [hl], a                                     ; $726f: $77
	and  a                                           ; $7270: $a7
	ld   l, c                                        ; $7271: $69
	add  a                                           ; $7272: $87
	adc  c                                           ; $7273: $89
	ld   a, c                                        ; $7274: $79
	ld   a, b                                        ; $7275: $78
	ret                                              ; $7276: $c9


	ld   [hl], a                                     ; $7277: $77
	ld   a, b                                        ; $7278: $78
	adc  b                                           ; $7279: $88
	sbc  b                                           ; $727a: $98
	add  a                                           ; $727b: $87
	ld   h, a                                        ; $727c: $67
	ld   a, c                                        ; $727d: $79
	sub  a                                           ; $727e: $97
	cp   d                                           ; $727f: $ba
	ld   c, c                                        ; $7280: $49
	and  l                                           ; $7281: $a5
	adc  d                                           ; $7282: $8a
	ld   d, a                                        ; $7283: $57
	and  [hl]                                        ; $7284: $a6
	sbc  c                                           ; $7285: $99
	ld   e, c                                        ; $7286: $59
	sub  a                                           ; $7287: $97
	sbc  c                                           ; $7288: $99
	ld   a, c                                        ; $7289: $79
	add  a                                           ; $728a: $87
	sub  a                                           ; $728b: $97
	adc  c                                           ; $728c: $89
	ld   a, b                                        ; $728d: $78
	ld   a, b                                        ; $728e: $78
	adc  b                                           ; $728f: $88
	adc  b                                           ; $7290: $88
	ld   a, c                                        ; $7291: $79
	sub  a                                           ; $7292: $97
	adc  c                                           ; $7293: $89
	adc  b                                           ; $7294: $88
	sub  a                                           ; $7295: $97
	ld   a, c                                        ; $7296: $79
	ld   a, b                                        ; $7297: $78
	sub  a                                           ; $7298: $97
	ld   a, d                                        ; $7299: $7a
	add  [hl]                                        ; $729a: $86
	xor  c                                           ; $729b: $a9
	ld   e, e                                        ; $729c: $5b
	ld   [hl], a                                     ; $729d: $77
	sub  [hl]                                        ; $729e: $96
	sbc  c                                           ; $729f: $99
	ld   l, b                                        ; $72a0: $68
	sub  a                                           ; $72a1: $97
	add  a                                           ; $72a2: $87
	adc  b                                           ; $72a3: $88
	adc  c                                           ; $72a4: $89
	ld   a, d                                        ; $72a5: $7a
	sub  a                                           ; $72a6: $97
	cp   c                                           ; $72a7: $b9
	ld   a, c                                        ; $72a8: $79
	add  [hl]                                        ; $72a9: $86
	adc  b                                           ; $72aa: $88
	adc  b                                           ; $72ab: $88
	add  a                                           ; $72ac: $87
	sbc  b                                           ; $72ad: $98
	ld   a, b                                        ; $72ae: $78
	ld   l, b                                        ; $72af: $68
	adc  b                                           ; $72b0: $88
	adc  b                                           ; $72b1: $88
	adc  b                                           ; $72b2: $88
	add  a                                           ; $72b3: $87
	ld   a, c                                        ; $72b4: $79
	sbc  b                                           ; $72b5: $98
	sbc  b                                           ; $72b6: $98
	ld   a, b                                        ; $72b7: $78
	add  a                                           ; $72b8: $87
	adc  b                                           ; $72b9: $88
	adc  b                                           ; $72ba: $88
	halt                                             ; $72bb: $76
	ld   a, b                                        ; $72bc: $78
	sbc  c                                           ; $72bd: $99
	ld   l, d                                        ; $72be: $6a
	sub  a                                           ; $72bf: $97
	sbc  b                                           ; $72c0: $98
	sub  a                                           ; $72c1: $97
	add  a                                           ; $72c2: $87
	adc  e                                           ; $72c3: $8b
	and  a                                           ; $72c4: $a7
	ld   l, c                                        ; $72c5: $69
	ld   a, b                                        ; $72c6: $78
	adc  b                                           ; $72c7: $88
	add  a                                           ; $72c8: $87
	sbc  b                                           ; $72c9: $98
	ld   a, d                                        ; $72ca: $7a
	add  a                                           ; $72cb: $87
	sub  a                                           ; $72cc: $97
	and  a                                           ; $72cd: $a7
	xor  b                                           ; $72ce: $a8
	ld   a, d                                        ; $72cf: $7a
	ld   a, c                                        ; $72d0: $79
	ld   a, b                                        ; $72d1: $78
	sub  a                                           ; $72d2: $97
	adc  b                                           ; $72d3: $88
	adc  b                                           ; $72d4: $88
	sbc  c                                           ; $72d5: $99
	ld   l, c                                        ; $72d6: $69
	ld   [hl], a                                     ; $72d7: $77
	sub  a                                           ; $72d8: $97
	sbc  b                                           ; $72d9: $98
	ld   a, b                                        ; $72da: $78
	ld   a, b                                        ; $72db: $78
	sub  [hl]                                        ; $72dc: $96
	cp   b                                           ; $72dd: $b8
	adc  e                                           ; $72de: $8b
	ld   e, d                                        ; $72df: $5a
	sub  [hl]                                        ; $72e0: $96
	or   l                                           ; $72e1: $b5
	ld   a, d                                        ; $72e2: $7a
	ld   e, c                                        ; $72e3: $59
	add  a                                           ; $72e4: $87
	sub  a                                           ; $72e5: $97
	sbc  c                                           ; $72e6: $99
	ld   a, c                                        ; $72e7: $79
	ld   l, b                                        ; $72e8: $68
	sub  a                                           ; $72e9: $97
	adc  c                                           ; $72ea: $89
	ld   a, b                                        ; $72eb: $78
	add  a                                           ; $72ec: $87
	and  a                                           ; $72ed: $a7
	adc  d                                           ; $72ee: $8a
	add  a                                           ; $72ef: $87
	add  a                                           ; $72f0: $87
	adc  c                                           ; $72f1: $89
	ld   l, d                                        ; $72f2: $6a
	and  a                                           ; $72f3: $a7
	ld   a, b                                        ; $72f4: $78
	sub  a                                           ; $72f5: $97
	sbc  c                                           ; $72f6: $99
	add  a                                           ; $72f7: $87
	ld   [hl], a                                     ; $72f8: $77
	ld   l, c                                        ; $72f9: $69
	ld   [hl], a                                     ; $72fa: $77
	sub  a                                           ; $72fb: $97
	adc  c                                           ; $72fc: $89
	ld   a, c                                        ; $72fd: $79
	add  a                                           ; $72fe: $87
	adc  d                                           ; $72ff: $8a
	ld   l, d                                        ; $7300: $6a
	halt                                             ; $7301: $76
	or   l                                           ; $7302: $b5
	adc  b                                           ; $7303: $88
	ld   a, b                                        ; $7304: $78
	and  a                                           ; $7305: $a7
	sbc  d                                           ; $7306: $9a
	ld   e, e                                        ; $7307: $5b
	ld   h, a                                        ; $7308: $67
	or   h                                           ; $7309: $b4
	xor  b                                           ; $730a: $a8
	ld   l, b                                        ; $730b: $68
	sub  [hl]                                        ; $730c: $96
	sub  a                                           ; $730d: $97
	adc  d                                           ; $730e: $8a
	ld   e, c                                        ; $730f: $59
	sub  a                                           ; $7310: $97
	adc  b                                           ; $7311: $88
	ld   a, b                                        ; $7312: $78
	add  l                                           ; $7313: $85
	or   a                                           ; $7314: $b7
	ld   a, c                                        ; $7315: $79
	ld   l, d                                        ; $7316: $6a
	ld   a, b                                        ; $7317: $78
	and  a                                           ; $7318: $a7
	ld   a, c                                        ; $7319: $79
	add  l                                           ; $731a: $85
	and  a                                           ; $731b: $a7
	ld   a, c                                        ; $731c: $79
	ld   l, c                                        ; $731d: $69
	sub  [hl]                                        ; $731e: $96
	sbc  c                                           ; $731f: $99
	ld   a, c                                        ; $7320: $79
	sub  a                                           ; $7321: $97
	sbc  c                                           ; $7322: $99
	ld   l, c                                        ; $7323: $69
	ld   l, c                                        ; $7324: $69
	sub  [hl]                                        ; $7325: $96
	and  [hl]                                        ; $7326: $a6
	adc  b                                           ; $7327: $88
	add  a                                           ; $7328: $87
	adc  b                                           ; $7329: $88
	ld   l, d                                        ; $732a: $6a
	ld   e, c                                        ; $732b: $59
	sub  a                                           ; $732c: $97
	sbc  b                                           ; $732d: $98
	sub  a                                           ; $732e: $97
	add  a                                           ; $732f: $87
	adc  c                                           ; $7330: $89
	ld   e, d                                        ; $7331: $5a
	halt                                             ; $7332: $76
	and  a                                           ; $7333: $a7
	adc  b                                           ; $7334: $88
	add  [hl]                                        ; $7335: $86
	xor  d                                           ; $7336: $aa
	ld   e, e                                        ; $7337: $5b
	ld   l, b                                        ; $7338: $68
	sbc  b                                           ; $7339: $98
	add  [hl]                                        ; $733a: $86
	sbc  c                                           ; $733b: $99
	sub  [hl]                                        ; $733c: $96
	sub  a                                           ; $733d: $97
	ld   l, d                                        ; $733e: $6a
	ld   [hl], a                                     ; $733f: $77
	adc  b                                           ; $7340: $88
	ld   a, c                                        ; $7341: $79
	ld   a, b                                        ; $7342: $78
	and  [hl]                                        ; $7343: $a6
	adc  c                                           ; $7344: $89
	ld   [hl], a                                     ; $7345: $77
	adc  b                                           ; $7346: $88
	add  a                                           ; $7347: $87
	xor  b                                           ; $7348: $a8
	ld   l, b                                        ; $7349: $68
	adc  b                                           ; $734a: $88
	ld   l, c                                        ; $734b: $69
	add  a                                           ; $734c: $87
	adc  b                                           ; $734d: $88
	sub  a                                           ; $734e: $97
	adc  c                                           ; $734f: $89
	adc  c                                           ; $7350: $89
	adc  b                                           ; $7351: $88
	ld   a, b                                        ; $7352: $78
	ld   a, b                                        ; $7353: $78
	add  a                                           ; $7354: $87
	adc  b                                           ; $7355: $88
	add  a                                           ; $7356: $87
	sbc  b                                           ; $7357: $98
	adc  c                                           ; $7358: $89
	ld   a, b                                        ; $7359: $78
	adc  b                                           ; $735a: $88
	adc  b                                           ; $735b: $88
	adc  b                                           ; $735c: $88
	adc  b                                           ; $735d: $88
	ld   a, b                                        ; $735e: $78
	adc  b                                           ; $735f: $88
	add  a                                           ; $7360: $87
	adc  b                                           ; $7361: $88
	add  a                                           ; $7362: $87
	ld   a, b                                        ; $7363: $78
	adc  b                                           ; $7364: $88
	adc  b                                           ; $7365: $88
	adc  b                                           ; $7366: $88
	adc  b                                           ; $7367: $88
	adc  b                                           ; $7368: $88
	adc  b                                           ; $7369: $88
	adc  b                                           ; $736a: $88
	adc  b                                           ; $736b: $88
	ld   a, b                                        ; $736c: $78
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

Jump_0d6_73fa:
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

jr_0d6_7467:
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
	sbc  b                                           ; $7479: $98
	xor  e                                           ; $747a: $ab
	and  [hl]                                        ; $747b: $a6
	ld   a, b                                        ; $747c: $78
	ld   l, b                                        ; $747d: $68
	adc  b                                           ; $747e: $88
	add  a                                           ; $747f: $87
	ld   a, b                                        ; $7480: $78
	sbc  c                                           ; $7481: $99
	sbc  c                                           ; $7482: $99
	sbc  c                                           ; $7483: $99
	call z, $9988                                    ; $7484: $cc $88 $99
	cp   l                                           ; $7487: $bd
	set  3, c                                        ; $7488: $cb $d9
	sbc  e                                           ; $748a: $9b
	sub  a                                           ; $748b: $97
	ld   a, b                                        ; $748c: $78
	ld   h, l                                        ; $748d: $65
	ld   b, [hl]                                     ; $748e: $46
	ld   h, l                                        ; $748f: $65
	ld   b, [hl]                                     ; $7490: $46
	sbc  b                                           ; $7491: $98
	sbc  h                                           ; $7492: $9c
	db   $db                                         ; $7493: $db
	jp   z, $89aa                                    ; $7494: $ca $aa $89

	sub  l                                           ; $7497: $95
	ld   d, [hl]                                     ; $7498: $56
	ld   h, [hl]                                     ; $7499: $66
	ld   d, l                                        ; $749a: $55
	ld   h, [hl]                                     ; $749b: $66
	ld   b, e                                        ; $749c: $43
	ld   h, a                                        ; $749d: $67
	halt                                             ; $749e: $76
	ld   a, d                                        ; $749f: $7a
	res  5, d                                        ; $74a0: $cb $aa
	sbc  b                                           ; $74a2: $98
	ld   h, h                                        ; $74a3: $64
	ld   h, a                                        ; $74a4: $67
	ld   h, l                                        ; $74a5: $65
	ld   d, l                                        ; $74a6: $55
	halt                                             ; $74a7: $76
	ld   b, l                                        ; $74a8: $45
	ld   l, b                                        ; $74a9: $68
	adc  b                                           ; $74aa: $88
	ld   [hl], a                                     ; $74ab: $77
	sub  a                                           ; $74ac: $97
	ld   h, [hl]                                     ; $74ad: $66
	ld   a, b                                        ; $74ae: $78
	halt                                             ; $74af: $76
	ld   h, a                                        ; $74b0: $67
	sub  a                                           ; $74b1: $97
	ld   e, b                                        ; $74b2: $58
	sub  a                                           ; $74b3: $97
	ld   h, a                                        ; $74b4: $67
	ld   h, a                                        ; $74b5: $67
	halt                                             ; $74b6: $76
	ld   h, a                                        ; $74b7: $67
	ld   [hl], a                                     ; $74b8: $77
	ld   [hl], a                                     ; $74b9: $77
	ld   [hl], a                                     ; $74ba: $77
	adc  c                                           ; $74bb: $89
	add  a                                           ; $74bc: $87
	ld   a, c                                        ; $74bd: $79
	sub  a                                           ; $74be: $97
	ld   h, a                                        ; $74bf: $67
	add  a                                           ; $74c0: $87
	ld   h, a                                        ; $74c1: $67
	adc  b                                           ; $74c2: $88
	ld   a, b                                        ; $74c3: $78
	add  [hl]                                        ; $74c4: $86
	adc  b                                           ; $74c5: $88
	ld   h, [hl]                                     ; $74c6: $66
	adc  b                                           ; $74c7: $88
	ld   [hl], a                                     ; $74c8: $77
	ld   l, c                                        ; $74c9: $69
	add  a                                           ; $74ca: $87
	ld   [hl], a                                     ; $74cb: $77
	ret                                              ; $74cc: $c9


	adc  d                                           ; $74cd: $8a
	xor  d                                           ; $74ce: $aa
	xor  c                                           ; $74cf: $a9
	ld   a, h                                        ; $74d0: $7c
	xor  c                                           ; $74d1: $a9
	adc  b                                           ; $74d2: $88
	cp   b                                           ; $74d3: $b8
	add  a                                           ; $74d4: $87
	add  a                                           ; $74d5: $87
	sbc  c                                           ; $74d6: $99
	ld   a, c                                        ; $74d7: $79
	ld   l, b                                        ; $74d8: $68
	ld   [hl], a                                     ; $74d9: $77
	ld   d, l                                        ; $74da: $55
	halt                                             ; $74db: $76
	ld   d, h                                        ; $74dc: $54
	ld   d, [hl]                                     ; $74dd: $56
	add  [hl]                                        ; $74de: $86
	jr   c, jr_0d6_7467                              ; $74df: $38 $86

	ld   h, [hl]                                     ; $74e1: $66
	sbc  e                                           ; $74e2: $9b
	call c, $ffee                                    ; $74e3: $dc $ee $ff
	rst  JumpTable                                         ; $74e6: $df
	rst  $28                                         ; $74e7: $ef
	db   $dd                                         ; $74e8: $dd
	call c, $b7db                                    ; $74e9: $dc $db $b7
	ld   [hl], l                                     ; $74ec: $75
	ld   b, c                                        ; $74ed: $41
	ld   de, $1111                                   ; $74ee: $11 $11 $11
	ld   de, $ff6c                                   ; $74f1: $11 $6c $ff
	rst  $38                                         ; $74f4: $ff
	rst  $38                                         ; $74f5: $ff
	db   $fd                                         ; $74f6: $fd
	set  7, [hl]                                     ; $74f7: $cb $fe
	call c, $aecf                                    ; $74f9: $dc $cf $ae
	cp   a                                           ; $74fc: $bf
	db   $ec                                         ; $74fd: $ec
	jp   c, $11c2                                    ; $74fe: $da $c2 $11

	ld   de, $1111                                   ; $7501: $11 $11 $11
	ld   h, l                                        ; $7504: $65
	cp   a                                           ; $7505: $bf
	rst  $38                                         ; $7506: $ff
	rst  $38                                         ; $7507: $ff
	xor  $c6                                         ; $7508: $ee $c6
	ld   c, h                                        ; $750a: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $750b: $cf
	sbc  a                                           ; $750c: $9f
	rst  $38                                         ; $750d: $ff
	ei                                               ; $750e: $fb
	db   $fd                                         ; $750f: $fd
	ld   hl, sp-$48                                  ; $7510: $f8 $b8
	ld   b, c                                        ; $7512: $41
	ld   de, $1111                                   ; $7513: $11 $11 $11
	ld   de, $cfa3                                   ; $7516: $11 $a3 $cf
	rst  $38                                         ; $7519: $ff
	rst  $38                                         ; $751a: $ff
	cp   a                                           ; $751b: $bf
	ld   d, l                                        ; $751c: $55
	ld   a, h                                        ; $751d: $7c
	cp   $fe                                         ; $751e: $fe $fe
	db   $fd                                         ; $7520: $fd
	db   $dd                                         ; $7521: $dd
	adc  $c9                                         ; $7522: $ce $c9
	ld   a, b                                        ; $7524: $78
	ld   b, c                                        ; $7525: $41
	ld   de, $1111                                   ; $7526: $11 $11 $11
	inc  d                                           ; $7529: $14
	or   e                                           ; $752a: $b3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $752b: $cf
	rst  $38                                         ; $752c: $ff
	db   $fc                                         ; $752d: $fc
	xor  h                                           ; $752e: $ac
	halt                                             ; $752f: $76
	xor  h                                           ; $7530: $ac
	rst  $38                                         ; $7531: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7532: $cf
	rst  $38                                         ; $7533: $ff
	adc  $cb                                         ; $7534: $ce $cb
	or   l                                           ; $7536: $b5
	sub  e                                           ; $7537: $93
	ld   sp, $1111                                   ; $7538: $31 $11 $11
	ld   de, $7b1a                                   ; $753b: $11 $1a $7b
	rst  $38                                         ; $753e: $ff
	rst  $38                                         ; $753f: $ff
	xor  d                                           ; $7540: $aa
	add  $4a                                         ; $7541: $c6 $4a
	rst  $28                                         ; $7543: $ef
	cp   $df                                         ; $7544: $fe $df
	db   $fd                                         ; $7546: $fd
	sbc  $ba                                         ; $7547: $de $ba
	ld   [hl], h                                     ; $7549: $74
	ld   h, d                                        ; $754a: $62
	ld   de, $1111                                   ; $754b: $11 $11 $11
	ld   de, $2fd2                                   ; $754e: $11 $d2 $2f
	rst  $38                                         ; $7551: $ff
	ei                                               ; $7552: $fb
	cp   a                                           ; $7553: $bf
	add  l                                           ; $7554: $85
	adc  d                                           ; $7555: $8a
	rst  $38                                         ; $7556: $ff
	sbc  $ff                                         ; $7557: $de $ff
	set  3, [hl]                                     ; $7559: $cb $de
	xor  c                                           ; $755b: $a9
	ld   e, b                                        ; $755c: $58
	ld   b, c                                        ; $755d: $41
	ld   de, $1111                                   ; $755e: $11 $11 $11
	add  hl, de                                      ; $7561: $19
	sub  c                                           ; $7562: $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7563: $cf
	db   $fc                                         ; $7564: $fc
	db   $fd                                         ; $7565: $fd
	adc  d                                           ; $7566: $8a
	ld   d, a                                        ; $7567: $57
	cp   [hl]                                        ; $7568: $be
	rst  $38                                         ; $7569: $ff
	rst  JumpTable                                         ; $756a: $df
	ei                                               ; $756b: $fb
	db   $ec                                         ; $756c: $ec
	reti                                             ; $756d: $d9


	cp   b                                           ; $756e: $b8
	ld   d, h                                        ; $756f: $54
	ld   [de], a                                     ; $7570: $12
	ld   de, $1111                                   ; $7571: $11 $11 $11
	ld   e, d                                        ; $7574: $5a
	ld   a, [hl+]                                    ; $7575: $2a
	rst  $38                                         ; $7576: $ff
	rst  JumpTable                                         ; $7577: $df
	jp   hl                                          ; $7578: $e9


	rst  ToBoot                                         ; $7579: $c7
	ld   l, e                                        ; $757a: $6b
	rst  $38                                         ; $757b: $ff
	cp   a                                           ; $757c: $bf
	rst  $28                                         ; $757d: $ef
	db   $eb                                         ; $757e: $eb
	call c, $68d5                                    ; $757f: $dc $d5 $68
	ld   sp, $1111                                   ; $7582: $31 $11 $11
	ld   de, $c311                                   ; $7585: $11 $11 $c3

Jump_0d6_7588:
	xor  a                                           ; $7588: $af
	rst  $38                                         ; $7589: $ff
	xor  l                                           ; $758a: $ad
	sbc  $55                                         ; $758b: $de $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $758d: $cf
	db   $eb                                         ; $758e: $eb
	rst  $38                                         ; $758f: $ff
	ei                                               ; $7590: $fb
	adc  $e9                                         ; $7591: $ce $e9
	ld   l, b                                        ; $7593: $68
	ld   [hl], e                                     ; $7594: $73
	ld   de, $1111                                   ; $7595: $11 $11 $11
	ld   de, $263d                                   ; $7598: $11 $3d $26
	rst  $28                                         ; $759b: $ef
	ei                                               ; $759c: $fb
	ld   e, a                                        ; $759d: $5f
	db   $f4                                         ; $759e: $f4
	ld   e, d                                        ; $759f: $5a
	rst  $38                                         ; $75a0: $ff
	sbc  d                                           ; $75a1: $9a
	rst  $38                                         ; $75a2: $ff
	sbc  l                                           ; $75a3: $9d
	rst  JumpTable                                         ; $75a4: $df
	and  l                                           ; $75a5: $a5
	sub  [hl]                                        ; $75a6: $96
	ld   h, c                                        ; $75a7: $61
	ld   de, $1111                                   ; $75a8: $11 $11 $11
	ld   de, $5fb1                                   ; $75ab: $11 $b1 $5f
	cp   $ed                                         ; $75ae: $fe $ed
	rst  JumpTable                                         ; $75b0: $df
	add  [hl]                                        ; $75b1: $86
	call $efdb                                       ; $75b2: $cd $db $ef
	ld   a, [$bcbd]                                  ; $75b5: $fa $bd $bc
	adc  c                                           ; $75b8: $89
	add  e                                           ; $75b9: $83
	ld   hl, $1111                                   ; $75ba: $21 $11 $11
	ld   de, $191b                                   ; $75bd: $11 $1b $19
	cp   $cf                                         ; $75c0: $fe $cf
	ei                                               ; $75c2: $fb
	ld   [$ec6b], a                                  ; $75c3: $ea $6b $ec
	xor  a                                           ; $75c6: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75c7: $cf
	cp   l                                           ; $75c8: $bd
	ld   a, [$a5b8]                                  ; $75c9: $fa $b8 $a5
	ld   b, c                                        ; $75cc: $41
	ld   de, $1111                                   ; $75cd: $11 $11 $11
	rla                                              ; $75d0: $17
	sub  c                                           ; $75d1: $91
	sbc  a                                           ; $75d2: $9f
	db   $fc                                         ; $75d3: $fc

jr_0d6_75d4:
	sbc  a                                           ; $75d4: $9f
	rst  $38                                         ; $75d5: $ff
	jr   jr_0d6_75d4                                 ; $75d6: $18 $fc

	xor  d                                           ; $75d8: $aa
	rst  $38                                         ; $75d9: $ff
	add  $cf                                         ; $75da: $c6 $cf
	ret                                              ; $75dc: $c9


	ld   a, e                                        ; $75dd: $7b
	and  c                                           ; $75de: $a1
	ld   hl, $1111                                   ; $75df: $21 $11 $11
	ld   de, $1b15                                   ; $75e2: $11 $15 $1b
	db   $fc                                         ; $75e5: $fc
	rst  JumpTable                                         ; $75e6: $df
	db   $fc                                         ; $75e7: $fc
	ld   a, [$bdbd]                                  ; $75e8: $fa $bd $bd
	adc  $dd                                         ; $75eb: $ce $dd
	sbc  e                                           ; $75ed: $9b
	cp   h                                           ; $75ee: $bc
	cp   c                                           ; $75ef: $b9
	xor  d                                           ; $75f0: $aa
	ld   h, c                                        ; $75f1: $61
	ld   de, $1111                                   ; $75f2: $11 $11 $11
	ld   [de], a                                     ; $75f5: $12
	ld   hl, $dc9f                                   ; $75f6: $21 $9f $dc
	rst  $38                                         ; $75f9: $ff
	cp   $8f                                         ; $75fa: $fe $8f
	ld   a, [$dcbf]                                  ; $75fc: $fa $bf $dc
	cp   h                                           ; $75ff: $bc
	db   $db                                         ; $7600: $db
	cp   d                                           ; $7601: $ba
	ret                                              ; $7602: $c9


	ld   h, [hl]                                     ; $7603: $66
	ld   b, c                                        ; $7604: $41
	ld   de, $1111                                   ; $7605: $11 $11 $11
	ld   hl, $cf1a                                   ; $7608: $21 $1a $cf
	db   $fc                                         ; $760b: $fc
	rst  $38                                         ; $760c: $ff
	ld   a, [$eadf]                                  ; $760d: $fa $df $ea
	sbc  [hl]                                        ; $7610: $9e
	reti                                             ; $7611: $d9


	cp   e                                           ; $7612: $bb
	call z, $b78c                                    ; $7613: $cc $8c $b7
	ld   b, e                                        ; $7616: $43
	ld   hl, $1111                                   ; $7617: $21 $11 $11
	ld   de, $bb11                                   ; $761a: $11 $11 $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $761d: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $761e: $cf
	rst  $38                                         ; $761f: $ff
	cp   a                                           ; $7620: $bf
	ld   a, [$ecdd]                                  ; $7621: $fa $dd $ec
	sbc  d                                           ; $7624: $9a
	xor  d                                           ; $7625: $aa
	adc  b                                           ; $7626: $88
	xor  c                                           ; $7627: $a9
	sub  [hl]                                        ; $7628: $96
	ld   h, e                                        ; $7629: $63
	ld   sp, $1111                                   ; $762a: $31 $11 $11
	ld   [de], a                                     ; $762d: $12
	inc  de                                          ; $762e: $13
	sbc  h                                           ; $762f: $9c
	db   $db                                         ; $7630: $db
	rst  $38                                         ; $7631: $ff
	rst  $38                                         ; $7632: $ff
	rst  $38                                         ; $7633: $ff
	xor  $dd                                         ; $7634: $ee $dd
	ret                                              ; $7636: $c9


	ld   a, c                                        ; $7637: $79
	add  a                                           ; $7638: $87
	adc  b                                           ; $7639: $88
	xor  b                                           ; $763a: $a8
	ld   [hl], a                                     ; $763b: $77
	ld   h, e                                        ; $763c: $63
	ld   sp, $1111                                   ; $763d: $31 $11 $11
	ld   de, $5819                                   ; $7640: $11 $19 $58
	cp   l                                           ; $7643: $bd
	rst  $38                                         ; $7644: $ff
	rst  $38                                         ; $7645: $ff
	rst  $38                                         ; $7646: $ff
	rst  $28                                         ; $7647: $ef
	db   $fc                                         ; $7648: $fc
	cp   d                                           ; $7649: $ba
	ld   a, c                                        ; $764a: $79
	ld   [hl], a                                     ; $764b: $77
	add  a                                           ; $764c: $87
	ld   [hl], a                                     ; $764d: $77
	ld   h, l                                        ; $764e: $65
	ld   d, l                                        ; $764f: $55
	ld   [hl-], a                                    ; $7650: $32
	ld   de, $1111                                   ; $7651: $11 $11 $11
	ld   b, h                                        ; $7654: $44
	ld   c, h                                        ; $7655: $4c

Call_0d6_7656:
	xor  h                                           ; $7656: $ac
	rst  $38                                         ; $7657: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7658: $cf
	rst  $38                                         ; $7659: $ff
	rst  $38                                         ; $765a: $ff
	db   $fd                                         ; $765b: $fd
	cp   c                                           ; $765c: $b9
	and  a                                           ; $765d: $a7
	ld   b, [hl]                                     ; $765e: $46
	ld   h, [hl]                                     ; $765f: $66
	ld   d, [hl]                                     ; $7660: $56
	ld   h, l                                        ; $7661: $65
	ld   b, [hl]                                     ; $7662: $46
	ld   d, d                                        ; $7663: $52
	ld   de, $1113                                   ; $7664: $11 $13 $11
	ld   [hl], l                                     ; $7667: $75
	add  hl, de                                      ; $7668: $19
	sbc  b                                           ; $7669: $98
	rst  $38                                         ; $766a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $766b: $cf
	rst  $38                                         ; $766c: $ff
	rst  $38                                         ; $766d: $ff
	cp   $db                                         ; $766e: $fe $db
	rst  $10                                         ; $7670: $d7
	ld   h, [hl]                                     ; $7671: $66
	ld   d, l                                        ; $7672: $55
	ld   h, $44                                      ; $7673: $26 $44
	ld   b, l                                        ; $7675: $45
	ld   d, d                                        ; $7676: $52
	ld   sp, $1112                                   ; $7677: $31 $12 $11
	ld   d, e                                        ; $767a: $53
	jr   c, jr_0d6_76f7                              ; $767b: $38 $7a

	db   $dd                                         ; $767d: $dd
	cp   a                                           ; $767e: $bf
	rst  $38                                         ; $767f: $ff
	rst  $38                                         ; $7680: $ff
	rst  $38                                         ; $7681: $ff
	db   $ec                                         ; $7682: $ec
	jp   c, Jump_0d6_6477                            ; $7683: $da $77 $64

	ld   d, h                                        ; $7686: $54
	ld   b, h                                        ; $7687: $44
	inc  [hl]                                        ; $7688: $34

Jump_0d6_7689:
	inc  [hl]                                        ; $7689: $34
	ld   [hl+], a                                    ; $768a: $22
	ld   [de], a                                     ; $768b: $12
	ld   sp, $2535                                   ; $768c: $31 $35 $25
	ld   l, b                                        ; $768f: $68
	xor  e                                           ; $7690: $ab
	xor  l                                           ; $7691: $ad
	cp   $ff                                         ; $7692: $fe $ff
	rst  $38                                         ; $7694: $ff
	cp   $cd                                         ; $7695: $fe $cd

Jump_0d6_7697:
	xor  b                                           ; $7697: $a8

Jump_0d6_7698:
	add  [hl]                                        ; $7698: $86
	ld   d, l                                        ; $7699: $55
	ld   d, e                                        ; $769a: $53
	ld   b, e                                        ; $769b: $43
	ld   d, d                                        ; $769c: $52
	inc  sp                                          ; $769d: $33
	ld   de, $1224                                   ; $769e: $11 $24 $12
	ld   d, c                                        ; $76a1: $51
	ld   d, a                                        ; $76a2: $57
	sub  a                                           ; $76a3: $97
	cp   e                                           ; $76a4: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76a5: $cf
	rst  $28                                         ; $76a6: $ef
	rst  $38                                         ; $76a7: $ff
	rst  $38                                         ; $76a8: $ff
	cp   $db                                         ; $76a9: $fe $db
	sub  a                                           ; $76ab: $97
	halt                                             ; $76ac: $76
	ld   d, h                                        ; $76ad: $54
	ld   b, h                                        ; $76ae: $44
	inc  [hl]                                        ; $76af: $34
	inc  [hl]                                        ; $76b0: $34
	inc  sp                                          ; $76b1: $33
	ld   de, $1541                                   ; $76b2: $11 $41 $15
	ld   d, d                                        ; $76b5: $52
	ld   e, b                                        ; $76b6: $58
	ld   l, c                                        ; $76b7: $69
	jp   z, $ffef                                    ; $76b8: $ca $ef $ff

	rst  $38                                         ; $76bb: $ff
	rst  $38                                         ; $76bc: $ff
	rst  $28                                         ; $76bd: $ef
	cp   d                                           ; $76be: $ba
	sbc  c                                           ; $76bf: $99
	add  h                                           ; $76c0: $84
	ld   h, h                                        ; $76c1: $64
	ld   d, d                                        ; $76c2: $52
	dec  [hl]                                        ; $76c3: $35
	inc  h                                           ; $76c4: $24
	inc  de                                          ; $76c5: $13
	ld   [de], a                                     ; $76c6: $12
	ld   b, c                                        ; $76c7: $41
	inc  hl                                          ; $76c8: $23
	ld   b, h                                        ; $76c9: $44
	ld   c, c                                        ; $76ca: $49
	sbc  c                                           ; $76cb: $99
	xor  [hl]                                        ; $76cc: $ae
	db   $fd                                         ; $76cd: $fd
	rst  $38                                         ; $76ce: $ff
	rst  $38                                         ; $76cf: $ff
	rst  $38                                         ; $76d0: $ff
	xor  $bb                                         ; $76d1: $ee $bb
	sub  a                                           ; $76d3: $97
	ld   [hl], a                                     ; $76d4: $77
	ld   h, e                                        ; $76d5: $63
	ld   b, h                                        ; $76d6: $44
	inc  sp                                          ; $76d7: $33
	inc  sp                                          ; $76d8: $33
	ld   [hl+], a                                    ; $76d9: $22
	ld   de, $1541                                   ; $76da: $11 $41 $15
	inc  hl                                          ; $76dd: $23
	ld   d, a                                        ; $76de: $57
	ld   l, c                                        ; $76df: $69
	xor  d                                           ; $76e0: $aa
	rst  $38                                         ; $76e1: $ff
	rst  $38                                         ; $76e2: $ff
	rst  $38                                         ; $76e3: $ff
	rst  $38                                         ; $76e4: $ff
	rst  JumpTable                                         ; $76e5: $df
	db   $eb                                         ; $76e6: $eb
	sbc  c                                           ; $76e7: $99
	halt                                             ; $76e8: $76
	ld   [hl], l                                     ; $76e9: $75
	ld   b, h                                        ; $76ea: $44
	inc  sp                                          ; $76eb: $33
	inc  hl                                          ; $76ec: $23
	ld   hl, $3111                                   ; $76ed: $21 $11 $31
	inc  d                                           ; $76f0: $14
	ld   [hl-], a                                    ; $76f1: $32
	ld   b, a                                        ; $76f2: $47
	add  a                                           ; $76f3: $87
	sbc  e                                           ; $76f4: $9b
	cp   $ff                                         ; $76f5: $fe $ff

jr_0d6_76f7:
	rst  $38                                         ; $76f7: $ff
	rst  $38                                         ; $76f8: $ff
	cp   $dd                                         ; $76f9: $fe $dd
	ret  z                                           ; $76fb: $c8

	adc  c                                           ; $76fc: $89
	ld   h, l                                        ; $76fd: $65
	ld   d, l                                        ; $76fe: $55
	inc  sp                                          ; $76ff: $33
	inc  sp                                          ; $7700: $33
	ld   sp, $1211                                   ; $7701: $31 $11 $12
	ld   de, $3641                                   ; $7704: $11 $41 $36
	halt                                             ; $7707: $76
	xor  e                                           ; $7708: $ab
	call $ffff                                       ; $7709: $cd $ff $ff
	rst  $38                                         ; $770c: $ff
	rst  $38                                         ; $770d: $ff
	db   $fd                                         ; $770e: $fd
	cp   d                                           ; $770f: $ba
	xor  b                                           ; $7710: $a8
	ld   h, a                                        ; $7711: $67
	ld   h, h                                        ; $7712: $64
	inc  sp                                          ; $7713: $33
	ld   b, d                                        ; $7714: $42
	ld   [de], a                                     ; $7715: $12
	ld   hl, $3111                                   ; $7716: $21 $11 $31
	dec  d                                           ; $7719: $15
	ld   [hl-], a                                    ; $771a: $32
	ld   l, b                                        ; $771b: $68
	sbc  c                                           ; $771c: $99
	cp   l                                           ; $771d: $bd
	xor  $ff                                         ; $771e: $ee $ff
	rst  $38                                         ; $7720: $ff
	rst  $38                                         ; $7721: $ff
	cp   $eb                                         ; $7722: $fe $eb
	xor  c                                           ; $7724: $a9
	adc  b                                           ; $7725: $88
	ld   [hl], l                                     ; $7726: $75
	ld   d, h                                        ; $7727: $54
	ld   [hl-], a                                    ; $7728: $32
	ld   [hl-], a                                    ; $7729: $32
	ld   de, $1211                                   ; $772a: $11 $11 $12
	ld   de, $5532                                   ; $772d: $11 $32 $55
	ld   a, c                                        ; $7730: $79
	xor  h                                           ; $7731: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7732: $cf
	rst  $38                                         ; $7733: $ff
	rst  $38                                         ; $7734: $ff
	rst  $38                                         ; $7735: $ff
	rst  $38                                         ; $7736: $ff
	db   $fd                                         ; $7737: $fd
	cp   e                                           ; $7738: $bb
	sub  a                                           ; $7739: $97
	halt                                             ; $773a: $76
	ld   d, h                                        ; $773b: $54
	inc  sp                                          ; $773c: $33
	inc  sp                                          ; $773d: $33
	ld   [de], a                                     ; $773e: $12
	ld   hl, $3111                                   ; $773f: $21 $11 $31
	dec  d                                           ; $7742: $15
	inc  h                                           ; $7743: $24
	ld   d, a                                        ; $7744: $57
	adc  b                                           ; $7745: $88
	cp   l                                           ; $7746: $bd
	cp   $ff                                         ; $7747: $fe $ff
	rst  $38                                         ; $7749: $ff
	rst  $38                                         ; $774a: $ff
	cp   $ec                                         ; $774b: $fe $ec
	cp   b                                           ; $774d: $b8
	adc  b                                           ; $774e: $88
	ld   h, h                                        ; $774f: $64
	ld   d, h                                        ; $7750: $54
	inc  hl                                          ; $7751: $23
	ld   [hl-], a                                    ; $7752: $32
	ld   de, $1111                                   ; $7753: $11 $11 $11
	ld   de, $3643                                   ; $7756: $11 $43 $36
	sbc  b                                           ; $7759: $98
	adc  h                                           ; $775a: $8c
	db   $ed                                         ; $775b: $ed
	rst  $38                                         ; $775c: $ff
	rst  $38                                         ; $775d: $ff
	rst  $38                                         ; $775e: $ff
	cp   $ed                                         ; $775f: $fe $ed
	cp   c                                           ; $7761: $b9
	sbc  b                                           ; $7762: $98
	ld   [hl], l                                     ; $7763: $75
	ld   d, l                                        ; $7764: $55

Jump_0d6_7765:
	ld   [hl+], a                                    ; $7765: $22
	inc  [hl]                                        ; $7766: $34
	ld   de, $1121                                   ; $7767: $11 $21 $11
	ld   hl, $3513                                   ; $776a: $21 $13 $35
	ld   d, a                                        ; $776d: $57
	xor  d                                           ; $776e: $aa
	adc  $ff                                         ; $776f: $ce $ff
	rst  $38                                         ; $7771: $ff
	rst  $38                                         ; $7772: $ff
	rst  $38                                         ; $7773: $ff
	rst  $38                                         ; $7774: $ff
	jp   z, Jump_0d6_7588                            ; $7775: $ca $88 $75

	ld   d, h                                        ; $7778: $54
	ld   [hl-], a                                    ; $7779: $32
	inc  hl                                          ; $777a: $23
	ld   de, $1111                                   ; $777b: $11 $11 $11
	ld   hl, $4413                                   ; $777e: $21 $13 $44
	ld   c, b                                        ; $7781: $48
	xor  d                                           ; $7782: $aa
	cp   l                                           ; $7783: $bd
	rst  $38                                         ; $7784: $ff
	rst  $38                                         ; $7785: $ff
	rst  $38                                         ; $7786: $ff
	rst  $38                                         ; $7787: $ff
	db   $fd                                         ; $7788: $fd
	jp   c, Jump_0d6_7697                            ; $7789: $da $97 $76

	ld   d, l                                        ; $778c: $55
	ld   [hl-], a                                    ; $778d: $32
	inc  hl                                          ; $778e: $23
	ld   hl, $1121                                   ; $778f: $21 $21 $11
	ld   hl, $6214                                   ; $7792: $21 $14 $62
	add  hl, sp                                      ; $7795: $39
	rst  ToBoot                                         ; $7796: $c7
	xor  a                                           ; $7797: $af

Jump_0d6_7798:
	rst  $38                                         ; $7798: $ff
	rst  $38                                         ; $7799: $ff
	rst  $38                                         ; $779a: $ff
	rst  $38                                         ; $779b: $ff
	cp   $ca                                         ; $779c: $fe $ca
	adc  b                                           ; $779e: $88
	ld   d, [hl]                                     ; $779f: $56
	ld   h, e                                        ; $77a0: $63
	ld   [hl+], a                                    ; $77a1: $22
	ld   [hl+], a                                    ; $77a2: $22
	ld   de, $1111                                   ; $77a3: $11 $11 $11
	ld   sp, $4513                                   ; $77a6: $31 $13 $45
	ld   e, c                                        ; $77a9: $59
	call z, $ffde                                    ; $77aa: $cc $de $ff
	rst  $38                                         ; $77ad: $ff
	rst  $38                                         ; $77ae: $ff
	rst  $38                                         ; $77af: $ff
	xor  $c9                                         ; $77b0: $ee $c9
	add  [hl]                                        ; $77b2: $86
	ld   h, l                                        ; $77b3: $65
	inc  [hl]                                        ; $77b4: $34
	ld   [hl-], a                                    ; $77b5: $32
	inc  hl                                          ; $77b6: $23
	ld   de, $1111                                   ; $77b7: $11 $11 $11
	ld   de, $4514                                   ; $77ba: $11 $14 $45
	sbc  c                                           ; $77bd: $99
	cp   l                                           ; $77be: $bd
	rst  $28                                         ; $77bf: $ef
	rst  $38                                         ; $77c0: $ff
	rst  $38                                         ; $77c1: $ff
	rst  $38                                         ; $77c2: $ff
	rst  $38                                         ; $77c3: $ff
	db   $eb                                         ; $77c4: $eb
	sbc  c                                           ; $77c5: $99
	ld   d, l                                        ; $77c6: $55
	ld   d, h                                        ; $77c7: $54
	inc  sp                                          ; $77c8: $33
	ld   [hl+], a                                    ; $77c9: $22

Call_0d6_77ca:
	ld   [hl+], a                                    ; $77ca: $22
	ld   de, $1311                                   ; $77cb: $11 $11 $13
	ld   de, $5755                                   ; $77ce: $11 $55 $57
	set  1, a                                        ; $77d1: $cb $cf
	rst  $38                                         ; $77d3: $ff
	rst  $38                                         ; $77d4: $ff
	rst  $38                                         ; $77d5: $ff
	rst  $38                                         ; $77d6: $ff
	db   $ed                                         ; $77d7: $ed
	ret  z                                           ; $77d8: $c8

	ld   h, [hl]                                     ; $77d9: $66
	ld   d, l                                        ; $77da: $55
	inc  [hl]                                        ; $77db: $34
	ld   [hl-], a                                    ; $77dc: $32
	ld   [hl+], a                                    ; $77dd: $22
	ld   hl, $1211                                   ; $77de: $21 $11 $12
	ld   de, $5635                                   ; $77e1: $11 $35 $56
	adc  h                                           ; $77e4: $8c
	sbc  $ef                                         ; $77e5: $de $ef
	rst  $38                                         ; $77e7: $ff
	rst  $38                                         ; $77e8: $ff
	rst  $38                                         ; $77e9: $ff
	db   $ed                                         ; $77ea: $ed
	jp   z, Jump_0d6_4586                            ; $77eb: $ca $86 $45

	ld   d, h                                        ; $77ee: $54
	ld   [hl-], a                                    ; $77ef: $32
	inc  sp                                          ; $77f0: $33
	ld   hl, $1111                                   ; $77f1: $21 $11 $11
	ld   de, $6624                                   ; $77f4: $11 $24 $66
	ld   a, l                                        ; $77f7: $7d
	call c, $ffff                                    ; $77f8: $dc $ff $ff
	rst  $38                                         ; $77fb: $ff
	rst  $38                                         ; $77fc: $ff
	db   $fc                                         ; $77fd: $fc
	cp   d                                           ; $77fe: $ba
	add  [hl]                                        ; $77ff: $86
	ld   b, l                                        ; $7800: $45
	ld   d, h                                        ; $7801: $54
	ld   [hl-], a                                    ; $7802: $32
	inc  [hl]                                        ; $7803: $34
	ld   sp, $1111                                   ; $7804: $31 $11 $11
	ld   hl, $6813                                   ; $7807: $21 $13 $68
	ld   l, h                                        ; $780a: $6c
	db   $ed                                         ; $780b: $ed
	rst  $38                                         ; $780c: $ff
	rst  $38                                         ; $780d: $ff
	rst  $38                                         ; $780e: $ff
	rst  $38                                         ; $780f: $ff
	cp   $aa                                         ; $7810: $fe $aa
	ld   [hl], l                                     ; $7812: $75
	ld   d, e                                        ; $7813: $53
	ld   b, l                                        ; $7814: $45
	ld   d, h                                        ; $7815: $54
	inc  [hl]                                        ; $7816: $34
	ld   [hl-], a                                    ; $7817: $32
	ld   hl, $1211                                   ; $7818: $21 $11 $12
	inc  de                                          ; $781b: $13
	ld   e, b                                        ; $781c: $58
	xor  c                                           ; $781d: $a9
	call $ffff                                       ; $781e: $cd $ff $ff
	rst  $38                                         ; $7821: $ff
	rst  $38                                         ; $7822: $ff
	db   $fc                                         ; $7823: $fc
	cp   b                                           ; $7824: $b8
	ld   d, l                                        ; $7825: $55
	ld   d, l                                        ; $7826: $55
	ld   b, h                                        ; $7827: $44
	inc  sp                                          ; $7828: $33
	inc  sp                                          ; $7829: $33
	ld   [hl-], a                                    ; $782a: $32
	ld   de, $2211                                   ; $782b: $11 $11 $22
	inc  d                                           ; $782e: $14
	ld   a, c                                        ; $782f: $79
	xor  l                                           ; $7830: $ad
	rst  $28                                         ; $7831: $ef
	rst  $38                                         ; $7832: $ff
	rst  $38                                         ; $7833: $ff
	rst  $38                                         ; $7834: $ff
	rst  $38                                         ; $7835: $ff
	db   $db                                         ; $7836: $db
	add  a                                           ; $7837: $87
	ld   d, e                                        ; $7838: $53
	ld   b, e                                        ; $7839: $43
	inc  [hl]                                        ; $783a: $34
	ld   d, e                                        ; $783b: $53
	inc  hl                                          ; $783c: $23
	ld   [hl-], a                                    ; $783d: $32
	ld   de, $3111                                   ; $783e: $11 $11 $31
	dec  [hl]                                        ; $7841: $35
	ld   a, e                                        ; $7842: $7b
	rst  JumpTable                                         ; $7843: $df
	rst  $28                                         ; $7844: $ef
	rst  $38                                         ; $7845: $ff
	rst  $38                                         ; $7846: $ff
	rst  $38                                         ; $7847: $ff
	cp   $c9                                         ; $7848: $fe $c9
	halt                                             ; $784a: $76
	ld   d, e                                        ; $784b: $53
	ld   b, h                                        ; $784c: $44
	ld   d, [hl]                                     ; $784d: $56
	ld   d, e                                        ; $784e: $53
	inc  sp                                          ; $784f: $33
	ld   hl, $1111                                   ; $7850: $21 $11 $11
	ld   sp, $9f47                                   ; $7853: $31 $47 $9f
	rst  $38                                         ; $7856: $ff
	rst  $38                                         ; $7857: $ff
	rst  $38                                         ; $7858: $ff
	rst  $38                                         ; $7859: $ff
	cp   $ec                                         ; $785a: $fe $ec
	sub  a                                           ; $785c: $97
	ld   d, e                                        ; $785d: $53
	dec  [hl]                                        ; $785e: $35
	ld   b, l                                        ; $785f: $45
	ld   d, l                                        ; $7860: $55
	ld   b, e                                        ; $7861: $43
	ld   [hl+], a                                    ; $7862: $22
	ld   de, $1311                                   ; $7863: $11 $11 $13
	dec  h                                           ; $7866: $25
	ld   a, e                                        ; $7867: $7b
	rst  $38                                         ; $7868: $ff
	rst  $38                                         ; $7869: $ff
	rst  $38                                         ; $786a: $ff
	rst  $38                                         ; $786b: $ff
	rst  $38                                         ; $786c: $ff
	db   $eb                                         ; $786d: $eb
	xor  c                                           ; $786e: $a9
	halt                                             ; $786f: $76
	inc  sp                                          ; $7870: $33
	inc  sp                                          ; $7871: $33
	ld   h, [hl]                                     ; $7872: $66
	ld   h, e                                        ; $7873: $63
	inc  sp                                          ; $7874: $33
	ld   de, $1111                                   ; $7875: $11 $11 $11
	inc  sp                                          ; $7878: $33
	ld   l, b                                        ; $7879: $68
	xor  a                                           ; $787a: $af
	rst  $38                                         ; $787b: $ff
	rst  $38                                         ; $787c: $ff
	rst  $38                                         ; $787d: $ff
	rst  $38                                         ; $787e: $ff
	db   $fd                                         ; $787f: $fd
	xor  b                                           ; $7880: $a8
	adc  b                                           ; $7881: $88
	ld   [hl], h                                     ; $7882: $74
	inc  [hl]                                        ; $7883: $34
	ld   d, a                                        ; $7884: $57
	add  [hl]                                        ; $7885: $86
	ld   sp, $1111                                   ; $7886: $31 $11 $11
	ld   de, $6b12                                   ; $7889: $11 $12 $6b
	adc  h                                           ; $788c: $8c
	rst  $38                                         ; $788d: $ff
	rst  $38                                         ; $788e: $ff
	rst  $38                                         ; $788f: $ff
	rst  $38                                         ; $7890: $ff
	rst  $38                                         ; $7891: $ff
	ret  z                                           ; $7892: $c8

	ld   h, a                                        ; $7893: $67
	halt                                             ; $7894: $76
	ld   d, e                                        ; $7895: $53
	ld   [hl], $9a                                   ; $7896: $36 $9a
	ld   [hl], e                                     ; $7898: $73
	ld   de, $1111                                   ; $7899: $11 $11 $11
	ld   de, $ba38                                   ; $789c: $11 $38 $ba
	rst  JumpTable                                         ; $789f: $df
	rst  $38                                         ; $78a0: $ff
	rst  $38                                         ; $78a1: $ff
	rst  $28                                         ; $78a2: $ef
	rst  $38                                         ; $78a3: $ff
	ei                                               ; $78a4: $fb
	ld   h, e                                        ; $78a5: $63
	ld   e, c                                        ; $78a6: $59
	add  [hl]                                        ; $78a7: $86
	ld   b, d                                        ; $78a8: $42
	ld   c, c                                        ; $78a9: $49

Jump_0d6_78aa:
	xor  c                                           ; $78aa: $a9
	ld   b, c                                        ; $78ab: $41
	ld   de, $1111                                   ; $78ac: $11 $11 $11
	ld   [de], a                                     ; $78af: $12
	xor  [hl]                                        ; $78b0: $ae
	rst  $28                                         ; $78b1: $ef
	rst  $38                                         ; $78b2: $ff
	rst  $38                                         ; $78b3: $ff
	cp   $ff                                         ; $78b4: $fe $ff
	rst  $38                                         ; $78b6: $ff
	and  l                                           ; $78b7: $a5
	inc  [hl]                                        ; $78b8: $34
	ld   a, b                                        ; $78b9: $78
	halt                                             ; $78ba: $76
	ld   b, [hl]                                     ; $78bb: $46
	adc  c                                           ; $78bc: $89
	ld   [hl], e                                     ; $78bd: $73
	ld   de, $1111                                   ; $78be: $11 $11 $11
	ld   de, $df5d                                   ; $78c1: $11 $5d $df
	rst  $38                                         ; $78c4: $ff
	rst  $38                                         ; $78c5: $ff
	rst  $38                                         ; $78c6: $ff
	rst  $38                                         ; $78c7: $ff
	rst  $38                                         ; $78c8: $ff
	ret  c                                           ; $78c9: $d8

	ld   b, e                                        ; $78ca: $43
	ld   d, [hl]                                     ; $78cb: $56
	adc  b                                           ; $78cc: $88
	ld   h, [hl]                                     ; $78cd: $66
	ld   a, c                                        ; $78ce: $79
	sub  a                                           ; $78cf: $97
	ld   hl, $1111                                   ; $78d0: $21 $11 $11
	ld   de, $ef2a                                   ; $78d3: $11 $2a $ef
	rst  $38                                         ; $78d6: $ff
	rst  $38                                         ; $78d7: $ff
	rst  $38                                         ; $78d8: $ff
	rst  $28                                         ; $78d9: $ef
	rst  $38                                         ; $78da: $ff
	jp   hl                                          ; $78db: $e9


	ld   d, e                                        ; $78dc: $53
	ld   b, [hl]                                     ; $78dd: $46
	adc  c                                           ; $78de: $89
	sub  a                                           ; $78df: $97
	ld   a, b                                        ; $78e0: $78
	add  a                                           ; $78e1: $87
	ld   sp, $1111                                   ; $78e2: $31 $11 $11
	ld   de, $ef38                                   ; $78e5: $11 $38 $ef
	rst  $38                                         ; $78e8: $ff
	rst  $38                                         ; $78e9: $ff
	rst  $38                                         ; $78ea: $ff
	db   $ed                                         ; $78eb: $ed
	rst  $38                                         ; $78ec: $ff
	call c, $3584                                    ; $78ed: $dc $84 $35
	ld   a, c                                        ; $78f0: $79
	xor  b                                           ; $78f1: $a8
	ld   h, a                                        ; $78f2: $67
	adc  b                                           ; $78f3: $88
	ld   d, c                                        ; $78f4: $51
	ld   de, $1111                                   ; $78f5: $11 $11 $11
	dec  [hl]                                        ; $78f8: $35
	rst  JumpTable                                         ; $78f9: $df
	rst  $38                                         ; $78fa: $ff
	rst  $38                                         ; $78fb: $ff
	rst  $38                                         ; $78fc: $ff
	db   $fd                                         ; $78fd: $fd
	rst  $28                                         ; $78fe: $ef
	db   $ec                                         ; $78ff: $ec
	add  e                                           ; $7900: $83
	dec  [hl]                                        ; $7901: $35
	adc  d                                           ; $7902: $8a
	cp   d                                           ; $7903: $ba
	ld   h, a                                        ; $7904: $67
	sbc  b                                           ; $7905: $98
	ld   [hl], d                                     ; $7906: $72
	ld   de, $1111                                   ; $7907: $11 $11 $11
	inc  h                                           ; $790a: $24
	cp   a                                           ; $790b: $bf
	rst  $38                                         ; $790c: $ff
	rst  $38                                         ; $790d: $ff
	rst  $38                                         ; $790e: $ff
	ei                                               ; $790f: $fb
	sbc  $de                                         ; $7910: $de $de
	or   [hl]                                        ; $7912: $b6
	inc  sp                                          ; $7913: $33
	ld   l, b                                        ; $7914: $68
	db   $dd                                         ; $7915: $dd
	xor  c                                           ; $7916: $a9
	halt                                             ; $7917: $76
	ld   d, e                                        ; $7918: $53
	ld   de, $1111                                   ; $7919: $11 $11 $11
	inc  d                                           ; $791c: $14
	sbc  a                                           ; $791d: $9f
	rst  $38                                         ; $791e: $ff
	rst  $38                                         ; $791f: $ff
	rst  $38                                         ; $7920: $ff
	db   $fd                                         ; $7921: $fd
	sbc  h                                           ; $7922: $9c
	cp   [hl]                                        ; $7923: $be
	jp   c, Jump_0d6_4652                            ; $7924: $da $52 $46

	xor  l                                           ; $7927: $ad
	ret                                              ; $7928: $c9


	add  a                                           ; $7929: $87
	ld   h, h                                        ; $792a: $64
	ld   de, $1111                                   ; $792b: $11 $11 $11
	inc  d                                           ; $792e: $14
	ld   a, a                                        ; $792f: $7f
	rst  $38                                         ; $7930: $ff
	rst  $38                                         ; $7931: $ff
	rst  $38                                         ; $7932: $ff
	rst  $38                                         ; $7933: $ff
	xor  h                                           ; $7934: $ac
	cp   l                                           ; $7935: $bd
	jp   c, $4662                                    ; $7936: $da $62 $46

	cp   [hl]                                        ; $7939: $be
	jp   c, Jump_0d6_5476                            ; $793a: $da $76 $54

	ld   sp, $1111                                   ; $793d: $31 $11 $11
	inc  de                                          ; $7940: $13
	sbc  [hl]                                        ; $7941: $9e
	rst  $38                                         ; $7942: $ff
	rst  $38                                         ; $7943: $ff
	rst  $38                                         ; $7944: $ff
	rst  $38                                         ; $7945: $ff
	ret  z                                           ; $7946: $c8

	xor  e                                           ; $7947: $ab
	call z, $3694                                    ; $7948: $cc $94 $36
	adc  [hl]                                        ; $794b: $8e
	db   $ec                                         ; $794c: $ec
	sub  [hl]                                        ; $794d: $96
	ld   d, h                                        ; $794e: $54
	ld   sp, $1111                                   ; $794f: $31 $11 $11
	ld   de, $ff7a                                   ; $7952: $11 $7a $ff
	rst  $38                                         ; $7955: $ff
	rst  $38                                         ; $7956: $ff
	rst  $38                                         ; $7957: $ff
	rst  $20                                         ; $7958: $e7
	xor  h                                           ; $7959: $ac
	call $35b5                                       ; $795a: $cd $b5 $35
	ld   a, e                                        ; $795d: $7b
	db   $ed                                         ; $795e: $ed
	and  a                                           ; $795f: $a7
	ld   h, l                                        ; $7960: $65
	ld   d, c                                        ; $7961: $51
	ld   de, $1111                                   ; $7962: $11 $11 $11
	scf                                              ; $7965: $37
	rst  $28                                         ; $7966: $ef
	rst  $38                                         ; $7967: $ff
	rst  $38                                         ; $7968: $ff
	rst  $38                                         ; $7969: $ff
	db   $fc                                         ; $796a: $fc
	cp   d                                           ; $796b: $ba
	xor  h                                           ; $796c: $ac
	cp   c                                           ; $796d: $b9
	ld   b, l                                        ; $796e: $45
	ld   a, d                                        ; $796f: $7a
	xor  $b8                                         ; $7970: $ee $b8
	ld   h, l                                        ; $7972: $65
	ld   b, e                                        ; $7973: $43
	ld   de, $1111                                   ; $7974: $11 $11 $11
	dec  d                                           ; $7977: $15
	xor  a                                           ; $7978: $af
	rst  $38                                         ; $7979: $ff
	rst  $38                                         ; $797a: $ff
	rst  $38                                         ; $797b: $ff
	cp   $9a                                         ; $797c: $fe $9a
	cp   l                                           ; $797e: $bd
	jp   c, Jump_0d6_5953                            ; $797f: $da $53 $59

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7982: $cf
	ret  z                                           ; $7983: $c8

	ld   h, [hl]                                     ; $7984: $66
	ld   d, l                                        ; $7985: $55
	ld   de, $1111                                   ; $7986: $11 $11 $11
	inc  d                                           ; $7989: $14
	ld   a, h                                        ; $798a: $7c
	rst  $38                                         ; $798b: $ff
	rst  $38                                         ; $798c: $ff
	rst  $38                                         ; $798d: $ff
	rst  $38                                         ; $798e: $ff
	sbc  c                                           ; $798f: $99
	cp   l                                           ; $7990: $bd
	call c, Call_0d6_5774                            ; $7991: $dc $74 $57
	cp   l                                           ; $7994: $bd
	jp   z, Jump_0d6_7689                            ; $7995: $ca $89 $76

Jump_0d6_7998:
	ld   sp, $1111                                   ; $7998: $31 $11 $11
	ld   de, $ff47                                   ; $799b: $11 $47 $ff
	rst  $38                                         ; $799e: $ff
	rst  $38                                         ; $799f: $ff
	rst  $38                                         ; $79a0: $ff
	ld   sp, hl                                      ; $79a1: $f9
	xor  h                                           ; $79a2: $ac
	call Call_0d6_46b6                               ; $79a3: $cd $b6 $46
	sbc  e                                           ; $79a6: $9b
	db   $ec                                         ; $79a7: $ec
	adc  c                                           ; $79a8: $89
	add  a                                           ; $79a9: $87
	ld   d, c                                        ; $79aa: $51
	ld   de, $1111                                   ; $79ab: $11 $11 $11
	inc  de                                          ; $79ae: $13
	sbc  a                                           ; $79af: $9f
	rst  $38                                         ; $79b0: $ff
	rst  $38                                         ; $79b1: $ff
	rst  $38                                         ; $79b2: $ff
	db   $fd                                         ; $79b3: $fd
	cp   h                                           ; $79b4: $bc
	call z, Call_0d6_55b8                            ; $79b5: $cc $b8 $55
	ld   a, d                                        ; $79b8: $7a
	db   $dd                                         ; $79b9: $dd
	xor  b                                           ; $79ba: $a8
	sbc  b                                           ; $79bb: $98
	ld   h, h                                        ; $79bc: $64
	ld   de, $1111                                   ; $79bd: $11 $11 $11
	ld   de, $ff4c                                   ; $79c0: $11 $4c $ff
	rst  $38                                         ; $79c3: $ff
	rst  $38                                         ; $79c4: $ff
	rst  $38                                         ; $79c5: $ff
	cp   d                                           ; $79c6: $ba
	cp   l                                           ; $79c7: $bd
	bit  6, l                                        ; $79c8: $cb $75
	ld   l, c                                        ; $79ca: $69
	adc  $c9                                         ; $79cb: $ce $c9
	ld   a, b                                        ; $79cd: $78
	sub  a                                           ; $79ce: $97
	ld   b, c                                        ; $79cf: $41
	ld   de, $1111                                   ; $79d0: $11 $11 $11
	dec  d                                           ; $79d3: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79d4: $cf
	rst  $38                                         ; $79d5: $ff
	rst  $38                                         ; $79d6: $ff
	rst  $38                                         ; $79d7: $ff
	ei                                               ; $79d8: $fb
	xor  h                                           ; $79d9: $ac
	db   $dd                                         ; $79da: $dd
	and  [hl]                                        ; $79db: $a6
	ld   b, a                                        ; $79dc: $47
	cp   l                                           ; $79dd: $bd
	jp   c, $9a77                                    ; $79de: $da $77 $9a

	ld   [hl], d                                     ; $79e1: $72
	ld   de, $1111                                   ; $79e2: $11 $11 $11
	ld   [de], a                                     ; $79e5: $12
	ld   l, [hl]                                     ; $79e6: $6e
	rst  $38                                         ; $79e7: $ff
	rst  $38                                         ; $79e8: $ff
	rst  $38                                         ; $79e9: $ff

Call_0d6_79ea:
	rst  $38                                         ; $79ea: $ff
	xor  h                                           ; $79eb: $ac
	sbc  $b7                                         ; $79ec: $de $b7
	ld   d, h                                        ; $79ee: $54
	adc  h                                           ; $79ef: $8c
	db   $db                                         ; $79f0: $db
	add  a                                           ; $79f1: $87
	adc  d                                           ; $79f2: $8a
	and  l                                           ; $79f3: $a5
	ld   de, $1111                                   ; $79f4: $11 $11 $11
	ld   de, $ff37                                   ; $79f7: $11 $37 $ff
	rst  $28                                         ; $79fa: $ef
	rst  $38                                         ; $79fb: $ff
	rst  $38                                         ; $79fc: $ff
	db   $eb                                         ; $79fd: $eb
	adc  $cb                                         ; $79fe: $ce $cb
	ld   [hl], e                                     ; $7a00: $73
	ld   e, d                                        ; $7a01: $5a
	cp   e                                           ; $7a02: $bb
	xor  b                                           ; $7a03: $a8
	ld   a, d                                        ; $7a04: $7a
	ret                                              ; $7a05: $c9


	ld   d, c                                        ; $7a06: $51
	ld   de, $1111                                   ; $7a07: $11 $11 $11
	inc  de                                          ; $7a0a: $13
	adc  l                                           ; $7a0b: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a0c: $cf
	rst  $38                                         ; $7a0d: $ff
	rst  $38                                         ; $7a0e: $ff
	db   $fd                                         ; $7a0f: $fd
	rst  JumpTable                                         ; $7a10: $df
	db   $fd                                         ; $7a11: $fd
	add  l                                           ; $7a12: $85
	ld   b, a                                        ; $7a13: $47
	xor  c                                           ; $7a14: $a9
	add  a                                           ; $7a15: $87
	adc  d                                           ; $7a16: $8a
	cp   e                                           ; $7a17: $bb
	ld   [hl], h                                     ; $7a18: $74
	ld   de, $1111                                   ; $7a19: $11 $11 $11
	ld   de, $bd46                                   ; $7a1c: $11 $46 $bd
	rst  $38                                         ; $7a1f: $ff
	rst  $38                                         ; $7a20: $ff
	rst  $38                                         ; $7a21: $ff
	rst  $38                                         ; $7a22: $ff
	rst  $38                                         ; $7a23: $ff
	and  a                                           ; $7a24: $a7
	halt                                             ; $7a25: $76
	ld   h, [hl]                                     ; $7a26: $66
	ld   [hl], a                                     ; $7a27: $77
	adc  d                                           ; $7a28: $8a
	sbc  e                                           ; $7a29: $9b
	sbc  c                                           ; $7a2a: $99
	ld   h, d                                        ; $7a2b: $62
	ld   de, $1111                                   ; $7a2c: $11 $11 $11
	ld   [de], a                                     ; $7a2f: $12
	ld   a, [hl-]                                    ; $7a30: $3a
	cp   a                                           ; $7a31: $bf
	rst  $38                                         ; $7a32: $ff
	rst  $38                                         ; $7a33: $ff
	rst  $38                                         ; $7a34: $ff
	rst  $38                                         ; $7a35: $ff
	ei                                               ; $7a36: $fb
	adc  b                                           ; $7a37: $88
	ld   h, [hl]                                     ; $7a38: $66
	ld   h, l                                        ; $7a39: $65
	ld   l, c                                        ; $7a3a: $69
	sbc  b                                           ; $7a3b: $98
	xor  d                                           ; $7a3c: $aa
	sub  a                                           ; $7a3d: $97
	ld   sp, $1111                                   ; $7a3e: $31 $11 $11
	ld   de, $6931                                   ; $7a41: $11 $31 $69
	rst  $28                                         ; $7a44: $ef
	rst  $38                                         ; $7a45: $ff
	rst  $38                                         ; $7a46: $ff
	rst  $38                                         ; $7a47: $ff
	rst  $38                                         ; $7a48: $ff
	jp   z, Jump_0d6_5497                            ; $7a49: $ca $97 $54

	ld   d, [hl]                                     ; $7a4c: $56
	ld   [hl], a                                     ; $7a4d: $77
	ld   l, c                                        ; $7a4e: $69
	cp   d                                           ; $7a4f: $ba
	add  l                                           ; $7a50: $85
	ld   hl, $1111                                   ; $7a51: $21 $11 $11
	ld   de, $7d14                                   ; $7a54: $11 $14 $7d
	rst  $38                                         ; $7a57: $ff
	rst  $38                                         ; $7a58: $ff
	rst  $38                                         ; $7a59: $ff
	rst  $38                                         ; $7a5a: $ff
	rst  $38                                         ; $7a5b: $ff
	db   $db                                         ; $7a5c: $db
	ld   h, h                                        ; $7a5d: $64
	ld   b, h                                        ; $7a5e: $44
	ld   d, h                                        ; $7a5f: $54
	ld   d, l                                        ; $7a60: $55
	adc  e                                           ; $7a61: $8b
	xor  b                                           ; $7a62: $a8
	ld   h, l                                        ; $7a63: $65
	ld   [hl-], a                                    ; $7a64: $32
	ld   de, $1111                                   ; $7a65: $11 $11 $11
	ld   d, $ae                                      ; $7a68: $16 $ae
	rst  $38                                         ; $7a6a: $ff
	rst  $38                                         ; $7a6b: $ff
	rst  $38                                         ; $7a6c: $ff
	rst  $38                                         ; $7a6d: $ff
	rst  $38                                         ; $7a6e: $ff
	reti                                             ; $7a6f: $d9


	ld   h, [hl]                                     ; $7a70: $66
	ld   b, e                                        ; $7a71: $43
	inc  sp                                          ; $7a72: $33
	ld   b, [hl]                                     ; $7a73: $46
	add  a                                           ; $7a74: $87
	adc  b                                           ; $7a75: $88
	ld   h, h                                        ; $7a76: $64
	ld   sp, $1111                                   ; $7a77: $31 $11 $11
	ld   de, $bb36                                   ; $7a7a: $11 $36 $bb
	rst  $28                                         ; $7a7d: $ef
	rst  $38                                         ; $7a7e: $ff
	rst  $38                                         ; $7a7f: $ff
	rst  $38                                         ; $7a80: $ff
	rst  $38                                         ; $7a81: $ff
	jp   z, $3294                                    ; $7a82: $ca $94 $32

	ld   [hl-], a                                    ; $7a85: $32

Call_0d6_7a86:
	dec  h                                           ; $7a86: $25
	ld   d, a                                        ; $7a87: $57
	ld   h, [hl]                                     ; $7a88: $66
	ld   d, l                                        ; $7a89: $55
	ld   b, c                                        ; $7a8a: $41
	ld   de, $1112                                   ; $7a8b: $11 $12 $11
	ld   b, a                                        ; $7a8e: $47
	sbc  d                                           ; $7a8f: $9a
	cp   a                                           ; $7a90: $bf
	rst  $38                                         ; $7a91: $ff
	rst  $38                                         ; $7a92: $ff
	rst  $38                                         ; $7a93: $ff
	rst  $38                                         ; $7a94: $ff
	db   $dd                                         ; $7a95: $dd
	and  [hl]                                        ; $7a96: $a6
	ld   b, e                                        ; $7a97: $43
	ld   hl, $4422                                   ; $7a98: $21 $22 $44
	ld   d, h                                        ; $7a9b: $54
	ld   b, l                                        ; $7a9c: $45
	ld   sp, $3311                                   ; $7a9d: $31 $11 $33
	ld   de, $8846                                   ; $7aa0: $11 $46 $88
	sbc  l                                           ; $7aa3: $9d
	rst  $38                                         ; $7aa4: $ff
	rst  $38                                         ; $7aa5: $ff
	rst  $38                                         ; $7aa6: $ff
	rst  $38                                         ; $7aa7: $ff
	rst  $38                                         ; $7aa8: $ff

Jump_0d6_7aa9:
	cp   b                                           ; $7aa9: $b8
	ld   d, h                                        ; $7aaa: $54
	ld   [hl-], a                                    ; $7aab: $32
	ld   hl, $4434                                   ; $7aac: $21 $34 $44
	ld   b, h                                        ; $7aaf: $44
	ld   d, e                                        ; $7ab0: $53
	ld   hl, $2236                                   ; $7ab1: $21 $36 $22
	ld   b, l                                        ; $7ab4: $45
	ld   d, [hl]                                     ; $7ab5: $56
	ld   h, a                                        ; $7ab6: $67
	cp   h                                           ; $7ab7: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab8: $cf
	rst  $38                                         ; $7ab9: $ff
	rst  $38                                         ; $7aba: $ff
	db   $db                                         ; $7abb: $db
	cp   d                                           ; $7abc: $ba
	sub  a                                           ; $7abd: $97
	ld   [hl], a                                     ; $7abe: $77
	ld   h, [hl]                                     ; $7abf: $66
	ld   d, [hl]                                     ; $7ac0: $56
	ld   a, b                                        ; $7ac1: $78
	ld   a, b                                        ; $7ac2: $78
	adc  b                                           ; $7ac3: $88
	xor  c                                           ; $7ac4: $a9
	add  a                                           ; $7ac5: $87
	ld   [hl], a                                     ; $7ac6: $77
	halt                                             ; $7ac7: $76
	ld   d, l                                        ; $7ac8: $55
	ld   b, h                                        ; $7ac9: $44
	ld   b, h                                        ; $7aca: $44
	ld   b, h                                        ; $7acb: $44
	ld   d, [hl]                                     ; $7acc: $56
	ld   h, a                                        ; $7acd: $67
	sbc  c                                           ; $7ace: $99
	xor  e                                           ; $7acf: $ab
	cp   e                                           ; $7ad0: $bb
	cp   h                                           ; $7ad1: $bc
	call z, $dcdd                                    ; $7ad2: $cc $dd $dc
	call c, $cbcb                                    ; $7ad5: $dc $cb $cb
	cp   d                                           ; $7ad8: $ba
	sbc  c                                           ; $7ad9: $99
	add  a                                           ; $7ada: $87
	halt                                             ; $7adb: $76
	ld   h, [hl]                                     ; $7adc: $66
	ld   d, l                                        ; $7add: $55
	ld   d, l                                        ; $7ade: $55
	ld   d, h                                        ; $7adf: $54
	ld   b, h                                        ; $7ae0: $44
	ld   b, h                                        ; $7ae1: $44
	ld   b, h                                        ; $7ae2: $44
	ld   b, l                                        ; $7ae3: $45
	ld   d, [hl]                                     ; $7ae4: $56
	ld   h, a                                        ; $7ae5: $67
	adc  c                                           ; $7ae6: $89
	sbc  d                                           ; $7ae7: $9a
	cp   e                                           ; $7ae8: $bb
	res  7, h                                        ; $7ae9: $cb $bc
	call z, $cccb                                    ; $7aeb: $cc $cb $cc
	cp   d                                           ; $7aee: $ba
	xor  c                                           ; $7aef: $a9
	sbc  c                                           ; $7af0: $99
	sbc  b                                           ; $7af1: $98
	ld   [hl], a                                     ; $7af2: $77
	ld   h, [hl]                                     ; $7af3: $66
	ld   h, [hl]                                     ; $7af4: $66
	ld   h, [hl]                                     ; $7af5: $66
	ld   h, [hl]                                     ; $7af6: $66
	ld   h, [hl]                                     ; $7af7: $66
	ld   h, [hl]                                     ; $7af8: $66
	ld   h, [hl]                                     ; $7af9: $66
	ld   h, [hl]                                     ; $7afa: $66
	ld   d, [hl]                                     ; $7afb: $56
	ld   d, l                                        ; $7afc: $55
	ld   h, [hl]                                     ; $7afd: $66
	ld   h, a                                        ; $7afe: $67
	ld   [hl], a                                     ; $7aff: $77
	adc  c                                           ; $7b00: $89
	adc  c                                           ; $7b01: $89
	sbc  d                                           ; $7b02: $9a
	xor  d                                           ; $7b03: $aa
	xor  d                                           ; $7b04: $aa
	sbc  c                                           ; $7b05: $99
	sbc  d                                           ; $7b06: $9a
	xor  d                                           ; $7b07: $aa
	xor  d                                           ; $7b08: $aa
	xor  c                                           ; $7b09: $a9
	xor  d                                           ; $7b0a: $aa
	sbc  c                                           ; $7b0b: $99
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	ld   [hl], a                                     ; $7b0e: $77
	ld   [hl], a                                     ; $7b0f: $77
	ld   [hl], a                                     ; $7b10: $77
	ld   [hl], a                                     ; $7b11: $77
	ld   [hl], a                                     ; $7b12: $77
	ld   h, [hl]                                     ; $7b13: $66
	ld   h, [hl]                                     ; $7b14: $66
	ld   h, l                                        ; $7b15: $65
	ld   d, l                                        ; $7b16: $55
	ld   d, l                                        ; $7b17: $55
	ld   d, l                                        ; $7b18: $55
	ld   d, [hl]                                     ; $7b19: $56
	ld   h, a                                        ; $7b1a: $67
	ld   a, b                                        ; $7b1b: $78
	sbc  c                                           ; $7b1c: $99
	sbc  c                                           ; $7b1d: $99
	xor  d                                           ; $7b1e: $aa
	cp   d                                           ; $7b1f: $ba
	cp   d                                           ; $7b20: $ba
	cp   e                                           ; $7b21: $bb
	xor  e                                           ; $7b22: $ab
	xor  e                                           ; $7b23: $ab
	xor  d                                           ; $7b24: $aa
	xor  c                                           ; $7b25: $a9
	xor  c                                           ; $7b26: $a9
	sbc  b                                           ; $7b27: $98
	adc  b                                           ; $7b28: $88
	ld   [hl], a                                     ; $7b29: $77
	ld   [hl], a                                     ; $7b2a: $77
	halt                                             ; $7b2b: $76
	ld   h, [hl]                                     ; $7b2c: $66
	ld   h, [hl]                                     ; $7b2d: $66
	ld   h, [hl]                                     ; $7b2e: $66
	ld   h, [hl]                                     ; $7b2f: $66
	ld   h, [hl]                                     ; $7b30: $66
	ld   h, [hl]                                     ; $7b31: $66
	ld   h, [hl]                                     ; $7b32: $66
	ld   h, [hl]                                     ; $7b33: $66
	ld   h, [hl]                                     ; $7b34: $66
	ld   [hl], a                                     ; $7b35: $77
	ld   a, b                                        ; $7b36: $78
	adc  b                                           ; $7b37: $88
	sbc  c                                           ; $7b38: $99
	xor  c                                           ; $7b39: $a9
	xor  d                                           ; $7b3a: $aa
	xor  d                                           ; $7b3b: $aa
	xor  d                                           ; $7b3c: $aa
	xor  d                                           ; $7b3d: $aa
	xor  d                                           ; $7b3e: $aa
	sbc  c                                           ; $7b3f: $99
	sbc  d                                           ; $7b40: $9a
	sbc  c                                           ; $7b41: $99
	sbc  c                                           ; $7b42: $99
	adc  c                                           ; $7b43: $89
	sbc  b                                           ; $7b44: $98
	adc  b                                           ; $7b45: $88
	add  a                                           ; $7b46: $87
	ld   [hl], a                                     ; $7b47: $77
	ld   [hl], a                                     ; $7b48: $77
	ld   [hl], a                                     ; $7b49: $77
	ld   [hl], a                                     ; $7b4a: $77
	ld   [hl], a                                     ; $7b4b: $77
	ld   [hl], a                                     ; $7b4c: $77
	halt                                             ; $7b4d: $76
	ld   h, [hl]                                     ; $7b4e: $66
	ld   h, [hl]                                     ; $7b4f: $66
	ld   h, [hl]                                     ; $7b50: $66
	ld   h, [hl]                                     ; $7b51: $66
	ld   [hl], a                                     ; $7b52: $77
	ld   a, b                                        ; $7b53: $78
	adc  c                                           ; $7b54: $89
	adc  c                                           ; $7b55: $89
	sbc  d                                           ; $7b56: $9a
	sbc  c                                           ; $7b57: $99
	sbc  c                                           ; $7b58: $99
	sbc  c                                           ; $7b59: $99
	sbc  c                                           ; $7b5a: $99
	sbc  d                                           ; $7b5b: $9a
	xor  c                                           ; $7b5c: $a9
	xor  d                                           ; $7b5d: $aa
	sbc  c                                           ; $7b5e: $99
	sbc  c                                           ; $7b5f: $99
	adc  b                                           ; $7b60: $88
	sbc  b                                           ; $7b61: $98
	adc  b                                           ; $7b62: $88
	add  a                                           ; $7b63: $87
	ld   [hl], a                                     ; $7b64: $77
	ld   [hl], a                                     ; $7b65: $77
	ld   [hl], a                                     ; $7b66: $77
	ld   [hl], a                                     ; $7b67: $77
	ld   [hl], a                                     ; $7b68: $77
	ld   h, a                                        ; $7b69: $67
	ld   h, [hl]                                     ; $7b6a: $66
	ld   h, [hl]                                     ; $7b6b: $66
	ld   h, [hl]                                     ; $7b6c: $66
	ld   h, [hl]                                     ; $7b6d: $66
	ld   d, [hl]                                     ; $7b6e: $56
	ld   h, a                                        ; $7b6f: $67
	ld   a, b                                        ; $7b70: $78
	sbc  c                                           ; $7b71: $99
	sbc  e                                           ; $7b72: $9b
	cp   h                                           ; $7b73: $bc
	db   $ed                                         ; $7b74: $ed
	cp   l                                           ; $7b75: $bd
	cp   c                                           ; $7b76: $b9
	sbc  c                                           ; $7b77: $99
	sbc  b                                           ; $7b78: $98
	adc  c                                           ; $7b79: $89
	ld   a, b                                        ; $7b7a: $78
	adc  b                                           ; $7b7b: $88
	adc  b                                           ; $7b7c: $88
	ld   [hl], a                                     ; $7b7d: $77
	add  a                                           ; $7b7e: $87
	ld   h, [hl]                                     ; $7b7f: $66
	ld   h, [hl]                                     ; $7b80: $66
	ld   h, l                                        ; $7b81: $65
	ld   b, e                                        ; $7b82: $43
	ld   [hl-], a                                    ; $7b83: $32
	inc  h                                           ; $7b84: $24
	ld   b, d                                        ; $7b85: $42
	inc  [hl]                                        ; $7b86: $34
	ld   b, l                                        ; $7b87: $45
	ld   h, a                                        ; $7b88: $67
	adc  d                                           ; $7b89: $8a
	xor  e                                           ; $7b8a: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b8b: $cf
	cp   $ee                                         ; $7b8c: $fe $ee
	sbc  $cc                                         ; $7b8e: $de $cc
	xor  d                                           ; $7b90: $aa
	xor  c                                           ; $7b91: $a9
	sbc  c                                           ; $7b92: $99
	sbc  b                                           ; $7b93: $98
	add  a                                           ; $7b94: $87
	ld   [hl], a                                     ; $7b95: $77
	ld   h, l                                        ; $7b96: $65
	ld   d, e                                        ; $7b97: $53
	ld   [hl+], a                                    ; $7b98: $22
	ld   de, $1111                                   ; $7b99: $11 $11 $11
	ld   hl, $8916                                   ; $7b9c: $21 $16 $89
	xor  l                                           ; $7b9f: $ad
	rst  $38                                         ; $7ba0: $ff
	rst  $38                                         ; $7ba1: $ff
	rst  $38                                         ; $7ba2: $ff
	rst  $38                                         ; $7ba3: $ff
	rst  $38                                         ; $7ba4: $ff
	jp   z, Jump_0d6_4574                            ; $7ba5: $ca $74 $45

Call_0d6_7ba8:
	ld   [hl+], a                                    ; $7ba8: $22
	ld   b, [hl]                                     ; $7ba9: $46
	ld   h, a                                        ; $7baa: $67
	adc  c                                           ; $7bab: $89
	xor  c                                           ; $7bac: $a9
	ld   [hl], l                                     ; $7bad: $75
	ld   d, e                                        ; $7bae: $53
	ld   de, $1111                                   ; $7baf: $11 $11 $11
	ld   de, $8c47                                   ; $7bb2: $11 $47 $8c
	rst  $38                                         ; $7bb5: $ff
	rst  $38                                         ; $7bb6: $ff
	rst  $38                                         ; $7bb7: $ff
	rst  $38                                         ; $7bb8: $ff
	rst  $38                                         ; $7bb9: $ff
	ei                                               ; $7bba: $fb
	ld   [hl], e                                     ; $7bbb: $73
	ld   de, $1211                                   ; $7bbc: $11 $11 $12
	ld   b, l                                        ; $7bbf: $45
	ld   a, d                                        ; $7bc0: $7a
	xor  d                                           ; $7bc1: $aa
	add  a                                           ; $7bc2: $87
	add  l                                           ; $7bc3: $85
	ld   de, $1111                                   ; $7bc4: $11 $11 $11
	ld   de, $8d56                                   ; $7bc7: $11 $56 $8d
	rst  $38                                         ; $7bca: $ff
	rst  $38                                         ; $7bcb: $ff
	rst  $38                                         ; $7bcc: $ff
	rst  $38                                         ; $7bcd: $ff
	rst  $38                                         ; $7bce: $ff
	ld   hl, sp+$31                                  ; $7bcf: $f8 $31
	ld   de, $1311                                   ; $7bd1: $11 $11 $13
	ld   b, [hl]                                     ; $7bd4: $46
	sbc  d                                           ; $7bd5: $9a
	xor  b                                           ; $7bd6: $a8
	ld   a, b                                        ; $7bd7: $78
	ld   b, c                                        ; $7bd8: $41
	ld   de, $1111                                   ; $7bd9: $11 $11 $11
	ld   b, l                                        ; $7bdc: $45
	ld   e, d                                        ; $7bdd: $5a
	rst  $38                                         ; $7bde: $ff
	rst  $38                                         ; $7bdf: $ff
	rst  $38                                         ; $7be0: $ff
	rst  $38                                         ; $7be1: $ff
	rst  $38                                         ; $7be2: $ff
	ei                                               ; $7be3: $fb
	ld   d, d                                        ; $7be4: $52
	ld   de, $1311                                   ; $7be5: $11 $11 $13
	ld   b, l                                        ; $7be8: $45
	sbc  d                                           ; $7be9: $9a
	cp   d                                           ; $7bea: $ba
	halt                                             ; $7beb: $76
	ld   d, c                                        ; $7bec: $51
	ld   de, $1111                                   ; $7bed: $11 $11 $11
	ld   h, $78                                      ; $7bf0: $26 $78
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	rst  $38                                         ; $7bf4: $ff
	rst  $38                                         ; $7bf5: $ff
	rst  $38                                         ; $7bf6: $ff
	db   $fc                                         ; $7bf7: $fc
	ld   b, c                                        ; $7bf8: $41
	ld   de, $1311                                   ; $7bf9: $11 $11 $13
	ld   h, [hl]                                     ; $7bfc: $66
	sbc  d                                           ; $7bfd: $9a
	cp   c                                           ; $7bfe: $b9
	ld   h, [hl]                                     ; $7bff: $66
	ld   sp, $1111                                   ; $7c00: $31 $11 $11
	ld   de, $8b46                                   ; $7c03: $11 $46 $8b
	rst  $38                                         ; $7c06: $ff
	rst  $38                                         ; $7c07: $ff
	rst  $38                                         ; $7c08: $ff
	rst  $38                                         ; $7c09: $ff
	rst  $38                                         ; $7c0a: $ff
	ld   sp, hl                                      ; $7c0b: $f9
	ld   sp, $1111                                   ; $7c0c: $31 $11 $11
	dec  h                                           ; $7c0f: $25
	ld   h, a                                        ; $7c10: $67
	xor  d                                           ; $7c11: $aa
	and  a                                           ; $7c12: $a7
	ld   d, h                                        ; $7c13: $54
	ld   de, $1111                                   ; $7c14: $11 $11 $11
	ld   de, $9e57                                   ; $7c17: $11 $57 $9e
	rst  $38                                         ; $7c1a: $ff
	rst  $38                                         ; $7c1b: $ff
	rst  $38                                         ; $7c1c: $ff
	rst  $38                                         ; $7c1d: $ff
	rst  $38                                         ; $7c1e: $ff
	add  $11                                         ; $7c1f: $c6 $11
	ld   hl, $6711                                   ; $7c21: $21 $11 $67
	adc  d                                           ; $7c24: $8a
	cp   d                                           ; $7c25: $ba
	sub  l                                           ; $7c26: $95
	ld   hl, $1111                                   ; $7c27: $21 $11 $11
	ld   de, $7a16                                   ; $7c2a: $11 $16 $7a
	rst  $28                                         ; $7c2d: $ef
	rst  $38                                         ; $7c2e: $ff
	rst  $38                                         ; $7c2f: $ff
	rst  $38                                         ; $7c30: $ff
	rst  $38                                         ; $7c31: $ff
	ld   a, [$1162]                                  ; $7c32: $fa $62 $11
	ld   hl, $8926                                   ; $7c35: $21 $26 $89
	sbc  e                                           ; $7c38: $9b
	sbc  b                                           ; $7c39: $98
	ld   d, d                                        ; $7c3a: $52
	ld   de, $1111                                   ; $7c3b: $11 $11 $11
	dec  d                                           ; $7c3e: $15
	ld   h, a                                        ; $7c3f: $67
	cp   a                                           ; $7c40: $bf
	rst  $38                                         ; $7c41: $ff
	rst  $38                                         ; $7c42: $ff
	rst  $38                                         ; $7c43: $ff
	rst  $38                                         ; $7c44: $ff
	db   $fc                                         ; $7c45: $fc
	add  h                                           ; $7c46: $84
	ld   [hl+], a                                    ; $7c47: $22
	ld   [hl-], a                                    ; $7c48: $32
	ld   d, $9a                                      ; $7c49: $16 $9a
	xor  d                                           ; $7c4b: $aa
	xor  b                                           ; $7c4c: $a8
	ld   h, d                                        ; $7c4d: $62
	ld   de, $1111                                   ; $7c4e: $11 $11 $11
	ld   d, $78                                      ; $7c51: $16 $78
	xor  a                                           ; $7c53: $af
	rst  $38                                         ; $7c54: $ff
	rst  $38                                         ; $7c55: $ff
	rst  $38                                         ; $7c56: $ff
	cp   $fc                                         ; $7c57: $fe $fc
	add  l                                           ; $7c59: $85
	inc  sp                                          ; $7c5a: $33
	inc  [hl]                                        ; $7c5b: $34
	dec  h                                           ; $7c5c: $25
	sbc  c                                           ; $7c5d: $99
	sbc  b                                           ; $7c5e: $98
	sub  [hl]                                        ; $7c5f: $96
	ld   d, c                                        ; $7c60: $51
	ld   de, $1111                                   ; $7c61: $11 $11 $11
	add  hl, sp                                      ; $7c64: $39
	sbc  b                                           ; $7c65: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c66: $cf
	rst  $38                                         ; $7c67: $ff
	rst  $38                                         ; $7c68: $ff
	rst  $38                                         ; $7c69: $ff
	db   $fd                                         ; $7c6a: $fd
	reti                                             ; $7c6b: $d9


	ld   [hl], l                                     ; $7c6c: $75
	ld   b, h                                        ; $7c6d: $44
	ld   b, h                                        ; $7c6e: $44
	scf                                              ; $7c6f: $37
	sbc  c                                           ; $7c70: $99
	ld   [hl], a                                     ; $7c71: $77
	ld   d, h                                        ; $7c72: $54
	ld   hl, $4311                                   ; $7c73: $21 $11 $43
	inc  de                                          ; $7c76: $13
	xor  e                                           ; $7c77: $ab
	adc  e                                           ; $7c78: $8b
	rst  $38                                         ; $7c79: $ff
	rst  $38                                         ; $7c7a: $ff
	rst  $38                                         ; $7c7b: $ff
	cp   $ac                                         ; $7c7c: $fe $ac
	xor  b                                           ; $7c7e: $a8
	ld   b, h                                        ; $7c7f: $44
	ld   d, a                                        ; $7c80: $57
	ld   d, e                                        ; $7c81: $53
	ld   l, b                                        ; $7c82: $68
	ld   [hl], h                                     ; $7c83: $74
	ld   b, e                                        ; $7c84: $43
	ld   sp, $3711                                   ; $7c85: $31 $11 $37
	inc  de                                          ; $7c88: $13
	sbc  h                                           ; $7c89: $9c
	call z, $ffff                                    ; $7c8a: $cc $ff $ff
	rst  JumpTable                                         ; $7c8d: $df
	rst  $38                                         ; $7c8e: $ff
	xor  e                                           ; $7c8f: $ab
	sbc  e                                           ; $7c90: $9b
	ld   [hl], l                                     ; $7c91: $75
	ld   d, a                                        ; $7c92: $57
	ld   [hl], e                                     ; $7c93: $73
	ld   d, [hl]                                     ; $7c94: $56
	ld   [hl], h                                     ; $7c95: $74
	ld   hl, $1121                                   ; $7c96: $21 $21 $11
	ld   c, c                                        ; $7c99: $49
	ld   h, $ad                                      ; $7c9a: $26 $ad
	db   $ec                                         ; $7c9c: $ec
	rst  $28                                         ; $7c9d: $ef
	cp   $df                                         ; $7c9e: $fe $df
	cp   $aa                                         ; $7ca0: $fe $aa
	sbc  d                                           ; $7ca2: $9a
	ld   [hl], l                                     ; $7ca3: $75
	ld   h, a                                        ; $7ca4: $67
	ld   [hl], e                                     ; $7ca5: $73
	ld   b, l                                        ; $7ca6: $45
	ld   d, d                                        ; $7ca7: $52
	ld   de, $1511                                   ; $7ca8: $11 $11 $15
	ld   h, h                                        ; $7cab: $64
	ld   a, e                                        ; $7cac: $7b
	call z, $efff                                    ; $7cad: $cc $ff $ef
	cp   $ff                                         ; $7cb0: $fe $ff
	db   $eb                                         ; $7cb2: $eb
	xor  b                                           ; $7cb3: $a8
	and  a                                           ; $7cb4: $a7
	ld   h, l                                        ; $7cb5: $65
	ld   [hl], l                                     ; $7cb6: $75
	inc  sp                                          ; $7cb7: $33
	inc  sp                                          ; $7cb8: $33
	ld   de, $1411                                   ; $7cb9: $11 $11 $14
	ld   h, h                                        ; $7cbc: $64
	ld   a, d                                        ; $7cbd: $7a
	call c, $ffdd                                    ; $7cbe: $dc $dd $ff
	call c, $ecef                                    ; $7cc1: $dc $ef $ec
	cp   e                                           ; $7cc4: $bb
	or   a                                           ; $7cc5: $b7
	ld   d, [hl]                                     ; $7cc6: $56
	ld   [hl], l                                     ; $7cc7: $75
	ld   [hl+], a                                    ; $7cc8: $22
	inc  sp                                          ; $7cc9: $33
	ld   de, $3611                                   ; $7cca: $11 $11 $36
	ld   d, a                                        ; $7ccd: $57
	xor  h                                           ; $7cce: $ac
	call $fcdd                                       ; $7ccf: $cd $dd $fc
	cp   [hl]                                        ; $7cd2: $be
	rst  $38                                         ; $7cd3: $ff
	cp   h                                           ; $7cd4: $bc
	xor  e                                           ; $7cd5: $ab
	and  [hl]                                        ; $7cd6: $a6
	ld   h, [hl]                                     ; $7cd7: $66
	ld   d, e                                        ; $7cd8: $53
	ld   b, e                                        ; $7cd9: $43
	inc  sp                                          ; $7cda: $33
	ld   de, $6515                                   ; $7cdb: $11 $15 $65
	ld   e, d                                        ; $7cde: $5a
	jp   z, $cfbc                                    ; $7cdf: $ca $bc $cf

	set  1, a                                        ; $7ce2: $cb $cf
	db   $db                                         ; $7ce4: $db
	reti                                             ; $7ce5: $d9


	cp   b                                           ; $7ce6: $b8
	add  [hl]                                        ; $7ce7: $86
	ld   h, h                                        ; $7ce8: $64
	dec  [hl]                                        ; $7ce9: $35
	inc  hl                                          ; $7cea: $23
	ld   [hl+], a                                    ; $7ceb: $22
	inc  de                                          ; $7cec: $13
	ld   d, l                                        ; $7ced: $55
	ld   a, c                                        ; $7cee: $79
	sbc  e                                           ; $7cef: $9b
	cp   d                                           ; $7cf0: $ba
	cp   h                                           ; $7cf1: $bc
	db   $db                                         ; $7cf2: $db
	call $bbcd                                       ; $7cf3: $cd $cd $bb
	cp   b                                           ; $7cf6: $b8
	adc  b                                           ; $7cf7: $88
	ld   h, l                                        ; $7cf8: $65
	ld   h, [hl]                                     ; $7cf9: $66
	inc  sp                                          ; $7cfa: $33
	ld   hl, $5633                                   ; $7cfb: $21 $33 $56
	halt                                             ; $7cfe: $76
	adc  e                                           ; $7cff: $8b
	xor  c                                           ; $7d00: $a9
	cp   h                                           ; $7d01: $bc
	call z, $cbcd                                    ; $7d02: $cc $cd $cb
	sbc  c                                           ; $7d05: $99
	xor  d                                           ; $7d06: $aa
	sub  [hl]                                        ; $7d07: $96
	ld   h, [hl]                                     ; $7d08: $66
	ld   [hl], l                                     ; $7d09: $75
	inc  h                                           ; $7d0a: $24
	ld   b, l                                        ; $7d0b: $45
	inc  [hl]                                        ; $7d0c: $34
	ld   e, b                                        ; $7d0d: $58
	add  a                                           ; $7d0e: $87
	ld   a, c                                        ; $7d0f: $79
	jp   z, $db9b                                    ; $7d10: $ca $9b $db

	jp   c, $a8bc                                    ; $7d13: $da $bc $a8

	ld   a, b                                        ; $7d16: $78
	ld   [hl], a                                     ; $7d17: $77
	ld   h, [hl]                                     ; $7d18: $66
	halt                                             ; $7d19: $76
	ld   b, h                                        ; $7d1a: $44
	ld   d, l                                        ; $7d1b: $55
	ld   h, h                                        ; $7d1c: $64
	ld   h, [hl]                                     ; $7d1d: $66
	adc  c                                           ; $7d1e: $89
	sbc  e                                           ; $7d1f: $9b
	sbc  c                                           ; $7d20: $99
	sbc  e                                           ; $7d21: $9b
	cp   h                                           ; $7d22: $bc
	call z, $87ba                                    ; $7d23: $cc $ba $87
	add  [hl]                                        ; $7d26: $86
	ld   h, [hl]                                     ; $7d27: $66
	ld   h, l                                        ; $7d28: $65
	ld   d, l                                        ; $7d29: $55
	ld   b, [hl]                                     ; $7d2a: $46
	ld   h, a                                        ; $7d2b: $67
	ld   d, [hl]                                     ; $7d2c: $56
	adc  b                                           ; $7d2d: $88
	adc  c                                           ; $7d2e: $89
	sbc  c                                           ; $7d2f: $99
	xor  c                                           ; $7d30: $a9
	xor  d                                           ; $7d31: $aa
	cp   d                                           ; $7d32: $ba
	cp   d                                           ; $7d33: $ba
	sbc  d                                           ; $7d34: $9a
	adc  b                                           ; $7d35: $88
	ld   h, [hl]                                     ; $7d36: $66
	ld   h, [hl]                                     ; $7d37: $66
	ld   [hl], l                                     ; $7d38: $75
	ld   h, l                                        ; $7d39: $65
	ld   d, l                                        ; $7d3a: $55
	ld   d, l                                        ; $7d3b: $55
	ld   l, b                                        ; $7d3c: $68
	adc  b                                           ; $7d3d: $88
	adc  d                                           ; $7d3e: $8a
	jp   z, $bb9b                                    ; $7d3f: $ca $9b $bb

	sbc  c                                           ; $7d42: $99
	sbc  d                                           ; $7d43: $9a
	and  a                                           ; $7d44: $a7
	ld   h, [hl]                                     ; $7d45: $66
	ld   [hl], a                                     ; $7d46: $77
	ld   h, [hl]                                     ; $7d47: $66
	ld   l, b                                        ; $7d48: $68
	ld   [hl], l                                     ; $7d49: $75
	ld   h, a                                        ; $7d4a: $67
	ld   h, [hl]                                     ; $7d4b: $66
	ld   a, c                                        ; $7d4c: $79
	adc  b                                           ; $7d4d: $88
	ld   a, c                                        ; $7d4e: $79
	xor  d                                           ; $7d4f: $aa
	sbc  c                                           ; $7d50: $99
	sbc  c                                           ; $7d51: $99
	adc  d                                           ; $7d52: $8a
	xor  b                                           ; $7d53: $a8
	xor  c                                           ; $7d54: $a9
	ld   [hl], a                                     ; $7d55: $77
	ld   h, a                                        ; $7d56: $67
	halt                                             ; $7d57: $76
	ld   d, [hl]                                     ; $7d58: $56
	ld   [hl], a                                     ; $7d59: $77
	ld   [hl], a                                     ; $7d5a: $77
	ld   [hl], a                                     ; $7d5b: $77
	add  a                                           ; $7d5c: $87
	ld   l, c                                        ; $7d5d: $69
	cp   c                                           ; $7d5e: $b9
	sbc  b                                           ; $7d5f: $98
	adc  b                                           ; $7d60: $88
	add  a                                           ; $7d61: $87
	adc  c                                           ; $7d62: $89
	adc  d                                           ; $7d63: $8a
	adc  b                                           ; $7d64: $88
	ld   [hl], a                                     ; $7d65: $77
	add  a                                           ; $7d66: $87
	ld   h, a                                        ; $7d67: $67
	sbc  c                                           ; $7d68: $99
	add  [hl]                                        ; $7d69: $86
	ld   h, a                                        ; $7d6a: $67
	sbc  b                                           ; $7d6b: $98
	ld   [hl], a                                     ; $7d6c: $77
	ld   a, b                                        ; $7d6d: $78
	add  a                                           ; $7d6e: $87
	ld   a, b                                        ; $7d6f: $78
	sbc  b                                           ; $7d70: $98
	sbc  b                                           ; $7d71: $98
	sbc  b                                           ; $7d72: $98
	ld   [hl], a                                     ; $7d73: $77
	ld   a, c                                        ; $7d74: $79
	add  a                                           ; $7d75: $87
	adc  c                                           ; $7d76: $89
	ld   a, c                                        ; $7d77: $79
	halt                                             ; $7d78: $76
	sub  a                                           ; $7d79: $97
	ld   a, b                                        ; $7d7a: $78
	adc  b                                           ; $7d7b: $88
	add  a                                           ; $7d7c: $87
	add  a                                           ; $7d7d: $87
	ld   [hl], a                                     ; $7d7e: $77
	ld   a, b                                        ; $7d7f: $78
	adc  c                                           ; $7d80: $89
	ld   a, b                                        ; $7d81: $78
	sbc  b                                           ; $7d82: $98
	adc  b                                           ; $7d83: $88
	ld   a, c                                        ; $7d84: $79
	adc  b                                           ; $7d85: $88
	adc  b                                           ; $7d86: $88
	adc  c                                           ; $7d87: $89
	adc  b                                           ; $7d88: $88
	add  a                                           ; $7d89: $87
	sbc  c                                           ; $7d8a: $99
	ld   a, b                                        ; $7d8b: $78
	adc  c                                           ; $7d8c: $89
	sbc  c                                           ; $7d8d: $99
	adc  c                                           ; $7d8e: $89
	sbc  b                                           ; $7d8f: $98
	ld   a, c                                        ; $7d90: $79
	adc  b                                           ; $7d91: $88
	sub  a                                           ; $7d92: $97
	adc  c                                           ; $7d93: $89
	adc  b                                           ; $7d94: $88
	adc  b                                           ; $7d95: $88
	sbc  c                                           ; $7d96: $99
	sbc  b                                           ; $7d97: $98
	adc  b                                           ; $7d98: $88
	sbc  c                                           ; $7d99: $99
	adc  b                                           ; $7d9a: $88
	sbc  c                                           ; $7d9b: $99
	adc  c                                           ; $7d9c: $89
	sbc  c                                           ; $7d9d: $99
	sbc  c                                           ; $7d9e: $99
	adc  b                                           ; $7d9f: $88
	sbc  b                                           ; $7da0: $98
	sbc  b                                           ; $7da1: $98
	sbc  b                                           ; $7da2: $98
	adc  b                                           ; $7da3: $88
	sbc  c                                           ; $7da4: $99
	sbc  c                                           ; $7da5: $99
	sbc  c                                           ; $7da6: $99
	sbc  b                                           ; $7da7: $98
	adc  b                                           ; $7da8: $88
	adc  c                                           ; $7da9: $89
	sbc  c                                           ; $7daa: $99
	sbc  b                                           ; $7dab: $98
	sbc  b                                           ; $7dac: $98
	sbc  b                                           ; $7dad: $98
	sbc  b                                           ; $7dae: $98
	sbc  c                                           ; $7daf: $99
	sbc  b                                           ; $7db0: $98
	adc  c                                           ; $7db1: $89
	sbc  b                                           ; $7db2: $98
	sbc  c                                           ; $7db3: $99
	adc  b                                           ; $7db4: $88
	sbc  c                                           ; $7db5: $99
	adc  b                                           ; $7db6: $88
	sbc  c                                           ; $7db7: $99
	adc  b                                           ; $7db8: $88
	adc  c                                           ; $7db9: $89
	sbc  c                                           ; $7dba: $99
	sbc  c                                           ; $7dbb: $99
	adc  b                                           ; $7dbc: $88
	ld   a, b                                        ; $7dbd: $78
	adc  b                                           ; $7dbe: $88
	adc  b                                           ; $7dbf: $88
	adc  b                                           ; $7dc0: $88
	sbc  b                                           ; $7dc1: $98
	adc  b                                           ; $7dc2: $88
	adc  b                                           ; $7dc3: $88
	adc  b                                           ; $7dc4: $88
	adc  b                                           ; $7dc5: $88
	add  a                                           ; $7dc6: $87
	ld   a, b                                        ; $7dc7: $78
	adc  b                                           ; $7dc8: $88
	adc  b                                           ; $7dc9: $88
	adc  b                                           ; $7dca: $88
	ld   a, b                                        ; $7dcb: $78
	adc  b                                           ; $7dcc: $88
	adc  b                                           ; $7dcd: $88
	ld   a, b                                        ; $7dce: $78
	adc  b                                           ; $7dcf: $88
	adc  b                                           ; $7dd0: $88
	adc  b                                           ; $7dd1: $88
	ld   a, b                                        ; $7dd2: $78
	adc  b                                           ; $7dd3: $88
	add  a                                           ; $7dd4: $87
	ld   a, b                                        ; $7dd5: $78
	ld   [hl], a                                     ; $7dd6: $77
	ld   [hl], a                                     ; $7dd7: $77
	ld   [hl], a                                     ; $7dd8: $77
	ld   a, b                                        ; $7dd9: $78
	add  a                                           ; $7dda: $87
	adc  b                                           ; $7ddb: $88
	adc  b                                           ; $7ddc: $88
	adc  b                                           ; $7ddd: $88
	adc  b                                           ; $7dde: $88
	adc  b                                           ; $7ddf: $88
	adc  b                                           ; $7de0: $88
	add  a                                           ; $7de1: $87
	adc  b                                           ; $7de2: $88
	ld   [hl], a                                     ; $7de3: $77
	add  a                                           ; $7de4: $87
	ld   [hl], a                                     ; $7de5: $77
	ld   [hl], a                                     ; $7de6: $77
	ld   [hl], a                                     ; $7de7: $77
	ld   [hl], a                                     ; $7de8: $77
	add  a                                           ; $7de9: $87
	adc  b                                           ; $7dea: $88
	add  a                                           ; $7deb: $87
	adc  b                                           ; $7dec: $88
	adc  b                                           ; $7ded: $88
	adc  b                                           ; $7dee: $88
	add  a                                           ; $7def: $87
	adc  b                                           ; $7df0: $88
	adc  b                                           ; $7df1: $88
	ld   a, b                                        ; $7df2: $78
	adc  b                                           ; $7df3: $88
	adc  b                                           ; $7df4: $88
	adc  b                                           ; $7df5: $88
	adc  b                                           ; $7df6: $88
	ld   [hl], a                                     ; $7df7: $77
	adc  b                                           ; $7df8: $88
	ld   a, b                                        ; $7df9: $78
	adc  b                                           ; $7dfa: $88
	adc  b                                           ; $7dfb: $88
	ld   a, b                                        ; $7dfc: $78
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
	add  a                                           ; $7e11: $87
	adc  b                                           ; $7e12: $88
	adc  b                                           ; $7e13: $88
	adc  b                                           ; $7e14: $88
	add  a                                           ; $7e15: $87
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
	add  a                                           ; $7e24: $87
	adc  b                                           ; $7e25: $88
	adc  b                                           ; $7e26: $88
	adc  b                                           ; $7e27: $88
	adc  b                                           ; $7e28: $88
	adc  b                                           ; $7e29: $88
	adc  b                                           ; $7e2a: $88
	adc  b                                           ; $7e2b: $88
	add  a                                           ; $7e2c: $87
	adc  b                                           ; $7e2d: $88
	ld   a, b                                        ; $7e2e: $78
	sbc  b                                           ; $7e2f: $98
	add  a                                           ; $7e30: $87
	ld   a, b                                        ; $7e31: $78
	adc  b                                           ; $7e32: $88
	adc  b                                           ; $7e33: $88
	adc  b                                           ; $7e34: $88
	ld   a, b                                        ; $7e35: $78
	adc  b                                           ; $7e36: $88
	adc  b                                           ; $7e37: $88
	adc  b                                           ; $7e38: $88
	ld   a, b                                        ; $7e39: $78
	adc  b                                           ; $7e3a: $88
	adc  b                                           ; $7e3b: $88
	ld   a, b                                        ; $7e3c: $78
	adc  b                                           ; $7e3d: $88
	adc  b                                           ; $7e3e: $88
	adc  b                                           ; $7e3f: $88
	adc  b                                           ; $7e40: $88
	ld   [hl], a                                     ; $7e41: $77
	adc  b                                           ; $7e42: $88
	adc  b                                           ; $7e43: $88
	add  a                                           ; $7e44: $87
	ld   a, b                                        ; $7e45: $78
	adc  b                                           ; $7e46: $88
	ld   a, b                                        ; $7e47: $78
	add  a                                           ; $7e48: $87
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
	add  a                                           ; $7e55: $87
	ld   a, b                                        ; $7e56: $78
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
	adc  c                                           ; $7e62: $89
	adc  b                                           ; $7e63: $88
	adc  b                                           ; $7e64: $88
	adc  b                                           ; $7e65: $88
	adc  b                                           ; $7e66: $88
	adc  b                                           ; $7e67: $88
	adc  b                                           ; $7e68: $88
	adc  b                                           ; $7e69: $88
	adc  b                                           ; $7e6a: $88
	adc  b                                           ; $7e6b: $88
	adc  c                                           ; $7e6c: $89
	sbc  c                                           ; $7e6d: $99
	adc  b                                           ; $7e6e: $88
	adc  b                                           ; $7e6f: $88
	adc  b                                           ; $7e70: $88
	adc  b                                           ; $7e71: $88
	sbc  c                                           ; $7e72: $99
	adc  b                                           ; $7e73: $88
	adc  b                                           ; $7e74: $88
	adc  b                                           ; $7e75: $88
	sbc  b                                           ; $7e76: $98
	adc  b                                           ; $7e77: $88
	adc  b                                           ; $7e78: $88
	sbc  c                                           ; $7e79: $99
	adc  b                                           ; $7e7a: $88
	adc  b                                           ; $7e7b: $88
	sbc  b                                           ; $7e7c: $98
	adc  b                                           ; $7e7d: $88
	adc  b                                           ; $7e7e: $88
	sbc  b                                           ; $7e7f: $98
	adc  b                                           ; $7e80: $88
	adc  b                                           ; $7e81: $88
	sbc  c                                           ; $7e82: $99
	adc  b                                           ; $7e83: $88
	adc  b                                           ; $7e84: $88
	sbc  b                                           ; $7e85: $98
	adc  b                                           ; $7e86: $88
	adc  b                                           ; $7e87: $88
	adc  b                                           ; $7e88: $88
	sbc  c                                           ; $7e89: $99
	adc  b                                           ; $7e8a: $88
	adc  b                                           ; $7e8b: $88
	sbc  c                                           ; $7e8c: $99
	sbc  b                                           ; $7e8d: $98
	adc  b                                           ; $7e8e: $88
	adc  b                                           ; $7e8f: $88
	sbc  c                                           ; $7e90: $99
	sbc  c                                           ; $7e91: $99
	adc  b                                           ; $7e92: $88
	sbc  c                                           ; $7e93: $99
	adc  b                                           ; $7e94: $88
	sbc  c                                           ; $7e95: $99
	adc  b                                           ; $7e96: $88
	adc  b                                           ; $7e97: $88
	adc  b                                           ; $7e98: $88
	adc  b                                           ; $7e99: $88
	sbc  b                                           ; $7e9a: $98
	adc  c                                           ; $7e9b: $89
	sbc  b                                           ; $7e9c: $98
	adc  b                                           ; $7e9d: $88
	adc  b                                           ; $7e9e: $88
	adc  b                                           ; $7e9f: $88
	adc  b                                           ; $7ea0: $88
	adc  b                                           ; $7ea1: $88
	adc  c                                           ; $7ea2: $89
	adc  b                                           ; $7ea3: $88
	sbc  b                                           ; $7ea4: $98
	adc  c                                           ; $7ea5: $89
	sbc  b                                           ; $7ea6: $98
	adc  c                                           ; $7ea7: $89
	adc  b                                           ; $7ea8: $88
	sbc  c                                           ; $7ea9: $99
	adc  b                                           ; $7eaa: $88
	adc  b                                           ; $7eab: $88
	adc  b                                           ; $7eac: $88
	adc  c                                           ; $7ead: $89
	adc  c                                           ; $7eae: $89
	adc  b                                           ; $7eaf: $88
	adc  b                                           ; $7eb0: $88
	adc  b                                           ; $7eb1: $88
	sbc  b                                           ; $7eb2: $98
	sub  a                                           ; $7eb3: $97
	adc  c                                           ; $7eb4: $89
	adc  b                                           ; $7eb5: $88
	adc  c                                           ; $7eb6: $89
	adc  b                                           ; $7eb7: $88
	adc  b                                           ; $7eb8: $88
	adc  c                                           ; $7eb9: $89
	adc  b                                           ; $7eba: $88
	adc  b                                           ; $7ebb: $88
	sbc  b                                           ; $7ebc: $98
	adc  b                                           ; $7ebd: $88
	adc  c                                           ; $7ebe: $89
	adc  c                                           ; $7ebf: $89
	adc  b                                           ; $7ec0: $88
	adc  b                                           ; $7ec1: $88
	adc  b                                           ; $7ec2: $88
	adc  b                                           ; $7ec3: $88
	sbc  b                                           ; $7ec4: $98
	adc  b                                           ; $7ec5: $88
	sbc  b                                           ; $7ec6: $98
	adc  b                                           ; $7ec7: $88
	adc  b                                           ; $7ec8: $88
	adc  b                                           ; $7ec9: $88
	add  a                                           ; $7eca: $87
	adc  c                                           ; $7ecb: $89
	adc  b                                           ; $7ecc: $88
	sbc  b                                           ; $7ecd: $98
	adc  c                                           ; $7ece: $89
	adc  b                                           ; $7ecf: $88
	adc  b                                           ; $7ed0: $88
	adc  c                                           ; $7ed1: $89
	sub  a                                           ; $7ed2: $97
	ld   a, c                                        ; $7ed3: $79
	sbc  b                                           ; $7ed4: $98
	adc  b                                           ; $7ed5: $88
	adc  c                                           ; $7ed6: $89
	adc  b                                           ; $7ed7: $88
	adc  c                                           ; $7ed8: $89
	add  a                                           ; $7ed9: $87
	adc  b                                           ; $7eda: $88
	adc  b                                           ; $7edb: $88
	adc  b                                           ; $7edc: $88
	adc  c                                           ; $7edd: $89
	adc  b                                           ; $7ede: $88
	add  a                                           ; $7edf: $87
	adc  c                                           ; $7ee0: $89
	adc  b                                           ; $7ee1: $88
	add  a                                           ; $7ee2: $87
	sbc  b                                           ; $7ee3: $98
	adc  b                                           ; $7ee4: $88
	add  a                                           ; $7ee5: $87
	adc  b                                           ; $7ee6: $88
	adc  b                                           ; $7ee7: $88
	adc  c                                           ; $7ee8: $89
	add  a                                           ; $7ee9: $87
	ld   a, b                                        ; $7eea: $78
	sbc  b                                           ; $7eeb: $98
	adc  b                                           ; $7eec: $88
	adc  b                                           ; $7eed: $88
	adc  b                                           ; $7eee: $88
	adc  b                                           ; $7eef: $88
	adc  b                                           ; $7ef0: $88
	adc  b                                           ; $7ef1: $88
	add  a                                           ; $7ef2: $87
	sbc  b                                           ; $7ef3: $98
	adc  b                                           ; $7ef4: $88
	adc  b                                           ; $7ef5: $88
	adc  b                                           ; $7ef6: $88
	adc  b                                           ; $7ef7: $88
	adc  b                                           ; $7ef8: $88
	sbc  b                                           ; $7ef9: $98
	adc  b                                           ; $7efa: $88
	adc  b                                           ; $7efb: $88
	adc  b                                           ; $7efc: $88
	adc  b                                           ; $7efd: $88
	adc  b                                           ; $7efe: $88
	add  a                                           ; $7eff: $87
	ld   a, b                                        ; $7f00: $78
	adc  b                                           ; $7f01: $88
	adc  b                                           ; $7f02: $88
	adc  b                                           ; $7f03: $88
	add  a                                           ; $7f04: $87
	adc  b                                           ; $7f05: $88
	add  a                                           ; $7f06: $87
	ld   a, b                                        ; $7f07: $78
	adc  b                                           ; $7f08: $88
	adc  b                                           ; $7f09: $88
	adc  b                                           ; $7f0a: $88
	sbc  b                                           ; $7f0b: $98
	ld   a, b                                        ; $7f0c: $78
	adc  b                                           ; $7f0d: $88
	adc  b                                           ; $7f0e: $88
	ld   a, b                                        ; $7f0f: $78
	adc  b                                           ; $7f10: $88
	adc  b                                           ; $7f11: $88
	sbc  b                                           ; $7f12: $98
	adc  b                                           ; $7f13: $88
	adc  b                                           ; $7f14: $88
	adc  c                                           ; $7f15: $89
	sbc  b                                           ; $7f16: $98
	adc  c                                           ; $7f17: $89
	ld   a, b                                        ; $7f18: $78
	adc  b                                           ; $7f19: $88
	adc  b                                           ; $7f1a: $88
	adc  c                                           ; $7f1b: $89
	adc  b                                           ; $7f1c: $88
	adc  b                                           ; $7f1d: $88
	sbc  c                                           ; $7f1e: $99
	ld   a, b                                        ; $7f1f: $78
	adc  b                                           ; $7f20: $88
	sbc  b                                           ; $7f21: $98
	sbc  b                                           ; $7f22: $98
	ld   a, b                                        ; $7f23: $78
	adc  b                                           ; $7f24: $88
	sbc  b                                           ; $7f25: $98
	ld   a, b                                        ; $7f26: $78
	add  a                                           ; $7f27: $87
	add  a                                           ; $7f28: $87
	ld   h, a                                        ; $7f29: $67
	halt                                             ; $7f2a: $76
	add  a                                           ; $7f2b: $87
	ld   a, c                                        ; $7f2c: $79
	ld   [hl], a                                     ; $7f2d: $77
	ld   [hl], a                                     ; $7f2e: $77
	sbc  d                                           ; $7f2f: $9a
	xor  d                                           ; $7f30: $aa
	ld   [hl], a                                     ; $7f31: $77
	adc  b                                           ; $7f32: $88
	ld   a, b                                        ; $7f33: $78
	sbc  b                                           ; $7f34: $98
	add  a                                           ; $7f35: $87
	ld   h, a                                        ; $7f36: $67
	ld   [hl], a                                     ; $7f37: $77
	adc  c                                           ; $7f38: $89
	adc  c                                           ; $7f39: $89
	add  a                                           ; $7f3a: $87
	sbc  b                                           ; $7f3b: $98
	adc  d                                           ; $7f3c: $8a
	adc  d                                           ; $7f3d: $8a
	add  a                                           ; $7f3e: $87
	adc  b                                           ; $7f3f: $88
	adc  b                                           ; $7f40: $88
	add  a                                           ; $7f41: $87
	sbc  b                                           ; $7f42: $98
	add  a                                           ; $7f43: $87
	ld   [hl], a                                     ; $7f44: $77
	sbc  d                                           ; $7f45: $9a
	add  a                                           ; $7f46: $87
	sbc  c                                           ; $7f47: $99
	ld   a, b                                        ; $7f48: $78
	sbc  b                                           ; $7f49: $98
	adc  b                                           ; $7f4a: $88
	ld   [hl], a                                     ; $7f4b: $77
	ld   h, a                                        ; $7f4c: $67
	add  a                                           ; $7f4d: $87
	ld   a, b                                        ; $7f4e: $78
	sbc  b                                           ; $7f4f: $98
	ld   a, b                                        ; $7f50: $78
	adc  b                                           ; $7f51: $88
	sbc  b                                           ; $7f52: $98
	adc  c                                           ; $7f53: $89
	adc  c                                           ; $7f54: $89
	sub  a                                           ; $7f55: $97
	adc  b                                           ; $7f56: $88
	ld   [hl], a                                     ; $7f57: $77
	ld   a, b                                        ; $7f58: $78
	sbc  b                                           ; $7f59: $98
	ld   a, b                                        ; $7f5a: $78
	adc  b                                           ; $7f5b: $88
	ld   a, c                                        ; $7f5c: $79
	sbc  b                                           ; $7f5d: $98
	sbc  b                                           ; $7f5e: $98
	sbc  c                                           ; $7f5f: $99
	adc  b                                           ; $7f60: $88
	sub  a                                           ; $7f61: $97
	ld   a, c                                        ; $7f62: $79
	ld   [hl], a                                     ; $7f63: $77
	adc  b                                           ; $7f64: $88
	ld   a, b                                        ; $7f65: $78
	adc  c                                           ; $7f66: $89
	add  a                                           ; $7f67: $87
	adc  c                                           ; $7f68: $89
	add  a                                           ; $7f69: $87
	adc  b                                           ; $7f6a: $88
	sbc  b                                           ; $7f6b: $98
	ld   [hl], a                                     ; $7f6c: $77
	adc  b                                           ; $7f6d: $88
	ld   a, b                                        ; $7f6e: $78
	add  a                                           ; $7f6f: $87
	adc  b                                           ; $7f70: $88
	ld   a, c                                        ; $7f71: $79
	ld   a, b                                        ; $7f72: $78
	sub  a                                           ; $7f73: $97
	ld   [hl], a                                     ; $7f74: $77
	ld   a, b                                        ; $7f75: $78
	sbc  c                                           ; $7f76: $99
	add  a                                           ; $7f77: $87
	adc  c                                           ; $7f78: $89
	halt                                             ; $7f79: $76
	sbc  c                                           ; $7f7a: $99
	sbc  c                                           ; $7f7b: $99
	ld   [hl], a                                     ; $7f7c: $77
	add  a                                           ; $7f7d: $87
	ld   a, b                                        ; $7f7e: $78
	sbc  c                                           ; $7f7f: $99
	xor  b                                           ; $7f80: $a8
	ld   a, b                                        ; $7f81: $78
	add  a                                           ; $7f82: $87
	adc  c                                           ; $7f83: $89
	sbc  c                                           ; $7f84: $99
	ld   a, b                                        ; $7f85: $78
	add  a                                           ; $7f86: $87
	adc  b                                           ; $7f87: $88
	adc  c                                           ; $7f88: $89
	adc  d                                           ; $7f89: $8a
	sbc  b                                           ; $7f8a: $98
	sbc  b                                           ; $7f8b: $98
	adc  c                                           ; $7f8c: $89
	sbc  b                                           ; $7f8d: $98
	add  a                                           ; $7f8e: $87
	adc  b                                           ; $7f8f: $88
	adc  b                                           ; $7f90: $88
	ld   a, b                                        ; $7f91: $78
	adc  c                                           ; $7f92: $89
	add  a                                           ; $7f93: $87
	adc  c                                           ; $7f94: $89
	adc  b                                           ; $7f95: $88
	sbc  c                                           ; $7f96: $99
	xor  c                                           ; $7f97: $a9
	sbc  c                                           ; $7f98: $99
	adc  c                                           ; $7f99: $89
	sbc  b                                           ; $7f9a: $98
	ld   a, c                                        ; $7f9b: $79
	sbc  c                                           ; $7f9c: $99
	adc  c                                           ; $7f9d: $89
	adc  b                                           ; $7f9e: $88
	add  a                                           ; $7f9f: $87
	ld   h, a                                        ; $7fa0: $67
	xor  c                                           ; $7fa1: $a9
	sbc  c                                           ; $7fa2: $99
	adc  b                                           ; $7fa3: $88
	halt                                             ; $7fa4: $76
	ld   a, b                                        ; $7fa5: $78
	sbc  c                                           ; $7fa6: $99
	sbc  b                                           ; $7fa7: $98
	add  a                                           ; $7fa8: $87
	ld   [hl], a                                     ; $7fa9: $77
	ld   a, b                                        ; $7faa: $78
	adc  b                                           ; $7fab: $88
	ld   [hl], a                                     ; $7fac: $77
	ld   a, b                                        ; $7fad: $78
	ld   [hl], a                                     ; $7fae: $77
	adc  b                                           ; $7faf: $88
	sbc  b                                           ; $7fb0: $98
	adc  b                                           ; $7fb1: $88
	adc  b                                           ; $7fb2: $88
	ld   a, b                                        ; $7fb3: $78
	adc  c                                           ; $7fb4: $89
	sbc  c                                           ; $7fb5: $99
	adc  b                                           ; $7fb6: $88
	adc  c                                           ; $7fb7: $89
	ld   a, b                                        ; $7fb8: $78
	add  a                                           ; $7fb9: $87
	sbc  b                                           ; $7fba: $98
	add  a                                           ; $7fbb: $87
	adc  c                                           ; $7fbc: $89
	sbc  b                                           ; $7fbd: $98
	adc  b                                           ; $7fbe: $88
	sbc  b                                           ; $7fbf: $98
	adc  b                                           ; $7fc0: $88
	adc  c                                           ; $7fc1: $89
	adc  b                                           ; $7fc2: $88
	ld   a, b                                        ; $7fc3: $78
	adc  c                                           ; $7fc4: $89
	ld   a, b                                        ; $7fc5: $78
	adc  b                                           ; $7fc6: $88
	adc  b                                           ; $7fc7: $88
	adc  b                                           ; $7fc8: $88
	sbc  b                                           ; $7fc9: $98
	adc  b                                           ; $7fca: $88
	adc  b                                           ; $7fcb: $88
	adc  c                                           ; $7fcc: $89
	adc  b                                           ; $7fcd: $88
	adc  c                                           ; $7fce: $89
	sbc  b                                           ; $7fcf: $98
	adc  c                                           ; $7fd0: $89
	adc  c                                           ; $7fd1: $89
	adc  b                                           ; $7fd2: $88
	ld   a, b                                        ; $7fd3: $78
	adc  b                                           ; $7fd4: $88
	ld   [hl], a                                     ; $7fd5: $77
	adc  b                                           ; $7fd6: $88
	add  a                                           ; $7fd7: $87
	ld   a, b                                        ; $7fd8: $78
	adc  b                                           ; $7fd9: $88
	add  a                                           ; $7fda: $87
	adc  b                                           ; $7fdb: $88
	adc  b                                           ; $7fdc: $88
	sbc  b                                           ; $7fdd: $98
	sbc  b                                           ; $7fde: $98
	adc  b                                           ; $7fdf: $88
	adc  b                                           ; $7fe0: $88
	ld   [hl], a                                     ; $7fe1: $77
	ld   [hl], a                                     ; $7fe2: $77
	adc  b                                           ; $7fe3: $88
	ld   [hl], a                                     ; $7fe4: $77
	sbc  c                                           ; $7fe5: $99
	ld   a, b                                        ; $7fe6: $78
	adc  c                                           ; $7fe7: $89
	adc  b                                           ; $7fe8: $88
	adc  c                                           ; $7fe9: $89
	sbc  b                                           ; $7fea: $98
	adc  b                                           ; $7feb: $88
	adc  c                                           ; $7fec: $89
	sub  a                                           ; $7fed: $97
	ld   a, b                                        ; $7fee: $78
	adc  b                                           ; $7fef: $88
	ld   [hl], a                                     ; $7ff0: $77
	adc  c                                           ; $7ff1: $89
	adc  b                                           ; $7ff2: $88
	ld   a, b                                        ; $7ff3: $78
	adc  b                                           ; $7ff4: $88
	ld   [hl], a                                     ; $7ff5: $77
	ld   a, b                                        ; $7ff6: $78
	sub  a                                           ; $7ff7: $97
	ld   a, b                                        ; $7ff8: $78
	sbc  b                                           ; $7ff9: $98
	ld   [hl], a                                     ; $7ffa: $77
	ld   a, b                                        ; $7ffb: $78
	adc  b                                           ; $7ffc: $88
	adc  b                                           ; $7ffd: $88
	sbc  b                                           ; $7ffe: $98
	add  a                                           ; $7fff: $87
