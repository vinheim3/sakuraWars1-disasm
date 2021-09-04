; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0dc", ROMX[$4000], BANK[$dc]

	rst  $38                                         ; $4000: $ff
	db   $f4                                         ; $4001: $f4
	ld   de, $f86f                                   ; $4002: $11 $6f $f8
	ld   de, $1121                                   ; $4005: $11 $21 $11
	ld   de, $ffff                                   ; $4008: $11 $ff $ff
	ld   e, [hl]                                     ; $400b: $5e
	rst  $38                                         ; $400c: $ff
	pop  af                                          ; $400d: $f1
	ld   [de], a                                     ; $400e: $12
	rst  $38                                         ; $400f: $ff
	db   $e3                                         ; $4010: $e3
	ld   de, $1121                                   ; $4011: $11 $21 $11
	rra                                              ; $4014: $1f
	rst  $38                                         ; $4015: $ff
	ei                                               ; $4016: $fb
	xor  a                                           ; $4017: $af
	rst  $38                                         ; $4018: $ff
	ld   de, $ff2b                                   ; $4019: $11 $2b $ff
	ld   b, c                                        ; $401c: $41
	ld   de, $1111                                   ; $401d: $11 $11 $11
	rst  JumpTable                                         ; $4020: $df
	rst  $38                                         ; $4021: $ff
	rst  $30                                         ; $4022: $f7
	rst  $38                                         ; $4023: $ff
	pop  af                                          ; $4024: $f1
	ld   [de], a                                     ; $4025: $12
	cp   a                                           ; $4026: $bf
	or   $11                                         ; $4027: $f6 $11
	ld   de, $1911                                   ; $4029: $11 $11 $19
	rst  $38                                         ; $402c: $ff
	rst  $38                                         ; $402d: $ff
	ld   a, a                                        ; $402e: $7f
	rst  $38                                         ; $402f: $ff
	ld   de, $ff2d                                   ; $4030: $11 $2d $ff
	ld   d, c                                        ; $4033: $51
	ld   de, $1111                                   ; $4034: $11 $11 $11
	rst  $38                                         ; $4037: $ff
	rst  $38                                         ; $4038: $ff
	jp   hl                                          ; $4039: $e9


	rst  $38                                         ; $403a: $ff
	or   c                                           ; $403b: $b1
	rla                                              ; $403c: $17
	rst  $38                                         ; $403d: $ff
	pop  af                                          ; $403e: $f1
	ld   de, $1111                                   ; $403f: $11 $11 $11
	rra                                              ; $4042: $1f
	rst  $38                                         ; $4043: $ff
	rst  $30                                         ; $4044: $f7
	rst  $38                                         ; $4045: $ff
	pop  de                                          ; $4046: $d1
	ld   de, $fcdf                                   ; $4047: $11 $df $fc
	ld   de, $1111                                   ; $404a: $11 $11 $11
	rra                                              ; $404d: $1f
	rst  $38                                         ; $404e: $ff
	rst  $38                                         ; $404f: $ff
	adc  a                                           ; $4050: $8f
	db   $f4                                         ; $4051: $f4
	ld   de, $ff8f                                   ; $4052: $11 $8f $ff
	ld   hl, $1111                                   ; $4055: $21 $11 $11
	rra                                              ; $4058: $1f
	rst  $38                                         ; $4059: $ff
	rst  $38                                         ; $405a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $405b: $cf
	jp   $9f11                                       ; $405c: $c3 $11 $9f


	rst  $38                                         ; $405f: $ff
	ld   d, c                                        ; $4060: $51
	ld   de, $1f11                                   ; $4061: $11 $11 $1f
	rst  $38                                         ; $4064: $ff
	rst  $38                                         ; $4065: $ff
	db   $fd                                         ; $4066: $fd
	add  c                                           ; $4067: $81
	ld   de, $ffcf                                   ; $4068: $11 $cf $ff
	ld   h, c                                        ; $406b: $61
	ld   de, $1f11                                   ; $406c: $11 $11 $1f
	rst  $38                                         ; $406f: $ff
	rst  $38                                         ; $4070: $ff
	db   $fc                                         ; $4071: $fc
	ld   hl, $ff16                                   ; $4072: $21 $16 $ff
	ei                                               ; $4075: $fb
	ld   b, c                                        ; $4076: $41
	ld   de, $bf11                                   ; $4077: $11 $11 $bf
	rst  $38                                         ; $407a: $ff
	rst  $38                                         ; $407b: $ff
	ld   a, [$1c11]                                  ; $407c: $fa $11 $1c
	rst  $38                                         ; $407f: $ff
	db   $f4                                         ; $4080: $f4
	ld   de, $1111                                   ; $4081: $11 $11 $11
	rst  $38                                         ; $4084: $ff
	rst  $38                                         ; $4085: $ff
	rst  $38                                         ; $4086: $ff
	db   $e3                                         ; $4087: $e3
	ld   de, $ff7f                                   ; $4088: $11 $7f $ff
	sub  d                                           ; $408b: $92
	ld   de, $1f11                                   ; $408c: $11 $11 $1f
	rst  $38                                         ; $408f: $ff
	rst  $38                                         ; $4090: $ff
	rst  $38                                         ; $4091: $ff
	ld   h, c                                        ; $4092: $61
	ld   [de], a                                     ; $4093: $12
	rst  $38                                         ; $4094: $ff
	cp   $11                                         ; $4095: $fe $11
	ld   de, rAUD1LEN                                   ; $4097: $11 $11 $ff
	rst  $38                                         ; $409a: $ff
	rst  $38                                         ; $409b: $ff
	or   $11                                         ; $409c: $f6 $11
	ld   a, $ff                                      ; $409e: $3e $ff
	push af                                          ; $40a0: $f5
	ld   de, $1e11                                   ; $40a1: $11 $11 $1e
	rst  $38                                         ; $40a4: $ff
	rst  $38                                         ; $40a5: $ff
	rst  $38                                         ; $40a6: $ff
	sub  c                                           ; $40a7: $91
	ld   de, $ffff                                   ; $40a8: $11 $ff $ff
	ld   b, c                                        ; $40ab: $41
	ld   de, $cf11                                   ; $40ac: $11 $11 $cf
	rst  $38                                         ; $40af: $ff
	rst  $38                                         ; $40b0: $ff
	rst  $30                                         ; $40b1: $f7
	ld   de, $ff1c                                   ; $40b2: $11 $1c $ff
	rst  $30                                         ; $40b5: $f7
	ld   de, $1f11                                   ; $40b6: $11 $11 $1f
	rst  $38                                         ; $40b9: $ff
	rst  $38                                         ; $40ba: $ff
	rst  $38                                         ; $40bb: $ff
	sub  c                                           ; $40bc: $91
	inc  de                                          ; $40bd: $13
	rst  $38                                         ; $40be: $ff
	rst  $38                                         ; $40bf: $ff
	ld   b, c                                        ; $40c0: $41
	ld   de, rAUD1LEN                                   ; $40c1: $11 $11 $ff
	rst  $38                                         ; $40c4: $ff
	rst  $38                                         ; $40c5: $ff
	and  d                                           ; $40c6: $a2
	ld   de, $ff7f                                   ; $40c7: $11 $7f $ff
	and  d                                           ; $40ca: $a2
	ld   de, $9f11                                   ; $40cb: $11 $11 $9f
	rst  $38                                         ; $40ce: $ff
	rst  $38                                         ; $40cf: $ff
	or   $11                                         ; $40d0: $f6 $11
	dec  e                                           ; $40d2: $1d
	rst  $38                                         ; $40d3: $ff
	push af                                          ; $40d4: $f5
	ld   de, $1f11                                   ; $40d5: $11 $11 $1f
	rst  $38                                         ; $40d8: $ff
	rst  $38                                         ; $40d9: $ff
	rst  $38                                         ; $40da: $ff
	ld   hl, $ef15                                   ; $40db: $21 $15 $ef
	ei                                               ; $40de: $fb
	ld   de, $1711                                   ; $40df: $11 $11 $17
	rst  $38                                         ; $40e2: $ff
	rst  $38                                         ; $40e3: $ff
	rst  $38                                         ; $40e4: $ff
	ld   hl, $ef16                                   ; $40e5: $21 $16 $ef
	rst  $38                                         ; $40e8: $ff
	ld   h, c                                        ; $40e9: $61
	ld   de, rAUD1LOW                                   ; $40ea: $11 $13 $ff
	rst  $38                                         ; $40ed: $ff
	db   $fc                                         ; $40ee: $fc
	and  c                                           ; $40ef: $a1
	ld   [de], a                                     ; $40f0: $12
	ld   e, a                                        ; $40f1: $5f
	rst  $38                                         ; $40f2: $ff
	ld   [hl], c                                     ; $40f3: $71
	ld   de, $af12                                   ; $40f4: $11 $12 $af
	rst  $38                                         ; $40f7: $ff
	rst  $38                                         ; $40f8: $ff
	or   d                                           ; $40f9: $b2
	ld   de, $ffaf                                   ; $40fa: $11 $af $ff
	pop  bc                                          ; $40fd: $c1
	ld   de, $cf11                                   ; $40fe: $11 $11 $cf
	rst  $38                                         ; $4101: $ff
	rst  $38                                         ; $4102: $ff
	or   d                                           ; $4103: $b2
	ld   [de], a                                     ; $4104: $12
	ld   a, [hl]                                     ; $4105: $7e
	rst  $38                                         ; $4106: $ff
	pop  af                                          ; $4107: $f1
	ld   de, $7f11                                   ; $4108: $11 $11 $7f
	rst  $38                                         ; $410b: $ff
	rst  JumpTable                                         ; $410c: $df
	db   $e4                                         ; $410d: $e4
	ld   hl, $ff7f                                   ; $410e: $21 $7f $ff
	call nc, $1311                                   ; $4111: $d4 $11 $13
	adc  l                                           ; $4114: $8d
	rst  $28                                         ; $4115: $ef
	db   $ed                                         ; $4116: $ed
	ld   a, [$7f21]                                  ; $4117: $fa $21 $7f
	db   $fd                                         ; $411a: $fd
	ldh  a, [c]                                      ; $411b: $f2
	ld   de, $7f11                                   ; $411c: $11 $11 $7f
	db   $fc                                         ; $411f: $fc
	cp   $b7                                         ; $4120: $fe $b7
	ld   de, $debf                                   ; $4122: $11 $bf $de
	push af                                          ; $4125: $f5
	ld   de, $4f11                                   ; $4126: $11 $11 $4f
	cp   a                                           ; $4129: $bf
	ld   a, [$119c]                                  ; $412a: $fa $9c $11
	rst  $38                                         ; $412d: $ff
	xor  h                                           ; $412e: $ac
	ret  z                                           ; $412f: $c8

jr_0dc_4130:
	ld   de, $ec11                                   ; $4130: $11 $11 $ec
	xor  a                                           ; $4133: $af
	cp   e                                           ; $4134: $bb
	push af                                          ; $4135: $f5
	dec  h                                           ; $4136: $25
	ld   a, [hl]                                     ; $4137: $7e
	rst  JumpTable                                         ; $4138: $df
	pop  af                                          ; $4139: $f1
	ld   de, $1b1b                                   ; $413a: $11 $1b $1b
	rst  $38                                         ; $413d: $ff
	call nc, $34da                                   ; $413e: $d4 $da $34
	ccf                                              ; $4141: $3f
	rst  $38                                         ; $4142: $ff
	pop  de                                          ; $4143: $d1
	ld   de, $5b36                                   ; $4144: $11 $36 $5b
	rst  $28                                         ; $4147: $ef

jr_0dc_4148:
	sub  l                                           ; $4148: $95
	jp   Jump_0dc_5fa6                               ; $4149: $c3 $a6 $5f


	rst  $28                                         ; $414c: $ef
	ld   b, c                                        ; $414d: $41
	ld   de, $3f71                                   ; $414e: $11 $71 $3f
	call $3ed4                                       ; $4151: $cd $d4 $3e
	or   c                                           ; $4154: $b1
	rst  $28                                         ; $4155: $ef
	ld   sp, hl                                      ; $4156: $f9
	ld   d, c                                        ; $4157: $51
	rla                                              ; $4158: $17
	ld   de, $6ffe                                   ; $4159: $11 $fe $6f
	jp   nc, $8c79                                   ; $415c: $d2 $79 $8c

	ld   c, a                                        ; $415f: $4f
	ld   a, [$1671]                                  ; $4160: $fa $71 $16
	inc  h                                           ; $4163: $24
	ld   c, e                                        ; $4164: $4b
	cp   $36                                         ; $4165: $fe $36
	xor  e                                           ; $4167: $ab
	add  $7f                                         ; $4168: $c6 $7f
	db   $fc                                         ; $416a: $fc
	ld   de, $1694                                   ; $416b: $11 $94 $16
	ld   e, a                                        ; $416e: $5f
	rst  $30                                         ; $416f: $f7
	ld   h, [hl]                                     ; $4170: $66
	cp   a                                           ; $4171: $bf
	ld   b, h                                        ; $4172: $44
	db   $fc                                         ; $4173: $fc
	ldh  a, [c]                                      ; $4174: $f2
	add  hl, de                                      ; $4175: $19
	pop  bc                                          ; $4176: $c1
	jr   c, jr_0dc_4148                              ; $4177: $38 $cf

	sub  a                                           ; $4179: $97
	ld   l, e                                        ; $417a: $6b
	pop  af                                          ; $417b: $f1
	sbc  a                                           ; $417c: $9f
	ld   a, a                                        ; $417d: $7f
	sub  c                                           ; $417e: $91
	daa                                              ; $417f: $27
	ld   d, e                                        ; $4180: $53
	ld   c, b                                        ; $4181: $48
	db   $fd                                         ; $4182: $fd
	adc  b                                           ; $4183: $88
	sbc  e                                           ; $4184: $9b
	ld   d, [hl]                                     ; $4185: $56
	cp   $a8                                         ; $4186: $fe $a8
	inc  de                                          ; $4188: $13
	inc  [hl]                                        ; $4189: $34
	ld   h, c                                        ; $418a: $61
	xor  l                                           ; $418b: $ad
	and  a                                           ; $418c: $a7
	sbc  $17                                         ; $418d: $de $17
	adc  $a6                                         ; $418f: $ce $a6
	rst  $30                                         ; $4191: $f7
	inc  de                                          ; $4192: $13
	inc  [hl]                                        ; $4193: $34
	sub  h                                           ; $4194: $94
	ld   l, [hl]                                     ; $4195: $6e
	jp   c, $fc57                                    ; $4196: $da $57 $fc

	ld   a, [de]                                     ; $4199: $1a
	ld   a, [$1c61]                                  ; $419a: $fa $61 $1c
	ld   h, c                                        ; $419d: $61
	inc  a                                           ; $419e: $3c
	db   $e4                                         ; $419f: $e4
	ld   e, a                                        ; $41a0: $5f
	reti                                             ; $41a1: $d9


	ld   [hl], d                                     ; $41a2: $72
	rst  $38                                         ; $41a3: $ff
	ld   h, [hl]                                     ; $41a4: $66
	dec  [hl]                                        ; $41a5: $35
	ld   h, [hl]                                     ; $41a6: $66
	jr   c, jr_0dc_4130                              ; $41a7: $38 $87

	adc  b                                           ; $41a9: $88
	xor  e                                           ; $41aa: $ab
	or   a                                           ; $41ab: $b7
	cp   e                                           ; $41ac: $bb
	sbc  l                                           ; $41ad: $9d
	add  l                                           ; $41ae: $85
	ld   h, $a2                                      ; $41af: $26 $a2
	ld   e, d                                        ; $41b1: $5a
	ld   e, d                                        ; $41b2: $5a
	or   d                                           ; $41b3: $b2
	sbc  $69                                         ; $41b4: $de $69
	ld   a, a                                        ; $41b6: $7f
	pop  de                                          ; $41b7: $d1
	add  l                                           ; $41b8: $85
	ld   a, c                                        ; $41b9: $79

Jump_0dc_41ba:
	add  hl, de                                      ; $41ba: $19
	or   l                                           ; $41bb: $b5
	and  h                                           ; $41bc: $a4
	ld   e, e                                        ; $41bd: $5b
	sub  a                                           ; $41be: $97

Jump_0dc_41bf:
	xor  e                                           ; $41bf: $ab
	db   $db                                         ; $41c0: $db
	ld   e, b                                        ; $41c1: $58
	sbc  b                                           ; $41c2: $98
	inc  [hl]                                        ; $41c3: $34
	or   a                                           ; $41c4: $b7
	adc  c                                           ; $41c5: $89
	ld   e, c                                        ; $41c6: $59
	ld   [hl], a                                     ; $41c7: $77
	ld   a, d                                        ; $41c8: $7a
	and  a                                           ; $41c9: $a7
	ret                                              ; $41ca: $c9


	adc  b                                           ; $41cb: $88
	ld   a, c                                        ; $41cc: $79
	ld   b, [hl]                                     ; $41cd: $46
	ld   l, b                                        ; $41ce: $68
	adc  b                                           ; $41cf: $88
	ld   [hl], l                                     ; $41d0: $75
	or   h                                           ; $41d1: $b4
	sbc  e                                           ; $41d2: $9b
	ld   l, e                                        ; $41d3: $6b
	ld   a, d                                        ; $41d4: $7a
	halt                                             ; $41d5: $76
	or   l                                           ; $41d6: $b5
	adc  d                                           ; $41d7: $8a
	ld   e, h                                        ; $41d8: $5c
	ld   d, a                                        ; $41d9: $57
	pop  hl                                          ; $41da: $e1
	sbc  c                                           ; $41db: $99
	ld   e, d                                        ; $41dc: $5a
	sbc  c                                           ; $41dd: $99
	ld   l, l                                        ; $41de: $6d
	ld   h, a                                        ; $41df: $67
	add  a                                           ; $41e0: $87
	sub  [hl]                                        ; $41e1: $96
	call nz, Call_0dc_6bb9                           ; $41e2: $c4 $b9 $6b
	ld   a, d                                        ; $41e5: $7a
	ld   e, e                                        ; $41e6: $5b
	ld   a, d                                        ; $41e7: $7a
	sub  a                                           ; $41e8: $97
	and  a                                           ; $41e9: $a7
	and  [hl]                                        ; $41ea: $a6

Call_0dc_41eb:
	sbc  c                                           ; $41eb: $99
	adc  b                                           ; $41ec: $88
	sbc  b                                           ; $41ed: $98
	sub  [hl]                                        ; $41ee: $96
	adc  c                                           ; $41ef: $89
	ld   l, h                                        ; $41f0: $6c
	ld   a, d                                        ; $41f1: $7a
	xor  c                                           ; $41f2: $a9
	ld   a, c                                        ; $41f3: $79
	adc  b                                           ; $41f4: $88
	sub  [hl]                                        ; $41f5: $96
	or   a                                           ; $41f6: $b7
	ld   a, c                                        ; $41f7: $79
	ld   a, c                                        ; $41f8: $79
	add  a                                           ; $41f9: $87
	sbc  b                                           ; $41fa: $98
	sub  a                                           ; $41fb: $97
	and  a                                           ; $41fc: $a7
	ld   a, d                                        ; $41fd: $7a
	ld   a, c                                        ; $41fe: $79
	ld   a, e                                        ; $41ff: $7b
	ld   c, d                                        ; $4200: $4a
	sub  [hl]                                        ; $4201: $96
	sub  a                                           ; $4202: $97
	sub  l                                           ; $4203: $95
	and  [hl]                                        ; $4204: $a6
	add  a                                           ; $4205: $87
	and  a                                           ; $4206: $a7
	adc  h                                           ; $4207: $8c
	ld   e, c                                        ; $4208: $59
	ld   a, c                                        ; $4209: $79
	ld   [hl], a                                     ; $420a: $77
	adc  d                                           ; $420b: $8a
	ld   l, b                                        ; $420c: $68
	add  a                                           ; $420d: $87
	or   h                                           ; $420e: $b4
	xor  b                                           ; $420f: $a8
	ld   a, d                                        ; $4210: $7a
	ld   e, d                                        ; $4211: $5a
	sub  [hl]                                        ; $4212: $96
	sbc  c                                           ; $4213: $99

Jump_0dc_4214:
	ld   [hl], a                                     ; $4214: $77
	and  [hl]                                        ; $4215: $a6
	sub  a                                           ; $4216: $97
	adc  b                                           ; $4217: $88
	add  a                                           ; $4218: $87
	adc  c                                           ; $4219: $89
	ld   l, d                                        ; $421a: $6a
	ld   a, b                                        ; $421b: $78
	ld   a, d                                        ; $421c: $7a
	ld   e, c                                        ; $421d: $59
	add  [hl]                                        ; $421e: $86
	and  a                                           ; $421f: $a7
	sbc  b                                           ; $4220: $98
	sub  a                                           ; $4221: $97
	and  l                                           ; $4222: $a5
	xor  b                                           ; $4223: $a8
	ld   a, b                                        ; $4224: $78
	ld   l, d                                        ; $4225: $6a
	ld   a, c                                        ; $4226: $79
	ld   a, c                                        ; $4227: $79
	adc  c                                           ; $4228: $89
	ld   l, c                                        ; $4229: $69
	adc  b                                           ; $422a: $88
	add  [hl]                                        ; $422b: $86
	sub  a                                           ; $422c: $97
	sub  a                                           ; $422d: $97
	sbc  c                                           ; $422e: $99
	ld   a, b                                        ; $422f: $78
	ld   [hl], a                                     ; $4230: $77
	adc  b                                           ; $4231: $88
	sbc  b                                           ; $4232: $98
	ld   a, b                                        ; $4233: $78
	ld   a, b                                        ; $4234: $78
	ld   [hl], a                                     ; $4235: $77
	ld   a, b                                        ; $4236: $78
	ld   a, b                                        ; $4237: $78
	adc  c                                           ; $4238: $89
	ld   [hl], a                                     ; $4239: $77
	add  a                                           ; $423a: $87
	add  [hl]                                        ; $423b: $86
	sub  a                                           ; $423c: $97
	ld   [hl], a                                     ; $423d: $77
	adc  c                                           ; $423e: $89
	ld   a, b                                        ; $423f: $78
	add  a                                           ; $4240: $87
	adc  b                                           ; $4241: $88
	adc  b                                           ; $4242: $88
	adc  b                                           ; $4243: $88
	sub  a                                           ; $4244: $97
	add  a                                           ; $4245: $87
	ld   a, d                                        ; $4246: $7a
	ld   a, b                                        ; $4247: $78
	adc  b                                           ; $4248: $88
	add  a                                           ; $4249: $87
	and  [hl]                                        ; $424a: $a6
	and  a                                           ; $424b: $a7
	ld   a, c                                        ; $424c: $79
	ld   a, b                                        ; $424d: $78
	adc  b                                           ; $424e: $88
	ld   a, c                                        ; $424f: $79
	ld   a, c                                        ; $4250: $79
	adc  b                                           ; $4251: $88

Jump_0dc_4252:
	ld   a, b                                        ; $4252: $78
	ld   a, b                                        ; $4253: $78
	add  [hl]                                        ; $4254: $86

Jump_0dc_4255:
	sub  a                                           ; $4255: $97
	sub  [hl]                                        ; $4256: $96
	sub  a                                           ; $4257: $97
	adc  b                                           ; $4258: $88
	ld   a, b                                        ; $4259: $78
	ld   a, d                                        ; $425a: $7a
	ld   l, c                                        ; $425b: $69
	ld   a, b                                        ; $425c: $78
	add  a                                           ; $425d: $87
	sub  a                                           ; $425e: $97
	add  a                                           ; $425f: $87
	adc  b                                           ; $4260: $88
	sub  a                                           ; $4261: $97
	sub  a                                           ; $4262: $97
	ld   a, c                                        ; $4263: $79
	ld   a, b                                        ; $4264: $78
	add  a                                           ; $4265: $87
	add  a                                           ; $4266: $87
	ld   a, c                                        ; $4267: $79
	ld   l, c                                        ; $4268: $69
	ld   a, b                                        ; $4269: $78
	sub  a                                           ; $426a: $97
	add  a                                           ; $426b: $87
	sub  a                                           ; $426c: $97
	sbc  b                                           ; $426d: $98
	sub  a                                           ; $426e: $97
	add  a                                           ; $426f: $87
	adc  c                                           ; $4270: $89
	ld   a, c                                        ; $4271: $79
	ld   l, d                                        ; $4272: $6a
	ld   a, b                                        ; $4273: $78
	adc  b                                           ; $4274: $88
	add  a                                           ; $4275: $87
	add  a                                           ; $4276: $87
	adc  c                                           ; $4277: $89
	ld   a, b                                        ; $4278: $78
	add  a                                           ; $4279: $87
	add  a                                           ; $427a: $87
	adc  b                                           ; $427b: $88
	ld   a, c                                        ; $427c: $79
	ld   a, c                                        ; $427d: $79
	ld   a, c                                        ; $427e: $79
	ld   a, c                                        ; $427f: $79
	add  a                                           ; $4280: $87
	sub  [hl]                                        ; $4281: $96
	and  a                                           ; $4282: $a7
	sub  a                                           ; $4283: $97
	ld   a, c                                        ; $4284: $79
	ld   a, b                                        ; $4285: $78
	adc  c                                           ; $4286: $89
	ld   a, c                                        ; $4287: $79
	ld   l, c                                        ; $4288: $69
	ld   a, b                                        ; $4289: $78
	add  a                                           ; $428a: $87
	sub  a                                           ; $428b: $97
	add  a                                           ; $428c: $87
	adc  b                                           ; $428d: $88
	ld   a, b                                        ; $428e: $78
	add  a                                           ; $428f: $87
	sub  a                                           ; $4290: $97
	sbc  b                                           ; $4291: $98
	adc  c                                           ; $4292: $89
	ld   a, c                                        ; $4293: $79
	ld   a, c                                        ; $4294: $79
	ld   l, d                                        ; $4295: $6a
	ld   a, c                                        ; $4296: $79
	adc  b                                           ; $4297: $88
	add  a                                           ; $4298: $87
	sub  [hl]                                        ; $4299: $96
	and  [hl]                                        ; $429a: $a6
	sub  a                                           ; $429b: $97
	sbc  b                                           ; $429c: $98
	adc  b                                           ; $429d: $88
	sbc  c                                           ; $429e: $99
	ld   l, d                                        ; $429f: $6a
	ld   a, c                                        ; $42a0: $79
	ld   l, c                                        ; $42a1: $69
	ld   a, b                                        ; $42a2: $78
	add  a                                           ; $42a3: $87
	add  a                                           ; $42a4: $87
	add  a                                           ; $42a5: $87
	and  a                                           ; $42a6: $a7
	adc  b                                           ; $42a7: $88
	ld   a, c                                        ; $42a8: $79
	ld   a, b                                        ; $42a9: $78
	add  a                                           ; $42aa: $87
	sub  a                                           ; $42ab: $97
	adc  c                                           ; $42ac: $89
	ld   l, c                                        ; $42ad: $69
	add  a                                           ; $42ae: $87
	sbc  b                                           ; $42af: $98
	ld   a, c                                        ; $42b0: $79
	add  a                                           ; $42b1: $87
	add  a                                           ; $42b2: $87
	and  [hl]                                        ; $42b3: $a6
	and  a                                           ; $42b4: $a7
	ld   a, c                                        ; $42b5: $79
	ld   a, c                                        ; $42b6: $79
	ld   a, d                                        ; $42b7: $7a
	ld   l, c                                        ; $42b8: $69
	adc  b                                           ; $42b9: $88
	add  a                                           ; $42ba: $87
	sub  a                                           ; $42bb: $97
	sbc  b                                           ; $42bc: $98
	adc  b                                           ; $42bd: $88
	adc  b                                           ; $42be: $88
	sub  a                                           ; $42bf: $97
	adc  c                                           ; $42c0: $89
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	ld   a, c                                        ; $42c3: $79
	ld   a, b                                        ; $42c4: $78
	adc  b                                           ; $42c5: $88
	sbc  c                                           ; $42c6: $99
	ld   a, b                                        ; $42c7: $78
	add  a                                           ; $42c8: $87
	sub  a                                           ; $42c9: $97
	add  a                                           ; $42ca: $87
	sub  a                                           ; $42cb: $97
	ld   a, c                                        ; $42cc: $79
	ld   a, b                                        ; $42cd: $78
	adc  b                                           ; $42ce: $88
	add  a                                           ; $42cf: $87
	sub  a                                           ; $42d0: $97
	ld   a, c                                        ; $42d1: $79
	adc  b                                           ; $42d2: $88
	adc  b                                           ; $42d3: $88
	add  a                                           ; $42d4: $87
	adc  b                                           ; $42d5: $88
	adc  c                                           ; $42d6: $89
	sbc  c                                           ; $42d7: $99
	ld   a, c                                        ; $42d8: $79
	ld   a, c                                        ; $42d9: $79
	add  a                                           ; $42da: $87
	and  a                                           ; $42db: $a7
	sbc  b                                           ; $42dc: $98
	ld   a, b                                        ; $42dd: $78
	ld   a, b                                        ; $42de: $78
	adc  c                                           ; $42df: $89
	ld   a, b                                        ; $42e0: $78
	adc  b                                           ; $42e1: $88
	ld   a, b                                        ; $42e2: $78
	adc  c                                           ; $42e3: $89
	adc  b                                           ; $42e4: $88
	adc  b                                           ; $42e5: $88
	ld   a, b                                        ; $42e6: $78
	sub  a                                           ; $42e7: $97
	sub  a                                           ; $42e8: $97
	adc  c                                           ; $42e9: $89
	ld   a, b                                        ; $42ea: $78
	sbc  b                                           ; $42eb: $98
	ld   a, c                                        ; $42ec: $79
	ld   a, b                                        ; $42ed: $78
	ld   [hl], a                                     ; $42ee: $77
	adc  c                                           ; $42ef: $89
	adc  b                                           ; $42f0: $88
	adc  b                                           ; $42f1: $88
	ld   a, b                                        ; $42f2: $78
	add  a                                           ; $42f3: $87
	sub  a                                           ; $42f4: $97
	sub  a                                           ; $42f5: $97
	adc  b                                           ; $42f6: $88
	ld   a, b                                        ; $42f7: $78
	add  a                                           ; $42f8: $87
	adc  c                                           ; $42f9: $89
	ld   a, c                                        ; $42fa: $79
	ld   a, c                                        ; $42fb: $79
	adc  c                                           ; $42fc: $89
	ld   a, c                                        ; $42fd: $79
	add  a                                           ; $42fe: $87
	sub  a                                           ; $42ff: $97
	and  a                                           ; $4300: $a7
	sub  a                                           ; $4301: $97
	sbc  b                                           ; $4302: $98
	adc  b                                           ; $4303: $88
	adc  b                                           ; $4304: $88
	ld   a, c                                        ; $4305: $79
	ld   a, c                                        ; $4306: $79
	ld   [hl], a                                     ; $4307: $77
	sbc  b                                           ; $4308: $98
	ld   a, c                                        ; $4309: $79
	sub  a                                           ; $430a: $97
	sub  a                                           ; $430b: $97
	adc  b                                           ; $430c: $88
	adc  b                                           ; $430d: $88
	adc  c                                           ; $430e: $89
	ld   a, c                                        ; $430f: $79
	ld   a, b                                        ; $4310: $78
	ld   a, c                                        ; $4311: $79
	ld   a, b                                        ; $4312: $78
	sub  a                                           ; $4313: $97
	sub  a                                           ; $4314: $97
	sbc  b                                           ; $4315: $98
	sbc  b                                           ; $4316: $98
	adc  c                                           ; $4317: $89
	adc  b                                           ; $4318: $88
	adc  c                                           ; $4319: $89
	adc  b                                           ; $431a: $88
	adc  b                                           ; $431b: $88
	adc  b                                           ; $431c: $88
	adc  c                                           ; $431d: $89
	adc  b                                           ; $431e: $88
	adc  b                                           ; $431f: $88
	ld   a, b                                        ; $4320: $78
	sub  a                                           ; $4321: $97
	adc  b                                           ; $4322: $88
	adc  b                                           ; $4323: $88
	sbc  b                                           ; $4324: $98
	adc  b                                           ; $4325: $88
	adc  b                                           ; $4326: $88
	adc  b                                           ; $4327: $88
	ld   a, b                                        ; $4328: $78
	ld   a, b                                        ; $4329: $78
	sub  a                                           ; $432a: $97
	adc  b                                           ; $432b: $88
	sbc  b                                           ; $432c: $98
	sbc  b                                           ; $432d: $98
	sub  a                                           ; $432e: $97
	adc  c                                           ; $432f: $89
	ld   a, c                                        ; $4330: $79
	adc  b                                           ; $4331: $88
	adc  c                                           ; $4332: $89
	adc  b                                           ; $4333: $88
	adc  b                                           ; $4334: $88
	adc  b                                           ; $4335: $88
	sbc  b                                           ; $4336: $98
	adc  b                                           ; $4337: $88
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	adc  b                                           ; $433b: $88
	ld   a, b                                        ; $433c: $78
	ld   a, c                                        ; $433d: $79
	adc  b                                           ; $433e: $88
	sub  a                                           ; $433f: $97
	add  a                                           ; $4340: $87
	sub  a                                           ; $4341: $97
	adc  b                                           ; $4342: $88
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	adc  c                                           ; $4345: $89
	ld   a, c                                        ; $4346: $79
	ld   a, c                                        ; $4347: $79
	adc  b                                           ; $4348: $88
	add  a                                           ; $4349: $87
	sub  a                                           ; $434a: $97
	sub  a                                           ; $434b: $97
	adc  c                                           ; $434c: $89
	adc  b                                           ; $434d: $88
	adc  c                                           ; $434e: $89
	ld   a, b                                        ; $434f: $78
	ld   a, b                                        ; $4350: $78
	add  a                                           ; $4351: $87
	sub  a                                           ; $4352: $97
	sbc  b                                           ; $4353: $98
	adc  c                                           ; $4354: $89
	add  a                                           ; $4355: $87
	adc  b                                           ; $4356: $88
	adc  c                                           ; $4357: $89
	adc  b                                           ; $4358: $88
	adc  b                                           ; $4359: $88
	adc  c                                           ; $435a: $89
	adc  b                                           ; $435b: $88
	adc  b                                           ; $435c: $88
	adc  b                                           ; $435d: $88
	adc  b                                           ; $435e: $88
	adc  b                                           ; $435f: $88
	adc  b                                           ; $4360: $88
	sbc  b                                           ; $4361: $98
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
	sbc  b                                           ; $4372: $98
	sbc  b                                           ; $4373: $98
	adc  c                                           ; $4374: $89
	adc  c                                           ; $4375: $89
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
	sbc  b                                           ; $4385: $98
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	adc  b                                           ; $438a: $88
	adc  b                                           ; $438b: $88
	adc  b                                           ; $438c: $88
	adc  b                                           ; $438d: $88
	adc  b                                           ; $438e: $88
	sbc  b                                           ; $438f: $98
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

Call_0dc_43a6:
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
	sbc  b                                           ; $43c3: $98
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
	adc  c                                           ; $4453: $89
	adc  b                                           ; $4454: $88
	adc  b                                           ; $4455: $88
	adc  b                                           ; $4456: $88
	adc  b                                           ; $4457: $88
	adc  b                                           ; $4458: $88
	adc  b                                           ; $4459: $88
	adc  b                                           ; $445a: $88
	adc  b                                           ; $445b: $88
	adc  b                                           ; $445c: $88
	sbc  c                                           ; $445d: $99
	adc  b                                           ; $445e: $88
	adc  b                                           ; $445f: $88
	adc  b                                           ; $4460: $88
	adc  b                                           ; $4461: $88
	adc  b                                           ; $4462: $88
	adc  b                                           ; $4463: $88
	sbc  c                                           ; $4464: $99
	adc  b                                           ; $4465: $88
	adc  b                                           ; $4466: $88
	adc  b                                           ; $4467: $88
	adc  b                                           ; $4468: $88
	adc  b                                           ; $4469: $88
	add  a                                           ; $446a: $87
	adc  b                                           ; $446b: $88
	adc  b                                           ; $446c: $88
	adc  b                                           ; $446d: $88
	adc  c                                           ; $446e: $89
	adc  b                                           ; $446f: $88
	adc  b                                           ; $4470: $88
	adc  b                                           ; $4471: $88
	adc  b                                           ; $4472: $88
	adc  b                                           ; $4473: $88
	adc  b                                           ; $4474: $88
	adc  b                                           ; $4475: $88
	adc  b                                           ; $4476: $88
	adc  b                                           ; $4477: $88
	sbc  b                                           ; $4478: $98
	sbc  b                                           ; $4479: $98
	adc  b                                           ; $447a: $88
	adc  b                                           ; $447b: $88
	adc  b                                           ; $447c: $88
	adc  b                                           ; $447d: $88
	adc  b                                           ; $447e: $88
	adc  b                                           ; $447f: $88
	adc  b                                           ; $4480: $88
	adc  c                                           ; $4481: $89
	xor  b                                           ; $4482: $a8
	adc  b                                           ; $4483: $88
	ld   a, b                                        ; $4484: $78
	add  a                                           ; $4485: $87
	cp   d                                           ; $4486: $ba
	ld   l, b                                        ; $4487: $68
	add  a                                           ; $4488: $87
	ld   [hl], a                                     ; $4489: $77
	ld   a, b                                        ; $448a: $78
	ld   a, b                                        ; $448b: $78
	add  a                                           ; $448c: $87
	adc  b                                           ; $448d: $88
	sbc  d                                           ; $448e: $9a
	sbc  b                                           ; $448f: $98
	sbc  b                                           ; $4490: $98
	ld   a, b                                        ; $4491: $78
	ld   a, c                                        ; $4492: $79
	add  a                                           ; $4493: $87
	ld   [hl], a                                     ; $4494: $77
	adc  c                                           ; $4495: $89
	bit  7, c                                        ; $4496: $cb $79
	xor  c                                           ; $4498: $a9
	add  a                                           ; $4499: $87
	adc  d                                           ; $449a: $8a
	ld   [hl], l                                     ; $449b: $75
	ld   a, c                                        ; $449c: $79
	halt                                             ; $449d: $76
	adc  h                                           ; $449e: $8c
	xor  c                                           ; $449f: $a9
	ld   [hl], a                                     ; $44a0: $77
	ld   [hl], a                                     ; $44a1: $77
	adc  c                                           ; $44a2: $89
	sbc  b                                           ; $44a3: $98
	halt                                             ; $44a4: $76
	ld   h, a                                        ; $44a5: $67
	bit  7, d                                        ; $44a6: $cb $7a
	cp   b                                           ; $44a8: $b8
	ld   a, c                                        ; $44a9: $79
	adc  b                                           ; $44aa: $88
	ld   [hl], l                                     ; $44ab: $75
	ld   a, d                                        ; $44ac: $7a
	xor  c                                           ; $44ad: $a9
	sub  l                                           ; $44ae: $95
	adc  b                                           ; $44af: $88
	ld   h, l                                        ; $44b0: $65
	halt                                             ; $44b1: $76
	ld   d, a                                        ; $44b2: $57
	ld   h, [hl]                                     ; $44b3: $66
	ld   [hl], a                                     ; $44b4: $77
	ld   a, c                                        ; $44b5: $79
	adc  c                                           ; $44b6: $89
	sbc  b                                           ; $44b7: $98
	add  [hl]                                        ; $44b8: $86
	adc  b                                           ; $44b9: $88
	ld   h, [hl]                                     ; $44ba: $66
	ld   [hl], a                                     ; $44bb: $77
	ld   a, c                                        ; $44bc: $79
	ld   [hl], a                                     ; $44bd: $77
	ld   a, b                                        ; $44be: $78
	ld   a, b                                        ; $44bf: $78
	halt                                             ; $44c0: $76
	sub  a                                           ; $44c1: $97
	ld   h, [hl]                                     ; $44c2: $66
	add  a                                           ; $44c3: $87
	ld   [hl], a                                     ; $44c4: $77
	ld   h, [hl]                                     ; $44c5: $66
	adc  c                                           ; $44c6: $89
	ld   h, a                                        ; $44c7: $67
	xor  c                                           ; $44c8: $a9
	ld   h, [hl]                                     ; $44c9: $66
	adc  e                                           ; $44ca: $8b
	and  a                                           ; $44cb: $a7
	ld   l, c                                        ; $44cc: $69
	sbc  b                                           ; $44cd: $98
	ld   a, c                                        ; $44ce: $79
	adc  c                                           ; $44cf: $89
	ld   [hl], h                                     ; $44d0: $74
	ld   b, a                                        ; $44d1: $47
	or   a                                           ; $44d2: $b7
	inc  h                                           ; $44d3: $24
	ld   l, b                                        ; $44d4: $68
	sub  l                                           ; $44d5: $95
	ld   d, a                                        ; $44d6: $57
	xor  d                                           ; $44d7: $aa
	sbc  c                                           ; $44d8: $99
	xor  d                                           ; $44d9: $aa
	xor  h                                           ; $44da: $ac
	xor  e                                           ; $44db: $ab
	jp   z, $9778                                    ; $44dc: $ca $78 $97

	adc  c                                           ; $44df: $89
	ld   d, l                                        ; $44e0: $55
	add  d                                           ; $44e1: $82
	dec  d                                           ; $44e2: $15
	ld   d, d                                        ; $44e3: $52
	inc  de                                          ; $44e4: $13
	ld   hl, $c849                                   ; $44e5: $21 $49 $c8
	rst  JumpTable                                         ; $44e8: $df
	db   $ed                                         ; $44e9: $ed
	rst  $38                                         ; $44ea: $ff
	db   $dd                                         ; $44eb: $dd
	cp   $cb                                         ; $44ec: $fe $cb
	ld   [hl], h                                     ; $44ee: $74
	ld   d, c                                        ; $44ef: $51
	ld   de, $1111                                   ; $44f0: $11 $11 $11
	dec  d                                           ; $44f3: $15
	call c, $ffcf                                    ; $44f4: $dc $cf $ff
	rst  $38                                         ; $44f7: $ff
	xor  a                                           ; $44f8: $af
	ld   hl, sp-$61                                  ; $44f9: $f8 $9f
	res  2, d                                        ; $44fb: $cb $92
	inc  d                                           ; $44fd: $14
	ld   sp, $1111                                   ; $44fe: $31 $11 $11
	inc  de                                          ; $4501: $13
	ld   a, l                                        ; $4502: $7d
	rst  $38                                         ; $4503: $ff
	rst  $38                                         ; $4504: $ff
	rst  $38                                         ; $4505: $ff
	db   $fc                                         ; $4506: $fc
	call $d8df                                       ; $4507: $cd $df $d8
	ld   d, d                                        ; $450a: $52
	ld   de, $1111                                   ; $450b: $11 $11 $11
	ld   de, $4e4a                                   ; $450e: $11 $4a $4e
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	db   $fc                                         ; $4513: $fc
	sbc  $6b                                         ; $4514: $de $6b
	db   $fd                                         ; $4516: $fd
	adc  d                                           ; $4517: $8a
	ld   h, d                                        ; $4518: $62
	ld   hl, $1111                                   ; $4519: $21 $11 $11
	ld   de, $9c38                                   ; $451c: $11 $38 $9c
	rst  $38                                         ; $451f: $ff
	rst  $38                                         ; $4520: $ff
	db   $fc                                         ; $4521: $fc
	xor  d                                           ; $4522: $aa
	cp   a                                           ; $4523: $bf
	db   $fd                                         ; $4524: $fd
	xor  d                                           ; $4525: $aa
	ld   [hl], c                                     ; $4526: $71
	ld   de, $1111                                   ; $4527: $11 $11 $11
	ld   de, $8f47                                   ; $452a: $11 $47 $8f
	rst  $38                                         ; $452d: $ff
	rst  $38                                         ; $452e: $ff
	ld   sp, hl                                      ; $452f: $f9
	db   $db                                         ; $4530: $db
	ld   a, d                                        ; $4531: $7a
	rst  $38                                         ; $4532: $ff
	reti                                             ; $4533: $d9


	ld   h, e                                        ; $4534: $63
	ld   sp, $1111                                   ; $4535: $31 $11 $11
	ld   de, $af17                                   ; $4538: $11 $17 $af
	rst  $38                                         ; $453b: $ff
	rst  $38                                         ; $453c: $ff
	ldh  a, [c]                                      ; $453d: $f2
	ld   a, [hl]                                     ; $453e: $7e
	ld   a, h                                        ; $453f: $7c
	rst  $38                                         ; $4540: $ff
	ret                                              ; $4541: $c9


	ld   [hl], d                                     ; $4542: $72
	inc  [hl]                                        ; $4543: $34
	ld   hl, $1111                                   ; $4544: $21 $11 $11
	inc  d                                           ; $4547: $14
	sbc  d                                           ; $4548: $9a
	rst  $28                                         ; $4549: $ef
	rst  $38                                         ; $454a: $ff
	ld   a, [$7b6a]                                  ; $454b: $fa $6a $7b
	rst  $28                                         ; $454e: $ef
	db   $ed                                         ; $454f: $ed
	and  e                                           ; $4550: $a3
	inc  [hl]                                        ; $4551: $34
	ld   h, e                                        ; $4552: $63
	ld   de, $1111                                   ; $4553: $11 $11 $11
	ld   b, a                                        ; $4556: $47
	rst  JumpTable                                         ; $4557: $df
	rst  $38                                         ; $4558: $ff
	db   $fd                                         ; $4559: $fd
	xor  b                                           ; $455a: $a8
	add  a                                           ; $455b: $87
	adc  $ff                                         ; $455c: $ce $ff
	xor  c                                           ; $455e: $a9
	ld   [hl], h                                     ; $455f: $74
	dec  [hl]                                        ; $4560: $35
	ld   d, d                                        ; $4561: $52
	ld   hl, $1611                                   ; $4562: $21 $11 $16
	rst  JumpTable                                         ; $4565: $df
	rst  $38                                         ; $4566: $ff
	rst  $38                                         ; $4567: $ff
	cp   $91                                         ; $4568: $fe $91
	ld   c, a                                        ; $456a: $4f
	rst  $38                                         ; $456b: $ff
	add  sp, $46                                     ; $456c: $e8 $46
	sub  [hl]                                        ; $456e: $96
	ld   d, l                                        ; $456f: $55
	ld   de, $1111                                   ; $4570: $11 $11 $11
	inc  l                                           ; $4573: $2c
	cp   a                                           ; $4574: $bf
	rst  $28                                         ; $4575: $ef
	rst  $38                                         ; $4576: $ff
	ld   [hl], c                                     ; $4577: $71
	sbc  e                                           ; $4578: $9b
	rst  JumpTable                                         ; $4579: $df
	sbc  e                                           ; $457a: $9b
	sbc  $94                                         ; $457b: $de $94
	ld   h, l                                        ; $457d: $65
	add  a                                           ; $457e: $87
	ld   hl, $1111                                   ; $457f: $21 $11 $11
	ld   c, h                                        ; $4582: $4c
	rst  $38                                         ; $4583: $ff
	rst  $38                                         ; $4584: $ff
	rst  $38                                         ; $4585: $ff
	add  h                                           ; $4586: $84

Call_0dc_4587:
	ld   h, a                                        ; $4587: $67
	cp   a                                           ; $4588: $bf
	ei                                               ; $4589: $fb
	ld   a, d                                        ; $458a: $7a
	ld   [hl], l                                     ; $458b: $75
	add  a                                           ; $458c: $87
	ld   h, h                                        ; $458d: $64
	ld   b, c                                        ; $458e: $41
	ld   de, $de11                                   ; $458f: $11 $11 $de
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4592: $cf
	rst  $38                                         ; $4593: $ff
	rst  $38                                         ; $4594: $ff
	ld   b, c                                        ; $4595: $41
	sbc  a                                           ; $4596: $9f

Call_0dc_4597:
	xor  a                                           ; $4597: $af
	or   $9c                                         ; $4598: $f6 $9c
	halt                                             ; $459a: $76
	ld   a, e                                        ; $459b: $7b
	ld   h, c                                        ; $459c: $61
	ld   de, $1111                                   ; $459d: $11 $11 $11
	rst  $28                                         ; $45a0: $ef
	rst  $38                                         ; $45a1: $ff
	rst  $38                                         ; $45a2: $ff
	db   $fc                                         ; $45a3: $fc
	ld   hl, $ff9f                                   ; $45a4: $21 $9f $ff
	ret  z                                           ; $45a7: $c8

	ld   l, d                                        ; $45a8: $6a
	cp   c                                           ; $45a9: $b9
	sbc  c                                           ; $45aa: $99
	ld   h, c                                        ; $45ab: $61
	ld   de, $1111                                   ; $45ac: $11 $11 $11
	rst  $38                                         ; $45af: $ff
	rst  $38                                         ; $45b0: $ff
	rst  $38                                         ; $45b1: $ff
	rst  $38                                         ; $45b2: $ff
	ld   h, d                                        ; $45b3: $62
	ld   a, d                                        ; $45b4: $7a
	rst  $38                                         ; $45b5: $ff
	jp   z, $aa76                                    ; $45b6: $ca $76 $aa

	ld   [hl], a                                     ; $45b9: $77
	ld   [hl], d                                     ; $45ba: $72
	ld   de, $1111                                   ; $45bb: $11 $11 $11
	rst  $38                                         ; $45be: $ff
	rst  $38                                         ; $45bf: $ff
	rst  $38                                         ; $45c0: $ff
	rst  $38                                         ; $45c1: $ff
	add  c                                           ; $45c2: $81
	ld   a, [de]                                     ; $45c3: $1a
	rst  $38                                         ; $45c4: $ff
	and  $47                                         ; $45c5: $e6 $47
	cp   d                                           ; $45c7: $ba
	xor  d                                           ; $45c8: $aa
	ld   [hl], d                                     ; $45c9: $72
	ld   de, $1111                                   ; $45ca: $11 $11 $11
	xor  a                                           ; $45cd: $af
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	db   $fd                                         ; $45d0: $fd
	add  c                                           ; $45d1: $81
	ld   l, d                                        ; $45d2: $6a
	rst  $28                                         ; $45d3: $ef
	or   l                                           ; $45d4: $b5
	ld   e, b                                        ; $45d5: $58
	sbc  $86                                         ; $45d6: $de $86
	halt                                             ; $45d8: $76
	ld   hl, $1111                                   ; $45d9: $21 $11 $11
	xor  a                                           ; $45dc: $af
	rst  $38                                         ; $45dd: $ff
	rst  $38                                         ; $45de: $ff
	db   $fc                                         ; $45df: $fc
	add  e                                           ; $45e0: $83
	ld   e, d                                        ; $45e1: $5a
	rst  JumpTable                                         ; $45e2: $df
	xor  d                                           ; $45e3: $aa
	ld   a, b                                        ; $45e4: $78
	cp   d                                           ; $45e5: $ba
	cp   b                                           ; $45e6: $b8
	adc  b                                           ; $45e7: $88
	ld   b, c                                        ; $45e8: $41
	ld   de, $1a11                                   ; $45e9: $11 $11 $1a
	rst  $38                                         ; $45ec: $ff
	rst  $38                                         ; $45ed: $ff
	rst  $38                                         ; $45ee: $ff
	rst  $20                                         ; $45ef: $e7
	ld   d, $cc                                      ; $45f0: $16 $cc
	db   $db                                         ; $45f2: $db
	halt                                             ; $45f3: $76
	xor  l                                           ; $45f4: $ad
	sbc  b                                           ; $45f5: $98
	bit  4, h                                        ; $45f6: $cb $64
	ld   de, $1311                                   ; $45f8: $11 $11 $13
	rst  $38                                         ; $45fb: $ff
	rst  $38                                         ; $45fc: $ff
	rst  $28                                         ; $45fd: $ef
	rst  $38                                         ; $45fe: $ff
	ld   h, d                                        ; $45ff: $62
	ld   b, [hl]                                     ; $4600: $46
	rst  $38                                         ; $4601: $ff
	or   $38                                         ; $4602: $f6 $38
	cp   a                                           ; $4604: $bf
	ld   [$2163], a                                  ; $4605: $ea $63 $21
	ld   de, $2e11                                   ; $4608: $11 $11 $2e
	rst  $38                                         ; $460b: $ff
	cp   $fe                                         ; $460c: $fe $fe
	bit  0, e                                        ; $460e: $cb $43
	sbc  l                                           ; $4610: $9d
	call z, Call_0dc_7ea7                            ; $4611: $cc $a7 $7e
	db   $fd                                         ; $4614: $fd
	or   a                                           ; $4615: $b7
	ld   [hl+], a                                    ; $4616: $22
	ld   de, $1111                                   ; $4617: $11 $11 $11
	rst  $28                                         ; $461a: $ef
	rst  $38                                         ; $461b: $ff
	rst  JumpTable                                         ; $461c: $df
	cp   $92                                         ; $461d: $fe $92
	rla                                              ; $461f: $17
	rst  $38                                         ; $4620: $ff
	ret  z                                           ; $4621: $c8

	ld   c, c                                        ; $4622: $49
	rst  $28                                         ; $4623: $ef
	ld   [$4174], a                                  ; $4624: $ea $74 $41
	ld   de, $1611                                   ; $4627: $11 $11 $16
	rst  $38                                         ; $462a: $ff
	rst  $38                                         ; $462b: $ff
	db   $fc                                         ; $462c: $fc
	db   $fd                                         ; $462d: $fd
	add  l                                           ; $462e: $85
	inc  sp                                          ; $462f: $33
	ld   a, a                                        ; $4630: $7f
	cp   $b9                                         ; $4631: $fe $b9
	sbc  e                                           ; $4633: $9b
	db   $db                                         ; $4634: $db
	sub  h                                           ; $4635: $94
	ld   de, $1111                                   ; $4636: $11 $11 $11
	dec  e                                           ; $4639: $1d
	rst  $38                                         ; $463a: $ff
	rst  $38                                         ; $463b: $ff
	rst  $38                                         ; $463c: $ff
	push hl                                          ; $463d: $e5
	inc  h                                           ; $463e: $24
	ld   l, d                                        ; $463f: $6a
	cp   $78                                         ; $4640: $fe $78
	sbc  l                                           ; $4642: $9d
	rst  $28                                         ; $4643: $ef
	jp   hl                                          ; $4644: $e9


	ld   h, h                                        ; $4645: $64
	ld   de, $1111                                   ; $4646: $11 $11 $11
	ld   e, [hl]                                     ; $4649: $5e
	rst  JumpTable                                         ; $464a: $df
	rst  $38                                         ; $464b: $ff
	cp   $b7                                         ; $464c: $fe $b7
	ld   b, a                                        ; $464e: $47
	ld   c, b                                        ; $464f: $48
	db   $fc                                         ; $4650: $fc
	db   $dd                                         ; $4651: $dd
	cp   h                                           ; $4652: $bc
	rst  JumpTable                                         ; $4653: $df
	cp   d                                           ; $4654: $ba
	add  d                                           ; $4655: $82
	ld   de, $1111                                   ; $4656: $11 $11 $11
	dec  a                                           ; $4659: $3d
	rst  $38                                         ; $465a: $ff
	rst  $38                                         ; $465b: $ff
	ei                                               ; $465c: $fb
	ld   [hl], l                                     ; $465d: $75
	jr   @-$64                                       ; $465e: $18 $9a

	ld   [$cfde], a                                  ; $4660: $ea $de $cf
	db   $ed                                         ; $4663: $ed
	ret  z                                           ; $4664: $c8

	ld   d, c                                        ; $4665: $51
	ld   de, $1111                                   ; $4666: $11 $11 $11
	inc  e                                           ; $4669: $1c
	rst  $38                                         ; $466a: $ff
	rst  $38                                         ; $466b: $ff
	add  sp, -$66                                    ; $466c: $e8 $9a
	ld   d, [hl]                                     ; $466e: $56
	inc  hl                                          ; $466f: $23
	rst  JumpTable                                         ; $4670: $df
	rst  $38                                         ; $4671: $ff
	ld   [$ecae], a                                  ; $4672: $ea $ae $ec
	ld   h, c                                        ; $4675: $61
	ld   de, $1111                                   ; $4676: $11 $11 $11
	ld   d, $ff                                      ; $4679: $16 $ff
	rst  $38                                         ; $467b: $ff
	db   $fc                                         ; $467c: $fc
	ld   [hl], l                                     ; $467d: $75
	ld   b, h                                        ; $467e: $44
	add  l                                           ; $467f: $85
	xor  [hl]                                        ; $4680: $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4681: $cf
	rst  $38                                         ; $4682: $ff
	ld   [$a789], a                                  ; $4683: $ea $89 $a7
	ld   de, $1111                                   ; $4686: $11 $11 $11
	ld   de, $ef7b                                   ; $4689: $11 $7b $ef
	rst  $38                                         ; $468c: $ff
	rst  ToBoot                                         ; $468d: $c7
	ld   d, h                                        ; $468e: $54
	ld   c, b                                        ; $468f: $48
	ld   l, c                                        ; $4690: $69
	rst  $28                                         ; $4691: $ef
	rst  $38                                         ; $4692: $ff
	db   $db                                         ; $4693: $db
	adc  d                                           ; $4694: $8a
	cp   c                                           ; $4695: $b9
	ld   h, c                                        ; $4696: $61
	ld   de, $1111                                   ; $4697: $11 $11 $11
	dec  h                                           ; $469a: $25
	adc  e                                           ; $469b: $8b
	rst  $38                                         ; $469c: $ff
	rst  $38                                         ; $469d: $ff
	or   [hl]                                        ; $469e: $b6
	ld   d, e                                        ; $469f: $53
	ld   e, d                                        ; $46a0: $5a
	cp   [hl]                                        ; $46a1: $be
	db   $ed                                         ; $46a2: $ed
	cp   $ff                                         ; $46a3: $fe $ff
	reti                                             ; $46a5: $d9


	ld   d, d                                        ; $46a6: $52
	ld   de, $1111                                   ; $46a7: $11 $11 $11
	ld   de, $dd27                                   ; $46aa: $11 $27 $dd
	rst  $38                                         ; $46ad: $ff
	db   $fd                                         ; $46ae: $fd
	cp   b                                           ; $46af: $b8
	ld   h, l                                        ; $46b0: $65
	ld   h, [hl]                                     ; $46b1: $66
	sbc  a                                           ; $46b2: $9f
	rst  $38                                         ; $46b3: $ff
	cp   $da                                         ; $46b4: $fe $da
	sbc  b                                           ; $46b6: $98
	ld   h, [hl]                                     ; $46b7: $66
	ld   sp, $1111                                   ; $46b8: $31 $11 $11
	ld   de, $8c11                                   ; $46bb: $11 $11 $8c
	rst  $38                                         ; $46be: $ff
	db   $fd                                         ; $46bf: $fd
	and  [hl]                                        ; $46c0: $a6
	ld   [hl], a                                     ; $46c1: $77
	ld   a, b                                        ; $46c2: $78
	xor  l                                           ; $46c3: $ad
	rst  $38                                         ; $46c4: $ff
	cp   $b9                                         ; $46c5: $fe $b9
	add  a                                           ; $46c7: $87
	adc  b                                           ; $46c8: $88
	ld   d, h                                        ; $46c9: $54
	ld   hl, $1111                                   ; $46ca: $21 $11 $11
	ld   [de], a                                     ; $46cd: $12
	daa                                              ; $46ce: $27
	xor  l                                           ; $46cf: $ad
	rst  $38                                         ; $46d0: $ff
	db   $db                                         ; $46d1: $db
	ld   [hl], a                                     ; $46d2: $77
	ld   a, c                                        ; $46d3: $79
	call z, $deed                                    ; $46d4: $cc $ed $de
	call z, $97a9                                    ; $46d7: $cc $a9 $97
	add  a                                           ; $46da: $87
	ld   d, l                                        ; $46db: $55
	ld   hl, $1211                                   ; $46dc: $21 $11 $12
	ld   de, $bd38                                   ; $46df: $11 $38 $bd
	rst  $38                                         ; $46e2: $ff
	cp   c                                           ; $46e3: $b9
	adc  b                                           ; $46e4: $88
	adc  c                                           ; $46e5: $89
	call z, $ccde                                    ; $46e6: $cc $de $cc
	cp   d                                           ; $46e9: $ba
	sbc  c                                           ; $46ea: $99
	sbc  b                                           ; $46eb: $98
	adc  c                                           ; $46ec: $89
	halt                                             ; $46ed: $76
	ld   b, d                                        ; $46ee: $42
	ld   de, $3212                                   ; $46ef: $11 $12 $32
	dec  [hl]                                        ; $46f2: $35
	adc  h                                           ; $46f3: $8c
	sbc  $b8                                         ; $46f4: $de $b8
	sub  a                                           ; $46f6: $97
	adc  e                                           ; $46f7: $8b
	adc  $ed                                         ; $46f8: $ce $ed
	res  5, e                                        ; $46fa: $cb $ab
	sbc  e                                           ; $46fc: $9b
	sbc  b                                           ; $46fd: $98
	add  a                                           ; $46fe: $87
	ld   [hl], a                                     ; $46ff: $77
	ld   h, l                                        ; $4700: $65
	ld   b, e                                        ; $4701: $43
	inc  [hl]                                        ; $4702: $34
	ld   b, e                                        ; $4703: $43
	ld   [hl+], a                                    ; $4704: $22
	dec  [hl]                                        ; $4705: $35
	ld   a, c                                        ; $4706: $79
	xor  d                                           ; $4707: $aa
	sbc  c                                           ; $4708: $99
	sbc  c                                           ; $4709: $99
	xor  l                                           ; $470a: $ad
	sbc  $dc                                         ; $470b: $de $dc
	jp   z, $aaba                                    ; $470d: $ca $ba $aa

	sbc  b                                           ; $4710: $98
	adc  b                                           ; $4711: $88
	sbc  b                                           ; $4712: $98
	ld   [hl], a                                     ; $4713: $77
	ld   h, [hl]                                     ; $4714: $66
	ld   d, l                                        ; $4715: $55
	ld   b, e                                        ; $4716: $43
	ld   hl, $5734                                   ; $4717: $21 $34 $57
	ld   [hl], a                                     ; $471a: $77
	ld   a, b                                        ; $471b: $78
	sbc  c                                           ; $471c: $99
	xor  h                                           ; $471d: $ac
	cp   h                                           ; $471e: $bc
	call c, $cbcc                                    ; $471f: $dc $cc $cb
	cp   e                                           ; $4722: $bb
	xor  c                                           ; $4723: $a9
	sbc  c                                           ; $4724: $99
	adc  c                                           ; $4725: $89
	add  a                                           ; $4726: $87
	add  a                                           ; $4727: $87
	halt                                             ; $4728: $76
	ld   h, l                                        ; $4729: $65
	ld   b, e                                        ; $472a: $43
	inc  hl                                          ; $472b: $23
	inc  [hl]                                        ; $472c: $34
	ld   d, l                                        ; $472d: $55
	ld   d, l                                        ; $472e: $55
	ld   h, a                                        ; $472f: $67
	adc  c                                           ; $4730: $89
	sbc  d                                           ; $4731: $9a
	xor  h                                           ; $4732: $ac
	call z, $bbcb                                    ; $4733: $cc $cb $bb
	cp   e                                           ; $4736: $bb
	xor  c                                           ; $4737: $a9
	xor  d                                           ; $4738: $aa
	xor  c                                           ; $4739: $a9
	sbc  c                                           ; $473a: $99
	sbc  b                                           ; $473b: $98
	ld   a, b                                        ; $473c: $78
	halt                                             ; $473d: $76
	ld   h, l                                        ; $473e: $65
	ld   b, e                                        ; $473f: $43
	inc  hl                                          ; $4740: $23
	inc  [hl]                                        ; $4741: $34
	ld   b, l                                        ; $4742: $45

Jump_0dc_4743:
	ld   b, l                                        ; $4743: $45
	ld   d, [hl]                                     ; $4744: $56
	adc  b                                           ; $4745: $88
	xor  e                                           ; $4746: $ab
	xor  h                                           ; $4747: $ac
	call z, $cccc                                    ; $4748: $cc $cc $cc
	cp   d                                           ; $474b: $ba
	cp   d                                           ; $474c: $ba
	cp   e                                           ; $474d: $bb
	cp   d                                           ; $474e: $ba
	sbc  c                                           ; $474f: $99
	sbc  b                                           ; $4750: $98
	sbc  b                                           ; $4751: $98
	halt                                             ; $4752: $76
	ld   h, h                                        ; $4753: $64
	ld   b, h                                        ; $4754: $44
	inc  sp                                          ; $4755: $33
	inc  sp                                          ; $4756: $33
	inc  sp                                          ; $4757: $33
	ld   b, h                                        ; $4758: $44
	ld   d, l                                        ; $4759: $55
	ld   h, a                                        ; $475a: $67
	adc  c                                           ; $475b: $89
	xor  d                                           ; $475c: $aa
	cp   e                                           ; $475d: $bb
	call $cccc                                       ; $475e: $cd $cc $cc
	res  5, d                                        ; $4761: $cb $aa
	cp   e                                           ; $4763: $bb
	xor  d                                           ; $4764: $aa
	xor  c                                           ; $4765: $a9
	adc  c                                           ; $4766: $89
	add  a                                           ; $4767: $87
	ld   h, [hl]                                     ; $4768: $66
	ld   d, l                                        ; $4769: $55
	ld   b, h                                        ; $476a: $44
	inc  sp                                          ; $476b: $33
	inc  hl                                          ; $476c: $23
	inc  sp                                          ; $476d: $33
	ld   b, h                                        ; $476e: $44
	ld   b, h                                        ; $476f: $44
	ld   d, a                                        ; $4770: $57
	adc  c                                           ; $4771: $89
	cp   e                                           ; $4772: $bb
	set  1, h                                        ; $4773: $cb $cc
	call c, $cccc                                    ; $4775: $dc $cc $cc
	cp   d                                           ; $4778: $ba
	cp   d                                           ; $4779: $ba
	sbc  d                                           ; $477a: $9a
	xor  c                                           ; $477b: $a9
	sbc  c                                           ; $477c: $99
	ld   [hl], a                                     ; $477d: $77
	halt                                             ; $477e: $76
	ld   d, l                                        ; $477f: $55
	ld   b, h                                        ; $4780: $44
	inc  sp                                          ; $4781: $33
	ld   [hl+], a                                    ; $4782: $22
	inc  sp                                          ; $4783: $33
	inc  [hl]                                        ; $4784: $34
	ld   b, h                                        ; $4785: $44
	ld   d, [hl]                                     ; $4786: $56
	ld   a, c                                        ; $4787: $79

Jump_0dc_4788:
	sbc  e                                           ; $4788: $9b
	cp   h                                           ; $4789: $bc
	call $dddd                                       ; $478a: $cd $dd $dd
	db   $db                                         ; $478d: $db
	jp   z, $9aba                                    ; $478e: $ca $ba $9a

	sbc  c                                           ; $4791: $99
	adc  b                                           ; $4792: $88
	add  a                                           ; $4793: $87
	ld   [hl], a                                     ; $4794: $77
	halt                                             ; $4795: $76
	ld   h, l                                        ; $4796: $65
	ld   d, h                                        ; $4797: $54
	ld   b, h                                        ; $4798: $44
	inc  sp                                          ; $4799: $33
	ld   b, h                                        ; $479a: $44
	ld   b, l                                        ; $479b: $45
	ld   d, l                                        ; $479c: $55
	ld   d, l                                        ; $479d: $55
	ld   l, b                                        ; $479e: $68
	sbc  e                                           ; $479f: $9b
	cp   h                                           ; $47a0: $bc
	cp   e                                           ; $47a1: $bb
	call $cbdc                                       ; $47a2: $cd $dc $cb
	cp   d                                           ; $47a5: $ba
	xor  d                                           ; $47a6: $aa
	xor  d                                           ; $47a7: $aa
	xor  b                                           ; $47a8: $a8
	sbc  c                                           ; $47a9: $99
	adc  b                                           ; $47aa: $88
	add  a                                           ; $47ab: $87
	ld   [hl], a                                     ; $47ac: $77
	ld   h, [hl]                                     ; $47ad: $66
	ld   h, l                                        ; $47ae: $65
	ld   d, h                                        ; $47af: $54
	ld   b, e                                        ; $47b0: $43
	inc  sp                                          ; $47b1: $33
	ld   b, h                                        ; $47b2: $44
	ld   b, h                                        ; $47b3: $44
	ld   b, h                                        ; $47b4: $44
	ld   d, [hl]                                     ; $47b5: $56
	adc  c                                           ; $47b6: $89
	xor  e                                           ; $47b7: $ab
	set  1, l                                        ; $47b8: $cb $cd
	call $bacc                                       ; $47ba: $cd $cc $ba
	xor  c                                           ; $47bd: $a9
	xor  d                                           ; $47be: $aa
	xor  c                                           ; $47bf: $a9
	sbc  c                                           ; $47c0: $99
	sbc  c                                           ; $47c1: $99
	adc  b                                           ; $47c2: $88
	ld   [hl], a                                     ; $47c3: $77
	ld   [hl], a                                     ; $47c4: $77
	ld   h, [hl]                                     ; $47c5: $66
	ld   d, h                                        ; $47c6: $54
	ld   b, e                                        ; $47c7: $43
	ld   [hl+], a                                    ; $47c8: $22
	inc  sp                                          ; $47c9: $33
	inc  [hl]                                        ; $47ca: $34
	ld   b, h                                        ; $47cb: $44
	ld   d, l                                        ; $47cc: $55
	ld   a, b                                        ; $47cd: $78
	xor  e                                           ; $47ce: $ab
	db   $dd                                         ; $47cf: $dd
	call z, $ddcd                                    ; $47d0: $cc $cd $dd
	res  5, c                                        ; $47d3: $cb $a9
	xor  c                                           ; $47d5: $a9
	xor  c                                           ; $47d6: $a9
	adc  c                                           ; $47d7: $89
	sbc  c                                           ; $47d8: $99
	sbc  b                                           ; $47d9: $98
	add  a                                           ; $47da: $87
	ld   [hl], a                                     ; $47db: $77
	halt                                             ; $47dc: $76
	ld   d, h                                        ; $47dd: $54
	ld   b, e                                        ; $47de: $43
	ld   [hl+], a                                    ; $47df: $22
	inc  hl                                          ; $47e0: $23
	inc  [hl]                                        ; $47e1: $34
	ld   d, l                                        ; $47e2: $55
	ld   d, [hl]                                     ; $47e3: $56
	ld   a, c                                        ; $47e4: $79
	xor  e                                           ; $47e5: $ab
	db   $dd                                         ; $47e6: $dd
	db   $dd                                         ; $47e7: $dd
	call c, $cbcd                                    ; $47e8: $dc $cd $cb
	cp   d                                           ; $47eb: $ba
	adc  b                                           ; $47ec: $88
	sbc  c                                           ; $47ed: $99
	sbc  c                                           ; $47ee: $99
	adc  b                                           ; $47ef: $88
	adc  b                                           ; $47f0: $88
	ld   [hl], a                                     ; $47f1: $77
	ld   [hl], a                                     ; $47f2: $77
	ld   h, l                                        ; $47f3: $65
	ld   d, h                                        ; $47f4: $54
	ld   [hl-], a                                    ; $47f5: $32
	ld   de, $4512                                   ; $47f6: $11 $12 $45
	ld   h, a                                        ; $47f9: $67
	ld   a, b                                        ; $47fa: $78
	sbc  e                                           ; $47fb: $9b
	adc  $ed                                         ; $47fc: $ce $ed
	call c, $dcdc                                    ; $47fe: $dc $dc $dc
	cp   d                                           ; $4801: $ba
	xor  b                                           ; $4802: $a8
	sbc  b                                           ; $4803: $98
	adc  c                                           ; $4804: $89
	adc  c                                           ; $4805: $89
	sbc  b                                           ; $4806: $98
	ld   [hl], a                                     ; $4807: $77
	ld   h, [hl]                                     ; $4808: $66
	ld   h, l                                        ; $4809: $65
	ld   b, e                                        ; $480a: $43
	ld   hl, $1111                                   ; $480b: $21 $11 $11
	ld   [hl], $9a                                   ; $480e: $36 $9a
	xor  d                                           ; $4810: $aa
	cp   h                                           ; $4811: $bc
	rst  $28                                         ; $4812: $ef
	cp   $cc                                         ; $4813: $fe $cc
	call z, $b9cc                                    ; $4815: $cc $cc $b9
	adc  b                                           ; $4818: $88
	adc  b                                           ; $4819: $88
	adc  c                                           ; $481a: $89
	sbc  c                                           ; $481b: $99
	halt                                             ; $481c: $76
	ld   h, [hl]                                     ; $481d: $66
	ld   h, l                                        ; $481e: $65
	ld   d, h                                        ; $481f: $54
	ld   hl, $1111                                   ; $4820: $21 $11 $11
	inc  de                                          ; $4823: $13
	ld   l, e                                        ; $4824: $6b
	sbc  $fe                                         ; $4825: $de $fe
	rst  $28                                         ; $4827: $ef
	xor  $ec                                         ; $4828: $ee $ec
	res  7, e                                        ; $482a: $cb $bb
	xor  d                                           ; $482c: $aa
	xor  c                                           ; $482d: $a9
	sbc  b                                           ; $482e: $98
	sbc  b                                           ; $482f: $98
	sbc  b                                           ; $4830: $98
	add  a                                           ; $4831: $87
	ld   d, h                                        ; $4832: $54
	inc  sp                                          ; $4833: $33
	ld   [hl-], a                                    ; $4834: $32
	ld   hl, $1111                                   ; $4835: $21 $11 $11
	dec  d                                           ; $4838: $15
	sbc  [hl]                                        ; $4839: $9e
	rst  $38                                         ; $483a: $ff
	rst  $38                                         ; $483b: $ff
	cp   $de                                         ; $483c: $fe $de
	jp   c, $abbb                                    ; $483e: $da $bb $ab

	cp   e                                           ; $4841: $bb
	xor  d                                           ; $4842: $aa
	cp   c                                           ; $4843: $b9
	sbc  d                                           ; $4844: $9a
	add  a                                           ; $4845: $87
	ld   h, l                                        ; $4846: $65
	ld   b, e                                        ; $4847: $43
	ld   [hl+], a                                    ; $4848: $22
	ld   de, $1111                                   ; $4849: $11 $11 $11
	ld   de, $ef3a                                   ; $484c: $11 $3a $ef
	rst  $38                                         ; $484f: $ff
	db   $fd                                         ; $4850: $fd
	db   $ec                                         ; $4851: $ec
	call $cbaa                                       ; $4852: $cd $aa $cb
	call c, $abcc                                    ; $4855: $dc $cc $ab
	xor  c                                           ; $4858: $a9
	xor  b                                           ; $4859: $a8
	ld   [hl], l                                     ; $485a: $75
	ld   d, h                                        ; $485b: $54
	ld   de, $1111                                   ; $485c: $11 $11 $11
	ld   de, $1411                                   ; $485f: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4862: $cf
	rst  $38                                         ; $4863: $ff
	cp   $dd                                         ; $4864: $fe $dd
	call $bbca                                       ; $4866: $cd $ca $bb
	call $bbdd                                       ; $4869: $cd $dd $bb
	jp   z, $77a9                                    ; $486c: $ca $a9 $77

	ld   d, l                                        ; $486f: $55
	ld   [hl-], a                                    ; $4870: $32
	ld   hl, $1111                                   ; $4871: $21 $11 $11
	ld   de, $5a11                                   ; $4874: $11 $11 $5a
	rst  $38                                         ; $4877: $ff
	rst  $38                                         ; $4878: $ff
	db   $ed                                         ; $4879: $ed
	jp   z, $9bca                                    ; $487a: $ca $ca $9b

	adc  $de                                         ; $487d: $ce $de
	db   $db                                         ; $487f: $db
	call z, $97aa                                    ; $4880: $cc $aa $97
	ld   h, l                                        ; $4883: $65
	ld   d, h                                        ; $4884: $54
	ld   [hl-], a                                    ; $4885: $32
	ld   de, $1111                                   ; $4886: $11 $11 $11
	ld   de, $cf15                                   ; $4889: $11 $15 $cf
	rst  $38                                         ; $488c: $ff
	db   $fd                                         ; $488d: $fd
	res  7, e                                        ; $488e: $cb $bb
	xor  b                                           ; $4890: $a8
	cp   l                                           ; $4891: $bd
	rst  $28                                         ; $4892: $ef
	db   $fd                                         ; $4893: $fd
	res  7, e                                        ; $4894: $cb $bb
	cp   c                                           ; $4896: $b9
	halt                                             ; $4897: $76
	ld   d, l                                        ; $4898: $55
	ld   b, h                                        ; $4899: $44
	ld   b, e                                        ; $489a: $43
	ld   hl, $1111                                   ; $489b: $21 $11 $11
	ld   de, $ff4a                                   ; $489e: $11 $4a $ff
	rst  $38                                         ; $48a1: $ff
	db   $eb                                         ; $48a2: $eb
	cp   c                                           ; $48a3: $b9
	xor  e                                           ; $48a4: $ab
	xor  e                                           ; $48a5: $ab
	db   $dd                                         ; $48a6: $dd
	xor  $cc                                         ; $48a7: $ee $cc
	res  5, d                                        ; $48a9: $cb $aa
	add  a                                           ; $48ab: $87
	ld   h, [hl]                                     ; $48ac: $66
	ld   h, l                                        ; $48ad: $65
	ld   d, l                                        ; $48ae: $55
	inc  sp                                          ; $48af: $33
	ld   hl, $1111                                   ; $48b0: $21 $11 $11
	ld   de, $ff9f                                   ; $48b3: $11 $9f $ff
	rst  $38                                         ; $48b6: $ff
	cp   d                                           ; $48b7: $ba
	sbc  c                                           ; $48b8: $99
	sbc  b                                           ; $48b9: $98
	sbc  h                                           ; $48ba: $9c
	rst  JumpTable                                         ; $48bb: $df
	cp   $dc                                         ; $48bc: $fe $dc
	jp   z, $77a9                                    ; $48be: $ca $a9 $77

	ld   h, l                                        ; $48c1: $65
	ld   d, l                                        ; $48c2: $55
	ld   d, l                                        ; $48c3: $55
	ld   b, e                                        ; $48c4: $43
	ld   de, $1111                                   ; $48c5: $11 $11 $11
	inc  d                                           ; $48c8: $14
	rst  JumpTable                                         ; $48c9: $df
	rst  $38                                         ; $48ca: $ff
	cp   $97                                         ; $48cb: $fe $97
	ld   a, b                                        ; $48cd: $78
	sbc  c                                           ; $48ce: $99
	adc  $ef                                         ; $48cf: $ce $ef
	db   $ed                                         ; $48d1: $ed
	call z, $99ba                                    ; $48d2: $cc $ba $99
	ld   h, [hl]                                     ; $48d5: $66
	ld   h, [hl]                                     ; $48d6: $66
	ld   h, [hl]                                     ; $48d7: $66
	ld   h, l                                        ; $48d8: $65
	ld   d, h                                        ; $48d9: $54
	ld   de, $1111                                   ; $48da: $11 $11 $11
	inc  d                                           ; $48dd: $14
	rst  $28                                         ; $48de: $ef
	rst  $38                                         ; $48df: $ff
	db   $fd                                         ; $48e0: $fd
	add  [hl]                                        ; $48e1: $86
	ld   h, a                                        ; $48e2: $67
	xor  e                                           ; $48e3: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48e4: $cf
	rst  $28                                         ; $48e5: $ef
	db   $ed                                         ; $48e6: $ed
	db   $db                                         ; $48e7: $db
	cp   d                                           ; $48e8: $ba
	sbc  b                                           ; $48e9: $98
	ld   [hl], a                                     ; $48ea: $77
	ld   h, l                                        ; $48eb: $65
	ld   d, l                                        ; $48ec: $55
	ld   h, [hl]                                     ; $48ed: $66
	ld   d, e                                        ; $48ee: $53
	ld   de, $1111                                   ; $48ef: $11 $11 $11
	ld   d, $ff                                      ; $48f2: $16 $ff
	rst  $38                                         ; $48f4: $ff
	ei                                               ; $48f5: $fb
	ld   d, l                                        ; $48f6: $55
	ld   l, b                                        ; $48f7: $68
	xor  e                                           ; $48f8: $ab
	cp   $ee                                         ; $48f9: $fe $ee
	db   $dd                                         ; $48fb: $dd
	cp   e                                           ; $48fc: $bb
	ret                                              ; $48fd: $c9


	sbc  b                                           ; $48fe: $98
	ld   h, a                                        ; $48ff: $67
	ld   d, l                                        ; $4900: $55
	ld   d, l                                        ; $4901: $55
	ld   h, [hl]                                     ; $4902: $66
	ld   d, e                                        ; $4903: $53
	ld   de, $1111                                   ; $4904: $11 $11 $11
	add  hl, de                                      ; $4907: $19
	rst  $38                                         ; $4908: $ff
	rst  $38                                         ; $4909: $ff
	add  sp, $33                                     ; $490a: $e8 $33
	ld   e, d                                        ; $490c: $5a
	call z, $eefe                                    ; $490d: $cc $fe $ee
	call z, $b9bb                                    ; $4910: $cc $bb $b9
	and  a                                           ; $4913: $a7
	ld   [hl], a                                     ; $4914: $77
	ld   d, l                                        ; $4915: $55
	ld   d, [hl]                                     ; $4916: $56
	ld   h, [hl]                                     ; $4917: $66
	ld   d, d                                        ; $4918: $52
	ld   de, $1111                                   ; $4919: $11 $11 $11
	cpl                                              ; $491c: $2f
	rst  $38                                         ; $491d: $ff
	rst  $38                                         ; $491e: $ff
	sub  h                                           ; $491f: $94
	inc  h                                           ; $4920: $24
	ld   a, e                                        ; $4921: $7b
	sbc  $ff                                         ; $4922: $de $ff
	xor  $ca                                         ; $4924: $ee $ca
	cp   e                                           ; $4926: $bb
	xor  c                                           ; $4927: $a9
	add  a                                           ; $4928: $87
	ld   h, [hl]                                     ; $4929: $66
	ld   d, [hl]                                     ; $492a: $56
	ld   h, a                                        ; $492b: $67
	ld   [hl], l                                     ; $492c: $75
	ld   sp, $1111                                   ; $492d: $31 $11 $11
	ld   de, $ffaf                                   ; $4930: $11 $af $ff
	db   $fc                                         ; $4933: $fc
	ld   b, c                                        ; $4934: $41
	dec  d                                           ; $4935: $15
	cp   l                                           ; $4936: $bd
	rst  $28                                         ; $4937: $ef
	db   $fd                                         ; $4938: $fd
	db   $fd                                         ; $4939: $fd
	db   $db                                         ; $493a: $db
	cp   d                                           ; $493b: $ba
	sbc  c                                           ; $493c: $99
	add  a                                           ; $493d: $87
	ld   h, l                                        ; $493e: $65
	ld   d, l                                        ; $493f: $55
	ld   [hl], a                                     ; $4940: $77
	ld   h, h                                        ; $4941: $64
	ld   de, $1111                                   ; $4942: $11 $11 $11
	dec  de                                          ; $4945: $1b
	rst  $38                                         ; $4946: $ff
	rst  $38                                         ; $4947: $ff
	or   e                                           ; $4948: $b3
	ld   de, $fe5b                                   ; $4949: $11 $5b $fe
	rst  $38                                         ; $494c: $ff
	sbc  $cb                                         ; $494d: $de $cb
	xor  d                                           ; $494f: $aa
	xor  b                                           ; $4950: $a8
	sbc  c                                           ; $4951: $99
	halt                                             ; $4952: $76
	ld   d, l                                        ; $4953: $55
	ld   d, a                                        ; $4954: $57
	halt                                             ; $4955: $76
	ld   b, c                                        ; $4956: $41
	ld   de, $1111                                   ; $4957: $11 $11 $11
	rst  $28                                         ; $495a: $ef
	rst  $38                                         ; $495b: $ff
	ld   a, [$1521]                                  ; $495c: $fa $21 $15
	cp   a                                           ; $495f: $bf
	rst  $38                                         ; $4960: $ff
	db   $fd                                         ; $4961: $fd
	db   $fc                                         ; $4962: $fc
	cp   e                                           ; $4963: $bb
	xor  c                                           ; $4964: $a9
	sbc  d                                           ; $4965: $9a
	halt                                             ; $4966: $76
	ld   h, l                                        ; $4967: $65
	ld   h, [hl]                                     ; $4968: $66
	halt                                             ; $4969: $76
	ld   b, d                                        ; $496a: $42
	ld   de, $1111                                   ; $496b: $11 $11 $11
	adc  a                                           ; $496e: $8f
	rst  $38                                         ; $496f: $ff
	db   $fc                                         ; $4970: $fc
	ld   sp, $ae13                                   ; $4971: $31 $13 $ae
	rst  JumpTable                                         ; $4974: $df
	cp   $fe                                         ; $4975: $fe $fe
	cp   d                                           ; $4977: $ba
	adc  c                                           ; $4978: $89
	sbc  c                                           ; $4979: $99
	and  [hl]                                        ; $497a: $a6
	ld   h, h                                        ; $497b: $64
	ld   b, [hl]                                     ; $497c: $46
	ld   [hl], a                                     ; $497d: $77
	ld   b, d                                        ; $497e: $42
	ld   de, $1111                                   ; $497f: $11 $11 $11
	rst  JumpTable                                         ; $4982: $df
	rst  $38                                         ; $4983: $ff
	rst  $30                                         ; $4984: $f7
	ld   de, $cd17                                   ; $4985: $11 $17 $cd
	rst  JumpTable                                         ; $4988: $df
	rst  $38                                         ; $4989: $ff
	db   $fc                                         ; $498a: $fc
	cp   c                                           ; $498b: $b9
	xor  d                                           ; $498c: $aa
	sbc  e                                           ; $498d: $9b
	ld   [hl], l                                     ; $498e: $75
	ld   b, e                                        ; $498f: $43
	ld   d, a                                        ; $4990: $57
	add  [hl]                                        ; $4991: $86
	ld   sp, $1111                                   ; $4992: $31 $11 $11
	dec  de                                          ; $4995: $1b
	rst  $38                                         ; $4996: $ff
	rst  $38                                         ; $4997: $ff
	sub  e                                           ; $4998: $93
	ld   de, $dd39                                   ; $4999: $11 $39 $dd
	rst  $38                                         ; $499c: $ff
	rst  $38                                         ; $499d: $ff
	cp   d                                           ; $499e: $ba
	cp   d                                           ; $499f: $ba
	cp   c                                           ; $49a0: $b9
	sub  [hl]                                        ; $49a1: $96
	ld   b, h                                        ; $49a2: $44
	dec  [hl]                                        ; $49a3: $35
	ld   h, a                                        ; $49a4: $67
	ld   d, d                                        ; $49a5: $52
	ld   de, $1511                                   ; $49a6: $11 $11 $15
	rst  $38                                         ; $49a9: $ff
	rst  $38                                         ; $49aa: $ff
	db   $d3                                         ; $49ab: $d3
	ld   de, $cb38                                   ; $49ac: $11 $38 $cb
	rst  $38                                         ; $49af: $ff
	rst  $28                                         ; $49b0: $ef
	ld   [$aa9a], a                                  ; $49b1: $ea $9a $aa
	cp   b                                           ; $49b4: $b8
	ld   b, e                                        ; $49b5: $43
	inc  hl                                          ; $49b6: $23
	ld   d, a                                        ; $49b7: $57
	ld   h, d                                        ; $49b8: $62
	ld   de, $1811                                   ; $49b9: $11 $11 $18
	rst  $38                                         ; $49bc: $ff
	rst  $38                                         ; $49bd: $ff
	add  e                                           ; $49be: $83
	ld   [de], a                                     ; $49bf: $12
	ld   e, d                                        ; $49c0: $5a
	call z, $deff                                    ; $49c1: $cc $ff $de
	cp   b                                           ; $49c4: $b8
	sbc  e                                           ; $49c5: $9b
	call z, Call_0dc_43a6                            ; $49c6: $cc $a6 $43
	inc  h                                           ; $49c9: $24
	ld   d, l                                        ; $49ca: $55
	ld   sp, $1111                                   ; $49cb: $31 $11 $11
	ccf                                              ; $49ce: $3f
	rst  $38                                         ; $49cf: $ff
	ld   sp, hl                                      ; $49d0: $f9
	ld   hl, $ad16                                   ; $49d1: $21 $16 $ad
	xor  [hl]                                        ; $49d4: $ae
	cp   $fd                                         ; $49d5: $fe $fd
	ld   h, a                                        ; $49d7: $67
	ld   a, e                                        ; $49d8: $7b
	call z, $2173                                    ; $49d9: $cc $73 $21
	dec  [hl]                                        ; $49dc: $35
	ld   b, d                                        ; $49dd: $42
	ld   de, $2f11                                   ; $49de: $11 $11 $2f
	rst  $38                                         ; $49e1: $ff
	db   $fd                                         ; $49e2: $fd
	ld   hl, $8c15                                   ; $49e3: $21 $15 $8c
	call z, $ffff                                    ; $49e6: $cc $ff $ff
	halt                                             ; $49e9: $76
	ld   l, b                                        ; $49ea: $68
	call $1183                                       ; $49eb: $cd $83 $11
	inc  de                                          ; $49ee: $13
	inc  sp                                          ; $49ef: $33
	ld   de, $cf11                                   ; $49f0: $11 $11 $cf
	rst  $38                                         ; $49f3: $ff
	db   $f4                                         ; $49f4: $f4
	ld   de, $dd28                                   ; $49f5: $11 $28 $dd
	cp   [hl]                                        ; $49f8: $be
	rst  $38                                         ; $49f9: $ff
	ei                                               ; $49fa: $fb
	ld   d, l                                        ; $49fb: $55
	ld   a, d                                        ; $49fc: $7a
	cp   d                                           ; $49fd: $ba
	ld   b, c                                        ; $49fe: $41
	ld   de, $1112                                   ; $49ff: $11 $12 $11
	ld   de, $ff2f                                   ; $4a02: $11 $2f $ff
	cp   $31                                         ; $4a05: $fe $31
	inc  de                                          ; $4a07: $13
	adc  h                                           ; $4a08: $8c
	adc  $ff                                         ; $4a09: $ce $ff
	rst  $38                                         ; $4a0b: $ff
	add  [hl]                                        ; $4a0c: $86
	ld   d, a                                        ; $4a0d: $57
	sbc  d                                           ; $4a0e: $9a
	ld   [hl], d                                     ; $4a0f: $72
	ld   de, $1111                                   ; $4a10: $11 $11 $11
	ld   de, $ff2f                                   ; $4a13: $11 $2f $ff
	cp   $11                                         ; $4a16: $fe $11
	dec  d                                           ; $4a18: $15
	cp   [hl]                                        ; $4a19: $be
	call z, $ffff                                    ; $4a1a: $cc $ff $ff
	sub  [hl]                                        ; $4a1d: $96
	ld   l, b                                        ; $4a1e: $68
	xor  c                                           ; $4a1f: $a9
	ld   d, c                                        ; $4a20: $51
	ld   de, $1111                                   ; $4a21: $11 $11 $11
	ld   de, $ffff                                   ; $4a24: $11 $ff $ff
	ldh  a, [c]                                      ; $4a27: $f2
	ld   de, $db3b                                   ; $4a28: $11 $3b $db
	rst  $28                                         ; $4a2b: $ef
	rst  $38                                         ; $4a2c: $ff
	ld   a, [$8966]                                  ; $4a2d: $fa $66 $89
	and  h                                           ; $4a30: $a4
	ld   de, $1111                                   ; $4a31: $11 $11 $11
	ld   de, $ffff                                   ; $4a34: $11 $ff $ff
	push af                                          ; $4a37: $f5
	ld   de, wResetDataBaseAnimSpriteSpecIdxUsed                                   ; $4a38: $11 $16 $c9
	rst  JumpTable                                         ; $4a3b: $df
	rst  $38                                         ; $4a3c: $ff
	db   $fd                                         ; $4a3d: $fd
	adc  c                                           ; $4a3e: $89
	sbc  c                                           ; $4a3f: $99
	sub  e                                           ; $4a40: $93
	ld   de, $1111                                   ; $4a41: $11 $11 $11
	rla                                              ; $4a44: $17
	rst  $38                                         ; $4a45: $ff
	rst  $38                                         ; $4a46: $ff
	jp   $4911                                       ; $4a47: $c3 $11 $49


	ret  z                                           ; $4a4a: $c8

	rst  JumpTable                                         ; $4a4b: $df
	rst  $38                                         ; $4a4c: $ff
	ei                                               ; $4a4d: $fb
	xor  d                                           ; $4a4e: $aa
	xor  c                                           ; $4a4f: $a9
	ld   h, c                                        ; $4a50: $61
	ld   de, $1111                                   ; $4a51: $11 $11 $11
	ld   a, a                                        ; $4a54: $7f
	rst  $38                                         ; $4a55: $ff
	ei                                               ; $4a56: $fb
	ld   de, $a914                                   ; $4a57: $11 $14 $a9
	ld   a, l                                        ; $4a5a: $7d
	rst  $38                                         ; $4a5b: $ff
	cp   $99                                         ; $4a5c: $fe $99
	cp   h                                           ; $4a5e: $bc
	add  $11                                         ; $4a5f: $c6 $11
	ld   de, $7f11                                   ; $4a61: $11 $11 $7f
	rst  $38                                         ; $4a64: $ff
	cp   $61                                         ; $4a65: $fe $61
	dec  h                                           ; $4a67: $25
	ld   l, c                                        ; $4a68: $69
	adc  l                                           ; $4a69: $8d
	rst  $38                                         ; $4a6a: $ff
	ei                                               ; $4a6b: $fb
	adc  b                                           ; $4a6c: $88
	cp   h                                           ; $4a6d: $bc
	or   l                                           ; $4a6e: $b5
	ld   de, $1111                                   ; $4a6f: $11 $11 $11
	rst  $28                                         ; $4a72: $ef
	rst  $38                                         ; $4a73: $ff
	ei                                               ; $4a74: $fb
	ld   b, c                                        ; $4a75: $41
	ld   b, [hl]                                     ; $4a76: $46
	xor  d                                           ; $4a77: $aa
	cp   a                                           ; $4a78: $bf
	call z, $8ba7                                    ; $4a79: $cc $a7 $8b
	sbc  $71                                         ; $4a7c: $de $71
	ld   de, $1f11                                   ; $4a7e: $11 $11 $1f
	rst  $38                                         ; $4a81: $ff
	rst  $38                                         ; $4a82: $ff
	and  [hl]                                        ; $4a83: $a6
	dec  [hl]                                        ; $4a84: $35
	adc  d                                           ; $4a85: $8a
	rst  JumpTable                                         ; $4a86: $df
	db   $fd                                         ; $4a87: $fd
	and  l                                           ; $4a88: $a5
	ld   b, [hl]                                     ; $4a89: $46
	adc  h                                           ; $4a8a: $8c
	sub  l                                           ; $4a8b: $95
	ld   de, $1d11                                   ; $4a8c: $11 $11 $1d
	rst  $38                                         ; $4a8f: $ff
	cp   $76                                         ; $4a90: $fe $76
	ld   e, b                                        ; $4a92: $58
	xor  h                                           ; $4a93: $ac
	rst  $28                                         ; $4a94: $ef
	cp   $a6                                         ; $4a95: $fe $a6
	ld   [de], a                                     ; $4a97: $12
	ld   a, b                                        ; $4a98: $78
	ld   [hl], d                                     ; $4a99: $72
	ld   de, $af11                                   ; $4a9a: $11 $11 $af
	rst  $38                                         ; $4a9d: $ff
	rst  $30                                         ; $4a9e: $f7
	ld   h, e                                        ; $4a9f: $63
	ld   l, d                                        ; $4aa0: $6a
	xor  l                                           ; $4aa1: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aa2: $cf
	db   $fd                                         ; $4aa3: $fd
	and  h                                           ; $4aa4: $a4
	inc  d                                           ; $4aa5: $14
	ld   b, h                                        ; $4aa6: $44
	ld   b, c                                        ; $4aa7: $41
	ld   de, $ff1d                                   ; $4aa8: $11 $1d $ff
	cp   $87                                         ; $4aab: $fe $87
	jr   c, @-$55                                    ; $4aad: $38 $a9

	adc  $ff                                         ; $4aaf: $ce $ff
	add  sp, $11                                     ; $4ab1: $e8 $11
	ld   de, $1153                                   ; $4ab3: $11 $53 $11
	ld   d, $ff                                      ; $4ab6: $16 $ff
	rst  $38                                         ; $4ab8: $ff
	ld   d, d                                        ; $4ab9: $52
	ld   l, d                                        ; $4aba: $6a
	db   $fd                                         ; $4abb: $fd
	xor  e                                           ; $4abc: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4abd: $cf
	ld   a, [$1121]                                  ; $4abe: $fa $21 $11
	inc  [hl]                                        ; $4ac1: $34
	ld   de, $ff3a                                   ; $4ac2: $11 $3a $ff
	ld   sp, hl                                      ; $4ac5: $f9
	ld   b, d                                        ; $4ac6: $42
	ld   l, h                                        ; $4ac7: $6c
	rst  $38                                         ; $4ac8: $ff
	db   $eb                                         ; $4ac9: $eb
	xor  l                                           ; $4aca: $ad
	cp   c                                           ; $4acb: $b9
	ld   de, $3211                                   ; $4acc: $11 $11 $32
	ld   d, $9f                                      ; $4acf: $16 $9f
	rst  $38                                         ; $4ad1: $ff
	or   l                                           ; $4ad2: $b5
	ld   [hl], $ef                                   ; $4ad3: $36 $ef
	rst  $38                                         ; $4ad5: $ff
	sbc  e                                           ; $4ad6: $9b
	cp   b                                           ; $4ad7: $b8
	ld   sp, $4411                                   ; $4ad8: $31 $11 $44
	ld   de, $ff4c                                   ; $4adb: $11 $4c $ff
	ret  z                                           ; $4ade: $c8

	ld   h, l                                        ; $4adf: $65
	adc  $dd                                         ; $4ae0: $ce $dd
	call Call_0dc_41eb                               ; $4ae2: $cd $eb $41
	ld   de, $7628                                   ; $4ae5: $11 $28 $76
	ld   h, a                                        ; $4ae8: $67
	cp   [hl]                                        ; $4ae9: $be
	reti                                             ; $4aea: $d9


	ld   [hl], a                                     ; $4aeb: $77
	xor  [hl]                                        ; $4aec: $ae
	db   $eb                                         ; $4aed: $eb
	call Call_0dc_51dc                               ; $4aee: $cd $dc $51
	ld   de, $7736                                   ; $4af1: $11 $36 $77
	ld   e, c                                        ; $4af4: $59
	db   $fc                                         ; $4af5: $fc
	sub  l                                           ; $4af6: $95
	ld   e, e                                        ; $4af7: $5b
	rst  $38                                         ; $4af8: $ff
	ei                                               ; $4af9: $fb
	adc  c                                           ; $4afa: $89
	bit  0, c                                        ; $4afb: $cb $41
	ld   de, $a85a                                   ; $4afd: $11 $5a $a8
	ld   [hl], $be                                   ; $4b00: $36 $be
	and  $5a                                         ; $4b02: $e6 $5a
	xor  a                                           ; $4b04: $af
	rst  $38                                         ; $4b05: $ff
	jp   z, $2153                                    ; $4b06: $ca $53 $21

	ld   [de], a                                     ; $4b09: $12
	ld   [hl], $98                                   ; $4b0a: $36 $98
	db   $db                                         ; $4b0c: $db
	ld   a, b                                        ; $4b0d: $78
	ld   a, c                                        ; $4b0e: $79
	xor  h                                           ; $4b0f: $ac
	rst  $38                                         ; $4b10: $ff
	db   $db                                         ; $4b11: $db
	halt                                             ; $4b12: $76
	ld   de, $4723                                   ; $4b13: $11 $23 $47
	ld   l, b                                        ; $4b16: $68
	xor  e                                           ; $4b17: $ab
	sbc  e                                           ; $4b18: $9b
	ld   [hl], d                                     ; $4b19: $72
	sbc  e                                           ; $4b1a: $9b
	rst  $38                                         ; $4b1b: $ff
	cp   d                                           ; $4b1c: $ba
	sub  a                                           ; $4b1d: $97
	ld   [hl], e                                     ; $4b1e: $73
	ld   hl, $4a13                                   ; $4b1f: $21 $13 $4a
	cp   d                                           ; $4b22: $ba
	reti                                             ; $4b23: $d9


	ld   e, d                                        ; $4b24: $5a
	sbc  h                                           ; $4b25: $9c
	cp   $b9                                         ; $4b26: $fe $b9
	ld   a, d                                        ; $4b28: $7a
	ld   [hl], l                                     ; $4b29: $75
	ld   de, $9a34                                   ; $4b2a: $11 $34 $9a
	ld   h, a                                        ; $4b2d: $67
	ld   l, b                                        ; $4b2e: $68
	ret  z                                           ; $4b2f: $c8

	adc  e                                           ; $4b30: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b31: $cf
	db   $fd                                         ; $4b32: $fd
	and  a                                           ; $4b33: $a7
	ld   h, d                                        ; $4b34: $62
	ld   [hl+], a                                    ; $4b35: $22
	dec  h                                           ; $4b36: $25
	ld   [hl], a                                     ; $4b37: $77
	xor  c                                           ; $4b38: $a9
	ld   a, c                                        ; $4b39: $79
	sbc  d                                           ; $4b3a: $9a
	xor  c                                           ; $4b3b: $a9
	cp   e                                           ; $4b3c: $bb
	rst  $38                                         ; $4b3d: $ff
	jp   z, $1311                                    ; $4b3e: $ca $11 $13

	xor  e                                           ; $4b41: $ab
	and  a                                           ; $4b42: $a7
	inc  [hl]                                        ; $4b43: $34
	xor  a                                           ; $4b44: $af
	ld   [$df35], a                                  ; $4b45: $ea $35 $df
	rst  $38                                         ; $4b48: $ff
	ld   h, c                                        ; $4b49: $61
	ld   de, $8799                                   ; $4b4a: $11 $99 $87
	ld   d, $9c                                      ; $4b4d: $16 $9c
	ld   hl, sp+$54                                  ; $4b4f: $f8 $54
	ld   e, [hl]                                     ; $4b51: $5e
	rst  $38                                         ; $4b52: $ff
	sub  $41                                         ; $4b53: $d6 $41
	inc  d                                           ; $4b55: $14
	ld   e, a                                        ; $4b56: $5f
	adc  b                                           ; $4b57: $88
	sub  e                                           ; $4b58: $93
	ld   a, l                                        ; $4b59: $7d
	xor  l                                           ; $4b5a: $ad
	add  h                                           ; $4b5b: $84
	jp   c, Jump_0dc_64ef                            ; $4b5c: $da $ef $64

	ld   de, $ca77                                   ; $4b5f: $11 $77 $ca
	ld   c, c                                        ; $4b62: $49
	ld   a, e                                        ; $4b63: $7b
	push bc                                          ; $4b64: $c5
	ld   h, a                                        ; $4b65: $67
	ld   a, a                                        ; $4b66: $7f
	db   $fc                                         ; $4b67: $fc
	or   c                                           ; $4b68: $b1
	ld   de, $9d1a                                   ; $4b69: $11 $1a $9d
	add  l                                           ; $4b6c: $85
	sub  a                                           ; $4b6d: $97
	xor  d                                           ; $4b6e: $aa
	ld   d, a                                        ; $4b6f: $57
	jp   c, $8afe                                    ; $4b70: $da $fe $8a

	ld   b, c                                        ; $4b73: $41
	ld   de, $dc4a                                   ; $4b74: $11 $4a $dc
	ret                                              ; $4b77: $c9


	ld   b, e                                        ; $4b78: $43
	ld   l, d                                        ; $4b79: $6a
	rst  $38                                         ; $4b7a: $ff
	xor  c                                           ; $4b7b: $a9
	ld   h, [hl]                                     ; $4b7c: $66
	push bc                                          ; $4b7d: $c5
	ld   hl, $bf15                                   ; $4b7e: $21 $15 $bf
	db   $db                                         ; $4b81: $db
	ld   d, d                                        ; $4b82: $52
	ld   l, l                                        ; $4b83: $6d
	cp   $a5                                         ; $4b84: $fe $a5
	ld   a, [hl]                                     ; $4b86: $7e
	sub  e                                           ; $4b87: $93
	ld   de, $cf1a                                   ; $4b88: $11 $1a $cf
	or   e                                           ; $4b8b: $b3
	ld   h, h                                        ; $4b8c: $64
	xor  a                                           ; $4b8d: $af
	rst  ToBoot                                         ; $4b8e: $c7
	ld   l, l                                        ; $4b8f: $6d
	cp   [hl]                                        ; $4b90: $be
	sub  c                                           ; $4b91: $91
	ld   de, $ff2f                                   ; $4b92: $11 $2f $ff
	or   e                                           ; $4b95: $b3
	ld   b, l                                        ; $4b96: $45
	ld   a, a                                        ; $4b97: $7f
	db   $eb                                         ; $4b98: $eb
	or   h                                           ; $4b99: $b4
	cp   d                                           ; $4b9a: $ba
	ld   d, e                                        ; $4b9b: $53
	ld   de, $ff2c                                   ; $4b9c: $11 $2c $ff
	call nc, $af12                                   ; $4b9f: $d4 $12 $af
	rst  $30                                         ; $4ba2: $f7
	add  h                                           ; $4ba3: $84
	adc  e                                           ; $4ba4: $8b
	ld   [de], a                                     ; $4ba5: $12
	ld   de, $fdbd                                   ; $4ba6: $11 $bd $fd
	ld   [hl], h                                     ; $4ba9: $74
	daa                                              ; $4baa: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bab: $cf
	ld   hl, sp-$3a                                  ; $4bac: $f8 $c6
	ld   b, [hl]                                     ; $4bae: $46
	inc  d                                           ; $4baf: $14
	ld   d, e                                        ; $4bb0: $53
	db   $dd                                         ; $4bb1: $dd
	db   $eb                                         ; $4bb2: $eb
	ld   d, [hl]                                     ; $4bb3: $56
	adc  c                                           ; $4bb4: $89
	db   $db                                         ; $4bb5: $db
	sbc  e                                           ; $4bb6: $9b
	ld   a, d                                        ; $4bb7: $7a
	ld   b, c                                        ; $4bb8: $41
	ld   sp, $cf5e                                   ; $4bb9: $31 $5e $cf
	and  a                                           ; $4bbc: $a7
	ld   [hl], d                                     ; $4bbd: $72
	xor  h                                           ; $4bbe: $ac
	xor  a                                           ; $4bbf: $af
	add  [hl]                                        ; $4bc0: $86
	ld   d, c                                        ; $4bc1: $51
	ld   h, h                                        ; $4bc2: $64
	ld   h, [hl]                                     ; $4bc3: $66
	ld   e, h                                        ; $4bc4: $5c
	cp   [hl]                                        ; $4bc5: $be
	push de                                          ; $4bc6: $d5
	ld   e, c                                        ; $4bc7: $59
	sbc  h                                           ; $4bc8: $9c
	and  $b5                                         ; $4bc9: $e6 $b5
	inc  h                                           ; $4bcb: $24
	inc  d                                           ; $4bcc: $14
	ld   a, d                                        ; $4bcd: $7a
	cp   $96                                         ; $4bce: $fe $96
	ld   h, [hl]                                     ; $4bd0: $66
	call z, Call_0dc_67bb                            ; $4bd1: $cc $bb $67
	ld   d, e                                        ; $4bd4: $53
	ld   de, $cf48                                   ; $4bd5: $11 $48 $cf
	ret  z                                           ; $4bd8: $c8

	ld   [hl], l                                     ; $4bd9: $75
	call z, Call_0dc_6aca                            ; $4bda: $cc $ca $6a
	ld   h, l                                        ; $4bdd: $65
	ld   d, c                                        ; $4bde: $51
	inc  h                                           ; $4bdf: $24
	ld   e, a                                        ; $4be0: $5f
	ei                                               ; $4be1: $fb
	rst  ToBoot                                         ; $4be2: $c7
	ld   a, c                                        ; $4be3: $79
	sbc  d                                           ; $4be4: $9a
	xor  e                                           ; $4be5: $ab
	ld   [hl], c                                     ; $4be6: $71
	ld   b, c                                        ; $4be7: $41
	inc  l                                           ; $4be8: $2c
	ld   a, h                                        ; $4be9: $7c
	and  [hl]                                        ; $4bea: $a6
	xor  d                                           ; $4beb: $aa
	xor  l                                           ; $4bec: $ad
	ret                                              ; $4bed: $c9


	ld   e, b                                        ; $4bee: $58
	ld   [hl], a                                     ; $4bef: $77
	add  c                                           ; $4bf0: $81
	dec  h                                           ; $4bf1: $25
	ld   e, [hl]                                     ; $4bf2: $5e
	reti                                             ; $4bf3: $d9


	ret  z                                           ; $4bf4: $c8

	sbc  l                                           ; $4bf5: $9d
	ld   c, h                                        ; $4bf6: $4c
	sbc  c                                           ; $4bf7: $99
	db   $d3                                         ; $4bf8: $d3
	ld   h, c                                        ; $4bf9: $61
	ld   [hl+], a                                    ; $4bfa: $22
	ld   l, [hl]                                     ; $4bfb: $6e
	xor  a                                           ; $4bfc: $af
	or   l                                           ; $4bfd: $b5
	ld   a, c                                        ; $4bfe: $79
	cp   a                                           ; $4bff: $bf
	and  [hl]                                        ; $4c00: $a6
	ld   [hl], c                                     ; $4c01: $71
	ld   h, [hl]                                     ; $4c02: $66
	rla                                              ; $4c03: $17
	ld   b, l                                        ; $4c04: $45
	db   $eb                                         ; $4c05: $eb
	db   $fd                                         ; $4c06: $fd
	ld   e, d                                        ; $4c07: $5a
	ld   l, h                                        ; $4c08: $6c
	add  sp, $72                                     ; $4c09: $e8 $72
	ld   d, d                                        ; $4c0b: $52
	ld   e, c                                        ; $4c0c: $59
	ld   a, [hl+]                                    ; $4c0d: $2a
	adc  d                                           ; $4c0e: $8a
	db   $fc                                         ; $4c0f: $fc
	call z, $9747                                    ; $4c10: $cc $47 $97
	push af                                          ; $4c13: $f5
	ld   sp, $ad18                                   ; $4c14: $31 $18 $ad
	ret                                              ; $4c17: $c9


	ld   a, c                                        ; $4c18: $79
	cp   h                                           ; $4c19: $bc
	rst  $30                                         ; $4c1a: $f7
	ld   a, b                                        ; $4c1b: $78
	add  hl, sp                                      ; $4c1c: $39
	ld   [hl], d                                     ; $4c1d: $72
	ld   h, c                                        ; $4c1e: $61
	dec  sp                                          ; $4c1f: $3b
	ld   a, a                                        ; $4c20: $7f
	rst  $30                                         ; $4c21: $f7
	ld   [hl], a                                     ; $4c22: $77
	jp   z, $35ca                                    ; $4c23: $ca $ca $35

	ld   hl, $6aa8                                   ; $4c26: $21 $a8 $6a
	add  hl, sp                                      ; $4c29: $39
	ei                                               ; $4c2a: $fb
	ld   [$aa68], a                                  ; $4c2b: $ea $68 $aa
	sub  [hl]                                        ; $4c2e: $96
	ld   de, $d959                                   ; $4c2f: $11 $59 $d9
	ld   h, l                                        ; $4c32: $65
	cp   l                                           ; $4c33: $bd
	db   $fd                                         ; $4c34: $fd
	ld   [hl], a                                     ; $4c35: $77
	jr   z, @-$67                                    ; $4c36: $28 $97

	sub  c                                           ; $4c38: $91
	dec  [hl]                                        ; $4c39: $35
	ld   e, d                                        ; $4c3a: $5a
	cp   d                                           ; $4c3b: $ba
	ret  c                                           ; $4c3c: $d8

	sbc  d                                           ; $4c3d: $9a
	adc  $77                                         ; $4c3e: $ce $77
	inc  de                                          ; $4c40: $13
	sub  l                                           ; $4c41: $95
	sub  l                                           ; $4c42: $95
	ld   c, c                                        ; $4c43: $49
	cp   d                                           ; $4c44: $ba
	rst  $38                                         ; $4c45: $ff
	inc  e                                           ; $4c46: $1c
	sub  h                                           ; $4c47: $94
	ldh  a, [c]                                      ; $4c48: $f2
	ld   h, $17                                      ; $4c49: $26 $17
	and  a                                           ; $4c4b: $a7
	cp   h                                           ; $4c4c: $bc
	adc  d                                           ; $4c4d: $8a
	sub  h                                           ; $4c4e: $94
	xor  [hl]                                        ; $4c4f: $ae
	db   $db                                         ; $4c50: $db
	ld   d, c                                        ; $4c51: $51
	inc  de                                          ; $4c52: $13
	ld   c, b                                        ; $4c53: $48
	xor  b                                           ; $4c54: $a8
	adc  c                                           ; $4c55: $89
	xor  e                                           ; $4c56: $ab
	ld   a, c                                        ; $4c57: $79
	or   a                                           ; $4c58: $b7
	jp   hl                                          ; $4c59: $e9


	ld   l, b                                        ; $4c5a: $68
	inc  d                                           ; $4c5b: $14
	ld   d, l                                        ; $4c5c: $55
	xor  c                                           ; $4c5d: $a9
	sbc  c                                           ; $4c5e: $99
	adc  b                                           ; $4c5f: $88
	xor  d                                           ; $4c60: $aa
	jp   z, Jump_0dc_4788                            ; $4c61: $ca $88 $47

	ld   b, a                                        ; $4c64: $47
	ld   [hl], h                                     ; $4c65: $74
	sub  a                                           ; $4c66: $97
	cp   e                                           ; $4c67: $bb
	cp   b                                           ; $4c68: $b8
	ld   c, d                                        ; $4c69: $4a
	xor  h                                           ; $4c6a: $ac
	or   l                                           ; $4c6b: $b5
	dec  [hl]                                        ; $4c6c: $35
	ld   c, d                                        ; $4c6d: $4a
	and  e                                           ; $4c6e: $a3
	add  l                                           ; $4c6f: $85
	xor  [hl]                                        ; $4c70: $ae
	adc  c                                           ; $4c71: $89
	and  l                                           ; $4c72: $a5
	ld   a, d                                        ; $4c73: $7a
	ld   a, c                                        ; $4c74: $79
	halt                                             ; $4c75: $76
	ld   [hl], l                                     ; $4c76: $75
	ld   e, e                                        ; $4c77: $5b
	cp   e                                           ; $4c78: $bb
	or   [hl]                                        ; $4c79: $b6
	ld   h, l                                        ; $4c7a: $65
	xor  d                                           ; $4c7b: $aa
	xor  d                                           ; $4c7c: $aa
	dec  [hl]                                        ; $4c7d: $35
	ld   e, b                                        ; $4c7e: $58
	ret                                              ; $4c7f: $c9


	add  [hl]                                        ; $4c80: $86
	ld   l, c                                        ; $4c81: $69
	set  0, a                                        ; $4c82: $cb $c7
	ld   d, l                                        ; $4c84: $55
	ld   e, e                                        ; $4c85: $5b
	xor  c                                           ; $4c86: $a9
	ld   h, h                                        ; $4c87: $64
	ld   h, [hl]                                     ; $4c88: $66
	cp   d                                           ; $4c89: $ba
	xor  d                                           ; $4c8a: $aa
	ld   e, c                                        ; $4c8b: $59
	add  a                                           ; $4c8c: $87
	cp   b                                           ; $4c8d: $b8
	ld   [hl], a                                     ; $4c8e: $77
	ld   d, a                                        ; $4c8f: $57
	add  a                                           ; $4c90: $87
	sbc  e                                           ; $4c91: $9b
	adc  b                                           ; $4c92: $88
	ld   d, a                                        ; $4c93: $57
	xor  b                                           ; $4c94: $a8
	xor  c                                           ; $4c95: $a9
	sub  l                                           ; $4c96: $95
	ld   b, l                                        ; $4c97: $45
	sbc  e                                           ; $4c98: $9b
	adc  b                                           ; $4c99: $88
	ld   b, l                                        ; $4c9a: $45
	xor  d                                           ; $4c9b: $aa
	sbc  e                                           ; $4c9c: $9b
	halt                                             ; $4c9d: $76
	add  l                                           ; $4c9e: $85
	cp   c                                           ; $4c9f: $b9
	ld   a, b                                        ; $4ca0: $78
	ld   d, a                                        ; $4ca1: $57
	ld   a, b                                        ; $4ca2: $78
	adc  c                                           ; $4ca3: $89
	adc  b                                           ; $4ca4: $88
	ld   a, b                                        ; $4ca5: $78
	ld   a, b                                        ; $4ca6: $78
	cp   b                                           ; $4ca7: $b8
	sub  a                                           ; $4ca8: $97
	ld   h, [hl]                                     ; $4ca9: $66
	sbc  c                                           ; $4caa: $99
	adc  c                                           ; $4cab: $89
	ld   d, l                                        ; $4cac: $55
	adc  d                                           ; $4cad: $8a
	sbc  c                                           ; $4cae: $99
	ld   d, a                                        ; $4caf: $57
	add  [hl]                                        ; $4cb0: $86
	ret                                              ; $4cb1: $c9


	and  a                                           ; $4cb2: $a7
	ld   d, a                                        ; $4cb3: $57
	ld   a, d                                        ; $4cb4: $7a
	ld   a, c                                        ; $4cb5: $79
	ld   [hl], a                                     ; $4cb6: $77
	add  [hl]                                        ; $4cb7: $86
	adc  c                                           ; $4cb8: $89
	adc  b                                           ; $4cb9: $88
	halt                                             ; $4cba: $76
	sub  a                                           ; $4cbb: $97
	adc  e                                           ; $4cbc: $8b
	ld   a, d                                        ; $4cbd: $7a
	ld   a, b                                        ; $4cbe: $78
	add  a                                           ; $4cbf: $87
	sbc  b                                           ; $4cc0: $98
	add  [hl]                                        ; $4cc1: $86
	ld   d, [hl]                                     ; $4cc2: $56
	adc  c                                           ; $4cc3: $89
	or   a                                           ; $4cc4: $b7
	ld   h, a                                        ; $4cc5: $67
	adc  e                                           ; $4cc6: $8b
	adc  d                                           ; $4cc7: $8a
	ld   a, b                                        ; $4cc8: $78
	add  [hl]                                        ; $4cc9: $86
	ld   [hl], l                                     ; $4cca: $75
	sbc  b                                           ; $4ccb: $98
	sub  a                                           ; $4ccc: $97
	adc  b                                           ; $4ccd: $88
	ld   a, c                                        ; $4cce: $79
	ld   a, c                                        ; $4ccf: $79
	add  a                                           ; $4cd0: $87
	adc  b                                           ; $4cd1: $88
	adc  c                                           ; $4cd2: $89
	ld   h, l                                        ; $4cd3: $65
	sbc  c                                           ; $4cd4: $99
	cp   d                                           ; $4cd5: $ba
	ld   [hl], a                                     ; $4cd6: $77
	ld   d, l                                        ; $4cd7: $55
	sbc  d                                           ; $4cd8: $9a
	xor  b                                           ; $4cd9: $a8
	ld   d, [hl]                                     ; $4cda: $56
	adc  c                                           ; $4cdb: $89
	xor  c                                           ; $4cdc: $a9
	ld   h, a                                        ; $4cdd: $67
	adc  c                                           ; $4cde: $89
	cp   b                                           ; $4cdf: $b8
	add  [hl]                                        ; $4ce0: $86
	ld   l, c                                        ; $4ce1: $69
	sbc  b                                           ; $4ce2: $98
	ld   a, c                                        ; $4ce3: $79
	ld   a, b                                        ; $4ce4: $78
	adc  b                                           ; $4ce5: $88
	xor  b                                           ; $4ce6: $a8
	and  a                                           ; $4ce7: $a7
	ld   l, b                                        ; $4ce8: $68
	ld   l, c                                        ; $4ce9: $69
	sbc  c                                           ; $4cea: $99
	sub  a                                           ; $4ceb: $97
	ld   l, b                                        ; $4cec: $68
	ld   a, d                                        ; $4ced: $7a
	or   [hl]                                        ; $4cee: $b6
	halt                                             ; $4cef: $76
	ld   a, d                                        ; $4cf0: $7a
	sbc  b                                           ; $4cf1: $98
	add  a                                           ; $4cf2: $87
	ld   a, c                                        ; $4cf3: $79
	adc  b                                           ; $4cf4: $88
	sub  [hl]                                        ; $4cf5: $96
	adc  b                                           ; $4cf6: $88
	adc  c                                           ; $4cf7: $89
	add  [hl]                                        ; $4cf8: $86
	sub  a                                           ; $4cf9: $97
	adc  d                                           ; $4cfa: $8a
	ld   a, c                                        ; $4cfb: $79
	adc  b                                           ; $4cfc: $88
	sbc  b                                           ; $4cfd: $98
	add  a                                           ; $4cfe: $87
	add  [hl]                                        ; $4cff: $86
	sbc  b                                           ; $4d00: $98
	adc  c                                           ; $4d01: $89
	ld   l, b                                        ; $4d02: $68
	ld   [hl], a                                     ; $4d03: $77
	sub  a                                           ; $4d04: $97
	adc  b                                           ; $4d05: $88
	sbc  b                                           ; $4d06: $98
	cp   b                                           ; $4d07: $b8
	ld   h, [hl]                                     ; $4d08: $66
	ld   e, c                                        ; $4d09: $59
	adc  b                                           ; $4d0a: $88
	sub  [hl]                                        ; $4d0b: $96
	ld   a, c                                        ; $4d0c: $79
	ld   a, c                                        ; $4d0d: $79
	sub  [hl]                                        ; $4d0e: $96
	add  a                                           ; $4d0f: $87
	sbc  d                                           ; $4d10: $9a
	ld   [hl], a                                     ; $4d11: $77
	ld   [hl], a                                     ; $4d12: $77
	adc  c                                           ; $4d13: $89
	ld   a, c                                        ; $4d14: $79
	ld   [hl], a                                     ; $4d15: $77
	sub  [hl]                                        ; $4d16: $96
	adc  b                                           ; $4d17: $88
	adc  c                                           ; $4d18: $89
	halt                                             ; $4d19: $76
	sbc  b                                           ; $4d1a: $98
	adc  c                                           ; $4d1b: $89
	ld   h, a                                        ; $4d1c: $67
	ld   a, b                                        ; $4d1d: $78
	xor  c                                           ; $4d1e: $a9
	ld   [hl], a                                     ; $4d1f: $77
	ld   l, b                                        ; $4d20: $68
	sbc  b                                           ; $4d21: $98
	adc  b                                           ; $4d22: $88
	ld   [hl], a                                     ; $4d23: $77
	sbc  c                                           ; $4d24: $99
	xor  c                                           ; $4d25: $a9
	halt                                             ; $4d26: $76
	adc  b                                           ; $4d27: $88
	sbc  d                                           ; $4d28: $9a
	ld   h, a                                        ; $4d29: $67
	ld   d, a                                        ; $4d2a: $57
	sbc  e                                           ; $4d2b: $9b
	cp   b                                           ; $4d2c: $b8
	ld   h, a                                        ; $4d2d: $67
	adc  c                                           ; $4d2e: $89
	xor  c                                           ; $4d2f: $a9
	ld   [hl], a                                     ; $4d30: $77
	ld   h, a                                        ; $4d31: $67
	sbc  b                                           ; $4d32: $98
	adc  c                                           ; $4d33: $89
	ld   l, b                                        ; $4d34: $68
	adc  b                                           ; $4d35: $88
	xor  b                                           ; $4d36: $a8
	add  a                                           ; $4d37: $87
	ld   l, b                                        ; $4d38: $68
	sbc  b                                           ; $4d39: $98
	sub  a                                           ; $4d3a: $97
	ld   [hl], a                                     ; $4d3b: $77
	ld   a, b                                        ; $4d3c: $78
	adc  c                                           ; $4d3d: $89
	sbc  b                                           ; $4d3e: $98
	adc  b                                           ; $4d3f: $88
	sub  a                                           ; $4d40: $97
	sub  a                                           ; $4d41: $97
	ld   a, c                                        ; $4d42: $79
	ld   a, c                                        ; $4d43: $79
	add  a                                           ; $4d44: $87
	add  a                                           ; $4d45: $87
	ld   a, c                                        ; $4d46: $79
	adc  c                                           ; $4d47: $89
	sub  a                                           ; $4d48: $97
	adc  b                                           ; $4d49: $88
	adc  c                                           ; $4d4a: $89
	sub  a                                           ; $4d4b: $97
	ld   [hl], a                                     ; $4d4c: $77
	adc  c                                           ; $4d4d: $89
	sbc  b                                           ; $4d4e: $98
	ld   [hl], a                                     ; $4d4f: $77
	adc  b                                           ; $4d50: $88
	sbc  b                                           ; $4d51: $98
	add  a                                           ; $4d52: $87
	add  a                                           ; $4d53: $87
	adc  b                                           ; $4d54: $88
	adc  b                                           ; $4d55: $88
	adc  b                                           ; $4d56: $88
	sbc  b                                           ; $4d57: $98
	adc  b                                           ; $4d58: $88
	ld   a, c                                        ; $4d59: $79
	adc  b                                           ; $4d5a: $88
	add  a                                           ; $4d5b: $87
	add  a                                           ; $4d5c: $87
	sbc  b                                           ; $4d5d: $98
	adc  b                                           ; $4d5e: $88
	ld   a, b                                        ; $4d5f: $78
	adc  b                                           ; $4d60: $88
	adc  b                                           ; $4d61: $88
	adc  b                                           ; $4d62: $88
	ld   a, b                                        ; $4d63: $78
	adc  c                                           ; $4d64: $89
	add  a                                           ; $4d65: $87
	ld   a, b                                        ; $4d66: $78
	sbc  b                                           ; $4d67: $98
	sbc  b                                           ; $4d68: $98
	add  a                                           ; $4d69: $87
	ld   a, b                                        ; $4d6a: $78
	adc  b                                           ; $4d6b: $88
	adc  c                                           ; $4d6c: $89
	adc  b                                           ; $4d6d: $88
	adc  b                                           ; $4d6e: $88
	add  a                                           ; $4d6f: $87
	ld   a, c                                        ; $4d70: $79
	adc  c                                           ; $4d71: $89
	sub  a                                           ; $4d72: $97
	add  a                                           ; $4d73: $87
	adc  b                                           ; $4d74: $88
	adc  b                                           ; $4d75: $88
	adc  b                                           ; $4d76: $88
	adc  b                                           ; $4d77: $88
	adc  b                                           ; $4d78: $88
	adc  b                                           ; $4d79: $88
	add  a                                           ; $4d7a: $87
	adc  b                                           ; $4d7b: $88
	adc  b                                           ; $4d7c: $88
	sbc  b                                           ; $4d7d: $98
	sbc  b                                           ; $4d7e: $98
	ld   a, c                                        ; $4d7f: $79
	adc  b                                           ; $4d80: $88
	add  a                                           ; $4d81: $87
	add  a                                           ; $4d82: $87
	ld   a, b                                        ; $4d83: $78
	ld   a, b                                        ; $4d84: $78
	add  a                                           ; $4d85: $87
	sbc  b                                           ; $4d86: $98
	adc  c                                           ; $4d87: $89
	adc  b                                           ; $4d88: $88
	ld   a, b                                        ; $4d89: $78
	adc  c                                           ; $4d8a: $89
	sbc  b                                           ; $4d8b: $98
	add  a                                           ; $4d8c: $87
	adc  b                                           ; $4d8d: $88
	adc  b                                           ; $4d8e: $88
	add  a                                           ; $4d8f: $87
	ld   a, b                                        ; $4d90: $78
	adc  b                                           ; $4d91: $88
	adc  b                                           ; $4d92: $88
	add  a                                           ; $4d93: $87
	adc  c                                           ; $4d94: $89
	sbc  c                                           ; $4d95: $99
	adc  b                                           ; $4d96: $88
	adc  b                                           ; $4d97: $88
	adc  c                                           ; $4d98: $89
	adc  b                                           ; $4d99: $88
	adc  b                                           ; $4d9a: $88
	adc  b                                           ; $4d9b: $88
	adc  b                                           ; $4d9c: $88
	adc  c                                           ; $4d9d: $89
	sbc  b                                           ; $4d9e: $98
	adc  b                                           ; $4d9f: $88
	adc  c                                           ; $4da0: $89
	adc  c                                           ; $4da1: $89
	sbc  b                                           ; $4da2: $98
	adc  b                                           ; $4da3: $88
	adc  b                                           ; $4da4: $88
	adc  b                                           ; $4da5: $88
	adc  b                                           ; $4da6: $88
	adc  c                                           ; $4da7: $89
	adc  b                                           ; $4da8: $88
	add  a                                           ; $4da9: $87
	adc  b                                           ; $4daa: $88
	sbc  c                                           ; $4dab: $99
	adc  b                                           ; $4dac: $88
	adc  b                                           ; $4dad: $88
	adc  c                                           ; $4dae: $89
	sbc  c                                           ; $4daf: $99
	adc  b                                           ; $4db0: $88
	adc  b                                           ; $4db1: $88
	adc  b                                           ; $4db2: $88
	adc  b                                           ; $4db3: $88
	adc  b                                           ; $4db4: $88
	sbc  c                                           ; $4db5: $99
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
	ld   de, $1111                                   ; $4ddf: $11 $11 $11
	ld   de, $1111                                   ; $4de2: $11 $11 $11
	ld   de, $1111                                   ; $4de5: $11 $11 $11
	ld   de, $1111                                   ; $4de8: $11 $11 $11
	ld   de, $1111                                   ; $4deb: $11 $11 $11
	ld   de, $1111                                   ; $4dee: $11 $11 $11
	ld   de, $1111                                   ; $4df1: $11 $11 $11
	ld   de, $0011                                   ; $4df4: $11 $11 $00
	ld   c, b                                        ; $4df7: $48
	ld   de, $1111                                   ; $4df8: $11 $11 $11
	ld   de, $1111                                   ; $4dfb: $11 $11 $11
	ld   de, $1111                                   ; $4dfe: $11 $11 $11
	ld   de, $5413                                   ; $4e01: $11 $13 $54
	ld   d, h                                        ; $4e04: $54
	ld   d, h                                        ; $4e05: $54
	ld   b, c                                        ; $4e06: $41
	rra                                              ; $4e07: $1f
	rst  $38                                         ; $4e08: $ff
	pop  af                                          ; $4e09: $f1
	ld   de, $1611                                   ; $4e0a: $11 $11 $16
	or   c                                           ; $4e0d: $b1
	ld   de, $df1c                                   ; $4e0e: $11 $1c $df
	sbc  h                                           ; $4e11: $9c
	rst  JumpTable                                         ; $4e12: $df
	sub  c                                           ; $4e13: $91
	ld   de, $1111                                   ; $4e14: $11 $11 $11
	ld   de, $1111                                   ; $4e17: $11 $11 $11
	ld   de, $1111                                   ; $4e1a: $11 $11 $11
	ld   de, $1111                                   ; $4e1d: $11 $11 $11
	ld   de, $5411                                   ; $4e20: $11 $11 $54
	ld   b, h                                        ; $4e23: $44
	or   [hl]                                        ; $4e24: $b6
	ld   de, $5454                                   ; $4e25: $11 $54 $54
	ld   h, a                                        ; $4e28: $67
	ld   [hl], d                                     ; $4e29: $72
	ld   de, $1111                                   ; $4e2a: $11 $11 $11
	ld   de, $1112                                   ; $4e2d: $11 $12 $11
	ld   [de], a                                     ; $4e30: $12
	ld   de, $1111                                   ; $4e31: $11 $11 $11
	ld   h, [hl]                                     ; $4e34: $66
	halt                                             ; $4e35: $76
	add  [hl]                                        ; $4e36: $86
	ld   de, $8888                                   ; $4e37: $11 $88 $88
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
	ld   [hl], a                                     ; $4e45: $77
	ld   [hl], a                                     ; $4e46: $77
	ld   a, b                                        ; $4e47: $78
	adc  b                                           ; $4e48: $88
	adc  b                                           ; $4e49: $88
	adc  b                                           ; $4e4a: $88
	adc  b                                           ; $4e4b: $88
	sbc  c                                           ; $4e4c: $99
	adc  b                                           ; $4e4d: $88
	sbc  c                                           ; $4e4e: $99
	sbc  c                                           ; $4e4f: $99
	sbc  c                                           ; $4e50: $99
	xor  d                                           ; $4e51: $aa
	sbc  c                                           ; $4e52: $99
	sbc  c                                           ; $4e53: $99
	sbc  c                                           ; $4e54: $99
	adc  c                                           ; $4e55: $89
	adc  b                                           ; $4e56: $88
	add  a                                           ; $4e57: $87
	ld   [hl], a                                     ; $4e58: $77
	ld   [hl], a                                     ; $4e59: $77
	ld   h, [hl]                                     ; $4e5a: $66
	ld   h, [hl]                                     ; $4e5b: $66
	ld   h, l                                        ; $4e5c: $65
	ld   d, l                                        ; $4e5d: $55
	ld   d, l                                        ; $4e5e: $55
	ld   d, l                                        ; $4e5f: $55
	ld   b, h                                        ; $4e60: $44
	ld   d, l                                        ; $4e61: $55
	ld   h, a                                        ; $4e62: $67
	adc  c                                           ; $4e63: $89
	xor  e                                           ; $4e64: $ab
	cp   e                                           ; $4e65: $bb
	call $ddcd                                       ; $4e66: $cd $cd $dd
	call c, $bbcc                                    ; $4e69: $dc $cc $bb
	xor  c                                           ; $4e6c: $a9
	sbc  b                                           ; $4e6d: $98
	sbc  b                                           ; $4e6e: $98
	ld   [hl], a                                     ; $4e6f: $77
	halt                                             ; $4e70: $76
	ld   h, [hl]                                     ; $4e71: $66
	ld   h, [hl]                                     ; $4e72: $66
	ld   h, [hl]                                     ; $4e73: $66
	ld   d, l                                        ; $4e74: $55
	ld   d, h                                        ; $4e75: $54
	ld   b, h                                        ; $4e76: $44
	inc  sp                                          ; $4e77: $33
	inc  sp                                          ; $4e78: $33
	inc  sp                                          ; $4e79: $33
	ld   b, h                                        ; $4e7a: $44
	ld   h, a                                        ; $4e7b: $67
	sbc  d                                           ; $4e7c: $9a
	cp   h                                           ; $4e7d: $bc
	call $deed                                       ; $4e7e: $cd $ed $de
	db   $ed                                         ; $4e81: $ed
	db   $dd                                         ; $4e82: $dd
	call c, $a9ba                                    ; $4e83: $dc $ba $a9
	xor  b                                           ; $4e86: $a8
	add  a                                           ; $4e87: $87
	ld   [hl], a                                     ; $4e88: $77
	ld   h, [hl]                                     ; $4e89: $66
	ld   h, [hl]                                     ; $4e8a: $66
	ld   h, [hl]                                     ; $4e8b: $66
	ld   h, [hl]                                     ; $4e8c: $66
	ld   d, l                                        ; $4e8d: $55
	ld   d, l                                        ; $4e8e: $55
	ld   b, h                                        ; $4e8f: $44
	inc  sp                                          ; $4e90: $33
	inc  sp                                          ; $4e91: $33
	ld   [hl+], a                                    ; $4e92: $22
	inc  sp                                          ; $4e93: $33
	ld   b, l                                        ; $4e94: $45
	ld   a, c                                        ; $4e95: $79
	xor  e                                           ; $4e96: $ab
	call z, $efee                                    ; $4e97: $cc $ee $ef
	xor  $ed                                         ; $4e9a: $ee $ed
	db   $ed                                         ; $4e9c: $ed
	call c, $99aa                                    ; $4e9d: $dc $aa $99
	adc  b                                           ; $4ea0: $88
	halt                                             ; $4ea1: $76
	ld   h, [hl]                                     ; $4ea2: $66
	ld   h, [hl]                                     ; $4ea3: $66
	ld   h, l                                        ; $4ea4: $65
	ld   d, l                                        ; $4ea5: $55
	ld   d, l                                        ; $4ea6: $55
	ld   d, h                                        ; $4ea7: $54
	ld   b, e                                        ; $4ea8: $43
	inc  sp                                          ; $4ea9: $33
	inc  sp                                          ; $4eaa: $33
	ld   [hl+], a                                    ; $4eab: $22
	inc  hl                                          ; $4eac: $23
	inc  [hl]                                        ; $4ead: $34
	ld   l, b                                        ; $4eae: $68
	xor  e                                           ; $4eaf: $ab
	call $ffde                                       ; $4eb0: $cd $de $ff
	rst  $38                                         ; $4eb3: $ff
	rst  $28                                         ; $4eb4: $ef
	db   $ed                                         ; $4eb5: $ed
	call c, $a9bb                                    ; $4eb6: $dc $bb $a9
	adc  b                                           ; $4eb9: $88
	halt                                             ; $4eba: $76
	ld   h, l                                        ; $4ebb: $65
	ld   d, l                                        ; $4ebc: $55
	ld   d, l                                        ; $4ebd: $55
	ld   d, l                                        ; $4ebe: $55
	ld   b, h                                        ; $4ebf: $44
	ld   b, h                                        ; $4ec0: $44
	inc  sp                                          ; $4ec1: $33
	ld   [hl+], a                                    ; $4ec2: $22
	ld   [hl+], a                                    ; $4ec3: $22
	ld   [de], a                                     ; $4ec4: $12
	inc  hl                                          ; $4ec5: $23
	ld   b, [hl]                                     ; $4ec6: $46
	ld   a, c                                        ; $4ec7: $79
	cp   h                                           ; $4ec8: $bc
	sbc  $ff                                         ; $4ec9: $de $ff
	rst  $38                                         ; $4ecb: $ff
	rst  $38                                         ; $4ecc: $ff
	rst  $38                                         ; $4ecd: $ff
	db   $fd                                         ; $4ece: $fd
	res  7, d                                        ; $4ecf: $cb $ba
	sbc  b                                           ; $4ed1: $98
	add  a                                           ; $4ed2: $87
	ld   h, l                                        ; $4ed3: $65
	ld   d, h                                        ; $4ed4: $54
	ld   b, h                                        ; $4ed5: $44
	ld   b, h                                        ; $4ed6: $44
	ld   b, e                                        ; $4ed7: $43
	inc  sp                                          ; $4ed8: $33
	inc  sp                                          ; $4ed9: $33
	ld   [hl+], a                                    ; $4eda: $22
	ld   [hl+], a                                    ; $4edb: $22
	ld   de, $3522                                   ; $4edc: $11 $22 $35
	ld   a, b                                        ; $4edf: $78
	xor  e                                           ; $4ee0: $ab
	sbc  $ff                                         ; $4ee1: $de $ff
	rst  $38                                         ; $4ee3: $ff
	rst  $38                                         ; $4ee4: $ff
	rst  $38                                         ; $4ee5: $ff
	rst  $38                                         ; $4ee6: $ff
	db   $dd                                         ; $4ee7: $dd
	res  5, b                                        ; $4ee8: $cb $a8
	add  a                                           ; $4eea: $87
	ld   h, l                                        ; $4eeb: $65
	ld   b, h                                        ; $4eec: $44
	ld   b, h                                        ; $4eed: $44
	inc  sp                                          ; $4eee: $33
	inc  sp                                          ; $4eef: $33
	ld   [hl-], a                                    ; $4ef0: $32
	ld   [hl+], a                                    ; $4ef1: $22
	ld   [hl+], a                                    ; $4ef2: $22
	ld   hl, $2211                                   ; $4ef3: $21 $11 $22
	ld   b, [hl]                                     ; $4ef6: $46
	adc  c                                           ; $4ef7: $89
	cp   l                                           ; $4ef8: $bd
	rst  $28                                         ; $4ef9: $ef
	rst  $38                                         ; $4efa: $ff
	rst  $38                                         ; $4efb: $ff
	rst  $38                                         ; $4efc: $ff
	rst  $38                                         ; $4efd: $ff
	cp   $dc                                         ; $4efe: $fe $dc
	cp   d                                           ; $4f00: $ba
	sbc  b                                           ; $4f01: $98
	halt                                             ; $4f02: $76
	ld   d, h                                        ; $4f03: $54
	ld   b, e                                        ; $4f04: $43
	inc  sp                                          ; $4f05: $33
	inc  sp                                          ; $4f06: $33
	ld   [hl+], a                                    ; $4f07: $22
	ld   [hl+], a                                    ; $4f08: $22
	ld   de, $1111                                   ; $4f09: $11 $11 $11
	ld   bc, $5823                                   ; $4f0c: $01 $23 $58
	xor  e                                           ; $4f0f: $ab
	adc  $ff                                         ; $4f10: $ce $ff
	rst  $38                                         ; $4f12: $ff
	rst  $38                                         ; $4f13: $ff
	rst  $38                                         ; $4f14: $ff
	rst  $38                                         ; $4f15: $ff
	cp   $cc                                         ; $4f16: $fe $cc
	xor  c                                           ; $4f18: $a9
	add  a                                           ; $4f19: $87
	ld   h, l                                        ; $4f1a: $65
	ld   b, e                                        ; $4f1b: $43
	inc  sp                                          ; $4f1c: $33
	ld   [hl-], a                                    ; $4f1d: $32
	ld   [hl+], a                                    ; $4f1e: $22
	ld   hl, $1111                                   ; $4f1f: $21 $11 $11
	ld   de, $1211                                   ; $4f22: $11 $11 $12
	ld   [hl], $9a                                   ; $4f25: $36 $9a
	call $ffff                                       ; $4f27: $cd $ff $ff
	rst  $38                                         ; $4f2a: $ff
	rst  $38                                         ; $4f2b: $ff
	rst  $38                                         ; $4f2c: $ff
	rst  $38                                         ; $4f2d: $ff
	db   $ec                                         ; $4f2e: $ec
	jp   z, $7688                                    ; $4f2f: $ca $88 $76

	ld   d, h                                        ; $4f32: $54
	ld   [hl-], a                                    ; $4f33: $32
	ld   [hl+], a                                    ; $4f34: $22
	ld   [hl+], a                                    ; $4f35: $22
	ld   hl, $1111                                   ; $4f36: $21 $11 $11
	ld   bc, $1111                                   ; $4f39: $01 $11 $11
	dec  h                                           ; $4f3c: $25
	sbc  d                                           ; $4f3d: $9a
	adc  $ff                                         ; $4f3e: $ce $ff
	rst  $38                                         ; $4f40: $ff
	rst  $38                                         ; $4f41: $ff
	rst  $38                                         ; $4f42: $ff
	rst  $38                                         ; $4f43: $ff
	rst  $38                                         ; $4f44: $ff
	cp   $ca                                         ; $4f45: $fe $ca
	sbc  c                                           ; $4f47: $99
	halt                                             ; $4f48: $76
	ld   d, h                                        ; $4f49: $54
	inc  sp                                          ; $4f4a: $33
	ld   [hl+], a                                    ; $4f4b: $22
	ld   [hl+], a                                    ; $4f4c: $22
	ld   de, $1111                                   ; $4f4d: $11 $11 $11
	ld   de, $1111                                   ; $4f50: $11 $11 $11
	ld   h, $8a                                      ; $4f53: $26 $8a
	cp   l                                           ; $4f55: $bd
	rst  $38                                         ; $4f56: $ff
	rst  $38                                         ; $4f57: $ff
	rst  $38                                         ; $4f58: $ff
	rst  $38                                         ; $4f59: $ff
	rst  $38                                         ; $4f5a: $ff
	rst  $38                                         ; $4f5b: $ff
	cp   $ca                                         ; $4f5c: $fe $ca
	xor  b                                           ; $4f5e: $a8
	halt                                             ; $4f5f: $76
	ld   d, l                                        ; $4f60: $55
	inc  sp                                          ; $4f61: $33
	ld   [hl+], a                                    ; $4f62: $22
	ld   hl, $1111                                   ; $4f63: $21 $11 $11
	ld   de, $1111                                   ; $4f66: $11 $11 $11
	ld   de, $ab37                                   ; $4f69: $11 $37 $ab
	rst  $28                                         ; $4f6c: $ef
	rst  $38                                         ; $4f6d: $ff
	rst  $38                                         ; $4f6e: $ff
	rst  $38                                         ; $4f6f: $ff
	rst  $38                                         ; $4f70: $ff
	rst  $38                                         ; $4f71: $ff
	rst  $38                                         ; $4f72: $ff
	db   $ec                                         ; $4f73: $ec
	and  [hl]                                        ; $4f74: $a6
	ld   d, h                                        ; $4f75: $54
	ld   d, l                                        ; $4f76: $55
	ld   [hl-], a                                    ; $4f77: $32
	ld   de, $1111                                   ; $4f78: $11 $11 $11
	ld   de, $9813                                   ; $4f7b: $11 $13 $98
	cp   d                                           ; $4f7e: $ba
	adc  c                                           ; $4f7f: $89
	xor  a                                           ; $4f80: $af
	rst  $38                                         ; $4f81: $ff
	db   $fd                                         ; $4f82: $fd
	cp   d                                           ; $4f83: $ba
	res  7, c                                        ; $4f84: $cb $b9
	ld   d, h                                        ; $4f86: $54
	ld   l, e                                        ; $4f87: $6b
	xor  h                                           ; $4f88: $ac
	jp   c, $ffbd                                    ; $4f89: $da $bd $ff

	cp   e                                           ; $4f8c: $bb
	ld   [hl], h                                     ; $4f8d: $74
	ld   h, d                                        ; $4f8e: $62
	ld   de, $1111                                   ; $4f8f: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $4f92: $11 $13 $ff
	rst  $38                                         ; $4f95: $ff
	db   $fc                                         ; $4f96: $fc
	rst  $28                                         ; $4f97: $ef
	ei                                               ; $4f98: $fb
	ld   b, c                                        ; $4f99: $41
	inc  de                                          ; $4f9a: $13
	sbc  c                                           ; $4f9b: $99
	adc  b                                           ; $4f9c: $88
	ld   a, l                                        ; $4f9d: $7d
	rst  $38                                         ; $4f9e: $ff
	db   $fc                                         ; $4f9f: $fc
	or   a                                           ; $4fa0: $b7
	sbc  l                                           ; $4fa1: $9d
	ret  z                                           ; $4fa2: $c8

	ld   d, [hl]                                     ; $4fa3: $56
	ld   [hl], a                                     ; $4fa4: $77
	sub  h                                           ; $4fa5: $94
	ld   de, $1111                                   ; $4fa6: $11 $11 $11
	ld   de, $ff1f                                   ; $4fa9: $11 $1f $ff
	rst  $38                                         ; $4fac: $ff
	adc  l                                           ; $4fad: $8d
	rst  $38                                         ; $4fae: $ff
	ld   de, $7e11                                   ; $4faf: $11 $11 $7e
	ret  z                                           ; $4fb2: $c8

	sbc  [hl]                                        ; $4fb3: $9e
	rst  $38                                         ; $4fb4: $ff
	ei                                               ; $4fb5: $fb
	ld   d, [hl]                                     ; $4fb6: $56
	adc  d                                           ; $4fb7: $8a
	db   $db                                         ; $4fb8: $db
	ld   d, [hl]                                     ; $4fb9: $56
	cp   e                                           ; $4fba: $bb
	xor  b                                           ; $4fbb: $a8
	ld   d, c                                        ; $4fbc: $51
	ld   de, $1111                                   ; $4fbd: $11 $11 $11
	ld   de, $ffff                                   ; $4fc0: $11 $ff $ff
	di                                               ; $4fc3: $f3
	cp   b                                           ; $4fc4: $b8
	and  c                                           ; $4fc5: $a1
	ld   [de], a                                     ; $4fc6: $12
	ld   e, $fd                                      ; $4fc7: $1e $fd
	cp   c                                           ; $4fc9: $b9
	db   $fd                                         ; $4fca: $fd
	db   $fd                                         ; $4fcb: $fd
	inc  sp                                          ; $4fcc: $33
	ld   a, h                                        ; $4fcd: $7c
	rst  $38                                         ; $4fce: $ff
	sub  $9b                                         ; $4fcf: $d6 $9b
	cp   c                                           ; $4fd1: $b9
	add  a                                           ; $4fd2: $87
	ld   b, d                                        ; $4fd3: $42
	ld   de, $1111                                   ; $4fd4: $11 $11 $11
	ld   e, $ff                                      ; $4fd7: $1e $ff
	rst  $38                                         ; $4fd9: $ff
	ld   [de], a                                     ; $4fda: $12
	dec  [hl]                                        ; $4fdb: $35
	ld   b, c                                        ; $4fdc: $41
	ld   h, d                                        ; $4fdd: $62
	adc  a                                           ; $4fde: $8f
	db   $fd                                         ; $4fdf: $fd
	ld   l, c                                        ; $4fe0: $69
	adc  c                                           ; $4fe1: $89
	push de                                          ; $4fe2: $d5
	add  hl, sp                                      ; $4fe3: $39
	rst  $28                                         ; $4fe4: $ef
	rst  $38                                         ; $4fe5: $ff
	add  h                                           ; $4fe6: $84
	sbc  c                                           ; $4fe7: $99
	xor  h                                           ; $4fe8: $ac
	add  [hl]                                        ; $4fe9: $86
	ld   hl, $1111                                   ; $4fea: $21 $11 $11
	ld   de, $ff2f                                   ; $4fed: $11 $2f $ff
	rst  $30                                         ; $4ff0: $f7
	inc  de                                          ; $4ff1: $13
	add  hl, hl                                      ; $4ff2: $29
	ld   [de], a                                     ; $4ff3: $12
	add  l                                           ; $4ff4: $85
	rst  $38                                         ; $4ff5: $ff
	call nc, Call_0dc_5d35                           ; $4ff6: $d4 $35 $5d
	sub  d                                           ; $4ff9: $92
	ld   a, a                                        ; $4ffa: $7f
	rst  $38                                         ; $4ffb: $ff
	ld   sp, hl                                      ; $4ffc: $f9
	ld   h, $ab                                      ; $4ffd: $26 $ab
	db   $fc                                         ; $4fff: $fc
	add  l                                           ; $5000: $85
	ld   de, $1111                                   ; $5001: $11 $11 $11
	ld   de, $ffff                                   ; $5004: $11 $ff $ff
	pop  af                                          ; $5007: $f1
	ld   de, $1d73                                   ; $5008: $11 $73 $1d
	ld   l, a                                        ; $500b: $6f
	rst  $38                                         ; $500c: $ff
	ld   b, c                                        ; $500d: $41
	ld   de, $66ae                                   ; $500e: $11 $ae $66
	rst  $38                                         ; $5011: $ff
	rst  $38                                         ; $5012: $ff
	sub  c                                           ; $5013: $91
	add  hl, bc                                      ; $5014: $09
	cp   a                                           ; $5015: $bf
	ld   a, [$1173]                                  ; $5016: $fa $73 $11
	ld   de, $1311                                   ; $5019: $11 $11 $13
	rst  $38                                         ; $501c: $ff
	rst  $38                                         ; $501d: $ff
	ld   de, $a112                                   ; $501e: $11 $12 $a1
	cp   h                                           ; $5021: $bc
	rst  JumpTable                                         ; $5022: $df
	rst  $30                                         ; $5023: $f7
	ld   de, $fd15                                   ; $5024: $11 $15 $fd
	adc  h                                           ; $5027: $8c
	rst  $38                                         ; $5028: $ff
	ld   a, [$9e21]                                  ; $5029: $fa $21 $9e
	rst  $38                                         ; $502c: $ff
	ret  z                                           ; $502d: $c8

	ld   b, c                                        ; $502e: $41
	ld   de, $1111                                   ; $502f: $11 $11 $11
	rra                                              ; $5032: $1f
	rst  $38                                         ; $5033: $ff
	ei                                               ; $5034: $fb
	ld   de, $561c                                   ; $5035: $11 $1c $56
	ld   a, [$b1ff]                                  ; $5038: $fa $ff $b1
	ld   de, $fc1f                                   ; $503b: $11 $1f $fc
	cp   a                                           ; $503e: $bf
	db   $fd                                         ; $503f: $fd
	and  e                                           ; $5040: $a3
	jr   @+$01                                       ; $5041: $18 $ff

	db   $fd                                         ; $5043: $fd
	add  h                                           ; $5044: $84
	ld   de, $1111                                   ; $5045: $11 $11 $11
	ld   de, $ff4f                                   ; $5048: $11 $4f $ff
	pop  af                                          ; $504b: $f1
	ld   de, $3f8e                                   ; $504c: $11 $8e $3f
	rst  $38                                         ; $504f: $ff
	rst  $38                                         ; $5050: $ff
	ld   de, $ef11                                   ; $5051: $11 $11 $ef
	db   $fc                                         ; $5054: $fc
	db   $db                                         ; $5055: $db
	sub  [hl]                                        ; $5056: $96
	ld   d, e                                        ; $5057: $53
	adc  a                                           ; $5058: $8f
	rst  $38                                         ; $5059: $ff
	add  sp, $51                                     ; $505a: $e8 $51
	ld   de, $1111                                   ; $505c: $11 $11 $11
	ld   de, $ffff                                   ; $505f: $11 $ff $ff
	ld   d, c                                        ; $5062: $51
	inc  de                                          ; $5063: $13
	ld   a, [$dfdf]                                  ; $5064: $fa $df $df
	ldh  a, [c]                                      ; $5067: $f2
	ld   de, $ff29                                   ; $5068: $11 $29 $ff
	call c, Call_0dc_4597                            ; $506b: $dc $97 $45
	ld   l, b                                        ; $506e: $68
	rst  $38                                         ; $506f: $ff
	db   $ec                                         ; $5070: $ec
	halt                                             ; $5071: $76
	ld   sp, $1111                                   ; $5072: $31 $11 $11
	ld   de, $ff15                                   ; $5075: $11 $15 $ff
	ld   a, [$1e11]                                  ; $5078: $fa $11 $1e
	ld   sp, hl                                      ; $507b: $f9
	rst  $38                                         ; $507c: $ff
	rst  $38                                         ; $507d: $ff
	sub  c                                           ; $507e: $91
	ld   [de], a                                     ; $507f: $12
	adc  a                                           ; $5080: $8f
	rst  $38                                         ; $5081: $ff
	rst  ToBoot                                         ; $5082: $c7
	ld   b, d                                        ; $5083: $42
	ld   c, b                                        ; $5084: $48
	cp   a                                           ; $5085: $bf
	db   $fd                                         ; $5086: $fd
	and  a                                           ; $5087: $a7
	ld   [hl], l                                     ; $5088: $75
	ld   de, $1111                                   ; $5089: $11 $11 $11
	ld   de, $ff6f                                   ; $508c: $11 $6f $ff
	and  c                                           ; $508f: $a1
	ld   de, $cfbc                                   ; $5090: $11 $bc $cf
	rst  $38                                         ; $5093: $ff
	ld   hl, sp+$11                                  ; $5094: $f8 $11
	ld   a, [hl-]                                    ; $5096: $3a
	rst  $38                                         ; $5097: $ff
	ld   a, [$3564]                                  ; $5098: $fa $64 $35
	sbc  l                                           ; $509b: $9d
	rst  $38                                         ; $509c: $ff
	ret  z                                           ; $509d: $c8

	ld   h, [hl]                                     ; $509e: $66
	ld   [hl], e                                     ; $509f: $73
	ld   de, $1111                                   ; $50a0: $11 $11 $11
	jr   @+$01                                       ; $50a3: $18 $ff

	cp   $11                                         ; $50a5: $fe $11
	add  hl, de                                      ; $50a7: $19
	xor  [hl]                                        ; $50a8: $ae
	rst  $38                                         ; $50a9: $ff
	db   $fd                                         ; $50aa: $fd
	ld   h, c                                        ; $50ab: $61
	ld   h, $ef                                      ; $50ac: $26 $ef
	call c, Call_0dc_4587                            ; $50ae: $dc $87 $45
	ld   l, c                                        ; $50b1: $69
	xor  $ca                                         ; $50b2: $ee $ca
	ld   [hl], h                                     ; $50b4: $74
	ld   d, l                                        ; $50b5: $55
	ld   de, $1111                                   ; $50b6: $11 $11 $11
	rra                                              ; $50b9: $1f
	rst  $38                                         ; $50ba: $ff
	ld   a, [$7a13]                                  ; $50bb: $fa $13 $7a
	cp   l                                           ; $50be: $bd
	cp   h                                           ; $50bf: $bc
	db   $fc                                         ; $50c0: $fc
	add  a                                           ; $50c1: $87
	ld   a, b                                        ; $50c2: $78
	call z, $96aa                                    ; $50c3: $cc $aa $96
	ld   h, a                                        ; $50c6: $67
	ld   a, c                                        ; $50c7: $79
	cp   d                                           ; $50c8: $ba
	halt                                             ; $50c9: $76
	ld   h, [hl]                                     ; $50ca: $66
	ld   sp, $1111                                   ; $50cb: $31 $11 $11
	rra                                              ; $50ce: $1f
	cp   $f7                                         ; $50cf: $fe $f7
	ld   b, [hl]                                     ; $50d1: $46
	adc  d                                           ; $50d2: $8a
	adc  $ab                                         ; $50d3: $ce $ab
	cp   e                                           ; $50d5: $bb
	xor  d                                           ; $50d6: $aa
	sbc  d                                           ; $50d7: $9a
	cp   e                                           ; $50d8: $bb
	xor  d                                           ; $50d9: $aa
	add  h                                           ; $50da: $84
	ld   [hl], $9a                                   ; $50db: $36 $9a
	cp   c                                           ; $50dd: $b9
	ld   [hl], l                                     ; $50de: $75
	ld   hl, $3212                                   ; $50df: $21 $12 $32
	ld   de, $daff                                   ; $50e2: $11 $ff $da
	ld   h, h                                        ; $50e5: $64
	adc  e                                           ; $50e6: $8b
	xor  h                                           ; $50e7: $ac
	res  5, h                                        ; $50e8: $cb $ac
	jp   z, $bab9                                    ; $50ea: $ca $b9 $ba

	xor  d                                           ; $50ed: $aa
	jp   z, Jump_0dc_4743                            ; $50ee: $ca $43 $47

	xor  c                                           ; $50f1: $a9
	add  [hl]                                        ; $50f2: $86
	ld   d, d                                        ; $50f3: $52
	ld   [de], a                                     ; $50f4: $12
	ld   b, e                                        ; $50f5: $43
	ld   de, $dd6c                                   ; $50f6: $11 $6c $dd
	ld   [hl], a                                     ; $50f9: $77
	ld   a, c                                        ; $50fa: $79
	xor  h                                           ; $50fb: $ac
	reti                                             ; $50fc: $d9


	cp   d                                           ; $50fd: $ba
	call c, $8abc                                    ; $50fe: $dc $bc $8a
	sbc  e                                           ; $5101: $9b
	ret                                              ; $5102: $c9


	sub  [hl]                                        ; $5103: $96
	ld   [hl], a                                     ; $5104: $77
	ld   [hl], a                                     ; $5105: $77
	ld   [hl], l                                     ; $5106: $75
	inc  [hl]                                        ; $5107: $34
	dec  h                                           ; $5108: $25
	ld   b, d                                        ; $5109: $42
	ld   hl, $9d86                                   ; $510a: $21 $86 $9d
	or   [hl]                                        ; $510d: $b6
	ld   c, c                                        ; $510e: $49
	sbc  e                                           ; $510f: $9b
	cp   c                                           ; $5110: $b9
	cp   e                                           ; $5111: $bb
	jp   z, $d8bc                                    ; $5112: $ca $bc $d8

	cp   e                                           ; $5115: $bb
	sbc  d                                           ; $5116: $9a
	adc  c                                           ; $5117: $89
	ld   h, a                                        ; $5118: $67
	adc  b                                           ; $5119: $88
	sub  l                                           ; $511a: $95
	ld   [hl-], a                                    ; $511b: $32
	ld   b, l                                        ; $511c: $45
	ld   d, d                                        ; $511d: $52
	ld   de, $419d                                   ; $511e: $11 $9d $41
	ld   c, c                                        ; $5121: $49
	db   $fd                                         ; $5122: $fd
	and  [hl]                                        ; $5123: $a6
	ld   d, [hl]                                     ; $5124: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5125: $cf
	jp   z, $c89a                                    ; $5126: $ca $9a $c8

	cp   h                                           ; $5129: $bc
	call z, $9c77                                    ; $512a: $cc $77 $9c
	or   a                                           ; $512d: $b7
	ld   h, e                                        ; $512e: $63
	ld   b, [hl]                                     ; $512f: $46
	ld   h, [hl]                                     ; $5130: $66
	ld   h, h                                        ; $5131: $64
	ld   sp, $9818                                   ; $5132: $31 $18 $98
	sub  h                                           ; $5135: $94
	ld   a, [de]                                     ; $5136: $1a
	ei                                               ; $5137: $fb
	add  l                                           ; $5138: $85
	ld   c, d                                        ; $5139: $4a
	rst  $38                                         ; $513a: $ff
	cp   d                                           ; $513b: $ba
	ld   a, b                                        ; $513c: $78
	xor  d                                           ; $513d: $aa
	cp   h                                           ; $513e: $bc
	ret                                              ; $513f: $c9


	add  [hl]                                        ; $5140: $86
	sbc  h                                           ; $5141: $9c
	sub  [hl]                                        ; $5142: $96
	inc  [hl]                                        ; $5143: $34
	ld   e, b                                        ; $5144: $58
	ld   [hl], l                                     ; $5145: $75
	ld   b, e                                        ; $5146: $43
	ld   [de], a                                     ; $5147: $12
	adc  d                                           ; $5148: $8a
	ld   h, l                                        ; $5149: $65
	ld   d, a                                        ; $514a: $57
	sbc  d                                           ; $514b: $9a
	and  l                                           ; $514c: $a5
	cp   e                                           ; $514d: $bb
	adc  l                                           ; $514e: $8d
	db   $eb                                         ; $514f: $eb
	adc  b                                           ; $5150: $88
	sbc  e                                           ; $5151: $9b
	db   $ec                                         ; $5152: $ec
	or   a                                           ; $5153: $b7
	ld   e, c                                        ; $5154: $59
	cp   c                                           ; $5155: $b9
	sbc  b                                           ; $5156: $98
	ld   [hl], l                                     ; $5157: $75
	ld   h, [hl]                                     ; $5158: $66
	ld   [hl], a                                     ; $5159: $77
	ld   d, l                                        ; $515a: $55
	inc  de                                          ; $515b: $13
	ld   l, c                                        ; $515c: $69
	ld   [hl], l                                     ; $515d: $75
	ld   b, l                                        ; $515e: $45
	cp   c                                           ; $515f: $b9
	and  a                                           ; $5160: $a7
	daa                                              ; $5161: $27
	ld   a, a                                        ; $5162: $7f
	or   $9a                                         ; $5163: $f6 $9a
	adc  b                                           ; $5165: $88
	sbc  d                                           ; $5166: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5167: $cf
	ld   [hl], h                                     ; $5168: $74
	adc  d                                           ; $5169: $8a
	ld   hl, sp+$45                                  ; $516a: $f8 $45
	ld   e, c                                        ; $516c: $59
	and  [hl]                                        ; $516d: $a6
	ld   d, a                                        ; $516e: $57
	ld   h, h                                        ; $516f: $64
	inc  sp                                          ; $5170: $33
	ld   a, d                                        ; $5171: $7a
	sub  [hl]                                        ; $5172: $96
	inc  h                                           ; $5173: $24
	adc  c                                           ; $5174: $89
	and  a                                           ; $5175: $a7
	ld   h, [hl]                                     ; $5176: $66
	xor  a                                           ; $5177: $af
	xor  d                                           ; $5178: $aa
	sub  a                                           ; $5179: $97
	and  a                                           ; $517a: $a7
	xor  l                                           ; $517b: $ad
	jp   c, Jump_0dc_7b76                            ; $517c: $da $76 $7b

	and  a                                           ; $517f: $a7
	add  a                                           ; $5180: $87
	ld   [hl], l                                     ; $5181: $75
	ld   e, c                                        ; $5182: $59
	halt                                             ; $5183: $76
	ld   d, a                                        ; $5184: $57
	ld   [hl], l                                     ; $5185: $75
	ld   l, b                                        ; $5186: $68
	ld   [hl], h                                     ; $5187: $74
	ld   e, d                                        ; $5188: $5a
	ret                                              ; $5189: $c9


	ld   d, l                                        ; $518a: $55
	ld   l, e                                        ; $518b: $6b
	or   a                                           ; $518c: $b7
	jp   c, Jump_0dc_7b76                            ; $518d: $da $76 $7b

	jp   z, $6989                                    ; $5190: $ca $89 $69

	xor  d                                           ; $5193: $aa
	sub  a                                           ; $5194: $97
	halt                                             ; $5195: $76
	ld   h, a                                        ; $5196: $67
	sbc  b                                           ; $5197: $98
	add  [hl]                                        ; $5198: $86
	ld   d, [hl]                                     ; $5199: $56
	ld   a, b                                        ; $519a: $78
	sub  [hl]                                        ; $519b: $96
	ld   b, [hl]                                     ; $519c: $46
	ld   l, b                                        ; $519d: $68
	cp   b                                           ; $519e: $b8
	ld   [hl], a                                     ; $519f: $77
	sbc  b                                           ; $51a0: $98
	adc  d                                           ; $51a1: $8a
	adc  c                                           ; $51a2: $89
	or   a                                           ; $51a3: $b7
	adc  c                                           ; $51a4: $89
	cp   c                                           ; $51a5: $b9
	adc  b                                           ; $51a6: $88
	sbc  b                                           ; $51a7: $98
	ld   a, b                                        ; $51a8: $78
	adc  c                                           ; $51a9: $89
	add  [hl]                                        ; $51aa: $86
	halt                                             ; $51ab: $76
	ld   a, b                                        ; $51ac: $78
	ld   [hl], a                                     ; $51ad: $77
	sub  a                                           ; $51ae: $97
	ld   [hl], a                                     ; $51af: $77
	ld   [hl], a                                     ; $51b0: $77
	ld   a, c                                        ; $51b1: $79
	sub  a                                           ; $51b2: $97
	ld   [hl], a                                     ; $51b3: $77
	adc  b                                           ; $51b4: $88
	sbc  d                                           ; $51b5: $9a
	sbc  b                                           ; $51b6: $98
	adc  c                                           ; $51b7: $89
	sbc  d                                           ; $51b8: $9a
	sub  a                                           ; $51b9: $97
	adc  b                                           ; $51ba: $88
	sbc  d                                           ; $51bb: $9a
	adc  c                                           ; $51bc: $89
	add  a                                           ; $51bd: $87
	adc  b                                           ; $51be: $88
	ld   [hl], a                                     ; $51bf: $77
	sbc  b                                           ; $51c0: $98
	ld   [hl], a                                     ; $51c1: $77
	ld   a, b                                        ; $51c2: $78
	ld   [hl], a                                     ; $51c3: $77
	ld   [hl], a                                     ; $51c4: $77
	add  a                                           ; $51c5: $87
	ld   a, b                                        ; $51c6: $78
	xor  c                                           ; $51c7: $a9
	ld   [hl], a                                     ; $51c8: $77
	add  a                                           ; $51c9: $87
	adc  d                                           ; $51ca: $8a
	sbc  c                                           ; $51cb: $99
	ld   [hl], a                                     ; $51cc: $77
	sbc  d                                           ; $51cd: $9a
	sbc  b                                           ; $51ce: $98
	adc  b                                           ; $51cf: $88
	add  a                                           ; $51d0: $87
	sbc  c                                           ; $51d1: $99
	adc  b                                           ; $51d2: $88
	adc  b                                           ; $51d3: $88
	ld   a, b                                        ; $51d4: $78
	adc  b                                           ; $51d5: $88
	add  a                                           ; $51d6: $87
	adc  c                                           ; $51d7: $89
	ld   a, b                                        ; $51d8: $78
	ld   a, b                                        ; $51d9: $78
	add  a                                           ; $51da: $87
	ld   a, b                                        ; $51db: $78

Call_0dc_51dc:
	adc  c                                           ; $51dc: $89
	sbc  b                                           ; $51dd: $98
	adc  b                                           ; $51de: $88
	adc  b                                           ; $51df: $88
	add  a                                           ; $51e0: $87
	adc  b                                           ; $51e1: $88
	adc  c                                           ; $51e2: $89
	sbc  c                                           ; $51e3: $99
	sbc  b                                           ; $51e4: $98
	ld   a, b                                        ; $51e5: $78
	sbc  b                                           ; $51e6: $98
	add  a                                           ; $51e7: $87
	adc  b                                           ; $51e8: $88
	adc  b                                           ; $51e9: $88
	adc  b                                           ; $51ea: $88
	adc  b                                           ; $51eb: $88
	add  a                                           ; $51ec: $87
	adc  b                                           ; $51ed: $88
	adc  b                                           ; $51ee: $88
	ld   a, b                                        ; $51ef: $78
	adc  b                                           ; $51f0: $88
	adc  b                                           ; $51f1: $88
	sbc  b                                           ; $51f2: $98
	adc  b                                           ; $51f3: $88
	sbc  b                                           ; $51f4: $98
	adc  b                                           ; $51f5: $88
	sbc  c                                           ; $51f6: $99
	adc  b                                           ; $51f7: $88
	adc  c                                           ; $51f8: $89
	sbc  c                                           ; $51f9: $99
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
	adc  c                                           ; $5207: $89
	adc  b                                           ; $5208: $88
	sbc  b                                           ; $5209: $98
	adc  c                                           ; $520a: $89
	sbc  b                                           ; $520b: $98
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
	adc  c                                           ; $5219: $89
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

Call_0dc_5396:
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

Call_0dc_53a5:
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

Call_0dc_53fd:
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
	sbc  c                                           ; $54b9: $99
	sbc  c                                           ; $54ba: $99
	adc  b                                           ; $54bb: $88
	adc  b                                           ; $54bc: $88
	adc  b                                           ; $54bd: $88
	adc  c                                           ; $54be: $89
	adc  b                                           ; $54bf: $88
	ld   a, b                                        ; $54c0: $78
	sbc  c                                           ; $54c1: $99
	adc  b                                           ; $54c2: $88
	sbc  b                                           ; $54c3: $98
	adc  b                                           ; $54c4: $88
	adc  b                                           ; $54c5: $88
	adc  b                                           ; $54c6: $88
	sbc  b                                           ; $54c7: $98
	adc  c                                           ; $54c8: $89
	sbc  b                                           ; $54c9: $98
	adc  b                                           ; $54ca: $88
	sbc  b                                           ; $54cb: $98
	adc  b                                           ; $54cc: $88
	adc  b                                           ; $54cd: $88
	adc  b                                           ; $54ce: $88
	adc  c                                           ; $54cf: $89
	add  a                                           ; $54d0: $87
	ld   a, b                                        ; $54d1: $78
	adc  b                                           ; $54d2: $88
	adc  b                                           ; $54d3: $88
	sbc  b                                           ; $54d4: $98
	adc  b                                           ; $54d5: $88
	adc  b                                           ; $54d6: $88
	adc  b                                           ; $54d7: $88
	adc  b                                           ; $54d8: $88
	adc  b                                           ; $54d9: $88
	ld   [hl], a                                     ; $54da: $77
	ld   a, b                                        ; $54db: $78
	ld   a, b                                        ; $54dc: $78
	adc  b                                           ; $54dd: $88
	adc  b                                           ; $54de: $88
	add  a                                           ; $54df: $87
	adc  b                                           ; $54e0: $88
	adc  b                                           ; $54e1: $88
	ld   a, b                                        ; $54e2: $78
	adc  b                                           ; $54e3: $88
	adc  b                                           ; $54e4: $88
	adc  b                                           ; $54e5: $88
	adc  b                                           ; $54e6: $88
	adc  b                                           ; $54e7: $88
	adc  b                                           ; $54e8: $88
	add  a                                           ; $54e9: $87
	ld   [hl], a                                     ; $54ea: $77
	add  a                                           ; $54eb: $87
	ld   a, b                                        ; $54ec: $78
	adc  b                                           ; $54ed: $88
	adc  b                                           ; $54ee: $88
	adc  b                                           ; $54ef: $88
	adc  b                                           ; $54f0: $88
	adc  b                                           ; $54f1: $88
	adc  b                                           ; $54f2: $88
	add  a                                           ; $54f3: $87
	adc  b                                           ; $54f4: $88
	ld   [hl], a                                     ; $54f5: $77
	ld   [hl], a                                     ; $54f6: $77
	ld   a, b                                        ; $54f7: $78
	add  a                                           ; $54f8: $87
	adc  b                                           ; $54f9: $88
	add  a                                           ; $54fa: $87
	ld   a, c                                        ; $54fb: $79
	sbc  b                                           ; $54fc: $98
	ld   a, b                                        ; $54fd: $78
	sbc  b                                           ; $54fe: $98
	halt                                             ; $54ff: $76
	ld   a, c                                        ; $5500: $79
	add  a                                           ; $5501: $87
	adc  b                                           ; $5502: $88
	adc  b                                           ; $5503: $88
	ld   [hl], a                                     ; $5504: $77
	sbc  b                                           ; $5505: $98
	adc  b                                           ; $5506: $88
	add  a                                           ; $5507: $87
	ld   a, c                                        ; $5508: $79
	sub  [hl]                                        ; $5509: $96
	ld   a, b                                        ; $550a: $78
	ld   a, c                                        ; $550b: $79
	add  a                                           ; $550c: $87
	xor  c                                           ; $550d: $a9
	ld   h, [hl]                                     ; $550e: $66
	adc  c                                           ; $550f: $89
	and  a                                           ; $5510: $a7
	ld   l, b                                        ; $5511: $68
	xor  b                                           ; $5512: $a8
	ld   a, b                                        ; $5513: $78
	sbc  c                                           ; $5514: $99
	add  a                                           ; $5515: $87
	adc  d                                           ; $5516: $8a
	adc  b                                           ; $5517: $88
	add  [hl]                                        ; $5518: $86
	ld   a, c                                        ; $5519: $79
	ld   a, c                                        ; $551a: $79
	sub  a                                           ; $551b: $97
	adc  c                                           ; $551c: $89
	halt                                             ; $551d: $76
	adc  d                                           ; $551e: $8a
	adc  b                                           ; $551f: $88
	adc  b                                           ; $5520: $88
	adc  b                                           ; $5521: $88
	sub  a                                           ; $5522: $97
	adc  c                                           ; $5523: $89
	ld   a, c                                        ; $5524: $79
	xor  c                                           ; $5525: $a9
	halt                                             ; $5526: $76
	ld   a, d                                        ; $5527: $7a
	add  l                                           ; $5528: $85
	ld   a, d                                        ; $5529: $7a
	or   [hl]                                        ; $552a: $b6
	scf                                              ; $552b: $37
	db   $db                                         ; $552c: $db
	ld   h, [hl]                                     ; $552d: $66
	sbc  d                                           ; $552e: $9a
	sbc  b                                           ; $552f: $98
	ld   a, c                                        ; $5530: $79
	xor  c                                           ; $5531: $a9
	ld   d, e                                        ; $5532: $53
	adc  h                                           ; $5533: $8c
	ret  c                                           ; $5534: $d8

	ld   d, a                                        ; $5535: $57
	ld   a, b                                        ; $5536: $78
	adc  d                                           ; $5537: $8a
	and  [hl]                                        ; $5538: $a6
	ld   l, b                                        ; $5539: $68
	sbc  c                                           ; $553a: $99
	ld   l, c                                        ; $553b: $69
	or   a                                           ; $553c: $b7
	adc  b                                           ; $553d: $88
	ld   a, c                                        ; $553e: $79
	adc  e                                           ; $553f: $8b
	and  [hl]                                        ; $5540: $a6
	ld   l, c                                        ; $5541: $69
	xor  b                                           ; $5542: $a8
	ld   d, [hl]                                     ; $5543: $56
	cp   h                                           ; $5544: $bc
	add  e                                           ; $5545: $83
	ld   l, d                                        ; $5546: $6a
	xor  e                                           ; $5547: $ab
	ld   [hl], e                                     ; $5548: $73
	ld   a, d                                        ; $5549: $7a
	cp   c                                           ; $554a: $b9
	ld   b, [hl]                                     ; $554b: $46
	sbc  l                                           ; $554c: $9d
	and  e                                           ; $554d: $a3
	ld   c, h                                        ; $554e: $4c
	add  sp, $34                                     ; $554f: $e8 $34
	ld   a, a                                        ; $5551: $7f
	pop  bc                                          ; $5552: $c1
	dec  a                                           ; $5553: $3d
	rst  $30                                         ; $5554: $f7
	ld   d, $ef                                      ; $5555: $16 $ef
	ld   b, c                                        ; $5557: $41
	ld   a, a                                        ; $5558: $7f
	sub  $33                                         ; $5559: $d6 $33
	adc  h                                           ; $555b: $8c
	add  $6a                                         ; $555c: $c6 $6a
	ld   [hl], a                                     ; $555e: $77
	sub  l                                           ; $555f: $95
	ld   l, l                                        ; $5560: $6d
	or   d                                           ; $5561: $b2
	add  hl, de                                      ; $5562: $19
	db   $fd                                         ; $5563: $fd
	ld   de, $fb8d                                   ; $5564: $11 $8d $fb
	dec  h                                           ; $5567: $25
	xor  d                                           ; $5568: $aa

jr_0dc_5569:
	adc  c                                           ; $5569: $89
	ld   l, d                                        ; $556a: $6a
	ret                                              ; $556b: $c9


	ld   b, l                                        ; $556c: $45
	db   $fc                                         ; $556d: $fc
	ld   b, h                                        ; $556e: $44
	cp   e                                           ; $556f: $bb
	adc  e                                           ; $5570: $8b
	and  e                                           ; $5571: $a3
	add  hl, sp                                      ; $5572: $39
	cp   c                                           ; $5573: $b9
	ld   [hl], l                                     ; $5574: $75
	ld   a, h                                        ; $5575: $7c
	sub  l                                           ; $5576: $95
	ld   b, a                                        ; $5577: $47
	res  2, d                                        ; $5578: $cb $92
	ld   e, l                                        ; $557a: $5d
	ld   h, [hl]                                     ; $557b: $66
	ld   sp, hl                                      ; $557c: $f9
	jr   jr_0dc_5569                                 ; $557d: $18 $ea

	sbc  h                                           ; $557f: $9c
	and  [hl]                                        ; $5580: $a6
	adc  e                                           ; $5581: $8b
	ld   h, a                                        ; $5582: $67
	rst  $38                                         ; $5583: $ff
	ld   [de], a                                     ; $5584: $12
	ld   a, h                                        ; $5585: $7c
	add  sp, $48                                     ; $5586: $e8 $48
	halt                                             ; $5588: $76
	and  l                                           ; $5589: $a5
	add  hl, sp                                      ; $558a: $39
	ld   [hl], c                                     ; $558b: $71
	ld   e, b                                        ; $558c: $58
	ld   a, h                                        ; $558d: $7c
	sub  d                                           ; $558e: $92
	add  hl, de                                      ; $558f: $19
	jp   c, $a6a9                                    ; $5590: $da $a9 $a6

	xor  e                                           ; $5593: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5594: $cf
	rst  ToBoot                                         ; $5595: $c7
	add  hl, hl                                      ; $5596: $29
	ld   a, [$12fe]                                  ; $5597: $fa $fe $12
	add  a                                           ; $559a: $87
	xor  e                                           ; $559b: $ab
	ld   h, $61                                      ; $559c: $26 $61
	add  hl, hl                                      ; $559e: $29
	ld   b, d                                        ; $559f: $42
	and  d                                           ; $55a0: $a2
	inc  e                                           ; $55a1: $1c
	ld   hl, sp+$76                                  ; $55a2: $f8 $76
	dec  e                                           ; $55a4: $1d
	db   $fc                                         ; $55a5: $fc
	adc  d                                           ; $55a6: $8a
	cp   h                                           ; $55a7: $bc
	and  a                                           ; $55a8: $a7
	rst  $28                                         ; $55a9: $ef
	and  e                                           ; $55aa: $a3
	cp   [hl]                                        ; $55ab: $be
	xor  b                                           ; $55ac: $a8
	ld   d, d                                        ; $55ad: $52
	ld   a, [hl-]                                    ; $55ae: $3a
	ld   h, l                                        ; $55af: $65
	ld   d, e                                        ; $55b0: $53

jr_0dc_55b1:
	ld   sp, $8f12                                   ; $55b1: $31 $12 $8f
	and  a                                           ; $55b4: $a7
	ld   hl, $71ff                                   ; $55b5: $21 $ff $71
	ld   e, a                                        ; $55b8: $5f
	cp   $58                                         ; $55b9: $fe $58
	db   $fc                                         ; $55bb: $fc
	sub  [hl]                                        ; $55bc: $96
	sbc  a                                           ; $55bd: $9f
	ld   hl, sp+$15                                  ; $55be: $f8 $15
	ld   h, e                                        ; $55c0: $63
	ld   a, c                                        ; $55c1: $79
	ld   d, c                                        ; $55c2: $51
	inc  [hl]                                        ; $55c3: $34
	ld   b, [hl]                                     ; $55c4: $46
	inc  sp                                          ; $55c5: $33
	ld   l, c                                        ; $55c6: $69
	cp   a                                           ; $55c7: $bf
	ld   b, c                                        ; $55c8: $41
	rst  $28                                         ; $55c9: $ef
	ld   d, c                                        ; $55ca: $51
	rst  $38                                         ; $55cb: $ff
	ld   h, [hl]                                     ; $55cc: $66
	ld   h, [hl]                                     ; $55cd: $66
	sbc  $cd                                         ; $55ce: $de $cd
	ret  z                                           ; $55d0: $c8

	ld   b, c                                        ; $55d1: $41
	inc  l                                           ; $55d2: $2c
	add  [hl]                                        ; $55d3: $86
	ld   h, d                                        ; $55d4: $62
	ld   hl, $3a31                                   ; $55d5: $21 $31 $3a
	sub  h                                           ; $55d8: $94
	rra                                              ; $55d9: $1f
	push af                                          ; $55da: $f5
	ld   [de], a                                     ; $55db: $12
	sbc  a                                           ; $55dc: $9f
	pop  af                                          ; $55dd: $f1
	rst  $38                                         ; $55de: $ff
	daa                                              ; $55df: $27
	ld   a, d                                        ; $55e0: $7a
	rst  $38                                         ; $55e1: $ff
	sbc  d                                           ; $55e2: $9a
	sub  c                                           ; $55e3: $91
	add  hl, hl                                      ; $55e4: $29
	sub  c                                           ; $55e5: $91
	ld   b, [hl]                                     ; $55e6: $46
	ld   b, a                                        ; $55e7: $47
	ld   h, c                                        ; $55e8: $61
	inc  de                                          ; $55e9: $13
	xor  l                                           ; $55ea: $ad
	cp   l                                           ; $55eb: $bd
	sub  c                                           ; $55ec: $91
	rst  JumpTable                                         ; $55ed: $df
	ld   e, $f7                                      ; $55ee: $1e $f7
	xor  l                                           ; $55f0: $ad
	ld   a, a                                        ; $55f1: $7f
	pop  de                                          ; $55f2: $d1
	ld   a, a                                        ; $55f3: $7f
	pop  af                                          ; $55f4: $f1
	sbc  h                                           ; $55f5: $9c
	ld   b, d                                        ; $55f6: $42
	dec  d                                           ; $55f7: $15
	adc  c                                           ; $55f8: $89
	ld   b, e                                        ; $55f9: $43
	ld   [hl], $51                                   ; $55fa: $36 $51
	ld   d, $ff                                      ; $55fc: $16 $ff
	inc  de                                          ; $55fe: $13
	ret  z                                           ; $55ff: $c8

	cp   $1f                                         ; $5600: $fe $1f
	ldh  a, [c]                                      ; $5602: $f2
	ccf                                              ; $5603: $3f
	ld   hl, sp+$72                                  ; $5604: $f8 $72
	sbc  a                                           ; $5606: $9f
	call nz, $1466                                   ; $5607: $c4 $66 $14
	sub  l                                           ; $560a: $95
	ld   hl, $6811                                   ; $560b: $21 $11 $68
	adc  c                                           ; $560e: $89
	sbc  l                                           ; $560f: $9d
	add  h                                           ; $5610: $84
	ld   [$fd17], a                                  ; $5611: $ea $17 $fd
	cp   h                                           ; $5614: $bc
	cp   h                                           ; $5615: $bc
	sub  [hl]                                        ; $5616: $96
	sbc  a                                           ; $5617: $9f
	and  $84                                         ; $5618: $e6 $84
	ld   b, e                                        ; $561a: $43
	inc  hl                                          ; $561b: $23
	ld   e, b                                        ; $561c: $58
	ld   sp, $7324                                   ; $561d: $31 $24 $73
	dec  e                                           ; $5620: $1d
	cp   $11                                         ; $5621: $fe $11
	rst  $38                                         ; $5623: $ff
	ld   sp, $f8ef                                   ; $5624: $31 $ef $f8
	ld   l, c                                        ; $5627: $69
	xor  l                                           ; $5628: $ad
	push de                                          ; $5629: $d5
	xor  d                                           ; $562a: $aa
	ld   a, c                                        ; $562b: $79
	ld   h, c                                        ; $562c: $61
	add  hl, sp                                      ; $562d: $39
	jr   jr_0dc_55b1                                 ; $562e: $18 $81

	ld   de, $fc18                                   ; $5630: $11 $18 $fc
	ld   de, $37ff                                   ; $5633: $11 $ff $37
	ld   e, c                                        ; $5636: $59
	db   $fd                                         ; $5637: $fd
	ld   c, a                                        ; $5638: $4f
	push af                                          ; $5639: $f5
	ld   e, e                                        ; $563a: $5b
	rst  JumpTable                                         ; $563b: $df
	db   $f4                                         ; $563c: $f4
	ld   [de], a                                     ; $563d: $12
	ld   a, d                                        ; $563e: $7a
	inc  h                                           ; $563f: $24
	ld   b, c                                        ; $5640: $41
	ld   d, $64                                      ; $5641: $16 $64
	inc  hl                                          ; $5643: $23
	sbc  a                                           ; $5644: $9f
	pop  af                                          ; $5645: $f1
	ld   a, [de]                                     ; $5646: $1a
	ld   hl, sp+$1f                                  ; $5647: $f8 $1f
	set  5, c                                        ; $5649: $cb $e9
	rst  $38                                         ; $564b: $ff
	ld   e, d                                        ; $564c: $5a
	sbc  h                                           ; $564d: $9c
	ld   hl, sp+$41                                  ; $564e: $f8 $41
	ld   l, b                                        ; $5650: $68
	ld   de, $2174                                   ; $5651: $11 $74 $21
	ld   [de], a                                     ; $5654: $12
	cp   [hl]                                        ; $5655: $be
	sub  l                                           ; $5656: $95
	ld   c, e                                        ; $5657: $4b
	rst  $38                                         ; $5658: $ff
	ld   d, c                                        ; $5659: $51
	ld   l, a                                        ; $565a: $6f
	xor  $fb                                         ; $565b: $ee $fb
	jp   z, $df88                                    ; $565d: $ca $88 $df

	cp   c                                           ; $5660: $b9
	ld   [hl+], a                                    ; $5661: $22
	sub  h                                           ; $5662: $94
	inc  d                                           ; $5663: $14
	inc  de                                          ; $5664: $13
	ld   b, c                                        ; $5665: $41
	ld   [de], a                                     ; $5666: $12
	jp   z, $45ad                                    ; $5667: $ca $ad $45

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $566a: $cf
	jp   c, $cb79                                    ; $566b: $da $79 $cb

	rst  $28                                         ; $566e: $ef
	or   d                                           ; $566f: $b2
	cp   a                                           ; $5670: $bf
	db   $ec                                         ; $5671: $ec
	sub  [hl]                                        ; $5672: $96
	ld   b, a                                        ; $5673: $47
	ld   b, c                                        ; $5674: $41
	dec  h                                           ; $5675: $25
	ld   [hl], c                                     ; $5676: $71
	ld   de, $e628                                   ; $5677: $11 $28 $e6
	dec  sp                                          ; $567a: $3b
	xor  [hl]                                        ; $567b: $ae
	reti                                             ; $567c: $d9


	ld   [hl], d                                     ; $567d: $72
	ei                                               ; $567e: $fb
	ld   l, a                                        ; $567f: $6f
	ei                                               ; $5680: $fb
	ld   l, h                                        ; $5681: $6c
	ld   hl, sp-$38                                  ; $5682: $f8 $c8
	cp   h                                           ; $5684: $bc
	ld   b, d                                        ; $5685: $42
	ld   b, l                                        ; $5686: $45
	inc  hl                                          ; $5687: $23
	ld   de, $1651                                   ; $5688: $11 $51 $16
	or   h                                           ; $568b: $b4
	sbc  h                                           ; $568c: $9c
	ld   d, h                                        ; $568d: $54
	rst  $38                                         ; $568e: $ff

jr_0dc_568f:
	ld   d, [hl]                                     ; $568f: $56
	jr   c, jr_0dc_568f                              ; $5690: $38 $fd

	call z, $8abe                                    ; $5692: $cc $be $8a
	ld   a, [$66b9]                                  ; $5695: $fa $b9 $66
	ld   h, l                                        ; $5698: $65
	ld   de, $1111                                   ; $5699: $11 $11 $11
	ld   e, $e3                                      ; $569c: $1e $e3
	ld   e, c                                        ; $569e: $59
	sbc  l                                           ; $569f: $9d
	rst  JumpTable                                         ; $56a0: $df
	rst  $20                                         ; $56a1: $e7
	ld   b, e                                        ; $56a2: $43
	rst  $28                                         ; $56a3: $ef
	rst  $38                                         ; $56a4: $ff
	adc  l                                           ; $56a5: $8d
	reti                                             ; $56a6: $d9


	ret                                              ; $56a7: $c9


	ret  z                                           ; $56a8: $c8

	sub  [hl]                                        ; $56a9: $96
	ld   b, l                                        ; $56aa: $45
	ld   de, $1111                                   ; $56ab: $11 $11 $11
	ld   a, [hl-]                                    ; $56ae: $3a
	and  a                                           ; $56af: $a7
	adc  e                                           ; $56b0: $8b
	ld   d, d                                        ; $56b1: $52
	rst  $28                                         ; $56b2: $ef
	rst  $38                                         ; $56b3: $ff
	ld   sp, $efbf                                   ; $56b4: $31 $bf $ef
	rst  $28                                         ; $56b7: $ef
	db   $db                                         ; $56b8: $db
	adc  d                                           ; $56b9: $8a
	rst  ToBoot                                         ; $56ba: $c7
	sub  h                                           ; $56bb: $94
	ld   d, [hl]                                     ; $56bc: $56
	ld   de, $1111                                   ; $56bd: $11 $11 $11
	ld   a, a                                        ; $56c0: $7f
	jp   hl                                          ; $56c1: $e9


	adc  c                                           ; $56c2: $89
	ld   l, d                                        ; $56c3: $6a
	jp   c, $ed7c                                    ; $56c4: $da $7c $ed

	jp   hl                                          ; $56c7: $e9


	ld   a, h                                        ; $56c8: $7c
	rst  $38                                         ; $56c9: $ff
	db   $eb                                         ; $56ca: $eb
	ld   a, e                                        ; $56cb: $7b
	sbc  b                                           ; $56cc: $98
	ld   h, e                                        ; $56cd: $63
	ld   h, e                                        ; $56ce: $63
	ld   de, $1111                                   ; $56cf: $11 $11 $11
	ccf                                              ; $56d2: $3f
	rst  $38                                         ; $56d3: $ff
	sub  [hl]                                        ; $56d4: $96
	ld   c, c                                        ; $56d5: $49
	rst  $20                                         ; $56d6: $e7
	ld   [hl], l                                     ; $56d7: $75
	rst  $38                                         ; $56d8: $ff
	cp   $57                                         ; $56d9: $fe $57
	xor  [hl]                                        ; $56db: $ae
	xor  $fc                                         ; $56dc: $ee $fc
	add  l                                           ; $56de: $85
	ld   [hl+], a                                    ; $56df: $22
	add  l                                           ; $56e0: $85
	ld   de, $1111                                   ; $56e1: $11 $11 $11
	rst  $38                                         ; $56e4: $ff
	rst  $38                                         ; $56e5: $ff
	and  d                                           ; $56e6: $a2
	scf                                              ; $56e7: $37
	sbc  e                                           ; $56e8: $9b
	set  7, a                                        ; $56e9: $cb $ff
	bit  4, [hl]                                     ; $56eb: $cb $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56ed: $cf
	cp   $e8                                         ; $56ee: $fe $e8
	ld   d, d                                        ; $56f0: $52
	inc  de                                          ; $56f1: $13
	ld   b, e                                        ; $56f2: $43
	ld   de, $1f11                                   ; $56f3: $11 $11 $1f
	rst  $38                                         ; $56f6: $ff
	ld   hl, sp+$12                                  ; $56f7: $f8 $12
	ld   b, c                                        ; $56f9: $41
	xor  a                                           ; $56fa: $af
	rst  $28                                         ; $56fb: $ef
	db   $fc                                         ; $56fc: $fc
	sub  a                                           ; $56fd: $97
	ld   c, c                                        ; $56fe: $49
	rst  $38                                         ; $56ff: $ff
	cp   $82                                         ; $5700: $fe $82
	ld   [de], a                                     ; $5702: $12
	inc  [hl]                                        ; $5703: $34
	ld   b, c                                        ; $5704: $41
	ld   de, rAUD1LEN                                   ; $5705: $11 $11 $ff
	rst  $38                                         ; $5708: $ff
	ld   sp, $1e11                                   ; $5709: $31 $11 $1e
	rst  $38                                         ; $570c: $ff
	rst  $38                                         ; $570d: $ff
	ld   [hl], d                                     ; $570e: $72
	inc  h                                           ; $570f: $24
	cp   a                                           ; $5710: $bf
	rst  $38                                         ; $5711: $ff
	rst  $30                                         ; $5712: $f7
	ld   de, $ab15                                   ; $5713: $11 $15 $ab
	ld   hl, $1f11                                   ; $5716: $21 $11 $1f
	rst  $38                                         ; $5719: $ff
	push af                                          ; $571a: $f5
	ld   de, $af11                                   ; $571b: $11 $11 $af
	rst  $38                                         ; $571e: $ff
	ld   sp, hl                                      ; $571f: $f9
	ld   de, $ff18                                   ; $5720: $11 $18 $ff
	rst  $38                                         ; $5723: $ff
	add  c                                           ; $5724: $81
	ld   de, $da2a                                   ; $5725: $11 $2a $da
	ld   sp, $1f11                                   ; $5728: $31 $11 $1f
	rst  $38                                         ; $572b: $ff
	pop  af                                          ; $572c: $f1
	ld   de, $ff15                                   ; $572d: $11 $15 $ff
	rst  $38                                         ; $5730: $ff
	di                                               ; $5731: $f3
	ld   de, $ff1b                                   ; $5732: $11 $1b $ff
	rst  $38                                         ; $5735: $ff
	ld   h, c                                        ; $5736: $61
	ld   de, $fd5c                                   ; $5737: $11 $5c $fd
	ld   d, c                                        ; $573a: $51
	ld   de, $ff1f                                   ; $573b: $11 $1f $ff
	pop  af                                          ; $573e: $f1
	ld   de, $bf18                                   ; $573f: $11 $18 $bf
	rst  $38                                         ; $5742: $ff
	ld   a, [$1411]                                  ; $5743: $fa $11 $14
	rst  $38                                         ; $5746: $ff
	rst  $38                                         ; $5747: $ff
	jp   nc, $1611                                   ; $5748: $d2 $11 $16

	rst  $38                                         ; $574b: $ff
	add  sp, $11                                     ; $574c: $e8 $11
	ld   de, $ff1f                                   ; $574e: $11 $1f $ff
	pop  hl                                          ; $5751: $e1
	ld   de, $ff66                                   ; $5752: $11 $66 $ff
	rst  $38                                         ; $5755: $ff
	ldh  a, [c]                                      ; $5756: $f2
	ld   de, $ff1c                                   ; $5757: $11 $1c $ff
	rst  $38                                         ; $575a: $ff
	sub  c                                           ; $575b: $91
	ld   de, $ff1a                                   ; $575c: $11 $1a $ff
	rst  $10                                         ; $575f: $d7
	inc  hl                                          ; $5760: $23
	ld   b, e                                        ; $5761: $43
	dec  [hl]                                        ; $5762: $35
	ld   [hl+], a                                    ; $5763: $22
	xor  a                                           ; $5764: $af
	rst  $38                                         ; $5765: $ff
	ld   h, c                                        ; $5766: $61
	ld   de, $ef6c                                   ; $5767: $11 $6c $ef
	rst  $38                                         ; $576a: $ff
	and  h                                           ; $576b: $a4
	ld   de, $ff5c                                   ; $576c: $11 $5c $ff
	jp   hl                                          ; $576f: $e9


	ld   d, e                                        ; $5770: $53
	inc  hl                                          ; $5771: $23
	ld   e, b                                        ; $5772: $58
	cp   h                                           ; $5773: $bc
	cp   e                                           ; $5774: $bb
	sub  [hl]                                        ; $5775: $96
	ld   d, l                                        ; $5776: $55
	ld   a, d                                        ; $5777: $7a
	cp   e                                           ; $5778: $bb
	cp   c                                           ; $5779: $b9
	sbc  b                                           ; $577a: $98
	ld   h, l                                        ; $577b: $65
	ld   d, a                                        ; $577c: $57
	sbc  e                                           ; $577d: $9b
	cp   d                                           ; $577e: $ba
	ld   h, h                                        ; $577f: $64
	ld   [hl-], a                                    ; $5780: $32
	inc  [hl]                                        ; $5781: $34
	ld   h, a                                        ; $5782: $67
	ld   d, [hl]                                     ; $5783: $56
	xor  a                                           ; $5784: $af
	ld   sp, hl                                      ; $5785: $f9
	ld   sp, $bd28                                   ; $5786: $31 $28 $bd
	cp   e                                           ; $5789: $bb
	sbc  b                                           ; $578a: $98
	ld   h, e                                        ; $578b: $63
	ld   [hl], $ad                                   ; $578c: $36 $ad
	db   $ec                                         ; $578e: $ec
	sbc  c                                           ; $578f: $99
	halt                                             ; $5790: $76
	ld   d, [hl]                                     ; $5791: $56
	sbc  e                                           ; $5792: $9b
	db   $db                                         ; $5793: $db
	add  a                                           ; $5794: $87
	ld   h, [hl]                                     ; $5795: $66
	ld   a, b                                        ; $5796: $78
	adc  c                                           ; $5797: $89
	xor  d                                           ; $5798: $aa
	sbc  b                                           ; $5799: $98
	ld   h, [hl]                                     ; $579a: $66
	ld   [hl], a                                     ; $579b: $77
	ld   a, c                                        ; $579c: $79
	xor  d                                           ; $579d: $aa
	sbc  b                                           ; $579e: $98
	halt                                             ; $579f: $76
	ld   h, a                                        ; $57a0: $67
	sbc  e                                           ; $57a1: $9b
	xor  d                                           ; $57a2: $aa
	sub  a                                           ; $57a3: $97
	ld   h, l                                        ; $57a4: $65
	ld   b, h                                        ; $57a5: $44
	ld   d, [hl]                                     ; $57a6: $56
	adc  d                                           ; $57a7: $8a
	sub  [hl]                                        ; $57a8: $96
	ld   b, e                                        ; $57a9: $43
	ld   c, c                                        ; $57aa: $49
	rst  JumpTable                                         ; $57ab: $df
	ret                                              ; $57ac: $c9


	ld   d, h                                        ; $57ad: $54
	ld   d, a                                        ; $57ae: $57
	sbc  c                                           ; $57af: $99
	cp   e                                           ; $57b0: $bb
	cp   d                                           ; $57b1: $ba
	ld   h, h                                        ; $57b2: $64
	ld   d, a                                        ; $57b3: $57
	xor  e                                           ; $57b4: $ab
	cp   d                                           ; $57b5: $ba
	add  a                                           ; $57b6: $87
	ld   h, l                                        ; $57b7: $65
	ld   d, [hl]                                     ; $57b8: $56
	sbc  d                                           ; $57b9: $9a
	cp   d                                           ; $57ba: $ba
	sub  a                                           ; $57bb: $97
	ld   [hl], a                                     ; $57bc: $77
	ld   [hl], a                                     ; $57bd: $77
	adc  d                                           ; $57be: $8a
	xor  e                                           ; $57bf: $ab
	xor  b                                           ; $57c0: $a8
	halt                                             ; $57c1: $76
	ld   [hl], a                                     ; $57c2: $77
	sbc  c                                           ; $57c3: $99
	xor  d                                           ; $57c4: $aa
	xor  c                                           ; $57c5: $a9
	sub  a                                           ; $57c6: $97
	ld   h, a                                        ; $57c7: $67
	ld   a, b                                        ; $57c8: $78
	adc  b                                           ; $57c9: $88
	add  a                                           ; $57ca: $87
	halt                                             ; $57cb: $76
	ld   l, b                                        ; $57cc: $68
	sbc  b                                           ; $57cd: $98
	halt                                             ; $57ce: $76
	adc  c                                           ; $57cf: $89
	sbc  c                                           ; $57d0: $99
	sbc  c                                           ; $57d1: $99
	adc  b                                           ; $57d2: $88
	ld   [hl], a                                     ; $57d3: $77
	ld   [hl], a                                     ; $57d4: $77
	ld   h, a                                        ; $57d5: $67
	ld   h, a                                        ; $57d6: $67
	sbc  d                                           ; $57d7: $9a
	sbc  c                                           ; $57d8: $99
	xor  b                                           ; $57d9: $a8
	ld   a, b                                        ; $57da: $78
	add  a                                           ; $57db: $87
	ld   h, [hl]                                     ; $57dc: $66
	ld   d, a                                        ; $57dd: $57
	sbc  b                                           ; $57de: $98
	halt                                             ; $57df: $76
	ld   a, e                                        ; $57e0: $7b
	jp   c, Jump_0dc_5886                            ; $57e1: $da $86 $58

	cp   d                                           ; $57e4: $ba
	sbc  b                                           ; $57e5: $98
	ld   a, b                                        ; $57e6: $78
	sub  a                                           ; $57e7: $97
	ld   h, a                                        ; $57e8: $67
	sbc  e                                           ; $57e9: $9b
	cp   e                                           ; $57ea: $bb
	xor  b                                           ; $57eb: $a8
	ld   h, [hl]                                     ; $57ec: $66
	ld   h, [hl]                                     ; $57ed: $66
	ld   [hl], a                                     ; $57ee: $77
	adc  b                                           ; $57ef: $88
	ld   [hl], h                                     ; $57f0: $74
	ld   e, h                                        ; $57f1: $5c
	db   $ec                                         ; $57f2: $ec
	sub  h                                           ; $57f3: $94
	ld   [hl], $9a                                   ; $57f4: $36 $9a
	xor  c                                           ; $57f6: $a9
	sbc  d                                           ; $57f7: $9a
	sub  [hl]                                        ; $57f8: $96
	ld   b, l                                        ; $57f9: $45
	ld   a, d                                        ; $57fa: $7a
	res  3, b                                        ; $57fb: $cb $98
	halt                                             ; $57fd: $76
	ld   h, l                                        ; $57fe: $65
	ld   l, b                                        ; $57ff: $68
	xor  e                                           ; $5800: $ab
	cp   c                                           ; $5801: $b9
	halt                                             ; $5802: $76
	ld   [hl], a                                     ; $5803: $77
	ld   a, b                                        ; $5804: $78
	sbc  d                                           ; $5805: $9a
	xor  d                                           ; $5806: $aa
	halt                                             ; $5807: $76
	ld   h, a                                        ; $5808: $67
	adc  b                                           ; $5809: $88
	sbc  c                                           ; $580a: $99
	xor  c                                           ; $580b: $a9
	sub  a                                           ; $580c: $97
	ld   h, a                                        ; $580d: $67
	ld   a, b                                        ; $580e: $78
	adc  b                                           ; $580f: $88
	adc  b                                           ; $5810: $88
	add  a                                           ; $5811: $87
	ld   [hl], a                                     ; $5812: $77
	adc  b                                           ; $5813: $88
	sbc  b                                           ; $5814: $98
	sbc  b                                           ; $5815: $98
	adc  b                                           ; $5816: $88
	ld   [hl], a                                     ; $5817: $77
	ld   a, b                                        ; $5818: $78
	sbc  d                                           ; $5819: $9a
	sbc  c                                           ; $581a: $99
	ld   [hl], a                                     ; $581b: $77
	ld   [hl], a                                     ; $581c: $77
	adc  c                                           ; $581d: $89
	adc  b                                           ; $581e: $88
	adc  b                                           ; $581f: $88
	add  a                                           ; $5820: $87
	ld   [hl], a                                     ; $5821: $77
	ld   a, b                                        ; $5822: $78
	sbc  b                                           ; $5823: $98
	sbc  c                                           ; $5824: $99
	add  a                                           ; $5825: $87
	ld   [hl], a                                     ; $5826: $77
	ld   a, b                                        ; $5827: $78
	sbc  b                                           ; $5828: $98
	sbc  c                                           ; $5829: $99
	add  a                                           ; $582a: $87
	ld   [hl], a                                     ; $582b: $77
	ld   a, b                                        ; $582c: $78
	adc  c                                           ; $582d: $89
	sbc  c                                           ; $582e: $99
	sub  a                                           ; $582f: $97
	ld   [hl], a                                     ; $5830: $77
	adc  b                                           ; $5831: $88
	adc  b                                           ; $5832: $88
	adc  c                                           ; $5833: $89
	adc  b                                           ; $5834: $88
	ld   [hl], a                                     ; $5835: $77
	adc  b                                           ; $5836: $88
	adc  b                                           ; $5837: $88
	adc  b                                           ; $5838: $88
	adc  b                                           ; $5839: $88
	ld   [hl], a                                     ; $583a: $77
	adc  b                                           ; $583b: $88
	sbc  c                                           ; $583c: $99
	adc  b                                           ; $583d: $88
	adc  b                                           ; $583e: $88
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	sbc  c                                           ; $5841: $99
	adc  b                                           ; $5842: $88
	adc  b                                           ; $5843: $88
	ld   [hl], a                                     ; $5844: $77
	adc  b                                           ; $5845: $88
	sbc  c                                           ; $5846: $99
	adc  b                                           ; $5847: $88
	adc  b                                           ; $5848: $88
	ld   a, b                                        ; $5849: $78
	adc  b                                           ; $584a: $88
	sbc  c                                           ; $584b: $99
	sbc  b                                           ; $584c: $98
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

Jump_0dc_5886:
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

Call_0dc_5d35:
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

Jump_0dc_5fa6:
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

Call_0dc_6136:
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

Call_0dc_61b6:
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
	adc  b                                           ; $620a: $88
	adc  b                                           ; $620b: $88
	adc  b                                           ; $620c: $88
	adc  b                                           ; $620d: $88
	adc  b                                           ; $620e: $88
	adc  b                                           ; $620f: $88
	adc  b                                           ; $6210: $88
	adc  b                                           ; $6211: $88
	adc  b                                           ; $6212: $88
	adc  b                                           ; $6213: $88
	adc  b                                           ; $6214: $88
	adc  b                                           ; $6215: $88
	adc  b                                           ; $6216: $88
	adc  b                                           ; $6217: $88
	adc  b                                           ; $6218: $88
	adc  b                                           ; $6219: $88
	adc  b                                           ; $621a: $88
	adc  b                                           ; $621b: $88
	adc  b                                           ; $621c: $88
	adc  b                                           ; $621d: $88
	adc  b                                           ; $621e: $88
	adc  b                                           ; $621f: $88
	adc  b                                           ; $6220: $88
	adc  b                                           ; $6221: $88
	adc  b                                           ; $6222: $88
	adc  b                                           ; $6223: $88
	adc  b                                           ; $6224: $88
	adc  b                                           ; $6225: $88
	adc  b                                           ; $6226: $88
	adc  b                                           ; $6227: $88
	adc  b                                           ; $6228: $88
	adc  b                                           ; $6229: $88
	adc  b                                           ; $622a: $88
	adc  b                                           ; $622b: $88
	adc  b                                           ; $622c: $88
	adc  b                                           ; $622d: $88
	adc  b                                           ; $622e: $88
	adc  b                                           ; $622f: $88
	adc  b                                           ; $6230: $88
	adc  b                                           ; $6231: $88
	adc  b                                           ; $6232: $88
	adc  b                                           ; $6233: $88
	adc  b                                           ; $6234: $88
	adc  b                                           ; $6235: $88
	adc  b                                           ; $6236: $88
	adc  b                                           ; $6237: $88
	adc  b                                           ; $6238: $88
	adc  b                                           ; $6239: $88
	adc  b                                           ; $623a: $88
	adc  b                                           ; $623b: $88
	adc  b                                           ; $623c: $88
	adc  b                                           ; $623d: $88
	adc  b                                           ; $623e: $88
	adc  b                                           ; $623f: $88
	adc  b                                           ; $6240: $88
	adc  b                                           ; $6241: $88
	adc  b                                           ; $6242: $88
	adc  b                                           ; $6243: $88
	adc  b                                           ; $6244: $88
	adc  b                                           ; $6245: $88
	adc  b                                           ; $6246: $88
	adc  b                                           ; $6247: $88
	adc  b                                           ; $6248: $88
	adc  b                                           ; $6249: $88
	adc  b                                           ; $624a: $88
	adc  b                                           ; $624b: $88
	adc  b                                           ; $624c: $88
	adc  b                                           ; $624d: $88
	adc  b                                           ; $624e: $88
	adc  b                                           ; $624f: $88
	adc  b                                           ; $6250: $88
	adc  b                                           ; $6251: $88
	adc  b                                           ; $6252: $88
	adc  b                                           ; $6253: $88
	adc  b                                           ; $6254: $88
	adc  b                                           ; $6255: $88
	adc  b                                           ; $6256: $88
	adc  b                                           ; $6257: $88
	adc  b                                           ; $6258: $88
	adc  b                                           ; $6259: $88
	adc  b                                           ; $625a: $88
	adc  b                                           ; $625b: $88
	adc  b                                           ; $625c: $88
	adc  b                                           ; $625d: $88
	adc  b                                           ; $625e: $88
	adc  b                                           ; $625f: $88
	adc  b                                           ; $6260: $88
	adc  b                                           ; $6261: $88
	adc  b                                           ; $6262: $88
	adc  b                                           ; $6263: $88
	adc  b                                           ; $6264: $88
	adc  b                                           ; $6265: $88
	adc  b                                           ; $6266: $88
	adc  b                                           ; $6267: $88
	adc  b                                           ; $6268: $88
	adc  b                                           ; $6269: $88
	adc  b                                           ; $626a: $88
	adc  b                                           ; $626b: $88
	adc  b                                           ; $626c: $88
	adc  b                                           ; $626d: $88
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

Call_0dc_6312:
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

Jump_0dc_6387:
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

Call_0dc_64d9:
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

Jump_0dc_64ef:
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

Jump_0dc_6596:
	adc  b                                           ; $6596: $88
	adc  b                                           ; $6597: $88
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	sbc  c                                           ; $659a: $99
	ld   a, b                                        ; $659b: $78
	adc  b                                           ; $659c: $88
	sub  a                                           ; $659d: $97
	adc  b                                           ; $659e: $88
	adc  c                                           ; $659f: $89
	ld   a, b                                        ; $65a0: $78
	add  a                                           ; $65a1: $87
	adc  b                                           ; $65a2: $88
	adc  b                                           ; $65a3: $88
	adc  c                                           ; $65a4: $89
	add  a                                           ; $65a5: $87
	adc  b                                           ; $65a6: $88
	adc  b                                           ; $65a7: $88

Call_0dc_65a8:
	ld   a, b                                        ; $65a8: $78
	adc  b                                           ; $65a9: $88
	adc  b                                           ; $65aa: $88
	sbc  b                                           ; $65ab: $98
	adc  b                                           ; $65ac: $88
	adc  b                                           ; $65ad: $88
	adc  b                                           ; $65ae: $88
	add  a                                           ; $65af: $87
	adc  b                                           ; $65b0: $88
	ld   a, b                                        ; $65b1: $78
	adc  b                                           ; $65b2: $88
	adc  b                                           ; $65b3: $88
	sub  a                                           ; $65b4: $97
	adc  c                                           ; $65b5: $89
	adc  b                                           ; $65b6: $88
	sub  a                                           ; $65b7: $97
	adc  b                                           ; $65b8: $88
	sbc  b                                           ; $65b9: $98
	adc  b                                           ; $65ba: $88
	ld   a, c                                        ; $65bb: $79
	add  a                                           ; $65bc: $87
	adc  b                                           ; $65bd: $88
	adc  c                                           ; $65be: $89
	adc  b                                           ; $65bf: $88
	ld   a, b                                        ; $65c0: $78
	adc  b                                           ; $65c1: $88
	sbc  b                                           ; $65c2: $98
	sbc  b                                           ; $65c3: $98
	adc  c                                           ; $65c4: $89
	adc  b                                           ; $65c5: $88
	sbc  b                                           ; $65c6: $98
	ld   a, c                                        ; $65c7: $79
	adc  b                                           ; $65c8: $88
	add  a                                           ; $65c9: $87
	adc  b                                           ; $65ca: $88
	adc  c                                           ; $65cb: $89
	ld   a, c                                        ; $65cc: $79
	ld   a, c                                        ; $65cd: $79
	ld   a, c                                        ; $65ce: $79
	adc  b                                           ; $65cf: $88
	sub  a                                           ; $65d0: $97
	sub  a                                           ; $65d1: $97
	sbc  b                                           ; $65d2: $98
	adc  c                                           ; $65d3: $89
	adc  b                                           ; $65d4: $88
	adc  b                                           ; $65d5: $88
	adc  c                                           ; $65d6: $89
	adc  b                                           ; $65d7: $88
	adc  b                                           ; $65d8: $88
	adc  c                                           ; $65d9: $89
	adc  c                                           ; $65da: $89
	ld   a, b                                        ; $65db: $78
	add  a                                           ; $65dc: $87
	sbc  b                                           ; $65dd: $98
	sub  a                                           ; $65de: $97
	adc  b                                           ; $65df: $88
	sbc  c                                           ; $65e0: $99
	sub  [hl]                                        ; $65e1: $96
	sbc  c                                           ; $65e2: $99
	ld   a, b                                        ; $65e3: $78
	adc  d                                           ; $65e4: $8a
	ld   a, c                                        ; $65e5: $79
	adc  b                                           ; $65e6: $88
	sub  a                                           ; $65e7: $97
	add  a                                           ; $65e8: $87
	sub  a                                           ; $65e9: $97
	adc  b                                           ; $65ea: $88
	adc  c                                           ; $65eb: $89
	ld   a, c                                        ; $65ec: $79
	sbc  c                                           ; $65ed: $99
	sbc  b                                           ; $65ee: $98
	ld   a, b                                        ; $65ef: $78
	sbc  b                                           ; $65f0: $98
	add  a                                           ; $65f1: $87
	and  a                                           ; $65f2: $a7
	adc  c                                           ; $65f3: $89
	ld   a, h                                        ; $65f4: $7c
	ld   l, c                                        ; $65f5: $69
	add  a                                           ; $65f6: $87
	sub  l                                           ; $65f7: $95
	sub  a                                           ; $65f8: $97
	sub  a                                           ; $65f9: $97
	ld   l, d                                        ; $65fa: $6a
	ld   a, b                                        ; $65fb: $78
	ld   a, c                                        ; $65fc: $79
	sbc  c                                           ; $65fd: $99
	sub  a                                           ; $65fe: $97
	sbc  b                                           ; $65ff: $98
	ld   [hl], a                                     ; $6600: $77
	adc  b                                           ; $6601: $88
	ld   l, b                                        ; $6602: $68
	ld   [hl], a                                     ; $6603: $77
	add  a                                           ; $6604: $87
	adc  b                                           ; $6605: $88
	sbc  b                                           ; $6606: $98
	adc  b                                           ; $6607: $88
	adc  c                                           ; $6608: $89
	ld   e, b                                        ; $6609: $58
	ld   a, b                                        ; $660a: $78
	ld   a, c                                        ; $660b: $79
	and  a                                           ; $660c: $a7
	and  a                                           ; $660d: $a7
	ld   a, c                                        ; $660e: $79
	adc  c                                           ; $660f: $89
	ld   [hl], a                                     ; $6610: $77
	sub  [hl]                                        ; $6611: $96
	add  a                                           ; $6612: $87
	adc  b                                           ; $6613: $88
	ld   e, c                                        ; $6614: $59
	ld   a, b                                        ; $6615: $78
	sbc  c                                           ; $6616: $99
	sbc  b                                           ; $6617: $98
	sub  a                                           ; $6618: $97
	sub  a                                           ; $6619: $97
	and  l                                           ; $661a: $a5
	adc  c                                           ; $661b: $89
	ld   l, c                                        ; $661c: $69
	ld   e, c                                        ; $661d: $59
	add  a                                           ; $661e: $87
	add  [hl]                                        ; $661f: $86
	sbc  c                                           ; $6620: $99
	ld   a, b                                        ; $6621: $78
	ld   [hl], a                                     ; $6622: $77
	ld   a, b                                        ; $6623: $78
	sub  l                                           ; $6624: $95
	sbc  b                                           ; $6625: $98
	add  [hl]                                        ; $6626: $86
	adc  c                                           ; $6627: $89
	ld   l, c                                        ; $6628: $69
	ld   [hl], a                                     ; $6629: $77
	sbc  b                                           ; $662a: $98
	sub  l                                           ; $662b: $95
	ld   a, e                                        ; $662c: $7b
	ld   e, b                                        ; $662d: $58
	sbc  c                                           ; $662e: $99
	ld   a, b                                        ; $662f: $78
	and  a                                           ; $6630: $a7
	sub  a                                           ; $6631: $97
	or   a                                           ; $6632: $b7
	adc  l                                           ; $6633: $8d
	ld   b, a                                        ; $6634: $47
	and  a                                           ; $6635: $a7
	ld   l, b                                        ; $6636: $68
	and  a                                           ; $6637: $a7
	ld   a, b                                        ; $6638: $78
	add  l                                           ; $6639: $85
	sbc  b                                           ; $663a: $98
	ld   e, b                                        ; $663b: $58
	and  a                                           ; $663c: $a7
	ld   c, d                                        ; $663d: $4a
	ld   [hl], a                                     ; $663e: $77
	add  a                                           ; $663f: $87
	and  a                                           ; $6640: $a7
	adc  c                                           ; $6641: $89
	ld   a, b                                        ; $6642: $78
	adc  c                                           ; $6643: $89
	ld   l, d                                        ; $6644: $6a
	add  l                                           ; $6645: $85
	and  a                                           ; $6646: $a7
	halt                                             ; $6647: $76
	ld   l, e                                        ; $6648: $6b
	xor  d                                           ; $6649: $aa
	ld   l, b                                        ; $664a: $68
	jp   z, $ab77                                    ; $664b: $ca $77 $ab

	xor  d                                           ; $664e: $aa
	ld   l, d                                        ; $664f: $6a
	cp   c                                           ; $6650: $b9
	ld   b, l                                        ; $6651: $45
	sub  h                                           ; $6652: $94
	ld   h, a                                        ; $6653: $67
	ld   [hl+], a                                    ; $6654: $22
	ld   b, h                                        ; $6655: $44
	ld   de, $1111                                   ; $6656: $11 $11 $11
	ld   sp, $7917                                   ; $6659: $31 $17 $79
	cp   a                                           ; $665c: $bf
	rst  $38                                         ; $665d: $ff
	rst  $38                                         ; $665e: $ff
	rst  $38                                         ; $665f: $ff
	rst  $38                                         ; $6660: $ff
	rst  $38                                         ; $6661: $ff
	cp   $da                                         ; $6662: $fe $da
	ld   h, d                                        ; $6664: $62
	ld   de, $1111                                   ; $6665: $11 $11 $11
	ld   de, $1111                                   ; $6668: $11 $11 $11
	ld   hl, $7c11                                   ; $666b: $21 $11 $7c
	xor  l                                           ; $666e: $ad
	rst  $38                                         ; $666f: $ff
	rst  $38                                         ; $6670: $ff
	rst  $38                                         ; $6671: $ff
	rst  $38                                         ; $6672: $ff
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff
	ret  c                                           ; $6675: $d8

	ld   sp, $1111                                   ; $6676: $31 $11 $11
	ld   de, $1111                                   ; $6679: $11 $11 $11
	ld   de, $a111                                   ; $667c: $11 $11 $a1
	ld   de, $bfbf                                   ; $667f: $11 $bf $bf
	rst  $38                                         ; $6682: $ff
	rst  $38                                         ; $6683: $ff
	rst  $38                                         ; $6684: $ff
	rst  $38                                         ; $6685: $ff
	rst  $38                                         ; $6686: $ff
	db   $fd                                         ; $6687: $fd
	and  h                                           ; $6688: $a4
	ld   de, $1111                                   ; $6689: $11 $11 $11
	ld   de, $1133                                   ; $668c: $11 $33 $11
	ld   de, $2711                                   ; $668f: $11 $11 $27
	ld   de, $ea5e                                   ; $6692: $11 $5e $ea
	rst  $38                                         ; $6695: $ff
	rst  $38                                         ; $6696: $ff
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	call $1176                                       ; $669a: $cd $76 $11
	ld   de, $7856                                   ; $669d: $11 $56 $78
	adc  h                                           ; $66a0: $8c
	ld   [hl], c                                     ; $66a1: $71
	ld   de, $1111                                   ; $66a2: $11 $11 $11
	ld   de, $6f11                                   ; $66a5: $11 $11 $6f
	rst  $38                                         ; $66a8: $ff
	rst  $38                                         ; $66a9: $ff
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	rst  $38                                         ; $66ac: $ff
	sub  $81                                         ; $66ad: $d6 $81
	ld   hl, $1511                                   ; $66af: $21 $11 $15
	adc  $ff                                         ; $66b2: $ce $ff
	rst  $38                                         ; $66b4: $ff
	ret                                              ; $66b5: $c9


	ld   de, $1111                                   ; $66b6: $11 $11 $11
	ld   de, $2f11                                   ; $66b9: $11 $11 $2f
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	rst  $38                                         ; $66be: $ff
	rst  $38                                         ; $66bf: $ff
	rst  $38                                         ; $66c0: $ff
	sub  c                                           ; $66c1: $91
	ld   de, $1111                                   ; $66c2: $11 $11 $11
	scf                                              ; $66c5: $37
	rst  $38                                         ; $66c6: $ff
	rst  $38                                         ; $66c7: $ff
	rst  $38                                         ; $66c8: $ff
	rst  $38                                         ; $66c9: $ff
	ld   b, c                                        ; $66ca: $41
	ld   de, $1111                                   ; $66cb: $11 $11 $11
	ld   de, $ff16                                   ; $66ce: $11 $16 $ff
	rst  $38                                         ; $66d1: $ff
	rst  $38                                         ; $66d2: $ff
	rst  $38                                         ; $66d3: $ff
	rst  $38                                         ; $66d4: $ff
	ld   d, c                                        ; $66d5: $51
	ld   de, $1111                                   ; $66d6: $11 $11 $11
	ld   l, e                                        ; $66d9: $6b
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	pop  de                                          ; $66de: $d1
	ld   de, $1111                                   ; $66df: $11 $11 $11
	ld   de, $ef12                                   ; $66e2: $11 $12 $ef
	rst  $38                                         ; $66e5: $ff
	rst  $38                                         ; $66e6: $ff
	rst  $38                                         ; $66e7: $ff
	rst  $38                                         ; $66e8: $ff
	pop  bc                                          ; $66e9: $c1
	ld   de, $1111                                   ; $66ea: $11 $11 $11
	ld   a, a                                        ; $66ed: $7f
	rst  $38                                         ; $66ee: $ff
	rst  $38                                         ; $66ef: $ff
	rst  $38                                         ; $66f0: $ff
	rst  $38                                         ; $66f1: $ff
	ld   a, [$1111]                                  ; $66f2: $fa $11 $11
	ld   de, $1211                                   ; $66f5: $11 $11 $12
	ld   a, a                                        ; $66f8: $7f
	rst  $38                                         ; $66f9: $ff
	rst  $38                                         ; $66fa: $ff
	rst  $38                                         ; $66fb: $ff
	rst  $38                                         ; $66fc: $ff
	db   $f4                                         ; $66fd: $f4
	ld   de, $1111                                   ; $66fe: $11 $11 $11
	inc  e                                           ; $6701: $1c
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	rst  $38                                         ; $6704: $ff
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	and  c                                           ; $6707: $a1
	ld   de, $1111                                   ; $6708: $11 $11 $11
	ld   de, $ff5f                                   ; $670b: $11 $5f $ff
	rst  $38                                         ; $670e: $ff
	rst  $38                                         ; $670f: $ff
	rst  $38                                         ; $6710: $ff
	db   $fd                                         ; $6711: $fd
	ld   de, $1111                                   ; $6712: $11 $11 $11
	ld   de, $ff9f                                   ; $6715: $11 $9f $ff
	rst  $38                                         ; $6718: $ff
	rst  $38                                         ; $6719: $ff
	rst  $38                                         ; $671a: $ff
	db   $fc                                         ; $671b: $fc
	ld   de, $1111                                   ; $671c: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $671f: $11 $11 $ff
	rst  $38                                         ; $6722: $ff
	rst  $38                                         ; $6723: $ff
	rst  $38                                         ; $6724: $ff
	rst  $38                                         ; $6725: $ff
	sub  d                                           ; $6726: $92
	ld   de, $1111                                   ; $6727: $11 $11 $11
	inc  d                                           ; $672a: $14
	rst  $28                                         ; $672b: $ef
	rst  $38                                         ; $672c: $ff
	rst  $38                                         ; $672d: $ff
	rst  $38                                         ; $672e: $ff
	cp   a                                           ; $672f: $bf
	ld   sp, hl                                      ; $6730: $f9
	ld   de, $1111                                   ; $6731: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6734: $11 $11 $ff
	rst  $38                                         ; $6737: $ff
	rst  $38                                         ; $6738: $ff
	rst  $38                                         ; $6739: $ff
	rst  $38                                         ; $673a: $ff
	ld   b, c                                        ; $673b: $41
	ld   de, $1111                                   ; $673c: $11 $11 $11
	ld   l, $ff                                      ; $673f: $2e $ff
	rst  $38                                         ; $6741: $ff
	rst  $38                                         ; $6742: $ff
	cp   $33                                         ; $6743: $fe $33
	halt                                             ; $6745: $76
	ld   sp, $1111                                   ; $6746: $31 $11 $11
	ld   de, $df17                                   ; $6749: $11 $17 $df
	rst  $38                                         ; $674c: $ff
	rst  $38                                         ; $674d: $ff
	rst  $38                                         ; $674e: $ff
	jp   c, $1111                                    ; $674f: $da $11 $11

	ld   de, $1e11                                   ; $6752: $11 $11 $1e
	rst  $38                                         ; $6755: $ff
	rst  $38                                         ; $6756: $ff
	rst  $38                                         ; $6757: $ff
	cp   $42                                         ; $6758: $fe $42
	ld   h, h                                        ; $675a: $64
	ld   d, c                                        ; $675b: $51
	ld   de, $1111                                   ; $675c: $11 $11 $11
	ld   d, $bf                                      ; $675f: $16 $bf
	rst  $38                                         ; $6761: $ff
	rst  $38                                         ; $6762: $ff
	rst  $38                                         ; $6763: $ff
	rst  $38                                         ; $6764: $ff
	ld   b, c                                        ; $6765: $41
	ld   de, $1111                                   ; $6766: $11 $11 $11
	jr   @+$01                                       ; $6769: $18 $ff

	rst  $38                                         ; $676b: $ff
	rst  $38                                         ; $676c: $ff
	rst  $38                                         ; $676d: $ff
	ld   b, c                                        ; $676e: $41
	ld   h, [hl]                                     ; $676f: $66
	add  a                                           ; $6770: $87
	ld   de, $1111                                   ; $6771: $11 $11 $11
	inc  d                                           ; $6774: $14
	ld   a, a                                        ; $6775: $7f
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	rst  $38                                         ; $6778: $ff
	rst  $38                                         ; $6779: $ff
	and  c                                           ; $677a: $a1
	ld   de, $1111                                   ; $677b: $11 $11 $11
	ld   [de], a                                     ; $677e: $12
	cp   a                                           ; $677f: $bf
	rst  $38                                         ; $6780: $ff
	rst  $38                                         ; $6781: $ff
	rst  $38                                         ; $6782: $ff
	add  e                                           ; $6783: $83
	inc  h                                           ; $6784: $24
	adc  d                                           ; $6785: $8a
	ld   hl, $1111                                   ; $6786: $21 $11 $11
	ld   de, $ff5d                                   ; $6789: $11 $5d $ff
	rst  $38                                         ; $678c: $ff
	rst  $38                                         ; $678d: $ff
	rst  $38                                         ; $678e: $ff
	or   $11                                         ; $678f: $f6 $11
	ld   de, $1111                                   ; $6791: $11 $11 $11
	ld   c, l                                        ; $6794: $4d
	rst  $38                                         ; $6795: $ff
	rst  $38                                         ; $6796: $ff
	rst  $38                                         ; $6797: $ff
	or   $11                                         ; $6798: $f6 $11
	ld   e, d                                        ; $679a: $5a
	add  c                                           ; $679b: $81
	ld   de, $1111                                   ; $679c: $11 $11 $11
	ld   a, [hl+]                                    ; $679f: $2a
	rst  $38                                         ; $67a0: $ff
	rst  $38                                         ; $67a1: $ff
	rst  $38                                         ; $67a2: $ff
	rst  $38                                         ; $67a3: $ff
	rst  $38                                         ; $67a4: $ff
	ld   sp, $1111                                   ; $67a5: $31 $11 $11
	ld   de, $ff27                                   ; $67a8: $11 $27 $ff
	rst  $38                                         ; $67ab: $ff
	rst  $38                                         ; $67ac: $ff
	cp   $11                                         ; $67ad: $fe $11
	dec  d                                           ; $67af: $15
	cp   d                                           ; $67b0: $ba
	ld   de, $1111                                   ; $67b1: $11 $11 $11
	ld   d, $ff                                      ; $67b4: $16 $ff
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	rst  $38                                         ; $67b8: $ff
	rst  $38                                         ; $67b9: $ff
	pop  hl                                          ; $67ba: $e1

Call_0dc_67bb:
	ld   de, $1111                                   ; $67bb: $11 $11 $11
	ld   d, h                                        ; $67be: $54
	sbc  a                                           ; $67bf: $9f
	rst  $38                                         ; $67c0: $ff
	rst  $38                                         ; $67c1: $ff
	rst  $38                                         ; $67c2: $ff
	sub  c                                           ; $67c3: $91
	ld   de, $917d                                   ; $67c4: $11 $7d $91
	ld   de, $1111                                   ; $67c7: $11 $11 $11
	cp   a                                           ; $67ca: $bf
	rst  $38                                         ; $67cb: $ff
	rst  $38                                         ; $67cc: $ff
	rst  $38                                         ; $67cd: $ff
	rst  $38                                         ; $67ce: $ff
	ei                                               ; $67cf: $fb
	ld   de, $1111                                   ; $67d0: $11 $11 $11
	ld   b, [hl]                                     ; $67d3: $46
	ld   l, h                                        ; $67d4: $6c
	rst  $38                                         ; $67d5: $ff
	rst  $38                                         ; $67d6: $ff
	rst  $38                                         ; $67d7: $ff
	db   $f4                                         ; $67d8: $f4
	ld   de, $e918                                   ; $67d9: $11 $18 $e9
	ld   de, $1111                                   ; $67dc: $11 $11 $11
	dec  e                                           ; $67df: $1d
	rst  $38                                         ; $67e0: $ff
	rst  $38                                         ; $67e1: $ff
	rst  $38                                         ; $67e2: $ff
	rst  $38                                         ; $67e3: $ff
	rst  $38                                         ; $67e4: $ff
	and  c                                           ; $67e5: $a1
	ld   de, $1911                                   ; $67e6: $11 $11 $19
	adc  c                                           ; $67e9: $89
	rst  $28                                         ; $67ea: $ef
	rst  $38                                         ; $67eb: $ff
	rst  $38                                         ; $67ec: $ff
	rst  $38                                         ; $67ed: $ff
	ld   de, $9f11                                   ; $67ee: $11 $11 $9f
	or   c                                           ; $67f1: $b1
	ld   de, $1211                                   ; $67f2: $11 $11 $12
	rst  $28                                         ; $67f5: $ef
	rst  $38                                         ; $67f6: $ff
	rst  $38                                         ; $67f7: $ff
	rst  $38                                         ; $67f8: $ff
	rst  $38                                         ; $67f9: $ff
	ei                                               ; $67fa: $fb
	ld   de, $1111                                   ; $67fb: $11 $11 $11
	ret                                              ; $67fe: $c9


	cp   a                                           ; $67ff: $bf
	rst  $38                                         ; $6800: $ff
	rst  $38                                         ; $6801: $ff
	rst  $38                                         ; $6802: $ff
	pop  af                                          ; $6803: $f1
	ld   de, $fa1d                                   ; $6804: $11 $1d $fa
	ld   de, $1111                                   ; $6807: $11 $11 $11
	ccf                                              ; $680a: $3f
	rst  $38                                         ; $680b: $ff
	rst  $38                                         ; $680c: $ff
	rst  $38                                         ; $680d: $ff
	rst  $38                                         ; $680e: $ff
	rst  $38                                         ; $680f: $ff
	add  c                                           ; $6810: $81
	ld   de, $4c11                                   ; $6811: $11 $11 $4c
	ld   a, l                                        ; $6814: $7d
	rst  $38                                         ; $6815: $ff
	rst  $38                                         ; $6816: $ff
	rst  $38                                         ; $6817: $ff
	ld   sp, hl                                      ; $6818: $f9
	ld   de, rAUD1LOW                                   ; $6819: $11 $13 $ff
	ld   [hl], c                                     ; $681c: $71
	ld   de, $1511                                   ; $681d: $11 $11 $15
	rst  $38                                         ; $6820: $ff
	rst  $38                                         ; $6821: $ff
	rst  $38                                         ; $6822: $ff
	rst  $38                                         ; $6823: $ff
	rst  $38                                         ; $6824: $ff
	or   $11                                         ; $6825: $f6 $11
	ld   de, $a718                                   ; $6827: $11 $18 $a7
	rst  $38                                         ; $682a: $ff
	rst  $38                                         ; $682b: $ff
	rst  $38                                         ; $682c: $ff
	rst  $38                                         ; $682d: $ff
	ld   de, $bf11                                   ; $682e: $11 $11 $bf
	pop  af                                          ; $6831: $f1
	ld   de, $1111                                   ; $6832: $11 $11 $11
	cp   a                                           ; $6835: $bf
	rst  $38                                         ; $6836: $ff
	rst  $38                                         ; $6837: $ff
	rst  $28                                         ; $6838: $ef
	rst  $38                                         ; $6839: $ff
	cp   $11                                         ; $683a: $fe $11
	ld   de, $d611                                   ; $683c: $11 $11 $d6
	cp   a                                           ; $683f: $bf
	rst  $38                                         ; $6840: $ff
	rst  $38                                         ; $6841: $ff
	rst  $38                                         ; $6842: $ff
	and  c                                           ; $6843: $a1
	ld   de, $f72f                                   ; $6844: $11 $2f $f7
	ld   de, $1111                                   ; $6847: $11 $11 $11
	rra                                              ; $684a: $1f
	rst  $38                                         ; $684b: $ff
	rst  $38                                         ; $684c: $ff
	rst  $38                                         ; $684d: $ff
	rst  $38                                         ; $684e: $ff
	rst  $38                                         ; $684f: $ff
	ld   d, c                                        ; $6850: $51
	ld   de, $8511                                   ; $6851: $11 $11 $85
	ld   c, a                                        ; $6854: $4f
	rst  $38                                         ; $6855: $ff
	rst  $38                                         ; $6856: $ff
	rst  $38                                         ; $6857: $ff
	pop  hl                                          ; $6858: $e1
	ld   de, $fc1c                                   ; $6859: $11 $1c $fc
	ld   de, $1111                                   ; $685c: $11 $11 $11
	add  hl, de                                      ; $685f: $19
	rst  $38                                         ; $6860: $ff
	rst  $38                                         ; $6861: $ff
	rst  $38                                         ; $6862: $ff
	rst  $38                                         ; $6863: $ff
	rst  $38                                         ; $6864: $ff
	and  c                                           ; $6865: $a1
	ld   de, $3511                                   ; $6866: $11 $11 $35
	ld   e, $ff                                      ; $6869: $1e $ff
	rst  $38                                         ; $686b: $ff
	rst  $38                                         ; $686c: $ff
	pop  af                                          ; $686d: $f1
	ld   de, $fe19                                   ; $686e: $11 $19 $fe
	ld   de, $1111                                   ; $6871: $11 $11 $11
	ld   d, $ff                                      ; $6874: $16 $ff
	rst  $38                                         ; $6876: $ff
	cp   $ff                                         ; $6877: $fe $ff
	rst  $38                                         ; $6879: $ff
	sub  c                                           ; $687a: $91
	ld   de, $3311                                   ; $687b: $11 $11 $33
	rra                                              ; $687e: $1f
	rst  $38                                         ; $687f: $ff
	rst  $38                                         ; $6880: $ff
	rst  $38                                         ; $6881: $ff
	pop  de                                          ; $6882: $d1
	ld   de, $f91b                                   ; $6883: $11 $1b $f9
	ld   de, $1111                                   ; $6886: $11 $11 $11
	ld   a, [de]                                     ; $6889: $1a
	rst  $38                                         ; $688a: $ff
	rst  $38                                         ; $688b: $ff
	rst  $38                                         ; $688c: $ff
	cp   $ff                                         ; $688d: $fe $ff
	ld   [hl], c                                     ; $688f: $71
	ld   de, $5111                                   ; $6890: $11 $11 $51
	sbc  a                                           ; $6893: $9f
	rst  $38                                         ; $6894: $ff
	rst  $38                                         ; $6895: $ff
	rst  $38                                         ; $6896: $ff
	ld   sp, $5f11                                   ; $6897: $31 $11 $5f
	pop  hl                                          ; $689a: $e1
	ld   de, $1111                                   ; $689b: $11 $11 $11
	rra                                              ; $689e: $1f
	rst  $38                                         ; $689f: $ff
	rst  $38                                         ; $68a0: $ff
	rst  $38                                         ; $68a1: $ff
	sbc  $fa                                         ; $68a2: $de $fa
	ld   d, c                                        ; $68a4: $51
	ld   de, $1812                                   ; $68a5: $11 $12 $18
	rst  $38                                         ; $68a8: $ff
	rst  $38                                         ; $68a9: $ff
	rst  $38                                         ; $68aa: $ff
	db   $f4                                         ; $68ab: $f4
	ld   de, $ec46                                   ; $68ac: $11 $46 $ec
	ld   de, $1111                                   ; $68af: $11 $11 $11
	jr   @+$01                                       ; $68b2: $18 $ff

	rst  $38                                         ; $68b4: $ff
	rst  $38                                         ; $68b5: $ff
	rst  $30                                         ; $68b6: $f7
	rst  $38                                         ; $68b7: $ff
	call nz, $1111                                   ; $68b8: $c4 $11 $11
	ld   [hl+], a                                    ; $68bb: $22
	rst  $38                                         ; $68bc: $ff
	rst  $38                                         ; $68bd: $ff
	rst  $38                                         ; $68be: $ff
	ei                                               ; $68bf: $fb
	ld   de, $6b13                                   ; $68c0: $11 $13 $6b
	ld   de, $1111                                   ; $68c3: $11 $11 $11
	ld   de, $ffff                                   ; $68c6: $11 $ff $ff
	rst  $38                                         ; $68c9: $ff
	pop  af                                          ; $68ca: $f1
	adc  $9b                                         ; $68cb: $ce $9b
	ld   de, $1111                                   ; $68cd: $11 $11 $11
	rst  $38                                         ; $68d0: $ff
	rst  $38                                         ; $68d1: $ff
	rst  $38                                         ; $68d2: $ff
	ld   hl, sp+$11                                  ; $68d3: $f8 $11
	ld   b, l                                        ; $68d5: $45
	ld   l, b                                        ; $68d6: $68
	ld   de, $1111                                   ; $68d7: $11 $11 $11
	jr   @+$01                                       ; $68da: $18 $ff

	rst  $38                                         ; $68dc: $ff
	rst  $38                                         ; $68dd: $ff
	ld   h, c                                        ; $68de: $61
	ld   a, [$11b7]                                  ; $68df: $fa $b7 $11
	ld   de, $ff19                                   ; $68e2: $11 $19 $ff
	rst  $38                                         ; $68e5: $ff
	rst  $38                                         ; $68e6: $ff
	call nz, Call_0dc_6312                           ; $68e7: $c4 $12 $63
	ld   b, c                                        ; $68ea: $41
	ld   de, $1111                                   ; $68eb: $11 $11 $11
	xor  a                                           ; $68ee: $af
	rst  $38                                         ; $68ef: $ff
	rst  $38                                         ; $68f0: $ff
	pop  af                                          ; $68f1: $f1
	rra                                              ; $68f2: $1f
	ld   a, e                                        ; $68f3: $7b
	add  c                                           ; $68f4: $81
	ld   de, $bf11                                   ; $68f5: $11 $11 $bf
	rst  $38                                         ; $68f8: $ff
	rst  $38                                         ; $68f9: $ff
	ei                                               ; $68fa: $fb
	ld   hl, $1265                                   ; $68fb: $21 $65 $12
	ld   de, $1111                                   ; $68fe: $11 $11 $11
	ccf                                              ; $6901: $3f
	rst  $38                                         ; $6902: $ff
	rst  $38                                         ; $6903: $ff
	ld   a, [$b81d]                                  ; $6904: $fa $1d $b8
	add  e                                           ; $6907: $83
	ld   de, $3f11                                   ; $6908: $11 $11 $3f
	rst  $38                                         ; $690b: $ff
	rst  $38                                         ; $690c: $ff
	ei                                               ; $690d: $fb
	sub  c                                           ; $690e: $91
	ld   e, c                                        ; $690f: $59
	ld   de, $1111                                   ; $6910: $11 $11 $11
	ld   de, $ffef                                   ; $6913: $11 $ef $ff
	rst  $38                                         ; $6916: $ff
	push af                                          ; $6917: $f5
	ld   e, [hl]                                     ; $6918: $5e
	add  sp, $21                                     ; $6919: $e8 $21
	ld   de, $df11                                   ; $691b: $11 $11 $df
	rst  $38                                         ; $691e: $ff
	rst  $38                                         ; $691f: $ff
	db   $ed                                         ; $6920: $ed
	add  d                                           ; $6921: $82
	ld   [hl], d                                     ; $6922: $72
	ld   de, $1111                                   ; $6923: $11 $11 $11
	ld   a, [de]                                     ; $6926: $1a
	rst  $38                                         ; $6927: $ff
	rst  $38                                         ; $6928: $ff
	rst  $38                                         ; $6929: $ff
	ld   h, a                                        ; $692a: $67
	rst  $38                                         ; $692b: $ff
	sub  e                                           ; $692c: $93
	ld   de, $2d11                                   ; $692d: $11 $11 $2d
	rst  $38                                         ; $6930: $ff
	rst  $38                                         ; $6931: $ff
	rst  $38                                         ; $6932: $ff
	ret  c                                           ; $6933: $d8

	ld   b, e                                        ; $6934: $43
	ld   de, $1111                                   ; $6935: $11 $11 $11
	ld   de, $ffff                                   ; $6938: $11 $ff $ff
	rst  $38                                         ; $693b: $ff
	xor  [hl]                                        ; $693c: $ae
	sbc  $b3                                         ; $693d: $de $b3
	ld   de, $1a11                                   ; $693f: $11 $11 $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6942: $cf
	rst  $38                                         ; $6943: $ff
	rst  $38                                         ; $6944: $ff
	ld   sp, hl                                      ; $6945: $f9
	ld   d, c                                        ; $6946: $51
	ld   de, $1111                                   ; $6947: $11 $11 $11
	rla                                              ; $694a: $17
	rst  $38                                         ; $694b: $ff
	rst  $38                                         ; $694c: $ff
	rst  $38                                         ; $694d: $ff
	call z, $85bb                                    ; $694e: $cc $bb $85
	ld   de, $4811                                   ; $6951: $11 $11 $48
	xor  [hl]                                        ; $6954: $ae
	rst  $38                                         ; $6955: $ff
	rst  $38                                         ; $6956: $ff
	or   [hl]                                        ; $6957: $b6
	ld   bc, $1111                                   ; $6958: $01 $11 $11
	ld   [de], a                                     ; $695b: $12
	rst  $38                                         ; $695c: $ff
	rst  $38                                         ; $695d: $ff
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	jp   hl                                          ; $6960: $e9


	ld   a, b                                        ; $6961: $78
	ld   b, h                                        ; $6962: $44
	ld   b, c                                        ; $6963: $41
	ld   de, $ff39                                   ; $6964: $11 $39 $ff
	rst  $38                                         ; $6967: $ff
	sub  e                                           ; $6968: $93
	ld   de, $1111                                   ; $6969: $11 $11 $11
	ccf                                              ; $696c: $3f
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	rst  $38                                         ; $696f: $ff
	rst  $38                                         ; $6970: $ff
	sbc  $ca                                         ; $6971: $de $ca
	or   l                                           ; $6973: $b5
	ld   de, $5b11                                   ; $6974: $11 $11 $5b
	sbc  c                                           ; $6977: $99
	ld   b, c                                        ; $6978: $41
	ld   de, $4611                                   ; $6979: $11 $11 $46
	rst  $38                                         ; $697c: $ff
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	rst  $38                                         ; $697f: $ff
	jp   hl                                          ; $6980: $e9


	db   $ed                                         ; $6981: $ed
	rst  $38                                         ; $6982: $ff
	or   [hl]                                        ; $6983: $b6
	ld   [hl+], a                                    ; $6984: $22
	ld   b, a                                        ; $6985: $47
	ld   [hl], e                                     ; $6986: $73
	ld   de, $1111                                   ; $6987: $11 $11 $11
	scf                                              ; $698a: $37
	rst  $38                                         ; $698b: $ff
	rst  $38                                         ; $698c: $ff
	rst  $38                                         ; $698d: $ff
	rst  $38                                         ; $698e: $ff
	and  a                                           ; $698f: $a7
	call z, $94ff                                    ; $6990: $cc $ff $94
	ld   de, $7439                                   ; $6993: $11 $39 $74
	ld   bc, $1111                                   ; $6996: $01 $11 $11
	add  hl, sp                                      ; $6999: $39
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	rst  $38                                         ; $699c: $ff
	db   $fd                                         ; $699d: $fd
	adc  h                                           ; $699e: $8c
	rst  $38                                         ; $699f: $ff
	db   $fd                                         ; $69a0: $fd
	ld   h, d                                        ; $69a1: $62
	ld   de, $1134                                   ; $69a2: $11 $34 $11
	ld   de, $1311                                   ; $69a5: $11 $11 $13
	ld   l, l                                        ; $69a8: $6d
	cp   $ff                                         ; $69a9: $fe $ff
	rst  $38                                         ; $69ab: $ff
	jp   hl                                          ; $69ac: $e9


	cp   [hl]                                        ; $69ad: $be
	rst  $28                                         ; $69ae: $ef
	ld   sp, hl                                      ; $69af: $f9
	ld   d, h                                        ; $69b0: $54
	ld   [hl+], a                                    ; $69b1: $22
	ld   b, c                                        ; $69b2: $41
	ld   de, $1311                                   ; $69b3: $11 $11 $13
	ld   h, a                                        ; $69b6: $67
	db   $ec                                         ; $69b7: $ec
	rst  $28                                         ; $69b8: $ef
	rst  $38                                         ; $69b9: $ff
	db   $fc                                         ; $69ba: $fc
	adc  e                                           ; $69bb: $8b
	rst  $38                                         ; $69bc: $ff
	cp   $a7                                         ; $69bd: $fe $a7
	ld   b, e                                        ; $69bf: $43
	ld   [hl+], a                                    ; $69c0: $22
	ld   de, $1111                                   ; $69c1: $11 $11 $11
	inc  d                                           ; $69c4: $14
	ld   l, d                                        ; $69c5: $6a
	adc  $ff                                         ; $69c6: $ce $ff
	db   $fd                                         ; $69c8: $fd
	res  7, l                                        ; $69c9: $cb $bd
	rst  $38                                         ; $69cb: $ff
	jp   c, Jump_0dc_6387                            ; $69cc: $da $87 $63

	ld   de, $1111                                   ; $69cf: $11 $11 $11
	ld   de, $ce56                                   ; $69d2: $11 $56 $ce
	cp   [hl]                                        ; $69d5: $be
	db   $ed                                         ; $69d6: $ed
	db   $ed                                         ; $69d7: $ed
	sbc  e                                           ; $69d8: $9b
	db   $dd                                         ; $69d9: $dd
	xor  $a7                                         ; $69da: $ee $a7
	halt                                             ; $69dc: $76
	ld   b, e                                        ; $69dd: $43
	ld   de, $1114                                   ; $69de: $11 $14 $11
	dec  h                                           ; $69e1: $25
	ld   a, e                                        ; $69e2: $7b
	cp   c                                           ; $69e3: $b9
	call $c9de                                       ; $69e4: $cd $de $c9
	cp   e                                           ; $69e7: $bb
	call Call_0dc_77c9                               ; $69e8: $cd $c9 $77
	ld   d, h                                        ; $69eb: $54
	inc  sp                                          ; $69ec: $33
	ld   b, l                                        ; $69ed: $45
	ld   d, d                                        ; $69ee: $52
	ld   de, $8857                                   ; $69ef: $11 $57 $88
	ld   a, e                                        ; $69f2: $7b
	xor  $c9                                         ; $69f3: $ee $c9
	sbc  e                                           ; $69f5: $9b
	rst  JumpTable                                         ; $69f6: $df
	db   $db                                         ; $69f7: $db
	sbc  b                                           ; $69f8: $98
	sub  a                                           ; $69f9: $97
	ld   sp, $5524                                   ; $69fa: $31 $24 $55
	inc  sp                                          ; $69fd: $33
	ld   d, [hl]                                     ; $69fe: $56
	ld   [hl], a                                     ; $69ff: $77
	ld   a, d                                        ; $6a00: $7a
	xor  c                                           ; $6a01: $a9
	xor  d                                           ; $6a02: $aa
	cp   e                                           ; $6a03: $bb
	xor  e                                           ; $6a04: $ab
	cp   l                                           ; $6a05: $bd
	cp   h                                           ; $6a06: $bc
	xor  c                                           ; $6a07: $a9
	sub  [hl]                                        ; $6a08: $96
	ld   h, l                                        ; $6a09: $65
	ld   d, [hl]                                     ; $6a0a: $56
	ld   d, h                                        ; $6a0b: $54
	inc  hl                                          ; $6a0c: $23
	ld   b, l                                        ; $6a0d: $45
	ld   d, [hl]                                     ; $6a0e: $56
	ld   l, c                                        ; $6a0f: $69
	xor  c                                           ; $6a10: $a9
	xor  d                                           ; $6a11: $aa
	xor  h                                           ; $6a12: $ac
	jp   c, $abab                                    ; $6a13: $da $ab $ab

	sub  [hl]                                        ; $6a16: $96
	ld   h, a                                        ; $6a17: $67
	ld   d, [hl]                                     ; $6a18: $56
	ld   [hl], a                                     ; $6a19: $77
	ld   h, l                                        ; $6a1a: $65
	ld   h, [hl]                                     ; $6a1b: $66
	ld   h, l                                        ; $6a1c: $65
	ld   h, [hl]                                     ; $6a1d: $66
	ld   a, b                                        ; $6a1e: $78
	ld   [hl], a                                     ; $6a1f: $77
	adc  c                                           ; $6a20: $89
	xor  e                                           ; $6a21: $ab
	sbc  c                                           ; $6a22: $99
	cp   h                                           ; $6a23: $bc
	xor  b                                           ; $6a24: $a8
	sub  a                                           ; $6a25: $97
	adc  b                                           ; $6a26: $88
	ld   h, [hl]                                     ; $6a27: $66
	add  [hl]                                        ; $6a28: $86
	ld   [hl], a                                     ; $6a29: $77
	ld   b, [hl]                                     ; $6a2a: $46
	ld   [hl], a                                     ; $6a2b: $77
	ld   [hl], a                                     ; $6a2c: $77
	ld   l, c                                        ; $6a2d: $69
	adc  c                                           ; $6a2e: $89
	xor  c                                           ; $6a2f: $a9
	sbc  b                                           ; $6a30: $98
	adc  c                                           ; $6a31: $89
	sub  a                                           ; $6a32: $97
	sbc  c                                           ; $6a33: $99
	sbc  c                                           ; $6a34: $99
	sbc  b                                           ; $6a35: $98
	add  a                                           ; $6a36: $87
	ld   l, c                                        ; $6a37: $69
	halt                                             ; $6a38: $76
	ld   [hl], a                                     ; $6a39: $77
	adc  b                                           ; $6a3a: $88
	ld   d, [hl]                                     ; $6a3b: $56
	sub  a                                           ; $6a3c: $97
	sbc  e                                           ; $6a3d: $9b
	ld   [hl], a                                     ; $6a3e: $77
	sub  a                                           ; $6a3f: $97
	ld   a, c                                        ; $6a40: $79
	adc  c                                           ; $6a41: $89
	xor  b                                           ; $6a42: $a8
	ld   [hl], a                                     ; $6a43: $77
	ld   l, b                                        ; $6a44: $68
	add  a                                           ; $6a45: $87
	add  [hl]                                        ; $6a46: $86
	xor  c                                           ; $6a47: $a9
	ld   h, [hl]                                     ; $6a48: $66
	ld   l, c                                        ; $6a49: $69
	adc  b                                           ; $6a4a: $88
	ld   [hl], a                                     ; $6a4b: $77
	ld   a, c                                        ; $6a4c: $79
	add  a                                           ; $6a4d: $87
	sub  a                                           ; $6a4e: $97
	add  [hl]                                        ; $6a4f: $86
	sub  a                                           ; $6a50: $97
	ld   [hl], a                                     ; $6a51: $77
	ld   h, [hl]                                     ; $6a52: $66
	ld   a, b                                        ; $6a53: $78
	ld   l, b                                        ; $6a54: $68
	adc  b                                           ; $6a55: $88
	adc  b                                           ; $6a56: $88
	adc  c                                           ; $6a57: $89
	xor  b                                           ; $6a58: $a8
	ld   a, b                                        ; $6a59: $78
	adc  c                                           ; $6a5a: $89
	add  a                                           ; $6a5b: $87
	xor  b                                           ; $6a5c: $a8
	adc  b                                           ; $6a5d: $88
	adc  c                                           ; $6a5e: $89
	ld   l, b                                        ; $6a5f: $68
	adc  b                                           ; $6a60: $88
	add  [hl]                                        ; $6a61: $86
	adc  c                                           ; $6a62: $89
	ld   a, b                                        ; $6a63: $78
	adc  b                                           ; $6a64: $88
	sbc  b                                           ; $6a65: $98
	adc  c                                           ; $6a66: $89
	sbc  d                                           ; $6a67: $9a
	xor  d                                           ; $6a68: $aa
	xor  d                                           ; $6a69: $aa
	sbc  c                                           ; $6a6a: $99
	sbc  c                                           ; $6a6b: $99
	adc  b                                           ; $6a6c: $88
	sbc  c                                           ; $6a6d: $99
	adc  b                                           ; $6a6e: $88
	adc  b                                           ; $6a6f: $88
	sbc  c                                           ; $6a70: $99
	sbc  c                                           ; $6a71: $99
	sbc  c                                           ; $6a72: $99
	xor  c                                           ; $6a73: $a9
	sbc  b                                           ; $6a74: $98
	adc  b                                           ; $6a75: $88
	adc  c                                           ; $6a76: $89
	sbc  d                                           ; $6a77: $9a
	xor  b                                           ; $6a78: $a8
	xor  d                                           ; $6a79: $aa
	xor  c                                           ; $6a7a: $a9
	sbc  d                                           ; $6a7b: $9a
	adc  b                                           ; $6a7c: $88
	adc  c                                           ; $6a7d: $89
	adc  c                                           ; $6a7e: $89
	adc  b                                           ; $6a7f: $88
	adc  b                                           ; $6a80: $88
	sbc  c                                           ; $6a81: $99
	sbc  d                                           ; $6a82: $9a
	sbc  c                                           ; $6a83: $99
	adc  b                                           ; $6a84: $88
	sbc  c                                           ; $6a85: $99
	sbc  c                                           ; $6a86: $99
	adc  c                                           ; $6a87: $89
	sbc  b                                           ; $6a88: $98
	sbc  c                                           ; $6a89: $99
	sbc  c                                           ; $6a8a: $99
	adc  c                                           ; $6a8b: $89
	adc  b                                           ; $6a8c: $88
	sbc  c                                           ; $6a8d: $99
	sbc  c                                           ; $6a8e: $99
	adc  c                                           ; $6a8f: $89
	sbc  b                                           ; $6a90: $98
	sbc  b                                           ; $6a91: $98
	sbc  b                                           ; $6a92: $98
	sbc  c                                           ; $6a93: $99
	sbc  c                                           ; $6a94: $99
	sbc  b                                           ; $6a95: $98
	adc  b                                           ; $6a96: $88
	adc  b                                           ; $6a97: $88
	sbc  b                                           ; $6a98: $98
	adc  b                                           ; $6a99: $88
	adc  b                                           ; $6a9a: $88
	adc  c                                           ; $6a9b: $89
	sbc  b                                           ; $6a9c: $98
	sbc  b                                           ; $6a9d: $98
	adc  b                                           ; $6a9e: $88
	adc  b                                           ; $6a9f: $88
	adc  b                                           ; $6aa0: $88
	adc  b                                           ; $6aa1: $88
	adc  b                                           ; $6aa2: $88
	adc  b                                           ; $6aa3: $88
	adc  b                                           ; $6aa4: $88
	adc  b                                           ; $6aa5: $88
	adc  b                                           ; $6aa6: $88
	sbc  b                                           ; $6aa7: $98
	adc  b                                           ; $6aa8: $88
	adc  b                                           ; $6aa9: $88
	ld   [hl], a                                     ; $6aaa: $77
	adc  b                                           ; $6aab: $88
	adc  b                                           ; $6aac: $88
	adc  b                                           ; $6aad: $88
	adc  b                                           ; $6aae: $88
	ld   a, b                                        ; $6aaf: $78
	adc  b                                           ; $6ab0: $88
	adc  b                                           ; $6ab1: $88
	adc  b                                           ; $6ab2: $88
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	adc  b                                           ; $6ab5: $88
	adc  b                                           ; $6ab6: $88
	ld   a, b                                        ; $6ab7: $78
	adc  b                                           ; $6ab8: $88
	adc  b                                           ; $6ab9: $88
	adc  b                                           ; $6aba: $88
	adc  b                                           ; $6abb: $88
	adc  b                                           ; $6abc: $88
	adc  b                                           ; $6abd: $88
	add  a                                           ; $6abe: $87
	ld   [hl], a                                     ; $6abf: $77
	ld   [hl], a                                     ; $6ac0: $77
	adc  b                                           ; $6ac1: $88
	adc  b                                           ; $6ac2: $88
	adc  b                                           ; $6ac3: $88
	adc  b                                           ; $6ac4: $88
	adc  b                                           ; $6ac5: $88
	ld   a, b                                        ; $6ac6: $78
	add  a                                           ; $6ac7: $87
	adc  b                                           ; $6ac8: $88
	adc  b                                           ; $6ac9: $88

Call_0dc_6aca:
	adc  b                                           ; $6aca: $88
	adc  b                                           ; $6acb: $88
	adc  b                                           ; $6acc: $88
	adc  b                                           ; $6acd: $88
	add  a                                           ; $6ace: $87
	add  a                                           ; $6acf: $87
	ld   a, b                                        ; $6ad0: $78
	adc  b                                           ; $6ad1: $88
	add  a                                           ; $6ad2: $87
	ld   [hl], a                                     ; $6ad3: $77
	adc  b                                           ; $6ad4: $88
	adc  b                                           ; $6ad5: $88
	adc  c                                           ; $6ad6: $89
	adc  b                                           ; $6ad7: $88
	adc  b                                           ; $6ad8: $88
	add  a                                           ; $6ad9: $87
	adc  b                                           ; $6ada: $88
	adc  b                                           ; $6adb: $88
	add  a                                           ; $6adc: $87
	adc  b                                           ; $6add: $88
	adc  b                                           ; $6ade: $88
	adc  b                                           ; $6adf: $88
	adc  b                                           ; $6ae0: $88
	ld   [hl], a                                     ; $6ae1: $77
	ld   [hl], a                                     ; $6ae2: $77
	ld   [hl], a                                     ; $6ae3: $77
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	adc  b                                           ; $6ae6: $88
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	adc  b                                           ; $6ae9: $88
	adc  b                                           ; $6aea: $88
	ld   a, b                                        ; $6aeb: $78
	adc  b                                           ; $6aec: $88
	adc  b                                           ; $6aed: $88
	ld   a, b                                        ; $6aee: $78
	adc  b                                           ; $6aef: $88
	add  a                                           ; $6af0: $87
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	add  a                                           ; $6af3: $87
	adc  b                                           ; $6af4: $88
	ld   a, b                                        ; $6af5: $78
	adc  b                                           ; $6af6: $88
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	adc  b                                           ; $6af9: $88
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	add  a                                           ; $6afd: $87
	ld   a, b                                        ; $6afe: $78
	adc  b                                           ; $6aff: $88
	add  a                                           ; $6b00: $87
	adc  b                                           ; $6b01: $88
	add  a                                           ; $6b02: $87
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
	ld   [hl], a                                     ; $6b0d: $77
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
	ld   a, b                                        ; $6b1c: $78
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	adc  b                                           ; $6b20: $88
	adc  b                                           ; $6b21: $88
	adc  b                                           ; $6b22: $88
	adc  b                                           ; $6b23: $88
	adc  c                                           ; $6b24: $89
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
	sbc  c                                           ; $6b36: $99
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	adc  b                                           ; $6b39: $88
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	adc  b                                           ; $6b3d: $88
	adc  b                                           ; $6b3e: $88
	adc  b                                           ; $6b3f: $88
	adc  c                                           ; $6b40: $89
	sbc  b                                           ; $6b41: $98
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
	sbc  b                                           ; $6b53: $98
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
	add  a                                           ; $6b7a: $87
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
	add  a                                           ; $6b8a: $87
	ld   a, b                                        ; $6b8b: $78
	adc  b                                           ; $6b8c: $88
	adc  b                                           ; $6b8d: $88
	adc  b                                           ; $6b8e: $88
	adc  b                                           ; $6b8f: $88
	adc  b                                           ; $6b90: $88
	adc  b                                           ; $6b91: $88
	adc  b                                           ; $6b92: $88
	adc  b                                           ; $6b93: $88
	adc  b                                           ; $6b94: $88
	ld   a, b                                        ; $6b95: $78
	adc  b                                           ; $6b96: $88
	adc  b                                           ; $6b97: $88
	adc  b                                           ; $6b98: $88
	adc  b                                           ; $6b99: $88
	adc  b                                           ; $6b9a: $88
	adc  b                                           ; $6b9b: $88
	adc  b                                           ; $6b9c: $88
	ld   [hl], a                                     ; $6b9d: $77
	ld   a, b                                        ; $6b9e: $78
	adc  b                                           ; $6b9f: $88
	adc  b                                           ; $6ba0: $88
	adc  b                                           ; $6ba1: $88
	ld   a, b                                        ; $6ba2: $78
	adc  b                                           ; $6ba3: $88
	adc  b                                           ; $6ba4: $88
	adc  b                                           ; $6ba5: $88
	adc  b                                           ; $6ba6: $88
	adc  b                                           ; $6ba7: $88
	adc  b                                           ; $6ba8: $88
	adc  b                                           ; $6ba9: $88
	adc  b                                           ; $6baa: $88
	adc  b                                           ; $6bab: $88
	add  a                                           ; $6bac: $87
	adc  b                                           ; $6bad: $88
	ld   a, b                                        ; $6bae: $78
	adc  b                                           ; $6baf: $88
	adc  b                                           ; $6bb0: $88
	adc  b                                           ; $6bb1: $88
	adc  b                                           ; $6bb2: $88
	adc  b                                           ; $6bb3: $88
	ld   a, b                                        ; $6bb4: $78
	adc  b                                           ; $6bb5: $88
	adc  b                                           ; $6bb6: $88
	adc  b                                           ; $6bb7: $88
	adc  b                                           ; $6bb8: $88

Call_0dc_6bb9:
	adc  b                                           ; $6bb9: $88
	adc  b                                           ; $6bba: $88
	adc  b                                           ; $6bbb: $88
	adc  b                                           ; $6bbc: $88
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	adc  b                                           ; $6bbf: $88
	add  a                                           ; $6bc0: $87
	adc  b                                           ; $6bc1: $88
	ld   a, b                                        ; $6bc2: $78
	adc  b                                           ; $6bc3: $88
	adc  b                                           ; $6bc4: $88
	sbc  c                                           ; $6bc5: $99
	adc  b                                           ; $6bc6: $88
	add  a                                           ; $6bc7: $87
	ld   a, b                                        ; $6bc8: $78
	ld   a, b                                        ; $6bc9: $78
	adc  b                                           ; $6bca: $88
	ld   [hl], a                                     ; $6bcb: $77
	ld   [hl], a                                     ; $6bcc: $77
	adc  b                                           ; $6bcd: $88
	adc  c                                           ; $6bce: $89
	sbc  b                                           ; $6bcf: $98
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
	add  a                                           ; $6bda: $87
	ld   a, b                                        ; $6bdb: $78
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
	sbc  b                                           ; $6beb: $98
	adc  b                                           ; $6bec: $88
	adc  b                                           ; $6bed: $88
	sbc  c                                           ; $6bee: $99
	adc  c                                           ; $6bef: $89
	adc  b                                           ; $6bf0: $88
	sbc  c                                           ; $6bf1: $99
	adc  c                                           ; $6bf2: $89
	adc  c                                           ; $6bf3: $89
	adc  b                                           ; $6bf4: $88
	adc  b                                           ; $6bf5: $88
	adc  b                                           ; $6bf6: $88
	adc  b                                           ; $6bf7: $88
	ld   a, b                                        ; $6bf8: $78
	ld   [hl], a                                     ; $6bf9: $77
	ld   [hl], a                                     ; $6bfa: $77
	add  a                                           ; $6bfb: $87
	ld   [hl], a                                     ; $6bfc: $77
	ld   [hl], a                                     ; $6bfd: $77
	ld   [hl], a                                     ; $6bfe: $77
	adc  b                                           ; $6bff: $88
	ld   a, b                                        ; $6c00: $78
	ld   a, b                                        ; $6c01: $78
	ld   [hl], a                                     ; $6c02: $77
	ld   a, b                                        ; $6c03: $78
	xor  c                                           ; $6c04: $a9
	cp   c                                           ; $6c05: $b9
	ld   h, l                                        ; $6c06: $65
	ld   d, [hl]                                     ; $6c07: $56
	ld   h, a                                        ; $6c08: $67
	add  a                                           ; $6c09: $87
	ld   [hl], a                                     ; $6c0a: $77
	ld   a, b                                        ; $6c0b: $78
	adc  c                                           ; $6c0c: $89
	sbc  c                                           ; $6c0d: $99
	xor  d                                           ; $6c0e: $aa
	sbc  d                                           ; $6c0f: $9a
	xor  c                                           ; $6c10: $a9
	ld   [hl], a                                     ; $6c11: $77
	add  a                                           ; $6c12: $87
	ld   [hl], a                                     ; $6c13: $77
	adc  b                                           ; $6c14: $88
	ld   a, b                                        ; $6c15: $78
	sub  a                                           ; $6c16: $97
	adc  b                                           ; $6c17: $88
	sbc  d                                           ; $6c18: $9a
	xor  c                                           ; $6c19: $a9
	sbc  c                                           ; $6c1a: $99
	sbc  b                                           ; $6c1b: $98
	adc  c                                           ; $6c1c: $89
	sbc  b                                           ; $6c1d: $98
	add  a                                           ; $6c1e: $87
	ld   a, b                                        ; $6c1f: $78
	sbc  c                                           ; $6c20: $99
	add  a                                           ; $6c21: $87
	adc  b                                           ; $6c22: $88
	sbc  d                                           ; $6c23: $9a
	sbc  d                                           ; $6c24: $9a
	xor  b                                           ; $6c25: $a8
	sbc  c                                           ; $6c26: $99
	sbc  c                                           ; $6c27: $99
	sbc  c                                           ; $6c28: $99
	sub  a                                           ; $6c29: $97
	ld   a, b                                        ; $6c2a: $78
	halt                                             ; $6c2b: $76
	ld   h, a                                        ; $6c2c: $67
	ld   h, [hl]                                     ; $6c2d: $66
	ld   [hl], a                                     ; $6c2e: $77
	halt                                             ; $6c2f: $76
	halt                                             ; $6c30: $76
	ld   h, a                                        ; $6c31: $67
	adc  b                                           ; $6c32: $88
	adc  c                                           ; $6c33: $89
	sub  a                                           ; $6c34: $97
	ld   h, [hl]                                     ; $6c35: $66
	ld   a, b                                        ; $6c36: $78
	ld   [hl], a                                     ; $6c37: $77
	halt                                             ; $6c38: $76
	ld   h, a                                        ; $6c39: $67
	ld   [hl], a                                     ; $6c3a: $77
	ld   a, b                                        ; $6c3b: $78
	adc  b                                           ; $6c3c: $88
	adc  c                                           ; $6c3d: $89
	sbc  b                                           ; $6c3e: $98
	ld   a, b                                        ; $6c3f: $78
	xor  c                                           ; $6c40: $a9
	sbc  c                                           ; $6c41: $99
	sbc  c                                           ; $6c42: $99
	sbc  b                                           ; $6c43: $98
	adc  c                                           ; $6c44: $89
	sbc  b                                           ; $6c45: $98
	ld   [hl], a                                     ; $6c46: $77
	ld   a, b                                        ; $6c47: $78
	add  [hl]                                        ; $6c48: $86
	ld   [hl], a                                     ; $6c49: $77
	halt                                             ; $6c4a: $76
	ld   d, a                                        ; $6c4b: $57
	ld   a, b                                        ; $6c4c: $78
	adc  d                                           ; $6c4d: $8a
	sbc  b                                           ; $6c4e: $98
	sbc  d                                           ; $6c4f: $9a
	sbc  b                                           ; $6c50: $98
	xor  e                                           ; $6c51: $ab
	ld   a, b                                        ; $6c52: $78
	add  a                                           ; $6c53: $87
	ld   [hl], a                                     ; $6c54: $77
	ld   [hl], a                                     ; $6c55: $77
	ld   a, b                                        ; $6c56: $78
	ld   [hl], a                                     ; $6c57: $77
	ld   l, b                                        ; $6c58: $68
	sub  [hl]                                        ; $6c59: $96
	add  a                                           ; $6c5a: $87
	adc  d                                           ; $6c5b: $8a
	sbc  c                                           ; $6c5c: $99
	cp   d                                           ; $6c5d: $ba
	add  a                                           ; $6c5e: $87
	adc  d                                           ; $6c5f: $8a
	sbc  c                                           ; $6c60: $99
	adc  b                                           ; $6c61: $88
	halt                                             ; $6c62: $76
	halt                                             ; $6c63: $76
	ld   a, c                                        ; $6c64: $79
	sbc  c                                           ; $6c65: $99
	add  a                                           ; $6c66: $87
	add  a                                           ; $6c67: $87
	ld   a, b                                        ; $6c68: $78
	adc  c                                           ; $6c69: $89
	xor  b                                           ; $6c6a: $a8
	adc  c                                           ; $6c6b: $89
	ld   [hl], a                                     ; $6c6c: $77
	ld   l, b                                        ; $6c6d: $68
	ld   a, b                                        ; $6c6e: $78
	sbc  c                                           ; $6c6f: $99
	sub  a                                           ; $6c70: $97
	halt                                             ; $6c71: $76
	ld   [hl], a                                     ; $6c72: $77
	ld   a, c                                        ; $6c73: $79
	sbc  b                                           ; $6c74: $98
	ld   a, b                                        ; $6c75: $78
	ld   a, b                                        ; $6c76: $78
	adc  d                                           ; $6c77: $8a
	xor  e                                           ; $6c78: $ab
	xor  c                                           ; $6c79: $a9
	sbc  b                                           ; $6c7a: $98
	xor  d                                           ; $6c7b: $aa
	sub  a                                           ; $6c7c: $97
	ld   [hl], a                                     ; $6c7d: $77
	ld   h, [hl]                                     ; $6c7e: $66
	ld   d, l                                        ; $6c7f: $55
	ld   h, a                                        ; $6c80: $67
	ld   a, c                                        ; $6c81: $79
	sbc  b                                           ; $6c82: $98
	sbc  c                                           ; $6c83: $99
	ld   a, b                                        ; $6c84: $78
	cp   e                                           ; $6c85: $bb
	cp   b                                           ; $6c86: $b8
	xor  b                                           ; $6c87: $a8
	halt                                             ; $6c88: $76
	ld   h, a                                        ; $6c89: $67
	adc  b                                           ; $6c8a: $88
	ld   l, c                                        ; $6c8b: $69
	ld   [hl], a                                     ; $6c8c: $77
	ld   h, [hl]                                     ; $6c8d: $66
	adc  b                                           ; $6c8e: $88
	sub  a                                           ; $6c8f: $97
	adc  b                                           ; $6c90: $88
	sub  a                                           ; $6c91: $97
	ld   [hl], a                                     ; $6c92: $77
	adc  d                                           ; $6c93: $8a
	sub  a                                           ; $6c94: $97
	ld   a, c                                        ; $6c95: $79
	sbc  b                                           ; $6c96: $98
	ld   h, a                                        ; $6c97: $67
	adc  c                                           ; $6c98: $89
	sub  [hl]                                        ; $6c99: $96
	ld   a, b                                        ; $6c9a: $78
	xor  c                                           ; $6c9b: $a9
	ld   [hl], a                                     ; $6c9c: $77
	sbc  d                                           ; $6c9d: $9a
	sbc  b                                           ; $6c9e: $98
	ld   a, c                                        ; $6c9f: $79
	xor  b                                           ; $6ca0: $a8
	ld   h, a                                        ; $6ca1: $67
	sbc  b                                           ; $6ca2: $98
	halt                                             ; $6ca3: $76
	ld   h, a                                        ; $6ca4: $67
	halt                                             ; $6ca5: $76
	ld   a, b                                        ; $6ca6: $78
	sbc  c                                           ; $6ca7: $99
	sbc  c                                           ; $6ca8: $99
	sbc  b                                           ; $6ca9: $98
	sbc  c                                           ; $6caa: $99
	sbc  c                                           ; $6cab: $99
	sbc  c                                           ; $6cac: $99
	sbc  b                                           ; $6cad: $98
	adc  b                                           ; $6cae: $88
	sub  a                                           ; $6caf: $97
	adc  b                                           ; $6cb0: $88
	ld   [hl], a                                     ; $6cb1: $77
	ld   a, b                                        ; $6cb2: $78
	ld   [hl], a                                     ; $6cb3: $77
	ld   h, [hl]                                     ; $6cb4: $66
	halt                                             ; $6cb5: $76
	ld   [hl], a                                     ; $6cb6: $77
	ld   a, b                                        ; $6cb7: $78
	sbc  c                                           ; $6cb8: $99
	sbc  c                                           ; $6cb9: $99
	cp   d                                           ; $6cba: $ba
	xor  d                                           ; $6cbb: $aa
	cp   h                                           ; $6cbc: $bc
	ret                                              ; $6cbd: $c9


	sbc  e                                           ; $6cbe: $9b
	sbc  d                                           ; $6cbf: $9a
	adc  b                                           ; $6cc0: $88
	add  a                                           ; $6cc1: $87
	halt                                             ; $6cc2: $76
	ld   d, h                                        ; $6cc3: $54
	ld   b, e                                        ; $6cc4: $43
	ld   [hl-], a                                    ; $6cc5: $32
	dec  [hl]                                        ; $6cc6: $35
	inc  [hl]                                        ; $6cc7: $34
	ld   a, c                                        ; $6cc8: $79
	xor  d                                           ; $6cc9: $aa
	cp   h                                           ; $6cca: $bc
	cp   $ef                                         ; $6ccb: $fe $ef
	cp   $ff                                         ; $6ccd: $fe $ff
	db   $db                                         ; $6ccf: $db
	cp   c                                           ; $6cd0: $b9
	ld   [hl], l                                     ; $6cd1: $75
	ld   [hl+], a                                    ; $6cd2: $22
	ld   de, $1111                                   ; $6cd3: $11 $11 $11
	inc  de                                          ; $6cd6: $13
	ld   c, c                                        ; $6cd7: $49
	rst  $38                                         ; $6cd8: $ff
	rst  $38                                         ; $6cd9: $ff
	rst  $38                                         ; $6cda: $ff
	rst  $38                                         ; $6cdb: $ff
	rst  $38                                         ; $6cdc: $ff
	rst  $38                                         ; $6cdd: $ff
	db   $fc                                         ; $6cde: $fc
	xor  c                                           ; $6cdf: $a9
	ld   h, e                                        ; $6ce0: $63
	ld   hl, $1111                                   ; $6ce1: $21 $11 $11
	ld   de, $6f21                                   ; $6ce4: $11 $21 $6f
	rst  $38                                         ; $6ce7: $ff
	rst  $38                                         ; $6ce8: $ff
	rst  $38                                         ; $6ce9: $ff
	cp   $ff                                         ; $6cea: $fe $ff
	db   $fc                                         ; $6cec: $fc
	db   $ec                                         ; $6ced: $ec
	or   l                                           ; $6cee: $b5
	inc  de                                          ; $6cef: $13
	ld   sp, $1111                                   ; $6cf0: $31 $11 $11
	ld   de, $8f43                                   ; $6cf3: $11 $43 $8f
	rst  $38                                         ; $6cf6: $ff
	rst  $38                                         ; $6cf7: $ff
	rst  $38                                         ; $6cf8: $ff
	rst  $38                                         ; $6cf9: $ff
	rst  $38                                         ; $6cfa: $ff
	xor  $da                                         ; $6cfb: $ee $da
	sub  l                                           ; $6cfd: $95
	ld   [hl+], a                                    ; $6cfe: $22
	ld   sp, $1111                                   ; $6cff: $31 $11 $11
	ld   [de], a                                     ; $6d02: $12
	inc  [hl]                                        ; $6d03: $34
	cp   a                                           ; $6d04: $bf
	rst  $38                                         ; $6d05: $ff
	rst  $38                                         ; $6d06: $ff
	rst  $38                                         ; $6d07: $ff
	rst  $38                                         ; $6d08: $ff
	rst  $38                                         ; $6d09: $ff
	db   $ec                                         ; $6d0a: $ec
	sbc  e                                           ; $6d0b: $9b
	ld   [hl], h                                     ; $6d0c: $74
	ld   [de], a                                     ; $6d0d: $12
	ld   de, $1111                                   ; $6d0e: $11 $11 $11
	inc  d                                           ; $6d11: $14
	jr   z, @-$2f                                    ; $6d12: $28 $cf

	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	rst  $38                                         ; $6d16: $ff
	rst  JumpTable                                         ; $6d17: $df
	rst  $38                                         ; $6d18: $ff
	jp   c, Jump_0dc_41ba                            ; $6d19: $da $ba $41

	ld   [de], a                                     ; $6d1c: $12
	ld   de, $1111                                   ; $6d1d: $11 $11 $11
	inc  h                                           ; $6d20: $24
	ld   a, h                                        ; $6d21: $7c
	rst  $38                                         ; $6d22: $ff
	rst  $38                                         ; $6d23: $ff
	rst  $38                                         ; $6d24: $ff
	cp   $ff                                         ; $6d25: $fe $ff
	rst  $38                                         ; $6d27: $ff
	cp   c                                           ; $6d28: $b9
	and  a                                           ; $6d29: $a7
	ld   sp, $1121                                   ; $6d2a: $31 $21 $11
	ld   de, $5511                                   ; $6d2d: $11 $11 $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d30: $cf
	rst  $38                                         ; $6d31: $ff
	rst  $38                                         ; $6d32: $ff
	rst  $38                                         ; $6d33: $ff
	db   $dd                                         ; $6d34: $dd
	rst  $38                                         ; $6d35: $ff
	db   $eb                                         ; $6d36: $eb
	cp   b                                           ; $6d37: $b8
	sub  e                                           ; $6d38: $93
	inc  de                                          ; $6d39: $13
	ld   sp, $1111                                   ; $6d3a: $31 $11 $11
	ld   d, $36                                      ; $6d3d: $16 $36
	rst  JumpTable                                         ; $6d3f: $df
	rst  $38                                         ; $6d40: $ff
	rst  $38                                         ; $6d41: $ff
	rst  $38                                         ; $6d42: $ff
	adc  $ff                                         ; $6d43: $ce $ff
	db   $db                                         ; $6d45: $db
	sbc  e                                           ; $6d46: $9b
	ld   d, d                                        ; $6d47: $52
	ld   [hl+], a                                    ; $6d48: $22
	ld   de, $1111                                   ; $6d49: $11 $11 $11
	inc  d                                           ; $6d4c: $14
	ld   e, e                                        ; $6d4d: $5b
	rst  $38                                         ; $6d4e: $ff
	rst  $38                                         ; $6d4f: $ff
	rst  $38                                         ; $6d50: $ff
	db   $fd                                         ; $6d51: $fd
	rst  JumpTable                                         ; $6d52: $df
	db   $fd                                         ; $6d53: $fd
	reti                                             ; $6d54: $d9


	adc  c                                           ; $6d55: $89
	ld   b, e                                        ; $6d56: $43
	ld   [hl+], a                                    ; $6d57: $22
	ld   de, $1111                                   ; $6d58: $11 $11 $11
	ld   h, d                                        ; $6d5b: $62
	ld   a, a                                        ; $6d5c: $7f
	rst  $38                                         ; $6d5d: $ff
	rst  $38                                         ; $6d5e: $ff
	rst  $38                                         ; $6d5f: $ff
	ei                                               ; $6d60: $fb
	rst  $38                                         ; $6d61: $ff
	db   $fd                                         ; $6d62: $fd
	cp   b                                           ; $6d63: $b8
	and  [hl]                                        ; $6d64: $a6
	ld   hl, $1111                                   ; $6d65: $21 $11 $11
	ld   de, $1515                                   ; $6d68: $11 $15 $15
	rst  $38                                         ; $6d6b: $ff
	rst  $38                                         ; $6d6c: $ff
	rst  $38                                         ; $6d6d: $ff
	cp   $cf                                         ; $6d6e: $fe $cf
	rst  $38                                         ; $6d70: $ff
	adc  $aa                                         ; $6d71: $ce $aa
	ld   h, e                                        ; $6d73: $63
	ld   hl, $1111                                   ; $6d74: $21 $11 $11
	ld   de, $3a26                                   ; $6d77: $11 $26 $3a
	rst  $38                                         ; $6d7a: $ff
	rst  $38                                         ; $6d7b: $ff
	rst  $28                                         ; $6d7c: $ef
	db   $fc                                         ; $6d7d: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d7e: $cf
	cp   $b9                                         ; $6d7f: $fe $b9
	xor  c                                           ; $6d81: $a9
	ld   sp, $1122                                   ; $6d82: $31 $22 $11
	ld   de, $5311                                   ; $6d85: $11 $11 $53
	xor  a                                           ; $6d88: $af
	rst  $38                                         ; $6d89: $ff
	rst  $38                                         ; $6d8a: $ff
	rst  $38                                         ; $6d8b: $ff
	call c, $ecff                                    ; $6d8c: $dc $ff $ec
	cp   c                                           ; $6d8f: $b9
	and  l                                           ; $6d90: $a5
	inc  hl                                          ; $6d91: $23
	ld   sp, $1111                                   ; $6d92: $31 $11 $11
	inc  d                                           ; $6d95: $14
	ld   b, l                                        ; $6d96: $45
	rst  $28                                         ; $6d97: $ef
	rst  $38                                         ; $6d98: $ff
	rst  $38                                         ; $6d99: $ff
	rst  $38                                         ; $6d9a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d9b: $cf
	rst  $38                                         ; $6d9c: $ff
	db   $dd                                         ; $6d9d: $dd
	ret                                              ; $6d9e: $c9


	ld   h, h                                        ; $6d9f: $64
	ld   b, d                                        ; $6da0: $42
	ld   de, $1111                                   ; $6da1: $11 $11 $11
	ld   d, $38                                      ; $6da4: $16 $38
	rst  $38                                         ; $6da6: $ff
	rst  $38                                         ; $6da7: $ff
	rst  $38                                         ; $6da8: $ff
	ei                                               ; $6da9: $fb
	xor  a                                           ; $6daa: $af
	rst  $38                                         ; $6dab: $ff
	cp   e                                           ; $6dac: $bb
	cp   d                                           ; $6dad: $ba
	ld   sp, $1133                                   ; $6dae: $31 $33 $11
	ld   de, $4611                                   ; $6db1: $11 $11 $46
	adc  h                                           ; $6db4: $8c
	rst  $38                                         ; $6db5: $ff
	rst  $38                                         ; $6db6: $ff
	rst  $38                                         ; $6db7: $ff
	db   $eb                                         ; $6db8: $eb
	rst  $38                                         ; $6db9: $ff
	db   $fc                                         ; $6dba: $fc
	xor  c                                           ; $6dbb: $a9
	and  [hl]                                        ; $6dbc: $a6
	inc  d                                           ; $6dbd: $14
	ld   sp, $1111                                   ; $6dbe: $31 $11 $11
	ld   de, $af56                                   ; $6dc1: $11 $56 $af
	rst  $38                                         ; $6dc4: $ff
	rst  $38                                         ; $6dc5: $ff
	rst  $38                                         ; $6dc6: $ff
	xor  [hl]                                        ; $6dc7: $ae
	rst  $38                                         ; $6dc8: $ff
	db   $db                                         ; $6dc9: $db
	jp   z, $3272                                    ; $6dca: $ca $72 $32

	ld   de, $1111                                   ; $6dcd: $11 $11 $11
	ld   d, $46                                      ; $6dd0: $16 $46
	rst  $38                                         ; $6dd2: $ff
	rst  $38                                         ; $6dd3: $ff
	rst  $38                                         ; $6dd4: $ff
	db   $fc                                         ; $6dd5: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dd6: $cf
	rst  $38                                         ; $6dd7: $ff
	db   $ed                                         ; $6dd8: $ed
	cp   c                                           ; $6dd9: $b9
	ld   b, d                                        ; $6dda: $42
	ld   [hl+], a                                    ; $6ddb: $22
	ld   de, $1111                                   ; $6ddc: $11 $11 $11
	ld   d, h                                        ; $6ddf: $54
	ld   e, h                                        ; $6de0: $5c
	rst  $38                                         ; $6de1: $ff
	rst  $38                                         ; $6de2: $ff
	rst  $38                                         ; $6de3: $ff
	ld   a, [$feef]                                  ; $6de4: $fa $ef $fe
	xor  d                                           ; $6de7: $aa
	or   a                                           ; $6de8: $b7
	ld   [hl-], a                                    ; $6de9: $32
	ld   hl, $1111                                   ; $6dea: $21 $11 $11
	inc  de                                          ; $6ded: $13
	ld   d, h                                        ; $6dee: $54
	cp   a                                           ; $6def: $bf
	rst  $38                                         ; $6df0: $ff
	db   $fd                                         ; $6df1: $fd
	rst  $38                                         ; $6df2: $ff
	cp   [hl]                                        ; $6df3: $be
	rst  $38                                         ; $6df4: $ff
	ei                                               ; $6df5: $fb
	adc  e                                           ; $6df6: $8b
	add  d                                           ; $6df7: $82
	ld   [de], a                                     ; $6df8: $12
	ld   de, $1111                                   ; $6df9: $11 $11 $11
	ld   d, $48                                      ; $6dfc: $16 $48
	rst  $28                                         ; $6dfe: $ef
	rst  $38                                         ; $6dff: $ff
	rst  $38                                         ; $6e00: $ff
	db   $fc                                         ; $6e01: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e02: $cf
	cp   $eb                                         ; $6e03: $fe $eb
	xor  d                                           ; $6e05: $aa
	ld   b, d                                        ; $6e06: $42
	ld   hl, $1111                                   ; $6e07: $21 $11 $11
	ld   de, $7a45                                   ; $6e0a: $11 $45 $7a
	rst  $38                                         ; $6e0d: $ff
	cp   $ff                                         ; $6e0e: $fe $ff
	call c, $fdef                                    ; $6e10: $dc $ef $fd
	cp   d                                           ; $6e13: $ba
	or   [hl]                                        ; $6e14: $b6
	ld   [de], a                                     ; $6e15: $12
	ld   de, $1111                                   ; $6e16: $11 $11 $11
	inc  d                                           ; $6e19: $14
	ld   d, e                                        ; $6e1a: $53
	xor  a                                           ; $6e1b: $af
	rst  $38                                         ; $6e1c: $ff
	rst  $38                                         ; $6e1d: $ff
	cp   $af                                         ; $6e1e: $fe $af
	rst  $38                                         ; $6e20: $ff
	db   $db                                         ; $6e21: $db
	jp   c, Jump_0dc_4252                            ; $6e22: $da $52 $42

	ld   de, $1111                                   ; $6e25: $11 $11 $11
	dec  h                                           ; $6e28: $25
	ld   c, d                                        ; $6e29: $4a
	rst  $28                                         ; $6e2a: $ef
	rst  $38                                         ; $6e2b: $ff
	rst  $38                                         ; $6e2c: $ff
	db   $fc                                         ; $6e2d: $fc
	rst  $38                                         ; $6e2e: $ff
	cp   $cd                                         ; $6e2f: $fe $cd
	sub  a                                           ; $6e31: $97
	ld   [hl-], a                                    ; $6e32: $32
	ld   de, $1111                                   ; $6e33: $11 $11 $11
	ld   [de], a                                     ; $6e36: $12
	ld   b, l                                        ; $6e37: $45
	xor  [hl]                                        ; $6e38: $ae
	rst  $38                                         ; $6e39: $ff
	rst  $28                                         ; $6e3a: $ef
	rst  $38                                         ; $6e3b: $ff
	sbc  $ff                                         ; $6e3c: $de $ff
	ld   a, [$72ab]                                  ; $6e3e: $fa $ab $72
	ld   de, $1111                                   ; $6e41: $11 $11 $11
	ld   de, $5927                                   ; $6e44: $11 $27 $59
	rst  $38                                         ; $6e47: $ff
	rst  $38                                         ; $6e48: $ff
	rst  $38                                         ; $6e49: $ff
	db   $fd                                         ; $6e4a: $fd
	rst  $38                                         ; $6e4b: $ff
	rst  $38                                         ; $6e4c: $ff
	call c, $32a6                                    ; $6e4d: $dc $a6 $32
	ld   de, $1111                                   ; $6e50: $11 $11 $11
	inc  d                                           ; $6e53: $14
	ld   h, e                                        ; $6e54: $63
	sbc  a                                           ; $6e55: $9f
	rst  $38                                         ; $6e56: $ff
	rst  $28                                         ; $6e57: $ef
	rst  $38                                         ; $6e58: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e59: $cf
	rst  $38                                         ; $6e5a: $ff
	db   $fc                                         ; $6e5b: $fc
	cp   e                                           ; $6e5c: $bb
	ld   h, d                                        ; $6e5d: $62
	ld   hl, $1111                                   ; $6e5e: $21 $11 $11
	ld   de, $7c54                                   ; $6e61: $11 $54 $7c
	rst  $38                                         ; $6e64: $ff
	cp   $ff                                         ; $6e65: $fe $ff
	xor  $ff                                         ; $6e67: $ee $ff
	cp   $cb                                         ; $6e69: $fe $cb
	and  l                                           ; $6e6b: $a5
	ld   [hl+], a                                    ; $6e6c: $22
	ld   de, $1111                                   ; $6e6d: $11 $11 $11
	ld   d, $56                                      ; $6e70: $16 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e72: $cf
	cp   $df                                         ; $6e73: $fe $df
	db   $fd                                         ; $6e75: $fd
	rst  JumpTable                                         ; $6e76: $df
	rst  $38                                         ; $6e77: $ff
	db   $db                                         ; $6e78: $db
	jp   z, $1142                                    ; $6e79: $ca $42 $11

	ld   de, $1311                                   ; $6e7c: $11 $11 $13
	ld   d, d                                        ; $6e7f: $52
	adc  a                                           ; $6e80: $8f
	db   $fc                                         ; $6e81: $fc
	cp   a                                           ; $6e82: $bf
	cp   $cf                                         ; $6e83: $fe $cf
	rst  $38                                         ; $6e85: $ff
	db   $ec                                         ; $6e86: $ec
	db   $fc                                         ; $6e87: $fc
	ld   d, d                                        ; $6e88: $52
	ld   sp, $1111                                   ; $6e89: $31 $11 $11
	ld   de, $4a45                                   ; $6e8c: $11 $45 $4a
	db   $ed                                         ; $6e8f: $ed
	rst  $28                                         ; $6e90: $ef
	rst  $28                                         ; $6e91: $ef
	db   $fd                                         ; $6e92: $fd
	rst  $38                                         ; $6e93: $ff
	db   $fd                                         ; $6e94: $fd
	db   $ed                                         ; $6e95: $ed
	and  a                                           ; $6e96: $a7
	ld   hl, $1111                                   ; $6e97: $21 $11 $11
	ld   de, $4416                                   ; $6e9a: $11 $16 $44
	cp   a                                           ; $6e9d: $bf
	ld   a, [$fcdf]                                  ; $6e9e: $fa $df $fc
	rst  $28                                         ; $6ea1: $ef
	rst  $38                                         ; $6ea2: $ff
	db   $dd                                         ; $6ea3: $dd
	jp   c, $1131                                    ; $6ea4: $da $31 $11

	ld   de, $1211                                   ; $6ea7: $11 $11 $12
	ld   d, e                                        ; $6eaa: $53
	ld   a, [hl]                                     ; $6eab: $7e
	call z, $ffff                                    ; $6eac: $cc $ff $ff
	sbc  $ff                                         ; $6eaf: $de $ff
	sbc  $da                                         ; $6eb1: $de $da
	add  e                                           ; $6eb3: $83
	ld   de, $1111                                   ; $6eb4: $11 $11 $11
	ld   de, $6c33                                   ; $6eb7: $11 $33 $6c
	db   $fc                                         ; $6eba: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ebb: $cf
	rst  $38                                         ; $6ebc: $ff
	rst  $28                                         ; $6ebd: $ef
	rst  $38                                         ; $6ebe: $ff
	cp   $eb                                         ; $6ebf: $fe $eb
	ld   [hl], h                                     ; $6ec1: $74
	ld   de, $1111                                   ; $6ec2: $11 $11 $11
	ld   de, $5a22                                   ; $6ec5: $11 $22 $5a
	call $ffcc                                       ; $6ec8: $cd $cc $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ecb: $cf
	rst  $38                                         ; $6ecc: $ff
	cp   $cc                                         ; $6ecd: $fe $cc
	sub  [hl]                                        ; $6ecf: $96
	ld   sp, $1111                                   ; $6ed0: $31 $11 $11
	ld   de, $3b31                                   ; $6ed3: $11 $31 $3b
	cp   d                                           ; $6ed6: $ba
	cp   [hl]                                        ; $6ed7: $be
	db   $fd                                         ; $6ed8: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ed9: $cf
	rst  $38                                         ; $6eda: $ff
	rst  JumpTable                                         ; $6edb: $df
	ei                                               ; $6edc: $fb
	sub  a                                           ; $6edd: $97
	ld   h, c                                        ; $6ede: $61
	ld   de, $1111                                   ; $6edf: $11 $11 $11
	ld   [hl-], a                                    ; $6ee2: $32
	add  hl, sp                                      ; $6ee3: $39
	res  7, h                                        ; $6ee4: $cb $bc
	rst  $38                                         ; $6ee6: $ff
	db   $ed                                         ; $6ee7: $ed
	rst  $38                                         ; $6ee8: $ff
	cp   $ed                                         ; $6ee9: $fe $ed
	sub  [hl]                                        ; $6eeb: $96
	ld   b, d                                        ; $6eec: $42
	ld   hl, $1111                                   ; $6eed: $21 $11 $11
	ld   sp, $a73a                                   ; $6ef0: $31 $3a $a7
	xor  a                                           ; $6ef3: $af
	db   $fd                                         ; $6ef4: $fd
	rst  $28                                         ; $6ef5: $ef
	rst  $38                                         ; $6ef6: $ff
	rst  $28                                         ; $6ef7: $ef
	db   $ec                                         ; $6ef8: $ec
	sub  a                                           ; $6ef9: $97
	ld   d, e                                        ; $6efa: $53
	ld   de, $1111                                   ; $6efb: $11 $11 $11
	ld   de, $aa47                                   ; $6efe: $11 $47 $aa
	xor  h                                           ; $6f01: $ac
	cp   $df                                         ; $6f02: $fe $df
	rst  $38                                         ; $6f04: $ff
	rst  $38                                         ; $6f05: $ff
	call c, Call_0dc_53a5                            ; $6f06: $dc $a5 $53
	ld   hl, $1111                                   ; $6f09: $21 $11 $11
	inc  hl                                          ; $6f0c: $23
	ld   b, a                                        ; $6f0d: $47
	adc  d                                           ; $6f0e: $8a
	cp   d                                           ; $6f0f: $ba
	rst  $28                                         ; $6f10: $ef
	rst  $28                                         ; $6f11: $ef
	rst  $38                                         ; $6f12: $ff
	db   $fd                                         ; $6f13: $fd
	call c, Call_0dc_5396                            ; $6f14: $dc $96 $53
	ld   [hl+], a                                    ; $6f17: $22
	ld   de, $2212                                   ; $6f18: $11 $12 $22
	ld   h, a                                        ; $6f1b: $67
	ld   a, c                                        ; $6f1c: $79
	cp   l                                           ; $6f1d: $bd
	call $fefe                                       ; $6f1e: $cd $fe $fe
	cp   $db                                         ; $6f21: $fe $db
	ld   [hl], a                                     ; $6f23: $77
	ld   d, e                                        ; $6f24: $53
	ld   hl, $1111                                   ; $6f25: $21 $11 $11
	inc  sp                                          ; $6f28: $33
	ld   d, a                                        ; $6f29: $57
	adc  c                                           ; $6f2a: $89
	xor  l                                           ; $6f2b: $ad
	db   $dd                                         ; $6f2c: $dd
	cp   $fe                                         ; $6f2d: $fe $fe
	xor  $d9                                         ; $6f2f: $ee $d9
	ld   [hl], a                                     ; $6f31: $77
	ld   b, h                                        ; $6f32: $44
	ld   sp, $1222                                   ; $6f33: $31 $22 $12
	ld   b, e                                        ; $6f36: $43
	ld   d, [hl]                                     ; $6f37: $56
	ld   a, d                                        ; $6f38: $7a
	jp   z, $ddbf                                    ; $6f39: $ca $bf $dd

	rst  $38                                         ; $6f3c: $ff
	db   $fc                                         ; $6f3d: $fc
	cp   e                                           ; $6f3e: $bb
	add  l                                           ; $6f3f: $85
	ld   b, h                                        ; $6f40: $44
	ld   [hl-], a                                    ; $6f41: $32
	ld   [de], a                                     ; $6f42: $12
	ld   b, e                                        ; $6f43: $43
	inc  h                                           ; $6f44: $24
	ld   h, [hl]                                     ; $6f45: $66
	sbc  c                                           ; $6f46: $99
	xor  l                                           ; $6f47: $ad
	db   $fc                                         ; $6f48: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f49: $cf
	db   $ed                                         ; $6f4a: $ed
	db   $dd                                         ; $6f4b: $dd
	ret  z                                           ; $6f4c: $c8

	ld   h, l                                        ; $6f4d: $65
	ld   h, e                                        ; $6f4e: $63
	ld   [hl+], a                                    ; $6f4f: $22
	inc  [hl]                                        ; $6f50: $34
	ld   [hl+], a                                    ; $6f51: $22
	ld   d, [hl]                                     ; $6f52: $56
	ld   d, [hl]                                     ; $6f53: $56
	sbc  c                                           ; $6f54: $99
	xor  e                                           ; $6f55: $ab
	call c, $eede                                    ; $6f56: $dc $de $ee
	call z, $76ba                                    ; $6f59: $cc $ba $76
	ld   d, l                                        ; $6f5c: $55
	ld   b, d                                        ; $6f5d: $42
	ld   b, h                                        ; $6f5e: $44
	ld   [hl-], a                                    ; $6f5f: $32
	ld   d, [hl]                                     ; $6f60: $56
	ld   d, a                                        ; $6f61: $57
	adc  c                                           ; $6f62: $89
	cp   d                                           ; $6f63: $ba
	call $edcd                                       ; $6f64: $cd $cd $ed
	db   $db                                         ; $6f67: $db
	adc  c                                           ; $6f68: $89
	sub  l                                           ; $6f69: $95
	ld   d, l                                        ; $6f6a: $55
	ld   b, h                                        ; $6f6b: $44
	ld   b, e                                        ; $6f6c: $43
	ld   b, l                                        ; $6f6d: $45
	ld   b, l                                        ; $6f6e: $45
	ld   a, b                                        ; $6f6f: $78
	ld   a, c                                        ; $6f70: $79
	xor  h                                           ; $6f71: $ac
	cp   e                                           ; $6f72: $bb
	db   $dd                                         ; $6f73: $dd
	call z, $a8b9                                    ; $6f74: $cc $b9 $a8
	ld   a, c                                        ; $6f77: $79
	ld   h, e                                        ; $6f78: $63
	ld   d, [hl]                                     ; $6f79: $56
	inc  sp                                          ; $6f7a: $33
	ld   d, l                                        ; $6f7b: $55
	ld   d, [hl]                                     ; $6f7c: $56
	ld   l, b                                        ; $6f7d: $68
	adc  b                                           ; $6f7e: $88
	sbc  h                                           ; $6f7f: $9c
	cp   d                                           ; $6f80: $ba
	cp   l                                           ; $6f81: $bd
	jp   z, $98ab                                    ; $6f82: $ca $ab $98

	add  a                                           ; $6f85: $87
	halt                                             ; $6f86: $76
	ld   b, [hl]                                     ; $6f87: $46
	ld   [hl], h                                     ; $6f88: $74
	ld   b, l                                        ; $6f89: $45
	halt                                             ; $6f8a: $76
	ld   d, a                                        ; $6f8b: $57
	sbc  c                                           ; $6f8c: $99
	sbc  d                                           ; $6f8d: $9a
	xor  h                                           ; $6f8e: $ac
	xor  d                                           ; $6f8f: $aa
	xor  d                                           ; $6f90: $aa
	ret                                              ; $6f91: $c9


	sbc  c                                           ; $6f92: $99
	sub  a                                           ; $6f93: $97
	add  a                                           ; $6f94: $87
	ld   h, [hl]                                     ; $6f95: $66
	ld   d, l                                        ; $6f96: $55
	ld   d, l                                        ; $6f97: $55
	ld   d, [hl]                                     ; $6f98: $56
	add  a                                           ; $6f99: $87
	ld   a, b                                        ; $6f9a: $78
	xor  c                                           ; $6f9b: $a9
	sbc  c                                           ; $6f9c: $99
	cp   d                                           ; $6f9d: $ba
	sbc  c                                           ; $6f9e: $99
	xor  c                                           ; $6f9f: $a9
	adc  b                                           ; $6fa0: $88
	adc  b                                           ; $6fa1: $88
	halt                                             ; $6fa2: $76
	sub  [hl]                                        ; $6fa3: $96
	ld   h, [hl]                                     ; $6fa4: $66
	ld   h, [hl]                                     ; $6fa5: $66
	ld   h, [hl]                                     ; $6fa6: $66
	ld   a, b                                        ; $6fa7: $78
	ld   l, b                                        ; $6fa8: $68
	sbc  b                                           ; $6fa9: $98
	adc  c                                           ; $6faa: $89
	sbc  c                                           ; $6fab: $99
	xor  c                                           ; $6fac: $a9
	xor  b                                           ; $6fad: $a8
	adc  c                                           ; $6fae: $89
	sub  a                                           ; $6faf: $97
	sub  a                                           ; $6fb0: $97
	ld   l, c                                        ; $6fb1: $69
	ld   b, l                                        ; $6fb2: $45
	and  a                                           ; $6fb3: $a7
	ld   d, [hl]                                     ; $6fb4: $56
	adc  c                                           ; $6fb5: $89
	ld   h, a                                        ; $6fb6: $67
	ld   a, e                                        ; $6fb7: $7b
	halt                                             ; $6fb8: $76
	xor  c                                           ; $6fb9: $a9
	sub  [hl]                                        ; $6fba: $96
	xor  d                                           ; $6fbb: $aa
	sbc  c                                           ; $6fbc: $99
	sbc  d                                           ; $6fbd: $9a
	adc  c                                           ; $6fbe: $89
	adc  c                                           ; $6fbf: $89
	add  a                                           ; $6fc0: $87
	adc  d                                           ; $6fc1: $8a
	ld   [hl], a                                     ; $6fc2: $77
	sub  a                                           ; $6fc3: $97
	ld   [hl], a                                     ; $6fc4: $77
	and  a                                           ; $6fc5: $a7
	ld   l, b                                        ; $6fc6: $68
	sbc  b                                           ; $6fc7: $98
	ld   a, b                                        ; $6fc8: $78
	ld   a, c                                        ; $6fc9: $79
	add  a                                           ; $6fca: $87
	sbc  c                                           ; $6fcb: $99
	adc  b                                           ; $6fcc: $88
	sbc  c                                           ; $6fcd: $99
	ld   a, b                                        ; $6fce: $78
	sub  a                                           ; $6fcf: $97
	sub  [hl]                                        ; $6fd0: $96
	ld   a, c                                        ; $6fd1: $79
	halt                                             ; $6fd2: $76
	adc  b                                           ; $6fd3: $88
	ld   h, a                                        ; $6fd4: $67
	adc  b                                           ; $6fd5: $88
	ld   [hl], a                                     ; $6fd6: $77
	adc  d                                           ; $6fd7: $8a
	sub  a                                           ; $6fd8: $97
	xor  e                                           ; $6fd9: $ab
	add  a                                           ; $6fda: $87
	sbc  c                                           ; $6fdb: $99
	adc  b                                           ; $6fdc: $88
	sbc  b                                           ; $6fdd: $98
	ld   a, b                                        ; $6fde: $78
	ld   a, b                                        ; $6fdf: $78
	sub  [hl]                                        ; $6fe0: $96
	adc  c                                           ; $6fe1: $89
	ld   l, c                                        ; $6fe2: $69
	ld   [hl], a                                     ; $6fe3: $77
	sbc  d                                           ; $6fe4: $9a
	halt                                             ; $6fe5: $76
	sbc  b                                           ; $6fe6: $98
	sub  a                                           ; $6fe7: $97
	sbc  b                                           ; $6fe8: $98
	adc  b                                           ; $6fe9: $88
	ld   l, d                                        ; $6fea: $6a
	ld   [hl], a                                     ; $6feb: $77
	adc  c                                           ; $6fec: $89
	ld   a, b                                        ; $6fed: $78
	adc  b                                           ; $6fee: $88
	sub  l                                           ; $6fef: $95
	ld   a, c                                        ; $6ff0: $79
	add  a                                           ; $6ff1: $87
	adc  c                                           ; $6ff2: $89
	sbc  b                                           ; $6ff3: $98
	ld   a, b                                        ; $6ff4: $78
	sbc  c                                           ; $6ff5: $99
	adc  c                                           ; $6ff6: $89
	adc  b                                           ; $6ff7: $88
	add  a                                           ; $6ff8: $87
	ld   l, c                                        ; $6ff9: $69
	sub  a                                           ; $6ffa: $97
	sub  a                                           ; $6ffb: $97
	ld   [hl], a                                     ; $6ffc: $77
	sub  a                                           ; $6ffd: $97
	adc  d                                           ; $6ffe: $8a
	add  a                                           ; $6fff: $87
	sub  a                                           ; $7000: $97
	ld   l, b                                        ; $7001: $68
	ld   l, b                                        ; $7002: $68
	ld   [hl], a                                     ; $7003: $77
	add  a                                           ; $7004: $87
	ld   [hl], a                                     ; $7005: $77
	add  a                                           ; $7006: $87
	sbc  b                                           ; $7007: $98
	sbc  b                                           ; $7008: $98
	sbc  b                                           ; $7009: $98
	ld   l, e                                        ; $700a: $6b
	ld   l, d                                        ; $700b: $6a
	xor  b                                           ; $700c: $a8
	adc  c                                           ; $700d: $89
	sub  [hl]                                        ; $700e: $96
	and  a                                           ; $700f: $a7
	adc  d                                           ; $7010: $8a
	adc  b                                           ; $7011: $88
	adc  c                                           ; $7012: $89
	ld   a, c                                        ; $7013: $79
	ld   a, b                                        ; $7014: $78
	adc  b                                           ; $7015: $88
	ld   a, b                                        ; $7016: $78
	add  [hl]                                        ; $7017: $86
	sub  a                                           ; $7018: $97
	ld   a, c                                        ; $7019: $79
	add  a                                           ; $701a: $87
	sub  a                                           ; $701b: $97
	add  a                                           ; $701c: $87
	ld   a, d                                        ; $701d: $7a
	ld   a, b                                        ; $701e: $78
	ld   l, c                                        ; $701f: $69
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
	and  a                                           ; $7022: $a7
	sbc  b                                           ; $7023: $98
	sub  a                                           ; $7024: $97
	sbc  c                                           ; $7025: $99
	sbc  c                                           ; $7026: $99
	adc  d                                           ; $7027: $8a
	ld   a, c                                        ; $7028: $79
	sbc  b                                           ; $7029: $98
	adc  c                                           ; $702a: $89
	halt                                             ; $702b: $76
	add  l                                           ; $702c: $85
	sbc  b                                           ; $702d: $98
	add  a                                           ; $702e: $87
	sbc  b                                           ; $702f: $98
	ld   l, c                                        ; $7030: $69
	ld   l, c                                        ; $7031: $69
	adc  b                                           ; $7032: $88
	sub  a                                           ; $7033: $97
	add  a                                           ; $7034: $87
	adc  b                                           ; $7035: $88
	add  a                                           ; $7036: $87
	adc  b                                           ; $7037: $88
	add  a                                           ; $7038: $87
	xor  c                                           ; $7039: $a9
	adc  d                                           ; $703a: $8a
	ld   l, d                                        ; $703b: $6a
	adc  c                                           ; $703c: $89
	sbc  d                                           ; $703d: $9a
	add  a                                           ; $703e: $87
	sub  [hl]                                        ; $703f: $96
	ld   a, c                                        ; $7040: $79
	sub  a                                           ; $7041: $97
	and  [hl]                                        ; $7042: $a6
	adc  c                                           ; $7043: $89
	ld   l, b                                        ; $7044: $68
	adc  b                                           ; $7045: $88
	ld   a, c                                        ; $7046: $79
	ld   l, c                                        ; $7047: $69
	ld   [hl], a                                     ; $7048: $77
	sub  [hl]                                        ; $7049: $96
	add  [hl]                                        ; $704a: $86
	and  [hl]                                        ; $704b: $a6
	ld   a, b                                        ; $704c: $78
	ld   l, d                                        ; $704d: $6a
	ld   l, c                                        ; $704e: $69
	ld   a, b                                        ; $704f: $78
	ld   [hl], a                                     ; $7050: $77
	sub  a                                           ; $7051: $97
	sbc  c                                           ; $7052: $99
	adc  b                                           ; $7053: $88
	add  a                                           ; $7054: $87
	adc  c                                           ; $7055: $89
	adc  b                                           ; $7056: $88
	sbc  b                                           ; $7057: $98
	ld   [hl], a                                     ; $7058: $77
	ld   a, c                                        ; $7059: $79
	ld   [hl], a                                     ; $705a: $77
	ld   [hl], a                                     ; $705b: $77
	ld   [hl], a                                     ; $705c: $77
	add  [hl]                                        ; $705d: $86
	sub  a                                           ; $705e: $97
	ld   a, b                                        ; $705f: $78
	ld   a, b                                        ; $7060: $78
	ld   a, c                                        ; $7061: $79
	ld   a, b                                        ; $7062: $78
	sbc  b                                           ; $7063: $98
	adc  c                                           ; $7064: $89
	adc  b                                           ; $7065: $88
	add  a                                           ; $7066: $87
	sub  [hl]                                        ; $7067: $96
	sub  [hl]                                        ; $7068: $96
	sub  a                                           ; $7069: $97
	ld   a, c                                        ; $706a: $79
	ld   l, b                                        ; $706b: $68
	ld   a, b                                        ; $706c: $78
	ld   a, b                                        ; $706d: $78
	sub  a                                           ; $706e: $97
	and  a                                           ; $706f: $a7
	sub  a                                           ; $7070: $97
	sbc  c                                           ; $7071: $99
	ld   a, c                                        ; $7072: $79
	ld   a, b                                        ; $7073: $78
	add  a                                           ; $7074: $87
	ld   a, b                                        ; $7075: $78
	add  a                                           ; $7076: $87
	add  a                                           ; $7077: $87
	adc  b                                           ; $7078: $88
	ld   l, c                                        ; $7079: $69
	ld   a, b                                        ; $707a: $78
	adc  b                                           ; $707b: $88
	sub  a                                           ; $707c: $97
	add  a                                           ; $707d: $87
	sub  a                                           ; $707e: $97
	sbc  b                                           ; $707f: $98
	adc  b                                           ; $7080: $88
	sub  a                                           ; $7081: $97
	ld   a, b                                        ; $7082: $78
	ld   l, b                                        ; $7083: $68
	ld   a, b                                        ; $7084: $78
	ld   a, b                                        ; $7085: $78
	ld   [hl], a                                     ; $7086: $77
	add  a                                           ; $7087: $87
	sbc  b                                           ; $7088: $98
	ld   a, d                                        ; $7089: $7a
	ld   a, b                                        ; $708a: $78
	sub  a                                           ; $708b: $97
	adc  b                                           ; $708c: $88
	sbc  b                                           ; $708d: $98
	adc  b                                           ; $708e: $88
	ld   a, b                                        ; $708f: $78
	ld   a, c                                        ; $7090: $79
	ld   a, c                                        ; $7091: $79
	ld   l, b                                        ; $7092: $68
	sub  a                                           ; $7093: $97
	adc  b                                           ; $7094: $88
	sub  a                                           ; $7095: $97
	sbc  b                                           ; $7096: $98
	adc  b                                           ; $7097: $88
	ld   a, b                                        ; $7098: $78
	add  a                                           ; $7099: $87
	adc  b                                           ; $709a: $88
	ld   a, b                                        ; $709b: $78
	add  a                                           ; $709c: $87
	ld   a, c                                        ; $709d: $79
	ld   a, b                                        ; $709e: $78
	sub  a                                           ; $709f: $97
	sbc  c                                           ; $70a0: $99
	adc  b                                           ; $70a1: $88
	adc  b                                           ; $70a2: $88
	adc  c                                           ; $70a3: $89
	ld   a, b                                        ; $70a4: $78
	adc  c                                           ; $70a5: $89
	ld   a, b                                        ; $70a6: $78
	adc  b                                           ; $70a7: $88
	add  a                                           ; $70a8: $87
	sbc  b                                           ; $70a9: $98
	adc  b                                           ; $70aa: $88
	ld   a, c                                        ; $70ab: $79
	ld   a, b                                        ; $70ac: $78
	adc  b                                           ; $70ad: $88
	adc  c                                           ; $70ae: $89
	add  a                                           ; $70af: $87
	sub  a                                           ; $70b0: $97
	adc  b                                           ; $70b1: $88
	adc  b                                           ; $70b2: $88
	adc  b                                           ; $70b3: $88
	ld   a, c                                        ; $70b4: $79
	ld   a, b                                        ; $70b5: $78
	ld   a, b                                        ; $70b6: $78
	sbc  b                                           ; $70b7: $98
	adc  b                                           ; $70b8: $88
	sub  a                                           ; $70b9: $97
	add  a                                           ; $70ba: $87
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	ld   a, c                                        ; $70bd: $79
	ld   a, b                                        ; $70be: $78
	adc  b                                           ; $70bf: $88
	ld   a, b                                        ; $70c0: $78
	adc  b                                           ; $70c1: $88
	sub  a                                           ; $70c2: $97
	sbc  b                                           ; $70c3: $98
	adc  b                                           ; $70c4: $88
	ld   a, b                                        ; $70c5: $78
	adc  b                                           ; $70c6: $88
	ld   a, c                                        ; $70c7: $79
	adc  b                                           ; $70c8: $88
	adc  b                                           ; $70c9: $88
	adc  b                                           ; $70ca: $88
	adc  b                                           ; $70cb: $88
	sbc  b                                           ; $70cc: $98
	adc  c                                           ; $70cd: $89
	add  a                                           ; $70ce: $87
	adc  c                                           ; $70cf: $89
	adc  b                                           ; $70d0: $88
	adc  b                                           ; $70d1: $88
	ld   a, c                                        ; $70d2: $79
	ld   a, b                                        ; $70d3: $78
	adc  b                                           ; $70d4: $88
	adc  b                                           ; $70d5: $88
	sub  a                                           ; $70d6: $97
	adc  b                                           ; $70d7: $88
	adc  b                                           ; $70d8: $88
	sbc  b                                           ; $70d9: $98
	adc  b                                           ; $70da: $88
	adc  b                                           ; $70db: $88
	adc  c                                           ; $70dc: $89
	ld   a, b                                        ; $70dd: $78
	adc  b                                           ; $70de: $88
	adc  b                                           ; $70df: $88
	sbc  b                                           ; $70e0: $98
	sbc  b                                           ; $70e1: $98
	adc  b                                           ; $70e2: $88
	add  a                                           ; $70e3: $87
	adc  b                                           ; $70e4: $88
	ld   a, c                                        ; $70e5: $79
	adc  c                                           ; $70e6: $89
	adc  c                                           ; $70e7: $89
	adc  b                                           ; $70e8: $88
	adc  b                                           ; $70e9: $88
	sbc  b                                           ; $70ea: $98
	adc  b                                           ; $70eb: $88
	adc  b                                           ; $70ec: $88
	adc  b                                           ; $70ed: $88
	adc  b                                           ; $70ee: $88
	adc  b                                           ; $70ef: $88
	adc  b                                           ; $70f0: $88
	adc  b                                           ; $70f1: $88
	adc  b                                           ; $70f2: $88
	sbc  b                                           ; $70f3: $98
	adc  c                                           ; $70f4: $89
	adc  c                                           ; $70f5: $89
	adc  b                                           ; $70f6: $88
	sbc  b                                           ; $70f7: $98
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	sbc  b                                           ; $70fa: $98
	adc  c                                           ; $70fb: $89
	adc  b                                           ; $70fc: $88
	adc  b                                           ; $70fd: $88
	adc  b                                           ; $70fe: $88
	adc  b                                           ; $70ff: $88
	adc  b                                           ; $7100: $88
	adc  b                                           ; $7101: $88
	adc  b                                           ; $7102: $88
	sbc  b                                           ; $7103: $98
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
	adc  c                                           ; $7110: $89
	adc  b                                           ; $7111: $88
	adc  b                                           ; $7112: $88
	adc  b                                           ; $7113: $88
	adc  b                                           ; $7114: $88
	adc  b                                           ; $7115: $88
	sbc  b                                           ; $7116: $98
	adc  b                                           ; $7117: $88
	adc  b                                           ; $7118: $88
	adc  b                                           ; $7119: $88
	adc  b                                           ; $711a: $88
	adc  b                                           ; $711b: $88
	adc  b                                           ; $711c: $88
	adc  b                                           ; $711d: $88
	adc  b                                           ; $711e: $88
	sbc  b                                           ; $711f: $98
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
	adc  c                                           ; $7251: $89
	adc  b                                           ; $7252: $88
	adc  b                                           ; $7253: $88
	adc  b                                           ; $7254: $88
	adc  b                                           ; $7255: $88
	sbc  b                                           ; $7256: $98
	add  a                                           ; $7257: $87
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
	adc  c                                           ; $7268: $89
	sub  a                                           ; $7269: $97
	ld   a, b                                        ; $726a: $78
	adc  b                                           ; $726b: $88
	adc  b                                           ; $726c: $88
	xor  b                                           ; $726d: $a8
	ld   [hl], a                                     ; $726e: $77
	ld   [hl], a                                     ; $726f: $77
	adc  b                                           ; $7270: $88
	ld   a, c                                        ; $7271: $79
	ld   a, b                                        ; $7272: $78
	add  a                                           ; $7273: $87
	add  a                                           ; $7274: $87
	adc  b                                           ; $7275: $88
	adc  e                                           ; $7276: $8b
	jp   z, $9878                                    ; $7277: $ca $78 $98

	ld   h, [hl]                                     ; $727a: $66
	ld   a, d                                        ; $727b: $7a
	sub  [hl]                                        ; $727c: $96
	ld   h, a                                        ; $727d: $67
	sbc  b                                           ; $727e: $98
	ld   d, [hl]                                     ; $727f: $56
	adc  d                                           ; $7280: $8a
	sbc  b                                           ; $7281: $98
	adc  c                                           ; $7282: $89
	sbc  b                                           ; $7283: $98
	adc  c                                           ; $7284: $89
	sub  a                                           ; $7285: $97
	add  a                                           ; $7286: $87
	ld   h, l                                        ; $7287: $65
	sbc  c                                           ; $7288: $99
	ld   b, [hl]                                     ; $7289: $46
	ld   l, d                                        ; $728a: $6a
	sub  a                                           ; $728b: $97
	xor  e                                           ; $728c: $ab
	xor  d                                           ; $728d: $aa
	ld   [hl], l                                     ; $728e: $75
	adc  b                                           ; $728f: $88
	ld   a, b                                        ; $7290: $78
	sbc  h                                           ; $7291: $9c
	sub  $34                                         ; $7292: $d6 $34
	ld   b, l                                        ; $7294: $45
	inc  [hl]                                        ; $7295: $34
	adc  c                                           ; $7296: $89
	ld   d, l                                        ; $7297: $55
	ld   d, a                                        ; $7298: $57
	sbc  b                                           ; $7299: $98
	ld   [hl], a                                     ; $729a: $77
	sbc  c                                           ; $729b: $99
	ld   [hl], l                                     ; $729c: $75
	ld   e, b                                        ; $729d: $58
	add  h                                           ; $729e: $84
	ld   b, [hl]                                     ; $729f: $46
	ld   h, a                                        ; $72a0: $67
	ld   h, l                                        ; $72a1: $65
	ld   l, b                                        ; $72a2: $68
	sub  a                                           ; $72a3: $97
	ld   h, [hl]                                     ; $72a4: $66
	adc  b                                           ; $72a5: $88
	ld   [hl], a                                     ; $72a6: $77
	ld   a, b                                        ; $72a7: $78
	ld   h, [hl]                                     ; $72a8: $66
	adc  c                                           ; $72a9: $89
	ld   a, b                                        ; $72aa: $78
	adc  c                                           ; $72ab: $89
	ld   [hl], a                                     ; $72ac: $77
	add  a                                           ; $72ad: $87
	ld   [hl], l                                     ; $72ae: $75
	ld   l, b                                        ; $72af: $68
	sub  h                                           ; $72b0: $94
	ld   h, a                                        ; $72b1: $67
	ld   l, c                                        ; $72b2: $69
	ld   [hl], a                                     ; $72b3: $77
	adc  c                                           ; $72b4: $89
	sbc  b                                           ; $72b5: $98
	ld   a, c                                        ; $72b6: $79
	xor  d                                           ; $72b7: $aa
	cp   b                                           ; $72b8: $b8
	ld   l, b                                        ; $72b9: $68
	sbc  c                                           ; $72ba: $99
	sub  a                                           ; $72bb: $97
	ld   a, c                                        ; $72bc: $79
	ld   d, e                                        ; $72bd: $53
	scf                                              ; $72be: $37
	sbc  c                                           ; $72bf: $99
	ld   [hl], l                                     ; $72c0: $75
	xor  d                                           ; $72c1: $aa
	ld   l, e                                        ; $72c2: $6b
	db   $db                                         ; $72c3: $db
	sbc  b                                           ; $72c4: $98
	sbc  l                                           ; $72c5: $9d
	sub  $8e                                         ; $72c6: $d6 $8e
	sub  [hl]                                        ; $72c8: $96
	ld   h, l                                        ; $72c9: $65
	xor  d                                           ; $72ca: $aa
	ld   de, $4157                                   ; $72cb: $11 $57 $41
	add  hl, de                                      ; $72ce: $19
	call c, $ffac                                    ; $72cf: $dc $ac $ff
	ei                                               ; $72d2: $fb
	sbc  $ea                                         ; $72d3: $de $ea
	xor  d                                           ; $72d5: $aa
	sub  a                                           ; $72d6: $97
	ld   de, $1111                                   ; $72d7: $11 $11 $11
	inc  de                                          ; $72da: $13
	xor  h                                           ; $72db: $ac
	rst  $38                                         ; $72dc: $ff
	rst  $38                                         ; $72dd: $ff
	db   $fc                                         ; $72de: $fc
	cp   $aa                                         ; $72df: $fe $aa
	rst  JumpTable                                         ; $72e1: $df
	rst  JumpTable                                         ; $72e2: $df
	sub  d                                           ; $72e3: $92
	ld   de, $1111                                   ; $72e4: $11 $11 $11
	adc  [hl]                                        ; $72e7: $8e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72e8: $cf
	rst  $38                                         ; $72e9: $ff
	rst  $38                                         ; $72ea: $ff
	xor  h                                           ; $72eb: $ac
	add  $9f                                         ; $72ec: $c6 $9f
	rst  $38                                         ; $72ee: $ff
	ret  c                                           ; $72ef: $d8

	ld   b, c                                        ; $72f0: $41
	ld   de, $1411                                   ; $72f1: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72f4: $cf
	rst  $38                                         ; $72f5: $ff
	rst  $38                                         ; $72f6: $ff
	ld   sp, hl                                      ; $72f7: $f9
	ld   a, c                                        ; $72f8: $79
	ld   a, [hl]                                     ; $72f9: $7e
	rst  $38                                         ; $72fa: $ff
	cp   $94                                         ; $72fb: $fe $94
	ld   de, $1111                                   ; $72fd: $11 $11 $11
	xor  [hl]                                        ; $7300: $ae
	rst  $38                                         ; $7301: $ff
	rst  $38                                         ; $7302: $ff
	rst  $38                                         ; $7303: $ff
	ld   d, a                                        ; $7304: $57
	sub  $9f                                         ; $7305: $d6 $9f
	rst  $38                                         ; $7307: $ff
	and  l                                           ; $7308: $a5
	ld   h, c                                        ; $7309: $61
	ld   de, $1811                                   ; $730a: $11 $11 $18
	db   $ed                                         ; $730d: $ed
	rst  $38                                         ; $730e: $ff
	rst  $38                                         ; $730f: $ff
	rst  $38                                         ; $7310: $ff
	add  h                                           ; $7311: $84
	ld   e, h                                        ; $7312: $5c
	rst  $38                                         ; $7313: $ff
	sbc  $c4                                         ; $7314: $de $c4
	ld   de, $1111                                   ; $7316: $11 $11 $11
	ld   e, a                                        ; $7319: $5f
	rst  $38                                         ; $731a: $ff
	rst  $38                                         ; $731b: $ff
	rst  $38                                         ; $731c: $ff
	ld   d, d                                        ; $731d: $52
	sbc  b                                           ; $731e: $98
	cp   a                                           ; $731f: $bf
	rst  $38                                         ; $7320: $ff
	push af                                          ; $7321: $f5
	ld   hl, $1111                                   ; $7322: $21 $11 $11
	dec  d                                           ; $7325: $15
	rst  $38                                         ; $7326: $ff
	rst  $38                                         ; $7327: $ff
	rst  $38                                         ; $7328: $ff
	sub  a                                           ; $7329: $97
	add  hl, sp                                      ; $732a: $39
	cp   b                                           ; $732b: $b8
	rst  $38                                         ; $732c: $ff
	db   $fc                                         ; $732d: $fc
	ld   d, c                                        ; $732e: $51
	ld   de, $1111                                   ; $732f: $11 $11 $11
	ld   a, a                                        ; $7332: $7f
	rst  $28                                         ; $7333: $ef
	rst  $38                                         ; $7334: $ff
	ei                                               ; $7335: $fb
	and  [hl]                                        ; $7336: $a6
	ld   [hl], a                                     ; $7337: $77
	sbc  a                                           ; $7338: $9f
	rst  $38                                         ; $7339: $ff
	ld   sp, hl                                      ; $733a: $f9
	ld   sp, $1111                                   ; $733b: $31 $11 $11
	inc  d                                           ; $733e: $14
	rst  $38                                         ; $733f: $ff
	rst  $38                                         ; $7340: $ff
	db   $fd                                         ; $7341: $fd
	ld   l, c                                        ; $7342: $69
	ld   b, h                                        ; $7343: $44
	sub  a                                           ; $7344: $97
	rst  $38                                         ; $7345: $ff
	db   $fc                                         ; $7346: $fc
	add  e                                           ; $7347: $83
	ld   de, $1111                                   ; $7348: $11 $11 $11
	rra                                              ; $734b: $1f
	rst  $38                                         ; $734c: $ff
	rst  $38                                         ; $734d: $ff
	ld   sp, hl                                      ; $734e: $f9
	dec  h                                           ; $734f: $25
	add  a                                           ; $7350: $87
	xor  a                                           ; $7351: $af
	rst  $38                                         ; $7352: $ff
	push bc                                          ; $7353: $c5
	ld   d, c                                        ; $7354: $51
	ld   de, $1111                                   ; $7355: $11 $11 $11
	rst  $28                                         ; $7358: $ef
	rst  $38                                         ; $7359: $ff
	rst  $38                                         ; $735a: $ff
	or   h                                           ; $735b: $b4
	ld   d, l                                        ; $735c: $55
	ld   a, e                                        ; $735d: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $735e: $cf
	rst  $38                                         ; $735f: $ff
	ld   h, h                                        ; $7360: $64
	ld   de, $1111                                   ; $7361: $11 $11 $11
	rla                                              ; $7364: $17
	rst  $38                                         ; $7365: $ff
	rst  JumpTable                                         ; $7366: $df
	ld   a, [$5947]                                  ; $7367: $fa $47 $59
	ld   [hl], a                                     ; $736a: $77
	rst  $38                                         ; $736b: $ff
	rst  $30                                         ; $736c: $f7
	ld   d, h                                        ; $736d: $54
	ld   de, $1111                                   ; $736e: $11 $11 $11
	ccf                                              ; $7371: $3f
	rst  $38                                         ; $7372: $ff
	rst  $38                                         ; $7373: $ff
	xor  b                                           ; $7374: $a8
	jp   nz, $af19                                   ; $7375: $c2 $19 $af

	rst  $38                                         ; $7378: $ff
	xor  h                                           ; $7379: $ac
	ld   hl, $1111                                   ; $737a: $21 $11 $11
	ld   de, $fddf                                   ; $737d: $11 $df $fd
	rst  $38                                         ; $7380: $ff
	or   $24                                         ; $7381: $f6 $24
	sbc  d                                           ; $7383: $9a
	adc  a                                           ; $7384: $8f
	rst  $38                                         ; $7385: $ff
	add  [hl]                                        ; $7386: $86
	ld   hl, $1111                                   ; $7387: $21 $11 $11
	ld   de, $efff                                   ; $738a: $11 $ff $ef
	rst  $38                                         ; $738d: $ff
	push hl                                          ; $738e: $e5
	dec  d                                           ; $738f: $15
	ld   hl, sp-$41                                  ; $7390: $f8 $bf
	cp   $b1                                         ; $7392: $fe $b1
	ld   [de], a                                     ; $7394: $12
	ld   de, $1811                                   ; $7395: $11 $11 $18
	rst  $38                                         ; $7398: $ff
	rst  $28                                         ; $7399: $ef
	db   $fc                                         ; $739a: $fc
	add  l                                           ; $739b: $85
	dec  de                                          ; $739c: $1b
	db   $f4                                         ; $739d: $f4
	rst  $38                                         ; $739e: $ff
	db   $ec                                         ; $739f: $ec
	pop  bc                                          ; $73a0: $c1
	ld   de, $1111                                   ; $73a1: $11 $11 $11
	rra                                              ; $73a4: $1f
	cp   $ff                                         ; $73a5: $fe $ff
	db   $fc                                         ; $73a7: $fc
	db   $f4                                         ; $73a8: $f4
	ld   d, $af                                      ; $73a9: $16 $af
	rst  $38                                         ; $73ab: $ff
	adc  $91                                         ; $73ac: $ce $91
	ld   de, $1111                                   ; $73ae: $11 $11 $11
	rra                                              ; $73b1: $1f
	rst  $38                                         ; $73b2: $ff
	rst  $38                                         ; $73b3: $ff
	db   $fd                                         ; $73b4: $fd
	ld   h, h                                        ; $73b5: $64
	sbc  h                                           ; $73b6: $9c
	xor  l                                           ; $73b7: $ad
	rst  $38                                         ; $73b8: $ff
	db   $eb                                         ; $73b9: $eb
	ld   d, e                                        ; $73ba: $53
	ld   de, $1111                                   ; $73bb: $11 $11 $11
	dec  e                                           ; $73be: $1d
	rst  $38                                         ; $73bf: $ff
	rst  $38                                         ; $73c0: $ff
	rst  $38                                         ; $73c1: $ff
	halt                                             ; $73c2: $76
	ld   h, [hl]                                     ; $73c3: $66
	sbc  a                                           ; $73c4: $9f
	rst  $38                                         ; $73c5: $ff
	db   $fd                                         ; $73c6: $fd
	ld   d, d                                        ; $73c7: $52
	ld   de, $1111                                   ; $73c8: $11 $11 $11
	ld   a, [de]                                     ; $73cb: $1a
	rst  $38                                         ; $73cc: $ff
	rst  $38                                         ; $73cd: $ff
	rst  $38                                         ; $73ce: $ff
	push bc                                          ; $73cf: $c5
	ld   e, e                                        ; $73d0: $5b
	set  1, a                                        ; $73d1: $cb $cf
	rst  $38                                         ; $73d3: $ff
	ld   [hl], e                                     ; $73d4: $73
	ld   de, $1111                                   ; $73d5: $11 $11 $11
	ld   a, [de]                                     ; $73d8: $1a
	jp   hl                                          ; $73d9: $e9


	rst  $38                                         ; $73da: $ff
	db   $fd                                         ; $73db: $fd
	xor  c                                           ; $73dc: $a9
	cp   c                                           ; $73dd: $b9
	ld   e, c                                        ; $73de: $59
	rst  $38                                         ; $73df: $ff
	cp   $a8                                         ; $73e0: $fe $a8
	ld   d, c                                        ; $73e2: $51
	ld   de, $1111                                   ; $73e3: $11 $11 $11
	db   $dd                                         ; $73e6: $dd
	sbc  [hl]                                        ; $73e7: $9e
	rst  $38                                         ; $73e8: $ff
	call z, $da75                                    ; $73e9: $cc $75 $da
	ld   l, a                                        ; $73ec: $6f
	db   $fc                                         ; $73ed: $fc
	call c, Call_0dc_6136                            ; $73ee: $dc $36 $61
	ld   de, $1711                                   ; $73f1: $11 $11 $17
	adc  e                                           ; $73f4: $8b
	cp   b                                           ; $73f5: $b8
	xor  l                                           ; $73f6: $ad
	sub  a                                           ; $73f7: $97
	adc  d                                           ; $73f8: $8a
	cp   e                                           ; $73f9: $bb
	rst  $28                                         ; $73fa: $ef
	db   $ed                                         ; $73fb: $ed
	or   [hl]                                        ; $73fc: $b6
	ld   h, a                                        ; $73fd: $67
	ld   l, b                                        ; $73fe: $68
	ld   h, h                                        ; $73ff: $64
	ld   d, e                                        ; $7400: $53
	ld   [hl], $89                                   ; $7401: $36 $89
	halt                                             ; $7403: $76
	ld   l, b                                        ; $7404: $68
	sub  a                                           ; $7405: $97
	adc  d                                           ; $7406: $8a
	xor  e                                           ; $7407: $ab
	sbc  $ce                                         ; $7408: $de $ce
	res  5, d                                        ; $740a: $cb $aa
	sbc  b                                           ; $740c: $98
	add  a                                           ; $740d: $87
	ld   h, a                                        ; $740e: $67
	ld   h, [hl]                                     ; $740f: $66
	ld   d, l                                        ; $7410: $55
	ld   d, a                                        ; $7411: $57
	ld   [hl], l                                     ; $7412: $75
	ld   [hl], a                                     ; $7413: $77
	adc  b                                           ; $7414: $88
	sbc  c                                           ; $7415: $99
	sbc  e                                           ; $7416: $9b
	cp   d                                           ; $7417: $ba
	cp   e                                           ; $7418: $bb
	cp   e                                           ; $7419: $bb
	cp   c                                           ; $741a: $b9
	sbc  c                                           ; $741b: $99
	sbc  b                                           ; $741c: $98
	adc  b                                           ; $741d: $88
	ld   a, b                                        ; $741e: $78
	ld   h, l                                        ; $741f: $65
	ld   d, l                                        ; $7420: $55
	ld   [hl], a                                     ; $7421: $77
	ld   d, a                                        ; $7422: $57
	ld   h, a                                        ; $7423: $67
	halt                                             ; $7424: $76
	adc  b                                           ; $7425: $88
	sbc  c                                           ; $7426: $99
	cp   e                                           ; $7427: $bb
	cp   e                                           ; $7428: $bb
	xor  e                                           ; $7429: $ab
	xor  d                                           ; $742a: $aa
	xor  b                                           ; $742b: $a8
	adc  c                                           ; $742c: $89
	adc  b                                           ; $742d: $88
	halt                                             ; $742e: $76
	ld   d, l                                        ; $742f: $55
	ld   b, l                                        ; $7430: $45
	ld   h, h                                        ; $7431: $64
	ld   [hl], l                                     ; $7432: $75
	ld   l, c                                        ; $7433: $69
	ld   [hl], a                                     ; $7434: $77
	ld   a, c                                        ; $7435: $79
	sbc  c                                           ; $7436: $99
	xor  d                                           ; $7437: $aa
	cp   l                                           ; $7438: $bd
	cp   e                                           ; $7439: $bb
	res  3, b                                        ; $743a: $cb $98
	sbc  d                                           ; $743c: $9a
	sub  a                                           ; $743d: $97
	ld   h, l                                        ; $743e: $65
	ld   h, h                                        ; $743f: $64
	ld   b, h                                        ; $7440: $44
	ld   h, [hl]                                     ; $7441: $66
	ld   b, l                                        ; $7442: $45
	ld   h, [hl]                                     ; $7443: $66
	ld   h, a                                        ; $7444: $67
	ld   a, c                                        ; $7445: $79
	sbc  e                                           ; $7446: $9b
	xor  e                                           ; $7447: $ab
	set  3, e                                        ; $7448: $cb $db
	sbc  b                                           ; $744a: $98
	sbc  b                                           ; $744b: $98
	add  a                                           ; $744c: $87
	halt                                             ; $744d: $76
	ld   h, [hl]                                     ; $744e: $66
	inc  [hl]                                        ; $744f: $34
	inc  [hl]                                        ; $7450: $34
	ld   d, [hl]                                     ; $7451: $56
	ld   [hl], a                                     ; $7452: $77
	ld   a, b                                        ; $7453: $78
	sbc  c                                           ; $7454: $99
	sbc  b                                           ; $7455: $98
	sbc  c                                           ; $7456: $99
	sbc  e                                           ; $7457: $9b
	set  1, e                                        ; $7458: $cb $cb
	cp   h                                           ; $745a: $bc
	xor  d                                           ; $745b: $aa
	sbc  c                                           ; $745c: $99
	add  [hl]                                        ; $745d: $86
	ld   d, h                                        ; $745e: $54
	ld   d, e                                        ; $745f: $53
	inc  sp                                          ; $7460: $33
	ld   b, [hl]                                     ; $7461: $46
	ld   d, [hl]                                     ; $7462: $56
	ld   l, b                                        ; $7463: $68
	sbc  d                                           ; $7464: $9a
	xor  c                                           ; $7465: $a9
	cp   d                                           ; $7466: $ba
	xor  h                                           ; $7467: $ac
	call z, $bbdc                                    ; $7468: $cc $dc $bb
	xor  c                                           ; $746b: $a9
	adc  c                                           ; $746c: $89
	ld   h, l                                        ; $746d: $65
	ld   d, e                                        ; $746e: $53
	inc  sp                                          ; $746f: $33
	ld   de, $8748                                   ; $7470: $11 $48 $87
	ld   l, b                                        ; $7473: $68
	xor  d                                           ; $7474: $aa
	add  a                                           ; $7475: $87
	sbc  l                                           ; $7476: $9d
	cp   e                                           ; $7477: $bb
	sbc  $ed                                         ; $7478: $de $ed
	xor  c                                           ; $747a: $a9
	cp   d                                           ; $747b: $ba
	adc  b                                           ; $747c: $88
	ld   h, l                                        ; $747d: $65
	ld   d, h                                        ; $747e: $54
	ld   sp, $3911                                   ; $747f: $31 $11 $39
	sub  a                                           ; $7482: $97
	adc  e                                           ; $7483: $8b
	cp   e                                           ; $7484: $bb
	xor  d                                           ; $7485: $aa
	xor  h                                           ; $7486: $ac
	cp   e                                           ; $7487: $bb
	xor  $fc                                         ; $7488: $ee $fc
	xor  c                                           ; $748a: $a9
	xor  d                                           ; $748b: $aa
	adc  b                                           ; $748c: $88
	ld   b, h                                        ; $748d: $44
	ld   hl, $1111                                   ; $748e: $21 $11 $11
	adc  d                                           ; $7491: $8a
	xor  d                                           ; $7492: $aa
	db   $ed                                         ; $7493: $ed
	call c, $bc79                                    ; $7494: $dc $79 $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7497: $cf
	rst  $38                                         ; $7498: $ff
	ei                                               ; $7499: $fb
	adc  d                                           ; $749a: $8a
	sub  a                                           ; $749b: $97
	ld   h, h                                        ; $749c: $64
	ld   de, $1111                                   ; $749d: $11 $11 $11
	ld   d, $cd                                      ; $74a0: $16 $cd
	rst  $38                                         ; $74a2: $ff
	sbc  $f9                                         ; $74a3: $de $f9
	ld   a, b                                        ; $74a5: $78
	sbc  h                                           ; $74a6: $9c
	rst  $38                                         ; $74a7: $ff
	rst  $38                                         ; $74a8: $ff
	jp   c, Jump_0dc_7987                            ; $74a9: $da $87 $79

	ld   h, c                                        ; $74ac: $61
	ld   de, $1111                                   ; $74ad: $11 $11 $11
	sbc  a                                           ; $74b0: $9f
	rst  $38                                         ; $74b1: $ff
	rst  $38                                         ; $74b2: $ff
	cp   $75                                         ; $74b3: $fe $75
	ld   d, a                                        ; $74b5: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74b6: $cf

jr_0dc_74b7:
	rst  $38                                         ; $74b7: $ff
	rst  $38                                         ; $74b8: $ff
	cp   c                                           ; $74b9: $b9
	ld   [hl], a                                     ; $74ba: $77
	sub  l                                           ; $74bb: $95
	ld   de, $1111                                   ; $74bc: $11 $11 $11
	ld   e, $ff                                      ; $74bf: $1e $ff
	rst  $38                                         ; $74c1: $ff
	rst  $38                                         ; $74c2: $ff
	or   e                                           ; $74c3: $b3
	ld   b, l                                        ; $74c4: $45
	ld   a, d                                        ; $74c5: $7a
	rst  $38                                         ; $74c6: $ff
	rst  $38                                         ; $74c7: $ff
	db   $db                                         ; $74c8: $db
	sbc  d                                           ; $74c9: $9a
	adc  c                                           ; $74ca: $89
	ld   d, c                                        ; $74cb: $51
	ld   de, $1111                                   ; $74cc: $11 $11 $11
	rst  $28                                         ; $74cf: $ef
	rst  $38                                         ; $74d0: $ff
	rst  $38                                         ; $74d1: $ff
	push af                                          ; $74d2: $f5
	inc  d                                           ; $74d3: $14
	ld   h, l                                        ; $74d4: $65
	xor  a                                           ; $74d5: $af
	rst  $38                                         ; $74d6: $ff
	ld   [$8aba], a                                  ; $74d7: $ea $ba $8a
	cp   d                                           ; $74da: $ba
	ld   sp, $1111                                   ; $74db: $31 $11 $11
	rla                                              ; $74de: $17
	rst  $38                                         ; $74df: $ff
	rst  $38                                         ; $74e0: $ff
	rst  $38                                         ; $74e1: $ff
	or   c                                           ; $74e2: $b1
	add  hl, de                                      ; $74e3: $19
	ld   d, h                                        ; $74e4: $54
	rst  $28                                         ; $74e5: $ef
	rst  $38                                         ; $74e6: $ff
	db   $db                                         ; $74e7: $db
	ld   [$95bd], a                                  ; $74e8: $ea $bd $95
	ld   de, $1111                                   ; $74eb: $11 $11 $11
	rra                                              ; $74ee: $1f
	rst  $38                                         ; $74ef: $ff
	rst  $38                                         ; $74f0: $ff
	rst  $38                                         ; $74f1: $ff
	ld   d, c                                        ; $74f2: $51
	ld   d, $17                                      ; $74f3: $16 $17
	rst  $38                                         ; $74f5: $ff
	rst  $38                                         ; $74f6: $ff
	sbc  h                                           ; $74f7: $9c
	ld   a, [$c6ad]                                  ; $74f8: $fa $ad $c6
	ld   de, $1111                                   ; $74fb: $11 $11 $11
	rra                                              ; $74fe: $1f
	rst  $38                                         ; $74ff: $ff
	rst  $38                                         ; $7500: $ff
	rst  $38                                         ; $7501: $ff
	ld   d, c                                        ; $7502: $51
	inc  e                                           ; $7503: $1c
	ld   h, [hl]                                     ; $7504: $66
	rst  $38                                         ; $7505: $ff
	rst  $38                                         ; $7506: $ff
	call z, $dffc                                    ; $7507: $cc $fc $df
	and  h                                           ; $750a: $a4
	ld   de, $1111                                   ; $750b: $11 $11 $11
	inc  de                                          ; $750e: $13
	rst  $38                                         ; $750f: $ff
	rst  $38                                         ; $7510: $ff
	db   $fc                                         ; $7511: $fc
	ld   h, c                                        ; $7512: $61
	jr   jr_0dc_74b7                                 ; $7513: $18 $a2

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7515: $cf
	rst  $38                                         ; $7516: $ff
	ld   a, [$abff]                                  ; $7517: $fa $ff $ab
	rst  $30                                         ; $751a: $f7
	ld   de, $1111                                   ; $751b: $11 $11 $11
	ld   de, $ffff                                   ; $751e: $11 $ff $ff
	rst  $38                                         ; $7521: $ff
	jp   nz, $e811                                   ; $7522: $c2 $11 $e8

	sbc  a                                           ; $7525: $9f
	rst  $38                                         ; $7526: $ff
	ei                                               ; $7527: $fb
	cp   a                                           ; $7528: $bf
	ei                                               ; $7529: $fb
	jp   z, $1121                                    ; $752a: $ca $21 $11

	ld   de, $1f11                                   ; $752d: $11 $11 $1f
	rst  $38                                         ; $7530: $ff
	rst  $38                                         ; $7531: $ff
	ldh  a, [c]                                      ; $7532: $f2
	ld   de, $aa1e                                   ; $7533: $11 $1e $aa
	rst  $38                                         ; $7536: $ff
	rst  $38                                         ; $7537: $ff
	jp   c, $acdc                                    ; $7538: $da $dc $ac

	and  e                                           ; $753b: $a3
	ld   de, $1111                                   ; $753c: $11 $11 $11
	ld   de, $ffff                                   ; $753f: $11 $ff $ff
	ei                                               ; $7542: $fb
	ld   b, c                                        ; $7543: $41
	ld   de, $ffdc                                   ; $7544: $11 $dc $ff
	rst  $38                                         ; $7547: $ff
	cp   $8d                                         ; $7548: $fe $8d
	call z, $21da                                    ; $754a: $cc $da $21
	ld   de, $1111                                   ; $754d: $11 $11 $11
	ld   [de], a                                     ; $7550: $12
	rst  $38                                         ; $7551: $ff
	rst  $38                                         ; $7552: $ff
	rst  $30                                         ; $7553: $f7
	ld   hl, $ff1b                                   ; $7554: $21 $1b $ff
	rst  $38                                         ; $7557: $ff
	rst  $38                                         ; $7558: $ff
	push hl                                          ; $7559: $e5
	sbc  l                                           ; $755a: $9d
	call $11c7                                       ; $755b: $cd $c7 $11
	ld   de, $1111                                   ; $755e: $11 $11 $11
	rra                                              ; $7561: $1f
	rst  $38                                         ; $7562: $ff
	rst  $38                                         ; $7563: $ff
	ld   [hl], c                                     ; $7564: $71
	ld   de, $ff1f                                   ; $7565: $11 $1f $ff
	rst  $38                                         ; $7568: $ff
	rst  $38                                         ; $7569: $ff
	ld   h, a                                        ; $756a: $67
	jp   c, $c2cf                                    ; $756b: $da $cf $c2

	ld   de, $1111                                   ; $756e: $11 $11 $11
	ld   de, $ff1f                                   ; $7571: $11 $1f $ff
	rst  $38                                         ; $7574: $ff
	pop  bc                                          ; $7575: $c1
	ld   de, $cf6f                                   ; $7576: $11 $6f $cf
	rst  $38                                         ; $7579: $ff
	ei                                               ; $757a: $fb
	ld   l, b                                        ; $757b: $68
	xor  h                                           ; $757c: $ac
	xor  l                                           ; $757d: $ad
	ldh  a, [c]                                      ; $757e: $f2
	ld   de, $1111                                   ; $757f: $11 $11 $11
	ld   de, $ff1f                                   ; $7582: $11 $1f $ff
	rst  $38                                         ; $7585: $ff
	ld   b, a                                        ; $7586: $47
	ld   de, $7faf                                   ; $7587: $11 $af $7f
	rst  $38                                         ; $758a: $ff
	rst  $38                                         ; $758b: $ff
	ld   l, c                                        ; $758c: $69
	cp   c                                           ; $758d: $b9
	sbc  [hl]                                        ; $758e: $9e
	call nc, $1111                                   ; $758f: $d4 $11 $11
	ld   de, $1f11                                   ; $7592: $11 $11 $1f
	rst  $38                                         ; $7595: $ff
	rst  $38                                         ; $7596: $ff
	ldh  [c], a                                      ; $7597: $e2
	ld   de, $ff4f                                   ; $7598: $11 $4f $ff
	rst  $38                                         ; $759b: $ff
	db   $fc                                         ; $759c: $fc
	ld   d, l                                        ; $759d: $55
	xor  h                                           ; $759e: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $759f: $cf
	db   $e4                                         ; $75a0: $e4
	ld   de, $1111                                   ; $75a1: $11 $11 $11
	ld   de, $ff1e                                   ; $75a4: $11 $1e $ff
	rst  $38                                         ; $75a7: $ff
	and  a                                           ; $75a8: $a7
	ld   de, $df1f                                   ; $75a9: $11 $1f $df
	rst  $38                                         ; $75ac: $ff
	rst  $38                                         ; $75ad: $ff
	ld   h, h                                        ; $75ae: $64
	db   $db                                         ; $75af: $db
	cp   a                                           ; $75b0: $bf
	push af                                          ; $75b1: $f5
	ld   de, $1111                                   ; $75b2: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $75b5: $11 $12 $ff
	rst  $38                                         ; $75b8: $ff
	call nc, $1a31                                   ; $75b9: $d4 $31 $1a
	rst  $38                                         ; $75bc: $ff
	rst  $38                                         ; $75bd: $ff
	rst  $38                                         ; $75be: $ff
	push bc                                          ; $75bf: $c5
	ld   a, l                                        ; $75c0: $7d
	cp   [hl]                                        ; $75c1: $be
	ld   hl, sp+$41                                  ; $75c2: $f8 $41
	ld   de, $1111                                   ; $75c4: $11 $11 $11
	ld   de, $ffff                                   ; $75c7: $11 $ff $ff
	ei                                               ; $75ca: $fb
	ld   de, $fe11                                   ; $75cb: $11 $11 $fe
	rst  $38                                         ; $75ce: $ff
	rst  $38                                         ; $75cf: $ff
	push af                                          ; $75d0: $f5
	ld   e, b                                        ; $75d1: $58
	cp   [hl]                                        ; $75d2: $be
	rst  $38                                         ; $75d3: $ff
	ld   d, c                                        ; $75d4: $51
	ld   de, $1111                                   ; $75d5: $11 $11 $11
	ld   de, $ff1f                                   ; $75d8: $11 $1f $ff
	rst  $38                                         ; $75db: $ff
	or   c                                           ; $75dc: $b1
	ld   de, $ef4f                                   ; $75dd: $11 $4f $ef
	rst  $38                                         ; $75e0: $ff
	ei                                               ; $75e1: $fb
	ld   [hl], a                                     ; $75e2: $77
	adc  [hl]                                        ; $75e3: $8e
	rst  $38                                         ; $75e4: $ff
	pop  de                                          ; $75e5: $d1
	ld   de, $1111                                   ; $75e6: $11 $11 $11
	ld   de, $ff16                                   ; $75e9: $11 $16 $ff
	rst  $38                                         ; $75ec: $ff
	ld   sp, hl                                      ; $75ed: $f9
	ld   de, $ce1a                                   ; $75ee: $11 $1a $ce
	rst  $38                                         ; $75f1: $ff
	rst  $38                                         ; $75f2: $ff
	sub  $8a                                         ; $75f3: $d6 $8a
	xor  a                                           ; $75f5: $af
	db   $fc                                         ; $75f6: $fc
	ld   b, c                                        ; $75f7: $41
	ld   de, $1111                                   ; $75f8: $11 $11 $11
	ld   de, $ffef                                   ; $75fb: $11 $ef $ff
	rst  $38                                         ; $75fe: $ff
	ld   h, c                                        ; $75ff: $61
	ld   de, $ffcf                                   ; $7600: $11 $cf $ff
	rst  $38                                         ; $7603: $ff
	call c, $dc85                                    ; $7604: $dc $85 $dc
	adc  $95                                         ; $7607: $ce $95
	ld   de, $1111                                   ; $7609: $11 $11 $11
	ld   de, $ff1f                                   ; $760c: $11 $1f $ff
	rst  $38                                         ; $760f: $ff
	rst  $30                                         ; $7610: $f7
	ld   de, $8c1c                                   ; $7611: $11 $1c $8c
	rst  $38                                         ; $7614: $ff
	rst  $38                                         ; $7615: $ff
	cp   c                                           ; $7616: $b9
	ld   e, c                                        ; $7617: $59
	sbc  l                                           ; $7618: $9d
	rst  $30                                         ; $7619: $f7
	ld   b, c                                        ; $761a: $41
	ld   de, $1111                                   ; $761b: $11 $11 $11
	ld   de, $cfff                                   ; $761e: $11 $ff $cf
	rst  $38                                         ; $7621: $ff
	ld   [hl], c                                     ; $7622: $71
	ld   [de], a                                     ; $7623: $12
	sub  a                                           ; $7624: $97
	rst  JumpTable                                         ; $7625: $df
	rst  $38                                         ; $7626: $ff
	ei                                               ; $7627: $fb
	xor  b                                           ; $7628: $a8
	ld   a, b                                        ; $7629: $78
	rst  JumpTable                                         ; $762a: $df
	or   e                                           ; $762b: $b3
	ld   de, $1111                                   ; $762c: $11 $11 $11
	ld   de, $ff1f                                   ; $762f: $11 $1f $ff
	rst  $38                                         ; $7632: $ff
	rst  $30                                         ; $7633: $f7
	ld   de, $6b1b                                   ; $7634: $11 $1b $6b
	rst  $38                                         ; $7637: $ff
	rst  $38                                         ; $7638: $ff
	call z, Call_0dc_7e99                            ; $7639: $cc $99 $7e
	rst  $30                                         ; $763c: $f7
	ld   b, c                                        ; $763d: $41
	ld   de, $1111                                   ; $763e: $11 $11 $11
	ld   de, $ffff                                   ; $7641: $11 $ff $ff
	rst  $38                                         ; $7644: $ff
	or   c                                           ; $7645: $b1
	ld   de, $8fd2                                   ; $7646: $11 $d2 $8f
	rst  $38                                         ; $7649: $ff
	ld   a, [$b4cc]                                  ; $764a: $fa $cc $b4
	cp   [hl]                                        ; $764d: $be
	sub  [hl]                                        ; $764e: $96
	ld   de, $1111                                   ; $764f: $11 $11 $11
	ld   de, $fb1f                                   ; $7652: $11 $1f $fb
	rst  $38                                         ; $7655: $ff
	cp   $11                                         ; $7656: $fe $11
	ld   e, e                                        ; $7658: $5b
	ld   c, c                                        ; $7659: $49
	rst  $38                                         ; $765a: $ff
	rst  $38                                         ; $765b: $ff
	cp   [hl]                                        ; $765c: $be
	ret                                              ; $765d: $c9


	ld   l, h                                        ; $765e: $6c
	jp   hl                                          ; $765f: $e9


	ld   sp, $1111                                   ; $7660: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $7663: $11 $11 $ff
	cp   a                                           ; $7666: $bf
	rst  $38                                         ; $7667: $ff
	jp   nc, $9211                                   ; $7668: $d2 $11 $92

	ld   a, a                                        ; $766b: $7f
	rst  $38                                         ; $766c: $ff
	rst  $38                                         ; $766d: $ff
	db   $ed                                         ; $766e: $ed
	halt                                             ; $766f: $76
	call c, $1193                                    ; $7670: $dc $93 $11
	ld   de, $1111                                   ; $7673: $11 $11 $11
	rla                                              ; $7676: $17
	cp   $bf                                         ; $7677: $fe $bf
	rst  $38                                         ; $7679: $ff
	ld   b, c                                        ; $767a: $41
	dec  de                                          ; $767b: $1b
	ld   [hl-], a                                    ; $767c: $32
	rst  $38                                         ; $767d: $ff
	rst  $38                                         ; $767e: $ff
	rst  $38                                         ; $767f: $ff
	ei                                               ; $7680: $fb
	ld   a, l                                        ; $7681: $7d
	sub  $41                                         ; $7682: $d6 $41
	ld   de, $1111                                   ; $7684: $11 $11 $11
	ld   de, $f93f                                   ; $7687: $11 $3f $f9
	rst  $38                                         ; $768a: $ff
	ld   sp, hl                                      ; $768b: $f9
	ld   [de], a                                     ; $768c: $12
	add  a                                           ; $768d: $87
	dec  l                                           ; $768e: $2d
	rst  $38                                         ; $768f: $ff
	rst  $38                                         ; $7690: $ff
	rst  $38                                         ; $7691: $ff
	ret  c                                           ; $7692: $d8

	xor  e                                           ; $7693: $ab
	sub  l                                           ; $7694: $95
	ld   de, $1111                                   ; $7695: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7698: $11 $11 $ff
	sbc  a                                           ; $769b: $9f
	rst  $38                                         ; $769c: $ff
	pop  de                                          ; $769d: $d1
	rla                                              ; $769e: $17
	ld   h, c                                        ; $769f: $61
	xor  a                                           ; $76a0: $af
	rst  $38                                         ; $76a1: $ff
	rst  $38                                         ; $76a2: $ff
	db   $fd                                         ; $76a3: $fd
	sbc  d                                           ; $76a4: $9a
	jp   z, $3163                                    ; $76a5: $ca $63 $31

	ld   de, $1111                                   ; $76a8: $11 $11 $11
	dec  e                                           ; $76ab: $1d
	ld   hl, sp-$01                                  ; $76ac: $f8 $ff
	rst  $38                                         ; $76ae: $ff
	ld   d, c                                        ; $76af: $51
	adc  c                                           ; $76b0: $89
	dec  d                                           ; $76b1: $15
	rst  $38                                         ; $76b2: $ff
	rst  $38                                         ; $76b3: $ff
	rst  $38                                         ; $76b4: $ff
	ei                                               ; $76b5: $fb
	xor  l                                           ; $76b6: $ad
	ret  z                                           ; $76b7: $c8

	ld   [hl-], a                                    ; $76b8: $32
	ld   hl, $1111                                   ; $76b9: $21 $11 $11
	ld   de, $dd3f                                   ; $76bc: $11 $3f $dd
	rst  $38                                         ; $76bf: $ff
	rst  $38                                         ; $76c0: $ff
	inc  h                                           ; $76c1: $24
	or   e                                           ; $76c2: $b3
	dec  e                                           ; $76c3: $1d
	rst  $38                                         ; $76c4: $ff
	rst  $38                                         ; $76c5: $ff
	rst  $38                                         ; $76c6: $ff
	set  5, [hl]                                     ; $76c7: $cb $ee
	and  [hl]                                        ; $76c9: $a6
	ld   sp, $1111                                   ; $76ca: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $76cd: $11 $11 $ff
	xor  a                                           ; $76d0: $af
	rst  $38                                         ; $76d1: $ff
	rst  $30                                         ; $76d2: $f7
	ld   l, e                                        ; $76d3: $6b
	ld   d, c                                        ; $76d4: $51
	sbc  l                                           ; $76d5: $9d
	rst  JumpTable                                         ; $76d6: $df
	rst  $28                                         ; $76d7: $ef
	cp   $cf                                         ; $76d8: $fe $cf
	ei                                               ; $76da: $fb
	add  [hl]                                        ; $76db: $86
	ld   sp, $1111                                   ; $76dc: $31 $11 $11
	ld   de, $f715                                   ; $76df: $11 $15 $f7
	rst  $38                                         ; $76e2: $ff
	rst  $38                                         ; $76e3: $ff
	cp   b                                           ; $76e4: $b8
	ei                                               ; $76e5: $fb
	inc  de                                          ; $76e6: $13
	set  1, c                                        ; $76e7: $cb $c9
	rst  $38                                         ; $76e9: $ff
	db   $fd                                         ; $76ea: $fd
	rst  $28                                         ; $76eb: $ef
	ei                                               ; $76ec: $fb
	halt                                             ; $76ed: $76
	ld   b, c                                        ; $76ee: $41
	ld   de, $1111                                   ; $76ef: $11 $11 $11
	inc  e                                           ; $76f2: $1c
	add  $ff                                         ; $76f3: $c6 $ff
	rst  $38                                         ; $76f5: $ff
	xor  $d8                                         ; $76f6: $ee $d8
	add  hl, de                                      ; $76f8: $19
	rst  ToBoot                                         ; $76f9: $c7
	xor  d                                           ; $76fa: $aa
	xor  $ec                                         ; $76fb: $ee $ec
	rst  $38                                         ; $76fd: $ff
	call c, $31a9                                    ; $76fe: $dc $a9 $31
	ld   de, $1111                                   ; $7701: $11 $11 $11
	dec  de                                          ; $7704: $1b
	ld   a, $ff                                      ; $7705: $3e $ff
	rst  $38                                         ; $7707: $ff
	rst  $38                                         ; $7708: $ff
	db   $f4                                         ; $7709: $f4
	ld   a, [hl]                                     ; $770a: $7e
	add  a                                           ; $770b: $87
	ld   a, d                                        ; $770c: $7a
	jp   z, $fe9d                                    ; $770d: $ca $9d $fe

	db   $ed                                         ; $7710: $ed
	ret                                              ; $7711: $c9


	ld   sp, $1111                                   ; $7712: $31 $11 $11
	ld   de, $1e17                                   ; $7715: $11 $17 $1e
	rst  $38                                         ; $7718: $ff
	rst  $38                                         ; $7719: $ff
	rst  $38                                         ; $771a: $ff
	ld   hl, sp-$31                                  ; $771b: $f8 $cf
	sub  a                                           ; $771d: $97
	ld   a, c                                        ; $771e: $79
	sub  a                                           ; $771f: $97
	ld   l, e                                        ; $7720: $6b
	db   $eb                                         ; $7721: $eb
	call Call_0dc_64d9                               ; $7722: $cd $d9 $64
	ld   de, $1111                                   ; $7725: $11 $11 $11
	ld   de, $ff1d                                   ; $7728: $11 $1d $ff
	rst  $38                                         ; $772b: $ff
	rst  $38                                         ; $772c: $ff
	db   $fd                                         ; $772d: $fd
	rst  $38                                         ; $772e: $ff
	cp   h                                           ; $772f: $bc
	xor  c                                           ; $7730: $a9
	ld   d, l                                        ; $7731: $55
	ld   h, a                                        ; $7732: $67
	add  a                                           ; $7733: $87
	sbc  e                                           ; $7734: $9b
	cp   b                                           ; $7735: $b8
	sub  l                                           ; $7736: $95
	ld   de, $1111                                   ; $7737: $11 $11 $11
	ld   hl, $ae1d                                   ; $773a: $21 $1d $ae
	rst  $38                                         ; $773d: $ff
	rst  $38                                         ; $773e: $ff
	rst  $38                                         ; $773f: $ff
	rst  $38                                         ; $7740: $ff
	rst  $38                                         ; $7741: $ff
	db   $db                                         ; $7742: $db
	ld   [hl], h                                     ; $7743: $74
	ld   d, [hl]                                     ; $7744: $56
	ld   b, h                                        ; $7745: $44
	ld   [hl], a                                     ; $7746: $77
	halt                                             ; $7747: $76
	ld   h, l                                        ; $7748: $65
	ld   de, $1111                                   ; $7749: $11 $11 $11
	ld   b, c                                        ; $774c: $41
	inc  a                                           ; $774d: $3c
	ld   a, l                                        ; $774e: $7d
	db   $ed                                         ; $774f: $ed
	rst  $38                                         ; $7750: $ff
	rst  $38                                         ; $7751: $ff
	rst  $38                                         ; $7752: $ff
	rst  $38                                         ; $7753: $ff
	cp   $97                                         ; $7754: $fe $97
	ld   [hl], a                                     ; $7756: $77
	ld   b, e                                        ; $7757: $43
	ld   d, l                                        ; $7758: $55
	ld   b, h                                        ; $7759: $44
	ld   b, e                                        ; $775a: $43
	ld   de, $1111                                   ; $775b: $11 $11 $11
	ld   b, c                                        ; $775e: $41
	ld   e, d                                        ; $775f: $5a
	ld   a, d                                        ; $7760: $7a
	cp   [hl]                                        ; $7761: $be
	rst  $38                                         ; $7762: $ff
	rst  $28                                         ; $7763: $ef
	rst  $38                                         ; $7764: $ff
	rst  $38                                         ; $7765: $ff
	rst  $38                                         ; $7766: $ff

jr_0dc_7767:
	xor  d                                           ; $7767: $aa
	and  a                                           ; $7768: $a7
	ld   b, l                                        ; $7769: $45
	ld   d, h                                        ; $776a: $54
	inc  sp                                          ; $776b: $33
	ld   b, d                                        ; $776c: $42
	ld   de, $1111                                   ; $776d: $11 $11 $11
	ld   d, c                                        ; $7770: $51
	dec  de                                          ; $7771: $1b
	add  a                                           ; $7772: $87
	cp   e                                           ; $7773: $bb
	rst  $38                                         ; $7774: $ff
	rst  $28                                         ; $7775: $ef
	rst  $38                                         ; $7776: $ff
	rst  $38                                         ; $7777: $ff
	rst  $38                                         ; $7778: $ff
	call c, Call_0dc_65a8                            ; $7779: $dc $a8 $65
	ld   d, e                                        ; $777c: $53
	inc  hl                                          ; $777d: $23
	ld   sp, $1111                                   ; $777e: $31 $11 $11
	ld   de, $1961                                   ; $7781: $11 $61 $19
	and  [hl]                                        ; $7784: $a6
	sbc  e                                           ; $7785: $9b
	rst  $28                                         ; $7786: $ef
	rst  $28                                         ; $7787: $ef
	rst  $38                                         ; $7788: $ff
	rst  $38                                         ; $7789: $ff
	rst  $38                                         ; $778a: $ff
	xor  $c9                                         ; $778b: $ee $c9
	ld   [hl], l                                     ; $778d: $75
	ld   h, h                                        ; $778e: $64
	inc  de                                          ; $778f: $13
	ld   sp, $1111                                   ; $7790: $31 $11 $11
	ld   de, $1544                                   ; $7793: $11 $44 $15
	call nz, $ce7c                                   ; $7796: $c4 $7c $ce
	rst  $38                                         ; $7799: $ff
	rst  $38                                         ; $779a: $ff
	rst  $38                                         ; $779b: $ff
	rst  $38                                         ; $779c: $ff
	rst  $38                                         ; $779d: $ff
	jp   c, Jump_0dc_6596                            ; $779e: $da $96 $65

	ld   [de], a                                     ; $77a1: $12
	ld   sp, $1111                                   ; $77a2: $31 $11 $11
	ld   de, $1225                                   ; $77a5: $11 $25 $12
	call nz, $ac5b                                   ; $77a8: $c4 $5b $ac
	db   $dd                                         ; $77ab: $dd
	rst  $38                                         ; $77ac: $ff
	rst  $38                                         ; $77ad: $ff
	rst  $38                                         ; $77ae: $ff
	rst  $38                                         ; $77af: $ff
	db   $ec                                         ; $77b0: $ec
	xor  c                                           ; $77b1: $a9
	halt                                             ; $77b2: $76
	inc  sp                                          ; $77b3: $33
	ld   sp, $1111                                   ; $77b4: $31 $11 $11
	ld   de, $1113                                   ; $77b7: $11 $13 $11
	add  a                                           ; $77ba: $87
	jr   z, jr_0dc_7767                              ; $77bb: $28 $aa

	cp   h                                           ; $77bd: $bc
	rst  $38                                         ; $77be: $ff
	rst  $38                                         ; $77bf: $ff
	rst  $38                                         ; $77c0: $ff
	rst  $38                                         ; $77c1: $ff
	db   $fd                                         ; $77c2: $fd
	res  2, a                                        ; $77c3: $cb $97
	ld   d, h                                        ; $77c5: $54
	ld   sp, $1111                                   ; $77c6: $31 $11 $11

Call_0dc_77c9:
	ld   de, $3111                                   ; $77c9: $11 $11 $31
	add  hl, hl                                      ; $77cc: $29
	dec  [hl]                                        ; $77cd: $35
	sbc  b                                           ; $77ce: $98
	cp   e                                           ; $77cf: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77d0: $cf
	rst  $38                                         ; $77d1: $ff
	rst  $38                                         ; $77d2: $ff
	rst  $38                                         ; $77d3: $ff
	rst  $38                                         ; $77d4: $ff
	db   $ec                                         ; $77d5: $ec
	cp   c                                           ; $77d6: $b9
	ld   [hl], l                                     ; $77d7: $75
	ld   b, e                                        ; $77d8: $43
	ld   [de], a                                     ; $77d9: $12
	ld   de, $1111                                   ; $77da: $11 $11 $11
	inc  sp                                          ; $77dd: $33
	inc  d                                           ; $77de: $14
	ld   [hl], e                                     ; $77df: $73
	ld   d, a                                        ; $77e0: $57
	adc  c                                           ; $77e1: $89
	xor  l                                           ; $77e2: $ad
	rst  $28                                         ; $77e3: $ef
	rst  $38                                         ; $77e4: $ff
	rst  $38                                         ; $77e5: $ff
	rst  $38                                         ; $77e6: $ff
	xor  $db                                         ; $77e7: $ee $db
	sbc  b                                           ; $77e9: $98
	ld   h, l                                        ; $77ea: $65
	ld   b, e                                        ; $77eb: $43
	ld   b, d                                        ; $77ec: $42
	inc  hl                                          ; $77ed: $23
	ld   hl, $4323                                   ; $77ee: $21 $23 $43
	daa                                              ; $77f1: $27
	ld   d, h                                        ; $77f2: $54
	ld   [hl], a                                     ; $77f3: $77
	ld   a, b                                        ; $77f4: $78
	sbc  d                                           ; $77f5: $9a
	cp   h                                           ; $77f6: $bc
	rst  JumpTable                                         ; $77f7: $df
	db   $dd                                         ; $77f8: $dd
	db   $fd                                         ; $77f9: $fd
	call z, $99b9                                    ; $77fa: $cc $b9 $99
	halt                                             ; $77fd: $76
	ld   h, l                                        ; $77fe: $65
	ld   d, l                                        ; $77ff: $55
	ld   d, l                                        ; $7800: $55
	ld   d, l                                        ; $7801: $55
	ld   h, l                                        ; $7802: $65
	ld   d, a                                        ; $7803: $57
	ld   d, [hl]                                     ; $7804: $56
	halt                                             ; $7805: $76
	ld   h, [hl]                                     ; $7806: $66
	ld   [hl], a                                     ; $7807: $77
	ld   a, c                                        ; $7808: $79
	adc  c                                           ; $7809: $89
	xor  d                                           ; $780a: $aa
	cp   e                                           ; $780b: $bb
	cp   e                                           ; $780c: $bb
	cp   e                                           ; $780d: $bb
	xor  d                                           ; $780e: $aa
	sbc  c                                           ; $780f: $99
	sbc  c                                           ; $7810: $99
	sbc  b                                           ; $7811: $98
	ld   a, b                                        ; $7812: $78
	add  a                                           ; $7813: $87
	add  a                                           ; $7814: $87
	ld   a, b                                        ; $7815: $78
	ld   [hl], a                                     ; $7816: $77
	add  a                                           ; $7817: $87
	ld   [hl], a                                     ; $7818: $77
	ld   h, a                                        ; $7819: $67
	halt                                             ; $781a: $76
	ld   h, a                                        ; $781b: $67
	ld   h, a                                        ; $781c: $67
	ld   [hl], a                                     ; $781d: $77
	add  a                                           ; $781e: $87
	adc  c                                           ; $781f: $89
	adc  c                                           ; $7820: $89
	sbc  c                                           ; $7821: $99
	xor  c                                           ; $7822: $a9
	xor  d                                           ; $7823: $aa
	xor  c                                           ; $7824: $a9
	xor  c                                           ; $7825: $a9
	sbc  c                                           ; $7826: $99
	sbc  c                                           ; $7827: $99
	sbc  c                                           ; $7828: $99
	adc  b                                           ; $7829: $88
	sbc  b                                           ; $782a: $98
	adc  b                                           ; $782b: $88
	adc  b                                           ; $782c: $88
	ld   [hl], a                                     ; $782d: $77
	ld   [hl], a                                     ; $782e: $77
	ld   [hl], a                                     ; $782f: $77
	ld   h, a                                        ; $7830: $67
	halt                                             ; $7831: $76
	ld   [hl], a                                     ; $7832: $77
	ld   [hl], a                                     ; $7833: $77
	ld   [hl], a                                     ; $7834: $77
	adc  b                                           ; $7835: $88
	sbc  c                                           ; $7836: $99
	adc  c                                           ; $7837: $89
	sbc  c                                           ; $7838: $99
	sbc  c                                           ; $7839: $99
	sbc  c                                           ; $783a: $99
	adc  c                                           ; $783b: $89
	sbc  c                                           ; $783c: $99
	sbc  b                                           ; $783d: $98
	sbc  c                                           ; $783e: $99
	adc  c                                           ; $783f: $89
	adc  b                                           ; $7840: $88
	add  a                                           ; $7841: $87
	ld   [hl], a                                     ; $7842: $77
	adc  b                                           ; $7843: $88
	ld   [hl], a                                     ; $7844: $77
	ld   [hl], a                                     ; $7845: $77
	ld   [hl], a                                     ; $7846: $77
	ld   [hl], a                                     ; $7847: $77
	ld   [hl], a                                     ; $7848: $77
	add  a                                           ; $7849: $87
	adc  b                                           ; $784a: $88
	adc  b                                           ; $784b: $88
	adc  b                                           ; $784c: $88
	sbc  c                                           ; $784d: $99
	sbc  c                                           ; $784e: $99
	adc  b                                           ; $784f: $88
	adc  c                                           ; $7850: $89
	adc  b                                           ; $7851: $88
	sbc  c                                           ; $7852: $99
	adc  b                                           ; $7853: $88
	adc  b                                           ; $7854: $88
	adc  b                                           ; $7855: $88
	add  a                                           ; $7856: $87
	adc  b                                           ; $7857: $88
	ld   [hl], a                                     ; $7858: $77
	ld   a, b                                        ; $7859: $78
	adc  b                                           ; $785a: $88
	adc  b                                           ; $785b: $88
	adc  b                                           ; $785c: $88
	adc  b                                           ; $785d: $88
	adc  b                                           ; $785e: $88
	adc  c                                           ; $785f: $89
	adc  b                                           ; $7860: $88
	sbc  b                                           ; $7861: $98
	sbc  b                                           ; $7862: $98
	adc  c                                           ; $7863: $89
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
	adc  c                                           ; $7872: $89
	adc  b                                           ; $7873: $88
	adc  b                                           ; $7874: $88
	sbc  c                                           ; $7875: $99
	sbc  b                                           ; $7876: $98
	adc  b                                           ; $7877: $88
	adc  b                                           ; $7878: $88
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	adc  b                                           ; $787d: $88
	adc  b                                           ; $787e: $88
	adc  b                                           ; $787f: $88
	adc  b                                           ; $7880: $88
	adc  b                                           ; $7881: $88
	adc  b                                           ; $7882: $88
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
	adc  b                                           ; $7890: $88
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
	adc  b                                           ; $78db: $88
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
	adc  b                                           ; $7913: $88
	adc  b                                           ; $7914: $88
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	adc  b                                           ; $7917: $88
	adc  b                                           ; $7918: $88
	adc  b                                           ; $7919: $88
	adc  b                                           ; $791a: $88
	adc  b                                           ; $791b: $88
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
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  b                                           ; $7930: $88
	adc  b                                           ; $7931: $88
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	adc  b                                           ; $7938: $88
	adc  b                                           ; $7939: $88
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
	adc  b                                           ; $794b: $88
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
	adc  b                                           ; $7956: $88
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

Jump_0dc_7987:
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
	sub  a                                           ; $79e7: $97
	ld   a, c                                        ; $79e8: $79
	xor  b                                           ; $79e9: $a8
	ld   [hl], a                                     ; $79ea: $77
	sbc  b                                           ; $79eb: $98
	ld   [hl], a                                     ; $79ec: $77
	sbc  c                                           ; $79ed: $99
	halt                                             ; $79ee: $76
	adc  d                                           ; $79ef: $8a
	add  a                                           ; $79f0: $87
	xor  d                                           ; $79f1: $aa
	adc  c                                           ; $79f2: $89
	adc  b                                           ; $79f3: $88
	add  a                                           ; $79f4: $87
	sbc  d                                           ; $79f5: $9a
	add  [hl]                                        ; $79f6: $86
	adc  b                                           ; $79f7: $88
	ld   [hl], a                                     ; $79f8: $77
	ld   a, b                                        ; $79f9: $78
	xor  b                                           ; $79fa: $a8
	ld   h, a                                        ; $79fb: $67
	sbc  c                                           ; $79fc: $99
	add  a                                           ; $79fd: $87
	adc  c                                           ; $79fe: $89
	sub  a                                           ; $79ff: $97
	ld   l, b                                        ; $7a00: $68
	sub  a                                           ; $7a01: $97
	ld   l, c                                        ; $7a02: $69
	halt                                             ; $7a03: $76
	adc  b                                           ; $7a04: $88
	ld   [hl], a                                     ; $7a05: $77
	ld   a, b                                        ; $7a06: $78
	sub  a                                           ; $7a07: $97
	adc  d                                           ; $7a08: $8a
	sub  a                                           ; $7a09: $97
	ld   [hl], a                                     ; $7a0a: $77
	ld   [hl], a                                     ; $7a0b: $77
	ld   [hl], a                                     ; $7a0c: $77
	ld   [hl], a                                     ; $7a0d: $77
	ld   [hl], a                                     ; $7a0e: $77
	add  a                                           ; $7a0f: $87
	ld   a, b                                        ; $7a10: $78
	sub  a                                           ; $7a11: $97
	adc  d                                           ; $7a12: $8a
	xor  c                                           ; $7a13: $a9
	sbc  c                                           ; $7a14: $99
	xor  c                                           ; $7a15: $a9
	ld   h, [hl]                                     ; $7a16: $66
	ld   d, [hl]                                     ; $7a17: $56
	ld   h, a                                        ; $7a18: $67
	add  a                                           ; $7a19: $87
	ld   a, b                                        ; $7a1a: $78
	sbc  c                                           ; $7a1b: $99
	xor  c                                           ; $7a1c: $a9
	sbc  d                                           ; $7a1d: $9a
	xor  d                                           ; $7a1e: $aa
	ld   [hl], a                                     ; $7a1f: $77
	add  [hl]                                        ; $7a20: $86
	ld   d, [hl]                                     ; $7a21: $56
	adc  c                                           ; $7a22: $89
	halt                                             ; $7a23: $76
	adc  d                                           ; $7a24: $8a
	add  a                                           ; $7a25: $87
	ld   a, c                                        ; $7a26: $79
	sub  a                                           ; $7a27: $97
	ld   [hl], a                                     ; $7a28: $77
	sub  a                                           ; $7a29: $97
	ld   d, [hl]                                     ; $7a2a: $56
	add  a                                           ; $7a2b: $87
	ld   h, a                                        ; $7a2c: $67
	adc  b                                           ; $7a2d: $88
	ld   a, d                                        ; $7a2e: $7a
	sbc  b                                           ; $7a2f: $98
	ld   a, b                                        ; $7a30: $78
	sbc  b                                           ; $7a31: $98
	ld   [hl], a                                     ; $7a32: $77
	ld   a, b                                        ; $7a33: $78
	add  a                                           ; $7a34: $87
	ld   [hl], a                                     ; $7a35: $77
	adc  c                                           ; $7a36: $89
	ld   [hl], a                                     ; $7a37: $77
	adc  b                                           ; $7a38: $88
	ld   [hl], a                                     ; $7a39: $77
	ld   a, b                                        ; $7a3a: $78
	sub  a                                           ; $7a3b: $97
	ld   a, b                                        ; $7a3c: $78
	sbc  c                                           ; $7a3d: $99
	add  a                                           ; $7a3e: $87
	ld   a, c                                        ; $7a3f: $79
	add  l                                           ; $7a40: $85
	adc  e                                           ; $7a41: $8b
	xor  b                                           ; $7a42: $a8
	adc  b                                           ; $7a43: $88
	sbc  d                                           ; $7a44: $9a
	add  a                                           ; $7a45: $87
	adc  d                                           ; $7a46: $8a
	sub  a                                           ; $7a47: $97
	adc  c                                           ; $7a48: $89
	add  a                                           ; $7a49: $87
	ld   [hl], a                                     ; $7a4a: $77
	sbc  c                                           ; $7a4b: $99
	ld   a, b                                        ; $7a4c: $78
	ld   a, b                                        ; $7a4d: $78
	ld   [hl], a                                     ; $7a4e: $77
	halt                                             ; $7a4f: $76
	ld   h, [hl]                                     ; $7a50: $66
	ld   [hl], a                                     ; $7a51: $77
	ld   d, [hl]                                     ; $7a52: $56
	and  a                                           ; $7a53: $a7
	ld   h, a                                        ; $7a54: $67
	adc  d                                           ; $7a55: $8a
	sub  a                                           ; $7a56: $97
	sbc  e                                           ; $7a57: $9b
	jp   z, $9989                                    ; $7a58: $ca $89 $99

	sbc  c                                           ; $7a5b: $99
	sbc  d                                           ; $7a5c: $9a
	xor  b                                           ; $7a5d: $a8
	ld   a, b                                        ; $7a5e: $78
	adc  b                                           ; $7a5f: $88
	ld   h, l                                        ; $7a60: $65
	ld   a, c                                        ; $7a61: $79
	sub  h                                           ; $7a62: $94
	add  hl, hl                                      ; $7a63: $29
	ld   [hl], h                                     ; $7a64: $74
	inc  [hl]                                        ; $7a65: $34
	ld   [hl], h                                     ; $7a66: $74
	dec  d                                           ; $7a67: $15
	ld   d, l                                        ; $7a68: $55
	ld   b, [hl]                                     ; $7a69: $46
	sbc  c                                           ; $7a6a: $99
	cp   l                                           ; $7a6b: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a6c: $cf
	cp   $ff                                         ; $7a6d: $fe $ff
	cp   e                                           ; $7a6f: $bb
	adc  $ee                                         ; $7a70: $ce $ee
	cp   d                                           ; $7a72: $ba
	jp   z, Jump_0dc_4255                            ; $7a73: $ca $55 $42

	ld   de, $1111                                   ; $7a76: $11 $11 $11
	ld   de, $7f81                                   ; $7a79: $11 $81 $7f
	rst  $38                                         ; $7a7c: $ff
	rst  $38                                         ; $7a7d: $ff
	rst  $38                                         ; $7a7e: $ff
	rst  ToBoot                                         ; $7a7f: $c7
	rst  $28                                         ; $7a80: $ef
	cp   $be                                         ; $7a81: $fe $be
	ld   a, [$edab]                                  ; $7a83: $fa $ab $ed
	xor  b                                           ; $7a86: $a8
	ld   h, [hl]                                     ; $7a87: $66
	ld   de, $1111                                   ; $7a88: $11 $11 $11
	ld   de, $afd7                                   ; $7a8b: $11 $d7 $af
	rst  $38                                         ; $7a8e: $ff
	cp   $ae                                         ; $7a8f: $fe $ae
	and  a                                           ; $7a91: $a7
	ld   a, h                                        ; $7a92: $7c
	rst  $38                                         ; $7a93: $ff
	cp   l                                           ; $7a94: $bd
	db   $fd                                         ; $7a95: $fd
	cp   $cc                                         ; $7a96: $fe $cc
	ld   [$1164], a                                  ; $7a98: $ea $64 $11
	ld   de, $1111                                   ; $7a9b: $11 $11 $11
	db   $fc                                         ; $7a9e: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a9f: $cf
	rst  $38                                         ; $7aa0: $ff
	db   $fd                                         ; $7aa1: $fd
	xor  d                                           ; $7aa2: $aa
	sub  d                                           ; $7aa3: $92
	ld   l, [hl]                                     ; $7aa4: $6e
	rst  $38                                         ; $7aa5: $ff
	rst  $38                                         ; $7aa6: $ff
	call c, $ffde                                    ; $7aa7: $dc $de $ff
	or   a                                           ; $7aaa: $b7
	ld   b, c                                        ; $7aab: $41
	ld   de, $1111                                   ; $7aac: $11 $11 $11
	ld   a, [de]                                     ; $7aaf: $1a
	ld   a, [$ffff]                                  ; $7ab0: $fa $ff $ff
	ld   l, c                                        ; $7ab3: $69
	xor  c                                           ; $7ab4: $a9
	ld   d, h                                        ; $7ab5: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab6: $cf
	rst  $38                                         ; $7ab7: $ff
	adc  $de                                         ; $7ab8: $ce $de
	sbc  $fd                                         ; $7aba: $de $fd
	add  h                                           ; $7abc: $84
	ld   de, $1111                                   ; $7abd: $11 $11 $11
	ld   de, $ef1f                                   ; $7ac0: $11 $1f $ef
	rst  $38                                         ; $7ac3: $ff
	cp   $51                                         ; $7ac4: $fe $51
	sbc  h                                           ; $7ac6: $9c
	ld   c, e                                        ; $7ac7: $4b
	ld   a, a                                        ; $7ac8: $7f
	rst  $38                                         ; $7ac9: $ff
	ret                                              ; $7aca: $c9


	cp   $fd                                         ; $7acb: $fe $fd
	db   $eb                                         ; $7acd: $eb
	ld   d, e                                        ; $7ace: $53
	ld   de, $1111                                   ; $7acf: $11 $11 $11
	ld   de, sRandomSeed                                   ; $7ad2: $11 $ff $bf
	rst  $38                                         ; $7ad5: $ff
	reti                                             ; $7ad6: $d9


	ld   [hl], l                                     ; $7ad7: $75
	and  c                                           ; $7ad8: $a1
	xor  a                                           ; $7ad9: $af
	rst  $38                                         ; $7ada: $ff
	rst  $28                                         ; $7adb: $ef
	call $fdad                                       ; $7adc: $cd $ad $fd
	add  e                                           ; $7adf: $83
	ld   hl, $1111                                   ; $7ae0: $21 $11 $11
	ld   de, $ff1f                                   ; $7ae3: $11 $1f $ff
	db   $fd                                         ; $7ae6: $fd
	rst  $38                                         ; $7ae7: $ff
	or   d                                           ; $7ae8: $b2
	ld   a, [hl-]                                    ; $7ae9: $3a
	ld   l, h                                        ; $7aea: $6c
	cp   a                                           ; $7aeb: $bf
	cp   $e8                                         ; $7aec: $fe $e8
	xor  $fe                                         ; $7aee: $ee $fe
	jp   c, $1111                                    ; $7af0: $da $11 $11

	ld   de, $1111                                   ; $7af3: $11 $11 $11
	rst  $38                                         ; $7af6: $ff
	rst  $38                                         ; $7af7: $ff
	rst  $28                                         ; $7af8: $ef
	rst  $30                                         ; $7af9: $f7
	ld   c, b                                        ; $7afa: $48
	ld   [hl], e                                     ; $7afb: $73
	rst  JumpTable                                         ; $7afc: $df
	rst  $38                                         ; $7afd: $ff
	db   $dd                                         ; $7afe: $dd
	db   $fd                                         ; $7aff: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b00: $cf
	db   $ec                                         ; $7b01: $ec
	ld   h, c                                        ; $7b02: $61
	ld   de, $1111                                   ; $7b03: $11 $11 $11
	ld   de, $af7f                                   ; $7b06: $11 $7f $af
	rst  $38                                         ; $7b09: $ff
	reti                                             ; $7b0a: $d9


	ld   h, c                                        ; $7b0b: $61
	cp   b                                           ; $7b0c: $b8
	ld   l, l                                        ; $7b0d: $6d
	rst  $38                                         ; $7b0e: $ff
	rst  $28                                         ; $7b0f: $ef
	rst  JumpTable                                         ; $7b10: $df
	ld   a, [$b4bf]                                  ; $7b11: $fa $bf $b4
	ld   hl, $1111                                   ; $7b14: $21 $11 $11
	ld   de, $fe1b                                   ; $7b17: $11 $1b $fe
	rst  $38                                         ; $7b1a: $ff
	rst  $38                                         ; $7b1b: $ff
	ld   d, d                                        ; $7b1c: $52
	scf                                              ; $7b1d: $37
	adc  [hl]                                        ; $7b1e: $8e
	rst  $38                                         ; $7b1f: $ff
	rst  $38                                         ; $7b20: $ff
	cp   [hl]                                        ; $7b21: $be
	call $c9ee                                       ; $7b22: $cd $ee $c9
	ld   h, c                                        ; $7b25: $61
	ld   de, $1111                                   ; $7b26: $11 $11 $11
	ld   de, $afff                                   ; $7b29: $11 $ff $af
	db   $fd                                         ; $7b2c: $fd
	ld   c, b                                        ; $7b2d: $48
	or   h                                           ; $7b2e: $b4
	sub  l                                           ; $7b2f: $95
	xor  a                                           ; $7b30: $af
	rst  $38                                         ; $7b31: $ff
	rst  JumpTable                                         ; $7b32: $df
	cp   h                                           ; $7b33: $bc
	call z, Call_0dc_53fd                            ; $7b34: $cc $fd $53
	ld   de, $1111                                   ; $7b37: $11 $11 $11
	ld   de, $dc4f                                   ; $7b3a: $11 $4f $dc
	rst  $38                                         ; $7b3d: $ff
	rst  $30                                         ; $7b3e: $f7
	dec  [hl]                                        ; $7b3f: $35
	ei                                               ; $7b40: $fb
	ld   c, d                                        ; $7b41: $4a
	rst  $38                                         ; $7b42: $ff
	rst  $38                                         ; $7b43: $ff
	adc  $fc                                         ; $7b44: $ce $fc
	call z, $21a6                                    ; $7b46: $cc $a6 $21
	ld   de, $1111                                   ; $7b49: $11 $11 $11
	rla                                              ; $7b4c: $17
	ei                                               ; $7b4d: $fb
	cp   $7f                                         ; $7b4e: $fe $7f
	add  $57                                         ; $7b50: $c6 $57
	ld   [hl], a                                     ; $7b52: $77
	rst  $38                                         ; $7b53: $ff
	rst  $38                                         ; $7b54: $ff
	db   $fc                                         ; $7b55: $fc
	db   $ed                                         ; $7b56: $ed
	sbc  [hl]                                        ; $7b57: $9e
	jp   hl                                          ; $7b58: $e9


	ld   d, c                                        ; $7b59: $51
	ld   de, $1111                                   ; $7b5a: $11 $11 $11
	ld   de, $cfaf                                   ; $7b5d: $11 $af $cf
	xor  a                                           ; $7b60: $af
	pop  af                                          ; $7b61: $f1
	ld   a, c                                        ; $7b62: $79
	sub  a                                           ; $7b63: $97
	call $faff                                       ; $7b64: $cd $ff $fa
	db   $dd                                         ; $7b67: $dd
	rst  $38                                         ; $7b68: $ff
	cp   d                                           ; $7b69: $ba
	and  e                                           ; $7b6a: $a3
	ld   de, $1111                                   ; $7b6b: $11 $11 $11
	ld   de, $fa1f                                   ; $7b6e: $11 $1f $fa
	rst  $30                                         ; $7b71: $f7
	xor  a                                           ; $7b72: $af
	halt                                             ; $7b73: $76
	sub  [hl]                                        ; $7b74: $96
	ld   l, a                                        ; $7b75: $6f

Jump_0dc_7b76:
	rst  $38                                         ; $7b76: $ff
	cp   $cf                                         ; $7b77: $fe $cf
	ret                                              ; $7b79: $c9


	rst  $38                                         ; $7b7a: $ff
	add  $31                                         ; $7b7b: $c6 $31
	ld   hl, $1111                                   ; $7b7d: $21 $11 $11
	ld   [de], a                                     ; $7b80: $12
	ld   a, [$fdef]                                  ; $7b81: $fa $ef $fd
	add  hl, hl                                      ; $7b84: $29
	ld   e, e                                        ; $7b85: $5b
	db   $e3                                         ; $7b86: $e3
	db   $ed                                         ; $7b87: $ed
	rst  $38                                         ; $7b88: $ff
	cp   a                                           ; $7b89: $bf
	xor  $8a                                         ; $7b8a: $ee $8a
	db   $fc                                         ; $7b8c: $fc
	sub  e                                           ; $7b8d: $93
	ld   de, $1111                                   ; $7b8e: $11 $11 $11
	ld   de, $9f2b                                   ; $7b91: $11 $2b $9f
	ld   a, [$9fa6]                                  ; $7b94: $fa $a6 $9f
	db   $d3                                         ; $7b97: $d3
	ld   c, e                                        ; $7b98: $4b
	rst  $38                                         ; $7b99: $ff
	adc  $ff                                         ; $7b9a: $ce $ff
	cp   b                                           ; $7b9c: $b8
	cp   e                                           ; $7b9d: $bb
	sub  $12                                         ; $7b9e: $d6 $12
	ld   de, $1111                                   ; $7ba0: $11 $11 $11
	ld   de, $efd9                                   ; $7ba3: $11 $d9 $ef
	ld   a, [hl]                                     ; $7ba6: $7e
	or   [hl]                                        ; $7ba7: $b6
	ld   h, l                                        ; $7ba8: $65
	ld   l, l                                        ; $7ba9: $6d
	rst  $38                                         ; $7baa: $ff
	rst  JumpTable                                         ; $7bab: $df
	db   $dd                                         ; $7bac: $dd
	ld   hl, sp-$42                                  ; $7bad: $f8 $be
	db   $dd                                         ; $7baf: $dd
	ld   h, e                                        ; $7bb0: $63
	ld   de, $1111                                   ; $7bb1: $11 $11 $11
	ld   de, $ed1a                                   ; $7bb4: $11 $1a $ed
	ld   [hl], e                                     ; $7bb7: $73
	rst  $38                                         ; $7bb8: $ff
	add  [hl]                                        ; $7bb9: $86
	add  a                                           ; $7bba: $87
	sbc  a                                           ; $7bbb: $9f
	rst  JumpTable                                         ; $7bbc: $df
	ld   sp, hl                                      ; $7bbd: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bbe: $cf
	xor  $ca                                         ; $7bbf: $ee $ca
	sub  a                                           ; $7bc1: $97
	ld   b, h                                        ; $7bc2: $44
	ld   b, c                                        ; $7bc3: $41
	ld   de, $1114                                   ; $7bc4: $11 $14 $11
	ld   a, [hl-]                                    ; $7bc7: $3a
	ld   h, l                                        ; $7bc8: $65
	call z, $ee98                                    ; $7bc9: $cc $98 $ee
	sub  h                                           ; $7bcc: $94
	ccf                                              ; $7bcd: $3f
	rst  $38                                         ; $7bce: $ff
	cp   e                                           ; $7bcf: $bb
	rst  JumpTable                                         ; $7bd0: $df
	ret  c                                           ; $7bd1: $d8

	ld   a, [hl]                                     ; $7bd2: $7e
	rst  ToBoot                                         ; $7bd3: $c7
	ld   d, e                                        ; $7bd4: $53
	ld   hl, $1111                                   ; $7bd5: $21 $11 $11
	ld   de, $7a69                                   ; $7bd8: $11 $69 $7a
	xor  [hl]                                        ; $7bdb: $ae
	or   [hl]                                        ; $7bdc: $b6
	adc  l                                           ; $7bdd: $8d
	cp   b                                           ; $7bde: $b8
	set  5, a                                        ; $7bdf: $cb $ef
	call c, $dced                                    ; $7be1: $dc $ed $dc
	cp   d                                           ; $7be4: $ba
	cp   b                                           ; $7be5: $b8
	inc  hl                                          ; $7be6: $23
	ld   de, $2112                                   ; $7be7: $11 $12 $21
	ld   de, $4b47                                   ; $7bea: $11 $47 $4b
	or   a                                           ; $7bed: $b7
	sbc  e                                           ; $7bee: $9b
	call c, $8fb3                                    ; $7bef: $dc $b3 $8f
	rst  $38                                         ; $7bf2: $ff
	db   $fd                                         ; $7bf3: $fd
	cp   l                                           ; $7bf4: $bd
	set  7, c                                        ; $7bf5: $cb $f9
	xor  b                                           ; $7bf7: $a8
	ld   d, [hl]                                     ; $7bf8: $56
	ld   hl, $1211                                   ; $7bf9: $21 $11 $12
	ld   de, $6516                                   ; $7bfc: $11 $16 $65
	sbc  c                                           ; $7bff: $99
	sbc  h                                           ; $7c00: $9c
	and  [hl]                                        ; $7c01: $a6
	xor  d                                           ; $7c02: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c03: $cf
	db   $dd                                         ; $7c04: $dd
	call c, $dcdf                                    ; $7c05: $dc $df $dc
	call z, $77a7                                    ; $7c08: $cc $a7 $77
	ld   h, h                                        ; $7c0b: $64
	ld   de, $1142                                   ; $7c0c: $11 $42 $11
	ld   de, $6b64                                   ; $7c0f: $11 $64 $6b
	adc  c                                           ; $7c12: $89
	jp   z, $68ba                                    ; $7c13: $ca $ba $68

	rst  JumpTable                                         ; $7c16: $df
	rst  $38                                         ; $7c17: $ff
	ei                                               ; $7c18: $fb
	cp   h                                           ; $7c19: $bc
	call $a9bc                                       ; $7c1a: $cd $bc $a9
	add  l                                           ; $7c1d: $85
	ld   hl, $3224                                   ; $7c1e: $21 $24 $32
	ld   de, $3424                                   ; $7c21: $11 $24 $34
	ld   l, c                                        ; $7c24: $69
	cp   d                                           ; $7c25: $ba
	xor  d                                           ; $7c26: $aa
	cp   c                                           ; $7c27: $b9
	ld   a, h                                        ; $7c28: $7c
	rst  $28                                         ; $7c29: $ef
	xor  $fe                                         ; $7c2a: $ee $fe
	jp   c, $b9bb                                    ; $7c2c: $da $bb $b9

	sbc  c                                           ; $7c2f: $99
	add  l                                           ; $7c30: $85
	ld   de, $4235                                   ; $7c31: $11 $35 $42
	ld   de, $4426                                   ; $7c34: $11 $26 $44
	ld   h, [hl]                                     ; $7c37: $66
	xor  c                                           ; $7c38: $a9
	xor  c                                           ; $7c39: $a9
	xor  c                                           ; $7c3a: $a9
	xor  [hl]                                        ; $7c3b: $ae
	rst  $28                                         ; $7c3c: $ef
	call c, $eced                                    ; $7c3d: $dc $ed $ec
	jp   c, $88aa                                    ; $7c40: $da $aa $88

	ld   [hl], l                                     ; $7c43: $75
	ld   b, e                                        ; $7c44: $43
	ld   b, h                                        ; $7c45: $44
	ld   b, h                                        ; $7c46: $44
	ld   [hl-], a                                    ; $7c47: $32
	inc  de                                          ; $7c48: $13
	ld   d, h                                        ; $7c49: $54
	ld   h, [hl]                                     ; $7c4a: $66
	adc  c                                           ; $7c4b: $89
	adc  c                                           ; $7c4c: $89
	xor  c                                           ; $7c4d: $a9
	xor  e                                           ; $7c4e: $ab
	cp   a                                           ; $7c4f: $bf
	db   $fc                                         ; $7c50: $fc
	db   $ec                                         ; $7c51: $ec
	call $baba                                       ; $7c52: $cd $ba $ba
	adc  b                                           ; $7c55: $88
	ld   a, b                                        ; $7c56: $78
	ld   [hl], l                                     ; $7c57: $75
	ld   d, [hl]                                     ; $7c58: $56
	ld   h, [hl]                                     ; $7c59: $66
	ld   d, e                                        ; $7c5a: $53
	ld   [hl-], a                                    ; $7c5b: $32
	dec  [hl]                                        ; $7c5c: $35
	ld   d, e                                        ; $7c5d: $53
	ld   b, [hl]                                     ; $7c5e: $46
	sbc  b                                           ; $7c5f: $98
	sbc  c                                           ; $7c60: $99
	sbc  c                                           ; $7c61: $99
	cp   e                                           ; $7c62: $bb
	cp   l                                           ; $7c63: $bd
	db   $ed                                         ; $7c64: $ed
	res  7, d                                        ; $7c65: $cb $ba
	cp   e                                           ; $7c67: $bb
	xor  c                                           ; $7c68: $a9
	xor  d                                           ; $7c69: $aa
	sbc  c                                           ; $7c6a: $99
	add  a                                           ; $7c6b: $87
	ld   [hl], a                                     ; $7c6c: $77
	halt                                             ; $7c6d: $76
	ld   h, l                                        ; $7c6e: $65
	ld   d, h                                        ; $7c6f: $54
	inc  sp                                          ; $7c70: $33
	ld   b, l                                        ; $7c71: $45
	ld   d, l                                        ; $7c72: $55
	ld   d, [hl]                                     ; $7c73: $56
	ld   [hl], a                                     ; $7c74: $77
	adc  b                                           ; $7c75: $88
	sbc  d                                           ; $7c76: $9a
	xor  e                                           ; $7c77: $ab
	cp   h                                           ; $7c78: $bc
	cp   h                                           ; $7c79: $bc
	cp   h                                           ; $7c7a: $bc
	res  7, e                                        ; $7c7b: $cb $bb
	xor  e                                           ; $7c7d: $ab
	xor  c                                           ; $7c7e: $a9
	xor  c                                           ; $7c7f: $a9
	sbc  b                                           ; $7c80: $98
	ld   [hl], a                                     ; $7c81: $77
	ld   [hl], a                                     ; $7c82: $77
	ld   h, l                                        ; $7c83: $65
	ld   d, h                                        ; $7c84: $54
	inc  sp                                          ; $7c85: $33
	inc  [hl]                                        ; $7c86: $34
	ld   b, h                                        ; $7c87: $44
	ld   b, l                                        ; $7c88: $45
	ld   d, l                                        ; $7c89: $55
	ld   h, a                                        ; $7c8a: $67
	adc  b                                           ; $7c8b: $88
	xor  d                                           ; $7c8c: $aa
	call z, $cccb                                    ; $7c8d: $cc $cb $cc
	call z, $bbcb                                    ; $7c90: $cc $cb $bb
	xor  e                                           ; $7c93: $ab
	xor  c                                           ; $7c94: $a9
	sbc  b                                           ; $7c95: $98
	add  a                                           ; $7c96: $87
	halt                                             ; $7c97: $76
	ld   h, l                                        ; $7c98: $65
	ld   d, h                                        ; $7c99: $54
	ld   b, e                                        ; $7c9a: $43
	inc  sp                                          ; $7c9b: $33
	inc  sp                                          ; $7c9c: $33
	ld   b, h                                        ; $7c9d: $44
	ld   b, l                                        ; $7c9e: $45
	ld   d, [hl]                                     ; $7c9f: $56
	ld   h, a                                        ; $7ca0: $67
	sbc  c                                           ; $7ca1: $99
	sbc  d                                           ; $7ca2: $9a
	cp   h                                           ; $7ca3: $bc
	call c, $dcdd                                    ; $7ca4: $dc $dd $dc
	call c, $babb                                    ; $7ca7: $dc $bb $ba
	sbc  c                                           ; $7caa: $99
	sbc  b                                           ; $7cab: $98
	halt                                             ; $7cac: $76
	ld   h, [hl]                                     ; $7cad: $66
	ld   d, l                                        ; $7cae: $55
	ld   d, h                                        ; $7caf: $54
	ld   b, h                                        ; $7cb0: $44
	inc  sp                                          ; $7cb1: $33
	inc  sp                                          ; $7cb2: $33
	ld   b, h                                        ; $7cb3: $44
	ld   b, l                                        ; $7cb4: $45
	ld   d, l                                        ; $7cb5: $55
	ld   h, a                                        ; $7cb6: $67
	adc  c                                           ; $7cb7: $89
	xor  e                                           ; $7cb8: $ab
	cp   h                                           ; $7cb9: $bc
	call z, $dddd                                    ; $7cba: $cc $dd $dd
	call z, $babb                                    ; $7cbd: $cc $bb $ba
	sbc  b                                           ; $7cc0: $98
	add  a                                           ; $7cc1: $87
	halt                                             ; $7cc2: $76
	ld   h, [hl]                                     ; $7cc3: $66
	ld   d, l                                        ; $7cc4: $55
	ld   d, l                                        ; $7cc5: $55
	ld   d, h                                        ; $7cc6: $54
	ld   b, h                                        ; $7cc7: $44
	ld   b, h                                        ; $7cc8: $44
	ld   b, h                                        ; $7cc9: $44
	ld   b, h                                        ; $7cca: $44
	ld   d, l                                        ; $7ccb: $55
	ld   h, [hl]                                     ; $7ccc: $66
	ld   [hl], a                                     ; $7ccd: $77
	sbc  c                                           ; $7cce: $99
	sbc  e                                           ; $7ccf: $9b
	cp   h                                           ; $7cd0: $bc
	call $dcdd                                       ; $7cd1: $cd $dd $dc
	call z, $aabb                                    ; $7cd4: $cc $bb $aa
	sbc  b                                           ; $7cd7: $98
	sbc  b                                           ; $7cd8: $98
	ld   [hl], a                                     ; $7cd9: $77
	ld   h, [hl]                                     ; $7cda: $66
	ld   h, [hl]                                     ; $7cdb: $66
	ld   h, [hl]                                     ; $7cdc: $66
	ld   d, l                                        ; $7cdd: $55
	ld   d, l                                        ; $7cde: $55
	ld   d, h                                        ; $7cdf: $54
	ld   b, h                                        ; $7ce0: $44
	ld   d, l                                        ; $7ce1: $55
	ld   d, l                                        ; $7ce2: $55
	ld   h, [hl]                                     ; $7ce3: $66
	ld   h, a                                        ; $7ce4: $67
	ld   a, b                                        ; $7ce5: $78
	sbc  c                                           ; $7ce6: $99
	xor  d                                           ; $7ce7: $aa
	set  1, h                                        ; $7ce8: $cb $cc
	call z, $cbcc                                    ; $7cea: $cc $cc $cb
	cp   d                                           ; $7ced: $ba
	sbc  d                                           ; $7cee: $9a
	sbc  c                                           ; $7cef: $99
	adc  b                                           ; $7cf0: $88
	ld   [hl], a                                     ; $7cf1: $77
	ld   h, [hl]                                     ; $7cf2: $66
	ld   h, [hl]                                     ; $7cf3: $66
	ld   h, [hl]                                     ; $7cf4: $66
	ld   d, l                                        ; $7cf5: $55
	ld   d, l                                        ; $7cf6: $55
	ld   d, l                                        ; $7cf7: $55
	ld   b, h                                        ; $7cf8: $44
	ld   d, l                                        ; $7cf9: $55
	ld   d, l                                        ; $7cfa: $55
	ld   d, [hl]                                     ; $7cfb: $56
	ld   h, a                                        ; $7cfc: $67
	ld   a, c                                        ; $7cfd: $79
	sbc  d                                           ; $7cfe: $9a
	cp   d                                           ; $7cff: $ba
	cp   e                                           ; $7d00: $bb
	call z, $cbcc                                    ; $7d01: $cc $cc $cb
	res  7, d                                        ; $7d04: $cb $ba
	xor  c                                           ; $7d06: $a9
	sbc  b                                           ; $7d07: $98
	adc  b                                           ; $7d08: $88
	ld   [hl], a                                     ; $7d09: $77
	ld   [hl], a                                     ; $7d0a: $77
	halt                                             ; $7d0b: $76
	ld   h, [hl]                                     ; $7d0c: $66
	ld   h, [hl]                                     ; $7d0d: $66
	ld   h, [hl]                                     ; $7d0e: $66
	ld   d, l                                        ; $7d0f: $55
	ld   d, l                                        ; $7d10: $55
	ld   d, l                                        ; $7d11: $55
	ld   d, l                                        ; $7d12: $55
	ld   h, [hl]                                     ; $7d13: $66
	ld   h, [hl]                                     ; $7d14: $66
	ld   a, b                                        ; $7d15: $78
	sbc  c                                           ; $7d16: $99
	sbc  d                                           ; $7d17: $9a
	cp   d                                           ; $7d18: $ba
	cp   e                                           ; $7d19: $bb
	cp   h                                           ; $7d1a: $bc
	set  1, e                                        ; $7d1b: $cb $cb
	xor  e                                           ; $7d1d: $ab
	xor  c                                           ; $7d1e: $a9
	xor  c                                           ; $7d1f: $a9
	sbc  b                                           ; $7d20: $98
	adc  b                                           ; $7d21: $88
	add  a                                           ; $7d22: $87
	ld   [hl], a                                     ; $7d23: $77
	ld   [hl], a                                     ; $7d24: $77
	halt                                             ; $7d25: $76
	ld   h, [hl]                                     ; $7d26: $66
	ld   h, [hl]                                     ; $7d27: $66
	ld   d, l                                        ; $7d28: $55
	ld   d, l                                        ; $7d29: $55
	ld   d, l                                        ; $7d2a: $55
	ld   d, l                                        ; $7d2b: $55
	ld   d, l                                        ; $7d2c: $55
	ld   d, [hl]                                     ; $7d2d: $56
	ld   [hl], a                                     ; $7d2e: $77
	adc  b                                           ; $7d2f: $88
	sbc  d                                           ; $7d30: $9a
	xor  d                                           ; $7d31: $aa
	cp   e                                           ; $7d32: $bb
	call z, $bcbb                                    ; $7d33: $cc $bb $bc
	cp   e                                           ; $7d36: $bb
	cp   d                                           ; $7d37: $ba
	xor  c                                           ; $7d38: $a9
	xor  c                                           ; $7d39: $a9
	adc  b                                           ; $7d3a: $88
	adc  b                                           ; $7d3b: $88
	ld   [hl], a                                     ; $7d3c: $77
	ld   [hl], a                                     ; $7d3d: $77
	halt                                             ; $7d3e: $76
	ld   h, [hl]                                     ; $7d3f: $66
	ld   h, l                                        ; $7d40: $65
	ld   d, l                                        ; $7d41: $55
	ld   d, l                                        ; $7d42: $55
	ld   d, h                                        ; $7d43: $54
	ld   d, l                                        ; $7d44: $55
	ld   d, l                                        ; $7d45: $55
	ld   h, [hl]                                     ; $7d46: $66
	ld   h, a                                        ; $7d47: $67
	adc  c                                           ; $7d48: $89
	sbc  c                                           ; $7d49: $99
	xor  d                                           ; $7d4a: $aa
	cp   e                                           ; $7d4b: $bb
	set  1, h                                        ; $7d4c: $cb $cc
	cp   h                                           ; $7d4e: $bc
	res  5, e                                        ; $7d4f: $cb $ab
	xor  c                                           ; $7d51: $a9
	sbc  c                                           ; $7d52: $99
	adc  c                                           ; $7d53: $89
	sbc  b                                           ; $7d54: $98
	add  a                                           ; $7d55: $87
	ld   [hl], a                                     ; $7d56: $77
	ld   [hl], a                                     ; $7d57: $77
	ld   h, [hl]                                     ; $7d58: $66
	ld   h, [hl]                                     ; $7d59: $66
	ld   h, [hl]                                     ; $7d5a: $66
	ld   d, l                                        ; $7d5b: $55
	ld   d, l                                        ; $7d5c: $55
	ld   d, l                                        ; $7d5d: $55
	ld   d, l                                        ; $7d5e: $55
	ld   d, [hl]                                     ; $7d5f: $56
	ld   h, [hl]                                     ; $7d60: $66
	ld   h, a                                        ; $7d61: $67
	adc  b                                           ; $7d62: $88
	adc  d                                           ; $7d63: $8a
	sbc  e                                           ; $7d64: $9b
	xor  e                                           ; $7d65: $ab
	cp   h                                           ; $7d66: $bc
	set  1, h                                        ; $7d67: $cb $cc
	cp   e                                           ; $7d69: $bb
	cp   d                                           ; $7d6a: $ba
	xor  d                                           ; $7d6b: $aa
	sbc  c                                           ; $7d6c: $99
	sbc  b                                           ; $7d6d: $98
	adc  b                                           ; $7d6e: $88
	ld   [hl], a                                     ; $7d6f: $77
	ld   [hl], a                                     ; $7d70: $77
	halt                                             ; $7d71: $76
	ld   h, [hl]                                     ; $7d72: $66
	ld   h, [hl]                                     ; $7d73: $66
	ld   h, l                                        ; $7d74: $65
	ld   h, [hl]                                     ; $7d75: $66
	ld   d, l                                        ; $7d76: $55
	ld   d, l                                        ; $7d77: $55
	ld   h, [hl]                                     ; $7d78: $66
	ld   h, [hl]                                     ; $7d79: $66
	ld   h, [hl]                                     ; $7d7a: $66
	ld   h, a                                        ; $7d7b: $67
	ld   [hl], a                                     ; $7d7c: $77
	adc  b                                           ; $7d7d: $88
	sbc  d                                           ; $7d7e: $9a
	xor  d                                           ; $7d7f: $aa
	xor  d                                           ; $7d80: $aa
	cp   d                                           ; $7d81: $ba
	cp   d                                           ; $7d82: $ba
	xor  e                                           ; $7d83: $ab
	cp   d                                           ; $7d84: $ba
	xor  d                                           ; $7d85: $aa
	xor  c                                           ; $7d86: $a9
	sbc  b                                           ; $7d87: $98
	sbc  b                                           ; $7d88: $98
	adc  b                                           ; $7d89: $88
	ld   [hl], a                                     ; $7d8a: $77
	ld   [hl], a                                     ; $7d8b: $77
	ld   h, [hl]                                     ; $7d8c: $66
	ld   h, [hl]                                     ; $7d8d: $66
	ld   h, [hl]                                     ; $7d8e: $66
	ld   h, [hl]                                     ; $7d8f: $66
	ld   h, [hl]                                     ; $7d90: $66
	ld   h, [hl]                                     ; $7d91: $66
	ld   h, l                                        ; $7d92: $65
	ld   h, [hl]                                     ; $7d93: $66
	ld   h, [hl]                                     ; $7d94: $66
	ld   h, [hl]                                     ; $7d95: $66
	ld   h, a                                        ; $7d96: $67
	ld   [hl], a                                     ; $7d97: $77
	adc  c                                           ; $7d98: $89
	sbc  c                                           ; $7d99: $99
	sbc  d                                           ; $7d9a: $9a
	xor  d                                           ; $7d9b: $aa
	xor  e                                           ; $7d9c: $ab
	xor  d                                           ; $7d9d: $aa
	xor  e                                           ; $7d9e: $ab
	cp   d                                           ; $7d9f: $ba
	sbc  c                                           ; $7da0: $99
	xor  b                                           ; $7da1: $a8
	adc  b                                           ; $7da2: $88
	adc  b                                           ; $7da3: $88
	adc  b                                           ; $7da4: $88
	ld   [hl], a                                     ; $7da5: $77
	ld   [hl], a                                     ; $7da6: $77
	halt                                             ; $7da7: $76
	ld   h, [hl]                                     ; $7da8: $66
	ld   [hl], a                                     ; $7da9: $77
	ld   h, [hl]                                     ; $7daa: $66
	ld   h, [hl]                                     ; $7dab: $66
	ld   h, [hl]                                     ; $7dac: $66
	ld   h, [hl]                                     ; $7dad: $66
	ld   h, [hl]                                     ; $7dae: $66
	ld   h, [hl]                                     ; $7daf: $66
	ld   h, [hl]                                     ; $7db0: $66
	ld   [hl], a                                     ; $7db1: $77
	ld   [hl], a                                     ; $7db2: $77
	adc  b                                           ; $7db3: $88
	sbc  c                                           ; $7db4: $99
	sbc  c                                           ; $7db5: $99
	xor  c                                           ; $7db6: $a9
	xor  d                                           ; $7db7: $aa
	xor  e                                           ; $7db8: $ab
	cp   d                                           ; $7db9: $ba
	adc  $b7                                         ; $7dba: $ce $b7
	ld   l, c                                        ; $7dbc: $69
	cp   e                                           ; $7dbd: $bb
	add  a                                           ; $7dbe: $87
	xor  c                                           ; $7dbf: $a9
	ld   h, h                                        ; $7dc0: $64
	ld   e, c                                        ; $7dc1: $59
	xor  c                                           ; $7dc2: $a9
	add  a                                           ; $7dc3: $87
	halt                                             ; $7dc4: $76
	ld   d, l                                        ; $7dc5: $55
	ld   d, [hl]                                     ; $7dc6: $56
	halt                                             ; $7dc7: $76
	ld   d, l                                        ; $7dc8: $55
	ld   d, l                                        ; $7dc9: $55
	ld   d, l                                        ; $7dca: $55
	ld   d, [hl]                                     ; $7dcb: $56
	ld   [hl], a                                     ; $7dcc: $77
	ld   [hl], a                                     ; $7dcd: $77
	ld   a, c                                        ; $7dce: $79
	sbc  c                                           ; $7dcf: $99
	sbc  d                                           ; $7dd0: $9a
	xor  d                                           ; $7dd1: $aa
	xor  d                                           ; $7dd2: $aa
	xor  e                                           ; $7dd3: $ab
	cp   e                                           ; $7dd4: $bb
	xor  e                                           ; $7dd5: $ab
	xor  d                                           ; $7dd6: $aa
	xor  c                                           ; $7dd7: $a9
	sbc  c                                           ; $7dd8: $99
	xor  c                                           ; $7dd9: $a9
	sbc  b                                           ; $7dda: $98
	add  a                                           ; $7ddb: $87
	add  a                                           ; $7ddc: $87
	halt                                             ; $7ddd: $76
	ld   [hl], a                                     ; $7dde: $77
	halt                                             ; $7ddf: $76
	ld   h, [hl]                                     ; $7de0: $66
	ld   h, [hl]                                     ; $7de1: $66
	ld   a, b                                        ; $7de2: $78
	ld   d, e                                        ; $7de3: $53
	ld   b, l                                        ; $7de4: $45
	ld   [hl], a                                     ; $7de5: $77
	ld   d, h                                        ; $7de6: $54
	ld   h, a                                        ; $7de7: $67
	ld   [hl], a                                     ; $7de8: $77
	ld   a, c                                        ; $7de9: $79
	xor  d                                           ; $7dea: $aa
	xor  e                                           ; $7deb: $ab
	db   $dd                                         ; $7dec: $dd
	cp   e                                           ; $7ded: $bb
	call z, $babb                                    ; $7dee: $cc $bb $ba
	sbc  b                                           ; $7df1: $98
	sbc  c                                           ; $7df2: $99
	add  a                                           ; $7df3: $87
	ld   [hl], a                                     ; $7df4: $77
	ld   [hl], a                                     ; $7df5: $77
	ld   h, a                                        ; $7df6: $67
	ld   [hl], a                                     ; $7df7: $77
	ld   h, [hl]                                     ; $7df8: $66
	ld   h, l                                        ; $7df9: $65
	ld   d, h                                        ; $7dfa: $54
	ld   b, h                                        ; $7dfb: $44
	ld   b, e                                        ; $7dfc: $43
	inc  hl                                          ; $7dfd: $23
	ld   h, l                                        ; $7dfe: $65
	ld   b, [hl]                                     ; $7dff: $46
	ld   [hl], a                                     ; $7e00: $77
	adc  c                                           ; $7e01: $89
	xor  e                                           ; $7e02: $ab
	jp   z, $ccbd                                    ; $7e03: $ca $bd $cc

	db   $ed                                         ; $7e06: $ed
	db   $dd                                         ; $7e07: $dd
	cp   e                                           ; $7e08: $bb
	cp   d                                           ; $7e09: $ba
	adc  c                                           ; $7e0a: $89
	xor  b                                           ; $7e0b: $a8
	add  a                                           ; $7e0c: $87
	ld   [hl], a                                     ; $7e0d: $77
	ld   h, l                                        ; $7e0e: $65
	ld   h, a                                        ; $7e0f: $67
	ld   h, l                                        ; $7e10: $65
	ld   b, h                                        ; $7e11: $44
	ld   b, e                                        ; $7e12: $43
	ld   [de], a                                     ; $7e13: $12
	ld   de, $2413                                   ; $7e14: $11 $13 $24
	adc  c                                           ; $7e17: $89
	adc  c                                           ; $7e18: $89
	cp   e                                           ; $7e19: $bb
	call z, $eedd                                    ; $7e1a: $cc $dd $ee
	sbc  $dc                                         ; $7e1d: $de $dc
	db   $db                                         ; $7e1f: $db
	cp   e                                           ; $7e20: $bb
	cp   d                                           ; $7e21: $ba
	sbc  c                                           ; $7e22: $99
	adc  b                                           ; $7e23: $88
	halt                                             ; $7e24: $76
	ld   d, l                                        ; $7e25: $55
	ld   h, l                                        ; $7e26: $65
	ld   b, h                                        ; $7e27: $44
	ld   [hl-], a                                    ; $7e28: $32
	ld   de, $1111                                   ; $7e29: $11 $11 $11
	inc  hl                                          ; $7e2c: $23
	ld   c, b                                        ; $7e2d: $48
	adc  c                                           ; $7e2e: $89
	cp   d                                           ; $7e2f: $ba
	call z, $ffce                                    ; $7e30: $cc $ce $ff
	rst  $38                                         ; $7e33: $ff
	rst  $38                                         ; $7e34: $ff
	db   $ec                                         ; $7e35: $ec
	cp   l                                           ; $7e36: $bd
	cp   d                                           ; $7e37: $ba
	sbc  b                                           ; $7e38: $98
	sbc  c                                           ; $7e39: $99
	halt                                             ; $7e3a: $76
	ld   d, h                                        ; $7e3b: $54
	ld   b, l                                        ; $7e3c: $45
	ld   d, h                                        ; $7e3d: $54
	ld   sp, $1111                                   ; $7e3e: $31 $11 $11
	ld   de, $4646                                   ; $7e41: $11 $46 $46
	cp   h                                           ; $7e44: $bc
	ld   a, h                                        ; $7e45: $7c
	db   $ec                                         ; $7e46: $ec
	rst  $38                                         ; $7e47: $ff
	rst  JumpTable                                         ; $7e48: $df
	db   $fc                                         ; $7e49: $fc
	rst  $28                                         ; $7e4a: $ef
	db   $ed                                         ; $7e4b: $ed
	cp   d                                           ; $7e4c: $ba
	call z, $9899                                    ; $7e4d: $cc $99 $98
	ld   [hl], h                                     ; $7e50: $74
	inc  [hl]                                        ; $7e51: $34
	ld   d, h                                        ; $7e52: $54
	ld   [hl-], a                                    ; $7e53: $32
	ld   de, $1111                                   ; $7e54: $11 $11 $11
	ld   [hl], $46                                   ; $7e57: $36 $46
	xor  e                                           ; $7e59: $ab
	xor  e                                           ; $7e5a: $ab
	cp   l                                           ; $7e5b: $bd
	db   $eb                                         ; $7e5c: $eb
	rst  $28                                         ; $7e5d: $ef
	db   $fd                                         ; $7e5e: $fd
	sbc  $ef                                         ; $7e5f: $de $ef
	cp   c                                           ; $7e61: $b9
	call c, $879a                                    ; $7e62: $dc $9a $87
	ld   [hl], h                                     ; $7e65: $74
	inc  [hl]                                        ; $7e66: $34
	ld   d, e                                        ; $7e67: $53
	ld   [hl+], a                                    ; $7e68: $22
	ld   de, $1111                                   ; $7e69: $11 $11 $11
	ld   b, l                                        ; $7e6c: $45
	ld   a, c                                        ; $7e6d: $79
	call $baab                                       ; $7e6e: $cd $ab $ba
	db   $dd                                         ; $7e71: $dd
	rst  $38                                         ; $7e72: $ff
	cp   $fe                                         ; $7e73: $fe $fe
	db   $dd                                         ; $7e75: $dd
	cp   e                                           ; $7e76: $bb
	ret                                              ; $7e77: $c9


	adc  c                                           ; $7e78: $89
	halt                                             ; $7e79: $76
	ld   b, d                                        ; $7e7a: $42
	dec  [hl]                                        ; $7e7b: $35
	ld   b, d                                        ; $7e7c: $42
	ld   de, $1111                                   ; $7e7d: $11 $11 $11
	dec  [hl]                                        ; $7e80: $35
	ld   l, e                                        ; $7e81: $6b
	xor  c                                           ; $7e82: $a9
	cp   e                                           ; $7e83: $bb
	cp   h                                           ; $7e84: $bc
	cp   l                                           ; $7e85: $bd
	rst  $28                                         ; $7e86: $ef
	rst  $28                                         ; $7e87: $ef
	db   $fd                                         ; $7e88: $fd
	call c, $abbb                                    ; $7e89: $dc $bb $ab
	xor  e                                           ; $7e8c: $ab
	sub  e                                           ; $7e8d: $93
	ld   b, d                                        ; $7e8e: $42
	dec  [hl]                                        ; $7e8f: $35
	ld   hl, $1121                                   ; $7e90: $21 $21 $11
	ld   de, $7c35                                   ; $7e93: $11 $35 $7c
	call c, $8ca8                                    ; $7e96: $dc $a8 $8c

Call_0dc_7e99:
	cp   l                                           ; $7e99: $bd
	rst  $38                                         ; $7e9a: $ff
	rst  $38                                         ; $7e9b: $ff
	rst  $28                                         ; $7e9c: $ef
	db   $dd                                         ; $7e9d: $dd
	xor  b                                           ; $7e9e: $a8
	cp   h                                           ; $7e9f: $bc
	ret                                              ; $7ea0: $c9


	ld   b, d                                        ; $7ea1: $42
	inc  sp                                          ; $7ea2: $33
	inc  sp                                          ; $7ea3: $33
	ld   de, $1121                                   ; $7ea4: $11 $21 $11

Call_0dc_7ea7:
	inc  d                                           ; $7ea7: $14
	ld   e, d                                        ; $7ea8: $5a
	cp   b                                           ; $7ea9: $b8
	adc  $76                                         ; $7eaa: $ce $76
	xor  d                                           ; $7eac: $aa
	rst  $38                                         ; $7ead: $ff
	rst  $38                                         ; $7eae: $ff
	db   $fc                                         ; $7eaf: $fc
	sbc  $ab                                         ; $7eb0: $de $ab
	cp   e                                           ; $7eb2: $bb
	cp   c                                           ; $7eb3: $b9
	ld   h, h                                        ; $7eb4: $64
	ld   hl, $2134                                   ; $7eb5: $21 $34 $21
	ld   de, $4422                                   ; $7eb8: $11 $22 $44
	ld   e, c                                        ; $7ebb: $59
	sbc  e                                           ; $7ebc: $9b
	sbc  d                                           ; $7ebd: $9a
	sbc  b                                           ; $7ebe: $98
	xor  l                                           ; $7ebf: $ad
	db   $fd                                         ; $7ec0: $fd
	rst  $28                                         ; $7ec1: $ef
	rst  $38                                         ; $7ec2: $ff
	jp   z, $aaaa                                    ; $7ec3: $ca $aa $aa

	sub  [hl]                                        ; $7ec6: $96
	ld   b, e                                        ; $7ec7: $43
	inc  de                                          ; $7ec8: $13
	ld   b, d                                        ; $7ec9: $42
	ld   bc, $5723                                   ; $7eca: $01 $23 $57
	ld   h, l                                        ; $7ecd: $65
	sbc  c                                           ; $7ece: $99
	sbc  d                                           ; $7ecf: $9a
	ld   h, a                                        ; $7ed0: $67
	adc  h                                           ; $7ed1: $8c
	rst  $38                                         ; $7ed2: $ff
	db   $ec                                         ; $7ed3: $ec
	call z, $ccad                                    ; $7ed4: $cc $ad $cc
	and  a                                           ; $7ed7: $a7
	ld   h, l                                        ; $7ed8: $65
	ld   [hl-], a                                    ; $7ed9: $32
	inc  de                                          ; $7eda: $13
	add  l                                           ; $7edb: $85
	ld   sp, $a912                                   ; $7edc: $31 $12 $a9
	adc  b                                           ; $7edf: $88
	sbc  l                                           ; $7ee0: $9d
	add  $57                                         ; $7ee1: $c6 $57
	cp   a                                           ; $7ee3: $bf
	db   $fc                                         ; $7ee4: $fc
	db   $dd                                         ; $7ee5: $dd
	sbc  $a8                                         ; $7ee6: $de $a8
	ld   a, b                                        ; $7ee8: $78
	and  [hl]                                        ; $7ee9: $a6
	ld   d, e                                        ; $7eea: $53
	inc  d                                           ; $7eeb: $14
	ld   b, d                                        ; $7eec: $42
	ld   de, $9b03                                   ; $7eed: $11 $03 $9b
	cp   d                                           ; $7ef0: $ba
	ld   l, h                                        ; $7ef1: $6c
	ei                                               ; $7ef2: $fb
	and  d                                           ; $7ef3: $a2
	ld   l, $ff                                      ; $7ef4: $2e $ff
	ld   a, [$bb8b]                                  ; $7ef6: $fa $8b $bb
	and  l                                           ; $7ef9: $a5
	adc  b                                           ; $7efa: $88
	ld   sp, $3411                                   ; $7efb: $31 $11 $34
	ld   de, $ac34                                   ; $7efe: $11 $34 $ac
	sub  [hl]                                        ; $7f01: $96
	sbc  l                                           ; $7f02: $9d
	call z, $cf74                                    ; $7f03: $cc $74 $cf
	rst  $38                                         ; $7f06: $ff
	cp   d                                           ; $7f07: $ba
	rst  $38                                         ; $7f08: $ff
	adc  e                                           ; $7f09: $8b
	add  [hl]                                        ; $7f0a: $86
	sub  e                                           ; $7f0b: $93
	ld   de, $3114                                   ; $7f0c: $11 $14 $31
	ld   de, $b64c                                   ; $7f0f: $11 $4c $b6
	ld   a, d                                        ; $7f12: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f13: $cf

jr_0dc_7f14:
	sub  h                                           ; $7f14: $94
	ld   a, b                                        ; $7f15: $78
	rst  JumpTable                                         ; $7f16: $df
	rst  $38                                         ; $7f17: $ff
	db   $ed                                         ; $7f18: $ed
	call Call_0dc_61b6                               ; $7f19: $cd $b6 $61
	inc  de                                          ; $7f1c: $13
	inc  h                                           ; $7f1d: $24
	ld   sp, $3a11                                   ; $7f1e: $31 $11 $3a
	res  3, d                                        ; $7f21: $cb $9a
	sbc  c                                           ; $7f23: $99
	ld   [hl], l                                     ; $7f24: $75
	cp   h                                           ; $7f25: $bc
	sbc  $cf                                         ; $7f26: $de $cf
	db   $fd                                         ; $7f28: $fd
	or   a                                           ; $7f29: $b7
	adc  b                                           ; $7f2a: $88
	and  [hl]                                        ; $7f2b: $a6
	ld   de, $3113                                   ; $7f2c: $11 $13 $31
	ld   [de], a                                     ; $7f2f: $12
	xor  l                                           ; $7f30: $ad
	ld   [hl], l                                     ; $7f31: $75
	cp   l                                           ; $7f32: $bd
	rst  $20                                         ; $7f33: $e7
	add  hl, de                                      ; $7f34: $19
	cp   e                                           ; $7f35: $bb
	cp   $ff                                         ; $7f36: $fe $ff
	set  3, b                                        ; $7f38: $cb $d8
	ld   d, [hl]                                     ; $7f3a: $56
	ld   [de], a                                     ; $7f3b: $12
	ld   [hl-], a                                    ; $7f3c: $32
	ld   b, c                                        ; $7f3d: $41
	ld   de, $ab5a                                   ; $7f3e: $11 $5a $ab
	xor  d                                           ; $7f41: $aa
	cp   d                                           ; $7f42: $ba
	halt                                             ; $7f43: $76
	ld   a, e                                        ; $7f44: $7b
	rst  $38                                         ; $7f45: $ff
	rst  JumpTable                                         ; $7f46: $df
	ld   hl, sp-$67                                  ; $7f47: $f8 $99
	ld   a, b                                        ; $7f49: $78
	ld   [hl], d                                     ; $7f4a: $72
	inc  sp                                          ; $7f4b: $33
	ld   de, $4a11                                   ; $7f4c: $11 $11 $4a
	sbc  h                                           ; $7f4f: $9c
	set  3, c                                        ; $7f50: $cb $d9
	ld   d, a                                        ; $7f52: $57
	sbc  l                                           ; $7f53: $9d
	cp   $bb                                         ; $7f54: $fe $bb
	rst  $28                                         ; $7f56: $ef
	add  sp, $11                                     ; $7f57: $e8 $11
	ld   e, c                                        ; $7f59: $59
	ld   h, c                                        ; $7f5a: $61
	ld   de, wTitleScreenCounterForResettingData                                   ; $7f5b: $11 $17 $cc
	sub  a                                           ; $7f5e: $97
	adc  [hl]                                        ; $7f5f: $8e
	cp   b                                           ; $7f60: $b8
	and  a                                           ; $7f61: $a7
	cp   a                                           ; $7f62: $bf
	cp   h                                           ; $7f63: $bc
	ld   sp, hl                                      ; $7f64: $f9
	sbc  l                                           ; $7f65: $9d
	dec  [hl]                                        ; $7f66: $35
	ld   h, c                                        ; $7f67: $61
	xor  e                                           ; $7f68: $ab
	ld   de, $8b11                                   ; $7f69: $11 $11 $8b
	ld   d, a                                        ; $7f6c: $57
	set  7, h                                        ; $7f6d: $cb $fc
	ld   e, d                                        ; $7f6f: $5a
	or   [hl]                                        ; $7f70: $b6
	xor  a                                           ; $7f71: $af
	db   $fd                                         ; $7f72: $fd
	pop  bc                                          ; $7f73: $c1
	ld   l, e                                        ; $7f74: $6b
	ld   hl, $6553                                   ; $7f75: $21 $53 $65
	ld   de, $6789                                   ; $7f78: $11 $89 $67
	ld   [hl], a                                     ; $7f7b: $77
	xor  $b8                                         ; $7f7c: $ee $b8
	adc  h                                           ; $7f7e: $8c
	xor  $ff                                         ; $7f7f: $ee $ff
	ld   d, [hl]                                     ; $7f81: $56
	inc  [hl]                                        ; $7f82: $34
	ld   [hl], h                                     ; $7f83: $74
	ld   d, h                                        ; $7f84: $54
	ld   de, $9e16                                   ; $7f85: $11 $16 $9e
	sub  h                                           ; $7f88: $94
	or   a                                           ; $7f89: $b7
	ld   l, a                                        ; $7f8a: $6f
	cp   e                                           ; $7f8b: $bb
	sub  $df                                         ; $7f8c: $d6 $df
	call c, $15a1                                    ; $7f8e: $dc $a1 $15
	jr   z, jr_0dc_7f14                              ; $7f91: $28 $81

	ld   de, $c83b                                   ; $7f93: $11 $3b $c8
	ld   l, e                                        ; $7f96: $6b
	db   $eb                                         ; $7f97: $eb
	xor  b                                           ; $7f98: $a8
	xor  h                                           ; $7f99: $ac
	adc  [hl]                                        ; $7f9a: $8e
	cp   $a3                                         ; $7f9b: $fe $a3
	dec  [hl]                                        ; $7f9d: $35
	ld   b, h                                        ; $7f9e: $44
	dec  h                                           ; $7f9f: $25
	ld   hl, $ab33                                   ; $7fa0: $21 $33 $ab
	sub  l                                           ; $7fa3: $95
	ld   l, l                                        ; $7fa4: $6d
	db   $dd                                         ; $7fa5: $dd
	push hl                                          ; $7fa6: $e5
	ld   l, a                                        ; $7fa7: $6f
	rst  $38                                         ; $7fa8: $ff
	jp   Jump_0dc_4214                               ; $7fa9: $c3 $14 $42


	sub  h                                           ; $7fac: $94
	inc  de                                          ; $7fad: $13
	jr   @-$38                                       ; $7fae: $18 $c6

	add  a                                           ; $7fb0: $87
	adc  l                                           ; $7fb1: $8d
	jp   c, $fc8c                                    ; $7fb2: $da $8c $fc

	adc  [hl]                                        ; $7fb5: $8e
	cp   h                                           ; $7fb6: $bc
	add  c                                           ; $7fb7: $81
	inc  de                                          ; $7fb8: $13
	ld   d, a                                        ; $7fb9: $57
	ld   [hl], c                                     ; $7fba: $71
	dec  hl                                          ; $7fbb: $2b
	sub  [hl]                                        ; $7fbc: $96
	add  h                                           ; $7fbd: $84
	xor  a                                           ; $7fbe: $af
	cp   e                                           ; $7fbf: $bb
	rst  $10                                         ; $7fc0: $d7
	ld   a, [hl]                                     ; $7fc1: $7e
	rst  $38                                         ; $7fc2: $ff
	and  d                                           ; $7fc3: $a2
	dec  d                                           ; $7fc4: $15
	ld   b, e                                        ; $7fc5: $43
	ld   hl, $9b29                                   ; $7fc6: $21 $29 $9b
	add  h                                           ; $7fc9: $84
	adc  e                                           ; $7fca: $8b
	db   $ed                                         ; $7fcb: $ed
	ld   a, d                                        ; $7fcc: $7a
	rst  $28                                         ; $7fcd: $ef
	db   $db                                         ; $7fce: $db
	ld   a, h                                        ; $7fcf: $7c
	ld   h, c                                        ; $7fd0: $61
	ld   [hl+], a                                    ; $7fd1: $22
	sub  [hl]                                        ; $7fd2: $96
	ld   bc, $ab48                                   ; $7fd3: $01 $48 $ab
	rl   a                                           ; $7fd6: $cb $17
	cp   $fc                                         ; $7fd8: $fe $fc
	ld   e, a                                        ; $7fda: $5f
	rst  $30                                         ; $7fdb: $f7
	ld   [hl], c                                     ; $7fdc: $71
	dec  bc                                          ; $7fdd: $0b
	inc  h                                           ; $7fde: $24
	ld   d, c                                        ; $7fdf: $51
	ld   b, h                                        ; $7fe0: $44
	sbc  l                                           ; $7fe1: $9d
	add  l                                           ; $7fe2: $85
	ld   e, a                                        ; $7fe3: $5f
	db   $fc                                         ; $7fe4: $fc
	sub  h                                           ; $7fe5: $94
	rst  $28                                         ; $7fe6: $ef
	ld   a, [$1521]                                  ; $7fe7: $fa $21 $15
	add  h                                           ; $7fea: $84
	ld   hl, $c54c                                   ; $7feb: $21 $4c $c5
	ld   b, a                                        ; $7fee: $47
	ld   a, h                                        ; $7fef: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ff0: $cf
	ld   sp, hl                                      ; $7ff1: $f9
	jp   z, Jump_0dc_41bf                            ; $7ff2: $ca $bf $41

	ld   hl, $3368                                   ; $7ff5: $21 $68 $33
	ld   h, d                                        ; $7ff8: $62
	adc  h                                           ; $7ff9: $8c
	ld   [hl], l                                     ; $7ffa: $75
	ld   a, l                                        ; $7ffb: $7d
	rst  $38                                         ; $7ffc: $ff
	add  d                                           ; $7ffd: $82
	ld   e, a                                        ; $7ffe: $5f
	db   $fd                                         ; $7fff: $fd
